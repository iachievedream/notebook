MySQL
~~~
localhost
username：root
database：MyData
table：namephone

建立/刪除 data 資料庫
create database MyData;

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


投擲履歷
~~~
create database MyData;  //建立一個資料庫

use mydata;

create table Delivery_resume(
ID int(6) auto_increment primary key,
position varchar(30),
companyint varchar(10),
Reply varchar(10),
content varchar(50)
);

INSERT INTO'delivery_resume' ('ID','position','companyint','Reply','content') VALUES
(1,'軟體工程師','網際之星資訊股份有', NULL, NULL),
(2,'軟體工程師','高誠網路服務股份有', NULL, NULL),
(3,'C/C++ Programmer(高雄)','台眾電腦股份有限公', NULL, NULL);

查詢資料select
select * from Delivery_resume;

更新資料:表格(Delivery_resume)，資料內容(Reply)，位置(id)
UPDATE `Delivery_resume` SET `Reply` = 'OK'  WHERE `id` = '6'  ;

刪除資料表:DROP TABLE Delivery_resume ;
刪除資料表:DELETE FROM Delivery_resume [WHERE Clause];

刪除資料庫:drop database MyData;

~~~
插入資料
~~~
INSERT INTO'delivery_resume' ('ID','position','companyint','Reply','content') VALUES
(1,'軟體工程師','網際之星資訊股份有', NULL, NULL),
(2,'軟體工程師','高誠網路服務股份有', NULL, NULL),
(3,'C/C++ Programmer(高雄)','台眾電腦股份有限公', NULL, NULL),

DELETE FROM Delivery_resume WHERE id > 55

DELETE FROM Delivery_resume WHERE id = 56&57
DELETE FROM Delivery_resume WHERE id = 60,61

~~~
