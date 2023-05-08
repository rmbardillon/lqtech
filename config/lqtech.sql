-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 08, 2023 at 05:12 AM
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
('000c5074ed3e11ed', '2023-05-08 03:16:46', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('000d1fe4ed3e11ed', '2023-05-08 03:16:46', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('000dd7e9ed3e11ed', '2023-05-08 03:16:46', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('000e52caed3e11ed', '2023-05-08 03:16:46', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('000eb69ded3e11ed', '2023-05-08 03:16:46', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('000f11f2ed3e11ed', '2023-05-08 03:16:46', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('082ad25bed4511ed', '2023-05-08 04:07:06', '58727a89cdf911ed', 1, 'Successfully deleted the User'),
('082b6351ed4511ed', '2023-05-08 04:07:06', '58727a89cdf911ed', 1, 'Successfully deleted the User'),
('0885ebdaed3e11ed', '2023-05-08 03:17:00', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('0886514bed3e11ed', '2023-05-08 03:17:00', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('0886c9fded3e11ed', '2023-05-08 03:17:00', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('08873dabed3e11ed', '2023-05-08 03:17:00', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('0887a7f1ed3e11ed', '2023-05-08 03:17:00', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('08887192ed3e11ed', '2023-05-08 03:17:00', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('3273cd7ded4711ed', '2023-05-08 10:22:36', '58727a89cdf911ed', 1, 'User has logged in'),
('381b77c3ed4011ed', '2023-05-08 03:32:39', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('381c20fbed4011ed', '2023-05-08 03:32:39', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('381ca0f7ed4011ed', '2023-05-08 03:32:39', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('381d0717ed4011ed', '2023-05-08 03:32:39', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('381f0f33ed4011ed', '2023-05-08 03:32:39', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('382016cced4011ed', '2023-05-08 03:32:39', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('3820cc88ed4011ed', '2023-05-08 03:32:39', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('38215e1bed4011ed', '2023-05-08 03:32:39', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('3821e127ed4011ed', '2023-05-08 03:32:39', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('38226e80ed4011ed', '2023-05-08 03:32:39', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('3822f051ed4011ed', '2023-05-08 03:32:39', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('38235e59ed4011ed', '2023-05-08 03:32:39', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('382404cfed4011ed', '2023-05-08 03:32:39', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('38248230ed4011ed', '2023-05-08 03:32:39', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('38251bc8ed4011ed', '2023-05-08 03:32:39', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('38259645ed4011ed', '2023-05-08 03:32:39', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('38261b96ed4011ed', '2023-05-08 03:32:39', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('3826985bed4011ed', '2023-05-08 03:32:39', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('3826f540ed4011ed', '2023-05-08 03:32:39', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('38276e8fed4011ed', '2023-05-08 03:32:39', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('3827e471ed4011ed', '2023-05-08 03:32:39', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('38285295ed4011ed', '2023-05-08 03:32:39', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('3828e6cded4011ed', '2023-05-08 03:32:39', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('382951e8ed4011ed', '2023-05-08 03:32:39', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('3829b53eed4011ed', '2023-05-08 03:32:39', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('382a2e66ed4011ed', '2023-05-08 03:32:39', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('382a8f9aed4011ed', '2023-05-08 03:32:39', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('382ae6d0ed4011ed', '2023-05-08 03:32:39', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('382b6416ed4011ed', '2023-05-08 03:32:39', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('382bc9c5ed4011ed', '2023-05-08 03:32:39', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('382c1ee9ed4011ed', '2023-05-08 03:32:39', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('382ca560ed4011ed', '2023-05-08 03:32:39', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('382d0845ed4011ed', '2023-05-08 03:32:39', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('382d5f05ed4011ed', '2023-05-08 03:32:39', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('382dbff2ed4011ed', '2023-05-08 03:32:39', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('382e2c17ed4011ed', '2023-05-08 03:32:39', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('5a479001ed4011ed', '2023-05-08 03:33:36', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('5a482be2ed4011ed', '2023-05-08 03:33:36', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('5a48ac2ded4011ed', '2023-05-08 03:33:36', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('5a4959e8ed4011ed', '2023-05-08 03:33:36', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('5a49f9d7ed4011ed', '2023-05-08 03:33:36', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('5a4a8936ed4011ed', '2023-05-08 03:33:36', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('5a4b15ebed4011ed', '2023-05-08 03:33:36', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('5a4b9e22ed4011ed', '2023-05-08 03:33:36', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('5a4c2e36ed4011ed', '2023-05-08 03:33:36', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('5d5d4be6ed4011ed', '2023-05-08 03:33:41', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('95c68ba2ed3c11ed', '2023-05-08 03:06:38', '58727a89cdf911ed', 1, 'Successfully updated the Category'),
('991e35d5ed4411ed', '2023-05-08 10:04:00', '58727a89cdf911ed', 1, 'User has logged in'),
('a9802caded3c11ed', '2023-05-08 03:07:11', '58727a89cdf911ed', 1, 'Successfully updated the Category'),
('be470022ed3d11ed', '2023-05-08 03:14:55', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('c5974f80ed3d11ed', '2023-05-08 03:15:08', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('c66bc5eaed4411ed', '2023-05-08 10:05:16', '58727a89cdf911ed', 1, 'User has logged in'),
('d09a58e9ed3d11ed', '2023-05-08 03:15:26', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('d2960d85ed4411ed', '2023-05-08 04:05:36', '58727a89cdf911ed', 1, 'Successfully saved the User'),
('d7f8c9c3ed3d11ed', '2023-05-08 03:15:39', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('e044661bed3d11ed', '2023-05-08 03:15:52', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('e4007d42ed4411ed', '2023-05-08 10:06:05', 'd29462f6ed4411ed', 2, 'User has logged in'),
('e5706908ed4611ed', '2023-05-08 10:20:27', '58727a89cdf911ed', 1, 'User has logged in'),
('e7cd3a3ced3d11ed', '2023-05-08 03:16:05', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('e7cdfc7eed3d11ed', '2023-05-08 03:16:05', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('e7ce681ded3d11ed', '2023-05-08 03:16:05', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('e7cf4004ed3d11ed', '2023-05-08 03:16:05', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('e7cfbc18ed3d11ed', '2023-05-08 03:16:05', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('e7d02e1eed3d11ed', '2023-05-08 03:16:05', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('e81acbbaed4611ed', '2023-05-08 10:20:31', '58727a89cdf911ed', 1, 'User has logged in'),
('ee1af6eced3d11ed', '2023-05-08 03:16:16', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('ee1c28d5ed3d11ed', '2023-05-08 03:16:16', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('ee1ca51ded3d11ed', '2023-05-08 03:16:16', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('ee1e00f6ed3d11ed', '2023-05-08 03:16:16', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('ee1ee34ded3d11ed', '2023-05-08 03:16:16', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('ee220168ed3d11ed', '2023-05-08 03:16:16', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('f6921a00ed3d11ed', '2023-05-08 03:16:30', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('f6929d41ed3d11ed', '2023-05-08 03:16:30', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('f6931749ed3d11ed', '2023-05-08 03:16:30', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('f69383d0ed3d11ed', '2023-05-08 03:16:30', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('f694553bed3d11ed', '2023-05-08 03:16:30', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('f694cb91ed3d11ed', '2023-05-08 03:16:30', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('fbac967ded4411ed', '2023-05-08 04:06:45', '58727a89cdf911ed', 1, 'Successfully change password the User'),
('ffac575fed4411ed', '2023-05-08 10:06:52', 'd29462f6ed4411ed', 2, 'User has logged in');

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
('645851374f768169', 'IMALL FAMY CCTV INSTALLATION', '2023-05-08 09:32:39', 'MARVIN VICENCIO', '09760657071', 'FAMY, LAGUNA', 'SANTA ROSA MAIN BRANCH', 'ROMEO BARDILLON', '809', '102', 'Multicab', '', 'JOHN DOE', 'ROMEO BARDILLON', 'JOHN DOE', 'Success');

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
('000ce203ed3e11ed', 'd7f84bb1ed3d11ed', '4', '1111', '2023-05-08 09:16:46', '2023-05-08 00:00:00', 'OUT'),
('000da392ed3e11ed', 'd7f84bb1ed3d11ed', '4', '2222', '2023-05-08 09:16:46', '2023-05-08 00:00:00', 'OUT'),
('000e171eed3e11ed', 'd7f84bb1ed3d11ed', '4', '3333', '2023-05-08 09:16:46', NULL, 'IN'),
('000e88d4ed3e11ed', 'd7f84bb1ed3d11ed', '4', '4444', '2023-05-08 09:16:46', NULL, 'IN'),
('000ee525ed3e11ed', 'd7f84bb1ed3d11ed', '4', '5555', '2023-05-08 09:16:46', NULL, 'IN'),
('08861e2fed3e11ed', 'e0429f5ced3d11ed', '5', '11111', '2023-05-08 09:17:00', '2023-05-08 00:00:00', 'OUT'),
('08868347ed3e11ed', 'e0429f5ced3d11ed', '5', '22222', '2023-05-08 09:17:00', '2023-05-08 00:00:00', 'OUT'),
('088704efed3e11ed', 'e0429f5ced3d11ed', '5', '33333', '2023-05-08 09:17:00', '2023-05-08 00:00:00', 'OUT'),
('08876bd9ed3e11ed', 'e0429f5ced3d11ed', '5', '44444', '2023-05-08 09:17:00', NULL, 'IN'),
('08883394ed3e11ed', 'e0429f5ced3d11ed', '5', '55555', '2023-05-08 09:17:00', NULL, 'IN'),
('e7cd776ded3d11ed', 'be46a139ed3d11ed', '1', '1', '2023-05-08 09:33:36', NULL, 'IN'),
('e7ce3284ed3d11ed', 'be46a139ed3d11ed', '1', '2', '2023-05-08 09:16:05', '2023-05-08 00:00:00', 'OUT'),
('e7cef0f3ed3d11ed', 'be46a139ed3d11ed', '1', '3', '2023-05-08 09:16:05', '2023-05-08 00:00:00', 'OUT'),
('e7cf84f2ed3d11ed', 'be46a139ed3d11ed', '1', '4', '2023-05-08 09:16:05', '2023-05-08 00:00:00', 'OUT'),
('e7cff582ed3d11ed', 'be46a139ed3d11ed', '1', '5', '2023-05-08 09:16:05', '2023-05-08 00:00:00', 'OUT'),
('ee1be975ed3d11ed', 'c596ee43ed3d11ed', '2', '11', '2023-05-08 09:16:16', '2023-05-08 00:00:00', 'OUT'),
('ee1c6124ed3d11ed', 'c596ee43ed3d11ed', '2', '22', '2023-05-08 09:16:16', '2023-05-08 00:00:00', 'OUT'),
('ee1dbe97ed3d11ed', 'c596ee43ed3d11ed', '2', '33', '2023-05-08 09:16:16', NULL, 'IN'),
('ee1ea70ded3d11ed', 'c596ee43ed3d11ed', '2', '44', '2023-05-08 09:16:16', NULL, 'IN'),
('ee21ae9eed3d11ed', 'c596ee43ed3d11ed', '2', '55', '2023-05-08 09:16:16', NULL, 'IN'),
('f6925ad7ed3d11ed', 'd099f8e9ed3d11ed', '3', '111', '2023-05-08 09:16:30', '2023-05-08 00:00:00', 'OUT'),
('f692dd95ed3d11ed', 'd099f8e9ed3d11ed', '3', '222', '2023-05-08 09:33:36', NULL, 'IN'),
('f6934f83ed3d11ed', 'd099f8e9ed3d11ed', '3', '333', '2023-05-08 09:33:36', NULL, 'IN'),
('f693cb21ed3d11ed', 'd099f8e9ed3d11ed', '3', '444', '2023-05-08 09:16:30', NULL, 'IN'),
('f6949213ed3d11ed', 'd099f8e9ed3d11ed', '3', '555', '2023-05-08 09:16:30', NULL, 'IN');

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
('be46a139ed3d11ed', 'Camera', 'HIKVISION', 'DS-2CD1023G0-IU', '0.00', '0.00', '2023-05-08 09:14:55', 'IP', 'Dome', NULL, NULL, NULL, NULL, NULL),
('c596ee43ed3d11ed', 'Recorder', 'HIKVISION', 'DAHUA', '0.00', '0.00', '2023-05-08 09:15:08', NULL, NULL, 'DVR', NULL, NULL, NULL, NULL),
('d099f8e9ed3d11ed', 'Hard drive', 'TOSHIBA', 'HD-TSB-6TB', '0.00', '0.00', '2023-05-08 09:15:26', NULL, NULL, NULL, '6TB', NULL, NULL, NULL),
('d7f84bb1ed3d11ed', 'Power Supply', 'OEM', 'PS-2', '0.00', '0.00', '2023-05-08 09:15:39', NULL, NULL, NULL, NULL, 'Metal Type', '5', NULL),
('e0429f5ced3d11ed', 'Monitor', 'HIKVISION', 'HK-M3', '0.00', '0.00', '2023-05-08 09:15:52', NULL, NULL, NULL, NULL, NULL, NULL, '32 Inches');

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
('381c5af6ed4011ed', '645851374f768169', 'be46a139ed3d11ed', '1', '1', '2023-05-08 09:32:39', 'RETURNED'),
('381d4678ed4011ed', '645851374f768169', 'be46a139ed3d11ed', '2', '1', '2023-05-08 09:32:39', 'OUT'),
('38206d09ed4011ed', '645851374f768169', 'be46a139ed3d11ed', '3', '1', '2023-05-08 09:32:39', 'OUT'),
('38219d1ded4011ed', '645851374f768169', 'be46a139ed3d11ed', '4', '1', '2023-05-08 09:32:39', 'OUT'),
('3822b127ed4011ed', '645851374f768169', 'be46a139ed3d11ed', '5', '1', '2023-05-08 09:32:39', 'OUT'),
('3824429ced4011ed', '645851374f768169', 'c596ee43ed3d11ed', '11', '2', '2023-05-08 09:32:39', 'OUT'),
('3825580ded4011ed', '645851374f768169', 'c596ee43ed3d11ed', '22', '2', '2023-05-08 09:32:39', 'OUT'),
('3826c572ed4011ed', '645851374f768169', 'd099f8e9ed3d11ed', '111', '3', '2023-05-08 09:32:39', 'OUT'),
('3827a8e3ed4011ed', '645851374f768169', 'd099f8e9ed3d11ed', '222', '3', '2023-05-08 09:32:39', 'RETURNED'),
('3828a3caed4011ed', '645851374f768169', 'd099f8e9ed3d11ed', '333', '3', '2023-05-08 09:32:39', 'RETURNED'),
('3829f3e0ed4011ed', '645851374f768169', 'd7f84bb1ed3d11ed', '1111', '4', '2023-05-08 09:32:39', 'OUT'),
('382abd14ed4011ed', '645851374f768169', 'd7f84bb1ed3d11ed', '2222', '4', '2023-05-08 09:32:39', 'OUT'),
('382bf357ed4011ed', '645851374f768169', 'e0429f5ced3d11ed', '11111', '5', '2023-05-08 09:32:39', 'OUT'),
('382cd907ed4011ed', '645851374f768169', 'e0429f5ced3d11ed', '22222', '5', '2023-05-08 09:32:39', 'OUT'),
('382d86ffed4011ed', '645851374f768169', 'e0429f5ced3d11ed', '33333', '5', '2023-05-08 09:32:39', 'OUT');

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
('000bf351ed3e11ed', 'd7f84bb1ed3d11ed', '2023-05-08', 5, 2),
('0885b4a9ed3e11ed', 'e0429f5ced3d11ed', '2023-05-08', 5, 3),
('e7cd0003ed3d11ed', 'be46a139ed3d11ed', '2023-05-08', 6, 5),
('ee1a35e9ed3d11ed', 'c596ee43ed3d11ed', '2023-05-08', 5, 2),
('f691b5bbed3d11ed', 'd099f8e9ed3d11ed', '2023-05-08', 7, 3);

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
('58727a89cdf911ed', 'JOHN', 'DOE', 'owner', '$2y$10$NNjsc/qfqw0VhWXnVXwI4e7epUme3YfQlyWpaXcMdpHqjRvp721ze', 1, 0, 0, '2023-05-08 10:22:36'),
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
