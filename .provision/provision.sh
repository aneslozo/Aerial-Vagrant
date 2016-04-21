#!/usr/bin/env bash

sudo apt-get -y update

# nginx install and start
sudo apt-get -y install nginx
sudo service nginx start

# set up nginx server
sudo cp /vagrant/.provision/nginx/default /etc/nginx/sites-available/default
sudo chmod 644 /etc/nginx/sites-available/default
sudo rm -rf /etc/nginx/sites-enabled
sudo ln -s /etc/nginx/sites-available /etc/nginx/sites-enabled

# Site root configuration
sudo rm -rf /var/www
sudo ln -s /vagrant/www /var/www

# nginx restart
sudo service nginx restart
