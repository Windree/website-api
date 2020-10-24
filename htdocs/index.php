<?php
switch ($_SERVER['REQUEST_URI']) {
    case '/api/menu':
            require './api/menu.php';
        break;
    default:
        http_response_code(404);
}
