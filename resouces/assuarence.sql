-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 19, 2021 at 06:12 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `assuarence`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `labassess`
--

CREATE TABLE `labassess` (
  `questionno` varchar(50) NOT NULL,
  `question` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `libassess`
--

CREATE TABLE `libassess` (
  `questionno` varchar(50) NOT NULL,
  `question` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `libassess`
--

INSERT INTO `libassess` (`questionno`, `question`) VALUES
('1', 'is our library best ?'),
('2', 'You can have the motive to come back to our library');

-- --------------------------------------------------------

--
-- Table structure for table `library`
--

CREATE TABLE `library` (
  `Names` varchar(50) NOT NULL,
  `job_number` varchar(30) NOT NULL,
  `phonenumber` int(11) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `libresult`
--

CREATE TABLE `libresult` (
  `regno` varchar(50) NOT NULL,
  `questionno` varchar(50) NOT NULL,
  `results` varchar(50) NOT NULL,
  `count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `libresult`
--

INSERT INTO `libresult` (`regno`, `questionno`, `results`, `count`) VALUES
('cs100', '1', 'TRUE', 3),
('cs100', '2', 'TRUE', 4),
('bmit100', '1', 'FALSE', 5),
('bmit100', '2', 'TRUE', 6);

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `jobno` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `department` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`jobno`, `name`, `phone`, `department`, `password`) VALUES
('lab100', 'lab', '0745454', 'Laboratory', 'lab100'),
('learn100', 'learn', '071456555', 'Learning', 'learn100'),
('lib100', 'kiptoo', '0712345678', 'Library', 'lib100'),
('mess100', 'mess', '071234567', 'Mess', 'mess100');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `regno` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `course` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`regno`, `name`, `phone`, `course`, `password`) VALUES
('bmit100', 'mess', '07444', 'Educ', 'bmit100'),
('cs100', 'paulina', '0768308296', 'Educ', 'cs100');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `labassess`
--
ALTER TABLE `labassess`
  ADD UNIQUE KEY `questionno` (`questionno`);

--
-- Indexes for table `libassess`
--
ALTER TABLE `libassess`
  ADD PRIMARY KEY (`questionno`);

--
-- Indexes for table `library`
--
ALTER TABLE `library`
  ADD PRIMARY KEY (`job_number`);

--
-- Indexes for table `libresult`
--
ALTER TABLE `libresult`
  ADD PRIMARY KEY (`count`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`jobno`),
  ADD UNIQUE KEY `phone` (`phone`),
  ADD UNIQUE KEY `department` (`department`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`regno`),
  ADD UNIQUE KEY `phone` (`phone`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `libresult`
--
ALTER TABLE `libresult`
  MODIFY `count` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
