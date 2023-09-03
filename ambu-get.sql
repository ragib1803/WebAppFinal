-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 03, 2023 at 01:58 AM
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
-- Database: `ambu-get`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_table`
--

CREATE TABLE `admin_table` (
  `adminID` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_table`
--

INSERT INTO `admin_table` (`adminID`, `name`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `donor_table`
--

CREATE TABLE `donor_table` (
  `donorID` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `blood_group` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `donor_table`
--

INSERT INTO `donor_table` (`donorID`, `name`, `phone`, `address`, `email`, `birthdate`, `blood_group`) VALUES
(1, 'Arif', '01906043406', 'Bashundhara', 'test@gmail.com', '2023-09-05', 'AB Po'),
(2, 'Nahiyan', '01696969420', 'Bashundhara', 'test@gmail.com', '2023-09-27', 'A Positive'),
(5, 'Ragib Alam', '01639776447', '150 Road No. 10 block g bashundhara', 'ragibalam@live.com', '0000-00-00', ''),
(6, 'Ragib Alam', '01639776447', '150 Road No. 10 block g bashundhara', 'ragibalam@live.com', '0000-00-00', ''),
(7, 'Ragib Alam', '01639776447', '150 Road No. 10 block g bashundhara', 'ragibalam@live.com', '1997-03-18', 'B Positive'),
(8, 'Ragib Alam', '01639776447', '150 Road No. 10 block g bashundhara', 'ragibalam@live.com', '0000-00-00', ''),
(9, 'Shehab Sharar', '01822852530', 'Banshundhara R/A, Block I, Road 15, House 974, lift 4', '1', '0000-00-00', ''),
(10, 'Shehab Sharar', '01822852530', 'Banshundhara R/A, Block I, Road 15, House 974, lift 4', '1', '0000-00-00', ''),
(11, 'Shehab Sharar', '01822852530', 'Banshundhara R/A, Block I, Road 15, House 974, lift 4', '1', '0000-00-00', ''),
(12, 'Shehab Sharar', '01822852530', 'Banshundhara R/A, Block I, Road 15, House 974, lift 4', '1', '0000-00-00', ''),
(13, 'Ragib Alam', '01639776447', '150 Road No. 10 block g bashundhara', '1', '0000-00-00', ''),
(14, 'Ragib Alam', '01639776447', '150 Road No. 10 block g bashundhara', '1', '2023-09-15', 'AB Unknown');

-- --------------------------------------------------------

--
-- Table structure for table `driver_table`
--

CREATE TABLE `driver_table` (
  `driverID` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `nationalID` int(15) NOT NULL,
  `drivingLicenseNumber` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `driver_table`
--

INSERT INTO `driver_table` (`driverID`, `name`, `password`, `phone`, `address`, `email`, `nationalID`, `drivingLicenseNumber`) VALUES
(1, 'Arif', 'sss', '01906043406', 'Bashundhara', 'test@gmail.com', 123, 456),
(2, 'Arif', 'sss', '01906043406', 'Bashundhara', 'test@gmail.com', 456, 789),
(3, 'Arif', 'www', '01906043406', 'Bashundhara', 'test@gmail.com', 345, 789),
(4, 'Nahiyan', 'aaa', '01906043406', 'Bashundhara', 'test@gmail.com', 756, 2896),
(5, 'Ragib Alam', '12345', '01639776447', '150 Road No. 10 block g bashundhara', 'ragibalam@live.com', 0, 0),
(6, 'Ragib Alam', '12345', '01639776447', '150 Road No. 10 block g bashundhara', 'ragibalam@live.com', 0, 0),
(7, 'Ragib Alam', '12345', '01639776447', '150 Road No. 10 block g bashundhara', 'ragibalam@live.com', 435, 2454),
(8, 'Ragib Alam', '12345', '01639776447', '150 Road No. 10 block g bashundhara', 'ragibalam@live.com', 0, 0),
(9, 'Ragib Alam', '12345', '01639776447', '150 Road No. 10 block g bashundhara', 'ragibalam@live.com', 0, 0),
(10, 'Shehab Sharar', 'admin', '01822852530', 'Banshundhara R/A, Block I, Road 15, House 974, lift 4', '1', 2, 5),
(11, 'Shehab Sharar', 'admin', '01822852530', 'Banshundhara R/A, Block I, Road 15, House 974, lift 4', '1', 2, 5),
(12, 'Shehab Sharar', 'admin', '01822852530', 'Banshundhara R/A, Block I, Road 15, House 974, lift 4', '1', 2, 5),
(13, 'Ragib Alam', 'admin', '01639776447', '150 Road No. 10 block g bashundhara', '1', 342, 342),
(14, 'Ragib Alam', 'admin', '01639776447', '150 Road No. 10 block g bashundhara', '1', 342, 342),
(15, 'Shehab Sharar', 'admin', '01822852530', 'Banshundhara R/A, Block I, Road 15, House 974, lift 4', '1', 432, 234),
(16, 'Shehab Sharar', 'admin', '01822852530', 'Banshundhara R/A, Block I, Road 15, House 974, lift 4', '1', 534, 2534),
(17, 'Shehab Sharar', 'admin', '01822852530', 'Banshundhara R/A, Block I, Road 15, House 974, lift 4', '1', 534, 2534),
(18, 'Ragib Alam', 'admin', '01639776447', '150 Road No. 10 block g bashundhara', '1', 1234, 23121),
(19, 'Ragib Alam', 'admin', '01639776447', '150 Road No. 10 block g bashundhara', '1', 1234, 23121),
(20, 'Shehab Sharar', 'admin', '01822852530', 'Banshundhara R/A, Block I, Road 15, House 974, lift 4', '1', 132, 312),
(21, 'Shehab Sharar', 'admin', '01822852530', 'Banshundhara R/A, Block I, Road 15, House 974, lift 4', '1', 132, 312),
(22, 'Shehab Sharar', 'admin', '01822852530', 'Banshundhara R/A, Block I, Road 15, House 974, lift 4', '1', 324, 234),
(23, 'Shehab Sharar', 'admin', '01822852530', 'Banshundhara R/A, Block I, Road 15, House 974, lift 4', '1', 324, 234),
(24, 'Ragib Alam', 'admin', '01639776447', '150 Road No. 10 block g bashundhara', '1', 756, 456),
(25, 'Ragib Alam', 'admin', '01639776447', '150 Road No. 10 block g bashundhara', '1', 756, 456),
(26, 'Ragib Sharar', 'admin', '01822852530', 'Banshundhara R/A, Block I, Road 15, House 974, lift 4', '1', 3, 4),
(27, 'Ragib Sharar', 'admin', '01822852530', 'Banshundhara R/A, Block I, Road 15, House 974, lift 4', '1', 3, 4),
(28, 'Ragib Sharar', 'admin', '01822852530', 'Banshundhara R/A, Block I, Road 15, House 974, lift 4', '1', 3, 4),
(29, 'Ragijkfewbn', 'admin', '01639776447', '150 Road No. 10 block g bashundhara', '1', 123, 123),
(30, 'Ragijkfewbn', 'admin', '01639776447', '150 Road No. 10 block g bashundhara', '1', 123, 123),
(31, 'Ragijkfewbn', 'admin', '01639776447', '150 Road No. 10 block g bashundhara', '1', 123, 123),
(32, '456', 'admin', '01639776447', '150 Road No. 10 block g bashundhara', '1', 123, 123),
(33, '456', 'admin', '01639776447', '150 Road No. 10 block g bashundhara', '1', 123, 123),
(34, '456', 'admin', '01639776447', '150 Road No. 10 block g bashundhara', '1', 123, 123),
(35, '456', 'admin', '01822852530', 'Banshundhara R/A, Block I, Road 15, House 974, lift 4', '1', 3452, 4352),
(36, '456', 'admin', '01822852530', 'Banshundhara R/A, Block I, Road 15, House 974, lift 4', '1', 3452, 4352),
(37, 'Ragib Alam', 'admin', '01639776447', '150 Road No. 10 block g bashundhara', '1', 123, 123),
(38, 'Ragib Alam', 'admin', '01639776447', '150 Road No. 10 block g bashundhara', '1', 123, 123),
(39, 'Ragib Alam', 'admin', '01639776447', '150 Road No. 10 block g bashundhara', '1', 213, 312),
(40, 'Ragib Alam', 'admin', '01639776447', '150 Road No. 10 block g bashundhara', '1', 213, 312),
(41, 'Ragib Alam', 'admin', '01639776447', '150 Road No. 10 block g bashundhara', '1', 32, 123),
(42, 'Ragib Alam', 'admin', '01639776447', '150 Road No. 10 block g bashundhara', '1', 32, 123),
(43, 'jahan', 'admin', '01639776447', '150 Road No. 10 block g bashundhara', '1', 32, 123),
(44, 'jahan', 'admin', '01639776447', '150 Road No. 10 block g bashundhara', '1', 32, 123),
(45, 'jahan', 'admin', '01639776447', '150 Road No. 10 block g bashundhara', '1', 32, 123),
(46, 'gaf', 'admin', '01639776447', '150 Road No. 10 block g bashundhara', '1', 345, 34),
(47, 'gaf', 'admin', '01639776447', '150 Road No. 10 block g bashundhara', '1', 345, 34),
(48, 'ergs', 'admin', '01639776447', '150 Road No. 10 block g bashundhara', '1', 345, 34),
(49, 'fgds', 'admin', '01639776447', '150 Road No. 10 block g bashundhara', '1', 345, 34),
(50, 'fgds', 'admin', '01639776447', '150 Road No. 10 block g bashundhara', '1', 345, 34),
(51, 'Ragib Alam', 'admin', '01639776447', '150 Road No. 10 block g bashundhara', '1', 231, 123);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `fname` varchar(10) NOT NULL,
  `lname` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `messages` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`fname`, `lname`, `email`, `phone`, `messages`) VALUES
('Ragib', 'Alam', 'ragibalam@live.com', '01639776447', 'ghjhfj');

-- --------------------------------------------------------

--
-- Table structure for table `user_table`
--

CREATE TABLE `user_table` (
  `userID` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `birthdate` date NOT NULL,
  `blood_group` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_table`
--

INSERT INTO `user_table` (`userID`, `name`, `password`, `phone`, `address`, `email`, `birthdate`, `blood_group`) VALUES
(1, 'Arif', 'eee', '01906043406', 'Bashundhara', 'test@gmail.com', '2023-09-29', 'A Positive'),
(4, 'Arif2', 'www', '019060434062', 'Bashundhara2', 'test4@gmail.com', '2023-09-23', 'A Positive'),
(5, 'Ragib Alam', '12345', '01639776447', '150 Road No. 10 block g bashundhara', 'ragibalam@live.com', '1997-03-18', 'B Positive'),
(6, 'Shehab Sharar', 'admin', '01822852530', 'Banshundhara R/A, Block I, Road 15, House 974, lift 4', '1', '2023-09-27', 'A Positive'),
(7, 'Shehab Sharar', 'admin', '01822852530', 'Banshundhara R/A, Block I, Road 15, House 974, lift 4', '1', '2023-09-27', 'A Positive'),
(8, 'Shehab Sharar', 'admin', '01822852530', 'Banshundhara R/A, Block I, Road 15, House 974, lift 4', '1', '2023-09-22', 'A Positive'),
(9, 'Shehab Sharar', 'admin', '01822852530', 'Banshundhara R/A, Block I, Road 15, House 974, lift 4', '1', '2023-09-22', 'A Positive');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_table`
--
ALTER TABLE `admin_table`
  ADD PRIMARY KEY (`adminID`);

--
-- Indexes for table `donor_table`
--
ALTER TABLE `donor_table`
  ADD PRIMARY KEY (`donorID`);

--
-- Indexes for table `driver_table`
--
ALTER TABLE `driver_table`
  ADD PRIMARY KEY (`driverID`);

--
-- Indexes for table `user_table`
--
ALTER TABLE `user_table`
  ADD PRIMARY KEY (`userID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_table`
--
ALTER TABLE `admin_table`
  MODIFY `adminID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `donor_table`
--
ALTER TABLE `donor_table`
  MODIFY `donorID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `driver_table`
--
ALTER TABLE `driver_table`
  MODIFY `driverID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `user_table`
--
ALTER TABLE `user_table`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
