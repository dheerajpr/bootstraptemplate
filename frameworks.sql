-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 13, 2015 at 02:27 AM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `frameworks`
--

-- --------------------------------------------------------

--
-- Table structure for table `frameworks`
--

CREATE TABLE IF NOT EXISTS `frameworks` (
  `id` int(4) NOT NULL,
  `language_id` int(4) NOT NULL,
  `framework_name` char(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `frameworks`
--

INSERT INTO `frameworks` (`id`, `language_id`, `framework_name`) VALUES
(1, 1, 'Angular Js'),
(2, 1, 'JQuery'),
(3, 1, 'Backbone.Js'),
(4, 1, 'Ember.js'),
(5, 1, 'Node.js'),
(6, 2, 'FuelPHP'),
(7, 2, 'Yii'),
(8, 2, 'CakePHP'),
(9, 2, 'CodeIgniter'),
(10, 2, 'Laravel'),
(11, 3, 'Apache Click'),
(12, 3, 'Hamlets'),
(13, 3, 'Play'),
(14, 3, 'Spring'),
(15, 3, 'Stripes'),
(16, 4, 'Play!'),
(17, 4, 'Lift'),
(18, 4, 'Scalatra'),
(19, 5, 'Camping'),
(20, 5, 'Ruby on Rails'),
(21, 5, 'PureMVC'),
(22, 5, 'Merb'),
(23, 5, 'Sinatra'),
(24, 6, 'Catalyst'),
(25, 6, 'Dancer'),
(26, 6, 'Mason'),
(27, 6, 'Maypole'),
(28, 6, 'Mojolicious'),
(29, 7, 'Django'),
(30, 7, 'CherryPy'),
(31, 7, 'Tornado'),
(32, 7, 'Zope 2'),
(33, 7, 'Pylons');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE IF NOT EXISTS `languages` (
  `Id` int(4) NOT NULL,
  `language` varchar(16) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`Id`, `language`) VALUES
(1, 'Javascript'),
(2, 'PHP'),
(3, 'Java'),
(4, 'scala'),
(5, 'Ruby'),
(6, 'Perl'),
(7, 'Python');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `frameworks`
--
ALTER TABLE `frameworks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `frameworks`
--
ALTER TABLE `frameworks`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `Id` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
