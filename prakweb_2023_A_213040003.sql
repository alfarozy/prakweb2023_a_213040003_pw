-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 04, 2023 at 01:36 PM
-- Server version: 10.11.4-MariaDB-1
-- PHP Version: 8.1.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `prakweb_2023_A_213040003`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `author` varchar(255) DEFAULT NULL,
  `publication_year` int(11) DEFAULT NULL,
  `isbn` varchar(20) DEFAULT NULL,
  `genre` varchar(50) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `title`, `author`, `publication_year`, `isbn`, `genre`, `price`, `created_at`, `updated_at`) VALUES
(1, 'Meniti Jalan Cahaya', 'Koji Xenpai', 2019, '1234567890', 'Fiksi', '29.99', '2023-09-27 04:04:22', '2023-09-27 04:04:22'),
(2, 'Rahasia Malam', 'Albar', 2020, '2345678901', 'Misteri', '24.99', '2023-09-27 04:04:22', '2023-09-27 04:04:22'),
(3, 'Hujan Pagi', 'faqihun', 2021, '3456789012', 'Drama', '19.99', '2023-09-27 04:04:22', '2023-09-27 04:04:22'),
(4, 'Pukul Setengah Lima', 'anin', 2018, '4567890123', 'Romansa', '22.99', '2023-09-27 04:04:22', '2023-09-27 04:04:53'),
(5, 'Pulang', 'Koji Xenpai', 2022, '5678901234', 'Petualangan', '27.99', '2023-09-27 04:04:22', '2023-09-27 04:04:22'),
(6, 'Mencari Senyum', 'Albar', 2017, '6789012345', 'Fiksi', '19.99', '2023-09-27 04:04:22', '2023-09-27 04:04:22'),
(7, 'Bintang Malam', 'faqihun', 2023, '7890123456', 'Misteri', '24.99', '2023-09-27 04:04:22', '2023-09-27 04:04:22'),
(8, 'Kisah Cinta Terpendek', 'anin', 2016, '8901234567', 'Romansa', '17.99', '2023-09-27 04:04:22', '2023-09-27 04:04:22'),
(9, 'Pagi yang Indah', 'Koji Xenpai', 2024, '9012345678', 'Drama', '21.99', '2023-09-27 04:04:22', '2023-09-27 04:04:22'),
(10, 'Misteri Gunung Tertinggi', 'Albar', 2015, '0123456789', 'Petualangan', '29.99', '2023-09-27 04:04:22', '2023-09-27 04:04:22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
