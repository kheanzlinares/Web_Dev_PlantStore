<?php

namespace Repositories;

use PDO;
use PDOException;
use Repositories\Repository;
use Models\User;

class UserRepository extends Repository
{
    function checkUsernamePassword($username, $password)
    {
        try {
            // retrieve the user with the given username
            $stmt = $this->connection->prepare("SELECT id, username, password, email FROM user WHERE username = :username");
            $stmt->bindParam(':username', $username);
            $stmt->execute();

            $stmt->setFetchMode(PDO::FETCH_CLASS, 'Models\User');
            $user = $stmt->fetch();

            // verify if the password matches the hash in the database
            $result = $this->verifyPassword($password, $user->password);

            if (!$result)
                return false;

            // do not pass the password hash to the caller
            $user->password = "";

            return $user;
        } catch (PDOException $e) {
            echo $e;
        }
    }

    function getAll($offset = NULL, $limit = NULL)
    {
        try {
            $query = "SELECT user.* FROM user";
            if (isset($limit) && isset($offset)) {
                $query .= " LIMIT :limit OFFSET :offset ";
            }
            $stmt = $this->connection->prepare($query);
            if (isset($limit) && isset($offset)) {
                $stmt->bindParam(':limit', $limit, PDO::PARAM_INT);
                $stmt->bindParam(':offset', $offset, PDO::PARAM_INT);
            }
            $stmt->execute();

            $user = array();
            while (($row = $stmt->fetch(PDO::FETCH_ASSOC)) !== false) {               
                $user[] = $this->rowToUser($row);
            }

            return $user;
        } catch (PDOException $e) {
            echo $e;
        }
    }

    // hash the password (currently uses bcrypt)

    // verify the password hash
    function verifyPassword($input, $hash)
    {
        return password_verify($input, $hash);
    }

    function getOne($id)
    {
        try {
            $stmt = $this->connection->prepare("SELECT * FROM user WHERE id = :id");
            $stmt->bindParam(':id', $id);
            $stmt->execute();

            $stmt->setFetchMode(PDO::FETCH_CLASS, 'Models\Category');
            $product = $stmt->fetch();

            return $product;
        } catch (PDOException $e) {
            echo $e;
        }
    }

    function create($user)
    {
        try {
            $stmt = $this->connection->prepare("INSERT into user (username, password, email) VALUES (?,?,?)");
            // password is hashed (currently uses bcrypt)
            $stmt->execute([$user->username, password_hash($user->password, PASSWORD_DEFAULT), $user->email]);
            $user->id = $this->connection->lastInsertId();

            return $this->getOne($user->id);

        } catch (PDOException $e) {
            echo $e;
        }
    }

    function update($user, $id)
    {
        try {
            $stmt = $this->connection->prepare("UPDATE user SET username = ?, password = ?, email = ? WHERE id = ?");
            // password is hashed when updated (currently uses bcrypt)
            $stmt->execute([$user->username, password_hash($user->password,PASSWORD_DEFAULT), $user->email, $id]);

            return $user;
        } catch (PDOException $e) {
            echo $e;
        }
    }

    function rowToUser($row) {
        $user = new User();
        $user->id = $row['id'];
        $user->username = $row['username'];
        $user->password = $row['password'];
        $user->email = $row['email'];

        return $user;
    }

    function delete($id)
    {
        try {
            $stmt = $this->connection->prepare("DELETE FROM user WHERE id = :id");
            $stmt->bindParam(':id', $id);
            $stmt->execute();
            return;
        } catch (PDOException $e) {
            echo $e;
        }
        return true;
    }
}
