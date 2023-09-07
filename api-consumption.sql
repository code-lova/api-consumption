-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 08, 2023 at 12:46 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `api-consumption`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_08_15_121756_create_questions_table', 1),
(6, '2023_08_19_224057_add_more_answer_to', 2),
(7, '2023_08_20_082345_add_more_values', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` varchar(255) DEFAULT NULL,
  `answer_a` varchar(255) DEFAULT NULL,
  `answer_b` varchar(255) DEFAULT NULL,
  `answer_c` varchar(255) DEFAULT NULL,
  `answer_d` varchar(255) DEFAULT NULL,
  `answer_e` varchar(255) DEFAULT NULL,
  `answer_f` varchar(255) DEFAULT NULL,
  `answer_a_correct` varchar(255) DEFAULT NULL,
  `answer_b_correct` varchar(255) DEFAULT NULL,
  `answer_c_correct` varchar(255) DEFAULT NULL,
  `answer_d_correct` varchar(255) DEFAULT NULL,
  `answer_e_correct` varchar(255) DEFAULT NULL,
  `answer_f_correct` varchar(255) DEFAULT NULL,
  `difficulty` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `question`, `answer_a`, `answer_b`, `answer_c`, `answer_d`, `answer_e`, `answer_f`, `answer_a_correct`, `answer_b_correct`, `answer_c_correct`, `answer_d_correct`, `answer_e_correct`, `answer_f_correct`, `difficulty`, `category`, `created_at`, `updated_at`) VALUES
(1, 'How do we escape data before storing it in the database?', 'The addslashes function enables us to escape data before storage into the database.', 'The addstring function enables us to escape data before storage into the database.', NULL, NULL, NULL, NULL, 'true', 'false', 'false', 'false', 'false', 'false', 'Medium', 'Code', '2023-08-20 07:29:32', '2023-08-20 07:29:32'),
(2, 'How can you create an E-mail link?', '<a Href=\"a@b\">', '<mail Href=\"a@b\">', '<a Href=\"mailto:a@b.com\">', '<mail>a@b</mail>', NULL, NULL, 'false', 'false', 'true', 'false', 'false', 'false', 'Medium', 'Code', '2023-08-20 07:29:32', '2023-08-20 07:29:32'),
(3, 'Which \"text Type\" has the maximum number of bytes?', 'Long Text', 'Text', 'Tiny Text', 'Medium Text', NULL, NULL, 'true', 'false', 'false', 'false', 'false', 'false', 'Medium', 'SQL', '2023-08-20 07:29:32', '2023-08-20 07:29:32'),
(4, 'What will happen If you run the command \"init 0\" in your terminal', 'Shut down the system', 'Reboot the system', 'Enter single user mode', 'Start the system without a display manager (GUI)', NULL, NULL, 'true', 'false', 'false', 'false', 'false', 'false', 'Medium', 'Linux', '2023-08-20 07:29:32', '2023-08-20 07:29:32'),
(5, 'What command is used to permanently remove a record from a database table?', 'DROP', 'REMOVE', 'DELETE', 'CUT', NULL, NULL, 'false', 'false', 'true', 'false', 'false', 'false', 'Medium', 'SQL', '2023-08-20 07:29:32', '2023-08-20 07:29:32'),
(6, 'Which of the following is an attribute related to font tag?', 'size', 'All the options are style tags', 'color', 'face', NULL, NULL, 'false', 'true', 'false', 'false', 'false', 'false', 'Medium', 'Code', '2023-08-20 07:29:32', '2023-08-20 07:29:32'),
(7, 'Which of the following answers refers to a software tool used for searching and installing software packages on Debian and Debian-based Linux distributions?', 'rpm', 'apt-rpm', 'yum', 'apt-get', NULL, NULL, 'false', 'false', 'false', 'true', 'false', 'false', 'Easy', 'Linux', '2023-08-20 07:29:32', '2023-08-20 07:29:32'),
(8, 'Choose the option to remove write permission for group & others for a file “a.txt”.', 'Select disable write for group and others where file=”a.txt”', 'chmod go-w a.txt', 'chmod w-go a.txt', 'chmod go=”r-x” a.txt', NULL, NULL, 'false', 'true', 'false', 'false', 'false', 'false', 'Medium', 'Linux', '2023-08-20 07:29:32', '2023-08-20 07:29:32'),
(9, '__________ runs on each node and ensures containers are running in a pod.', 'Etcd', 'Flanneld', 'Scheduler', 'Kubectl', NULL, NULL, 'false', 'false', 'false', 'true', 'false', 'false', 'Easy', 'Docker', '2023-08-20 07:29:32', '2023-08-20 07:29:32'),
(10, 'How can a company deal with a monolithic codebase issue?', 'By transitioning from a monolithic codebase to a microservice design so that different microservices can be classified as containers.', 'By building a large Docker image containing the monolithic codebase and deploying it as a single container to Kubernetes', NULL, NULL, NULL, NULL, 'true', 'false', 'false', 'false', 'false', 'false', 'Easy', 'DevOps', '2023-08-20 07:29:32', '2023-08-20 07:29:32'),
(11, 'Which library is needed to be able to use the image function?', 'GD library is needed to execute image functions.', 'GH library is needed to execute image functions.', NULL, NULL, NULL, NULL, 'true', 'false', 'false', 'false', 'false', 'false', 'Medium', 'Code', '2023-08-20 07:38:54', '2023-08-20 07:38:54'),
(12, 'How to write an IF statement for executing some code if \"i\" is NOT equal to 5?', 'if (i != 5)', 'if (i <> 5)', 'if i =! 5 then', 'if i <> 5', NULL, NULL, 'true', 'false', 'false', 'false', 'false', 'false', 'Easy', 'Code', '2023-08-20 07:38:54', '2023-08-20 07:38:54'),
(13, 'How can you create an E-mail link?', '<a Href=\"a@b\">', '<mail Href=\"a@b\">', '<a Href=\"mailto:a@b.com\">', '<mail>a@b</mail>', NULL, NULL, 'false', 'false', 'true', 'false', 'false', 'false', 'Medium', 'Code', '2023-08-20 07:38:54', '2023-08-20 07:38:54'),
(14, 'What are Docker objects?', 'Docker images, containers and services', 'Files, Plugins and Base', 'Code, Databases and Local storage', NULL, NULL, NULL, 'true', 'false', 'false', 'false', 'false', 'false', 'Easy', 'Docker', '2023-08-20 07:38:54', '2023-08-20 07:38:54'),
(15, 'In which directory by default user home directories are created?', '/home', '/usr', '/tmp', '/etc', '/user', NULL, 'true', 'false', 'false', 'false', 'false', 'false', 'Easy', 'Linux', '2023-08-20 07:38:54', '2023-08-20 07:38:54'),
(16, 'If the Plesk server can\'t run Docker locally, you can still connect to a remote Docker server to manage containers. You\'ll need:', 'A virtuozzo 6 container', 'One separate ready-to-code environment', 'A Windows Server', 'The Plesk Docker extension', NULL, NULL, 'false', 'false', 'false', 'true', 'false', 'false', 'Easy', 'Docker', '2023-08-20 07:38:54', '2023-08-20 07:38:54'),
(17, 'The WHERE clause is mandatory when using the SELECT command', 'True', 'False', NULL, NULL, NULL, NULL, 'false', 'true', 'false', 'false', 'false', 'false', 'Easy', 'SQL', '2023-08-20 07:38:54', '2023-08-20 07:38:54'),
(18, 'Which of the following is used to add multiple line comments in PHP ?', '//', '/* */', '{{ }}', '{/ \\}', NULL, NULL, 'false', 'true', 'false', 'false', 'false', 'false', 'Medium', 'Code', '2023-08-20 07:38:54', '2023-08-20 07:38:54'),
(19, 'What is a correct way to add a comment in PHP?', '*\\...\\*', '/*...*/', '<!--...-->', '<comment>...</comment>', NULL, NULL, 'false', 'true', 'false', 'false', 'false', 'false', 'Easy', '', '2023-08-20 07:38:54', '2023-08-20 07:38:54'),
(20, 'What kind of replication is supported by the MySQL Server?', 'Multiple-master Replication', 'MySQL Doesn\'t Support Replication', 'Master To Slave Replication', 'Single File Based Clustering', 'Master to Master Replication', NULL, 'false', 'false', 'true', 'false', 'true', 'false', 'Medium', 'SQL', '2023-08-20 07:38:54', '2023-08-20 07:38:54');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
