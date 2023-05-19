-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 23, 2022 at 04:52 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `busscheduledb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `user` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `confirmpassword` varchar(255) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `fname`, `lname`, `user`, `password`, `confirmpassword`, `status`) VALUES
(1, 'group', 'one', 'admin@admin.com', 'admin', 'admin', 'ADMIN'),
(2, 'vignesh', 'r', 'vignesh@gmail.com', '1996', '1996', 'CLIENT'),
(3, 'marmar', 'niel', 'marmar@yahoo.com', '81dc9bdb52d04dc20036dbd8313ed055', '81dc9bdb52d04dc20036dbd8313ed055', 'CLIENT'),
(4, 'Nielmar', 'Mangana', 'nelmarmangana@yahoo.com', '674f3c2c1a8a6f90461e8a66fb5550ba', '099ebea48ea9666a7da2177267983138', 'CLIENT'),
(5, 'Nielmar', 'Mangana', 'nelmarmangana@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '827ccb0eea8a706c4c34a16891f84e7b', 'CLIENT'),
(6, 'sreerag', 'kr', 'sreeragkr1271@gmail.com', '8e80edb0e452de64b2ca74dde3fe149d', '8e80edb0e452de64b2ca74dde3fe149d', 'CLIENT'),
(7, 'Ram', 'murthy', 'krm4864@gmail.com', '1964', '1964', 'CLIENT');

-- --------------------------------------------------------

--
-- Table structure for table `bus`
--

CREATE TABLE `bus` (
  `BUS_ID` int(30) NOT NULL,
  `BUS_NAME` varchar(40) NOT NULL,
  `BUS_TYPE` varchar(40) NOT NULL,
  `DRIVER_ID` int(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bus`
--

INSERT INTO `bus` (`BUS_ID`, `BUS_NAME`, `BUS_TYPE`, `DRIVER_ID`) VALUES
(2, '3D', 'Deluxe', 43),
(3, 'Karito', 'hh', 86),
(4, 'airconzion', 'zion', 222);

-- --------------------------------------------------------

--
-- Table structure for table `driver`
--

CREATE TABLE `driver` (
  `DRIVER_ID` int(30) NOT NULL,
  `DRIVER_NAME` varchar(50) NOT NULL,
  `EMPLOY_DATE` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `driver`
--

INSERT INTO `driver` (`DRIVER_ID`, `DRIVER_NAME`, `EMPLOY_DATE`) VALUES
(1, 'Mon', '2018-10-01'),
(3, 'Anoop', '2018-11-09'),
(4, 'DAROY', '2018-05-15'),
(5, 'Von', '2018-10-17'),
(6, 'Kanor', '2018-07-16'),
(7, 'vignesh', '2019-09-11');

-- --------------------------------------------------------

--
-- Table structure for table `route`
--

CREATE TABLE `route` (
  `ROUTE_ID` int(50) NOT NULL,
  `FAIR` float NOT NULL,
  `START` varchar(50) NOT NULL,
  `FINISH` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `route`
--

INSERT INTO `route` (`ROUTE_ID`, `FAIR`, `START`, `FINISH`) VALUES
(0, 300, 'Coimbatore', 'Salem'),
(1, 170, 'Coimbatore', 'Thrissur'),
(2, 1555, 'CHMSC', 'GREENHOUSE'),
(3, 1500, 'BLR', 'CBE');

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE `schedule` (
  `SCHEDULE_ID` int(11) NOT NULL,
  `ARRIVAL` date NOT NULL,
  `DEPARTURE` date NOT NULL,
  `BUS_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schedule`
--

INSERT INTO `schedule` (`SCHEDULE_ID`, `ARRIVAL`, `DEPARTURE`, `BUS_ID`) VALUES
(1, '2018-10-04', '2018-10-04', 12),
(2, '2018-10-09', '2018-10-10', 2),
(3, '2018-12-05', '2018-10-06', 3),
(4, '2018-08-05', '2018-08-06', 4),
(5, '2018-11-02', '2018-11-02', 5),
(6, '2018-11-05', '2018-10-04', 444),
(4447, '2018-02-03', '2018-03-03', 8787),
(4448, '2017-09-11', '2017-09-11', 555),
(4449, '2022-06-23', '2022-06-24', 20);

-- --------------------------------------------------------

--
-- Table structure for table `stop`
--

CREATE TABLE `stop` (
  `LOCATION_ID` int(50) NOT NULL,
  `LOCATION_NAME` varchar(40) NOT NULL,
  `ROUTE_ID` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stop`
--

INSERT INTO `stop` (`LOCATION_ID`, `LOCATION_NAME`, `ROUTE_ID`) VALUES
(0, 'Ukkadam', 58),
(1, 'candonis', 57),
(5, 'Singanallur', 45);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bus`
--
ALTER TABLE `bus`
  ADD PRIMARY KEY (`BUS_ID`);

--
-- Indexes for table `driver`
--
ALTER TABLE `driver`
  ADD PRIMARY KEY (`DRIVER_ID`);

--
-- Indexes for table `route`
--
ALTER TABLE `route`
  ADD PRIMARY KEY (`ROUTE_ID`);

--
-- Indexes for table `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`SCHEDULE_ID`);

--
-- Indexes for table `stop`
--
ALTER TABLE `stop`
  ADD PRIMARY KEY (`LOCATION_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `bus`
--
ALTER TABLE `bus`
  MODIFY `BUS_ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `schedule`
--
ALTER TABLE `schedule`
  MODIFY `SCHEDULE_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4450;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
