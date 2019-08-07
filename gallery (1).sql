-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 03, 2017 at 03:49 PM
-- Server version: 5.5.36
-- PHP Version: 5.4.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `gallery`
--

-- --------------------------------------------------------

--
-- Table structure for table `artist`
--

CREATE TABLE IF NOT EXISTS `artist` (
  `id` int(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `age` int(20) NOT NULL,
  `address` varchar(20) NOT NULL,
  `type` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `artist`
--

INSERT INTO `artist` (`id`, `name`, `age`, `address`, `type`) VALUES
(2, 'vivek', 98, 'wtqeutwue ', 'abstract'),
(4, 'vinod', 23, 'addr', 'abstract');

-- --------------------------------------------------------

--
-- Table structure for table `arts`
--

CREATE TABLE IF NOT EXISTS `arts` (
  `arts_id` int(20) NOT NULL,
  `artist_id` int(20) NOT NULL,
  `arts_type` varchar(20) NOT NULL,
  `arts_desc` varchar(20) NOT NULL,
  PRIMARY KEY (`arts_id`),
  UNIQUE KEY `artist_id` (`artist_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `arts`
--

INSERT INTO `arts` (`arts_id`, `artist_id`, `arts_type`, `arts_desc`) VALUES
(6, 2, 'land', 'abs');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
  `cust_id` int(20) NOT NULL,
  `cust_name` varchar(20) NOT NULL,
  `cust_address` longtext NOT NULL,
  `cust_email` varchar(20) NOT NULL,
  `cust_phone` bigint(20) NOT NULL,
  PRIMARY KEY (`cust_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cust_id`, `cust_name`, `cust_address`, `cust_email`, `cust_phone`) VALUES
(34, 'viv', 'hegfrs', 's@gmail.com', 9004949807),
(41, 'vivek', 'adedf', 'adghd@g.com', 8009);

-- --------------------------------------------------------

--
-- Table structure for table `order1`
--

CREATE TABLE IF NOT EXISTS `order1` (
  `order_id` varchar(20) NOT NULL,
  `cust_id` int(20) NOT NULL,
  `arts_id` int(20) NOT NULL,
  `order_type` varchar(20) NOT NULL,
  PRIMARY KEY (`order_id`),
  UNIQUE KEY `cust_id` (`cust_id`),
  UNIQUE KEY `arts_id` (`arts_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `price`
--

CREATE TABLE IF NOT EXISTS `price` (
  `price_id` varchar(20) NOT NULL,
  `arts_id` int(20) NOT NULL,
  `amount` varchar(20) NOT NULL,
  PRIMARY KEY (`price_id`),
  UNIQUE KEY `art_id` (`arts_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `name` varchar(20) NOT NULL,
  `pass` varchar(20) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`name`, `pass`) VALUES
('JBHGY', '5282852'),
('samurai', 'wrerer'),
('samurai_jack', 'samurai@9005'),
('tejas', 'samurai@9005');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `arts`
--
ALTER TABLE `arts`
  ADD CONSTRAINT `arts_ibfk_1` FOREIGN KEY (`artist_id`) REFERENCES `artist` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `order1`
--
ALTER TABLE `order1`
  ADD CONSTRAINT `order1_ibfk_1` FOREIGN KEY (`cust_id`) REFERENCES `customer` (`cust_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `order1_ibfk_2` FOREIGN KEY (`arts_id`) REFERENCES `arts` (`arts_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `price`
--
ALTER TABLE `price`
  ADD CONSTRAINT `price_ibfk_1` FOREIGN KEY (`arts_id`) REFERENCES `arts` (`arts_id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
