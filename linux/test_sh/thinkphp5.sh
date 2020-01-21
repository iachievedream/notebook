#!/bin/bash
cd /var/www/html
sudo git clone https://github.com/iachievedream/TP5.git

cd /var/www/html/TP5
sudo composer install 

# sudo chmod -R 666 PT5


mysql -u root -p
12345678
create database mydata;
source  mydata.sql


cd /var/www/html/
# sudo chmod -R 666 TP5

cd /var/www/html/TP5/app/index/model
sudo nano User.php

