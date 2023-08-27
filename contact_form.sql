-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 26, 2023 at 08:08 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `salon`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact_form`
--

CREATE TABLE IF NOT EXISTS `contact_form` (
  `full_name` text NOT NULL,
  `phone` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `message` varchar(150) NOT NULL,
  `ip_add` varchar(20) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact_form`
--

INSERT INTO `contact_form` (`full_name`, `phone`, `email`, `subject`, `message`, `ip_add`, `timestamp`) VALUES
('nilambari', '1234567890', 'nilambarikothavale4@gmail.com', 'aksdjhfk', 'drgfju', '::1', '2023-08-25 02:06:37'),
('nilambari', '1234567890', 'nilambarikothavale4@gmail.com', 'aksdjhfk', 'hgkjik;po', '::1', '2023-08-25 03:47:37'),
('nilambari', '1234567890', 'nilambarikothavale4@gmail.com', 'aksdjhfk', 'hgkjik;po', '::1', '2023-08-25 03:51:23'),
('nilambari', '1234567890', 'nilambarikothavale4@gmail.com', 'aksdjhfk', 'hgkjik;po', '::1', '2023-08-25 03:54:27'),
('nilambari', '1234567890', 'nilambarikothavale4@gmail.com', 'aksdjhfk', 'hgkjik;po', '::1', '2023-08-25 04:00:30'),
('nilambari', '1234567890', 'nilambarikothavale4@gmail.com', 'aksdjhfk', 'hgkjik;po', '::1', '2023-08-25 04:20:52'),
('nilambari', '1234567890', 'nilambarikothavale4@gmail.com', 'aksdjhfk', 'hgkjik;po', '::1', '2023-08-25 04:22:35'),
('nilambari', '1234567890', 'nilambarikothavale4@gmail.com', 'aksdjhfk', 'hgkjik;po', '::1', '2023-08-25 04:22:56'),
('nilambari', '1234567890', 'nilambarikothavale4@gmail.com', 'aksdjhfk', 'gfjhhj', '::1', '2023-08-25 04:24:34'),
('nilambari', '1234567890', 'nilambarikothavale4@gmail.com', 'aksdjhfk', 'gtdthyli', '::1', '2023-08-25 04:27:06'),
('nilambari', '1234567890', 'nilambarikothavale4@gmail.com', 'aksdjhfk', 'askdj;oesikpoe', '::1', '2023-08-26 04:45:41'),
('nilambari', '1234567890', 'nilambarikothavale4@gmail.com', 'aksdjhfk', 'askdj;oesikpoe', '::1', '2023-08-26 04:50:33'),
('nilambari', '1234567890', 'nilambarikothavale4@gmail.com', 'aksdjhfk', 'askdj;oesikpoe', '::1', '2023-08-26 04:56:13'),
('nilambari', '1234567890', 'nilambarikothavale4@gmail.com', 'aksdjhfk', 'askdj;oesikpoe', '::1', '2023-08-26 05:01:51'),
('nilambari', '1234567890', 'nilambarikothavale4@gmail.com', 'aksdjhfk', 'fstgrfd', '::1', '2023-08-26 05:02:21'),
('nilambari', '1234567890', 'nilambarikothavale4@gmail.com', 'aksdjhfk', 'fstgrfd', '::1', '2023-08-26 05:06:06'),
('nilambari', '1234567890', 'nilambarikothavale4@gmail.com', 'aksdjhfk', 'fstgrfd', '::1', '2023-08-26 05:07:09'),
('nilambari', '1234567890', 'nilambarikothavale4@gmail.com', 'aksdjhfk', 'fstgrfd', '::1', '2023-08-26 05:07:37'),
('nilambari', '1234567890', 'nilambarikothavale4@gmail.com', 'aksdjhfk', 'kjflgkdj', '::1', '2023-08-26 05:08:57'),
('nilambari', '1234567890', 'nilambarikothavale4@gmail.com', 'aksdjhfk', 'kjflgkdj', '::1', '2023-08-26 05:15:00'),
('nilambari', '1234567890', 'nilambarikothavale4@gmail.com', 'aksdjhfk', 'kjflgkdj', '::1', '2023-08-26 05:15:24'),
('nilambari', '1234567890', 'nilambarikothavale4@gmail.com', 'aksdjhfk', 'kjflgkdj', '::1', '2023-08-26 05:17:36'),
('nilambari', '1234567890', 'nilambarikothavale4@gmail.com', 'aksdjhfk', 'kjflgkdj', '::1', '2023-08-26 05:22:23'),
('nilambari', '1234567890', 'nilambarikothavale4@gmail.com', 'aksdjhfk', 'kjflgkdj', '::1', '2023-08-26 05:29:41'),
('nilambari', '1234567890', 'nilambarikothavale4@gmail.com', 'aksdjhfk', 'kjflgkdj', '::1', '2023-08-26 05:30:10'),
('nilambari', '1234567890', 'nilambarikothavale4@gmail.com', 'aksdjhfk', 'kjflgkdj', '::1', '2023-08-26 05:50:22'),
('nilambari', '1234567890', 'nilambarikothavale4@gmail.com', 'aksdjhfk', 'fhnkjh', '::1', '2023-08-26 05:54:15');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
