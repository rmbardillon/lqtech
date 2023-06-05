-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 05, 2023 at 07:04 AM
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
('00704d47f90311ed', '2023-05-23 08:44:40', '58727a89cdf911ed', 1, 'User has logged in'),
('27b8d8ce033c11ee', '2023-06-05 02:58:59', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('27b98a6b033c11ee', '2023-06-05 02:58:59', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('2f9173def90611ed', '2023-05-23 03:07:28', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('2f93221ef90611ed', '2023-05-23 03:07:28', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('2f93f654f90611ed', '2023-05-23 03:07:28', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('2f956d8df90611ed', '2023-05-23 03:07:28', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('2f9652c1f90611ed', '2023-05-23 03:07:28', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('2f9733f2f90611ed', '2023-05-23 03:07:28', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('2f98974bf90611ed', '2023-05-23 03:07:28', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('2f996c42f90611ed', '2023-05-23 03:07:28', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('2f99e5a9f90611ed', '2023-05-23 03:07:28', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('2f9a5310f90611ed', '2023-05-23 03:07:28', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('2f9adb92f90611ed', '2023-05-23 03:07:28', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('35ad11f3f84111ed', '2023-05-22 03:37:27', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('35adc441f84111ed', '2023-05-22 03:37:27', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('35aea47ef84111ed', '2023-05-22 03:37:27', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('35af23a3f84111ed', '2023-05-22 03:37:27', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('35af99c3f84111ed', '2023-05-22 03:37:27', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('35b0147cf84111ed', '2023-05-22 03:37:27', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('35b097cef84111ed', '2023-05-22 03:37:27', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('35b11293f84111ed', '2023-05-22 03:37:27', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('35b18aa1f84111ed', '2023-05-22 03:37:27', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('35b21148f84111ed', '2023-05-22 03:37:27', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('4323a166f90711ed', '2023-05-23 03:15:10', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('432429fbf90711ed', '2023-05-23 03:15:10', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('432511eef90711ed', '2023-05-23 03:15:10', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('4bf78c5200fb11ee', '2023-06-02 12:09:40', '58727a89cdf911ed', 1, 'User has logged in'),
('4c8166c6010b11ee', '2023-06-02 14:04:13', '58727a89cdf911ed', 1, 'User has logged in'),
('4d1cd4b2033811ee', '2023-06-05 02:31:24', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('4d1d73b8033811ee', '2023-06-05 02:31:24', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('4d1e0af3033811ee', '2023-06-05 02:31:24', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('4d1e8d10033811ee', '2023-06-05 02:31:24', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('4d1f3131033811ee', '2023-06-05 02:31:24', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('4d1fb511033811ee', '2023-06-05 02:31:24', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('4d218ce7033811ee', '2023-06-05 02:31:24', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('4d220b38033811ee', '2023-06-05 02:31:24', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('4d22f832033811ee', '2023-06-05 02:31:24', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('6c7403a9fe9411ed', '2023-05-30 10:48:14', '58727a89cdf911ed', 1, 'User has logged in'),
('7e38b3c0033b11ee', '2023-06-05 02:54:15', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('7e398c6d033b11ee', '2023-06-05 02:54:15', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('7e3a5082033b11ee', '2023-06-05 02:54:15', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('7e3ae709033b11ee', '2023-06-05 02:54:15', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('968e6ee7f90311ed', '2023-05-23 02:48:52', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('968f1c53f90311ed', '2023-05-23 02:48:52', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('96906859f90311ed', '2023-05-23 02:48:52', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('969140c7f90311ed', '2023-05-23 02:48:52', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('96923575f90311ed', '2023-05-23 02:48:52', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('97eabfe9f94211ed', '2023-05-23 16:19:53', '58727a89cdf911ed', 1, 'User has logged in'),
('9c29dedefb9911ed', '2023-05-26 15:47:48', '58727a89cdf911ed', 1, 'User has logged in'),
('9f13f5e4f84911ed', '2023-05-22 10:37:40', '58727a89cdf911ed', 1, 'User has logged in'),
('a3fa2fdaf90411ed', '2023-05-23 02:56:24', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('a3fac245f90411ed', '2023-05-23 02:56:24', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('a3fbe2d0f90411ed', '2023-05-23 02:56:24', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('ad23709d033811ee', '2023-06-05 02:34:05', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('b737548f034211ee', '2023-06-05 03:45:57', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('c15d03a7f90311ed', '2023-05-23 02:50:04', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('c15d879ef90311ed', '2023-05-23 02:50:04', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('c15e2140f90311ed', '2023-05-23 02:50:04', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('c15e9853f90311ed', '2023-05-23 02:50:04', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('c15fc768f90311ed', '2023-05-23 02:50:04', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('c69682a1033711ee', '2023-06-05 08:27:38', '58727a89cdf911ed', 1, 'User has logged in'),
('c9b2a19df90411ed', '2023-05-23 02:57:27', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('c9b333b2f90411ed', '2023-05-23 02:57:27', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('c9b3c03ef90411ed', '2023-05-23 02:57:27', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('c9b45340f90411ed', '2023-05-23 02:57:27', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('c9b54b2ff90411ed', '2023-05-23 02:57:27', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('c9b602fcf90411ed', '2023-05-23 02:57:27', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('c9b69140f90411ed', '2023-05-23 02:57:27', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('c9b7327cf90411ed', '2023-05-23 02:57:27', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('c9b7bcfbf90411ed', '2023-05-23 02:57:27', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('c9b852baf90411ed', '2023-05-23 02:57:27', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('c9b8de75f90411ed', '2023-05-23 02:57:27', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('c9b963d2f90411ed', '2023-05-23 02:57:27', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('cd70bd7cf90411ed', '2023-05-23 02:57:34', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('d3e3937afdbd11ed', '2023-05-29 09:12:06', '58727a89cdf911ed', 1, 'User has logged in'),
('db482000033711ee', '2023-06-05 02:28:13', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('ec1c90dcf90311ed', '2023-05-23 02:51:15', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('ec1d60ebf90311ed', '2023-05-23 02:51:15', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('ec1def6af90311ed', '2023-05-23 02:51:15', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('ec1eb57ef90311ed', '2023-05-23 02:51:16', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('ec1f45c5f90311ed', '2023-05-23 02:51:16', '58727a89cdf911ed', 1, 'Successfully saved the Product');

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
  `ESTIMATED_DATE` date DEFAULT NULL,
  `PREPARED_BY` varchar(64) NOT NULL,
  `TRANSMITTED_BY` varchar(64) NOT NULL,
  `RECEIVED_BY` varchar(64) NOT NULL,
  `STATUS` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `installation_form`
--

INSERT INTO `installation_form` (`INSTALLATION_FORM_ID`, `PROJECT_NAME`, `DATE_TIME`, `CONTACT_PERSON`, `CONTACT_NUMBER`, `PROJECT_SITE`, `SALESMAN_BRANCH`, `INSTALLER`, `SALES_ORDER_NUMBER`, `JOB_ORDER_NUMBER`, `SERVICE`, `NOTE`, `ESTIMATED_DATE`, `PREPARED_BY`, `TRANSMITTED_BY`, `RECEIVED_BY`, `STATUS`) VALUES
('646ac75782863643', 'PUP SANTA ROSA', '2023-05-22 09:37:27', 'ARWIN NUCUM', '09123456789', 'PUP SANTA ROSA', 'MAIN BRANCH', 'JP', '203', '102', 'Mirage', '', '2023-06-08', 'JOHN DOE', 'JP', 'JOHN DOE', 'Success'),
('646c11d02231c704', 'IMALL', '2023-05-23 09:07:28', 'MARVIN VICENCIO', '09760657071', 'FAMY LAGUNA', 'STA CRUZ', 'WILMER', '103', '', 'Multicab', '', '2023-06-09', 'JOHN DOE', '', '', 'Canceled'),
('647d2cdc2c888569', 'TECHNOFUEL', '2023-06-05 08:31:24', 'MR JOHN DOE', '09123456789', 'SANTA ROSA LAGUNA', 'MAIN BRANCH', 'JP', '1000', '405', 'Mirage', '', '2023-06-05', 'JOHN DOE', 'JP', 'JOHN DOE', 'Success'),
('647d32370d9a8466', 'DSA', '2023-06-05 08:54:15', 'SAD', '09133113', 'SAD', 'ADS', 'ADS', '303', '', 'Mirage', 'LONG TEXT NOTE SAMPLE', '2023-06-10', 'JOHN DOE', '', '', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `models`
--

CREATE TABLE `models` (
  `MODEL_ID` varchar(16) NOT NULL DEFAULT replace(convert(uuid() using utf8mb4),'-',''),
  `CATEGORY` varchar(64) NOT NULL,
  `MODEL` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `models`
--

INSERT INTO `models` (`MODEL_ID`, `CATEGORY`, `MODEL`) VALUES
('2579a6e9d80e11ed', 'Camera', 'ERA-A363H'),
('27aeefd2eb3f11ed', 'Power Supply', 'PS1'),
('6e454163ebb911ed', 'Hard drive', 'HD-TSB-1TB'),
('6e45f254ebb911ed', 'Hard drive', 'HD-TSB-2TB'),
('6e4696f9ebb911ed', 'Hard drive', 'HD-TSB-4TB'),
('6e472a47ebb911ed', 'Hard drive', 'HD-TSB-6TB'),
('6e47a54eebb911ed', 'Hard drive', 'HD-TSB-8TB'),
('6e48265aebb911ed', 'Hard drive', 'HD-TSB-10TB'),
('7b3d5821d80211ed', 'Camera', 'DS-2CE70DF3T-PF'),
('7b3f4816d80211ed', 'Camera', 'DS-2CE70DF3T-PFS'),
('7b3fe92fd80211ed', 'Camera', 'DS-2CE72DF3T-PIRXOS'),
('7b40c034d80211ed', 'Camera', 'DS-2CE10DF3T-PF'),
('7b415b29d80211ed', 'Camera', 'DS-2CE10DF3T-PFS'),
('7b41e2cad80211ed', 'Camera', 'DS-2CE12DF3T-FS'),
('7b426946d80211ed', 'Camera', 'DS-2CE12DF3T-PIRXOS'),
('7b435640d80211ed', 'Camera', 'DS-2AE5225TI-A'),
('7b43c0d6d80211ed', 'Camera', 'TVI-LITE 4CH2D2B-2M CV'),
('7b4427b9d80211ed', 'Camera', 'DS-2CD2F22FWD-IS'),
('7b448fdbd80211ed', 'Camera', 'IPC-A23N'),
('7b45186ad80211ed', 'Camera', 'IPC-F22N-D'),
('7b4591cdd80211ed', 'Camera', 'IPC-S21FN'),
('7b460d78d80211ed', 'Camera', 'IPC-TA22CN-D'),
('7b467800d80211ed', 'Camera', 'HWI-D121H'),
('7b46e4f3d80211ed', 'Camera', 'E-HWID'),
('7b475d75d80211ed', 'Camera', 'DS-2CD1323G0-IUF'),
('7b47ca65d80211ed', 'Camera', 'DS-2CD1321-I'),
('7b483257d80211ed', 'Camera', 'DS-2CD1023G0-IU'),
('7b48aaaad80211ed', 'Camera', 'E-HWIB'),
('7b490f52d80211ed', 'Camera', 'DS-2CD1023GO-IUF'),
('7b497476d80211ed', 'Camera', 'DS-2CV2Q21FD-IW'),
('7b49e9b3d80211ed', 'Camera', 'DS-2CD1327G0-L'),
('7b4a4390d80211ed', 'Camera', 'DS-2CD1327GO-LUF'),
('7b4aa3f8d80211ed', 'Camera', 'DS-2CD1027G0-L'),
('7b4b2251d80211ed', 'Camera', 'DS-2CD1027G0-LU'),
('7b4b8513d80211ed', 'Camera', 'DS-2CD1027G0-LUF'),
('7b4bde23d80211ed', 'Camera', 'DS-2CE70KF0T-MFS'),
('7b4c474bd80211ed', 'Camera', 'DS-2CE72KF3T'),
('7b4ca2b8d80211ed', 'Camera', 'DS-2CE10KF0T-FS'),
('7b4d0168d80211ed', 'Camera', 'DS-2CE10KF3T'),
('7b4d78bcd80211ed', 'Camera', 'DS-2CE76U1T-ITPF'),
('7b4df1f7d80211ed', 'Camera', 'DS-2CE72UF3T-E'),
('7b4e54f6d80211ed', 'Camera', 'DS-2CE16U1T-ITPF'),
('7b4ebbabd80211ed', 'Camera', 'DS-2CE10UF3T-E'),
('7b4f39c6d80211ed', 'Camera', 'DS-2CE76H0T-ITPF'),
('7b4f9980d80211ed', 'Camera', 'DS-2CE76H0T-ITPFS'),
('7b4ff8aad80211ed', 'Camera', 'DS-2CE76H0T-ITMF'),
('7b5052b2d80211ed', 'Camera', 'DS-2CE16H0T-ITPF'),
('7b50ab94d80211ed', 'Camera', 'DS-2CE16H0T-ITPFS'),
('7b51116ed80211ed', 'Camera', 'DS-2CE16H0T-ITF'),
('7b516b4ed80211ed', 'Camera', 'DS-2CE17H0T-IT3F'),
('7b51da41d80211ed', 'Camera', 'DS-2CE12HFT-F'),
('7b523a61d80211ed', 'Camera', 'IPC-S41FN'),
('7b52a42dd80211ed', 'Camera', 'HWI-D140H'),
('7b52fb2ad80211ed', 'Camera', 'DS2CD-2347G2-LSU/SL'),
('7b535117d80211ed', 'Camera', 'DS-2DE5425IW-AE '),
('7b53a514d80211ed', 'Camera', 'HWI-B140H'),
('7b53f81dd80211ed', 'Camera', 'DS-2CD1147G0-UF'),
('7b544a1ad80211ed', 'Camera', 'DS-2CV2021G2-IDW'),
('7b549efdd80211ed', 'Camera', 'DS-2CE16D0T-IPF'),
('7b54feecd80211ed', 'Camera', 'DS-2CD2046G2-IU/SL'),
('7b555026d80211ed', 'Camera', 'DS-2CD2047G2-LU/SL'),
('7b55accfd80211ed', 'Camera', 'DH-IPC-HFW1431S1-4KS2/L'),
('7b560643d80211ed', 'Camera', 'DS-2CD2347G2-L(U)'),
('7b5663e8d80211ed', 'Camera', 'DS-2CD1347G0-LUF'),
('7b56cfa1d80211ed', 'Camera', 'DS-2CD1347G0-L'),
('7b573f5dd80211ed', 'Camera', 'DS-2CD2047G2-LU'),
('7b57aa1fd80211ed', 'Camera', 'DS-2CD1047G0-L'),
('7b58098ed80211ed', 'Camera', 'DS-2CD2T47G2-L'),
('7b586ebad80211ed', 'Camera', 'DS-2CD1047G0-LUF'),
('7b58d8aed80211ed', 'Camera', 'DS-2CD2166G2-I'),
('8ace5aa7ebb911ed', 'Power Supply', 'PS-1'),
('8ad059fcebb911ed', 'Power Supply', 'PS-2'),
('8ad10112ebb911ed', 'Power Supply', 'PS-4'),
('8ad19a57ebb911ed', 'Power Supply', 'PS-5'),
('8ad2446eebb911ed', 'Power Supply', 'PS-10'),
('9dfc5ec5dcbe11ed', 'Camera', 'DS-2CE76D0T-ITPFS'),
('a0d71ffaf83711ed', 'Camera', 'NEW_MODEL'),
('a3e37048ebb911ed', 'Monitor', 'HK-M1'),
('a3e53d56ebb911ed', 'Monitor', 'HK-M2'),
('a3e5af88ebb911ed', 'Monitor', 'HK-M3'),
('a3e61a8aebb911ed', 'Monitor', 'HK-M4'),
('a3e6ddeeebb911ed', 'Monitor', 'HK-M5'),
('ad7bd0bfd80211ed', 'Hard drive', 'Barracuda'),
('ad7dea63d80211ed', 'Camera', 'Skyhawk'),
('ad7eb0b9d80211ed', 'Camera', 'Toshiba OEM'),
('ad7f63e2d80211ed', 'Camera', 'Ironwolf'),
('ad7fd96bd80211ed', 'Hard drive', 'Western Digital'),
('b15f3c8cebb911ed', 'Recorder', 'DH-NVR4216-4KS2/B'),
('b8f7c5b8d80311ed', 'Camera', 'DS-7204HGHI-K1'),
('b8f9b0d8d80311ed', 'Camera', 'DS-7204HGHI-F1'),
('b8fa88c8d80311ed', 'Camera', 'DS-7204HQHI-K1'),
('b8fb2e78d80311ed', 'Camera', 'DS-7204HQHI-K1/E'),
('b8fbae29d80311ed', 'Camera', 'DS-7204HUHI-K1/E'),
('b8fc1e37d80311ed', 'Camera', 'iDS-7204HUHI- M1/FA'),
('b8fc84e4d80311ed', 'Camera', 'iDS-7204HQHI-M1/S'),
('b8fced70d80311ed', 'Camera', 'DS-7208HGHI-K1'),
('b8fd4ad4d80311ed', 'Camera', 'DS-7208HQHI-K1/E'),
('b8fdaaeed80311ed', 'Camera', 'iDS-7208HUHI-M1/S'),
('b8fe208bd80311ed', 'Camera', 'DS-7208HGHI-KN'),
('b8fe7e9cd80311ed', 'Camera', 'DS-7208HQHI-M1/S'),
('b8fed467d80311ed', 'Camera', 'DS-7208HUHI-K1/E'),
('b8ff46dcd80311ed', 'Camera', 'DS-7216HGHI-K1'),
('b8ffa90bd80311ed', 'Camera', 'iDS-7216HQHI-M1/S'),
('b9000929d80311ed', 'Camera', 'iDS-7216HUHI-M2/S'),
('b9007d9ad80311ed', 'Camera', 'iDS-7216HQHI-M2/S'),
('b900e1f4d80311ed', 'Camera', 'DS-7216HGHI-K2'),
('b9014e41d80311ed', 'Camera', 'iDS-7232HQHI-M2/S'),
('b901c3a1d80311ed', 'Camera', 'DAHUA 8CH 2MP'),
('b902346bd80311ed', 'Recorder', 'DAHUA 4CH DVR'),
('b9029b5ed80311ed', 'Camera', 'DS-7604NI-Q1'),
('b9031006d80311ed', 'Camera', 'DS-7608NI-Q1'),
('b903766bd80311ed', 'Camera', 'HWN-4108MH'),
('b903d8eed80311ed', 'Camera', 'DS-7608NXI-12/8P/S'),
('b90456bcd80311ed', 'Camera', 'DS-7608NI-Q2'),
('b904b41ed80311ed', 'Camera', 'DS-7608NI-K1'),
('b9050fdad80311ed', 'Camera', 'DS-7616NI-Q2'),
('b90576c5d80311ed', 'Camera', 'DS-7616NI-Q1'),
('b905e33ed80311ed', 'Camera', 'DS-7616NXI-K2'),
('b90642c1d80311ed', 'Camera', 'DH-NVR4216-4KS2/L'),
('b906b0b8d80311ed', 'Camera', 'DS-7632NI-K1'),
('b907218bd80311ed', 'Camera', 'DS-7632NI-K2'),
('b9078919d80311ed', 'Camera', 'DHI-NVR4232-4KS2/L'),
('b907fbdfd80311ed', 'Camera', 'DS-7732NXI-K4'),
('c3433233d80211ed', 'Camera', 'Metal'),
('c3453332d80211ed', 'Camera', 'Fuse'),
('e7dd578ad80111ed', 'Camera', 'DS-2CE16D0T-EXIPF'),
('e7df5b65d80111ed', 'Camera', 'DS-2CE16D0T-ITPFS'),
('e7e0097bd80111ed', 'Camera', 'DS-2CE16D3T-ITF'),
('e7e0a60ad80111ed', 'Camera', 'DS-2CE19D3T-IT3ZF'),
('e7e14e7ad80111ed', 'Camera', 'DS-2CE17D0T-IT3F'),
('e7e1e3afd80111ed', 'Camera', 'DS-2CE16D8T-IT3ZF'),
('e7e26d32d80111ed', 'Camera', 'DS-2CE19D3T-AIT3ZF'),
('e7e2f262d80111ed', 'Camera', 'DS-2CE17D0T-IT5F'),
('e7e37c91d80111ed', 'Camera', 'DS-2CE16D0T-IRF'),
('e7e3f2d9d80111ed', 'Camera', 'DS-2CE16D0T-IRPF'),
('e7e47234d80111ed', 'Camera', 'DS-2CE16DOT-IPF'),
('e7e4d4fed80111ed', 'Camera', 'DS-2CE16H1T-IT'),
('e7e5396ad80111ed', 'Camera', 'DS-2CE11DOT-PIRL');

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
('0fd9be18f83f11ed', 'e9fc51ccf83e11ed', '1', '1', '2023-05-22 09:22:05', '2023-05-22 00:00:00', 'OUT'),
('0fdaa3bcf83f11ed', 'e9fc51ccf83e11ed', '1', '2', '2023-05-22 09:22:05', '2023-05-22 00:00:00', 'OUT'),
('0fdb8c59f83f11ed', 'e9fc51ccf83e11ed', '1', '3', '2023-05-23 08:57:27', '2023-05-23 00:00:00', 'OUT'),
('0fdc19a7f83f11ed', 'e9fc51ccf83e11ed', '1', '4', '2023-05-23 08:57:27', '2023-05-23 00:00:00', 'OUT'),
('0fdca83bf83f11ed', 'e9fc51ccf83e11ed', '1', '5', '2023-05-22 09:22:05', '2023-05-23 00:00:00', 'OUT'),
('0fdd323ef83f11ed', 'e9fc51ccf83e11ed', '1', '6', '2023-05-22 09:22:05', '2023-05-23 00:00:00', 'OUT'),
('0fdd98a3f83f11ed', 'e9fc51ccf83e11ed', '1', '7', '2023-05-22 09:22:05', '2023-05-23 00:00:00', 'OUT'),
('0fde0efff83f11ed', 'e9fc51ccf83e11ed', '1', '8', '2023-05-22 09:22:05', '2023-05-23 00:00:00', 'OUT'),
('0fde7039f83f11ed', 'e9fc51ccf83e11ed', '1', '9', '2023-05-22 09:22:05', '2023-06-05 00:00:00', 'OUT'),
('180deb1df83f11ed', 'f1023561f83e11ed', '2', '11', '2023-05-23 08:57:27', NULL, 'IN'),
('180e6b36f83f11ed', 'f1023561f83e11ed', '2', '22', '2023-05-22 09:22:18', '2023-05-23 00:00:00', 'OUT'),
('180ee3cef83f11ed', 'f1023561f83e11ed', '2', '33', '2023-05-23 08:57:27', '2023-06-05 00:00:00', 'OUT'),
('180fad40f83f11ed', 'f1023561f83e11ed', '2', '44', '2023-05-22 09:22:18', '2023-06-05 00:00:00', 'OUT'),
('18102cf9f83f11ed', 'f1023561f83e11ed', '2', '55', '2023-05-22 09:22:18', NULL, 'IN'),
('1810b461f83f11ed', 'f1023561f83e11ed', '2', '66', '2023-05-22 09:22:18', NULL, 'IN'),
('18112fcdf83f11ed', 'f1023561f83e11ed', '2', '77', '2023-05-22 09:22:18', NULL, 'IN'),
('18119e28f83f11ed', 'f1023561f83e11ed', '2', '88', '2023-05-22 09:22:18', NULL, 'IN'),
('18121b8ef83f11ed', 'f1023561f83e11ed', '2', '99', '2023-05-22 09:22:18', NULL, 'IN'),
('2339bd5bf83f11ed', 'f801cb9ef83e11ed', '3', '111', '2023-05-22 09:22:37', '2023-05-23 00:00:00', 'OUT'),
('233a6275f83f11ed', 'f801cb9ef83e11ed', '3', '222', '2023-05-22 09:22:37', '2023-05-23 00:00:00', 'OUT'),
('233b075cf83f11ed', 'f801cb9ef83e11ed', '3', '333', '2023-05-22 09:22:37', '2023-06-05 00:00:00', 'OUT'),
('233ba396f83f11ed', 'f801cb9ef83e11ed', '3', '444', '2023-05-22 09:22:37', NULL, 'IN'),
('233c7fa7f83f11ed', 'f801cb9ef83e11ed', '3', '555', '2023-05-22 09:22:37', NULL, 'IN'),
('233d11c6f83f11ed', 'f801cb9ef83e11ed', '3', '666', '2023-05-22 09:22:37', NULL, 'IN'),
('233d9cb6f83f11ed', 'f801cb9ef83e11ed', '3', '777', '2023-05-22 09:22:37', NULL, 'IN'),
('233e1909f83f11ed', 'f801cb9ef83e11ed', '3', '888', '2023-05-22 09:22:37', NULL, 'IN'),
('233e9923f83f11ed', 'f801cb9ef83e11ed', '3', '999', '2023-05-22 09:22:37', NULL, 'IN'),
('27b9361d033c11ee', 'db47b6af033711ee', '1', '1111111', '2023-06-05 08:58:59', NULL, 'IN'),
('2cb792aef83f11ed', 'fefb2e89f83e11ed', '4', '1111', '2023-05-22 09:22:53', NULL, 'IN'),
('2cb82ec1f83f11ed', 'fefb2e89f83e11ed', '4', '2222', '2023-05-22 09:22:53', NULL, 'IN'),
('2cb8a86ff83f11ed', 'fefb2e89f83e11ed', '4', '3333', '2023-05-22 09:22:53', NULL, 'IN'),
('2cb927a4f83f11ed', 'fefb2e89f83e11ed', '4', '4444', '2023-05-22 09:22:53', NULL, 'IN'),
('2cb99e23f83f11ed', 'fefb2e89f83e11ed', '4', '5555', '2023-05-22 09:22:53', NULL, 'IN'),
('2cba6e10f83f11ed', 'fefb2e89f83e11ed', '4', '6666', '2023-05-22 09:22:53', NULL, 'IN'),
('2cbaeb62f83f11ed', 'fefb2e89f83e11ed', '4', '7777', '2023-05-22 09:22:53', NULL, 'IN'),
('2cbb5ea8f83f11ed', 'fefb2e89f83e11ed', '4', '8888', '2023-05-22 09:22:53', NULL, 'IN'),
('2cbbe0cef83f11ed', 'fefb2e89f83e11ed', '4', '9999', '2023-05-22 09:22:53', NULL, 'IN'),
('3b64fe70f83f11ed', '05936621f83f11ed', '5', '11111', '2023-05-22 09:23:18', '2023-05-23 00:00:00', 'OUT'),
('3b6569cdf83f11ed', '05936621f83f11ed', '5', '22222', '2023-05-22 09:23:18', NULL, 'IN'),
('3b65d8c4f83f11ed', '05936621f83f11ed', '5', '33333', '2023-05-22 09:23:18', NULL, 'IN'),
('3b664834f83f11ed', '05936621f83f11ed', '5', '44444', '2023-05-22 09:23:18', NULL, 'IN'),
('3b66bd6df83f11ed', '05936621f83f11ed', '5', '55555', '2023-05-22 09:23:18', NULL, 'IN'),
('3b673a2af83f11ed', '05936621f83f11ed', '5', '66666', '2023-05-22 09:23:18', NULL, 'IN'),
('3b67aed1f83f11ed', '05936621f83f11ed', '5', '77777', '2023-05-22 09:23:18', NULL, 'IN'),
('3b682c99f83f11ed', '05936621f83f11ed', '5', '88888', '2023-05-22 09:23:18', NULL, 'IN'),
('3b689c6bf83f11ed', '05936621f83f11ed', '5', '99999', '2023-05-22 09:23:18', NULL, 'IN');

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
('05936621f83f11ed', 'Monitor', 'HIKVISION', 'HK-M3', '0.00', '0.00', '2023-05-22 09:21:47', NULL, NULL, NULL, NULL, NULL, NULL, '32 Inches'),
('db47b6af033711ee', 'Camera', 'HIKVISION', 'DAHUA', '0.00', '0.00', '2023-06-05 08:28:13', 'IP', 'Dome', NULL, NULL, NULL, NULL, NULL),
('e9fc51ccf83e11ed', 'Camera', 'HIKVISION', 'DS-2CE76D0T-ITPFS', '0.00', '0.00', '2023-05-22 09:21:01', 'IP', 'Dome', NULL, NULL, NULL, NULL, NULL),
('f1023561f83e11ed', 'Recorder', 'HIKVISION', 'DAHUA', '0.00', '0.00', '2023-05-22 09:21:13', NULL, NULL, 'DVR', NULL, NULL, NULL, NULL),
('f801cb9ef83e11ed', 'Hard drive', 'HIKVISION', 'HD-TSB-10TB', '0.00', '0.00', '2023-05-22 09:21:25', NULL, NULL, NULL, '2TB', NULL, NULL, NULL),
('fefb2e89f83e11ed', 'Power Supply', 'OEM', 'PS-1', '0.00', '0.00', '2023-05-22 09:21:36', NULL, NULL, NULL, NULL, 'Metal Type', '10', NULL);

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
  `DATE_PURCHASED` datetime DEFAULT current_timestamp(),
  `STATUS` varchar(32) NOT NULL DEFAULT 'OUT'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`SALE_ID`, `INSTALLATION_FORM_ID`, `PRODUCT_DETAILS_ID`, `SERIAL_NUMBER`, `SKU`, `DATE_PURCHASED`, `STATUS`) VALUES
('2f936c76f90611ed', '646c11d02231c704', 'e9fc51ccf83e11ed', '3', '1', '2023-05-23 09:07:28', 'OUT'),
('2f95b3e6f90611ed', '646c11d02231c704', 'e9fc51ccf83e11ed', '4', '1', '2023-05-23 09:07:28', 'OUT'),
('2f99212ff90611ed', '646c11d02231c704', 'f801cb9ef83e11ed', '111', '3', '2023-05-23 09:07:28', 'OUT'),
('2f9a1c90f90611ed', '646c11d02231c704', 'f801cb9ef83e11ed', '222', '3', '2023-05-23 09:07:28', 'OUT'),
('35ae164ff84111ed', '646ac75782863643', 'e9fc51ccf83e11ed', '1', '1', '2023-05-22 09:37:27', 'OUT'),
('35af61d6f84111ed', '646ac75782863643', 'e9fc51ccf83e11ed', '2', '1', '2023-05-22 09:37:27', 'OUT'),
('35b056eef84111ed', '646ac75782863643', 'e9fc51ccf83e11ed', '3', '1', '2023-05-22 09:37:27', 'RETURNED'),
('35b14d35f84111ed', '646ac75782863643', 'e9fc51ccf83e11ed', '4', '1', '2023-05-22 09:37:27', 'RETURNED'),
('4323eae9f90711ed', '646c11d02231c704', '05936621f83f11ed', '11111', '5', '2023-05-23 09:15:10', 'OUT'),
('4d1dc2c3033811ee', '647d2cdc2c888569', 'e9fc51ccf83e11ed', '9', '1', '2023-06-05 08:31:24', 'OUT'),
('4d1f75b1033811ee', '647d2cdc2c888569', 'f1023561f83e11ed', '33', '2', '2023-06-05 08:31:24', 'OUT'),
('4d21ce02033811ee', '647d2cdc2c888569', 'f1023561f83e11ed', '44', '2', '2023-06-05 08:31:24', 'OUT'),
('7e3a16e3033b11ee', '647d32370d9a8466', 'f801cb9ef83e11ed', '333', '3', '2023-06-05 08:54:15', 'OUT'),
('968ed072f90311ed', '646ac75782863643', 'e9fc51ccf83e11ed', '5', '1', '2023-05-23 08:48:52', 'OUT'),
('9690f24df90311ed', '646ac75782863643', 'e9fc51ccf83e11ed', '6', '1', '2023-05-23 08:48:52', 'OUT'),
('a3fa79c5f90411ed', '646ac75782863643', 'f1023561f83e11ed', '33', '2', '2023-05-23 08:56:24', 'RETURNED'),
('c15d476ef90311ed', '646ac75782863643', 'e9fc51ccf83e11ed', '7', '1', '2023-05-23 08:50:04', 'OUT'),
('c15e5ed3f90311ed', '646ac75782863643', 'e9fc51ccf83e11ed', '8', '1', '2023-05-23 08:50:04', 'OUT'),
('ec1d1e9cf90311ed', '646ac75782863643', 'f1023561f83e11ed', '11', '2', '2023-05-23 08:51:15', 'RETURNED'),
('ec1e3892f90311ed', '646ac75782863643', 'f1023561f83e11ed', '22', '2', '2023-05-23 08:51:15', 'OUT');

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
('0fd7d398f83f11ed', 'e9fc51ccf83e11ed', '2023-05-22', 9, 4),
('180be12bf83f11ed', 'f1023561f83e11ed', '2023-05-22', 9, 0),
('23379904f83f11ed', 'f801cb9ef83e11ed', '2023-05-22', 9, 0),
('27b72995033c11ee', 'db47b6af033711ee', '2023-06-05', 1, 0),
('2cb55c7ef83f11ed', 'fefb2e89f83e11ed', '2023-05-22', 9, 0),
('2f98504ef90611ed', 'f801cb9ef83e11ed', '2023-05-23', 0, 2),
('3b6482def83f11ed', '05936621f83f11ed', '2023-05-22', 9, 0),
('43221e6af90711ed', '05936621f83f11ed', '2023-05-23', 0, 1),
('4d1d26f6033811ee', 'e9fc51ccf83e11ed', '2023-06-05', 0, 1),
('4d1ee57e033811ee', 'f1023561f83e11ed', '2023-06-05', 0, 2),
('7e394bcd033b11ee', 'f801cb9ef83e11ed', '2023-06-05', 0, 1),
('968e08d9f90311ed', 'e9fc51ccf83e11ed', '2023-05-23', 2, 6),
('ec1aea12f90311ed', 'f1023561f83e11ed', '2023-05-23', 2, 3);

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
('58727a89cdf911ed', 'JOHN', 'DOE', 'owner', '$2y$10$NNjsc/qfqw0VhWXnVXwI4e7epUme3YfQlyWpaXcMdpHqjRvp721ze', 1, 0, 0, '2023-06-05 08:27:38'),
('d29462f6ed4411ed', 'JOSE', 'SEVILLA', 'adminjsevilla', '$2y$10$yweFv.DMgePVyI2ts/DMSeroqarwAOEs/oXEVgzBrG91TIYdlaTNO', 2, 0, 0, '2023-05-08 10:06:52');

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
