<?php

/** @var \Laravel\Lumen\Routing\Router $router */

$router->get('/', function () use ($router) {
    return '';
});

require_once __DIR__.'/config.php';
require_once __DIR__.'/navigation.php';
require_once __DIR__.'/page.php';