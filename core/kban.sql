-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 21, 2020 at 02:23 PM
-- Server version: 5.7.28-cll-lve
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bykpcdns_kban`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `fname` varchar(200) NOT NULL,
  `lname` varchar(200) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `address` varchar(200) NOT NULL,
  `status` int(11) NOT NULL,
  `pin` int(11) NOT NULL,
  `password` varchar(200) NOT NULL,
  `profile` varchar(200) NOT NULL,
  `c_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `fname`, `lname`, `email`, `phone`, `address`, `status`, `pin`, `password`, `profile`, `c_date`) VALUES
(1, 'Ezechiel', 'Kalengya', 'ezechielkalengya@gmail.com', '+250786618405', 'Gisozi/Kigali', 1, 0, 'root@ezpk#', 'dist/img/u.png', '2019-11-20 23:05:14'),
(2, 'Gilbert', 'Banamwana', 'banamwana.gilbert@yahoo.com', '+250788306748', 'Gisozi/Kigali', 1, 0, 'kban', 'dist/img/u.png', '2019-11-20 21:07:53'),
(3, 'Gusenga', 'Israel', 'israelusenga@gmail.com', '+250781604236', 'Gasabo/Gisozi', 1, 0, 'Gusengakban@2019', 'dist/img/u.png', '2019-12-11 10:48:35');

-- --------------------------------------------------------

--
-- Table structure for table `area`
--

CREATE TABLE `area` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `specialisation_id` int(11) NOT NULL,
  `added_by` int(11) NOT NULL,
  `c_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `area`
--

INSERT INTO `area` (`id`, `name`, `specialisation_id`, `added_by`, `c_date`) VALUES
(1, 'Technology', 1, 2, '2019-11-01 21:22:03'),
(2, 'Agriculture', 1, 2, '2019-11-01 21:22:17'),
(3, 'Electronics', 1, 2, '2019-11-01 21:22:39'),
(4, 'Mecanics', 1, 2, '2019-11-01 21:22:50');

-- --------------------------------------------------------

--
-- Table structure for table `book_shop`
--

CREATE TABLE `book_shop` (
  `id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `added_by` int(11) NOT NULL,
  `cover_picture` varchar(256) NOT NULL,
  `tables` varchar(256) NOT NULL,
  `c_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book_shop`
--

INSERT INTO `book_shop` (`id`, `name`, `added_by`, `cover_picture`, `tables`, `c_date`) VALUES
(3, 'Books', 1, 'index.jpeg', 'book_shop_3', '2019-12-07 10:56:37'),
(4, 'Papers', 1, 'PAPERS.jpeg', 'book_shop_4', '2019-12-07 10:57:22'),
(5, 'Dissertation', 1, 'dissertation.jpeg', 'book_shop_5', '2019-12-07 10:59:16');

-- --------------------------------------------------------

--
-- Table structure for table `book_shop_3`
--

