建立data資料庫：CREATE DATABASE data;

建立namephone資料表：
~~~
CREATE TABLE namephone (
	id          INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	name        VARCHAR(30) NOT NULL,
	nomey       INT(6),
	ex          VARCHAR(30)  
);
~~~
指令整理：資料操作語言 ( DML ) select，insert，update，delete。
~~~
SELECT * FROM $table WHERE (條件查詢)

插入資料表：
INSERT INTO namephone (name,phone,mony) values
('NlGU','16465862','124543'),
('NlCU','16132422','145423'),
('NFHC','16544542','134525'),
('NFCd','16632132','135254');

~~~