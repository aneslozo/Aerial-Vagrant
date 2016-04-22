#!/usr/bin/env bash

#Checking that the apt-get repository is up to date
sudo apt-get -y update

#Instaling & Starting nginx
sudo apt-get -y install nginx
sudo service nginx start

#Configuring nginx server
sudo rm -rf /etc/nginx/sites-enabled
sudo cp -r /vagrant/nginx/sites-enabled /etc/nginx

#Restarting nginx
sudo service nginx restart
