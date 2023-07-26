-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 26, 2023 at 03:02 PM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `patient_details`
--

-- --------------------------------------------------------

--
-- Table structure for table `p_details`
--

DROP TABLE IF EXISTS `p_details`;
CREATE TABLE IF NOT EXISTS `p_details` (
  `Patient_name` varchar(20) NOT NULL,
  `Patient_address` varchar(50) NOT NULL,
  `Phone_num` int NOT NULL,
  `Admit_Date` date NOT NULL,
  `P_id` int NOT NULL,
  PRIMARY KEY (`P_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `p_details`
--

INSERT INTO `p_details` (`Patient_name`, `Patient_address`, `Phone_num`, `Admit_Date`, `P_id`) VALUES
('Aastha Solanki', 'Opp. Don Bosco School. Behind Gupta Hospital', 2147483647, '2023-07-30', 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
