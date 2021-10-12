-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-09-2021 a las 23:36:53
-- Versión del servidor: 10.4.20-MariaDB
-- Versión de PHP: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";precio


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `reacondicionados`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reacondicionados`
--

CREATE TABLE `reacondicionados` (
  `id` int(11) NOT NULL,
  `marca` varchar(10) DEFAULT NULL,
  `modelo` varchar(21) DEFAULT NULL,
  `precio` varchar(6) DEFAULT NULL,
  `codigo` varchar(11) DEFAULT NULL,
  `almacenamiento` varchar(14) DEFAULT NULL,
  `pantalla` varchar(8) DEFAULT NULL,
  `ram` varchar(6) DEFAULT NULL,
  `bateria` varchar(9) DEFAULT NULL,
  `stock` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `reacondicionados`
--

INSERT INTO `reacondicionados` (`id`, `marca`, `modelo`, `precio`, `codigo`, `almacenamiento`, `pantalla`, `ram`, `bateria`, `stock`) VALUES
(1, 'marca', 'modelo', 'precio', 'codigo', 'almacenamiento', 'pantalla', 'ram', 'bateria', 0),
(2, 'Motorola ', 'Spice Key', '1299', 'XT316', '256Mb', '2.8\"', '512Mb', '1420mAh', 0),
(3, 'Motorola ', 'Moto D1', '1463', 'XT915', '4Gb', '4\"', '1Gb', '2000mAh', 0),
(4, 'Motorola ', 'Moto D3', '1710', 'XT919', '4Gb', '4\"', '1Gb', '2000mAh', 0),
(5, 'Motorola', 'Moto X', '4240', 'XT1058', '16Gb', '4.7\"', '2Gb', '2200mAh', 0),
(6, 'Motorola', 'Moto X 2014', '4871', 'XT1093', '16Gb', '5.2\"', '2Gb', '2300mAh', 0),
(7, 'Motorola', 'Moto G1', '3341', 'XT1032', '8Gb', '4\"', '1Gb', '2070mAh', 0),
(8, 'Motorola', 'Moto G1 LTE', '3379', 'XT1040', '8Gb', '4.5\"', '1Gb', '2070mAh', 0),
(9, 'Motorola', 'Moto G2', '3899', 'XT1063', '8Gb', '5\"', '1Gb', '2070mAh', 0),
(10, 'Motorola', 'Moto G2 Dual', '4221', 'XT1068', '16Gb', '5\"', '1Gb', '2070mAh', 0),
(11, 'Motorola', 'Moto E', '2828', 'XT1021', '4Gb', '4.3\"', '1Gb', '1980mAh', 0),
(12, 'Motorola', 'Moto E 2015', '4160', 'XT1506', '8Gb', '4.5\"', '1Gb', '2390mAh', 0),
(13, 'Motorola', 'Moto E2 LTE', '4160', 'XT1527', '8Gb', '4.5\"', '1Gb', '2390mAh', 0),
(14, 'Motorola', 'Moto G2 4G', '4260', 'XT1072', '8Gb', '5\"', '1Gb', '2390mAh', 0),
(15, 'Motorola', 'Moto G3', '5005', 'XT1542', '8Gb', '5\"', '1Gb', '2470mAh', 0),
(16, 'Motorola', 'Moto C', '7566', 'XT1756', '8Gb', '5\"', '1Gb', '2350mAh', 0),
(17, 'Motorola', 'Moto C Plus', '6657', 'XT1725', '16Gb', '5\"', '1Gb', '4000mAh', 0),
(18, 'Motorola', 'Moto G4 Play', '8112', 'XT1601', '16Gb', '5\"', '2Gb', '2800mAh', 0),
(19, 'Motorola', 'Moto G4', '6630', 'XT1621/25', '16Gb', '5.5\"', '2Gb', '3000mAh', 0),
(20, 'Motorola', 'Moto X2', '7280', 'XT1097', '32Gb', '5.2\"', '2Gb', '2300mAh', 0),
(21, 'Motorola', 'Moto E4 Plus', '7930', 'XT1772', '16Gb', '5.5\"', '2Gb', '5000mAh', 0),
(22, 'Motorola', 'Moto G4 Plus', '7150', 'XT1641', '32Gb', '5.5\"', '2GB', '3000mAh', 0),
(23, 'Motorola', 'Moto G5', '9968', 'XT1670', '32Gb', '5\"', '2Gb', '2800mAh', 0),
(24, 'Motorola', 'Moto X Play', '8034', 'XT1563', '32Gb', '5.5\"', '2Gb', '3630mAh', 0),
(25, 'Motorola', 'Moto G5 Plus', '8671', 'XT1680', '32Gb', '5.2', '2Gb', '3000mAh', 0),
(26, 'Motorola', 'Moto G5s Plus', '9815', 'XT1800', '32Gb', '5.5\"', '3Gb', '3000mAh', 0),
(27, 'Motorola', 'Moto G6 Plus', '0', 'XT1926', '64Gb', '5.9\"', '4Gb', '3200mAh', 0),
(28, 'Motorola ', 'Moto X Style', '9525', 'XT1572', '32Gb', '5.7\"', '3Gb', '3000mAh', 0),
(29, 'Motorola ', 'Moto Z Play', '9749', 'XT1635', '32Gb', '5.5\"', '3Gb', '3510mAh', 0),
(30, 'Motorola ', 'Moto Z2 Play', '0', 'XT1710', '64Gb', '5.5\"', '4Gb', '3000mAh', 0),
(31, 'Motorola', 'Moto E5 Play', '0', 'XT1920', '16Gb', '5.2\"', '2Gb', '2800mAh', 0),
(32, 'Motorola ', 'Moto Z RAZR i', '0', 'XT890', '8Gb', '4.3\"', '1Gb', '2000mAh', 0),
(33, 'Alcatel', 'Pixi ', '0', 'OT4007', '512Mb', '3.5\"', '256Mb', '1300mAh', 0),
(34, 'Alcatel', 'PIxi 3  3.5\"', '0', 'OT4013', '4Gb', '4\"', '512Mb', '1300mAh', 0),
(35, 'Alcatel', 'One Touch Pop C1', '2945', 'OT4015', '4Gb', '3.5\"', '512Mb', '1300mAh', 0),
(36, 'Alcatel', 'PIxi 3', '4037', 'OT5017A', '4Gb', '5\"', '512Mb', '1800mAh', 0),
(37, 'Alcatel', 'One Touch Pop C3', '3286', 'OT4033A', '4Gb', '4\"', '512Mb', '1300mAh', 0),
(38, 'Alcatel', 'One Touch Pop 2', '3379', 'OT5042', '8Gb', '4.5\"', '1Gb', '2000mAh', 0),
(39, 'Alcatel', 'One Touch Pop S3', '3249', 'OT5050', '4Gb', '4\"', '1Gb', '2000mAh', 0),
(40, 'Alcatel', 'Idol Mini', '2989', 'OT6012', '4Gb', '4.3\"', '512Mb', '1700mAh', 0),
(41, 'Alcatel', 'One Touch Idol', '3119', 'OT6030', '4Gb', '4.6\"', '1Gb', '1800mAh', 0),
(42, 'Alcatel', 'Idol 2 Mini', '0', 'OT6036', '4Gb', '4.5\"', '1Gb', '2000mAh', 0),
(43, 'Alcatel', 'Idol 3 4.7\"', '4160', 'OT6039', '16Gb', '4.7\"', '1,5Gb', '2000mAh', 0),
(44, 'Alcatel', 'Idol 3 5.5\"', '0', 'OT6045', '16Gb', '5.5\"', '2Gb', '2910mAh', 0),
(45, 'Alcatel', 'One Touch Hero', '0', 'OT8020', '8Gb', '6\"', '2Gb', '3400mAh', 0),
(46, 'Alcatel', 'One Touch Pop C5', '3185', 'OT5037', '2Gb', '4.5\"', '512Mb', '1800mAh', 0),
(47, 'Alcatel', 'One Touch Pop C7', '0', 'OT7040', '4Gb', '5\"', '512Mb', '1900mAh', 0),
(48, 'Alcatel', 'One Touch Pop C7 DUAL', '0', 'OT7040E', '4Gb', '5\"', '512Mb', '1900mAh', 0),
(49, 'Alcatel', 'One Touch Pop C9', '0', 'OT7047', '4Gb', '5.5\"', '1Gb', '2500mAh', 0),
(50, 'Alcatel', 'One Touch U5', '5161', 'OT5044', '8Gb', '5\"', '1Gb', '2050mAh', 0),
(51, 'Alcatel', 'One Touch A3 XL', '0', 'OT9008', '8Gb', '6\"', '1Gb', '3000mAh', 0),
(52, 'Alcatel', 'One Touch A3 Plus', '0', 'OT5049', '16Gb', '5.5\"', '1Gb', '3000mAh', 0),
(53, 'Samsung', 'Galaxy Chat', '1429', 'GT-B5330', '4Gb', '3\"', '512Mb', '1200mAh', 0),
(54, 'Samsung', 'Galaxy S II', '3260', 'GT-i9100', '16Gb', '4.3', '1Gb', '1650mAh', 0),
(55, 'Samsung', 'Galaxy S4 ', '4289', 'GT-I9500', '16Gb', '5\"', '2Gb', '2600mAh', 0),
(56, 'Samsung', 'Galaxy S5 Mini', '6239', 'SM-G800H', '16Gb', '4.5\"', '1.5Gb', '2100mAh', 0),
(57, 'Samsung', 'Galaxy S5', '4980', 'SM-G900H', '16Gb', '5.1\"', '2Gb', '2800mAh', 0),
(58, 'Samsung', 'Galaxy Grand Prime', '5470', 'SM-G530/1', '8Gb', '5\"', '1Gb', '2600mAh', 0),
(59, 'Samsung', 'Galaxy Core Prime', '3770', 'SM-G360', '8Gb', '4.5\"', '1Gb', '2000mAh', 0),
(60, 'Samsung', 'Galaxy Core ', '3240', 'GT-I8260', '8Gb', '4.3\"', '512Mb', '1800mAh', 0),
(61, 'Samsung', 'Galaxy Fame Lite', '1819', 'GT-S6790', '4Gb', '3.5\"', '512Mb', '1300 mAh', 0),
(62, 'samsung', 'Galaxy Ace 4 LTE', '3249', 'GT-G313', '4Gb', '4\"', '512Mb', '1500 mAh', 0),
(63, 'Samsung', 'Galaxy Core 2', '3240', 'SM-G355', '4Gb', '4.5\"', '768Mb', '2000mAh', 0),
(64, 'Samsung', 'J1 2016 Mini Prime', '3192', 'SM-J106', '8Gb', '4.5\"', '1Gb', '2050 mAh', 0),
(65, 'Samsung', 'J1 Mini', '3088', 'SM-J105', '8Gb', '4\"', '768Mb', '1500 mAh', 0),
(66, 'Samsung', 'J1 LTE', '3302', 'SM-J100', '4Gb', '4.3\"', '512Mb', '1850mAh', 0),
(67, 'Samsung', 'Galaxy J1 Ace', '4419', 'SM-J111', '8Gb', '4.3\"', '1Gb', '1900mAh', 0),
(68, 'Samsung', 'Galaxy J1 Ace', '4419', 'SM-J110', '8Gb', '4.3\"', '1Gb', '1900mAh', 0),
(69, 'Samsung', 'Galaxy J2 ', '4703', 'SM-J200', '8Gb', '4.7\"', '1Gb', '2000mAh', 0),
(70, 'Samsung', 'Galaxy J2 Prime', '5329', 'SM-G532', '8Gb', '5\"', '1.5Gb', '2600mAh', 0),
(71, 'Samsung', 'Galaxy J3 2016', '5642', 'SM-J320', '8Gb', '5\"', '1.5Gb', '2600mAh', 0),
(72, 'Samsung', 'Galaxy J5 2015', '6513', 'SM-J500', '16Gb', '5\"', '', '', 0),
(73, 'Samsung', 'Galaxy J5 2016', '7049', 'SM-J510', '16Gb', '5.2\"', '2Gb', '3100Mah', 0),
(74, 'Samsung', 'Galaxy J5 Prime', '7783', 'SM-G570', '16Gb', '5\"', '2Gb', '2400mAh', 0),
(75, 'Samsung', 'A3 2015', '5837', 'SM-A300', '16Gb', '4.5\"', '1Gb', '1900mAh', 0),
(76, 'Samsung', 'A3 2016', '5967', 'SM-A310', '16Gb', '4.7\"', '1.5Gb', '2300mAh', 0),
(77, 'Samsung', 'A3 2017', '6357', 'SM-A320', '16Gb', '4.7\"', '2Gb', '2350mAh', 0),
(78, 'Samsung', 'A5 2015', '6900', 'SM-A500', '16Gb', '5\"', '2Gb', '2300mAh', 0),
(79, 'Samsung', 'A5 2016', '7173', 'SM-A510', '16Gb', '5.2\"', '2Gb', '2900 mAh', 0),
(80, 'Samsung', 'A5 2017', '7241', 'SM-A520', '32Gb', '5.2\"', '3Gb', '3000mAh', 0),
(81, 'Samsung', 'Galaxy J7 2015', '6999', 'SM-J700', '16Gb', '5\"', '2Gb', '3000mAh', 0),
(82, 'Samsung', 'Galaxy J7 2016', '7850', 'SM-J710', '16Gb', '5.5\"', '2Gb', '3300mAh', 0),
(83, 'Samsung', 'J7 Prime', '8500', 'SM-G610', '16Gb', '5.5\"', '3Gb', '3300 mAh', 0),
(84, 'Samsung', 'S6 Flat', '12528', 'SM-G920', '32Gb', '5.1\"', '3Gb', '2550 mAh', 0),
(85, 'Samsung', 'S6 Edge', '10798', 'SM-G925', '32Gb', '5.1\"', '3Gb', '2600mAh', 0),
(86, 'Samsung', 'S6 Edge +', '11998', 'SM-G928', '32Gb', '5.7\"', '4Gb', '3000 mAh', 0),
(87, 'Samsung', 'S7 Flat', '12800', 'SM-G930', '32Gb', '5.1\"', '4Gb', '3000 mAh', 0),
(88, 'Samsung', 'S7 Edge', '12999', 'SM-G935', '128Gb', '5.5\"', '4Gb', '3600 mAh', 0),
(89, 'Samsung', 'A7 2017', '12132', 'SM-A720', '32Gb', '5.7\"', '3Gb', '3600 mAh', 0),
(90, 'Samsung', 'S8', '22165', 'SM-G950', '64Gb', '5.8\"', '4Gb', '3000 mAh', 0),
(91, 'Samsung', 'S8 +', '23919', 'SM-G955', '64Gb', '6.2\"', '4Gb', '3500 mAh', 0),
(92, 'Samsung', 'Note 3', '8775', 'SM-N900', '16Gb', '5.7\"', '3Gb', '3200 mAh', 0),
(93, 'Samsung', 'Note 4', '8839', 'SM-N910', '32Gb', '5.7\"', '3Gb', '3220 mAh', 0),
(94, 'Samsung', 'Note 5', '8905', 'SM-N920', '32Gb', '5.7\"', '4Gb', '3000 mAh', 0),
(95, 'Samsung', 'Note 8', '29000', 'SM-N950', '64Gb', '6.3\"', '6Gb', '3300 mAh', 0),
(96, 'Samsung', 'A70', '', 'SM-A570', '128Gb', '6.7\"', '6Gb', '4500mAh', 0),
(97, 'BlackBerry', 'Curve 9320', '1430', '9320', '512 Mb', '2.46\"', '256Mb', '1450mAh', 0),
(98, 'BlackBerry', 'Z10', '2080', 'Z10 3G', '16Gb', '4.2\"', '2Gb', '1800mAh', 0),
(99, 'Huawei', 'P8 Lite', '5480', 'ALE-L23', '16Gb', '5\"', '2Gb', '2200mAh', 0),
(100, 'Huawei', 'Boulder U8350', '0', 'U8350', '512Mb', '2.6\"', '256Mb', '1200mAh', 0),
(101, 'Huawei', 'G6609', '0', 'G6609', '-', '2.4\"', '-', '1050mAh', 0),
(102, 'Huawei', 'Y200', '2210', 'U8655', '512Mb', '3.5\"', '256Mb', '1250mAh', 0),
(103, 'Huawei', 'Y210', '2210', 'Y210', '512Mb', '3.5\"', '256Mb', '1700mAh', 0),
(104, 'Huawei', 'Y221', '2275', 'Y221', '512Mb', '3.5\"', '256Mb', '1700mAh', 0),
(105, 'Huawei', 'Ascend G300', '3710', 'U8815', '4Gb', '4\"', '512Mb', '1500mAh', 0),
(106, 'Huawei', 'Ascend G620', '4843', 'G620S-L03A', '8Gb', '5\"', '1Gb', '2000mAh', 0),
(107, 'Huawei', 'Y300', '2340', 'Y300', '4Gb', '4\"', '512Mb', '1730mAh', 0),
(108, 'Huawei', 'Y321', '2340', 'Y321', '4Gb', '4\"', '512Mb', '1700mAh', 0),
(109, 'Huawei', 'Y330', '2340', 'Y330', '4Gb', '4\"', '512Mb', '1500mAh', 0),
(110, 'Huawei', 'Y600', '2340', 'Y600', '4Gb', '5\"', '512Mb', '2100mAh', 0),
(111, 'Huawei', 'Y6 II', '5460', 'CAM-L03', '16Gb', '5.5\"', '2Gb', '3000mAh', 0),
(112, 'Huawei', 'Y6', '4940', 'SCL-L03', '8Gb', '5\"', '1Gb', '2200mAh', 0),
(113, 'Huawei', 'P9', '8177', 'EVA-L09', '32Gb', '5.2\"', '3Gb', '3000mAh', 0),
(114, 'Huawei', 'P9 Lite', '6760', 'VNS-L53', '16Gb', '5.2\"', '3Gb', '3000mAh', 0),
(115, 'Huawei', 'Mate 8', '9056', 'NXT-L09', '32Gb', '6\"', '3Gb', '4000mAh', 0),
(116, 'Sony', 'Xperia M', '3346', 'C1904', '4Gb', '4\"', '1Gb', '1750mAh', 0),
(117, 'Sony', 'Xperia L', '3346', 'C2104', '8Gb', '4.3\"', '1Gb', '1750mAh', 0),
(118, 'Sony', 'Xperia E4 3G', '3556', 'E2104/E2105', '8Gb', '5\"', '1Gb', '2400mAh', 0),
(119, 'Sony', 'Xperia M4 Aqua', '5980', 'E2306', '16Gb', '5\"', '2Gb', '2400mAh', 0),
(120, 'Sony', 'Xperia M2 3G', '4485', 'D2306', '8Gb', '4.8\"', '1Gb', '2300mAh', 0),
(121, 'Sony', 'Xperia M2 4G', '4615', 'D2305', '8Gb', '4.8\"', '1Gb', '2300mAh', 0),
(122, 'Sony', 'XPeria M5', '8060', 'E5606', '16Gb', '5\"', '3Gb', '2600mAh', 0),
(123, 'Sony', 'XPeria M4', '5460', 'E2305', '16Gb', '5\"', '2Gb', '2400mAh', 0),
(124, 'Sony', 'Xperia Z3', '6955', 'D6616', '32Gb', '5.2\"', '3Gb', '3100mAh', 0),
(125, 'Sony', 'Xperia XA', '5525', 'F3113', '16Gb', '5\"', '2Gb', '2300mAh', 0),
(126, 'Sony', 'Xperia XA1', '7657', 'G3116', '32Gb', '5\"', '3Gb', '2300mAh', 0),
(127, 'Sony', 'Xperia XA1 Plus', '8060', 'G3423', '', '', '', '', 0),
(128, 'Sony', 'Xperia L1', '5980', 'G3313', '16Gb', '5.5\"', '2Gb', '2620mAh', 0),
(129, 'Sony', 'Xperia X', '8957', 'F5121', '32Gb', '5\"', '3Gb', '2620mAh', 0),
(130, 'Sony', 'Xperia Z1', '5979', '', '16Gb', '5\"', '2Gb', '3000 mAh', 0),
(131, 'LG', 'Optimus L3', '1560', 'E400', '1Gb', '3.2\"', '384Mb', '1500 mAh', 0),
(132, 'LG', 'Optimus L7', '1820', 'P705', '4Gb', '4.3\"', '512 MB', '1700 mAh', 0),
(133, 'LG', 'Optimus L7II', '1820', 'P712', '4Gb', '4.3\"', '768 MB', '2460 mAh', 0),
(134, 'LG', 'Optimus L70', '2990', 'D320', '4Gb', '4.5\"', '1Gb', '2100 mAh', 0),
(135, 'LG', 'Joy / Kite', '3276', 'H221', '4Gb', '4\"', '512Mb', '1900 mAh', 0),
(136, 'LG', 'Leon', '4225', 'H340', '8Gb', '4.5\"', '1Gb', '1820 mAh', 0),
(137, 'LG', 'Spirit', '4537', 'H440', '8Gb', '4.7\"', '1Gb', '2100 mAh', 0),
(138, 'LG', 'G2 Mini 4G', '3757', 'D625', '8Gb', '4.7\"', '1Gb', '2440 mAh', 0),
(139, 'LG', 'G2 Mini 3G', '3757', 'D610', '8Gb', '4.7\"', '1Gb', '2440 mAh', 0),
(140, 'LG', 'G3 Stylus', '4680', 'D722', '8Gb', '5\"', '1Gb', '2540 mAh', 0),
(141, 'LG', 'G Pro Lite', '4485', 'D681', '8Gb', '5.5?', '1Gb', '3140 mAh', 0),
(142, 'LG', 'K4', '4290', 'K120', '8Gb', '4.5\"', '1Gb', '	1940 mAh', 0),
(143, 'LG', 'K4 2017', '5824', 'X230', '8Gb', '5\"', '1Gb', '2500 mAh', 0),
(144, 'LG', 'G2 Mini', '5070', 'D806', '16Gb', '5.2\"', '2Gb', '3000 mAh', 0),
(145, 'LG', 'G3', '5460', 'D855', '16Gb', '5.5\"', '2Gb', '3000 mAh', 0),
(146, 'LG', 'G4 Beat', '5772', 'H735', '16Gb', '5.2\"', '1.5Gb', '2300 mAh', 0),
(147, 'LG', 'Q6', '7280', 'M700', '32Gb', '5.5\"', '3Gb', '3000 mAh', 0),
(148, 'LG', 'F60', '3887', 'D390', '4Gb', '4.5\"', '1Gb', '2100mAh', 0),
(149, 'LG', 'F60', '4485', 'D390', '8Gb', '4.5\"', '1Gb', '2100mAh', 0),
(150, 'LG', 'Opimus G', '6916', 'E987', '32Gb', '4.7\"', '2Gb', '2100mAh', 0),
(151, 'LG', 'Zero', '6214', 'H650', '16Gb', '5\"', '1.5Gb', '2050 mAh', 0),
(152, 'LG', 'K8 4G', '7560', 'K350', '16Gb', '5\"', '1Gb', '2500mAh', 0),
(153, 'LG', 'K8 2017', '7628', 'X240', '16Gb', '5\"', '1.5Gb', '2500 mAh', 0),
(154, 'LG', 'K10 2016', '8658', 'K430', '16Gb', '5.3\"', '1.5Gb', '2300 mAh', 0),
(155, 'LG', 'G5', '6890', 'H850', '32Gb', '5.3\"', '4Gb', '2300 mAh', 0),
(156, 'LG', 'G4 Stylus', '5720', 'H635', '8Gb', '5.7\"', '1Gb', '3000 mAh', 0),
(157, 'LG', 'G4 Stylus TV 3G', '5902', 'H540', '8Gb', '5.7\"', '1Gb', '3000 mAh', 0),
(158, 'LG', 'K8 3G', '7027', 'K340', '8Gb', '5.3\"', '1Gb', '2300 mAh', 0),
(159, 'LG', 'K10 2017', '8564', 'M250', '16Gb', '5.3\"', '2Gb', ' 2800 mAh', 0),
(160, 'LG', 'G4', '7397', 'H815', '32Gb', '5.5\"', '3Gb', '3000 mAh', 0),
(161, 'Quamtun', 'Mini', '2340', 'Mini', '8Gb', '4\"', '512Mb', '1500 mAh', 0),
(162, 'BGH', 'JOY A7G', '2373', 'A7G', '4Gb', '4.5\"', '512Mb', '1500 mAh', 0),
(163, 'BGH', 'AXSIIS', '3835', 'AXSIIS', '8Gb', '5\"', '1Gb', '2400 mAh', 0),
(164, 'BGH', 'V6', '6499', 'V6', '16Gb', '5\"', '2Gb', '2200 mAh', 0),
(165, 'Apple', 'iPhone 5s 16Gb', '7150', 'A1453', '16Gb', '4\"', '1Gb', '1560mAh', 0),
(166, 'Apple', 'iPhone 5s 32Gb', '12740', 'A1453', '32Gb', '4\"', '1Gb', '1560mAh', 0),
(167, 'Apple', 'iPhone 6 16Gb', '14299', 'A1586', '16Gb', '4.7\"', '1Gb', '1810 mAh', 0),
(168, 'Apple', 'iPhone 6s 32Gb', '15600', 'A1633', '32Gb', '4.7\"', '2Gb', '1715mAh', 0),
(169, 'Apple', 'iPhone 6s 64Gb', '23140', 'A1688', '64Gb', '4.7\"', '2Gb', '1715mAh', 0),
(170, 'Apple', 'iPhone 6 64Gb', '16640', 'A1549', '64Gb', '4.7\"', '1Gb', '1810mAh', 0),
(171, 'NOKIA', 'Lumia 635', '1169', 'RM-975', '8Gb', '4.5\"', '1Gb', '1830 mAh', 0),
(172, 'NOKIA', 'Lumia 208', '909', 'RM-950', '256Mb', '2.4\"', '64Mb', '1020 mAh', 0),
(173, 'Samsung', 'Galaxy A3', '4850', 'SM-A300', '16Gb', '4.5\"', '1Gb', '1900mAh', 0),
(174, 'Samsung', 'Galaxy J7 2016', '6540', 'SM-J710', '', '', '', '', 0),
(175, 'Samsung', 'S6 Flat', '7999', 'SM-G920', '32Gb', '5.1\"', '3Gb', '2550 mAh', 0),
(176, 'Samsung', 'S7 Edge', '6999', 'SM-G935', '128Gb', '5.5\"', '4Gb', '3600 mAh', 0),
(177, 'Samsung', 'S6 Edge', '8998', 'SM-G925', '32Gb', '5.1\"', '3Gb', '2600mAh', 0),
(178, 'Samsung', 'S6 Edge +', '9999', 'SM-G928', '32Gb', '5.7\"', '4Gb', '3000mAh', 0),
(179, 'Samsung', 'S8', '16999', 'SM-G950', '64Gb', '5.8\"', '4Gb', '3000 mAh', 0),
(180, 'Samsung', 'Note 8', '21999', 'SM-N950', '64Gb', '6.3\"', '6Gb', '3300 mAh', 0),
(181, 'Samsung', 'G530', '4460', 'SM-N950', '64Gb', '6.3\"', '6Gb', '3300 mAh', 0),
(182, 'LG', 'Zero', '3780', 'H650', '16Gb', '5\"', '1.5Gb', '2050 mAh', 0),
(183, 'Samsung', 'J5 Prime', '6480', 'SM-G570', '16Gb', '5\"', '2Gb', '2400 mAh', 0),
(184, 'Samsung', 'Galaxy J2 Prime', '4440', 'SM-G532', '8Gb', '5\"', '1.5Gb', '2600mAh', 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `reacondicionados`
--
ALTER TABLE `reacondicionados`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `reacondicionados`
--
ALTER TABLE `reacondicionados`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=185;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
