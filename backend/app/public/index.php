<?php
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Headers: *, authorization");
header("Access-Control-Allow-Methods: *");

error_reporting(E_ALL);
ini_set("display_errors", 1);

require __DIR__ . '/../vendor/autoload.php';

// Create Router instance
$router = new \Bramus\Router\Router();

$router->setNamespace('Controllers');

// routes for the products endpoint
$router->get('/products', 'ProductController@getAll');
$router->get('/products/(\d+)', 'ProductController@getOne');
$router->post('/products', 'ProductController@create');
$router->put('/products/(\d+)', 'ProductController@update');
$router->delete('/products/(\d+)', 'ProductController@delete');

// routes for the categories endpoint
$router->get('/categories', 'CategoryController@getAll');
$router->get('/categories/(\d+)', 'CategoryController@getOne');
$router->post('/categories', 'CategoryController@create');
$router->put('/categories/(\d+)', 'CategoryController@update');
$router->delete('/categories/(\d+)', 'CategoryController@delete');

//routes for the users endpoint
$router->post('/users/login', 'UserController@login');
$router->put('/users/(\d+)', 'UserController@update');
$router->get('/users/(\d+)', 'UserController@getOne');
$router->get('/users', 'UserController@getAll');
$router->post('/users', 'UserController@create');
$router->delete('/users/(\d+)', 'UserController@delete');

// Run it!
$router->run();