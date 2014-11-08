-- phpMyAdmin SQL Dump
-- version 4.2.10.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 06, 2014 at 06:33 AM
-- Server version: 5.5.39-MariaDB
-- PHP Version: 5.5.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `Big_Test`
--

-- --------------------------------------------------------

--
-- Table structure for table `bb`
--

CREATE TABLE IF NOT EXISTS `bb` (
  `sr` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL DEFAULT '0',
  `br_name` varchar(20) DEFAULT NULL,
  `stud_name` varchar(20) DEFAULT NULL,
  `sub_name` varchar(20) DEFAULT NULL,
  `marks` int(5)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bb`
--

INSERT INTO `bb` (`sr`, `id`, `br_name`, `stud_name`, `sub_name`, `marks`) VALUES
(NULL, 1, 'computer', 'aaa', 'pcd', 11),
(NULL, 1, 'computer', 'aaa', 'pcd', 86),
(NULL, 1, 'computer', 'yyy', 'pcd', 11),
(NULL, 1, 'computer', 'yyy', 'pcd', 86),
(NULL, 1, 'computer', 'ddd', 'pcd', 11),
(NULL, 1, 'computer', 'ddd', 'pcd', 86),
(NULL, 1, 'computer', 'ggg', 'pcd', 11),
(NULL, 1, 'computer', 'ggg', 'pcd', 86),
(NULL, 1, 'computer', 'qqq', 'pcd', 11),
(NULL, 1, 'computer', 'qqq', 'pcd', 86),
(NULL, 2, 'it', 'bbb', 'daa', 50),
(NULL, 3, 'mech', 'ccc', 'sa', 65),
(NULL, 3, 'mech', 'eee', 'sa', 60),
(NULL, 3, 'mech', 'eee', 'sa', 65),
(NULL, 3, 'mech', 'ccc', 'sa', 55),
(NULL, 3, 'mech', 'eee', 'sa', 55),
(NULL, 3, 'mech', 'ccc', 'sa', 60),
(NULL, 4, 'production', 'fff', 'OOMD', 38),
(NULL, 5, 'Electrical', 'www', 'dsa', 47);

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE IF NOT EXISTS `branch` (
`id` int(11) NOT NULL,
  `name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`id`, `name`) VALUES
(1, 'computer'),
(2, 'it'),
(3, 'mech'),
(4, 'production'),
(5, 'Electrical');

-- --------------------------------------------------------

--
-- Stand-in structure for view `final`
--
CREATE TABLE IF NOT EXISTS `final` (
);
-- --------------------------------------------------------

--
-- Table structure for table `main`
--

