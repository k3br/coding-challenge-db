#!/bin/sh

read -p 'Database hostname: ' db_hostname
read -p 'DB: ' db
read -p 'User: ' db_user

psql -h ${db_hostname} -d ${db} -U ${db_user} -f init.sql 1>output.log 2>error.log
