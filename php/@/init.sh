#!/bin/sh
php_fpm=$(find /usr/sbin/ -type f -name php-fpm*)
mkdir -p /run/php
"$php_fpm" -F