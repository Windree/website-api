#!/bin/sh
php_fpm_conf=$(find /etc/php -type f -name www.conf)
perl -i -p0e 's/listen = .+/listen = 9000/g' $php_fpm_conf
cat <<EOF >> $php_fpm_conf
php_admin_flag[expose_php] = off'
php_admin_value[user_ini.cache_ttl]=5'
php_value[error_reporting]=E_ALL & ~E_NOTICE & ~E_STRICT'
php_flag[display_errors] = on'
php_flag[display_startup_errors] = on'
php_admin_value[log_errors] = on'
php_admin_value[error_log] = /log/self/fd/1'
php_admin_value[access.log]= /log/self/fd/1'
EOF
