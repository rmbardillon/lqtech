-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 14, 2023 at 09:03 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lqtech`
--

-- --------------------------------------------------------

--
-- Table structure for table `action_logs`
--

CREATE TABLE `action_logs` (
  `ACTION_LOG_ID` varchar(16) NOT NULL DEFAULT replace(convert(uuid() using utf8mb4),'-',''),
  `DATE_TIME` datetime NOT NULL,
  `USER_ID` varchar(16) NOT NULL,
  `ROLE` int(16) NOT NULL,
  `ACTION` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `action_logs`
--

INSERT INTO `action_logs` (`ACTION_LOG_ID`, `DATE_TIME`, `USER_ID`, `ROLE`, `ACTION`) VALUES
('04bfda6ed9d311ed', '2023-04-13 16:13:05', '58727a89cdf911ed', 1, 'User has logged in'),
('05fec15ad99e11ed', '2023-04-13 09:53:44', '58727a89cdf911ed', 1, 'User has logged in'),
('1060122cd99911ed', '2023-04-13 03:18:14', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('1060d643d99911ed', '2023-04-13 03:18:14', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('10616a9fd99911ed', '2023-04-13 03:18:14', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('106241cdd99911ed', '2023-04-13 03:18:14', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('1062c378d99911ed', '2023-04-13 03:18:14', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('1063585fd99911ed', '2023-04-13 03:18:14', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('106414edd99911ed', '2023-04-13 03:18:14', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('1064a291d99911ed', '2023-04-13 03:18:14', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('106516c1d99911ed', '2023-04-13 03:18:14', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('1065857bd99911ed', '2023-04-13 03:18:14', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('1065efded99911ed', '2023-04-13 03:18:14', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('106651d1d99911ed', '2023-04-13 03:18:14', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('1066aa3cd99911ed', '2023-04-13 03:18:14', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('10672023d99911ed', '2023-04-13 03:18:14', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('10677a9ad99911ed', '2023-04-13 03:18:14', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('1067dcd5d99911ed', '2023-04-13 03:18:14', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('10685730d99911ed', '2023-04-13 03:18:14', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('1068c925d99911ed', '2023-04-13 03:18:14', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('237aee04d99711ed', '2023-04-13 03:04:27', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('32128f5ad99711ed', '2023-04-13 03:04:52', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('3b46acc4da7311ed', '2023-04-14 05:19:56', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('3bd398eeda7311ed', '2023-04-14 05:19:57', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('3cd27b2ad99911ed', '2023-04-13 03:19:29', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('3cd2ef7cd99911ed', '2023-04-13 03:19:29', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('3cd3ad81d99911ed', '2023-04-13 03:19:29', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('3cd40dd3d99911ed', '2023-04-13 03:19:29', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('3cd47c6bd99911ed', '2023-04-13 03:19:29', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('3cd4e3a7d99911ed', '2023-04-13 03:19:29', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('3cd53be1d99911ed', '2023-04-13 03:19:29', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('3cd5a34fd99911ed', '2023-04-13 03:19:29', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('3cd61dbfd99911ed', '2023-04-13 03:19:29', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('3f0bd836da7311ed', '2023-04-14 05:20:03', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('3f58c334d9cc11ed', '2023-04-13 15:24:37', '58727a89cdf911ed', 1, 'User has logged in'),
('41dd7c85d99711ed', '2023-04-13 03:05:18', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('41de17ebd99711ed', '2023-04-13 03:05:18', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('41df1c05d99711ed', '2023-04-13 03:05:18', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('41dfa158d99711ed', '2023-04-13 03:05:18', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('41e0197fd99711ed', '2023-04-13 03:05:18', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('41e096dcd99711ed', '2023-04-13 03:05:18', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('41e10ef0d99711ed', '2023-04-13 03:05:18', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('41e17448d99711ed', '2023-04-13 03:05:18', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('41e20373d99711ed', '2023-04-13 03:05:18', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('4964d4ead9d311ed', '2023-04-13 10:15:01', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('4cd4d518d99711ed', '2023-04-13 03:05:37', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('53a4fc18d9d311ed', '2023-04-13 10:15:18', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('53a5b75fd9d311ed', '2023-04-13 10:15:18', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('555c926eda7311ed', '2023-04-14 05:20:40', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('555d237ada7311ed', '2023-04-14 05:20:40', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('594c2c29d9d311ed', '2023-04-13 10:15:27', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('77c555c8da7311ed', '2023-04-14 05:21:38', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('77c5f08ada7311ed', '2023-04-14 05:21:38', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('77c685f7da7311ed', '2023-04-14 05:21:38', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('77c6f55cda7311ed', '2023-04-14 05:21:38', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('77d7b17eda6511ed', '2023-04-14 03:41:25', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('77d82b54da6511ed', '2023-04-14 03:41:25', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('77d8d5f3da6511ed', '2023-04-14 03:41:25', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('77d939f8da6511ed', '2023-04-14 03:41:25', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('77d9d07fda6511ed', '2023-04-14 03:41:25', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('77da7dc6da6511ed', '2023-04-14 03:41:25', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('77db0742da6511ed', '2023-04-14 03:41:25', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('77db560cda6511ed', '2023-04-14 03:41:25', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('77dbd197da6511ed', '2023-04-14 03:41:25', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('77dc1c31da6511ed', '2023-04-14 03:41:25', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('77dc87fdda6511ed', '2023-04-14 03:41:25', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('77dd1f55da6511ed', '2023-04-14 03:41:25', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('77dd995eda6511ed', '2023-04-14 03:41:25', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('77ddd86fda6511ed', '2023-04-14 03:41:25', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('77de3a56da6511ed', '2023-04-14 03:41:25', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('77de7df3da6511ed', '2023-04-14 03:41:25', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('77def805da6511ed', '2023-04-14 03:41:25', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('77df3bbdda6511ed', '2023-04-14 03:41:25', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('7a8767abda6111ed', '2023-04-14 03:12:52', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('7a8810fada6111ed', '2023-04-14 03:12:52', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('7a88aeebda6111ed', '2023-04-14 03:12:52', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('7a89abb9da6111ed', '2023-04-14 03:12:52', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('7fb67ac1d9ca11ed', '2023-04-13 09:12:06', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('7fb76f36d9ca11ed', '2023-04-13 09:12:06', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('7fb7fb92d9ca11ed', '2023-04-13 09:12:06', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('7fb89227d9ca11ed', '2023-04-13 09:12:06', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('7fb91c39d9ca11ed', '2023-04-13 09:12:06', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('7fb9adbed9ca11ed', '2023-04-13 09:12:06', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('7fba249dd9ca11ed', '2023-04-13 09:12:06', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('7fba9719d9ca11ed', '2023-04-13 09:12:06', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('7fbb1630d9ca11ed', '2023-04-13 09:12:06', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('7fbb8582d9ca11ed', '2023-04-13 09:12:06', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('81cfbd27da6511ed', '2023-04-14 03:41:42', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('81d03d6fda6511ed', '2023-04-14 03:41:42', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('81d0ed70da6511ed', '2023-04-14 03:41:42', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('81d17d1ada6511ed', '2023-04-14 03:41:42', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('84823989d9aa11ed', '2023-04-13 05:23:10', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('88c04ee7d9d211ed', '2023-04-13 16:09:37', '58727a89cdf911ed', 1, 'User has logged in'),
('8b3816edd9aa11ed', '2023-04-13 05:23:22', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('8b3908d7d9aa11ed', '2023-04-13 05:23:22', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('8b399a0ed9aa11ed', '2023-04-13 05:23:22', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('8b3a2b9fd9aa11ed', '2023-04-13 05:23:22', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('8eac7f89da6511ed', '2023-04-14 03:42:03', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('8eaccdb6da6511ed', '2023-04-14 03:42:03', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('8ead4a04da6511ed', '2023-04-14 03:42:03', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('8eade435da6511ed', '2023-04-14 03:42:03', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('8eae5d9bda6511ed', '2023-04-14 03:42:03', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('8eaea47fda6511ed', '2023-04-14 03:42:03', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('8eaf1047da6511ed', '2023-04-14 03:42:03', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('8eafc1f7da6511ed', '2023-04-14 03:42:03', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('8eb041a9da6511ed', '2023-04-14 03:42:03', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('8eb081e3da6511ed', '2023-04-14 03:42:03', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('8eb0efaeda6511ed', '2023-04-14 03:42:03', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('8eb14778da6511ed', '2023-04-14 03:42:03', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('8eb1adbcda6511ed', '2023-04-14 03:42:03', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('8eb1e7a0da6511ed', '2023-04-14 03:42:03', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('8eb25b20da6511ed', '2023-04-14 03:42:03', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('8eb29689da6511ed', '2023-04-14 03:42:03', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('8ff4ad60d9a011ed', '2023-04-13 04:11:55', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('8ff58bc1d9a011ed', '2023-04-13 04:11:55', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('8ff663d7d9a011ed', '2023-04-13 04:11:55', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('8ff6f183d9a011ed', '2023-04-13 04:11:55', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('8ff765add9a011ed', '2023-04-13 04:11:55', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('8ff7d91ed9a011ed', '2023-04-13 04:11:55', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('8ff861ead9a011ed', '2023-04-13 04:11:55', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('8ff8d132d9a011ed', '2023-04-13 04:11:55', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('8ff94752d9a011ed', '2023-04-13 04:11:55', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('90760606da7211ed', '2023-04-14 05:15:10', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('9076890dda7211ed', '2023-04-14 05:15:10', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('959848cdd9ca11ed', '2023-04-13 09:12:43', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('95991bcbd9ca11ed', '2023-04-13 09:12:43', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('9599b65bd9ca11ed', '2023-04-13 09:12:43', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('959a8df1d9ca11ed', '2023-04-13 09:12:43', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('959b0c2fd9ca11ed', '2023-04-13 09:12:43', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('959b73b1d9ca11ed', '2023-04-13 09:12:43', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('959c2273d9ca11ed', '2023-04-13 09:12:43', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('959c7b4dd9ca11ed', '2023-04-13 09:12:43', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('99bece57d9cf11ed', '2023-04-13 15:48:37', '58727a89cdf911ed', 1, 'User has logged in'),
('a38f3f4ada6511ed', '2023-04-14 03:42:38', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('a38fd86fda6511ed', '2023-04-14 03:42:38', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('a390742ada6511ed', '2023-04-14 03:42:38', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('a3910939da6511ed', '2023-04-14 03:42:38', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('a391fc03da6511ed', '2023-04-14 03:42:38', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('a39289d8da6511ed', '2023-04-14 03:42:38', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('a3930e2dda6511ed', '2023-04-14 03:42:38', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('a3938e44da6511ed', '2023-04-14 03:42:38', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('a394103bda6511ed', '2023-04-14 03:42:38', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('a394cf83da6511ed', '2023-04-14 03:42:38', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('a3954bb2da6511ed', '2023-04-14 03:42:38', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('a395c3f9da6511ed', '2023-04-14 03:42:38', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('a39631f1da6511ed', '2023-04-14 03:42:38', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('a3969969da6511ed', '2023-04-14 03:42:38', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('a396f1e0da6511ed', '2023-04-14 03:42:38', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('a3974f71da6511ed', '2023-04-14 03:42:38', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('ad6a9273d9a011ed', '2023-04-13 04:12:44', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('ad6b3293d9a011ed', '2023-04-13 04:12:44', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('ad6bcbc6d9a011ed', '2023-04-13 04:12:44', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('ad6c9cb3d9a011ed', '2023-04-13 04:12:44', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('ad6d34ddd9a011ed', '2023-04-13 04:12:44', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('ad6db911d9a011ed', '2023-04-13 04:12:44', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('ad6ea124d9a011ed', '2023-04-13 04:12:44', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('ad6f31ccd9a011ed', '2023-04-13 04:12:44', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('ad6fedf9d9a011ed', '2023-04-13 04:12:44', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('ad70800bd9a011ed', '2023-04-13 04:12:44', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('ad710e13d9a011ed', '2023-04-13 04:12:44', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('ad718335d9a011ed', '2023-04-13 04:12:44', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('ad71f943d9a011ed', '2023-04-13 04:12:44', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('ad726e0fd9a011ed', '2023-04-13 04:12:44', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('ad72d65bd9a011ed', '2023-04-13 04:12:44', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('ad733ef4d9a011ed', '2023-04-13 04:12:44', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('ad739f36d9a011ed', '2023-04-13 04:12:44', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('ad73ed06d9a011ed', '2023-04-13 04:12:44', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('b9ca9f4dda7111ed', '2023-04-14 05:09:10', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('b9cb4768da7111ed', '2023-04-14 05:09:10', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('b9cc1f2fda7111ed', '2023-04-14 05:09:10', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('b9cce70eda7111ed', '2023-04-14 05:09:10', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('b9cd6726da7111ed', '2023-04-14 05:09:10', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('b9cdee00da7111ed', '2023-04-14 05:09:10', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('b9ce6aa0da7111ed', '2023-04-14 05:09:10', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('b9cee962da7111ed', '2023-04-14 05:09:10', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('b9cf6e16da7111ed', '2023-04-14 05:09:10', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('b9cfd8bfda7111ed', '2023-04-14 05:09:10', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('cddb06e6d9d211ed', '2023-04-13 16:11:33', '58727a89cdf911ed', 1, 'User has logged in'),
('e03f6102da5c11ed', '2023-04-14 08:39:55', '58727a89cdf911ed', 1, 'User has logged in'),
('ec83172bd99811ed', '2023-04-13 03:17:14', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('ec83c8bfd99811ed', '2023-04-13 03:17:14', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('ec84d6e3d99811ed', '2023-04-13 03:17:14', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('ec8555f6d99811ed', '2023-04-13 03:17:14', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('ec85d45ed99811ed', '2023-04-13 03:17:14', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('ec86505ad99811ed', '2023-04-13 03:17:14', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('ec86d095d99811ed', '2023-04-13 03:17:14', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('ec873f8dd99811ed', '2023-04-13 03:17:14', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('ec87c6a1d99811ed', '2023-04-13 03:17:14', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('ee143925da7211ed', '2023-04-14 05:17:47', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('f2845b60d9a111ed', '2023-04-13 04:21:50', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('f28502d2d9a111ed', '2023-04-13 04:21:50', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('f45ebdc1d99911ed', '2023-04-13 03:24:37', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('f45f5932d99911ed', '2023-04-13 03:24:37', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('f45ff4bbd99911ed', '2023-04-13 03:24:37', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('f4609686d99911ed', '2023-04-13 03:24:37', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('f4611bacd99911ed', '2023-04-13 03:24:37', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('f461efdfd99911ed', '2023-04-13 03:24:37', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('f462bef8d99911ed', '2023-04-13 03:24:37', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('f4638116d99911ed', '2023-04-13 03:24:37', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('f463e7d0d99911ed', '2023-04-13 03:24:37', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('f4644f89d99911ed', '2023-04-13 03:24:37', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('f464b269d99911ed', '2023-04-13 03:24:37', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('f4651443d99911ed', '2023-04-13 03:24:37', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('f465718dd99911ed', '2023-04-13 03:24:37', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('f465d3bed99911ed', '2023-04-13 03:24:37', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('f4662881d99911ed', '2023-04-13 03:24:37', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('f4667dafd99911ed', '2023-04-13 03:24:37', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('f466e336d99911ed', '2023-04-13 03:24:37', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('f4673cd3d99911ed', '2023-04-13 03:24:37', '58727a89cdf911ed', 1, 'Successfully saved the Product');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `BRAND_ID` varchar(16) NOT NULL DEFAULT replace(convert(uuid() using utf8mb4),'-',''),
  `BRAND` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `CATEGORY_ID` varchar(16) NOT NULL DEFAULT replace(convert(uuid() using utf8mb4),'-',''),
  `CATEGORY` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `models`
--

CREATE TABLE `models` (
  `MODEL_ID` varchar(16) NOT NULL DEFAULT replace(convert(uuid() using utf8mb4),'-',''),
  `MODEL` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `models`
--

INSERT INTO `models` (`MODEL_ID`, `MODEL`) VALUES
('2579a6e9d80e11ed', 'ERA-A363H'),
('7b3d5821d80211ed', 'DS-2CE70DF3T-PF'),
('7b3f4816d80211ed', 'DS-2CE70DF3T-PFS'),
('7b3fe92fd80211ed', 'DS-2CE72DF3T-PIRXOS'),
('7b40c034d80211ed', 'DS-2CE10DF3T-PF'),
('7b415b29d80211ed', 'DS-2CE10DF3T-PFS'),
('7b41e2cad80211ed', 'DS-2CE12DF3T-FS'),
('7b426946d80211ed', 'DS-2CE12DF3T-PIRXOS'),
('7b435640d80211ed', 'DS-2AE5225TI-A'),
('7b43c0d6d80211ed', 'TVI-LITE 4CH2D2B-2M CV'),
('7b4427b9d80211ed', 'DS-2CD2F22FWD-IS'),
('7b448fdbd80211ed', 'IPC-A23N'),
('7b45186ad80211ed', 'IPC-F22N-D'),
('7b4591cdd80211ed', 'IPC-S21FN'),
('7b460d78d80211ed', 'IPC-TA22CN-D'),
('7b467800d80211ed', 'HWI-D121H'),
('7b46e4f3d80211ed', 'E-HWID'),
('7b475d75d80211ed', 'DS-2CD1323G0-IUF'),
('7b47ca65d80211ed', 'DS-2CD1321-I'),
('7b483257d80211ed', 'DS-2CD1023G0-IU'),
('7b48aaaad80211ed', 'E-HWIB'),
('7b490f52d80211ed', 'DS-2CD1023GO-IUF'),
('7b497476d80211ed', 'DS-2CV2Q21FD-IW'),
('7b49e9b3d80211ed', 'DS-2CD1327G0-L'),
('7b4a4390d80211ed', 'DS-2CD1327GO-LUF'),
('7b4aa3f8d80211ed', 'DS-2CD1027G0-L'),
('7b4b2251d80211ed', 'DS-2CD1027G0-LU'),
('7b4b8513d80211ed', 'DS-2CD1027G0-LUF'),
('7b4bde23d80211ed', 'DS-2CE70KF0T-MFS'),
('7b4c474bd80211ed', 'DS-2CE72KF3T'),
('7b4ca2b8d80211ed', 'DS-2CE10KF0T-FS'),
('7b4d0168d80211ed', 'DS-2CE10KF3T'),
('7b4d78bcd80211ed', 'DS-2CE76U1T-ITPF'),
('7b4df1f7d80211ed', 'DS-2CE72UF3T-E'),
('7b4e54f6d80211ed', 'DS-2CE16U1T-ITPF'),
('7b4ebbabd80211ed', 'DS-2CE10UF3T-E'),
('7b4f39c6d80211ed', 'DS-2CE76H0T-ITPF'),
('7b4f9980d80211ed', 'DS-2CE76H0T-ITPFS'),
('7b4ff8aad80211ed', 'DS-2CE76H0T-ITMF'),
('7b5052b2d80211ed', 'DS-2CE16H0T-ITPF'),
('7b50ab94d80211ed', 'DS-2CE16H0T-ITPFS'),
('7b51116ed80211ed', 'DS-2CE16H0T-ITF'),
('7b516b4ed80211ed', 'DS-2CE17H0T-IT3F'),
('7b51da41d80211ed', 'DS-2CE12HFT-F'),
('7b523a61d80211ed', 'IPC-S41FN'),
('7b52a42dd80211ed', 'HWI-D140H'),
('7b52fb2ad80211ed', 'DS2CD-2347G2-LSU/SL'),
('7b535117d80211ed', 'DS-2DE5425IW-AE '),
('7b53a514d80211ed', 'HWI-B140H'),
('7b53f81dd80211ed', 'DS-2CD1147G0-UF'),
('7b544a1ad80211ed', 'DS-2CV2021G2-IDW'),
('7b549efdd80211ed', 'DS-2CE16D0T-IPF'),
('7b54feecd80211ed', 'DS-2CD2046G2-IU/SL'),
('7b555026d80211ed', 'DS-2CD2047G2-LU/SL'),
('7b55accfd80211ed', 'DH-IPC-HFW1431S1-4KS2/L'),
('7b560643d80211ed', 'DS-2CD2347G2-L(U)'),
('7b5663e8d80211ed', 'DS-2CD1347G0-LUF'),
('7b56cfa1d80211ed', 'DS-2CD1347G0-L'),
('7b573f5dd80211ed', 'DS-2CD2047G2-LU'),
('7b57aa1fd80211ed', 'DS-2CD1047G0-L'),
('7b58098ed80211ed', 'DS-2CD2T47G2-L'),
('7b586ebad80211ed', 'DS-2CD1047G0-LUF'),
('7b58d8aed80211ed', 'DS-2CD2166G2-I'),
('ad7bd0bfd80211ed', 'Barracuda'),
('ad7dea63d80211ed', 'Skyhawk'),
('ad7eb0b9d80211ed', 'Toshiba OEM'),
('ad7f63e2d80211ed', 'Ironwolf'),
('ad7fd96bd80211ed', 'Western Digital'),
('b8f7c5b8d80311ed', 'DS-7204HGHI-K1'),
('b8f9b0d8d80311ed', 'DS-7204HGHI-F1'),
('b8fa88c8d80311ed', 'DS-7204HQHI-K1'),
('b8fb2e78d80311ed', 'DS-7204HQHI-K1/E'),
('b8fbae29d80311ed', 'DS-7204HUHI-K1/E'),
('b8fc1e37d80311ed', 'iDS-7204HUHI- M1/FA'),
('b8fc84e4d80311ed', 'iDS-7204HQHI-M1/S'),
('b8fced70d80311ed', 'DS-7208HGHI-K1'),
('b8fd4ad4d80311ed', 'DS-7208HQHI-K1/E'),
('b8fdaaeed80311ed', 'iDS-7208HUHI-M1/S'),
('b8fe208bd80311ed', 'DS-7208HGHI-KN'),
('b8fe7e9cd80311ed', 'DS-7208HQHI-M1/S'),
('b8fed467d80311ed', 'DS-7208HUHI-K1/E'),
('b8ff46dcd80311ed', 'DS-7216HGHI-K1'),
('b8ffa90bd80311ed', 'iDS-7216HQHI-M1/S'),
('b9000929d80311ed', 'iDS-7216HUHI-M2/S'),
('b9007d9ad80311ed', 'iDS-7216HQHI-M2/S'),
('b900e1f4d80311ed', 'DS-7216HGHI-K2'),
('b9014e41d80311ed', 'iDS-7232HQHI-M2/S'),
('b901c3a1d80311ed', 'DAHUA 8CH 2MP'),
('b902346bd80311ed', 'DAHUA 4CH DVR'),
('b9029b5ed80311ed', 'DS-7604NI-Q1'),
('b9031006d80311ed', 'DS-7608NI-Q1'),
('b903766bd80311ed', 'HWN-4108MH'),
('b903d8eed80311ed', 'DS-7608NXI-12/8P/S'),
('b90456bcd80311ed', 'DS-7608NI-Q2'),
('b904b41ed80311ed', 'DS-7608NI-K1'),
('b9050fdad80311ed', 'DS-7616NI-Q2'),
('b90576c5d80311ed', 'DS-7616NI-Q1'),
('b905e33ed80311ed', 'DS-7616NXI-K2'),
('b90642c1d80311ed', 'DH-NVR4216-4KS2/L'),
('b906b0b8d80311ed', 'DS-7632NI-K1'),
('b907218bd80311ed', 'DS-7632NI-K2'),
('b9078919d80311ed', 'DHI-NVR4232-4KS2/L'),
('b907fbdfd80311ed', 'DS-7732NXI-K4'),
('c3433233d80211ed', 'Metal'),
('c3453332d80211ed', 'Fuse'),
('e7dd578ad80111ed', 'DS-2CE16D0T-EXIPF'),
('e7df5b65d80111ed', 'DS-2CE16D0T-ITPFS'),
('e7e0097bd80111ed', 'DS-2CE16D3T-ITF'),
('e7e0a60ad80111ed', 'DS-2CE19D3T-IT3ZF'),
('e7e14e7ad80111ed', 'DS-2CE17D0T-IT3F'),
('e7e1e3afd80111ed', 'DS-2CE16D8T-IT3ZF'),
('e7e26d32d80111ed', 'DS-2CE19D3T-AIT3ZF'),
('e7e2f262d80111ed', 'DS-2CE17D0T-IT5F'),
('e7e37c91d80111ed', 'DS-2CE16D0T-IRF'),
('e7e3f2d9d80111ed', 'DS-2CE16D0T-IRPF'),
('e7e47234d80111ed', 'DS-2CE16DOT-IPF'),
('e7e4d4fed80111ed', 'DS-2CE16H1T-IT'),
('e7e5396ad80111ed', 'DS-2CE11DOT-PIRL');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `PRODUCT_ID` varchar(16) NOT NULL DEFAULT replace(convert(uuid() using utf8mb4),'-',''),
  `PRODUCT_DETAILS_ID` varchar(16) NOT NULL,
  `SKU` varchar(32) NOT NULL,
  `SERIAL_NUMBER` varchar(32) NOT NULL,
  `DATE_INSERTED` datetime NOT NULL DEFAULT current_timestamp(),
  `STATUS` varchar(16) NOT NULL DEFAULT 'IN'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`PRODUCT_ID`, `PRODUCT_DETAILS_ID`, `SKU`, `SERIAL_NUMBER`, `DATE_INSERTED`, `STATUS`) VALUES
('b9cafd24da7111ed', '721e1638d83511ed', '123', '2', '2023-04-14 11:09:10', 'OUT'),
('b9cbddfada7111ed', '721e1638d83511ed', '123', '3', '2023-04-13 11:09:10', 'IN'),
('b9cc6b6fda7111ed', '721e1638d83511ed', '123', '4', '2023-04-14 11:09:10', 'IN'),
('b9cd3029da7111ed', '721e1638d83511ed', '123', '5', '2023-04-14 11:09:10', 'IN'),
('b9cda686da7111ed', '721e1638d83511ed', '123', '6', '2023-04-14 11:09:10', 'IN'),
('b9ce2c77da7111ed', '721e1638d83511ed', '123', '7', '2023-04-14 11:09:10', 'IN'),
('b9cea58dda7111ed', '721e1638d83511ed', '123', '8', '2023-04-14 11:09:10', 'IN'),
('b9cf318bda7111ed', '721e1638d83511ed', '123', '9', '2023-04-14 11:09:10', 'IN'),
('b9cfa039da7111ed', '721e1638d83511ed', '123', '10', '2023-04-14 11:09:10', 'IN'),
('ee12b312da7211ed', '721e1638d83511ed', '123', '1', '2023-04-14 11:17:47', 'OUT');

-- --------------------------------------------------------

--
-- Table structure for table `product_details`
--

CREATE TABLE `product_details` (
  `PRODUCT_DETAILS_ID` varchar(16) NOT NULL DEFAULT replace(convert(uuid() using utf8mb4),'-',''),
  `CATEGORY` varchar(64) NOT NULL,
  `BRAND` varchar(64) NOT NULL,
  `MODEL` varchar(64) NOT NULL,
  `BUYING_PRICE` decimal(19,2) NOT NULL,
  `SELLING_PRICE` decimal(19,2) NOT NULL,
  `DATE_ADDED` datetime NOT NULL DEFAULT current_timestamp(),
  `CAMERA_TYPE` varchar(32) DEFAULT NULL,
  `CAMERA_SHAPE` varchar(32) DEFAULT NULL,
  `RECORDER_TYPE` varchar(32) DEFAULT NULL,
  `CAPACITY` varchar(32) DEFAULT NULL,
  `PSU_TYPE` varchar(32) DEFAULT NULL,
  `WATTS` varchar(32) DEFAULT NULL,
  `MONITOR_SIZE` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_details`
