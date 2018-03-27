-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 27, 2018 at 09:13 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 5.6.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `greedcontrol`
--

-- --------------------------------------------------------

--
-- Table structure for table `citadels`
--

CREATE TABLE `citadels` (
  `id` int(11) NOT NULL,
  `username` text NOT NULL,
  `turn` int(11) NOT NULL DEFAULT '0',
  `role1` int(11) DEFAULT '0',
  `role2` int(11) NOT NULL DEFAULT '0',
  `gold` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `citadels`
--

INSERT INTO `citadels` (`id`, `username`, `turn`, `role1`, `role2`, `gold`) VALUES
(1, 'bot', 0, 4, 0, 3),
(2, 'nshapiro19', 1, 0, 6, 0),
(3, 'asethiolowin19', 0, 1, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `citadels`
--
ALTER TABLE `citadels`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `citadels`
--
ALTER TABLE `citadels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
