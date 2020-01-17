-- 資料庫的儲存
-- 在這個範例中，我們使用 MYSQL 資料庫，而儲存圖片的資料型態，則是使用 BLOG。

-- 以下為資料庫的 schema

CREATE TABLE preview_image (
   id int(11) NOT NULL AUTO_INCREMENT,
   image varchar(30),
   PRIMARY KEY(id)
);
