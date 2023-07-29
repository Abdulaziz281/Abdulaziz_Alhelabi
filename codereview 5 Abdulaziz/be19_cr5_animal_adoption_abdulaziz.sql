-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 29, 2023 at 03:52 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `be19_cr5_animal_adoption_abdulaziz`
--

-- --------------------------------------------------------

--
-- Table structure for table `pets`
--

CREATE TABLE `pets` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `vaccination` varchar(255) DEFAULT NULL,
  `breed` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pets`
--

INSERT INTO `pets` (`id`, `name`, `picture`, `location`, `description`, `size`, `age`, `vaccination`, `breed`, `status`) VALUES
(4, 'Ca', 'https://th.bing.com/th/id/OIP.VEhlSj01_sNxUEFpGYIPMwHaII?pid=ImgDet&rs=1', 'riyadh', 'cat', 'small', 12, 'yes', '', NULL),
(5, 'Persian cat', 'https://th.bing.com/th/id/OIP.VzBPaU-VKq234WF-Q4VxRwHaFj?w=200&h=180&c=7&r=0&o=5&dpr=1.5&pid=1.7', 'iran', 'grumpy cat', 'small', 10, 'yes', 'persian', 'not adopted'),
(6, 'john', 'https://th.bing.com/th/id/OIP.heSguU0NKAlz6wZj3eNDzQHaEo?w=296&h=185&c=7&r=0&o=5&dpr=1.5&pid=1.7', 'new york', 'a great dog', 'huge', 5, 'yes', 'husky', 'avalible'),
(7, 'mark', 'https://th.bing.com/th/id/OIP.1LmCx4DHOCwy0iFO-uO1ggHaEK?w=283&h=180&c=7&r=0&o=5&dpr=1.5&pid=1.7', 'jeddah', 'a huge dog that needs a home', 'huge', 9, 'yes', 'pit bull', 'avalible'),
(8, 'steven', 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wBDAAsJCQcJCQcJCQkJCwkJCQkJCQsJCwsMCwsLDA0QDBEODQ4MEhkSJRodJR0ZHxwpKRYlNzU2GioyPi0pMBk7IRP/2wBDAQcICAsJCxULCxUsHRkdLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCz/wAARCAEkAbYDASIAAhEB', 'rio de jeniro', 'sweet parrot', 'huge', 11, 'yes', 'Parrot', 'avalible'),
(9, 'sunshine', 'https://th.bing.com/th/id/OIP.7ng8jCJZOZ8YC5Pfq4y1fgHaE8?w=252&h=180&c=7&r=0&o=5&dpr=1.5&pid=1.7', 'london', 'A sweet kitten that needs a home', 'small', 1, 'not vaccinated', 'mixed breed', 'avalible'),
(10, 'trevor', 'https://th.bing.com/th/id/OIP.RVKmfWf20nPjSxEuDILTLAHaE9?w=287&h=180&c=7&r=0&o=5&dpr=1.5&pid=1.7', 'Boston', 'great dog that needs a home', 'huge', 5, 'vaccinated', 'golden retriver', 'avaliable'),
(11, 'Bony', 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wBDAAsJCQcJCQcJCQkJCwkJCQkJCQsJCwsMCwsLDA0QDBEODQ4MEhkSJRodJR0ZHxwpKRYlNzU2GioyPi0pMBk7IRP/2wBDAQcICAsJCxULCxUsHRkdLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCz/wAARCAEaAcMDASIAAhEB', 'vienna', 'a sweet rabbit that needs a home', 'small', 2, 'vaccinated', 'mixed breed', 'avaliable');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fname` varchar(255) DEFAULT NULL,
  `lname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone_number` int(11) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `status` varchar(10) DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fname`, `lname`, `email`, `phone_number`, `address`, `picture`, `password`, `status`) VALUES
(1, 'Aziz', 'Aziz', 'Aziz@gmail.com', 123456789, 'Aziz', NULL, '40bcaeefdc80d2b193d60ab38b2840f6d7d19119dae634b56d2083d9459746cb', 'user'),
(2, 'Azoz', 'Azoz', 'Azoz@gmail.com', 2147483647, 'Azoz', NULL, 'e4920e475d1e4761c12af1758ab3c8c3cc705729834ebeda3acb2c80fafcb39a', 'adm'),
(3, 'Abdullah', 'Abdullah', 'Abdullah@gmail.com', 2147483647, 'Abdullah', NULL, '5eb60936c374c1be93fab792fc9946de3cd025da80961e605844feab4e55bb9b', 'user'),
(4, 'Abdullah', 'Abdullah', 'Abdullahh@gmail.com', 2147483647, 'Abdullahh', NULL, 'c29edf2c78da26da7fe51203dc8057f6ce30be968477f9897af311e953547e95', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pets`
--
ALTER TABLE `pets`
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
-- AUTO_INCREMENT for table `pets`
--
ALTER TABLE `pets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
