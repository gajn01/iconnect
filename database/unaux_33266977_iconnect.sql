-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: sql304.unaux.com
-- Generation Time: Jan 02, 2023 at 02:45 AM
-- Server version: 10.3.27-MariaDB
-- PHP Version: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `unaux_33266977_iconnect`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_account`
--

CREATE TABLE `tbl_account` (
  `id` bigint(20) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_account`
--

INSERT INTO `tbl_account` (`id`, `username`, `password`, `created_at`, `updated_at`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '2022-12-17 08:26:16', '2022-12-20 07:23:14'),
(14, 'miguel', 'e10adc3949ba59abbe56e057f20f883e', '2022-12-20 05:19:18', '2022-12-31 08:16:46'),
(15, 'juan2', '81dc9bdb52d04dc20036dbd8313ed055', '2022-12-20 05:32:05', '2022-12-20 05:32:05'),
(16, 'mangubat', '827ccb0eea8a706c4c34a16891f84e7b', '2022-12-31 07:41:10', '2022-12-31 07:41:10'),
(17, 'Arjay', 'e10adc3949ba59abbe56e057f20f883e', '2023-01-02 06:53:00', '2023-01-02 06:53:00'),
(18, 'mendoza', '827ccb0eea8a706c4c34a16891f84e7b', '2023-01-02 07:02:56', '2023-01-02 07:02:56');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_account_admin`
--

CREATE TABLE `tbl_account_admin` (
  `id` bigint(20) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_account_admin`
--

