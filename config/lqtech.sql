-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 03, 2023 at 10:06 AM
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
('051c4ae2d1f311ed', '2023-04-03 09:42:01', '58727a89cdf911ed', 1, 'Successfully updated the User'),
('06417dcfd1cf11ed', '2023-04-03 05:24:21', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('0641ff2bd1cf11ed', '2023-04-03 05:24:21', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('07cae28dd1eb11ed', '2023-04-03 08:44:49', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('07cba986d1eb11ed', '2023-04-03 08:44:49', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('07cc6a1ad1eb11ed', '2023-04-03 08:44:49', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('07cd00efd1eb11ed', '2023-04-03 08:44:49', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('07cd80a6d1eb11ed', '2023-04-03 08:44:49', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('07d82836d1f311ed', '2023-04-03 09:42:05', '58727a89cdf911ed', 1, 'Successfully updated the User'),
('0812694bcf7111ed', '2023-03-31 05:06:29', '58727a89cdf911ed', 1, 'Successfully updated the Category'),
('0c004060cf8711ed', '2023-03-31 13:44:04', '58727a89cdf911ed', 1, 'User has logged in'),
('0f5e8e5bcf8d11ed', '2023-03-31 14:27:07', '58727a89cdf911ed', 1, 'User has logged in'),
('137d404ad1eb11ed', '2023-04-03 08:45:09', '58727a89cdf911ed', 1, 'Successfully deleted the Product'),
('17c2201cd1f211ed', '2023-04-03 09:35:22', '58727a89cdf911ed', 1, 'Successfully updated the User'),
('186cef1dd1d011ed', '2023-04-03 05:32:01', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('186d78edd1d011ed', '2023-04-03 05:32:01', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('186e466bd1d011ed', '2023-04-03 05:32:01', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('1be106fbd1cf11ed', '2023-04-03 05:24:57', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('1be1e8fad1cf11ed', '2023-04-03 05:24:57', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('1eddfcd7d1f211ed', '2023-04-03 09:35:34', '58727a89cdf911ed', 1, 'Successfully updated the User'),
('1f4434bacf7111ed', '2023-03-31 05:07:08', '58727a89cdf911ed', 1, 'Successfully deleted the Category'),
('21074473d1d011ed', '2023-04-03 05:32:15', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('22442653cf7111ed', '2023-03-31 05:07:13', '58727a89cdf911ed', 1, 'Successfully saved the Category'),
('239ef2fbcf7111ed', '2023-03-31 05:07:15', '58727a89cdf911ed', 1, 'Successfully updated the Category'),
('24a49f1cd1f211ed', '2023-04-03 09:35:44', '58727a89cdf911ed', 1, 'Successfully updated the User'),
('25ac6f62d1f311ed', '2023-04-03 09:42:55', '58727a89cdf911ed', 1, 'Successfully saved the User'),
('266f2473cf7111ed', '2023-03-31 05:07:20', '58727a89cdf911ed', 1, 'Successfully updated the Category'),
('28a477d5d1f211ed', '2023-04-03 09:35:51', '58727a89cdf911ed', 1, 'Successfully updated the User'),
('31ea68fed1f311ed', '2023-04-03 09:43:16', '58727a89cdf911ed', 1, 'Successfully updated the User'),
('338e0425d1d011ed', '2023-04-03 05:32:46', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('338ec6cbd1d011ed', '2023-04-03 05:32:46', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('3422ab1ccf6911ed', '2023-03-31 10:10:27', '58727a89cdf911ed', 1, 'User has logged in'),
('3581feafd1cf11ed', '2023-04-03 05:25:40', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('3582918fd1cf11ed', '2023-04-03 05:25:40', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('36dfe453d1d011ed', '2023-04-03 05:32:52', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('3a79a6e1d1ee11ed', '2023-04-03 09:07:43', '58727a89cdf911ed', 1, 'Successfully update sell price of the Product'),
('3dbf8a4cd1d011ed', '2023-04-03 05:33:03', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('403ec061d1d011ed', '2023-04-03 05:33:07', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('414da28ed1ee11ed', '2023-04-03 09:07:54', '58727a89cdf911ed', 1, 'Successfully update sell price of the Product'),
('45096290d1d011ed', '2023-04-03 05:33:15', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('4509e358d1d011ed', '2023-04-03 05:33:16', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('450a6986d1d011ed', '2023-04-03 05:33:16', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('4b8cd594d1e011ed', '2023-04-03 07:27:58', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('4b8d6caad1e011ed', '2023-04-03 07:27:58', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('4b8e06e0d1e011ed', '2023-04-03 07:27:58', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('4b8ee5a3d1e011ed', '2023-04-03 07:27:58', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('4b8f5850d1e011ed', '2023-04-03 07:27:58', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('4b8fc223d1e011ed', '2023-04-03 07:27:58', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('4b903959d1e011ed', '2023-04-03 07:27:58', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('4b909a58d1e011ed', '2023-04-03 07:27:58', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('4b90fea4d1e011ed', '2023-04-03 07:27:58', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('4b9166bfd1e011ed', '2023-04-03 07:27:58', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('50dff6d7d1ee11ed', '2023-04-03 09:08:20', '58727a89cdf911ed', 1, 'Successfully update sell price of the Product'),
('672604bacf6811ed', '2023-03-31 10:04:43', '58727a89cdf911ed', 1, 'User has logged in'),
('67cb95a3cf7111ed', '2023-03-31 05:09:09', '58727a89cdf911ed', 1, 'Successfully updated the Category'),
('68206b7ccf6711ed', '2023-03-31 09:57:35', '58727a89cdf911ed', 1, 'User has logged in'),
('694307d4d1d011ed', '2023-04-03 05:34:16', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('694386f0d1d011ed', '2023-04-03 05:34:16', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('69443026d1d011ed', '2023-04-03 05:34:16', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('6c49718bcf6811ed', '2023-03-31 10:04:51', '58727a89cdf911ed', 1, 'User has logged in'),
('6cd12111d1f211ed', '2023-04-03 09:37:45', '58727a89cdf911ed', 1, 'Successfully updated the User'),
('6f9212f8cf6811ed', '2023-03-31 04:04:57', '58727a89cdf911ed', 1, 'Successfully change password the User'),
('6faa409bd1f211ed', '2023-04-03 09:37:50', '58727a89cdf911ed', 1, 'Successfully updated the User'),
('750460f4cf6811ed', '2023-03-31 10:05:06', '672bc710ce0211ed', 2, 'User has logged in'),
('760bac24cf7111ed', '2023-03-31 05:09:33', '58727a89cdf911ed', 1, 'Successfully saved the Category'),
('78a2ceeacf7111ed', '2023-03-31 05:09:38', '58727a89cdf911ed', 1, 'Successfully deleted the Category'),
('7bd77cffcf7111ed', '2023-03-31 05:09:43', '58727a89cdf911ed', 1, 'Successfully updated the Category'),
('7d9bdc4fcf6e11ed', '2023-03-31 10:48:17', '58727a89cdf911ed', 1, 'User has logged in'),
('7f62bf64cf6711ed', '2023-03-31 03:58:14', '58727a89cdf911ed', 1, 'Successfully deleted the User'),
('802b9ca5cf6e11ed', '2023-03-31 04:48:22', '58727a89cdf911ed', 1, 'Successfully saved the Category'),
('8468bbf0d1ee11ed', '2023-04-03 09:09:47', '58727a89cdf911ed', 1, 'Successfully update sell price of the Product'),
('8a5431bcd1ee11ed', '2023-04-03 09:09:57', '58727a89cdf911ed', 1, 'Successfully update sell price of the Product'),
('8ce113bbd1e311ed', '2023-04-03 07:51:16', '58727a89cdf911ed', 1, 'Successfully deleted the Product'),
('9572dfe7d1eb11ed', '2023-04-03 08:48:47', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('99abdac4d1eb11ed', '2023-04-03 08:48:54', '58727a89cdf911ed', 1, 'Successfully deleted the Product'),
('9ddb0172d1f311ed', '2023-04-03 09:46:17', '58727a89cdf911ed', 1, 'Successfully updated the User'),
('a15081d4d1e311ed', '2023-04-03 07:51:51', '58727a89cdf911ed', 1, 'Successfully deleted the Product'),
('a2126273d1f311ed', '2023-04-03 09:46:24', '58727a89cdf911ed', 1, 'Successfully updated the User'),
('af3dfa07d1f311ed', '2023-04-03 09:46:46', '58727a89cdf911ed', 1, 'Successfully change password the User'),
('af47a563cf7011ed', '2023-03-31 05:04:00', '58727a89cdf911ed', 1, 'Successfully deleted the Category'),
('b1290b63d1b511ed', '2023-04-03 02:23:00', '58727a89cdf911ed', 1, 'Successfully updated the User'),
('b30a2b24d1de11ed', '2023-04-03 07:16:33', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('b30ab933d1de11ed', '2023-04-03 07:16:33', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('b30b7dd3d1de11ed', '2023-04-03 07:16:33', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('b30c2425d1de11ed', '2023-04-03 07:16:33', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('b30ccd80d1de11ed', '2023-04-03 07:16:33', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('b30d6db4d1de11ed', '2023-04-03 07:16:33', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('b30e0807d1de11ed', '2023-04-03 07:16:33', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('b30ea6a4d1de11ed', '2023-04-03 07:16:33', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('b30f3e5dd1de11ed', '2023-04-03 07:16:33', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('b30fd7c6d1de11ed', '2023-04-03 07:16:33', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('bc049034d1f311ed', '2023-04-03 09:47:07', '58727a89cdf911ed', 1, 'Successfully change password the User'),
('be45e225d1f311ed', '2023-04-03 09:47:11', '58727a89cdf911ed', 1, 'Successfully deleted the User'),
('bf5464facf9711ed', '2023-03-31 15:43:37', '58727a89cdf911ed', 1, 'User has logged in'),
('c40f9da1d1f311ed', '2023-04-03 09:47:21', '58727a89cdf911ed', 1, 'Successfully updated the User'),
('c51980eecf9711ed', '2023-03-31 15:43:47', '58727a89cdf911ed', 1, 'User has logged in'),
('c5fadbb1cf7011ed', '2023-03-31 05:04:38', '58727a89cdf911ed', 1, 'Successfully updated the Category'),
('c9a6d3a1d1f211ed', '2023-04-03 09:40:21', '58727a89cdf911ed', 1, 'Successfully updated the User'),
('ca1db8fbd1f311ed', '2023-04-03 09:47:31', '58727a89cdf911ed', 1, 'Successfully saved the User'),
('cf7362a5d1ea11ed', '2023-04-03 08:43:15', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('cf74319dd1ea11ed', '2023-04-03 08:43:15', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('cf74b82fd1ea11ed', '2023-04-03 08:43:15', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('db6c7594cf9811ed', '2023-03-31 15:51:34', '58727a89cdf911ed', 1, 'User has logged in'),
('e39393c6cf7011ed', '2023-03-31 05:05:27', '58727a89cdf911ed', 1, 'Successfully updated the Category'),
('e66d7be8cf7011ed', '2023-03-31 05:05:32', '58727a89cdf911ed', 1, 'Successfully updated the Category'),
('f054b012cf7011ed', '2023-03-31 05:05:49', '58727a89cdf911ed', 1, 'Successfully updated the Category'),
('fccf09cfd1f211ed', '2023-04-03 09:41:47', '58727a89cdf911ed', 1, 'Successfully updated the User'),
('fe17cf6dd1cf11ed', '2023-04-03 05:31:16', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('fe1851cbd1cf11ed', '2023-04-03 05:31:16', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('fe191cbad1cf11ed', '2023-04-03 05:31:16', '58727a89cdf911ed', 1, 'Successfully saved the Product');

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
  `CATEGORY` varchar(64) NOT NULL,
  `BRAND` varchar(64) NOT NULL,
  `MODEL` varchar(64) NOT NULL,
  `BUYING_PRICE` decimal(19,2) NOT NULL,
  `SELLING_PRICE` decimal(19,2) NOT NULL,
  `SERIAL_NUMBER` varchar(64) NOT NULL,
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
-- Dumping data for table `products`
--

INSERT INTO `products` (`PRODUCT_ID`, `CATEGORY`, `BRAND`, `MODEL`, `BUYING_PRICE`, `SELLING_PRICE`, `SERIAL_NUMBER`, `DATE_ADDED`, `CAMERA_TYPE`, `CAMERA_SHAPE`, `RECORDER_TYPE`, `CAPACITY`, `PSU_TYPE`, `WATTS`, `MONITOR_SIZE`) VALUES
('07c97673d1eb11ed', 'Camera', 'Hikvision', 'DS-2CE70DF3T-PFS', '3000.00', '3000.00', 'L17860148', '2023-04-03 14:44:49', 'Analog', 'Dome', NULL, NULL, NULL, NULL, NULL),
('07cb5883d1eb11ed', 'Camera', 'Hikvision', 'DS-2CE70DF3T-PFS', '2500.00', '2500.00', 'L17859760', '2023-04-03 14:44:49', 'Analog', 'Dome', NULL, NULL, NULL, NULL, NULL),
('07cc2c7bd1eb11ed', 'Camera', 'Hikvision', 'DS-2CE70DF3T-PFS', '2500.00', '2500.00', 'L17859769', '2023-04-03 14:44:49', 'Analog', 'Dome', NULL, NULL, NULL, NULL, NULL),
('07ccacb3d1eb11ed', 'Camera', 'Hikvision', 'DS-2CE70DF3T-PFS', '2500.00', '3000.00', 'L17859773', '2023-04-03 14:44:49', 'Analog', 'Dome', NULL, NULL, NULL, NULL, NULL);

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
('5ae3f6e3cdff11ed', 'Romeo ', 'Bardillon', 'adminrbardillon', '$2y$10$dU08Yxcm6Ed5ZyD9889VReCMTc8Ngtuvv0pCudTuqJsJke1yWwrxa', 2, 0, 0, '2023-03-29 15:49:47'),
('672bc710ce0211ed', 'Jose', 'Sevilla', 'adminjsevilla', '$2y$10$oweZrUrVpQcPh3BokM9C5exZyJpOLrQB8jMBY34uPuaR6sujSA88W', 2, 0, 0, '2023-03-31 10:05:06'),
('ca1c2b3ad1f311ed', 'JK', 'Vallejo', 'adminjvallejo', '$2y$10$uTjszXAHcFxwK2TLyf5oCeV1Qityjaee6HvThgWv9ypNLFjfHKcRu', 2, 0, 0, NULL);

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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`PRODUCT_ID`);

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
