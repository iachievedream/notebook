#!/bin/bash
cd /var/www/html
sudo git clone https://github.com/iachievedream/laraveltest.git
# sudo chmod -R 777 laraveltest
cd /var/www/html/laraveltest
sudo composer install 
sudo cp .env.example .env
sudo nano .env
# **set up MySQL of root and password

# mysql -u root -p
## sudo mysql -u root # I had to use "sudo" since is new installation
# 12345678
# create database laravel;
## USE mydata;
## source  mydata.sql;
## SHOW TABLES;
# exit

sudo php artisan key:generate
sudo php artisan migrate:refresh
sudo php artisan serve