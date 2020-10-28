<?php


$router->get('/api/navigation', function () use ($router) {
    $results = app('db')->select("SELECT * FROM navigation n inner join page p on p.id=n.page_id");
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
    }, $results)));
});
