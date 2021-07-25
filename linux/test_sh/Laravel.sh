#!/bin/bash
cd /var/www/html
sudo mkdir laravel
sudo chmod -R 777 laravel
composer create-project --prefer-dist laravel/laravel laravel "6.0.*"

$ chmod -R 755 laravel
$ chmod -R 777 laravel/storage

# 指定傾聽之 IP 位址與連接埠
php artisan serve --host=192.168.122.202 --port=8001

# cd /var/www/html
# sudo git clone https://github.com/iachievedream/laraveltest.git
# # sudo chmod -R 777 laraveltest
# cd /var/www/html/laraveltest
# sudo composer install 
# sudo cp .env.example .env
# sudo nano .env

# sudo php artisan key:generate
# sudo php artisan migrate:refresh
# sudo php artisan serve