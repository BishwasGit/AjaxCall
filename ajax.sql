-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 02, 2023 at 05:30 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ajax`
--

-- --------------------------------------------------------

--
-- Table structure for table `ajax_data`
--

CREATE TABLE `ajax_data` (
  `user_id` int(11) NOT NULL,
  `uuid` char(20) NOT NULL,
  `username` varchar(255) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ajax_data`
--

INSERT INTO `ajax_data` (`user_id`, `uuid`, `username`, `date`) VALUES
(1, '220s-s', 'Bishwas', '2023-05-31'),
(2, 'xcvv-2', 'Binisha', '2023-05-31'),
(3, 'zxs-21', 'Senyor', '2023-05-31'),
(4, 'ssd-23', 'Bibhuti', '2023-05-31'),
(5, 'aasv-12', 'Shrestha', '2023-05-31'),
(6, '22eAsvz', 'Raven', '2023-05-21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ajax_data`
--
ALTER TABLE `ajax_data`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ajax_data`
--
ALTER TABLE `ajax_data`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
