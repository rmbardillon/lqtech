-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 08, 2023 at 09:57 AM
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

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `BRAND_ID` varchar(16) NOT NULL DEFAULT replace(convert(uuid() using utf8mb4),'-',''),
  `CATEGORY` varchar(64) NOT NULL,
  `BRAND` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
('05ea636e04fc11ee', 'Camera', 'DS-2CE56HOT-ITMF'),
('4b4c474c04fe11ee', 'Camera', 'DS-2CE10DF3T-F'),
('4b4e2cb004fe11ee', 'Camera', 'DS-2CE12DF3T-F'),
('5228d4d2043011ee', 'Camera', 'DS-2CE76D0T-EXIPF'),
('522b5065043011ee', 'Camera', 'DS-2CE76D0T-ITPFS'),
('522c4fc1043011ee', 'Camera', 'DS-2CE76D3T-ITMF'),
('522d729d043011ee', 'Camera', 'DS-2CE5AD3T-VPIT3ZF'),
('522e8040043011ee', 'Camera', 'DS-2CE56D8T-ITZF'),
('522f75c4043011ee', 'Camera', 'DS-2CE56D0T-IRPF'),
('52306e15043011ee', 'Camera', 'DS-2CE56DOT-IPF'),
('5231875a043011ee', 'Camera', 'DS-2CE72DFT-PIRXOF'),
('523248ed043011ee', 'Camera', 'DS-2CE56D0T-IT1F'),
('5232ef9e043011ee', 'Camera', 'DS-2CE56D0T-IT3F'),
('523392d1043011ee', 'Camera', 'DS-2CE57D3T-VPITF'),
('52342d76043011ee', 'Camera', 'DS-2CE76D0T-ITMFS'),
('52349c85043011ee', 'Camera', 'DS-2CS54D8T-PH HIDDEN CAM'),
('75a502e8043011ee', 'Camera', 'DS-2CE16D0T-EXIPF'),
('75a7772e043011ee', 'Camera', 'DS-2CE16D0T-ITPFS'),
('75a89338043011ee', 'Camera', 'DS-2CE16D3T-ITF'),
('75a9ee00043011ee', 'Camera', 'DS-2CE19D3T-IT3ZF'),
('75aaf3d1043011ee', 'Camera', 'DS-2CE17D0T-IT3F'),
('75ac103f043011ee', 'Camera', 'DS-2CE16D8T-IT3ZF'),
('75ad27fd043011ee', 'Camera', 'DS-2CE19D3T-AIT3ZF'),
('75ae4724043011ee', 'Camera', 'DS-2CE17D0T-IT5F'),
('75af698e043011ee', 'Camera', 'DS-2CE16D0T-EXIPF'),
('75b07133043011ee', 'Camera', 'DS-2CE16D0T-ITPFS'),
('75b19d89043011ee', 'Camera', 'DS-2CE16DOT-IPF'),
('75b2c5b3043011ee', 'Camera', 'DS-2CE16H1T-IT'),
('75b3b05c043011ee', 'Camera', 'DS-2CE11DOT-PIRL'),
('89d51f44043111ee', 'Power Supply', '2AMP INDOOR'),
('89d6fceb043111ee', 'Power Supply', '2AMP OUTDOOR'),
('89d7abbd043111ee', 'Power Supply', '5AMP WITH SPLITTER'),
('89d82b0d043111ee', 'Power Supply', '10AMP'),
('89d8a021043111ee', 'Power Supply', '15AMP'),
('89d91121043111ee', 'Power Supply', '20AMP'),
('89d99be8043111ee', 'Power Supply', '30AMP'),
('89da14da043111ee', 'Power Supply', '5AMP'),
('89da89b0043111ee', 'Power Supply', 'POE 48V'),
('89db157a043111ee', 'Power Supply', 'POE 24V'),
('89db9db2043111ee', 'Power Supply', 'DS-3E0105P-E/M(B)'),
('89dc221a043111ee', 'Power Supply', 'DS-3E0106P-E/M'),
('89dc9721043111ee', 'Power Supply', 'DS-3E0310P-E/M'),
('89dd0da8043111ee', 'Power Supply', 'DS-3E0109P-E/M(B)'),
('89dd7ee4043111ee', 'Power Supply', 'DS-3E1318P-EI'),
('89ddf294043111ee', 'Power Supply', 'DS-3E0318P-E/M(C)'),
('89debc67043111ee', 'Power Supply', 'DS-3E01318P-E/M(B)'),
('89df5b7e043111ee', 'Power Supply', 'DH-PFS3218-16ET-135'),
('89dfd774043111ee', 'Power Supply', 'DH-PFS3010-8ET-65'),
('98dde06f043111ee', 'Hard drive', 'TOSHIBA 1TB'),
('98de9021043111ee', 'Hard drive', 'TOSHIBA 2TB'),
('98df2e62043111ee', 'Hard drive', 'SEAGATE 2TB SKYHAWK'),
('98dfb87d043111ee', 'Hard drive', 'SEAGATE 4TB'),
('98e03bb5043111ee', 'Hard drive', 'SEAGATE 6TB'),
('98e0ab44043111ee', 'Hard drive', 'SEAGATE 1TB BARRACUDA'),
('98e10ac2043111ee', 'Hard drive', 'SEAGATE IRONWOLF 4TB'),
('98e16e3c043111ee', 'Hard drive', '6TB HDD WESTERN DIGITAL'),
('98e1c9bc043111ee', 'Hard drive', '8TB HDD SKYHAWK'),
('98e226dd043111ee', 'Hard drive', '4TB WESTERN DIGITAL'),
('9e2c8ddf04fc11ee', 'Camera', 'DS-2CE16DOT-IRPF'),
('aed93284043111ee', 'Monitor', 'AEVISION 19\"'),
('aedb06da043111ee', 'Monitor', 'N VISION 20 INCHES'),
('aedbcb1a043111ee', 'Monitor', 'HIKVISION 22\'\''),
('aedcc798043111ee', 'Monitor', 'N VISION 43 INCHES'),
('aeddf5e8043111ee', 'Monitor', 'INPLAY LED HD 32 INCHES'),
('aedf60a0043111ee', 'Monitor', 'PHILIPS 24\"'),
('aee042b4043111ee', 'Monitor', 'HISENSE 32\'\' TV MONITOR'),
('aee1190a043111ee', 'Monitor', 'HISENSE 43\'\' TV MONITOR'),
('aee1d150043111ee', 'Monitor', 'HISENSE 55\'\' TV MONITOR'),
('aee28e49043111ee', 'Monitor', 'DAHUA 32\" TV MONITOR'),
('aee359b3043111ee', 'Monitor', 'DAHUA 43\'\' TV MONITOR'),
('aee432af043111ee', 'Monitor', 'AEVISION 43\'\' TV MONITOR'),
('bd088853043011ee', 'Camera', 'DS-2CE70DF3T-PF'),
('bd0adc53043011ee', 'Camera', 'DS-2CE70DF3T-PFS'),
('bd0be8b9043011ee', 'Camera', 'DS-2CE72DF3T-PIRXOS'),
('bd0d0c15043011ee', 'Camera', 'DS-2CE10DF3T-PF'),
('bd0e09cd043011ee', 'Camera', 'DS-2CE10DF3T-PFS'),
('bd0f5546043011ee', 'Camera', 'DS-2CE12DF3T-FS'),
('bd10241a043011ee', 'Camera', 'DS-2CE12DF3T-PIRXOS'),
('bd110969043011ee', 'Camera', 'DS-2CE70KF0T-MFS'),
('bd11e490043011ee', 'Camera', 'DS-2CE72KF3T'),
('bd12a82e043011ee', 'Camera', 'DS-2CE10KF0T-FS'),
('bd138287043011ee', 'Camera', 'DS-2CE10KF3T'),
('bd14678e043011ee', 'Camera', 'DS-2CE76U1T-ITPF'),
('bd152362043011ee', 'Camera', 'DS-2CE72UF3T-E'),
('bd15eaf2043011ee', 'Camera', 'DS-2CE16U1T-ITPF'),
('bd16b753043011ee', 'Camera', 'DS-2CE10UF3T-E'),
('bd177679043011ee', 'Camera', 'DS-2CE76H0T-ITPF'),
('bd18401a043011ee', 'Camera', 'DS-2CE76H0T-ITPFS'),
('bd1900a9043011ee', 'Camera', 'DS-2CE76H0T-ITMF'),
('bd19c58f043011ee', 'Camera', 'DS-2CE16H0T-ITPF'),
('bd1a9423043011ee', 'Camera', 'DS-2CE16H0T-ITPFS'),
('bd1b61e2043011ee', 'Camera', 'DS-2CE16H0T-ITF'),
('bd1c1c17043011ee', 'Camera', 'DS-2CE17H0T-IT3F'),
('bd1ce5e5043011ee', 'Camera', 'DS-2CE12HFT-F'),
('bd1daf97043011ee', 'Camera', 'ERA-A363H'),
('bd1e7ff3043011ee', 'Camera', 'IPC-S41FN (4MP CRUISER)'),
('bd1f3a4d043011ee', 'Camera', 'IPC-A23N (2MP RANGER SE)'),
('bd1ff231043011ee', 'Camera', 'IPC-F22N-D (2MP BULLET 2C-D)'),
('bd20a902043011ee', 'Camera', 'IPC-S21FN CRUISER DOME 2MP'),
('bd215f2b043011ee', 'Camera', 'IPC-TA22CN-D (2MP RANGER 2C)'),
('bd2217d5043011ee', 'Camera', 'HWI-D121H'),
('bd229b9a043011ee', 'Camera', 'E-HWID'),
('bd232d76043011ee', 'Camera', 'DS-2CD1323G0-IUF'),
('bd23c2d9043011ee', 'Camera', 'DS-2CD1321-I'),
('bd245b6e043011ee', 'Camera', 'DS-2CD1123G0E-1'),
('bd24f73c043011ee', 'Camera', 'DS-2CD1023G0-IU'),
('bd25726a043011ee', 'Camera', 'E-HWIB'),
('bd260541043011ee', 'Camera', 'DS-2CD1023GO-IUF'),
('bd268690043011ee', 'Camera', 'HWI-D140H'),
('bd26f9ee043011ee', 'Camera', 'DS2CD-2347G2-LSU/SL'),
('bd276494043011ee', 'Camera', 'HWI-B140H'),
('bd27c650043011ee', 'Camera', 'DS-2CD1147G0-UF'),
('bd28287c043011ee', 'Camera', 'DS-2CV2021G2-IDW'),
('bd28927d043011ee', 'Camera', 'DS-2CE16D0T-IPF'),
('bd28fc6f043011ee', 'Camera', 'DS-2CD2046G2-IU/SL'),
('bd296509043011ee', 'Camera', 'DS-2CD2047G2-LU/SL'),
('bd2b290b043011ee', 'Camera', 'DS-2CV2Q21FD-IW'),
('bd2c8630043011ee', 'Camera', 'DS-2CD1327G0-L'),
('bd2cfa44043011ee', 'Camera', 'DS-2CD1327GO-LUF'),
('bd2d606b043011ee', 'Camera', 'DS-2CD1027G0-L'),
('bd2dc72d043011ee', 'Camera', 'DS-2CD1027G0-LU'),
('bd2e1db6043011ee', 'Camera', 'DS-2CD1027G0-LUF'),
('bd2e6aec043011ee', 'Camera', 'DS-2CD2347G2-L(U)'),
('bd2eb4a8043011ee', 'Camera', 'DS-2CD1347G0-LUF'),
('bd2efcc6043011ee', 'Camera', 'DS-2CD1347G0-L'),
('bd2f51b0043011ee', 'Camera', 'DS-2CD2047G2-LU'),
('bd2fa369043011ee', 'Camera', 'DS-2CD1047G0-L'),
('bd2ff1ef043011ee', 'Camera', 'DS-2CD2T47G2-L'),
('bd304045043011ee', 'Camera', 'DS-2CD1047G0-LUF'),
('bd30906f043011ee', 'Camera', 'DS-2CD2166G2-I'),
('bd30e3cb043011ee', 'Camera', 'DS-2CD2F22FWD-IS'),
('bd31392e043011ee', 'Camera', 'DS-2AE5225TI-A'),
('bd31895e043011ee', 'Camera', 'DS-2DE5425IW-AE (4MP)'),
('bd31d4d6043011ee', 'Camera', 'DS-2DE5225IW-AE (2MP)'),
('c085c72c043111ee', 'Camera', 'DS-2CD2955FWD-IS'),
('e5b7ea0e04fe11ee', 'Camera', 'DS-2CE17DOT-IT5F'),
('f6f77be8043011ee', 'Recorder', 'DS-7204HGHI-K1'),
('f6f809df043011ee', 'Recorder', 'DS-7204HGHI-F1'),
('f6f8925b043011ee', 'Recorder', 'DS-7204HQHI-K1'),
('f6f90a09043011ee', 'Recorder', 'DS-7204HQHI-K1/E'),
('f6f9802f043011ee', 'Recorder', 'DS-7204HUHI-K1/E'),
('f6f9f16b043011ee', 'Recorder', 'IDS-7204HUHI- M1/FA'),
('f6fa5a00043011ee', 'Recorder', 'IDS-7204HQHI-M1/S'),
('f6fabe10043011ee', 'Recorder', 'DS-E04HGHI-B'),
('f6fb2cab043011ee', 'Recorder', 'DS-E04HQHI-B'),
('f6fb9d60043011ee', 'Recorder', 'DS-7208HGHI-K1'),
('f6fc0d3b043011ee', 'Recorder', 'DS-7208HQHI-K1/E'),
('f6fc760d043011ee', 'Recorder', 'IDS-7208HUHI-M1/S'),
('f6fd2450043011ee', 'Recorder', 'DS-7208HGHI-KN'),
('f6fdb2ca043011ee', 'Recorder', 'IDS-7208HQHI-M1/S'),
('f6fe12b3043011ee', 'Recorder', 'DS-7208HUHI-K1/E'),
('f6fe7ba6043011ee', 'Recorder', 'DS-E08HGHI-B'),
('f6fee79f043011ee', 'Recorder', 'DS-7216HGHI-K1'),
('f6ff4742043011ee', 'Recorder', 'IDS-7216HQHI-M1/S'),
('f6ffb663043011ee', 'Recorder', 'IDS-7216HUHI-M2/S'),
('f7001a88043011ee', 'Recorder', 'IDS-7216HQHI-M2/S'),
('f7007da7043011ee', 'Recorder', 'DS-7216HGHI-K2'),
('f700e2a0043011ee', 'Recorder', 'IDS-7216-HQHI-M2/S'),
('f7014bf7043011ee', 'Recorder', 'IDS-7232HQHI-M2/S'),
('f701ab67043011ee', 'Recorder', 'DAHUA 8CH 2MP'),
('f7020119043011ee', 'Recorder', 'DAHUA 4CH DVR'),
('f7025c72043011ee', 'Recorder', 'DS-7604NI-Q1'),
('f702b34c043011ee', 'Recorder', 'DS-7608NI-Q1'),
('f7032dcb043011ee', 'Recorder', 'HWN-4108MH'),
('f7038cd9043011ee', 'Recorder', 'DS-7608NXI-12/8P/S'),
('f703e45a043011ee', 'Recorder', 'DS-7608NI-Q2'),
('f70439c2043011ee', 'Recorder', 'DS-7608NI-K1'),
('f70497c3043011ee', 'Recorder', 'DS-7616NI-Q2'),
('f704f760043011ee', 'Recorder', 'DS-7616NI-Q1'),
('f705503a043011ee', 'Recorder', 'DS-7616NXI-K2'),
('f705b5bf043011ee', 'Recorder', 'DH-NVR4216-4KS2/L'),
('f7061a8c043011ee', 'Recorder', 'DS-7632NI-K1'),
('f7067d77043011ee', 'Recorder', 'DS-7632NI-K2'),
('f706e270043011ee', 'Recorder', 'DHI-NVR4232-4KS2/L'),
('f7074e3a043011ee', 'Recorder', 'DS-7732NXI-K4'),
('fac48b1904fd11ee', 'Camera', 'DS-2CE56HOT-ITZF');

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
('02116688043811ee', 'Camera', 'HIKVISION', 'DS-2CE19D3T-IT3ZF', '0.00', '0.00', '2023-06-06 15:01:49', 'Analog', 'Bullet', NULL, NULL, NULL, NULL, NULL),
('0b8be42e043811ee', 'Camera', 'HIKVISION', 'DS-2CE17D0T-IT3F', '0.00', '0.00', '2023-06-06 15:02:05', 'Analog', 'Bullet', NULL, NULL, NULL, NULL, NULL),
('10c83ced04fe11ee', 'Camera', 'HIKVISION', 'DS-2CE56HOT-ITZF', '0.00', '0.00', '2023-06-07 14:39:34', 'Analog', 'Dome', NULL, NULL, NULL, NULL, NULL),
('1355ff36043711ee', 'Camera', 'HIKVISION', 'DS-2CE56D0T-IT1F', '0.00', '0.00', '2023-06-06 14:55:09', 'Analog', 'Dome', NULL, NULL, NULL, NULL, NULL),
('136da71e043611ee', 'Camera', 'HIKVISION', 'DS-2CE76D0T-ITPFS', '0.00', '0.00', '2023-06-06 14:47:59', 'Analog', 'Dome', NULL, NULL, NULL, NULL, NULL),
('17e6211a04fb11ee', 'Camera', 'HIKVISION', 'DS-2CD2F22FWD-IS', '0.00', '0.00', '2023-06-07 14:18:17', 'Analog', 'Dome', NULL, NULL, NULL, NULL, NULL),
('1ed29b02043911ee', 'Camera', 'HIKVISION', 'DS-2CE70DF3T-PF', '0.00', '0.00', '2023-06-06 15:09:47', 'Analog', 'Dome', NULL, NULL, NULL, NULL, NULL),
('218fa7e004fc11ee', 'Camera', 'HIKVISION', 'DS-2CE56HOT-ITMF', '0.00', '0.00', '2023-06-07 14:25:43', 'Analog', 'Dome', NULL, NULL, NULL, NULL, NULL),
('21bcd53d043711ee', 'Camera', 'HIKVISION', 'DS-2CE56D0T-IT3F', '0.00', '0.00', '2023-06-06 14:55:33', 'Analog', 'Dome', NULL, NULL, NULL, NULL, NULL),
('2a667625043911ee', 'Camera', 'HIKVISION', 'DS-2CE70DF3T-PFS', '0.00', '0.00', '2023-06-06 15:10:06', 'Analog', 'Dome', NULL, NULL, NULL, NULL, NULL),
('2b9e71d0043611ee', 'Camera', 'HIKVISION', 'DS-2CE76D3T-ITMF', '0.00', '0.00', '2023-06-06 14:48:40', 'Analog', 'Dome', NULL, NULL, NULL, NULL, NULL),
('2db94f65043811ee', 'Camera', 'HIKVISION', 'DS-2CE16D8T-IT3ZF', '0.00', '0.00', '2023-06-06 15:03:02', 'Analog', 'Bullet', NULL, NULL, NULL, NULL, NULL),
('356240c8043911ee', 'Camera', 'HIKVISION', 'DS-2CE72DF3T-PIRXOS', '0.00', '0.00', '2023-06-06 15:10:25', 'Analog', 'Dome', NULL, NULL, NULL, NULL, NULL),
('384af85b043811ee', 'Camera', 'HIKVISION', '', '0.00', '0.00', '2023-06-06 15:03:20', 'Analog', 'Bullet', NULL, NULL, NULL, NULL, NULL),
('3973696904fa11ee', 'Camera', 'HIKVISION', 'DS-2CE16H0T-ITF', '0.00', '0.00', '2023-06-07 14:12:04', 'Analog', 'Bullet', NULL, NULL, NULL, NULL, NULL),
('3adade66043611ee', 'Camera', 'HIKVISION', 'DS-2CE5AD3T-VPIT3ZF', '0.00', '0.00', '2023-06-06 14:49:05', 'Analog', 'Dome', NULL, NULL, NULL, NULL, NULL),
('441be295043b11ee', 'Camera', 'HIKVISION', 'DS-2CE10KF0T-FS', '0.00', '0.00', '2023-06-06 15:25:08', 'Analog', 'Bullet', NULL, NULL, NULL, NULL, NULL),
('44eaea8c043811ee', 'Camera', 'HIKVISION', 'DS-2CE17D0T-IT5F', '0.00', '0.00', '2023-06-06 15:03:41', 'Analog', 'Bullet', NULL, NULL, NULL, NULL, NULL),
('500047ec043711ee', 'Camera', 'HIKVISION', 'DS-2CE57D3T-VPITF', '0.00', '0.00', '2023-06-06 14:56:50', 'Analog', 'Dome', NULL, NULL, NULL, NULL, NULL),
('50d488ad043811ee', 'Camera', 'HIKVISION', 'DS-2CE17D0T-IT5F', '0.00', '0.00', '2023-06-06 15:04:01', 'Analog', 'Bullet', NULL, NULL, NULL, NULL, NULL),
('5876886c043911ee', 'Camera', 'HIKVISION', 'DS-2CE10DF3T-PF', '0.00', '0.00', '2023-06-06 15:11:24', 'Analog', 'Bullet', NULL, NULL, NULL, NULL, NULL),
('58d2929c043c11ee', 'Camera', 'HIKVISION', 'DS-2CE76H0T-ITPF', '0.00', '0.00', '2023-06-06 15:32:53', 'Analog', 'Dome', NULL, NULL, NULL, NULL, NULL),
('59214453043b11ee', 'Camera', 'HIKVISION', 'DS-2CE10KF3T', '0.00', '0.00', '2023-06-06 15:25:44', 'Analog', 'Bullet', NULL, NULL, NULL, NULL, NULL),
('5c7e21fb043811ee', 'Camera', 'HIKVISION', 'DS-2CE17D0T-IT5F', '0.00', '0.00', '2023-06-06 15:04:21', 'Analog', 'Bullet', NULL, NULL, NULL, NULL, NULL),
('5cc348c7043711ee', 'Camera', 'HIKVISION', 'DS-2CE76D0T-ITMFS', '0.00', '0.00', '2023-06-06 14:57:12', 'IP', 'Dome', NULL, NULL, NULL, NULL, NULL),
('5d3ce2a104fe11ee', 'Camera', 'HIKVISION', 'DS-2CE10DF3T-F', '0.00', '0.00', '2023-06-07 14:41:42', 'Analog', 'Bullet', NULL, NULL, NULL, NULL, NULL),
('64d0270c043c11ee', 'Camera', 'HIKVISION', 'DS-2CE76H0T-ITPFS', '0.00', '0.00', '2023-06-06 15:33:13', 'Analog', 'Dome', NULL, NULL, NULL, NULL, NULL),
('6a25828d043711ee', 'Camera', 'HIKVISION', 'DS-2CS54D8T-PH', '0.00', '0.00', '2023-06-06 14:57:34', 'Analog', 'Dome', NULL, NULL, NULL, NULL, NULL),
('75f3dc79043c11ee', 'Camera', 'HIKVISION', 'DS-2CE76H0T-ITMF', '0.00', '0.00', '2023-06-06 15:33:42', 'Analog', 'Dome', NULL, NULL, NULL, NULL, NULL),
('85f148c9043c11ee', 'Camera', 'HIKVISION', 'DS-2CE16H0T-ITPF', '0.00', '0.00', '2023-06-06 15:34:08', 'Analog', 'Bullet', NULL, NULL, NULL, NULL, NULL),
('89479437043911ee', 'Camera', 'HIKVISION', 'DS-2CE10DF3T-PFS', '0.00', '0.00', '2023-06-06 15:12:46', 'Analog', 'Bullet', NULL, NULL, NULL, NULL, NULL),
('8b14abd5043b11ee', 'Camera', 'HIKVISION', 'DS-2CE76U1T-ITPF', '0.00', '0.00', '2023-06-06 15:27:08', 'IP', 'Dome', NULL, NULL, NULL, NULL, NULL),
('8eec7c88043c11ee', 'Camera', 'HIKVISION', '', '0.00', '0.00', '2023-06-06 15:34:23', 'Analog', 'Bullet', NULL, NULL, NULL, NULL, NULL),
('94d3f636043911ee', 'Camera', 'HIKVISION', 'DS-2CE10DF3T-PFS', '0.00', '0.00', '2023-06-06 15:13:05', 'Analog', 'Bullet', NULL, NULL, NULL, NULL, NULL),
('96174f5f043811ee', 'Camera', 'HIKVISION', 'DS-2CE16DOT-IPF', '0.00', '0.00', '2023-06-06 15:05:57', 'Analog', 'Bullet', NULL, NULL, NULL, NULL, NULL),
('99397737043711ee', 'Camera', 'HIKVISION', 'DS-2CE16D0T-EXIPF', '0.00', '0.00', '2023-06-06 14:58:53', 'Analog', 'Bullet', NULL, NULL, NULL, NULL, NULL),
('9af3315f043b11ee', 'Camera', 'HIKVISION', 'DS-2CE72UF3T-E', '0.00', '0.00', '2023-06-06 15:27:34', 'Analog', 'Dome', NULL, NULL, NULL, NULL, NULL),
('9cf8c6c9043c11ee', 'Camera', 'HIKVISION', 'DS-2CE16H0T-ITF', '0.00', '0.00', '2023-06-06 15:34:47', 'Analog', 'Bullet', NULL, NULL, NULL, NULL, NULL),
('a0a9eea4043911ee', 'Camera', 'HIKVISION', 'DS-2CE12DF3T-FS', '0.00', '0.00', '2023-06-06 15:13:25', 'Analog', 'Bullet', NULL, NULL, NULL, NULL, NULL),
('a300b7a0043811ee', 'Camera', 'HIKVISION', 'DS-2CE16H1T-IT', '0.00', '0.00', '2023-06-06 15:06:19', 'Analog', 'Bullet', NULL, NULL, NULL, NULL, NULL),
('a7bdb31d043c11ee', 'Camera', 'HIKVISION', 'DS-2CE17H0T-IT3F', '0.00', '0.00', '2023-06-06 15:35:05', 'Analog', 'Bullet', NULL, NULL, NULL, NULL, NULL),
('a7d6749d043b11ee', 'Camera', 'HIKVISION', 'DS-2CE16U1T-ITPF', '0.00', '0.00', '2023-06-06 15:27:56', 'Analog', 'Bullet', NULL, NULL, NULL, NULL, NULL),
('aba81b02043811ee', 'Camera', 'HIKVISION', 'DS-2CE11DOT-PIRL', '0.00', '0.00', '2023-06-06 15:06:34', 'Analog', 'Bullet', NULL, NULL, NULL, NULL, NULL),
('aeb07b9e043611ee', 'Camera', 'HIKVISION', 'DS-2CE56D8T-ITZF', '0.00', '0.00', '2023-06-06 14:52:20', 'Analog', 'Dome', NULL, NULL, NULL, NULL, NULL),
('b2227b1304fc11ee', 'Camera', 'HIKVISION', 'DS-2CE16DOT-IRPF', '0.00', '0.00', '2023-06-07 14:29:46', 'Analog', 'Bullet', NULL, NULL, NULL, NULL, NULL),
('ba3aacaa043911ee', 'Camera', 'HIKVISION', 'DS-2CE12DF3T-PIRXOS', '0.00', '0.00', '2023-06-06 15:14:08', 'Analog', 'Bullet', NULL, NULL, NULL, NULL, NULL),
('bf0c1350043b11ee', 'Camera', 'HIKVISION', 'DS-2CE10UF3T-E', '0.00', '0.00', '2023-06-06 15:28:35', 'Analog', 'Bullet', NULL, NULL, NULL, NULL, NULL),
('c7e137dd04f711ee', 'Camera', 'HIKVISION', 'HWI-D121H', '0.00', '0.00', '2023-06-07 13:54:35', 'IP', 'Dome', NULL, NULL, NULL, NULL, NULL),
('ce41d639043711ee', 'Camera', 'HIKVISION', 'DS-2CE16D0T-ITPFS', '0.00', '0.00', '2023-06-06 15:00:22', 'Analog', 'Bullet', NULL, NULL, NULL, NULL, NULL),
('cfb21b2e043911ee', 'Camera', 'HIKVISION', 'DS-2CE70KF0T-MFS', '0.00', '0.00', '2023-06-06 15:14:44', 'Analog', 'Dome', NULL, NULL, NULL, NULL, NULL),
('d5f59a00043c11ee', 'Camera', 'HIKVISION', 'DS-2CE12HFT-F', '0.00', '0.00', '2023-06-06 15:36:23', 'Analog', 'Bullet', NULL, NULL, NULL, NULL, NULL),
('db0ce0ef043911ee', 'Camera', 'HIKVISION', 'DS-2CE72KF3T', '0.00', '0.00', '2023-06-06 15:15:03', 'Analog', 'Dome', NULL, NULL, NULL, NULL, NULL),
('dcc32f65043711ee', 'Camera', 'HIKVISION', 'DS-2CE16D3T-ITF', '0.00', '0.00', '2023-06-06 15:00:47', 'Analog', 'Bullet', NULL, NULL, NULL, NULL, NULL),
('e9b3ee96043611ee', 'Camera', 'HIKVISION', 'DS-2CE56D0T-IRPF', '0.00', '0.00', '2023-06-06 14:53:59', 'Analog', 'Dome', NULL, NULL, NULL, NULL, NULL),
('eed57ff9043911ee', 'Camera', 'HIKVISION', 'DS-2CE72KF3T', '0.00', '0.00', '2023-06-06 15:15:36', 'Analog', 'Bullet', NULL, NULL, NULL, NULL, NULL),
('f3920432043711ee', 'Camera', 'HIKVISION', 'DS-2CE16D3T-ITF', '0.00', '0.00', '2023-06-06 15:01:25', 'Analog', 'Bullet', NULL, NULL, NULL, NULL, NULL),
('f9aa74c304fe11ee', 'Camera', 'HIKVISION', 'DS-2CE17D0T-IT5F', '0.00', '0.00', '2023-06-07 14:46:05', 'Analog', 'Bullet', NULL, NULL, NULL, NULL, NULL),
('fb7f0836043611ee', 'Camera', 'HIKVISION', 'DS-2CE72DFT-PIRXOF', '0.00', '0.00', '2023-06-06 14:54:29', 'Analog', 'Dome', NULL, NULL, NULL, NULL, NULL),
('fea95a92043511ee', 'Camera', 'HIKVISION', 'DS-2CE76D0T-EXIPF', '0.00', '0.00', '2023-06-06 14:47:24', 'Analog', 'Dome', NULL, NULL, NULL, NULL, NULL);

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
('2dc43bcc043011ee', 'JENNY ROSE', 'BORREROS', 'adminjborreros', '$2y$10$VUbsB/57/yc2PxzCeXfOCO78f//XutEjZ9xLyy9ba5W9e1ziqGVJm', 2, 0, 0, '2023-06-06 14:34:08'),
('58727a89cdf911ed', 'JOY', 'TAN', 'owner', '$2y$10$NNjsc/qfqw0VhWXnVXwI4e7epUme3YfQlyWpaXcMdpHqjRvp721ze', 1, 0, 0, '2023-06-08 08:30:14');

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
