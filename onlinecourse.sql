-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 04, 2021 at 06:19 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onlinecourse`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '2017-01-24 13:21:18', '17-12-2018 04:25:28 PM');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `id` int(11) NOT NULL,
  `courseCode` varchar(255) NOT NULL,
  `courseName` varchar(255) NOT NULL,
  `courseUnit` varchar(255) NOT NULL,
  `noofSeats` int(11) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id`, `courseCode`, `courseName`, `courseUnit`, `noofSeats`, `creationDate`, `updationDate`) VALUES
(1, 'PHP01', 'Core PHP', '1-5', 10, '2017-02-11 14:39:10', '21-05-2018 03:33:37 PM'),
(4, 'MYSQL001', 'MYSQL', '1-8', 10, '2017-02-11 15:47:25', '');

-- --------------------------------------------------------

--
-- Table structure for table `courseenrolls`
--

CREATE TABLE `courseenrolls` (
  `id` int(11) NOT NULL,
  `studentRegno` varchar(255) NOT NULL,
  `pincode` varchar(255) NOT NULL,
  `session` int(11) NOT NULL,
  `department` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `semester` int(11) NOT NULL,
  `course` int(11) NOT NULL,
  `enrollDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courseenrolls`
--

INSERT INTO `courseenrolls` (`id`, `studentRegno`, `pincode`, `session`, `department`, `level`, `semester`, `course`, `enrollDate`) VALUES
(4, '10806121', '715948', 4, 7, 6, 5, 2, '2018-05-21 07:19:41'),
(5, '1182', '274204', 8, 9, 7, 7, 1, '2018-12-17 08:06:01');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `id` int(11) NOT NULL,
  `department` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `department`, `creationDate`) VALUES
(1, 'Account', '2017-02-09 15:52:00'),
(5, 'Test', '2017-02-09 15:55:08'),
(7, 'IT', '2018-05-21 07:03:15'),
(9, 'computer science', '2018-12-17 07:59:37');

-- --------------------------------------------------------

--
-- Table structure for table `level`
--

