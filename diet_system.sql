-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 29, 2024 at 04:12 PM
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
-- Database: `diet_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `foods`
--

CREATE TABLE `foods` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `calories` float DEFAULT NULL,
  `protein` float DEFAULT NULL,
  `fat` float DEFAULT NULL,
  `carbs` float DEFAULT NULL,
  `vitamins` text DEFAULT NULL,
  `minerals` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `foods`
--

INSERT INTO `foods` (`id`, `name`, `calories`, `protein`, `fat`, `carbs`, `vitamins`, `minerals`) VALUES
(1, 'Oats', 150, 5, 3, 27, 'B1, B2, B5', 'Iron, Magnesium'),
(2, 'Greek Yogurt', 100, 10, 0, 6, 'B2, B12', 'Calcium, Potassium'),
(3, 'Quinoa', 120, 4, 2, 21, 'B1, B2, B6', 'Iron, Magnesium'),
(4, 'Spinach', 23, 3, 0.4, 3.6, 'A, C, K', 'Iron, Calcium'),
(5, 'Broccoli', 55, 4, 0.6, 11, 'C, K', 'Calcium, Potassium'),
(6, 'Almonds', 160, 6, 14, 6, 'E, B2', 'Magnesium, Phosphorus'),
(7, 'Blueberries', 85, 1, 0.5, 21, 'C, K', 'Manganese'),
(8, 'Salmon', 180, 25, 8, 0, 'B6, B12, D', 'Selenium, Potassium'),
(9, 'Avocado', 160, 2, 15, 9, 'K, E', 'Potassium, Magnesium'),
(10, 'Sweet Potatoes', 103, 2, 0.1, 24, 'A, C', 'Potassium, Manganese'),
(11, 'Chia Seeds', 137, 4, 9, 12, 'B1, B2, B3', 'Calcium, Iron'),
(12, 'Lentils', 115, 9, 0.4, 20, 'B1, B6', 'Iron, Magnesium'),
(13, 'Eggs', 78, 6, 5, 1, 'B2, B12, D', 'Iron, Phosphorus'),
(14, 'Chicken Breast', 165, 31, 3.6, 0, 'B6, B12', 'Selenium, Phosphorus'),
(15, 'Tomatoes', 18, 1, 0.2, 4, 'C, K', 'Potassium, Folate'),
(16, 'Bell Peppers', 40, 1, 0.4, 9, 'A, C, B6', 'Potassium, Folate'),
(17, 'Carrots', 52, 1.2, 0.3, 12, 'A, K', 'Potassium, Fiber'),
(18, 'Apples', 95, 0.5, 0.3, 25, 'C', 'Potassium, Fiber'),
(19, 'Brown Rice', 215, 5, 1.8, 45, 'B1, B6', 'Magnesium, Phosphorus'),
(20, 'Edamame', 121, 11, 5, 9, 'C, K', 'Iron, Magnesium'),
(21, 'Cauliflower', 25, 2, 0.3, 5, 'C, K', 'Calcium, Potassium'),
(22, 'Garlic', 149, 6, 0.5, 33, 'C, B6', 'Calcium, Selenium'),
(23, 'Mango', 99, 1.4, 0.6, 25, 'A, C, E', 'Folate, Copper'),
(24, 'Pumpkin Seeds', 151, 7, 13, 5, 'K, B2', 'Iron, Magnesium'),
(25, 'Brussels Sprouts', 38, 3, 0.3, 8, 'C, K', 'Folate, Manganese'),
(26, 'Kale', 33, 2.9, 0.6, 6, 'A, C, K', 'Calcium, Potassium'),
(27, 'Tuna', 184, 24, 7, 0, 'B3, B12, D', 'Selenium, Phosphorus'),
(28, 'Cottage Cheese', 98, 11, 4, 3, 'B2, B12', 'Calcium, Selenium'),
(29, 'Oranges', 62, 1.2, 0.2, 15, 'C', 'Calcium, Potassium'),
(30, 'Strawberries', 53, 1, 0.5, 13, 'C, Manganese', 'Folate, Fiber'),
(31, 'Beetroot', 43, 1.6, 0.2, 10, 'C, B6', 'Folate, Manganese'),
(32, 'Grapes', 62, 0.6, 0.3, 16, 'C, K', 'Copper, Potassium'),
(33, 'Peanuts', 161, 7, 14, 6, 'E, B3', 'Magnesium, Phosphorus'),
(34, 'Black Beans', 114, 8, 0.5, 20, 'B1, B6', 'Iron, Magnesium'),
(35, 'Cucumber', 16, 0.7, 0.1, 4, 'K', 'Potassium, Magnesium'),
(36, 'Raspberries', 64, 1.5, 0.8, 15, 'C, K', 'Manganese, Fiber'),
(37, 'Chickpeas', 269, 15, 4, 45, 'B6', 'Iron, Magnesium'),
(38, 'Zucchini', 21, 1.5, 0.4, 4, 'A, C', 'Potassium, Manganese'),
(39, 'Walnuts', 185, 4, 18, 4, 'B6, E', 'Magnesium, Phosphorus'),
(40, 'Pomegranates', 83, 1.7, 1.2, 19, 'C, K', 'Folate, Potassium');

-- --------------------------------------------------------

--
-- Table structure for table `meal_plans`
--

CREATE TABLE `meal_plans` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `meal_date` date DEFAULT NULL,
  `meal_details` text DEFAULT NULL,
  `calories` float DEFAULT NULL,
  `protein` float DEFAULT NULL,
  `fat` float DEFAULT NULL,
  `carbs` float DEFAULT NULL,
  `vitamins` text DEFAULT NULL,
  `minerals` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `meal_plans`
--

INSERT INTO `meal_plans` (`id`, `user_id`, `meal_date`, `meal_details`, `calories`, `protein`, `fat`, `carbs`, `vitamins`, `minerals`) VALUES
(111, 1, '2024-06-17', 'chole khav - 100gm', 100, 50, 12, 34, 'e,g,f', 'SODIAM'),
(222, 2, '2024-06-30', 'aaa', 0, 0, 0, 0, 'aaa', 'aaa'),
(333, 7, '2024-06-30', 'aaa', 12, 12, 12, 12, 'd,f', 'wewwe');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('user','admin') DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `role`) VALUES
(1, 'nayan', 'nayan@gmail.com', '$2y$10$uINaNHtLO3awawWp4OgUhukq9eHjDI/VkObFmQn82kQlb18PbcYB6', 'user'),
(2, 'vashudev', 'vashudev@gmail.com', '12344', 'user'),
(3, 'admin', 'vasustudy176@gmail.com', '$2y$10$BfxokvBpYHCsnQvkNLal2./9tZ2./ik6OazSpBXcBlhUPU5eV6TN.', 'admin'),
(4, 'kaushik', 'admin@gmail.com', '$2y$10$/AnB4ldlIXHqAXab6AHQruBaRO1fC1rTjkcwR7N/ZB.ZWDPFsFi5u', 'user'),
(7, 'nnn', 'admin1@gmail.com', '$2y$10$w7J49Udu2aPV/pMmMGCWpe9oo8IMwuGOqIcpbORJ/yuLAb3DvQnj.', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `user_profiles`
--

CREATE TABLE `user_profiles` (
  `user_id` int(11) NOT NULL,
  `age` int(11) DEFAULT NULL,
  `gender` enum('male','female','other') DEFAULT NULL,
  `weight` float DEFAULT NULL,
  `height` float DEFAULT NULL,
  `dietary_preferences` text DEFAULT NULL,
  `allergies` text DEFAULT NULL,
  `health_goals` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_profiles`
--

INSERT INTO `user_profiles` (`user_id`, `age`, `gender`, `weight`, `height`, `dietary_preferences`, `allergies`, `health_goals`) VALUES
(1, 30, 'male', 110, 5, 'veg', 'no', 'fit'),
(2, 25, 'male', 50, 6, 'veg', 'no', 'fit'),
(7, 15, 'male', 300, 3, 'we', 'we', 'we');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `foods`
--
ALTER TABLE `foods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meal_plans`
--
ALTER TABLE `meal_plans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `user_profiles`
--
ALTER TABLE `user_profiles`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `foods`
--
ALTER TABLE `foods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `meal_plans`
--
ALTER TABLE `meal_plans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=334;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `meal_plans`
--
ALTER TABLE `meal_plans`
  ADD CONSTRAINT `meal_plans_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `user_profiles`
--
ALTER TABLE `user_profiles`
  ADD CONSTRAINT `user_profiles_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