--

INSERT INTO `product_details` (`PRODUCT_DETAILS_ID`, `CATEGORY`, `BRAND`, `MODEL`, `BUYING_PRICE`, `SELLING_PRICE`, `DATE_ADDED`, `CAMERA_TYPE`, `CAMERA_SHAPE`, `RECORDER_TYPE`, `CAPACITY`, `PSU_TYPE`, `WATTS`, `MONITOR_SIZE`) VALUES
('31a891a3d83b11ed', 'Power Supply', 'OEM', 'Generic', '0.00', '0.00', '2023-04-11 15:33:46', NULL, NULL, NULL, NULL, 'Metal Type', '5amps', NULL),
('721e1638d83511ed', 'Camera', 'Hikvision', 'DS-2CE76H0T-ITPFS', '0.00', '0.00', '2023-04-11 14:52:37', 'Analog', 'Dome', NULL, NULL, NULL, NULL, NULL),
('7d6b5e05d83511ed', 'Camera', 'Hikvision', 'DS-2CE16H0T-ITPF', '0.00', '0.00', '2023-04-11 14:52:56', 'Analog', 'Bullet', NULL, NULL, NULL, NULL, NULL),
('84809829d9aa11ed', 'Recorder', 'Hikvision', 'ERA-A363H', '0.00', '0.00', '2023-04-13 11:23:10', NULL, NULL, 'DVR', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `SALE_ID` varchar(16) NOT NULL DEFAULT replace(convert(uuid() using utf8mb4),'-',''),
  `PRODUCT_DETAILS_ID` varchar(16) NOT NULL,
  `SERIAL_NUMBER` varchar(32) NOT NULL,
  `SKU` varchar(32) NOT NULL,
  `DATE_PURCHASED` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`SALE_ID`, `PRODUCT_DETAILS_ID`, `SERIAL_NUMBER`, `SKU`, `DATE_PURCHASED`) VALUES
