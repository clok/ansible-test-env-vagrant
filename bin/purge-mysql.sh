#! /bin/bash

sudo service mysql stop
sudo killall -9 mysql
sudo killall -9 mysqld
sudo apt-get remove -y --purge mysql-server mysql-client mysql-common
sudo apt-get autoremove -y
sudo apt-get autoclean -y
sudo deluser mysql
sudo rm -rf /var/lib/mysql
