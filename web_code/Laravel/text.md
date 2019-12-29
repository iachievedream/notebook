PHP laravel - 建置【會員系統】只要 2 分鐘！

建立
~~~
laravel new auth
~~~
進入資料夾內
~~~
cd auth/
php artisan serve
~~~
hocalhost:80000

建立資料庫資料users table
~~~
php artisan migrate

//php artisan make:auth 失效

npm install
npm run dev
~~~

Laravel 的 make:auth Artisan 命令到底生成了哪些文件？
https://learnku.com/articles/5253/what-files-are-generated-by-the-laravel-makeauth-artisan-command

~~~


~~~


Php artisan make:auth command is not defined

https://stackoverflow.com/questions/34545641/php-artisan-makeauth-command-is-not-defined

Update for Laravel 6
~~~
composer require laravel/ui --dev
php artisan ui vue --auth

php artisan migrate
npm install && npm run dev
~~~