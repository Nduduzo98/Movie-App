-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 01, 2021 at 12:02 PM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `moviedb`
--

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `Id` int(11) NOT NULL,
  `Title` varchar(100) NOT NULL,
  `Description` text NOT NULL,
  `releaseYear` varchar(4) NOT NULL,
  `Genre` varchar(20) NOT NULL,
  `dateCreated` date NOT NULL,
  `DateUpdated` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`Id`, `Title`, `Description`, `releaseYear`, `Genre`, `dateCreated`, `DateUpdated`) VALUES
(2, 'TED 3', 'ziyawa', '2021', 'Comedy', '2021-02-28', '2021-03-04'),
(3, 'Blended', 'ziyawa', '2020', 'Thriller', '2021-02-28', '2020-05-25'),
(4, 'John Wick', 'Babayega', '2014', 'Action', '2021-01-27', '2021-01-31'),
(5, 'John Wick', 'Babayega', '2014', 'Action', '2021-01-27', '2021-01-31'),
(6, 'John Wick', 'Babayega', '2014', 'Action', '2021-01-27', '2021-01-31'),
(7, 'John Wick', 'Babayega', '2014', 'Action', '2021-01-27', '2021-01-31'),
(8, 'John Wick', 'Babayega', '2014', 'Action', '2021-01-27', '2021-01-31'),
(9, 'John Wick', 'Babayega', '2014', 'Action', '2021-01-27', '2021-01-31'),
(10, 'John Wick', 'Babayega', '2014', 'Action', '2021-01-27', '2021-01-31'),
(11, 'John Wick', 'Babayega', '2014', 'Action', '2021-01-27', '2021-01-31'),
(12, 'Rush Hour', 'Jackie', '2002', 'Action Comedy', '2021-02-01', '2021-02-02'),
(13, 'Friday', 'ice cube', '1998', 'Comedy', '2021-02-01', '2021-02-24'),
(14, 'Friday', 'ice cube', '1998', 'Comedy', '2021-02-01', '2021-02-24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
