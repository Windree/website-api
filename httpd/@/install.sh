#!/bin/bash
echo 'ServerName web.wings' >>                                /etc/apache2/apache2.conf
echo 'CustomLog /proc/self/fd/1 combined' >>                  /etc/apache2/apache2.conf
perl -i -p0e  's/ErrorLog .+/ErrorLog \/proc\/self\/fd\/1/g'  /etc/apache2/apache2.conf
