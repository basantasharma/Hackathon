-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 08, 2021 at 11:31 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hackathon`
--

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `sender` int(11) DEFAULT NULL,
  `receiver` int(11) DEFAULT NULL,
  `msg_text` longtext DEFAULT NULL,
  `msg_date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `remembered_logins`
--

CREATE TABLE `remembered_logins` (
  `token_hash` varchar(64) NOT NULL,
  `user_id` int(11) NOT NULL,
  `expires_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `gender` varchar(11) NOT NULL,
  `image` varchar(50) NOT NULL,
  `dob` date NOT NULL,
  `catogery` varchar(50) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `password_reset_hash` varchar(64) DEFAULT NULL,
  `password_reset_expires_at` datetime DEFAULT NULL,
  `activation_hash` varchar(64) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `gender`, `image`, `dob`, `catogery`, `password_hash`, `password_reset_hash`, `password_reset_expires_at`, `activation_hash`, `is_active`) VALUES
(1, 'Basanta Sharma gyawali', 'gyawalib42@gmail.com', 'male', '1624705638.jpg', '2000-03-14', 'Signup as student', '$2y$10$qUGfUZUIX4lZN4IXHMTDYectBrUT2MXE/nroWBMzlHY3ef3UTxV8.', NULL, NULL, NULL, 1),
(2, 'Basanta Sharma', 'gyawalibasanta0@gmail.com', 'female', 'defaultFemale.png', '2001-03-14', 'Signup as invester', '$2y$10$f2e.6XnCaIxDB4zBu9GfQe7ynzUOXJ8js4iLQJi7DC1BCzU1dcuH6', NULL, NULL, NULL, 1),
(3, 'Basanta Sharma 1', 'gyawalib422@gmail.com', 'male', 'defaultMale.png', '2010-03-14', 'Signup as student', '$2y$10$dkOTrFB0PyuL7oVZ60HDRO77wT.2LnoVkbV9dLssfeOTQJQ8.Rb7u', NULL, NULL, NULL, 1),
(5, 'Basanta Sharma gyawali', 'gyawalib4ww2@gmail.com', 'male', 'defaultMale.png', '2021-07-08', 'Signup as student', '$2y$10$3uEOd8QCfk89cTza2oXq1ODKzImTahLPKH8qNl1X6mztAF8VPyrFy', NULL, NULL, '89ed1bfc0c08286fec425f1463c73b7154e0753a05677bd4a2c8cb4c0626431e', 0),
(6, 'Basanta Sharma gyawali', 'gyawalibasanta98@gmail.com', 'male', 'defaultMale.png', '2021-07-09', 'Signup as student', '$2y$10$IAvNsmwy1V08eDIsaDnC5.64NojKV8TBPF20jfqxGu3MSk97D2vMu', NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_posts`
--

CREATE TABLE `user_posts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` tinytext NOT NULL,
  `catogery` mediumtext NOT NULL,
  `discription` mediumtext NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_posts`
--

INSERT INTO `user_posts` (`id`, `user_id`, `title`, `catogery`, `discription`, `date`) VALUES
(1, 1, 'N95 mask import.', 'Emergency Help', 'We have approached a mask producing company to import mask. We need investment of around Rs. 10 lakhs.', '2021-06-26 20:17:09'),
(3, 1, 'Investment needed to scale a local business.', 'Seeking for invester', 'I am a local businessman running a poultry farm. I want to expand my poultry farm product delivery range.', '2021-07-03 19:09:56'),
(4, 2, 'Any one with a startup idea?', 'Seeking to invest', 'I have been investing in different fields. Now I want to invest in tech related startup, so anyone with any tech idea can contact me.', '2021-07-03 19:15:18'),
(5, 3, 'Oxygen Cylinder Import', 'Emergency Help', 'We have a oxygen cylinder dealer in India who will provide oxygen cylinder in moderate price. \r\nWe need  investment of  Rs.20 lakhs in order to import 100 cylinders.', '2021-07-03 19:17:58'),
(6, 3, 'Need investment to run e-commerce site', 'Seeking for invester', 'We are a team of young web developer. We have developed a e-commerce site.', '2021-07-03 19:19:14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `remembered_logins`
--
ALTER TABLE `remembered_logins`
  ADD PRIMARY KEY (`token_hash`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `password_reset_hash` (`password_reset_hash`),
  ADD UNIQUE KEY `activation_hash` (`activation_hash`);

--
-- Indexes for table `user_posts`
--
ALTER TABLE `user_posts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user_posts`
--
ALTER TABLE `user_posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
