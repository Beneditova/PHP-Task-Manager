-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Generation Time: Jun 11, 2020 at 04:23 PM
-- Server version: 8.0.18
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phptaskmanager`
--

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
CREATE TABLE IF NOT EXISTS `employees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `firstName`, `lastName`, `phone`) VALUES
(1, 'River', 'Shen', '123-456-7894'),
(2, 'Bush', 'Zed', '089-449-7655'),
(8, 'Bush', 'xfh', '089-449-7655'),
(7, 'River2', 'Random', '089-449-7655');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `active` int(11) NOT NULL DEFAULT '0',
  `level` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `firstName`, `lastName`, `password`, `active`, `level`) VALUES
(1, 'testuser', 'Test', 'Test', '$2y$10$uWkLdB0v.3jukYGkGEskeePOuTgkJM85u48HBgXYL0Rl9naXXWMrC', 1, 1),
(3, 'username', 'firsname1', 'lastname1', '$2y$10$4fUTOJ2Pa2IraCyHV.mS9.f/hchxspS.RVGxQhEPXnQRZYtDuN7Hy', 1, 0),
(5, 'NewUser', 'NewUser', 'NewUser', '$2y$10$hDqlrSC/PqhsR96kPoRzD.yD3N28MGacaR7/55AT3CMMWOzFMkNLa', 1, 0),
(6, 'viki', 'Viki', 'Kiki', '$2y$10$9INGi8bRKVYkl/HaFHXKregBe4QVKnhe0NkJxWIlAocgFexI74DlK', 1, 1),
(7, 'zed', 'User', 'Zed', '$2y$10$ivDg0LcmBEGt1MFdgyX7HuqhgmvUASjAfGVuQwWHXJuFSVaFHJmO6', 1, 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
