# 000webhost

<a href="https://iachievedream.000webhostapp.com/">網誌首頁</a>

<a href="https://www.000webhost.com/cpanel-login?from=panel">申請平台</a>

>conn_mysql.php

>$db=mysqli_connect("localhost","id7347169_"."$username","$password","id7347169_data");

~~~
Host Name:files.000webhost.com
Port:21
Username:帳號
Password:密碼
~~~
MySQL
~~~
localhost
username：id7347169_user
database：id7347169_data
table：namephone

建立/刪除 data 資料庫
create database data;

建立/刪除 namephone 資料表
簡易
create table namephone
(id int(9),name char(10),phone int(10),money int(9));

詳細：
CREATE TABLE namephone (
id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
name char(5) NOT NULL,
phone char(10) NOT NULL,
money int,
totle INT(6) unique,
ex VARCHAR(30));

新增資料
insert into namephone (name,phone,money) values
('chan'  ,'0955813556','700'),
('henny' ,'0958464724','1000'),
('cken'  ,'0958435484','2000'),
('honner','0916213264','200');
~~~


booknamedate：
~~~
建立data資料庫：
CREATE DATABASE Mydata;

建立booknamedate資料表：
CREATE TABLE booknamedate (
	id         INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	bookname   VARCHAR(30) NOT NULL,
	ISBN       INT(6),
	Price      INT(6),
	Comment    TEXT(200) 
	);

插入資料表：
INSERT INTO
booknamedate (bookname,ISBN,Price) values
('為何我們總是如此不安？','9789869149747','237'),
('不完美的禮物：放下「應該」的你，','9789866112690','210');

查詢資料select
select * from booknamedate;

更新資料:表格(Delivery_resume)，資料內容(Reply)，位置(id)
UPDATE booknamedate SET `Comment` = '不安'  WHERE `ISBN` = '9789869149747'  ;
~~~

SearchPhone
~~~
mysql_connect("localhost", "root", "a1234567");

建立/刪除 data 資料庫
create database data;

建立/刪除 namephone 資料表
簡易
create table namephone
(id int(9),name char(10),phone int(10),money int(9));

詳細：
CREATE TABLE namephone (
id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
name char(5) NOT NULL,
phone char(10) NOT NULL,
money int,
totle INT(6) unique,
ex VARCHAR(30));

新增資料
insert into namephone (name,phone,money) values
('chan'  ,'0955813556','700'),
('henny' ,'0958464724','1000'),
('cken'  ,'0958435484','2000'),
('honner','0916213264','200');
~~~
