-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 03, 2023 at 03:19 AM
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
('0153350fe58a11ed', '2023-04-28 08:00:43', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('18a908ece58a11ed', '2023-04-28 08:01:22', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('1f08dbede55a11ed', '2023-04-28 08:17:54', '58727a89cdf911ed', 1, 'User has logged in'),
('20430479e57211ed', '2023-04-28 05:09:47', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('24aa6eb6e88411ed', '2023-05-03 02:56:11', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('24ab4607e88411ed', '2023-05-03 02:56:11', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('24ac16e8e88411ed', '2023-05-03 02:56:11', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('24aca218e88411ed', '2023-05-03 02:56:11', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('24ad828fe88411ed', '2023-05-03 02:56:11', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('24ae094be88411ed', '2023-05-03 02:56:11', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('24ae993de88411ed', '2023-05-03 02:56:11', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('24af331ae88411ed', '2023-05-03 02:56:11', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('24afa5e5e88411ed', '2023-05-03 02:56:11', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('2c7799bfe58f11ed', '2023-04-28 08:37:43', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('3e4c9cbde87f11ed', '2023-05-02 08:21:12', '58727a89cdf911ed', 1, 'User has logged in'),
('4e657dd5e57211ed', '2023-04-28 05:11:05', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('541499ece3cf11ed', '2023-04-26 03:11:52', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('54156053e3cf11ed', '2023-04-26 03:11:52', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('54163885e3cf11ed', '2023-04-26 03:11:52', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('5416accee3cf11ed', '2023-04-26 03:11:52', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('54171dace3cf11ed', '2023-04-26 03:11:52', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('54179254e3cf11ed', '2023-04-26 03:11:52', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('54180c77e3cf11ed', '2023-04-26 03:11:52', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('541884d8e3cf11ed', '2023-04-26 03:11:52', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('5418fdcae3cf11ed', '2023-04-26 03:11:52', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('541976f8e3cf11ed', '2023-04-26 03:11:52', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('5419efb6e3cf11ed', '2023-04-26 03:11:52', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('541a63bae3cf11ed', '2023-04-26 03:11:52', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('541aded7e3cf11ed', '2023-04-26 03:11:52', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('541b4f34e3cf11ed', '2023-04-26 03:11:52', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('541bceb0e3cf11ed', '2023-04-26 03:11:52', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('545626fde88011ed', '2023-05-02 02:28:58', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('5456ca39e88011ed', '2023-05-02 02:28:58', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('54576e00e88011ed', '2023-05-02 02:28:58', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('54580654e88011ed', '2023-05-02 02:28:58', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('5458a23be88011ed', '2023-05-02 02:28:58', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('54595003e88011ed', '2023-05-02 02:28:58', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('5459d4d1e88011ed', '2023-05-02 02:28:58', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('545a6ae7e88011ed', '2023-05-02 02:28:58', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('545b8c68e88011ed', '2023-05-02 02:28:58', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('5a380baae58311ed', '2023-04-28 07:13:06', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('6421d8bee40311ed', '2023-04-26 09:24:33', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('76a51309e40311ed', '2023-04-26 09:25:04', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('78a144fae40111ed', '2023-04-26 15:10:48', '58727a89cdf911ed', 1, 'User has logged in'),
('793bc4ece49311ed', '2023-04-27 08:35:56', '58727a89cdf911ed', 1, 'User has logged in'),
('7b09a229e3f311ed', '2023-04-26 07:30:39', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('7b0a9c02e3f311ed', '2023-04-26 07:30:39', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('7b0b451ce3f311ed', '2023-04-26 07:30:39', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('7b0c005be3f311ed', '2023-04-26 07:30:39', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('7b0c8bf7e3f311ed', '2023-04-26 07:30:39', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('7b0d1fe9e3f311ed', '2023-04-26 07:30:39', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('7b0d99b5e3f311ed', '2023-04-26 07:30:39', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('7b0e1b3ae3f311ed', '2023-04-26 07:30:39', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('7b0eb286e3f311ed', '2023-04-26 07:30:39', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('8995fd80e49311ed', '2023-04-27 02:36:23', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('8f0bccf7e88311ed', '2023-05-02 02:52:05', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('8f0c8229e88311ed', '2023-05-02 02:52:05', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('8f0d2f07e88311ed', '2023-05-02 02:52:05', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('8f0dd6a2e88311ed', '2023-05-02 02:52:05', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('8f0ecfc4e88311ed', '2023-05-02 02:52:05', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('8f0f6f82e88311ed', '2023-05-02 02:52:05', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('8f1005eee88311ed', '2023-05-02 02:52:05', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('8f109b3de88311ed', '2023-05-02 02:52:05', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('8f1128f4e88311ed', '2023-05-02 02:52:05', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('8f11adece88311ed', '2023-05-02 02:52:05', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('8f1224fee88311ed', '2023-05-02 02:52:05', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('94c4e8ede56311ed', '2023-04-28 03:25:40', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('99b5ed68e55b11ed', '2023-04-28 02:28:32', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('9d44c8abe4cf11ed', '2023-04-27 15:46:26', '58727a89cdf911ed', 1, 'User has logged in'),
('a3218438e40311ed', '2023-04-26 09:26:19', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('b0f468d1e87e11ed', '2023-05-02 08:17:15', '58727a89cdf911ed', 1, 'User has logged in'),
('b43d5f94e3f311ed', '2023-04-26 07:32:15', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('b43e3060e3f311ed', '2023-04-26 07:32:15', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('b43ed5c9e3f311ed', '2023-04-26 07:32:15', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('b43f5f80e3f311ed', '2023-04-26 07:32:15', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('b44049e8e3f311ed', '2023-04-26 07:32:15', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('b440d1c7e3f311ed', '2023-04-26 07:32:15', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('b441a5dee3f311ed', '2023-04-26 07:32:15', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('b4423be5e3f311ed', '2023-04-26 07:32:15', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('b442a4eee3f311ed', '2023-04-26 07:32:15', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('b4431df3e3f311ed', '2023-04-26 07:32:15', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('b4438fc0e3f311ed', '2023-04-26 07:32:15', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('b443ef52e3f311ed', '2023-04-26 07:32:15', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('b4446187e3f311ed', '2023-04-26 07:32:15', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('b444d146e3f311ed', '2023-04-26 07:32:15', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('b445494fe3f311ed', '2023-04-26 07:32:15', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('b445d1abe3f311ed', '2023-04-26 07:32:15', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('b44633dae3f311ed', '2023-04-26 07:32:15', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('b44692a9e3f311ed', '2023-04-26 07:32:15', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('b44714c4e3f311ed', '2023-04-26 07:32:15', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('b4477ad3e3f311ed', '2023-04-26 07:32:15', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('b447db7ee3f311ed', '2023-04-26 07:32:15', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('b44865dae3f311ed', '2023-04-26 07:32:15', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('b448d071e3f311ed', '2023-04-26 07:32:15', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('b4492c00e3f311ed', '2023-04-26 07:32:15', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('b449b8a9e3f311ed', '2023-04-26 07:32:15', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('b44a23efe3f311ed', '2023-04-26 07:32:15', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('b44a9288e3f311ed', '2023-04-26 07:32:15', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('b44b10b5e3f311ed', '2023-04-26 07:32:15', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('b44b839de3f311ed', '2023-04-26 07:32:15', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('cbe13fc7e58a11ed', '2023-04-28 08:06:23', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('e27426dee3d111ed', '2023-04-26 03:30:10', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('e274b3eae3d111ed', '2023-04-26 03:30:10', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('e2754195e3d111ed', '2023-04-26 03:30:10', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('e276041ce3d111ed', '2023-04-26 03:30:10', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('e276eb85e3d111ed', '2023-04-26 03:30:10', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('e2776063e3d111ed', '2023-04-26 03:30:10', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('e277e588e3d111ed', '2023-04-26 03:30:10', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('e2784f64e3d111ed', '2023-04-26 03:30:10', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('e278b7ace3d111ed', '2023-04-26 03:30:10', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('e2795c51e3d111ed', '2023-04-26 03:30:10', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('e279d127e3d111ed', '2023-04-26 03:30:10', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('e5814834e88111ed', '2023-05-02 02:40:11', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('e5826ce8e88111ed', '2023-05-02 02:40:11', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('e5831435e88111ed', '2023-05-02 02:40:11', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('e583aa70e88111ed', '2023-05-02 02:40:11', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('e584b04fe88111ed', '2023-05-02 02:40:11', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('e58555d2e88111ed', '2023-05-02 02:40:11', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('e585da0be88111ed', '2023-05-02 02:40:11', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('e5864329e88111ed', '2023-05-02 02:40:11', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('e586b090e88111ed', '2023-05-02 02:40:11', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('e5872331e88111ed', '2023-05-02 02:40:11', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('e58795c3e88111ed', '2023-05-02 02:40:11', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('e587ff02e88111ed', '2023-05-02 02:40:11', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('e5887ee3e88111ed', '2023-05-02 02:40:11', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('e588f62ce88111ed', '2023-05-02 02:40:11', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('e589801ee88111ed', '2023-05-02 02:40:11', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('e589f89ae88111ed', '2023-05-02 02:40:11', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('e58a6219e88111ed', '2023-05-02 02:40:11', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('e58ace3ae88111ed', '2023-05-02 02:40:11', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('e58b3dfae88111ed', '2023-05-02 02:40:11', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('f2171000e3cd11ed', '2023-04-26 09:01:58', '58727a89cdf911ed', 1, 'User has logged in'),
('f93b75ade40311ed', '2023-04-26 09:28:43', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('f9f70b62e58611ed', '2023-04-28 07:39:02', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('f9f7b4ace58611ed', '2023-04-28 07:39:02', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('f9f86647e58611ed', '2023-04-28 07:39:02', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('fb698fb7e49d11ed', '2023-04-27 09:51:09', '58727a89cdf911ed', 1, 'User has logged in'),
('fb8dba0ee40311ed', '2023-04-26 09:28:47', '58727a89cdf911ed', 1, 'Successfully saved the Product');

-- --------------------------------------------------------

--
-- Table structure for table `installation_form`
--

CREATE TABLE `installation_form` (
  `INSTALLATION_FORM_ID` varchar(16) NOT NULL DEFAULT replace(convert(uuid() using utf8mb4),'-',''),
  `PROJECT_NAME` varchar(128) NOT NULL,
  `DATE_TIME` datetime NOT NULL DEFAULT current_timestamp(),
  `CONTACT_PERSON` varchar(128) NOT NULL,
  `CONTACT_NUMBER` varchar(16) NOT NULL,
  `PROJECT_SITE` varchar(128) NOT NULL,
  `SALESMAN_BRANCH` varchar(128) NOT NULL,
  `INSTALLER` varchar(128) NOT NULL,
  `SALES_ORDER_NUMBER` varchar(16) NOT NULL,
  `JOB_ORDER_NUMBER` varchar(16) NOT NULL,
  `SERVICE` varchar(32) NOT NULL,
  `NOTE` varchar(1024) NOT NULL,
  `PREPARED_BY` varchar(64) NOT NULL,
  `TRANSMITTED_BY` varchar(64) NOT NULL,
  `RECEIVED_BY` varchar(64) NOT NULL,
  `STATUS` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `installation_form`
--

INSERT INTO `installation_form` (`INSTALLATION_FORM_ID`, `PROJECT_NAME`, `DATE_TIME`, `CONTACT_PERSON`, `CONTACT_NUMBER`, `PROJECT_SITE`, `SALESMAN_BRANCH`, `INSTALLER`, `SALES_ORDER_NUMBER`, `JOB_ORDER_NUMBER`, `SERVICE`, `NOTE`, `PREPARED_BY`, `TRANSMITTED_BY`, `RECEIVED_BY`, `STATUS`) VALUES
('64505eb59f01e177', 'CCTV LQTEch', '2023-05-02 08:52:05', 'Romeo Jr Bardillon', '09760657071', 'Binan', 'Binan', 'Jose Miguel Sevilla', '203', '', 'Multicab', '', 'JOHN DOE', '', '', 'Pending'),
('6451b12bbc67e423', 'IMall Famy CCTV Installation', '2023-05-03 08:56:11', 'Marvin Vicencio', '09760657071', 'Famy, Laguna', 'Santa Rosa Main Branch', 'Romeo Bardillon', '', '', 'Avanza', '', 'JOHN DOE', '', '', 'Pending');

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
('9dfc5ec5dcbe11ed', 'DS-2CE76D0T-ITPFS'),
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
  `DATE_OUT` datetime DEFAULT NULL,
  `STATUS` varchar(16) NOT NULL DEFAULT 'IN'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`PRODUCT_ID`, `PRODUCT_DETAILS_ID`, `SKU`, `SERIAL_NUMBER`, `DATE_INSERTED`, `DATE_OUT`, `STATUS`) VALUES
('54145465e3cf11ed', 'b5651390dcbe11ed', '123', '1', '2023-05-02 08:51:23', '2023-05-02 08:52:05', 'OUT'),
('5414de41e3cf11ed', 'b5651390dcbe11ed', '123', '2', '2023-05-02 08:51:23', '2023-05-02 08:52:05', 'OUT'),
('5415e610e3cf11ed', 'b5651390dcbe11ed', '123', '3', '2023-05-02 08:51:23', '2023-05-02 08:52:05', 'OUT'),
('54167297e3cf11ed', 'b5651390dcbe11ed', '123', '4', '2023-05-02 08:51:23', '2023-05-02 08:52:05', 'OUT'),
('5416e09be3cf11ed', 'b5651390dcbe11ed', '123', '5', '2023-05-02 08:51:23', '2023-05-02 08:52:05', 'OUT'),
('5417576be3cf11ed', 'b5651390dcbe11ed', '123', '6', '2023-05-02 08:51:23', '2023-05-03 08:56:11', 'OUT'),
('5417c8c6e3cf11ed', 'b5651390dcbe11ed', '123', '7', '2023-05-02 08:51:23', '2023-05-03 08:56:11', 'OUT'),
('541849fce3cf11ed', 'b5651390dcbe11ed', '123', '8', '2023-05-02 08:51:23', '2023-05-03 08:56:11', 'OUT'),
('5418c490e3cf11ed', 'b5651390dcbe11ed', '123', '9', '2023-05-02 08:51:23', '2023-05-03 08:56:11', 'OUT'),
('54193999e3cf11ed', 'b5651390dcbe11ed', '123', '10', '2023-05-02 08:51:23', NULL, 'IN'),
('5419b7a4e3cf11ed', 'b5651390dcbe11ed', '123', '11', '2023-05-02 08:51:23', NULL, 'IN'),
('541a2a75e3cf11ed', 'b5651390dcbe11ed', '123', '12', '2023-05-02 08:51:23', NULL, 'IN'),
('541aa297e3cf11ed', 'b5651390dcbe11ed', '123', '13', '2023-05-02 08:51:23', NULL, 'IN'),
('541b159de3cf11ed', 'b5651390dcbe11ed', '123', '14', '2023-05-02 08:51:23', NULL, 'IN'),
('541b8e50e3cf11ed', 'b5651390dcbe11ed', '123', '15', '2023-05-02 08:51:23', NULL, 'IN'),
('7b0819a4e3f311ed', '9373d003ddbc11ed', '321', '11', '2023-05-02 08:51:23', NULL, 'IN'),
('7b0a48b0e3f311ed', '9373d003ddbc11ed', '321', '22', '2023-05-02 08:51:23', NULL, 'IN'),
('7b0af2e2e3f311ed', '9373d003ddbc11ed', '321', '33', '2023-05-02 08:51:23', NULL, 'IN'),
('7b0b9165e3f311ed', '9373d003ddbc11ed', '321', '44', '2023-05-02 08:51:23', NULL, 'IN'),
('7b0c4ac3e3f311ed', '9373d003ddbc11ed', '321', '55', '2023-05-02 08:51:23', NULL, 'IN'),
('7b0cd106e3f311ed', '9373d003ddbc11ed', '321', '66', '2023-05-02 08:51:23', NULL, 'IN'),
('7b0d5c2be3f311ed', '9373d003ddbc11ed', '321', '77', '2023-05-02 08:51:23', NULL, 'IN'),
('7b0ddc3ce3f311ed', '9373d003ddbc11ed', '321', '88', '2023-05-02 08:51:23', NULL, 'IN'),
('7b0e6852e3f311ed', '9373d003ddbc11ed', '321', '99', '2023-05-02 08:51:23', NULL, 'IN');

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
('9373d003ddbc11ed', 'Recorder', 'Hikvision', 'DS-7608NI-Q1', '5000.00', '5500.00', '2023-04-18 15:42:31', NULL, NULL, 'NVR', NULL, NULL, NULL, NULL),
('b5651390dcbe11ed', 'Camera', 'Hikvision', 'DS-2CE76D0T-ITPFS', '0.00', '0.00', '2023-04-17 09:25:18', 'Analog', 'Dome', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `SALE_ID` varchar(16) NOT NULL DEFAULT replace(convert(uuid() using utf8mb4),'-',''),
  `INSTALLATION_FORM_ID` varchar(16) NOT NULL,
  `PRODUCT_DETAILS_ID` varchar(16) NOT NULL,
  `SERIAL_NUMBER` varchar(32) NOT NULL,
  `SKU` varchar(32) NOT NULL,
  `DATE_PURCHASED` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`SALE_ID`, `INSTALLATION_FORM_ID`, `PRODUCT_DETAILS_ID`, `SERIAL_NUMBER`, `SKU`, `DATE_PURCHASED`) VALUES
('24aaf9d1e88411ed', '6451b12bbc67e423', 'b5651390dcbe11ed', '6', '123', '2023-05-03 08:56:11'),
('24ac60d9e88411ed', '6451b12bbc67e423', 'b5651390dcbe11ed', '7', '123', '2023-05-03 08:56:11'),
('24adc6a2e88411ed', '6451b12bbc67e423', 'b5651390dcbe11ed', '8', '123', '2023-05-03 08:56:11'),
('24aeeab9e88411ed', '6451b12bbc67e423', 'b5651390dcbe11ed', '9', '123', '2023-05-03 08:56:11'),
('8f0c3249e88311ed', '64505eb59f01e177', 'b5651390dcbe11ed', '1', '123', '2023-05-02 08:52:05'),
('8f0d855de88311ed', '64505eb59f01e177', 'b5651390dcbe11ed', '2', '123', '2023-05-02 08:52:05'),
('8f0f25c2e88311ed', '64505eb59f01e177', 'b5651390dcbe11ed', '3', '123', '2023-05-02 08:52:05'),
('8f10591ae88311ed', '64505eb59f01e177', 'b5651390dcbe11ed', '4', '123', '2023-05-02 08:52:05'),
('8f116c91e88311ed', '64505eb59f01e177', 'b5651390dcbe11ed', '5', '123', '2023-05-02 08:52:05');

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
('58727a89cdf911ed', 'JOHN', 'DOE', 'owner', '$2y$10$NNjsc/qfqw0VhWXnVXwI4e7epUme3YfQlyWpaXcMdpHqjRvp721ze', 1, 0, 0, '2023-05-02 08:21:12');

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
-- Indexes for table `installation_form`
--
ALTER TABLE `installation_form`
  ADD PRIMARY KEY (`INSTALLATION_FORM_ID`);

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
  ADD KEY `SALES_PRODUCT_DETAILS_ID` (`PRODUCT_DETAILS_ID`),
  ADD KEY `FK_PRODUCT_INSTALLATION_FORM_ID` (`INSTALLATION_FORM_ID`);

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
  ADD CONSTRAINT `FK_PRODUCT_INSTALLATION_FORM_ID` FOREIGN KEY (`INSTALLATION_FORM_ID`) REFERENCES `installation_form` (`INSTALLATION_FORM_ID`),
  ADD CONSTRAINT `SALES_PRODUCT_DETAILS_ID` FOREIGN KEY (`PRODUCT_DETAILS_ID`) REFERENCES `product_details` (`PRODUCT_DETAILS_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
