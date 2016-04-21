#!/usr/bin/env bash

apt-get -y update

# nginx
apt-get -y install nginx
service nginx start

# set up nginx server
cp /vagrant/.provision/nginx/default /etc/nginx/sites-available/default
chmod 644 /etc/nginx/sites-available/default
rm -rf /etc/nginx/sites-enabled/default
ln -s /etc/nginx/sites-available/default /etc/nginx/sites-enabled/default
service nginx restart

# clean /var/www
rm -rf /var/www

# symlink /var/www => /vagrant/www
ln -s /vagrant/www /var/www