INSERT INTO `tbl_account_admin` (`id`, `username`, `password`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_account_profile`
--

CREATE TABLE `tbl_account_profile` (
  `id` bigint(20) NOT NULL,
  `account_id` bigint(20) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `age` int(20) NOT NULL,
  `birthdate` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile_number` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `rank` varchar(255) NOT NULL,
  `school_id` bigint(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_account_profile`
--

INSERT INTO `tbl_account_profile` (`id`, `account_id`, `firstname`, `lastname`, `gender`, `age`, `birthdate`, `email`, `mobile_number`, `address`, `rank`, `school_id`, `created_at`, `update_at`, `status`) VALUES
(1, 14, 'Juan', 'Arcz', 'Female', 26, '1996-05-11', '0nameless5@gmail.com', '09989866854', '15h Guiho St.', 'Head Teacher 6', 9, '2022-12-20 05:19:18', '2022-12-31 14:38:18', 0),
(2, 15, 'Miguel', 'Aicrag', 'Male', 31, '1196-05-11', '0nameless5@gmail.com', '09989866854', '15h Guiho St.', 'Teacher 1', 10, '2022-12-20 05:32:05', '2022-12-31 09:26:08', 2),
(3, 16, 'leomar', 'mangubat', 'Male', 26, '1996-05-25', 'lmangubatmain@gmail.com', '09506437323', '1723 San antonio los banos laguna', 'Head Teacher 1', 11, '2022-12-31 07:41:10', '2022-12-31 07:55:57', 1),
(4, 17, 'Ricky John', 'Sanchez', 'Male', 23, '1999-08-18', 'rickyjohn081899@gmail.com', '09478415431', 'Villegas street brgy. Baybayin Los BaÃ±os Laguna', 'Head Teacher 1', 11, '2023-01-02 06:53:00', '2023-01-02 06:53:30', 1),
(5, 18, 'Romeo Gobriel ', 'Mendoza', 'Male', 22, '2000-03-02', 'romeogobrielmendoza@gmail.com', '09652772757', '0471 kanluran street bayog los banos laguna', 'Head Teacher 1', 11, '2023-01-02 07:02:56', '2023-01-02 07:03:29', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_module`
--

CREATE TABLE `tbl_module` (
  `id` bigint(20) NOT NULL,
  `teacher_id` bigint(20) NOT NULL,
  `subject_id` bigint(20) NOT NULL,
  `school_id` bigint(20) NOT NULL,
  `module_title` varchar(255) NOT NULL,
  `module_description` varchar(255) NOT NULL,
  `grade_level` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_module`
--

INSERT INTO `tbl_module` (`id`, `teacher_id`, `subject_id`, `school_id`, `module_title`, `module_description`, `grade_level`) VALUES
(1, 1, 3, 9, 'new module 1', 'new module 1', 'Grade 6'),
(2, 1, 3, 9, 'Science testing', 'Science testing', 'Grade 4'),
(3, 1, 2, 9, 'English 101', 'English 101 teachings', 'Grade 1'),
(4, 1, 3, 9, 'Science 102', 'Science 102', 'Grade 1'),
(7, 2, 3, 9, 'Science Teacher mo', 'Science Teacher mo', 'Grade 1'),
(11, 2, 3, 9, 'Science Teacher ko', 'Science Teacher ko', 'Grade 1'),
(12, 2, 3, 9, 'Sience 111', 'hahaha ehehhe', 'Grade 5'),
(17, 1, 1, 9, 'Math 101', 'Math 101', 'Grade 6'),
(19, 4, 1, 11, 'math', 'math', 'Grade 1'),
(20, 5, 2, 11, 'english', 'chart', 'Grade 1'),
(21, 3, 3, 11, 'Science', 'Pic\r\n', 'Grade 6');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_module_file`
--

CREATE TABLE `tbl_module_file` (
  `id` bigint(20) NOT NULL,
  `module_id` bigint(20) NOT NULL,
  `file_path` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_module_file`
--

INSERT INTO `tbl_module_file` (`id`, `module_id`, `file_path`) VALUES
(1, 1, 'Signed - HOME-BASED AGREEMENT.pdf'),
(2, 1, 'floky 2.jpg'),
(3, 1, 'BUKMI Express (complete description).jpg'),
(4, 3, 'floky 3.jpg'),
(5, 4, 'DELIVERY - BATCH1.pdf'),
(6, 5, 'cld-sample-5.jpg'),
(7, 6, 'Aug.pdf'),
(8, 13, 'Terms-and-Condition.txt'),
(9, 14, 'Terms-and-Condition.txt'),
(10, 15, 'TARP PAPEL.docx'),
(11, 16, 'TARP PAPEL.docx'),
(12, 17, 'Chart.jpeg'),
(13, 17, 'Terms-and-Condition (1).txt'),
(14, 16, 'TIDAHAN PRICING.docx'),
(15, 16, 'TIDAHAN PRICING.docx'),
(16, 18, 'Chart.jpeg'),
(17, 16, 'TIDAHAN PRICING.docx'),
(18, 16, 'TIDAHAN PRICING.docx'),
(20, 17, 'floky 2.jpg'),
(21, 19, 'CAPSTONE-PROJECT-CONTENT.docx'),
(22, 20, 'Chart.jpeg'),
(23, 21, 'received_473244444912884.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_school`
--

CREATE TABLE `tbl_school` (
  `id` bigint(20) NOT NULL,
  `school_name` varchar(255) NOT NULL,
  `school_address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_school`
--

INSERT INTO `tbl_school` (`id`, `school_name`, `school_address`) VALUES
(11, 'Bay Central Elementary school', 'laguna'),
(17, 'Laguna State Polytechnic  University ', 'Los Banos Laguna');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_subject`
--

CREATE TABLE `tbl_subject` (
  `id` bigint(20) NOT NULL,
  `subject_name` varchar(255) NOT NULL,
  `subject_description` varchar(255) NOT NULL,
  `is_editable` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_subject`
--

INSERT INTO `tbl_subject` (`id`, `subject_name`, `subject_description`, `is_editable`) VALUES
(1, 'Math', 'Mathematics is the science and study of quality, structure, space, and change. Mathematicians seek out patterns, formulate new conjectures, and establish truth by rigorous deduction from appropriately chosen axioms and definitions.', 0),
(2, 'English', 'English subjects shall help build up general language proficiency through listening, speaking, reading and writing, and provide the opportunity to acquire information and specialised knowledge through the English language. Development of communicative lan', 0),
(3, 'Science', 'Science is a universal subject that spans the branch of knowledge that examines the structure and behavior of the physical and natural world through observation and experiment. Science education is most commonly broken down into the following three fields', 0),
(4, 'Hekasi', 'Hekasi/Sibika curriculum incorporates lessons in Philippine history . However, the study of history should be more than just the memorization of facts such as important names, dates, places and events. Instead, the teaching of history should lead learners', 0),
(5, 'MAPEH', 'MAPEH is one of the subjects in Elementary education; it tackles about music, arts, physical education, and health. It helps students to easily discover and learn things about what they can get if they will enhance their potentials in MAPEH activities.', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_account`
--
ALTER TABLE `tbl_account`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_account_admin`
--
ALTER TABLE `tbl_account_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_account_profile`
--
ALTER TABLE `tbl_account_profile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `account_id` (`account_id`);

--
-- Indexes for table `tbl_module`
--
ALTER TABLE `tbl_module`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_module_file`
--
ALTER TABLE `tbl_module_file`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_school`
--
ALTER TABLE `tbl_school`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_subject`
--
ALTER TABLE `tbl_subject`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_account`
--
ALTER TABLE `tbl_account`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tbl_account_admin`
--
ALTER TABLE `tbl_account_admin`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_account_profile`
--
ALTER TABLE `tbl_account_profile`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_module`
--
ALTER TABLE `tbl_module`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbl_module_file`
--
ALTER TABLE `tbl_module_file`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tbl_school`
--
ALTER TABLE `tbl_school`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tbl_subject`
--
ALTER TABLE `tbl_subject`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
