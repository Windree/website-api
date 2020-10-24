<?php
http_response_code(200);
header("Content-Type: application/json");
echo file_get_contents('api/menu.json');