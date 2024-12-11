-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 11, 2024 at 08:03 PM
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
-- Database: `gyanfit`
--

-- --------------------------------------------------------

--
-- Table structure for table `ai_recommendations`
--

CREATE TABLE `ai_recommendations` (
  `recommendation_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `recommendation_type` enum('diet','workout') DEFAULT NULL,
  `recommendation_text` text DEFAULT NULL,
  `date_recommended` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `body_stats`
--

CREATE TABLE `body_stats` (
  `user_id` int(11) NOT NULL,
  `bmi` decimal(5,2) DEFAULT NULL,
  `protein_goal` decimal(5,2) DEFAULT NULL,
  `calories_goal` decimal(5,2) DEFAULT NULL,
  `weight_recommendation` decimal(5,2) DEFAULT NULL,
  `weight_goal` decimal(5,2) DEFAULT NULL,
  `date_updated` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `body_stats`
--

INSERT INTO `body_stats` (`user_id`, `bmi`, `protein_goal`, `calories_goal`, `weight_recommendation`, `weight_goal`, `date_updated`) VALUES
(1, 14.78, 44.00, 770.00, 33.49, NULL, '2024-12-09 15:19:16'),
(2, 24.78, 149.40, 999.99, 75.35, NULL, '2024-12-09 15:34:17'),
(3, 27.34, 112.00, 999.99, 57.60, NULL, '2024-12-10 08:36:40'),
(4, 18.13, 86.00, 999.99, 53.36, NULL, '2024-12-10 12:58:44'),
(5, 27.51, 118.40, 999.99, 60.52, NULL, '2024-12-10 13:13:09'),
(6, 24.78, 149.40, 999.99, 75.35, NULL, '2024-12-10 14:40:11');

-- --------------------------------------------------------

--
-- Table structure for table `explore`
--

CREATE TABLE `explore` (
  `id` int(11) NOT NULL,
  `institute_image` varchar(255) NOT NULL,
  `institute_name` varchar(255) NOT NULL,
  `map_url` text NOT NULL,
  `about` text NOT NULL,
  `location` varchar(255) NOT NULL,
  `like_count` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `explore`
--

INSERT INTO `explore` (`id`, `institute_image`, `institute_name`, `map_url`, `about`, `location`, `like_count`) VALUES
(1, 'download (5).jpg', 'Bayamshala', 'https://www.google.com/maps?gs_lcrp=EgZjaHJvbWUyBggAEEUYOTIGCAEQLhhA0gEINDQ1M2owajGoAgCwAgA&um=1&ie=UTF-8&fb=1&gl=np&sa=X&geocode=KSV0fex_be85MW1rVKd16Y-c&daddr=B.P+Chowk,+Itahari+56705', 'Bayamshala (also known as a gym or fitness center) in Itahari, Nepal, refers to places where individuals engage in physical exercise to improve their fitness, health, and well-being. These establishments typically provide equipment and facilities for various exercises, including weightlifting, cardio, and yoga.', 'Itahari', 0);

-- --------------------------------------------------------

--
-- Table structure for table `nutrition`
--

CREATE TABLE `nutrition` (
  `food_id` int(11) NOT NULL,
  `food_name` varchar(255) DEFAULT NULL,
  `protein` decimal(5,2) DEFAULT NULL,
  `carbs` decimal(5,2) DEFAULT NULL,
  `calorie` decimal(5,2) DEFAULT NULL,
  `amount` decimal(5,2) DEFAULT 100.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nutrition`
--

INSERT INTO `nutrition` (`food_id`, `food_name`, `protein`, `carbs`, `calorie`, `amount`) VALUES
(1, 'Chicken Breast', 31.00, 0.00, 165.00, 100.00),
(2, 'Salmon', 25.00, 0.00, 208.00, 100.00),
(3, 'Eggs', 13.00, 1.10, 143.00, 100.00),
(4, 'Tofu', 8.00, 1.90, 76.00, 100.00),
(5, 'Quinoa', 4.40, 21.30, 120.00, 100.00),
(6, 'Almonds', 21.00, 22.00, 576.00, 100.00),
(7, 'Spinach', 2.90, 3.60, 23.00, 100.00),
(8, 'Broccoli', 2.80, 6.60, 34.00, 100.00),
(9, 'Sweet Potato', 2.00, 20.00, 86.00, 100.00),
(10, 'Oats', 11.00, 66.00, 389.00, 100.00),
(11, 'Brown Rice', 2.60, 23.00, 112.00, 100.00),
(12, 'Lentils', 9.00, 20.00, 116.00, 100.00),
(13, 'Greek Yogurt', 10.00, 3.60, 59.00, 100.00),
(14, 'Peanut Butter', 25.00, 20.00, 588.00, 100.00),
(15, 'Avocado', 2.00, 9.00, 160.00, 100.00),
(16, 'Blueberries', 0.70, 14.00, 57.00, 100.00),
(17, 'Apple', 0.30, 14.00, 52.00, 100.00),
(18, 'Banana', 1.10, 22.80, 96.00, 100.00),
(19, 'Strawberries', 0.70, 7.70, 32.00, 100.00),
(20, 'Chickpeas', 19.00, 27.00, 364.00, 100.00),
(21, 'Pumpkin Seeds', 19.00, 14.00, 446.00, 100.00),
(22, 'Edamame', 11.00, 8.00, 122.00, 100.00),
(23, 'Walnuts', 15.00, 14.00, 654.00, 100.00),
(24, 'Flaxseeds', 18.00, 29.00, 534.00, 100.00),
(25, 'Chia Seeds', 17.00, 42.00, 486.00, 100.00),
(26, 'Cottage Cheese', 11.00, 3.40, 98.00, 100.00),
(27, 'Milk', 3.30, 4.80, 61.00, 100.00),
(28, 'Cheddar Cheese', 25.00, 1.30, 403.00, 100.00),
(29, 'Turkey', 29.00, 0.00, 135.00, 100.00),
(30, 'Tuna', 29.00, 0.00, 130.00, 100.00),
(31, 'Shrimp', 24.00, 0.20, 99.00, 100.00),
(32, 'Beef', 26.00, 0.00, 250.00, 100.00),
(33, 'Pork', 25.00, 0.00, 242.00, 100.00),
(34, 'Duck', 19.00, 0.00, 337.00, 100.00),
(35, 'Mackerel', 19.00, 0.00, 305.00, 100.00),
(36, 'Sardines', 20.00, 0.00, 208.00, 100.00),
(37, 'Cashews', 18.00, 30.00, 553.00, 100.00),
(38, 'Hazelnuts', 15.00, 17.00, 628.00, 100.00),
(39, 'Sunflower Seeds', 21.00, 20.00, 584.00, 100.00),
(40, 'Potato', 2.00, 17.00, 77.00, 100.00),
(41, 'Zucchini', 1.20, 3.10, 17.00, 100.00),
(42, 'Carrots', 0.90, 9.60, 41.00, 100.00),
(43, 'Cauliflower', 1.90, 5.00, 25.00, 100.00),
(44, 'Green Beans', 1.80, 7.00, 31.00, 100.00),
(45, 'Bell Peppers', 0.90, 6.00, 26.00, 100.00),
(46, 'Cucumber', 0.70, 3.60, 15.00, 100.00),
(47, 'Peas', 5.00, 14.00, 81.00, 100.00),
(48, 'Tomatoes', 0.90, 3.90, 18.00, 100.00),
(49, 'Mushrooms', 3.10, 3.30, 22.00, 100.00);

-- --------------------------------------------------------

--
-- Table structure for table `sms_notifications`
--

CREATE TABLE `sms_notifications` (
  `notification_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `sent_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `profile_image` varchar(255) DEFAULT NULL,
  `weight` decimal(5,2) DEFAULT NULL,
  `height` decimal(5,2) DEFAULT NULL,
  `weekly_activities` enum('highly_active','active','normal') DEFAULT NULL,
  `gender` enum('male','female') DEFAULT NULL,
  `status` enum('active','inactive') DEFAULT 'active',
  `google_auth_secret` varchar(255) DEFAULT NULL,
  `normal_protein_goal` decimal(5,2) DEFAULT NULL,
  `muscle_building_protein_goal` decimal(5,2) DEFAULT NULL,
  `payment` enum('paid','unpaid') DEFAULT 'unpaid',
  `consumed_protein` float DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `phone`, `email`, `full_name`, `password`, `age`, `profile_image`, `weight`, `height`, `weekly_activities`, `gender`, `status`, `google_auth_secret`, `normal_protein_goal`, `muscle_building_protein_goal`, `payment`, `consumed_protein`) VALUES
(1, '+1 (236) 177-16', NULL, 'Chaim Harrell', '$2y$10$KxlQ1GhqpIAWzvgLZbDWP.BhNVqE0O68miyHfyuXWdRtvoPGEv1y.', 22, NULL, 22.00, 122.00, 'highly_active', NULL, 'active', NULL, NULL, NULL, 'unpaid', 0),
(2, '9811388848', NULL, 'Prasanga Pokharel', '$2y$10$5QGxc6Fyvs0H0ExUGj0WCurE3sQEtxk0.a8CKtK0mU6fY4hqFQcd.', 22, NULL, 83.00, 183.00, 'active', 'male', 'active', '4ILD3E6Z7ND2DR6Q', NULL, NULL, 'unpaid', 0),
(3, '9765470926', NULL, 'Prekshya Acharya', '$2y$10$AC2wJx.V3nD3mM/r4LOYPOm28MiuU9zuT7Xn3fVy53xcHQyb.U23i', 26, NULL, 70.00, 160.00, 'normal', NULL, 'active', '5IIT2CZMPHRBK7ZM', NULL, NULL, 'unpaid', 0),
(4, '9724323542', 'bhawanakhadka7411@gmail.com', 'Prabin Subedi', '$2y$10$i5rbmgEtnikVHBlkTU.u/.q2u.VBJh3Hcqis4IQx3yuROY3jd2Lt2', 21, NULL, 43.00, 154.00, 'highly_active', NULL, 'active', NULL, NULL, NULL, 'unpaid', 0),
(5, '9842125329', 'nutrinexusnp@gmail.com', 'Jaya Pokahrel', '$2y$10$WmnEiE6rPB11IqE0SCI05uqG3AAs1ttcDXKYDndXZGSERU2k8xFvu', 43, NULL, 74.00, 164.00, 'normal', NULL, 'active', NULL, NULL, NULL, 'unpaid', 0),
(6, '9765470926', 'incpractical@gmail.com', 'Prasanga Raman', '$2y$10$8tNdyfMCCGAceLv5i4vKrOMRUswQPD4Li7OBNK6naUJZef.2JLHyO', 22, NULL, 83.00, 183.00, 'active', NULL, 'active', NULL, NULL, NULL, 'unpaid', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_food`
--

CREATE TABLE `user_food` (
  `food_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `food_name` varchar(255) NOT NULL,
  `protein` decimal(5,2) NOT NULL,
  `calorie` decimal(5,2) NOT NULL,
  `added_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_food`
--

INSERT INTO `user_food` (`food_id`, `user_id`, `food_name`, `protein`, `calorie`, `added_at`) VALUES
(1, 2, 'milk', 12.00, 0.00, '2024-12-11 15:32:30'),
(2, 2, 'Milk', 3.30, 0.00, '2024-12-11 15:32:50'),
(3, 2, 'Milk', 3.30, 0.00, '2024-12-11 15:41:48');

-- --------------------------------------------------------

--
-- Table structure for table `user_meal`
--

CREATE TABLE `user_meal` (
  `meal_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `food_name` varchar(255) DEFAULT NULL,
  `food_time` enum('breakfast','lunch','dinner','snack') DEFAULT NULL,
  `protein` decimal(5,2) DEFAULT NULL,
  `carbs` decimal(5,2) DEFAULT NULL,
  `calorie` decimal(5,2) DEFAULT NULL,
  `amount` decimal(5,2) DEFAULT NULL,
  `consumed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_workout_calendar`
--

CREATE TABLE `user_workout_calendar` (
  `calendar_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `day` date NOT NULL,
  `status` enum('workout','notworkout') DEFAULT 'notworkout'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_workout_calendar`
--

INSERT INTO `user_workout_calendar` (`calendar_id`, `user_id`, `day`, `status`) VALUES
(1, 3, '2024-12-01', 'notworkout'),
(2, 3, '2024-11-30', 'notworkout'),
(3, 3, '2024-12-02', 'notworkout'),
(4, 3, '2024-12-03', 'workout'),
(5, 3, '2024-12-04', 'notworkout'),
(6, 3, '2024-12-05', 'notworkout'),
(7, 3, '2024-12-06', 'notworkout'),
(8, 6, '2024-12-01', 'notworkout'),
(9, 6, '2024-11-30', 'workout'),
(10, 6, '2024-12-02', 'workout'),
(11, 6, '2024-12-03', 'workout'),
(12, 6, '2024-12-04', 'notworkout');

-- --------------------------------------------------------

--
-- Table structure for table `workout_log`
--

CREATE TABLE `workout_log` (
  `log_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `exercise_name` varchar(255) DEFAULT NULL,
  `duration_minutes` int(11) DEFAULT NULL,
  `calories_burned` decimal(5,2) DEFAULT NULL,
  `workout_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `workout_log`
--

INSERT INTO `workout_log` (`log_id`, `user_id`, `exercise_name`, `duration_minutes`, `calories_burned`, `workout_date`) VALUES
(1, 2, 'Push-ups', 15, 50.00, '2024-12-09 16:20:22'),
(2, 2, 'Squats', 15, 60.00, '2024-12-09 16:20:22'),
(3, 2, 'Plank', 10, 30.00, '2024-12-09 16:20:22'),
(4, 2, 'Push-ups', 15, 50.00, '2024-12-09 16:21:00'),
(5, 2, 'Squats', 15, 60.00, '2024-12-09 16:21:00'),
(6, 2, 'Plank', 10, 30.00, '2024-12-09 16:21:00'),
(7, 2, 'Push-ups', 15, 50.00, '2024-12-09 16:24:35'),
(8, 2, 'Squats', 15, 60.00, '2024-12-09 16:24:35'),
(9, 2, 'Plank', 10, 30.00, '2024-12-09 16:24:35'),
(10, 2, 'Push-ups', 15, 50.00, '2024-12-09 16:24:40'),
(11, 2, 'Squats', 15, 60.00, '2024-12-09 16:24:40'),
(12, 2, 'Plank', 10, 30.00, '2024-12-09 16:24:40');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ai_recommendations`
--
ALTER TABLE `ai_recommendations`
  ADD PRIMARY KEY (`recommendation_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `body_stats`
--
ALTER TABLE `body_stats`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `explore`
--
ALTER TABLE `explore`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nutrition`
--
ALTER TABLE `nutrition`
  ADD PRIMARY KEY (`food_id`),
  ADD UNIQUE KEY `food_name` (`food_name`);

--
-- Indexes for table `sms_notifications`
--
ALTER TABLE `sms_notifications`
  ADD PRIMARY KEY (`notification_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `user_food`
--
ALTER TABLE `user_food`
  ADD PRIMARY KEY (`food_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `user_meal`
--
ALTER TABLE `user_meal`
  ADD PRIMARY KEY (`meal_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `user_workout_calendar`
--
ALTER TABLE `user_workout_calendar`
  ADD PRIMARY KEY (`calendar_id`),
  ADD UNIQUE KEY `user_id` (`user_id`,`day`);

--
-- Indexes for table `workout_log`
--
ALTER TABLE `workout_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ai_recommendations`
--
ALTER TABLE `ai_recommendations`
  MODIFY `recommendation_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `explore`
--
ALTER TABLE `explore`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `nutrition`
--
ALTER TABLE `nutrition`
  MODIFY `food_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `sms_notifications`
--
ALTER TABLE `sms_notifications`
  MODIFY `notification_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user_food`
--
ALTER TABLE `user_food`
  MODIFY `food_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_meal`
--
ALTER TABLE `user_meal`
  MODIFY `meal_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_workout_calendar`
--
ALTER TABLE `user_workout_calendar`
  MODIFY `calendar_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `workout_log`
--
ALTER TABLE `workout_log`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ai_recommendations`
--
ALTER TABLE `ai_recommendations`
  ADD CONSTRAINT `ai_recommendations_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `body_stats`
--
ALTER TABLE `body_stats`
  ADD CONSTRAINT `body_stats_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `sms_notifications`
--
ALTER TABLE `sms_notifications`
  ADD CONSTRAINT `sms_notifications_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `user_food`
--
ALTER TABLE `user_food`
  ADD CONSTRAINT `user_food_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `user_meal`
--
ALTER TABLE `user_meal`
  ADD CONSTRAINT `user_meal_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `user_workout_calendar`
--
ALTER TABLE `user_workout_calendar`
  ADD CONSTRAINT `user_workout_calendar_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `workout_log`
--
ALTER TABLE `workout_log`
  ADD CONSTRAINT `workout_log_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
