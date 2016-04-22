#!/usr/bin/env bash

#Checking that the apt-get repository is up to date
#sudo apt-get -y update

#Instaling PostgreSQL
sudo apt-get -y install postgresql postgresql-client postgresql-contrib
#Starting PostgreSQL
#sudo service postgresql start

#Security - Blocking root to SSH with our key
sudo su -
mv .ssh/authorized_keys .ssh/authorized_keys_old
exit

#Configuring PostgreSQL
sudo rm -rf /etc/postgresql/9.3/main
sudo cp -r /vagrant/postgresql/main /etc/postgresql/9.3

#Giving persmissions to our vagrant user
sudo su postgres
cd
psql
create role vagrant with superuser createdb createrole login;
\q
exit

#Creating empty database and configuring vagrant user as owner
createdb aerial
psql aerial
create role vagrant with password 'password';
alter database aerial owner to vagrant;
\q

#Restart PostgreSQL.
sudo service postgresql restart