('77c3b8abda7311ed', '721e1638d83511ed', '1', '123', '2023-04-14 11:21:38'),
('77c64021da7311ed', '721e1638d83511ed', '2', '123', '2023-04-14 11:21:38');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `USER_ID` varchar(16) NOT NULL DEFAULT replace(convert(uuid() using utf8mb4),'-',''),
  `FIRST_NAME` varchar(64) NOT NULL,
  `LAST_NAME` varchar(64) NOT NULL,
  `USERNAME` varchar(16) NOT NULL,
  `PASSWORD` varchar(64) NOT NULL,
  `ROLE` int(16) NOT NULL,
  `LOGIN_ATTEMPTS` int(16) NOT NULL DEFAULT 0,
  `IS_LOCKED` int(16) NOT NULL DEFAULT 0,
  `LAST_LOGIN` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`USER_ID`, `FIRST_NAME`, `LAST_NAME`, `USERNAME`, `PASSWORD`, `ROLE`, `LOGIN_ATTEMPTS`, `IS_LOCKED`, `LAST_LOGIN`) VALUES
('58727a89cdf911ed', 'JOHN', 'DOE', 'owner', '$2y$10$uovfGxUqgB7aaOXTlT832OEXoy52Kj1lJ6wzqchHhhnTi65937ZAS', 1, 0, 0, '2023-04-14 08:39:55');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `action_logs`
--
ALTER TABLE `action_logs`
  ADD PRIMARY KEY (`ACTION_LOG_ID`),
  ADD KEY `FK_USER_ACTION_LOG` (`USER_ID`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`BRAND_ID`);

--
-- Indexes for table `models`
--
ALTER TABLE `models`
  ADD PRIMARY KEY (`MODEL_ID`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`PRODUCT_ID`),
  ADD KEY `FK_PRODUCT_DETAILS_ID` (`PRODUCT_DETAILS_ID`);

--
-- Indexes for table `product_details`
--
ALTER TABLE `product_details`
  ADD PRIMARY KEY (`PRODUCT_DETAILS_ID`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`SALE_ID`),
  ADD KEY `SALES_PRODUCT_DETAILS_ID` (`PRODUCT_DETAILS_ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`USER_ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `action_logs`
--
ALTER TABLE `action_logs`
  ADD CONSTRAINT `FK_USER_ACTION_LOG` FOREIGN KEY (`USER_ID`) REFERENCES `users` (`USER_ID`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `FK_PRODUCT_DETAILS_ID` FOREIGN KEY (`PRODUCT_DETAILS_ID`) REFERENCES `product_details` (`PRODUCT_DETAILS_ID`);

--
-- Constraints for table `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `SALES_PRODUCT_DETAILS_ID` FOREIGN KEY (`PRODUCT_DETAILS_ID`) REFERENCES `product_details` (`PRODUCT_DETAILS_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
