-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 18, 2023 at 09:52 AM
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
('13ac9373ddbd11ed', '2023-04-18 09:46:06', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('13ad781addbd11ed', '2023-04-18 09:46:06', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('13ae06d5ddbd11ed', '2023-04-18 09:46:06', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('13ae8a42ddbd11ed', '2023-04-18 09:46:06', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('13af02a6ddbd11ed', '2023-04-18 09:46:06', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('13af70c6ddbd11ed', '2023-04-18 09:46:06', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('13afd155ddbd11ed', '2023-04-18 09:46:06', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('13b03de0ddbd11ed', '2023-04-18 09:46:06', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('13b0a1caddbd11ed', '2023-04-18 09:46:06', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('13b101aeddbd11ed', '2023-04-18 09:46:06', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('13b19180ddbd11ed', '2023-04-18 09:46:06', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('13b1f822ddbd11ed', '2023-04-18 09:46:06', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('1ac14bb2ddb311ed', '2023-04-18 08:34:43', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('1ac1da92ddb311ed', '2023-04-18 08:34:43', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('1ac29e0addb311ed', '2023-04-18 08:34:43', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('1ac32123ddb311ed', '2023-04-18 08:34:43', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('1ac3c171ddb311ed', '2023-04-18 08:34:43', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('262a088fddb311ed', '2023-04-18 08:35:02', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('262aad2fddb311ed', '2023-04-18 08:35:02', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('262b39faddb311ed', '2023-04-18 08:35:02', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('262c27a1ddb311ed', '2023-04-18 08:35:02', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('419a30bbdcbe11ed', '2023-04-17 09:22:03', '58727a89cdf911ed', 1, 'User has logged in'),
('57e2f944ddb411ed', '2023-04-18 08:43:35', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('57e3e53eddb411ed', '2023-04-18 08:43:35', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('57e4c016ddb411ed', '2023-04-18 08:43:35', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('57e54e5cddb411ed', '2023-04-18 08:43:35', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('57e5d6e6ddb411ed', '2023-04-18 08:43:35', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('5b721604dcbf11ed', '2023-04-17 03:29:56', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('5b72c151dcbf11ed', '2023-04-17 03:29:56', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('6a72b20dddb411ed', '2023-04-18 08:44:06', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('6a73632cddb411ed', '2023-04-18 08:44:06', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('6a7406f1ddb411ed', '2023-04-18 08:44:06', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('6a750063ddb411ed', '2023-04-18 08:44:06', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('6a75d113ddb411ed', '2023-04-18 08:44:06', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('6a773112ddb411ed', '2023-04-18 08:44:06', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('8889d7f6ddbd11ed', '2023-04-18 09:49:22', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('888aa1e2ddbd11ed', '2023-04-18 09:49:22', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('888b17d2ddbd11ed', '2023-04-18 09:49:22', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('888b8b75ddbd11ed', '2023-04-18 09:49:22', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('888bf6f0ddbd11ed', '2023-04-18 09:49:22', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('9375812addbc11ed', '2023-04-18 09:42:31', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('96b9ac75ddbd11ed', '2023-04-18 09:49:46', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('96ba5e7bddbd11ed', '2023-04-18 09:49:46', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('96bae2faddbd11ed', '2023-04-18 09:49:46', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('96bb5319ddbd11ed', '2023-04-18 09:49:46', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('9dfca08edcbe11ed', '2023-04-17 03:24:38', '58727a89cdf911ed', 1, 'Successfully saved the Category'),
('a0a9802dddbc11ed', '2023-04-18 09:42:53', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('a0aaa5a2ddbc11ed', '2023-04-18 09:42:53', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('a0ab300cddbc11ed', '2023-04-18 09:42:53', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('a0abc295ddbc11ed', '2023-04-18 09:42:53', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('a0ac4a06ddbc11ed', '2023-04-18 09:42:53', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('a0acc0b1ddbc11ed', '2023-04-18 09:42:53', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('a0ad3098ddbc11ed', '2023-04-18 09:42:53', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('a0ad9fbdddbc11ed', '2023-04-18 09:42:53', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('a0ae0c49ddbc11ed', '2023-04-18 09:42:53', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('a0ae7e47ddbc11ed', '2023-04-18 09:42:53', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('a0aeed8addbc11ed', '2023-04-18 09:42:53', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('b566c2d0dcbe11ed', '2023-04-17 03:25:18', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('b8ed3120dda711ed', '2023-04-18 07:13:15', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('b8ee4c71dda711ed', '2023-04-18 07:13:15', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('b8ef4e22dda711ed', '2023-04-18 07:13:15', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('b8efc72ddda711ed', '2023-04-18 07:13:15', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('b8f0546bdda711ed', '2023-04-18 07:13:15', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('b8f0cef3dda711ed', '2023-04-18 07:13:15', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('b8f147cbdda711ed', '2023-04-18 07:13:15', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('b8f1d3f6dda711ed', '2023-04-18 07:13:15', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('b8f267eddda711ed', '2023-04-18 07:13:15', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('b8f31033dda711ed', '2023-04-18 07:13:15', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('b8f3970edda711ed', '2023-04-18 07:13:15', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('bdf2a679ddbd11ed', '2023-04-19 09:50:48', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('bdf41a28ddbd11ed', '2023-04-19 09:50:48', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('bdf4ed20ddbd11ed', '2023-04-19 09:50:48', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('bdf5be47ddbd11ed', '2023-04-19 09:50:48', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('bdf652e6ddbd11ed', '2023-04-19 09:50:48', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('c218e055ddb211ed', '2023-04-18 08:32:14', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('c21969a7ddb211ed', '2023-04-18 08:32:14', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('c219f93fddb211ed', '2023-04-18 08:32:14', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('c21b8750ddb211ed', '2023-04-18 08:32:14', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('c21c4b71ddb211ed', '2023-04-18 08:32:14', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('c21ccc26ddb211ed', '2023-04-18 08:32:14', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('c21d4a4dddb211ed', '2023-04-18 08:32:14', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('c21dd9edddb211ed', '2023-04-18 08:32:14', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('c21e5ab8ddb211ed', '2023-04-18 08:32:14', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('c21ee59eddb211ed', '2023-04-18 08:32:14', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('cf954cb5ddbd11ed', '2023-04-19 09:51:18', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('cf96148dddbd11ed', '2023-04-19 09:51:18', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('cf968803ddbd11ed', '2023-04-19 09:51:18', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('cf96f7ccddbd11ed', '2023-04-19 09:51:18', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('cf977387ddbd11ed', '2023-04-19 09:51:18', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('cf97ee89ddbd11ed', '2023-04-19 09:51:18', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('d33fecf3ddb211ed', '2023-04-18 08:32:43', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('d3409553ddb211ed', '2023-04-18 08:32:43', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('d3411c4bddb211ed', '2023-04-18 08:32:43', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('d341b107ddb211ed', '2023-04-18 08:32:43', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('d342312dddb211ed', '2023-04-18 08:32:43', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('d342b23dddb211ed', '2023-04-18 08:32:43', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('d95172d8dcbe11ed', '2023-04-17 03:26:18', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('ffa75ad9dd9511ed', '2023-04-18 11:06:22', '58727a89cdf911ed', 1, 'User has logged in');

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
  `STATUS` varchar(16) NOT NULL DEFAULT 'IN'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`PRODUCT_ID`, `PRODUCT_DETAILS_ID`, `SKU`, `SERIAL_NUMBER`, `DATE_INSERTED`, `STATUS`) VALUES
('1abfaca9ddb311ed', 'b5651390dcbe11ed', '123', '1', '2023-04-18 14:34:43', 'OUT'),
('1ac1998addb311ed', 'b5651390dcbe11ed', '123', '2', '2023-04-18 14:34:43', 'OUT'),
('1ac268d0ddb311ed', 'b5651390dcbe11ed', '123', '3', '2023-04-18 14:34:43', 'OUT'),
('1ac2dde9ddb311ed', 'b5651390dcbe11ed', '123', '4', '2023-04-18 14:34:43', 'OUT'),
('1ac38075ddb311ed', 'b5651390dcbe11ed', '123', '5', '2023-04-18 14:34:43', 'OUT'),
('57e15807ddb411ed', 'b5651390dcbe11ed', '123', '6', '2023-04-18 14:43:35', 'IN'),
('57e38db0ddb411ed', 'b5651390dcbe11ed', '123', '7', '2023-04-18 14:43:35', 'IN'),
('57e43d3eddb411ed', 'b5651390dcbe11ed', '123', '8', '2023-04-18 14:43:35', 'IN'),
('57e508b4ddb411ed', 'b5651390dcbe11ed', '123', '9', '2023-04-18 14:43:35', 'IN'),
('57e590afddb411ed', 'b5651390dcbe11ed', '123', '10', '2023-04-18 14:43:35', 'IN'),
('88884da4ddbd11ed', 'b5651390dcbe11ed', '123', '11', '2023-04-18 15:49:22', 'OUT'),
('888a656cddbd11ed', 'b5651390dcbe11ed', '123', '22', '2023-04-18 15:49:22', 'OUT'),
('888ade07ddbd11ed', 'b5651390dcbe11ed', '123', '33', '2023-04-18 15:49:22', 'IN'),
('888b513bddbd11ed', 'b5651390dcbe11ed', '123', '44', '2023-04-18 15:49:22', 'IN'),
('888bc8ffddbd11ed', 'b5651390dcbe11ed', '123', '55', '2023-04-18 15:49:22', 'IN'),
('a0a7f850ddbc11ed', '9373d003ddbc11ed', '321', '1', '2023-04-18 15:42:53', 'OUT'),
('a0aa5b26ddbc11ed', '9373d003ddbc11ed', '321', '2', '2023-04-18 15:42:53', 'OUT'),
('a0aae9edddbc11ed', '9373d003ddbc11ed', '321', '3', '2023-04-18 15:42:53', 'OUT'),
('a0ab7e75ddbc11ed', '9373d003ddbc11ed', '321', '4', '2023-04-18 15:42:53', 'OUT'),
('a0ac0bb5ddbc11ed', '9373d003ddbc11ed', '321', '5', '2023-04-18 15:42:53', 'OUT'),
('a0ac8585ddbc11ed', '9373d003ddbc11ed', '321', '6', '2023-04-18 15:42:53', 'OUT'),
('a0acfbbfddbc11ed', '9373d003ddbc11ed', '321', '7', '2023-04-18 15:42:53', 'IN'),
('a0ad6ee8ddbc11ed', '9373d003ddbc11ed', '321', '8', '2023-04-18 15:42:53', 'IN'),
('a0add09cddbc11ed', '9373d003ddbc11ed', '321', '9', '2023-04-18 15:42:53', 'IN'),
('a0ae49a4ddbc11ed', '9373d003ddbc11ed', '321', '10', '2023-04-18 15:42:53', 'IN'),
('a0aeb5edddbc11ed', '9373d003ddbc11ed', '321', '11', '2023-04-18 15:42:53', 'IN'),
('bdf25a3cddbd11ed', '9373d003ddbc11ed', '3213', '11', '2023-04-19 15:50:48', 'OUT'),
('bdf2ebdbddbd11ed', '9373d003ddbc11ed', '3213', '22', '2023-04-19 15:50:48', 'OUT'),
('bdf4aca1ddbd11ed', '9373d003ddbc11ed', '3213', '33', '2023-04-19 15:50:48', 'OUT'),
('bdf525e1ddbd11ed', '9373d003ddbc11ed', '3213', '44', '2023-04-19 15:50:48', 'IN'),
('bdf60f3fddbd11ed', '9373d003ddbc11ed', '3213', '55', '2023-04-19 15:50:48', 'IN');

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
  `PRODUCT_DETAILS_ID` varchar(16) NOT NULL,
  `SERIAL_NUMBER` varchar(32) NOT NULL,
  `SKU` varchar(32) NOT NULL,
  `DATE_PURCHASED` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`SALE_ID`, `PRODUCT_DETAILS_ID`, `SERIAL_NUMBER`, `SKU`, `DATE_PURCHASED`) VALUES
('13aaef78ddbd11ed', '9373d003ddbc11ed', '1', '321', '2023-04-18 15:46:06'),
('13adc36cddbd11ed', '9373d003ddbc11ed', '2', '321', '2023-04-18 15:46:06'),
('13aec93dddbd11ed', '9373d003ddbc11ed', '3', '321', '2023-04-18 15:46:06'),
('13af9da5ddbd11ed', '9373d003ddbc11ed', '4', '321', '2023-04-18 15:46:06'),
('13b07610ddbd11ed', '9373d003ddbc11ed', '5', '321', '2023-04-18 15:46:06'),
('13b1452bddbd11ed', '9373d003ddbc11ed', '6', '321', '2023-04-18 15:46:06'),
('2629bf6cddb311ed', 'b5651390dcbe11ed', '1', '123', '2023-04-18 14:35:02'),
('262af777ddb311ed', 'b5651390dcbe11ed', '2', '123', '2023-04-18 14:35:02'),
('6a711f73ddb411ed', 'b5651390dcbe11ed', '3', '123', '2023-04-18 14:44:06'),
('6a73bcb0ddb411ed', 'b5651390dcbe11ed', '4', '123', '2023-04-18 14:44:06'),
('6a754430ddb411ed', 'b5651390dcbe11ed', '5', '123', '2023-04-18 14:44:06'),
('96b7ff76ddbd11ed', 'b5651390dcbe11ed', '11', '123', '2023-04-18 15:49:46'),
('96baa435ddbd11ed', 'b5651390dcbe11ed', '22', '123', '2023-04-18 15:49:46'),
('cf94f089ddbd11ed', '9373d003ddbc11ed', '11', '3213', '2023-04-19 15:51:18'),
('cf965464ddbd11ed', '9373d003ddbc11ed', '22', '3213', '2023-04-19 15:51:18'),
('cf9737ccddbd11ed', '9373d003ddbc11ed', '33', '3213', '2023-04-19 15:51:18');

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
('58727a89cdf911ed', 'JOHN', 'DOE', 'owner', '$2y$10$uovfGxUqgB7aaOXTlT832OEXoy52Kj1lJ6wzqchHhhnTi65937ZAS', 1, 0, 0, '2023-04-18 11:06:22');

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
