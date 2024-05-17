-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 17, 2024 at 04:12 PM
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
-- Database: `college management database`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `book_id` int(11) NOT NULL,
  `book_name` varchar(30) DEFAULT NULL,
  `athr_name` varchar(30) DEFAULT NULL,
  `book_brn_id` int(11) DEFAULT NULL,
  `book_price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`book_id`, `book_name`, `athr_name`, `book_brn_id`, `book_price`) VALUES
(11, 'Basics Of Science', 'George.c', 1001, 455),
(12, 'Basics Of Maths', 'Hadhway Rome', 1002, 657),
(13, 'Algebra 101', 'Katty Holmes', 1002, 345),
(14, 'Stars And Moons', 'Marty & Josh', 1001, 999),
(15, 'C++ All In One', 'Jason.y', 1003, 867),
(16, 'Python For DS', 'Jose.Port', 1003, 567);

-- --------------------------------------------------------

--
-- Table structure for table `books_info`
--

CREATE TABLE `books_info` (
  `book_id` int(11) NOT NULL,
  `book_name` varchar(30) DEFAULT NULL,
  `athr_name` varchar(30) DEFAULT NULL,
  `book_brn_id` int(11) DEFAULT NULL,
  `book_price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `brn_id` int(11) NOT NULL,
  `brn_name` varchar(20) DEFAULT NULL,
  `brn_ctg` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`brn_id`, `brn_name`, `brn_ctg`) VALUES
(1001, 'Heisengton', 'Science'),
(1002, 'JumbleNumbers', 'Mathematics'),
(1003, 'HelloWorld', 'IT');

-- --------------------------------------------------------

--
-- Table structure for table `issues`
--

CREATE TABLE `issues` (
  `isu_id` int(11) DEFAULT NULL,
  `isu_date` date DEFAULT NULL,
  `isu_book_id` int(11) DEFAULT NULL,
  `isu_stu_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `issues`
--

INSERT INTO `issues` (`isu_id`, `isu_date`, `isu_book_id`, `isu_stu_id`) VALUES
(1, '2021-11-13', 12, 913),
(2, '2021-12-04', 16, 917),
(3, '2022-01-18', 11, 915),
(4, '2022-01-02', 15, 911),
(5, '2021-09-26', 13, 919);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `lgn_id` int(11) NOT NULL,
  `lgn_usr_id` int(11) DEFAULT NULL,
  `lgn_usr_name` varchar(20) DEFAULT NULL,
  `lgn_pass` varchar(18) DEFAULT NULL,
  `lgn_role_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`lgn_id`, `lgn_usr_id`, `lgn_usr_name`, `lgn_pass`, `lgn_role_id`) VALUES
(711, 101, 'Jaden Clark', '4836792', 10102),
(712, 102, 'Olive Yew', '6385647', 10101),
(713, 103, 'Peg Legge', '9364753', 10102),
(714, 104, 'Anne Ortha', '9361735', 10103),
(715, 105, 'Ruby Bartlett', '9163728', 10103),
(716, 106, 'May Day', '3548679', 10103),
(717, 107, 'Tiffany Case', '7548124', 10102),
(718, 108, 'Vilma Jarvi', '8574963', 10103),
(719, 109, 'Regan Rosen', '3748254', 10103),
(720, 110, 'Laura Charling', '8354610', 10102);

-- --------------------------------------------------------

--
-- Table structure for table `permission`
--

