-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 13, 2022 at 01:30 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `voucher_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `starbucks_mis`
--

CREATE TABLE `starbucks_mis` (
  `ssn` varchar(11) NOT NULL,
  `id` varchar(9) DEFAULT NULL,
  `tin` varchar(9) DEFAULT NULL,
  `fname` varchar(100) DEFAULT NULL,
  `lname` varchar(100) DEFAULT NULL,
  `patronym` varchar(100) DEFAULT NULL,
  `birth_date` varchar(10) DEFAULT NULL,
  `unemp_card_num` varchar(16) DEFAULT NULL,
  `unemp_card_status` varchar(8) DEFAULT NULL,
  `unemp_duration` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `starbucks_mis`
--

INSERT INTO `starbucks_mis` (`ssn`, `id`, `tin`, `fname`, `lname`, `patronym`, `birth_date`, `unemp_card_num`, `unemp_card_status`, `unemp_duration`) VALUES
('07521063785', '285224258', '136231325', 'Douglas', 'Lyphe', 'Gideon', '1989', '8398642912296309', 'inactive', '2'),
('12346411100', '123456789', '294795129', 'John', 'Doe', 'Tim', '1997', '1234567812345678', 'active', '2'),
('16273813476', '650605702', '579596810', 'Richard', 'Tea', 'Ameter', '1998', '8552556936372455', 'active', '2'),
('18717165135', '984165198', '949477456', 'Demeter', 'Carissa', 'Brandon', '1994', '4678542115438546', 'active', '8'),
('25259629183', '315696751', '555164381', 'Inverness', 'McKenzie', 'Abraham', '1997', '3536671072001553', 'active', '2'),
('28018823034', '216637318', '140478416', 'Abraham', 'Pigeon', 'Elanor', '1990', '4068993505126001', 'inactive', '2'),
('52465849751', '512956155', '512956155', 'Mary', 'Poppins', 'David', '1964', '5487596542135654', 'inactive', '6'),
('62361028840', '756942468', '014045020', 'Nigel', 'Flint', 'Dylan', '1982', '4465287222878172', 'active', '2'),
('69507655055', '890737933', '650471828', 'Hilary', 'Ouse', 'Piff', '2000', '8581226040047478', 'active', '2'),
('71408232456', '488152868', '980466705', 'Alan', 'Fresco', 'Richard', '1983', '3912290362023814', 'inactive', '2');

-- --------------------------------------------------------

--
-- Table structure for table `voucher`
--

CREATE TABLE `voucher` (
  `ssn` varchar(11) NOT NULL,
  `id` varchar(9) DEFAULT NULL,
  `tin` varchar(9) DEFAULT NULL,
  `fname` varchar(100) DEFAULT NULL,
  `lname` varchar(100) DEFAULT NULL,
  `patronym` varchar(100) DEFAULT NULL,
  `birth_date` varchar(10) DEFAULT NULL,
  `unemp_card_num` varchar(16) DEFAULT NULL,
  `unemp_duration` varchar(4) DEFAULT NULL,
  `voucherCode` varchar(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `voucher`
--

INSERT INTO `voucher` (`ssn`, `id`, `tin`, `fname`, `lname`, `patronym`, `birth_date`, `unemp_card_num`, `unemp_duration`, `voucherCode`) VALUES
('16273813476', '650605702', '579596810', 'Richard', 'Tea', 'Ameter', '1998', '8552556936372455', '2', '7652829971690254'),
('18717165135', '984165198', '949477456', 'Demeter', 'Carissa', 'Brandon', '1990', '4678542115438546', '8', '3659991299655008'),
('25259629183', '315696751', '555164381', 'Inverness', 'McKenzie', 'Abraham', '1997', '3536671072001553', '2', '9915205451041097');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `starbucks_mis`
--
ALTER TABLE `starbucks_mis`
  ADD PRIMARY KEY (`ssn`);

--
-- Indexes for table `voucher`
--
ALTER TABLE `voucher`
  ADD PRIMARY KEY (`ssn`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
