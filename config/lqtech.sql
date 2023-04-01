-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 01, 2023 at 02:21 AM
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
('0812694bcf7111ed', '2023-03-31 05:06:29', '58727a89cdf911ed', 1, 'Successfully updated the Category'),
('0c004060cf8711ed', '2023-03-31 13:44:04', '58727a89cdf911ed', 1, 'User has logged in'),
('0f5e8e5bcf8d11ed', '2023-03-31 14:27:07', '58727a89cdf911ed', 1, 'User has logged in'),
('1f4434bacf7111ed', '2023-03-31 05:07:08', '58727a89cdf911ed', 1, 'Successfully deleted the Category'),
('22442653cf7111ed', '2023-03-31 05:07:13', '58727a89cdf911ed', 1, 'Successfully saved the Category'),
('239ef2fbcf7111ed', '2023-03-31 05:07:15', '58727a89cdf911ed', 1, 'Successfully updated the Category'),
('266f2473cf7111ed', '2023-03-31 05:07:20', '58727a89cdf911ed', 1, 'Successfully updated the Category'),
('3422ab1ccf6911ed', '2023-03-31 10:10:27', '58727a89cdf911ed', 1, 'User has logged in'),
('672604bacf6811ed', '2023-03-31 10:04:43', '58727a89cdf911ed', 1, 'User has logged in'),
('67cb95a3cf7111ed', '2023-03-31 05:09:09', '58727a89cdf911ed', 1, 'Successfully updated the Category'),
('68206b7ccf6711ed', '2023-03-31 09:57:35', '58727a89cdf911ed', 1, 'User has logged in'),
('6c49718bcf6811ed', '2023-03-31 10:04:51', '58727a89cdf911ed', 1, 'User has logged in'),
('6f9212f8cf6811ed', '2023-03-31 04:04:57', '58727a89cdf911ed', 1, 'Successfully change password the User'),
('750460f4cf6811ed', '2023-03-31 10:05:06', '672bc710ce0211ed', 2, 'User has logged in'),
('760bac24cf7111ed', '2023-03-31 05:09:33', '58727a89cdf911ed', 1, 'Successfully saved the Category'),
('78a2ceeacf7111ed', '2023-03-31 05:09:38', '58727a89cdf911ed', 1, 'Successfully deleted the Category'),
('7bd77cffcf7111ed', '2023-03-31 05:09:43', '58727a89cdf911ed', 1, 'Successfully updated the Category'),
('7d9bdc4fcf6e11ed', '2023-03-31 10:48:17', '58727a89cdf911ed', 1, 'User has logged in'),
('7f62bf64cf6711ed', '2023-03-31 03:58:14', '58727a89cdf911ed', 1, 'Successfully deleted the User'),
('802b9ca5cf6e11ed', '2023-03-31 04:48:22', '58727a89cdf911ed', 1, 'Successfully saved the Category'),
('af47a563cf7011ed', '2023-03-31 05:04:00', '58727a89cdf911ed', 1, 'Successfully deleted the Category'),
('bf5464facf9711ed', '2023-03-31 15:43:37', '58727a89cdf911ed', 1, 'User has logged in'),
('c51980eecf9711ed', '2023-03-31 15:43:47', '58727a89cdf911ed', 1, 'User has logged in'),
('c5fadbb1cf7011ed', '2023-03-31 05:04:38', '58727a89cdf911ed', 1, 'Successfully updated the Category'),
('db6c7594cf9811ed', '2023-03-31 15:51:34', '58727a89cdf911ed', 1, 'User has logged in'),
('e39393c6cf7011ed', '2023-03-31 05:05:27', '58727a89cdf911ed', 1, 'Successfully updated the Category'),
('e66d7be8cf7011ed', '2023-03-31 05:05:32', '58727a89cdf911ed', 1, 'Successfully updated the Category'),
('f054b012cf7011ed', '2023-03-31 05:05:49', '58727a89cdf911ed', 1, 'Successfully updated the Category');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `CATEGORY_ID` varchar(16) NOT NULL DEFAULT replace(convert(uuid() using utf8mb4),'-',''),
  `CATEGORY` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`CATEGORY_ID`, `CATEGORY`) VALUES
('7609f97dcf7111ed', 'IP');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `PRODUCT_ID` varchar(16) NOT NULL DEFAULT replace(convert(uuid() using utf8mb4),'-',''),
  `CATEGORY_ID` int(16) NOT NULL,
  `BARCODE` int(132) DEFAULT NULL,
  `PRODUCT_NAME` varchar(100) DEFAULT NULL,
  `SALE_PRICE` float DEFAULT NULL,
  `STATUS` int(11) DEFAULT NULL,
  `MAX_STOCK` int(11) DEFAULT NULL,
  `MIN_STOCK` int(11) DEFAULT NULL,
  `TYPE` varchar(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
('58727a89cdf911ed', 'JOHN', 'DOE', 'owner', '$2y$10$uovfGxUqgB7aaOXTlT832OEXoy52Kj1lJ6wzqchHhhnTi65937ZAS', 1, 0, 0, '2023-03-31 15:51:34'),
('5ae3f6e3cdff11ed', 'Romeo Jr', 'Bardillon', 'adminrbardillon', '$2y$10$dU08Yxcm6Ed5ZyD9889VReCMTc8Ngtuvv0pCudTuqJsJke1yWwrxa', 2, 0, 0, '2023-03-29 15:49:47'),
('672bc710ce0211ed', 'Jose', 'Sevilla', 'adminjsevilla', '$2y$10$oweZrUrVpQcPh3BokM9C5exZyJpOLrQB8jMBY34uPuaR6sujSA88W', 2, 0, 0, '2023-03-31 10:05:06');

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
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`CATEGORY_ID`);

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
