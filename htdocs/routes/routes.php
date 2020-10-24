<?php

/** @var \Laravel\Lumen\Routing\Router $router */

$router->get('/', function () use ($router) {
    return '';
});

require_once __DIR__.'/menu.php';