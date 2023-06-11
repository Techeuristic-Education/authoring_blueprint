#!/bin/bash

MYSQL=$(grep 'temporary password' /var/log/mysqld.log | awk '{print $11}')
MYSQL_ROOT_PASSWORD="test@123"

SECURE_MYSQL=$(expect -c "

set timeout 10
spawn mysql_secure_installation