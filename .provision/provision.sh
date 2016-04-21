#!/usr/bin/env bash

apt-get -y update

# nginx install
apt-get -y install nginx

# set up nginx server
rm -rf /usr/share/nginx/html/
ln -s /vagrant/www /usr/share/nginx/html

# nginx start
service nginx start