CREATE TABLE `book_shop_3` (
  `id` int(11) NOT NULL,
  `book_shop_id` int(11) NOT NULL,
  `book_name` varchar(256) NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `cover_picture` varchar(256) NOT NULL,
  `author_name` varchar(256) NOT NULL,
  `author_continent` varchar(256) NOT NULL,
  `author_country` varchar(256) NOT NULL,
  `attachment` varchar(256) NOT NULL,
  `total_download` int(11) NOT NULL,
  `added_by` int(11) NOT NULL,
  `c_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book_shop_3`
--

INSERT INTO `book_shop_3` (`id`, `book_shop_id`, `book_name`, `price`, `quantity`, `cover_picture`, `author_name`, `author_continent`, `author_country`, `attachment`, `total_download`, `added_by`, `c_date`) VALUES
(1, 3, 'analysis of effect of interest rate on money demand. Evidence from Rwandan Monetary Policy from 1990-2015', 10, 1, 'download.jpg', 'Dr.Gilbert BANAMWANA', 'Africa', 'Rwanda', 'MASTERS THESIS.docx', 14, 2, '2019-12-13 06:39:30');

-- --------------------------------------------------------

--
-- Table structure for table `book_shop_4`
--

CREATE TABLE `book_shop_4` (
  `id` int(11) NOT NULL,
  `book_shop_id` int(11) NOT NULL,
  `book_name` varchar(256) NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `cover_picture` varchar(256) NOT NULL,
  `author_name` varchar(256) NOT NULL,
  `author_continent` varchar(256) NOT NULL,
  `author_country` varchar(256) NOT NULL,
  `attachment` varchar(256) NOT NULL,
  `total_download` int(11) NOT NULL,
  `added_by` int(11) NOT NULL,
  `c_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `book_shop_5`
--

CREATE TABLE `book_shop_5` (
  `id` int(11) NOT NULL,
  `book_shop_id` int(11) NOT NULL,
  `book_name` varchar(256) NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `cover_picture` varchar(256) NOT NULL,
  `author_name` varchar(256) NOT NULL,
  `author_continent` varchar(256) NOT NULL,
  `author_country` varchar(256) NOT NULL,
  `attachment` varchar(256) NOT NULL,
  `total_download` int(11) NOT NULL,
  `added_by` int(11) NOT NULL,
  `c_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book_shop_5`
--

INSERT INTO `book_shop_5` (`id`, `book_shop_id`, `book_name`, `price`, `quantity`, `cover_picture`, `author_name`, `author_continent`, `author_country`, `attachment`, `total_download`, `added_by`, `c_date`) VALUES
(1, 5, 'analysis of effect of interest rate on money demand. Evidence from Rwandan Monetary Policy from 1990-2015', 10, 1, 'download.jpg', 'Dr.Gilbert BANAMWANA', 'Africa', 'Rwanda', 'MASTERS THESIS.docx', 2, 2, '2019-12-13 06:45:06'),
(2, 5, 'To identify the positive Impact of Loan provided by umurenge SACCO and its impact on the development of its members.', 1, 1, 'download.jpg', 'Mr.APPOLINAIRE NDORUNKUNDIYE', 'Africa', 'Rwanda', 'IGITABO CYOSE. CORRIGE.doc', 2, 2, '2019-12-13 15:49:40');

-- --------------------------------------------------------

--
-- Table structure for table `book_shop_6`
--

CREATE TABLE `book_shop_6` (
  `id` int(11) NOT NULL,
  `book_shop_id` int(11) NOT NULL,
  `book_name` varchar(256) NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `cover_picture` varchar(256) NOT NULL,
  `author_name` varchar(256) NOT NULL,
  `author_continent` varchar(256) NOT NULL,
  `author_country` varchar(256) NOT NULL,
  `attachment` varchar(256) NOT NULL,
  `total_download` int(11) NOT NULL,
  `added_by` int(11) NOT NULL,
  `c_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book_shop_6`
--

INSERT INTO `book_shop_6` (`id`, `book_shop_id`, `book_name`, `price`, `quantity`, `cover_picture`, `author_name`, `author_continent`, `author_country`, `attachment`, `total_download`, `added_by`, `c_date`) VALUES
(1, 6, 'ABC', 25, 3, 'Screenshot from 2019-12-09 10-19-18.png', 'Dr. Israel Gusenga', 'Africa', 'Rwanda', 'lucien.java.docx', 1, 1, '2019-12-11 11:12:52');

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone` varchar(200) NOT NULL,
  `matricule` varchar(200) NOT NULL,
  `website` varchar(200) NOT NULL,
  `min_capital` int(11) NOT NULL,
  `max_capital` int(11) NOT NULL,
  `country` varchar(200) NOT NULL,
  `c_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `conference_visitors`
--

CREATE TABLE `conference_visitors` (
  `id` int(11) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `date_birth` date NOT NULL,
  `nationality` varchar(50) NOT NULL,
  `type_document` varchar(50) NOT NULL,
  `id_number` varchar(50) NOT NULL,
  `district` varchar(50) NOT NULL,
  `sector` varchar(50) NOT NULL,
  `adress` varchar(100) NOT NULL,
  `company_name` varchar(50) NOT NULL,
  `company_category` varchar(50) NOT NULL,
  `job_title` varchar(50) NOT NULL,
  `category` varchar(50) DEFAULT NULL,
  `book_name` varchar(50) DEFAULT NULL,
  `book_description` varchar(50) DEFAULT NULL,
  `book_attachment` varchar(50) DEFAULT NULL,
  `innovation_name` varchar(50) DEFAULT NULL,
  `innovation_description` varchar(50) DEFAULT NULL,
  `innovation_attachment` varchar(50) DEFAULT NULL,
  `profile` varchar(50) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `c_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int(11) NOT NULL,
  `names` varchar(256) NOT NULL,
  `email` varchar(256) NOT NULL,
  `phone` varchar(256) NOT NULL,
  `subject` text NOT NULL,
  `message` longtext NOT NULL,
  `ip` varchar(256) NOT NULL,
  `device` varchar(256) NOT NULL,
  `os` varchar(256) NOT NULL,
  `c_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `names`, `email`, `phone`, `subject`, `message`, `ip`, `device`, `os`, `c_date`) VALUES
(1, 'Kalengya Kapanga', 'kalengyakapanga@gmail.com', '0786618405', 'Process to create expert account on kban', 'Hello, i am Kalengya Kapanga.. i d like to know how to create an account as expert.', '41.186.83.69', 'Computer', 'Linux', '2019-12-05 18:19:40'),
(2, 'Kalengya Kapanga', 'kalengyakapanga@gmail.com', '', 'Process to create expert account on kban', 'Hello, i am Kalengya Kapanga.. i d like to know how to create an account as expert.', '41.186.83.69', 'Computer', 'Linux', '2019-12-05 18:22:42'),
(3, 'Kalengya Kapanga', 'ezechielkalengya@gmail.com', '0786554566', 'Process to create expert account on kban', 'Hello. how to create the expert account.', '41.186.83.69', 'Computer', 'Linux', '2019-12-05 18:26:14'),
(4, 'Kalengya Kapanga', 'kalengyaezechiel@gmail.com', '0786618405', 'More Information about Investment', 'Good evening sir! i am Ezechiel Kalengya, i want to know more about the investment opportunities... and every modalities to invest on the opportunities..', '41.186.83.69', 'Computer', 'Linux', '2019-12-05 18:30:56'),
(5, 'Lucien Meru', 'lucienmeru@gmail.com', '786618405', 'Process to create expert account on kban', 'Hello there, i am lucine meryu', '41.186.83.167', 'Computer', 'Linux', '2019-12-08 09:15:12'),
(6, 'Lucien Meru', 'lucienmeru@gmail.com', '0785678765', 'Process to create expert account on kban', 'HELLOI AM LUCIEN', '41.186.83.167', 'Computer', 'Linux', '2019-12-08 09:18:26'),
(7, 'KennethKak', 'raphaeGridstus@gmail.com', '82125911238', 'The best advertising of your products and services!', 'Hello!  ideashop.rw \r\n \r\nDid you know that it is possible to send request totally legally? \r\nWe presentation a new unique way of sending commercial offer through feedback forms. Such forms are located on many sites. \r\nWhen such letters are sent, no personal data is used, and messages are sent to forms specifically designed to receive messages and appeals. \r\nAlso, messages sent through feedback Forms do not get into spam because such messages are considered important. \r\nWe offer you to test our service for free. We will send up to 50,000 messages for you. \r\nThe cost of sending one million messages is 49 USD. \r\n \r\nThis letter is created automatically. Please use the contact details below to contact us. \r\n \r\nContact us. \r\nTelegram - @FeedbackFormEU \r\nSkype  FeedbackForm2019 \r\nEmail - feedbackform@make-success.com', '89.238.167.46', 'Computer', 'Windows 8.1', '2020-01-06 01:32:51');

-- --------------------------------------------------------

--
-- Table structure for table `data`
--

CREATE TABLE `data` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `added_by` int(11) NOT NULL,
  `tables` varchar(200) NOT NULL,
  `c_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data`
--

INSERT INTO `data` (`id`, `name`, `added_by`, `tables`, `c_date`) VALUES
(1, 'Banks', 1, 'data_1', '2019-11-26 18:22:54'),
(2, 'Microfinance', 1, 'data_2', '2019-11-26 18:27:19'),
(3, 'Capital Market', 1, 'data_3', '2019-11-26 19:19:59'),
(4, 'Companies', 1, 'data_4', '2019-11-26 19:29:15'),
(5, 'Technologies', 1, 'data_5', '2019-11-26 19:30:53'),
(6, 'It', 1, 'data_6', '2019-11-26 21:11:38'),
(7, 'Economy', 1, 'data_7', '2019-11-26 21:23:43'),
(9, 'Electronics', 0, 'data_9', '2019-11-29 17:46:36');

-- --------------------------------------------------------

--
-- Table structure for table `data_1`
--

CREATE TABLE `data_1` (
  `id` int(11) NOT NULL,
  `data_id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `source` varchar(256) NOT NULL,
  `country` varchar(256) NOT NULL,
  `attachment` varchar(256) NOT NULL,
  `total_download` int(11) NOT NULL,
  `added_by` int(11) NOT NULL,
  `c_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `data_2`
--

CREATE TABLE `data_2` (
  `id` int(11) NOT NULL,
  `data_id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `source` varchar(256) NOT NULL,
  `country` varchar(256) NOT NULL,
  `attachment` varchar(256) NOT NULL,
  `total_download` int(11) NOT NULL,
  `added_by` int(11) NOT NULL,
  `c_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `data_3`
--

CREATE TABLE `data_3` (
  `id` int(11) NOT NULL,
  `data_id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `source` varchar(256) NOT NULL,
  `country` varchar(256) NOT NULL,
  `attachment` varchar(256) NOT NULL,
  `total_download` int(11) NOT NULL,
  `added_by` int(11) NOT NULL,
  `c_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `data_4`
--

CREATE TABLE `data_4` (
  `id` int(11) NOT NULL,
  `data_id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `source` varchar(256) NOT NULL,
  `country` varchar(256) NOT NULL,
  `attachment` varchar(256) NOT NULL,
  `total_download` int(11) NOT NULL,
  `added_by` int(11) NOT NULL,
  `c_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `data_5`
--

CREATE TABLE `data_5` (
  `id` int(11) NOT NULL,
  `data_id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `source` varchar(256) NOT NULL,
  `country` varchar(256) NOT NULL,
  `attachment` varchar(256) NOT NULL,
  `total_download` int(11) NOT NULL,
  `added_by` int(11) NOT NULL,
  `c_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `data_6`
--

CREATE TABLE `data_6` (
  `id` int(11) NOT NULL,
  `data_id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `source` varchar(256) NOT NULL,
  `country` varchar(256) NOT NULL,
  `attachment` varchar(256) NOT NULL,
  `total_download` int(11) NOT NULL,
  `added_by` int(11) NOT NULL,
  `c_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `data_7`
--

CREATE TABLE `data_7` (
  `id` int(11) NOT NULL,
  `data_id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `source` varchar(256) NOT NULL,
  `country` varchar(256) NOT NULL,
  `attachment` varchar(256) NOT NULL,
  `total_download` int(11) NOT NULL,
  `added_by` int(11) NOT NULL,
  `c_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `data_8`
--

CREATE TABLE `data_8` (
  `id` int(11) NOT NULL,
  `data_id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `source` varchar(256) NOT NULL,
  `attachment` varchar(256) NOT NULL,
  `total_download` int(11) NOT NULL,
  `added_by` int(11) NOT NULL,
  `c_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `data_9`
--

CREATE TABLE `data_9` (
  `id` int(11) NOT NULL,
  `data_id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `source` varchar(256) NOT NULL,
  `attachment` varchar(256) NOT NULL,
  `total_download` int(11) NOT NULL,
  `added_by` int(11) NOT NULL,
  `c_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `data_10`
--

CREATE TABLE `data_10` (
  `id` int(11) NOT NULL,
  `data_id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `source` varchar(256) NOT NULL,
  `attachment` varchar(256) NOT NULL,
  `total_download` int(11) NOT NULL,
  `added_by` int(11) NOT NULL,
  `c_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `data_11`
--

CREATE TABLE `data_11` (
  `id` int(11) NOT NULL,
  `data_id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `source` varchar(256) NOT NULL,
  `attachment` varchar(256) NOT NULL,
  `total_download` int(11) NOT NULL,
  `added_by` int(11) NOT NULL,
  `c_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `entrepreneurs`
--

CREATE TABLE `entrepreneurs` (
  `id` int(11) NOT NULL,
  `member_id` varchar(50) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `surname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `continent` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL,
  `nationality` varchar(50) NOT NULL,
  `province` varchar(50) NOT NULL,
  `district` varchar(50) NOT NULL,
  `sector` varchar(50) NOT NULL,
  `ville` varchar(50) NOT NULL,
  `adress` varchar(50) NOT NULL,
  `type_document` varchar(50) NOT NULL,
  `id_number` varchar(50) NOT NULL,
  `capital_needed` double NOT NULL,
  `profit_expected` double NOT NULL,
  `specialisation_id` int(11) NOT NULL,
  `area_id` int(11) NOT NULL,
  `profile` varchar(256) NOT NULL,
  `status` int(11) NOT NULL,
  `c_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `experts`
--

CREATE TABLE `experts` (
  `id` int(11) NOT NULL,
  `member_id` varchar(50) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `surname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `continent` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL,
  `nationality` varchar(50) NOT NULL,
  `province` varchar(50) NOT NULL,
  `district` varchar(50) NOT NULL,
  `sector` varchar(50) NOT NULL,
  `ville` varchar(50) NOT NULL,
  `adress` varchar(50) NOT NULL,
  `type_document` varchar(50) NOT NULL,
  `id_number` varchar(50) NOT NULL,
  `expertise` varchar(50) NOT NULL,
  `specialisation_id` int(11) NOT NULL,
  `area_id` int(11) NOT NULL,
  `profile` varchar(256) NOT NULL,
  `status` int(11) NOT NULL,
  `c_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `investers`
--

CREATE TABLE `investers` (
  `id` int(11) NOT NULL,
  `member_id` varchar(50) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `surname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `continent` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL,
  `nationality` varchar(50) NOT NULL,
  `province` varchar(50) NOT NULL,
  `district` varchar(50) NOT NULL,
  `sector` varchar(50) NOT NULL,
  `ville` varchar(50) NOT NULL,
  `adress` varchar(50) NOT NULL,
  `type_document` varchar(50) NOT NULL,
  `id_number` varchar(50) NOT NULL,
  `company_id` int(11) NOT NULL,
  `capital_min` double NOT NULL,
  `capital_max` double NOT NULL,
  `request` longtext NOT NULL,
  `area_id` int(11) NOT NULL,
  `profile` varchar(256) NOT NULL,
  `status` int(11) NOT NULL,
  `c_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `investers_opportunity`
--

CREATE TABLE `investers_opportunity` (
  `id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `min_investment` int(11) NOT NULL,
  `average_profit` int(11) NOT NULL,
  `continent` varchar(256) NOT NULL,
  `country` varchar(256) NOT NULL,
  `district` varchar(256) NOT NULL,
  `area` int(11) NOT NULL,
  `c_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `logs_type` int(11) NOT NULL,
  `user_ip` varchar(256) NOT NULL,
  `user_device` varchar(256) NOT NULL,
  `user_os` varchar(256) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`id`, `start_time`, `end_time`, `user_id`, `logs_type`, `user_ip`, `user_device`, `user_os`) VALUES
(1, '2019-11-27 21:24:09', NULL, 1, 1, '41.186.83.142', 'Mobile', 'Android'),
(2, '2019-11-27 21:25:32', '2019-11-27 21:26:14', 1, 1, '41.186.83.142', 'Computer', 'Linux'),
(3, '2019-11-28 14:51:10', NULL, 1, 1, '41.186.83.146', 'Mobile', 'Android'),
(4, '2019-11-29 18:37:58', NULL, 1, 1, '105.178.108.199', 'Computer', 'Linux'),
(5, '2019-11-29 19:46:58', NULL, 1, 1, '41.186.83.66', 'Computer', 'Linux'),
(6, '2019-12-03 14:20:57', NULL, 1, 1, '41.186.25.4', 'Mobile', 'Android'),
(7, '2019-12-07 12:32:26', NULL, 1, 1, '41.186.83.137', 'Mobile', 'Android'),
(8, '2019-12-07 12:33:14', NULL, 1, 1, '41.186.83.137', 'Computer', 'Linux'),
(9, '2019-12-07 12:34:19', NULL, 1, 1, '41.186.83.137', 'Mobile', 'Android'),
(10, '2019-12-07 12:44:19', NULL, 1, 1, '41.186.83.137', 'Computer', 'Linux'),
(11, '2019-12-07 12:53:48', NULL, 1, 1, '41.186.83.137', 'Computer', 'Linux'),
(12, '2019-12-08 09:47:44', NULL, 1, 1, '41.186.83.167', 'Computer', 'Linux'),
(13, '2019-12-08 10:39:58', '2019-12-08 11:12:18', 2, 1, '41.186.83.167', 'Computer', 'Windows 8.1'),
(14, '2019-12-08 10:49:00', NULL, 1, 1, '41.186.83.167', 'Computer', 'Linux'),
(15, '2019-12-11 12:31:13', NULL, 1, 1, '41.215.251.26', 'Computer', 'Windows 10'),
(16, '2019-12-11 13:18:40', '2019-12-11 13:23:34', 3, 1, '41.215.251.26', 'Mobile', 'iPhone'),
(17, '2019-12-11 13:37:15', NULL, 3, 1, '41.215.251.26', 'Mobile', 'iPhone'),
(18, '2019-12-11 15:46:15', '2019-12-11 15:50:13', 1, 1, '41.215.251.26', 'Computer', 'Windows 7'),
(19, '2019-12-13 07:27:45', '2019-12-13 09:21:54', 2, 1, '105.178.105.222', 'Computer', 'Windows 8.1'),
(20, '2019-12-13 17:43:23', NULL, 2, 1, '105.178.105.222', 'Computer', 'Windows 8.1'),
(21, '2019-12-17 12:07:41', '2019-12-17 12:29:58', 1, 1, '41.186.25.2', 'Computer', 'Windows 10'),
(22, '2019-12-17 12:30:45', NULL, 1, 1, '41.186.25.2', 'Computer', 'Windows 10'),
(23, '2019-12-25 14:07:40', '2019-12-25 14:08:46', 1, 1, '41.243.17.33', 'Computer', 'Windows 8'),
(24, '2020-01-15 16:33:26', NULL, 1, 1, '41.215.251.26', 'Computer', 'Linux'),
(25, '2020-01-16 17:03:27', NULL, 1, 1, '105.178.105.222', 'Computer', 'Linux');

-- --------------------------------------------------------

--
-- Table structure for table `research`
--

CREATE TABLE `research` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `added_by` int(11) NOT NULL,
  `tables` varchar(200) NOT NULL,
  `c_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `research`
--

INSERT INTO `research` (`id`, `name`, `added_by`, `tables`, `c_date`) VALUES
(1, 'Economics', 1, 'research_1', '2019-11-26 16:27:57'),
(2, 'History', 2, 'research_2', '2019-12-08 08:49:35');

-- --------------------------------------------------------

--
-- Table structure for table `research_1`
--

CREATE TABLE `research_1` (
  `id` int(11) NOT NULL,
  `research_id` int(11) NOT NULL,
  `book_name` varchar(256) NOT NULL,
  `author_name` varchar(256) NOT NULL,
  `author_continent` varchar(256) NOT NULL,
  `author_country` varchar(256) NOT NULL,
  `attachment` varchar(256) NOT NULL,
  `total_download` int(11) NOT NULL,
  `added_by` int(11) NOT NULL,
  `c_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `research_2`
--

CREATE TABLE `research_2` (
  `id` int(11) NOT NULL,
  `research_id` int(11) NOT NULL,
  `book_name` varchar(256) NOT NULL,
  `author_name` varchar(256) NOT NULL,
  `author_continent` varchar(256) NOT NULL,
  `author_country` varchar(256) NOT NULL,
  `attachment` varchar(256) NOT NULL,
  `total_download` int(11) NOT NULL,
  `added_by` int(11) NOT NULL,
  `c_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `research_2`
--

INSERT INTO `research_2` (`id`, `research_id`, `book_name`, `author_name`, `author_continent`, `author_country`, `attachment`, `total_download`, `added_by`, `c_date`) VALUES
(1, 2, 'History of Rwanda', 'Dr. John', 'Africa', 'Rwanda', 'DAO  UBUSHAKASHATSI KU MATEKA YA JENOCIDE OK(2) (3).doc', 9, 2, '2019-12-08 08:53:30'),
(2, 2, 'Amateka ya Jenoside yakorewe Abatutsi 1994 mukarere ka Nyamagabe', 'Prof.Dr.MBONYINKEBE DEOGRATIAS', 'Africa', 'RWANDA', 'Amateka ya Jenoside yakorewe Abatutsi mu Karere ka Nyamagabe 2019_6_17 updated.pdf', 1, 2, '2019-12-13 07:20:04');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `category` varchar(200) NOT NULL,
  `c_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `name`, `category`, `c_date`) VALUES
(1, 'Infrastructure / Facility-Based Services', '1', '2019-10-28 00:00:00'),
(2, 'Business Services', '1', '2019-10-28 00:00:00'),
(3, 'Financing and Access to finance', '1', '2019-10-01 16:41:37'),
(4, 'People Connectivity and Networking', '1', '2019-10-28 00:00:00'),
(6, 'Education / Access to knowledge', '1', '2019-10-01 16:41:37'),
(7, 'Infrastructure / Facility-Based Services', '2', '2019-10-01 16:41:37'),
(8, 'Business Services', '2', '2019-10-01 16:41:37'),
(9, 'Financing and Access to finance', '2', '2019-10-28 00:00:00'),
(10, 'People Connectivity and Networking', '2', '2019-10-01 16:41:37'),
(12, 'Education / Access to knowledge', '2', '2019-10-28 00:00:00'),
(13, 'Infrastructure / Facility-Based Services', '3', '2019-10-28 00:00:00'),
(14, 'Business Services', '3', '2019-10-28 00:00:00'),
(15, 'Financing and Access to finance', '3', '2019-10-01 16:41:37'),
(16, 'People Connectivity and Networking', '3', '2019-10-28 00:00:00'),
(17, 'Education / Access to knowledge', '3', '2019-10-28 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `specialisation`
--

CREATE TABLE `specialisation` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `added_by` int(11) NOT NULL,
  `c_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `specialisation`
--

INSERT INTO `specialisation` (`id`, `name`, `added_by`, `c_date`) VALUES
(1, 'Agriculture & Technology', 2, '2019-11-01 21:21:17'),
(2, 'Medecine', 2, '2019-11-01 21:21:43');

-- --------------------------------------------------------

--
-- Table structure for table `sub_services`
--

CREATE TABLE `sub_services` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `services_id` int(11) NOT NULL,
  `c_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub_services`
--

INSERT INTO `sub_services` (`id`, `name`, `services_id`, `c_date`) VALUES
(1, 'Training/Tele-conference rooms', 1, '2019-10-28 00:00:00'),
(4, 'Business idea, feasibility analysis', 2, '2019-10-28 00:00:00'),
(5, 'Business model/Strategy/Plan Development assistance', 2, '2019-10-28 00:00:00'),
(6, 'Pre-incubation services', 2, '2019-10-28 00:00:00'),
(7, 'Registration and formation of legal entity', 2, '2019-10-28 00:00:00'),
(8, 'Fundraising, access to venture investors and business angels', 3, '2019-10-28 00:00:00'),
(9, 'Providing information (on grant facilities, business plan competitions, sources for funding, credits)', 3, '2019-10-28 00:00:00'),
(10, 'Pitching sessions', 3, '2019-10-28 00:00:00'),
(11, 'Mentoring and Access to network of mentors', 4, '2019-10-28 00:00:00'),
(12, 'Coaching', 4, '2019-10-28 00:00:00'),
(13, 'Linkage to Strategic Partners', 4, '2019-10-28 00:00:00'),
(14, 'Capital and financing network (business angels, venture capitalist)', 4, '2019-10-28 00:00:00'),
(15, 'Network of external providers, intern network and fellow entrepreneurs', 4, '2019-10-28 00:00:00'),
(16, 'Virtual communities (experts, mentors, investors, etc.)', 4, '2019-10-28 00:00:00'),
(17, 'Organizing competitions)', 4, '2019-10-28 00:00:00'),
(18, 'Facilitating exchange of knowledge and ideas', 4, '2019-10-28 00:00:00'),
(19, 'Comprehensive Business training program', 5, '2019-10-28 00:00:00'),
(20, 'E-learning', 5, '2019-10-28 00:00:00'),
(21, 'Group training, workshops, business topics seminars', 5, '2019-10-28 00:00:00'),
(22, 'Presentations, regular matchmaking events', 5, '2019-10-28 00:00:00'),
(23, 'Resource Library, Access to knowledge databases', 5, '2019-10-28 00:00:00'),
(24, 'Business etiquette training', 5, '2019-10-28 00:00:00'),
(25, 'Commercialization/licensing seminars', 5, '2019-10-28 00:00:00'),
(26, 'Hot topic seminars ', 5, '2019-10-28 00:00:00'),
(27, 'Training/Tele-conference rooms', 6, '2019-10-28 00:00:00'),
(28, 'Conference/exhibition rooms', 6, '2019-10-28 00:00:00'),
(29, 'Business idea, feasibility analysis', 7, '2019-10-28 00:00:00'),
(30, 'Business model/Strategy/Plan Development assistance', 7, '2019-10-28 00:00:00'),
(31, 'Pre-incubation services', 7, '2019-10-28 00:00:00'),
(32, 'Registration and formation of legal entity', 7, '2019-10-28 00:00:00'),
(33, 'Fundraising, access to venture investors and business angels', 8, '2019-10-28 00:00:00'),
(34, 'Providing information (on grant facilities, business plan competitions, sources for funding, credits)', 8, '2019-10-28 00:00:00'),
(35, 'Pitching sessions', 8, '2019-10-28 00:00:00'),
(36, 'Mentoring and Access to network of mentors', 9, '2019-10-28 00:00:00'),
(37, 'Coaching', 9, '2019-10-28 00:00:00'),
(38, 'Linkage to Strategic Partners', 9, '2019-10-28 00:00:00'),
(39, 'Capital and financing network (business angels, venture capitalist)', 9, '2019-10-28 00:00:00'),
(40, 'Network of external providers, intern network and fellow entrepreneurs', 9, '2019-10-28 00:00:00'),
(41, 'Virtual communities (experts, mentors, investors, etc.)', 8, '2019-10-28 00:00:00'),
(42, 'Organizing competitions', 9, '2019-10-28 00:00:00'),
(43, 'Facilitating exchange of knowledge and ideas', 9, '2019-10-28 00:00:00'),
(44, 'Comprehensive Business training program', 10, '2019-10-28 00:00:00'),
(45, 'E-learning', 10, '2019-10-28 00:00:00'),
(46, 'Group training, workshops, business topics seminars', 10, '2019-10-28 00:00:00'),
(47, 'Presentations, regular matchmaking events', 10, '2019-10-28 00:00:00'),
(48, 'Resource Library, Access to knowledge databases', 10, '2019-10-28 00:00:00'),
(49, 'Business etiquette training', 10, '2019-10-28 00:00:00'),
(50, 'Commercialization/licensing seminars', 10, '2019-10-28 00:00:00'),
(51, 'Hot topic seminars', 10, '2019-10-28 00:00:00'),
(52, 'Business idea, feasibility analysis', 13, '2019-10-28 00:00:00'),
(53, 'Business model/Strategy/Plan Development assistance', 13, '2019-10-28 00:00:00'),
(54, 'Pre-incubation services', 13, '2019-10-28 00:00:00'),
(55, 'Registration and formation of legal entity', 13, '2019-10-28 00:00:00'),
(56, 'Comprehensive Business training program', 13, '2019-10-28 00:00:00'),
(57, 'Comprehensive Business training program', 13, '2019-10-28 00:00:00'),
(58, 'Presentations, regular matchmaking events', 13, '2019-10-28 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `area`
--
ALTER TABLE `area`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book_shop`
--
ALTER TABLE `book_shop`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book_shop_3`
--
ALTER TABLE `book_shop_3`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book_shop_4`
--
ALTER TABLE `book_shop_4`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book_shop_5`
--
ALTER TABLE `book_shop_5`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book_shop_6`
--
ALTER TABLE `book_shop_6`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `conference_visitors`
--
ALTER TABLE `conference_visitors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_1`
--
ALTER TABLE `data_1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_2`
--
ALTER TABLE `data_2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_3`
--
ALTER TABLE `data_3`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_4`
--
ALTER TABLE `data_4`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_5`
--
ALTER TABLE `data_5`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_6`
--
ALTER TABLE `data_6`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_7`
--
ALTER TABLE `data_7`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_8`
--
ALTER TABLE `data_8`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_9`
--
ALTER TABLE `data_9`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_10`
--
ALTER TABLE `data_10`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_11`
--
ALTER TABLE `data_11`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `entrepreneurs`
--
ALTER TABLE `entrepreneurs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `experts`
--
ALTER TABLE `experts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `investers`
--
ALTER TABLE `investers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `investers_opportunity`
--
ALTER TABLE `investers_opportunity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `research`
--
ALTER TABLE `research`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `research_1`
--
ALTER TABLE `research_1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `research_2`
--
ALTER TABLE `research_2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `specialisation`
--
ALTER TABLE `specialisation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_services`
--
ALTER TABLE `sub_services`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `area`
--
ALTER TABLE `area`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `book_shop`
--
ALTER TABLE `book_shop`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `book_shop_3`
--
ALTER TABLE `book_shop_3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `book_shop_4`
--
ALTER TABLE `book_shop_4`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `book_shop_5`
--
ALTER TABLE `book_shop_5`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `book_shop_6`
--
ALTER TABLE `book_shop_6`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `conference_visitors`
--
ALTER TABLE `conference_visitors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `data`
--
ALTER TABLE `data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `data_1`
--
ALTER TABLE `data_1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `data_2`
--
ALTER TABLE `data_2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `data_3`
--
ALTER TABLE `data_3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `data_4`
--
ALTER TABLE `data_4`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `data_5`
--
ALTER TABLE `data_5`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `data_6`
--
ALTER TABLE `data_6`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `data_7`
--
ALTER TABLE `data_7`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `data_8`
--
ALTER TABLE `data_8`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `data_9`
--
ALTER TABLE `data_9`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `data_10`
--
ALTER TABLE `data_10`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `data_11`
--
ALTER TABLE `data_11`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `entrepreneurs`
--
ALTER TABLE `entrepreneurs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `experts`
--
ALTER TABLE `experts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `investers`
--
ALTER TABLE `investers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `investers_opportunity`
--
ALTER TABLE `investers_opportunity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `research`
--
ALTER TABLE `research`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `research_1`
--
ALTER TABLE `research_1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `research_2`
--
ALTER TABLE `research_2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `specialisation`
--
ALTER TABLE `specialisation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sub_services`
--
ALTER TABLE `sub_services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
