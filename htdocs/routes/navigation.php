<?php


$router->get('/api/navigation', function () use ($router) {
    return response()->json(array('items'=> array(0=>)
        array('text' => 'videos', 'url' => 'videos'),
        array('text' => 'installations', 'url' => 'installations'),
        array('text' => 'sculptures', 'url' => 'sculptures'),
        array('text' => 'paintings', 'url' => 'paintings'),
        array('text' => 'collaborations', 'url' => 'collaborations'),
        array('text' => 'about', 'url' => 'about'),
        array('text' => 'artist', 'url' => 'artist'),
        array('text' => 'cv', 'url' => 'cv'),
        array('text' => 'contact', 'url' => 'contact')
    ));
});
