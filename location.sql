-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 19, 2019 at 05:34 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `location`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL,
  `email` varchar(80) NOT NULL,
  `password` varchar(80) NOT NULL,
  `position` varchar(70) NOT NULL DEFAULT 'Project Manager',
  `Status` varchar(30) NOT NULL DEFAULT 'Active',
  `cid` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `uid` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`, `position`, `Status`, `cid`, `uid`, `image`) VALUES
(1, 'Admin', 'admin@123.com', 'admin@123', 'Project Manager', 'Active', '2019-02-15 05:37:30', '2019-03-17 09:02:36', 'admin@123.com.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `assign_location`
--

CREATE TABLE `assign_location` (
  `id` int(11) NOT NULL,
  `emp_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `distance_limit` int(10) NOT NULL DEFAULT '100',
  `uid` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(20) NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assign_location`
--

INSERT INTO `assign_location` (`id`, `emp_id`, `location_id`, `distance_limit`, `uid`, `status`) VALUES
(4, 1, 4, 100, '2019-05-04 07:33:24', 'Active'),
(5, 2, 1, 80, '2019-03-18 06:58:04', 'Active'),
(6, 18, 1, 60, '2019-03-18 07:02:47', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `assign_project_location`
--

CREATE TABLE `assign_project_location` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `distance_limit` int(11) NOT NULL,
  `status` varchar(30) NOT NULL DEFAULT 'Active',
  `cid` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `uid` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `assign_project_location`
--

INSERT INTO `assign_project_location` (`id`, `project_id`, `location_id`, `distance_limit`, `status`, `cid`, `uid`) VALUES
(1, 1, 1, 70, 'Active', '2019-03-20 04:39:26', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `checkin`
--

CREATE TABLE `checkin` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `lat` double NOT NULL,
  `longi` double NOT NULL,
  `address` text NOT NULL,
  `distance` float NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `checkin`
--

INSERT INTO `checkin` (`id`, `userId`, `lat`, `longi`, `address`, `distance`, `time`) VALUES
(1, 1, 30.6403985, 76.8229293, '\"Opposite Metro, Near Global Business Park, Zirakpur, 140603, India\"', 74.46, '2019-02-21 09:26:40'),
(2, 1, 30.6403825, 76.8229602, '\"Opposite Metro, Near Global Business Park, Zirakpur, 140603, India\"', 71.16, '2019-02-21 09:26:54'),
(3, 1, 30.63995203707059, 76.82336058089749, '\"323 A, 3rd Floor Global Business Park, Zirakpur, Punjab 140603, India\"', 10.47, '2019-02-22 10:24:30'),
(4, 1, 30.640003857014715, 76.82332852741308, '\"Unnamed Road, Zirakpur, Punjab 140603, India\"', 16.38, '2019-02-22 10:26:57'),
(5, 1, 30.6403118, 76.82286979999999, '\"Office no 417 Fourth floor global business park, Zirakpur, Punjab 140603, India\"', 72, '2019-02-26 06:41:57'),
(6, 1, 30.639955822034008, 76.82331713610746, '\"323 A, 3rd Floor Global Business Park, Zirakpur, Punjab 140603, India\"', 14.37, '2019-02-26 07:57:54'),
(7, 1, 30.63992194072354, 76.82338881816733, '\"323 A, 3rd Floor Global Business Park, Zirakpur, Punjab 140603, India\"', 6.63, '2019-02-26 08:02:17'),
(8, 1, 30.640001505452194, 76.82329505110008, '\"Unnamed Road, Zirakpur, Punjab 140603, India\"', 18.71, '2019-02-26 11:47:03'),
(9, 1, 30.64004677245045, 76.82324127837747, '\"Shop No. 117-118, Global Business park, Chandigarh-Ambala highway, Zirakpur, Punjab 140603, India\"', 25.84, '2019-02-26 11:49:44'),
(10, 1, 30.6398296, 76.8233767, '\"324, Global Business Park, Chandigarh - Delhi Highway, Zirakpur, Zirakpur, Punjab 140603, India\"', 11.24, '2019-02-27 07:26:42'),
(11, 1, 30.6398262, 76.8233841, '\"324, Global Business Park, Chandigarh - Delhi Highway, Zirakpur, Zirakpur, Punjab 140603, India\"', 11.08, '2019-02-27 07:28:47'),
(12, 1, 30.639815, 76.8233522, '\"324, Global Business Park, Chandigarh - Delhi Highway, Zirakpur, Zirakpur, Punjab 140603, India\"', 14.03, '2019-02-28 07:35:27'),
(13, 1, 30.640307999999997, 76.8229403, '', 66.6, '2019-02-28 09:06:54'),
(14, 1, 30.6398173, 76.8233673, '\"324, Global Business Park, Chandigarh - Delhi Highway, Zirakpur, Zirakpur, Punjab 140603, India\"', 12.87, '2019-02-28 09:08:55'),
(15, 1, 30.6398269, 76.8233648, '\"324, Global Business Park, Chandigarh - Delhi Highway, Zirakpur, Zirakpur, Punjab 140603, India\"', 12.24, '2019-02-28 09:08:58'),
(16, 1, 30.6398236, 76.8233651, '\"324, Global Business Park, Chandigarh - Delhi Highway, Zirakpur, Zirakpur, Punjab 140603, India\"', 12.49, '2019-02-28 09:08:58'),
(17, 1, 30.6398173, 76.8233673, '\"324, Global Business Park, Chandigarh - Delhi Highway, Zirakpur, Zirakpur, Punjab 140603, India\"', 12.87, '2019-02-28 09:08:58'),
(18, 1, 30.6398236, 76.8233651, '\"324, Global Business Park, Chandigarh - Delhi Highway, Zirakpur, Zirakpur, Punjab 140603, India\"', 12.49, '2019-02-28 09:09:00'),
(19, 1, 30.6398311, 76.8233596, '\"324, Global Business Park, Chandigarh - Delhi Highway, Zirakpur, Zirakpur, Punjab 140603, India\"', 12.28, '2019-02-28 09:12:57'),
(20, 1, 29.332379999999997, 74.98396, '\"Jamal-Sirsa Rd, Jamal, Haryana 125055, India\"', 29.79, '2019-03-04 15:44:14'),
(21, 1, 30.640302199999997, 76.8230063, '\"Office no 417 Fourth floor global business park, Zirakpur, Punjab 140603, India\"', 0, '2019-03-11 06:57:23'),
(22, 1, 30.640302199999997, 76.8230063, '\"Office no 417 Fourth floor global business park, Zirakpur, Punjab 140603, India\"', 0, '2019-03-11 06:57:48'),
(23, 1, 30.6404296, 76.82301180000002, '\"Opposite Metro, Near Global Business Park, Zirakpur, 140603, India\"', 0, '2019-03-11 11:10:00'),
(24, 1, 30.640391899999997, 76.8229999, '\"222-A, Second Floor, Global Business Park, Zirakpur, Punjab 140603, India\"', 0, '2019-03-11 11:22:41'),
(25, 1, 30.63995980399271, 76.8233394182118, '\"323 A, 3rd Floor Global Business Park, Zirakpur, Punjab 140603, India\"', 0, '2019-03-13 09:24:25'),
(26, 1, 30.6402862, 76.8229384, '\"Office no 417 Fourth floor global business park, Zirakpur, Punjab 140603, India\"', 0, '2019-03-13 10:26:50'),
(27, 1, 30.639921182878414, 76.82341206760519, '\"Ambala Chandigarh Expy, Zirakpur, Punjab 140603, India\"', 0, '2019-03-13 10:52:06'),
(28, 1, 30.6404026, 76.8229971, '\"222-A, Second Floor, Global Business Park, Zirakpur, Punjab 140603, India\"', 0, '2019-03-14 04:06:04'),
(29, 1, 30.639950728150666, 76.82334792607966, '\"323 A, 3rd Floor Global Business Park, Zirakpur, Punjab 140603, India\"', 0, '2019-03-14 05:52:25'),
(30, 1, 30.6404053, 76.8229726, '\"Opposite Metro, Near Global Business Park, Zirakpur, 140603, India\"', 0, '2019-03-15 04:03:58'),
(31, 1, 30.640137599999996, 76.8228452, '\"323A , 3rd Floor Global Business Park Opp Metro, Highway, Ambala Chandigarh Expy, Zirakpur, Punjab 140603, India\"', 0, '2019-03-15 05:42:45'),
(32, 1, 30.639899856447975, 76.82340848246379, '\"Ambala Chandigarh Expy, Zirakpur, Punjab 140603, India\"', 0, '2019-03-15 09:42:45'),
(33, 2, 30.639961488679944, 76.82333634982207, '\"323 A, 3rd Floor Global Business Park, Zirakpur, Punjab 140603, India\"', 0, '2019-03-15 10:35:43'),
(34, 2, 30.639920375328092, 76.82340641432307, '\"Ambala Chandigarh Expy, Zirakpur, Punjab 140603, India\"', 0, '2019-03-15 10:36:30'),
(35, 1, 30.63988646631427, 76.82340129996733, '\"Ambala Chandigarh Expy, Zirakpur, Punjab 140603, India\"', 5.55, '2019-03-16 05:29:25'),
(36, 1, 30.640017152910147, 76.82320509506496, '\"Shop No. 117-118, Global Business park, Chandigarh-Ambala highway, Zirakpur, Punjab 140603, India\"', 26.99, '2019-03-16 07:45:23'),
(37, 1, 30.6397959, 76.823373, '\"324, Global Business Park, Chandigarh - Delhi Highway, Zirakpur, Zirakpur, Punjab 140603, India\"', 14.44, '2019-03-18 05:06:34'),
(38, 1, 30.6398149, 76.8233731, '\"324, Global Business Park, Chandigarh - Delhi Highway, Zirakpur, Zirakpur, Punjab 140603, India\"', 12.72, '2019-03-18 05:10:57'),
(39, 2, 30.6398065, 76.8233657, '\"324, Global Business Park, Chandigarh - Delhi Highway, Zirakpur, Zirakpur, Punjab 140603, India\"', 13.89, '2019-03-18 07:01:23'),
(40, 18, 30.6398153, 76.8233732, '\"324, Global Business Park, Chandigarh - Delhi Highway, Zirakpur, Zirakpur, Punjab 140603, India\"', 12.68, '2019-03-18 07:04:42'),
(41, 1, 30.640166400000002, 76.822948, '\"323A , 3rd Floor Global Business Park Opp Metro, Highway, Ambala Chandigarh Expy, Zirakpur, Punjab 140603, India\"', 56.57, '2019-03-18 07:31:11'),
(42, 1, 30.639862257598573, 76.82339525866564, '\"324, Global Business Park, Chandigarh - Delhi Highway, Zirakpur, Zirakpur, Punjab 140603, India\"', 7.44, '2019-03-19 04:10:55'),
(43, 1, 30.6392255, 76.8201864, '\"West VIP Road, Zirakpur, Punjab 140603, India\"', 321.71, '2019-05-03 12:55:14'),
(44, 1, 30.6392255, 76.8201864, '\"West VIP Road, Zirakpur, Punjab 140603, India\"', 321.71, '2019-05-03 13:07:12'),
(45, 1, 31.1471305, 75.34121789999999, '', 0.09, '2019-05-04 07:49:31'),
(46, 1, 31.1471305, 75.34121789999999, '', 0.09, '2019-05-05 03:47:49'),
(47, 1, 30.6748414, 76.8258589, '\"#789, Saini Vihar Phase-2, Baltana, Punjab 140603, India\"', 14.47, '2019-05-05 10:16:02'),
(48, 1, 30.674802800000002, 76.825786, '\"#789, Saini Vihar Phase-2, Baltana, Punjab 140603, India\"', 19.59, '2019-05-07 14:22:23');

-- --------------------------------------------------------

--
-- Table structure for table `checkout`
--

CREATE TABLE `checkout` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `check_in_id` int(11) NOT NULL,
  `lat` double NOT NULL,
  `longi` double NOT NULL,
  `address` text NOT NULL,
  `distance` float NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `checkout`
--

INSERT INTO `checkout` (`id`, `userId`, `check_in_id`, `lat`, `longi`, `address`, `distance`, `time`, `status`) VALUES
(1, 1, 1, 30.6403825, 76.8229602, '\"Opposite Metro, Near Global Business Park, Zirakpur, 140603, India\"', 71.16, '2019-02-21 09:26:49', 0),
(2, 1, 2, 30.640352, 76.82293279999999, '\"Office no 417 Fourth floor global business park, Zirakpur, Punjab 140603, India\"', 70.5, '2019-02-21 09:27:06', 0),
(3, 1, 3, 30.639936062530385, 76.82337836208512, '\"323 A, 3rd Floor Global Business Park, Zirakpur, Punjab 140603, India\"', 8.13, '2019-02-22 10:26:08', 0),
(4, 1, 4, 30.63999224948581, 76.82332766274958, '\"323 A, 3rd Floor Global Business Park, Zirakpur, Punjab 140603, India\"', 15.6, '2019-02-22 10:31:28', 0),
(5, 1, 5, 30.639951988952994, 76.82338942521362, '\"323 A, 3rd Floor Global Business Park, Zirakpur, Punjab 140603, India\"', 8.19, '2019-02-26 07:55:51', 0),
(6, 1, 6, 30.639981943176462, 76.82332883555, '\"323 A, 3rd Floor Global Business Park, Zirakpur, Punjab 140603, India\"', 14.82, '2019-02-26 07:58:01', 0),
(7, 1, 7, 30.64005248404751, 76.82318142192305, '\"Unnamed Road, Zirakpur, Punjab 140603, India\"', 30.91, '2019-02-26 08:04:04', 0),
(8, 1, 8, 30.639974307218573, 76.82331678056795, '\"323 A, 3rd Floor Global Business Park, Zirakpur, Punjab 140603, India\"', 15.33, '2019-02-26 11:49:31', 0),
(9, 1, 9, 30.6398442, 76.8233865, '\"324, Global Business Park, Chandigarh - Delhi Highway, Zirakpur, Zirakpur, Punjab 140603, India\"', 9.42, '2019-02-27 07:26:34', 0),
(10, 1, 10, 30.6398236, 76.8233694, '\"324, Global Business Park, Chandigarh - Delhi Highway, Zirakpur, Zirakpur, Punjab 140603, India\"', 12.21, '2019-02-27 07:26:54', 0),
(11, 1, 11, 30.6398189, 76.8233761, '\"324, Global Business Park, Chandigarh - Delhi Highway, Zirakpur, Zirakpur, Punjab 140603, India\"', 12.19, '2019-02-27 07:29:01', 0),
(12, 1, 12, 30.6398233, 76.8233548, '\"324, Global Business Park, Chandigarh - Delhi Highway, Zirakpur, Zirakpur, Punjab 140603, India\"', 13.21, '2019-02-28 07:35:38', 0),
(13, 1, 13, 30.640307999999997, 76.8229403, '', 66.6, '2019-02-28 09:07:10', 0),
(14, 1, 18, 30.6398352, 76.82336, '\"324, Global Business Park, Chandigarh - Delhi Highway, Zirakpur, Zirakpur, Punjab 140603, India\"', 11.96, '2019-02-28 09:12:43', 0),
(15, 1, 19, 30.6398242, 76.823364, '\"324, Global Business Park, Chandigarh - Delhi Highway, Zirakpur, Zirakpur, Punjab 140603, India\"', 12.51, '2019-02-28 09:13:08', 0),
(16, 1, 20, 30.6404338, 76.8230191, '\"Opposite Metro, Near Global Business Park, Zirakpur, 140603, India\"', 72.11, '2019-03-11 06:37:25', 0),
(17, 1, 21, 30.640302199999997, 76.8230063, '\"Office no 417 Fourth floor global business park, Zirakpur, Punjab 140603, India\"', 0, '2019-03-11 06:57:36', 0),
(18, 1, 22, 30.639944047014847, 76.82340110738579, '\"VIP Rd, Zirakpur, Punjab 140603, India\"', 0, '2019-03-11 08:36:36', 0),
(19, 1, 23, 30.6404296, 76.82301180000002, '\"Opposite Metro, Near Global Business Park, Zirakpur, 140603, India\"', 0, '2019-03-11 11:10:09', 0),
(20, 1, 24, 30.64000634734241, 76.82332390198063, '\"Unnamed Road, Zirakpur, Punjab 140603, India\"', 0, '2019-03-13 09:23:49', 0),
(21, 1, 25, 30.639974296708544, 76.82334233946324, '\"323 A, 3rd Floor Global Business Park, Zirakpur, Punjab 140603, India\"', 0, '2019-03-13 09:24:37', 0),
(22, 1, 26, 30.639913335041015, 76.82339884561702, '\"Ambala Chandigarh Expy, Zirakpur, Punjab 140603, India\"', 0, '2019-03-13 10:27:39', 0),
(23, 1, 27, 30.639969973504893, 76.82333717276613, '', 0, '2019-03-13 11:38:30', 0),
(24, 1, 28, 30.64006492213318, 76.82322735312857, '\"Shop No. 117-118, Global Business park, Chandigarh-Ambala highway, Zirakpur, Punjab 140603, India\"', 28.14, '2019-03-14 04:22:32', 0),
(25, 1, 28, 30.6404042, 76.8229629, '\"Opposite Metro, Near Global Business Park, Zirakpur, 140603, India\"', 0, '2019-03-14 04:43:49', 0),
(26, 1, 29, 30.639930111129388, 76.82334576309994, '\"323 A, 3rd Floor Global Business Park, Zirakpur, Punjab 140603, India\"', 10.84, '2019-03-14 09:42:36', 0),
(27, 1, 30, 30.640074899999995, 76.8229023, '\"323A , 3rd Floor Global Business Park Opp Metro, Highway, Ambala Chandigarh Expy, Zirakpur, Punjab 140603, India\"', 0, '2019-03-15 05:14:41', 0),
(28, 1, 31, 30.63990002259271, 76.82338757703354, '\"323 A, 3rd Floor Global Business Park, Zirakpur, Punjab 140603, India\"', 0, '2019-03-15 06:38:32', 0),
(29, 2, 33, 30.639920375328092, 76.82340641432307, '\"Ambala Chandigarh Expy, Zirakpur, Punjab 140603, India\"', 0, '2019-03-15 10:36:25', 0),
(30, 2, 33, 30.639920375328092, 76.82340641432307, '\"Ambala Chandigarh Expy, Zirakpur, Punjab 140603, India\"', 0, '2019-03-15 10:36:25', 0),
(31, 2, 34, 30.639909214359648, 76.82343919050551, '\"Ambala Chandigarh Expy, Zirakpur, Punjab 140603, India\"', 0, '2019-03-15 10:49:35', 0),
(32, 1, 32, 30.63997725306915, 76.82334666858378, '\"323 A, 3rd Floor Global Business Park, Zirakpur, Punjab 140603, India\"', 13.14, '2019-03-16 05:28:53', 0),
(33, 1, 35, 30.640017152910147, 76.82320509506496, '\"Shop No. 117-118, Global Business park, Chandigarh-Ambala highway, Zirakpur, Punjab 140603, India\"', 26.99, '2019-03-16 07:45:16', 0),
(34, 1, 36, 30.6398152, 76.8233735, '\"324, Global Business Park, Chandigarh - Delhi Highway, Zirakpur, Zirakpur, Punjab 140603, India\"', 12.67, '2019-03-18 05:01:51', 0),
(35, 1, 37, 30.6398152, 76.8233734, '\"324, Global Business Park, Chandigarh - Delhi Highway, Zirakpur, Zirakpur, Punjab 140603, India\"', 12.67, '2019-03-18 05:10:12', 0),
(36, 1, 38, 30.640166400000002, 76.822948, '\"323A , 3rd Floor Global Business Park Opp Metro, Highway, Ambala Chandigarh Expy, Zirakpur, Punjab 140603, India\"', 56.57, '2019-03-18 07:31:07', 0),
(37, 2, 39, 30.639902754151475, 76.82340098715632, '\"Ambala Chandigarh Expy, Zirakpur, Punjab 140603, India\"', 5.19, '2019-03-18 09:08:31', 0),
(38, 1, 41, 30.63989058329554, 76.82339175278408, '\"323 A, 3rd Floor Global Business Park, Zirakpur, Punjab 140603, India\"', 6.27, '2019-03-18 09:10:00', 0),
(39, 18, 40, 30.63997482325932, 76.8233191691752, '\"323 A, 3rd Floor Global Business Park, Zirakpur, Punjab 140603, India\"', 15.16, '2019-03-18 09:17:55', 0),
(40, 1, 42, 30.6392255, 76.8201864, '\"West VIP Road, Zirakpur, Punjab 140603, India\"', 321.71, '2019-05-03 12:55:10', 0),
(41, 1, 43, 30.6392255, 76.8201864, '\"West VIP Road, Zirakpur, Punjab 140603, India\"', 321.71, '2019-05-03 12:55:48', 0),
(42, 1, 44, 30.6392255, 76.8201864, '\"West VIP Road, Zirakpur, Punjab 140603, India\"', 321.71, '2019-05-03 13:08:42', 0),
(43, 1, 45, 31.1471305, 75.34121789999999, '', 0.09, '2019-05-04 07:49:47', 0),
(44, 1, 46, 30.6749934, 76.8258019, '\"#789, Saini Vihar Phase-2, Baltana, Punjab 140603, India\"', 4.93, '2019-05-05 04:41:54', 0),
(45, 1, 47, 30.6748356, 76.8258532, '\"#789, Saini Vihar Phase-2, Baltana, Punjab 140603, India\"', 15.08, '2019-05-05 10:16:26', 0);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `emp_id` int(11) NOT NULL,
  `emp_name` varchar(80) NOT NULL,
  `emp_gender` varchar(18) NOT NULL,
  `emp_dob` date NOT NULL,
  `emp_position` varchar(70) NOT NULL,
  `emp_address` text NOT NULL,
  `emp_mobile` varchar(15) NOT NULL,
  `emp_email` varchar(80) NOT NULL,
  `emp_password` varchar(80) NOT NULL,
  `emp_joining_date` date NOT NULL,
  `cid` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `uid` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `image` text NOT NULL,
  `status` varchar(30) NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`emp_id`, `emp_name`, `emp_gender`, `emp_dob`, `emp_position`, `emp_address`, `emp_mobile`, `emp_email`, `emp_password`, `emp_joining_date`, `cid`, `uid`, `image`, `status`) VALUES
(1, 'Mohan', 'Male', '1997-08-13', 'Manager', 'Ward No. 7, Mameran Road , Near Data Hari Shah aashram ,Ellenabad Sirsa(Haryana)  ', '9466067763', 'skaran921@gmail.com', 'skaran92145', '2019-02-20', '2019-02-19 11:42:11', '2019-04-06 09:37:02', 'skaran921@gmail.com.jpg', 'Active'),
(2, 'user123', 'Male', '1996-01-16', 'Web Developer', 'Kriti Nagar Sirsa Haryana', '9671612302', 'user@123.com', 'user@123', '2019-02-20', '2019-02-19 11:42:11', '2019-02-26 04:59:37', 'user@123.com.jpg', 'Active'),
(17, 'employee@123', 'Male', '1996-01-16', 'Senior Designer', '705, Saini PG ,Saini Vihar Baltana Zirakpur', '9068348663', 'employee@123.com', 'employee@123', '2019-02-21', '2019-02-21 12:28:46', '2019-03-16 10:07:49', 'employee@123.com.jpg', 'Active'),
(18, 'PQR', 'Male', '1995-09-26', 'Project Manager', 'BH-2 CDLU Sirsa Haryana', '9992616090', 'PQR@123.com', 'pqr@123', '2019-02-22', '2019-02-22 05:24:25', '2019-03-16 10:08:47', 'PQR@123.com.jpg', 'Active'),
(19, 'Sunil', 'Female', '2019-03-19', 'Developer', '705 Saini PG Girakpur', '9671612302', 'birthday_demo@123.com', 'birthday_demo@123', '2019-03-15', '2019-03-15 09:08:44', '2019-05-05 05:05:19', 'birthday_demo@123.com.jpg', 'Inactive');

-- --------------------------------------------------------

--
-- Table structure for table `emp_project_matrix`
--

CREATE TABLE `emp_project_matrix` (
  `id` int(11) NOT NULL,
  `emp_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `status` varchar(30) NOT NULL DEFAULT 'Active',
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `cid` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `uid` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emp_project_matrix`
--

INSERT INTO `emp_project_matrix` (`id`, `emp_id`, `project_id`, `status`, `start_date`, `end_date`, `cid`, `uid`) VALUES
(1, 1, 2, 'Active', '2019-03-01', '2019-03-31', '2019-03-19 06:35:01', '2019-03-20 03:11:47'),
(2, 2, 1, 'Inactive', '2019-03-01', '2019-03-31', '2019-03-19 06:35:34', '2019-03-19 12:01:34'),
(3, 18, 1, 'Active', '2019-03-01', '2019-03-01', '2019-03-19 11:55:20', '2019-03-19 11:55:20');

-- --------------------------------------------------------

--
-- Table structure for table `holiday`
--

CREATE TABLE `holiday` (
  `id` int(11) NOT NULL,
  `holiday_date` date NOT NULL,
  `holiday_event` varchar(80) NOT NULL,
  `status` varchar(30) NOT NULL DEFAULT 'Active',
  `cid` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `uid` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `holiday`
--

INSERT INTO `holiday` (`id`, `holiday_date`, `holiday_event`, `status`, `cid`, `uid`) VALUES
(1, '2019-03-21', 'Holi', 'Active', '2019-03-15 07:26:58', '2019-03-15 04:07:07'),
(2, '2019-03-04', 'Maha Shivratri', 'Active', '2019-03-15 04:48:39', '2019-03-15 04:48:39'),
(3, '2019-04-17', 'Mahavir Jayanti', 'Active', '2019-03-15 04:50:04', '2019-03-15 04:50:04'),
(4, '2019-03-15', 'Temp_holiday_demo', 'Inactive', '2019-03-15 07:12:07', '2019-03-15 06:12:19'),
(5, '2019-04-19', 'Good Friday', 'Active', '2019-03-17 05:57:27', '2019-03-17 05:57:27'),
(6, '2019-05-18', 'Budh Purnima', 'Active', '2019-03-17 05:57:45', '2019-03-17 05:57:45'),
(7, '2019-08-12', 'Id-ul-Zuha (Bakrid)', 'Active', '2019-03-17 05:58:52', '2019-03-17 05:58:52'),
(8, '2019-08-10', 'Independance Day', 'Active', '2019-03-17 05:59:08', '2019-03-17 05:59:08'),
(9, '2019-10-02', 'Gandhi Jyanthi', 'Active', '2019-03-17 05:59:32', '2019-03-17 05:59:32'),
(10, '2019-10-07', 'Dussehra (Maha Navmi)', 'Active', '2019-03-17 06:00:11', '2019-03-17 06:00:11'),
(11, '2019-10-08', 'Dussehra (Vijay Dushmi)', 'Active', '2019-03-17 06:00:24', '2019-03-17 06:00:24'),
(12, '2019-10-27', 'Diwali', 'Active', '2019-03-17 06:00:45', '2019-03-17 06:00:45'),
(13, '2019-11-12', 'Guru Nanak Jayanti', 'Active', '2019-03-17 06:01:04', '2019-03-17 06:01:04'),
(14, '2019-12-25', 'Christmas day', 'Active', '2019-03-17 06:01:25', '2019-03-17 06:01:25');

-- --------------------------------------------------------

--
-- Table structure for table `master`
--

CREATE TABLE `master` (
  `id` int(11) NOT NULL,
  `lat` double NOT NULL,
  `longi` double NOT NULL,
  `address` text NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master`
