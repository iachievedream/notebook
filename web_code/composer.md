composer
~~~
composer install 

~~~
appach安裝完，
composer=安裝後
需要修改此指令php7/php.ini大約913行的extension=fileinfo，
也就是把前面的;刪去，
動作是把此fileinfo功能打開，
才能進行composer的操作。

![image](https://github.com/iachievedream/notebook/blob/master/picture/PHP7_ext-fileinfo%20.png)



解决composer提示The openssl extension is required for SSL/TLS protection...

错误提示
The openssl extension is required for SSL/TLS protection but is not availab
le. If you can not enable the openssl extension, you can disable this error
, at your own risk, by setting the ‘disable-tls’ option to true. ta errorRet

解决方法：在php.ini文件中打开php_openssl扩展
extension=php_openssl.dll

https://blog.csdn.net/Luke__/article/details/79509977