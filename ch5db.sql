-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 11, 2023 at 07:17 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ch5db`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `FlightCount` (IN `airline` VARCHAR(30), OUT `quantity` INT)  NO SQL
select count(*)
into quantity
from flight
where fName = airline$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `flight`
--

CREATE TABLE `flight` (
  `fnum` int(4) NOT NULL,
  `fName` varchar(30) NOT NULL,
  `dTime` time NOT NULL,
  `dAirPort` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `flight`
--

INSERT INTO `flight` (`fnum`, `fName`, `dTime`, `dAirPort`) VALUES
(100, 'China Airlines', '18:30:00', 'PEK'),
(110, 'KoreanAir', '13:40:00', 'INC'),
(120, 'KoreanAir', '04:40:00', 'IAH'),
(280, 'China Airlines', '09:00:00', 'PEK'),
(300, 'China Airlines', '12:00:00', 'PEK'),
(444, 'Amerial Airline', '12:12:30', 'IAH'),
(530, 'SouthWest', '07:40:00', 'FRA'),
(540, 'Lufthansa Airlines', '09:00:00', 'FRA'),
(555, 'Amerial Airline', '00:12:30', 'IAH'),
(640, 'Lufthansa Airlines', '09:30:00', 'FRA'),
(740, 'Lufthansa Airlines', '10:00:00', 'FRA'),
(840, 'Lufthansa Airlines', '10:30:00', 'FRA'),
(888, 'KoreanAir', '05:00:00', 'INC'),
(940, 'Lufthansa Airlines', '11:00:00', 'FRA'),
(999, 'Canada Airlines', '22:00:00', 'INC'),
(1040, 'Lufthansa Airlines', '12:00:00', 'FRA'),
(1140, 'Lufthansa Airlines', '13:00:00', 'FRA'),
(1240, 'Lufthansa Airlines', '14:00:00', 'FRA'),
(1300, 'KoreanAir', '19:30:00', 'INC'),
(1340, 'Lufthansa Airlines', '15:00:00', 'FRA'),
(1400, 'Canada Airlines', '19:30:00', 'IAH'),
(1500, 'KoreanAir', '09:30:00', 'IAH'),
(1600, 'KoreanAir', '09:30:00', 'IAH');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `flight`
--
ALTER TABLE `flight`
  ADD PRIMARY KEY (`fnum`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