CREATE TABLE `permission` (
  `pr_id` int(11) NOT NULL,
  `pr_name` varchar(15) DEFAULT NULL,
  `pr_rol_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `permission`
--

INSERT INTO `permission` (`pr_id`, `pr_name`, `pr_rol_id`) VALUES
(151, 'Total Control', 10101),
(152, 'Partial Control', 10102),
(153, 'No Alterations', 10103),
(154, 'Limited View', 10104);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `rol_id` int(11) NOT NULL,
  `rol_name` varchar(15) DEFAULT NULL,
  `rol_lvl` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`rol_id`, `rol_name`, `rol_lvl`) VALUES
(10101, 'DB_Admin', '4'),
(10102, 'Teacher', '3'),
(10103, 'Guest', '2'),
(10104, 'Viewer', '1');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `stu_id` int(11) NOT NULL,
  `stu_name` varchar(30) DEFAULT NULL,
  `stu_ph_no` int(11) DEFAULT NULL,
  `stu_email` varchar(30) DEFAULT NULL,
  `stu_dob` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`stu_id`, `stu_name`, `stu_ph_no`, `stu_email`, `stu_dob`) VALUES
(911, 'Bennett Johns', 7394658, 'Bennetttt6748@gmail.com', '1994-09-03'),
(912, 'Immanuel Collier', 5936827, 'collierIma674@gmail.com', '1993-05-08'),
(913, 'Dayton Luettgen', 9564836, 'LueDay3841@gmail.com', '1998-07-13'),
(914, 'Courtney Reinger', 8375663, 'Reignthe43@gmail.com', '2000-05-07'),
(915, 'Retta Hammes', 6492657, 'RettaSamuela45@gmail.com', '1998-02-03'),
(916, 'Monte Haley', 8573543, 'Monteray564@gmail.com', '1999-07-21'),
(917, 'Ryann Franecki', 1637429, 'ryanben786654@gmail.com', '2000-05-08'),
(918, 'Shayne Denesik', 5471257, 'uthSha4@gmail.com', '2001-11-05'),
(919, 'Skylar Grady', 9687452, 'Skylaryou5t@gmail.com', '1997-09-19'),
(920, 'Idell Franecki', 7365841, 'itsmeIdeLL4@gmail.com', '1999-02-01');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `usr_id` int(11) NOT NULL,
  `usr_name` varchar(30) DEFAULT NULL,
  `usr_ph_no` int(11) DEFAULT NULL,
  `usr_email` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`usr_id`, `usr_name`, `usr_ph_no`, `usr_email`) VALUES
(101, 'Jaden Clark', 4836792, 'Jaden342@gmail.com'),
(102, 'Olive Yew', 6385647, 'olivia7758l@gmail.com'),
(103, 'Peg Legge', 9364753, 'peghary45@gmail.com'),
(104, 'Anne Ortha', 9361735, 'anneA783@gmail.com'),
(105, 'Ruby Bartlett', 9163728, 'yiktLaura78@gmail.com'),
(106, 'May Day', 3548679, 'Davis889@gmail.com'),
(107, 'Tiffany Case', 7548124, 'Tiffanycase34@gmail.com'),
(108, 'Vilma Jarvi', 8574963, 'mygmailVimla@gmail.com'),
(109, 'Regan Rosen', 3748254, 'Rosenthybe54@gmail.com'),
(110, 'Laura Charling', 8354610, 'Laura6835CH@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `usr_id` int(11) NOT NULL,
  `usr_name` varchar(30) DEFAULT NULL,
  `usr_ph_no` int(11) DEFAULT NULL,
  `usr_email` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`usr_id`, `usr_name`, `usr_ph_no`, `usr_email`) VALUES
(101, 'Jaden Clark', 4836792, 'Jaden342@gmail.com'),
(102, 'Olive Yew', 6385647, 'olivia7758l@gmail.com'),
(103, 'Peg Legge', 9364753, 'peghary45@gmail.com'),
(104, 'Anne Ortha', 9361735, 'anneA783@gmail.com'),
(105, 'Ruby Bartlett', 9163728, 'yiktLaura78@gmail.com'),
(106, 'May Day', 3548679, 'Davis889@gmail.com'),
(107, 'Tiffany Case', 7548124, 'Tiffanycase34@gmail.com'),
(108, 'Vilma Jarvi', 8574963, 'mygmailVimla@gmail.com'),
(109, 'Regan Rosen', 3748254, 'Rosenthybe54@gmail.com'),
(110, 'Laura Charling', 8354610, 'Laura6835CH@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`book_id`),
  ADD KEY `book_brn_id` (`book_brn_id`);

--
-- Indexes for table `books_info`
--
ALTER TABLE `books_info`
  ADD PRIMARY KEY (`book_id`),
  ADD KEY `book_brn_id` (`book_brn_id`);

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`brn_id`);

--
-- Indexes for table `issues`
--
ALTER TABLE `issues`
  ADD UNIQUE KEY `isu_id` (`isu_id`),
  ADD KEY `isu_book_id` (`isu_book_id`),
  ADD KEY `isu_stu_id` (`isu_stu_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD UNIQUE KEY `lgn_id` (`lgn_id`),
  ADD KEY `lgn_role_id` (`lgn_role_id`),
  ADD KEY `lgn_usr_id` (`lgn_usr_id`);

--
-- Indexes for table `permission`
--
ALTER TABLE `permission`
  ADD UNIQUE KEY `pr_id` (`pr_id`),
  ADD KEY `pr_rol_id` (`pr_rol_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`rol_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`stu_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`usr_id`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`usr_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_ibfk_1` FOREIGN KEY (`book_brn_id`) REFERENCES `branch` (`brn_id`) ON DELETE SET NULL,
  ADD CONSTRAINT `books_ibfk_2` FOREIGN KEY (`book_brn_id`) REFERENCES `branch` (`brn_id`) ON DELETE SET NULL,
  ADD CONSTRAINT `books_ibfk_3` FOREIGN KEY (`book_brn_id`) REFERENCES `branch` (`brn_id`) ON DELETE SET NULL;

--
-- Constraints for table `books_info`
--
ALTER TABLE `books_info`
  ADD CONSTRAINT `books_info_ibfk_1` FOREIGN KEY (`book_brn_id`) REFERENCES `branch` (`brn_id`) ON DELETE SET NULL,
  ADD CONSTRAINT `books_info_ibfk_2` FOREIGN KEY (`book_brn_id`) REFERENCES `branch` (`brn_id`) ON DELETE SET NULL;

--
-- Constraints for table `issues`
--
ALTER TABLE `issues`
  ADD CONSTRAINT `issues_ibfk_1` FOREIGN KEY (`isu_book_id`) REFERENCES `books` (`book_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `issues_ibfk_2` FOREIGN KEY (`isu_stu_id`) REFERENCES `student` (`stu_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `issues_ibfk_3` FOREIGN KEY (`isu_book_id`) REFERENCES `books` (`book_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `issues_ibfk_4` FOREIGN KEY (`isu_stu_id`) REFERENCES `student` (`stu_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `issues_ibfk_5` FOREIGN KEY (`isu_book_id`) REFERENCES `books` (`book_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `issues_ibfk_6` FOREIGN KEY (`isu_stu_id`) REFERENCES `student` (`stu_id`) ON DELETE CASCADE;

--
-- Constraints for table `login`
--
ALTER TABLE `login`
  ADD CONSTRAINT `login_ibfk_1` FOREIGN KEY (`lgn_role_id`) REFERENCES `roles` (`rol_id`) ON DELETE SET NULL,
  ADD CONSTRAINT `login_ibfk_10` FOREIGN KEY (`lgn_usr_id`) REFERENCES `user` (`usr_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `login_ibfk_2` FOREIGN KEY (`lgn_usr_id`) REFERENCES `user` (`usr_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `login_ibfk_3` FOREIGN KEY (`lgn_role_id`) REFERENCES `roles` (`rol_id`) ON DELETE SET NULL,
  ADD CONSTRAINT `login_ibfk_4` FOREIGN KEY (`lgn_usr_id`) REFERENCES `user` (`usr_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `login_ibfk_5` FOREIGN KEY (`lgn_role_id`) REFERENCES `roles` (`rol_id`) ON DELETE SET NULL,
  ADD CONSTRAINT `login_ibfk_6` FOREIGN KEY (`lgn_usr_id`) REFERENCES `user` (`usr_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `login_ibfk_7` FOREIGN KEY (`lgn_role_id`) REFERENCES `roles` (`rol_id`) ON DELETE SET NULL,
  ADD CONSTRAINT `login_ibfk_8` FOREIGN KEY (`lgn_usr_id`) REFERENCES `user` (`usr_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `login_ibfk_9` FOREIGN KEY (`lgn_role_id`) REFERENCES `roles` (`rol_id`) ON DELETE SET NULL;

--
-- Constraints for table `permission`
--
ALTER TABLE `permission`
  ADD CONSTRAINT `permission_ibfk_1` FOREIGN KEY (`pr_rol_id`) REFERENCES `roles` (`rol_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_ibfk_2` FOREIGN KEY (`pr_rol_id`) REFERENCES `roles` (`rol_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_ibfk_3` FOREIGN KEY (`pr_rol_id`) REFERENCES `roles` (`rol_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_ibfk_4` FOREIGN KEY (`pr_rol_id`) REFERENCES `roles` (`rol_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_ibfk_5` FOREIGN KEY (`pr_rol_id`) REFERENCES `roles` (`rol_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
