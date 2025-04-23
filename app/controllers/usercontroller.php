<?php

namespace Controllers;

use Exception;
use Services\UserService;
use Firebase\JWT\JWT;

class UserController extends Controller
{
    private $service;

    // initialize services
    function __construct()
    {
        $this->service = new UserService();
    }

    public function login()
    {
        $postedUser = $this->createObjectFromPostedJson('Models\\User');
        $user = $this->service->checkUsernamePassword($postedUser->username, $postedUser->password);
        if (!$user) {
            $this->respondWithError(403, 'Invalid credentials');
            return;
        }

        $data = [
            "id" => $user->id,
            "username" => $user->username,
            "email" => $user->email
        ];

        $issuer = "http://localhost";
        $audience = "http://localhost";
        $issuedAt = time();
        $notBefore = time();
        $expires = time() + 600;

        $payload = array(
            "iss" => $issuer,
            "aud" => $audience,
            "iat" => $issuedAt,
            "nbf" => $notBefore,
            "exp" => $expires,
            "data" => $data
        );


        $JWT = JWT::encode($payload, getenv("SECRET"), 'HS256');

        $response = [
            "message" => "Logged in successfully",
            "timestamp" => $issuedAt,
            "token" => $JWT,
            "username" => $user->username
        ];

        $this->respond($response);
    }

    public function getAll()
    {
        $offset = NULL;
        $limit = NULL;

        if (isset($_GET["offset"]) && is_numeric($_GET["offset"])) {
            $offset = $_GET["offset"];
        }
        if (isset($_GET["limit"]) && is_numeric($_GET["limit"])) {
            $limit = $_GET["limit"];
        }

        $user = $this->service->getAll($offset, $limit);

        $this->respond($user);
    }

    public function getOne($id)
    {
        $user = $this->service->getOne($id);

        // we might need some kind of error checking that returns a 404 if the user is not found in the DB
        if (!$user) {
            $this->respondWithError(404, "User not found");
            return;
        }

        $this->respond($user);
    }

    public function create()
    {
        try {
            $user = $this->createObjectFromPostedJson("Models\\User");
            $user = $this->service->insert($user);
        } catch (Exception $e) {
            $this->respondWithError(500, $e->getMessage());
        }

        $this->respond($user);
    }

    public function update($id)
    {
        try {
            $user = $this->createObjectFromPostedJson("Models\\User");
            $user = $this->service->update($user, $id);
        } catch (Exception $e) {
            $this->respondWithError(500, $e->getMessage());
        }

        $this->respond($user);
    }

    public function delete($id)
    {
        try {
            $this->service->delete($id);
        } catch (Exception $e) {
            $this->respondWithError(500, $e->getMessage());
        }

        $this->respond(true);
    }
}
