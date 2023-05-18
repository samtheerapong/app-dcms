-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 17, 2023 at 04:12 AM
-- Server version: 8.0.31
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db-order-link`
--

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

DROP TABLE IF EXISTS `logs`;
CREATE TABLE IF NOT EXISTS `logs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `document_number` varchar(45) DEFAULT NULL,
  `document_revision` varchar(45) DEFAULT NULL,
  `document_title` varchar(200) DEFAULT NULL,
  `requester_by` int DEFAULT NULL,
  `requester_at` varchar(45) DEFAULT NULL,
  `details` text,
  `covenant` text,
  `docs` text,
  `document_age` varchar(45) DEFAULT NULL,
  `document_public_at` varchar(45) DEFAULT NULL,
  `stamps_id` int DEFAULT NULL,
  `document_tags` varchar(45) DEFAULT NULL,
  `points_id` int DEFAULT NULL,
  `additional_training` text,
  `reviewer_by` int DEFAULT NULL,
  `reviewer_at` varchar(45) DEFAULT NULL,
  `reviewer_comment` text,
  `approve_by` int DEFAULT NULL,
  `approve_at` varchar(45) DEFAULT NULL,
  `approver_comment` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
