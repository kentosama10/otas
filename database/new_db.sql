-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 24, 2023 at 01:44 PM
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
-- Database: `grading_db`
--
CREATE DATABASE IF NOT EXISTS `grading_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `grading_db`;

-- --------------------------------------------------------

--
-- Table structure for table `advisers`
--

CREATE TABLE `advisers` (
  `adviser_id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `grade_id` varchar(5) NOT NULL,
  `section` varchar(20) NOT NULL,
  `program` varchar(5) NOT NULL,
  `school_year` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `ATT_ID` int(30) NOT NULL,
  `STUDENT_ID` int(30) NOT NULL,
  `SYI_ID` int(30) NOT NULL,
  `MONTH` varchar(15) NOT NULL,
  `DAYS_OF_CLASSES` int(5) NOT NULL,
  `DAYS_PRESENT` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`ATT_ID`, `STUDENT_ID`, `SYI_ID`, `MONTH`, `DAYS_OF_CLASSES`, `DAYS_PRESENT`) VALUES
(1, 1, 1, 'June', 10, 10),
(2, 1, 1, 'July', 10, 10),
(3, 1, 1, 'August', 10, 10),
(4, 1, 1, 'September', 10, 10),
(5, 1, 1, 'October', 10, 10),
(6, 1, 1, 'November', 10, 10),
(7, 1, 1, 'December', 10, 10),
(8, 1, 1, 'January', 10, 10),
(9, 1, 1, 'February', 10, 10),
(10, 1, 1, 'March', 10, 10),
(11, 1, 1, 'April', 10, 10),
(12, 1, 1, 'May', 10, 10),
(13, 1, 2, 'June', 0, 0),
(14, 1, 2, 'July', 0, 0),
(15, 1, 2, 'August', 0, 0),
(16, 1, 2, 'September', 0, 0),
(17, 1, 2, 'October', 0, 0),
(18, 1, 2, 'November', 0, 0),
(19, 1, 2, 'December', 0, 0),
(20, 1, 2, 'January', 0, 0),
(21, 1, 2, 'February', 0, 0),
(22, 1, 2, 'March', 0, 0),
(23, 1, 2, 'April', 0, 0),
(24, 1, 2, 'May', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `awss`
--

CREATE TABLE `awss` (
  `id` int(200) NOT NULL,
  `ff` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `data_b`
--

CREATE TABLE `data_b` (
  `db_id` int(10) NOT NULL,
  `db_name` varchar(50) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `data_base`
--

CREATE TABLE `data_base` (
  `db_id` int(10) NOT NULL,
  `dn_name` varchar(50) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grade`
--

CREATE TABLE `grade` (
  `grade_id` int(10) NOT NULL,
  `grade` varchar(10) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `grade`
--

INSERT INTO `grade` (`grade_id`, `grade`, `status`) VALUES
(1, '7', ''),
(2, '8', ''),
(3, '9', ''),
(4, '10', '');

-- --------------------------------------------------------

--
-- Table structure for table `grades_per_subject`
--

CREATE TABLE `grades_per_subject` (
  `ID` int(11) NOT NULL,
  `STUDENT_ID` int(30) NOT NULL,
  `YEAR` int(5) NOT NULL,
  `SUBJECT` varchar(20) NOT NULL,
  `PERIODIC_GRADING` int(5) NOT NULL,
  `GRADES` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `history_log`
--

CREATE TABLE `history_log` (
  `log_id` int(10) NOT NULL,
  `transaction` varchar(200) NOT NULL,
  `user_id` int(5) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `history_log`
--

INSERT INTO `history_log` (`log_id`, `transaction`, `user_id`, `date_added`) VALUES
(1, 'logged out', 4, '2020-10-14 23:58:21'),
(2, 'logged in', 1, '2020-10-14 23:58:27'),
(3, 'added 2016-2017 in the school year list', 1, '2020-10-14 23:58:42'),
(4, 'added 2017-2018 in the school year list', 1, '2020-10-14 23:58:53'),
(5, 'added 2018-2019 in the school year list', 1, '2020-10-14 23:59:07'),
(6, 'added 2019-2020 in the school year list', 1, '2020-10-14 23:59:19'),
(7, 'updated 2016-2017 as the current school year ', 1, '2020-10-14 23:59:29'),
(8, 'added 7 in the grades list', 1, '2020-10-14 23:59:44'),
(9, 'added 8 in the grades list', 1, '2020-10-14 23:59:49'),
(10, 'added 9 in the grades list', 1, '2020-10-14 23:59:53'),
(11, 'added 10 in the grades list', 1, '2020-10-15 00:00:01'),
(12, 'added Englis in the subject list', 1, '2020-10-15 00:00:39'),
(13, 'added Math in the subject list', 1, '2020-10-15 00:00:50'),
(14, 'added John Smith as new student', 1, '2020-10-15 00:02:28'),
(15, 'added record of m m', 0, '2020-10-15 00:10:07'),
(16, 'updated 2017-2018 as the current school year ', 1, '2020-10-15 00:11:02'),
(17, 'added record of m m', 0, '2020-10-15 00:16:00'),
(18, 'printed John Smith permanent record', 1, '2020-10-15 00:16:49'),
(19, 'printed Promoted Student List of 2017-2018', 1, '2020-10-15 00:17:22'),
(20, 'logged out', 1, '2020-10-15 00:17:55'),
(21, 'logged in', 2, '2020-10-15 00:18:03'),
(22, 'logged in', 1, '2023-03-11 19:32:29'),
(23, 'logged out', 1, '2023-03-11 19:37:28'),
(24, 'logged in', 1, '2023-03-11 19:37:36'),
(25, 'logged out', 1, '2023-03-11 19:38:37'),
(26, 'logged in', 3, '2023-03-11 19:38:47'),
(27, 'logged out', 3, '2023-03-11 19:40:22'),
(28, 'logged in', 1, '2023-03-11 19:40:26'),
(29, 'updated 1 in the subject list', 1, '2023-03-11 19:42:36'),
(30, 'logged out', 1, '2023-03-11 19:48:55'),
(31, 'logged in', 1, '2023-03-11 19:49:01'),
(32, 'logged out', 1, '2023-03-11 20:06:55'),
(33, 'logged in', 1, '2023-03-11 20:06:59');

-- --------------------------------------------------------

--
-- Table structure for table `program`
--

CREATE TABLE `program` (
  `PROGRAM_ID` int(20) NOT NULL,
  `PROGRAM` varchar(10) NOT NULL,
  `DESCRIPTION` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `program`
--

INSERT INTO `program` (`PROGRAM_ID`, `PROGRAM`, `DESCRIPTION`) VALUES
(1, 'Regular', 'Regular');

-- --------------------------------------------------------

--
-- Table structure for table `promotion_candidates`
--

CREATE TABLE `promotion_candidates` (
  `id` int(10) NOT NULL,
  `STUDENT_ID` int(10) NOT NULL,
  `SY` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `promotion_candidates`
--

INSERT INTO `promotion_candidates` (`id`, `STUDENT_ID`, `SY`) VALUES
(1, 1, '2016-2017');

-- --------------------------------------------------------

--
-- Table structure for table `school_year`
--

CREATE TABLE `school_year` (
  `SY_ID` int(10) NOT NULL,
  `school_year` varchar(10) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `school_year`
--

INSERT INTO `school_year` (`SY_ID`, `school_year`, `status`) VALUES
(1, '2016-2017', 'No'),
(2, '2017-2018', 'Yes'),
(3, '2018-2019', 'No'),
(4, '2019-2020', 'No');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `STUDENT_ID` int(50) NOT NULL,
  `LRN_NO` int(12) NOT NULL,
  `LASTNAME` varchar(30) NOT NULL,
  `FIRSTNAME` varchar(30) NOT NULL,
  `MIDDLENAME` varchar(30) NOT NULL,
  `GENDER` varchar(10) NOT NULL,
  `DATE_OF_BIRTH` date NOT NULL,
  `STREET` varchar(30) NOT NULL,
  `PROVINCE` varchar(30) NOT NULL,
  `TOWN` varchar(30) NOT NULL,
  `BRGY` varchar(30) NOT NULL,
  `PARENT_GUARDIAN` varchar(50) NOT NULL,
  `P_ADDRESS` varchar(60) NOT NULL,
  `INT_COURSE_COMP` varchar(50) NOT NULL,
  `SCHOOL_YEAR` varchar(10) NOT NULL,
  `GEN_AVE` int(6) NOT NULL,
  `TOTAL_NO_OF_YEAR` int(5) NOT NULL,
  `PROGRAM` varchar(20) NOT NULL,
  `BIRTH_PLACE` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student_info`
--

CREATE TABLE `student_info` (
  `STUDENT_ID` int(50) NOT NULL,
  `LRN_NO` varchar(15) NOT NULL,
  `LASTNAME` varchar(30) NOT NULL,
  `FIRSTNAME` varchar(30) NOT NULL,
  `MIDDLENAME` varchar(30) NOT NULL,
  `GENDER` varchar(10) NOT NULL,
  `DATE_OF_BIRTH` date NOT NULL,
  `ADDRESS` varchar(20) NOT NULL,
  `BIRTH_PLACE` varchar(50) NOT NULL,
  `PARENT_GUARDIAN` varchar(50) NOT NULL,
  `P_ADDRESS` varchar(60) NOT NULL,
  `INT_COURSE_COMP` varchar(50) NOT NULL,
  `SCHOOL_YEAR` varchar(10) NOT NULL,
  `GEN_AVE` varchar(6) NOT NULL,
  `TOTAL_NO_OF_YEARS` varchar(5) NOT NULL,
  `PROGRAM` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `student_info`
--

INSERT INTO `student_info` (`STUDENT_ID`, `LRN_NO`, `LASTNAME`, `FIRSTNAME`, `MIDDLENAME`, `GENDER`, `DATE_OF_BIRTH`, `ADDRESS`, `BIRTH_PLACE`, `PARENT_GUARDIAN`, `P_ADDRESS`, `INT_COURSE_COMP`, `SCHOOL_YEAR`, `GEN_AVE`, `TOTAL_NO_OF_YEARS`, `PROGRAM`) VALUES
(1, '12345648', 'Smith', 'John', 'C', 'MALE', '1999-06-23', 'Sample', 'My Town', 'My guardian', 'Sample', 'Sample', '2015-2016', '95', '6', '1');

-- --------------------------------------------------------

--
-- Table structure for table `student_int_info`
--

CREATE TABLE `student_int_info` (
  `ID` int(30) NOT NULL,
  `STUDENT_ID` varchar(30) NOT NULL,
  `INT_COURSE_COMP` varchar(50) NOT NULL,
  `SCHOOL_YEAR_START` year(4) NOT NULL,
  `SCHOOL_YEAR_ENDS` year(4) NOT NULL,
  `GEN_AVE` int(5) NOT NULL,
  `TOTAL_NO_YEARS` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student_year_info`
--

CREATE TABLE `student_year_info` (
  `SYI_ID` int(11) NOT NULL,
  `STUDENT_ID` int(30) NOT NULL,
  `SCHOOL` varchar(100) NOT NULL,
  `YEAR` varchar(15) NOT NULL,
  `SECTION` varchar(10) NOT NULL,
  `TOTAL_NO_OF_YEAR` int(5) NOT NULL,
  `SCHOOL_YEAR` varchar(10) NOT NULL,
  `ADVANCE_UNIT` varchar(10) NOT NULL,
  `LACK_UNIT` varchar(10) NOT NULL,
  `ADVISER` varchar(40) NOT NULL,
  `GEN_AVE` varchar(10) NOT NULL,
  `RANK` varchar(10) NOT NULL,
  `TO_BE_CLASSIFIED` varchar(10) NOT NULL,
  `TDAYS_OF_CLASSES` int(5) NOT NULL,
  `TDAYS_PRESENT` int(5) NOT NULL,
  `ACTION` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `student_year_info`
--

INSERT INTO `student_year_info` (`SYI_ID`, `STUDENT_ID`, `SCHOOL`, `YEAR`, `SECTION`, `TOTAL_NO_OF_YEAR`, `SCHOOL_YEAR`, `ADVANCE_UNIT`, `LACK_UNIT`, `ADVISER`, `GEN_AVE`, `RANK`, `TO_BE_CLASSIFIED`, `TDAYS_OF_CLASSES`, `TDAYS_PRESENT`, `ACTION`) VALUES
(1, 1, 'School', '1', 'A', 7, '2016-2017', '', '', '', '90', '', 'Grade 8', 120, 120, 'Promoted'),
(2, 1, 'School', '2', 'a', 8, '2017-2018', '', '', '', '88.125', '', '', 0, 0, 'Promoted');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `SUBJECT_ID` int(11) NOT NULL,
  `SUBJECT` varchar(50) NOT NULL,
  `FOR` varchar(10) NOT NULL,
  `DESCRIPTION` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`SUBJECT_ID`, `SUBJECT`, `FOR`, `DESCRIPTION`) VALUES
(1, 'English', 'All', 'English'),
(2, 'Math', 'All', 'Math');

-- --------------------------------------------------------

--
-- Table structure for table `total_grades_subjects`
--

CREATE TABLE `total_grades_subjects` (
  `TGS_ID` int(30) NOT NULL,
  `STUDENT_ID` int(30) NOT NULL,
  `SYI_ID` int(30) NOT NULL,
  `SUBJECT` int(20) NOT NULL,
  `1ST_GRADING` varchar(10) NOT NULL,
  `2ND_GRADING` varchar(10) NOT NULL,
  `3RD_GRADING` varchar(10) NOT NULL,
  `4TH_GRADING` varchar(10) NOT NULL,
  `UNITS` varchar(10) NOT NULL,
  `FINAL_GRADES` varchar(10) NOT NULL,
  `PASSED_FAILED` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `total_grades_subjects`
--

INSERT INTO `total_grades_subjects` (`TGS_ID`, `STUDENT_ID`, `SYI_ID`, `SUBJECT`, `1ST_GRADING`, `2ND_GRADING`, `3RD_GRADING`, `4TH_GRADING`, `UNITS`, `FINAL_GRADES`, `PASSED_FAILED`) VALUES
(1, 1, 1, 1, '90', '90', '90', '90', '1', '90.00', 'PASSED'),
(2, 1, 1, 2, '90', '90', '90', '90', '1', '90.00', 'PASSED'),
(3, 1, 2, 1, '90', '90', '90', '90', '1', '90.00', 'PASSED'),
(4, 1, 2, 2, '85', '88', '87', '85', '1', '86.25', 'PASSED');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `USER_ID` int(11) NOT NULL,
  `LASTNAME` varchar(30) NOT NULL,
  `FIRSTNAME` varchar(30) NOT NULL,
  `USER` varchar(10) NOT NULL,
  `PASSWORD` text NOT NULL,
  `USER_TYPE` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`USER_ID`, `LASTNAME`, `FIRSTNAME`, `USER`, `PASSWORD`, `USER_TYPE`) VALUES
(1, 'admin', 'admin', 'admin', '0192023a7bbd73250516f069df18b500', 'ADMINISTRATOR'),
(2, 'staff', 'staff', 'staff', 'de9bf5643eabf80f4a56fda3bbb84483', 'STAFF'),
(3, 'Kent', 'Sumbilon', 'kentosama', '9b069c60576df4b1e8d1f86354927bb6', 'ADMINISTRATOR');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `advisers`
--
ALTER TABLE `advisers`
  ADD PRIMARY KEY (`adviser_id`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`ATT_ID`);

--
-- Indexes for table `data_b`
--
ALTER TABLE `data_b`
  ADD PRIMARY KEY (`db_id`);

--
-- Indexes for table `data_base`
--
ALTER TABLE `data_base`
  ADD PRIMARY KEY (`db_id`);

--
-- Indexes for table `grade`
--
ALTER TABLE `grade`
  ADD PRIMARY KEY (`grade_id`);

--
-- Indexes for table `grades_per_subject`
--
ALTER TABLE `grades_per_subject`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `history_log`
--
ALTER TABLE `history_log`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `program`
--
ALTER TABLE `program`
  ADD PRIMARY KEY (`PROGRAM_ID`);

--
-- Indexes for table `promotion_candidates`
--
ALTER TABLE `promotion_candidates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `school_year`
--
ALTER TABLE `school_year`
  ADD PRIMARY KEY (`SY_ID`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`STUDENT_ID`);

--
-- Indexes for table `student_info`
--
ALTER TABLE `student_info`
  ADD PRIMARY KEY (`STUDENT_ID`);

--
-- Indexes for table `student_int_info`
--
ALTER TABLE `student_int_info`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `student_year_info`
--
ALTER TABLE `student_year_info`
  ADD PRIMARY KEY (`SYI_ID`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`SUBJECT_ID`);

--
-- Indexes for table `total_grades_subjects`
--
ALTER TABLE `total_grades_subjects`
  ADD PRIMARY KEY (`TGS_ID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`USER_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `advisers`
--
ALTER TABLE `advisers`
  MODIFY `adviser_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `ATT_ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `data_b`
--
ALTER TABLE `data_b`
  MODIFY `db_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `data_base`
--
ALTER TABLE `data_base`
  MODIFY `db_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grade`
--
ALTER TABLE `grade`
  MODIFY `grade_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `grades_per_subject`
--
ALTER TABLE `grades_per_subject`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `history_log`
--
ALTER TABLE `history_log`
  MODIFY `log_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `program`
--
ALTER TABLE `program`
  MODIFY `PROGRAM_ID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `promotion_candidates`
--
ALTER TABLE `promotion_candidates`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `school_year`
--
ALTER TABLE `school_year`
  MODIFY `SY_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `STUDENT_ID` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_info`
--
ALTER TABLE `student_info`
  MODIFY `STUDENT_ID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `student_int_info`
--
ALTER TABLE `student_int_info`
  MODIFY `ID` int(30) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_year_info`
--
ALTER TABLE `student_year_info`
  MODIFY `SYI_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `SUBJECT_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `total_grades_subjects`
--
ALTER TABLE `total_grades_subjects`
  MODIFY `TGS_ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `USER_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Database: `otas_db`
--
CREATE DATABASE IF NOT EXISTS `otas_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `otas_db`;

-- --------------------------------------------------------

--
-- Table structure for table `archive_list`
--

CREATE TABLE `archive_list` (
  `id` int(30) NOT NULL,
  `archive_code` varchar(100) NOT NULL,
  `curriculum_id` int(30) NOT NULL,
  `year` year(4) NOT NULL,
  `title` text NOT NULL,
  `abstract` text NOT NULL,
  `members` text NOT NULL,
  `banner_path` text NOT NULL,
  `document_path` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `student_id` int(30) DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `curriculum_list`
--

CREATE TABLE `curriculum_list` (
  `id` int(30) NOT NULL,
  `department_id` int(30) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `department_list`
--

CREATE TABLE `department_list` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student_list`
--

CREATE TABLE `student_list` (
  `id` int(30) NOT NULL,
  `firstname` text NOT NULL,
  `middlename` text NOT NULL,
  `lastname` text NOT NULL,
  `department_id` int(30) NOT NULL,
  `curriculum_id` int(30) NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `gender` varchar(50) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `avatar` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_info`
--

CREATE TABLE `system_info` (
  `id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `system_info`
--

INSERT INTO `system_info` (`id`, `meta_field`, `meta_value`) VALUES
(1, 'name', 'SVCI - Research and Development Archiving System'),
(6, 'short_name', 'SVCI - RnDAS'),
(11, 'logo', 'uploads/logo-1679213419.png'),
(13, 'user_avatar', 'uploads/user_avatar.jpg'),
(14, 'cover', 'uploads/cover-1679213449.png'),
(15, 'content', 'Array'),
(16, 'email', 'svci_1917@svc.edu.ph'),
(17, 'contact', '(065) 212-6292'),
(18, 'from_time', '11:00'),
(19, 'to_time', '21:30'),
(20, 'address', 'Padre Ramon Street\r\nEstaka, Dipolog City\r\nZamboanga del Norte, Philippines 7100');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `middlename` text DEFAULT NULL,
  `lastname` varchar(250) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `status` int(1) NOT NULL DEFAULT 1 COMMENT '0=not verified, 1 = verified',
  `date_added` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `middlename`, `lastname`, `username`, `password`, `avatar`, `last_login`, `type`, `status`, `date_added`, `date_updated`) VALUES
(1, 'Adminstrator', NULL, 'Admin', 'admin', '0192023a7bbd73250516f069df18b500', 'uploads/student-1.png?v=1639202560', NULL, 1, 1, '2021-01-20 14:02:37', '2021-12-11 14:02:40'),
(2, 'Claire', NULL, 'Blake', 'cblake', '4744ddea876b11dcb1d169fadf494418', 'uploads/avatar-2.png?v=1639377482', NULL, 2, 1, '2021-12-13 14:38:02', '2021-12-13 14:38:02');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `archive_list`
--
ALTER TABLE `archive_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `curriculum_id` (`curriculum_id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `curriculum_list`
--
ALTER TABLE `curriculum_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `department_id` (`department_id`);

--
-- Indexes for table `department_list`
--
ALTER TABLE `department_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_list`
--
ALTER TABLE `student_list`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`) USING HASH,
  ADD KEY `department_id` (`department_id`),
  ADD KEY `curriculum_id` (`curriculum_id`);

--
-- Indexes for table `system_info`
--
ALTER TABLE `system_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `archive_list`
--
ALTER TABLE `archive_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `curriculum_list`
--
ALTER TABLE `curriculum_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `department_list`
--
ALTER TABLE `department_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `student_list`
--
ALTER TABLE `student_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `system_info`
--
ALTER TABLE `system_info`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `archive_list`
--
ALTER TABLE `archive_list`
  ADD CONSTRAINT `archive_list_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student_list` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `curriculum_list`
--
ALTER TABLE `curriculum_list`
  ADD CONSTRAINT `curriculum_list_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `department_list` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `student_list`
--
ALTER TABLE `student_list`
  ADD CONSTRAINT `student_list_ibfk_1` FOREIGN KEY (`curriculum_id`) REFERENCES `curriculum_list` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_list_ibfk_2` FOREIGN KEY (`department_id`) REFERENCES `department_list` (`id`) ON DELETE CASCADE;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2019-10-21 13:37:09', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `student_system`
--
CREATE DATABASE IF NOT EXISTS `student_system` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `student_system`;

-- --------------------------------------------------------

--
-- Table structure for table `student_list`
--

CREATE TABLE `student_list` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `birth_day` varchar(10) NOT NULL,
  `added_at` datetime NOT NULL DEFAULT current_timestamp(),
  `gender` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_list`
--

INSERT INTO `student_list` (`id`, `first_name`, `last_name`, `birth_day`, `added_at`, `gender`) VALUES
(1, 'Giorgia', 'MacKaig', '10/16/2008', '0000-00-00 00:00:00', 'Female'),
(2, 'Devon', 'Syde', '4/24/2000', '0000-00-00 00:00:00', 'Female'),
(3, 'Bald', 'Duffie', '01/11/2022', '0000-00-00 00:00:00', 'Male'),
(4, 'Mycah', 'Ingleston', '7/21/2000', '0000-00-00 00:00:00', 'Male'),
(5, 'Eba', 'Badby', '12/28/2022', '0000-00-00 00:00:00', 'Female'),
(6, 'Hillard', 'Spacie', '4/22/2021', '0000-00-00 00:00:00', 'Male'),
(7, 'Tad', 'Bugge', '4/22/2005', '0000-00-00 00:00:00', 'Male'),
(8, 'Ced', 'Phillp', '5/20/2016', '0000-00-00 00:00:00', 'Male'),
(9, 'Megan', 'Gors', '12/24/2022', '0000-00-00 00:00:00', 'Female'),
(10, 'Coraline', 'Woodrough', '1/22/2003', '0000-00-00 00:00:00', 'Female'),
(11, 'Gabriel', 'McWhorter', '03/08/2009', '0000-00-00 00:00:00', 'Female'),
(12, 'Connie', 'Chapleo', '04/08/2018', '0000-00-00 00:00:00', 'Female'),
(13, 'Latia', 'Wallentin', '12/29/2002', '0000-00-00 00:00:00', 'Female'),
(14, 'Torey', 'Eccleston', '6/14/2013', '0000-00-00 00:00:00', 'Male'),
(15, 'Loleta', 'Shorthouse', '06/04/2015', '0000-00-00 00:00:00', 'Female'),
(16, 'Genevieve', 'Desport', '09/01/2016', '0000-00-00 00:00:00', 'Female'),
(17, 'Dominga', 'Ilbert', '01/05/2023', '0000-00-00 00:00:00', 'Female'),
(18, 'Sadie', 'Cratchley', '09/01/2022', '0000-00-00 00:00:00', 'Female'),
(19, 'Eddi', 'Mobberley', '4/15/2013', '0000-00-00 00:00:00', 'Female'),
(20, 'Rabi', 'Dunseith', '12/31/2002', '0000-00-00 00:00:00', 'Male'),
(21, 'Tod', 'Melding', '03/05/2015', '0000-00-00 00:00:00', 'Male'),
(22, 'Hatti', 'Howler', '06/01/2011', '0000-00-00 00:00:00', 'Female'),
(23, 'Mateo', 'Henze', '11/28/2001', '0000-00-00 00:00:00', 'Male'),
(24, 'Aundrea', 'Oldrey', '1/24/2017', '0000-00-00 00:00:00', 'Female'),
(25, 'Corrina', 'Tink', '11/27/2006', '0000-00-00 00:00:00', 'Female'),
(26, 'Alf', 'Cicci', '02/11/2014', '0000-00-00 00:00:00', 'Male'),
(27, 'Alena', 'Cromwell', '6/28/2014', '0000-00-00 00:00:00', 'Female'),
(28, 'Thain', 'Chidgey', '1/24/2015', '0000-00-00 00:00:00', 'Male'),
(29, 'Heddi', 'Frere', '04/10/2013', '0000-00-00 00:00:00', 'Female'),
(30, 'Moreen', 'Rimington', '10/08/2000', '0000-00-00 00:00:00', 'Female'),
(31, 'Vernor', 'Emlin', '7/18/2004', '0000-00-00 00:00:00', 'Male'),
(32, 'Devi', 'Broune', '07/09/2015', '0000-00-00 00:00:00', 'Female'),
(33, 'Robin', 'Eustice', '5/21/2020', '0000-00-00 00:00:00', 'Female'),
(34, 'Maurise', 'O\'Fihily', '9/20/2012', '0000-00-00 00:00:00', 'Male'),
(35, 'Abramo', 'Jefferson', '05/07/2016', '0000-00-00 00:00:00', 'Male'),
(36, 'Winthrop', 'Rove', '10/14/2013', '0000-00-00 00:00:00', 'Male'),
(37, 'Mollie', 'Cheyne', '1/24/2008', '0000-00-00 00:00:00', 'Female'),
(38, 'Allistir', 'Sheeran', '03/03/2000', '0000-00-00 00:00:00', 'Male'),
(39, 'Susanetta', 'Hutfield', '03/05/2009', '0000-00-00 00:00:00', 'Female'),
(40, 'Sidney', 'Raff', '11/24/2022', '0000-00-00 00:00:00', 'Male'),
(41, 'Pen', 'Eddleston', '08/12/2013', '0000-00-00 00:00:00', 'Female'),
(42, 'Raynor', 'Lindsay', '10/13/2021', '0000-00-00 00:00:00', 'Male'),
(43, 'Gus', 'Ornells', '9/28/2013', '0000-00-00 00:00:00', 'Female'),
(44, 'Myca', 'Cutford', '04/04/2014', '0000-00-00 00:00:00', 'Male'),
(45, 'Ignatius', 'Wade', '9/16/2019', '0000-00-00 00:00:00', 'Male'),
(46, 'Rory', 'Livings', '3/17/2017', '0000-00-00 00:00:00', 'Male'),
(47, 'Saunders', 'Luthwood', '1/21/2004', '0000-00-00 00:00:00', 'Male'),
(48, 'Papagena', 'Isakov', '2/23/2004', '0000-00-00 00:00:00', 'Female'),
(49, 'Leeland', 'Ettridge', '07/12/2022', '0000-00-00 00:00:00', 'Male'),
(50, 'Levon', 'Barcke', '08/12/2016', '0000-00-00 00:00:00', 'Male'),
(51, 'Neysa', 'D\'Angeli', '10/22/2000', '0000-00-00 00:00:00', 'Female'),
(52, 'Lurette', 'Frankling', '07/06/2006', '0000-00-00 00:00:00', 'Female'),
(53, 'Dick', 'Childs', '10/11/2002', '0000-00-00 00:00:00', 'Male'),
(54, 'Oneida', 'Rowlin', '1/30/2021', '0000-00-00 00:00:00', 'Female'),
(55, 'Charlton', 'Bjorkan', '01/12/2016', '0000-00-00 00:00:00', 'Male'),
(56, 'Aland', 'Kosiada', '08/10/2016', '0000-00-00 00:00:00', 'Male'),
(57, 'Isidor', 'Gooderick', '7/22/2000', '0000-00-00 00:00:00', 'Male'),
(58, 'Lorianna', 'Hernik', '2/27/2022', '0000-00-00 00:00:00', 'Female'),
(59, 'Gordy', 'Snowdon', '2/22/2020', '0000-00-00 00:00:00', 'Male'),
(60, 'Thorndike', 'Foxworthy', '10/17/2018', '0000-00-00 00:00:00', 'Male'),
(61, 'Lek', 'Sliman', '11/12/2003', '0000-00-00 00:00:00', 'Male'),
(62, 'Grace', 'Crumpton', '1/14/2018', '0000-00-00 00:00:00', 'Male'),
(63, 'Isa', 'Longley', '7/29/2014', '0000-00-00 00:00:00', 'Female'),
(64, 'Letty', 'Illsley', '04/01/2009', '0000-00-00 00:00:00', 'Female'),
(65, 'Eduardo', 'McDougle', '8/24/2015', '0000-00-00 00:00:00', 'Male'),
(66, 'Netta', 'Mose', '6/28/2022', '0000-00-00 00:00:00', 'Female'),
(67, 'Silas', 'Beiderbeck', '2/18/2018', '0000-00-00 00:00:00', 'Male'),
(68, 'Curt', 'Delue', '10/24/2009', '0000-00-00 00:00:00', 'Male'),
(69, 'Elka', 'Ducarne', '7/22/2019', '0000-00-00 00:00:00', 'Female'),
(70, 'Dorian', 'Mallon', '1/30/2004', '0000-00-00 00:00:00', 'Female'),
(71, 'Carolyne', 'Ough', '11/16/2010', '0000-00-00 00:00:00', 'Female'),
(72, 'Ian', 'Seleway', '7/14/2001', '0000-00-00 00:00:00', 'Male'),
(73, 'Bibbye', 'Cooksley', '11/25/2013', '0000-00-00 00:00:00', 'Female'),
(74, 'Arnold', 'Eggins', '11/21/2003', '0000-00-00 00:00:00', 'Male'),
(75, 'Eugenio', 'Levings', '5/20/2014', '0000-00-00 00:00:00', 'Male'),
(76, 'Johnathon', 'McPhillimey', '1/26/2003', '0000-00-00 00:00:00', 'Male'),
(77, 'Ara', 'Bassindale', '8/27/2004', '0000-00-00 00:00:00', 'Male'),
(78, 'Mic', 'Flaxon', '11/14/2007', '0000-00-00 00:00:00', 'Male'),
(79, 'Arnie', 'Duthy', '11/22/2010', '0000-00-00 00:00:00', 'Male'),
(80, 'Emmott', 'Rearden', '9/14/2020', '0000-00-00 00:00:00', 'Male'),
(81, 'Hedvig', 'Allnutt', '12/30/2020', '0000-00-00 00:00:00', 'Female'),
(82, 'Selby', 'Gilstoun', '10/08/2011', '0000-00-00 00:00:00', 'Male'),
(83, 'Elli', 'Fortie', '10/07/2017', '0000-00-00 00:00:00', 'Female'),
(84, 'Harry', 'Mourant', '7/21/2022', '0000-00-00 00:00:00', 'Male'),
(85, 'Alaine', 'McIlheran', '03/11/2005', '0000-00-00 00:00:00', 'Female'),
(86, 'Jessamine', 'Petr', '03/02/2002', '0000-00-00 00:00:00', 'Female'),
(87, 'Charity', 'Borrows', '9/21/2013', '0000-00-00 00:00:00', 'Female'),
(88, 'Elli', 'Milverton', '12/16/2008', '0000-00-00 00:00:00', 'Female'),
(89, 'Dix', 'Blondel', '9/16/2010', '0000-00-00 00:00:00', 'Female'),
(90, 'Monroe', 'Gethen', '08/10/2020', '0000-00-00 00:00:00', 'Male'),
(91, 'Adams', 'Poacher', '04/02/2017', '0000-00-00 00:00:00', 'Male'),
(92, 'Carmelina', 'Kennedy', '5/17/2014', '0000-00-00 00:00:00', 'Female'),
(93, 'Annora', 'Cubin', '6/25/2005', '0000-00-00 00:00:00', 'Female'),
(94, 'Gwendolyn', 'Bettles', '08/09/2007', '0000-00-00 00:00:00', 'Female'),
(95, 'Jemmie', 'Sibley', '10/08/2006', '0000-00-00 00:00:00', 'Female'),
(96, 'Matilde', 'Benesevich', '07/05/2000', '0000-00-00 00:00:00', 'Female'),
(97, 'Sharona', 'Lauder', '12/24/2013', '0000-00-00 00:00:00', 'Female'),
(98, 'Bennie', 'Beaver', '09/05/2013', '0000-00-00 00:00:00', 'Male'),
(99, 'Skyler', 'Lamas', '4/25/2021', '0000-00-00 00:00:00', 'Male'),
(100, 'Annie', 'McCrillis', '11/13/2009', '0000-00-00 00:00:00', 'Female'),
(101, 'Molli', 'Sillick', '10/12/2020', '0000-00-00 00:00:00', 'Female'),
(102, 'Friederike', 'Hadland', '11/23/2018', '0000-00-00 00:00:00', 'Female'),
(103, 'Gaye', 'McConville', '03/12/2002', '0000-00-00 00:00:00', 'Female'),
(104, 'Peggi', 'Petit', '6/24/2004', '0000-00-00 00:00:00', 'Female'),
(105, 'Free', 'Darridon', '9/25/2019', '0000-00-00 00:00:00', 'Male'),
(106, 'Dale', 'De Bruijn', '10/31/2003', '0000-00-00 00:00:00', 'Male'),
(107, 'Shellie', 'Clemence', '3/27/2015', '0000-00-00 00:00:00', 'Female'),
(108, 'Vail', 'Kynston', '01/03/2008', '0000-00-00 00:00:00', 'Male'),
(109, 'Ingeberg', 'Hake', '4/28/2014', '0000-00-00 00:00:00', 'Female'),
(110, 'Montague', 'MacTrustram', '2/14/2009', '0000-00-00 00:00:00', 'Male'),
(111, 'Katlin', 'Orum', '9/20/2013', '0000-00-00 00:00:00', 'Female'),
(112, 'Ruby', 'Noon', '04/03/2000', '0000-00-00 00:00:00', 'Female'),
(113, 'Alvin', 'Curgenven', '8/29/2011', '0000-00-00 00:00:00', 'Male'),
(114, 'Cary', 'Rimer', '05/05/2007', '0000-00-00 00:00:00', 'Female'),
(115, 'Saunders', 'Ratt', '12/01/2000', '0000-00-00 00:00:00', 'Male'),
(116, 'Cynthy', 'Brabban', '11/16/2002', '0000-00-00 00:00:00', 'Female'),
(117, 'Morgan', 'Welburn', '09/10/2016', '0000-00-00 00:00:00', 'Female'),
(118, 'Jacintha', 'Sarney', '05/05/2004', '0000-00-00 00:00:00', 'Female'),
(119, 'Danit', 'Mattingson', '09/07/2002', '0000-00-00 00:00:00', 'Female'),
(120, 'Javier', 'Buyers', '2/20/2002', '0000-00-00 00:00:00', 'Male'),
(121, 'Rubia', 'Quye', '11/13/2013', '0000-00-00 00:00:00', 'Female'),
(122, 'Heywood', 'Cumbridge', '9/17/2010', '0000-00-00 00:00:00', 'Male'),
(123, 'Reba', 'Macias', '7/30/2000', '0000-00-00 00:00:00', 'Female'),
(124, 'Malissia', 'Savile', '1/30/2023', '0000-00-00 00:00:00', 'Female'),
(125, 'Lynnet', 'Skellion', '3/20/2015', '0000-00-00 00:00:00', 'Female'),
(126, 'Bobby', 'Barracks', '04/05/2011', '0000-00-00 00:00:00', 'Male'),
(127, 'Ada', 'Orrey', '1/24/2013', '0000-00-00 00:00:00', 'Female'),
(128, 'Garry', 'Atwell', '04/02/2006', '0000-00-00 00:00:00', 'Male'),
(129, 'Grange', 'Mandifield', '10/24/2002', '0000-00-00 00:00:00', 'Male'),
(130, 'Jarrod', 'Jandac', '2/27/2020', '0000-00-00 00:00:00', 'Male'),
(131, 'Berthe', 'Pimm', '8/24/2022', '0000-00-00 00:00:00', 'Female'),
(132, 'Domeniga', 'Bunyard', '11/19/2019', '0000-00-00 00:00:00', 'Female'),
(133, 'Deni', 'Durbann', '10/13/2020', '0000-00-00 00:00:00', 'Female'),
(134, 'Eyde', 'Fullager', '5/14/2022', '0000-00-00 00:00:00', 'Female'),
(135, 'Jennilee', 'Patterfield', '8/13/2009', '0000-00-00 00:00:00', 'Female'),
(136, 'Kaylil', 'Hinzer', '09/12/2009', '0000-00-00 00:00:00', 'Female'),
(137, 'Caitlin', 'Le Sarr', '3/18/2021', '0000-00-00 00:00:00', 'Female'),
(138, 'Ajay', 'Grainger', '10/15/2007', '0000-00-00 00:00:00', 'Female'),
(139, 'Cos', 'Durham', '02/08/2009', '0000-00-00 00:00:00', 'Male'),
(140, 'Carlie', 'Pybus', '09/03/2002', '0000-00-00 00:00:00', 'Female'),
(141, 'Kizzie', 'Macconachy', '8/22/2001', '0000-00-00 00:00:00', 'Female'),
(142, 'Rina', 'Iaduccelli', '10/18/2004', '0000-00-00 00:00:00', 'Female'),
(143, 'Packston', 'Insoll', '3/31/2010', '0000-00-00 00:00:00', 'Male'),
(144, 'Jeramie', 'Catlow', '02/07/2016', '0000-00-00 00:00:00', 'Male'),
(145, 'Lyle', 'Thickins', '7/15/2016', '0000-00-00 00:00:00', 'Male'),
(146, 'Nobie', 'MacHoste', '05/06/2012', '0000-00-00 00:00:00', 'Male'),
(147, 'Jeffrey', 'Dillintone', '1/18/2003', '0000-00-00 00:00:00', 'Male'),
(148, 'Nedi', 'Bachanski', '06/07/2016', '0000-00-00 00:00:00', 'Female'),
(149, 'Gusti', 'Caizley', '08/06/2011', '0000-00-00 00:00:00', 'Female'),
(150, 'Gracie', 'Larciere', '8/31/2010', '0000-00-00 00:00:00', 'Female'),
(151, 'Sorcha', 'Brou', '1/16/2000', '0000-00-00 00:00:00', 'Female'),
(152, 'Coop', 'Shmyr', '03/05/2006', '0000-00-00 00:00:00', 'Male'),
(153, 'Isabelita', 'D\'orsay', '4/30/2006', '0000-00-00 00:00:00', 'Female'),
(154, 'Laurence', 'Tidgewell', '03/03/2008', '0000-00-00 00:00:00', 'Male'),
(155, 'Lanny', 'Hassekl', '5/19/2009', '0000-00-00 00:00:00', 'Male'),
(156, 'Merl', 'Wayon', '6/30/2002', '0000-00-00 00:00:00', 'Female'),
(157, 'Ilario', 'Chetwin', '11/06/2008', '0000-00-00 00:00:00', 'Male'),
(158, 'Mychal', 'McKissack', '08/03/2020', '0000-00-00 00:00:00', 'Male'),
(159, 'Francesco', 'Lindwasser', '05/12/2002', '0000-00-00 00:00:00', 'Male'),
(160, 'Ring', 'O\'Duggan', '3/13/2006', '0000-00-00 00:00:00', 'Male'),
(161, 'Linn', 'Hinchshaw', '12/27/2020', '0000-00-00 00:00:00', 'Male'),
(162, 'Brenda', 'Foggo', '8/13/2003', '0000-00-00 00:00:00', 'Female'),
(163, 'Brear', 'Hamor', '6/20/2020', '0000-00-00 00:00:00', 'Female'),
(164, 'Ray', 'Pothbury', '10/06/2020', '0000-00-00 00:00:00', 'Male'),
(165, 'Marjory', 'Burgum', '08/01/2021', '0000-00-00 00:00:00', 'Female'),
(166, 'Hamnet', 'Jacobsson', '11/06/2011', '0000-00-00 00:00:00', 'Male'),
(167, 'Bart', 'Luney', '10/31/2019', '0000-00-00 00:00:00', 'Male'),
(168, 'Madalena', 'Boxall', '12/01/2019', '0000-00-00 00:00:00', 'Female'),
(169, 'Thebault', 'Sandey', '5/16/2009', '0000-00-00 00:00:00', 'Male'),
(170, 'Margarette', 'Rieger', '5/18/2002', '0000-00-00 00:00:00', 'Female'),
(171, 'Bendicty', 'Musla', '4/16/2020', '0000-00-00 00:00:00', 'Male'),
(172, 'Artie', 'Cregeen', '11/14/2003', '0000-00-00 00:00:00', 'Male'),
(173, 'Catriona', 'Farden', '6/16/2014', '0000-00-00 00:00:00', 'Female'),
(174, 'Saudra', 'Patesel', '11/14/2018', '0000-00-00 00:00:00', 'Female'),
(175, 'Giusto', 'Scotfurth', '11/29/2016', '0000-00-00 00:00:00', 'Male'),
(176, 'Minta', 'Foggarty', '02/12/2006', '0000-00-00 00:00:00', 'Female'),
(177, 'Aloise', 'Casaroli', '7/18/2001', '0000-00-00 00:00:00', 'Female'),
(178, 'Charlena', 'Hardwick', '9/15/2010', '0000-00-00 00:00:00', 'Female'),
(179, 'Maggy', 'Navaro', '7/17/2010', '0000-00-00 00:00:00', 'Female'),
(180, 'Kyla', 'Dicty', '11/03/2003', '0000-00-00 00:00:00', 'Female'),
(181, 'Minne', 'Skeels', '06/04/2011', '0000-00-00 00:00:00', 'Female'),
(182, 'Twila', 'Shulem', '07/10/2021', '0000-00-00 00:00:00', 'Female'),
(183, 'Keith', 'Zielinski', '05/05/2021', '0000-00-00 00:00:00', 'Male'),
(184, 'Ewen', 'Hatherleigh', '2/26/2011', '0000-00-00 00:00:00', 'Male'),
(185, 'Alvin', 'Poncet', '09/10/2002', '0000-00-00 00:00:00', 'Male'),
(186, 'Eliot', 'Garley', '8/20/2013', '0000-00-00 00:00:00', 'Male'),
(187, 'Merill', 'Chamberlaine', '09/10/2010', '0000-00-00 00:00:00', 'Male'),
(188, 'Lissi', 'Bowstead', '10/12/2008', '0000-00-00 00:00:00', 'Female'),
(189, 'Nadya', 'O\'Dunneen', '7/31/2005', '0000-00-00 00:00:00', 'Female'),
(190, 'Steffie', 'Mardlin', '3/31/2017', '0000-00-00 00:00:00', 'Female'),
(191, 'Raine', 'Walklot', '4/14/2002', '0000-00-00 00:00:00', 'Female'),
(192, 'Thom', 'Rockcliffe', '10/25/2014', '0000-00-00 00:00:00', 'Male'),
(193, 'Tori', 'Tilt', '12/22/2011', '0000-00-00 00:00:00', 'Female'),
(194, 'Jorrie', 'Whye', '11/02/2002', '0000-00-00 00:00:00', 'Female'),
(195, 'Janel', 'Eversfield', '3/27/2016', '0000-00-00 00:00:00', 'Female'),
(196, 'Hillyer', 'Christauffour', '12/29/2003', '0000-00-00 00:00:00', 'Male'),
(197, 'Tracy', 'Painswick', '6/24/2004', '0000-00-00 00:00:00', 'Female'),
(198, 'Christabella', 'Guyver', '1/22/2021', '0000-00-00 00:00:00', 'Female'),
(199, 'Marybelle', 'Sorley', '1/20/2011', '0000-00-00 00:00:00', 'Female'),
(200, 'Sheela', 'Nevin', '5/21/2010', '0000-00-00 00:00:00', 'Female'),
(201, 'Teador', 'Krzyzaniak', '01/11/2006', '0000-00-00 00:00:00', 'Male'),
(202, 'Valeda', 'Selkirk', '10/14/2012', '0000-00-00 00:00:00', 'Female'),
(203, 'Elsi', 'Blackham', '07/12/2017', '0000-00-00 00:00:00', 'Female'),
(204, 'Gibb', 'Garaway', '12/26/2008', '0000-00-00 00:00:00', 'Male'),
(205, 'Filide', 'Hundall', '05/01/2000', '0000-00-00 00:00:00', 'Female'),
(206, 'Brigitte', 'Bows', '07/02/2016', '0000-00-00 00:00:00', 'Female'),
(207, 'Stillman', 'Bwye', '10/13/2020', '0000-00-00 00:00:00', 'Male'),
(208, 'Winifield', 'Adnet', '11/09/2018', '0000-00-00 00:00:00', 'Male'),
(209, 'Alli', 'Mc Andrew', '07/09/2017', '0000-00-00 00:00:00', 'Female'),
(210, 'Jacklin', 'Steel', '7/20/2017', '0000-00-00 00:00:00', 'Female'),
(211, 'Debbie', 'Wathen', '1/26/2002', '0000-00-00 00:00:00', 'Female'),
(212, 'Perice', 'Hardie', '8/30/2009', '0000-00-00 00:00:00', 'Male'),
(213, 'Mathilde', 'Hawarden', '07/10/2018', '0000-00-00 00:00:00', 'Female'),
(214, 'Yurik', 'Broodes', '9/13/2006', '0000-00-00 00:00:00', 'Male'),
(215, 'Mill', 'Arrundale', '11/16/2015', '0000-00-00 00:00:00', 'Male'),
(216, 'Caren', 'Dybell', '7/18/2009', '0000-00-00 00:00:00', 'Female'),
(217, 'Ellie', 'Hinemoor', '12/09/2017', '0000-00-00 00:00:00', 'Female'),
(218, 'Mal', 'Musprat', '10/30/2003', '0000-00-00 00:00:00', 'Male'),
(219, 'Marline', 'Lean', '1/28/2004', '0000-00-00 00:00:00', 'Female'),
(220, 'Nikola', 'Brownsill', '1/21/2012', '0000-00-00 00:00:00', 'Male'),
(221, 'Addia', 'Bussy', '3/22/2019', '0000-00-00 00:00:00', 'Female'),
(222, 'Franny', 'Petracchi', '7/29/2013', '0000-00-00 00:00:00', 'Female'),
(223, 'Erin', 'Danser', '8/14/2001', '0000-00-00 00:00:00', 'Female'),
(224, 'Norean', 'Sheriff', '11/28/2000', '0000-00-00 00:00:00', 'Female'),
(225, 'Trevor', 'Seifenmacher', '9/29/2015', '0000-00-00 00:00:00', 'Male'),
(226, 'Deana', 'Henri', '05/11/2006', '0000-00-00 00:00:00', 'Female'),
(227, 'Derrick', 'Beccera', '10/09/2019', '0000-00-00 00:00:00', 'Male'),
(228, 'Wiley', 'Basson', '10/18/2016', '0000-00-00 00:00:00', 'Male'),
(229, 'Haley', 'Agott', '2/26/2001', '0000-00-00 00:00:00', 'Male'),
(230, 'Luisa', 'Pattingson', '06/10/2008', '0000-00-00 00:00:00', 'Female'),
(231, 'Leola', 'Lowing', '04/05/2016', '0000-00-00 00:00:00', 'Female'),
(232, 'Caldwell', 'Cottrill', '03/03/2019', '0000-00-00 00:00:00', 'Male'),
(233, 'Thaddus', 'Issitt', '8/22/2014', '0000-00-00 00:00:00', 'Male'),
(234, 'Bryna', 'Josskowitz', '7/19/2014', '0000-00-00 00:00:00', 'Female'),
(235, 'Irene', 'Extill', '05/07/2014', '0000-00-00 00:00:00', 'Female'),
(236, 'Erminie', 'McGillicuddy', '01/09/2000', '0000-00-00 00:00:00', 'Female'),
(237, 'Wendi', 'Cousens', '12/09/2009', '0000-00-00 00:00:00', 'Female'),
(238, 'Madelene', 'Sheraton', '10/28/2008', '0000-00-00 00:00:00', 'Female'),
(239, 'Silvester', 'Domone', '11/13/2001', '0000-00-00 00:00:00', 'Male'),
(240, 'Stanislaw', 'Kobu', '5/16/2020', '0000-00-00 00:00:00', 'Male'),
(241, 'Emlyn', 'Riveles', '7/24/2005', '0000-00-00 00:00:00', 'Male'),
(242, 'Penny', 'Bevan', '6/26/2015', '0000-00-00 00:00:00', 'Male'),
(243, 'Maurise', 'Dufton', '08/07/2022', '0000-00-00 00:00:00', 'Female'),
(244, 'Brady', 'Bage', '04/08/2006', '0000-00-00 00:00:00', 'Male'),
(245, 'Coraline', 'Epperson', '3/14/2023', '0000-00-00 00:00:00', 'Female'),
(246, 'Raynard', 'Seydlitz', '12/05/2004', '0000-00-00 00:00:00', 'Male'),
(247, 'Kizzie', 'Corking', '2/18/2006', '0000-00-00 00:00:00', 'Female'),
(248, 'Vladimir', 'Belfield', '5/28/2004', '0000-00-00 00:00:00', 'Male'),
(249, 'Kristoffer', 'Buckeridge', '11/11/2016', '0000-00-00 00:00:00', 'Male'),
(250, 'Benyamin', 'McCauley', '3/30/2020', '0000-00-00 00:00:00', 'Male'),
(251, 'Roseanne', 'Londsdale', '3/28/2011', '0000-00-00 00:00:00', 'Female'),
(252, 'Brenden', 'Chaperlin', '12/31/2008', '0000-00-00 00:00:00', 'Male'),
(253, 'Blair', 'Gun', '2/27/2020', '0000-00-00 00:00:00', 'Male'),
(254, 'Haleigh', 'Gorham', '02/03/2017', '0000-00-00 00:00:00', 'Female'),
(255, 'Sutton', 'Ferronet', '02/01/2016', '0000-00-00 00:00:00', 'Male'),
(256, 'Quintilla', 'Neylan', '1/28/2017', '0000-00-00 00:00:00', 'Female'),
(257, 'Jabez', 'Goulden', '5/21/2008', '0000-00-00 00:00:00', 'Male'),
(258, 'Lief', 'Sharpling', '08/02/2001', '0000-00-00 00:00:00', 'Male'),
(259, 'Denys', 'Reeman', '04/10/2019', '0000-00-00 00:00:00', 'Male'),
(260, 'Oralle', 'Hebbron', '4/18/2001', '0000-00-00 00:00:00', 'Female'),
(261, 'Oralla', 'Dussy', '7/18/2003', '0000-00-00 00:00:00', 'Female'),
(262, 'Olin', 'Chesnay', '2/27/2004', '0000-00-00 00:00:00', 'Male'),
(263, 'Kamilah', 'Feben', '06/08/2015', '0000-00-00 00:00:00', 'Female'),
(264, 'Scot', 'Chalkly', '3/14/2002', '0000-00-00 00:00:00', 'Male'),
(265, 'Cammy', 'Wornum', '05/04/2016', '0000-00-00 00:00:00', 'Male'),
(266, 'Rachael', 'Vaughan', '2/20/2008', '0000-00-00 00:00:00', 'Female'),
(267, 'Finlay', 'Tyrrell', '04/06/2010', '0000-00-00 00:00:00', 'Male'),
(268, 'Lorilee', 'Blakesley', '04/10/2014', '0000-00-00 00:00:00', 'Female'),
(269, 'Dru', 'Halahan', '06/04/2005', '0000-00-00 00:00:00', 'Male'),
(270, 'Cinderella', 'Kershaw', '11/18/2002', '0000-00-00 00:00:00', 'Female'),
(271, 'Collette', 'Buchan', '4/29/2007', '0000-00-00 00:00:00', 'Female'),
(272, 'Diane', 'Greene', '7/15/2010', '0000-00-00 00:00:00', 'Female'),
(273, 'Jacquelyn', 'Denyagin', '09/09/2017', '0000-00-00 00:00:00', 'Female'),
(274, 'Eduard', 'Carvill', '4/26/2015', '0000-00-00 00:00:00', 'Male'),
(275, 'Riccardo', 'Desouza', '04/04/2004', '0000-00-00 00:00:00', 'Male'),
(276, 'Leupold', 'Dumphrey', '02/12/2012', '0000-00-00 00:00:00', 'Male'),
(277, 'Arel', 'Cordero', '08/11/2021', '0000-00-00 00:00:00', 'Male'),
(278, 'Horatia', 'Hucker', '9/19/2008', '0000-00-00 00:00:00', 'Female'),
(279, 'Carleton', 'Edgerly', '07/08/2011', '0000-00-00 00:00:00', 'Male'),
(280, 'Cheston', 'Synder', '12/11/2022', '0000-00-00 00:00:00', 'Male'),
(281, 'Brianne', 'Yallowley', '9/26/2013', '0000-00-00 00:00:00', 'Female'),
(282, 'Brynne', 'Johansson', '06/02/2008', '0000-00-00 00:00:00', 'Female'),
(283, 'Kevan', 'Mancell', '12/20/2012', '0000-00-00 00:00:00', 'Male'),
(284, 'Baillie', 'Trollope', '08/06/2016', '0000-00-00 00:00:00', 'Male'),
(285, 'Sigrid', 'Broy', '7/25/2005', '0000-00-00 00:00:00', 'Female'),
(286, 'Nicolas', 'Glencrash', '04/02/2009', '0000-00-00 00:00:00', 'Male'),
(287, 'Fonsie', 'Tessington', '03/08/2016', '0000-00-00 00:00:00', 'Male'),
(288, 'Durante', 'Grishakov', '12/07/2018', '0000-00-00 00:00:00', 'Male'),
(289, 'Fawnia', 'Longega', '11/17/2010', '0000-00-00 00:00:00', 'Female'),
(290, 'Amelie', 'Borthwick', '1/28/2008', '0000-00-00 00:00:00', 'Female'),
(291, 'Demetri', 'Oldknowe', '7/21/2016', '0000-00-00 00:00:00', 'Male'),
(292, 'Fernando', 'Venn', '11/24/2008', '0000-00-00 00:00:00', 'Male'),
(293, 'Ric', 'Bowmer', '08/02/2014', '0000-00-00 00:00:00', 'Male'),
(294, 'Tommy', 'Mc Curlye', '06/11/2011', '0000-00-00 00:00:00', 'Male'),
(295, 'Neils', 'McGeneay', '1/16/2005', '0000-00-00 00:00:00', 'Male'),
(296, 'Dana', 'OIlier', '3/25/2022', '0000-00-00 00:00:00', 'Male'),
(297, 'Morty', 'Ellsworthe', '6/28/2003', '0000-00-00 00:00:00', 'Male'),
(298, 'Cassandry', 'Gonsalvez', '02/04/2015', '0000-00-00 00:00:00', 'Female'),
(299, 'Mel', 'Jordin', '12/29/2005', '0000-00-00 00:00:00', 'Female'),
(300, 'Elisabeth', 'Houlden', '4/30/2015', '0000-00-00 00:00:00', 'Female'),
(301, 'Raquela', 'Oboy', '3/19/2002', '0000-00-00 00:00:00', 'Female'),
(302, 'Kamilah', 'Scase', '4/18/2009', '0000-00-00 00:00:00', 'Female'),
(303, 'Morgan', 'Pearch', '9/23/2010', '0000-00-00 00:00:00', 'Male'),
(304, 'Norrie', 'Irons', '12/31/2022', '0000-00-00 00:00:00', 'Female'),
(305, 'Stanfield', 'Wesgate', '2/15/2023', '0000-00-00 00:00:00', 'Male'),
(306, 'Giralda', 'Henri', '01/03/2022', '0000-00-00 00:00:00', 'Female'),
(307, 'Lorin', 'Koeppe', '9/30/2012', '0000-00-00 00:00:00', 'Male'),
(308, 'Alethea', 'Iverson', '4/21/2005', '0000-00-00 00:00:00', 'Female'),
(309, 'Jakob', 'Reiling', '8/21/2019', '0000-00-00 00:00:00', 'Male'),
(310, 'Tersina', 'Orleton', '8/26/2014', '0000-00-00 00:00:00', 'Female'),
(311, 'Blisse', 'Beaney', '08/03/2003', '0000-00-00 00:00:00', 'Female'),
(312, 'Tanhya', 'Hamfleet', '06/01/2009', '0000-00-00 00:00:00', 'Female'),
(313, 'Ardyce', 'Westnedge', '01/07/2016', '0000-00-00 00:00:00', 'Female'),
(314, 'Marillin', 'Fadell', '11/10/2019', '0000-00-00 00:00:00', 'Female'),
(315, 'Antoni', 'Sawley', '11/13/2022', '0000-00-00 00:00:00', 'Male'),
(316, 'Jone', 'Pioch', '7/16/2021', '0000-00-00 00:00:00', 'Male'),
(317, 'Eadith', 'MacColl', '01/06/2015', '0000-00-00 00:00:00', 'Female'),
(318, 'Ralina', 'Cherrington', '7/30/2020', '0000-00-00 00:00:00', 'Female'),
(319, 'Romola', 'MacKettrick', '5/31/2017', '0000-00-00 00:00:00', 'Female'),
(320, 'Edik', 'Dogg', '11/12/2006', '0000-00-00 00:00:00', 'Male'),
(321, 'Marti', 'Barsham', '12/29/2019', '0000-00-00 00:00:00', 'Female'),
(322, 'Forster', 'Rosander', '02/05/2014', '0000-00-00 00:00:00', 'Male'),
(323, 'Daniel', 'Gildroy', '03/12/2008', '0000-00-00 00:00:00', 'Male'),
(324, 'Far', 'Schoales', '04/02/2009', '0000-00-00 00:00:00', 'Male'),
(325, 'Willamina', 'Fallis', '9/28/2015', '0000-00-00 00:00:00', 'Female'),
(326, 'Huntington', 'Larroway', '02/03/2014', '0000-00-00 00:00:00', 'Male'),
(327, 'Clevie', 'Havercroft', '5/19/2019', '0000-00-00 00:00:00', 'Male'),
(328, 'Terrance', 'Doogan', '06/05/2012', '0000-00-00 00:00:00', 'Male'),
(329, 'Wendell', 'Batsford', '5/18/2001', '0000-00-00 00:00:00', 'Male'),
(330, 'Rudy', 'Wytchard', '12/29/2015', '0000-00-00 00:00:00', 'Male'),
(331, 'Felecia', 'MacDermott', '1/23/2001', '0000-00-00 00:00:00', 'Female'),
(332, 'Hubert', 'Currer', '10/08/2007', '0000-00-00 00:00:00', 'Male'),
(333, 'Amargo', 'Gerauld', '08/02/2006', '0000-00-00 00:00:00', 'Female'),
(334, 'Emmy', 'MacElroy', '06/08/2019', '0000-00-00 00:00:00', 'Male'),
(335, 'Marilee', 'Biggar', '4/22/2001', '0000-00-00 00:00:00', 'Female'),
(336, 'Huey', 'Di Domenico', '7/15/2005', '0000-00-00 00:00:00', 'Male'),
(337, 'Conrade', 'Pennycuick', '9/17/2007', '0000-00-00 00:00:00', 'Male'),
(338, 'Marlene', 'Oguz', '3/27/2007', '0000-00-00 00:00:00', 'Female'),
(339, 'Paxon', 'Lamming', '10/15/2001', '0000-00-00 00:00:00', 'Male'),
(340, 'Even', 'Amar', '5/26/2017', '0000-00-00 00:00:00', 'Male'),
(341, 'Onfre', 'Mort', '7/26/2010', '0000-00-00 00:00:00', 'Male'),
(342, 'Aurora', 'Menzies', '6/22/2008', '0000-00-00 00:00:00', 'Female'),
(343, 'Leela', 'Nolleth', '3/18/2012', '0000-00-00 00:00:00', 'Female'),
(344, 'Caryl', 'Botcherby', '10/30/2017', '0000-00-00 00:00:00', 'Female'),
(345, 'Chloette', 'Squirrel', '4/18/2016', '0000-00-00 00:00:00', 'Female'),
(346, 'Raye', 'Harrigan', '10/30/2002', '0000-00-00 00:00:00', 'Female'),
(347, 'Luis', 'Petronis', '11/04/2017', '0000-00-00 00:00:00', 'Male'),
(348, 'Lew', 'Natte', '2/19/2012', '0000-00-00 00:00:00', 'Male'),
(349, 'Philippa', 'Pankhurst.', '4/15/2013', '0000-00-00 00:00:00', 'Female'),
(350, 'Sharlene', 'Caverhill', '1/18/2018', '0000-00-00 00:00:00', 'Female'),
(351, 'Sherry', 'Lidgey', '08/03/2017', '0000-00-00 00:00:00', 'Female'),
(352, 'Laurette', 'Antonelli', '01/03/2013', '0000-00-00 00:00:00', 'Female'),
(353, 'Pete', 'Rosenfrucht', '08/05/2022', '0000-00-00 00:00:00', 'Male'),
(354, 'Fonsie', 'Championnet', '12/04/2013', '0000-00-00 00:00:00', 'Male'),
(355, 'Paquito', 'Radcliffe', '06/06/2022', '0000-00-00 00:00:00', 'Male'),
(356, 'Lemar', 'Jordi', '12/29/2003', '0000-00-00 00:00:00', 'Male'),
(357, 'Derk', 'Josilevich', '5/30/2015', '0000-00-00 00:00:00', 'Male'),
(358, 'Arlina', 'Otridge', '5/22/2014', '0000-00-00 00:00:00', 'Female'),
(359, 'Eadmund', 'Thormann', '6/16/2000', '0000-00-00 00:00:00', 'Male'),
(360, 'Cordie', 'Pibsworth', '04/03/2020', '0000-00-00 00:00:00', 'Male'),
(361, 'Daloris', 'Cherrison', '12/03/2011', '0000-00-00 00:00:00', 'Female'),
(362, 'Colas', 'Rumens', '4/19/2004', '0000-00-00 00:00:00', 'Male'),
(363, 'Sandie', 'Goodee', '10/03/2017', '0000-00-00 00:00:00', 'Female'),
(364, 'Chaddie', 'Manueli', '3/21/2002', '0000-00-00 00:00:00', 'Male'),
(365, 'Homerus', 'Shepard', '01/03/2004', '0000-00-00 00:00:00', 'Male'),
(366, 'Pamelina', 'Godier', '11/10/2005', '0000-00-00 00:00:00', 'Female'),
(367, 'Eileen', 'Whartonby', '10/24/2008', '0000-00-00 00:00:00', 'Female'),
(368, 'Bathsheba', 'Herculeson', '5/20/2009', '0000-00-00 00:00:00', 'Female'),
(369, 'Keary', 'Grzeszczyk', '12/11/2014', '0000-00-00 00:00:00', 'Male'),
(370, 'Frieda', 'Grisenthwaite', '09/11/2005', '0000-00-00 00:00:00', 'Female'),
(371, 'Bowie', 'Dislee', '4/13/2020', '0000-00-00 00:00:00', 'Male'),
(372, 'Sabina', 'Bento', '6/15/2000', '0000-00-00 00:00:00', 'Female'),
(373, 'Annnora', 'Dewerson', '06/07/2018', '0000-00-00 00:00:00', 'Female'),
(374, 'Kendell', 'Shepard', '12/05/2011', '0000-00-00 00:00:00', 'Male'),
(375, 'Kimmi', 'Pattesall', '04/10/2002', '0000-00-00 00:00:00', 'Female'),
(376, 'Nanete', 'Cogin', '04/10/2009', '0000-00-00 00:00:00', 'Female'),
(377, 'Emlynne', 'Murby', '1/23/2019', '0000-00-00 00:00:00', 'Female'),
(378, 'Gianina', 'Leeman', '06/01/2006', '0000-00-00 00:00:00', 'Female'),
(379, 'Lynsey', 'Forshaw', '05/10/2021', '0000-00-00 00:00:00', 'Female'),
(380, 'Cybill', 'Castana', '4/29/2017', '0000-00-00 00:00:00', 'Female'),
(381, 'Barbie', 'Castellet', '03/04/2005', '0000-00-00 00:00:00', 'Female'),
(382, 'Fernande', 'Blaksley', '10/19/2009', '0000-00-00 00:00:00', 'Female'),
(383, 'Frederic', 'Buzza', '10/25/2019', '0000-00-00 00:00:00', 'Male'),
(384, 'Daisey', 'Jurczyk', '11/06/2020', '0000-00-00 00:00:00', 'Female'),
(385, 'Hailey', 'Olczak', '4/21/2014', '0000-00-00 00:00:00', 'Male'),
(386, 'Sinclare', 'Stonebanks', '6/18/2006', '0000-00-00 00:00:00', 'Male'),
(387, 'Heather', 'Salliere', '11/01/2012', '0000-00-00 00:00:00', 'Female'),
(388, 'Laurice', 'Olivier', '11/21/2005', '0000-00-00 00:00:00', 'Female'),
(389, 'Janek', 'Widdup', '6/25/2018', '0000-00-00 00:00:00', 'Male'),
(390, 'Vinni', 'Fluin', '1/20/2021', '0000-00-00 00:00:00', 'Female'),
(391, 'Lewes', 'Cosson', '01/03/2006', '0000-00-00 00:00:00', 'Male'),
(392, 'Sharity', 'Husbands', '04/02/2022', '0000-00-00 00:00:00', 'Female'),
(393, 'Margo', 'Milbourn', '8/24/2016', '0000-00-00 00:00:00', 'Female'),
(394, 'Maurene', 'Berrisford', '05/12/2015', '0000-00-00 00:00:00', 'Female'),
(395, 'Skipton', 'Logg', '12/18/2005', '0000-00-00 00:00:00', 'Male'),
(396, 'Clarisse', 'Norree', '06/11/2011', '0000-00-00 00:00:00', 'Female'),
(397, 'Karyl', 'Bock', '04/04/2015', '0000-00-00 00:00:00', 'Female'),
(398, 'Annette', 'Ivanikhin', '9/23/2022', '0000-00-00 00:00:00', 'Female'),
(399, 'Buckie', 'Visick', '1/25/2007', '0000-00-00 00:00:00', 'Male'),
(400, 'Waiter', 'Greatham', '01/12/2015', '0000-00-00 00:00:00', 'Male'),
(401, 'Margaret', 'Stamp', '08/06/2009', '0000-00-00 00:00:00', 'Female'),
(402, 'Nedi', 'Killeen', '3/19/2018', '0000-00-00 00:00:00', 'Female'),
(403, 'Raffaello', 'Larkins', '8/15/2002', '0000-00-00 00:00:00', 'Male'),
(404, 'Collette', 'Ferrieroi', '11/24/2020', '0000-00-00 00:00:00', 'Female'),
(405, 'Solomon', 'Elijahu', '05/10/2012', '0000-00-00 00:00:00', 'Male'),
(406, 'Janetta', 'Babin', '07/01/2017', '0000-00-00 00:00:00', 'Female'),
(407, 'Ludvig', 'Grunnell', '07/07/2016', '0000-00-00 00:00:00', 'Male'),
(408, 'Darb', 'Coenraets', '03/05/2014', '0000-00-00 00:00:00', 'Male'),
(409, 'Finley', 'Petrasch', '07/09/2013', '0000-00-00 00:00:00', 'Male'),
(410, 'Jere', 'Grant', '5/29/2001', '0000-00-00 00:00:00', 'Male'),
(411, 'Lynne', 'Marshalleck', '6/18/2006', '0000-00-00 00:00:00', 'Female'),
(412, 'Denney', 'Keuneke', '6/22/2012', '0000-00-00 00:00:00', 'Male'),
(413, 'Noella', 'Jemmison', '11/19/2004', '0000-00-00 00:00:00', 'Female'),
(414, 'Philippine', 'Trood', '8/27/2021', '0000-00-00 00:00:00', 'Female'),
(415, 'Jerald', 'Blanchard', '11/23/2003', '0000-00-00 00:00:00', 'Male'),
(416, 'Orel', 'Matejic', '3/20/2020', '0000-00-00 00:00:00', 'Female'),
(417, 'Izzy', 'Lecointe', '08/10/2009', '0000-00-00 00:00:00', 'Male'),
(418, 'Arty', 'Okill', '07/07/2010', '0000-00-00 00:00:00', 'Male'),
(419, 'Beatriz', 'Sturgess', '02/04/2015', '0000-00-00 00:00:00', 'Female'),
(420, 'Gerhardine', 'Couling', '9/21/2000', '0000-00-00 00:00:00', 'Female'),
(421, 'Star', 'Godon', '11/21/2010', '0000-00-00 00:00:00', 'Female'),
(422, 'Bebe', 'Cristou', '5/21/2011', '0000-00-00 00:00:00', 'Female'),
(423, 'Ronni', 'Brunner', '3/16/2005', '0000-00-00 00:00:00', 'Female'),
(424, 'Saxon', 'Hardaway', '11/29/2020', '0000-00-00 00:00:00', 'Male'),
(425, 'Carrol', 'Dureden', '05/09/2003', '0000-00-00 00:00:00', 'Male'),
(426, 'Charmaine', 'Chester', '9/29/2020', '0000-00-00 00:00:00', 'Female'),
(427, 'Valry', 'Oldis', '09/02/2019', '0000-00-00 00:00:00', 'Female'),
(428, 'Doralynn', 'Fulloway', '7/24/2010', '0000-00-00 00:00:00', 'Female'),
(429, 'Tanny', 'Cubbino', '02/02/2012', '0000-00-00 00:00:00', 'Male'),
(430, 'Drusy', 'Revey', '05/05/2002', '0000-00-00 00:00:00', 'Female'),
(431, 'Hugues', 'Spadazzi', '04/05/2021', '0000-00-00 00:00:00', 'Male'),
(432, 'Miguela', 'Youngs', '7/20/2006', '0000-00-00 00:00:00', 'Female'),
(433, 'Nike', 'Roscow', '12/21/2012', '0000-00-00 00:00:00', 'Female'),
(434, 'Cammy', 'Woollard', '12/31/2018', '0000-00-00 00:00:00', 'Male'),
(435, 'Laurice', 'Sherlaw', '8/20/2015', '0000-00-00 00:00:00', 'Female'),
(436, 'Kev', 'Birtley', '09/01/2021', '0000-00-00 00:00:00', 'Male'),
(437, 'Reagen', 'Winton', '3/20/2005', '0000-00-00 00:00:00', 'Male'),
(438, 'Susan', 'Bracco', '7/27/2011', '0000-00-00 00:00:00', 'Female'),
(439, 'Eldridge', 'Casarili', '09/05/2015', '0000-00-00 00:00:00', 'Male'),
(440, 'Bax', 'Claire', '5/18/2014', '0000-00-00 00:00:00', 'Male'),
(441, 'Vicki', 'Baumaier', '1/22/2005', '0000-00-00 00:00:00', 'Female'),
(442, 'Trumaine', 'Goby', '11/09/2013', '0000-00-00 00:00:00', 'Male'),
(443, 'Thorpe', 'Kulis', '4/27/2002', '0000-00-00 00:00:00', 'Male'),
(444, 'Addie', 'Fosdick', '7/15/2007', '0000-00-00 00:00:00', 'Male'),
(445, 'Garry', 'Bassett', '12/02/2017', '0000-00-00 00:00:00', 'Male'),
(446, 'Anica', 'Gee', '11/30/2017', '0000-00-00 00:00:00', 'Female'),
(447, 'George', 'Hunnam', '08/09/2012', '0000-00-00 00:00:00', 'Male'),
(448, 'Brocky', 'Poppleston', '06/08/2003', '0000-00-00 00:00:00', 'Male'),
(449, 'Donetta', 'Hens', '08/06/2007', '0000-00-00 00:00:00', 'Female'),
(450, 'Donni', 'Tourne', '5/13/2018', '0000-00-00 00:00:00', 'Female'),
(451, 'Kasper', 'Dallow', '12/11/2010', '0000-00-00 00:00:00', 'Male'),
(452, 'Lelia', 'Reubel', '4/14/2013', '0000-00-00 00:00:00', 'Female'),
(453, 'Vachel', 'Schermick', '11/28/2022', '0000-00-00 00:00:00', 'Male'),
(454, 'Ileane', 'Boumphrey', '03/01/2002', '0000-00-00 00:00:00', 'Female'),
(455, 'Ange', 'Brignell', '02/01/2011', '0000-00-00 00:00:00', 'Male'),
(456, 'Royce', 'Troup', '04/10/2015', '0000-00-00 00:00:00', 'Male'),
(457, 'Isadora', 'Hugo', '08/03/2013', '0000-00-00 00:00:00', 'Female'),
(458, 'Marcile', 'Mc Caghan', '11/13/2009', '0000-00-00 00:00:00', 'Female'),
(459, 'Raychel', 'Flory', '3/22/2004', '0000-00-00 00:00:00', 'Female'),
(460, 'Kimberley', 'Groundwater', '08/10/2007', '0000-00-00 00:00:00', 'Female'),
(461, 'Lucio', 'Phelipeau', '02/12/2010', '0000-00-00 00:00:00', 'Male'),
(462, 'Nil', 'Clavering', '10/08/2007', '0000-00-00 00:00:00', 'Male'),
(463, 'Merl', 'Izzatt', '3/24/2003', '0000-00-00 00:00:00', 'Female'),
(464, 'Geno', 'O\'Crigane', '2/22/2001', '0000-00-00 00:00:00', 'Male'),
(465, 'Rozele', 'Besnard', '6/20/2001', '0000-00-00 00:00:00', 'Female'),
(466, 'Clementius', 'Mahomet', '1/24/2021', '0000-00-00 00:00:00', 'Male'),
(467, 'Francyne', 'Dimitriev', '11/22/2016', '0000-00-00 00:00:00', 'Female'),
(468, 'Herminia', 'Haddrill', '9/18/2012', '0000-00-00 00:00:00', 'Female'),
(469, 'Raul', 'Van Castele', '11/26/2016', '0000-00-00 00:00:00', 'Male'),
(470, 'Vonni', 'Petrello', '6/14/2020', '0000-00-00 00:00:00', 'Female'),
(471, 'Westley', 'Paty', '06/10/2016', '0000-00-00 00:00:00', 'Male'),
(472, 'Clyve', 'Vakhrushin', '1/13/2002', '0000-00-00 00:00:00', 'Male'),
(473, 'Sharia', 'Corrett', '9/24/2012', '0000-00-00 00:00:00', 'Female'),
(474, 'Arabela', 'Gilliver', '9/23/2004', '0000-00-00 00:00:00', 'Female'),
(475, 'Quill', 'Hyndson', '03/04/2010', '0000-00-00 00:00:00', 'Male'),
(476, 'Talia', 'Ghilks', '05/11/2014', '0000-00-00 00:00:00', 'Female'),
(477, 'Barbara-anne', 'Baulcombe', '09/10/2004', '0000-00-00 00:00:00', 'Female'),
(478, 'Nanni', 'Brearton', '1/26/2010', '0000-00-00 00:00:00', 'Female'),
(479, 'Isabelle', 'Francescozzi', '12/02/2011', '0000-00-00 00:00:00', 'Female'),
(480, 'Bernardo', 'Spittal', '07/06/2010', '0000-00-00 00:00:00', 'Male'),
(481, 'Sidoney', 'Riddell', '04/11/2021', '0000-00-00 00:00:00', 'Female'),
(482, 'Jilli', 'Linnard', '07/01/2008', '0000-00-00 00:00:00', 'Female'),
(483, 'Gareth', 'Lowery', '9/19/2016', '0000-00-00 00:00:00', 'Male'),
(484, 'Ingeborg', 'Kristoffersson', '08/04/2022', '0000-00-00 00:00:00', 'Female'),
(485, 'Kass', 'Kem', '10/25/2004', '0000-00-00 00:00:00', 'Female'),
(486, 'Celestia', 'Roy', '7/29/2014', '0000-00-00 00:00:00', 'Female'),
(487, 'Neda', 'Fennessy', '07/01/2004', '0000-00-00 00:00:00', 'Female'),
(488, 'Nicole', 'Woakes', '5/20/2001', '0000-00-00 00:00:00', 'Female'),
(489, 'Jermain', 'Scotchmer', '7/26/2021', '0000-00-00 00:00:00', 'Male'),
(490, 'Lennard', 'Punshon', '1/15/2012', '0000-00-00 00:00:00', 'Male'),
(491, 'Trula', 'Rickeard', '10/09/2000', '0000-00-00 00:00:00', 'Female'),
(492, 'Cletis', 'Lody', '03/02/2019', '0000-00-00 00:00:00', 'Male'),
(493, 'Christye', 'Pudding', '12/13/2008', '0000-00-00 00:00:00', 'Female'),
(494, 'Marmaduke', 'Manktelow', '10/05/2015', '0000-00-00 00:00:00', 'Male'),
(495, 'Ainslee', 'Woodfine', '03/03/2002', '0000-00-00 00:00:00', 'Female'),
(496, 'Sybila', 'Frosdick', '1/20/2002', '0000-00-00 00:00:00', 'Female'),
(497, 'Cecile', 'Smidmoor', '5/14/2018', '0000-00-00 00:00:00', 'Female'),
(498, 'Benjie', 'MacColm', '1/22/2019', '0000-00-00 00:00:00', 'Male'),
(499, 'Conant', 'Denisyev', '2/16/2012', '0000-00-00 00:00:00', 'Male'),
(500, 'Norbie', 'Hampton', '10/01/2009', '0000-00-00 00:00:00', 'Male'),
(501, 'Callida', 'Stobart', '09/09/2020', '0000-00-00 00:00:00', 'Female'),
(502, 'Danni', 'Brotherick', '06/01/2017', '0000-00-00 00:00:00', 'Female'),
(503, 'Beverlee', 'Gilding', '4/18/2021', '0000-00-00 00:00:00', 'Female'),
(504, 'Merwin', 'Plows', '12/23/2005', '0000-00-00 00:00:00', 'Male'),
(505, 'Creight', 'Hail', '07/07/2009', '0000-00-00 00:00:00', 'Male'),
(506, 'Thedric', 'Verheyden', '2/25/2009', '0000-00-00 00:00:00', 'Male'),
(507, 'Lukas', 'Birdall', '12/10/2011', '0000-00-00 00:00:00', 'Male'),
(508, 'Allyson', 'Vannuchi', '12/19/2001', '0000-00-00 00:00:00', 'Female'),
(509, 'Verla', 'Dracey', '8/16/2017', '0000-00-00 00:00:00', 'Female'),
(510, 'Tomlin', 'Ludl', '11/05/2002', '0000-00-00 00:00:00', 'Male'),
(511, 'Pia', 'Ebbrell', '05/05/2010', '0000-00-00 00:00:00', 'Female'),
(512, 'Foster', 'Wilkerson', '03/12/2022', '0000-00-00 00:00:00', 'Male'),
(513, 'Worthington', 'Pergens', '03/06/2001', '0000-00-00 00:00:00', 'Male'),
(514, 'Syman', 'Enterlein', '05/11/2010', '0000-00-00 00:00:00', 'Male'),
(515, 'Garrot', 'Hartshorne', '04/07/2022', '0000-00-00 00:00:00', 'Male'),
(516, 'Edlin', 'Cumesky', '11/21/2017', '0000-00-00 00:00:00', 'Male'),
(517, 'Melvyn', 'Stolze', '7/16/2004', '0000-00-00 00:00:00', 'Male'),
(518, 'Janek', 'Falconbridge', '04/11/2003', '0000-00-00 00:00:00', 'Male'),
(519, 'Phyllys', 'Bridat', '10/19/2009', '0000-00-00 00:00:00', 'Female'),
(520, 'Sherwin', 'Pasby', '7/21/2002', '0000-00-00 00:00:00', 'Male'),
(521, 'Karlan', 'Sumpner', '3/22/2019', '0000-00-00 00:00:00', 'Male'),
(522, 'Kippie', 'Coult', '11/09/2001', '0000-00-00 00:00:00', 'Male'),
(523, 'Onfre', 'Chubb', '02/11/2017', '0000-00-00 00:00:00', 'Male'),
(524, 'Gabbi', 'Rainbow', '8/23/2021', '0000-00-00 00:00:00', 'Female'),
(525, 'Nerita', 'McNiven', '04/05/2004', '0000-00-00 00:00:00', 'Female'),
(526, 'Pepillo', 'Bento', '3/26/2009', '0000-00-00 00:00:00', 'Male'),
(527, 'Berkley', 'Quernel', '01/02/2017', '0000-00-00 00:00:00', 'Male'),
(528, 'Mateo', 'Millthorpe', '9/28/2022', '0000-00-00 00:00:00', 'Male'),
(529, 'Currey', 'Derwin', '2/24/2008', '0000-00-00 00:00:00', 'Male'),
(530, 'Mabelle', 'Mussen', '10/28/2012', '0000-00-00 00:00:00', 'Female'),
(531, 'Tiphany', 'Cadney', '5/30/2014', '0000-00-00 00:00:00', 'Female'),
(532, 'Jeannie', 'Maryet', '10/27/2017', '0000-00-00 00:00:00', 'Female'),
(533, 'Gerrie', 'Housbey', '05/05/2019', '0000-00-00 00:00:00', 'Female'),
(534, 'Ferrell', 'Gostridge', '12/21/2008', '0000-00-00 00:00:00', 'Male'),
(535, 'Drucy', 'Jobern', '10/23/2012', '0000-00-00 00:00:00', 'Female'),
(536, 'Alejandra', 'Bodle', '8/27/2022', '0000-00-00 00:00:00', 'Female'),
(537, 'Bing', 'Buckenhill', '6/18/2009', '0000-00-00 00:00:00', 'Male'),
(538, 'Adina', 'Pringley', '2/21/2001', '0000-00-00 00:00:00', 'Female'),
(539, 'Kleon', 'Nenci', '04/08/2013', '0000-00-00 00:00:00', 'Male'),
(540, 'Cornie', 'Empleton', '6/29/2001', '0000-00-00 00:00:00', 'Female'),
(541, 'Alexa', 'Walch', '04/05/2010', '0000-00-00 00:00:00', 'Female'),
(542, 'Daryl', 'Fryatt', '4/23/2016', '0000-00-00 00:00:00', 'Male'),
(543, 'Yvonne', 'Kinton', '4/23/2001', '0000-00-00 00:00:00', 'Female'),
(544, 'Haskell', 'Lynagh', '9/28/2015', '0000-00-00 00:00:00', 'Male'),
(545, 'Corbett', 'Thurstan', '08/03/2016', '0000-00-00 00:00:00', 'Male'),
(546, 'Winston', 'Tillyer', '12/04/2011', '0000-00-00 00:00:00', 'Male'),
(547, 'Rachelle', 'Doorbar', '10/19/2008', '0000-00-00 00:00:00', 'Female'),
(548, 'Ikey', 'Merida', '12/09/2004', '0000-00-00 00:00:00', 'Male'),
(549, 'Nicolea', 'Elliman', '10/06/2010', '0000-00-00 00:00:00', 'Female'),
(550, 'Briney', 'Brokenbrow', '05/12/2003', '0000-00-00 00:00:00', 'Female'),
(551, 'Paquito', 'Trevaskus', '06/07/2018', '0000-00-00 00:00:00', 'Male'),
(552, 'Hieronymus', 'D\'Ambrogi', '3/21/2015', '0000-00-00 00:00:00', 'Male'),
(553, 'Lyndsie', 'Vanshin', '5/19/2013', '0000-00-00 00:00:00', 'Female'),
(554, 'Pansy', 'Tilly', '12/05/2019', '0000-00-00 00:00:00', 'Female'),
(555, 'Bobbee', 'Kobierzycki', '02/06/2006', '0000-00-00 00:00:00', 'Female'),
(556, 'Natka', 'Piggens', '4/22/2012', '0000-00-00 00:00:00', 'Female'),
(557, 'Nicola', 'Izatt', '8/31/2004', '0000-00-00 00:00:00', 'Male'),
(558, 'Berkie', 'Crossman', '11/13/2002', '0000-00-00 00:00:00', 'Male'),
(559, 'Dan', 'Robins', '10/23/2013', '0000-00-00 00:00:00', 'Male'),
(560, 'Dorita', 'Vlach', '3/24/2018', '0000-00-00 00:00:00', 'Female'),
(561, 'Risa', 'Cyster', '4/30/2008', '0000-00-00 00:00:00', 'Female'),
(562, 'Nancy', 'Edmonson', '5/20/2003', '0000-00-00 00:00:00', 'Female'),
(563, 'Rex', 'Coventon', '3/17/2004', '0000-00-00 00:00:00', 'Male'),
(564, 'Floria', 'Menco', '4/27/2004', '0000-00-00 00:00:00', 'Female'),
(565, 'Niel', 'Fissenden', '12/07/2021', '0000-00-00 00:00:00', 'Male'),
(566, 'Tabb', 'Kilgallon', '6/23/2013', '0000-00-00 00:00:00', 'Male'),
(567, 'Conrade', 'Darinton', '12/24/2001', '0000-00-00 00:00:00', 'Male'),
(568, 'Casandra', 'Skoof', '6/21/2014', '0000-00-00 00:00:00', 'Female'),
(569, 'Lazarus', 'Ducket', '12/28/2010', '0000-00-00 00:00:00', 'Male'),
(570, 'Johnath', 'Rosenwald', '2/18/2014', '0000-00-00 00:00:00', 'Female'),
(571, 'Cole', 'Henfre', '11/22/2014', '0000-00-00 00:00:00', 'Male'),
(572, 'Gothart', 'Harbert', '4/14/2014', '0000-00-00 00:00:00', 'Male'),
(573, 'Rosaleen', 'Robinson', '8/31/2006', '0000-00-00 00:00:00', 'Female'),
(574, 'Annabelle', 'Soper', '02/05/2001', '0000-00-00 00:00:00', 'Female'),
(575, 'Christian', 'Handaside', '08/05/2010', '0000-00-00 00:00:00', 'Male'),
(576, 'Dominik', 'Piotrkowski', '04/05/2011', '0000-00-00 00:00:00', 'Male'),
(577, 'Otho', 'Sellek', '8/30/2001', '0000-00-00 00:00:00', 'Male'),
(578, 'Zandra', 'Catterall', '4/29/2009', '0000-00-00 00:00:00', 'Female'),
(579, 'Teressa', 'Falls', '4/29/2021', '0000-00-00 00:00:00', 'Female'),
(580, 'Demetri', 'Constable', '05/08/2003', '0000-00-00 00:00:00', 'Male'),
(581, 'Suzette', 'Wardhaugh', '8/14/2010', '0000-00-00 00:00:00', 'Female'),
(582, 'Konstanze', 'Spinozzi', '9/23/2020', '0000-00-00 00:00:00', 'Female'),
(583, 'Erich', 'Deverose', '4/27/2012', '0000-00-00 00:00:00', 'Male'),
(584, 'Pavel', 'Simison', '1/31/2014', '0000-00-00 00:00:00', 'Male'),
(585, 'Araldo', 'Plumb', '05/04/2011', '0000-00-00 00:00:00', 'Male'),
(586, 'Wanids', 'Kelloway', '03/09/2000', '0000-00-00 00:00:00', 'Female'),
(587, 'Franklin', 'Worham', '5/27/2021', '0000-00-00 00:00:00', 'Male'),
(588, 'Dorian', 'Tomsa', '1/27/2019', '0000-00-00 00:00:00', 'Female'),
(589, 'Martguerita', 'Reaman', '9/26/2016', '0000-00-00 00:00:00', 'Female'),
(590, 'Temp', 'Simonnet', '02/05/2023', '0000-00-00 00:00:00', 'Male'),
(591, 'Gibb', 'Bacup', '6/26/2016', '0000-00-00 00:00:00', 'Male'),
(592, 'Finlay', 'Greatex', '09/03/2000', '0000-00-00 00:00:00', 'Male'),
(593, 'Emmott', 'Oliveira', '5/22/2017', '0000-00-00 00:00:00', 'Male'),
(594, 'Abby', 'Cabrera', '4/22/2000', '0000-00-00 00:00:00', 'Female'),
(595, 'Lanette', 'Rohmer', '12/29/2007', '0000-00-00 00:00:00', 'Female'),
(596, 'Eberhard', 'Catling', '8/20/2021', '0000-00-00 00:00:00', 'Male'),
(597, 'Salmon', 'Elliot', '9/15/2010', '0000-00-00 00:00:00', 'Male'),
(598, 'Arman', 'Syncke', '4/25/2008', '0000-00-00 00:00:00', 'Male'),
(599, 'Keen', 'Knibbs', '4/20/2002', '0000-00-00 00:00:00', 'Male'),
(600, 'Allis', 'Izaac', '1/22/2005', '0000-00-00 00:00:00', 'Female'),
(601, 'Alexandre', 'Tooker', '8/17/2007', '0000-00-00 00:00:00', 'Male'),
(602, 'Audry', 'Beamson', '5/20/2008', '0000-00-00 00:00:00', 'Female'),
(603, 'Emily', 'Ellery', '11/18/2019', '0000-00-00 00:00:00', 'Female'),
(604, 'Garwood', 'Bradly', '12/18/2018', '0000-00-00 00:00:00', 'Male'),
(605, 'Dion', 'Phillcock', '11/07/2017', '0000-00-00 00:00:00', 'Female'),
(606, 'Faina', 'Bradburne', '5/30/2015', '0000-00-00 00:00:00', 'Female'),
(607, 'Doroteya', 'Sauven', '9/26/2004', '0000-00-00 00:00:00', 'Female'),
(608, 'Hew', 'Toffanini', '7/15/2003', '0000-00-00 00:00:00', 'Male'),
(609, 'Ash', 'Feltoe', '4/25/2003', '0000-00-00 00:00:00', 'Male'),
(610, 'Harry', 'Hillock', '1/21/2007', '0000-00-00 00:00:00', 'Male'),
(611, 'Thalia', 'Hayers', '2/26/2014', '0000-00-00 00:00:00', 'Female'),
(612, 'Holly-anne', 'Lygo', '12/15/2007', '0000-00-00 00:00:00', 'Female'),
(613, 'Angelia', 'Shelborne', '7/18/2010', '0000-00-00 00:00:00', 'Female'),
(614, 'Beale', 'Forstall', '08/02/2009', '0000-00-00 00:00:00', 'Male'),
(615, 'Rod', 'Vincent', '01/06/2003', '0000-00-00 00:00:00', 'Male'),
(616, 'Dani', 'Youhill', '12/19/2016', '0000-00-00 00:00:00', 'Male'),
(617, 'Gunther', 'Valerius', '03/05/2009', '0000-00-00 00:00:00', 'Male'),
(618, 'Dulciana', 'Belmont', '10/07/2011', '0000-00-00 00:00:00', 'Female'),
(619, 'Thia', 'Nend', '12/23/2006', '0000-00-00 00:00:00', 'Female'),
(620, 'Barrett', 'Dwelley', '9/15/2013', '0000-00-00 00:00:00', 'Male'),
(621, 'Anett', 'Huddleston', '03/12/2015', '0000-00-00 00:00:00', 'Female'),
(622, 'Brier', 'Killigrew', '8/23/2016', '0000-00-00 00:00:00', 'Female'),
(623, 'Murdoch', 'Bertelet', '8/20/2021', '0000-00-00 00:00:00', 'Male'),
(624, 'Dino', 'Crotty', '9/15/2004', '0000-00-00 00:00:00', 'Male'),
(625, 'Mahmud', 'Schimek', '11/24/2022', '0000-00-00 00:00:00', 'Male'),
(626, 'Barnabas', 'Toman', '02/06/2022', '0000-00-00 00:00:00', 'Male'),
(627, 'Bernard', 'Hundell', '4/30/2011', '0000-00-00 00:00:00', 'Male'),
(628, 'Wilbur', 'Anstis', '1/28/2012', '0000-00-00 00:00:00', 'Male'),
(629, 'Jacklyn', 'Greves', '12/27/2002', '0000-00-00 00:00:00', 'Female'),
(630, 'Waylen', 'Edgerley', '9/28/2010', '0000-00-00 00:00:00', 'Male'),
(631, 'Clarine', 'Murty', '10/06/2021', '0000-00-00 00:00:00', 'Female'),
(632, 'Haily', 'Swindell', '03/11/2006', '0000-00-00 00:00:00', 'Female'),
(633, 'Marcellus', 'Szymanek', '11/10/2005', '0000-00-00 00:00:00', 'Male'),
(634, 'Carree', 'Wilshin', '10/01/2019', '0000-00-00 00:00:00', 'Female'),
(635, 'Perceval', 'Klimochkin', '2/26/2023', '0000-00-00 00:00:00', 'Male'),
(636, 'Sutton', 'Catterson', '12/07/2001', '0000-00-00 00:00:00', 'Male'),
(637, 'Izaak', 'Bardell', '09/08/2010', '0000-00-00 00:00:00', 'Male'),
(638, 'Alanah', 'McCloid', '09/02/2006', '0000-00-00 00:00:00', 'Female'),
(639, 'Ada', 'Kuhnwald', '9/21/2008', '0000-00-00 00:00:00', 'Female'),
(640, 'Padraig', 'Minci', '6/25/2011', '0000-00-00 00:00:00', 'Male'),
(641, 'Andria', 'Torres', '04/07/2001', '0000-00-00 00:00:00', 'Female'),
(642, 'Noami', 'Mellish', '12/02/2012', '0000-00-00 00:00:00', 'Female'),
(643, 'L;urette', 'Creggan', '05/07/2022', '0000-00-00 00:00:00', 'Female'),
(644, 'Conny', 'Mohamed', '5/20/2002', '0000-00-00 00:00:00', 'Female'),
(645, 'Eadith', 'Inston', '03/11/2022', '0000-00-00 00:00:00', 'Female'),
(646, 'Dimitry', 'Crowson', '10/06/2020', '0000-00-00 00:00:00', 'Male'),
(647, 'Virge', 'Odgers', '9/17/2008', '0000-00-00 00:00:00', 'Male'),
(648, 'Carri', 'Doby', '07/11/2001', '0000-00-00 00:00:00', 'Female'),
(649, 'Duff', 'Kittley', '3/31/2002', '0000-00-00 00:00:00', 'Male'),
(650, 'Bret', 'Jeffels', '7/23/2004', '0000-00-00 00:00:00', 'Male'),
(651, 'Elwyn', 'Sarra', '11/14/2013', '0000-00-00 00:00:00', 'Male'),
(652, 'Addison', 'Langstaff', '10/01/2004', '0000-00-00 00:00:00', 'Male'),
(653, 'Der', 'Valenta', '4/21/2014', '0000-00-00 00:00:00', 'Male'),
(654, 'Amos', 'Taylor', '10/08/2007', '0000-00-00 00:00:00', 'Male'),
(655, 'Karena', 'Faragan', '3/18/2012', '0000-00-00 00:00:00', 'Female'),
(656, 'Aundrea', 'Gleaves', '5/22/2003', '0000-00-00 00:00:00', 'Female'),
(657, 'Leonerd', 'Kestian', '4/22/2009', '0000-00-00 00:00:00', 'Male'),
(658, 'Tremaine', 'Hunn', '5/31/2021', '0000-00-00 00:00:00', 'Male'),
(659, 'Holt', 'Kennewell', '05/02/2019', '0000-00-00 00:00:00', 'Male'),
(660, 'Luis', 'Alvarado', '7/29/2022', '0000-00-00 00:00:00', 'Male'),
(661, 'Phylys', 'Torre', '11/15/2022', '0000-00-00 00:00:00', 'Female'),
(662, 'Lyon', 'Cristofanini', '05/12/2014', '0000-00-00 00:00:00', 'Male'),
(663, 'Felicdad', 'Kohter', '03/04/2016', '0000-00-00 00:00:00', 'Female'),
(664, 'Ronni', 'Witherdon', '12/16/2007', '0000-00-00 00:00:00', 'Female'),
(665, 'Veda', 'Sudy', '11/29/2011', '0000-00-00 00:00:00', 'Female'),
(666, 'Reade', 'Trimbey', '7/13/2008', '0000-00-00 00:00:00', 'Male'),
(667, 'Christalle', 'Icom', '9/15/2017', '0000-00-00 00:00:00', 'Female'),
(668, 'Sloan', 'McGifford', '05/10/2014', '0000-00-00 00:00:00', 'Male'),
(669, 'Gerhard', 'Birdwhistle', '08/10/2019', '0000-00-00 00:00:00', 'Male'),
(670, 'Oriana', 'Leary', '11/12/2012', '0000-00-00 00:00:00', 'Female'),
(671, 'Deidre', 'Albarez', '10/05/2021', '0000-00-00 00:00:00', 'Female'),
(672, 'Fleurette', 'Plaid', '6/14/2012', '0000-00-00 00:00:00', 'Female'),
(673, 'Boony', 'Hasty', '10/07/2012', '0000-00-00 00:00:00', 'Male'),
(674, 'Pasquale', 'Beautyman', '07/09/2007', '0000-00-00 00:00:00', 'Male'),
(675, 'Barthel', 'Pyott', '12/10/2018', '0000-00-00 00:00:00', 'Male'),
(676, 'Derek', 'Baudic', '02/12/2012', '0000-00-00 00:00:00', 'Male'),
(677, 'Vernen', 'Overall', '05/07/2014', '0000-00-00 00:00:00', 'Male'),
(678, 'Alwin', 'Minton', '3/25/2022', '0000-00-00 00:00:00', 'Male'),
(679, 'Nicolai', 'Cornilleau', '11/17/2018', '0000-00-00 00:00:00', 'Male'),
(680, 'Ulberto', 'Jeacock', '11/13/2010', '0000-00-00 00:00:00', 'Male'),
(681, 'Marchelle', 'Sutherns', '03/03/2015', '0000-00-00 00:00:00', 'Female'),
(682, 'Bonnie', 'Mealiffe', '11/20/2021', '0000-00-00 00:00:00', 'Female'),
(683, 'Saunderson', 'Ainslie', '08/01/2021', '0000-00-00 00:00:00', 'Male'),
(684, 'Ericha', 'Brashier', '7/15/2011', '0000-00-00 00:00:00', 'Female'),
(685, 'Yorke', 'Ales0', '05/01/2017', '0000-00-00 00:00:00', 'Male'),
(686, 'Astrid', 'Sizeland', '01/12/2012', '0000-00-00 00:00:00', 'Female'),
(687, 'Angil', 'Mallam', '4/26/2012', '0000-00-00 00:00:00', 'Female'),
(688, 'Lesley', 'Jefferson', '5/16/2006', '0000-00-00 00:00:00', 'Male'),
(689, 'Hatty', 'Bacop', '04/07/2020', '0000-00-00 00:00:00', 'Female'),
(690, 'Magdalene', 'Barrow', '8/21/2020', '0000-00-00 00:00:00', 'Female'),
(691, 'Molly', 'Farrear', '5/31/2013', '0000-00-00 00:00:00', 'Female'),
(692, 'Rouvin', 'Danilishin', '12/05/2012', '0000-00-00 00:00:00', 'Male'),
(693, 'Rozanne', 'Seally', '7/28/2004', '0000-00-00 00:00:00', 'Female'),
(694, 'Shaun', 'Belloch', '02/03/2001', '0000-00-00 00:00:00', 'Male'),
(695, 'Cherlyn', 'Dabinett', '2/18/2005', '0000-00-00 00:00:00', 'Female'),
(696, 'Adriena', 'Tilbury', '07/09/2009', '0000-00-00 00:00:00', 'Female'),
(697, 'Broderick', 'Jessope', '10/14/2016', '0000-00-00 00:00:00', 'Male');
INSERT INTO `student_list` (`id`, `first_name`, `last_name`, `birth_day`, `added_at`, `gender`) VALUES
(698, 'Emmalee', 'Letts', '5/22/2017', '0000-00-00 00:00:00', 'Female'),
(699, 'Dmitri', 'Melling', '6/14/2018', '0000-00-00 00:00:00', 'Male'),
(700, 'Hillie', 'Barratt', '10/07/2019', '0000-00-00 00:00:00', 'Male'),
(701, 'Ingrid', 'Acock', '8/28/2017', '0000-00-00 00:00:00', 'Female'),
(702, 'Caitlin', 'McCutheon', '7/26/2008', '0000-00-00 00:00:00', 'Female'),
(703, 'Denys', 'Kenny', '8/25/2022', '0000-00-00 00:00:00', 'Female'),
(704, 'Randolf', 'Jansky', '12/27/2002', '0000-00-00 00:00:00', 'Male'),
(705, 'Betteann', 'Bourgaize', '10/15/2022', '0000-00-00 00:00:00', 'Female'),
(706, 'Barry', 'Bursell', '12/03/2000', '0000-00-00 00:00:00', 'Male'),
(707, 'Alon', 'Osbourne', '11/28/2005', '0000-00-00 00:00:00', 'Male'),
(708, 'Yolande', 'Lowne', '02/08/2022', '0000-00-00 00:00:00', 'Female'),
(709, 'Vitoria', 'Kobel', '3/29/2006', '0000-00-00 00:00:00', 'Female'),
(710, 'Berk', 'Kirrage', '12/22/2013', '0000-00-00 00:00:00', 'Male'),
(711, 'Karlyn', 'Lebarree', '01/08/2004', '0000-00-00 00:00:00', 'Female'),
(712, 'Sada', 'O\'Calleran', '11/03/2000', '0000-00-00 00:00:00', 'Female'),
(713, 'Bald', 'Beagrie', '3/16/2003', '0000-00-00 00:00:00', 'Male'),
(714, 'Boothe', 'Cogswell', '7/15/2016', '0000-00-00 00:00:00', 'Male'),
(715, 'Stacie', 'Willgress', '05/03/2010', '0000-00-00 00:00:00', 'Female'),
(716, 'Marketa', 'Blamires', '11/11/2003', '0000-00-00 00:00:00', 'Female'),
(717, 'Eden', 'Raubenheimer', '09/03/2010', '0000-00-00 00:00:00', 'Female'),
(718, 'Adolf', 'Imesson', '12/08/2010', '0000-00-00 00:00:00', 'Male'),
(719, 'Coleman', 'Derricoat', '2/13/2022', '0000-00-00 00:00:00', 'Male'),
(720, 'Bear', 'McGuffog', '09/07/2002', '0000-00-00 00:00:00', 'Male'),
(721, 'Herold', 'Camblin', '08/03/2022', '0000-00-00 00:00:00', 'Male'),
(722, 'Warden', 'Flowers', '2/21/2002', '0000-00-00 00:00:00', 'Male'),
(723, 'Inglis', 'Simonassi', '05/10/2003', '0000-00-00 00:00:00', 'Male'),
(724, 'Theodore', 'Nisard', '06/06/2004', '0000-00-00 00:00:00', 'Male'),
(725, 'Petra', 'Borgars', '06/12/2014', '0000-00-00 00:00:00', 'Female'),
(726, 'Patrice', 'Jouaneton', '5/18/2001', '0000-00-00 00:00:00', 'Male'),
(727, 'Esmeralda', 'Fenby', '01/11/2005', '0000-00-00 00:00:00', 'Female'),
(728, 'Bernardina', 'Yann', '02/11/2008', '0000-00-00 00:00:00', 'Female'),
(729, 'Homere', 'Gregorin', '09/08/2020', '0000-00-00 00:00:00', 'Male'),
(730, 'Roshelle', 'Robelow', '11/09/2019', '0000-00-00 00:00:00', 'Female'),
(731, 'Carmella', 'Coventon', '06/10/2001', '0000-00-00 00:00:00', 'Female'),
(732, 'Giles', 'Trethowan', '2/26/2004', '0000-00-00 00:00:00', 'Male'),
(733, 'Christalle', 'Tremathack', '11/21/2014', '0000-00-00 00:00:00', 'Female'),
(734, 'Cosimo', 'Ivanyushkin', '11/06/2002', '0000-00-00 00:00:00', 'Male'),
(735, 'Virgilio', 'MacShirrie', '09/05/2005', '0000-00-00 00:00:00', 'Male'),
(736, 'Ilaire', 'Doick', '1/24/2020', '0000-00-00 00:00:00', 'Male'),
(737, 'Mycah', 'Hinckes', '4/24/2013', '0000-00-00 00:00:00', 'Male'),
(738, 'Shurlocke', 'Beales', '4/21/2019', '0000-00-00 00:00:00', 'Male'),
(739, 'Lauri', 'Geary', '6/19/2000', '0000-00-00 00:00:00', 'Female'),
(740, 'Bron', 'Clabburn', '11/25/2016', '0000-00-00 00:00:00', 'Male'),
(741, 'Lyndy', 'Toothill', '1/15/2016', '0000-00-00 00:00:00', 'Female'),
(742, 'Winnifred', 'Seale', '9/28/2007', '0000-00-00 00:00:00', 'Female'),
(743, 'Gabriel', 'Schiell', '2/14/2008', '0000-00-00 00:00:00', 'Male'),
(744, 'Gustavo', 'Tarrant', '8/30/2007', '0000-00-00 00:00:00', 'Male'),
(745, 'Lucio', 'Pethick', '04/09/2005', '0000-00-00 00:00:00', 'Male'),
(746, 'Meryl', 'Roadknight', '10/16/2008', '0000-00-00 00:00:00', 'Female'),
(747, 'Roxie', 'Seth', '9/16/2010', '0000-00-00 00:00:00', 'Female'),
(748, 'Adrian', 'Yurygyn', '11/25/2008', '0000-00-00 00:00:00', 'Male'),
(749, 'Reinwald', 'Pimlott', '04/10/2018', '0000-00-00 00:00:00', 'Male'),
(750, 'Audry', 'Eisikowitz', '10/19/2013', '0000-00-00 00:00:00', 'Female'),
(751, 'Donavon', 'Tiernan', '4/16/2007', '0000-00-00 00:00:00', 'Male'),
(752, 'Aurore', 'Trevarthen', '7/16/2012', '0000-00-00 00:00:00', 'Female'),
(753, 'Tadd', 'Lymer', '3/14/2020', '0000-00-00 00:00:00', 'Male'),
(754, 'Yorke', 'Donnelly', '3/21/2010', '0000-00-00 00:00:00', 'Male'),
(755, 'Sharity', 'Arnecke', '05/06/2017', '0000-00-00 00:00:00', 'Female'),
(756, 'Vance', 'Ketteridge', '9/17/2000', '0000-00-00 00:00:00', 'Male'),
(757, 'Georgine', 'Pechet', '3/27/2012', '0000-00-00 00:00:00', 'Female'),
(758, 'Kylie', 'Fanthom', '02/11/2022', '0000-00-00 00:00:00', 'Female'),
(759, 'Mady', 'Mallabon', '08/10/2018', '0000-00-00 00:00:00', 'Female'),
(760, 'Bertine', 'Wraxall', '03/05/2016', '0000-00-00 00:00:00', 'Female'),
(761, 'Gwen', 'Bickford', '1/16/2004', '0000-00-00 00:00:00', 'Female'),
(762, 'Basia', 'Bursnall', '5/22/2021', '0000-00-00 00:00:00', 'Female'),
(763, 'Oberon', 'Jeavon', '3/27/2011', '0000-00-00 00:00:00', 'Male'),
(764, 'Alphard', 'Roughsedge', '09/11/2021', '0000-00-00 00:00:00', 'Male'),
(765, 'Amelia', 'La Wille', '10/07/2017', '0000-00-00 00:00:00', 'Female'),
(766, 'Queenie', 'Flowitt', '03/10/2005', '0000-00-00 00:00:00', 'Female'),
(767, 'Hannis', 'Vernham', '12/03/2000', '0000-00-00 00:00:00', 'Female'),
(768, 'Ilaire', 'Phetteplace', '08/10/2003', '0000-00-00 00:00:00', 'Male'),
(769, 'Baryram', 'Neames', '05/08/2006', '0000-00-00 00:00:00', 'Male'),
(770, 'Marget', 'Dyble', '05/03/2009', '0000-00-00 00:00:00', 'Female'),
(771, 'Casey', 'Catley', '09/06/2004', '0000-00-00 00:00:00', 'Male'),
(772, 'Kris', 'Churn', '01/11/2021', '0000-00-00 00:00:00', 'Male'),
(773, 'Fonz', 'Sissens', '01/11/2014', '0000-00-00 00:00:00', 'Male'),
(774, 'Loren', 'Cane', '11/19/2011', '0000-00-00 00:00:00', 'Male'),
(775, 'Alie', 'Kettlewell', '11/15/2022', '0000-00-00 00:00:00', 'Female'),
(776, 'Eachelle', 'Howieson', '4/27/2021', '0000-00-00 00:00:00', 'Female'),
(777, 'Cecilia', 'Brown', '06/01/2005', '0000-00-00 00:00:00', 'Female'),
(778, 'Cordie', 'Axtens', '1/21/2015', '0000-00-00 00:00:00', 'Male'),
(779, 'Kendrick', 'McCloughlin', '08/03/2002', '0000-00-00 00:00:00', 'Male'),
(780, 'Niles', 'Roston', '6/23/2007', '0000-00-00 00:00:00', 'Male'),
(781, 'Charleen', 'Orpyne', '06/05/2014', '0000-00-00 00:00:00', 'Female'),
(782, 'Anni', 'Bruggeman', '3/15/2020', '0000-00-00 00:00:00', 'Female'),
(783, 'Yalonda', 'Breakey', '6/17/2012', '0000-00-00 00:00:00', 'Female'),
(784, 'Robbi', 'Chagg', '11/21/2006', '0000-00-00 00:00:00', 'Female'),
(785, 'Erick', 'Gornall', '11/11/2014', '0000-00-00 00:00:00', 'Male'),
(786, 'Georgeanna', 'Yitzovitz', '12/21/2016', '0000-00-00 00:00:00', 'Female'),
(787, 'Tannie', 'Blazi', '02/07/2019', '0000-00-00 00:00:00', 'Male'),
(788, 'Damien', 'Balle', '3/15/2010', '0000-00-00 00:00:00', 'Male'),
(789, 'Waldon', 'Harbisher', '08/02/2014', '0000-00-00 00:00:00', 'Male'),
(790, 'Addison', 'Galier', '11/26/2011', '0000-00-00 00:00:00', 'Male'),
(791, 'Aurea', 'Byrch', '5/16/2000', '0000-00-00 00:00:00', 'Female'),
(792, 'Nanny', 'Greggor', '7/14/2007', '0000-00-00 00:00:00', 'Female'),
(793, 'Ottilie', 'Hansard', '8/28/2020', '0000-00-00 00:00:00', 'Female'),
(794, 'Nani', 'Dimmne', '08/06/2000', '0000-00-00 00:00:00', 'Female'),
(795, 'Bear', 'Oosthout de Vree', '02/01/2004', '0000-00-00 00:00:00', 'Male'),
(796, 'Beniamino', 'Labadini', '3/14/2016', '0000-00-00 00:00:00', 'Male'),
(797, 'Horton', 'Klossmann', '4/28/2015', '0000-00-00 00:00:00', 'Male'),
(798, 'Allis', 'Woodrough', '12/23/2016', '0000-00-00 00:00:00', 'Female'),
(799, 'Prudy', 'Buttwell', '9/30/2013', '0000-00-00 00:00:00', 'Female'),
(800, 'Obadiah', 'Morrallee', '5/19/2019', '0000-00-00 00:00:00', 'Male'),
(801, 'Anthea', 'Grundwater', '8/16/2004', '0000-00-00 00:00:00', 'Female'),
(802, 'Olenolin', 'Yglesias', '12/10/2008', '0000-00-00 00:00:00', 'Male'),
(803, 'Wesley', 'Brasted', '11/01/2021', '0000-00-00 00:00:00', 'Male'),
(804, 'Bernardo', 'Wint', '3/20/2013', '0000-00-00 00:00:00', 'Male'),
(805, 'Dick', 'Christie', '1/22/2008', '0000-00-00 00:00:00', 'Male'),
(806, 'Joyous', 'Paslow', '04/03/2006', '0000-00-00 00:00:00', 'Female'),
(807, 'Timoteo', 'Eldin', '3/15/2001', '0000-00-00 00:00:00', 'Male'),
(808, 'Laure', 'Sikorski', '5/14/2004', '0000-00-00 00:00:00', 'Female'),
(809, 'Nealy', 'Normanvill', '07/12/2003', '0000-00-00 00:00:00', 'Male'),
(810, 'Odie', 'Pearne', '9/30/2012', '0000-00-00 00:00:00', 'Male'),
(811, 'Georgeta', 'Betton', '7/30/2008', '0000-00-00 00:00:00', 'Female'),
(812, 'Natale', 'Cheatle', '8/25/2016', '0000-00-00 00:00:00', 'Male'),
(813, 'Burnard', 'Dursley', '09/09/2013', '0000-00-00 00:00:00', 'Male'),
(814, 'Lucius', 'Piatkowski', '11/19/2005', '0000-00-00 00:00:00', 'Male'),
(815, 'Ingunna', 'Barthod', '6/17/2020', '0000-00-00 00:00:00', 'Female'),
(816, 'Maure', 'Vaugham', '12/07/2020', '0000-00-00 00:00:00', 'Female'),
(817, 'Viki', 'Boles', '02/07/2005', '0000-00-00 00:00:00', 'Female'),
(818, 'Darrick', 'Lucien', '10/16/2005', '0000-00-00 00:00:00', 'Male'),
(819, 'Stern', 'Erie', '8/24/2020', '0000-00-00 00:00:00', 'Male'),
(820, 'Davidson', 'Turmall', '11/12/2016', '0000-00-00 00:00:00', 'Male'),
(821, 'Charyl', 'Freckingham', '3/31/2017', '0000-00-00 00:00:00', 'Female'),
(822, 'Thedrick', 'Twelvetrees', '01/06/2023', '0000-00-00 00:00:00', 'Male'),
(823, 'Paloma', 'Pennycuick', '08/11/2004', '0000-00-00 00:00:00', 'Female'),
(824, 'Minnie', 'Towell', '3/16/2017', '0000-00-00 00:00:00', 'Female'),
(825, 'Stephen', 'MacNally', '5/14/2008', '0000-00-00 00:00:00', 'Male'),
(826, 'Dominique', 'Varty', '6/14/2015', '0000-00-00 00:00:00', 'Male'),
(827, 'Finlay', 'Ibell', '1/29/2009', '0000-00-00 00:00:00', 'Male'),
(828, 'Gisele', 'Keele', '9/25/2012', '0000-00-00 00:00:00', 'Female'),
(829, 'Brooks', 'Lamping', '11/19/2012', '0000-00-00 00:00:00', 'Female'),
(830, 'Dena', 'Kitter', '1/25/2019', '0000-00-00 00:00:00', 'Female'),
(831, 'Ives', 'Marvelley', '01/07/2014', '0000-00-00 00:00:00', 'Male'),
(832, 'Talia', 'Arundel', '12/25/2014', '0000-00-00 00:00:00', 'Female'),
(833, 'Jessi', 'Maple', '8/22/2020', '0000-00-00 00:00:00', 'Female'),
(834, 'Warner', 'Dowe', '7/15/2004', '0000-00-00 00:00:00', 'Male'),
(835, 'Anitra', 'Cranke', '9/18/2003', '0000-00-00 00:00:00', 'Female'),
(836, 'Amberly', 'Germon', '07/12/2006', '0000-00-00 00:00:00', 'Female'),
(837, 'Gordie', 'Cranson', '12/30/2015', '0000-00-00 00:00:00', 'Male'),
(838, 'Dody', 'Hun', '02/06/2003', '0000-00-00 00:00:00', 'Female'),
(839, 'Wald', 'McAllen', '07/05/2005', '0000-00-00 00:00:00', 'Male'),
(840, 'Cynthea', 'Menichelli', '05/09/2010', '0000-00-00 00:00:00', 'Female'),
(841, 'Zachary', 'Pagnin', '04/06/2004', '0000-00-00 00:00:00', 'Male'),
(842, 'Phineas', 'Rickert', '7/23/2013', '0000-00-00 00:00:00', 'Male'),
(843, 'Joaquin', 'Headford', '7/24/2012', '0000-00-00 00:00:00', 'Male'),
(844, 'Abie', 'Baudains', '3/26/2022', '0000-00-00 00:00:00', 'Male'),
(845, 'Gay', 'Cowderay', '06/01/2000', '0000-00-00 00:00:00', 'Male'),
(846, 'Boot', 'MacBey', '9/20/2018', '0000-00-00 00:00:00', 'Male'),
(847, 'Melisa', 'Capineer', '5/24/2022', '0000-00-00 00:00:00', 'Female'),
(848, 'Courtnay', 'Orman', '1/29/2004', '0000-00-00 00:00:00', 'Male'),
(849, 'Broddie', 'Covely', '1/13/2012', '0000-00-00 00:00:00', 'Male'),
(850, 'Clyve', 'Hofler', '2/18/2008', '0000-00-00 00:00:00', 'Male'),
(851, 'Leta', 'Twidale', '10/27/2016', '0000-00-00 00:00:00', 'Female'),
(852, 'Robby', 'Innerstone', '11/08/2004', '0000-00-00 00:00:00', 'Female'),
(853, 'Fenelia', 'Anelay', '7/28/2015', '0000-00-00 00:00:00', 'Female'),
(854, 'Gunilla', 'Southwood', '3/27/2006', '0000-00-00 00:00:00', 'Female'),
(855, 'Emanuel', 'Chown', '7/28/2008', '0000-00-00 00:00:00', 'Male'),
(856, 'Bryn', 'Horsted', '10/19/2013', '0000-00-00 00:00:00', 'Female'),
(857, 'Antonietta', 'Mapson', '8/17/2012', '0000-00-00 00:00:00', 'Female'),
(858, 'Esra', 'Neggrini', '11/26/2011', '0000-00-00 00:00:00', 'Male'),
(859, 'Wilton', 'Bothbie', '02/12/2017', '0000-00-00 00:00:00', 'Male'),
(860, 'Issi', 'Tither', '8/24/2016', '0000-00-00 00:00:00', 'Female'),
(861, 'Lucio', 'Attiwill', '08/11/2003', '0000-00-00 00:00:00', 'Male'),
(862, 'Jamil', 'Leadbeatter', '12/03/2012', '0000-00-00 00:00:00', 'Male'),
(863, 'Carolyne', 'Skate', '11/27/2016', '0000-00-00 00:00:00', 'Female'),
(864, 'Laurence', 'Ruppel', '2/16/2012', '0000-00-00 00:00:00', 'Male'),
(865, 'Eugine', 'Carless', '1/26/2018', '0000-00-00 00:00:00', 'Female'),
(866, 'Hussein', 'Adami', '04/11/2005', '0000-00-00 00:00:00', 'Male'),
(867, 'Sharline', 'Hixley', '9/13/2014', '0000-00-00 00:00:00', 'Female'),
(868, 'Judon', 'Anlay', '6/21/2003', '0000-00-00 00:00:00', 'Male'),
(869, 'Baillie', 'Ferrino', '8/20/2018', '0000-00-00 00:00:00', 'Male'),
(870, 'Lynnell', 'Shewring', '4/19/2021', '0000-00-00 00:00:00', 'Female'),
(871, 'Kori', 'Children', '7/23/2005', '0000-00-00 00:00:00', 'Female'),
(872, 'Matthieu', 'Fick', '7/17/2015', '0000-00-00 00:00:00', 'Male'),
(873, 'Feodora', 'Sandeland', '1/13/2011', '0000-00-00 00:00:00', 'Female'),
(874, 'Ara', 'Herreros', '10/30/2000', '0000-00-00 00:00:00', 'Male'),
(875, 'Ariel', 'Manger', '7/21/2006', '0000-00-00 00:00:00', 'Male'),
(876, 'Rheba', 'Block', '12/21/2006', '0000-00-00 00:00:00', 'Female'),
(877, 'Serene', 'Kleinlerer', '5/18/2003', '0000-00-00 00:00:00', 'Female'),
(878, 'Inglebert', 'Bish', '11/21/2021', '0000-00-00 00:00:00', 'Male'),
(879, 'Lisabeth', 'Shinn', '8/24/2021', '0000-00-00 00:00:00', 'Female'),
(880, 'Rozanna', 'Paniman', '9/20/2003', '0000-00-00 00:00:00', 'Female'),
(881, 'Ephraim', 'Common', '12/02/2002', '0000-00-00 00:00:00', 'Male'),
(882, 'Minda', 'O\' Donohue', '7/23/2021', '0000-00-00 00:00:00', 'Female'),
(883, 'Irita', 'Withur', '12/25/2016', '0000-00-00 00:00:00', 'Female'),
(884, 'Mozes', 'Aukland', '05/01/2012', '0000-00-00 00:00:00', 'Male'),
(885, 'Ganny', 'Nijs', '12/12/2005', '0000-00-00 00:00:00', 'Male'),
(886, 'Forrest', 'Yerborn', '11/05/2015', '0000-00-00 00:00:00', 'Male'),
(887, 'Francklin', 'Esome', '5/25/2013', '0000-00-00 00:00:00', 'Male'),
(888, 'Rudd', 'Naptin', '12/06/2002', '0000-00-00 00:00:00', 'Male'),
(889, 'Elmira', 'Hallgalley', '03/07/2022', '0000-00-00 00:00:00', 'Female'),
(890, 'Wain', 'Gabby', '8/14/2008', '0000-00-00 00:00:00', 'Male'),
(891, 'Jackson', 'Cuerdall', '12/16/2009', '0000-00-00 00:00:00', 'Male'),
(892, 'Rodrique', 'Fulton', '8/13/2008', '0000-00-00 00:00:00', 'Male'),
(893, 'Iormina', 'Chable', '04/07/2004', '0000-00-00 00:00:00', 'Female'),
(894, 'Sim', 'Dresche', '01/01/2011', '0000-00-00 00:00:00', 'Male'),
(895, 'Meris', 'Janiszewski', '01/09/2011', '0000-00-00 00:00:00', 'Female'),
(896, 'Nanon', 'Haresign', '8/21/2005', '0000-00-00 00:00:00', 'Female'),
(897, 'Lothario', 'Ioselev', '2/18/2010', '0000-00-00 00:00:00', 'Male'),
(898, 'Cher', 'Videneev', '9/16/2022', '0000-00-00 00:00:00', 'Female'),
(899, 'Miquela', 'Haddock', '10/06/2003', '0000-00-00 00:00:00', 'Female'),
(900, 'Wileen', 'Yeowell', '1/30/2018', '0000-00-00 00:00:00', 'Female'),
(901, 'Joana', 'Kearsley', '3/17/2022', '0000-00-00 00:00:00', 'Female'),
(902, 'Robin', 'Braund', '05/01/2010', '0000-00-00 00:00:00', 'Male'),
(903, 'Dael', 'Cheesman', '03/03/2007', '0000-00-00 00:00:00', 'Male'),
(904, 'Morris', 'Pruckner', '03/07/2002', '0000-00-00 00:00:00', 'Male'),
(905, 'Vanda', 'Rawsthorne', '1/14/2006', '0000-00-00 00:00:00', 'Female'),
(906, 'Fayette', 'Tankus', '05/09/2009', '0000-00-00 00:00:00', 'Female'),
(907, 'Guinna', 'Pusey', '09/11/2009', '0000-00-00 00:00:00', 'Female'),
(908, 'Angel', 'Titcomb', '6/20/2001', '0000-00-00 00:00:00', 'Female'),
(909, 'Archy', 'Andrzejak', '6/27/2004', '0000-00-00 00:00:00', 'Male'),
(910, 'Godart', 'Faircliff', '5/27/2018', '0000-00-00 00:00:00', 'Male'),
(911, 'Spence', 'Physick', '11/03/2007', '0000-00-00 00:00:00', 'Male'),
(912, 'Portia', 'Norkutt', '07/09/2008', '0000-00-00 00:00:00', 'Female'),
(913, 'Carmel', 'Oty', '4/25/2016', '0000-00-00 00:00:00', 'Female'),
(914, 'Jae', 'Durrand', '6/16/2005', '0000-00-00 00:00:00', 'Male'),
(915, 'Jacquenette', 'Espinoy', '11/11/2003', '0000-00-00 00:00:00', 'Female'),
(916, 'Tomaso', 'Klassmann', '10/20/2016', '0000-00-00 00:00:00', 'Male'),
(917, 'Miran', 'Morstatt', '2/13/2012', '0000-00-00 00:00:00', 'Female'),
(918, 'Zaria', 'Plewes', '8/21/2005', '0000-00-00 00:00:00', 'Female'),
(919, 'Barby', 'Stone', '7/29/2013', '0000-00-00 00:00:00', 'Female'),
(920, 'Westbrooke', 'MacLise', '01/08/2015', '0000-00-00 00:00:00', 'Male'),
(921, 'Mellie', 'Evenett', '10/15/2017', '0000-00-00 00:00:00', 'Female'),
(922, 'Yehudit', 'Lambourne', '6/30/2020', '0000-00-00 00:00:00', 'Male'),
(923, 'Kendal', 'Maypother', '1/22/2007', '0000-00-00 00:00:00', 'Male'),
(924, 'Rockie', 'Brech', '01/06/2012', '0000-00-00 00:00:00', 'Male'),
(925, 'Kitty', 'Logsdail', '10/03/2020', '0000-00-00 00:00:00', 'Female'),
(926, 'Enrika', 'Beever', '10/16/2020', '0000-00-00 00:00:00', 'Female'),
(927, 'Darrel', 'Arden', '07/05/2008', '0000-00-00 00:00:00', 'Male'),
(928, 'Regan', 'Pimlock', '10/22/2013', '0000-00-00 00:00:00', 'Male'),
(929, 'Eddie', 'Parram', '10/26/2005', '0000-00-00 00:00:00', 'Female'),
(930, 'Tan', 'Piggott', '05/03/2018', '0000-00-00 00:00:00', 'Male'),
(931, 'Inga', 'Figger', '06/05/2008', '0000-00-00 00:00:00', 'Female'),
(932, 'Celesta', 'Billinge', '12/24/2006', '0000-00-00 00:00:00', 'Female'),
(933, 'Nataniel', 'Caser', '2/23/2004', '0000-00-00 00:00:00', 'Male'),
(934, 'Allys', 'Deverall', '2/15/2002', '0000-00-00 00:00:00', 'Female'),
(935, 'Michel', 'Battams', '4/14/2021', '0000-00-00 00:00:00', 'Male'),
(936, 'Nye', 'Gonnel', '06/11/2003', '0000-00-00 00:00:00', 'Male'),
(937, 'Elihu', 'Boncoeur', '09/07/2021', '0000-00-00 00:00:00', 'Male'),
(938, 'Gerhardine', 'Clohisey', '1/18/2009', '0000-00-00 00:00:00', 'Female'),
(939, 'Artur', 'Cheeld', '8/26/2015', '0000-00-00 00:00:00', 'Male'),
(940, 'Ellynn', 'Banfill', '8/31/2011', '0000-00-00 00:00:00', 'Female'),
(941, 'Rustie', 'Wortman', '5/22/2009', '0000-00-00 00:00:00', 'Male'),
(942, 'Kaia', 'Hoyland', '04/04/2008', '0000-00-00 00:00:00', 'Female'),
(943, 'Diannne', 'Thatcher', '3/15/2010', '0000-00-00 00:00:00', 'Female'),
(944, 'Dolorita', 'Demead', '02/06/2013', '0000-00-00 00:00:00', 'Female'),
(945, 'Scott', 'Petz', '09/08/2005', '0000-00-00 00:00:00', 'Male'),
(946, 'Urbain', 'Girone', '07/07/2010', '0000-00-00 00:00:00', 'Male'),
(947, 'Cammi', 'Raiman', '12/01/2011', '0000-00-00 00:00:00', 'Female'),
(948, 'Viola', 'Ivanchov', '12/23/2006', '0000-00-00 00:00:00', 'Female'),
(949, 'Aharon', 'McVee', '08/06/2007', '0000-00-00 00:00:00', 'Male'),
(950, 'Moyna', 'Lansly', '11/21/2004', '0000-00-00 00:00:00', 'Female'),
(951, 'Laetitia', 'Matiewe', '1/23/2012', '0000-00-00 00:00:00', 'Female'),
(952, 'Onfre', 'Blazhevich', '05/07/2003', '0000-00-00 00:00:00', 'Male'),
(953, 'Caldwell', 'McAless', '02/09/2023', '0000-00-00 00:00:00', 'Male'),
(954, 'Drucill', 'Godin', '07/08/2010', '0000-00-00 00:00:00', 'Female'),
(955, 'Cecile', 'Dameisele', '01/11/2018', '0000-00-00 00:00:00', 'Female'),
(956, 'Alphard', 'Westnage', '10/28/2006', '0000-00-00 00:00:00', 'Male'),
(957, 'Briana', 'Sarsons', '3/19/2006', '0000-00-00 00:00:00', 'Female'),
(958, 'Marion', 'Mapplebeck', '12/22/2000', '0000-00-00 00:00:00', 'Male'),
(959, 'Nicolina', 'Odgaard', '8/15/2010', '0000-00-00 00:00:00', 'Female'),
(960, 'Angel', 'Ramet', '07/04/2017', '0000-00-00 00:00:00', 'Male'),
(961, 'Erinn', 'Kirkman', '12/08/2017', '0000-00-00 00:00:00', 'Female'),
(962, 'Tab', 'Moreno', '8/14/2017', '0000-00-00 00:00:00', 'Male'),
(963, 'Othilie', 'Rudolph', '02/10/2016', '0000-00-00 00:00:00', 'Female'),
(964, 'Shelton', 'Arnoud', '12/14/2013', '0000-00-00 00:00:00', 'Male'),
(965, 'Camilla', 'Aikman', '03/01/2018', '0000-00-00 00:00:00', 'Female'),
(966, 'Barnabas', 'Hagyard', '07/04/2003', '0000-00-00 00:00:00', 'Male'),
(967, 'Caryl', 'Kenen', '06/08/2008', '0000-00-00 00:00:00', 'Male'),
(968, 'Bowie', 'Yansons', '02/02/2011', '0000-00-00 00:00:00', 'Male'),
(969, 'Jerry', 'Spink', '06/04/2006', '0000-00-00 00:00:00', 'Male'),
(970, 'Linn', 'Kobes', '11/23/2020', '0000-00-00 00:00:00', 'Female'),
(971, 'Amandy', 'Itschakov', '05/08/2009', '0000-00-00 00:00:00', 'Female'),
(972, 'Chiarra', 'Spreull', '10/16/2012', '0000-00-00 00:00:00', 'Female'),
(973, 'Margeaux', 'Emlen', '9/20/2004', '0000-00-00 00:00:00', 'Female'),
(974, 'Gabriela', 'Ledwich', '3/14/2002', '0000-00-00 00:00:00', 'Female'),
(975, 'Dedra', 'Blaw', '09/12/2019', '0000-00-00 00:00:00', 'Female'),
(976, 'Lind', 'Bennetts', '06/08/2018', '0000-00-00 00:00:00', 'Male'),
(977, 'Graham', 'Darwent', '10/11/2014', '0000-00-00 00:00:00', 'Male'),
(978, 'Isidore', 'Bendan', '12/23/2016', '0000-00-00 00:00:00', 'Male'),
(979, 'Charlton', 'Chaunce', '10/10/2011', '0000-00-00 00:00:00', 'Male'),
(980, 'Leontyne', 'Jovicevic', '12/11/2019', '0000-00-00 00:00:00', 'Female'),
(981, 'Opaline', 'Strut', '02/01/2006', '0000-00-00 00:00:00', 'Female'),
(982, 'Lilyan', 'Duiguid', '5/19/2006', '0000-00-00 00:00:00', 'Female'),
(983, 'Krissie', 'Nappin', '10/20/2000', '0000-00-00 00:00:00', 'Female'),
(984, 'Falito', 'Sterndale', '12/05/2006', '0000-00-00 00:00:00', 'Male'),
(985, 'Kailey', 'Loveland', '12/03/2009', '0000-00-00 00:00:00', 'Female'),
(986, 'Elmo', 'Lamport', '6/21/2009', '0000-00-00 00:00:00', 'Male'),
(987, 'Joel', 'Hadcroft', '7/22/2006', '0000-00-00 00:00:00', 'Male'),
(988, 'Augusto', 'Freegard', '9/15/2022', '0000-00-00 00:00:00', 'Male'),
(989, 'Shurlocke', 'Devaney', '02/05/2019', '0000-00-00 00:00:00', 'Male'),
(990, 'Lind', 'Stroband', '04/03/2009', '0000-00-00 00:00:00', 'Male'),
(991, 'Alleyn', 'Serot', '5/15/2003', '0000-00-00 00:00:00', 'Male'),
(992, 'Jaquenetta', 'Espley', '2/26/2006', '0000-00-00 00:00:00', 'Female'),
(993, 'Morse', 'Richardon', '11/12/2021', '0000-00-00 00:00:00', 'Male'),
(994, 'Pall', 'Ashingden', '7/19/2009', '0000-00-00 00:00:00', 'Male'),
(995, 'Curtis', 'Luxmoore', '12/28/2016', '0000-00-00 00:00:00', 'Male'),
(996, 'Francisca', 'Theuss', '10/18/2015', '0000-00-00 00:00:00', 'Female'),
(997, 'Cecilius', 'Dincey', '6/17/2013', '0000-00-00 00:00:00', 'Male'),
(998, 'Cassius', 'Wisby', '09/05/2012', '0000-00-00 00:00:00', 'Male'),
(999, 'Devon', 'Laimable', '12/16/2011', '0000-00-00 00:00:00', 'Female'),
(1000, 'Kayce', 'Erdes', '7/20/2021', '0000-00-00 00:00:00', 'Female');

-- --------------------------------------------------------

--
-- Table structure for table `student_users`
--

CREATE TABLE `student_users` (
  `ID` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `access` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_users`
--

INSERT INTO `student_users` (`ID`, `username`, `password`, `access`) VALUES
(1, 'admin', 'admin123', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `student_list`
--
ALTER TABLE `student_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_users`
--
ALTER TABLE `student_users`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `student_list`
--
ALTER TABLE `student_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1001;

--
-- AUTO_INCREMENT for table `student_users`
--
ALTER TABLE `student_users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `svci_reg`
--
CREATE DATABASE IF NOT EXISTS `svci_reg` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `svci_reg`;

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `table_record_id` int(11) NOT NULL,
  `full_name` text DEFAULT NULL,
  `office_address` text DEFAULT NULL,
  `possition` text DEFAULT NULL,
  `type` text DEFAULT NULL,
  `image_path` text DEFAULT NULL,
  `print_status` int(11) NOT NULL DEFAULT 0,
  `selected` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`table_record_id`, `full_name`, `office_address`, `possition`, `type`, `image_path`, `print_status`, `selected`) VALUES
(1, 'MARLU CAERMARE', 'Senior Developer', 'Dipolog City Water District', 'Delegate', '/image/registration/1235639267_MARLU CAERMARE.PNG', 0, 0),
(2, 'OCIBYS L. SYBICO', 'BSIT-IV', 'SVCI', 'Guest', '/image/registration/1022573572_OCIBYS L. SYBICO.PNG', 1, 0),
(3, 'CHANDLER', '', '', '', '/image/registration/1634397297_CHANDLER.PNG', 1, 0),
(4, 'YUYE', 'BSIT', 'CSFJ', 'Guest', '/image/registration/1486025057_YUYE.PNG', 1, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`table_record_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `table_record_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
