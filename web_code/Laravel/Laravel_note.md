<br>
網路操作來源:<a href="https://www.youtube.com/watch?v=BIqXE1hXYs4">【課程錄影】Laravel 5.5 初學者教學</a>：<br>
<a href="https://xueyuanjun.com/post/19581">基于 Laravel 5.5 开发的开源校园管理系统 —— Unifiedtransform</a>：<br>
<br>
Laravel 留言板<br>
<br>
安装配置
首先，从 Github 将项目克隆到本地并进入项目目录：
~~~
git clone https://github.com/changeweb/Unifiedtransform.git
cd Unifiedtransform
~~~
如果是在开发环境，使用下面这个命令安装项目依赖的第三方扩展包：
~~~
composer install
~~~
如果是在生产环境，则使用如下命令安装依赖（不安装开发环境依赖的扩展包）：
~~~
composer install --no-dev
~~~
接下来设置环境文件，赋值一份 .env.example 并将其重命名为 .env：
~~~
cp .env.example .env
~~~
运行如下 Artisan 命令生成应用密钥：
~~~
php artisan key:generate
~~~
在本地数据库中创建一个 school 数据库，在 .env 中配置本地数据库环境，然后运行迁移命令创建数据表并通过 Unifiedtransform 提供的填充器初始化数据库数据：
~~~
php artisan migrate 
php artisan db:seed
~~~
Unifiedtransform 基于 Laravel Passport 提供 API 认证支持，你可以通过 php artisan passport:keys 自动生成 Passport 的密钥信息，生成的密钥文件存放在 storage 目录下。

这样，我们就完成了 Unifiedtransform 项目的安装配置和初始化工作。

创建学校和管理员
如果你是用 Valet 作为开发环境的话，现在就可以直接在浏览器中通过 Unifiedtransform.test 访问项目了。

如果使用的是其他开发环境，需要配置一个虚拟域名指向项目目录下的 public 目录，这里我们将虚拟域名配置为 school.test，在浏览器中访问 http://school.test/home，页面会跳转到登录页：


我们使用填充器中提供的初始化 master 账户进行登录，对应的邮箱/密码是 hasib@unifiedtransform.com/secret（只有 master 类型用户才能创建学校和管理员）。

登录成功后，页面就会跳转到 http://school.test/home，我们可以在这个页面上对学校进行管理：

