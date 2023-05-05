-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 05, 2023 at 08:39 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `thesis_archive_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_accounts`
--

CREATE TABLE `admin_accounts` (
  `id` bigint(20) NOT NULL,
  `acc_id` bigint(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `acc_name` varchar(255) NOT NULL,
  `acc_type` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_accounts`
--

INSERT INTO `admin_accounts` (`id`, `acc_id`, `email`, `username`, `password`, `acc_name`, `acc_type`, `date`) VALUES
(1, 1211900327, 'dummy.dummy2@gmail.com', 'admin1', 'a', 'Kent', 'Expert', '2023-05-04 02:31:21');

-- --------------------------------------------------------

--
-- Table structure for table `uploaded_thesis`
--

CREATE TABLE `uploaded_thesis` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) NOT NULL,
  `abstract` longtext NOT NULL,
  `author` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  `program` varchar(255) NOT NULL,
  `year` year(4) NOT NULL,
  `date` date NOT NULL,
  `uploaded_by` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `file_size` int(11) NOT NULL,
  `file_tmp` varchar(255) NOT NULL,
  `file_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `uploaded_thesis`
--

INSERT INTO `uploaded_thesis` (`id`, `title`, `abstract`, `author`, `department`, `program`, `year`, `date`, `uploaded_by`, `file_name`, `file_size`, `file_tmp`, `file_type`) VALUES
(17, 'test', 'test', 'test', 'Computer-Studies-Department', 'BSIT', 2022, '2023-05-05', 'Kent', '64549edc12db99.42286302.pdf', 0, '', ''),
(18, 'test2', 'test2', 'test2', 'Computer-Studies-Department', 'BSCS', 2022, '2023-05-05', 'Kent', '64549f611e3bf4.85607739.pdf', 0, '', ''),
(19, 'test3', 'test3', 'test3', 'Accounting-Education-Department', 'BSA', 2022, '2023-05-05', 'Kent', '64549fe4eec7d8.43204838.pdf', 0, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `user_accounts`
--

CREATE TABLE `user_accounts` (
  `id` bigint(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `acc_name` varchar(255) NOT NULL,
  `acc_type` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_accounts`
--

INSERT INTO `user_accounts` (`id`, `email`, `username`, `password`, `acc_name`, `acc_type`, `date`) VALUES
(78, 'sample@gmail.com', 'test', 'test', 'test', 'End-user', '2023-05-05 06:28:07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_accounts`
--
ALTER TABLE `admin_accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `acc_id` (`acc_id`),
  ADD KEY `date` (`date`),
  ADD KEY `email` (`email`),
  ADD KEY `username` (`username`);

--
-- Indexes for table `uploaded_thesis`
--
ALTER TABLE `uploaded_thesis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_accounts`
--
ALTER TABLE `user_accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `date` (`date`),
  ADD KEY `email` (`email`),
  ADD KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_accounts`
--
ALTER TABLE `admin_accounts`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `uploaded_thesis`
--
ALTER TABLE `uploaded_thesis`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `user_accounts`
--
ALTER TABLE `user_accounts`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
