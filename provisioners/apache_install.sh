#!/usr/bin/env bash

sudo apt-get update
sudo apt-get install -y apache2

if ! [ -L /var/www ]; then
  #rm -rf /var/www
  ln -fs /vagrant /var/www
fi

sudo apache2ctl configtest

#https://www.digitalocean.com/community/tutorials/how-to-install-linux-apache-mysql-php-lamp-stack-on-ubuntu-16-04