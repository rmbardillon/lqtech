-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 05, 2023 at 07:14 AM
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
('089815afea1711ed', '2023-05-04 03:00:16', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('0898bd92ea1711ed', '2023-05-04 03:00:16', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('08995cf6ea1711ed', '2023-05-04 03:00:16', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('0899f1f3ea1711ed', '2023-05-04 03:00:16', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('089ac1c4ea1711ed', '2023-05-04 03:00:16', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('089b56a5ea1711ed', '2023-05-04 03:00:16', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('0b6c4743ea1711ed', '2023-05-04 03:00:21', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('11d14e38eb0311ed', '2023-05-05 07:09:53', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('11d1e98ceb0311ed', '2023-05-05 07:09:53', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('11d2ce61eb0311ed', '2023-05-05 07:09:53', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('11d354feeb0311ed', '2023-05-05 07:09:53', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('11d3adb2eb0311ed', '2023-05-05 07:09:53', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('11d480c3eb0311ed', '2023-05-05 07:09:53', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('11d4e007eb0311ed', '2023-05-05 07:09:53', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('11d542cceb0311ed', '2023-05-05 07:09:53', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('11d5b16feb0311ed', '2023-05-05 07:09:53', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('11d61838eb0311ed', '2023-05-05 07:09:53', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('11d67f26eb0311ed', '2023-05-05 07:09:53', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('11d717b5eb0311ed', '2023-05-05 07:09:53', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('11d7df42eb0311ed', '2023-05-05 07:09:53', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('11d85f27eb0311ed', '2023-05-05 07:09:53', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('11d8d29deb0311ed', '2023-05-05 07:09:53', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('11d95713eb0311ed', '2023-05-05 07:09:53', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('11d9ce36eb0311ed', '2023-05-05 07:09:53', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('11da392deb0311ed', '2023-05-05 07:09:53', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('11dab992eb0311ed', '2023-05-05 07:09:53', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('11db2543eb0311ed', '2023-05-05 07:09:53', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('2464dd44ea2111ed', '2023-05-04 10:12:38', '58727a89cdf911ed', 1, 'User has logged in'),
('47a17cc9ea4411ed', '2023-05-04 08:24:09', '58727a89cdf911ed', 1, 'Successfully saved the User'),
('5669c1c5ea4711ed', '2023-05-04 08:46:03', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('59066c29eaf411ed', '2023-05-05 05:24:30', '58727a89cdf911ed', 1, 'Successfully update sell price of the Product'),
('5df08ff1ea4711ed', '2023-05-04 08:46:15', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('5df15849ea4711ed', '2023-05-04 08:46:15', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('5df28a99ea4711ed', '2023-05-04 08:46:15', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('5df32a1bea4711ed', '2023-05-04 08:46:15', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('9581df7ceb0311ed', '2023-05-05 07:13:34', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('9df220efeadb11ed', '2023-05-05 08:27:28', '58727a89cdf911ed', 1, 'User has logged in'),
('a0c4360deb0311ed', '2023-05-05 07:13:53', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('a0c51788eb0311ed', '2023-05-05 07:13:53', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('a0c60501eb0311ed', '2023-05-05 07:13:53', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('a0c6990feb0311ed', '2023-05-05 07:13:53', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('a50f450feadb11ed', '2023-05-05 02:27:40', '58727a89cdf911ed', 1, 'Successfully updated the User'),
('b12cd3b1ea3111ed', '2023-05-04 12:11:06', '58727a89cdf911ed', 1, 'User has logged in'),
('bc4a314aea1511ed', '2023-05-04 02:50:59', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('bc4acb60ea1511ed', '2023-05-04 02:50:59', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('bc4ba922ea1511ed', '2023-05-04 02:50:59', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('bc4c325aea1511ed', '2023-05-04 02:50:59', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('bc4cb631ea1511ed', '2023-05-04 02:50:59', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('bc4d339aea1511ed', '2023-05-04 02:50:59', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('bc4dc7a9ea1511ed', '2023-05-04 02:50:59', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('bc4e4282ea1511ed', '2023-05-04 02:50:59', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('bc4ecc0fea1511ed', '2023-05-04 02:50:59', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('bc4f45abea1511ed', '2023-05-04 02:50:59', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('bc4fd92fea1511ed', '2023-05-04 02:50:59', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('bc506049ea1511ed', '2023-05-04 02:50:59', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('bc50e038ea1511ed', '2023-05-04 02:50:59', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('bc516972ea1511ed', '2023-05-04 02:50:59', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('bc51e193ea1511ed', '2023-05-04 02:50:59', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('bc5258aaea1511ed', '2023-05-04 02:50:59', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('bc52d1b9ea1511ed', '2023-05-04 02:50:59', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('bc5346afea1511ed', '2023-05-04 02:50:59', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('e7e0098eea4911ed', '2023-05-04 15:04:26', '58727a89cdf911ed', 1, 'User has logged in');

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
('645301733b70d701', 'IMall Famy CCTV Installation', '2023-05-04 08:50:59', 'Marvin Vicencio', '09760657071', 'Famy, Laguna', 'Santa Rosa Main Branch', 'Romeo Bardillon', '809', '102', 'L300 (New)', '', 'JOHN DOE', 'Romeo Bardillon', 'JOHN DOE', 'Success'),
('64548fa16e814688', 'PUP CCTV Installation', '2023-05-05 13:09:53', 'Arwin Nucum', '09123456789', 'Barangay Tagapo, Santa Rosa, Laguna', 'Santa Rosa Main Branch', 'Jose Miguel Sevilla', '302', '', 'Multicab', '', 'JOHN DOE', '', '', 'Pending');

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
('2e05d48bea1511ed', 'b8b6987fe94b11ed', '123', '1', '2023-05-04 08:47:00', '2023-05-04 00:00:00', 'OUT'),
('2e064ff9ea1511ed', 'b8b6987fe94b11ed', '123', '2', '2023-05-04 08:47:00', '2023-05-04 00:00:00', 'OUT'),
('2e073b07ea1511ed', 'b8b6987fe94b11ed', '123', '3', '2023-05-04 08:47:00', '2023-05-04 00:00:00', 'OUT'),
('2e07c483ea1511ed', 'b8b6987fe94b11ed', '123', '4', '2023-05-04 09:00:16', NULL, 'IN'),
('2e087b0fea1511ed', 'b8b6987fe94b11ed', '123', '5', '2023-05-04 08:47:00', NULL, 'IN'),
('2e0911e4ea1511ed', 'b8b6987fe94b11ed', '123', '6', '2023-05-04 08:47:00', '2023-05-05 00:00:00', 'OUT'),
('2e09a523ea1511ed', 'b8b6987fe94b11ed', '123', '7', '2023-05-04 08:47:00', '2023-05-05 00:00:00', 'OUT'),
('2e0a1fd6ea1511ed', 'b8b6987fe94b11ed', '123', '8', '2023-05-04 08:47:00', '2023-05-05 00:00:00', 'OUT'),
('2e0acc6cea1511ed', 'b8b6987fe94b11ed', '123', '9', '2023-05-04 08:47:00', '2023-05-05 00:00:00', 'OUT'),
('2e0b6e65ea1511ed', 'b8b6987fe94b11ed', '123', '10', '2023-05-04 08:47:00', NULL, 'IN'),
('3a18ae50ea1511ed', 'c462ce3de94b11ed', '321', '11', '2023-05-04 08:47:20', '2023-05-04 00:00:00', 'OUT'),
('3a192c63ea1511ed', 'c462ce3de94b11ed', '321', '22', '2023-05-04 08:47:20', '2023-05-05 00:00:00', 'OUT'),
('3a19b92cea1511ed', 'c462ce3de94b11ed', '321', '33', '2023-05-04 08:47:20', '2023-05-05 00:00:00', 'OUT'),
('3a1ac124ea1511ed', 'c462ce3de94b11ed', '321', '44', '2023-05-04 08:47:20', NULL, 'IN'),
('3a1b4932ea1511ed', 'c462ce3de94b11ed', '321', '55', '2023-05-04 08:47:20', NULL, 'IN'),
('3a1bc6d9ea1511ed', 'c462ce3de94b11ed', '321', '66', '2023-05-04 08:47:20', NULL, 'IN'),
('3a1c541bea1511ed', 'c462ce3de94b11ed', '321', '77', '2023-05-04 08:47:20', NULL, 'IN'),
('3a1cd246ea1511ed', 'c462ce3de94b11ed', '321', '88', '2023-05-04 08:47:20', NULL, 'IN'),
('3a1d4e86ea1511ed', 'c462ce3de94b11ed', '321', '99', '2023-05-04 08:47:20', NULL, 'IN'),
('3a1dd29dea1511ed', 'c462ce3de94b11ed', '321', '00', '2023-05-04 08:47:20', NULL, 'IN'),
('5df1114aea4711ed', '566830a4ea4711ed', 'qwe', 'eqw', '2023-05-04 14:46:15', NULL, 'IN'),
('5df20467ea4711ed', '566830a4ea4711ed', 'qwe', 'das', '2023-05-04 14:46:15', NULL, 'IN'),
('5df2d23fea4711ed', '566830a4ea4711ed', 'qwe', 'fdg', '2023-05-04 14:46:15', NULL, 'IN'),
('6207b869ea1511ed', '50fa327aea1511ed', '111', '111', '2023-05-04 08:48:27', '2023-05-04 00:00:00', 'OUT'),
('62085184ea1511ed', '50fa327aea1511ed', '111', '222', '2023-05-04 09:00:16', NULL, 'IN'),
('6208d605ea1511ed', '50fa327aea1511ed', '111', '333', '2023-05-04 08:48:27', NULL, 'IN'),
('6209527bea1511ed', '50fa327aea1511ed', '111', '444', '2023-05-04 08:48:27', NULL, 'IN'),
('620a35e8ea1511ed', '50fa327aea1511ed', '111', '555', '2023-05-04 08:48:27', NULL, 'IN'),
('620ac0e4ea1511ed', '50fa327aea1511ed', '111', '666', '2023-05-04 08:48:27', NULL, 'IN'),
('620b4af5ea1511ed', '50fa327aea1511ed', '111', '777', '2023-05-04 08:48:27', NULL, 'IN'),
('620be50cea1511ed', '50fa327aea1511ed', '111', '888', '2023-05-04 08:48:27', NULL, 'IN'),
('620c5b3fea1511ed', '50fa327aea1511ed', '111', '999', '2023-05-04 08:48:27', '2023-05-05 00:00:00', 'OUT'),
('620cc7adea1511ed', '50fa327aea1511ed', '111', '000', '2023-05-04 08:48:27', '2023-05-05 00:00:00', 'OUT'),
('a0c4ceceeb0311ed', '95803d91eb0311ed', 'poi', 'pp', '2023-05-05 13:13:53', NULL, 'IN'),
('a0c5b73ceb0311ed', '95803d91eb0311ed', 'poi', 'oo', '2023-05-05 13:13:53', NULL, 'IN'),
('a0c653cfeb0311ed', '95803d91eb0311ed', 'poi', 'ii', '2023-05-05 13:13:53', NULL, 'IN');

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
('50fa327aea1511ed', 'Monitor', 'Hikvision', 'Generic', '1500.00', '3000.00', '2023-05-04 08:47:59', NULL, NULL, NULL, NULL, NULL, NULL, '32 Inches'),
('566830a4ea4711ed', 'Hard drive', 'Hikvision', 'H1TB', '0.00', '0.00', '2023-05-04 14:46:03', NULL, NULL, NULL, '1TB', NULL, NULL, NULL),
('95803d91eb0311ed', 'Camera', 'Hikvision', 'DS-2CE16D0T-EXIPF', '0.00', '0.00', '2023-05-05 13:13:34', 'Analog', 'Bullet', NULL, NULL, NULL, NULL, NULL),
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
  `DATE_PURCHASED` datetime DEFAULT current_timestamp(),
  `STATUS` varchar(32) NOT NULL DEFAULT 'OUT'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`SALE_ID`, `INSTALLATION_FORM_ID`, `PRODUCT_DETAILS_ID`, `SERIAL_NUMBER`, `SKU`, `DATE_PURCHASED`, `STATUS`) VALUES
('11d226bbeb0311ed', '64548fa16e814688', 'b8b6987fe94b11ed', '6', '123', '2023-05-05 13:09:53', 'OUT'),
('11d3810eeb0311ed', '64548fa16e814688', 'b8b6987fe94b11ed', '7', '123', '2023-05-05 13:09:53', 'OUT'),
('11d4b33aeb0311ed', '64548fa16e814688', 'b8b6987fe94b11ed', '8', '123', '2023-05-05 13:09:53', 'OUT'),
('11d57606eb0311ed', '64548fa16e814688', 'b8b6987fe94b11ed', '9', '123', '2023-05-05 13:09:53', 'OUT'),
('11d6bd23eb0311ed', '64548fa16e814688', 'c462ce3de94b11ed', '22', '321', '2023-05-05 13:09:53', 'OUT'),
('11d82027eb0311ed', '64548fa16e814688', 'c462ce3de94b11ed', '33', '321', '2023-05-05 13:09:53', 'OUT'),
('11d996a1eb0311ed', '64548fa16e814688', '50fa327aea1511ed', '000', '111', '2023-05-05 13:09:53', 'OUT'),
('11da7e98eb0311ed', '64548fa16e814688', '50fa327aea1511ed', '999', '111', '2023-05-05 13:09:53', 'OUT'),
('bc4b1ba3ea1511ed', '645301733b70d701', 'b8b6987fe94b11ed', '1', '123', '2023-05-04 08:50:59', 'OUT'),
('bc4c78d4ea1511ed', '645301733b70d701', 'b8b6987fe94b11ed', '2', '123', '2023-05-04 08:50:59', 'OUT'),
('bc4d879fea1511ed', '645301733b70d701', 'b8b6987fe94b11ed', '3', '123', '2023-05-04 08:50:59', 'RETURNED'),
('bc4e852dea1511ed', '645301733b70d701', 'b8b6987fe94b11ed', '4', '123', '2023-05-04 08:50:59', 'RETURNED'),
('bc501b0cea1511ed', '645301733b70d701', 'c462ce3de94b11ed', '11', '321', '2023-05-04 08:50:59', 'OUT'),
('bc51a665ea1511ed', '645301733b70d701', '50fa327aea1511ed', '111', '111', '2023-05-04 08:50:59', 'OUT'),
('bc5298d1ea1511ed', '645301733b70d701', '50fa327aea1511ed', '222', '111', '2023-05-04 08:50:59', 'RETURNED');

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
('11d19ccbeb0311ed', 'b8b6987fe94b11ed', '2023-05-05', 0, 4),
('11d6540feb0311ed', 'c462ce3de94b11ed', '2023-05-05', 0, 2),
('11d9194aeb0311ed', '50fa327aea1511ed', '2023-05-05', 0, 2),
('2e04f8d1ea1511ed', 'b8b6987fe94b11ed', '2023-05-04', 11, 4),
('3a17a84fea1511ed', 'c462ce3de94b11ed', '2023-05-04', 10, 1),
('5def00f3ea4711ed', '566830a4ea4711ed', '2023-05-04', 3, 0),
('62072796ea1511ed', '50fa327aea1511ed', '2023-05-04', 11, 2),
('a0c2abdaeb0311ed', '95803d91eb0311ed', '2023-05-05', 3, 0);

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
('479fb41aea4411ed', 'JK', 'Labajo', 'adminjowner', '$2y$10$UnicskMF8MtgZO1vNrjRLeCQBNwkY/uQgEGAjrOkIvRHZPfwJjyda', 2, 0, 0, NULL),
('58727a89cdf911ed', 'JOHN', 'DOE', 'owner', '$2y$10$NNjsc/qfqw0VhWXnVXwI4e7epUme3YfQlyWpaXcMdpHqjRvp721ze', 1, 0, 0, '2023-05-05 08:27:28');

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
