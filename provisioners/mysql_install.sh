#!/usr/bin/env bash

debconf-set-selections <<< 'mysql-server mysql-server/root_password password 8888888'
debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password 8888888'
apt-get update
apt-get install -y mysql-server
#mysql_secure_installation