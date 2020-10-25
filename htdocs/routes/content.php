<?php

$router->get('/api/content/{path}', function ($path) use ($router) {
    return response()->json(array('cols' => 2, 'items' => array(
        array(
            'image' => array('media' => array('id' => 1, 'src' => 'https://pro2-bar-s3-cdn-cf3.myportfolio.com/d32170c7-3969-472f-95cf-6539e1542e8d/ebeba5c7-d601-4ffe-a92f-1a8f113038bb_car_16x9.jpg?h=6a4df22c6046a9f44da4e89965ebaff9')),
            'link' => array('page' => array('id' => 10001, 'name' => 'sculptures'))
        ),
        array(
            'image' => array('media' => array('id' => 22, 'src' => 'https://pro2-bar-s3-cdn-cf3.myportfolio.com/d32170c7-3969-472f-95cf-6539e1542e8d/ebeba5c7-d601-4ffe-a92f-1a8f113038bb_car_16x9.jpg?h=6a4df22c6046a9f44da4e89965ebaff9')),
            'link' => array('page' => array('id' => 10002, 'name' => 'instalations'))
        ),
        array(
            'image' => array('media' => array('id' => 333, 'src' => 'https://pro2-bar-s3-cdn-cf3.myportfolio.com/d32170c7-3969-472f-95cf-6539e1542e8d/4622dcf4-6ae5-49ce-9349-be1225bae690_car_16x9.jpg?h=36853c63789c6eb9c495d09cdbe3ef19')),
            'link' => array('page' => array('id' => 10003, 'name' => 'paitings'))
        ),
        array(
            'image' => array('media' => array('id' => 4444, 'src' => 'https://pro2-bar-s3-cdn-cf3.myportfolio.com/d32170c7-3969-472f-95cf-6539e1542e8d/e7e9f16b-7497-499d-bffc-42c2cb433ca9_car_16x9.jpg?h=8d247a3640f2ec3357162bbd7c721bf3')),
            'link' => array('page' => array('id' => 10004, 'name' => 'videos'))
        )
    )));
});
