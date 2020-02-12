-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 12, 2020 at 05:25 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mmms_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `contributions`
--

CREATE TABLE `contributions` (
  `id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `total_amount` int(11) NOT NULL,
  `date_payment` date NOT NULL,
  `member_confirmation` int(11) NOT NULL,
  `c_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contributions`
--

INSERT INTO `contributions` (`id`, `member_id`, `admin_id`, `amount`, `total_amount`, `date_payment`, `member_confirmation`, `c_date`) VALUES
(1, 4, 4, 50, 50, '2020-02-11', 0, '2020-02-11 18:48:50'),
(2, 3, 4, 50, 50, '2020-01-14', 0, '2020-02-11 18:49:12'),
(3, 1, 4, 50, 50, '2020-02-04', -1, '2020-02-11 18:49:29'),
(4, 1, 4, 50, 100, '2020-01-13', -1, '2020-02-11 18:49:56'),
(5, 4, 1, 100, 150, '2020-04-14', 0, '2020-02-12 05:18:04');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` int(11) NOT NULL,
  `fname` varchar(256) NOT NULL,
  `lname` varchar(256) NOT NULL,
  `email` varchar(256) NOT NULL,
  `phone` varchar(256) NOT NULL,
  `address` varchar(256) NOT NULL,
  `category` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `registered_by` int(11) NOT NULL,
  `profile` varchar(256) NOT NULL,
  `password` varchar(256) NOT NULL,
  `c_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `fname`, `lname`, `email`, `phone`, `address`, `category`, `status`, `registered_by`, `profile`, `password`, `c_date`) VALUES
(1, 'Ezechiel', 'Ezpk', 'ezpk@gmail.com', '0786618405', 'Gisozi', 1, 1, 1, 'user.png', 'ezpk', '2020-02-11 17:36:35'),
(3, 'Arnold', 'Sibita', 'jibu@gmail.com', '0786565652', 'Gisozi/Kibanza', 0, 0, 1, 'images/user.png', 'Arnold@mmms2019', '2020-02-11 17:27:56'),
(4, 'Abigael', 'Kasoki', 'abigael@gmail.com', '0785657657', 'Gisozi/Kibanza', 0, 1, 1, 'images/user.png', 'Abigael@mmms2019', '2020-02-11 17:28:23');

-- --------------------------------------------------------

--
-- Table structure for table `money_back`
--

CREATE TABLE `money_back` (
  `id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `loan_id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `total_amount` double NOT NULL,
  `remaining_amount` double NOT NULL,
  `observation` double NOT NULL,
  `member_confirmation` int(11) NOT NULL,
  `c_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `money_back`
--

INSERT INTO `money_back` (`id`, `member_id`, `admin_id`, `loan_id`, `amount`, `total_amount`, `remaining_amount`, `observation`, `member_confirmation`, `c_date`) VALUES
(1, 1, 1, 4, 50, 50, 60, 45.5, 0, '2020-02-12 05:07:38'),
(2, 4, 1, 2, 50, 50, 5, 90.9, 0, '2020-02-12 05:07:50'),
(3, 4, 1, 1, 55, 55, 0, 100, 0, '2020-02-12 05:08:01');

-- --------------------------------------------------------

--
-- Table structure for table `money_loan`
--

CREATE TABLE `money_loan` (
  `id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `interest` double NOT NULL,
  `date_loan` date NOT NULL,
  `date_echeance` date NOT NULL,
  `status` int(11) NOT NULL,
  `member_confirmation` int(11) NOT NULL,
  `c_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `money_loan`
--

INSERT INTO `money_loan` (`id`, `member_id`, `admin_id`, `amount`, `interest`, `date_loan`, `date_echeance`, `status`, `member_confirmation`, `c_date`) VALUES
(1, 4, 1, 50, 5, '2020-02-11', '2020-03-11', 0, 0, '2020-02-12 03:13:55'),
(2, 4, 1, 50, 5, '2020-02-12', '2020-02-12', 0, 0, '2020-02-12 03:20:31'),
(3, 3, 1, 50, 5, '2020-02-12', '2020-03-05', 0, 0, '2020-02-12 03:22:40'),
(4, 1, 1, 100, 10, '2020-02-12', '2020-04-30', 0, 1, '2020-02-12 03:24:52');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contributions`
--
ALTER TABLE `contributions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `money_back`
--
ALTER TABLE `money_back`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `money_loan`
--
ALTER TABLE `money_loan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contributions`
--
ALTER TABLE `contributions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `money_back`
--
ALTER TABLE `money_back`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `money_loan`
--
ALTER TABLE `money_loan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
