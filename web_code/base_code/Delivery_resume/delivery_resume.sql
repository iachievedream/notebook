-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- 主機: localhost
-- 產生時間： 2019-01-12 10:27:04
-- 伺服器版本: 5.7.17-log
-- PHP 版本： 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- 資料庫：'mydata'
--

-- --------------------------------------------------------

--
-- 資料表結構'delivery_resume'
--

CREATE TABLE'delivery_resume' (
 'ID' int(6) NOT NULL,
 'position' varchar(30) DEFAULT NULL,
 'companyint' varchar(10) DEFAULT NULL,
 'Reply' varchar(10) DEFAULT NULL,
 'content' varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料'delivery_resume'
--

INSERT INTO'delivery_resume' ('ID','position','companyint','Reply','content') VALUES
(1,'軟體工程師','網際之星資訊股份有', NULL, NULL),
(2,'軟體工程師','高誠網路服務股份有', NULL, NULL),
(3,'C/C++ Programmer(高雄)','台眾電腦股份有限公', NULL, NULL),
(4,'JAVA程式設計師(高雄)','康大資訊股份有限公', NULL, NULL),
(5,'[第三事業處] Java 開發工程師 (工作地點:高雄)','昊聲訊息技術有限公', NULL, NULL),
(6,'軟體工程師 (Java)','意藍資訊股份有限公', NULL, NULL),
(7,'APP開發工程師','旭峻資訊有限公司', NULL, NULL),
(8,'Python Developer(高雄)','台灣新蛋股份有限公', NULL, NULL),
(9,'Ogloba - Java 軟體工程師','金永立有限公司', NULL, NULL),
(10,'Java程式設計師(台北)','中鋼集團_網際優勢', NULL, NULL),
(11,'程式研發工程師','104人力銀行_一', NULL, NULL),
(12,'高雄軟體園區 - 軟體工程師2','精益科技股份有限公', NULL, NULL),
(13,'Java軟體工程師(高雄)','景佳科技有限公司', NULL, NULL),
(14,'高薪 年收70萬起 程式設計師 一年經驗可 ITS','全球人事顧問股份有', NULL, NULL),
(15,'620_ C++ 工程師','神通資訊科技股份有', NULL, NULL),
(16,'資料科學工程師','新視域科技股份有限', NULL, NULL),
(17,'AI演算法工程師(新北市)','智慧雲端科技股份有', NULL, NULL),
(18,'軟體工程師 (Java)','意藍資訊股份有限公', NULL, NULL),
(19,'軟體設計工程師','全曜財經資訊股份有', NULL, NULL),
(20,'程式設計師','豐湛數位科技有限公', NULL, NULL),
(21,'前/後端web工程師','歐兔歐全球股份有限', NULL, NULL),
(22,'PHP工程師','準訊科技有限公司', NULL, NULL),
(23,'軟體開發工程師','聯瞻資訊股份有限公', NULL, NULL),
(24,'軟體工程師_A(RDSW_140)','正文科技股份有限公', NULL, NULL),
(25,'Java程式設計師(專案-非駐點)','前進國際股份有限公', NULL, NULL),
(26,'軟體工程師','天擎積體電路股份有', NULL, NULL),
(27,'電控工程師_(大陸.蘇州)','均華精密工業股份有', NULL, NULL),
(28,'Java軟體工程師(台中)','碩網資訊股份有限公', NULL, NULL),
(29,'培訓軟體工程師_D              ','干城數碼有限公司', NULL, NULL),
(30,'Ogloba - Java 軟體工程師','金永立有限公司', NULL, NULL),
(31,'程式設計工程師-雲林','德鴻科技股份有限公', NULL, NULL),
(32,'自動化工程師','新代科技股份有限公', NULL, NULL),
(33,'研發助理(Assistant)','安富科技股份有限公', NULL, NULL),
(34,'61690-自動化軟體研發工程師','QNAP_威聯通科', NULL, NULL),
(35,'440-Java程式設計師(新竹縣)','兆赫電子股份有限公', NULL, NULL),
(36,'軟體設計工程師(竹科,南科 MVC )','亦思科技股份有限公', NULL, NULL),
(37,'JAVA 軟體工程師','簡單行動支付股份有', NULL, NULL),
(38,'JAVA工程師','凡谷興業有限公司', NULL, NULL),
(39,'應用程式開發工程師_IABG(台南研發中心)','台達電子工業股份有', NULL, NULL),
(40,'培訓全端軟體工程師(實習生)','賜鴻科技有限公司', NULL, NULL),
(41,'培訓軟體工程師(PHP)','緯德科技股份有限公', NULL, NULL),
(42,'初階 Java 工程師 (內湖, 高薪, 需輪班)','創樂科技有限公司', NULL, NULL),
(43,'程式設計工程師','皮托科技股份有限公', NULL, NULL),
(44,'軟體工程師 (歡迎職場新鮮人)','精秝科科技股份有限', NULL, NULL),
(45,'軟體研發工程師','偉林電子股份有限公', NULL, NULL),
(46,'Python開發工程師(AI及數據平台開發)','易勝資訊股份有限公', NULL, NULL),
(47,'php工程師 ★歡迎新鮮人，相關科系畢，無經驗可★','英屬維京群島商傑利', NULL, NULL),
(48,'軟體工程師 Software Engineer / Pro','新加坡商鈦坦科技股', NULL, NULL),
(49,'軟體工程師( Software Engineer)','賽微科技股份有限公', NULL, NULL),
(50,'java 程式設計師 (高雄)','商智資訊股份有限公', NULL, NULL),
(51,'PHP程式設計師[台中]','葳橋資訊股份有限公', NULL, NULL),
(52,'後端軟體工程師(Back-End Software Eng','高谷科技有限公司', NULL, NULL),
(53,'軟體工程師','華洋精機股份有限公', NULL, NULL),
(54,'PHP程式設計師 / 35k~50k','柿子紅科技股份有限', NULL, NULL),
(55,'網頁前端 / 網頁後端 程式設計師','奇果力創研科技有限', NULL, NULL);

--
-- 資料表索引'delivery_resume'
--
ALTER TABLE'delivery_resume'
  ADD PRIMARY KEY ('ID');

--
-- 使用資料表 AUTO_INCREMENT'delivery_resume'
--
ALTER TABLE'delivery_resume'
  MODIFY'ID' int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
