-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 13, 2023 at 10:16 AM
-- Server version: 5.7.36
-- PHP Version: 8.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel9_auth`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admins`
--

DROP TABLE IF EXISTS `tbl_admins`;
CREATE TABLE IF NOT EXISTS `tbl_admins` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile_no` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` int(11) DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_zone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_admins`
--

INSERT INTO `tbl_admins` (`id`, `name`, `email`, `mobile_no`, `country`, `city`, `state`, `zip`, `address1`, `address2`, `password`, `remember_token`, `time_zone`, `role_id`, `photo`, `status`, `token`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 'Super Administrator', 'admin@mumara.com', '923221234657', 178, NULL, NULL, NULL, NULL, NULL, '$2y$10$vaMdEsTmmdHrMnNJk4UpFOZqZtJrMN/X.kNPIq9sihwznQ4dhEuoG', 'FI62wrBSNKUIL5nMHPVjwLBNBiqjC0ov0Bqi4q0dj3RNx73z4zzzrtyXQ2iM', '+05:00', 1, NULL, 1, 'go5iyoEuSty1rqBj8ZtiIBkSrtiaP5nA9OmapsvJB1RE6WdvQy7vfJkoCRcB', 0, '2022-04-29 04:23:48', '2022-04-29 04:23:48'),
(2, 'Azeem Aslam', 'ranaazeem2008@gmail.com', '923001234657', 178, NULL, NULL, NULL, NULL, NULL, '$2y$10$vaMdEsTmmdHrMnNJk4UpFOZqZtJrMN/X.kNPIq9sihwznQ4dhEuoG', 'iZeYAdwFTs6rQ2kJ9ofaEsOVMLubooweBlyrUP2JLFhoSw0Kou5dLJ9ACFxY', '+05:00', 1, NULL, 1, 'go5iyoEuSty1rqBj8ZtiIBkSrtiaP51234mapsvJB1RE6WdvQy7vfJkoCRcB', 0, '2022-04-29 04:23:48', '2022-10-03 10:25:31');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

DROP TABLE IF EXISTS `tbl_users`;
CREATE TABLE IF NOT EXISTS `tbl_users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` int(10) UNSIGNED DEFAULT NULL,
  `country_code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'PK',
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_zone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '+00:00',
  `email_confirm` tinyint(1) NOT NULL DEFAULT '0',
  `code_confirm` tinyint(1) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT '0',
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token_create_date` timestamp NULL DEFAULT NULL,
  `refresh_token_salt` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tbl_users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `name`, `email`, `mobile_no`, `first_name`, `last_name`, `phone`, `country`, `country_code`, `city`, `state`, `zip`, `address`, `address2`, `email_verified_at`, `password`, `time_zone`, `email_confirm`, `code_confirm`, `remember_token`, `role_id`, `photo`, `status`, `token`, `token_create_date`, `refresh_token_salt`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 'HH', 'superadmin@hostingshouse.com', '923214242420', NULL, NULL, NULL, 178, 'pk', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$vaMdEsTmmdHrMnNJk4UpFOZqZtJrMN/X.kNPIq9sihwznQ4dhEuoG', '+05:00', 0, 0, NULL, 1, NULL, '1', NULL, NULL, NULL, 0, '2022-03-31 22:26:05', '2022-03-31 22:26:05'),
(2, 'Muhammad Azeem', 'azeemaslamhh@gmail.com', '923224544258', 'Muhammad Azeem', 'Muhammad Aslam', '923224193397', 178, 'pk', 'Lahore', 'Punjab', '54000', '171 B1 jophar town Lahore', 'Bissmillah Housing scheme', '2022-04-05 03:57:24', '$2y$10$mqqImmdzh4cX.caRmr/4QOT2.yz.bhgvplmVgt6aGumLKmbhQ61x2', '+05:00', 1, 1, NULL, 1, '1657801454bg1.jpg', 'active', '166|rLK6ecEKdlXzhjvYFjmqznBYzNM5CucXa5ALgCAs', '2022-10-21 02:51:40', NULL, 0, '2022-03-31 22:26:05', '2022-10-26 05:39:00');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
