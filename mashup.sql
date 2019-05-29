-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 29, 2019 at 10:29 PM
-- Server version: 5.7.25-0ubuntu0.18.04.2
-- PHP Version: 7.2.15-0ubuntu0.18.04.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mashup`
--

-- --------------------------------------------------------

--
-- Table structure for table `VISITS`
--

CREATE TABLE `VISITS` (
  `ip` varchar(16) NOT NULL,
  `country` varchar(32) NOT NULL,
  `city` varchar(32) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `lat` float NOT NULL,
  `lon` float NOT NULL,
  `country_code` varchar(4) NOT NULL,
  `page` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `VISITS`
--

INSERT INTO `VISITS` (`ip`, `country`, `city`, `date`, `time`, `lat`, `lon`, `country_code`, `page`) VALUES
('78.99.218.141', 'Slovakia', 'Ziar nad Hronom', '2019-04-19', '17:29:54', 48.5918, 18.8496, 'SK', 'weather'),
('78.99.218.141', 'Slovakia', 'Ziar nad Hronom', '2019-04-19', '17:30:42', 48.5918, 18.8496, 'SK', 'visitor_details'),
('78.99.218.141', 'Slovakia', 'Ziar nad Hronom', '2019-04-19', '17:34:24', 48.5918, 18.8496, 'SK', 'visitor_details'),
('78.99.218.141', 'Slovakia', 'Ziar nad Hronom', '2019-04-19', '18:47:09', 48.5918, 18.8496, 'SK', 'weather'),
('78.99.218.141', 'Slovakia', 'Ziar nad Hronom', '2019-04-19', '18:47:26', 48.5918, 18.8496, 'SK', 'visitor_details'),
('78.99.218.141', 'Slovakia', 'Ziar nad Hronom', '2019-04-19', '18:49:02', 48.5918, 18.8496, 'SK', 'weather'),
('78.99.218.141', 'Slovakia', 'Ziar nad Hronom', '2019-04-19', '18:49:07', 48.5918, 18.8496, 'SK', 'weather'),
('78.99.218.141', 'Slovakia', 'Ziar nad Hronom', '2019-04-19', '18:51:39', 48.5918, 18.8496, 'SK', 'weather'),
('78.99.218.141', 'Slovakia', 'Ziar nad Hronom', '2019-04-19', '18:53:13', 48.5918, 18.8496, 'SK', 'weather'),
('95.211.171.171', 'Netherlands', 'Amsterdam', '2019-04-19', '19:26:37', 52.3702, 4.89517, 'NL', 'weather'),
('95.211.171.171', 'Netherlands', 'Amsterdam', '2019-04-19', '19:26:39', 52.3702, 4.89517, 'NL', 'stats'),
('95.211.171.171', 'Netherlands', 'Amsterdam', '2019-04-19', '19:26:48', 52.3702, 4.89517, 'NL', 'visitor_details'),
('209.58.169.100', 'Singapore', 'Singapore', '2019-04-19', '19:27:56', 1.2929, 103.855, 'SG', 'weather'),
('209.58.169.100', 'Singapore', 'Singapore', '2019-04-19', '19:27:57', 1.2929, 103.855, 'SG', 'visitor_details'),
('74.120.223.148', 'Hong Kong', 'San Po Kong', '2019-04-24', '15:23:32', 22.3366, 114.199, 'HK', 'weather'),
('74.120.223.148', 'Hong Kong', 'San Po Kong', '2019-04-24', '15:23:34', 22.3366, 114.199, 'HK', 'visitor_details'),
('74.120.223.148', 'Hong Kong', 'San Po Kong', '2019-04-24', '15:23:38', 22.3366, 114.199, 'HK', 'stats'),
('74.120.223.148', 'Hong Kong', 'San Po Kong', '2019-04-24', '15:23:50', 22.3366, 114.199, 'HK', 'weather'),
('74.120.223.148', 'Hong Kong', 'San Po Kong', '2019-04-24', '15:23:50', 22.3366, 114.199, 'HK', 'stats'),
('74.120.223.148', 'Hong Kong', 'San Po Kong', '2019-04-24', '15:23:51', 22.3366, 114.199, 'HK', 'stats'),
('74.120.223.148', 'Hong Kong', 'San Po Kong', '2019-04-24', '15:24:01', 22.3366, 114.199, 'HK', 'stats'),
('74.120.223.148', 'Hong Kong', 'San Po Kong', '2019-04-24', '15:25:39', 22.3366, 114.199, 'HK', 'visitor_details'),
('67.215.13.227', 'Hong Kong', 'San Po Kong', '2019-04-24', '15:31:26', 22.3366, 114.199, 'HK', 'weather'),
('67.215.13.227', 'Hong Kong', 'San Po Kong', '2019-04-24', '15:31:27', 22.3366, 114.199, 'HK', 'visitor_details'),
('67.215.13.227', 'Hong Kong', 'San Po Kong', '2019-04-24', '15:32:50', 22.3366, 114.199, 'HK', 'weather'),
('67.215.13.227', 'Hong Kong', 'San Po Kong', '2019-04-24', '15:32:51', 22.3366, 114.199, 'HK', 'visitor_details'),
('67.215.13.227', 'Hong Kong', 'San Po Kong', '2019-04-24', '15:32:56', 22.3366, 114.199, 'HK', 'stats'),
('67.215.13.227', 'Hong Kong', 'San Po Kong', '2019-04-24', '15:34:21', 22.3366, 114.199, 'HK', 'weather'),
('67.215.13.227', 'Hong Kong', 'San Po Kong', '2019-04-24', '15:35:18', 22.3366, 114.199, 'HK', 'visitor_details'),
('74.120.221.249', 'Hong Kong', 'San Po Kong', '2019-04-24', '15:37:03', 22.3366, 114.199, 'HK', 'weather'),
('74.120.221.249', 'Hong Kong', 'San Po Kong', '2019-04-24', '15:38:56', 22.3366, 114.199, 'HK', 'weather'),
('74.120.221.249', 'Hong Kong', 'San Po Kong', '2019-04-24', '15:38:59', 22.3366, 114.199, 'HK', 'visitor_details'),
('147.175.190.171', 'Slovakia', 'Bratislava', '2019-04-24', '15:42:23', 48.15, 17.1078, 'SK', 'weather'),
('147.175.190.171', 'Slovakia', 'Bratislava', '2019-04-24', '15:42:25', 48.15, 17.1078, 'SK', 'visitor_details'),
('147.175.190.171', 'Slovakia', 'Bratislava', '2019-04-24', '15:42:25', 48.15, 17.1078, 'SK', 'visitor_details'),
('147.175.190.171', 'Slovakia', 'Bratislava', '2019-04-24', '15:42:43', 48.15, 17.1078, 'SK', 'weather'),
('147.175.184.131', 'Slovakia', 'Bratislava', '2019-04-24', '15:43:24', 48.15, 17.1078, 'SK', 'weather'),
('147.175.184.131', 'Slovakia', 'Bratislava', '2019-04-24', '15:43:47', 48.15, 17.1078, 'SK', 'visitor_details'),
('147.175.184.131', 'Slovakia', 'Bratislava', '2019-04-24', '15:43:51', 48.15, 17.1078, 'SK', 'stats'),
('147.175.184.131', 'Slovakia', 'Bratislava', '2019-04-24', '15:43:51', 48.15, 17.1078, 'SK', 'weather'),
('147.175.184.131', 'Slovakia', 'Bratislava', '2019-04-24', '15:43:52', 48.15, 17.1078, 'SK', 'weather'),
('147.175.184.131', 'Slovakia', 'Bratislava', '2019-04-24', '15:43:54', 48.15, 17.1078, 'SK', 'stats'),
('147.175.184.131', 'Slovakia', 'Bratislava', '2019-04-24', '15:46:25', 48.15, 17.1078, 'SK', 'weather'),
('147.175.184.131', 'Slovakia', 'Bratislava', '2019-04-24', '15:46:28', 48.15, 17.1078, 'SK', 'stats'),
('147.175.184.131', 'Slovakia', 'Bratislava', '2019-04-24', '15:46:37', 48.15, 17.1078, 'SK', 'stats'),
('147.175.184.131', 'Slovakia', 'Bratislava', '2019-04-24', '15:46:37', 48.15, 17.1078, 'SK', 'stats'),
('147.175.184.131', 'Slovakia', 'Bratislava', '2019-04-26', '17:06:26', 48.15, 17.1078, 'SK', 'weather'),
('147.175.184.131', 'Slovakia', 'Bratislava', '2019-04-26', '17:06:31', 48.15, 17.1078, 'SK', 'visitor_details'),
('147.175.184.131', 'Slovakia', 'Bratislava', '2019-04-26', '17:06:32', 48.15, 17.1078, 'SK', 'stats'),
('147.175.184.131', 'Slovakia', 'Bratislava', '2019-04-26', '17:06:39', 48.15, 17.1078, 'SK', 'visitor_details'),
('147.175.184.131', 'Slovakia', 'Bratislava', '2019-04-26', '17:06:57', 48.15, 17.1078, 'SK', 'visitor_details'),
('147.175.184.131', 'Slovakia', 'Bratislava', '2019-04-26', '17:06:58', 48.15, 17.1078, 'SK', 'stats'),
('147.175.184.131', 'Slovakia', 'Bratislava', '2019-04-28', '21:41:57', 48.15, 17.1078, 'SK', 'weather'),
('147.175.184.131', 'Slovakia', 'Bratislava', '2019-04-28', '21:42:00', 48.15, 17.1078, 'SK', 'weather'),
('147.175.184.131', 'Slovakia', 'Bratislava', '2019-04-28', '21:42:03', 48.15, 17.1078, 'SK', 'visitor_details'),
('147.175.184.131', 'Slovakia', 'Bratislava', '2019-04-28', '21:42:04', 48.15, 17.1078, 'SK', 'stats'),
('147.175.184.131', 'Slovakia', 'Bratislava', '2019-04-28', '21:42:06', 48.15, 17.1078, 'SK', 'visitor_details'),
('147.175.184.131', 'Slovakia', 'Bratislava', '2019-04-28', '21:42:11', 48.15, 17.1078, 'SK', 'weather'),
('147.175.184.131', 'Slovakia', 'Bratislava', '2019-04-28', '21:42:13', 48.15, 17.1078, 'SK', 'stats'),
('147.175.184.131', 'Slovakia', 'Bratislava', '2019-04-28', '21:42:24', 48.15, 17.1078, 'SK', 'stats'),
('158.195.146.125', 'Slovakia', 'Bratislava', '2019-05-01', '22:39:04', 48.15, 17.1078, 'SK', 'weather'),
('158.195.146.125', 'Slovakia', 'Bratislava', '2019-05-01', '22:39:06', 48.15, 17.1078, 'SK', 'stats'),
('158.195.146.125', 'Slovakia', 'Bratislava', '2019-05-01', '22:39:23', 48.15, 17.1078, 'SK', 'stats'),
('147.175.122.189', 'Slovakia', 'Bratislava', '2019-05-02', '13:02:17', 48.15, 17.1078, 'SK', 'weather'),
('147.175.122.189', 'Slovakia', 'Bratislava', '2019-05-02', '13:02:20', 48.15, 17.1078, 'SK', 'weather'),
('147.175.122.189', 'Slovakia', 'Bratislava', '2019-05-02', '13:02:30', 48.15, 17.1078, 'SK', 'visitor_details'),
('147.175.122.189', 'Slovakia', 'Bratislava', '2019-05-02', '13:02:32', 48.15, 17.1078, 'SK', 'stats'),
('147.175.122.189', 'Slovakia', 'Bratislava', '2019-05-02', '13:02:43', 48.15, 17.1078, 'SK', 'visitor_details'),
('147.175.122.189', 'Slovakia', 'Bratislava', '2019-05-02', '13:02:44', 48.15, 17.1078, 'SK', 'weather'),
('147.175.122.189', 'Slovakia', 'Bratislava', '2019-05-02', '13:02:45', 48.15, 17.1078, 'SK', 'weather'),
('147.175.122.189', 'Slovakia', 'Bratislava', '2019-05-02', '13:04:41', 48.15, 17.1078, 'SK', 'weather'),
('147.175.122.189', 'Slovakia', 'Bratislava', '2019-05-02', '13:04:46', 48.15, 17.1078, 'SK', 'visitor_details'),
('147.175.122.189', 'Slovakia', 'Bratislava', '2019-05-02', '13:04:48', 48.15, 17.1078, 'SK', 'stats'),
('147.175.122.189', 'Slovakia', 'Bratislava', '2019-05-02', '13:05:17', 48.15, 17.1078, 'SK', 'visitor_details'),
('43.249.38.69', 'Singapore', 'Singapore', '2019-05-02', '13:07:48', 1.2929, 103.855, 'SG', 'weather'),
('43.249.38.69', 'Singapore', 'Singapore', '2019-05-02', '13:10:11', 1.2929, 103.855, 'SG', 'visitor_details'),
('43.249.38.69', 'Singapore', 'Singapore', '2019-05-02', '13:10:12', 1.2929, 103.855, 'SG', 'stats'),
('43.249.38.69', 'Singapore', 'Singapore', '2019-05-02', '13:13:51', 1.2929, 103.855, 'SG', 'visitor_details'),
('43.249.38.69', 'Singapore', 'Singapore', '2019-05-02', '13:13:51', 1.2929, 103.855, 'SG', 'stats'),
('43.249.38.69', 'Singapore', 'Singapore', '2019-05-02', '13:13:52', 1.2929, 103.855, 'SG', 'weather'),
('37.187.147.158', 'France', 'Gravelines', '2019-05-02', '13:19:57', 50.9871, 2.12554, 'FR', 'weather'),
('37.187.147.158', 'France', 'Gravelines', '2019-05-02', '13:20:20', 50.9871, 2.12554, 'FR', 'weather'),
('37.187.147.158', 'France', 'Gravelines', '2019-05-02', '13:20:23', 50.9871, 2.12554, 'FR', 'stats'),
('37.187.147.158', 'France', 'Gravelines', '2019-05-02', '13:20:35', 50.9871, 2.12554, 'FR', 'weather'),
('37.187.147.158', 'France', 'Gravelines', '2019-05-02', '13:20:52', 50.9871, 2.12554, 'FR', 'visitor_details'),
('43.249.38.69', 'Singapore', 'Singapore', '2019-05-02', '13:21:01', 1.2929, 103.855, 'SG', 'weather'),
('43.249.38.69', 'Singapore', 'Singapore', '2019-05-02', '13:21:31', 1.2929, 103.855, 'SG', 'weather'),
('43.249.38.69', 'Singapore', 'Singapore', '2019-05-02', '13:21:33', 1.2929, 103.855, 'SG', 'visitor_details'),
('43.249.38.69', 'Singapore', 'Singapore', '2019-05-02', '13:21:34', 1.2929, 103.855, 'SG', 'stats'),
('43.249.38.69', 'Singapore', 'Singapore', '2019-05-02', '13:27:14', 1.2929, 103.855, 'SG', 'weather'),
('43.249.38.69', 'Singapore', 'Singapore', '2019-05-02', '13:38:08', 1.2929, 103.855, 'SG', 'visitor_details'),
('43.249.38.69', 'Singapore', 'Singapore', '2019-05-02', '13:38:13', 1.2929, 103.855, 'SG', 'stats'),
('147.175.184.53', 'Slovakia', 'Bratislava', '2019-05-29', '22:22:18', 48.15, 17.1078, 'SK', 'weather'),
('147.175.184.53', 'Slovakia', 'Bratislava', '2019-05-29', '22:22:23', 48.15, 17.1078, 'SK', 'weather'),
('147.175.184.53', 'Slovakia', 'Bratislava', '2019-05-29', '22:22:26', 48.15, 17.1078, 'SK', 'visitor_details'),
('147.175.184.53', 'Slovakia', 'Bratislava', '2019-05-29', '22:22:27', 48.15, 17.1078, 'SK', 'stats'),
('147.175.184.53', 'Slovakia', 'Bratislava', '2019-05-29', '22:22:29', 48.15, 17.1078, 'SK', 'weather'),
('147.175.184.53', 'Slovakia', 'Bratislava', '2019-05-29', '22:22:34', 48.15, 17.1078, 'SK', 'visitor_details'),
('147.175.184.53', 'Slovakia', 'Bratislava', '2019-05-29', '22:22:37', 48.15, 17.1078, 'SK', 'stats'),
('147.175.184.53', 'Slovakia', 'Bratislava', '2019-05-29', '22:25:12', 48.15, 17.1078, 'SK', 'weather'),
('147.175.184.53', 'Slovakia', 'Bratislava', '2019-05-29', '22:25:12', 48.15, 17.1078, 'SK', 'visitor_details'),
('147.175.184.53', 'Slovakia', 'Bratislava', '2019-05-29', '22:25:13', 48.15, 17.1078, 'SK', 'weather');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
