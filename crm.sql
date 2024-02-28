-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 28, 2024 at 08:43 AM
-- Server version: 8.2.0
-- PHP Version: 8.2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crm`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `password` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `distributor`
--

DROP TABLE IF EXISTS `distributor`;
CREATE TABLE IF NOT EXISTS `distributor` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `email` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `alt_email` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `password` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `address` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `posting_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `city` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `distributor`
--

INSERT INTO `distributor` (`id`, `name`, `email`, `alt_email`, `password`, `mobile`, `gender`, `address`, `status`, `posting_date`, `city`, `country`) VALUES
(1, 'dev', 'dev@hotmail.com', '', 'dev123', '1234567890', 'm', '', 'verified', '2024-02-24 11:11:46', 'ahmedabad', 'india');

-- --------------------------------------------------------

--
-- Table structure for table `prequest`
--

DROP TABLE IF EXISTS `prequest`;
CREATE TABLE IF NOT EXISTS `prequest` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` varchar(11) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `wdd` varchar(255) DEFAULT NULL,
  `cms` varchar(255) DEFAULT NULL,
  `seo` varchar(255) DEFAULT NULL,
  `smo` varchar(255) DEFAULT NULL,
  `swd` varchar(255) DEFAULT NULL,
  `dwd` varchar(255) DEFAULT NULL,
  `fwd` varchar(255) DEFAULT NULL,
  `dr` varchar(255) DEFAULT NULL,
  `whs` varchar(255) DEFAULT NULL,
  `wm` varchar(255) DEFAULT NULL,
  `ed` varchar(255) DEFAULT NULL,
  `wta` varchar(255) DEFAULT NULL,
  `opi` varchar(255) DEFAULT NULL,
  `ld` varchar(255) DEFAULT NULL,
  `da` varchar(255) DEFAULT NULL,
  `osc` varchar(255) DEFAULT NULL,
  `nd` varchar(255) DEFAULT NULL,
  `others` varchar(255) DEFAULT NULL,
  `query` longtext,
  `posting_date` date DEFAULT NULL,
  `remark` longtext,
  `status` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prequest`
--

