#!/bin/env sh
find /target/ -mindepth 1 | xargs rm -rf  && \
composer create-project --prefer-dist --working-dir /source laravel/lumen /target