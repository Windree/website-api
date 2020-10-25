<?php

$router->get('/api/config', function () use ($router) {
    return response()->json(array(
        'title' => 'Daria Mihailova',
        'defaultPage' => array('text' => 'videos', 'url' => '/videos')
    ));
});