INSERT INTO `prequest` (`id`, `name`, `email`, `contactno`, `company`, `wdd`, `cms`, `seo`, `smo`, `swd`, `dwd`, `fwd`, `dr`, `whs`, `wm`, `ed`, `wta`, `opi`, `ld`, `da`, `osc`, `nd`, `others`, `query`, `posting_date`, `remark`, `status`) VALUES
(1, 'Anuj Kumar', 'phpgurukulteam@gmail.com', '1234567890', 'Test', 'Website Design & Development', '', '', '', '', 'Dynamic Website Design', '', '', 'Web Hosting Services', '', 'Ecommerce Development', 'Walk Through Animation', '', '', '', '', '', '', 'This is for testing', '2021-04-22', 'This is for test', NULL),
(2, 'gyan vadhel', 'gyanvadhel@gmail.com', '9909330939', 'yoyo gyanu inc.', 'Website Design & Development', '', '', '', 'Static Website Design', '', '', '', '', '', '', '', '', '', '', '', '', 'Others', 'i need rtx 4090', '2024-01-19', 'in your dreams kid haha', NULL),
(3, 'hetu', 'vedhetshri05@gmail.com', '8980670810', 'asdhash', 'Website Design & Development', 'CMS (Content Management System)', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'asdwfd', '2024-02-16', 'hello', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ticket`
--

DROP TABLE IF EXISTS `ticket`;
CREATE TABLE IF NOT EXISTS `ticket` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ticket_id` varchar(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `email_id` varchar(300) DEFAULT NULL,
  `subject` varchar(300) DEFAULT NULL,
  `task_type` varchar(300) DEFAULT NULL,
  `prioprity` varchar(300) DEFAULT NULL,
  `ticket` longtext,
  `attachment` varchar(300) DEFAULT NULL,
  `status` varchar(300) DEFAULT NULL,
  `admin_remark` longtext,
  `posting_date` date DEFAULT NULL,
  `admin_remark_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ticket`
--

INSERT INTO `ticket` (`id`, `ticket_id`, `name`, `email_id`, `subject`, `task_type`, `prioprity`, `ticket`, `attachment`, `status`, `admin_remark`, `posting_date`, `admin_remark_date`) VALUES
(12, '5', '', 'phpgurukulteam@gmail.com', 'Test Ticket', 'billing', 'important', 'This ticket for testing purpose.', '', 'closed', 'Ticket resolved.  Solution provided', '2021-04-22', '2021-04-21 18:30:00'),
(13, '6', '', 'devaero0861@gmail.com', 'page not working', 'option3', 'urgent(functional problem)', 'functions not working properly', NULL, 'closed', 'sorry my bad', '2024-01-12', '2024-02-25 15:36:36'),
(14, '7', '', 'gyanvadhel@gmail.com', 'java', 'billing', 'urgent(functional problem)', 'i do not know what to do. help me PLEASEEEEE', NULL, 'closed', 'no u', '2024-01-19', '2024-01-19 04:02:49'),
(15, '8', '', 'vedhetshri05@gmail.com', 'page not workingassdwd', 'option3', 'urgent(functional problem)', 'hello ', NULL, 'Open', NULL, '2024-02-16', '2024-02-25 15:36:29'),
(16, '9', '', 'vedhetshri00@gmail.com', 'payment error', 'billing', 'important', 'paymet erreo. please help!', NULL, 'Open', NULL, '2024-02-22', '2024-02-22 06:30:51'),
(28, '21', '', 'vedhetshri00@gmail.com', '1', 'billing', 'important', '1', NULL, 'Open', NULL, '2024-02-23', '2024-02-23 12:38:03'),
(29, '22', '', 'asd@asd.com', 'payment error', 'billing', 'urgent(functional problem)', 'test', NULL, 'Open', NULL, '2024-02-24', '2024-02-24 05:28:18');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `alt_email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `status` char(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `posting_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `city` char(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `country` char(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `alt_email`, `password`, `mobile`, `gender`, `address`, `status`, `posting_date`, `city`, `country`) VALUES
(2, 'Jhon Doe', 'johndoe@hotmail.com', NULL, 'jhondoe', '1234567890', 'm', NULL, 'Active', '2024-01-06 06:49:16', '', ''),
(3, 'dev', 'devaero0861@gmail.com', 'adef@wwaqe.com', 'dev123', '1234567890', 'm', '123 street', 'Inactive', '2024-01-12 03:49:17', '', ''),
(4, 'gyan vadhel', 'gyanvadhel@gmail.com', 'yoyogyanu@gmail.com', 'Gyan@123', '9909330939', '', 'gota, ahmedabad', 'Active', '2024-01-19 03:51:09', '', ''),
(5, 'hetshri', 'vedhetshrimehul@gmail.com', NULL, '1234', '8980670810', 'f', NULL, 'Inactive', '2024-02-16 03:51:52', '', ''),
(7, 'hetu', 'vedhetshri00@gmail.com', 'daef@gmail.com', '12', '98988989', 'f', 'ahmedabad,gujarat,india', NULL, '2024-02-22 05:39:27', 'ahmedabad', 'India'),
(12, 'asd', 'asd@asd.com', NULL, '12', '1234567890', 'm', NULL, NULL, '2024-02-24 05:20:36', 'ahmedabad', 'India');

-- --------------------------------------------------------

--
-- Table structure for table `usercheck`
--

DROP TABLE IF EXISTS `usercheck`;
CREATE TABLE IF NOT EXISTS `usercheck` (
  `id` int NOT NULL AUTO_INCREMENT,
  `logindate` varchar(255) DEFAULT '',
  `logintime` varchar(255) DEFAULT '',
  `user_id` int DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT '',
  `ip` varbinary(16) DEFAULT NULL,
  `mac` varbinary(16) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usercheck`
--

INSERT INTO `usercheck` (`id`, `logindate`, `logintime`, `user_id`, `username`, `email`, `ip`, `mac`, `city`, `country`) VALUES
(1, '2021/04/22', '05:59:18pm', 1, 'Anuj Kumar', 'phpgurukulteam@gmail.com', 0x3a3a31, 0x31322d46342d38442d31322d39392d39, '', ''),
(10, '2024/02/16', '09:56:22am', 6, 'hetu', 'vedhetshri05@gmail.com', 0x3a3a31, 0x30382d38462d43332d36432d32412d38, '', ''),
(3, '2024/01/06', '12:20:38pm', 2, 'Jhon Doe', 'johndoe@hotmail.com', 0x3a3a31, 0x30382d38462d43332d36432d32412d38, '', ''),
(8, '2024/02/16', '09:22:58am', 5, 'hetshri', 'vedhetshrimehul@gmail.com', 0x3a3a31, 0x30382d38462d43332d36432d32412d38, '', ''),
(5, '2024/01/12', '09:19:29am', 3, 'dev', 'devaero0861@gmail.com', 0x3a3a31, 0x30382d38462d43332d36432d32412d38, '', ''),
(6, '2024/01/19', '09:21:16am', 4, 'gyan vadhel', 'gyanvadhel@gmail.com', 0x3a3a31, 0x30382d38462d43332d36432d32412d38, '', ''),
(9, '2024/02/16', '09:55:43am', 6, 'hetu', 'vedhetshri05@gmail.com', 0x3a3a31, 0x30382d38462d43332d36432d32412d38, '', ''),
(11, '2024/02/16', '09:57:11am', 6, 'hetu', 'vedhetshri05@gmail.com', 0x3a3a31, 0x30382d38462d43332d36432d32412d38, '', ''),
(12, '2024/02/16', '09:57:31am', 6, 'hetu', 'vedhetshri05@gmail.com', 0x3a3a31, 0x30382d38462d43332d36432d32412d38, '', ''),
(13, '2024/02/16', '09:58:00am', 6, 'hetu', 'vedhetshri05@gmail.com', 0x3a3a31, 0x30382d38462d43332d36432d32412d38, '', ''),
(14, '2024/02/16', '09:58:16am', 6, 'hetu', 'vedhetshri05@gmail.com', 0x3a3a31, 0x30382d38462d43332d36432d32412d38, '', ''),
(15, '2024/02/16', '09:58:31am', 6, 'hetu', 'vedhetshri05@gmail.com', 0x3a3a31, 0x30382d38462d43332d36432d32412d38, '', ''),
(16, '2024/02/16', '09:58:43am', 6, 'hetu', 'vedhetshri05@gmail.com', 0x3a3a31, 0x30382d38462d43332d36432d32412d38, '', ''),
(17, '2024/02/16', '09:58:52am', 6, 'hetu', 'vedhetshri05@gmail.com', 0x3a3a31, 0x30382d38462d43332d36432d32412d38, '', ''),
(18, '2024/02/16', '09:58:55am', 6, 'hetu', 'vedhetshri05@gmail.com', 0x3a3a31, 0x30382d38462d43332d36432d32412d38, '', ''),
(19, '2024/02/16', '09:59:16am', 6, 'hetu', 'vedhetshri05@gmail.com', 0x3a3a31, 0x30382d38462d43332d36432d32412d38, '', ''),
(20, '2024/02/20', '11:32:56am', 3, 'dev', 'devaero0861@gmail.com', 0x3a3a31, 0x30382d38462d43332d36432d32412d38, '', ''),
(21, '2024/02/22', '11:10:10am', 7, 'hetu', 'vedhetshri00@gmail.com', 0x3a3a31, 0x30382d38462d43332d36432d32412d38, '', ''),
(22, '2024/02/22', '11:21:35am', 9, 'h', 'a@gmail.com', 0x3a3a31, 0x30382d38462d43332d36432d32412d38, '', ''),
(23, '2024/02/22', '11:58:11am', 7, 'hetu', 'vedhetshri00@gmail.com', 0x3a3a31, 0x30382d38462d43332d36432d32412d38, '', ''),
(24, '2024/02/22', '03:10:52pm', 7, 'hetu', 'vedhetshri00@gmail.com', 0x3a3a31, 0x30382d38462d43332d36432d32412d38, '', ''),
(25, '2024/02/23', '05:57:20pm', 7, 'hetu', 'vedhetshri00@gmail.com', 0x3a3a31, 0x30382d38462d43332d36432d32412d38, '', ''),
(26, '2024/02/23', '06:11:06pm', 7, 'hetu', 'vedhetshri00@gmail.com', 0x3a3a31, 0x30382d38462d43332d36432d32412d38, '', ''),
(27, '2024/02/23', '06:24:40pm', 6, 'hetu', 'vedhetshri05@gmail.com', 0x3a3a31, 0x30382d38462d43332d36432d32412d38, '', ''),
(28, '2024/02/23', '06:31:51pm', 11, 'ok bro', 'okbro@okay.bro', 0x3a3a31, 0x30382d38462d43332d36432d32412d38, '', ''),
(29, '2024/02/23', '06:34:05pm', 7, 'hetu', 'vedhetshri00@gmail.com', 0x3a3a31, 0x30382d38462d43332d36432d32412d38, '', ''),
(30, '2024/02/24', '10:50:50am', 12, 'asd', 'asd@asd.com', 0x3a3a31, 0x30382d38462d43332d36432d32412d38, '', ''),
(31, '2024/02/24', '04:37:16pm', 7, 'hetu', 'vedhetshri00@gmail.com', 0x3a3a31, 0x30382d38462d43332d36432d32412d38, '', ''),
(32, '2024/02/25', '10:54:24am', 1, 'dev', 'dev@hotmail.com', 0x3a3a31, 0x30382d38462d43332d36432d32412d38, '', ''),
(33, '2024/02/25', '01:57:06pm', 1, 'dev', 'dev@hotmail.com', 0x3a3a31, 0x30382d38462d43332d36432d32412d38, '', ''),
(34, '2024/02/25', '02:00:50pm', 1, 'dev', 'dev@hotmail.com', 0x3a3a31, 0x30382d38462d43332d36432d32412d38, '', ''),
(35, '2024/02/25', '02:02:24pm', 1, 'dev', 'dev@hotmail.com', 0x3a3a31, 0x30382d38462d43332d36432d32412d38, '', ''),
(36, '2024/02/25', '02:08:49pm', 7, 'hetu', 'vedhetshri00@gmail.com', 0x3a3a31, 0x30382d38462d43332d36432d32412d38, '', ''),
(37, '2024/02/25', '02:12:43pm', 1, 'dev', 'dev@hotmail.com', 0x3a3a31, 0x30382d38462d43332d36432d32412d38, '', ''),
(38, '2024/02/25', '08:51:52pm', 1, 'dev', 'dev@hotmail.com', 0x3a3a31, 0x30382d38462d43332d36432d32412d38, '', ''),
(39, '2024/02/25', '08:54:32pm', 1, 'dev', 'dev@hotmail.com', 0x3a3a31, 0x30382d38462d43332d36432d32412d38, '', ''),
(40, '2024/02/25', '08:54:33pm', 1, 'dev', 'dev@hotmail.com', 0x3a3a31, 0x30382d38462d43332d36432d32412d38, '', ''),
(41, '2024/02/26', '11:27:47am', 7, 'hetu', 'vedhetshri00@gmail.com', 0x3a3a31, 0x30382d38462d43332d36432d32412d38, '', ''),
(42, '2024/02/26', '11:28:53am', 1, 'dev', 'dev@hotmail.com', 0x3a3a31, 0x30382d38462d43332d36432d32412d38, '', ''),
(43, '2024/02/28', '12:58:30pm', 1, 'dev', 'dev@hotmail.com', 0x3a3a31, 0x30382d38462d43332d36432d32412d38, '', '');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
