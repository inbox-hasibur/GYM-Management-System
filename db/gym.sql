-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 14, 2024 at 09:58 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gym`
--

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(10) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Email` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `Experience` text NOT NULL,
  `Schedule` varchar(20) NOT NULL,
  `Age` int(2) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `Profession` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `Name`, `Email`, `Password`, `Experience`, `Schedule`, `Age`, `Gender`, `Profession`) VALUES
(1, 'AAA', 'AA@gmail.com', 'QQQQQQ', 'qqqq', '9am-12pm', 22, 'male', 'Personal T');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` int(10) NOT NULL,
  `Name` varchar(200) NOT NULL,
  `Email` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `Height` float NOT NULL,
  `Weight` float NOT NULL,
  `Age` int(3) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `Membership` varchar(10) NOT NULL,
  `Facilities` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `Name`, `Email`, `Password`, `Height`, `Weight`, `Age`, `Gender`, `Membership`, `Facilities`) VALUES
(10, 'reeeeeeeee', 'yhyjyjn@gth.mmm', '55555555', 55, 55, 45, 'male', 'Premium', 'Unlimited equipments\r\n    Personal trainer\r\n    Weight losing classes\r\n    Month to mouth\r\n    No time restriction'),
(11, 'Sharareeee', 'wrwerfwd', 'wdwfewfewf', 44, 44, 444, 'male', 'Standard', 'Unlimited equipments\r\n    Month to mouth\r\n    No time restriction'),
(22, 'ssssssssssss', 'aaaaaaaaaaaa@ff.com', 'e3r342344324', 77, 77, 77, 'male', 'Standard', 'Unlimited equipments\r\n    Month to mouth\r\n    No time restriction'),
(23, 'aaaaaaaaaaaaaaaaaaa', 'aaaaaaaaaa@fff.mm', '2323232323', 11, 11, 11, 'femal', 'Premium', 'Unlimited equipments\r\n    Personal trainer\r\n    Weight losing classes\r\n    Month to mouth\r\n    No time restriction'),
(27, 'aaaaaaaaaaaaaaaaaaa', 'ssss@gmail.com', '111111111111111', 11, 11, 77, 'male', 'Standard', 'Unlimited equipments\r\n    Month to mouth\r\n    No time restriction'),
(28, 'saaaads', 'wdewfewf@gmail.com', '22425325', 33, 33, 33, 'male', 'Premium', 'Unlimited equipments\r\n    Personal trainer\r\n    Weight losing classes\r\n    Month to mouth\r\n    No time restriction'),
(30, 'pokemon', 'pokemon@gmail.com', 'poke1111', 11, 11, 11, 'female', 'Premium', 'Unlimited equipments\r\n    Personal trainer\r\n    Weight losing classes\r\n    Month to mouth\r\n    No time restriction'),
(31, 'pokemon', 'pokemoe@gmail.com', 'aaaa', 33, 77, 77, 'female', 'Premium', 'Unlimited equipments\r\n    Personal trainer\r\n    Weight losing classes\r\n    Month to mouth\r\n    No time restriction'),
(32, 'AAA', 'AAQQ@gmail.com', 'QQQ', 11, 11, 11, 'male', 'Premium', 'Unlimited equipments\r\n    Personal trainer\r\n    Weight losing classes\r\n    Month to mouth\r\n    No time restriction');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
