-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 12, 2024 at 06:00 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dbinventory`
--

-- --------------------------------------------------------

--
-- Table structure for table `invento_categories`
--

CREATE TABLE IF NOT EXISTS `invento_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `place` varchar(200) NOT NULL,
  `descrp` varchar(400) NOT NULL,
  `date_added` date DEFAULT '0000-00-00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `invento_categories`
--

INSERT INTO `invento_categories` (`id`, `name`, `place`, `descrp`, `date_added`) VALUES
(2, 'BAR', 'KONGOWE - COMPLEX CENTER', '', '2019-10-02'),
(3, 'AMIGO', 'KONGOWE - COMPLEX CENTER', '', '2019-10-02'),
(4, 'ELECTRICAL', 'KONGOWE - COMPLEX CENTER', '', '2019-10-02');

-- --------------------------------------------------------

--
-- Table structure for table `invento_items`
--

CREATE TABLE IF NOT EXISTS `invento_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `descrp` varchar(400) NOT NULL,
  `category` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` decimal(15,0) NOT NULL,
  `date_added` date DEFAULT '0000-00-00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=32 ;

--
-- Dumping data for table `invento_items`
--

INSERT INTO `invento_items` (`id`, `name`, `descrp`, `category`, `qty`, `price`, `date_added`) VALUES
(31, 'AIRTEL FLOAT', '', 2, 70000, '18000', '2024-03-15'),
(1,'BULB','',3,800,'7000','2024-04-14'),
(2,'NOKIA','',4,7800,'37000','2024-04-14');

-- --------------------------------------------------------

--
-- Table structure for table `invento_logs`
--

CREATE TABLE IF NOT EXISTS `invento_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(1) NOT NULL,
  `item` int(11) NOT NULL,
  `fromqty` int(11) NOT NULL,
  `toqty` int(11) NOT NULL,
  `fromprice` decimal(15,2) NOT NULL,
  `toprice` decimal(15,2) NOT NULL,
  `date_added` date DEFAULT '0000-00-00',
  `user` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=38 ;

--
-- Dumping data for table `invento_logs`
--

INSERT INTO `invento_logs` (`id`, `type`, `item`, `fromqty`, `toqty`, `fromprice`, `toprice`, `date_added`, `user`) VALUES
(37, 2, 31, 100000, 70000, '54000.00', '7000.00', '2024-03-15', 3),
(10, 3, 1, 800, 7000, '6000.00', '1000.00', '2024-03-15', 3);

-- --------------------------------------------------------

--
-- Table structure for table `invento_settings`
--

CREATE TABLE IF NOT EXISTS `invento_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  `val` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `invento_settings`
--

INSERT INTO `invento_settings` (`id`, `name`, `val`) VALUES
(1, 'site_title', 'Invento - %page%'),
(2, 'site_logo', 'media/img/kelvin.jpg'),
(3, 'allow_userchange', 'y'),
(4, 'allow_namechange', 'y'),
(5, 'allow_emailchange', 'y'),
(6, 'installed', 'n');

-- --------------------------------------------------------

--
-- Table structure for table `invento_users`
--

CREATE TABLE IF NOT EXISTS `invento_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` char(32) NOT NULL,
  `name` varchar(300) NOT NULL,
  `email` varchar(255) NOT NULL,
  `role` int(1) NOT NULL,
  `date_added` date DEFAULT '0000-00-00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `invento_users`
--

INSERT INTO `invento_users` (`id`, `username`, `password`, `name`, `email`, `role`, `date_added`) VALUES
(1, 'keldan', '9c1ad00a16a7c67e2727b471ac969e96', 'keldan', 'keldan@gmail.com', 1, '2017-01-28'),
(2, 'efreim', 'fcea920f7412b5da7be0cf42b8c93759', 'efreim', 'efreimdaniel02@gmail.com', 4, '2024-04-09');


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
