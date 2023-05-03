-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 02, 2023 at 07:49 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `school`
--

-- --------------------------------------------------------

--
-- Table structure for table `chemistry_2023`
--

CREATE TABLE `chemistry_2023` (
  `email` varchar(150) NOT NULL,
  `name` text NOT NULL,
  `password` text NOT NULL,
  `stat` text NOT NULL,
  `phone` text NOT NULL,
  `address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chemistry_2023`
--

INSERT INTO `chemistry_2023` (`email`, `name`, `password`, `stat`, `phone`, `address`) VALUES
('ann@gmail.com', 'Ann', 'ann12', 'n', '9087563412', 'Koduveli House Kodappankunnu'),
('john@gmail.com', 'John', 'john12', 'n', '7865342190', 'Thenayil House Kalamassery ');

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `class_id` int(11) NOT NULL,
  `class_name` text NOT NULL,
  `created_user` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`class_id`, `class_name`, `created_user`) VALUES
(5, 'Chemistry 2023', 'ann@gmail.com'),
(6, 'Physics 2023', 'anil@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `physics_2023`
--

CREATE TABLE `physics_2023` (
  `email` varchar(150) NOT NULL,
  `name` text NOT NULL,
  `password` text NOT NULL,
  `stat` text NOT NULL,
  `phone` text NOT NULL,
  `address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `physics_2023`
--

INSERT INTO `physics_2023` (`email`, `name`, `password`, `stat`, `phone`, `address`) VALUES
('ann@gmail.com', 'Ann', 'ann12', 'n', '9087563412', 'Koduveli House Kodappankunnu'),
('john@gmail.com', 'John', 'john12', 'n', '7865342190', 'Thenayil House Kalamassery ');

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `email` varchar(150) NOT NULL,
  `name` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`email`, `name`, `password`) VALUES
('anil@gmail.com', 'Anil', '12345678'),
('ann@gmail.com', 'Ann', '12345678');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `video_id` int(11) NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `video` text NOT NULL,
  `time` datetime NOT NULL DEFAULT current_timestamp(),
  `class_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`video_id`, `title`, `description`, `video`, `time`, `class_id`) VALUES
(2, 'Title', 'Description', 'vid.mp4', '2023-05-02 14:05:00', 5),
(3, 'Physics 1', 'Physics 1 desc', 'vid.mp4', '2023-05-02 23:11:29', 6);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chemistry_2023`
--
ALTER TABLE `chemistry_2023`
  ADD PRIMARY KEY (`email`),
  ADD UNIQUE KEY `phone` (`phone`) USING HASH;

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`class_id`),
  ADD KEY `created_user` (`created_user`);

--
-- Indexes for table `physics_2023`
--
ALTER TABLE `physics_2023`
  ADD PRIMARY KEY (`email`),
  ADD UNIQUE KEY `phone` (`phone`) USING HASH;

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`video_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `video_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `class`
--
ALTER TABLE `class`
  ADD CONSTRAINT `class_ibfk_1` FOREIGN KEY (`created_user`) REFERENCES `teachers` (`email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