CREATE TABLE `level` (
  `id` int(11) NOT NULL,
  `level` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `level`
--

INSERT INTO `level` (`id`, `level`, `creationDate`) VALUES
(5, 'Level 1', '2017-02-09 16:04:04'),
(6, 'level 2', '2017-02-09 16:04:12'),
(7, 'level 4', '2017-02-09 16:04:17');

-- --------------------------------------------------------

--
-- Table structure for table `semester`
--

CREATE TABLE `semester` (
  `id` int(11) NOT NULL,
  `semester` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `semester`
--

INSERT INTO `semester` (`id`, `semester`, `creationDate`, `updationDate`) VALUES
(6, 'Fourth Sem', '2018-05-21 07:02:56', ''),
(7, 'second semester', '2018-11-20 10:40:17', '');

-- --------------------------------------------------------

--
-- Table structure for table `session`
--

CREATE TABLE `session` (
  `id` int(11) NOT NULL,
  `session` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `session`
--

INSERT INTO `session` (`id`, `session`, `creationDate`) VALUES
(6, '2011', '2018-12-17 07:58:17'),
(8, '2012', '2018-12-17 07:58:36');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `StudentRegno` varchar(255) NOT NULL,
  `studentPhoto` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `studentName` varchar(255) NOT NULL,
  `pincode` varchar(255) NOT NULL,
  `session` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  `semester` varchar(255) NOT NULL,
  `cgpa` decimal(10,2) NOT NULL,
  `creationdate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`StudentRegno`, `studentPhoto`, `password`, `studentName`, `pincode`, `session`, `department`, `semester`, `cgpa`, `creationdate`, `updationDate`) VALUES
('1182', 'cutm.jpg', '35056cf3019b02c1b7c4cbcfec9d39f0', 'tito', '274204', '', '', '', '0.00', '2018-12-17 08:02:32', ''),
('1211', NULL, 'a01610228fe998f515a72dd730294d87', 'dani', '696758', '', '', '', '0.00', '2018-11-18 05:34:53', ''),
('121143', NULL, 'a01610228fe998f515a72dd730294d87', 'dani', '696758', '', '', '', '0.00', '2018-11-18 05:34:53', ''),
('1211433', NULL, 'a01610228fe998f515a72dd730294d87', 'dani', '696758', '', '', '', '0.00', '2018-11-18 05:34:53', ''),
('12134', NULL, 'a01610228fe998f515a72dd730294d87', 'dani', '696758', '', '', '', '0.00', '2018-11-18 05:34:53', ''),
('125966', '', 'f925916e2754e5e03f75dd58a5733251', 'Test user', '385864', '', '', '', '0.00', '2017-02-11 16:48:03', ''),
('12596613', '', 'f925916e2754e5e03f75dd58a5733251', 'Test user', '385864', '', '', '', '0.00', '2017-02-11 16:48:03', ''),
('1259661354', '', 'f925916e2754e5e03f75dd58a5733251', 'Test user', '385864', '', '', '', '0.00', '2017-02-11 16:48:03', ''),
('125966138', '', 'f925916e2754e5e03f75dd58a5733251', 'Test user', '385864', '', '', '', '0.00', '2017-02-11 16:48:03', ''),
('12596613854', '', 'f925916e2754e5e03f75dd58a5733251', 'Test user', '385864', '', '', '', '0.00', '2017-02-11 16:48:03', ''),
('1259661544', '', 'f925916e2754e5e03f75dd58a5733251', 'Test user', '385864', '', '', '', '0.00', '2017-02-11 16:48:03', ''),
('12596617', '', 'f925916e2754e5e03f75dd58a5733251', 'Test user', '385864', '', '', '', '0.00', '2017-02-11 16:48:03', ''),
('1259661765', '', 'f925916e2754e5e03f75dd58a5733251', 'Test user', '385864', '', '', '', '0.00', '2017-02-11 16:48:03', ''),
('1259662', '', 'f925916e2754e5e03f75dd58a5733251', 'Test user', '385864', '', '', '', '0.00', '2017-02-11 16:48:03', ''),
('125966244', '', 'f925916e2754e5e03f75dd58a5733251', 'Test user', '385864', '', '', '', '0.00', '2017-02-11 16:48:03', ''),
('12596654', '', 'f925916e2754e5e03f75dd58a5733251', 'Test user', '385864', '', '', '', '0.00', '2017-02-11 16:48:03', ''),
('1259666', '', 'f925916e2754e5e03f75dd58a5733251', 'Test user', '385864', '', '', '', '0.00', '2017-02-11 16:48:03', ''),
('125966634', '', 'f925916e2754e5e03f75dd58a5733251', 'Test user', '385864', '', '', '', '0.00', '2017-02-11 16:48:03', ''),
('44', NULL, 'a01610228fe998f515a72dd730294d87', 'dani', '696758', '', '', '', '0.00', '2018-11-18 05:34:53', ''),
('4454', NULL, 'a01610228fe998f515a72dd730294d87', 'dani', '696758', '', '', '', '0.00', '2018-11-18 05:34:53', ''),
('999', '', 'f925916e2754e5e03f75dd58a5733251', 'Test user', '385864', '', '', '', '0.00', '2017-02-11 16:48:03', ''),
('99954', '', 'f925916e2754e5e03f75dd58a5733251', 'Test user', '385864', '', '', '', '0.00', '2017-02-11 16:48:03', '');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `studentRegno` varchar(255) NOT NULL,
  `userip` binary(16) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT current_timestamp(),
  `logout` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `studentRegno`, `userip`, `loginTime`, `logout`, `status`) VALUES
(1, '10806121', 0x3a3a3100000000000000000000000000, '2017-02-11 17:05:58', '', 1),
(2, '10806121', 0x3a3a3100000000000000000000000000, '2017-02-11 17:07:18', '', 1),
(3, '10806121', 0x3a3a3100000000000000000000000000, '2017-02-11 17:08:46', '', 1),
(4, '10806121', 0x3a3a3100000000000000000000000000, '2017-02-11 17:26:15', '', 1),
(5, '10806121', 0x3a3a3100000000000000000000000000, '2017-02-11 17:27:11', '', 1),
(6, '10806121', 0x3a3a3100000000000000000000000000, '2017-02-11 17:28:19', '', 1),
(7, '10806121', 0x3a3a3100000000000000000000000000, '2017-02-11 17:29:30', '', 1),
(8, '10806121', 0x3a3a3100000000000000000000000000, '2017-02-11 17:30:39', '12-02-2017 02:00:40 AM', 1),
(9, '10806121', 0x3a3a3100000000000000000000000000, '2017-02-11 17:32:12', '12-02-2017 02:21:40 AM', 1),
(10, '10806121', 0x3a3a3100000000000000000000000000, '2017-02-11 17:51:50', '12-02-2017 05:14:45 AM', 1),
(11, '10806121', 0x3a3a3100000000000000000000000000, '2017-02-12 02:41:24', '12-02-2017 11:49:58 AM', 1),
(12, '10806121', 0x3a3a3100000000000000000000000000, '2017-02-12 03:20:05', '', 1),
(13, '10806121', 0x3a3a3100000000000000000000000000, '2017-02-12 03:20:23', '12-02-2017 12:09:59 PM', 1),
(14, '10806121', 0x3a3a3100000000000000000000000000, '2018-05-21 06:49:06', '21-05-2018 03:30:53 PM', 1),
(15, '10806121', 0x3a3a3100000000000000000000000000, '2018-05-21 07:19:15', '', 1),
(16, '1182', 0x3a3a3100000000000000000000000000, '2018-12-17 08:03:21', '', 1),
(17, '1182', 0x3a3a3100000000000000000000000000, '2018-12-17 08:17:50', '17-12-2018 04:55:37 PM', 1),
(18, '1182', 0x3a3a3100000000000000000000000000, '2021-12-03 17:17:28', '', 1),
(19, '1182', 0x3a3a3100000000000000000000000000, '2021-12-04 05:25:38', '', 1),
(20, '1182', 0x3a3a3100000000000000000000000000, '2021-12-04 17:18:35', '', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courseenrolls`
--
ALTER TABLE `courseenrolls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `level`
--
ALTER TABLE `level`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `semester`
--
ALTER TABLE `semester`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`StudentRegno`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `courseenrolls`
--
ALTER TABLE `courseenrolls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `level`
--
ALTER TABLE `level`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `semester`
--
ALTER TABLE `semester`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `session`
--
ALTER TABLE `session`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
