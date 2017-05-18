-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 18, 2017 at 11:39 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `firm_step`
--

-- --------------------------------------------------------

--
-- Table structure for table `queue`
--

CREATE TABLE `queue` (
  `id` int(11) UNSIGNED NOT NULL,
  `firstName` varchar(50) DEFAULT NULL,
  `lastName` varchar(50) DEFAULT NULL,
  `organization` varchar(50) DEFAULT NULL,
  `type` enum('Citizen','Anonymous') DEFAULT NULL,
  `service` enum('Council Tax','Benefits','Rent') DEFAULT NULL,
  `queuedDate` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `queue`
--

INSERT INTO `queue` (`id`, `firstName`, `lastName`, `organization`, `type`, `service`, `queuedDate`) VALUES
(1, 'Doctor', 'Who', NULL, 'Citizen', '', '2017-05-01 00:00:00'),
(2, 'Arya', 'Stark', 'Winterfell', 'Citizen', 'Council Tax', '2017-05-01 00:00:00'),
(3, NULL, NULL, NULL, 'Anonymous', 'Council Tax', '2017-05-18 15:18:43'),
(4, 'John', 'Snow', 'Winterfell', 'Citizen', 'Rent', '2017-05-18 15:18:43'),
(5, 'John', 'Smith', NULL, 'Citizen', 'Rent', '2017-05-18 15:18:43'),
(6, 'Steve', 'Harris', 'Iron Maiden', 'Citizen', '', '2017-05-18 15:18:43'),
(7, 'John', 'Petrucci', 'Dream Theater', 'Citizen', 'Council Tax', '2017-05-18 15:18:43'),
(8, 'Steve', 'Vai', NULL, 'Citizen', 'Council Tax', '2017-05-18 15:18:43'),
(9, NULL, NULL, NULL, 'Anonymous', 'Rent', '2017-05-18 15:18:43'),
(10, NULL, NULL, NULL, 'Anonymous', '', '2017-05-18 15:18:43'),
(15, 'frederick', 'carter', 'ethical', 'Citizen', 'Rent', '2017-05-18 21:44:22'),
(16, 'frederick', 'carter', 'ethical', 'Citizen', 'Rent', '2017-05-18 21:46:20'),
(25, 'david', 'jones', 'westminster university', 'Anonymous', 'Council Tax', '2017-05-18 22:06:55'),
(26, 'Jason', 'John', 'Greenwich University', 'Citizen', '', '2017-05-18 22:17:49'),
(27, 'Jason', 'John', 'Greenwich University', 'Citizen', 'Benefits', '2017-05-18 22:19:04'),
(28, 'Jason', 'John', 'Greenwich University', 'Citizen', 'Benefits', '2017-05-18 22:21:15'),
(29, 'Andrew', 'Carter', 'Job Centre', 'Citizen', 'Benefits', '2017-05-18 22:22:00'),
(30, 'Andrew', 'Carter', 'Job Centre', 'Citizen', 'Benefits', '2017-05-18 22:32:46'),
(31, 'Andrew', 'Carter', 'Job Centre', 'Citizen', 'Benefits', '2017-05-18 22:33:03'),
(32, 'Michael', 'Carter', 'Apprentice', 'Anonymous', 'Council Tax', '2017-05-18 22:35:06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `queue`
--
ALTER TABLE `queue`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `queue`
--
ALTER TABLE `queue`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
