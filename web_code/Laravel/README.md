安裝 Laravel<br>
資料庫設定，MySQL連接<br>
新增資料表指令(php artisan)<br>
<br>
由路(routes/web.php)<br>
<br>
Middleware：php artisan make:middleware admincheck<br>
M：php artisan make:model Todo (Eloquent Model)<br>
C：php artisan make:controller TodoController<br>
V新增視窗<br>

<a href="https://laravel.com/docs/6.x">Laravel</a>：<br>
![image](https://github.com/iachievedream/notebook/blob/master/picture/Laravel/guestbook_Laravel_MVC.png)
<br>
<a href="https://github.com/iachievedream/laravel_test">自己練習專案</a>：<br>
<br>
<br>
### 下載安裝
~~~
cd C:\AppServ\www\test
git clone https://github.com/laravel/laravel.git
cd laravel
composer install 
copy .env.example .env
**set up MySQL of root and password
php artisan key:generate
php artisan serve
================================================================
other_notebook，安裝 Laravel<br>
# composer create-project --prefer-dist [<package>] [<directory>] [<version>]
  composer create-project --prefer-dist laravel/laravel guestbook
  composer create-project --prefer-dist laravel/laravel guestbook "5.5.*"

请使用以下命令来创建指定版本的 Laravel 项目

指令說明
php artisan list

版本確認
php artisan --version
~~~

### 設定資料庫基本資料與MySQL連接
先去mysql新增一個資料庫(laravel)<br>
~~~
CREATE DATABASE laravel;
~~~
接下来设置环境文件，赋值一份<br>
.env.example 并将其重命名为.env：<br>
~~~
cp .env.example .env
copy .env.example .env
~~~
运行如下 Artisan 命令生成应用密钥：

~~~
php artisan key:generate
~~~

laravel/.env(修改成phpMyAdmin的帳密以及資料庫)

~~~
DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=laravel
DB_USERNAME=root
DB_PASSWORD=12345678
~~~

### 新增資料表指令(php artisan)
我們將需要users資料表和messages資料表
laravel已經幫我們弄好users資料表的migration
所以我們只要製作messages資料表的migration

~~~
php artisan make:migration create_todos_table
//建立資料表
laravel/database/migrations/2020_01_12_050222_create_messages_table.php
==============
    public function up()
    {
        Schema::create('todos', function (Blueprint $table) {
            $table->increments('id');
            $table->string('title');
            $table->timestamps();
        });
    }
==============
php artisan make:migration create_messages_table --create=messages
//建立資料表
laravel/database/migrations/2020_01_12_050222_create_messages_table.php
==========================
	public function up()
	{
	  Schema::create('messages', function (Blueprint $table) {
	    $table->increments('id');
>	    $table->integer('user_id')->index(); // 新增
>	    $table->string('name'); // 新增
	    $table->timestamps();
	  });
	}
==========================
//列出目前所有 Migration 狀態
php artisan migrate:status

//執行 Migration
php artisan migrate

//恢復上一版本的 Migration
php artisan migrate:rollback

//清除所有版本的 Migration
php artisan migrate:reset

//清除所有版本的 Migration 並重新執行
php artisan migrate:refresh

//建立資料表
php artisan make:migration create_users_table --create="userBase"

//異動資料表欄位資料
php artisan make:migration add_email_to_users_table --table="userBase"
~~~

### 由路(routes/web.php)

~~~
<?php
Route::get('/', function () {
    return view('welcome');
});

Route::get('/user/{id}',function($id){
    return 'user_id:'.$id;
});

add_other

Route::get('/todo', 'TodoController@index');
Route::post('/todo', 'TodoController@update');
Route::delete('/todo/{todo}', 'TodoController@destroy');
Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
~~~

### Model 模型 (Eloquent Model)
一般來說一個model對應一張資料表
laravel已經幫我們弄好User Model(app/User.php)
所以我們只要
~~~
php artisan make:model Todo
Todo就這樣出現了(app/Todo.php)
=============
<?php
namespace App;
use Illuminate\Database\Eloquent\Model;
class Todo extends Model
{
    protected $fillable = [
        'title'
    ];
}
=============
php artisan make:model Message
Message就這樣出現了(app/Message.php)
==========================
<?php
namespace App;
use Illuminate\Database\Eloquent\Model;
class Message extends Model
{
>       protected $fillable = ['name']; // 新增

}
==========================
other_
app/User.php
===============
<?php

namespace App;

use Illuminate\Foundation\Auth\User as Authenticatable;

class User extends Authenticatable
{
        // 其他的 Eloquent 屬性(非重點)
    
    // 新增,可以取得該user的所有message。
    public function messages()
    {
        return $this->hasMany(Message::class);
    }
}
~~~

### Todo_Controller
~~~
單一Controller
php artisan make:controller TodoController
完整Controller
php artisan make:controller TodoController --resource

http://127.0.0.1:8000/todo

php artisan make:controller MessageController

*Post Model

protected $table = 'posts';
protected $fillable = ['title','body'];
~~~

### Views

### Authorization 認證
~~~
php artisan make:policy MessagePolicy
~~~

### Middleware

Laravel 自带了一些中间件，包括身份验证、CSRF 保护等。所有的这些中间件都位于 app/Http/Middleware 目录。

~~~
php artisan make:middleware admincheck
~~~

Q&A
php artisan make:auth <br>
Command "make:auth" is not defined.

~~~
composer require laravel/ui --dev
npm install && npm run dev

php artisan ui vue --auth
php artisan migrate
~~~

上傳:
~~~
git add .
git commit -m "first commit"
git remote add origin https://github.com/iachievedream/laravel.git
git push -u origin master
~~~