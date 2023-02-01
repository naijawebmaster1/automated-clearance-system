-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Feb 01, 2023 at 09:00 PM
-- Server version: 5.7.34
-- PHP Version: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `transcript-processing`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_02_04_091957_laratrust_setup_tables', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'users-create', 'Create Users', 'Create Users', '2023-02-01 19:46:08', '2023-02-01 19:46:08'),
(2, 'users-read', 'Read Users', 'Read Users', '2023-02-01 19:46:08', '2023-02-01 19:46:08'),
(3, 'users-update', 'Update Users', 'Update Users', '2023-02-01 19:46:08', '2023-02-01 19:46:08'),
(4, 'users-delete', 'Delete Users', 'Delete Users', '2023-02-01 19:46:08', '2023-02-01 19:46:08'),
(5, 'payments-create', 'Create Payments', 'Create Payments', '2023-02-01 19:46:08', '2023-02-01 19:46:08'),
(6, 'payments-read', 'Read Payments', 'Read Payments', '2023-02-01 19:46:08', '2023-02-01 19:46:08'),
(7, 'payments-update', 'Update Payments', 'Update Payments', '2023-02-01 19:46:08', '2023-02-01 19:46:08'),
(8, 'payments-delete', 'Delete Payments', 'Delete Payments', '2023-02-01 19:46:08', '2023-02-01 19:46:08'),
(9, 'profile-read', 'Read Profile', 'Read Profile', '2023-02-01 19:46:08', '2023-02-01 19:46:08'),
(10, 'profile-update', 'Update Profile', 'Update Profile', '2023-02-01 19:46:08', '2023-02-01 19:46:08');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(1, 2),
(2, 2),
(3, 2),
(4, 2),
(5, 2),
(6, 2),
(7, 2),
(8, 2),
(9, 2),
(10, 2),
(1, 3),
(2, 3),
(3, 3),
(4, 3),
(5, 3),
(6, 3),
(7, 3),
(8, 3),
(9, 3),
(10, 3),
(1, 4),
(2, 4),
(3, 4),
(4, 4),
(5, 4),
(6, 4),
(7, 4),
(8, 4),
(9, 4),
(10, 4),
(1, 5),
(2, 5),
(3, 5),
(4, 5),
(5, 5),
(6, 5),
(7, 5),
(8, 5),
(9, 5),
(10, 5),
(1, 6),
(2, 6),
(3, 6),
(4, 6),
(5, 6),
(6, 6),
(7, 6),
(8, 6),
(9, 6),
(10, 6),
(1, 7),
(2, 7),
(3, 7),
(4, 7),
(5, 7),
(6, 7),
(7, 7),
(8, 7),
(9, 7),
(10, 7),
(1, 8),
(2, 8),
(3, 8),
(4, 8),
(5, 8),
(6, 8),
(7, 8),
(8, 8),
(9, 8),
(10, 8),
(1, 9),
(2, 9),
(3, 9),
(4, 9),
(5, 9),
(6, 9),
(7, 9),
(8, 9),
(9, 9),
(10, 9),
(9, 10),
(10, 10);

-- --------------------------------------------------------

--
-- Table structure for table `permission_user`
--

