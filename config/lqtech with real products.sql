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

--
-- Dumping data for table `action_logs`
--

INSERT INTO `action_logs` (`ACTION_LOG_ID`, `DATE_TIME`, `USER_ID`, `ROLE`, `ACTION`) VALUES
('05ebf49804fc11ee', '2023-06-07 08:24:57', '58727a89cdf911ed', 1, 'Successfully saved the Category'),
('0eda54de04ff11ee', '2023-06-07 08:46:40', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('0edb3a6704ff11ee', '2023-06-07 08:46:40', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('0edbc1b904ff11ee', '2023-06-07 08:46:40', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('0edc518c04ff11ee', '2023-06-07 08:46:40', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('10c9c46404fe11ee', '2023-06-07 08:39:34', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('17e7a9fe04fb11ee', '2023-06-07 08:18:17', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('18dcf3c104fd11ee', '2023-06-07 08:32:38', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('18dd781204fd11ee', '2023-06-07 08:32:38', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('1978603004f511ee', '2023-06-07 13:35:23', '58727a89cdf911ed', 1, 'User has logged in'),
('1c31174204ff11ee', '2023-06-07 08:47:03', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('1c31b5ce04ff11ee', '2023-06-07 08:47:03', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('21453d8e04fe11ee', '2023-06-07 08:40:02', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('2145d90c04fe11ee', '2023-06-07 08:40:02', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('21914cd704fc11ee', '2023-06-07 08:25:43', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('32d49e8104fc11ee', '2023-06-07 08:26:12', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('32d5419b04fc11ee', '2023-06-07 08:26:12', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('333465a804fb11ee', '2023-06-07 08:19:03', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('333541e604fb11ee', '2023-06-07 08:19:03', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('3335e04f04fb11ee', '2023-06-07 08:19:03', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('3973b86a04fa11ee', '2023-06-07 08:12:04', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('4b4dd98e04fe11ee', '2023-06-07 08:41:12', '58727a89cdf911ed', 1, 'Successfully saved the Category'),
('4b4eaacc04fe11ee', '2023-06-07 08:41:12', '58727a89cdf911ed', 1, 'Successfully saved the Category'),
('5643f47704f711ee', '2023-06-07 13:51:24', '58727a89cdf911ed', 1, 'User has logged in'),
('5bcf014e04fc11ee', '2023-06-07 08:27:21', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('5bcfd43904fc11ee', '2023-06-07 08:27:21', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('5d3e808404fe11ee', '2023-06-07 08:41:42', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('61b9e8c204fd11ee', '2023-06-07 08:34:40', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('61baabb004fd11ee', '2023-06-07 08:34:40', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('672caaf704fb11ee', '2023-06-07 08:20:30', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('672daaa704fb11ee', '2023-06-07 08:20:30', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('672e782304fb11ee', '2023-06-07 08:20:30', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('672ef15804fb11ee', '2023-06-07 08:20:30', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('672fc2f004fb11ee', '2023-06-07 08:20:30', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('6730460204fb11ee', '2023-06-07 08:20:30', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('6730d95704fb11ee', '2023-06-07 08:20:30', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('67317ea404fb11ee', '2023-06-07 08:20:30', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('6732229704fb11ee', '2023-06-07 08:20:30', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('6732ab7204fb11ee', '2023-06-07 08:20:30', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('67331b9104fb11ee', '2023-06-07 08:20:30', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('6de05d4c04ff11ee', '2023-06-07 08:49:20', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('6de0f8af04ff11ee', '2023-06-07 08:49:20', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('6ed32cd304fe11ee', '2023-06-07 08:42:12', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('6ed3befc04fe11ee', '2023-06-07 08:42:12', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('7cb4335504fe11ee', '2023-06-07 08:42:35', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('7cb5246404fe11ee', '2023-06-07 08:42:35', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('8428f11004fa11ee', '2023-06-07 08:14:10', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('84297b7204fa11ee', '2023-06-07 08:14:10', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('842a15d004fa11ee', '2023-06-07 08:14:10', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('842ae06004fa11ee', '2023-06-07 08:14:10', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('842ba33e04fa11ee', '2023-06-07 08:14:10', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('842c3b0a04fa11ee', '2023-06-07 08:14:10', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('842cc82204fa11ee', '2023-06-07 08:14:10', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('842d52d004fa11ee', '2023-06-07 08:14:10', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('842de76904fa11ee', '2023-06-07 08:14:10', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('842e7ad004fa11ee', '2023-06-07 08:14:10', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('842f084a04fa11ee', '2023-06-07 08:14:10', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('842f898104fa11ee', '2023-06-07 08:14:10', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('84300ebb04fa11ee', '2023-06-07 08:14:10', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('8430991d04fa11ee', '2023-06-07 08:14:10', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('843112e404fa11ee', '2023-06-07 08:14:10', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('865d934304f911ee', '2023-06-07 08:07:04', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('865e639504f911ee', '2023-06-07 08:07:04', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('865f073004f911ee', '2023-06-07 08:07:04', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('865fb43304f911ee', '2023-06-07 08:07:04', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('8660378404f911ee', '2023-06-07 08:07:04', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('8660bfc104f911ee', '2023-06-07 08:07:04', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('866133db04f911ee', '2023-06-07 08:07:04', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('8661b55004f911ee', '2023-06-07 08:07:04', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('86621f3504f911ee', '2023-06-07 08:07:04', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('8662873504f911ee', '2023-06-07 08:07:04', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('96cd3f5304fe11ee', '2023-06-07 08:43:19', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('96cdc75804fe11ee', '2023-06-07 08:43:19', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('9e1e1e2504fd11ee', '2023-06-07 08:36:22', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('9e1ee9c904fd11ee', '2023-06-07 08:36:22', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('9e2e26b504fc11ee', '2023-06-07 08:29:12', '58727a89cdf911ed', 1, 'Successfully saved the Category'),
('a2e06b29059311ee', '2023-06-08 08:30:14', '58727a89cdf911ed', 1, 'User has logged in'),
('a729cd8a04fe11ee', '2023-06-07 08:43:46', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('a72a4df204fe11ee', '2023-06-07 08:43:46', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('ab9adfd104fd11ee', '2023-06-07 08:36:44', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('ab9bee4504fd11ee', '2023-06-07 08:36:44', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('ad316f3304fb11ee', '2023-06-07 08:22:28', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('ad32261604fb11ee', '2023-06-07 08:22:28', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('b22424e404fc11ee', '2023-06-07 08:29:46', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('be977aeb04fe11ee', '2023-06-07 08:44:26', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('be97ec0004fe11ee', '2023-06-07 08:44:26', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('c004cca104fd11ee', '2023-06-07 08:37:18', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('c005b02104fd11ee', '2023-06-07 08:37:18', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('c2d079a204fb11ee', '2023-06-07 08:23:04', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('c2d13dc204fb11ee', '2023-06-07 08:23:04', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('c7e2cff304f711ee', '2023-06-07 07:54:35', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('cce25cc404fc11ee', '2023-06-07 08:30:31', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('cce3736a04fc11ee', '2023-06-07 08:30:31', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('cce44a7f04fc11ee', '2023-06-07 08:30:31', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('d597634704fb11ee', '2023-06-07 08:23:36', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('d597e3fb04fb11ee', '2023-06-07 08:23:36', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('e5b982fa04fe11ee', '2023-06-07 08:45:31', '58727a89cdf911ed', 1, 'Successfully saved the Category'),
('f324a0dc04fa11ee', '2023-06-07 08:17:16', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('f325875d04fa11ee', '2023-06-07 08:17:16', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('f326122d04fa11ee', '2023-06-07 08:17:16', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('f996ba6e04f911ee', '2023-06-07 08:10:17', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('f997c10c04f911ee', '2023-06-07 08:10:17', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('f9984a4604f911ee', '2023-06-07 08:10:17', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('f99917e104f911ee', '2023-06-07 08:10:17', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('f99a195204f911ee', '2023-06-07 08:10:17', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('f9aabaf304fe11ee', '2023-06-07 08:46:05', '58727a89cdf911ed', 1, 'Successfully saved the Product'),
('fac626cc04fd11ee', '2023-06-07 08:38:57', '58727a89cdf911ed', 1, 'Successfully saved the Category');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `BRAND_ID` varchar(16) NOT NULL DEFAULT replace(convert(uuid() using utf8mb4),'-',''),
  `CATEGORY` varchar(64) NOT NULL,
  `BRAND` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`BRAND_ID`, `CATEGORY`, `BRAND`) VALUES
('06a5c101059a11ee', 'Camera', 'DAHUA'),
('0d2d9a6d059911ee', 'Camera', 'HIKVISION'),
('bf6f0747059a11ee', 'Recorder', 'HIKVISION'),
('bf7126d0059a11ee', 'Recorder', 'DAHUA');

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

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`PRODUCT_ID`, `PRODUCT_DETAILS_ID`, `SKU`, `SERIAL_NUMBER`, `DATE_INSERTED`, `DATE_OUT`, `STATUS`) VALUES
('0edae41004ff11ee', '44eaea8c043811ee', '6941264039662', 'F01814056', '2023-06-07 14:46:40', NULL, 'IN'),
('0edb801c04ff11ee', '44eaea8c043811ee', '6941264039662', 'F01813987', '2023-06-07 14:46:40', NULL, 'IN'),
('0edbffd004ff11ee', '44eaea8c043811ee', '6941264039662', 'F01814017', '2023-06-07 14:46:40', NULL, 'IN'),
('18dd367c04fd11ee', 'b2227b1304fc11ee', '6954273693992', 'F64070514', '2023-06-07 14:32:38', NULL, 'IN'),
('1c316b1804ff11ee', '2db94f65043811ee', '6954273681159', 'G92431046', '2023-06-07 14:47:03', NULL, 'IN'),
('2145909e04fe11ee', '10c83ced04fe11ee', '6954273669157', 'D99280066', '2023-06-07 14:40:02', NULL, 'IN'),
('32d5026f04fc11ee', '218fa7e004fc11ee', '6954273669096', 'D92613284', '2023-06-07 14:26:12', NULL, 'IN'),
('3334acbe04fb11ee', '17e6211a04fb11ee', '6954273615406', 'C64396596', '2023-06-07 14:19:03', NULL, 'IN'),
('333593e304fb11ee', '17e6211a04fb11ee', '6954273615406', 'C64396616', '2023-06-07 14:19:03', NULL, 'IN'),
('5bcf8baa04fc11ee', 'a7d6749d043b11ee', '6941264052401', 'J71702324', '2023-06-07 14:27:21', NULL, 'IN'),
('61ba705404fd11ee', '1355ff36043711ee', '6954273694487', 'J82747159', '2023-06-07 14:34:40', NULL, 'IN'),
('672d629e04fb11ee', '2b9e71d0043611ee', '6954273682385', 'D99266696', '2023-06-07 14:20:30', NULL, 'IN'),
('672e31cb04fb11ee', '2b9e71d0043611ee', '6954273682385', 'G57902292', '2023-06-07 14:20:30', NULL, 'IN'),
('672eb76104fb11ee', '2b9e71d0043611ee', '6954273682385', 'F09630892', '2023-06-07 14:20:30', NULL, 'IN'),
('672f2b3904fb11ee', '2b9e71d0043611ee', '6954273682385', 'E95673203', '2023-06-07 14:20:30', NULL, 'IN'),
('6730097c04fb11ee', '2b9e71d0043611ee', '6954273682385', 'G57902239', '2023-06-07 14:20:30', NULL, 'IN'),
('67308dea04fb11ee', '2b9e71d0043611ee', '6954273682385', 'G57902244', '2023-06-07 14:20:30', NULL, 'IN'),
('6731276d04fb11ee', '2b9e71d0043611ee', '6954273682385', 'D99266704', '2023-06-07 14:20:30', NULL, 'IN'),
('6731cd0504fb11ee', '2b9e71d0043611ee', '6954273682385', 'E95673219', '2023-06-07 14:20:30', NULL, 'IN'),
('67326b4604fb11ee', '2b9e71d0043611ee', '6954273682385', 'G57902264', '2023-06-07 14:20:30', NULL, 'IN'),
('6732e65104fb11ee', '2b9e71d0043611ee', '6954273682385', 'E95673281', '2023-06-07 14:20:30', NULL, 'IN'),
('6de0b40a04ff11ee', '9af3315f043b11ee', '6941264071846', 'J53092367', '2023-06-07 14:49:20', NULL, 'IN'),
('6ed37b9204fe11ee', '5d3ce2a104fe11ee', '6941264038818', 'J68522789', '2023-06-07 14:42:12', NULL, 'IN'),
('7cb4d53b04fe11ee', 'a0a9eea4043911ee', '6941264038788', 'G31416614', '2023-06-07 14:42:35', NULL, 'IN'),
('8429374204fa11ee', '3973696904fa11ee', '6954273697129', 'J41971537', '2023-06-07 14:14:10', NULL, 'IN'),
('8429c1fb04fa11ee', '3973696904fa11ee', '6954273697129', 'J41971511', '2023-06-07 14:14:10', NULL, 'IN'),
('842a9aca04fa11ee', '3973696904fa11ee', '6954273697129', 'J41971484', '2023-06-07 14:14:10', NULL, 'IN'),
('842b1fdd04fa11ee', '3973696904fa11ee', '6954273697129', 'J41971509', '2023-06-07 14:14:10', NULL, 'IN'),
('842bec4d04fa11ee', '3973696904fa11ee', '6954273697129', 'J41971580', '2023-06-07 14:14:10', NULL, 'IN'),
('842c849004fa11ee', '3973696904fa11ee', '6954273697129', 'J41971561', '2023-06-07 14:14:10', NULL, 'IN'),
('842d10f804fa11ee', '3973696904fa11ee', '6954273697129', 'J41971480', '2023-06-07 14:14:10', NULL, 'IN'),
('842d983704fa11ee', '3973696904fa11ee', '6954273697129', 'J41971582', '2023-06-07 14:14:10', NULL, 'IN'),
('842e333a04fa11ee', '3973696904fa11ee', '6954273697129', 'J41971578', '2023-06-07 14:14:10', NULL, 'IN'),
('842ec11a04fa11ee', '3973696904fa11ee', '6954273697129', 'J41971574', '2023-06-07 14:14:10', NULL, 'IN'),
('842f429e04fa11ee', '3973696904fa11ee', '6954273697129', 'J41971699', '2023-06-07 14:14:10', NULL, 'IN'),
('842fd0cd04fa11ee', '3973696904fa11ee', '6954273697129', 'J41971557', '2023-06-07 14:14:10', NULL, 'IN'),
('843056e304fa11ee', '3973696904fa11ee', '6954273697129', 'J41971571', '2023-06-07 14:14:10', NULL, 'IN'),
('8430d6cb04fa11ee', '3973696904fa11ee', '6954273697129', 'J41971565', '2023-06-07 14:14:10', NULL, 'IN'),
('865ddf0c04f911ee', 'c7e137dd04f711ee', '6941264098102', 'G27608025', '2023-06-07 14:07:04', NULL, 'IN'),
('865ea13a04f911ee', 'c7e137dd04f711ee', '6941264098102', 'E03979188', '2023-06-07 14:07:04', NULL, 'IN'),
('865f818604f911ee', 'c7e137dd04f711ee', '6941264098102', 'G27608034', '2023-06-07 14:07:04', NULL, 'IN'),
('865fe94104f911ee', 'c7e137dd04f711ee', '6941264098102', 'G27608031', '2023-06-07 14:07:04', NULL, 'IN'),
('866082ab04f911ee', 'c7e137dd04f711ee', '6941264098102', 'E03979177', '2023-06-07 14:07:04', NULL, 'IN'),
('8660f8e204f911ee', 'c7e137dd04f711ee', '6941264098102', 'G27608214', '2023-06-07 14:07:04', NULL, 'IN'),
('866172fc04f911ee', 'c7e137dd04f711ee', '6941264098102', 'G27607658', '2023-06-07 14:07:04', NULL, 'IN'),
('8661ee7204f911ee', 'c7e137dd04f711ee', '6941264098102', 'G27607970', '2023-06-07 14:07:04', NULL, 'IN'),
('86624f7c04f911ee', 'c7e137dd04f711ee', '6941264098102', 'E26144635', '2023-06-07 14:07:04', NULL, 'IN'),
('96cd85b604fe11ee', '59214453043b11ee', '6941264086765', 'J92613965', '2023-06-07 14:43:19', NULL, 'IN'),
('9e1e749504fd11ee', '500047ec043711ee', '6954273682309', 'G63433641', '2023-06-07 14:36:22', NULL, 'IN'),
('a72a0c8604fe11ee', 'bf0c1350043b11ee', '6941264071822', 'J53777762', '2023-06-07 14:43:46', NULL, 'IN'),
('ab9b408304fd11ee', '21bcd53d043711ee', '6954273694562', 'G57975334', '2023-06-07 14:36:44', NULL, 'IN'),
('ad31a68804fb11ee', 'e9b3ee96043611ee', '6954273694111', 'J37072744', '2023-06-07 14:22:28', NULL, 'IN'),
('be97b0c104fe11ee', '9af3315f043b11ee', '6941264071846', 'J53092367', '2023-06-07 14:44:26', NULL, 'IN'),
('c005642c04fd11ee', 'aeb07b9e043611ee', '6954273681180', 'F88165465', '2023-06-07 14:37:18', NULL, 'IN'),
('c2d0fed404fb11ee', '8b14abd5043b11ee', '6941264052449', 'G04933770', '2023-06-07 14:23:04', NULL, 'IN'),
('cce2986304fc11ee', 'b2227b1304fc11ee', '6954273694005', 'F92729991', '2023-06-07 14:30:31', NULL, 'IN'),
('cce3fa7404fc11ee', 'b2227b1304fc11ee', '6954273694005', 'J81805610', '2023-06-07 14:30:31', NULL, 'IN'),
('d597a4a704fb11ee', '75f3dc79043c11ee', '6954273697242', 'F41448509', '2023-06-07 14:23:36', NULL, 'IN'),
('f3253e6304fa11ee', '3adade66043611ee', '6954273682446', 'E13288569', '2023-06-07 14:17:16', NULL, 'IN'),
('f325cf0b04fa11ee', '3adade66043611ee', '6954273682446', 'E13288519', '2023-06-07 14:17:16', NULL, 'IN'),
('f997703004f911ee', 'dcc32f65043711ee', '6954273682194', 'J35572307', '2023-06-07 14:10:17', NULL, 'IN'),
('f9980c8404f911ee', 'dcc32f65043711ee', '6954273682194', 'G42985934', '2023-06-07 14:10:17', NULL, 'IN'),
('f9989a8b04f911ee', 'dcc32f65043711ee', '6954273682194', 'E62640985', '2023-06-07 14:10:17', NULL, 'IN'),
('f999c85c04f911ee', 'dcc32f65043711ee', '6954273682194', 'G42985925', '2023-06-07 14:10:17', NULL, 'IN');

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

--
-- Dumping data for table `stocks`
--

INSERT INTO `stocks` (`STOCKS_ID`, `PRODUCT_ID`, `DATE_TODAY`, `IN`, `OUT`) VALUES
('0ed8d44d04ff11ee', '44eaea8c043811ee', '2023-06-07', 3, 0),
('1c2f85d804ff11ee', '2db94f65043811ee', '2023-06-07', 1, 0),
('21439d7d04fe11ee', '10c83ced04fe11ee', '2023-06-07', 1, 0),
('32d44b7a04fc11ee', '218fa7e004fc11ee', '2023-06-07', 1, 0),
('3332df0804fb11ee', '17e6211a04fb11ee', '2023-06-07', 2, 0),
('5bcd7ffc04fc11ee', 'a7d6749d043b11ee', '2023-06-07', 1, 0),
('61b9986704fd11ee', '1355ff36043711ee', '2023-06-07', 1, 0),
('672b24a004fb11ee', '2b9e71d0043611ee', '2023-06-07', 10, 0),
('6ed2d6b104fe11ee', '5d3ce2a104fe11ee', '2023-06-07', 1, 0),
('7cb2a76304fe11ee', 'a0a9eea4043911ee', '2023-06-07', 1, 0),
('84276ce104fa11ee', '3973696904fa11ee', '2023-06-07', 14, 0),
('865c083504f911ee', 'c7e137dd04f711ee', '2023-06-07', 9, 0),
('96cbbd5404fe11ee', '59214453043b11ee', '2023-06-07', 1, 0),
('9e1c790e04fd11ee', '500047ec043711ee', '2023-06-07', 1, 0),
('a72850a504fe11ee', 'bf0c1350043b11ee', '2023-06-07', 1, 0),
('ab99362e04fd11ee', '21bcd53d043711ee', '2023-06-07', 1, 0),
('ad2fda0804fb11ee', 'e9b3ee96043611ee', '2023-06-07', 1, 0),
('be95dde904fe11ee', '9af3315f043b11ee', '2023-06-07', 2, 0),
('c003318804fd11ee', 'aeb07b9e043611ee', '2023-06-07', 1, 0),
('c2cefa6804fb11ee', '8b14abd5043b11ee', '2023-06-07', 1, 0),
('cce21e9f04fc11ee', 'b2227b1304fc11ee', '2023-06-07', 3, 0),
('d597317104fb11ee', '75f3dc79043c11ee', '2023-06-07', 1, 0),
('f32318e204fa11ee', '3adade66043611ee', '2023-06-07', 2, 0),
('f9951fbe04f911ee', 'dcc32f65043711ee', '2023-06-07', 4, 0);

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
