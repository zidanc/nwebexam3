-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2020-07-29 02:28:47
-- 伺服器版本： 10.4.11-MariaDB
-- PHP 版本： 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `db15`
--

-- --------------------------------------------------------

--
-- 資料表結構 `movie`
--

CREATE TABLE `movie` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` tinyint(1) UNSIGNED NOT NULL,
  `length` int(5) UNSIGNED NOT NULL,
  `ondate` date NOT NULL,
  `publish` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `director` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `trailer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `poster` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `intro` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `rank` int(5) UNSIGNED NOT NULL,
  `sh` tinyint(3) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `movie`
--

INSERT INTO `movie` (`id`, `name`, `level`, `length`, `ondate`, `publish`, `director`, `trailer`, `poster`, `intro`, `rank`, `sh`) VALUES
(1, '院線片01快樂腳', 1, 90, '2020-07-16', '院線片01的發行商', '林導演', '03B01v.mp4', '03B01.png', '院線片01的劇情介紹，院線片01的劇情介紹，院線片01的劇情介紹，院線片01的劇情介紹，院線片01的劇情介紹，院線片01的劇情介紹，院線片01的劇情介紹，院線片01的劇情介紹，院線片01的劇情介紹，院線片01的劇情介紹，院線片01的劇情介紹，院線片01的劇情介紹，院線片01的劇情介紹，院線片01的劇情介紹，院線片01的劇情介紹', 1, 1),
(2, '院線片02快樂腳', 1, 90, '2020-07-15', '院線片02的發行商', '林導演', '03B02v.mp4', '03B02.png', '院線片02的劇情介紹，院線片02的劇情介紹，院線片02的劇情介紹，院線片02的劇情介紹，院線片02的劇情介紹，院線片02的劇情介紹，院線片02的劇情介紹', 2, 1),
(3, '院線片03快樂腳', 2, 90, '2020-07-11', '院線片03的發行商', '林導演', '03B03v.mp4', '03B03.png', '院線片03的劇情介紹，院線片03的劇情介紹，院線片03的劇情介紹，院線片03的劇情介紹，院線片03的劇情介紹，院線片03的劇情介紹，院線片03的劇情介紹', 3, 1),
(4, '院線片04快樂腳', 3, 90, '2020-07-20', '院線片04的發行商', '林導演', '03B04v.mp4', '03B04.png', '院線片04的劇情介紹，院線片04的劇情介紹，院線片04的劇情介紹，院線片04的劇情介紹，院線片04的劇情介紹，院線片04的劇情介紹，院線片04的劇情介紹', 4, 1),
(5, '院線片05快樂腳', 4, 90, '2020-07-15', '院線片05的發行商', '林導演', '03B05v.mp4', '03B05.png', '院線片05的劇情介紹，院線片05的劇情介紹，院線片05的劇情介紹，院線片05的劇情介紹，院線片05的劇情介紹，院線片05的劇情介紹，院線片05的劇情介紹', 6, 1),
(6, '院線片06快樂腳', 1, 90, '2020-07-17', '院線片06的發行商', '林導演', '03B06v.mp4', '03B06.png', '院線片06的劇情介紹，院線片06的劇情介紹，院線片06的劇情介紹，院線片06的劇情介紹，院線片06的劇情介紹，院線片06的劇情介紹，院線片06的劇情介紹', 7, 1),
(7, '院線片07快樂腳', 2, 90, '2020-07-19', '院線片07的發行商', '林導演', '03B07v.mp4', '03B07.png', '院線片07的劇情介紹，院線片07的劇情介紹，院線片07的劇情介紹，院線片07的劇情介紹，院線片07的劇情介紹，院線片07的劇情介紹，院線片07的劇情介紹', 8, 1),
(8, '院線片08快樂腳', 3, 90, '2020-07-13', '院線片08的發行商', '林導演', '03B08v.mp4', '03B08.png', '院線片08的劇情介紹，院線片08的劇情介紹，院線片08的劇情介紹，院線片08的劇情介紹，院線片08的劇情介紹，院線片08的劇情介紹，院線片08的劇情介紹', 9, 0),
(9, '院線片09快樂腳', 4, 90, '2020-07-14', '院線片09的發行商', '林導演', '03B09v.mp4', '03B09.png', '院線片09的劇情介紹，院線片09的劇情介紹，院線片09的劇情介紹，院線片09的劇情介紹，院線片09的劇情介紹，院線片09的劇情介紹，院線片09的劇情介紹', 5, 1),
(10, '院線片10快樂腳', 1, 90, '2020-07-16', '院線片10的發行商', '林導演', '03B10v.mp4', '03B10.png', '院線片10的劇情介紹，院線片10的劇情介紹，院線片10的劇情介紹，院線片10的劇情介紹，院線片10的劇情介紹，院線片10的劇情介紹，院線片10的劇情介紹', 10, 0),
(12, '院線片11切切切', 3, 120, '2020-07-16', 'Oreo', 'Chien', '03B11v.mp4', '03B11.png', '切切切懸疑案件', 11, 1);

-- --------------------------------------------------------

--
-- 資料表結構 `poster`
--

CREATE TABLE `poster` (
  `id` int(10) UNSIGNED NOT NULL,
  `path` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rank` int(10) UNSIGNED NOT NULL,
  `sh` tinyint(1) UNSIGNED NOT NULL,
  `ani` int(1) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `poster`
--

INSERT INTO `poster` (`id`, `path`, `name`, `rank`, `sh`, `ani`) VALUES
(1, '03A02.jpg', '預告片02CoCo', 2, 1, 2),
(2, '03A03.jpg', '預告片03花木蘭', 3, 1, 4),
(3, '03A04.jpg', '預告片04快樂腳', 4, 1, 4),
(4, '03A05.jpg', '預告片05獅子王', 5, 1, 1),
(5, '03A06.jpg', '預告片06泰山', 6, 1, 4),
(6, '03A07.jpg', '預告片07腦筋急轉彎', 7, 1, 3);

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `movie`
--
ALTER TABLE `movie`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `poster`
--
ALTER TABLE `poster`
  ADD PRIMARY KEY (`id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `movie`
--
ALTER TABLE `movie`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `poster`
--
ALTER TABLE `poster`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
