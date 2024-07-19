-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 10.123.0.211:3306
-- Generation Time: Jul 19, 2024 at 02:32 AM
-- Server version: 8.0.25
-- PHP Version: 8.2.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `umreas_umrahheasierdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `arkanumrah`
--

CREATE TABLE `arkanumrah` (
  `umrah_id` int NOT NULL,
  `umrah_rukn` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci TABLESPACE `umreas_umrahheasierdb`;

--
-- Dumping data for table `arkanumrah`
--

INSERT INTO `arkanumrah` (`umrah_id`, `umrah_rukn`) VALUES
(1, 'الإحرام'),
(2, 'الطواف'),
(3, 'السعي بين الصفا والمروة');

-- --------------------------------------------------------

--
-- Table structure for table `umrahdone`
--

CREATE TABLE `umrahdone` (
  `umrahdone_id` int NOT NULL,
  `umrahdone_status` int NOT NULL,
  `umrahdone_user_id` int NOT NULL,
  `umrahdone_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci TABLESPACE `umreas_umrahheasierdb`;

--
-- Dumping data for table `umrahdone`
--

INSERT INTO `umrahdone` (`umrahdone_id`, `umrahdone_status`, `umrahdone_user_id`, `umrahdone_date`) VALUES
(2, 2, 55, '2024-04-07 02:21:10'),
(4, 2, 55, '2024-04-07 21:13:01'),
(11, 2, 55, '2024-04-07 23:16:11'),
(12, 2, 55, '2024-04-08 21:21:05'),
(15, 2, 55, '2024-04-08 22:14:52'),
(18, 2, 67, '2024-04-26 22:47:47'),
(19, 1, 67, '2024-04-26 23:06:13'),
(20, 2, 55, '2024-05-05 04:39:15');

-- --------------------------------------------------------

--
-- Table structure for table `umrahtask`
--

CREATE TABLE `umrahtask` (
  `umrahtask_id` int NOT NULL,
  `numberOfumrah` int NOT NULL,
  `umrah_rukn_id` int NOT NULL,
  `user_id` int NOT NULL,
  `umrahtask__date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci TABLESPACE `umreas_umrahheasierdb`;

--
-- Dumping data for table `umrahtask`
--

INSERT INTO `umrahtask` (`umrahtask_id`, `numberOfumrah`, `umrah_rukn_id`, `user_id`, `umrahtask__date`) VALUES
(18, 15, 3, 55, '2024-04-08 23:58:03'),
(25, 18, 3, 67, '2024-04-26 23:03:30'),
(32, 20, 3, 55, '2024-05-05 04:43:57');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `users_id` int NOT NULL,
  `users_name` varchar(100) NOT NULL,
  `users_password` varchar(255) NOT NULL,
  `users_email` varchar(100) NOT NULL,
  `users_phone` varchar(100) NOT NULL,
  `users_verfiycode` int NOT NULL,
  `users_approve` tinyint NOT NULL DEFAULT '0',
  `users_create` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 TABLESPACE `umreas_umrahheasierdb`;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`users_id`, `users_name`, `users_password`, `users_email`, `users_phone`, `users_verfiycode`, `users_approve`, `users_create`) VALUES
(55, 'layan', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'layan@gmail.com', '123445122', 95797, 1, '2023-10-08 01:52:32'),
(56, 'ryyy', '3acd0be86de7dcccdbf91b20f94a68cea535922d', 'xxrand12@hotmail.com', '31223123', 28530, 1, '2023-10-10 03:53:46'),
(58, 'rand', '3acd0be86de7dcccdbf91b20f94a68cea535922d', 'xxlayan17@hotmail.com', '21413312412', 82755, 0, '2023-10-19 01:43:59'),
(59, 'rand', '3acd0be86de7dcccdbf91b20f94a68cea535922d', 'iill13@gmail.com', '214124124124', 28918, 0, '2023-10-19 02:07:18'),
(60, 'rand', '3acd0be86de7dcccdbf91b20f94a68cea535922d', 'layy6@gmail.com', '124124124124', 85013, 0, '2023-10-19 02:15:41'),
(66, 'zzszazaw', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'tawafmesar@gmail.com', '1233347456', 23871, 0, '2024-04-20 02:41:04'),
(67, 'Raghad', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'dasdasdas@gmail.com', '112233445', 64354, 1, '2024-04-26 22:33:56'),
(68, '', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', '', '', 17921, 0, '2024-05-17 23:22:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `arkanumrah`
--
ALTER TABLE `arkanumrah`
  ADD PRIMARY KEY (`umrah_id`);

--
-- Indexes for table `umrahdone`
--
ALTER TABLE `umrahdone`
  ADD PRIMARY KEY (`umrahdone_id`),
  ADD KEY `umrahdone_ibfk_1` (`umrahdone_user_id`);

--
-- Indexes for table `umrahtask`
--
ALTER TABLE `umrahtask`
  ADD PRIMARY KEY (`umrahtask_id`),
  ADD KEY `umrah_rukn_id` (`umrah_rukn_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `numberOfumrah` (`numberOfumrah`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`users_id`),
  ADD UNIQUE KEY `users_phone` (`users_phone`),
  ADD UNIQUE KEY `users_email` (`users_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `arkanumrah`
--
ALTER TABLE `arkanumrah`
  MODIFY `umrah_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `umrahdone`
--
ALTER TABLE `umrahdone`
  MODIFY `umrahdone_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `umrahtask`
--
ALTER TABLE `umrahtask`
  MODIFY `umrahtask_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `users_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `umrahdone`
--
ALTER TABLE `umrahdone`
  ADD CONSTRAINT `umrahdone_ibfk_1` FOREIGN KEY (`umrahdone_user_id`) REFERENCES `users` (`users_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `umrahtask`
--
ALTER TABLE `umrahtask`
  ADD CONSTRAINT `umrahtask_ibfk_1` FOREIGN KEY (`umrah_rukn_id`) REFERENCES `arkanumrah` (`umrah_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `umrahtask_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`users_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `umrahtask_ibfk_3` FOREIGN KEY (`numberOfumrah`) REFERENCES `umrahdone` (`umrahdone_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
