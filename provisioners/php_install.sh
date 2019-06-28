#!/usr/bin/env bash


#sudo apt-get install software-properties-commo
sudo apt-add-repository ppa:ondrej/apache2
sudo apt-add-repository ppa:ondrej/php
sudo apt-get update
sudo apt-get install -y php7.2

#apt-get update
apt-get install -y php7.2-cli php7.2-fpm curl php7.2-curl php7.2-mysql

