#!/usr/bin/env bash

echo ****************************************************************
echo ****** Checking that the apt-get repository is up to date ******
echo ****************************************************************
#Checking that the apt-get repository is up to date
apt-get -y update

echo *******************************************************
echo ****** Instaling, configuring and starting nginx ******
echo *******************************************************
#Instaling & Starting nginx
apt-get -y install nginx
service nginx start
#Configuring nginx server
rm -Rf /etc/nginx/sites-enabled
cp -R /vagrant/nginx/sites-enabled /etc/nginx

#Restarting nginx
service nginx restart
