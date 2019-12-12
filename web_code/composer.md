composer
~~~
composer install 

~~~
appach安裝完，composer=安裝後需要修改此指令php7/php.ini大約913行的extension=fileinfo，也就是把前面的;刪去，動作是把此fileinfo功能打開，才能進行composer的操作。

![image](https://github.com/iachievedream/notebook/blob/master/picture/PHP7_ext-fileinfo%20.png)