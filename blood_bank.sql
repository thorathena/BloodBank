-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 05, 2018 at 06:50 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `blood_bank`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_hosp`(IN `h_user` VARCHAR(200), IN `name` VARCHAR(200), IN `addr` VARCHAR(500), IN `cty` VARCHAR(200), IN `phn` VARCHAR(200))
    NO SQL
INSERT INTO hospital(h_username,h_name,address,city,contact) VALUES ( h_user,name,addr,cty,phn)$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_user`(IN `username` VARCHAR(200), IN `mail` VARCHAR(200), IN `pass` VARCHAR(200), IN `phn` VARCHAR(200))
    NO SQL
INSERT INTO user(username,email,password,phone) VALUES ( username,mail,pass,phn)$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE IF NOT EXISTS `districts` (
  `s_id` int(11) NOT NULL,
  `d_id` int(11) NOT NULL AUTO_INCREMENT,
  `district` varchar(200) NOT NULL,
  PRIMARY KEY (`d_id`),
  KEY `s_id` (`s_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`s_id`, `d_id`, `district`) VALUES
(1, 1, 'Tiruchirapalli'),
(1, 2, 'Chennai'),
(2, 3, 'Ernakulam'),
(2, 4, 'Trivandrum');

-- --------------------------------------------------------

--
-- Table structure for table `donors`
--

CREATE TABLE IF NOT EXISTS `donors` (
  `donor_id` int(11) NOT NULL AUTO_INCREMENT,
  `d_id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `op` int(11) NOT NULL,
  `oneg` int(11) NOT NULL,
  `ap` int(11) NOT NULL,
  `an` int(11) NOT NULL,
  `bp` int(11) NOT NULL,
  `bn` int(11) NOT NULL,
  `abp` int(11) NOT NULL,
  `abn` int(11) NOT NULL,
  PRIMARY KEY (`donor_id`),
  KEY `d_id` (`d_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `donors`
--

INSERT INTO `donors` (`donor_id`, `d_id`, `name`, `op`, `oneg`, `ap`, `an`, `bp`, `bn`, `abp`, `abn`) VALUES
(1, 1, 'Doctor''s Diagnosis', 4, 5, 3, 4, 10, 2, 11, 0),
(2, 3, 'Donor', 4, 0, 2, 2, 0, 3, 4, 3),
(3, 3, 'D1', 1, 2, 2, 1, 1, 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `hospital`
--

CREATE TABLE IF NOT EXISTS `hospital` (
  `h_username` varchar(500) NOT NULL,
  `h_name` varchar(500) NOT NULL,
  `address` varchar(500) NOT NULL,
  `city` varchar(500) NOT NULL,
  `contact` varchar(500) NOT NULL,
  PRIMARY KEY (`h_username`),
  UNIQUE KEY `h_username` (`h_username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hospital`
--

INSERT INTO `hospital` (`h_username`, `h_name`, `address`, `city`, `contact`) VALUES
('abc', 'abc', 'xyz', 'Trichy', '+913892879889'),
('frontline ', 'frontline', 'tpj', 'Trichy', '+91509070345'),
('neurocenter', 'neuro center', 'ThillaiNagar\r\n\r\n', 'Trichy', '+919089968755');

-- --------------------------------------------------------

--
-- Table structure for table `hospital_request`
--

CREATE TABLE IF NOT EXISTS `hospital_request` (
  `req_id` int(11) NOT NULL AUTO_INCREMENT,
  `h_name` varchar(200) NOT NULL,
  `op` int(11) NOT NULL DEFAULT '0',
  `oneg` int(11) NOT NULL DEFAULT '0',
  `ap` int(11) NOT NULL DEFAULT '0',
  `an` int(11) NOT NULL DEFAULT '0',
  `bp` int(11) NOT NULL DEFAULT '0',
  `bn` int(11) NOT NULL DEFAULT '0',
  `abp` int(11) NOT NULL DEFAULT '0',
  `abn` int(11) NOT NULL DEFAULT '0',
  `status` varchar(200) NOT NULL DEFAULT 'request not issued',
  PRIMARY KEY (`req_id`),
  KEY `h_name` (`h_name`),
  KEY `h_name_2` (`h_name`),
  KEY `h_name_3` (`h_name`),
  KEY `h_name_4` (`h_name`),
  KEY `h_name_5` (`h_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `hospital_request`
--

INSERT INTO `hospital_request` (`req_id`, `h_name`, `op`, `oneg`, `ap`, `an`, `bp`, `bn`, `abp`, `abn`, `status`) VALUES
(1, 'abc', 1, 0, 1, 1, 1, 1, 1, 1, 'denied'),
(2, 'frontline ', 0, 1, 0, 3, 0, 0, 0, 0, 'granted'),
(3, 'frontline', 0, 0, 0, 0, 0, 0, 0, 0, 'denied'),
(4, 'abc', 7, 0, 0, 0, 0, 0, 0, 0, 'granted'),
(5, 'frontline', 1, 0, 1, 0, 0, 0, 0, 0, 'denied'),
(7, 'frontline', 1, 0, 0, 0, 0, 1, 0, 0, 'granted'),
(8, 'frontline', 8, 0, 9, 0, 0, 0, 0, 0, 'denied'),
(9, 'abc', 0, 0, 0, 0, 0, 0, 0, 0, 'denied'),
(10, 'frontline', 1, 1, 0, 0, 0, 0, 0, 0, 'granted'),
(11, 'abc', 0, 0, 0, 0, 0, 0, 0, 0, 'denied'),
(12, 'frontline', 0, 2, 0, 0, 0, 0, 0, 0, 'granted'),
(13, 'frontline', 0, 3, 0, 0, 0, 0, 0, 0, 'denied'),
(14, 'abc', 0, 3, 0, 0, 0, 0, 0, 5, 'denied'),
(15, 'abc', 0, 3, 0, 0, 0, 1, 0, 5, 'granted'),
(16, 'neurocenter', 2, 0, 3, 0, 0, 0, 0, 0, 'request not issued'),
(17, 'neurocenter', 2, 9, 3, 0, 0, 0, 3, 0, 'request not issued');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE IF NOT EXISTS `staff` (
  `s_id` int(11) NOT NULL AUTO_INCREMENT,
  `staff_username` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  PRIMARY KEY (`s_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`s_id`, `staff_username`, `name`, `password`) VALUES
(1, 'somanchi', 'sai prasad', 'sp'),
(2, 'ritika', 'ritika', 'ritika');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE IF NOT EXISTS `states` (
  `s_id` int(11) NOT NULL AUTO_INCREMENT,
  `state` varchar(200) NOT NULL,
  PRIMARY KEY (`s_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`s_id`, `state`) VALUES
(1, 'TamilNadu'),
(2, 'Kerala');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `phone` varchar(200) NOT NULL,
  PRIMARY KEY (`username`),
  KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `password`, `phone`) VALUES
(5, 'chandu', 'chandu@gmail.com', 'chandu', '7988678990'),
(4, 'dasam', 'dasam@dasam.com', 'dasam', '9875795327'),
(1, 'dhanya', 'dan@gmail.com', 'dhanya', '9889899880'),
(2, 'Niranjana_S', 'niru@gmail.com', 'niru', '8989839893'),
(7, 'ritika', 'ritika@gmail.com', 'ritika', '7898662678'),
(6, 'sp', 'sp@gamail.com', 'sp', '890809732099'),
(3, 'sravya', 'sravs@gmail.com', 'srav', '9877646543');

-- --------------------------------------------------------

--
-- Table structure for table `user_request`
--

CREATE TABLE IF NOT EXISTS `user_request` (
  `r_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(200) NOT NULL,
  `bloodgrp` varchar(200) NOT NULL,
  `receipt` varchar(200) NOT NULL,
  `doctor` varchar(200) NOT NULL,
  `hosp_addr` varchar(500) NOT NULL,
  `status` varchar(200) NOT NULL DEFAULT 'request not issued',
  PRIMARY KEY (`r_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `user_request`
--

INSERT INTO `user_request` (`r_id`, `username`, `bloodgrp`, `receipt`, `doctor`, `hosp_addr`, `status`) VALUES
(1, 'dhanya', 'O+', '1234', 'xyz', 'abcd', 'granted'),
(2, 'Niranjana_S', 'AB-', '9874', 'xyz', 'tpj', 'denied'),
(3, 'dhanya', 'O-', '1234', 'dan', 'abc', 'granted'),
(4, 'dhanya', 'A-', '7890', 'abc', 'Kochi', 'granted'),
(5, 'dasam', 'A-', '6789', 'zack', 'Kochi', 'granted'),
(6, 'dhanya', 'A-', '9089', 'fjkaj', 'ers', 'request not issued');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `districts`
--
ALTER TABLE `districts`
  ADD CONSTRAINT `districts_ibfk_1` FOREIGN KEY (`s_id`) REFERENCES `states` (`s_id`);

--
-- Constraints for table `donors`
--
ALTER TABLE `donors`
  ADD CONSTRAINT `donors_ibfk_1` FOREIGN KEY (`d_id`) REFERENCES `districts` (`d_id`);

--
-- Constraints for table `hospital_request`
--
ALTER TABLE `hospital_request`
  ADD CONSTRAINT `hospital_request_ibfk_1` FOREIGN KEY (`h_name`) REFERENCES `hospital` (`h_username`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
