-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 02, 2026 at 12:58 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `makalah_stima`
--

-- --------------------------------------------------------

--
-- Table structure for table `friends`
--

CREATE TABLE `friends` (
  `name` varchar(20) NOT NULL,
  `friend_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `friends`
--

INSERT INTO `friends` (`name`, `friend_name`) VALUES
('Benvolio', 'Montague'),
('Benvolio', 'Romeo'),
('Capulet', 'Escalus'),
('Capulet', 'Juliet'),
('Capulet', 'Paris'),
('Capulet', 'Tybalt'),
('Escalus', 'Capulet'),
('Escalus', 'Mercutio'),
('Escalus', 'Montague'),
('Escalus', 'Paris'),
('Friar Laurence', 'Juliet'),
('Friar Laurence', 'Romeo'),
('Juliet', 'Capulet'),
('Juliet', 'Friar Laurence'),
('Juliet', 'Marcel'),
('Juliet', 'Romeo'),
('Juliet', 'Tybalt'),
('Marcel', 'Juliet'),
('Mercutio', 'Escalus'),
('Mercutio', 'Paris'),
('Mercutio', 'Romeo'),
('Montague', 'Benvolio'),
('Montague', 'Escalus'),
('Montague', 'Romeo'),
('Paris', 'Capulet'),
('Paris', 'Escalus'),
('Paris', 'Mercutio'),
('Romeo', 'Benvolio'),
('Romeo', 'Friar Laurence'),
('Romeo', 'Juliet'),
('Romeo', 'Mercutio'),
('Romeo', 'Montague'),
('Tybalt', 'Capulet'),
('Tybalt', 'Juliet');

-- --------------------------------------------------------

--
-- Table structure for table `person`
--

CREATE TABLE `person` (
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `person`
--

INSERT INTO `person` (`name`) VALUES
('Benvolio'),
('Capulet'),
('Escalus'),
('Friar Laurence'),
('Juliet'),
('Marcel'),
('Mercutio'),
('Montague'),
('Paris'),
('Romeo'),
('Tybalt');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `friends`
--
ALTER TABLE `friends`
  ADD PRIMARY KEY (`name`,`friend_name`),
  ADD KEY `friend_name` (`friend_name`);

--
-- Indexes for table `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`name`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `friends`
--
ALTER TABLE `friends`
  ADD CONSTRAINT `friends_ibfk_1` FOREIGN KEY (`name`) REFERENCES `person` (`name`),
  ADD CONSTRAINT `friends_ibfk_2` FOREIGN KEY (`friend_name`) REFERENCES `person` (`name`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
