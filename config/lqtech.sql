-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 03, 2023 at 04:32 AM
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
('101c9acce94e11ed', '2023-05-03 03:01:40', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('101daf80e94e11ed', '2023-05-03 03:01:40', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('101e88dae94e11ed', '2023-05-03 03:01:40', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('101f4d13e94e11ed', '2023-05-03 03:01:40', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('101fd570e94e11ed', '2023-05-03 03:01:40', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('10204c19e94e11ed', '2023-05-03 03:01:40', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('1b534a4ae94e11ed', '2023-05-03 03:01:59', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('1b54b7d3e94e11ed', '2023-05-03 03:01:59', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('1b559c90e94e11ed', '2023-05-03 03:01:59', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('1b5642e3e94e11ed', '2023-05-03 03:01:59', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('1b56ea49e94e11ed', '2023-05-03 03:01:59', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('1b576dfce94e11ed', '2023-05-03 03:01:59', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('3ba84922e95911ed', '2023-05-03 04:21:38', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('3ba8f63ae95911ed', '2023-05-03 04:21:38', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('3ba982e4e95911ed', '2023-05-03 04:21:38', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('3baa3abbe95911ed', '2023-05-03 04:21:38', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('3baacec5e95911ed', '2023-05-03 04:21:38', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('3babc472e95911ed', '2023-05-03 04:21:38', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('3bac8567e95911ed', '2023-05-03 04:21:38', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('3bad17b0e95911ed', '2023-05-03 04:21:38', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('3bad9d45e95911ed', '2023-05-03 04:21:38', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('3bae21b4e95911ed', '2023-05-03 04:21:38', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('3baea5dae95911ed', '2023-05-03 04:21:38', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('3baf18d1e95911ed', '2023-05-03 04:21:38', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('550aadd3e95a11ed', '2023-05-03 04:29:31', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('550b5383e95a11ed', '2023-05-03 04:29:31', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('550bf771e95a11ed', '2023-05-03 04:29:31', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('550c8532e95a11ed', '2023-05-03 04:29:31', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('550de20ee95a11ed', '2023-05-03 04:29:31', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('550f4ddde95a11ed', '2023-05-03 04:29:31', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('5510cae4e95a11ed', '2023-05-03 04:29:31', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('551163f5e95a11ed', '2023-05-03 04:29:31', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('5512f1e4e95a11ed', '2023-05-03 04:29:31', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('5514dce0e95a11ed', '2023-05-03 04:29:31', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('5516d554e95a11ed', '2023-05-03 04:29:31', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('5517f6b7e95a11ed', '2023-05-03 04:29:31', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('7f8990d3e95111ed', '2023-05-03 03:26:15', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('7f8a44bee95111ed', '2023-05-03 03:26:15', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('7f8ace91e95111ed', '2023-05-03 03:26:15', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('7f8ba909e95111ed', '2023-05-03 03:26:15', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('7f8c6bc0e95111ed', '2023-05-03 03:26:15', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('7f8cf3bce95111ed', '2023-05-03 03:26:15', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('94494e24e95811ed', '2023-05-03 04:16:57', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('97da699ce95111ed', '2023-05-03 03:26:56', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('97db75b2e95111ed', '2023-05-03 03:26:56', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('97dc6d98e95111ed', '2023-05-03 03:26:56', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('97dcecebe95111ed', '2023-05-03 03:26:56', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('97ddb760e95111ed', '2023-05-03 03:26:56', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('97de2925e95111ed', '2023-05-03 03:26:56', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('c4b7dde5e95911ed', '2023-05-04 04:25:23', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('c4b8c7f4e95911ed', '2023-05-04 04:25:23', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('c4b9babce95911ed', '2023-05-04 04:25:23', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('c4ba3b51e95911ed', '2023-05-04 04:25:24', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('c4bad74ee95911ed', '2023-05-04 04:25:24', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('c4bb63aae95911ed', '2023-05-04 04:25:24', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('e0231377e95911ed', '2023-05-04 04:26:09', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('e02448fbe95911ed', '2023-05-04 04:26:09', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('e0252d54e95911ed', '2023-05-04 04:26:10', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('e025c57ce95911ed', '2023-05-04 04:26:10', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('e0264029e95911ed', '2023-05-04 04:26:10', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('e0272529e95911ed', '2023-05-04 04:26:10', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('e0279065e95911ed', '2023-05-04 04:26:10', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('e0281da0e95911ed', '2023-05-04 04:26:10', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('e028a31ee95911ed', '2023-05-04 04:26:10', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('e0291e21e95911ed', '2023-05-04 04:26:10', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('e029aae3e95911ed', '2023-05-04 04:26:10', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('e02a2418e95911ed', '2023-05-04 04:26:10', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('e52d8d49e95811ed', '2023-05-03 04:19:12', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('e52f7cd2e95811ed', '2023-05-03 04:19:12', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('e5308294e95811ed', '2023-05-03 04:19:12', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('e53149b5e95811ed', '2023-05-03 04:19:12', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('e531c06ae95811ed', '2023-05-03 04:19:12', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('e532f4c5e95811ed', '2023-05-03 04:19:12', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('e534166be95811ed', '2023-05-03 04:19:13', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('e5359acde95811ed', '2023-05-03 04:19:13', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('e53697f5e95811ed', '2023-05-03 04:19:13', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('e537bd07e95811ed', '2023-05-03 04:19:13', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('e53b0a78e95811ed', '2023-05-03 04:19:13', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('e53e4be0e95811ed', '2023-05-03 04:19:13', '58727a89cdf911ed', 1, 'Successfully saved the Product');

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
('6451c5320be23112', 'CCTV LQTEch', '2023-05-03 10:21:38', 'Romeo Jr Bardillon', '09760657071', 'Binan', 'Binan', 'Jose Sevilla', '203', '', 'Mirage', '', 'JOHN DOE', '', '', 'Pending'),
('6451c70bbdbf0689', 'PUP CCTV Installation', '2023-05-03 10:29:31', 'Arwin Nucum', '09123454321', 'Barangay Tagapo, Santa Rosa, Laguna', 'Boss Leo', 'Jose Sevilla', '809', '', 'Multicab', '', 'JOHN DOE', '', '', 'Pending'),
('645317c1efa46435', 'IMall Famy CCTV Installation', '2023-05-04 10:26:09', 'Romeo Jr Bardillon', '09123456789', 'Famy, Laguna', 'Santa Rosa Main Branch', 'Jose Sevilla', '809', '', 'Avanza', '', 'JOHN DOE', '', '', 'Pending');

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
('101d6f7ce94e11ed', 'b8b6987fe94b11ed', '123', '1', '2023-05-03 09:01:40', '2023-05-03 00:00:00', 'OUT'),
('101de6a1e94e11ed', 'b8b6987fe94b11ed', '123', '2', '2023-05-03 09:01:40', '2023-05-03 00:00:00', 'OUT'),
('101f18abe94e11ed', 'b8b6987fe94b11ed', '123', '3', '2023-05-03 09:01:40', '2023-05-03 00:00:00', 'OUT'),
('101f9233e94e11ed', 'b8b6987fe94b11ed', '123', '4', '2023-05-03 09:01:40', '2023-05-03 00:00:00', 'OUT'),
('1020143fe94e11ed', 'b8b6987fe94b11ed', '123', '5', '2023-05-03 09:01:40', '2023-05-03 00:00:00', 'OUT'),
('1b5469afe94e11ed', 'c462ce3de94b11ed', '321', '11', '2023-05-03 09:01:59', '2023-05-03 00:00:00', 'OUT'),
('1b54f9aee94e11ed', 'c462ce3de94b11ed', '321', '22', '2023-05-03 09:01:59', '2023-05-03 00:00:00', 'OUT'),
('1b55f219e94e11ed', 'c462ce3de94b11ed', '321', '33', '2023-05-03 09:01:59', '2023-05-03 00:00:00', 'OUT'),
('1b5696b0e94e11ed', 'c462ce3de94b11ed', '321', '44', '2023-05-03 09:01:59', '2023-05-03 00:00:00', 'OUT'),
('1b573139e94e11ed', 'c462ce3de94b11ed', '321', '55', '2023-05-03 09:01:59', '2023-05-03 00:00:00', 'OUT'),
('7f89f3cee95111ed', 'b8b6987fe94b11ed', '123', '6', '2023-05-03 09:26:15', NULL, 'IN'),
('7f8a8be2e95111ed', 'b8b6987fe94b11ed', '123', '7', '2023-05-03 09:26:15', NULL, 'IN'),
('7f8b16cee95111ed', 'b8b6987fe94b11ed', '123', '8', '2023-05-03 09:26:15', NULL, 'IN'),
('7f8c2b51e95111ed', 'b8b6987fe94b11ed', '123', '9', '2023-05-03 09:26:15', NULL, 'IN'),
('7f8cb1e5e95111ed', 'b8b6987fe94b11ed', '123', '10', '2023-05-03 09:26:15', NULL, 'IN'),
('97dae624e95111ed', 'c462ce3de94b11ed', '321', '111', '2023-05-03 09:26:56', NULL, 'IN'),
('97dbfcd1e95111ed', 'c462ce3de94b11ed', '321', '222', '2023-05-03 09:26:56', NULL, 'IN'),
('97dcb25fe95111ed', 'c462ce3de94b11ed', '321', '333', '2023-05-03 09:26:56', NULL, 'IN'),
('97dd241ee95111ed', 'c462ce3de94b11ed', '321', '444', '2023-05-03 09:26:56', NULL, 'IN'),
('97ddf060e95111ed', 'c462ce3de94b11ed', '321', '555', '2023-05-03 09:26:56', NULL, 'IN'),
('c4b87dd7e95911ed', 'b8b6987fe94b11ed', '123', '21', '2023-05-04 10:25:23', '2023-05-04 00:00:00', 'OUT'),
('c4b9669ce95911ed', 'b8b6987fe94b11ed', '123', '22', '2023-05-04 10:25:23', '2023-05-04 00:00:00', 'OUT'),
('c4b9fd97e95911ed', 'b8b6987fe94b11ed', '123', '23', '2023-05-04 10:25:24', '2023-05-04 00:00:00', 'OUT'),
('c4ba7de6e95911ed', 'b8b6987fe94b11ed', '123', '24', '2023-05-04 10:25:24', '2023-05-04 00:00:00', 'OUT'),
('c4bb1396e95911ed', 'b8b6987fe94b11ed', '123', '25', '2023-05-04 10:25:24', '2023-05-04 00:00:00', 'OUT');

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
('b8b6987fe94b11ed', 'Camera', 'Hikvision', 'DS-2CE70DF3T-PF', '0.00', '0.00', '2023-05-03 08:44:54', 'IP', 'Dome', NULL, NULL, NULL, NULL, NULL),
('c462ce3de94b11ed', 'Recorder', 'Hikvision', 'ERA-A363H', '0.00', '0.00', '2023-05-03 08:45:14', NULL, NULL, 'NVR', NULL, NULL, NULL, NULL);

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
('3ba93d3ae95911ed', '6451c5320be23112', 'b8b6987fe94b11ed', '1', '123', '2023-05-03 10:21:38'),
('3baa86cbe95911ed', '6451c5320be23112', 'b8b6987fe94b11ed', '2', '123', '2023-05-03 10:21:38'),
('3bac06a1e95911ed', '6451c5320be23112', 'b8b6987fe94b11ed', '3', '123', '2023-05-03 10:21:38'),
('3bad629be95911ed', '6451c5320be23112', 'b8b6987fe94b11ed', '4', '123', '2023-05-03 10:21:38'),
('3bae6a4de95911ed', '6451c5320be23112', 'b8b6987fe94b11ed', '5', '123', '2023-05-03 10:21:38'),
('550bb52ce95a11ed', '6451c70bbdbf0689', 'c462ce3de94b11ed', '11', '321', '2023-05-03 10:29:31'),
('550cd116e95a11ed', '6451c70bbdbf0689', 'c462ce3de94b11ed', '22', '321', '2023-05-03 10:29:31'),
('550fe8f5e95a11ed', '6451c70bbdbf0689', 'c462ce3de94b11ed', '33', '321', '2023-05-03 10:29:31'),
('55125d6be95a11ed', '6451c70bbdbf0689', 'c462ce3de94b11ed', '44', '321', '2023-05-03 10:29:31'),
('55163ce5e95a11ed', '6451c70bbdbf0689', 'c462ce3de94b11ed', '55', '321', '2023-05-03 10:29:31'),
('e0249ca5e95911ed', '645317c1efa46435', 'b8b6987fe94b11ed', '21', '123', '2023-05-04 10:26:09'),
('e0260958e95911ed', '645317c1efa46435', 'b8b6987fe94b11ed', '22', '123', '2023-05-04 10:26:10'),
('e027593ce95911ed', '645317c1efa46435', 'b8b6987fe94b11ed', '23', '123', '2023-05-04 10:26:10'),
('e0286540e95911ed', '645317c1efa46435', 'b8b6987fe94b11ed', '24', '123', '2023-05-04 10:26:10'),
('e029683de95911ed', '645317c1efa46435', 'b8b6987fe94b11ed', '25', '123', '2023-05-04 10:26:10');

-- --------------------------------------------------------

--
-- Table structure for table `stocks`
--

CREATE TABLE `stocks` (
  `STOCKS_ID` varchar(16) NOT NULL DEFAULT replace(convert(uuid() using utf8mb4),'-',''),
  `PRODUCT_ID` varchar(16) NOT NULL,
  `DATE_TODAY` date NOT NULL,
  `IN` int(11) NOT NULL,
  `OUT` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stocks`
--

INSERT INTO `stocks` (`STOCKS_ID`, `PRODUCT_ID`, `DATE_TODAY`, `IN`, `OUT`) VALUES
('101b16c2e94e11ed', 'b8b6987fe94b11ed', '2023-05-03', 10, 5),
('1b51c716e94e11ed', 'c462ce3de94b11ed', '2023-05-03', 10, 5),
('c4b75c1ce95911ed', 'b8b6987fe94b11ed', '2023-05-04', 5, 5);

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
('58727a89cdf911ed', 'JOHN', 'DOE', 'owner', '$2y$10$NNjsc/qfqw0VhWXnVXwI4e7epUme3YfQlyWpaXcMdpHqjRvp721ze', 1, 0, 0, '2023-05-03 08:19:40');

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
-- Indexes for table `stocks`
--
ALTER TABLE `stocks`
  ADD PRIMARY KEY (`STOCKS_ID`),
  ADD KEY `FK_PRODUCT_STOCKS` (`PRODUCT_ID`);

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

--
-- Constraints for table `stocks`
--
ALTER TABLE `stocks`
  ADD CONSTRAINT `FK_PRODUCT_STOCKS` FOREIGN KEY (`PRODUCT_ID`) REFERENCES `product_details` (`PRODUCT_DETAILS_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
