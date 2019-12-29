簡易編譯器：sublime_text(Sublime Text 3.0 Build 3143 Portable 64-bit)

推薦教學網站以及影片：<br>
<a href="https://www.youtube.com/playlist?list=PLgxebFiptLICg7tXC1zX-0b--P2GAirDT">網路基礎15天 - trailer</a>：基礎網頁的方向介紹我覺得這個蠻清楚的，在與概念方面。<br>
<a href="https://www.youtube.com/playlist?list=PLeWlPscCzV-e-EeGkrYKHavBnYSzJ4gMw">程式導師實驗計畫試看</a>：蠻喜歡的一個程式分享者<br>
<a href="https://www.youtube.com/playlist?list=PLqivELodHt3iL9PgGHg0_EF86FwdiqCre">2019年IT鐵人賽-冠軍影片</a>：<br>
<a href=""></a><br>
<a href=""></a><br>
<a href=""></a><br>

# Front-end engineerd
## HTML
## CSS
## bootstrap 
<br>

# Back-end engineer
## PHP的appach環境:
~~~
appserv-x64-9.3.0.exe
下載此版本，可以直接下載windows所缺乏的軟件
~~~
<a href="https://github.com/iachievedream/notebook/blob/master/web_code/PHP-MySQL/PHP_base_note.md">PHP_base_note</a><br>
<a href="https://github.com/iachievedream/notebook/blob/master/web_code/PHP-MySQL/cookie_session.md">cookie_session</a><br>
<a href="https://github.com/iachievedream/notebook/blob/master/web_code/PHP-MySQL/PHP_object.md">PHP_object</a><br>
<a href="https://github.com/iachievedream/notebook/blob/master/web_code/PHP-MySQL/MySQL_base_note.md">MySQL_base_note</a><br>
<br>
# other-code
## JavaScript


## composer
~~~
composer install
~~~

Virtual Host 虛擬主機
httpd.conf 
~~~
517 # Include conf/extra/httpd-vhosts.conf
~~~

conf/extra/httpd-vhosts.conf
~~~
<VirtualHost _default_:80>
34 # DocumentRoot "${SRVROOT}/htdocs"
# ServerName www.example.com:80
</VirtualHost>

<VirtualHost *:80>
    ServerAdmin webmaster@dummy-host2.example.com
    DocumentRoot "C:\AppServ\www\demo"
    ServerName fuwork.fuwork.xyz
    ErrorLog "logs/dummy-host2.example.com-error.log"
    CustomLog "logs/dummy-host2.example.com-access.log" common
</VirtualHost>
~~~