--

INSERT INTO `master` (`id`, `lat`, `longi`, `address`, `status`) VALUES
(1, 30.63990487, 76.8234552, 'Global Business Park Zirkpur', 'Active'),
(2, 30.73979949951172, 76.78269958496094, 'ISBT 17', 'Active'),
(3, 29.450773239135742, 74.67023468017578, 'Home', 'Active'),
(4, 30.6749711, 76.8258465, 'Saini PG , Zirakpur', 'Active'),
(5, 30.674913500000002, 76.8258537, 'cc', 'Active'),
(6, 30.674925199999997, 76.8258085, 'dfsdfd', 'Active'),
(7, 30.677401600000003, 76.8278528, 'PG', 'Active'),
(8, 30.674995000000003, 76.825752, 'Sirsa(Home)', 'Active'),
(9, 29.332645000000003, 74.984005, 'Jamal (home) ', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `emp_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `viewStatus` varchar(20) NOT NULL DEFAULT 'NotSeen',
  `messageStatus` varchar(30) NOT NULL DEFAULT 'Received',
  `status` varchar(20) NOT NULL DEFAULT 'Active',
  `u_id` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `emp_id`, `admin_id`, `message`, `viewStatus`, `messageStatus`, `status`, `u_id`) VALUES
(22, 1, 1, 'hiii', 'Seen', 'Received', 'Active', '2019-03-16 10:58:25'),
(23, 1, 1, 'Heyyy hiii', 'Seen', 'Sent', 'Active', '2019-03-16 10:59:44'),
(24, 1, 1, 'heyyy send me your current work report?', 'Seen', 'Sent', 'Active', '2019-03-17 05:34:10'),
(25, 1, 1, 'okkk i will send', 'Seen', 'Received', 'Active', '2019-03-17 05:36:17'),
(26, 1, 1, 'okkk', 'Seen', 'Received', 'Active', '2019-03-17 05:37:32'),
(27, 1, 1, 'okkk', 'Seen', 'Received', 'Active', '2019-03-17 05:43:25'),
(28, 1, 1, 'heyyy send me your current work report?', 'Seen', 'Sent', 'Active', '2019-03-17 05:43:51'),
(29, 1, 1, 'Good Morning\r\n', 'Seen', 'Sent', 'Active', '2019-03-18 04:25:27'),
(30, 1, 1, 'Very good morning', 'Seen', 'Received', 'Active', '2019-03-18 04:26:16'),
(31, 18, 1, 'heyyy Where are you?', 'Seen', 'Sent', 'Active', '2019-03-18 09:29:20'),
(32, 18, 1, 'hii\r\nin office', 'Seen', 'Received', 'Active', '2019-03-18 09:31:33'),
(33, 18, 1, 'heyyy Where are you?', 'Seen', 'Sent', 'Active', '2019-03-18 09:58:43'),
(34, 18, 1, 'heyyy Where are you?', 'Seen', 'Sent', 'Active', '2019-03-18 09:59:51'),
(35, 1, 1, 'hii where are you? i need youðŸ˜ŒðŸ˜ŒðŸ˜Œ', 'NotSeen', 'Sent', 'Active', '2019-05-04 10:50:40');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `project_id` int(11) NOT NULL,
  `project_name` varchar(300) NOT NULL,
  `project_start_date` date NOT NULL,
  `project_end_date` date NOT NULL,
  `status` varchar(30) NOT NULL DEFAULT 'Active',
  `cid` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `uid` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`project_id`, `project_name`, `project_start_date`, `project_end_date`, `status`, `cid`, `uid`) VALUES
(1, 'Geofencing Project', '2019-03-01', '2019-03-31', 'Active', '2019-03-19 06:34:33', '2019-03-19 09:55:03'),
(2, 'Project_Demo', '2019-03-01', '2019-03-31', 'Active', '2019-03-19 08:40:21', '2019-03-19 09:19:44');

-- --------------------------------------------------------

--
-- Table structure for table `theme`
--

CREATE TABLE `theme` (
  `id` int(11) NOT NULL,
  `theme` varchar(80) NOT NULL,
  `useFor` varchar(30) NOT NULL,
  `cid` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `uid` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `theme`
--

INSERT INTO `theme` (`id`, `theme`, `useFor`, `cid`, `uid`) VALUES
(1, 'theme-black', 'admin', '2019-02-26 10:12:22', '2019-05-04 01:48:21'),
(2, 'theme-black', 'emp', '2019-03-17 10:07:02', '2019-05-05 10:17:45');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assign_location`
--
ALTER TABLE `assign_location`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assign_project_location`
--
ALTER TABLE `assign_project_location`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `checkin`
--
ALTER TABLE `checkin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `checkout`
--
ALTER TABLE `checkout`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`emp_id`);

--
-- Indexes for table `emp_project_matrix`
--
ALTER TABLE `emp_project_matrix`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `holiday`
--
ALTER TABLE `holiday`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master`
--
ALTER TABLE `master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`project_id`);

--
-- Indexes for table `theme`
--
ALTER TABLE `theme`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `assign_location`
--
ALTER TABLE `assign_location`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `assign_project_location`
--
ALTER TABLE `assign_project_location`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `checkin`
--
ALTER TABLE `checkin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT for table `checkout`
--
ALTER TABLE `checkout`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `emp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `emp_project_matrix`
--
ALTER TABLE `emp_project_matrix`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `holiday`
--
ALTER TABLE `holiday`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `master`
--
ALTER TABLE `master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `project_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `theme`
--
ALTER TABLE `theme`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
