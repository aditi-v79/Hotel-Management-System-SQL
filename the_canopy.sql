-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 02, 2019 at 09:56 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `the_canopy`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE `admin_login` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`username`, `password`) VALUES
('janani', '1234'),
('admin', 'abcd');

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `rno` int(11) NOT NULL,
  `user` varchar(20) NOT NULL,
  `edate` date NOT NULL,
  `ldate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`rno`, `user`, `edate`, `ldate`) VALUES
(1, 'jsv', '2019-11-17', '2019-11-20'),
(2, 'janani', '2019-11-18', '2019-11-20');

-- --------------------------------------------------------

--
-- Table structure for table `cust_details`
--

CREATE TABLE `cust_details` (
  `cust_id` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `phone` bigint(11) NOT NULL,
  `address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cust_details`
--

INSERT INTO `cust_details` (`cust_id`, `name`, `email`, `phone`, `address`) VALUES
('5dc66ab395857', 'Janani', 'jan24@gmail.com', 9711499081, '553, Pocket F, Sarita Vihar, New Delhi-110076'),
('5dcd763c943f7', 'jsv', 'jsv@gmail.com', 9876543210, 'jiit sector 62'),
('5dce74d3ea38f', 'jaja', 'jaaj@gmil.com', 2134234234, 'asfasfadfa'),
('5de3ca65dec11', 'jiit', 'jiit@gmail.com', 9876543210, 'sector 62, noida');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `name` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `rating` int(11) NOT NULL,
  `review` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`name`, `email`, `rating`, `review`) VALUES
('Janani', 'jan24@gmail.com', 5, 'GREAT HOTEL!!!!! LOVED THE SERVICE AND FOOD'),
('Janani', 'jan24@gmail.com', 5, 'LOVED IT!!!!!!!! GREAT FOOD AND SERVICE'),
('jsv', 'jsv@gmail.com', 5, 'GREAT!!! NICE VIEW'),
('jaja', 'jaaj@gmil.com', 5, 'sjgdhasgd'),
('asd', 'asdasdas', 4, 'asdasdasd'),
('Janani', 'jan24@gmail.com', 5, 'LOVING IT');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `rno` int(11) NOT NULL,
  `rtype` varchar(10) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`rno`, `rtype`, `price`) VALUES
(1, 'deluxe', 1000),
(2, 'deluxe', 1000),
(3, 'deluxe', 1000),
(4, 'deluxe', 1000),
(5, 'deluxe', 1000),
(6, 'supreme', 2000),
(7, 'deluxe', 1000),
(8, 'supreme', 2000),
(9, 'supreme', 2000),
(10, 'deluxe', 1000),
(11, 'supreme', 2000),
(12, 'deluxe', 1000);

-- --------------------------------------------------------

--
-- Table structure for table `user_login`
--

CREATE TABLE `user_login` (
  `cust_id` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_login`
--

INSERT INTO `user_login` (`cust_id`, `username`, `password`) VALUES
('5dc66ab395857', 'janani', 'jana2401'),
('5dcd763c943f7', 'jsv', 'jsv'),
('5dce74d3ea38f', 'abcd', 'abcd'),
('5de3ca65dec11', 'jiit', 'jiit');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`rno`);

--
-- Indexes for table `user_login`
--
ALTER TABLE `user_login`
  ADD UNIQUE KEY `cust_id` (`cust_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
