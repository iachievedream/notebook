-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- 主機: localhost
-- 產生時間： 2019-01-12 10:30:05
-- 伺服器版本: 5.7.17-log
-- PHP 版本： 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `mydata`
--

-- --------------------------------------------------------

--
-- 資料表結構 `namephone`
--

CREATE TABLE `namephone` (
	`id` int(6) UNSIGNED NOT NULL,
	`name` char(5) NOT NULL,
	`phone` char(10) NOT NULL,
	`money` int(11) DEFAULT NULL,
	`totle` int(6) DEFAULT NULL,
	`ex` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `namephone`
--

INSERT INTO `namephone` (`id`, `name`, `phone`, `money`, `totle`, `ex`) VALUES
(1, 'chan', '0955813556', 700, NULL, NULL),
(2, 'henny', '0958464724', 1000, NULL, NULL),
(3, 'cken', '0958435484', 2000, NULL, NULL),
(4, 'honne', '0916213264', 200, NULL, NULL);

--
-- 已匯出資料表的索引
--

--
-- 資料表索引 `namephone`
--
ALTER TABLE `namephone`
ADD PRIMARY KEY (`id`),
ADD UNIQUE KEY `totle` (`totle`);

--
-- 在匯出的資料表使用 AUTO_INCREMENT
--

--
-- 使用資料表 AUTO_INCREMENT `namephone`
--
ALTER TABLE `namephone`
MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
