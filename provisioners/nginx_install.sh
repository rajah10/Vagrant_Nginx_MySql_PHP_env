#!/bin/bash

sudo apt-get update
sudo apt-get -y install nginx

if ! [ -L /var/www ]; then
  #rm -rf /var/www
  ln -fs /vagrant/files /var/www
fi

sudo service nginx start