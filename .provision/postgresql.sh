#!/usr/bin/env bash

echo **********************************
echo ****** Instaling PostgreSQL ******
echo **********************************
#Instaling PostgreSQL
apt-get -y install postgresql postgresql-client postgresql-contrib

#Configuring PostgreSQL
sudo rm -Rf /etc/postgresql/9.3/main
sudo cp -R /vagrant/postgresql/main /etc/postgresql/9.3
sudo chown -R postgres:postgres /etc/postgresql/9.3/main

#Restart PostgreSQL.
sudo service postgresql restart
