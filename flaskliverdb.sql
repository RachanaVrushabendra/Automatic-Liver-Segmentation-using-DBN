-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 26, 2024 at 03:34 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `flaskkidneydb`
--

-- --------------------------------------------------------

--
-- Table structure for table `predictdata`
--

CREATE TABLE `predictdata` (
  `id` int(10) NOT NULL,
  `age` varchar(255) DEFAULT NULL,
  `bloodpressure` varchar(255) DEFAULT NULL,
  `sg` varchar(255) DEFAULT NULL,
  `albumin` varchar(255) DEFAULT NULL,
  `sugar` varchar(255) DEFAULT NULL,
  `redbloodcells` varchar(255) DEFAULT NULL,
  `puscells` varchar(255) DEFAULT NULL,
  `puscellclumps` varchar(255) DEFAULT NULL,
  `bacteria` varchar(255) DEFAULT NULL,
  `bloodglurand` varchar(255) DEFAULT NULL,
  `bloodurea` varchar(255) DEFAULT NULL,
  `serumcreati` varchar(255) DEFAULT NULL,
  `sod` varchar(255) DEFAULT NULL,
  `potassium` varchar(255) DEFAULT NULL,
  `hemo` varchar(255) DEFAULT NULL,
  `pcv` varchar(255) DEFAULT NULL,
  `whitebloodcellcount` varbinary(255) DEFAULT NULL,
  `rc` varchar(255) DEFAULT NULL,
  `hypertension` varchar(255) DEFAULT NULL,
  `diabmellitus` varchar(255) DEFAULT NULL,
  `coroartdisease` varchar(255) DEFAULT NULL,
  `appet` varchar(255) DEFAULT NULL,
  `pedaldema` varchar(255) DEFAULT NULL,
  `anaemia` varchar(255) DEFAULT NULL,
  `classification` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `predictdata`
--

INSERT INTO `predictdata` (`id`, `age`, `bloodpressure`, `sg`, `albumin`, `sugar`, `redbloodcells`, `puscells`, `puscellclumps`, `bacteria`, `bloodglurand`, `bloodurea`, `serumcreati`, `sod`, `potassium`, `hemo`, `pcv`, `whitebloodcellcount`, `rc`, `hypertension`, `diabmellitus`, `coroartdisease`, `appet`, `pedaldema`, `anaemia`, `classification`) VALUES
(1, '48', '70', '1.005', '4', '0', 'normal', 'abnormal', 'present', 'notpresent', '117', '56', '3.8', '111', '2.5', '11.2', '32', 0x36373030, '3.9', 'yes', 'no', 'no', 'poor', 'yes', 'yes', 'ckd'),
(2, '53', '90', '1.020', '2', '0', 'abnormal', 'abnormal', 'present', 'notpresent', '70', '107', '7.2', '114', '3.7', '9.5', '29', 0x3132313030, '3.7', 'yes', 'yes', 'no', 'poor', 'no', 'yes', 'ckd'),
(3, '63', '70', '1.010', '3', '0', 'abnormal', 'abnormal', 'present', 'notpresent', '380', '60', '2.7', '131', '4.2', '10.8', '32', 0x34353030, '3.8', 'yes', 'yes', 'no', 'poor', 'yes', 'no', 'ckd'),
(4, '68', '80', '1.010', '3', '2', 'normal', 'abnormal', 'present', 'present', '157', '90', '4.1', '130', '6.4', '5.6', '16', 0x3131303030, '2.6', 'yes', 'yes', 'yes', 'poor', 'yes', 'no', 'ckd'),
(5, '61', '80', '1.015', '2', '0', 'abnormal', 'abnormal', 'notpresent', 'notpresent', '173', '148', '3.9', '135', '5.2', '7.7', '24', 0x39323030, '3.2', 'yes', 'yes', 'yes', 'poor', 'yes', 'yes', 'ckd'),
(6, '48', '80', '1.025', '4', '0', 'normal', 'abnormal', 'notpresent', 'notpresent', '95', '163', '7.7', '136', '3.8', '9.8', '32', 0x36393030, '3.4', 'yes', 'no', 'no', 'good', 'no', 'yes', 'ckd'),
(7, '69', '70', '1.010', '3', '4', 'normal', 'abnormal', 'notpresent', 'notpresent', '264', '87', '2.7', '130', '4.0', '12.5', '37', 0x39363030, '4.1', 'yes', 'yes', 'yes', 'good', 'yes', 'no', 'ckd'),
(8, '73', '70', '1.005', '0', '0', 'normal', 'normal', 'notpresent', 'notpresent', '70', '32', '0.9', '125', '4.0', '10.0', '29', 0x3138393030, '3.5', 'yes', 'yes', 'no', 'good', 'yes', 'no', 'ckd'),
(9, '73', '80', '1.020', '2', '0', 'abnormal', 'abnormal', 'notpresent', 'notpresent', '253', '142', '4.6', '138', '5.8', '10.5', '33', 0x37323030, '4.3', 'yes', 'yes', 'yes', 'good', 'no', 'no', 'ckd'),
(10, '46', '60', '1.010', '1', '0', 'normal', 'normal', 'notpresent', 'notpresent', '163', '92', '3.3', '141', '4.0', '9.8', '28', 0x3134363030, '3.2', 'yes', 'yes', 'no', 'good', 'no', 'no', 'ckd'),
(11, '56', '90', '1.015', '2', '0', 'abnormal', 'abnormal', 'notpresent', 'notpresent', '129', '107', '6.7', '131', '4.8', '9.1', '29', 0x36343030, '3.4', 'yes', 'no', 'no', 'good', 'no', 'no', 'ckd'),
(12, '48', '80', '1.005', '4', '0', 'abnormal', 'abnormal', 'notpresent', 'present', '133', '139', '8.5', '132', '5.5', '10.3', '36', 0x0936323030, '4.0', 'no', 'yes', 'no', 'good', 'yes', 'no', 'ckd'),
(13, '59', '70', '1.010', '3', '0', 'normal', 'abnormal', 'notpresent', 'notpresent', '76', '186', '15.0', '135', '7.6', '7.1', '22', 0x33383030, '2.1', 'yes', 'no', 'no', 'poor', 'yes', 'yes', 'ckd'),
(14, '63', '100', '1.010', '2', '2', 'normal', 'normal', 'notpresent', 'present', '280', '35', '3.2', '143', '3.5', '13.0', '40', 0x39383030, '4.2', 'yes', 'no', 'yes', 'good', 'no', 'no', 'ckd'),
(15, '56', '70', '1.015', '4', '1', 'abnormal', 'normal', 'notpresent', 'notpresent', '210', '26', '1.7', '136', '3.8', '16.1', '52', 0x3132353030, '5.6', 'no', 'no', 'no', 'good', 'no', 'no', 'ckd'),
(16, '71', '70', '1.010', '3', '0', 'normal', 'abnormal', 'present', 'present', '219', '82', '3.6', '133', '4.4', '10.4', '33', 0x35363030, '3.6', 'yes', 'yes', 'yes', 'good', 'no', 'no', 'ckd'),
(17, '73', '100', '1.010', '3', '2', 'abnormal', 'abnormal', 'present', 'notpresent', '295', '90', '5.6', '140', '2.9', '9.2', '30', 0x37303030, '3.2', 'yes', 'yes', 'yes', 'poor', 'no', 'no', 'ckd'),
(18, '71', '60', '1.015', '4', '0', 'normal', 'normal', 'notpresent', 'notpresent', '118', '125', '5.3', '136', '4.9', '11.4', '35', 0x3135323030, '4.3', 'yes', 'yes', 'no', 'poor', 'yes', 'no', 'ckd'),
(19, '52', '90', '1.015', '4', '3', 'normal', 'abnormal', 'notpresent', 'notpresent', '224', '166', '5.6', '133', '47.0', '8.1', '23', 0x35303030, '2.9', 'yes', 'yes', 'no', 'good', 'no', 'yes', 'ckd'),
(20, '50', '90', '1.010', '2', '0', 'normal', 'abnormal', 'present', 'present', '128', '208', '9.2', '134', '4.8', '8.2', '22', 0x3136333030, '2.7', 'no', 'no', 'no', 'poor', 'yes', 'yes', 'ckd'),
(21, '70', '100', '1.015', '4', '0', 'normal', 'normal', 'notpresent', 'notpresent', '118', '125', '5.3', '136', '4.9', '12.0', '37', 0x0938343030, '8.0', 'yes', 'no', 'no', 'good', 'no', 'no', 'ckd'),
(22, '60', '90', '1.010', '2', '0', 'abnormal', 'normal', 'notpresent', 'notpresent', '105', '53', '2.3', '136', '5.2', '11.1', '33', 0x3130353030, '4.1', 'no', 'no', 'no', 'good', 'no', 'no', 'ckd'),
(23, '60', '60', '1.010', '3', '1', 'normal', 'abnormal', 'present', 'notpresent', '288', '36', '1.7', '130', '3.0', '7.9', '25', 0x3135323030, '3.0', 'yes', 'no', 'no', 'poor', 'no', 'yes', 'ckd'),
(24, '55', '90', '1.010', '2', '1', 'abnormal', 'abnormal', 'notpresent', 'notpresent', '273', '235', '14.2', '132', '3.4', '8.3', '22', 0x3134363030, '2.9', 'yes', 'yes', 'no', 'poor', 'yes', 'yes', 'ckd'),
(25, '62', '70', '1.025', '3', '0', 'normal', 'abnormal', 'notpresent', 'notpresent', '122', '42', '1.7', '136', '4.7', '12.6', '39', 0x37393030, '3.9', 'yes', 'yes', 'no', 'good', 'no', 'no', 'ckd'),
(26, '59', '80', '1.010', '1', '0', 'abnormal', 'normal', 'notpresent', 'notpresent', '303', '35', '1.3', '122', '3.5', '10.4', '35', 0x3130393030, '4.3', 'no', 'yes', 'no', 'poor', 'no', 'no', 'ckd'),
(27, '83', '70', '1.020', '3', '0', 'normal', 'normal', 'notpresent', 'notpresent', '102', '60', '2.6', '115', '5.7', '8.7', '26', 0x3132383030, '3.1', 'yes', 'no', 'no', 'poor', 'no', 'yes', 'ckd'),
(28, '21', '90', '1.010', '4', '0', 'normal', 'abnormal', 'present', 'present', '107', '40', '1.7', '125', '3.5', '8.3', '23', 0x3132343030, '3.9', 'no', 'no', 'no', 'good', 'no', 'yes', 'ckd'),
(29, '45', '70', '1.025', '2', '0', 'normal', 'abnormal', 'present', 'notpresent', '117', '52', '2.2', '136', '3.8', '10.0', '30', 0x3139313030, '3.7', 'no', 'no', 'no', 'good', 'no', 'no', 'ckd'),
(30, '64', '60', '1.010', '4', '1', 'abnormal', 'abnormal', 'notpresent', 'present', '239', '58', '4.3', '137', '5.4', '9.5', '29', 0x37353030, '3.4', 'yes', 'yes', 'no', 'poor', 'yes', 'no', 'ckd'),
(31, '6', '60', '1.010', '4', '0', 'abnormal', 'abnormal', 'notpresent', 'present', '94', '67', '1.0', '135', '4.9', '9.9', '30', 0x3136373030, '4.8', 'no', 'no', 'no', 'poor', 'no', 'no', 'ckd'),
(32, '49', '100', '1.010', '3', '0', 'abnormal', 'abnormal', 'notpresent', 'notpresent', '129', '158', '11.8', '122', '3.2', '8.1', '24', 0x39363030, '3.5', 'yes', 'yes', 'no', 'poor', 'yes', 'yes', 'ckd'),
(33, '59', '100', '1.020', '4', '2', 'normal', 'normal', 'notpresent', 'notpresent', '252', '40', '3.2', '137', '4.7', '11.2', '30', 0x3236343030, '3.9', 'yes', 'yes', 'no', 'poor', 'yes', 'no', 'ckd'),
(34, '59', '100', '1.015', '4', '2', 'normal', 'normal', 'notpresent', 'notpresent', '255', '132', '12.8', '135', '5.7', '7.3', '20', 0x39383030, '3.9', 'yes', 'yes', 'yes', 'good', 'no', 'yes', 'ckd'),
(35, '40', '70', '1.015', '3', '4', 'normal', 'normal', 'notpresent', 'notpresent', '253', '150', '11.9', '132', '5.6', '10.9', '31', 0x38383030, '3.4', 'yes', 'yes', 'no', 'poor', 'yes', 'no', 'ckd'),
(36, '55', '80', '1.010', '3', '1', 'normal', 'abnormal', 'present', 'present', '214', '73', '3.9', '137', '4.9', '10.9', '34', 0x37343030, '3.7', 'yes', 'yes', 'no', 'good', 'yes', 'no', 'ckd'),
(37, '60', '90', '1.010', '3', '5', 'abnormal', 'normal', 'notpresent', 'present', '490', '95', '2.7', '131', '3.8', '11.5', '35', 0x3132303030, '4.5', 'yes', 'yes', 'no', 'good', 'no', 'no', 'ckd'),
(38, '64', '100', '1.015', '4', '2', 'abnormal', 'abnormal', 'notpresent', 'present', '163', '54', '7.2', '140', '4.6', '7.9', '26', 0x37353030, '3.4', 'yes', 'yes', 'no', 'good', 'yes', 'no', 'ckd'),
(39, '59', '50', '1.010', '3', '0', 'normal', 'abnormal', 'notpresent', 'notpresent', '241', '191', '12.0', '114', '2.9', '9.6', '31', 0x3135373030, '3.8', 'no', 'yes', 'no', 'good', 'yes', 'no', 'ckd'),
(40, '69', '70', '1.010', '4', '3', 'normal', 'abnormal', 'present', 'present', '214', '96', '6.3', '120', '3.9', '9.4', '28', 0x3131353030, '3.3', 'yes', 'yes', 'yes', 'good', 'yes', 'yes', 'ckd'),
(41, '48', '110', '1.015', '3', '0', 'abnormal', 'normal', 'present', 'notpresent', '106', '215', '15.2', '120', '5.7', '8.6', '26', 0x35303030, '2.5', 'yes', 'no', 'yes', 'good', 'no', 'yes', 'ckd'),
(42, '59', '70', '1.010', '1', '3', 'abnormal', 'abnormal', 'notpresent', 'notpresent', '424', '55', '1.7', '138', '4.5', '12.6', '37', 0x3130323030, '4.1', 'yes', 'yes', 'yes', 'good', 'no', 'no', 'ckd'),
(43, '56', '90', '1.010', '4', '1', 'normal', 'abnormal', 'present', 'notpresent', '176', '309', '13.3', '124', '6.5', '3.1', '9', 0x35343030, '2.1', 'yes', 'yes', 'no', 'poor', 'yes', 'yes', 'ckd'),
(44, '40', '80', '1.025', '0', '0', 'normal', 'normal', 'notpresent', 'notpresent', '140', '10', '1.2', '135', '5.0', '15.0', '48', 0x3130343030, '4.5', 'no', 'no', 'no', 'good', 'no', 'no', 'notckd'),
(45, '23', '80', '1.025', '0', '0', 'normal', 'normal', 'notpresent', 'notpresent', '70', '36', '1.0', '150', '4.6', '17.0', '52', 0x39383030, '5.0', 'no', 'no', 'no', 'good', 'no', 'no', 'notckd'),
(46, '45', '80', '1.025', '0', '0', 'normal', 'normal', 'notpresent', 'notpresent', '82', '49', '0.6', '147', '4.4', '15.9', '46', 0x39313030, '4.7', 'no', 'no', 'no', 'good', 'no', 'no', 'notckd'),
(47, '57', '80', '1.025', '0', '0', 'normal', 'normal', 'notpresent', 'notpresent', '119', '17', '1.2', '135', '4.7', '15.4', '42', 0x36323030, '6.2', 'no', 'no', 'no', 'good', 'no', 'no', 'notckd'),
(48, '51', '60', '1.025', '0', '0', 'normal', 'normal', 'notpresent', 'notpresent', '99', '38', '0.8', '135', '3.7', '13.0', '49', 0x38333030, '5.2', 'no', 'no', 'no', 'good', 'no', 'no', 'notckd'),
(49, '34', '80', '1.025', '0', '0', 'normal', 'normal', 'notpresent', 'notpresent', '121', '27', '1.2', '144', '3.9', '13.6', '52', 0x39323030, '6.3', 'no', 'no', 'no', 'good', 'no', 'no', 'notckd'),
(50, '60', '80', '1.025', '0', '0', 'normal', 'normal', 'notpresent', 'notpresent', '131', '10', '0.5', '146', '5.0', '14.5', '41', 0x3130373030, '5.1', 'no', 'no', 'no', 'good', 'no', 'no', 'notckd'),
(51, '38', '60', '1.020', '0', '0', 'normal', 'normal', 'notpresent', 'notpresent', '91', '36', '0.7', '135', '3.7', '14.0', '46', 0x39313030, '5.8', 'no', 'no', 'no', 'good', 'no', 'no', 'notckd'),
(52, '42', '80', '1.020', '0', '0', 'normal', 'normal', 'notpresent', 'notpresent', '98', '20', '0.5', '140', '3.5', '13.9', '44', 0x38343030, '5.5', 'no', 'no', 'no', 'good', 'no', 'no', 'notckd'),
(53, '35', '80', '1.020', '0', '0', 'normal', 'normal', 'notpresent', 'notpresent', '104', '31', '1.2', '135', '5.0', '16.1', '45', 0x34333030, '5.2', 'no', 'no', 'no', 'good', 'no', 'no', 'notckd'),
(54, '30', '80', '1.020', '0', '0', 'normal', 'normal', 'notpresent', 'notpresent', '131', '38', '1.0', '147', '3.8', '14.1', '45', 0x39343030, '5.3', 'no', 'no', 'no', 'good', 'no', 'no', 'notckd'),
(55, '49', '80', '1.020', '0', '0', 'normal', 'normal', 'notpresent', 'notpresent', '122', '32', '1.2', '139', '3.9', '17.0', '41', 0x35363030, '4.9', 'no', 'no', 'no', 'good', 'no', 'no', 'notckd'),
(56, '55', '80', '1.020', '0', '0', 'normal', 'normal', 'notpresent', 'notpresent', '118', '18', '0.9', '135', '3.6', '15.5', '43', 0x37323030, '5.4', 'no', 'no', 'no', 'good', 'no', 'no', 'notckd'),
(57, '45', '80', '1.020', '0', '0', 'normal', 'normal', 'notpresent', 'notpresent', '117', '46', '1.2', '137', '5.0', '16.2', '45', 0x38363030, '5.2', 'no', 'no', 'no', 'good', 'no', 'no', 'notckd'),
(58, '42', '80', '1.020', '0', '0', 'normal', 'normal', 'notpresent', 'notpresent', '132', '24', '0.7', '140', '4.1', '14.4', '50', 0x35303030, '4.5', 'no', 'no', 'no', 'good', 'no', 'no', 'notckd'),
(59, '50', '80', '1.020', '0', '0', 'normal', 'normal', 'notpresent', 'notpresent', '97', '40', '0.6', '150', '4.5', '14.2', '48', 0x3130353030, '5.0', 'no', 'no', 'no', 'good', 'no', 'no', 'notckd'),
(60, '55', '80', '1.020', '0', '0', 'normal', 'normal', 'notpresent', 'notpresent', '133', '17', '1.2', '135', '4.8', '13.2', '41', 0x36383030, '5.3', 'no', 'no', 'no', 'good', 'no', 'no', 'notckd'),
(61, '48', '80', '1.025', '0', '0', 'normal', 'normal', 'notpresent', 'notpresent', '122', '33', '0.9', '146', '3.9', '13.9', '48', 0x39353030, '4.8', 'no', 'no', 'no', 'good', 'no', 'no', 'notckd'),
(62, '25', '80', '1.025', '0', '0', 'normal', 'normal', 'notpresent', 'notpresent', '121', '19', '1.2', '142', '4.9', '15.0', '48', 0x36393030, '5.3', 'no', 'no', 'no', 'good', 'no', 'no', 'notckd'),
(63, '23', '80', '1.025', '0', '0', 'normal', 'normal', 'notpresent', 'notpresent', '111', '34', '1.1', '145', '4.0', '14.3', '41', 0x37323030, '5.0', 'no', 'no', 'no', 'good', 'no', 'no', 'notckd'),
(64, '30', '80', '1.025', '0', '0', 'normal', 'normal', 'notpresent', 'notpresent', '96', '25', '0.5', '144', '4.8', '13.8', '42', 0x39303030, '4.5', 'no', 'no', 'no', 'good', 'no', 'no', 'notckd'),
(65, '56', '80', '1.025', '0', '0', 'normal', 'normal', 'notpresent', 'notpresent', '139', '15', '1.2', '135', '5.0', '14.8', '42', 0x35363030, '5.5', 'no', 'no', 'no', 'good', 'no', 'no', 'notckd'),
(66, '52', '80', '1.020', '0', '0', 'normal', 'normal', 'notpresent', 'notpresent', '125', '22', '1.2', '139', '4.6', '16.5', '43', 0x34373030, '4.6', 'no', 'no', 'no', 'good', 'no', 'no', 'notckd'),
(67, '46', '60', '1.025', '0', '0', 'normal', 'normal', 'notpresent', 'notpresent', '123', '46', '1.0', '135', '5.0', '15.7', '50', 0x36333030, '4.8', 'no', 'no', 'no', 'good', 'no', 'no', 'notckd'),
(68, '48', '60', '1.020', '0', '0', 'normal', 'normal', 'notpresent', 'notpresent', '112', '44', '1.2', '142', '4.9', '14.5', '44', 0x39343030, '6.4', 'no', 'no', 'no', 'good', 'no', 'no', 'notckd'),
(69, '24', '70', '1.025', '0', '0', 'normal', 'normal', 'notpresent', 'notpresent', '140', '23', '0.6', '140', '4.7', '16.3', '48', 0x35383030, '5.6', 'no', 'no', 'no', 'good', 'no', 'no', 'notckd'),
(70, '55', '80', '1.025', '0', '0', 'normal', 'normal', 'notpresent', 'notpresent', '130', '50', '1.2', '147', '5.0', '15.5', '41', 0x39313030, '6.0', 'no', 'no', 'no', 'good', 'no', 'no', 'notckd'),
(71, '20', '70', '1.020', '0', '0', 'normal', 'normal', 'notpresent', 'notpresent', '123', '44', '1.0', '135', '3.8', '14.6', '44', 0x35353030, '4.8', 'no', 'no', 'no', 'good', 'no', 'no', 'notckd'),
(72, '33', '80', '1.025', '0', '0', 'normal', 'normal', 'notpresent', 'notpresent', '100', '37', '1.2', '142', '4.0', '16.9', '52', 0x36373030, '6.0', 'no', 'no', 'no', 'good', 'no', 'no', 'notckd'),
(73, '66', '70', '1.020', '0', '0', 'normal', 'normal', 'notpresent', 'notpresent', '94', '19', '0.7', '135', '3.9', '16.0', '41', 0x35333030, '5.9', 'no', 'no', 'no', 'good', 'no', 'no', 'notckd'),
(74, '71', '70', '1.020', '0', '0', 'normal', 'normal', 'notpresent', 'notpresent', '81', '18', '0.8', '145', '5.0', '14.7', '44', 0x39383030, '6.0', 'no', 'no', 'no', 'good', 'no', 'no', 'notckd'),
(75, '42', '70', '1.020', '0', '0', 'normal', 'normal', 'notpresent', 'notpresent', '93', '32', '0.9', '143', '4.7', '16.6', '43', 0x37313030, '5.3', 'no', 'no', 'no', 'good', 'no', 'no', 'notckd'),
(76, '47', '80', '1.025', '0', '0', 'normal', 'normal', 'notpresent', 'notpresent', '124', '44', '1.0', '140', '4.9', '14.9', '41', 0x37303030, '5.7', 'no', 'no', 'no', 'good', 'no', 'no', 'notckd'),
(77, '30', '80', '1.020', '0', '0', 'normal', 'normal', 'notpresent', 'notpresent', '89', '42', '0.5', '139', '5.0', '16.7', '52', 0x3130323030, '5.0', 'no', 'no', 'no', 'good', 'no', 'no', 'notckd'),
(78, '41', '70', '1.020', '0', '0', 'normal', 'normal', 'notpresent', 'notpresent', '125', '38', '0.6', '140', '5.0', '16.8', '41', 0x36333030, '5.9', 'no', 'no', 'no', 'good', 'no', 'no', 'notckd'),
(79, '34', '60', '1.020', '0', '0', 'normal', 'normal', 'notpresent', 'notpresent', '91', '49', '1.2', '135', '4.5', '13.5', '48', 0x38363030, '4.9', 'no', 'no', 'no', 'good', 'no', 'no', 'notckd'),
(80, '73', '60', '1.020', '0', '0', 'normal', 'normal', 'notpresent', 'notpresent', '127', '48', '0.5', '150', '3.5', '15.1', '52', 0x3131303030, '4.7', 'no', 'no', 'no', 'good', 'no', 'no', 'notckd'),
(81, '44', '60', '1.025', '0', '0', 'normal', 'normal', 'notpresent', 'notpresent', '96', '33', '0.9', '147', '4.5', '16.9', '41', 0x37323030, '5.0', 'no', 'no', 'no', 'good', 'no', 'no', 'notckd'),
(82, '33', '80', '1.025', '0', '0', 'normal', 'normal', 'notpresent', 'notpresent', '128', '38', '0.6', '135', '3.9', '13.1', '45', 0x36323030, '4.5', 'no', 'no', 'no', 'good', 'no', 'no', 'notckd'),
(83, '41', '80', '1.020', '0', '0', 'normal', 'normal', 'notpresent', 'notpresent', '122', '25', '0.8', '138', '5.0', '17.1', '41', 0x39313030, '5.2', 'no', 'no', 'no', 'good', 'no', 'no', 'notckd'),
(84, '52', '80', '1.020', '0', '0', 'normal', 'normal', 'notpresent', 'notpresent', '128', '30', '1.2', '140', '4.5', '15.2', '52', 0x34333030, '5.7', 'no', 'no', 'no', 'good', 'no', 'no', 'notckd'),
(85, '47', '60', '1.020', '0', '0', 'normal', 'normal', 'notpresent', 'notpresent', '137', '17', '0.5', '150', '3.5', '13.6', '44', 0x37393030, '4.5', 'no', 'no', 'no', 'good', 'no', 'no', 'notckd'),
(86, '43', '80', '1.025', '0', '0', 'normal', 'normal', 'notpresent', 'notpresent', '81', '46', '0.6', '135', '4.9', '13.9', '48', 0x36393030, '4.9', 'no', 'no', 'no', 'good', 'no', 'no', 'notckd'),
(87, '46', '60', '1.020', '0', '0', 'normal', 'normal', 'notpresent', 'notpresent', '102', '27', '0.7', '142', '4.9', '13.2', '44', 0x3131303030, '5.4', 'no', 'no', 'no', 'good', 'no', 'no', 'notckd'),
(88, '56', '60', '1.025', '0', '0', 'normal', 'normal', 'notpresent', 'notpresent', '132', '18', '1.1', '147', '4.7', '13.7', '45', 0x37353030, '5.6', 'no', 'no', 'no', 'good', 'no', 'no', 'notckd'),
(89, '55', '80', '1.020', '0', '0', 'normal', 'normal', 'notpresent', 'notpresent', '104', '28', '0.9', '142', '4.8', '17.3', '52', 0x38323030, '4.8', 'no', 'no', 'no', 'good', 'no', 'no', 'notckd'),
(90, '39', '70', '1.025', '0', '0', 'normal', 'normal', 'notpresent', 'notpresent', '131', '46', '0.6', '145', '5.0', '15.6', '41', 0x39343030, '4.7', 'no', 'no', 'no', 'good', 'no', 'no', 'notckd'),
(91, '58', '70', '1.020', '0', '0', 'normal', 'normal', 'notpresent', 'notpresent', '102', '48', '1.2', '139', '4.3', '15.0', '40', 0x38313030, '4.9', 'no', 'no', 'no', 'good', 'no', 'no', 'notckd'),
(92, '61', '70', '1.025', '0', '0', 'normal', 'normal', 'notpresent', 'notpresent', '120', '29', '0.7', '137', '3.5', '17.4', '52', 0x37303030, '5.3', 'no', 'no', 'no', 'good', 'no', 'no', 'notckd'),
(93, '57', '60', '1.020', '0', '0', 'normal', 'normal', 'notpresent', 'notpresent', '105', '49', '1.2', '150', '4.7', '15.7', '44', 0x3130343030, '6.2', 'no', 'no', 'no', 'good', 'no', 'no', 'notckd'),
(94, '65', '60', '1.020', '0', '0', 'normal', 'normal', 'notpresent', 'notpresent', '109', '39', '1.0', '144', '3.5', '13.9', '48', 0x39363030, '4.8', 'no', 'no', 'no', 'good', 'no', 'no', 'notckd'),
(95, '43', '80', '1.025', '0', '0', 'normal', 'normal', 'notpresent', 'notpresent', '130', '30', '1.1', '143', '5.0', '15.9', '45', 0x37383030, '4.5', 'no', 'no', 'no', 'good', 'no', 'no', 'notckd'),
(96, '58', '80', '1.020', '0', '0', 'normal', 'normal', 'notpresent', 'notpresent', '100', '50', '1.2', '140', '3.5', '14.0', '50', 0x36373030, '6.5', 'no', 'no', 'no', 'good', 'no', 'no', 'notckd'),
(97, '47', '60', '1.020', '0', '0', 'normal', 'normal', 'notpresent', 'notpresent', '109', '25', '1.1', '141', '4.7', '15.8', '41', 0x38333030, '5.2', 'no', 'no', 'no', 'good', 'no', 'no', 'notckd'),
(98, '30', '60', '1.025', '0', '0', 'normal', 'normal', 'notpresent', 'notpresent', '120', '31', '0.8', '150', '4.6', '13.4', '44', 0x3130373030, '5.8', 'no', 'no', 'no', 'good', 'no', 'no', 'notckd'),
(99, '33', '60', '1.025', '0', '0', 'normal', 'normal', 'notpresent', 'notpresent', '80', '25', '0.9', '146', '3.5', '14.1', '48', 0x37383030, '5.1', 'no', 'no', 'no', 'good', 'no', 'no', 'notckd'),
(100, '59', '70', '1.025', '0', '0', 'normal', 'normal', 'notpresent', 'notpresent', '130', '39', '0.7', '147', '4.7', '13.5', '46', 0x36373030, '4.5', 'no', 'no', 'no', 'good', 'no', 'no', 'notckd'),
(101, '23', '80', '1.020', '0', '0', 'normal', 'normal', 'notpresent', 'notpresent', '99', '46', '1.2', '142', '4.0', '17.7', '46', 0x34333030, '5.5', 'no', 'no', 'no', 'good', 'no', 'no', 'notckd'),
(102, '60', '60', '1.020', '0', '0', 'normal', 'normal', 'notpresent', 'notpresent', '134', '45', '0.5', '139', '4.8', '14.2', '48', 0x3130373030, '5.6', 'no', 'no', 'no', 'good', 'no', 'no', 'notckd'),
(103, '44', '70', '1.025', '0', '0', 'normal', 'normal', 'notpresent', 'notpresent', '92', '40', '0.9', '141', '4.9', '14.0', '52', 0x37353030, '6.2', 'no', 'no', 'no', 'good', 'no', 'no', 'notckd'),
(104, '62', '80', '1.020', '0', '0', 'normal', 'normal', 'notpresent', 'notpresent', '132', '34', '0.8', '147', '3.5', '17.8', '44', 0x34373030, '4.5', 'no', 'no', 'no', 'good', 'no', 'no', 'notckd'),
(105, '25', '70', '1.020', '0', '0', 'normal', 'normal', 'notpresent', 'notpresent', '88', '42', '0.5', '136', '3.5', '13.3', '48', 0x37303030, '4.9', 'no', 'no', 'no', 'good', 'no', 'no', 'notckd'),
(106, '32', '70', '1.025', '0', '0', 'normal', 'normal', 'notpresent', 'notpresent', '100', '29', '1.1', '142', '4.5', '14.3', '43', 0x36373030, '5.9', 'no', 'no', 'no', 'good', 'no', 'no', 'notckd'),
(107, '63', '70', '1.025', '0', '0', 'normal', 'normal', 'notpresent', 'notpresent', '130', '37', '0.9', '150', '5.0', '13.4', '41', 0x37333030, '4.7', 'no', 'no', 'no', 'good', 'no', 'no', 'notckd'),
(108, '44', '60', '1.020', '0', '0', 'normal', 'normal', 'notpresent', 'notpresent', '95', '46', '0.5', '138', '4.2', '15.0', '50', 0x37373030, '6.3', 'no', 'no', 'no', 'good', 'no', 'no', 'notckd'),
(109, '37', '60', '1.025', '0', '0', 'normal', 'normal', 'notpresent', 'notpresent', '111', '35', '0.8', '135', '4.1', '16.2', '50', 0x35353030, '5.7', 'no', 'no', 'no', 'good', 'no', 'no', 'notckd'),
(110, '64', '60', '1.020', '0', '0', 'normal', 'normal', 'notpresent', 'notpresent', '106', '27', '0.7', '150', '3.3', '14.4', '42', 0x38313030, '4.7', 'no', 'no', 'no', 'good', 'no', 'no', 'notckd'),
(111, '22', '60', '1.025', '0', '0', 'normal', 'normal', 'notpresent', 'notpresent', '97', '18', '1.2', '138', '4.3', '13.5', '42', 0x37393030, '6.4', 'no', 'no', 'no', 'good', 'no', 'no', 'notckd'),
(112, '43', '60', '1.025', '0', '0', 'normal', 'normal', 'notpresent', 'notpresent', '108', '25', '1.0', '144', '5.0', '17.8', '43', 0x37323030, '5.5', 'no', 'no', 'no', 'good', 'no', 'no', 'notckd'),
(113, '38', '80', '1.020', '0', '0', 'normal', 'normal', 'notpresent', 'notpresent', '99', '19', '0.5', '147', '3.5', '13.6', '44', 0x37333030, '6.4', 'no', 'no', 'no', 'good', 'no', 'no', 'notckd'),
(114, '29', '80', '1.020', '0', '0', 'normal', 'normal', 'notpresent', 'notpresent', '83', '49', '0.9', '139', '3.3', '17.5', '40', 0x39393030, '4.7', 'no', 'no', 'no', 'good', 'no', 'no', 'notckd'),
(115, '37', '60', '1.020', '0', '0', 'normal', 'normal', 'notpresent', 'notpresent', '109', '47', '1.1', '141', '4.9', '15.0', '48', 0x37303030, '5.2', 'no', 'no', 'no', 'good', 'no', 'no', 'notckd'),
(116, '39', '60', '1.020', '0', '0', 'normal', 'normal', 'notpresent', 'notpresent', '86', '37', '0.6', '150', '5.0', '13.6', '51', 0x35383030, '4.5', 'no', 'no', 'no', 'good', 'no', 'no', 'notckd'),
(117, '32', '60', '1.025', '0', '0', 'normal', 'normal', 'notpresent', 'notpresent', '102', '17', '0.4', '147', '4.7', '14.6', '41', 0x36383030, '5.1', 'no', 'no', 'no', 'good', 'no', 'no', 'notckd'),
(118, '23', '60', '1.020', '0', '0', 'normal', 'normal', 'notpresent', 'notpresent', '95', '24', '0.8', '145', '5.0', '15.0', '52', 0x36333030, '4.6', 'no', 'no', 'no', 'good', 'no', 'no', 'notckd'),
(119, '34', '70', '1.025', '0', '0', 'normal', 'normal', 'notpresent', 'notpresent', '87', '38', '0.5', '144', '4.8', '17.1', '47', 0x37343030, '6.1', 'no', 'no', 'no', 'good', 'no', 'no', 'notckd'),
(120, '66', '70', '1.025', '0', '0', 'normal', 'normal', 'notpresent', 'notpresent', '107', '16', '1.1', '140', '3.6', '13.6', '42', 0x3131303030, '4.9', 'no', 'no', 'no', 'good', 'no', 'no', 'notckd'),
(121, '47', '60', '1.020', '0', '0', 'normal', 'normal', 'notpresent', 'notpresent', '117', '22', '1.2', '138', '3.5', '13.0', '45', 0x35323030, '5.6', 'no', 'no', 'no', 'good', 'no', 'no', 'notckd'),
(122, '74', '60', '1.020', '0', '0', 'normal', 'normal', 'notpresent', 'notpresent', '88', '50', '0.6', '147', '3.7', '17.2', '53', 0x36303030, '4.5', 'no', 'no', 'no', 'good', 'no', 'no', 'notckd'),
(123, '35', '60', '1.025', '0', '0', 'normal', 'normal', 'notpresent', 'notpresent', '105', '39', '0.5', '135', '3.9', '14.7', '43', 0x35383030, '6.2', 'no', 'no', 'no', 'good', 'no', 'no', 'notckd'),
(124, '29', '80', '1.020', '0', '0', 'normal', 'normal', 'notpresent', 'notpresent', '70', '16', '0.7', '138', '3.5', '13.7', '54', 0x35343030, '5.8', 'no', 'no', 'no', 'good', 'no', 'no', 'notckd'),
(125, '33', '80', '1.025', '0', '0', 'normal', 'normal', 'notpresent', 'notpresent', '89', '19', '1.1', '144', '5.0', '15.0', '40', 0x3130333030, '4.8', 'no', 'no', 'no', 'good', 'no', 'no', 'notckd'),
(126, '73', '80', '1.025', '0', '0', 'normal', 'normal', 'notpresent', 'notpresent', '118', '44', '0.7', '137', '3.5', '14.8', '45', 0x39333030, '4.7', 'no', 'no', 'no', 'good', 'no', 'no', 'notckd'),
(127, '60', '80', '1.025', '0', '0', 'normal', 'normal', 'notpresent', 'notpresent', '81', '15', '0.5', '141', '3.6', '15.0', '46', 0x3130353030, '5.3', 'no', 'no', 'no', 'good', 'no', 'no', 'notckd'),
(128, '68', '60', '1.025', '0', '0', 'normal', 'normal', 'notpresent', 'notpresent', '125', '41', '1.1', '139', '3.8', '17.4', '50', 0x36373030, '6.1', 'no', 'no', 'no', 'good', 'no', 'no', 'notckd'),
(129, '30', '80', '1.025', '0', '0', 'normal', 'normal', 'notpresent', 'notpresent', '82', '42', '0.7', '146', '5.0', '14.9', '45', 0x39343030, '5.9', 'no', 'no', 'no', 'good', 'no', 'no', 'notckd'),
(130, '75', '70', '1.020', '0', '0', 'normal', 'normal', 'notpresent', 'notpresent', '107', '48', '0.8', '144', '3.5', '13.6', '46', 0x3130333030, '4.8', 'no', 'no', 'no', 'good', 'no', 'no', 'notckd'),
(131, '69', '70', '1.020', '0', '0', 'normal', 'normal', 'notpresent', 'notpresent', '83', '42', '1.2', '139', '3.7', '16.2', '50', 0x39333030, '5.4', 'no', 'no', 'no', 'good', 'no', 'no', 'notckd'),
(132, '28', '60', '1.025', '0', '0', 'normal', 'normal', 'notpresent', 'notpresent', '79', '50', '0.5', '145', '5.0', '17.6', '51', 0x36353030, '5.0', 'no', 'no', 'no', 'good', 'no', 'no', 'notckd'),
(133, '72', '60', '1.020', '0', '0', 'normal', 'normal', 'notpresent', 'notpresent', '109', '26', '0.9', '150', '4.9', '15.0', '52', 0x3130353030, '5.5', 'no', 'no', 'no', 'good', 'no', 'no', 'notckd'),
(134, '61', '70', '1.025', '0', '0', 'normal', 'normal', 'notpresent', 'notpresent', '133', '38', '1.0', '142', '3.6', '13.7', '47', 0x39323030, '4.9', 'no', 'no', 'no', 'good', 'no', 'no', 'notckd'),
(135, '79', '80', '1.025', '0', '0', 'normal', 'normal', 'notpresent', 'notpresent', '111', '44', '1.2', '146', '3.6', '16.3', '40', 0x38303030, '6.4', 'no', 'no', 'no', 'good', 'no', 'no', 'notckd'),
(136, '70', '80', '1.020', '0', '0', 'normal', 'normal', 'notpresent', 'notpresent', '74', '41', '0.5', '143', '4.5', '15.1', '48', 0x39373030, '5.6', 'no', 'no', 'no', 'good', 'no', 'no', 'notckd'),
(137, '58', '70', '1.025', '0', '0', 'normal', 'normal', 'notpresent', 'notpresent', '88', '16', '1.1', '147', '3.5', '16.4', '53', 0x39313030, '5.2', 'no', 'no', 'no', 'good', 'no', 'no', 'notckd'),
(138, '64', '70', '1.020', '0', '0', 'normal', 'normal', 'notpresent', 'notpresent', '97', '27', '0.7', '145', '4.8', '13.8', '49', 0x36343030, '4.8', 'no', 'no', 'no', 'good', 'no', 'no', 'notckd'),
(139, '62', '80', '1.025', '0', '0', 'normal', 'normal', 'notpresent', 'notpresent', '78', '45', '0.6', '138', '3.5', '16.1', '50', 0x35343030, '5.7', 'no', 'no', 'no', 'good', 'no', 'no', 'notckd'),
(140, '59', '60', '1.020', '0', '0', 'normal', 'normal', 'notpresent', 'notpresent', '113', '23', '1.1', '139', '3.5', '15.3', '54', 0x36353030, '4.9', 'no', 'no', 'no', 'good', 'no', 'no', 'notckd'),
(141, '48', '80', '1.025', '0', '0', 'normal', 'normal', 'notpresent', 'notpresent', '75', '22', '0.8', '137', '5.0', '16.8', '51', 0x36303030, '6.5', 'no', 'no', 'no', 'good', 'no', 'no', 'notckd'),
(142, '80', '80', '1.025', '0', '0', 'normal', 'normal', 'notpresent', 'notpresent', '119', '46', '0.7', '141', '4.9', '13.9', '49', 0x35313030, '5.0', 'no', 'no', 'no', 'good', 'no', 'no', 'notckd'),
(143, '57', '60', '1.020', '0', '0', 'normal', 'normal', 'notpresent', 'notpresent', '132', '18', '1.1', '150', '4.7', '15.4', '42', 0x3131303030, '4.5', 'no', 'no', 'no', 'good', 'no', 'no', 'notckd'),
(144, '63', '70', '1.020', '0', '0', 'normal', 'normal', 'notpresent', 'notpresent', '113', '25', '0.6', '146', '4.9', '16.5', '52', 0x38303030, '5.1', 'no', 'no', 'no', 'good', 'no', 'no', 'notckd'),
(145, '46', '70', '1.025', '0', '0', 'normal', 'normal', 'notpresent', 'notpresent', '100', '47', '0.5', '142', '3.5', '16.4', '43', 0x35373030, '6.5', 'no', 'no', 'no', 'good', 'no', 'no', 'notckd'),
(146, '15', '80', '1.025', '0', '0', 'normal', 'normal', 'notpresent', 'notpresent', '93', '17', '0.9', '136', '3.9', '16.7', '50', 0x36323030, '5.2', 'no', 'no', 'no', 'good', 'no', 'no', 'notckd'),
(147, '51', '80', '1.020', '0', '0', 'normal', 'normal', 'notpresent', 'notpresent', '94', '15', '1.2', '144', '3.7', '15.5', '46', 0x39353030, '6.4', 'no', 'no', 'no', 'good', 'no', 'no', 'notckd'),
(148, '41', '80', '1.025', '0', '0', 'normal', 'normal', 'notpresent', 'notpresent', '112', '48', '0.7', '140', '5.0', '17.0', '52', 0x37323030, '5.8', 'no', 'no', 'no', 'good', 'no', 'no', 'notckd'),
(149, '52', '80', '1.025', '0', '0', 'normal', 'normal', 'notpresent', 'notpresent', '99', '25', '0.8', '135', '3.7', '15.0', '52', 0x36333030, '5.3', 'no', 'no', 'no', 'good', 'no', 'no', 'notckd'),
(150, '36', '80', '1.025', '0', '0', 'normal', 'normal', 'notpresent', 'notpresent', '85', '16', '1.1', '142', '4.1', '15.6', '44', 0x35383030, '6.3', 'no', 'no', 'no', 'good', 'no', 'no', 'notckd'),
(151, '57', '80', '1.020', '0', '0', 'normal', 'normal', 'notpresent', 'notpresent', '133', '48', '1.2', '147', '4.3', '14.8', '46', 0x36363030, '5.5', 'no', 'no', 'no', 'good', 'no', 'no', 'notckd'),
(152, '43', '60', '1.025', '0', '0', 'normal', 'normal', 'notpresent', 'notpresent', '117', '45', '0.7', '141', '4.4', '13.0', '54', 0x37343030, '5.4', 'no', 'no', 'no', 'good', 'no', 'no', 'notckd'),
(153, '50', '80', '1.020', '0', '0', 'normal', 'normal', 'notpresent', 'notpresent', '137', '46', '0.8', '139', '5.0', '14.1', '45', 0x39353030, '4.6', 'no', 'no', 'no', 'good', 'no', 'no', 'notckd'),
(154, '55', '80', '1.020', '0', '0', 'normal', 'normal', 'notpresent', 'notpresent', '140', '49', '0.5', '150', '4.9', '15.7', '47', 0x36373030, '4.9', 'no', 'no', 'no', 'good', 'no', 'no', 'notckd'),
(155, '42', '70', '1.025', '0', '0', 'normal', 'normal', 'notpresent', 'notpresent', '75', '31', '1.2', '141', '3.5', '16.5', '54', 0x37383030, '6.2', 'no', 'no', 'no', 'good', 'no', 'no', 'notckd'),
(156, '12', '80', '1.020', '0', '0', 'normal', 'normal', 'notpresent', 'notpresent', '100', '26', '0.6', '137', '4.4', '15.8', '49', 0x36363030, '5.4', 'no', 'no', 'no', 'good', 'no', 'no', 'notckd'),
(157, '17', '60', '1.025', '0', '0', 'normal', 'normal', 'notpresent', 'notpresent', '114', '50', '1.0', '135', '4.9', '14.2', '51', 0x37323030, '5.9', 'no', 'no', 'no', 'good', 'no', 'no', 'notckd'),
(158, '58', '80', '1.025', '0', '0', 'normal', 'normal', 'notpresent', 'notpresent', '131', '18', '1.1', '141', '3.5', '15.8', '53', 0x36383030, '6.1', 'no', 'no', 'no', 'good', 'no', 'no', 'notckd');

-- --------------------------------------------------------

--
-- Table structure for table `userdata`
--

CREATE TABLE `userdata` (
  `Named` varchar(50) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Pswd` varchar(50) DEFAULT NULL,
  `Phone` varchar(50) DEFAULT NULL,
  `Addr` varchar(4000) DEFAULT NULL,
  `Dob` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `userdata`
--

INSERT INTO `userdata` (`Named`, `Email`, `Pswd`, `Phone`, `Addr`, `Dob`) VALUES
('Sunny Boyka', 'madhsunil@gmail.com', 'qqq', '9036453696', 'Mysore\njj', '12-12-1978'),
('Sunny Boyka', 'madhsunil@gmail.com', 'qaz', '9036453696', 'Mysore\njj', '05/01/2021'),
('Sunny Boyka', 'madhsunil@gmail.com', 'q', '9036453696', 'Mysore\njj', '05/01/2021'),
('Sunny Boyka', 'madhsunil@gmail.com', 'q', '9036453696', 'Mysore\njj', '05/01/2021'),
('Sunny Boyka', 'madhsunil@gmail.com', 'qaz', '9036453696', 'Mysore\njj', '05/01/2021'),
('Vinay Kumar', 'vinaykumarkn66@gmail.com', 'qazwsx', '7894561230', 'Mandya', '11/26/2020'),
('', '', '', '', '', ''),
('', '', '', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `predictdata`
--
ALTER TABLE `predictdata`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `predictdata`
--
ALTER TABLE `predictdata`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=159;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
