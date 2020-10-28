<?php


$router->get('/api/navigation', function () use ($router) {
    $results = app('db')
        ->table('navigation')
        ->join('page', 'page.id', '=', 'navigation.page_id')
        ->select('navigation.hide', 'page.name', 'page.title', 'page.description', 'page.keywords', 'page.date')
        ->get()->dump();
    
    return response()->json(array('items' => array_map(function ($value) {
        return array(
            'hide' => $value->hide,
            'page' => array(
                'name' => $value->name,
                'title' => $value->title,
                'description' => $value->description,
                'keywords' => $value->keywords,
                'date' => $value->date
            )
        );
    }, $results->toArray())));
});