CREATE TABLE IF NOT EXISTS `main` (
`sr_no` int(11) NOT NULL,
  `br_name` varchar(20) DEFAULT NULL,
  `sub_name` varchar(20) DEFAULT NULL,
  `stud_name` varchar(20) DEFAULT NULL,
  `marks` int(5) NOT NULL,
  `percentage` double NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `main`
--

INSERT INTO `main` (`sr_no`, `br_name`, `sub_name`, `stud_name`, `marks`, `percentage`) VALUES
(1, 'computer', 'pcd', 'aaa', 86, 86),
(2, 'it', 'daa', 'bbb', 50, 50),
(3, 'mech', 'sa', 'ccc', 60, 60),
(4, 'production', 'OOMD', 'ddd', 38, 76),
(5, 'Electrical', 'dsa', 'eee', 48, 96),
(6, 'mech', 'pcd', 'eee', 0, 0),
(7, 'computer', 'dsa', 'aaa', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `marks`
--

CREATE TABLE IF NOT EXISTS `marks` (
`id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `marks` int(5) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marks`
--

INSERT INTO `marks` (`id`, `subject_id`, `student_id`, `marks`) VALUES
(1, 1, 1, 86),
(2, 2, 3, 50),
(3, 3, 3, 60),
(4, 4, 3, 38),
(5, 6, 2, 48),
(6, 5, 1, 47),
(7, 1, 1, 11),
(8, 3, 1, 55),
(9, 3, 3, 65);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE IF NOT EXISTS `student` (
`id` int(11) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `branch_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `name`, `branch_id`) VALUES
(1, 'aaa', 1),
(2, 'bbb', 2),
(3, 'ccc', 3),
(4, 'ddd', 1),
(5, 'eee', 3),
(6, 'fff', 4),
(7, 'ggg', 1),
(8, 'www', 5),
(9, 'qqq', 1),
(10, 'yyy', 1);

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE IF NOT EXISTS `subject` (
`id` int(11) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `out_of` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`id`, `name`, `out_of`) VALUES
(1, 'pcd', 100),
(2, 'daa', 100),
(3, 'sa', 100),
(4, 'OOMD', 50),
(5, 'dsa', 50),
(6, 'mit', 100),
(7, 'uuuu', 100),
(8, 'pppppp', 100);

-- --------------------------------------------------------

--
-- Table structure for table `t`
--

CREATE TABLE IF NOT EXISTS `t` (
`sr_no` int(11) NOT NULL,
  `br_name` varchar(20) DEFAULT NULL,
  `stud_name` varchar(20) DEFAULT NULL,
  `sub_name` varchar(20) DEFAULT NULL,
  `marks` int(5) NOT NULL,
  `percentage` double NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t`
--

INSERT INTO `t` (`sr_no`, `br_name`, `stud_name`, `sub_name`, `marks`, `percentage`) VALUES
(1, 'computer', 'aaa', 'pcd', 86, 86),
(2, 'it', 'bbb', 'daa', 50, 50),
(3, 'mech', 'ccc', 'sa', 60, 60),
(4, 'production', 'ddd', 'OOMD', 38, 76),
(5, 'Electrical', 'eee', 'dsa', 48, 96);

-- --------------------------------------------------------

--
-- Table structure for table `t1`
--

CREATE TABLE IF NOT EXISTS `t1` (
  `id` int(11) NOT NULL DEFAULT '0',
  `br_name` varchar(20) DEFAULT NULL,
  `stud_name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t1`
--

INSERT INTO `t1` (`id`, `br_name`, `stud_name`) VALUES
(1, 'computer', 'aaa'),
(2, 'it', 'bbb'),
(3, 'mech', 'ccc'),
(4, 'production', 'ddd'),
(5, 'Electrical', 'eee');

-- --------------------------------------------------------

--
-- Table structure for table `t2`
--

CREATE TABLE IF NOT EXISTS `t2` (
  `id` int(11) NOT NULL DEFAULT '0',
  `sub_name` varchar(20) DEFAULT NULL,
  `marks` int(5) NOT NULL,
  `percentage` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t2`
--

INSERT INTO `t2` (`id`, `sub_name`, `marks`, `percentage`) VALUES
(1, 'pcd', 86, 86),
(2, 'daa', 50, 50),
(3, 'sa', 60, 60),
(4, 'OOMD', 38, 76),
(5, 'dsa', 48, 96);

-- --------------------------------------------------------

--
-- Table structure for table `t5`
--

CREATE TABLE IF NOT EXISTS `t5` (
  `sr_no` int(11) NOT NULL,
  `br_name` varchar(20) DEFAULT NULL,
  `stud_name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t5`
--

INSERT INTO `t5` (`sr_no`, `br_name`, `stud_name`) VALUES
(0, 'computer', 'aaa'),
(0, 'it', 'bbb'),
(0, 'mech', 'ccc'),
(0, 'production', 'ddd'),
(0, 'Electrical', 'eee');

-- --------------------------------------------------------

--
-- Table structure for table `tp`
--

CREATE TABLE IF NOT EXISTS `tp` (
  `b` varchar(20) NOT NULL,
  `p` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tp`
--

INSERT INTO `tp` (`b`, `p`) VALUES
('C#', NULL),
('C/C++', NULL),
('Perl', NULL),
('br_name', NULL),
('mech', NULL),
('2', NULL),
('1', NULL),
('2', 1),
('2', 3);

-- --------------------------------------------------------

--
-- Table structure for table `uu`
--

CREATE TABLE IF NOT EXISTS `uu` (
`sr` int(11) NOT NULL,
  `br_name` varchar(20) DEFAULT NULL,
  `stud_name` varchar(20) DEFAULT NULL,
  `sub_name` varchar(20) DEFAULT NULL,
  `marks` int(5),
  `per` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `uu`
--

INSERT INTO `uu` (`sr`, `br_name`, `stud_name`, `sub_name`, `marks`, `per`) VALUES
(1, 'computer', 'qqq', 'pcd', 86, 0),
(2, 'computer', 'aaa', 'pcd', 11, 0),
(3, 'computer', 'aaa', 'pcd', 86, 0),
(4, 'computer', 'yyy', 'pcd', 11, 0),
(5, 'computer', 'yyy', 'pcd', 86, 0),
(6, 'computer', 'ddd', 'pcd', 11, 0),
(7, 'computer', 'ddd', 'pcd', 86, 0),
(8, 'computer', 'ggg', 'pcd', 11, 0),
(9, 'computer', 'ggg', 'pcd', 86, 0),
(10, 'computer', 'qqq', 'pcd', 11, 0),
(11, 'it', 'bbb', 'daa', 50, 0),
(12, 'mech', 'ccc', 'sa', 65, 0),
(13, 'mech', 'eee', 'sa', 60, 0),
(14, 'mech', 'eee', 'sa', 65, 0),
(15, 'mech', 'ccc', 'sa', 55, 0),
(16, 'mech', 'eee', 'sa', 55, 0),
(17, 'mech', 'ccc', 'sa', 60, 0),
(18, 'production', 'fff', 'OOMD', 38, 0),
(19, 'Electrical', 'www', 'dsa', 47, 0);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v`
--
CREATE TABLE IF NOT EXISTS `v` (
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `v1`
--
CREATE TABLE IF NOT EXISTS `v1` (
);
-- --------------------------------------------------------

--
-- Structure for view `final`
--
DROP TABLE IF EXISTS `final`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `final` AS select `v`.`id` AS `id`,`v`.`br_name` AS `br_name`,`v`.`stud_name` AS `stud_name`,`v1`.`sub_name` AS `sub_name`,`v1`.`marks` AS `marks`,`v1`.`percentage` AS `percentage` from (`v` join `v1` on((`v`.`id` = `v1`.`id`)));

-- --------------------------------------------------------

--
-- Structure for view `v`
--
DROP TABLE IF EXISTS `v`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v` AS select `branch`.`id` AS `id`,`branch`.`br_name` AS `br_name`,`student`.`stud_name` AS `stud_name` from (`branch` join `student` on((`branch`.`id` = `student`.`id`)));

-- --------------------------------------------------------

--
-- Structure for view `v1`
--
DROP TABLE IF EXISTS `v1`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v1` AS select `subject`.`id` AS `id`,`subject`.`sub_name` AS `sub_name`,`marks`.`marks` AS `marks`,`marks`.`percentage` AS `percentage` from (`subject` join `marks` on((`subject`.`id` = `marks`.`id`)));

--
-- Indexes for dumped tables
--

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `main`
--
ALTER TABLE `main`
 ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `marks`
--
ALTER TABLE `marks`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t`
--
ALTER TABLE `t`
 ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `uu`
--
ALTER TABLE `uu`
 ADD PRIMARY KEY (`sr`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `branch`
--
ALTER TABLE `branch`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `main`
--
ALTER TABLE `main`
MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `marks`
--
ALTER TABLE `marks`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `t`
--
ALTER TABLE `t`
MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `uu`
--
ALTER TABLE `uu`
MODIFY `sr` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