CREATE TABLE `permission_user` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Admin', 'Admin', '2023-02-01 19:46:08', '2023-02-01 19:46:08'),
(2, 'library', 'Library', 'Library', '2023-02-01 19:46:08', '2023-02-01 19:46:08'),
(3, 'hostel', 'Hostel', 'Hostel', '2023-02-01 19:46:08', '2023-02-01 19:46:08'),
(4, 'bursar', 'Bursar', 'Bursar', '2023-02-01 19:46:08', '2023-02-01 19:46:08'),
(5, 'faculty', 'Faculty', 'Faculty', '2023-02-01 19:46:08', '2023-02-01 19:46:08'),
(6, 'sport', 'Sport', 'Sport', '2023-02-01 19:46:08', '2023-02-01 19:46:08'),
(7, 'security', 'Security', 'Security', '2023-02-01 19:46:09', '2023-02-01 19:46:09'),
(8, 'department', 'Department', 'Department', '2023-02-01 19:46:09', '2023-02-01 19:46:09'),
(9, 'laboratory', 'Laboratory', 'Laboratory', '2023-02-01 19:46:09', '2023-02-01 19:46:09'),
(10, 'user', 'User', 'User', '2023-02-01 19:46:09', '2023-02-01 19:46:09');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`role_id`, `user_id`, `user_type`) VALUES
(2, 2, 'App\\Models\\User'),
(3, 8, 'App\\Models\\User'),
(4, 3, 'App\\Models\\User'),
(5, 4, 'App\\Models\\User'),
(6, 1, 'App\\Models\\User'),
(7, 6, 'App\\Models\\User'),
(8, 5, 'App\\Models\\User'),
(9, 7, 'App\\Models\\User'),
(10, 9, 'App\\Models\\User');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mat_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `laboratory` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_user` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `library` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bursar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hostel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `faculty` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sport` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `security` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `department` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `mat_no`, `laboratory`, `is_user`, `library`, `bursar`, `hostel`, `faculty`, `sport`, `security`, `department`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Lars Prince', 'A officia quod simil', NULL, 'true', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'sport@futa.edu.ng', NULL, '$2y$10$juOrWFffw1qEdOn250grruPHW1EO7cqj.YG7TJIr6UWktiA1rjLLy', NULL, '2023-02-01 19:47:09', '2023-02-01 19:47:09'),
(2, 'Odette Hutchinson', 'Aliquip quia nihil d', NULL, 'true', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'library@futa.edu.ng', NULL, '$2y$10$pwdtqgB.zc8IOvFWUIFahO1NpcHMDgPO3Nc0N1/8lg6n2hsgWg2Fu', NULL, '2023-02-01 19:48:01', '2023-02-01 19:48:01'),
(3, 'Peter Thompson', 'Perspiciatis id dol', NULL, 'true', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'bursar@futa.edu.ng', NULL, '$2y$10$dspJp22puqq.UzqjfIR4COmJBpfYC0VE1rdqZmZ.1o3.DIQEVy6.e', NULL, '2023-02-01 19:49:11', '2023-02-01 19:49:11'),
(4, 'Amaya Irwin', 'Ab in animi cupidit', NULL, 'true', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'faculty@futa.edu.ng', NULL, '$2y$10$OLVxlTKB7pRkoDKj8zfqEOK63mb513iyaKhBHaMFP4XuEq8bYo5r6', NULL, '2023-02-01 19:50:02', '2023-02-01 19:50:02'),
(5, 'Yardley Craig', 'Id dolorem blanditii', NULL, 'true', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'department@futa.edu.ng', NULL, '$2y$10$FcCHnqEgel9RDbAtSDut0e63GId2FRj4/GV6DlbwoiOmnSu5BzhkC', NULL, '2023-02-01 19:50:36', '2023-02-01 19:50:36'),
(6, 'Kamal Knox', 'Vitae omnis neque ve', NULL, 'true', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'security@futa.edu.ng', NULL, '$2y$10$2.8WX5KZ22lBjk3S6wiMHeXzgVsYiMm3Xb1vzPN0OCe8vZ3vNNRUa', NULL, '2023-02-01 19:51:14', '2023-02-01 19:51:14'),
(7, 'Ivana Duffy', 'Voluptatum occaecat', NULL, 'true', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'laboratory@futa.edu.ng', NULL, '$2y$10$sRBbwx.dwq/.0hSGYFgpDucssZniHIMh7L88xypUb8kLQbcZyNJbm', NULL, '2023-02-01 19:54:21', '2023-02-01 19:54:21'),
(8, 'Cheyenne Mccoy', 'Repellendus Harum v', NULL, 'true', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'hostel@futa.edu.ng', NULL, '$2y$10$EAFzlZsu9bH51t1.I117CuJ0CTpyG5Jt4mTOuJVz7XboWjhjI0jvS', NULL, '2023-02-01 19:55:39', '2023-02-01 19:55:39'),
(9, 'Katelyn Saunders', 'Aut natus eligendi s', NULL, 'false', NULL, NULL, NULL, 'approved', NULL, NULL, NULL, 'syzywiqe@mailinator.com', NULL, '$2y$10$Be.fyvhccQP3yyASuZeqxuCu9tAS5kQBfwAm.7o7zk41taB7DCjB2', NULL, '2023-02-01 19:56:01', '2023-02-01 19:57:31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD PRIMARY KEY (`user_id`,`permission_id`,`user_type`),
  ADD KEY `permission_user_permission_id_foreign` (`permission_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`user_id`,`role_id`,`user_type`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD CONSTRAINT `permission_user_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
