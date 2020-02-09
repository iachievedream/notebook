#!/bin/bash
cd /var/www/html
sudo git clone https://github.com/iachievedream/TP5.git
# sudo chmod -R 666 TP5
cd /var/www/html/TP5
sudo composer install 

# mysql -u root -p
# 12345678
# create database mydata;
# USE mydata;
# source  mydata.sql;
# SHOW TABLES;
# exit

cd /var/www/html/TP5/app/index/model
sudo nano User.php
