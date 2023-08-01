-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 11, 2022 at 06:33 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `the-finder`
--

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `Company_name` varchar(50) NOT NULL,
  `Company_ID` int(30) NOT NULL,
  `Company_address` varchar(150) NOT NULL,
  `Company_email_address` varchar(50) NOT NULL,
  `Postal_code` int(10) NOT NULL,
  `Province` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`Company_name`, `Company_ID`, `Company_address`, `Company_email_address`, `Postal_code`, `Province`) VALUES
('AmigozSLElectronics', 65789, 'amigozslelectronics@gmail.com', '60/35,D.S.Wijesinghe mw,Katubedda, Moratuwa', 10400, 'western province');

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE `signup` (
  `Username` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `Confirm password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`Username`, `Password`, `Confirm password`) VALUES
('amigozsl', 'amigo123', 'amigo123'),
('anuji23', 'anuji08', 'anuji08'),
('ashika21', 'ashika08', 'ashika08'),
('ravi.r', '12345', '12345'),
('tanuli27', '123456', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `tutor`
--

CREATE TABLE `tutor` (
  `First Name` varchar(15) NOT NULL,
  `Last Name` varchar(20) NOT NULL,
  `NIC` varchar(12) NOT NULL,
  `Gender` varchar(7) NOT NULL,
  `Name of the university` varchar(30) NOT NULL,
  `Address` varchar(30) NOT NULL,
  `Postal code` varchar(8) NOT NULL,
  `Province` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `undergraduate`
--

CREATE TABLE `undergraduate` (
  `First_name` varchar(50) NOT NULL,
  `Last _name` varchar(50) NOT NULL,
  `NIC` varchar(15) NOT NULL,
  `Address` varchar(150) NOT NULL,
  `Email_address` varchar(30) NOT NULL,
  `Mobile_number` int(10) NOT NULL,
  `Date of Birth` date NOT NULL,
  `Gender` varchar(6) NOT NULL,
  `Postal_code` int(10) NOT NULL,
  `Province` varchar(25) NOT NULL,
  `Name of the School` varchar(30) NOT NULL,
  `Name of the University` varchar(30) NOT NULL,
  `Degree` varchar(60) NOT NULL,
  `Achievements_and_Qualifications` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `undergraduate`
--

INSERT INTO `undergraduate` (`First_name`, `Last _name`, `NIC`, `Address`, `Email_address`, `Mobile_number`, `Date of Birth`, `Gender`, `Postal_code`, `Province`, `Name of the School`, `Name of the University`, `Degree`, `Achievements_and_Qualifications`) VALUES
('Anuji', 'De Silva', '200012345678', 'no 33, Chakkindarama, Rathmalana', 'anujidesilva@gmail.com', 776502714, '2000-02-23', 'Female', 10400, 'western province', 'Sujatha vidyalaya', 'KDU', 'Engineering', 'CIM,CIMA'),
('Raviprabha', 'Rathnayaka', '200053202168', '16/A, first lane, gemunupura,kothalawala,kaduwela', 'raviprabha@gmail.com', 764101022, '2000-02-01', 'Female', 1234, 'Western Province', 'Musaeus college', 'Sri Lanka Technological campus', 'Engineering', 'BIT, Colombo university'),
('Tanuli', 'Deunuwara', '200258700285', '7/750,Swarna place,Malabe', 'tanuliMD@gmail.com', 712342310, '2002-03-27', 'Female', 650271, 'western', 'Willesden college', 'Sri Lanka technological campus', 'Engineering', 'Bit'),
('Ashika', 'Mendis', '992655372v', '60/35, D.S.Wijesinghe mw, Katubedda, Moratuwa', 'ashikamendis2123@gmail.com', 767794409, '1999-09-21', 'Male', 10402, 'Western Province', 'Prince of Wales\' college', 'Sri Lanka Technological Campus', 'Engineering', 'CIMA,CIM');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`Company_name`,`Company_ID`,`Company_email_address`);

--
-- Indexes for table `signup`
--
ALTER TABLE `signup`
  ADD PRIMARY KEY (`Username`);

--
-- Indexes for table `tutor`
--
ALTER TABLE `tutor`
  ADD PRIMARY KEY (`NIC`);

--
-- Indexes for table `undergraduate`
--
ALTER TABLE `undergraduate`
  ADD PRIMARY KEY (`NIC`,`Mobile_number`,`Email_address`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
