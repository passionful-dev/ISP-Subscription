-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 23, 2014 at 12:09 PM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `isp_subscription`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE IF NOT EXISTS `account` (
  `accountId` int(11) NOT NULL AUTO_INCREMENT,
  `accountHolderId` int(11) NOT NULL,
  `accountHolderName` varchar(100) NOT NULL,
  `paidDate` varchar(12) NOT NULL,
  PRIMARY KEY (`accountId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`accountId`, `accountHolderId`, `accountHolderName`, `paidDate`) VALUES
(3, 1035, 'slsdfjllsdjflfjlsdjfldsjf', '2013-12-25'),
(4, 1001, 'kriss', '2014/06/23'),
(5, 1001, 'kriss', '2014/06/23'),
(6, 1001, 'kriss', '2014/06/22'),
(7, 1002, 'sdfsdfsdf', '2013-12-25'),
(8, 1029, 'AmanPdGyawali', '2013-12-25'),
(9, 1036, '', '2013-12-25'),
(10, 1033, 'sdfljllsjdfllskjdf', '2013-12-25'),
(11, 1001, 'kriss', '2014/06/22'),
(12, 1068, '', '2013-12-28'),
(13, 1091, 'testagain1  ', '2014/06/22'),
(14, 1092, 'testagain4  ', 'Not Paid'),
(15, 1093, 'lasdjflj ljsdlfj lajdfl', 'Not Paid'),
(16, 1094, 'adsfa aldfkj aldsjf', 'Not Paid'),
(17, 1095, 'alksdfjlkas lkjasdlfj lskjdfljk', 'Not Paid'),
(18, 1097, 'aldsfjalk lsjflskdj lkajsdflkj', 'Not Paid'),
(19, 1096, '  ', 'Not Paid'),
(20, 1097, ' dsfs ', 'Not Paid');

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE IF NOT EXISTS `client` (
  `userId` int(11) NOT NULL,
  `firstName` varchar(25) NOT NULL,
  `middleName` varchar(25) NOT NULL,
  `lastName` varchar(25) NOT NULL,
  `blockCode` varchar(25) NOT NULL,
  `streetName` varchar(25) NOT NULL,
  `cityCode` varchar(25) NOT NULL,
  `cityName` varchar(25) NOT NULL,
  `telephone` varchar(20) NOT NULL,
  `email` varchar(40) NOT NULL,
  `status` varchar(15) NOT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`userId`, `firstName`, `middleName`, `lastName`, `blockCode`, `streetName`, `cityCode`, `cityName`, `telephone`, `email`, `status`) VALUES
(1001, 'kriss', '', '', '845/39 Ka', 'Siddhi Charan Sadak', 'Vanasthali 16', 'Kathmandu', '6211122', 'guess_knowme@hotmail.com', 'Student'),
(1029, 'Aman', 'Pd', 'Gyawali', 'sldfj', 'lsdjf', 'lsdfj', 'lsdfj', 'lsdfj', 'lsjdfl@hot.com', 'sldfj'),
(1030, 'Tirtha', 'Bdr', 'Thapa', 'Cha / 8, 46', 'Jana Path', 'butwal-8', 'Butwal', '013456', 'tirtha@hotmail.com', 'student'),
(1031, 'Bidur', 'Bikram', 'Shah', '8', 'maitri path', '071', 'Butwal', '232134', 'bidur@live.com', 'scientist'),
(1032, 'sdflj', 'lsjdf', 'lsdjf', 'sldfj', 'lsdkfj', 'skljfd', 'ljlfsd', 'lskdjf', 'lsdfj', 'lskdfj'),
(1033, 'sdfljl', 'lsjdfl', 'lskjdf', 'lkjdsf', 'lksjdf', 'ljsdf', 'lsdjf', 'lsjdf', 'lsjdf', 'lsdkjf'),
(1034, 'sdffsdf', 'sdfsdf', 'sdfsdf', 'sdfsdf', 'sdfsd', 'sdfsdf', 'sdfsd', 'sdfsd', 'sdffsd', 'sdfd'),
(1035, 'slsdfjl', 'lsdjflfj', 'lsdjfldsjf', 'lsdjfldsjf', 'lskjdflsfdj', 'lsdjflsdjf', 'lkjdslfjlsdjf', 'lsdjflsdj', 'lsdjfljs', 'lsdjfl'),
(1064, 'Client', 'client', 'client', 'client', 'client', 'client', 'client', 'client', 'client', 'client'),
(1068, 'Shila ', '', 'Pantha', 'd', 's', 's', 'ktm', '3431', 'shila_pantha@hotmail.com', 'student'),
(1070, 'ldsjfla', 'lajdflj', 'lsjdfl', 'lsdjflsd', 'lajdfl', 'lsdjfl', 'lsjdfl', 'lsdjfls', 'lsjdflsjf', 'lsdfjls'),
(1071, 'hamro', 'nepal', 'ramro', 'tara', 'ke ', 'garnu', 'hami', 'pani ', 'kaha', 'ho'),
(1072, 'adfasdf', 'adfasdjf', 'lakjfdlj;a', 'lakjdsflkaj', 'lakjsdflajs', 'lajdflja', 'lasjdflaj', 'ladjflajf', 'lajdfljs', 'lasdjflas'),
(1073, 'sdfsdf', '', '', '', '', '', '', '', '', ''),
(1074, 'sdfsdf', '', '', '', '', '', '', '', '', ''),
(1075, '', '', '', '', '', '', '', '', '', ''),
(1076, 'testagain1', '', '', '', '', '', '', '', '', ''),
(1077, 'testagain2', '', '', '', '', '', '', '', '', ''),
(1078, 'testagain3', '', '', '', '', '', '', '', '', ''),
(1079, 'testAgain4', '', '', '', '', '', '', '', '', ''),
(1080, 'testagain5', '', '', '', '', '', '', '', '', ''),
(1081, 'testAgain6', '', '', '', '', '', '', '', '', ''),
(1082, 'testAgain7', '', '', '', '', '', '', '', '', ''),
(1083, 'testagain8', '', '', '', '', '', '', '', '', ''),
(1084, 'testagain9', '', '', '', '', '', '', '', '', ''),
(1085, 'testagain1', '', '', '', '', '', '', '', '', ''),
(1086, 'testagain2', '', '', '', '', '', '', '', '', ''),
(1087, 'testagain3', '', '', '', '', '', '', '', '', ''),
(1088, 'testagain4', '', '', '', '', '', '', '', '', ''),
(1089, 'testagain0', '', '', '', '', '', '', '', '', ''),
(1090, 'testagain1', '', '', '', '', '', '', '', '', ''),
(1091, 'testagain1', '', '', '', '', '', '', '', '', ''),
(1092, 'testagain4', '', '', '', '', '', '', '', '', ''),
(1093, 'lasdjflj', 'ljsdlfj', 'lajdfl', '', '', '', '', '', '', ''),
(1094, 'adsfa', 'aldfkj', 'aldsjf', 'lkjasfdl', 'lksdjf', 'lskjfd', 'lskjdf', 'lsjfd', 'lkjsdf', 'lsdfjk'),
(1095, 'alksdfjlkas', 'lkjasdlfj', 'lskjdfljk', 'ldkfjslkjf', 'lsdjflsj', 'lsdkjflsdkj', 'lsdfjlsjkf', 'lsdfjlsjd', 'ldskjflsj', 'sdlfjlsd'),
(1096, '', '', '', '', '', '', '', '', '', ''),
(1097, '', 'dsfs', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE IF NOT EXISTS `feedback` (
  `currentDate` varchar(14) NOT NULL,
  `feedbackId` int(11) NOT NULL AUTO_INCREMENT,
  `clientId` int(11) NOT NULL,
  `feedbackRemarks` varchar(200) NOT NULL,
  PRIMARY KEY (`feedbackId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`currentDate`, `feedbackId`, `clientId`, `feedbackRemarks`) VALUES
('2013-12-09', 1, 0, 'It is good until now. Keep it up.'),
('2014/06/22', 2, 1001, 'lkjsdf'),
('2014/06/22', 3, 1001, 'alksdjf'),
('2014/06/23', 4, 1001, '');

-- --------------------------------------------------------

--
-- Table structure for table `officestaff`
--

CREATE TABLE IF NOT EXISTS `officestaff` (
  `userId` int(11) NOT NULL,
  `firstName` varchar(25) NOT NULL,
  `middleName` varchar(25) NOT NULL,
  `lastName` varchar(25) NOT NULL,
  `blockCode` varchar(25) NOT NULL,
  `streetName` varchar(25) NOT NULL,
  `cityCode` varchar(25) NOT NULL,
  `cityName` varchar(25) NOT NULL,
  `telephone` varchar(20) NOT NULL,
  `email` varchar(40) NOT NULL,
  `status` varchar(15) NOT NULL,
  `designation` varchar(25) NOT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `officestaff`
--

INSERT INTO `officestaff` (`userId`, `firstName`, `middleName`, `lastName`, `blockCode`, `streetName`, `cityCode`, `cityName`, `telephone`, `email`, `status`, `designation`) VALUES
(1, 'Krishna', '', 'Pantha', '845/39 Ka', 'Siddhi Charan Sadak', 'Vanasthali 16', 'Kathmandu', '9843146969', 'guess_knowme@hotmail.com', 'Student', 'Student'),
(2, 'Hari', 'Bahadur', 'Gharti Magar', '12345', 'Hadi Gaau', '2345', 'Kathmandu', '9999999', 'hari@live.com', 'Professor', 'Co-ordinator'),
(3, 'Harke', 'Prasad', 'Pun', '987644', 'Hanuman Than', '87654', 'Taplejung', '8888888', 'harke@yahoo.com', 'Musician', 'Teacher'),
(4, 'Anita', '', 'Kafle', '456789', 'Barangdi', '567890', 'Palpa', '777777', 'anita@gmail.com', 'Doctor', 'HOD'),
(1048, 'Anand', '', 'Agrawal', '45', 'Herman Krags veg', '7041', 'Trondheim', '45021246', 'anand@stud.ntnu.no', 'Lecturer', 'Head of Department'),
(1060, 'Ram', 'Hari', 'Pandey', 'sldfj', 'lsdjfl', 'lsdjf', 'lsdkjf', 'sldfj', 'sdlfj', 'sdlfj', 'lsdjf'),
(1065, 'staff', 'staff', 'staff', 'staff', 'staff', 'staff', 'staff', 'staff', 'staff', 'staff', 'staff'),
(1069, 'adsfasdf', 'adfasdf', 'asdfasdf', 'asdfs', 'asdf', 'safa', 'asdf', 'asdf', 'asdfsaf', 'asdf', 'asdf');

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE IF NOT EXISTS `rating` (
  `ratingName` enum('Excellent','Good','Satisfactory','Not bad','Bad') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`ratingName`) VALUES
('Excellent'),
('Good'),
('Good'),
('Not bad'),
('Good'),
('Not bad'),
('Bad'),
('Bad'),
('Good'),
('Good'),
('Not bad');

-- --------------------------------------------------------

--
-- Table structure for table `request`
--

CREATE TABLE IF NOT EXISTS `request` (
  `currentDate` varchar(14) NOT NULL,
  `requestId` int(11) NOT NULL AUTO_INCREMENT,
  `requestSubject` varchar(50) NOT NULL,
  `requestDescrip` varchar(200) NOT NULL,
  `clientId` int(11) NOT NULL,
  PRIMARY KEY (`requestId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `request`
--

INSERT INTO `request` (`currentDate`, `requestId`, `requestSubject`, `requestDescrip`, `clientId`) VALUES
('2013-12-07', 1, 'Internet slow', 'Why?', 1001),
('2014-6-21', 2, 'testing', 'testing', 1001),
('2014/06/21', 3, 'testing again', 'testing again', 1001),
('2014/06/21', 5, 'aldkfjalsj', 'lsadjfalsj', 1001),
('2014/06/21', 6, 'ladjflsfdja', 'aldfjlasfj;', 1001),
('2014/06/23', 7, '', '', 1001);

-- --------------------------------------------------------

--
-- Table structure for table `response`
--

CREATE TABLE IF NOT EXISTS `response` (
  `currentDate` varchar(14) NOT NULL,
  `responseId` int(11) NOT NULL AUTO_INCREMENT,
  `responseSubject` varchar(50) NOT NULL,
  `responseDescrip` varchar(200) NOT NULL,
  `clientId` int(11) NOT NULL,
  `requestId` int(11) NOT NULL,
  PRIMARY KEY (`responseId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `response`
--

INSERT INTO `response` (`currentDate`, `responseId`, `responseSubject`, `responseDescrip`, `clientId`, `requestId`) VALUES
('2013-12-08', 1, 'Server maintainence ', 'Server in the office is being maintained today', 1001, 1),
('2014/06/22', 2, 'adsfsadfasdf', 'adfasff', 1001, 5),
('2014/06/22', 3, 'sdfs', 'sfsdf', 1001, 3);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE IF NOT EXISTS `services` (
  `serviceId` int(11) NOT NULL AUTO_INCREMENT,
  `serviceName` varchar(25) NOT NULL,
  `bandwidth` varchar(10) NOT NULL,
  `duration` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `installationCost` int(11) NOT NULL,
  `sharingRatio` varchar(10) NOT NULL,
  `serviceRemarks` varchar(200) NOT NULL,
  PRIMARY KEY (`serviceId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=31 ;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`serviceId`, `serviceName`, `bandwidth`, `duration`, `price`, `installationCost`, `sharingRatio`, `serviceRemarks`) VALUES
(21, 'sdfsd', '234', 234, 234, 234, '234', 'wereeee'),
(22, 'sdfdasf1', '234324', 234, 23423, 2342, '23423', '234234'),
(24, 'sdf', 'sfd', 234, 23, 234, 'sdf', 'sdf'),
(25, 'sdf', 'sdf', 123, 123, 1231, 'sdf', 'sf					'),
(27, 'sdf', '34', 342, 34, 34, '34', 'werwer'),
(28, 'fasddf', 'dsf', 21, 324, 234, 'df', 'sdf'),
(30, 'newService', '234', 234, 234, 423, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `subscription`
--

CREATE TABLE IF NOT EXISTS `subscription` (
  `subscripId` int(11) NOT NULL AUTO_INCREMENT,
  `subscripName` varchar(25) NOT NULL,
  `serviceId` int(11) NOT NULL,
  `clientId` int(11) NOT NULL,
  `expiryDate` varchar(30) NOT NULL,
  PRIMARY KEY (`subscripId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=64 ;

--
-- Dumping data for table `subscription`
--

INSERT INTO `subscription` (`subscripId`, `subscripName`, `serviceId`, `clientId`, `expiryDate`) VALUES
(1, '256kbps', 1, 1001, '2014'),
(46, 'sdf', 27, 1001, '2015/06/21'),
(48, 'sdf', 25, 1071, '2015/06/21'),
(49, 'sdf', 25, 1001, '2015/06/22'),
(50, 'sdfdasf1', 22, 1072, '2015/06/22'),
(51, 'sdfdasf1', 22, 1077, '2015/06/22'),
(52, 'sdfdasf1', 22, 1082, '2015/06/22'),
(53, 'sdfdasf1', 22, 1082, '2015/06/22'),
(54, 'sdf', 25, 1091, '2015/06/22'),
(55, 'sdfdasf1', 22, 1092, '2015/06/22'),
(56, 'sdfdasf1', 22, 1001, '2015/06/22'),
(57, 'sdf', 24, 1093, '2015/06/22'),
(58, 'sdfdasf1', 22, 1095, '2015/06/22'),
(59, 'sdf', 24, 1097, '2015/06/22'),
(60, 'sdfsd', 21, 1001, '2015/06/22'),
(61, 'sdfsd', 21, 1096, '2015/06/23'),
(62, 'sdfdasf1', 22, 1097, '2015/06/23'),
(63, 'sdf', 24, 1001, '2015/06/23');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `userId` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(25) NOT NULL,
  `password` varchar(12) NOT NULL,
  `userType` enum('client','operator','account','technician','administrator') NOT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1098 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userId`, `username`, `password`, `userType`) VALUES
(1, 'krishna', 'krishna', 'administrator'),
(2, 'hari', 'hari', 'operator'),
(3, 'harke', 'harke', 'account'),
(4, 'anita', 'anita', 'technician'),
(1001, 'kriss', 'kriss', 'client'),
(1029, 'aman', 'aman', 'client'),
(1030, 'tirtha@hotmail.com', 'tirtha', 'client'),
(1031, 'krissadsfdsf', 'bidur', 'client'),
(1048, 'anand@stud.ntnu.no', 'anand', 'account'),
(1060, 'ram', 'ram', 'account'),
(1064, 'client', 'client', 'client'),
(1065, 'staff', 'staff', 'account'),
(1068, 'shila_pantha@hotmail.com', 'shila', 'client'),
(1089, 'testagain0', '', 'client'),
(1090, 'testagain2', '', 'client'),
(1091, 'testagain1', '', 'client'),
(1092, 'testagain4', '', 'client'),
(1093, 'asldfj', '', 'client'),
(1094, 'lajdf', 'lakjdf', 'client'),
(1095, 'lkdjflsdkjf', 'lkdsjflsjf', 'client'),
(1096, '', '', 'client'),
(1097, 'adf', '', 'client');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
