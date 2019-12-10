<a href="https://laravel.com/docs/6.x">Laravel</a>：<br>

~~~
cd C:\AppServ\www\test

git clone https://github.com/laravel/laravel.git

cd laravel

composer install 

php artisan serve
~~~

php artisan
~~~
php artisan serve

php artisan make:controller TodoCcontroller

http://127.0.0.1:8000/todo

php artisan make:migration create_todos_table
//建立資料表
php artisan migrate
//執行資料庫指令
~~~



Q:<a href="https://stackoverflow.com/questions/31543175/getting-a-500-internal-server-error-on-laravel-5-ubuntu-14-04">Getting a 500 Internal Server Error on Laravel 5+</a><br>
A:通常，這件事會導致類似的事情。嘗試創建一個文件，然後從中復制所有內容.env.example，將其粘貼到創建的文件中並命名.env。或jsut只需將.env.example文件重命名為.env並運行php artisan key:generate
cmd:
~~~
cd C:\AppServ\www\test\laravel
move .env.example .env
php artisan key:generate
~~~