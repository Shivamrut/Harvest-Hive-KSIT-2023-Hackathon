-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 04, 2023 at 11:51 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `harvest1`
--

-- --------------------------------------------------------

--
-- Table structure for table `crops`
--

CREATE TABLE `crops` (
  `crop_id` int(11) NOT NULL,
  `crop_name` varchar(255) NOT NULL,
  `crop_description` text NOT NULL,
  `crop_price` decimal(10,2) NOT NULL,
  `farmer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `crops`
--

INSERT INTO `crops` (`crop_id`, `crop_name`, `crop_description`, `crop_price`, `farmer_id`) VALUES
(4, 'Soybean', 'Lorem ipsum', '331.48', 2),
(5, 'Wheat', 'Lorem ipsum', '289.79', 2),
(6, 'Rice', 'Lorem ipsum', '484.25', 2),
(7, 'Barley', 'Lorem ipsum', '272.04', 1),
(8, 'Rice', 'Lorem ipsum', '427.54', 1),
(9, 'Wheat', 'Lorem ipsum', '281.50', 2),
(10, 'Rice', 'Lorem ipsum', '242.53', 1),
(11, 'Wheat', 'Lorem ipsum', '122.40', 1),
(12, 'Maize', 'Lorem ipsum', '348.82', 2),
(13, 'Rice', 'Lorem ipsum', '410.60', 1),
(14, 'Maize', 'Lorem ipsum', '137.04', 2),
(15, 'Rice', 'Lorem ipsum', '90.49', 1),
(16, 'Maize', 'Lorem ipsum', '351.76', 1),
(17, 'Rice', 'Lorem ipsum', '294.78', 1),
(18, 'Rice', 'Lorem ipsum', '260.08', 2),
(19, 'Rice', 'Lorem ipsum', '316.89', 2),
(20, 'Wheat', 'Lorem ipsum', '195.82', 1),
(21, 'Rice', 'Lorem ipsum', '372.81', 1),
(22, 'Maize', 'Lorem ipsum', '252.22', 1),
(23, 'Rice', 'Lorem ipsum', '105.47', 1),
(24, 'Maize', 'Lorem ipsum', '256.61', 1),
(25, 'Soybean', 'Lorem ipsum', '104.96', 1),
(26, 'Soybean', 'Lorem ipsum', '105.82', 2),
(27, 'Rice', 'Lorem ipsum', '415.42', 1),
(28, 'Barley', 'Lorem ipsum', '235.72', 2),
(29, 'Soybean', 'Lorem ipsum', '343.74', 2),
(30, 'Soybean', 'Lorem ipsum', '276.68', 1),
(31, 'Soybean', 'Lorem ipsum', '385.59', 1),
(32, 'Maize', 'Lorem ipsum', '58.24', 1),
(33, 'Rice', 'Lorem ipsum', '223.02', 1),
(34, 'Barley', 'Lorem ipsum', '293.43', 2),
(35, 'Soybean', 'Lorem ipsum', '213.74', 1),
(36, 'Wheat', 'Lorem ipsum', '476.72', 1),
(37, 'Soybean', 'Lorem ipsum', '222.05', 2),
(38, 'Barley', 'Lorem ipsum', '113.89', 2),
(39, 'Soybean', 'Lorem ipsum', '443.87', 2),
(40, 'Wheat', 'Lorem ipsum', '108.18', 2),
(41, 'Barley', 'Lorem ipsum', '375.97', 2),
(42, 'Wheat', 'Lorem ipsum', '159.42', 2),
(43, 'Soybean', 'Lorem ipsum', '333.44', 2),
(44, 'Barley', 'Lorem ipsum', '265.10', 2),
(45, 'Soybean', 'Lorem ipsum', '158.50', 2),
(46, 'Maize', 'Lorem ipsum', '477.03', 1),
(47, 'Maize', 'Lorem ipsum', '86.08', 1),
(48, 'Barley', 'Lorem ipsum', '231.20', 2),
(49, 'Rice', 'Lorem ipsum', '468.13', 2),
(50, 'Wheat', 'Lorem ipsum', '82.56', 1),
(51, 'Rice', 'Lorem ipsum', '290.36', 2),
(52, 'Rice', 'Lorem ipsum', '356.79', 1),
(53, 'Maize', 'Lorem ipsum', '143.30', 1),
(54, 'Soybean', 'Lorem ipsum', '69.15', 2),
(55, 'Maize', 'Lorem ipsum', '277.11', 1),
(56, 'Maize', 'Lorem ipsum', '414.35', 2),
(57, 'Maize', 'Lorem ipsum', '450.00', 1),
(58, 'Wheat', 'Lorem ipsum', '399.74', 1),
(59, 'Wheat', 'Lorem ipsum', '192.16', 1),
(60, 'Maize', 'Lorem ipsum', '252.25', 2),
(61, 'Wheat', 'Lorem ipsum', '144.15', 1),
(62, 'Wheat', 'Lorem ipsum', '429.60', 2),
(63, 'Soybean', 'Lorem ipsum', '444.25', 2),
(64, 'Soybean', 'Lorem ipsum', '101.63', 2),
(65, 'Maize', 'Lorem ipsum', '495.91', 1),
(66, 'Maize', 'Lorem ipsum', '87.78', 2),
(67, 'Maize', 'Lorem ipsum', '73.74', 2),
(68, 'Wheat', 'Lorem ipsum', '249.28', 2),
(69, 'Rice', 'Lorem ipsum', '259.36', 2),
(70, 'Barley', 'Lorem ipsum', '435.39', 2),
(71, 'Rice', 'Lorem ipsum', '256.82', 1),
(72, 'Wheat', 'Lorem ipsum', '208.08', 1),
(73, 'Rice', 'Lorem ipsum', '178.26', 2),
(74, 'Wheat', 'Lorem ipsum', '377.36', 1),
(75, 'Soybean', 'Lorem ipsum', '53.85', 2),
(76, 'Maize', 'Lorem ipsum', '407.04', 2),
(77, 'Soybean', 'Lorem ipsum', '79.93', 2),
(78, 'Rice', 'Lorem ipsum', '152.02', 2),
(79, 'Wheat', 'Lorem ipsum', '75.40', 2),
(80, 'Barley', 'Lorem ipsum', '408.63', 2),
(81, 'Wheat', 'Lorem ipsum', '415.47', 2),
(82, 'Barley', 'Lorem ipsum', '117.85', 2),
(83, 'Maize', 'Lorem ipsum', '474.22', 1),
(84, 'Wheat', 'Lorem ipsum', '208.83', 2),
(85, 'Wheat', 'Lorem ipsum', '481.37', 1),
(86, 'Maize', 'Lorem ipsum', '267.09', 1),
(87, 'Maize', 'Lorem ipsum', '121.29', 1),
(88, 'Wheat', 'Lorem ipsum', '411.31', 1),
(89, 'Soybean', 'Lorem ipsum', '177.28', 1),
(90, 'Soybean', 'Lorem ipsum', '120.35', 2),
(91, 'Maize', 'Lorem ipsum', '300.52', 1),
(92, 'Soybean', 'Lorem ipsum', '431.76', 1),
(93, 'Rice', 'Lorem ipsum', '186.94', 2),
(94, 'Maize', 'Lorem ipsum', '74.71', 2),
(95, 'Rice', 'Lorem ipsum', '82.07', 2),
(96, 'Barley', 'Lorem ipsum', '217.03', 1),
(97, 'Maize', 'Lorem ipsum', '297.03', 1),
(98, 'Soybean', 'Lorem ipsum', '97.37', 1),
(99, 'Soybean', 'Lorem ipsum', '335.97', 2),
(100, 'Barley', 'Lorem ipsum', '473.19', 1),
(101, 'Wheat', 'Lorem ipsum', '178.09', 2),
(102, 'Soybean', 'Lorem ipsum', '464.86', 1),
(103, 'Barley', 'Lorem ipsum', '305.87', 2),
(105, 'Maize', 'Lorem ipsum', '438.60', 47),
(106, 'Maize', 'Lorem ipsum', '463.89', 26),
(107, 'Maize', 'Lorem ipsum', '59.59', 42),
(108, 'Soybean', 'Lorem ipsum', '52.22', 79),
(109, 'Rice', 'Lorem ipsum', '428.44', 45),
(110, 'Rice', 'Lorem ipsum', '360.95', 57),
(111, 'Wheat', 'Lorem ipsum', '368.08', 8),
(112, 'Wheat', 'Lorem ipsum', '101.74', 61),
(113, 'Rice', 'Lorem ipsum', '267.32', 87),
(114, 'Rice', 'Lorem ipsum', '199.43', 18),
(115, 'Maize', 'Lorem ipsum', '486.91', 83),
(116, 'Soybean', 'Lorem ipsum', '180.36', 97),
(117, 'Wheat', 'Lorem ipsum', '444.41', 89),
(118, 'Soybean', 'Lorem ipsum', '167.61', 18),
(119, 'Wheat', 'Lorem ipsum', '312.35', 81),
(120, 'Rice', 'Lorem ipsum', '433.71', 79),
(121, 'Maize', 'Lorem ipsum', '127.86', 31),
(122, 'Wheat', 'Lorem ipsum', '310.31', 24),
(123, 'Wheat', 'Lorem ipsum', '182.75', 21),
(124, 'Rice', 'Lorem ipsum', '207.19', 77),
(125, 'Soybean', 'Lorem ipsum', '74.17', 23),
(126, 'Wheat', 'Lorem ipsum', '192.39', 83),
(127, 'Rice', 'Lorem ipsum', '179.14', 67),
(128, 'Soybean', 'Lorem ipsum', '141.42', 27),
(129, 'Soybean', 'Lorem ipsum', '51.68', 57),
(130, 'Rice', 'Lorem ipsum', '108.37', 10),
(131, 'Barley', 'Lorem ipsum', '413.63', 79),
(132, 'Maize', 'Lorem ipsum', '366.79', 55),
(133, 'Wheat', 'Lorem ipsum', '168.35', 69),
(134, 'Soybean', 'Lorem ipsum', '214.76', 20),
(135, 'Soybean', 'Lorem ipsum', '218.17', 90),
(136, 'Wheat', 'Lorem ipsum', '480.29', 13),
(137, 'Soybean', 'Lorem ipsum', '339.83', 27),
(138, 'Rice', 'Lorem ipsum', '244.58', 61),
(139, 'Wheat', 'Lorem ipsum', '315.05', 49),
(140, 'Wheat', 'Lorem ipsum', '240.84', 37),
(141, 'Wheat', 'Lorem ipsum', '93.60', 52),
(142, 'Soybean', 'Lorem ipsum', '451.20', 69),
(143, 'Rice', 'Lorem ipsum', '335.87', 55),
(144, 'Wheat', 'Lorem ipsum', '269.52', 34),
(145, 'Soybean', 'Lorem ipsum', '167.16', 99),
(146, 'Barley', 'Lorem ipsum', '458.16', 99),
(147, 'Rice', 'Lorem ipsum', '327.21', 88),
(148, 'Soybean', 'Lorem ipsum', '318.93', 44),
(149, 'Wheat', 'Lorem ipsum', '192.34', 65),
(150, 'Maize', 'Lorem ipsum', '387.08', 83),
(151, 'Wheat', 'Lorem ipsum', '107.84', 23),
(152, 'Maize', 'Lorem ipsum', '195.35', 96),
(153, 'Rice', 'Lorem ipsum', '386.65', 70),
(154, 'Barley', 'Lorem ipsum', '465.66', 67),
(155, 'Wheat', 'Lorem ipsum', '401.94', 25),
(156, 'Barley', 'Lorem ipsum', '92.36', 87),
(157, 'Barley', 'Lorem ipsum', '428.46', 89),
(158, 'Rice', 'Lorem ipsum', '122.95', 18),
(159, 'Maize', 'Lorem ipsum', '325.12', 74),
(160, 'Maize', 'Lorem ipsum', '374.73', 16),
(161, 'Soybean', 'Lorem ipsum', '273.47', 45),
(162, 'Soybean', 'Lorem ipsum', '265.47', 10),
(163, 'Barley', 'Lorem ipsum', '440.63', 92),
(164, 'Wheat', 'Lorem ipsum', '276.37', 45),
(165, 'Rice', 'Lorem ipsum', '321.41', 38),
(166, 'Wheat', 'Lorem ipsum', '361.79', 41),
(167, 'Maize', 'Lorem ipsum', '230.83', 1),
(168, 'Rice', 'Lorem ipsum', '99.34', 1),
(169, 'Soybean', 'Lorem ipsum', '469.85', 65),
(170, 'Barley', 'Lorem ipsum', '51.30', 47),
(171, 'Wheat', 'Lorem ipsum', '359.72', 93),
(172, 'Maize', 'Lorem ipsum', '208.44', 42),
(173, 'Barley', 'Lorem ipsum', '348.27', 54),
(174, 'Maize', 'Lorem ipsum', '185.53', 9),
(175, 'Barley', 'Lorem ipsum', '247.79', 27),
(176, 'Wheat', 'Lorem ipsum', '238.51', 80),
(177, 'Maize', 'Lorem ipsum', '246.76', 44),
(178, 'Rice', 'Lorem ipsum', '123.33', 24),
(179, 'Soybean', 'Lorem ipsum', '260.60', 91),
(180, 'Maize', 'Lorem ipsum', '463.83', 1),
(181, 'Barley', 'Lorem ipsum', '109.21', 85),
(182, 'Barley', 'Lorem ipsum', '75.53', 66),
(183, 'Wheat', 'Lorem ipsum', '404.74', 34),
(184, 'Rice', 'Lorem ipsum', '174.20', 51),
(185, 'Barley', 'Lorem ipsum', '142.28', 41),
(186, 'Barley', 'Lorem ipsum', '388.20', 75),
(187, 'Rice', 'Lorem ipsum', '198.57', 19),
(188, 'Soybean', 'Lorem ipsum', '135.70', 14),
(189, 'Wheat', 'Lorem ipsum', '385.20', 5),
(190, 'Maize', 'Lorem ipsum', '260.02', 10),
(191, 'Maize', 'Lorem ipsum', '274.08', 22),
(192, 'Soybean', 'Lorem ipsum', '445.51', 73),
(193, 'Barley', 'Lorem ipsum', '75.04', 60),
(194, 'Barley', 'Lorem ipsum', '57.75', 34),
(195, 'Maize', 'Lorem ipsum', '475.19', 25),
(196, 'Barley', 'Lorem ipsum', '452.19', 82),
(197, 'Rice', 'Lorem ipsum', '176.49', 33),
(198, 'Barley', 'Lorem ipsum', '365.36', 95),
(199, 'Maize', 'Lorem ipsum', '478.38', 70),
(200, 'Soybean', 'Lorem ipsum', '117.46', 71),
(201, 'Maize', 'Lorem ipsum', '242.19', 25),
(202, 'Soybean', 'Lorem ipsum', '74.71', 56),
(203, 'Barley', 'Lorem ipsum', '82.60', 52),
(204, 'Rice', 'Lorem ipsum', '274.31', 80);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `address` text NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `customer_name`, `email`, `phone_number`, `address`, `password`) VALUES
(1, 'Bob', 'bob@example.com', '365059976', 'Lorem ipsum', 'qwertyuiop'),
(2, 'Emily', 'emily@example.com', '691989077', 'Lorem ipsum', 'iloveyou'),
(3, 'Emily', 'emily@example.com', '128222961', 'Lorem ipsum', 'qwertyuiop'),
(4, 'David', 'david@example.com', '824328862', 'Lorem ipsum', 'letmein'),
(5, 'Bob', 'bob@example.com', '728877460', 'Lorem ipsum', 'letmein'),
(6, 'Emily', 'emily@example.com', '803647769', 'Lorem ipsum', 'qwertyuiop'),
(7, 'Charlie', 'charlie@example.com', '966998466', 'Lorem ipsum', 'password123'),
(8, 'Alice', 'alice@example.com', '952337886', 'Lorem ipsum', 'password123'),
(9, 'Charlie', 'charlie@example.com', '500812364', 'Lorem ipsum', 'password123'),
(10, 'Bob', 'bob@example.com', '705213635', 'Lorem ipsum', 'iloveyou'),
(11, 'David', 'david@example.com', '199198095', 'Lorem ipsum', 'letmein'),
(12, 'David', 'david@example.com', '569548492', 'Lorem ipsum', 'letmein'),
(13, 'Charlie', 'charlie@example.com', '378266644', 'Lorem ipsum', 'qwertyuiop'),
(14, 'Bob', 'bob@example.com', '858664868', 'Lorem ipsum', 'iloveyou'),
(15, 'Bob', 'bob@example.com', '854029833', 'Lorem ipsum', 'letmein'),
(16, 'Alice', 'alice@example.com', '143228674', 'Lorem ipsum', 'iloveyou'),
(17, 'Alice', 'alice@example.com', '122531152', 'Lorem ipsum', 'password123'),
(18, 'Alice', 'alice@example.com', '793542786', 'Lorem ipsum', 'password123'),
(19, 'Emily', 'emily@example.com', '569996318', 'Lorem ipsum', 'letmein'),
(20, 'David', 'david@example.com', '112748430', 'Lorem ipsum', 'iloveyou'),
(21, 'Alice', 'alice@example.com', '941961943', 'Lorem ipsum', 'letmein'),
(22, 'David', 'david@example.com', '761857399', 'Lorem ipsum', '123456789'),
(23, 'David', 'david@example.com', '466997247', 'Lorem ipsum', 'password123'),
(24, 'David', 'david@example.com', '919560481', 'Lorem ipsum', 'password123'),
(25, 'David', 'david@example.com', '938728893', 'Lorem ipsum', 'password123'),
(26, 'Charlie', 'charlie@example.com', '379130426', 'Lorem ipsum', 'letmein'),
(27, 'Bob', 'bob@example.com', '995406938', 'Lorem ipsum', 'iloveyou'),
(28, 'Bob', 'bob@example.com', '302045891', 'Lorem ipsum', '123456789'),
(29, 'Alice', 'alice@example.com', '869880178', 'Lorem ipsum', 'letmein'),
(30, 'Alice', 'alice@example.com', '934284699', 'Lorem ipsum', 'qwertyuiop'),
(31, 'Alice', 'alice@example.com', '818228352', 'Lorem ipsum', 'qwertyuiop'),
(32, 'Alice', 'alice@example.com', '977078223', 'Lorem ipsum', '123456789'),
(33, 'Emily', 'emily@example.com', '455931527', 'Lorem ipsum', 'iloveyou'),
(34, 'David', 'david@example.com', '827996656', 'Lorem ipsum', 'qwertyuiop'),
(35, 'David', 'david@example.com', '911292108', 'Lorem ipsum', '123456789'),
(36, 'Emily', 'emily@example.com', '740329822', 'Lorem ipsum', 'qwertyuiop'),
(37, 'Alice', 'alice@example.com', '579140776', 'Lorem ipsum', 'qwertyuiop'),
(38, 'David', 'david@example.com', '149598174', 'Lorem ipsum', 'qwertyuiop'),
(39, 'David', 'david@example.com', '731559619', 'Lorem ipsum', 'qwertyuiop'),
(40, 'David', 'david@example.com', '611915573', 'Lorem ipsum', 'password123'),
(41, 'Emily', 'emily@example.com', '903170092', 'Lorem ipsum', 'letmein'),
(42, 'Bob', 'bob@example.com', '883607842', 'Lorem ipsum', 'letmein'),
(43, 'Emily', 'emily@example.com', '154218232', 'Lorem ipsum', 'password123'),
(44, 'Bob', 'bob@example.com', '170199689', 'Lorem ipsum', 'iloveyou'),
(45, 'Alice', 'alice@example.com', '382520777', 'Lorem ipsum', '123456789'),
(46, 'Emily', 'emily@example.com', '224331266', 'Lorem ipsum', 'password123'),
(47, 'Charlie', 'charlie@example.com', '780951270', 'Lorem ipsum', 'password123'),
(48, 'Emily', 'emily@example.com', '594816412', 'Lorem ipsum', 'iloveyou'),
(49, 'David', 'david@example.com', '155767697', 'Lorem ipsum', 'letmein'),
(50, 'Alice', 'alice@example.com', '431553402', 'Lorem ipsum', 'letmein'),
(51, 'David', 'david@example.com', '888189367', 'Lorem ipsum', 'iloveyou'),
(52, 'Bob', 'bob@example.com', '514833811', 'Lorem ipsum', 'password123'),
(53, 'Alice', 'alice@example.com', '743589595', 'Lorem ipsum', 'qwertyuiop'),
(54, 'David', 'david@example.com', '388975423', 'Lorem ipsum', '123456789'),
(55, 'Alice', 'alice@example.com', '120607746', 'Lorem ipsum', 'qwertyuiop'),
(56, 'Emily', 'emily@example.com', '327445830', 'Lorem ipsum', 'password123'),
(57, 'David', 'david@example.com', '777006138', 'Lorem ipsum', 'qwertyuiop'),
(58, 'Emily', 'emily@example.com', '223340870', 'Lorem ipsum', 'letmein'),
(59, 'Charlie', 'charlie@example.com', '194734432', 'Lorem ipsum', 'qwertyuiop'),
(60, 'Alice', 'alice@example.com', '482952743', 'Lorem ipsum', 'password123'),
(61, 'Charlie', 'charlie@example.com', '880386659', 'Lorem ipsum', 'iloveyou'),
(62, 'Bob', 'bob@example.com', '447188872', 'Lorem ipsum', 'password123'),
(63, 'Charlie', 'charlie@example.com', '418226821', 'Lorem ipsum', 'password123'),
(64, 'Charlie', 'charlie@example.com', '609209336', 'Lorem ipsum', 'letmein'),
(65, 'Emily', 'emily@example.com', '987772279', 'Lorem ipsum', 'password123'),
(66, 'Charlie', 'charlie@example.com', '478093091', 'Lorem ipsum', 'qwertyuiop'),
(67, 'David', 'david@example.com', '127735323', 'Lorem ipsum', 'password123'),
(68, 'Emily', 'emily@example.com', '260058907', 'Lorem ipsum', 'letmein'),
(69, 'Bob', 'bob@example.com', '475640712', 'Lorem ipsum', 'password123'),
(70, 'Charlie', 'charlie@example.com', '619728438', 'Lorem ipsum', 'qwertyuiop'),
(71, 'Emily', 'emily@example.com', '491900522', 'Lorem ipsum', 'password123'),
(72, 'Bob', 'bob@example.com', '798442836', 'Lorem ipsum', 'letmein'),
(73, 'Alice', 'alice@example.com', '968867987', 'Lorem ipsum', 'iloveyou'),
(74, 'Alice', 'alice@example.com', '338826209', 'Lorem ipsum', 'password123'),
(75, 'Bob', 'bob@example.com', '857522947', 'Lorem ipsum', 'qwertyuiop'),
(76, 'Emily', 'emily@example.com', '577700331', 'Lorem ipsum', 'letmein'),
(77, 'Bob', 'bob@example.com', '249790534', 'Lorem ipsum', 'iloveyou'),
(78, 'Bob', 'bob@example.com', '100330168', 'Lorem ipsum', 'letmein'),
(79, 'David', 'david@example.com', '856944047', 'Lorem ipsum', 'qwertyuiop'),
(80, 'Alice', 'alice@example.com', '424326171', 'Lorem ipsum', 'letmein'),
(81, 'Alice', 'alice@example.com', '218877115', 'Lorem ipsum', 'password123'),
(82, 'Alice', 'alice@example.com', '368011270', 'Lorem ipsum', 'password123'),
(83, 'Bob', 'bob@example.com', '771906515', 'Lorem ipsum', 'qwertyuiop'),
(84, 'Emily', 'emily@example.com', '904313004', 'Lorem ipsum', 'qwertyuiop'),
(85, 'David', 'david@example.com', '586108442', 'Lorem ipsum', 'iloveyou'),
(86, 'Alice', 'alice@example.com', '177162317', 'Lorem ipsum', '123456789'),
(87, 'Emily', 'emily@example.com', '535775037', 'Lorem ipsum', 'letmein'),
(88, 'Alice', 'alice@example.com', '286503793', 'Lorem ipsum', 'qwertyuiop'),
(89, 'Alice', 'alice@example.com', '941296368', 'Lorem ipsum', 'letmein'),
(90, 'David', 'david@example.com', '461375410', 'Lorem ipsum', 'qwertyuiop'),
(91, 'Emily', 'emily@example.com', '787460168', 'Lorem ipsum', 'password123'),
(92, 'David', 'david@example.com', '392882772', 'Lorem ipsum', 'qwertyuiop'),
(93, 'Charlie', 'charlie@example.com', '603835127', 'Lorem ipsum', 'password123'),
(94, 'Bob', 'bob@example.com', '448162246', 'Lorem ipsum', 'qwertyuiop'),
(95, 'Charlie', 'charlie@example.com', '264733603', 'Lorem ipsum', 'iloveyou'),
(96, 'Charlie', 'charlie@example.com', '654104146', 'Lorem ipsum', '123456789'),
(97, 'Emily', 'emily@example.com', '742612865', 'Lorem ipsum', '123456789'),
(98, 'Bob', 'bob@example.com', '803068978', 'Lorem ipsum', '123456789'),
(99, 'David', 'david@example.com', '715781792', 'Lorem ipsum', 'password123'),
(100, 'Alice', 'alice@example.com', '731812021', 'Lorem ipsum', 'letmein');

-- --------------------------------------------------------

--
-- Table structure for table `farmers`
--

CREATE TABLE `farmers` (
  `farmer_id` int(11) NOT NULL,
  `farmer_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone_number` bigint(10) DEFAULT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `farmers`
--

INSERT INTO `farmers` (`farmer_id`, `farmer_name`, `email`, `phone_number`, `password`) VALUES
(1, 'Farmer 1', 'farmer1@example.com', 2904692, 'password'),
(2, 'Farmer 2', 'farmer2@example.com', 5571664, 'password'),
(3, 'Farmer 3', 'farmer3@example.com', 4814796, 'password'),
(4, 'Farmer 4', 'farmer4@example.com', 7444958, 'password'),
(5, 'Farmer 5', 'farmer5@example.com', 5559322, 'password'),
(6, 'Farmer 6', 'farmer6@example.com', 4672047, 'password'),
(7, 'Farmer 7', 'farmer7@example.com', 7814854, 'password'),
(8, 'Farmer 8', 'farmer8@example.com', 5883512, 'password'),
(9, 'Farmer 9', 'farmer9@example.com', 7536996, 'password'),
(10, 'Farmer 10', 'farmer10@example.com', 4969872, 'password'),
(11, 'Farmer 11', 'farmer11@example.com', 4715014, 'password'),
(12, 'Farmer 12', 'farmer12@example.com', 4324608, 'password'),
(13, 'Farmer 13', 'farmer13@example.com', 4805756, 'password'),
(14, 'Farmer 14', 'farmer14@example.com', 8926142, 'password'),
(15, 'Farmer 15', 'farmer15@example.com', 9617558, 'password'),
(16, 'Farmer 16', 'farmer16@example.com', 5820181, 'password'),
(17, 'Farmer 17', 'farmer17@example.com', 9060556, 'password'),
(18, 'Farmer 18', 'farmer18@example.com', 5308248, 'password'),
(19, 'Farmer 19', 'farmer19@example.com', 4673747, 'password'),
(20, 'Farmer 20', 'farmer20@example.com', 1396689, 'password'),
(21, 'Farmer 21', 'farmer21@example.com', 9094725, 'password'),
(22, 'Farmer 22', 'farmer22@example.com', 8517834, 'password'),
(23, 'Farmer 23', 'farmer23@example.com', 8099842, 'password'),
(24, 'Farmer 24', 'farmer24@example.com', 2443735, 'password'),
(25, 'Farmer 25', 'farmer25@example.com', 6861557, 'password'),
(26, 'Farmer 26', 'farmer26@example.com', 7607752, 'password'),
(27, 'Farmer 27', 'farmer27@example.com', 4721040, 'password'),
(28, 'Farmer 28', 'farmer28@example.com', 8255625, 'password'),
(29, 'Farmer 29', 'farmer29@example.com', 7930255, 'password'),
(30, 'Farmer 30', 'farmer30@example.com', 5627736, 'password'),
(31, 'Farmer 31', 'farmer31@example.com', 7243362, 'password'),
(32, 'Farmer 32', 'farmer32@example.com', 5554129, 'password'),
(33, 'Farmer 33', 'farmer33@example.com', 9494471, 'password'),
(34, 'Farmer 34', 'farmer34@example.com', 6154355, 'password'),
(35, 'Farmer 35', 'farmer35@example.com', 1779501, 'password'),
(36, 'Farmer 36', 'farmer36@example.com', 6813093, 'password'),
(37, 'Farmer 37', 'farmer37@example.com', 2457496, 'password'),
(38, 'Farmer 38', 'farmer38@example.com', 5082428, 'password'),
(39, 'Farmer 39', 'farmer39@example.com', 4995574, 'password'),
(40, 'Farmer 40', 'farmer40@example.com', 9381208, 'password'),
(41, 'Farmer 41', 'farmer41@example.com', 6033109, 'password'),
(42, 'Farmer 42', 'farmer42@example.com', 6499981, 'password'),
(43, 'Farmer 43', 'farmer43@example.com', 5474429, 'password'),
(44, 'Farmer 44', 'farmer44@example.com', 6298396, 'password'),
(45, 'Farmer 45', 'farmer45@example.com', 4378784, 'password'),
(46, 'Farmer 46', 'farmer46@example.com', 9590871, 'password'),
(47, 'Farmer 47', 'farmer47@example.com', 5380580, 'password'),
(48, 'Farmer 48', 'farmer48@example.com', 2322147, 'password'),
(49, 'Farmer 49', 'farmer49@example.com', 7955185, 'password'),
(50, 'Farmer 50', 'farmer50@example.com', 5082601, 'password'),
(51, 'Farmer 51', 'farmer51@example.com', 1583041, 'password'),
(52, 'Farmer 52', 'farmer52@example.com', 1923302, 'password'),
(53, 'Farmer 53', 'farmer53@example.com', 8598377, 'password'),
(54, 'Farmer 54', 'farmer54@example.com', 7571679, 'password'),
(55, 'Farmer 55', 'farmer55@example.com', 4359938, 'password'),
(56, 'Farmer 56', 'farmer56@example.com', 7762867, 'password'),
(57, 'Farmer 57', 'farmer57@example.com', 6000113, 'password'),
(58, 'Farmer 58', 'farmer58@example.com', 3080248, 'password'),
(59, 'Farmer 59', 'farmer59@example.com', 8018919, 'password'),
(60, 'Farmer 60', 'farmer60@example.com', 4956431, 'password'),
(61, 'Farmer 61', 'farmer61@example.com', 8569913, 'password'),
(62, 'Farmer 62', 'farmer62@example.com', 2396886, 'password'),
(63, 'Farmer 63', 'farmer63@example.com', 5147410, 'password'),
(64, 'Farmer 64', 'farmer64@example.com', 5563507, 'password'),
(65, 'Farmer 65', 'farmer65@example.com', 2963415, 'password'),
(66, 'Farmer 66', 'farmer66@example.com', 2227284, 'password'),
(67, 'Farmer 67', 'farmer67@example.com', 3031377, 'password'),
(68, 'Farmer 68', 'farmer68@example.com', 8059352, 'password'),
(69, 'Farmer 69', 'farmer69@example.com', 3972637, 'password'),
(70, 'Farmer 70', 'farmer70@example.com', 8396656, 'password'),
(71, 'Farmer 71', 'farmer71@example.com', 5882460, 'password'),
(72, 'Farmer 72', 'farmer72@example.com', 3626636, 'password'),
(73, 'Farmer 73', 'farmer73@example.com', 9324741, 'password'),
(74, 'Farmer 74', 'farmer74@example.com', 5048484, 'password'),
(75, 'Farmer 75', 'farmer75@example.com', 7669706, 'password'),
(76, 'Farmer 76', 'farmer76@example.com', 1298492, 'password'),
(77, 'Farmer 77', 'farmer77@example.com', 7557113, 'password'),
(78, 'Farmer 78', 'farmer78@example.com', 2542573, 'password'),
(79, 'Farmer 79', 'farmer79@example.com', 9567600, 'password'),
(80, 'Farmer 80', 'farmer80@example.com', 8179392, 'password'),
(81, 'Farmer 81', 'farmer81@example.com', 5670122, 'password'),
(82, 'Farmer 82', 'farmer82@example.com', 5528571, 'password'),
(83, 'Farmer 83', 'farmer83@example.com', 5109660, 'password'),
(84, 'Farmer 84', 'farmer84@example.com', 8362864, 'password'),
(85, 'Farmer 85', 'farmer85@example.com', 1130075, 'password'),
(86, 'Farmer 86', 'farmer86@example.com', 9548571, 'password'),
(87, 'Farmer 87', 'farmer87@example.com', 8195350, 'password'),
(88, 'Farmer 88', 'farmer88@example.com', 1255346, 'password'),
(89, 'Farmer 89', 'farmer89@example.com', 2013390, 'password'),
(90, 'Farmer 90', 'farmer90@example.com', 8053141, 'password'),
(91, 'Farmer 91', 'farmer91@example.com', 3103201, 'password'),
(92, 'Farmer 92', 'farmer92@example.com', 5373190, 'password'),
(93, 'Farmer 93', 'farmer93@example.com', 6292339, 'password'),
(94, 'Farmer 94', 'farmer94@example.com', 4980864, 'password'),
(95, 'Farmer 95', 'farmer95@example.com', 2126040, 'password'),
(96, 'Farmer 96', 'farmer96@example.com', 3562401, 'password'),
(97, 'Farmer 97', 'farmer97@example.com', 2526030, 'password'),
(98, 'Farmer 98', 'farmer98@example.com', 8097328, 'password'),
(99, 'Farmer 99', 'farmer99@example.com', 8937345, 'password'),
(100, 'Farmer 100', 'farmer100@example.com', 1063425, 'password');

-- --------------------------------------------------------

--
-- Table structure for table `farm_lands`
--

CREATE TABLE `farm_lands` (
  `farm_id` int(11) NOT NULL,
  `farmer_id` int(11) NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `soil_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size_in_acres` decimal(10,2) NOT NULL,
  `latitude` decimal(10,6) NOT NULL,
  `longitude` decimal(10,6) NOT NULL,
  `temperature` decimal(10,2) DEFAULT NULL,
  `humidity` decimal(10,2) DEFAULT NULL,
  `rainfall` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `farm_lands`
--

INSERT INTO `farm_lands` (`farm_id`, `farmer_id`, `location`, `soil_type`, `size_in_acres`, `latitude`, `longitude`, `temperature`, `humidity`, `rainfall`) VALUES
(101, 34, 'Location A', 'Loamy', '26.12', '39.234248', '-70.921307', '25.77', '81.54', '67.35'),
(102, 30, 'Location A', 'Sandy', '16.91', '39.231278', '-78.385817', '16.22', '46.49', '75.60'),
(103, 35, 'Location B', 'Sandy', '28.99', '33.587462', '-74.184361', '21.27', '86.64', '11.33'),
(104, 35, 'Location A', 'Sandy', '30.63', '30.939030', '-72.973188', '15.69', '87.36', '32.86'),
(105, 97, 'Location A', 'Clay', '15.14', '35.206499', '-74.664486', '10.66', '48.99', '63.93'),
(106, 67, 'Location C', 'Sandy', '46.39', '37.031109', '-78.480580', '12.97', '58.88', '84.17'),
(107, 20, 'Location C', 'Loamy', '37.86', '34.948633', '-79.976463', '24.87', '53.75', '26.85'),
(108, 70, 'Location C', 'Loamy', '18.77', '30.822558', '-76.814530', '14.78', '82.14', '78.86'),
(109, 49, 'Location A', 'Loamy', '25.07', '38.097192', '-72.019143', '20.33', '73.35', '74.91'),
(110, 29, 'Location A', 'Loamy', '15.43', '32.594260', '-79.127437', '19.98', '62.76', '12.47'),
(111, 76, 'Location B', 'Sandy', '28.83', '31.895066', '-70.435974', '16.69', '69.28', '28.52'),
(112, 61, 'Location C', 'Loamy', '37.34', '32.828272', '-76.922131', '10.90', '48.12', '67.28'),
(113, 56, 'Location B', 'Loamy', '40.42', '35.827338', '-79.573326', '24.72', '49.19', '13.35'),
(114, 60, 'Location A', 'Clay', '40.60', '37.513825', '-70.698797', '14.35', '68.76', '54.66'),
(115, 84, 'Location C', 'Clay', '17.29', '35.426822', '-75.226576', '25.72', '48.78', '63.00'),
(116, 83, 'Location B', 'Sandy', '47.97', '33.763595', '-75.502639', '16.45', '70.12', '75.07'),
(117, 89, 'Location A', 'Loamy', '30.79', '30.354744', '-73.932075', '20.62', '53.27', '38.80'),
(118, 92, 'Location C', 'Loamy', '49.38', '37.572856', '-73.773560', '18.40', '87.06', '62.70'),
(119, 71, 'Location C', 'Sandy', '49.46', '37.796291', '-79.887982', '18.14', '45.52', '20.19'),
(120, 67, 'Location B', 'Loamy', '36.91', '31.061575', '-75.398117', '22.48', '54.14', '81.83'),
(121, 88, 'Location B', 'Sandy', '15.42', '32.198062', '-74.645093', '19.20', '71.15', '76.08'),
(122, 3, 'Location B', 'Sandy', '25.68', '33.945841', '-72.586801', '19.92', '87.68', '79.62'),
(123, 60, 'Location C', 'Sandy', '21.44', '38.696545', '-72.538558', '27.22', '54.54', '90.51'),
(124, 30, 'Location B', 'Clay', '1.80', '34.198482', '-70.549601', '13.22', '64.12', '50.81'),
(125, 93, 'Location A', 'Sandy', '8.03', '38.533576', '-79.395273', '26.88', '59.07', '26.46'),
(126, 35, 'Location A', 'Sandy', '42.48', '35.356543', '-79.899434', '19.23', '45.65', '61.03'),
(127, 81, 'Location C', 'Loamy', '8.05', '33.008916', '-70.945421', '11.97', '81.65', '95.93'),
(128, 81, 'Location B', 'Loamy', '25.18', '31.964978', '-73.189132', '24.02', '45.04', '98.06'),
(129, 8, 'Location B', 'Loamy', '30.22', '31.391876', '-73.936569', '11.27', '58.60', '27.26'),
(130, 33, 'Location A', 'Sandy', '32.47', '35.354549', '-76.144045', '15.52', '48.08', '49.44'),
(131, 67, 'Location C', 'Clay', '26.16', '31.604436', '-72.383631', '25.95', '84.58', '53.52'),
(132, 65, 'Location C', 'Sandy', '2.88', '39.274537', '-74.128176', '23.50', '78.83', '20.31'),
(133, 69, 'Location C', 'Loamy', '17.64', '36.076850', '-78.659473', '14.32', '85.57', '82.31'),
(134, 17, 'Location B', 'Clay', '5.94', '36.947173', '-71.702971', '28.21', '88.30', '28.38'),
(135, 13, 'Location B', 'Loamy', '40.94', '35.688771', '-75.491031', '17.02', '58.65', '73.23'),
(136, 75, 'Location A', 'Loamy', '41.01', '32.368002', '-74.625516', '11.75', '40.12', '12.45'),
(137, 12, 'Location A', 'Sandy', '22.79', '37.076058', '-74.598630', '18.17', '71.50', '35.56'),
(138, 29, 'Location C', 'Loamy', '28.33', '39.342799', '-70.498085', '27.69', '60.36', '48.28'),
(139, 23, 'Location C', 'Loamy', '8.89', '35.218216', '-75.746423', '16.48', '60.72', '80.08'),
(140, 15, 'Location A', 'Clay', '5.18', '37.807952', '-77.655210', '12.46', '40.47', '73.14'),
(141, 10, 'Location B', 'Clay', '39.38', '30.473901', '-75.831032', '13.94', '56.41', '31.37'),
(142, 64, 'Location A', 'Clay', '22.25', '37.448300', '-73.137671', '16.39', '61.07', '13.91'),
(143, 69, 'Location A', 'Loamy', '30.94', '36.321974', '-79.838379', '12.01', '77.39', '61.37'),
(144, 51, 'Location C', 'Clay', '49.37', '34.993033', '-76.200133', '15.60', '85.76', '46.26'),
(145, 8, 'Location C', 'Clay', '30.17', '33.980275', '-74.389934', '25.48', '81.97', '84.95'),
(146, 65, 'Location C', 'Clay', '38.64', '31.603629', '-72.086685', '17.06', '82.34', '38.71'),
(147, 75, 'Location C', 'Loamy', '24.27', '33.418706', '-74.026615', '29.55', '88.81', '34.01'),
(148, 15, 'Location B', 'Loamy', '44.63', '34.642530', '-74.869996', '26.35', '72.34', '17.67'),
(149, 17, 'Location C', 'Sandy', '41.00', '39.222120', '-74.395888', '24.20', '51.16', '74.44'),
(150, 39, 'Location C', 'Loamy', '32.18', '30.511653', '-78.901362', '13.70', '61.42', '49.95'),
(151, 56, 'Location B', 'Sandy', '3.38', '32.225510', '-72.609436', '11.88', '40.71', '10.34'),
(152, 98, 'Location C', 'Loamy', '43.43', '31.731833', '-76.131090', '26.89', '70.22', '77.00'),
(153, 76, 'Location C', 'Sandy', '47.89', '39.824559', '-71.988655', '21.19', '81.61', '46.31'),
(154, 40, 'Location B', 'Clay', '34.46', '32.142235', '-77.554255', '10.54', '88.44', '25.18'),
(155, 23, 'Location B', 'Loamy', '26.73', '35.625610', '-74.502226', '18.26', '53.05', '54.25'),
(156, 39, 'Location A', 'Sandy', '35.42', '36.741283', '-77.023237', '26.14', '66.81', '81.21'),
(157, 27, 'Location A', 'Loamy', '46.57', '39.735943', '-79.285301', '29.54', '85.70', '84.80'),
(158, 51, 'Location C', 'Sandy', '20.65', '37.113977', '-77.261515', '25.91', '55.71', '96.72'),
(159, 50, 'Location B', 'Loamy', '1.32', '36.064263', '-76.730299', '22.26', '74.49', '81.78'),
(160, 4, 'Location A', 'Sandy', '1.03', '36.174348', '-76.445150', '24.75', '86.53', '59.63'),
(161, 48, 'Location C', 'Clay', '15.87', '31.434082', '-75.598096', '21.92', '69.55', '96.40'),
(162, 47, 'Location A', 'Clay', '14.52', '38.842394', '-78.970768', '17.68', '44.54', '44.32'),
(163, 34, 'Location B', 'Loamy', '48.01', '36.439108', '-76.473246', '23.86', '68.29', '66.82'),
(164, 79, 'Location A', 'Clay', '15.37', '33.830950', '-73.415714', '14.10', '65.09', '82.53'),
(165, 86, 'Location C', 'Sandy', '47.52', '37.399433', '-76.977612', '27.46', '53.73', '34.02'),
(166, 8, 'Location A', 'Loamy', '45.88', '39.990572', '-78.247745', '13.66', '75.98', '74.82'),
(167, 92, 'Location B', 'Loamy', '31.20', '36.250888', '-73.352718', '21.31', '46.93', '51.34'),
(168, 34, 'Location C', 'Clay', '27.77', '35.742058', '-72.688979', '29.84', '44.94', '14.29'),
(169, 49, 'Location A', 'Loamy', '28.82', '36.005961', '-72.643149', '25.02', '44.01', '37.93'),
(170, 37, 'Location A', 'Clay', '30.47', '35.093202', '-70.317065', '16.67', '87.69', '98.05'),
(171, 19, 'Location C', 'Loamy', '8.63', '39.039378', '-70.338218', '14.10', '84.28', '40.10'),
(172, 8, 'Location B', 'Sandy', '39.33', '30.529522', '-75.627007', '25.49', '55.39', '44.19'),
(173, 92, 'Location B', 'Sandy', '33.29', '30.290404', '-78.612125', '16.15', '61.39', '31.58'),
(174, 5, 'Location C', 'Clay', '47.92', '38.062509', '-71.266636', '13.24', '76.89', '69.68'),
(175, 54, 'Location B', 'Sandy', '35.32', '32.116760', '-75.219315', '11.77', '50.26', '20.31'),
(176, 61, 'Location B', 'Loamy', '35.83', '32.979357', '-74.629744', '28.66', '58.50', '93.29'),
(177, 80, 'Location A', 'Loamy', '32.51', '36.559710', '-76.358932', '22.71', '57.30', '62.70'),
(178, 59, 'Location C', 'Loamy', '24.89', '33.388635', '-78.144741', '18.28', '81.44', '73.03'),
(179, 26, 'Location C', 'Sandy', '43.76', '31.720686', '-71.258843', '22.21', '52.94', '32.25'),
(180, 83, 'Location A', 'Loamy', '6.74', '35.141098', '-71.698951', '27.62', '71.57', '70.17'),
(181, 50, 'Location C', 'Clay', '44.62', '37.667577', '-70.027135', '26.71', '55.92', '55.31'),
(182, 36, 'Location C', 'Clay', '42.15', '30.091723', '-71.551966', '16.28', '49.92', '55.63'),
(183, 35, 'Location A', 'Clay', '20.90', '35.951200', '-74.745613', '24.53', '70.01', '28.11'),
(184, 78, 'Location B', 'Sandy', '32.40', '39.975206', '-73.865340', '24.09', '64.07', '84.50'),
(185, 91, 'Location A', 'Sandy', '8.71', '30.242058', '-74.256859', '23.96', '75.66', '86.06'),
(186, 7, 'Location B', 'Sandy', '29.21', '34.956321', '-72.303548', '27.32', '80.57', '33.47'),
(187, 70, 'Location A', 'Sandy', '39.48', '32.458998', '-78.557862', '17.12', '76.01', '24.91'),
(188, 49, 'Location A', 'Clay', '24.30', '35.642613', '-79.751992', '21.98', '62.75', '35.35'),
(189, 89, 'Location B', 'Loamy', '3.29', '39.271435', '-75.090113', '15.07', '88.79', '17.87'),
(190, 29, 'Location A', 'Clay', '21.99', '37.536622', '-73.322429', '17.24', '57.61', '67.89'),
(191, 17, 'Location A', 'Clay', '6.35', '37.342480', '-79.013041', '16.79', '77.48', '10.11'),
(192, 57, 'Location B', 'Clay', '18.38', '36.228496', '-77.384781', '10.02', '60.24', '11.09'),
(193, 62, 'Location A', 'Loamy', '2.77', '37.492991', '-74.942597', '15.78', '40.55', '39.72'),
(194, 43, 'Location A', 'Clay', '4.05', '32.982110', '-75.617031', '28.96', '53.21', '79.88'),
(195, 39, 'Location B', 'Loamy', '40.10', '38.694520', '-73.940680', '27.38', '79.12', '30.98'),
(196, 90, 'Location B', 'Clay', '10.69', '30.188895', '-73.728414', '28.75', '71.45', '91.67'),
(197, 69, 'Location B', 'Loamy', '35.99', '37.778139', '-73.224491', '12.96', '40.44', '66.10'),
(198, 89, 'Location A', 'Clay', '4.09', '36.157082', '-76.603618', '11.20', '50.38', '98.07'),
(199, 67, 'Location A', 'Loamy', '13.38', '32.019304', '-78.194299', '25.94', '75.58', '93.97'),
(200, 90, 'Location B', 'Clay', '37.48', '34.727135', '-74.683707', '13.73', '44.69', '90.22');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `crop_id` int(11) NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `quantity` int(11) NOT NULL,
  `total_price` decimal(10,2) NOT NULL,
  `latitude` decimal(10,6) NOT NULL,
  `longitude` decimal(10,6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `customer_id`, `crop_id`, `order_date`, `quantity`, `total_price`, `latitude`, `longitude`) VALUES
(1, 82, 97, '2023-05-04 09:49:13', 33, '9801.99', '40.458820', '-113.246571'),
(2, 15, 183, '2023-05-04 09:49:13', 22, '8904.28', '39.243718', '-96.138994'),
(3, 75, 60, '2023-05-04 09:49:13', 48, '12108.00', '38.708999', '-98.405458'),
(4, 47, 142, '2023-05-04 09:49:13', 24, '10828.80', '40.797621', '-77.040915'),
(5, 19, 48, '2023-05-04 09:49:13', 30, '6936.00', '39.079218', '-75.290438'),
(6, 64, 44, '2023-05-04 09:49:13', 18, '4771.80', '38.165269', '-94.026234'),
(7, 18, 82, '2023-05-04 09:49:13', 10, '1178.50', '40.616984', '-102.733081'),
(8, 49, 28, '2023-05-04 09:49:13', 16, '3771.52', '40.853282', '-79.714474'),
(9, 95, 131, '2023-05-04 09:49:13', 3, '1240.89', '41.858815', '-116.908066'),
(10, 8, 129, '2023-05-04 09:49:13', 7, '361.76', '37.740050', '-79.474481'),
(11, 76, 136, '2023-05-04 09:49:13', 20, '9605.80', '41.488405', '-82.188171'),
(12, 82, 102, '2023-05-04 09:49:13', 14, '6508.04', '38.271617', '-95.382052'),
(13, 99, 89, '2023-05-04 09:49:13', 30, '5318.40', '39.730379', '-108.404393'),
(14, 47, 78, '2023-05-04 09:49:13', 47, '7144.94', '39.558309', '-88.513577'),
(15, 34, 177, '2023-05-04 09:49:13', 42, '10363.92', '38.493847', '-92.347697'),
(16, 93, 44, '2023-05-04 09:49:13', 10, '2651.00', '40.447524', '-82.818083'),
(17, 48, 43, '2023-05-04 09:49:13', 47, '15671.68', '38.828891', '-88.598870'),
(18, 34, 122, '2023-05-04 09:49:13', 4, '1241.24', '38.136892', '-83.924775'),
(19, 1, 9, '2023-05-04 09:49:13', 26, '7319.00', '40.637846', '-77.604172'),
(20, 7, 24, '2023-05-04 09:49:13', 8, '2052.88', '40.127504', '-75.540774'),
(21, 32, 77, '2023-05-04 09:49:13', 22, '1758.46', '41.921210', '-90.190664'),
(22, 42, 27, '2023-05-04 09:49:13', 22, '9139.24', '38.231270', '-100.383385'),
(23, 14, 87, '2023-05-04 09:49:13', 42, '5094.18', '37.450897', '-88.707879'),
(24, 66, 124, '2023-05-04 09:49:13', 45, '9323.55', '38.607558', '-88.997891'),
(25, 43, 11, '2023-05-04 09:49:13', 26, '3182.40', '39.356210', '-102.339732'),
(26, 58, 62, '2023-05-04 09:49:13', 34, '14606.40', '38.601134', '-77.441092'),
(27, 97, 194, '2023-05-04 09:49:13', 31, '1790.25', '37.327929', '-89.533012'),
(28, 97, 202, '2023-05-04 09:49:13', 22, '1643.62', '37.749847', '-114.161644'),
(29, 5, 101, '2023-05-04 09:49:13', 19, '3383.71', '41.070180', '-114.367414'),
(30, 43, 163, '2023-05-04 09:49:13', 10, '4406.30', '41.802753', '-102.158834'),
(31, 36, 93, '2023-05-04 09:49:13', 23, '4299.62', '37.627656', '-101.231675'),
(32, 40, 53, '2023-05-04 09:49:13', 17, '2436.10', '41.266199', '-111.777126'),
(33, 17, 147, '2023-05-04 09:49:13', 7, '2290.47', '39.970872', '-110.031731'),
(34, 73, 9, '2023-05-04 09:49:13', 33, '9289.50', '41.767958', '-86.567485'),
(35, 88, 23, '2023-05-04 09:49:13', 1, '105.47', '39.066618', '-78.184138'),
(36, 10, 166, '2023-05-04 09:49:13', 11, '3979.69', '40.790241', '-80.356596'),
(37, 30, 109, '2023-05-04 09:49:13', 20, '8568.80', '37.707113', '-85.982320'),
(38, 63, 151, '2023-05-04 09:49:13', 48, '5176.32', '37.468809', '-77.869135'),
(39, 50, 64, '2023-05-04 09:49:13', 33, '3353.79', '38.838139', '-92.983142'),
(40, 31, 69, '2023-05-04 09:49:13', 19, '4927.84', '38.519390', '-98.533642'),
(41, 64, 157, '2023-05-04 09:49:13', 13, '5569.98', '41.845354', '-105.954618'),
(42, 46, 83, '2023-05-04 09:49:13', 27, '12803.94', '40.901929', '-94.714743'),
(43, 49, 8, '2023-05-04 09:49:13', 1, '427.54', '37.202484', '-79.386760'),
(44, 76, 132, '2023-05-04 09:49:13', 16, '5868.64', '38.919205', '-75.077701'),
(45, 49, 77, '2023-05-04 09:49:13', 30, '2397.90', '40.298061', '-114.851954'),
(46, 72, 28, '2023-05-04 09:49:13', 15, '3535.80', '39.000199', '-92.005274'),
(47, 68, 21, '2023-05-04 09:49:13', 48, '17894.88', '40.053490', '-106.559318'),
(48, 13, 20, '2023-05-04 09:49:13', 43, '8420.26', '40.212550', '-116.710958'),
(49, 50, 147, '2023-05-04 09:49:13', 26, '8507.46', '38.316526', '-102.781682'),
(50, 21, 94, '2023-05-04 09:49:13', 37, '2764.27', '39.638830', '-82.943074'),
(51, 28, 178, '2023-05-04 09:49:13', 1, '123.33', '37.188906', '-105.280758'),
(52, 47, 182, '2023-05-04 09:49:13', 24, '1812.72', '40.182943', '-82.989292'),
(53, 70, 131, '2023-05-04 09:49:13', 11, '4549.93', '41.415610', '-106.655952'),
(54, 32, 177, '2023-05-04 09:49:13', 1, '246.76', '39.698710', '-76.820885'),
(55, 50, 132, '2023-05-04 09:49:13', 29, '10636.91', '39.266867', '-119.082067'),
(56, 23, 80, '2023-05-04 09:49:13', 2, '817.26', '41.102158', '-75.536321'),
(57, 79, 8, '2023-05-04 09:49:13', 6, '2565.24', '38.551288', '-111.642470'),
(58, 80, 87, '2023-05-04 09:49:13', 16, '1940.64', '40.463554', '-81.757461'),
(59, 21, 8, '2023-05-04 09:49:13', 22, '9405.88', '40.589990', '-112.229323'),
(60, 43, 51, '2023-05-04 09:49:13', 19, '5516.84', '41.658243', '-96.597428'),
(61, 62, 141, '2023-05-04 09:49:13', 12, '1123.20', '39.756346', '-82.923410'),
(62, 96, 126, '2023-05-04 09:49:13', 49, '9427.11', '38.478687', '-76.823468'),
(63, 20, 67, '2023-05-04 09:49:13', 46, '3392.04', '41.543310', '-108.927487'),
(64, 75, 18, '2023-05-04 09:49:13', 17, '4421.36', '38.233483', '-84.895632'),
(65, 41, 18, '2023-05-04 09:49:13', 14, '3641.12', '39.287467', '-112.292505'),
(66, 31, 66, '2023-05-04 09:49:13', 9, '790.02', '37.942126', '-102.522353'),
(67, 89, 79, '2023-05-04 09:49:13', 32, '2412.80', '38.091384', '-97.820525'),
(68, 94, 121, '2023-05-04 09:49:13', 11, '1406.46', '41.175782', '-99.207661'),
(69, 89, 99, '2023-05-04 09:49:13', 29, '9743.13', '39.133268', '-90.430375'),
(70, 42, 140, '2023-05-04 09:49:13', 7, '1685.88', '40.048146', '-101.507634'),
(71, 4, 81, '2023-05-04 09:49:13', 28, '11633.16', '37.525882', '-83.916440'),
(72, 6, 64, '2023-05-04 09:49:13', 31, '3150.53', '38.652461', '-76.264579'),
(73, 59, 175, '2023-05-04 09:49:13', 7, '1734.53', '41.210491', '-118.214939'),
(74, 80, 203, '2023-05-04 09:49:13', 25, '2065.00', '37.644443', '-76.025536'),
(75, 81, 108, '2023-05-04 09:49:13', 13, '678.86', '38.699233', '-81.405715'),
(76, 20, 15, '2023-05-04 09:49:13', 6, '542.94', '40.339276', '-108.895741'),
(77, 69, 193, '2023-05-04 09:49:13', 31, '2326.24', '40.170850', '-108.889458'),
(78, 11, 152, '2023-05-04 09:49:13', 45, '8790.75', '39.487939', '-90.974178'),
(79, 49, 105, '2023-05-04 09:49:13', 33, '14473.80', '40.466770', '-103.678760'),
(80, 30, 151, '2023-05-04 09:49:13', 7, '754.88', '40.023293', '-110.805873'),
(81, 42, 77, '2023-05-04 09:49:13', 29, '2317.97', '41.344449', '-102.024198'),
(82, 85, 4, '2023-05-04 09:49:13', 29, '9612.92', '38.522997', '-105.611701'),
(83, 1, 171, '2023-05-04 09:49:13', 49, '17626.28', '39.308465', '-97.904816'),
(84, 48, 148, '2023-05-04 09:49:13', 12, '3827.16', '41.483245', '-104.386761'),
(85, 17, 38, '2023-05-04 09:49:13', 12, '1366.68', '39.080557', '-79.585865'),
(86, 97, 95, '2023-05-04 09:49:13', 34, '2790.38', '40.418199', '-91.274245'),
(87, 96, 162, '2023-05-04 09:49:13', 37, '9822.39', '37.933878', '-77.522168'),
(88, 69, 138, '2023-05-04 09:49:13', 16, '3913.28', '41.706322', '-110.589925'),
(89, 39, 118, '2023-05-04 09:49:13', 46, '7710.06', '37.745968', '-108.340380'),
(90, 30, 175, '2023-05-04 09:49:13', 1, '247.79', '41.846325', '-99.010203'),
(91, 53, 136, '2023-05-04 09:49:13', 26, '12487.54', '40.697583', '-86.941934'),
(92, 18, 118, '2023-05-04 09:49:13', 2, '335.22', '40.041128', '-82.920774'),
(93, 29, 125, '2023-05-04 09:49:13', 47, '3485.99', '39.692492', '-116.049330'),
(94, 53, 73, '2023-05-04 09:49:13', 30, '5347.80', '39.114661', '-84.248088'),
(95, 33, 143, '2023-05-04 09:49:13', 40, '13434.80', '39.676979', '-82.829610'),
(96, 12, 80, '2023-05-04 09:49:13', 48, '19614.24', '38.339604', '-113.083236'),
(97, 6, 122, '2023-05-04 09:49:13', 23, '7137.13', '39.453563', '-78.187785'),
(98, 83, 193, '2023-05-04 09:49:13', 4, '300.16', '37.197328', '-77.454573'),
(99, 31, 176, '2023-05-04 09:49:13', 5, '1192.55', '39.349871', '-75.053454'),
(100, 65, 140, '2023-05-04 09:49:13', 29, '6984.36', '38.543137', '-100.652030'),
(101, 66, 82, '2023-05-04 09:50:21', 44, '5185.40', '41.105880', '-83.111251'),
(102, 34, 159, '2023-05-04 09:50:21', 29, '9428.48', '40.226928', '-79.024663'),
(103, 97, 161, '2023-05-04 09:50:21', 23, '6289.81', '37.941812', '-77.425205'),
(104, 60, 161, '2023-05-04 09:50:21', 14, '3828.58', '41.025404', '-81.883785'),
(105, 57, 31, '2023-05-04 09:50:21', 20, '7711.80', '41.971973', '-76.829245'),
(106, 74, 118, '2023-05-04 09:50:21', 13, '2178.93', '40.853132', '-115.389489'),
(107, 99, 148, '2023-05-04 09:50:21', 6, '1913.58', '37.866247', '-81.989116'),
(108, 48, 63, '2023-05-04 09:50:21', 13, '5775.25', '40.061893', '-108.083401'),
(109, 54, 123, '2023-05-04 09:50:21', 21, '3837.75', '39.534878', '-86.352543'),
(110, 72, 48, '2023-05-04 09:50:21', 33, '7629.60', '39.015630', '-98.061040'),
(111, 54, 58, '2023-05-04 09:50:21', 37, '14790.38', '40.443976', '-119.743243'),
(112, 14, 120, '2023-05-04 09:50:21', 49, '21251.79', '40.272050', '-89.350341'),
(113, 56, 81, '2023-05-04 09:50:21', 43, '17865.21', '40.807018', '-94.158622'),
(114, 66, 60, '2023-05-04 09:50:21', 49, '12360.25', '37.141503', '-98.268102'),
(115, 50, 36, '2023-05-04 09:50:21', 26, '12394.72', '37.333420', '-104.986958'),
(116, 10, 204, '2023-05-04 09:50:21', 45, '12343.95', '39.387740', '-103.982519'),
(117, 77, 150, '2023-05-04 09:50:21', 32, '12386.56', '38.961133', '-91.413048'),
(118, 83, 49, '2023-05-04 09:50:21', 29, '13575.77', '38.998167', '-92.807402'),
(119, 2, 161, '2023-05-04 09:50:21', 10, '2734.70', '40.093110', '-81.736697'),
(120, 55, 189, '2023-05-04 09:50:21', 32, '12326.40', '41.867612', '-109.376354'),
(121, 99, 49, '2023-05-04 09:50:21', 35, '16384.55', '41.861239', '-77.084732'),
(122, 57, 172, '2023-05-04 09:50:21', 31, '6461.64', '38.191984', '-90.988964'),
(123, 54, 149, '2023-05-04 09:50:21', 17, '3269.78', '41.352270', '-111.280455'),
(124, 64, 179, '2023-05-04 09:50:21', 43, '11205.80', '40.433124', '-82.608983'),
(125, 77, 29, '2023-05-04 09:50:21', 30, '10312.20', '38.610957', '-80.524514'),
(126, 65, 74, '2023-05-04 09:50:21', 46, '17358.56', '37.929953', '-104.734415'),
(127, 37, 66, '2023-05-04 09:50:21', 48, '4213.44', '40.963409', '-91.012561'),
(128, 49, 51, '2023-05-04 09:50:21', 3, '871.08', '37.934550', '-77.414585'),
(129, 54, 192, '2023-05-04 09:50:21', 40, '17820.40', '40.566361', '-104.675320'),
(130, 77, 76, '2023-05-04 09:50:21', 9, '3663.36', '37.465018', '-80.193436'),
(131, 72, 152, '2023-05-04 09:50:21', 13, '2539.55', '39.685674', '-94.645994'),
(132, 91, 16, '2023-05-04 09:50:21', 36, '12663.36', '39.181788', '-118.599578'),
(133, 100, 183, '2023-05-04 09:50:21', 42, '16999.08', '39.262822', '-84.396004'),
(134, 41, 195, '2023-05-04 09:50:21', 24, '11404.56', '37.860958', '-106.858985'),
(135, 26, 32, '2023-05-04 09:50:21', 9, '524.16', '39.137803', '-95.075825'),
(136, 7, 174, '2023-05-04 09:50:21', 35, '6493.55', '37.299889', '-79.123611'),
(137, 55, 175, '2023-05-04 09:50:21', 45, '11150.55', '38.955020', '-93.585512'),
(138, 73, 145, '2023-05-04 09:50:21', 7, '1170.12', '39.982711', '-87.919553'),
(139, 69, 11, '2023-05-04 09:50:21', 43, '5263.20', '39.023186', '-105.016622'),
(140, 64, 121, '2023-05-04 09:50:21', 14, '1790.04', '41.245228', '-112.758428'),
(141, 78, 9, '2023-05-04 09:50:21', 44, '12386.00', '39.672142', '-108.693346'),
(142, 100, 20, '2023-05-04 09:50:21', 40, '7832.80', '37.921166', '-76.349227'),
(143, 37, 6, '2023-05-04 09:50:21', 41, '19854.25', '41.584523', '-114.563027'),
(144, 10, 12, '2023-05-04 09:50:21', 23, '8022.86', '40.548826', '-92.515353'),
(145, 93, 183, '2023-05-04 09:50:21', 2, '809.48', '39.969138', '-107.942757'),
(146, 19, 42, '2023-05-04 09:50:21', 44, '7014.48', '38.618623', '-93.644586'),
(147, 94, 173, '2023-05-04 09:50:21', 47, '16368.69', '40.474645', '-92.318804'),
(148, 58, 130, '2023-05-04 09:50:21', 47, '5093.39', '39.266272', '-78.804917'),
(149, 83, 95, '2023-05-04 09:50:21', 5, '410.35', '38.222169', '-96.853773'),
(150, 30, 83, '2023-05-04 09:50:21', 9, '4267.98', '38.868192', '-116.073093'),
(151, 9, 59, '2023-05-04 09:50:21', 23, '4419.68', '40.264375', '-109.613467'),
(152, 58, 83, '2023-05-04 09:50:21', 46, '21814.12', '41.676810', '-94.317194'),
(153, 48, 74, '2023-05-04 09:50:21', 35, '13207.60', '39.703412', '-77.525721'),
(154, 51, 193, '2023-05-04 09:50:21', 22, '1650.88', '37.056345', '-112.346001'),
(155, 68, 135, '2023-05-04 09:50:21', 18, '3927.06', '37.613740', '-110.323393'),
(156, 96, 170, '2023-05-04 09:50:21', 47, '2411.10', '40.848605', '-93.573808'),
(157, 95, 152, '2023-05-04 09:50:21', 18, '3516.30', '40.039153', '-81.706571'),
(158, 91, 144, '2023-05-04 09:50:21', 1, '269.52', '39.326258', '-77.673716'),
(159, 25, 197, '2023-05-04 09:50:21', 33, '5824.17', '37.305472', '-97.041746'),
(160, 84, 105, '2023-05-04 09:50:21', 4, '1754.40', '40.752075', '-95.899912'),
(161, 98, 29, '2023-05-04 09:50:21', 41, '14093.34', '37.361344', '-102.828989'),
(162, 97, 188, '2023-05-04 09:50:21', 14, '1899.80', '39.527238', '-82.336154'),
(163, 15, 197, '2023-05-04 09:50:21', 45, '7942.05', '37.720194', '-104.780118'),
(164, 90, 107, '2023-05-04 09:50:21', 12, '715.08', '38.476285', '-119.840444'),
(165, 79, 25, '2023-05-04 09:50:21', 14, '1469.44', '38.004779', '-90.879105'),
(166, 62, 132, '2023-05-04 09:50:21', 27, '9903.33', '37.397264', '-114.768475'),
(167, 47, 108, '2023-05-04 09:50:21', 45, '2349.90', '40.428980', '-97.963071'),
(168, 6, 166, '2023-05-04 09:50:21', 39, '14109.81', '37.570958', '-103.673972'),
(169, 55, 88, '2023-05-04 09:50:21', 3, '1233.93', '39.951118', '-89.604586'),
(170, 81, 133, '2023-05-04 09:50:21', 16, '2693.60', '39.180188', '-80.031825'),
(171, 41, 188, '2023-05-04 09:50:21', 24, '3256.80', '37.074568', '-88.716242'),
(172, 32, 144, '2023-05-04 09:50:21', 39, '10511.28', '41.161554', '-117.389846'),
(173, 44, 71, '2023-05-04 09:50:21', 36, '9245.52', '38.883205', '-78.288996'),
(174, 26, 146, '2023-05-04 09:50:21', 17, '7788.72', '38.761976', '-99.020383'),
(175, 73, 137, '2023-05-04 09:50:21', 18, '6116.94', '37.195434', '-80.794654'),
(176, 68, 95, '2023-05-04 09:50:21', 21, '1723.47', '40.687231', '-97.660207'),
(177, 17, 201, '2023-05-04 09:50:21', 15, '3632.85', '37.386728', '-78.740972'),
(178, 27, 87, '2023-05-04 09:50:21', 15, '1819.35', '38.546794', '-75.712488'),
(179, 90, 111, '2023-05-04 09:50:21', 11, '4048.88', '40.997312', '-97.816859'),
(180, 44, 64, '2023-05-04 09:50:21', 12, '1219.56', '39.292992', '-78.189803'),
(181, 89, 27, '2023-05-04 09:50:21', 42, '17447.64', '39.440762', '-97.135992'),
(182, 92, 187, '2023-05-04 09:50:21', 16, '3177.12', '41.807379', '-106.485087'),
(183, 31, 103, '2023-05-04 09:50:21', 17, '5199.79', '37.309368', '-84.226245'),
(184, 95, 37, '2023-05-04 09:50:21', 18, '3996.90', '38.864115', '-119.833001'),
(185, 92, 198, '2023-05-04 09:50:21', 12, '4384.32', '39.850788', '-102.862021'),
(186, 12, 122, '2023-05-04 09:50:21', 23, '7137.13', '41.625216', '-100.954008'),
(187, 93, 97, '2023-05-04 09:50:21', 35, '10396.05', '38.256014', '-103.670383'),
(188, 62, 84, '2023-05-04 09:50:21', 39, '8144.37', '39.664608', '-89.564746'),
(189, 18, 60, '2023-05-04 09:50:21', 12, '3027.00', '38.932532', '-103.726358'),
(190, 62, 123, '2023-05-04 09:50:21', 31, '5665.25', '40.016219', '-92.208159'),
(191, 61, 184, '2023-05-04 09:50:21', 22, '3832.40', '39.089421', '-87.592591'),
(192, 98, 48, '2023-05-04 09:50:21', 8, '1849.60', '41.033111', '-96.019092'),
(193, 34, 171, '2023-05-04 09:50:21', 11, '3956.92', '38.865469', '-94.984759'),
(194, 10, 103, '2023-05-04 09:50:21', 18, '5505.66', '37.988459', '-82.808359'),
(195, 57, 175, '2023-05-04 09:50:21', 46, '11398.34', '40.739845', '-92.192530'),
(196, 51, 23, '2023-05-04 09:50:21', 29, '3058.63', '37.945522', '-90.131982'),
(197, 65, 150, '2023-05-04 09:50:21', 6, '2322.48', '41.229222', '-81.980390'),
(198, 99, 116, '2023-05-04 09:50:21', 33, '5951.88', '37.937641', '-75.274342'),
(199, 8, 175, '2023-05-04 09:50:21', 5, '1238.95', '41.563393', '-82.664941'),
(200, 76, 81, '2023-05-04 09:50:21', 15, '6232.05', '38.658691', '-111.436783');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `crops`
--
ALTER TABLE `crops`
  ADD PRIMARY KEY (`crop_id`),
  ADD KEY `farmer_id` (`farmer_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `farmers`
--
ALTER TABLE `farmers`
  ADD PRIMARY KEY (`farmer_id`);

--
-- Indexes for table `farm_lands`
--
ALTER TABLE `farm_lands`
  ADD PRIMARY KEY (`farm_id`),
  ADD KEY `farmer_id` (`farmer_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `crop_id` (`crop_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `crops`
--
ALTER TABLE `crops`
  MODIFY `crop_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=205;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `farmers`
--
ALTER TABLE `farmers`
  MODIFY `farmer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `farm_lands`
--
ALTER TABLE `farm_lands`
  MODIFY `farm_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `crops`
--
ALTER TABLE `crops`
  ADD CONSTRAINT `crops_ibfk_1` FOREIGN KEY (`farmer_id`) REFERENCES `farmers` (`farmer_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `farm_lands`
--
ALTER TABLE `farm_lands`
  ADD CONSTRAINT `farm_lands_ibfk_1` FOREIGN KEY (`farmer_id`) REFERENCES `farmers` (`farmer_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`crop_id`) REFERENCES `crops` (`crop_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
