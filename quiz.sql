-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 16, 2020 at 11:32 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quiz`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_actionscheduler_actions`
--

CREATE TABLE `wp_actionscheduler_actions` (
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `hook` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `scheduled_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `scheduled_date_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `args` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `schedule` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `attempts` int(11) NOT NULL DEFAULT 0,
  `last_attempt_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_attempt_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `claim_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `extended_args` varchar(8000) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_actionscheduler_actions`
--

INSERT INTO `wp_actionscheduler_actions` (`action_id`, `hook`, `status`, `scheduled_date_gmt`, `scheduled_date_local`, `args`, `schedule`, `group_id`, `attempts`, `last_attempt_gmt`, `last_attempt_local`, `claim_id`, `extended_args`) VALUES
(82, 'action_scheduler/migration_hook', 'complete', '2020-07-14 08:42:59', '2020-07-14 08:42:59', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1594716179;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1594716179;}', 1, 1, '2020-07-14 08:43:05', '2020-07-14 08:43:05', 0, NULL),
(83, 'action_scheduler/migration_hook', 'complete', '2020-07-14 08:44:05', '2020-07-14 08:44:05', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1594716245;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1594716245;}', 1, 1, '2020-07-14 08:44:23', '2020-07-14 08:44:23', 0, NULL),
(84, 'action_scheduler/migration_hook', 'complete', '2020-07-16 04:36:52', '2020-07-16 04:36:52', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1594874212;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1594874212;}', 1, 1, '2020-07-16 04:37:00', '2020-07-16 04:37:00', 0, NULL),
(85, 'action_scheduler/migration_hook', 'complete', '2020-07-16 04:38:00', '2020-07-16 04:38:00', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1594874280;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1594874280;}', 1, 1, '2020-07-16 04:38:02', '2020-07-16 04:38:02', 0, NULL),
(86, 'action_scheduler/migration_hook', 'complete', '2020-07-16 05:34:19', '2020-07-16 05:34:19', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1594877659;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1594877659;}', 1, 1, '2020-07-16 05:34:22', '2020-07-16 05:34:22', 0, NULL),
(87, 'action_scheduler/migration_hook', 'complete', '2020-07-16 05:35:22', '2020-07-16 05:35:22', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1594877722;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1594877722;}', 1, 1, '2020-07-16 05:35:23', '2020-07-16 05:35:23', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wp_actionscheduler_claims`
--

CREATE TABLE `wp_actionscheduler_claims` (
  `claim_id` bigint(20) UNSIGNED NOT NULL,
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_actionscheduler_groups`
--

CREATE TABLE `wp_actionscheduler_groups` (
  `group_id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_actionscheduler_groups`
--

INSERT INTO `wp_actionscheduler_groups` (`group_id`, `slug`) VALUES
(1, 'action-scheduler-migration');

-- --------------------------------------------------------

--
-- Table structure for table `wp_actionscheduler_logs`
--

CREATE TABLE `wp_actionscheduler_logs` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `log_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `log_date_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_actionscheduler_logs`
--

INSERT INTO `wp_actionscheduler_logs` (`log_id`, `action_id`, `message`, `log_date_gmt`, `log_date_local`) VALUES
(1, 82, 'action created', '2020-07-14 08:41:59', '2020-07-14 08:41:59'),
(2, 82, 'action started via WP Cron', '2020-07-14 08:43:05', '2020-07-14 08:43:05'),
(3, 82, 'action complete via WP Cron', '2020-07-14 08:43:05', '2020-07-14 08:43:05'),
(4, 83, 'action created', '2020-07-14 08:43:05', '2020-07-14 08:43:05'),
(5, 83, 'action started via WP Cron', '2020-07-14 08:44:23', '2020-07-14 08:44:23'),
(6, 83, 'action complete via WP Cron', '2020-07-14 08:44:23', '2020-07-14 08:44:23'),
(7, 84, 'action created', '2020-07-16 04:35:52', '2020-07-16 04:35:52'),
(8, 84, 'action started via WP Cron', '2020-07-16 04:37:00', '2020-07-16 04:37:00'),
(9, 84, 'action complete via WP Cron', '2020-07-16 04:37:00', '2020-07-16 04:37:00'),
(10, 85, 'action created', '2020-07-16 04:37:00', '2020-07-16 04:37:00'),
(11, 85, 'action started via WP Cron', '2020-07-16 04:38:02', '2020-07-16 04:38:02'),
(12, 85, 'action complete via WP Cron', '2020-07-16 04:38:02', '2020-07-16 04:38:02'),
(13, 86, 'action created', '2020-07-16 05:33:19', '2020-07-16 05:33:19'),
(14, 86, 'action started via WP Cron', '2020-07-16 05:34:22', '2020-07-16 05:34:22'),
(15, 86, 'action complete via WP Cron', '2020-07-16 05:34:22', '2020-07-16 05:34:22'),
(16, 87, 'action created', '2020-07-16 05:34:22', '2020-07-16 05:34:22'),
(17, 87, 'action started via WP Cron', '2020-07-16 05:35:23', '2020-07-16 05:35:23'),
(18, 87, 'action complete via WP Cron', '2020-07-16 05:35:23', '2020-07-16 05:35:23');

-- --------------------------------------------------------

--
-- Table structure for table `wp_aysquiz_answers`
--

CREATE TABLE `wp_aysquiz_answers` (
  `id` int(150) UNSIGNED NOT NULL,
  `question_id` int(11) UNSIGNED NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `correct` tinyint(1) NOT NULL,
  `ordering` int(11) NOT NULL,
  `weight` double DEFAULT 0,
  `placeholder` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_aysquiz_answers`
--

INSERT INTO `wp_aysquiz_answers` (`id`, `question_id`, `answer`, `image`, `correct`, `ordering`, `weight`, `placeholder`) VALUES
(1, 1, 'Mark Zuckerberg', NULL, 1, 1, 0, NULL),
(2, 1, 'Bill Gates', NULL, 0, 2, 0, NULL),
(3, 1, 'Elon Musk', NULL, 0, 3, 0, NULL),
(4, 1, 'Winston Churchill', NULL, 0, 3, 0, NULL),
(5, 2, 'Mark Zuckerberg', NULL, 0, 1, 0, NULL),
(6, 2, 'Steve Jobs', NULL, 0, 2, 0, NULL),
(7, 2, 'Elon Musk', NULL, 1, 3, 0, NULL),
(8, 2, 'Robert De Niro', NULL, 0, 3, 0, NULL),
(9, 3, 'Elon Musk', NULL, 0, 1, 0, NULL),
(10, 3, 'Bill Gates', NULL, 1, 2, 0, NULL),
(11, 3, 'Steve Jobs', NULL, 0, 3, 0, NULL),
(12, 3, 'Clint Eastwood', NULL, 0, 3, 0, NULL),
(13, 4, '300', NULL, 0, 1, 0, NULL),
(14, 4, '100', NULL, 0, 2, 0, NULL),
(15, 4, '200', NULL, 1, 3, 0, NULL),
(16, 5, '30', NULL, 1, 1, 0, NULL),
(17, 5, '40', NULL, 0, 2, 0, NULL),
(18, 5, '50', NULL, 0, 3, 0, NULL),
(19, 6, '60', NULL, 0, 1, 0, NULL),
(20, 6, '50', NULL, 1, 2, 0, NULL),
(21, 6, '100', NULL, 0, 3, 0, NULL),
(22, 7, 'In the wordpress site widgets section', NULL, 1, 1, 0, ''),
(23, 7, 'By installing a sidebar plugin', NULL, 0, 2, 0, ''),
(24, 7, 'Inside the theme template', NULL, 0, 3, 0, ''),
(25, 7, 'In the wordpress site setting section', NULL, 0, 4, 0, ''),
(26, 8, 'Wordpress settings', NULL, 0, 1, 0, ''),
(27, 8, 'wp_config.php file', NULL, 0, 2, 0, ''),
(28, 8, 'Wordpress appearence', NULL, 1, 3, 0, ''),
(29, 8, 'Wordpress_setting.php file', NULL, 0, 4, 0, ''),
(30, 9, 'Completely delete all the plugin folders from wp-content', NULL, 0, 1, 0, ''),
(31, 9, 'Rename the specific plugin folder found in /wp-content/plugins', NULL, 1, 2, 0, ''),
(32, 9, 'Delete the current theme folder from /wp-content/themes', NULL, 0, 3, 0, ''),
(33, 9, 'Re-install wordpress', NULL, 0, 4, 0, ''),
(34, 10, 'PostgreSQL', NULL, 0, 1, 0, ''),
(35, 10, 'Notes', NULL, 0, 2, 0, ''),
(36, 10, 'MySQL', NULL, 1, 3, 0, ''),
(37, 10, 'Oracle', NULL, 0, 4, 0, ''),
(38, 11, 'Security functions that run inside wordpress', NULL, 0, 1, 0, ''),
(39, 11, 'Groups of plugins which control wordpress behaviour', NULL, 0, 2, 0, ''),
(40, 11, 'Settings options available to wordpress administrator', NULL, 0, 3, 0, ''),
(41, 11, 'Ways to change the default behaviour of wordpress', NULL, 1, 4, 0, ''),
(42, 12, '/wp-logout', NULL, 0, 1, 0, ''),
(43, 12, '/wp-admin', NULL, 1, 2, 0, ''),
(44, 12, '/wp-wordpress', NULL, 0, 3, 0, ''),
(45, 12, '/admin', NULL, 0, 4, 0, ''),
(46, 13, '/wp-content/themes', NULL, 1, 1, 0, ''),
(47, 13, '/wp-content/main', NULL, 0, 2, 0, ''),
(48, 13, '/wp-content/uploads', NULL, 0, 3, 0, ''),
(49, 13, '/wp-content', NULL, 0, 4, 0, ''),
(50, 14, 'The wordpress database only', NULL, 0, 1, 0, ''),
(51, 14, 'In the wordpress uploads folder with metadata stored on the database', NULL, 1, 2, 0, ''),
(52, 14, 'On my wordpress theme folder', NULL, 0, 3, 0, ''),
(53, 14, 'On wordpress CDN storage', NULL, 0, 4, 0, ''),
(54, 15, 'Wordpress is a blogging platform', NULL, 0, 1, 0, ''),
(55, 15, 'Wordpress is an e-commerce platform', NULL, 0, 2, 0, ''),
(56, 15, 'Wordpress is a CMS platform', NULL, 1, 3, 0, ''),
(57, 15, 'Wordpress is a hosting platform', NULL, 0, 4, 0, ''),
(58, 16, 'The complete url of your wordpress site', NULL, 0, 1, 0, ''),
(59, 16, 'A popular wordpress plugin', NULL, 0, 2, 0, ''),
(60, 16, 'The numeric IP address of your wordpress site', NULL, 0, 3, 0, ''),
(61, 16, 'Part of your wordpress url wich you set', NULL, 1, 4, 0, ''),
(62, 17, 'Subscriber', NULL, 0, 1, 0, ''),
(63, 17, 'Editor', NULL, 0, 2, 0, ''),
(64, 17, 'Adimistor', NULL, 0, 3, 0, ''),
(65, 17, 'System', NULL, 1, 4, 0, ''),
(66, 18, 'Python', NULL, 0, 1, 0, ''),
(67, 18, 'PHP', NULL, 1, 2, 0, ''),
(68, 18, 'C', NULL, 0, 3, 0, ''),
(69, 18, 'Perl', NULL, 0, 4, 0, ''),
(70, 19, 'It is located inside wordpress root folder', NULL, 0, 1, 0, ''),
(71, 19, 'In my wordpress theme folder', NULL, 0, 2, 0, ''),
(72, 19, 'It is stored in the wordpress root directory on your web server', NULL, 1, 3, 0, ''),
(73, 19, 'It is located inside wordpress database', NULL, 0, 4, 0, ''),
(74, 20, 'Moderate comments', NULL, 1, 1, 0, ''),
(75, 20, 'Edit posts', NULL, 1, 2, 0, ''),
(76, 20, 'Edit pages', NULL, 0, 3, 0, ''),
(77, 20, 'Publish posts', NULL, 0, 4, 0, ''),
(78, 21, 'Role', NULL, 1, 1, 0, ''),
(79, 21, 'Username', NULL, 0, 2, 0, ''),
(80, 21, 'Access tokens', NULL, 0, 3, 0, ''),
(81, 21, 'Cookies', NULL, 0, 4, 0, ''),
(82, 22, 'Wordpress recommends less than 10,000 posts', NULL, 0, 1, 0, ''),
(83, 22, 'It depends on your server size', NULL, 0, 2, 0, ''),
(84, 22, 'Wordpress is limited to 1000 posts', NULL, 0, 3, 0, ''),
(85, 22, 'There is no limit', NULL, 1, 4, 0, ''),
(86, 23, 'Special version of wordpress that can support many sites and is not free', NULL, 0, 1, 0, ''),
(87, 23, 'A popular wordpress theme that supports mobile support', NULL, 0, 2, 0, ''),
(88, 23, 'Wp configuration feature that supports multisites', NULL, 1, 3, 0, ''),
(89, 23, 'A WP plugin that supports multiple sites', NULL, 0, 4, 0, ''),
(90, 24, 'They are stored in wordpress database', NULL, 1, 1, 0, ''),
(91, 24, 'Ther are stored in wordpress.org and not on my site', NULL, 0, 2, 0, ''),
(92, 24, 'They are stored in wordpress theme folder', NULL, 0, 3, 0, ''),
(93, 24, 'They are stored in wordpress plugins folder', NULL, 0, 4, 0, ''),
(94, 25, 'Its easy to use', NULL, 1, 1, 0, ''),
(95, 25, 'Its used by 90% developers', NULL, 0, 2, 0, ''),
(96, 25, 'Its highly customizable', NULL, 1, 3, 0, ''),
(97, 25, 'Its used by 80% of websites among CMS', NULL, 0, 4, 0, ''),
(98, 26, 'One only', NULL, 0, 1, 0, ''),
(99, 26, 'Unlimited', NULL, 1, 2, 0, ''),
(100, 26, 'Depends on the server memory', NULL, 0, 3, 0, ''),
(101, 26, 'maximum ten', NULL, 0, 4, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_aysquiz_categories`
--

CREATE TABLE `wp_aysquiz_categories` (
  `id` int(16) UNSIGNED NOT NULL,
  `title` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(3) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_aysquiz_categories`
--

INSERT INTO `wp_aysquiz_categories` (`id`, `title`, `description`, `published`) VALUES
(1, 'Uncategorized', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_aysquiz_questions`
--

CREATE TABLE `wp_aysquiz_questions` (
  `id` int(16) UNSIGNED NOT NULL,
  `category_id` int(16) UNSIGNED NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `question_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wrong_answer_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `right_answer_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `question_hint` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `explanation` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(3) UNSIGNED NOT NULL,
  `create_date` datetime DEFAULT NULL,
  `not_influence_to_score` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` double DEFAULT 1,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_aysquiz_questions`
--

INSERT INTO `wp_aysquiz_questions` (`id`, `category_id`, `question`, `question_image`, `wrong_answer_text`, `right_answer_text`, `question_hint`, `explanation`, `type`, `published`, `create_date`, `not_influence_to_score`, `weight`, `options`) VALUES
(1, 1, 'Who is in the picture?', 'https://freedemo.ays-pro.com/wp-content/uploads/2018/07/416x416.jpg', NULL, NULL, NULL, NULL, 'radio', 1, NULL, NULL, 1, NULL),
(2, 1, 'Do you know him?', 'https://freedemo.ays-pro.com/wp-content/uploads/2018/07/416x416-1.jpg', NULL, NULL, NULL, NULL, 'radio', 1, NULL, NULL, 1, NULL),
(3, 1, 'Select right answer?', 'https://freedemo.ays-pro.com/wp-content/uploads/2018/07/416x416-2.jpg', NULL, NULL, NULL, NULL, 'radio', 1, NULL, NULL, 1, NULL),
(4, 1, '5*40', '', NULL, NULL, NULL, NULL, 'radio', 1, NULL, NULL, 1, NULL),
(5, 1, '10+20', '', NULL, NULL, NULL, NULL, 'radio', 1, NULL, NULL, 1, NULL),
(6, 1, '150/3', '', NULL, NULL, NULL, NULL, 'radio', 1, NULL, NULL, 1, NULL),
(7, 1, '<p style=\\\"text-align: center;\\\"><strong>How can I add a sidebar to my WordPress theme?</strong></p>\n', NULL, '', '', '', '', 'radio', 1, '2020-07-16 04:44:44', 'off', 1, '{\"author\":\"{\\\"id\\\":1,\\\"name\\\":\\\"abiha\\\"}\",\"use_html\":\"off\"}'),
(8, 1, '<p style=\\\"text-align: center;\\\"><strong>You can change your WP themes using?</strong></p>\n', NULL, '', '', '', '', 'radio', 1, '2020-07-16 04:57:08', 'off', 1, '{\"author\":\"{\\\"id\\\":1,\\\"name\\\":\\\"abiha\\\"}\",\"use_html\":\"off\"}'),
(9, 1, '<p style=\\\"text-align: center;\\\"><strong>A freshly installed plugin crashes your WordPress site with no access to the dashboard. What can you do to gain back access to the dashboard?</strong></p>\n', NULL, '', '', '', '', 'radio', 1, '2020-07-16 04:59:09', 'off', 1, '{\"author\":\"{\\\"id\\\":1,\\\"name\\\":\\\"abiha\\\"}\",\"use_html\":\"off\"}'),
(10, 1, '<p style=\\\"text-align: center;\\\"><strong>What database does WP use?</strong></p>\n', NULL, '', '', '', '', 'radio', 1, '2020-07-16 05:00:51', 'off', 1, '{\"author\":\"{\\\"id\\\":1,\\\"name\\\":\\\"abiha\\\"}\",\"use_html\":\"off\"}'),
(11, 1, '<p style=\\\"text-align: center;\\\"><strong>What are WordPress hooks?</strong></p>\n', NULL, '', '', '', '', 'radio', 1, '2020-07-16 05:02:03', 'off', 1, '{\"author\":\"{\\\"id\\\":1,\\\"name\\\":\\\"abiha\\\"}\",\"use_html\":\"off\"}'),
(12, 1, '<p style=\\\"text-align: center;\\\"><strong>To access your admin area, you need to put the following URL</strong></p>\n', NULL, '', '', '', '', 'radio', 1, '2020-07-16 05:03:05', 'off', 1, '{\"author\":\"{\\\"id\\\":1,\\\"name\\\":\\\"abiha\\\"}\",\"use_html\":\"off\"}'),
(13, 1, '<p style=\\\"text-align: center;\\\"><strong>WordPress themes are found where? </strong></p>\n', NULL, '', '', '', '', 'radio', 1, '2020-07-16 05:04:43', 'off', 1, '{\"author\":\"{\\\"id\\\":1,\\\"name\\\":\\\"abiha\\\"}\",\"use_html\":\"off\"}'),
(14, 1, '<p style=\\\"text-align: center;\\\"><strong>When I upload files and images to my WP site they are stored where? </strong></p>\n', NULL, '', '', '', '', 'radio', 1, '2020-07-16 05:05:51', 'off', 1, '{\"author\":\"{\\\"id\\\":1,\\\"name\\\":\\\"abiha\\\"}\",\"use_html\":\"off\"}'),
(15, 1, '<p style=\\\"text-align: center;\\\"><strong>What is the best way to describe WordPress?</strong></p>\n', NULL, '', '', '', '', 'radio', 1, '2020-07-16 05:07:05', 'off', 1, '{\"author\":\"{\\\"id\\\":1,\\\"name\\\":\\\"abiha\\\"}\",\"use_html\":\"off\"}'),
(16, 1, '<p style=\\\"text-align: center;\\\"><strong>What is a permalink? </strong></p>\n', NULL, '', '', '', '', 'radio', 1, '2020-07-16 05:08:17', 'off', 1, '{\"author\":\"{\\\"id\\\":1,\\\"name\\\":\\\"abiha\\\"}\",\"use_html\":\"off\"}'),
(17, 1, '<p style=\\\"text-align: center;\\\"><strong>Which one of the following is not a WordPress role?</strong></p>\n', NULL, '', '', '', '', 'radio', 1, '2020-07-16 05:09:17', 'off', 1, '{\"author\":\"{\\\"id\\\":1,\\\"name\\\":\\\"abiha\\\"}\",\"use_html\":\"off\"}'),
(18, 1, '<p style=\\\"text-align: center;\\\"><strong>What programing language is WordPress written in?</strong></p>\n', NULL, '', '', '', '', 'radio', 1, '2020-07-16 05:10:09', 'off', 1, '{\"author\":\"{\\\"id\\\":1,\\\"name\\\":\\\"abiha\\\"}\",\"use_html\":\"off\"}'),
(19, 1, '<p style=\\\"text-align: center;\\\"><strong>Where can I find wp_config.php file?</strong></p>\n', NULL, '', '', '', '', 'radio', 1, '2020-07-16 05:11:20', 'off', 1, '{\"author\":\"{\\\"id\\\":1,\\\"name\\\":\\\"abiha\\\"}\",\"use_html\":\"off\"}'),
(20, 1, '<p style=\\\"text-align: center;\\\"><strong>What can the Contributor role do?</strong></p>\n', NULL, '', '', '', '', 'checkbox', 1, '2020-07-16 05:12:22', 'off', 1, '{\"author\":\"{\\\"id\\\":1,\\\"name\\\":\\\"abiha\\\"}\",\"use_html\":\"off\"}'),
(21, 1, '<p style=\\\"text-align: center;\\\"><strong>What function does WP use to control user access to different features?</strong></p>\n', NULL, '', '', '', '', 'radio', 1, '2020-07-16 05:16:38', 'off', 1, '{\"author\":\"{\\\"id\\\":1,\\\"name\\\":\\\"abiha\\\"}\",\"use_html\":\"off\"}'),
(22, 1, '<p style=\\\"text-align: center;\\\"><strong>How many WordPress posts can I create?</strong></p>\n', NULL, '', '', '', '', 'radio', 1, '2020-07-16 05:17:48', 'off', 1, '{\"author\":\"{\\\"id\\\":1,\\\"name\\\":\\\"abiha\\\"}\",\"use_html\":\"off\"}'),
(23, 1, '<p style=\\\"text-align: center;\\\"><strong>What is WP multisite? </strong></p>\n', NULL, '', '', '', '', 'radio', 1, '2020-07-16 05:18:37', 'off', 1, '{\"author\":\"{\\\"id\\\":1,\\\"name\\\":\\\"abiha\\\"}\",\"use_html\":\"off\"}'),
(24, 1, '<p style=\\\"text-align: center;\\\"><strong>Where are my WordPress plugins options stored?</strong></p>\n', NULL, '', '', '', '', 'radio', 1, '2020-07-16 05:20:41', 'off', 1, '{\"author\":\"{\\\"id\\\":1,\\\"name\\\":\\\"abiha\\\"}\",\"use_html\":\"off\"}'),
(25, 1, '<p style=\\\"text-align: center;\\\"><strong>Why use WordPress?</strong></p>\n', NULL, '', '', '', '', 'checkbox', 1, '2020-07-16 05:22:10', 'off', 1, '{\"author\":\"{\\\"id\\\":1,\\\"name\\\":\\\"abiha\\\"}\",\"use_html\":\"off\"}'),
(26, 1, '<p style=\\\"text-align: center;\\\"><strong>How many templates can one theme contain?</strong></p>\n', NULL, '', '', '', '', 'radio', 1, '2020-07-16 05:30:22', 'off', 1, '{\"author\":\"{\\\"id\\\":1,\\\"name\\\":\\\"abiha\\\"}\",\"use_html\":\"off\"}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_aysquiz_quizcategories`
--

CREATE TABLE `wp_aysquiz_quizcategories` (
  `id` int(16) UNSIGNED NOT NULL,
  `title` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(1) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_aysquiz_quizcategories`
--

INSERT INTO `wp_aysquiz_quizcategories` (`id`, `title`, `description`, `published`) VALUES
(1, 'Uncategorized', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_aysquiz_quizes`
--

CREATE TABLE `wp_aysquiz_quizes` (
  `id` int(16) UNSIGNED NOT NULL,
  `title` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `quiz_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quiz_category_id` int(11) UNSIGNED NOT NULL,
  `question_ids` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int(16) NOT NULL,
  `published` tinyint(3) UNSIGNED NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intervals` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_aysquiz_quizes`
--

INSERT INTO `wp_aysquiz_quizes` (`id`, `title`, `description`, `quiz_image`, `quiz_category_id`, `question_ids`, `ordering`, `published`, `options`, `intervals`) VALUES
(1, 'CELEBRITIES', 'How well you know the celebrities', NULL, 1, '1,2,3', 1, 1, '{\"color\":\"#2c2c2c\",\"bg_color\":\"#2c2c2c\",\"text_color\":\"#fff\",\"height\":350,\"width\":400,\"timer\":60,\"information_form\":\"after\",\"form_name\":\"on\",\"form_email\":\"on\",\"form_phone\":\"off\",\"enable_logged_users\":\"off\",\"image_width\":\"\",\"image_height\":\"\",\"enable_correction\":\"off\",\"enable_questions_counter\":\"on\",\"limit_users\":\"off\",\"limitation_message\":\"\",\"redirect_url\":\"\",\"redirection_delay\":\"\",\"enable_progress_bar\":\"on\",\"randomize_questions\":\"off\",\"randomize_answers\":\"on\",\"enable_questions_result\":\"on\",\"custom_css\":\"\",\"enable_restriction_pass\":\"off\",\"restriction_pass_message\":\"\",\"user_role\":\"\",\"result_text\":\"Thank you for passing this quiz\",\"enable_result\":\"off\",\"enable_timer\":\"on\",\"enable_pass_count\":\"on\",\"enable_quiz_rate\":\"on\",\"enable_rate_avg\":\"on\",\"enable_rate_comments\":\"on\",\"hide_score\":\"off\",\"rate_form_title\":\"Did you like this quiz\",\"enable_box_shadow\":\"on\",\"box_shadow_color\":\"#444\",\"quiz_border_radius\":\"2\",\"quiz_bg_image\":\"\",\"enable_border\":\"off\",\"quiz_border_width\":\"1\",\"quiz_border_style\":\"solid\",\"quiz_border_color\":\"#000\",\"quiz_timer_in_title\":\"on\",\"enable_restart_button\":\"on\",\"quiz_loader\":\"dual_ring\",\"create_date\":\"2020-07-16 04:36:31\",\"author\":{\"name\":\"Unknown\"},\"autofill_user_data\":\"on\",\"quest_animation\":\"shake\",\"form_title\":\"Please fill in empty fields\",\"enable_bg_music\":\"off\",\"quiz_bg_music\":\"\",\"answers_font_size\":\"14\",\"show_create_date\":\"on\",\"show_author\":\"off\",\"enable_early_finish\":\"off\",\"enable_live_progress_bar\":\"on\",\"enable_percent_view\":\"on\",\"enable_average_statistical\":\"on\",\"enable_next_button\":\"on\",\"enable_previous_button\":\"on\",\"enable_arrows\":\"on\",\"timer_text\":\"You have %%time%% to pass to the quiz.\",\"quiz_theme\":\"elegant_dark\",\"enable_social_buttons\":\"on\"}', NULL),
(2, 'MATHEMATIC QUIZ', 'Math quiz helps us to increase our knowledge', NULL, 1, '4,5,6', 2, 1, '{\"color\":\"#27AE60\",\"bg_color\":\"#fff\",\"text_color\":\"#000\",\"height\":350,\"width\":400,\"timer\":0,\"information_form\":\"disable\",\"form_name\":\"off\",\"form_email\":\"off\",\"form_phone\":\"off\",\"enable_logged_users\":\"off\",\"image_width\":\"\",\"image_height\":\"\",\"enable_correction\":\"on\",\"enable_questions_counter\":\"on\",\"limit_users\":\"off\",\"limitation_message\":\"\",\"redirect_url\":\"\",\"redirection_delay\":\"\",\"enable_progress_bar\":\"on\",\"randomize_questions\":\"on\",\"randomize_answers\":\"off\",\"enable_questions_result\":\"on\",\"custom_css\":\"\",\"enable_restriction_pass\":\"off\",\"restriction_pass_message\":\"\",\"user_role\":\"\",\"result_text\":\"Thank you for passing this quiz\",\"enable_result\":\"off\",\"enable_timer\":\"off\",\"enable_pass_count\":\"on\",\"enable_quiz_rate\":\"on\",\"enable_rate_avg\":\"on\",\"enable_rate_comments\":\"on\",\"hide_score\":\"off\",\"rate_form_title\":\"Please rate this quiz\",\"enable_box_shadow\":\"on\",\"box_shadow_color\":\"#000\",\"quiz_border_radius\":\"3\",\"quiz_bg_image\":\"\",\"enable_border\":\"off\",\"quiz_border_width\":\"1\",\"quiz_border_style\":\"solid\",\"quiz_border_color\":\"#000\",\"quiz_timer_in_title\":\"off\",\"enable_restart_button\":\"on\",\"quiz_loader\":\"circle\",\"create_date\":\"2020-07-16 04:36:31\",\"author\":{\"name\":\"Unknown\"},\"autofill_user_data\":\"off\",\"quest_animation\":\"fade\",\"form_title\":\"\",\"enable_bg_music\":\"off\",\"quiz_bg_music\":\"\",\"answers_font_size\":\"16\",\"show_create_date\":\"on\",\"show_author\":\"off\",\"enable_early_finish\":\"on\",\"enable_live_progress_bar\":\"on\",\"enable_percent_view\":\"off\",\"enable_average_statistical\":\"off\",\"enable_next_button\":\"on\",\"enable_previous_button\":\"off\",\"enable_arrows\":\"off\",\"timer_text\":\"\",\"quiz_theme\":\"classic_light\",\"enable_social_buttons\":\"on\"}', NULL),
(3, 'WordPress Quiz', '', 'http://localhost/quiz/wp-content/uploads/2020/07/quiz.png', 1, '7,8,9,10,11,20,12,13,14,15,16,17,18,19,21,22,23,24,25,26', 3, 1, '{\"color\":\"rgba(3,169,244,0.86)\",\"bg_color\":\"#ffffff\",\"text_color\":\"#515151\",\"height\":350,\"width\":400,\"enable_logged_users\":\"off\",\"information_form\":\"disable\",\"form_name\":null,\"form_email\":null,\"form_phone\":null,\"image_width\":\"\",\"image_height\":\"\",\"enable_correction\":\"off\",\"enable_progress_bar\":\"on\",\"enable_questions_result\":\"on\",\"randomize_questions\":\"off\",\"randomize_answers\":\"off\",\"enable_questions_counter\":\"on\",\"enable_restriction_pass\":\"off\",\"restriction_pass_message\":\"\",\"user_role\":[],\"custom_css\":\"\",\"limit_users\":\"on\",\"limitation_message\":\"Thank you! Your quiz has been submitted\",\"redirect_url\":\"\",\"redirection_delay\":0,\"answers_view\":\"list\",\"enable_rtl_direction\":\"off\",\"enable_logged_users_message\":\"\",\"questions_count\":\"\",\"enable_question_bank\":\"off\",\"enable_live_progress_bar\":\"off\",\"enable_percent_view\":\"off\",\"enable_average_statistical\":\"on\",\"enable_next_button\":\"on\",\"enable_previous_button\":\"off\",\"enable_arrows\":\"off\",\"timer_text\":\"You have 30 mins to complete the quiz!\",\"quiz_theme\":\"classic_light\",\"enable_social_buttons\":\"on\",\"result_text\":\"\",\"enable_pass_count\":\"on\",\"hide_score\":\"off\",\"rate_form_title\":\"\",\"box_shadow_color\":\"#000\",\"quiz_border_radius\":\"0\",\"quiz_bg_image\":\"\",\"quiz_border_width\":\"1\",\"quiz_border_style\":\"solid\",\"quiz_border_color\":\"#000\",\"quiz_loader\":\"default\",\"create_date\":\"2020-07-16 05:38:39\",\"author\":{\"id\":1,\"name\":\"abiha\"},\"quest_animation\":\"shake\",\"form_title\":\"\",\"enable_bg_music\":\"off\",\"quiz_bg_music\":\"\",\"answers_font_size\":\"15\",\"show_create_date\":\"on\",\"show_author\":\"on\",\"enable_early_finish\":\"off\",\"answers_rw_texts\":\"on_passing\",\"disable_store_data\":\"off\",\"enable_background_gradient\":\"off\",\"background_gradient_color_1\":\"#000\",\"background_gradient_color_2\":\"#fff\",\"quiz_gradient_direction\":\"vertical\",\"redirect_after_submit\":\"off\",\"submit_redirect_url\":\"\",\"submit_redirect_delay\":\"\",\"progress_bar_style\":\"second\",\"enable_exit_button\":\"on\",\"exit_redirect_url\":\"http:\\/\\/localhost\\/quiz\\/logout\\/\",\"image_sizing\":\"cover\",\"quiz_bg_image_position\":\"center center\",\"custom_class\":\"\",\"enable_social_links\":\"off\",\"social_links\":{\"linkedin_link\":\"\",\"facebook_link\":\"\",\"twitter_link\":\"\"},\"show_quiz_title\":\"on\",\"show_quiz_desc\":\"off\",\"show_login_form\":\"off\",\"mobile_max_width\":\"\",\"limit_users_by\":\"user_id\",\"active_date_check\":\"off\",\"activeInterval\":\"2020-07-16 07:24:05\",\"deactiveInterval\":\"2020-07-16 07:24:05\",\"active_date_pre_start_message\":\"The quiz will be available soon!\",\"active_date_message\":\"The quiz has expired!\",\"explanation_time\":\"4\",\"enable_clear_answer\":\"off\",\"show_category\":\"off\",\"show_question_category\":\"off\",\"display_score\":\"by_correctness\",\"enable_rw_asnwers_sounds\":\"off\",\"ans_right_wrong_icon\":\"style-1\",\"quiz_bg_img_in_finish_page\":\"off\",\"finish_after_wrong_answer\":\"off\",\"after_timer_text\":\"Times Up!\\r\\n\\r\\nQuiz submitted.\",\"enable_enter_key\":\"on\",\"buttons_text_color\":\"#515151\",\"buttons_position\":\"center\",\"show_questions_explanation\":\"on_passing\",\"enable_audio_autoplay\":\"off\",\"buttons_size\":\"medium\",\"buttons_font_size\":\"18\",\"buttons_left_right_padding\":\"40\",\"buttons_top_bottom_padding\":\"10\",\"buttons_border_radius\":\"20\",\"enable_leave_page\":\"on\",\"enable_tackers_count\":\"off\",\"tackers_count\":\"\",\"pass_score\":10,\"pass_score_message\":\"<h4 style=\\\"text-align: center;\\\">Congratulations!<\\/h4>\\r\\n<p style=\\\"text-align: center;\\\">You passed the quiz!<\\/p>\",\"fail_score_message\":\"<h4 style=\\\"text-align: center;\\\">Oops!<\\/h4>\\r\\n<p style=\\\"text-align: center;\\\">You are not passed the quiz!\\r\\nTry again!<\\/p>\",\"question_font_size\":16,\"quiz_width_by_percentage_px\":\"pixels\",\"required_fields\":null,\"enable_timer\":\"off\",\"enable_quiz_rate\":\"off\",\"enable_rate_avg\":\"off\",\"enable_box_shadow\":\"on\",\"enable_border\":\"off\",\"quiz_timer_in_title\":\"on\",\"enable_rate_comments\":\"off\",\"enable_restart_button\":\"off\",\"autofill_user_data\":\"off\",\"timer\":1800}', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wp_aysquiz_rates`
--

CREATE TABLE `wp_aysquiz_rates` (
  `id` int(11) NOT NULL,
  `quiz_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_ip` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_email` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_phone` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rate_date` datetime NOT NULL,
  `score` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `review` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_aysquiz_reports`
--

CREATE TABLE `wp_aysquiz_reports` (
  `id` int(11) NOT NULL,
  `quiz_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_ip` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_email` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_phone` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `score` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read` tinyint(3) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_aysquiz_reports`
--

INSERT INTO `wp_aysquiz_reports` (`id`, `quiz_id`, `user_id`, `user_ip`, `user_name`, `user_email`, `user_phone`, `start_date`, `end_date`, `score`, `options`, `read`) VALUES
(1, 3, 1, '::1', NULL, NULL, NULL, '2020-07-16 01:21:35', '2020-07-16 01:24:11', '95', '{\"correctness\":{\"question_id_7\":true,\"question_id_8\":true,\"question_id_9\":true,\"question_id_10\":true,\"question_id_11\":true,\"question_id_20\":false,\"question_id_12\":true,\"question_id_13\":true,\"question_id_14\":true,\"question_id_15\":true,\"question_id_16\":true,\"question_id_17\":true,\"question_id_18\":true,\"question_id_19\":true,\"question_id_21\":true,\"question_id_22\":true,\"question_id_23\":true,\"question_id_24\":true,\"question_id_25\":true,\"question_id_26\":true},\"user_answered\":{\"question_id_7\":\"22\",\"question_id_8\":\"28\",\"question_id_9\":\"31\",\"question_id_10\":\"36\",\"question_id_11\":\"41\",\"question_id_20\":[\"74\",\"76\"],\"question_id_12\":\"43\",\"question_id_13\":\"46\",\"question_id_14\":\"51\",\"question_id_15\":\"56\",\"question_id_16\":\"61\",\"question_id_17\":\"65\",\"question_id_18\":\"67\",\"question_id_19\":\"72\",\"question_id_21\":\"78\",\"question_id_22\":\"85\",\"question_id_23\":\"88\",\"question_id_24\":\"90\",\"question_id_25\":[\"94\",\"96\"],\"question_id_26\":\"99\"},\"passed_time\":\"2 minutes 36 seconds\",\"calc_method\":\"by_correctness\",\"attributes_information\":[]}', 0),
(2, 3, 1, '::1', NULL, NULL, NULL, '2020-07-16 01:39:32', '2020-07-16 01:44:34', '100', '{\"correctness\":{\"question_id_7\":true,\"question_id_8\":true,\"question_id_9\":true,\"question_id_10\":true,\"question_id_11\":true,\"question_id_20\":true,\"question_id_12\":true,\"question_id_13\":true,\"question_id_14\":true,\"question_id_15\":true,\"question_id_16\":true,\"question_id_17\":true,\"question_id_18\":true,\"question_id_19\":true,\"question_id_21\":true,\"question_id_22\":true,\"question_id_23\":true,\"question_id_24\":true,\"question_id_25\":true,\"question_id_26\":true},\"user_answered\":{\"question_id_7\":\"22\",\"question_id_8\":\"28\",\"question_id_9\":\"31\",\"question_id_10\":\"36\",\"question_id_11\":\"41\",\"question_id_20\":[\"74\",\"75\"],\"question_id_12\":\"43\",\"question_id_13\":\"46\",\"question_id_14\":\"51\",\"question_id_15\":\"56\",\"question_id_16\":\"61\",\"question_id_17\":\"65\",\"question_id_18\":\"67\",\"question_id_19\":\"72\",\"question_id_21\":\"78\",\"question_id_22\":\"85\",\"question_id_23\":\"88\",\"question_id_24\":\"90\",\"question_id_25\":[\"94\",\"96\"],\"question_id_26\":\"99\"},\"passed_time\":\"5 minutes 2 seconds\",\"calc_method\":\"by_correctness\",\"attributes_information\":[]}', 0),
(3, 3, 4, '::1', NULL, NULL, NULL, '2020-07-16 02:25:39', '2020-07-16 02:28:57', '95', '{\"correctness\":{\"question_id_7\":true,\"question_id_8\":true,\"question_id_9\":true,\"question_id_10\":false,\"question_id_11\":true,\"question_id_20\":true,\"question_id_12\":true,\"question_id_13\":true,\"question_id_14\":true,\"question_id_15\":true,\"question_id_16\":true,\"question_id_17\":true,\"question_id_18\":true,\"question_id_19\":true,\"question_id_21\":true,\"question_id_22\":true,\"question_id_23\":true,\"question_id_24\":true,\"question_id_25\":true,\"question_id_26\":true},\"user_answered\":{\"question_id_7\":\"22\",\"question_id_8\":\"28\",\"question_id_9\":\"31\",\"question_id_10\":\"\",\"question_id_11\":\"41\",\"question_id_20\":[\"74\",\"75\"],\"question_id_12\":\"43\",\"question_id_13\":\"46\",\"question_id_14\":\"51\",\"question_id_15\":\"56\",\"question_id_16\":\"61\",\"question_id_17\":\"65\",\"question_id_18\":\"67\",\"question_id_19\":\"72\",\"question_id_21\":\"78\",\"question_id_22\":\"85\",\"question_id_23\":\"88\",\"question_id_24\":\"90\",\"question_id_25\":[\"94\",\"96\"],\"question_id_26\":\"99\"},\"passed_time\":\"3 minutes 18 seconds\",\"calc_method\":\"by_correctness\",\"attributes_information\":[]}', 0),
(4, 3, 5, '::1', NULL, NULL, NULL, '2020-07-16 04:20:24', '2020-07-16 04:21:59', '100', '{\"correctness\":{\"question_id_7\":true,\"question_id_8\":true,\"question_id_9\":true,\"question_id_10\":true,\"question_id_11\":true,\"question_id_20\":true,\"question_id_12\":true,\"question_id_13\":true,\"question_id_14\":true,\"question_id_15\":true,\"question_id_16\":true,\"question_id_17\":true,\"question_id_18\":true,\"question_id_19\":true,\"question_id_21\":true,\"question_id_22\":true,\"question_id_23\":true,\"question_id_24\":true,\"question_id_25\":true,\"question_id_26\":true},\"user_answered\":{\"question_id_7\":\"22\",\"question_id_8\":\"28\",\"question_id_9\":\"31\",\"question_id_10\":\"36\",\"question_id_11\":\"41\",\"question_id_20\":[\"74\",\"75\"],\"question_id_12\":\"43\",\"question_id_13\":\"46\",\"question_id_14\":\"51\",\"question_id_15\":\"56\",\"question_id_16\":\"61\",\"question_id_17\":\"65\",\"question_id_18\":\"67\",\"question_id_19\":\"72\",\"question_id_21\":\"78\",\"question_id_22\":\"85\",\"question_id_23\":\"88\",\"question_id_24\":\"90\",\"question_id_25\":[\"94\",\"96\"],\"question_id_26\":\"99\"},\"passed_time\":\"1 minute 35 seconds\",\"calc_method\":\"by_correctness\",\"attributes_information\":[]}', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_aysquiz_settings`
--

CREATE TABLE `wp_aysquiz_settings` (
  `id` int(11) NOT NULL,
  `meta_key` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_aysquiz_settings`
--

INSERT INTO `wp_aysquiz_settings` (`id`, `meta_key`, `meta_value`, `note`, `options`) VALUES
(1, 'buttons_texts', '', '', ''),
(2, 'options', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_aysquiz_themes`
--

CREATE TABLE `wp_aysquiz_themes` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `border_radius` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `show_result_presentage` int(11) NOT NULL,
  `show_result_answers` int(11) NOT NULL,
  `buttons_color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `buttons_bg_color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `buttons_hover_color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `buttons_hover_bg_color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quiz_title_color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quiz_description_color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `question_color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `question_bg_color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `question_answer_color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `question_answer_bg_color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `question_answer_hover_color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `question_answer_hover_bg_color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `question_correct_answer_bg_color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `question_incorrect_answer_bg_color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pagination_bg_color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pagination_color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_aysquiz_themes`
--

INSERT INTO `wp_aysquiz_themes` (`id`, `title`, `border_radius`, `show_result_presentage`, `show_result_answers`, `buttons_color`, `buttons_bg_color`, `buttons_hover_color`, `buttons_hover_bg_color`, `quiz_title_color`, `quiz_description_color`, `question_color`, `question_bg_color`, `question_answer_color`, `question_answer_bg_color`, `question_answer_hover_color`, `question_answer_hover_bg_color`, `question_correct_answer_bg_color`, `question_incorrect_answer_bg_color`, `pagination_bg_color`, `pagination_color`) VALUES
(1, 'Default', '4', 1, 1, '#ffffff', '#70b1f2', '#ffffff', '#4797e7', '#000000', '#000000', '#ffffff', '#70b1f2', '#7a7575', '#efefef', '#7a7575', '#d6d2c9', '#4fed24', '#ed3324', '#efefef', '#70b1f2');

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2020-07-13 18:09:32', '2020-07-13 18:09:32', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/quiz', 'yes'),
(2, 'home', 'http://localhost/quiz', 'yes'),
(3, 'blogname', 'wp quiz', 'yes'),
(4, 'blogdescription', 'wordpress quiz', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'abiha.amir456@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:90:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=17&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:6:{i:0;s:36:\"contact-form-7/wp-contact-form-7.php\";i:1;s:25:\"profile-builder/index.php\";i:3;s:25:\"quiz-maker/quiz-maker.php\";i:4;s:63:\"ultimate-addons-for-gutenberg/ultimate-addons-for-gutenberg.php\";i:5;s:29:\"wp-mail-smtp/wp_mail_smtp.php\";i:6;s:47:\"wp-security-audit-log/wp-security-audit-log.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'mesmerize', 'yes'),
(41, 'stylesheet', 'highlight', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '47018', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '76', 'yes'),
(84, 'page_on_front', '17', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'admin_email_lifespan', '1610215772', 'yes'),
(94, 'initial_db_version', '47018', 'yes'),
(95, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(96, 'fresh_site', '0', 'yes'),
(97, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:7:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:23:\"mesmerize_pages_sidebar\";a:0:{}s:17:\"first_box_widgets\";a:0:{}s:18:\"second_box_widgets\";a:0:{}s:17:\"third_box_widgets\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(103, 'cron', 'a:10:{i:1594891979;a:1:{s:26:\"action_scheduler_run_queue\";a:1:{s:32:\"0d04ed39571b55704c122d726248bbac\";a:3:{s:8:\"schedule\";s:12:\"every_minute\";s:4:\"args\";a:1:{i:0;s:7:\"WP Cron\";}s:8:\"interval\";i:60;}}}i:1594893456;a:1:{s:12:\"wsal_cleanup\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1594894173;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1594903655;a:1:{s:18:\"wsal_delete_logins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1594903656;a:1:{s:22:\"wsal_log_files_pruning\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1594922973;a:4:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1594923010;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1594923017;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1595354973;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(104, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'recovery_keys', 'a:0:{}', 'yes'),
(115, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.4.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.4.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.4.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.4.2-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.4.2\";s:7:\"version\";s:5:\"5.4.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1594879786;s:15:\"version_checked\";s:5:\"5.4.2\";s:12:\"translations\";a:0:{}}', 'no'),
(116, 'theme_mods_twentytwenty', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1594664878;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(124, '_site_transient_timeout_browser_6aa22f8afb172793f3803c076764d327', '1595268612', 'no'),
(125, '_site_transient_browser_6aa22f8afb172793f3803c076764d327', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"83.0.4103.116\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(126, '_site_transient_timeout_php_check_90a84b80b2ae4bb2a14bb18a1c790012', '1595268617', 'no'),
(127, '_site_transient_php_check_90a84b80b2ae4bb2a14bb18a1c790012', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(129, 'can_compress_scripts', '1', 'no'),
(145, 'current_theme', 'Highlight', 'yes'),
(146, 'theme_mods_highlight', 'a:47:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:2;}s:20:\"theme_default_preset\";i:3;s:31:\"show_front_page_hero_by_default\";b:1;s:18:\"custom_css_post_id\";i:73;s:25:\"header_content_show_title\";b:1;s:12:\"header_title\";s:25:\"WELCOME TO WORDPRESS QUIZ\";s:28:\"header_content_show_subtitle\";b:0;s:22:\"header_content_buttons\";a:2:{i:0;a:4:{s:5:\"label\";s:8:\"Register\";s:3:\"url\";s:31:\"http://localhost/quiz/register/\";s:6:\"target\";s:5:\"_self\";s:5:\"class\";s:23:\"button big color1 round\";}i:1;a:4:{s:5:\"label\";s:5:\"Login\";s:3:\"url\";s:29:\"http://localhost/quiz/log-in/\";s:6:\"target\";s:5:\"_self\";s:5:\"class\";s:36:\"button big color-white round outline\";}}s:19:\"header_show_overlay\";b:1;s:21:\"header_show_separator\";b:0;s:22:\"header_background_type\";s:9:\"slideshow\";s:16:\"header_slideshow\";a:4:{i:0;a:1:{s:3:\"url\";s:1:\"6\";}i:1;a:1:{s:3:\"url\";s:2:\"99\";}i:2;a:1:{s:3:\"url\";s:74:\"http://localhost/quiz/wp-content/themes/highlight/assets/images/hero-3.jpg\";}i:3;a:1:{s:3:\"url\";s:3:\"100\";}}s:23:\"header_front_page_image\";s:59:\"http://localhost/quiz/wp-content/uploads/2020/07/quizbg.png\";s:24:\"header_size_bottom_arrow\";s:2:\"75\";s:26:\"header_offset_bottom_arrow\";s:2:\"26\";s:23:\"inner_header_text_align\";s:6:\"center\";s:26:\"inner_header_show_subtitle\";b:1;s:20:\"blog_sidebar_enabled\";b:0;s:22:\"show_single_item_title\";b:0;s:29:\"blog_show_post_featured_image\";b:1;s:22:\"blog_post_meta_enabled\";b:0;s:32:\"blog_show_post_thumb_placeholder\";b:0;s:18:\"header_bg_position\";s:10:\"center top\";s:21:\"header_bg_color_image\";s:7:\"#1D178D\";s:25:\"inner_header_show_overlay\";b:1;s:27:\"inner_header_show_separator\";b:0;s:12:\"header_image\";s:63:\"http://localhost/quiz/wp-content/uploads/2020/07/cropped-bg.jpg\";s:17:\"header_image_data\";O:8:\"stdClass\":5:{s:13:\"attachment_id\";i:44;s:3:\"url\";s:63:\"http://localhost/quiz/wp-content/uploads/2020/07/cropped-bg.jpg\";s:13:\"thumbnail_url\";s:63:\"http://localhost/quiz/wp-content/uploads/2020/07/cropped-bg.jpg\";s:6:\"height\";i:341;s:5:\"width\";i:626;}s:24:\"inner_header_bg_position\";s:13:\"center center\";s:27:\"inner_header_bg_color_image\";s:7:\"#1967FF\";s:32:\"inner_header_show_featured_image\";b:1;s:21:\"inner_header_parallax\";b:0;s:14:\"header_spacing\";a:2:{s:3:\"top\";s:3:\"15%\";s:6:\"bottom\";s:3:\"20%\";}s:28:\"inner_header_background_type\";s:5:\"image\";s:22:\"header_nav_transparent\";b:1;s:18:\"header_nav_sticked\";b:1;s:17:\"header_nav_border\";b:1;s:23:\"header_nav_border_color\";s:16:\"rgb(161,158,158)\";s:27:\"header_nav_border_thickness\";s:1:\"1\";s:25:\"inner_header_nav_bar_type\";s:7:\"default\";s:23:\"inner_header_nav_border\";b:1;s:33:\"inner_header_nav_border_thickness\";s:1:\"1\";s:28:\"inner_header_nav_transparent\";b:1;s:14:\"enable_top_bar\";b:0;s:29:\"inner_header_nav_border_color\";s:16:\"rgb(255,255,255)\";s:22:\"mesmerize_page_content\";s:20293:\"<div id=\"features-2\"  style=\"background-color:#ffffff\"  data-label=\"Features\" data-id=\"features-ov-4-mc\" data-export-id=\"features-ov-4-mc\" data-category=\"features\" class=\"features-ov-4-mc content-section content-section-spacing\"><div class=\"gridContainer\"> <div data-type=\"row\" class=\"row spaced-cols text-center\"><div class=\"col-xs-12 col-sm-4 col-padding\"> <i class=\"fa icon fa-clone large shadow-large-black round aligncenter reverse color1\"></i> <div data-type=\"column\"> <h5 class=\"font-400\">RESPONSIVE DESIGN</h5> <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p></div> </div> <div class=\"col-xs-12 col-sm-4 col-padding\"> <i class=\"fa icon fa-cogs large shadow-large-black round aligncenter reverse color2\"></i> <div data-type=\"column\"><h5 class=\"font-400\">SUPER FEATURES</h5> <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p></div> </div> <div class=\"col-xs-12 col-sm-4 col-padding\"> <i class=\"fa icon fa-magic large shadow-large-black round aligncenter reverse color4\"></i> <div data-type=\"column\"><h5 class=\"font-400\">DRAG AND DROP</h5> <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p></div> </div></div> </div></div><div id=\"about-1\"  style=\"background-color:#f5fafd\"  data-label=\"About\" data-id=\"about-images-right-section-mc\" data-export-id=\"about-images-right-section-mc\" data-bullets-visibility=\"true\" data-category=\"about\" class=\"about-images-right-section-mc content-section content-section-spacing\"><div class=\"gridContainer\"> <div class=\"row middle-sm text-center\"><div class=\"col-sm-5 content-left-sm\" data-type=\"column\"> <h5>WHAT WE DO</h5> <h2>We provide <br/> <span style=\"font-family:Playfair Display,sans-serif;font-weight:700;font-style:italic;\" href=\"#\">creative solutions</span> for all your needs!</h2> <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p> <a class=\"button color1\" href=\"#\">GET STARTED TODAY</a></div> <div class=\"col-sm-7 space-bottom-xs\"><div class=\"image-group-side-3-img\"> <img class=\"topimg shadow-large\" src=\"http://localhost/quiz/wp-content/themes/highlight/customizer/sections/images/cropped-paper-571937_1920.jpg\"/> <img class=\"rightimg shadow-large\" src=\"http://localhost/quiz/wp-content/themes/highlight/customizer/sections/images/cropped-cropped-background-2726039-6x4.jpg\"/> <div class=\"leftimg\"> <img class=\"shadow-large\" src=\"http://localhost/quiz/wp-content/themes/highlight/customizer/sections/images/cropped-girl-2940655_1920.jpg\"/></div> </div></div> </div></div> </div><div id=\"features-1\"  style=\"background-color:#ffffff\"  data-label=\"Features\" data-id=\"features-16-card-bordered-mc\" data-export-id=\"features-16-card-bordered-mc\" data-bullets-visibility=\"true\" data-category=\"features\" class=\"features-16-card-bordered-mc content-section content-section-spacing\"><div class=\"gridContainer\"> <div class=\"row text-center\"><div class=\"section-title-col\" data-type=\"column\"> <h5>WHAT WE OFFER</h5> <h2>We provide creative solutions!</h2> <p class=\"lead\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation.</p></div> </div> <div class=\"row spaced-cols\" data-type=\"row\"> <div class=\"col-xs-12 col-sm-6 col-md-4\"> <div class=\"card no-padding bordered y-move\"> <img class=\"face\" src=\"http://localhost/quiz/wp-content/themes/highlight/customizer/sections/images/agreement-2548139_1920.jpg\"/> <div data-type=\"column\" class=\"col-padding-small col-padding-small-xs description-container\"> <h4 class=\"font-500\">Responsive Design</h4> <p class=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation.</p></div> <div data-type=\"column\" class=\"col-padding-small col-padding-small-xs read-more-container\"><a class=\"read-more\">learn more</a></div> </div></div> <div class=\"col-xs-12 col-sm-6 col-md-4\"><div class=\"card no-padding bordered y-move\"> <img class=\"face\" src=\"http://localhost/quiz/wp-content/themes/highlight/customizer/sections/images/pencils-452238_1920.jpg\"/> <div data-type=\"column\" class=\"col-padding-small col-padding-small-xs description-container\"> <h4 class=\"font-500\">Responsive Design</h4> <p class=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation.</p></div> <div data-type=\"column\" class=\"col-padding-small col-padding-small-xs read-more-container\"><a class=\"read-more\">learn more</a></div> </div></div> <div class=\"col-xs-12 col-sm-6 col-md-4\"><div class=\"card no-padding bordered y-move\"> <img class=\"face\" src=\"http://localhost/quiz/wp-content/themes/highlight/customizer/sections/images/cropped-startup-849804_1920.jpg\"/> <div data-type=\"column\" class=\"col-padding-small col-padding-small-xs description-container\"> <h4 class=\"font-500\">Responsive Design</h4> <p class=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation.</p></div> <div data-type=\"column\" class=\"col-padding-small col-padding-small-xs read-more-container\"><a class=\"read-more\">learn more</a></div> </div></div> </div></div> </div><div id=\"content-1\"  style=\"background-color:#f5fafd\"  data-label=\"Content\" data-id=\"content-7-mc\" data-export-id=\"content-7-mc\" data-category=\"content\" class=\"content-7-mc content-section content-section-spacing\"><div class=\"gridContainer\"> <div class=\"row middle-sm\"><div class=\"col-sm-6 space-bottom-xs\" data-type=\"column\"> <h2>Web Design & Development</h2> <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p> <a class=\"button color1\" href=\"#\">LEARN MORE</a></div> <div class=\"col-sm-6\" data-type=\"column\"> <img class=\"shadow-large\" src=\"http://localhost/quiz/wp-content/themes/highlight/customizer/sections/images/cropped-hero-3.jpg\"></div> </div></div> </div><div id=\"content-2\"  style=\"background-color:#ffffff\"  data-label=\"Content\" data-id=\"content-8-mc\" data-export-id=\"content-8-mc\" data-category=\"content\" class=\"content-8-mc content-section content-section-spacing\"><div class=\"gridContainer\"> <div class=\"row middle-sm\"><div class=\"col-sm-6 space-bottom-xs space-top-xs\" data-type=\"column\"> <img class=\"shadow-large\" src=\"http://localhost/quiz/wp-content/themes/highlight/customizer/sections/images/business-3560916_1920.jpg\"></div> <div class=\"col-sm-6\" data-type=\"column\"><h2>App Design & Development</h2> <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p> <a class=\"button color1\" href=\"#\">LEARN MORE</a></div> </div></div> </div><div id=\"portfolio-1\"  data-label=\"Portfolio\" data-id=\"portfolio-5-mc\" data-export-id=\"portfolio-5-mc\" data-bullets-visibility=\"true\" data-category=\"portfolio\" class=\"portfolio-5-mc content-section content-section-spacing section-title-col-white-text bg-color1\"><div class=\"gridContainer\"> <div class=\"row text-center\"><div class=\"section-title-col\" data-type=\"column\"> <h5>OUR WORK</h5> <h2>Portfolio</h2> <p class=\"lead\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua, ut aliquip ex ea commodo consequat.</p></div> </div> <div class=\"row space-bottom spaced-cols\" data-type=\"row\"> <div class=\"col-xs-12 col-sm-4 text-center\"> <div class=\"card no-padding bordered\"> <div data-hover-fx=\"portfolio-6\" class=\"contentswap-effect contentswap-overlay\" style=\"float:none;margin:0;width:100%;\"> <div class=\"initial-image\" style=\"float:none;margin:0;\"> <img data-size=\"500x333\" src=\"http://localhost/quiz/wp-content/themes/highlight/customizer/sections/images/cropped-pf-1.jpg\"/></div> <div class=\"overlay bg-color6\" style=\"display:block;transition:opacity 800ms ease 0s;-webkit-transition-timing-function:ease;-moz-transition-timing-function:ease;-o-transition-timing-function:ease;transition-timing-function:ease;\"></div> <div class=\"swap-inner col-xs-12\" style=\"display:block;transition:all 800ms ease 0s;background-color:rgba(0,0,0,0);margin-top:0;\"> <div class=\"row full-height-row middle-xs middle-sm\"> <div class=\"col-xs-12 text-center content-holder\"> <a class=\"button small color2\" href=\"#\">View case study</a></div> </div></div> </div> <div class=\"col-xs-12\"> <div class=\"space-bottom space-top\" data-type=\"column\"> <h5 class=\"\">Project Name</h5> <p class=\"small italic\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore</p></div> </div></div> </div> <div class=\"col-xs-12 col-sm-4 text-center\"> <div class=\"card no-padding bordered\"> <div data-hover-fx=\"portfolio-6\" class=\"contentswap-effect contentswap-overlay\" style=\"float:none;margin:0;width:100%;\"> <div class=\"initial-image\" style=\"float:none;margin:0;\"> <img data-size=\"500x333\" src=\"http://localhost/quiz/wp-content/themes/highlight/customizer/sections/images/cropped-pf-3.jpg\"/></div> <div class=\"overlay bg-color6\" style=\"display:block;transition:opacity 800ms ease 0s;-webkit-transition-timing-function:ease;-moz-transition-timing-function:ease;-o-transition-timing-function:ease;transition-timing-function:ease;\"></div> <div class=\"swap-inner col-xs-12\" style=\"display:block;transition:all 800ms ease 0s;background-color:rgba(0,0,0,0);margin-top:0;\"> <div class=\"row full-height-row middle-xs middle-sm\"> <div class=\"col-xs-12 text-center content-holder\"> <a class=\"button small color2\" href=\"#\">View case study</a></div> </div></div> </div> <div class=\"col-xs-12\"> <div class=\"space-bottom space-top\" data-type=\"column\"> <h5 class=\"\">Project Name</h5> <p class=\"small italic\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore</p></div> </div></div> </div> <div class=\"col-xs-12 col-sm-4 text-center\"> <div class=\"card no-padding bordered\"> <div data-hover-fx=\"portfolio-6\" class=\"contentswap-effect contentswap-overlay\" style=\"float:none;margin:0;width:100%;\"> <div class=\"initial-image\" style=\"float:none;margin:0;\"> <img data-size=\"500x333\" src=\"http://localhost/quiz/wp-content/themes/highlight/customizer/sections/images/cropped-pf-2.jpg\"/></div> <div class=\"overlay bg-color6\" style=\"display:block;transition:opacity 800ms ease 0s;-webkit-transition-timing-function:ease;-moz-transition-timing-function:ease;-o-transition-timing-function:ease;transition-timing-function:ease;\"></div> <div class=\"swap-inner col-xs-12\" style=\"display:block;transition:all 800ms ease 0s;background-color:rgba(0,0,0,0);margin-top:0;\"> <div class=\"row full-height-row middle-xs middle-sm\"> <div class=\"col-xs-12 text-center content-holder\"> <a class=\"button small color2\" href=\"#\">View case study</a></div> </div></div> </div> <div class=\"col-xs-12\"> <div class=\"space-bottom space-top\" data-type=\"column\"> <h5 class=\"\">Project Name</h5> <p class=\"small italic\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore</p></div> </div></div> </div></div> <div class=\"row\"><div data-type=\"column\" class=\"col-xs-12 text-center\"> <a class=\"button color2 y-move\" href=\"#\">View Portfolio</a></div> </div></div> </div><div id=\"testimonials-1\"  style=\"background-color:#ffffff\"  data-label=\"Testimonials\" data-id=\"testimonials-5-mc\" data-export-id=\"testimonials-5-mc\" data-category=\"testimonials\" class=\"testimonials-5-mc content-section content-section-spacing\"><div class=\"gridContainer\"> <div class=\"row\"><div data-type=\"column\" class=\"section-title-col\"> <h5>OUR AWESOME CLIENTS</h5> <h2>Client Testimonials</h2> <p class=\"lead\">Don\'t take our word for it - here\'s what our clients say:</p></div> </div> <div class=\"row spaced-cols content-center-sm\" data-type=\"row\"> <div class=\"col-sm-4\"> <div class=\"card y-move bordered\" data-type=\"column\"> <i class=\"fa fa-quote-right icon color1 small quotation-icon\"></i> <p class=\"text-center\">Do you sometimes have the feeling that you\'re running into the same obstacles over and over again? Many of my conflicts have the same feel to them, like “Hey, I think I\'ve been here before,</p> <img src=\"http://localhost/quiz/wp-content/themes/highlight/customizer/sections/images/team-1.jpg\" class=\"round icon\"> <h6>John Doe</h6> <p class=\"small italic\">Company name</p></div> </div> <div class=\"col-sm-4\"> <div class=\"card y-move bordered\" data-type=\"column\"> <i class=\"fa fa-quote-right icon color1 small quotation-icon\"></i> <p class=\"text-center\">Do you sometimes have the feeling that you\'re running into the same obstacles over and over again? Many of my conflicts have the same feel to them, like “Hey, I think I\'ve been here before,</p> <img src=\"http://localhost/quiz/wp-content/themes/highlight/customizer/sections/images/team-3.jpg\" class=\"round icon\"> <h6>John Doe</h6> <p class=\"small italic\">Company name</p></div> </div> <div class=\"col-sm-4\"> <div class=\"card y-move bordered\" data-type=\"column\"> <i class=\"fa fa-quote-right icon color1 small quotation-icon\"></i> <p class=\"text-center\">Do you sometimes have the feeling that you\'re running into the same obstacles over and over again? Many of my conflicts have the same feel to them, like “Hey, I think I\'ve been here before,</p> <img src=\"http://localhost/quiz/wp-content/themes/highlight/customizer/sections/images/team-7.jpg\" class=\"round icon\"> <h6>John Doe</h6> <p class=\"small italic\">Company name</p></div> </div></div> </div></div><div id=\"cta-1\"  style=\"background-color:#f5fafd\"  data-label=\"Cta\" data-id=\"cta-blue-section-mc\" data-export-id=\"cta-blue-section-mc\" data-category=\"cta\" class=\"cta-blue-section-mc content-section content-section-spacing le_cocktail white-text\"><div class=\"gridContainer\"> <div class=\"row middle-xs\"><div class=\"col-sm-8 space-bottom-xs\" data-type=\"column\"> <h2>Join us! <span class=\"font-300\">It will only take a minute</span></h2> </div> <div class=\"col-sm-4 end-sm\" data-type=\"column\"> <a class=\"button color2\" href=\"#\">GET STARTED TODAY</a></div> </div></div> </div><div id=\"team-1\"  style=\"background-color:#ffffff\"  data-label=\"Team\" data-id=\"team-5-mc\" data-export-id=\"team-5-mc\" data-bullets-visibility=\"true\" data-category=\"team\" class=\"team-5-mc content-section content-section-spacing\"><div class=\"gridContainer\"> <div class=\"row text-center\"><div class=\"section-title-col\" data-type=\"column\"> <h5>OUR AWESOME TEAM</h5> <h2>Our Team</h2> <p class=\"lead\">There are number of instructions to be followed at the time of refilling an inket cartridge. So whenever your printer ink runs dry you need to follow the below steps for inkjet cartridge refill.</p></div> </div> <div class=\"row spaced-cols content-center-sm\" data-type=\"row\"> <div class=\"col-xs-12 col-sm-6 col-md-3 col-padding\"> <div class=\"row \"> <div data-type=\"column\" class=\"col-xs-12 col-sm-12\"> <img class=\"round face\" src=\"http://localhost/quiz/wp-content/themes/highlight/customizer/sections/images/team-1.jpg\"/> <h4 class=\"font-500\">Team Member</h4> <p class=\"italic\">job title</p> <p>Point of Sale hardware, the till at a shop check out, has become very complex over the past ten years.</p> <div class=\"social-icons-group\" data-type=\"group\"> <a href=\"#\"><i class=\"gray fa icon fa-facebook-square small \"></i></a> <a href=\"#\"><i class=\"gray fa icon fa-twitter-square small \"></i></a> <a href=\"#\"><i class=\"gray fa icon fa-linkedin-square small \"></i></a> <a href=\"#\"><i class=\"gray fa icon fa-google-plus-square small \"></i></a></div> </div></div> </div> <div class=\"col-xs-12 col-sm-6 col-md-3 col-padding\"> <div class=\"row \"> <div data-type=\"column\" class=\"col-xs-12 col-sm-12\"> <img class=\"round face\" src=\"http://localhost/quiz/wp-content/themes/highlight/customizer/sections/images/team-7.jpg\"/> <h4 class=\"font-500\">Team Member</h4> <p class=\"italic\">job title</p> <p>Point of Sale hardware, the till at a shop check out, has become very complex over the past ten years.</p> <div class=\"social-icons-group\" data-type=\"group\"> <a href=\"#\"><i class=\"gray fa icon fa-facebook-square small \"></i></a> <a href=\"#\"><i class=\"gray fa icon fa-twitter-square small \"></i></a> <a href=\"#\"><i class=\"gray fa icon fa-linkedin-square small \"></i></a> <a href=\"#\"><i class=\"gray fa icon fa-google-plus-square small \"></i></a></div> </div></div> </div> <div class=\"col-xs-12 col-sm-6 col-md-3 col-padding\"> <div class=\"row \"> <div data-type=\"column\" class=\"col-xs-12 col-sm-12\"> <img class=\"round face\" src=\"http://localhost/quiz/wp-content/themes/highlight/customizer/sections/images/team-3.jpg\"/> <h4 class=\"font-500\">Team Member</h4> <p class=\"italic\">job title</p> <p>Point of Sale hardware, the till at a shop check out, has become very complex over the past ten years.</p> <div class=\"social-icons-group\" data-type=\"group\"> <a href=\"#\"><i class=\"gray fa icon fa-facebook-square small \"></i></a> <a href=\"#\"><i class=\"gray fa icon fa-twitter-square small \"></i></a> <a href=\"#\"><i class=\"gray fa icon fa-linkedin-square small \"></i></a> <a href=\"#\"><i class=\"gray fa icon fa-google-plus-square small \"></i></a></div> </div></div> </div> <div class=\"col-xs-12 col-sm-6 col-md-3 col-padding\"> <div class=\"row \"> <div data-type=\"column\" class=\"col-xs-12 col-sm-12\"> <img class=\"round face\" src=\"http://localhost/quiz/wp-content/themes/highlight/customizer/sections/images/team-4.jpg\"/> <h4 class=\"font-500\">Team Member</h4> <p class=\"italic\">job title</p> <p>Point of Sale hardware, the till at a shop check out, has become very complex over the past ten years.</p> <div class=\"social-icons-group\" data-type=\"group\"> <a href=\"#\"><i class=\"gray fa icon fa-facebook-square small \"></i></a> <a href=\"#\"><i class=\"gray fa icon fa-twitter-square small \"></i></a> <a href=\"#\"><i class=\"gray fa icon fa-linkedin-square small \"></i></a> <a href=\"#\"><i class=\"gray fa icon fa-google-plus-square small \"></i></a></div> </div></div> </div></div> </div></div><div id=\"latest-news-1\"  style=\"background-color:#f5fafd\"  data-label=\"Latest-news\" data-id=\"blog-section-mc\" data-export-id=\"blog-section-mc\" data-category=\"latest_news\" class=\"blog-section-mc blog-section-standard content-section content-section-spacing\"><div class=\"gridContainer\"> <div class=\"row\"><div data-type=\"column\" class=\"section-title-col\"> <h5>WE LOVE BLOGGING</h5> <h2>Latest from Our Blog</h2> <p class=\"lead\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p></div> </div> <div class=\"row\"> <div data-type=\"row\" data-dynamic-columns=\"handled\" data-content-shortcode=\"mesmerize_latest_news posts=&quot;3&quot;\">[mesmerize_latest_news]</div></div> <div class=\"row\"><div class=\"text-center\"> <a class=\"button color1\" data-attr-shortcode=\"href:mesmerize_blog_link\" href=\"[mesmerize_blog_link]\">VIEW OUR BLOG</a></div> </div></div></div><div id=\"contact-1\"  style=\"background-color:#ffffff\"  data-label=\"Contact\" data-id=\"contact-1-mc\" data-export-id=\"contact-1-mc\" data-bullets-visibility=\"true\" data-category=\"contact\" class=\"contact-1-mc content-section content-section-spacing white-text\" data-parallax-depth=\"20\"><div class=\"gridContainer\"> <div class=\"row text-center\"><div class=\"section-title-col\" data-type=\"column\"> <h5>CONNECT WITH US</h5> <h2>Contact us</h2> <p class=\"lead\">With the Internet spreading linke wildfire and reaching every part of our daily life, more and more traffic is directed to websites in search for information.</p></div> </div> <div class=\"row text-center\"> <div class=\"col-xs-12 col-sm-8 col-sm-offset-2 contact-form-wrapper inline-info\"> <div class=\"card large-padding\"> <div class=\"\" data-content-shortcode=\"mesmerize_contact_form\" data-editable=\"true\">[mesmerize_contact_form]</div></div> </div></div> </div></div>\";}', 'yes'),
(147, 'theme_switched', '', 'yes'),
(156, 'highlight_welcome_notice_dismissed', '1', 'yes'),
(157, 'recently_activated', 'a:4:{s:20:\"quiz-cat/quizcat.php\";i:1594877598;s:25:\"simple-css/simple-css.php\";i:1594715008;s:43:\"mesmerize-companion/mesmerize-companion.php\";i:1594714107;s:19:\"if-menu/if-menu.php\";i:1594714064;}', 'yes'),
(162, '__uagb_do_redirect', '', 'yes'),
(163, 'uagb-version', '1.16.0', 'yes'),
(164, 'bsf_analytics_installed_time', '1594667837', 'no'),
(167, 'widget_wppb-login-widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(168, 'wppb_version', '3.1.9', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(169, 'wppb_manage_fields', 'a:8:{i:0;a:21:{s:2:\"id\";i:1;s:5:\"field\";s:24:\"Default - Name (Heading)\";s:9:\"meta-name\";s:0:\"\";s:11:\"field-title\";s:4:\"Name\";s:11:\"description\";s:0:\"\";s:8:\"required\";s:2:\"No\";s:18:\"overwrite-existing\";s:2:\"No\";s:9:\"row-count\";s:1:\"5\";s:24:\"allowed-image-extensions\";s:2:\".*\";s:25:\"allowed-upload-extensions\";s:2:\".*\";s:11:\"avatar-size\";s:3:\"100\";s:11:\"date-format\";s:8:\"mm/dd/yy\";s:18:\"terms-of-agreement\";s:0:\"\";s:7:\"options\";s:0:\"\";s:6:\"labels\";s:0:\"\";s:10:\"public-key\";s:0:\"\";s:11:\"private-key\";s:0:\"\";s:13:\"default-value\";s:0:\"\";s:14:\"default-option\";s:0:\"\";s:15:\"default-options\";s:0:\"\";s:15:\"default-content\";s:0:\"\";}i:1;a:21:{s:2:\"id\";i:2;s:5:\"field\";s:18:\"Default - Username\";s:9:\"meta-name\";s:0:\"\";s:11:\"field-title\";s:8:\"Username\";s:11:\"description\";s:0:\"\";s:8:\"required\";s:3:\"Yes\";s:18:\"overwrite-existing\";s:2:\"No\";s:9:\"row-count\";s:1:\"5\";s:24:\"allowed-image-extensions\";s:2:\".*\";s:25:\"allowed-upload-extensions\";s:2:\".*\";s:11:\"avatar-size\";s:3:\"100\";s:11:\"date-format\";s:8:\"mm/dd/yy\";s:18:\"terms-of-agreement\";s:0:\"\";s:7:\"options\";s:0:\"\";s:6:\"labels\";s:0:\"\";s:10:\"public-key\";s:0:\"\";s:11:\"private-key\";s:0:\"\";s:13:\"default-value\";s:0:\"\";s:14:\"default-option\";s:0:\"\";s:15:\"default-options\";s:0:\"\";s:15:\"default-content\";s:0:\"\";}i:2;a:21:{s:2:\"id\";i:3;s:5:\"field\";s:20:\"Default - First Name\";s:9:\"meta-name\";s:10:\"first_name\";s:11:\"field-title\";s:10:\"First Name\";s:11:\"description\";s:0:\"\";s:8:\"required\";s:2:\"No\";s:18:\"overwrite-existing\";s:2:\"No\";s:9:\"row-count\";s:1:\"5\";s:24:\"allowed-image-extensions\";s:2:\".*\";s:25:\"allowed-upload-extensions\";s:2:\".*\";s:11:\"avatar-size\";s:3:\"100\";s:11:\"date-format\";s:8:\"mm/dd/yy\";s:18:\"terms-of-agreement\";s:0:\"\";s:7:\"options\";s:0:\"\";s:6:\"labels\";s:0:\"\";s:10:\"public-key\";s:0:\"\";s:11:\"private-key\";s:0:\"\";s:13:\"default-value\";s:0:\"\";s:14:\"default-option\";s:0:\"\";s:15:\"default-options\";s:0:\"\";s:15:\"default-content\";s:0:\"\";}i:3;a:21:{s:2:\"id\";i:4;s:5:\"field\";s:19:\"Default - Last Name\";s:9:\"meta-name\";s:9:\"last_name\";s:11:\"field-title\";s:9:\"Last Name\";s:11:\"description\";s:0:\"\";s:8:\"required\";s:2:\"No\";s:18:\"overwrite-existing\";s:2:\"No\";s:9:\"row-count\";s:1:\"5\";s:24:\"allowed-image-extensions\";s:2:\".*\";s:25:\"allowed-upload-extensions\";s:2:\".*\";s:11:\"avatar-size\";s:3:\"100\";s:11:\"date-format\";s:8:\"mm/dd/yy\";s:18:\"terms-of-agreement\";s:0:\"\";s:7:\"options\";s:0:\"\";s:6:\"labels\";s:0:\"\";s:10:\"public-key\";s:0:\"\";s:11:\"private-key\";s:0:\"\";s:13:\"default-value\";s:0:\"\";s:14:\"default-option\";s:0:\"\";s:15:\"default-options\";s:0:\"\";s:15:\"default-content\";s:0:\"\";}i:4;a:21:{s:2:\"id\";i:7;s:5:\"field\";s:32:\"Default - Contact Info (Heading)\";s:9:\"meta-name\";s:0:\"\";s:11:\"field-title\";s:12:\"Contact Info\";s:11:\"description\";s:0:\"\";s:8:\"required\";s:2:\"No\";s:18:\"overwrite-existing\";s:2:\"No\";s:9:\"row-count\";s:1:\"5\";s:24:\"allowed-image-extensions\";s:2:\".*\";s:25:\"allowed-upload-extensions\";s:2:\".*\";s:11:\"avatar-size\";s:3:\"100\";s:11:\"date-format\";s:8:\"mm/dd/yy\";s:18:\"terms-of-agreement\";s:0:\"\";s:7:\"options\";s:0:\"\";s:6:\"labels\";s:0:\"\";s:10:\"public-key\";s:0:\"\";s:11:\"private-key\";s:0:\"\";s:13:\"default-value\";s:0:\"\";s:14:\"default-option\";s:0:\"\";s:15:\"default-options\";s:0:\"\";s:15:\"default-content\";s:0:\"\";}i:5;a:21:{s:2:\"id\";i:8;s:5:\"field\";s:16:\"Default - E-mail\";s:9:\"meta-name\";s:0:\"\";s:11:\"field-title\";s:6:\"E-mail\";s:11:\"description\";s:0:\"\";s:8:\"required\";s:3:\"Yes\";s:18:\"overwrite-existing\";s:2:\"No\";s:9:\"row-count\";s:1:\"5\";s:24:\"allowed-image-extensions\";s:2:\".*\";s:25:\"allowed-upload-extensions\";s:2:\".*\";s:11:\"avatar-size\";s:3:\"100\";s:11:\"date-format\";s:8:\"mm/dd/yy\";s:18:\"terms-of-agreement\";s:0:\"\";s:7:\"options\";s:0:\"\";s:6:\"labels\";s:0:\"\";s:10:\"public-key\";s:0:\"\";s:11:\"private-key\";s:0:\"\";s:13:\"default-value\";s:0:\"\";s:14:\"default-option\";s:0:\"\";s:15:\"default-options\";s:0:\"\";s:15:\"default-content\";s:0:\"\";}i:6;a:21:{s:2:\"id\";i:12;s:5:\"field\";s:18:\"Default - Password\";s:9:\"meta-name\";s:0:\"\";s:11:\"field-title\";s:8:\"Password\";s:11:\"description\";s:0:\"\";s:8:\"required\";s:3:\"Yes\";s:18:\"overwrite-existing\";s:2:\"No\";s:9:\"row-count\";s:1:\"5\";s:24:\"allowed-image-extensions\";s:2:\".*\";s:25:\"allowed-upload-extensions\";s:2:\".*\";s:11:\"avatar-size\";s:3:\"100\";s:11:\"date-format\";s:8:\"mm/dd/yy\";s:18:\"terms-of-agreement\";s:0:\"\";s:7:\"options\";s:0:\"\";s:6:\"labels\";s:0:\"\";s:10:\"public-key\";s:0:\"\";s:11:\"private-key\";s:0:\"\";s:13:\"default-value\";s:0:\"\";s:14:\"default-option\";s:0:\"\";s:15:\"default-options\";s:0:\"\";s:15:\"default-content\";s:0:\"\";}i:7;a:48:{s:11:\"field-title\";s:16:\"Confirm Password\";s:5:\"field\";s:25:\"Default - Repeat Password\";s:9:\"meta-name\";s:0:\"\";s:2:\"id\";s:2:\"13\";s:11:\"description\";s:0:\"\";s:9:\"row-count\";s:1:\"5\";s:24:\"allowed-image-extensions\";s:2:\".*\";s:25:\"allowed-upload-extensions\";s:2:\".*\";s:11:\"avatar-size\";s:3:\"100\";s:11:\"date-format\";s:8:\"mm/dd/yy\";s:18:\"terms-of-agreement\";s:0:\"\";s:7:\"options\";s:0:\"\";s:6:\"labels\";s:0:\"\";s:14:\"recaptcha-type\";s:2:\"v2\";s:10:\"public-key\";s:0:\"\";s:11:\"private-key\";s:0:\"\";s:16:\"captcha-pb-forms\";s:0:\"\";s:16:\"captcha-wp-forms\";s:0:\"\";s:10:\"user-roles\";s:0:\"\";s:26:\"user-roles-on-edit-profile\";s:0:\"\";s:21:\"user-roles-sort-order\";s:41:\", editor, author, contributor, subscriber\";s:13:\"default-value\";s:0:\"\";s:14:\"default-option\";s:0:\"\";s:15:\"default-options\";s:0:\"\";s:22:\"default-option-country\";s:0:\"\";s:23:\"default-option-timezone\";s:32:\"(GMT -12:00) Eniwetok, Kwajalein\";s:23:\"default-option-currency\";s:1:\"0\";s:20:\"show-currency-symbol\";s:2:\"No\";s:3:\"cpt\";s:4:\"post\";s:26:\"validation-possible-values\";s:0:\"\";s:20:\"custom-error-message\";s:0:\"\";s:11:\"time-format\";s:2:\"12\";s:11:\"map-api-key\";s:0:\"\";s:15:\"map-default-lat\";s:0:\"\";s:15:\"map-default-lng\";s:0:\"\";s:16:\"map-default-zoom\";s:0:\"\";s:10:\"map-height\";s:0:\"\";s:15:\"default-content\";s:0:\"\";s:12:\"html-content\";s:0:\"\";s:12:\"phone-format\";s:0:\"\";s:11:\"heading-tag\";s:2:\"h1\";s:16:\"min-number-value\";s:0:\"\";s:16:\"max-number-value\";s:0:\"\";s:17:\"number-step-value\";s:0:\"\";s:8:\"required\";s:3:\"Yes\";s:18:\"overwrite-existing\";s:2:\"No\";s:18:\"map-pins-load-type\";s:0:\"\";s:21:\"map-pagination-number\";s:0:\"\";}}', 'yes'),
(170, 'wppb_general_settings', 'a:7:{s:17:\"extraFieldsLayout\";s:7:\"default\";s:17:\"emailConfirmation\";s:2:\"no\";s:21:\"activationLandingPage\";s:0:\"\";s:13:\"adminApproval\";s:2:\"no\";s:9:\"loginWith\";s:13:\"usernameemail\";s:11:\"rolesEditor\";s:2:\"no\";s:23:\"conditional_fields_ajax\";s:2:\"no\";}', 'yes'),
(171, 'wppb_pages_created', 'true', 'yes'),
(175, 'nav_menu_options', 'a:1:{s:8:\"auto_add\";a:0:{}}', 'yes'),
(219, 'mesmerize_companion_old_show_on_front', 'page', 'yes'),
(220, 'mesmerize_companion_old_page_on_front', '17', 'yes'),
(221, 'mesmerize_companion_filtered_defaults', 'a:1:{s:20138:\"<div id=\"features-2\"  style=\"background-color:#ffffff\"  data-label=\"Features\" data-id=\"features-ov-4-mc\" data-export-id=\"features-ov-4-mc\" data-category=\"features\" class=\"features-ov-4-mc content-section content-section-spacing\"><div class=\"gridContainer\"> <div data-type=\"row\" class=\"row spaced-cols text-center\"><div class=\"col-xs-12 col-sm-4 col-padding\"> <i class=\"fa icon fa-clone large shadow-large-black round aligncenter reverse color1\"></i> <div data-type=\"column\"> <h5 class=\"font-400\">RESPONSIVE DESIGN</h5> <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p></div> </div> <div class=\"col-xs-12 col-sm-4 col-padding\"> <i class=\"fa icon fa-cogs large shadow-large-black round aligncenter reverse color2\"></i> <div data-type=\"column\"><h5 class=\"font-400\">SUPER FEATURES</h5> <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p></div> </div> <div class=\"col-xs-12 col-sm-4 col-padding\"> <i class=\"fa icon fa-magic large shadow-large-black round aligncenter reverse color4\"></i> <div data-type=\"column\"><h5 class=\"font-400\">DRAG AND DROP</h5> <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p></div> </div></div> </div></div><div id=\"about-1\"  style=\"background-color:#f5fafd\"  data-label=\"About\" data-id=\"about-images-right-section-mc\" data-export-id=\"about-images-right-section-mc\" data-category=\"about\" class=\"about-images-right-section-mc content-section content-section-spacing\"><div class=\"gridContainer\"> <div class=\"row middle-sm text-center\"><div class=\"col-sm-5 content-left-sm\" data-type=\"column\"> <h5>WHAT WE DO</h5> <h2>We provide <br/> <span style=\"font-family:Playfair Display,sans-serif;font-weight:700;font-style:italic;\" href=\"#\">creative solutions</span> for all your needs!</h2> <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p> <a class=\"button color1\" href=\"#\">GET STARTED TODAY</a></div> <div class=\"col-sm-7 space-bottom-xs\"><div class=\"image-group-side-3-img\"> <img class=\"topimg shadow-large\" src=\"http://localhost/quiz/wp-content/themes/highlight/customizer/sections/images/cropped-paper-571937_1920.jpg\"/> <img class=\"rightimg shadow-large\" src=\"http://localhost/quiz/wp-content/themes/highlight/customizer/sections/images/cropped-cropped-background-2726039-6x4.jpg\"/> <div class=\"leftimg\"> <img class=\"shadow-large\" src=\"http://localhost/quiz/wp-content/themes/highlight/customizer/sections/images/cropped-girl-2940655_1920.jpg\"/></div> </div></div> </div></div> </div><div id=\"features-1\"  style=\"background-color:#ffffff\"  data-label=\"Features\" data-id=\"features-16-card-bordered-mc\" data-export-id=\"features-16-card-bordered-mc\" data-category=\"features\" class=\"features-16-card-bordered-mc content-section content-section-spacing\"><div class=\"gridContainer\"> <div class=\"row text-center\"><div class=\"section-title-col\" data-type=\"column\"> <h5>WHAT WE OFFER</h5> <h2>We provide creative solutions!</h2> <p class=\"lead\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation.</p></div> </div> <div class=\"row spaced-cols\" data-type=\"row\"> <div class=\"col-xs-12 col-sm-6 col-md-4\"> <div class=\"card no-padding bordered y-move\"> <img class=\"face\" src=\"http://localhost/quiz/wp-content/themes/highlight/customizer/sections/images/agreement-2548139_1920.jpg\"/> <div data-type=\"column\" class=\"col-padding-small col-padding-small-xs description-container\"> <h4 class=\"font-500\">Responsive Design</h4> <p class=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation.</p></div> <div data-type=\"column\" class=\"col-padding-small col-padding-small-xs read-more-container\"><a class=\"read-more\">learn more</a></div> </div></div> <div class=\"col-xs-12 col-sm-6 col-md-4\"><div class=\"card no-padding bordered y-move\"> <img class=\"face\" src=\"http://localhost/quiz/wp-content/themes/highlight/customizer/sections/images/pencils-452238_1920.jpg\"/> <div data-type=\"column\" class=\"col-padding-small col-padding-small-xs description-container\"> <h4 class=\"font-500\">Responsive Design</h4> <p class=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation.</p></div> <div data-type=\"column\" class=\"col-padding-small col-padding-small-xs read-more-container\"><a class=\"read-more\">learn more</a></div> </div></div> <div class=\"col-xs-12 col-sm-6 col-md-4\"><div class=\"card no-padding bordered y-move\"> <img class=\"face\" src=\"http://localhost/quiz/wp-content/themes/highlight/customizer/sections/images/cropped-startup-849804_1920.jpg\"/> <div data-type=\"column\" class=\"col-padding-small col-padding-small-xs description-container\"> <h4 class=\"font-500\">Responsive Design</h4> <p class=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation.</p></div> <div data-type=\"column\" class=\"col-padding-small col-padding-small-xs read-more-container\"><a class=\"read-more\">learn more</a></div> </div></div> </div></div> </div><div id=\"content-1\"  style=\"background-color:#f5fafd\"  data-label=\"Content\" data-id=\"content-7-mc\" data-export-id=\"content-7-mc\" data-category=\"content\" class=\"content-7-mc content-section content-section-spacing\"><div class=\"gridContainer\"> <div class=\"row middle-sm\"><div class=\"col-sm-6 space-bottom-xs\" data-type=\"column\"> <h2>Web Design & Development</h2> <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p> <a class=\"button color1\" href=\"#\">LEARN MORE</a></div> <div class=\"col-sm-6\" data-type=\"column\"> <img class=\"shadow-large\" src=\"http://localhost/quiz/wp-content/themes/highlight/customizer/sections/images/cropped-hero-3.jpg\"></div> </div></div> </div><div id=\"content-2\"  style=\"background-color:#ffffff\"  data-label=\"Content\" data-id=\"content-8-mc\" data-export-id=\"content-8-mc\" data-category=\"content\" class=\"content-8-mc content-section content-section-spacing\"><div class=\"gridContainer\"> <div class=\"row middle-sm\"><div class=\"col-sm-6 space-bottom-xs space-top-xs\" data-type=\"column\"> <img class=\"shadow-large\" src=\"http://localhost/quiz/wp-content/themes/highlight/customizer/sections/images/business-3560916_1920.jpg\"></div> <div class=\"col-sm-6\" data-type=\"column\"><h2>App Design & Development</h2> <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p> <a class=\"button color1\" href=\"#\">LEARN MORE</a></div> </div></div> </div><div id=\"portfolio-1\"  data-label=\"Portfolio\" data-id=\"portfolio-5-mc\" data-export-id=\"portfolio-5-mc\" data-category=\"portfolio\" class=\"portfolio-5-mc content-section content-section-spacing section-title-col-white-text bg-color1\"><div class=\"gridContainer\"> <div class=\"row text-center\"><div class=\"section-title-col\" data-type=\"column\"> <h5>OUR WORK</h5> <h2>Portfolio</h2> <p class=\"lead\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua, ut aliquip ex ea commodo consequat.</p></div> </div> <div class=\"row space-bottom spaced-cols\" data-type=\"row\"> <div class=\"col-xs-12 col-sm-4 text-center\"> <div class=\"card no-padding bordered\"> <div data-hover-fx=\"portfolio-6\" class=\"contentswap-effect contentswap-overlay\" style=\"float:none;margin:0;width:100%;\"> <div class=\"initial-image\" style=\"float:none;margin:0;\"> <img data-size=\"500x333\" src=\"http://localhost/quiz/wp-content/themes/highlight/customizer/sections/images/cropped-pf-1.jpg\"/></div> <div class=\"overlay bg-color6\" style=\"display:block;transition:opacity 800ms ease 0s;-webkit-transition-timing-function:ease;-moz-transition-timing-function:ease;-o-transition-timing-function:ease;transition-timing-function:ease;\"></div> <div class=\"swap-inner col-xs-12\" style=\"display:block;transition:all 800ms ease 0s;background-color:rgba(0,0,0,0);margin-top:0;\"> <div class=\"row full-height-row middle-xs middle-sm\"> <div class=\"col-xs-12 text-center content-holder\"> <a class=\"button small color2\" href=\"#\">View case study</a></div> </div></div> </div> <div class=\"col-xs-12\"> <div class=\"space-bottom space-top\" data-type=\"column\"> <h5 class=\"\">Project Name</h5> <p class=\"small italic\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore</p></div> </div></div> </div> <div class=\"col-xs-12 col-sm-4 text-center\"> <div class=\"card no-padding bordered\"> <div data-hover-fx=\"portfolio-6\" class=\"contentswap-effect contentswap-overlay\" style=\"float:none;margin:0;width:100%;\"> <div class=\"initial-image\" style=\"float:none;margin:0;\"> <img data-size=\"500x333\" src=\"http://localhost/quiz/wp-content/themes/highlight/customizer/sections/images/cropped-pf-3.jpg\"/></div> <div class=\"overlay bg-color6\" style=\"display:block;transition:opacity 800ms ease 0s;-webkit-transition-timing-function:ease;-moz-transition-timing-function:ease;-o-transition-timing-function:ease;transition-timing-function:ease;\"></div> <div class=\"swap-inner col-xs-12\" style=\"display:block;transition:all 800ms ease 0s;background-color:rgba(0,0,0,0);margin-top:0;\"> <div class=\"row full-height-row middle-xs middle-sm\"> <div class=\"col-xs-12 text-center content-holder\"> <a class=\"button small color2\" href=\"#\">View case study</a></div> </div></div> </div> <div class=\"col-xs-12\"> <div class=\"space-bottom space-top\" data-type=\"column\"> <h5 class=\"\">Project Name</h5> <p class=\"small italic\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore</p></div> </div></div> </div> <div class=\"col-xs-12 col-sm-4 text-center\"> <div class=\"card no-padding bordered\"> <div data-hover-fx=\"portfolio-6\" class=\"contentswap-effect contentswap-overlay\" style=\"float:none;margin:0;width:100%;\"> <div class=\"initial-image\" style=\"float:none;margin:0;\"> <img data-size=\"500x333\" src=\"http://localhost/quiz/wp-content/themes/highlight/customizer/sections/images/cropped-pf-2.jpg\"/></div> <div class=\"overlay bg-color6\" style=\"display:block;transition:opacity 800ms ease 0s;-webkit-transition-timing-function:ease;-moz-transition-timing-function:ease;-o-transition-timing-function:ease;transition-timing-function:ease;\"></div> <div class=\"swap-inner col-xs-12\" style=\"display:block;transition:all 800ms ease 0s;background-color:rgba(0,0,0,0);margin-top:0;\"> <div class=\"row full-height-row middle-xs middle-sm\"> <div class=\"col-xs-12 text-center content-holder\"> <a class=\"button small color2\" href=\"#\">View case study</a></div> </div></div> </div> <div class=\"col-xs-12\"> <div class=\"space-bottom space-top\" data-type=\"column\"> <h5 class=\"\">Project Name</h5> <p class=\"small italic\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore</p></div> </div></div> </div></div> <div class=\"row\"><div data-type=\"column\" class=\"col-xs-12 text-center\"> <a class=\"button color2 y-move\" href=\"#\">View Portfolio</a></div> </div></div> </div><div id=\"testimonials-1\"  style=\"background-color:#ffffff\"  data-label=\"Testimonials\" data-id=\"testimonials-5-mc\" data-export-id=\"testimonials-5-mc\" data-category=\"testimonials\" class=\"testimonials-5-mc content-section content-section-spacing\"><div class=\"gridContainer\"> <div class=\"row\"><div data-type=\"column\" class=\"section-title-col\"> <h5>OUR AWESOME CLIENTS</h5> <h2>Client Testimonials</h2> <p class=\"lead\">Don\'t take our word for it - here\'s what our clients say:</p></div> </div> <div class=\"row spaced-cols content-center-sm\" data-type=\"row\"> <div class=\"col-sm-4\"> <div class=\"card y-move bordered\" data-type=\"column\"> <i class=\"fa fa-quote-right icon color1 small quotation-icon\"></i> <p class=\"text-center\">Do you sometimes have the feeling that you\'re running into the same obstacles over and over again? Many of my conflicts have the same feel to them, like “Hey, I think I\'ve been here before,</p> <img src=\"http://localhost/quiz/wp-content/themes/highlight/customizer/sections/images/team-1.jpg\" class=\"round icon\"> <h6>John Doe</h6> <p class=\"small italic\">Company name</p></div> </div> <div class=\"col-sm-4\"> <div class=\"card y-move bordered\" data-type=\"column\"> <i class=\"fa fa-quote-right icon color1 small quotation-icon\"></i> <p class=\"text-center\">Do you sometimes have the feeling that you\'re running into the same obstacles over and over again? Many of my conflicts have the same feel to them, like “Hey, I think I\'ve been here before,</p> <img src=\"http://localhost/quiz/wp-content/themes/highlight/customizer/sections/images/team-3.jpg\" class=\"round icon\"> <h6>John Doe</h6> <p class=\"small italic\">Company name</p></div> </div> <div class=\"col-sm-4\"> <div class=\"card y-move bordered\" data-type=\"column\"> <i class=\"fa fa-quote-right icon color1 small quotation-icon\"></i> <p class=\"text-center\">Do you sometimes have the feeling that you\'re running into the same obstacles over and over again? Many of my conflicts have the same feel to them, like “Hey, I think I\'ve been here before,</p> <img src=\"http://localhost/quiz/wp-content/themes/highlight/customizer/sections/images/team-7.jpg\" class=\"round icon\"> <h6>John Doe</h6> <p class=\"small italic\">Company name</p></div> </div></div> </div></div><div id=\"cta-1\"  style=\"background-color:#f5fafd\"  data-label=\"Cta\" data-id=\"cta-blue-section-mc\" data-export-id=\"cta-blue-section-mc\" data-category=\"cta\" class=\"cta-blue-section-mc content-section content-section-spacing le_cocktail white-text\"><div class=\"gridContainer\"> <div class=\"row middle-xs\"><div class=\"col-sm-8 space-bottom-xs\" data-type=\"column\"> <h2>Join us! <span class=\"font-300\">It will only take a minute</span></h2> </div> <div class=\"col-sm-4 end-sm\" data-type=\"column\"> <a class=\"button color2\" href=\"#\">GET STARTED TODAY</a></div> </div></div> </div><div id=\"team-1\"  style=\"background-color:#ffffff\"  data-label=\"Team\" data-id=\"team-5-mc\" data-export-id=\"team-5-mc\" data-category=\"team\" class=\"team-5-mc content-section content-section-spacing\"><div class=\"gridContainer\"> <div class=\"row text-center\"><div class=\"section-title-col\" data-type=\"column\"> <h5>OUR AWESOME TEAM</h5> <h2>Our Team</h2> <p class=\"lead\">There are number of instructions to be followed at the time of refilling an inket cartridge. So whenever your printer ink runs dry you need to follow the below steps for inkjet cartridge refill.</p></div> </div> <div class=\"row spaced-cols content-center-sm\" data-type=\"row\"> <div class=\"col-xs-12 col-sm-6 col-md-3 col-padding\"> <div class=\"row \"> <div data-type=\"column\" class=\"col-xs-12 col-sm-12\"> <img class=\"round face\" src=\"http://localhost/quiz/wp-content/themes/highlight/customizer/sections/images/team-1.jpg\"/> <h4 class=\"font-500\">Team Member</h4> <p class=\"italic\">job title</p> <p>Point of Sale hardware, the till at a shop check out, has become very complex over the past ten years.</p> <div class=\"social-icons-group\" data-type=\"group\"> <a href=\"#\"><i class=\"gray fa icon fa-facebook-square small \"></i></a> <a href=\"#\"><i class=\"gray fa icon fa-twitter-square small \"></i></a> <a href=\"#\"><i class=\"gray fa icon fa-linkedin-square small \"></i></a> <a href=\"#\"><i class=\"gray fa icon fa-google-plus-square small \"></i></a></div> </div></div> </div> <div class=\"col-xs-12 col-sm-6 col-md-3 col-padding\"> <div class=\"row \"> <div data-type=\"column\" class=\"col-xs-12 col-sm-12\"> <img class=\"round face\" src=\"http://localhost/quiz/wp-content/themes/highlight/customizer/sections/images/team-7.jpg\"/> <h4 class=\"font-500\">Team Member</h4> <p class=\"italic\">job title</p> <p>Point of Sale hardware, the till at a shop check out, has become very complex over the past ten years.</p> <div class=\"social-icons-group\" data-type=\"group\"> <a href=\"#\"><i class=\"gray fa icon fa-facebook-square small \"></i></a> <a href=\"#\"><i class=\"gray fa icon fa-twitter-square small \"></i></a> <a href=\"#\"><i class=\"gray fa icon fa-linkedin-square small \"></i></a> <a href=\"#\"><i class=\"gray fa icon fa-google-plus-square small \"></i></a></div> </div></div> </div> <div class=\"col-xs-12 col-sm-6 col-md-3 col-padding\"> <div class=\"row \"> <div data-type=\"column\" class=\"col-xs-12 col-sm-12\"> <img class=\"round face\" src=\"http://localhost/quiz/wp-content/themes/highlight/customizer/sections/images/team-3.jpg\"/> <h4 class=\"font-500\">Team Member</h4> <p class=\"italic\">job title</p> <p>Point of Sale hardware, the till at a shop check out, has become very complex over the past ten years.</p> <div class=\"social-icons-group\" data-type=\"group\"> <a href=\"#\"><i class=\"gray fa icon fa-facebook-square small \"></i></a> <a href=\"#\"><i class=\"gray fa icon fa-twitter-square small \"></i></a> <a href=\"#\"><i class=\"gray fa icon fa-linkedin-square small \"></i></a> <a href=\"#\"><i class=\"gray fa icon fa-google-plus-square small \"></i></a></div> </div></div> </div> <div class=\"col-xs-12 col-sm-6 col-md-3 col-padding\"> <div class=\"row \"> <div data-type=\"column\" class=\"col-xs-12 col-sm-12\"> <img class=\"round face\" src=\"http://localhost/quiz/wp-content/themes/highlight/customizer/sections/images/team-4.jpg\"/> <h4 class=\"font-500\">Team Member</h4> <p class=\"italic\">job title</p> <p>Point of Sale hardware, the till at a shop check out, has become very complex over the past ten years.</p> <div class=\"social-icons-group\" data-type=\"group\"> <a href=\"#\"><i class=\"gray fa icon fa-facebook-square small \"></i></a> <a href=\"#\"><i class=\"gray fa icon fa-twitter-square small \"></i></a> <a href=\"#\"><i class=\"gray fa icon fa-linkedin-square small \"></i></a> <a href=\"#\"><i class=\"gray fa icon fa-google-plus-square small \"></i></a></div> </div></div> </div></div> </div></div><div id=\"latest-news-1\"  style=\"background-color:#f5fafd\"  data-label=\"Latest-news\" data-id=\"blog-section-mc\" data-export-id=\"blog-section-mc\" data-category=\"latest_news\" class=\"blog-section-mc blog-section-standard content-section content-section-spacing\"><div class=\"gridContainer\"> <div class=\"row\"><div data-type=\"column\" class=\"section-title-col\"> <h5>WE LOVE BLOGGING</h5> <h2>Latest from Our Blog</h2> <p class=\"lead\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p></div> </div> <div class=\"row\"> <div data-type=\"row\" data-dynamic-columns=\"handled\" data-content-shortcode=\"mesmerize_latest_news posts=&quot;3&quot;\">[mesmerize_latest_news]</div></div> <div class=\"row\"><div class=\"text-center\"> <a class=\"button color1\" data-attr-shortcode=\"href:mesmerize_blog_link\" href=\"[mesmerize_blog_link]\">VIEW OUR BLOG</a></div> </div></div></div><div id=\"contact-1\"  style=\"background-color:#ffffff\"  data-label=\"Contact\" data-id=\"contact-1-mc\" data-export-id=\"contact-1-mc\" data-category=\"contact\" class=\"contact-1-mc content-section content-section-spacing white-text\" data-parallax-depth=\"20\"><div class=\"gridContainer\"> <div class=\"row text-center\"><div class=\"section-title-col\" data-type=\"column\"> <h5>CONNECT WITH US</h5> <h2>Contact us</h2> <p class=\"lead\">With the Internet spreading linke wildfire and reaching every part of our daily life, more and more traffic is directed to websites in search for information.</p></div> </div> <div class=\"row text-center\"> <div class=\"col-xs-12 col-sm-8 col-sm-offset-2 contact-form-wrapper inline-info\"> <div class=\"card large-padding\"> <div class=\"\" data-content-shortcode=\"mesmerize_contact_form\" data-editable=\"true\">[mesmerize_contact_form]</div></div> </div></div> </div></div>\";s:20138:\"<div id=\"features-2\"  style=\"background-color:#ffffff\"  data-label=\"Features\" data-id=\"features-ov-4-mc\" data-export-id=\"features-ov-4-mc\" data-category=\"features\" class=\"features-ov-4-mc content-section content-section-spacing\"><div class=\"gridContainer\"> <div data-type=\"row\" class=\"row spaced-cols text-center\"><div class=\"col-xs-12 col-sm-4 col-padding\"> <i class=\"fa icon fa-clone large shadow-large-black round aligncenter reverse color1\"></i> <div data-type=\"column\"> <h5 class=\"font-400\">RESPONSIVE DESIGN</h5> <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p></div> </div> <div class=\"col-xs-12 col-sm-4 col-padding\"> <i class=\"fa icon fa-cogs large shadow-large-black round aligncenter reverse color2\"></i> <div data-type=\"column\"><h5 class=\"font-400\">SUPER FEATURES</h5> <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p></div> </div> <div class=\"col-xs-12 col-sm-4 col-padding\"> <i class=\"fa icon fa-magic large shadow-large-black round aligncenter reverse color4\"></i> <div data-type=\"column\"><h5 class=\"font-400\">DRAG AND DROP</h5> <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p></div> </div></div> </div></div><div id=\"about-1\"  style=\"background-color:#f5fafd\"  data-label=\"About\" data-id=\"about-images-right-section-mc\" data-export-id=\"about-images-right-section-mc\" data-category=\"about\" class=\"about-images-right-section-mc content-section content-section-spacing\"><div class=\"gridContainer\"> <div class=\"row middle-sm text-center\"><div class=\"col-sm-5 content-left-sm\" data-type=\"column\"> <h5>WHAT WE DO</h5> <h2>We provide <br/> <span style=\"font-family:Playfair Display,sans-serif;font-weight:700;font-style:italic;\" href=\"#\">creative solutions</span> for all your needs!</h2> <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p> <a class=\"button color1\" href=\"#\">GET STARTED TODAY</a></div> <div class=\"col-sm-7 space-bottom-xs\"><div class=\"image-group-side-3-img\"> <img class=\"topimg shadow-large\" src=\"http://localhost/quiz/wp-content/themes/highlight/customizer/sections/images/cropped-paper-571937_1920.jpg\"/> <img class=\"rightimg shadow-large\" src=\"http://localhost/quiz/wp-content/themes/highlight/customizer/sections/images/cropped-cropped-background-2726039-6x4.jpg\"/> <div class=\"leftimg\"> <img class=\"shadow-large\" src=\"http://localhost/quiz/wp-content/themes/highlight/customizer/sections/images/cropped-girl-2940655_1920.jpg\"/></div> </div></div> </div></div> </div><div id=\"features-1\"  style=\"background-color:#ffffff\"  data-label=\"Features\" data-id=\"features-16-card-bordered-mc\" data-export-id=\"features-16-card-bordered-mc\" data-category=\"features\" class=\"features-16-card-bordered-mc content-section content-section-spacing\"><div class=\"gridContainer\"> <div class=\"row text-center\"><div class=\"section-title-col\" data-type=\"column\"> <h5>WHAT WE OFFER</h5> <h2>We provide creative solutions!</h2> <p class=\"lead\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation.</p></div> </div> <div class=\"row spaced-cols\" data-type=\"row\"> <div class=\"col-xs-12 col-sm-6 col-md-4\"> <div class=\"card no-padding bordered y-move\"> <img class=\"face\" src=\"http://localhost/quiz/wp-content/themes/highlight/customizer/sections/images/agreement-2548139_1920.jpg\"/> <div data-type=\"column\" class=\"col-padding-small col-padding-small-xs description-container\"> <h4 class=\"font-500\">Responsive Design</h4> <p class=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation.</p></div> <div data-type=\"column\" class=\"col-padding-small col-padding-small-xs read-more-container\"><a class=\"read-more\">learn more</a></div> </div></div> <div class=\"col-xs-12 col-sm-6 col-md-4\"><div class=\"card no-padding bordered y-move\"> <img class=\"face\" src=\"http://localhost/quiz/wp-content/themes/highlight/customizer/sections/images/pencils-452238_1920.jpg\"/> <div data-type=\"column\" class=\"col-padding-small col-padding-small-xs description-container\"> <h4 class=\"font-500\">Responsive Design</h4> <p class=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation.</p></div> <div data-type=\"column\" class=\"col-padding-small col-padding-small-xs read-more-container\"><a class=\"read-more\">learn more</a></div> </div></div> <div class=\"col-xs-12 col-sm-6 col-md-4\"><div class=\"card no-padding bordered y-move\"> <img class=\"face\" src=\"http://localhost/quiz/wp-content/themes/highlight/customizer/sections/images/cropped-startup-849804_1920.jpg\"/> <div data-type=\"column\" class=\"col-padding-small col-padding-small-xs description-container\"> <h4 class=\"font-500\">Responsive Design</h4> <p class=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation.</p></div> <div data-type=\"column\" class=\"col-padding-small col-padding-small-xs read-more-container\"><a class=\"read-more\">learn more</a></div> </div></div> </div></div> </div><div id=\"content-1\"  style=\"background-color:#f5fafd\"  data-label=\"Content\" data-id=\"content-7-mc\" data-export-id=\"content-7-mc\" data-category=\"content\" class=\"content-7-mc content-section content-section-spacing\"><div class=\"gridContainer\"> <div class=\"row middle-sm\"><div class=\"col-sm-6 space-bottom-xs\" data-type=\"column\"> <h2>Web Design & Development</h2> <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p> <a class=\"button color1\" href=\"#\">LEARN MORE</a></div> <div class=\"col-sm-6\" data-type=\"column\"> <img class=\"shadow-large\" src=\"http://localhost/quiz/wp-content/themes/highlight/customizer/sections/images/cropped-hero-3.jpg\"></div> </div></div> </div><div id=\"content-2\"  style=\"background-color:#ffffff\"  data-label=\"Content\" data-id=\"content-8-mc\" data-export-id=\"content-8-mc\" data-category=\"content\" class=\"content-8-mc content-section content-section-spacing\"><div class=\"gridContainer\"> <div class=\"row middle-sm\"><div class=\"col-sm-6 space-bottom-xs space-top-xs\" data-type=\"column\"> <img class=\"shadow-large\" src=\"http://localhost/quiz/wp-content/themes/highlight/customizer/sections/images/business-3560916_1920.jpg\"></div> <div class=\"col-sm-6\" data-type=\"column\"><h2>App Design & Development</h2> <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p> <a class=\"button color1\" href=\"#\">LEARN MORE</a></div> </div></div> </div><div id=\"portfolio-1\"  data-label=\"Portfolio\" data-id=\"portfolio-5-mc\" data-export-id=\"portfolio-5-mc\" data-category=\"portfolio\" class=\"portfolio-5-mc content-section content-section-spacing section-title-col-white-text bg-color1\"><div class=\"gridContainer\"> <div class=\"row text-center\"><div class=\"section-title-col\" data-type=\"column\"> <h5>OUR WORK</h5> <h2>Portfolio</h2> <p class=\"lead\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua, ut aliquip ex ea commodo consequat.</p></div> </div> <div class=\"row space-bottom spaced-cols\" data-type=\"row\"> <div class=\"col-xs-12 col-sm-4 text-center\"> <div class=\"card no-padding bordered\"> <div data-hover-fx=\"portfolio-6\" class=\"contentswap-effect contentswap-overlay\" style=\"float:none;margin:0;width:100%;\"> <div class=\"initial-image\" style=\"float:none;margin:0;\"> <img data-size=\"500x333\" src=\"http://localhost/quiz/wp-content/themes/highlight/customizer/sections/images/cropped-pf-1.jpg\"/></div> <div class=\"overlay bg-color6\" style=\"display:block;transition:opacity 800ms ease 0s;-webkit-transition-timing-function:ease;-moz-transition-timing-function:ease;-o-transition-timing-function:ease;transition-timing-function:ease;\"></div> <div class=\"swap-inner col-xs-12\" style=\"display:block;transition:all 800ms ease 0s;background-color:rgba(0,0,0,0);margin-top:0;\"> <div class=\"row full-height-row middle-xs middle-sm\"> <div class=\"col-xs-12 text-center content-holder\"> <a class=\"button small color2\" href=\"#\">View case study</a></div> </div></div> </div> <div class=\"col-xs-12\"> <div class=\"space-bottom space-top\" data-type=\"column\"> <h5 class=\"\">Project Name</h5> <p class=\"small italic\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore</p></div> </div></div> </div> <div class=\"col-xs-12 col-sm-4 text-center\"> <div class=\"card no-padding bordered\"> <div data-hover-fx=\"portfolio-6\" class=\"contentswap-effect contentswap-overlay\" style=\"float:none;margin:0;width:100%;\"> <div class=\"initial-image\" style=\"float:none;margin:0;\"> <img data-size=\"500x333\" src=\"http://localhost/quiz/wp-content/themes/highlight/customizer/sections/images/cropped-pf-3.jpg\"/></div> <div class=\"overlay bg-color6\" style=\"display:block;transition:opacity 800ms ease 0s;-webkit-transition-timing-function:ease;-moz-transition-timing-function:ease;-o-transition-timing-function:ease;transition-timing-function:ease;\"></div> <div class=\"swap-inner col-xs-12\" style=\"display:block;transition:all 800ms ease 0s;background-color:rgba(0,0,0,0);margin-top:0;\"> <div class=\"row full-height-row middle-xs middle-sm\"> <div class=\"col-xs-12 text-center content-holder\"> <a class=\"button small color2\" href=\"#\">View case study</a></div> </div></div> </div> <div class=\"col-xs-12\"> <div class=\"space-bottom space-top\" data-type=\"column\"> <h5 class=\"\">Project Name</h5> <p class=\"small italic\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore</p></div> </div></div> </div> <div class=\"col-xs-12 col-sm-4 text-center\"> <div class=\"card no-padding bordered\"> <div data-hover-fx=\"portfolio-6\" class=\"contentswap-effect contentswap-overlay\" style=\"float:none;margin:0;width:100%;\"> <div class=\"initial-image\" style=\"float:none;margin:0;\"> <img data-size=\"500x333\" src=\"http://localhost/quiz/wp-content/themes/highlight/customizer/sections/images/cropped-pf-2.jpg\"/></div> <div class=\"overlay bg-color6\" style=\"display:block;transition:opacity 800ms ease 0s;-webkit-transition-timing-function:ease;-moz-transition-timing-function:ease;-o-transition-timing-function:ease;transition-timing-function:ease;\"></div> <div class=\"swap-inner col-xs-12\" style=\"display:block;transition:all 800ms ease 0s;background-color:rgba(0,0,0,0);margin-top:0;\"> <div class=\"row full-height-row middle-xs middle-sm\"> <div class=\"col-xs-12 text-center content-holder\"> <a class=\"button small color2\" href=\"#\">View case study</a></div> </div></div> </div> <div class=\"col-xs-12\"> <div class=\"space-bottom space-top\" data-type=\"column\"> <h5 class=\"\">Project Name</h5> <p class=\"small italic\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore</p></div> </div></div> </div></div> <div class=\"row\"><div data-type=\"column\" class=\"col-xs-12 text-center\"> <a class=\"button color2 y-move\" href=\"#\">View Portfolio</a></div> </div></div> </div><div id=\"testimonials-1\"  style=\"background-color:#ffffff\"  data-label=\"Testimonials\" data-id=\"testimonials-5-mc\" data-export-id=\"testimonials-5-mc\" data-category=\"testimonials\" class=\"testimonials-5-mc content-section content-section-spacing\"><div class=\"gridContainer\"> <div class=\"row\"><div data-type=\"column\" class=\"section-title-col\"> <h5>OUR AWESOME CLIENTS</h5> <h2>Client Testimonials</h2> <p class=\"lead\">Don\'t take our word for it - here\'s what our clients say:</p></div> </div> <div class=\"row spaced-cols content-center-sm\" data-type=\"row\"> <div class=\"col-sm-4\"> <div class=\"card y-move bordered\" data-type=\"column\"> <i class=\"fa fa-quote-right icon color1 small quotation-icon\"></i> <p class=\"text-center\">Do you sometimes have the feeling that you\'re running into the same obstacles over and over again? Many of my conflicts have the same feel to them, like “Hey, I think I\'ve been here before,</p> <img src=\"http://localhost/quiz/wp-content/themes/highlight/customizer/sections/images/team-1.jpg\" class=\"round icon\"> <h6>John Doe</h6> <p class=\"small italic\">Company name</p></div> </div> <div class=\"col-sm-4\"> <div class=\"card y-move bordered\" data-type=\"column\"> <i class=\"fa fa-quote-right icon color1 small quotation-icon\"></i> <p class=\"text-center\">Do you sometimes have the feeling that you\'re running into the same obstacles over and over again? Many of my conflicts have the same feel to them, like “Hey, I think I\'ve been here before,</p> <img src=\"http://localhost/quiz/wp-content/themes/highlight/customizer/sections/images/team-3.jpg\" class=\"round icon\"> <h6>John Doe</h6> <p class=\"small italic\">Company name</p></div> </div> <div class=\"col-sm-4\"> <div class=\"card y-move bordered\" data-type=\"column\"> <i class=\"fa fa-quote-right icon color1 small quotation-icon\"></i> <p class=\"text-center\">Do you sometimes have the feeling that you\'re running into the same obstacles over and over again? Many of my conflicts have the same feel to them, like “Hey, I think I\'ve been here before,</p> <img src=\"http://localhost/quiz/wp-content/themes/highlight/customizer/sections/images/team-7.jpg\" class=\"round icon\"> <h6>John Doe</h6> <p class=\"small italic\">Company name</p></div> </div></div> </div></div><div id=\"cta-1\"  style=\"background-color:#f5fafd\"  data-label=\"Cta\" data-id=\"cta-blue-section-mc\" data-export-id=\"cta-blue-section-mc\" data-category=\"cta\" class=\"cta-blue-section-mc content-section content-section-spacing le_cocktail white-text\"><div class=\"gridContainer\"> <div class=\"row middle-xs\"><div class=\"col-sm-8 space-bottom-xs\" data-type=\"column\"> <h2>Join us! <span class=\"font-300\">It will only take a minute</span></h2> </div> <div class=\"col-sm-4 end-sm\" data-type=\"column\"> <a class=\"button color2\" href=\"#\">GET STARTED TODAY</a></div> </div></div> </div><div id=\"team-1\"  style=\"background-color:#ffffff\"  data-label=\"Team\" data-id=\"team-5-mc\" data-export-id=\"team-5-mc\" data-category=\"team\" class=\"team-5-mc content-section content-section-spacing\"><div class=\"gridContainer\"> <div class=\"row text-center\"><div class=\"section-title-col\" data-type=\"column\"> <h5>OUR AWESOME TEAM</h5> <h2>Our Team</h2> <p class=\"lead\">There are number of instructions to be followed at the time of refilling an inket cartridge. So whenever your printer ink runs dry you need to follow the below steps for inkjet cartridge refill.</p></div> </div> <div class=\"row spaced-cols content-center-sm\" data-type=\"row\"> <div class=\"col-xs-12 col-sm-6 col-md-3 col-padding\"> <div class=\"row \"> <div data-type=\"column\" class=\"col-xs-12 col-sm-12\"> <img class=\"round face\" src=\"http://localhost/quiz/wp-content/themes/highlight/customizer/sections/images/team-1.jpg\"/> <h4 class=\"font-500\">Team Member</h4> <p class=\"italic\">job title</p> <p>Point of Sale hardware, the till at a shop check out, has become very complex over the past ten years.</p> <div class=\"social-icons-group\" data-type=\"group\"> <a href=\"#\"><i class=\"gray fa icon fa-facebook-square small \"></i></a> <a href=\"#\"><i class=\"gray fa icon fa-twitter-square small \"></i></a> <a href=\"#\"><i class=\"gray fa icon fa-linkedin-square small \"></i></a> <a href=\"#\"><i class=\"gray fa icon fa-google-plus-square small \"></i></a></div> </div></div> </div> <div class=\"col-xs-12 col-sm-6 col-md-3 col-padding\"> <div class=\"row \"> <div data-type=\"column\" class=\"col-xs-12 col-sm-12\"> <img class=\"round face\" src=\"http://localhost/quiz/wp-content/themes/highlight/customizer/sections/images/team-7.jpg\"/> <h4 class=\"font-500\">Team Member</h4> <p class=\"italic\">job title</p> <p>Point of Sale hardware, the till at a shop check out, has become very complex over the past ten years.</p> <div class=\"social-icons-group\" data-type=\"group\"> <a href=\"#\"><i class=\"gray fa icon fa-facebook-square small \"></i></a> <a href=\"#\"><i class=\"gray fa icon fa-twitter-square small \"></i></a> <a href=\"#\"><i class=\"gray fa icon fa-linkedin-square small \"></i></a> <a href=\"#\"><i class=\"gray fa icon fa-google-plus-square small \"></i></a></div> </div></div> </div> <div class=\"col-xs-12 col-sm-6 col-md-3 col-padding\"> <div class=\"row \"> <div data-type=\"column\" class=\"col-xs-12 col-sm-12\"> <img class=\"round face\" src=\"http://localhost/quiz/wp-content/themes/highlight/customizer/sections/images/team-3.jpg\"/> <h4 class=\"font-500\">Team Member</h4> <p class=\"italic\">job title</p> <p>Point of Sale hardware, the till at a shop check out, has become very complex over the past ten years.</p> <div class=\"social-icons-group\" data-type=\"group\"> <a href=\"#\"><i class=\"gray fa icon fa-facebook-square small \"></i></a> <a href=\"#\"><i class=\"gray fa icon fa-twitter-square small \"></i></a> <a href=\"#\"><i class=\"gray fa icon fa-linkedin-square small \"></i></a> <a href=\"#\"><i class=\"gray fa icon fa-google-plus-square small \"></i></a></div> </div></div> </div> <div class=\"col-xs-12 col-sm-6 col-md-3 col-padding\"> <div class=\"row \"> <div data-type=\"column\" class=\"col-xs-12 col-sm-12\"> <img class=\"round face\" src=\"http://localhost/quiz/wp-content/themes/highlight/customizer/sections/images/team-4.jpg\"/> <h4 class=\"font-500\">Team Member</h4> <p class=\"italic\">job title</p> <p>Point of Sale hardware, the till at a shop check out, has become very complex over the past ten years.</p> <div class=\"social-icons-group\" data-type=\"group\"> <a href=\"#\"><i class=\"gray fa icon fa-facebook-square small \"></i></a> <a href=\"#\"><i class=\"gray fa icon fa-twitter-square small \"></i></a> <a href=\"#\"><i class=\"gray fa icon fa-linkedin-square small \"></i></a> <a href=\"#\"><i class=\"gray fa icon fa-google-plus-square small \"></i></a></div> </div></div> </div></div> </div></div><div id=\"latest-news-1\"  style=\"background-color:#f5fafd\"  data-label=\"Latest-news\" data-id=\"blog-section-mc\" data-export-id=\"blog-section-mc\" data-category=\"latest_news\" class=\"blog-section-mc blog-section-standard content-section content-section-spacing\"><div class=\"gridContainer\"> <div class=\"row\"><div data-type=\"column\" class=\"section-title-col\"> <h5>WE LOVE BLOGGING</h5> <h2>Latest from Our Blog</h2> <p class=\"lead\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p></div> </div> <div class=\"row\"> <div data-type=\"row\" data-dynamic-columns=\"handled\" data-content-shortcode=\"mesmerize_latest_news posts=&quot;3&quot;\">[mesmerize_latest_news]</div></div> <div class=\"row\"><div class=\"text-center\"> <a class=\"button color1\" data-attr-shortcode=\"href:mesmerize_blog_link\" href=\"[mesmerize_blog_link]\">VIEW OUR BLOG</a></div> </div></div></div><div id=\"contact-1\"  style=\"background-color:#ffffff\"  data-label=\"Contact\" data-id=\"contact-1-mc\" data-export-id=\"contact-1-mc\" data-category=\"contact\" class=\"contact-1-mc content-section content-section-spacing white-text\" data-parallax-depth=\"20\"><div class=\"gridContainer\"> <div class=\"row text-center\"><div class=\"section-title-col\" data-type=\"column\"> <h5>CONNECT WITH US</h5> <h2>Contact us</h2> <p class=\"lead\">With the Internet spreading linke wildfire and reaching every part of our daily life, more and more traffic is directed to websites in search for information.</p></div> </div> <div class=\"row text-center\"> <div class=\"col-xs-12 col-sm-8 col-sm-offset-2 contact-form-wrapper inline-info\"> <div class=\"card large-padding\"> <div class=\"\" data-content-shortcode=\"mesmerize_contact_form\" data-editable=\"true\">[mesmerize_contact_form]</div></div> </div></div> </div></div>\";}', 'yes'),
(222, 'cp_initialize_notifications', '1594714079', 'yes'),
(233, 'wpcf7', 'a:2:{s:7:\"version\";s:3:\"5.2\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1594715804;s:7:\"version\";s:3:\"5.2\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(236, 'wp_mail_smtp_initial_version', '2.2.1', 'no'),
(237, 'wp_mail_smtp_version', '2.2.1', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(238, 'wp_mail_smtp', 'a:8:{s:4:\"mail\";a:6:{s:10:\"from_email\";s:23:\"abiha.amir456@gmail.com\";s:9:\"from_name\";s:7:\"wp quiz\";s:6:\"mailer\";s:4:\"smtp\";s:11:\"return_path\";b:0;s:16:\"from_email_force\";b:1;s:15:\"from_name_force\";b:0;}s:4:\"smtp\";a:7:{s:7:\"autotls\";b:1;s:4:\"auth\";b:1;s:4:\"host\";s:16:\"smtp.mailtrap.io\";s:10:\"encryption\";s:4:\"none\";s:4:\"port\";i:2525;s:4:\"user\";s:14:\"874e6d0badaeab\";s:4:\"pass\";s:14:\"5a6678465929cd\";}s:7:\"smtpcom\";a:2:{s:7:\"api_key\";s:0:\"\";s:7:\"channel\";s:0:\"\";}s:11:\"pepipostapi\";a:1:{s:7:\"api_key\";s:0:\"\";}s:10:\"sendinblue\";a:1:{s:7:\"api_key\";s:0:\"\";}s:7:\"mailgun\";a:3:{s:7:\"api_key\";s:0:\"\";s:6:\"domain\";s:0:\"\";s:6:\"region\";s:2:\"US\";}s:8:\"sendgrid\";a:1:{s:7:\"api_key\";s:0:\"\";}s:5:\"gmail\";a:2:{s:9:\"client_id\";s:0:\"\";s:13:\"client_secret\";s:0:\"\";}}', 'no'),
(239, 'wp_mail_smtp_activated_time', '1594716118', 'no'),
(240, 'action_scheduler_hybrid_store_demarkation', '81', 'yes'),
(241, 'schema-ActionScheduler_StoreSchema', '3.0.1594716119', 'yes'),
(242, 'schema-ActionScheduler_LoggerSchema', '2.0.1594716119', 'yes'),
(246, 'wp_mail_smtp_migration_version', '2', 'yes'),
(247, 'wp_mail_smtp_review_notice', 'a:2:{s:4:\"time\";i:1594716119;s:9:\"dismissed\";b:0;}', 'yes'),
(248, 'action_scheduler_lock_async-request-runner', '1594891987', 'yes'),
(256, 'wp_mail_smtp_debug', 'a:0:{}', 'no'),
(289, 'fca_qc_meta_version', '1.5.0', 'yes'),
(419, 'fs_active_plugins', 'O:8:\"stdClass\":3:{s:7:\"plugins\";a:1:{s:34:\"wp-security-audit-log/sdk/freemius\";O:8:\"stdClass\":4:{s:7:\"version\";s:5:\"2.3.2\";s:4:\"type\";s:6:\"plugin\";s:9:\"timestamp\";i:1594730853;s:11:\"plugin_path\";s:47:\"wp-security-audit-log/wp-security-audit-log.php\";}}s:7:\"abspath\";s:21:\"C:\\xampp\\htdocs\\quiz/\";s:6:\"newest\";O:8:\"stdClass\":5:{s:11:\"plugin_path\";s:47:\"wp-security-audit-log/wp-security-audit-log.php\";s:8:\"sdk_path\";s:34:\"wp-security-audit-log/sdk/freemius\";s:7:\"version\";s:5:\"2.3.2\";s:13:\"in_activation\";b:0;s:9:\"timestamp\";i:1594730853;}}', 'yes'),
(420, 'fs_debug_mode', '', 'yes'),
(421, 'fs_accounts', 'a:5:{s:21:\"id_slug_type_path_map\";a:1:{i:94;a:3:{s:4:\"slug\";s:21:\"wp-security-audit-log\";s:4:\"type\";s:6:\"plugin\";s:4:\"path\";s:47:\"wp-security-audit-log/wp-security-audit-log.php\";}}s:11:\"plugin_data\";a:1:{s:21:\"wp-security-audit-log\";a:15:{s:16:\"plugin_main_file\";O:8:\"stdClass\":1:{s:4:\"path\";s:47:\"wp-security-audit-log/wp-security-audit-log.php\";}s:20:\"is_network_activated\";b:0;s:17:\"install_timestamp\";i:1594730854;s:17:\"was_plugin_loaded\";b:1;s:21:\"is_plugin_new_install\";b:0;s:16:\"sdk_last_version\";N;s:11:\"sdk_version\";s:5:\"2.3.2\";s:16:\"sdk_upgrade_mode\";b:1;s:18:\"sdk_downgrade_mode\";b:0;s:19:\"plugin_last_version\";N;s:14:\"plugin_version\";s:5:\"4.1.2\";s:19:\"plugin_upgrade_mode\";b:1;s:21:\"plugin_downgrade_mode\";b:0;s:17:\"connectivity_test\";a:6:{s:12:\"is_connected\";b:1;s:4:\"host\";s:9:\"localhost\";s:9:\"server_ip\";s:3:\"::1\";s:9:\"is_active\";b:1;s:9:\"timestamp\";i:1594730854;s:7:\"version\";s:5:\"4.1.2\";}s:15:\"prev_is_premium\";b:0;}}s:13:\"file_slug_map\";a:1:{s:47:\"wp-security-audit-log/wp-security-audit-log.php\";s:21:\"wp-security-audit-log\";}s:7:\"plugins\";a:1:{s:21:\"wp-security-audit-log\";O:9:\"FS_Plugin\":23:{s:16:\"parent_plugin_id\";N;s:5:\"title\";s:15:\"WP Activity Log\";s:4:\"slug\";s:21:\"wp-security-audit-log\";s:12:\"premium_slug\";s:29:\"wp-security-audit-log-premium\";s:4:\"type\";s:6:\"plugin\";s:20:\"affiliate_moderation\";b:0;s:19:\"is_wp_org_compliant\";b:1;s:22:\"premium_releases_count\";N;s:4:\"file\";s:47:\"wp-security-audit-log/wp-security-audit-log.php\";s:7:\"version\";s:5:\"4.1.2\";s:11:\"auto_update\";N;s:4:\"info\";N;s:10:\"is_premium\";b:0;s:14:\"premium_suffix\";s:9:\"(Premium)\";s:7:\"is_live\";b:1;s:9:\"bundle_id\";N;s:17:\"bundle_public_key\";N;s:10:\"public_key\";s:32:\"pk_d602740d3088272d75906045af9fa\";s:10:\"secret_key\";N;s:2:\"id\";s:2:\"94\";s:7:\"updated\";N;s:7:\"created\";N;s:22:\"\0FS_Entity\0_is_updated\";b:1;}}s:9:\"unique_id\";s:32:\"5815ef93e60292f76d99a5cf370cbc63\";}', 'yes'),
(422, 'fs_gdpr', 'a:1:{s:2:\"u1\";a:1:{s:8:\"required\";b:0;}}', 'yes'),
(425, 'wsal_pruning-date', '6 months', 'yes'),
(426, 'wsal_version', '4.1.2', 'yes'),
(427, 'wsal_disabled-alerts', '2099,2126', 'yes'),
(429, 'fs_api_cache', 'a:0:{}', 'no'),
(431, 'fs_wsalp', 'no', 'yes'),
(432, 'wsal_setup-modal-dismissed', 'yes', 'yes'),
(518, '_transient_health-check-site-status-result', '{\"good\":\"8\",\"recommended\":\"9\",\"critical\":\"0\"}', 'yes'),
(730, '_transient_timeout_wsal_wp_wsal_options_status', '1594908421', 'no'),
(731, '_transient_wsal_wp_wsal_options_status', '1', 'no'),
(873, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1594874185;s:7:\"checked\";a:5:{s:9:\"highlight\";s:6:\"1.0.15\";s:9:\"mesmerize\";s:6:\"1.6.90\";s:14:\"twentynineteen\";s:3:\"1.5\";s:15:\"twentyseventeen\";s:3:\"2.3\";s:12:\"twentytwenty\";s:3:\"1.2\";}s:8:\"response\";a:2:{s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.1.6.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.4\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.4.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}}s:12:\"translations\";a:0:{}}', 'no'),
(939, '_transient_timeout_as-post-store-dependencies-met', '1594960552', 'no'),
(940, '_transient_as-post-store-dependencies-met', 'yes', 'no'),
(942, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1594884963', 'no'),
(943, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'O:8:\"stdClass\":100:{s:6:\"widget\";a:3:{s:4:\"name\";s:6:\"widget\";s:4:\"slug\";s:6:\"widget\";s:5:\"count\";i:4710;}s:11:\"woocommerce\";a:3:{s:4:\"name\";s:11:\"woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:5:\"count\";i:4244;}s:4:\"post\";a:3:{s:4:\"name\";s:4:\"post\";s:4:\"slug\";s:4:\"post\";s:5:\"count\";i:2676;}s:5:\"admin\";a:3:{s:4:\"name\";s:5:\"admin\";s:4:\"slug\";s:5:\"admin\";s:5:\"count\";i:2560;}s:5:\"posts\";a:3:{s:4:\"name\";s:5:\"posts\";s:4:\"slug\";s:5:\"posts\";s:5:\"count\";i:1966;}s:9:\"shortcode\";a:3:{s:4:\"name\";s:9:\"shortcode\";s:4:\"slug\";s:9:\"shortcode\";s:5:\"count\";i:1813;}s:8:\"comments\";a:3:{s:4:\"name\";s:8:\"comments\";s:4:\"slug\";s:8:\"comments\";s:5:\"count\";i:1794;}s:7:\"twitter\";a:3:{s:4:\"name\";s:7:\"twitter\";s:4:\"slug\";s:7:\"twitter\";s:5:\"count\";i:1486;}s:6:\"images\";a:3:{s:4:\"name\";s:6:\"images\";s:4:\"slug\";s:6:\"images\";s:5:\"count\";i:1478;}s:6:\"google\";a:3:{s:4:\"name\";s:6:\"google\";s:4:\"slug\";s:6:\"google\";s:5:\"count\";i:1477;}s:8:\"facebook\";a:3:{s:4:\"name\";s:8:\"facebook\";s:4:\"slug\";s:8:\"facebook\";s:5:\"count\";i:1453;}s:5:\"image\";a:3:{s:4:\"name\";s:5:\"image\";s:4:\"slug\";s:5:\"image\";s:5:\"count\";i:1439;}s:3:\"seo\";a:3:{s:4:\"name\";s:3:\"seo\";s:4:\"slug\";s:3:\"seo\";s:5:\"count\";i:1433;}s:7:\"sidebar\";a:3:{s:4:\"name\";s:7:\"sidebar\";s:4:\"slug\";s:7:\"sidebar\";s:5:\"count\";i:1305;}s:5:\"email\";a:3:{s:4:\"name\";s:5:\"email\";s:4:\"slug\";s:5:\"email\";s:5:\"count\";i:1208;}s:7:\"gallery\";a:3:{s:4:\"name\";s:7:\"gallery\";s:4:\"slug\";s:7:\"gallery\";s:5:\"count\";i:1198;}s:9:\"ecommerce\";a:3:{s:4:\"name\";s:9:\"ecommerce\";s:4:\"slug\";s:9:\"ecommerce\";s:5:\"count\";i:1136;}s:4:\"page\";a:3:{s:4:\"name\";s:4:\"page\";s:4:\"slug\";s:4:\"page\";s:5:\"count\";i:1128;}s:6:\"social\";a:3:{s:4:\"name\";s:6:\"social\";s:4:\"slug\";s:6:\"social\";s:5:\"count\";i:1100;}s:5:\"login\";a:3:{s:4:\"name\";s:5:\"login\";s:4:\"slug\";s:5:\"login\";s:5:\"count\";i:1002;}s:5:\"video\";a:3:{s:4:\"name\";s:5:\"video\";s:4:\"slug\";s:5:\"video\";s:5:\"count\";i:885;}s:8:\"security\";a:3:{s:4:\"name\";s:8:\"security\";s:4:\"slug\";s:8:\"security\";s:5:\"count\";i:880;}s:7:\"widgets\";a:3:{s:4:\"name\";s:7:\"widgets\";s:4:\"slug\";s:7:\"widgets\";s:5:\"count\";i:877;}s:5:\"links\";a:3:{s:4:\"name\";s:5:\"links\";s:4:\"slug\";s:5:\"links\";s:5:\"count\";i:876;}s:4:\"spam\";a:3:{s:4:\"name\";s:4:\"spam\";s:4:\"slug\";s:4:\"spam\";s:5:\"count\";i:789;}s:10:\"e-commerce\";a:3:{s:4:\"name\";s:10:\"e-commerce\";s:4:\"slug\";s:10:\"e-commerce\";s:5:\"count\";i:785;}s:6:\"slider\";a:3:{s:4:\"name\";s:6:\"slider\";s:4:\"slug\";s:6:\"slider\";s:5:\"count\";i:779;}s:7:\"content\";a:3:{s:4:\"name\";s:7:\"content\";s:4:\"slug\";s:7:\"content\";s:5:\"count\";i:776;}s:9:\"analytics\";a:3:{s:4:\"name\";s:9:\"analytics\";s:4:\"slug\";s:9:\"analytics\";s:5:\"count\";i:770;}s:10:\"buddypress\";a:3:{s:4:\"name\";s:10:\"buddypress\";s:4:\"slug\";s:10:\"buddypress\";s:5:\"count\";i:751;}s:4:\"form\";a:3:{s:4:\"name\";s:4:\"form\";s:4:\"slug\";s:4:\"form\";s:5:\"count\";i:733;}s:5:\"media\";a:3:{s:4:\"name\";s:5:\"media\";s:4:\"slug\";s:5:\"media\";s:5:\"count\";i:719;}s:3:\"rss\";a:3:{s:4:\"name\";s:3:\"rss\";s:4:\"slug\";s:3:\"rss\";s:5:\"count\";i:718;}s:5:\"pages\";a:3:{s:4:\"name\";s:5:\"pages\";s:4:\"slug\";s:5:\"pages\";s:5:\"count\";i:699;}s:6:\"search\";a:3:{s:4:\"name\";s:6:\"search\";s:4:\"slug\";s:6:\"search\";s:5:\"count\";i:692;}s:6:\"editor\";a:3:{s:4:\"name\";s:6:\"editor\";s:4:\"slug\";s:6:\"editor\";s:5:\"count\";i:662;}s:6:\"jquery\";a:3:{s:4:\"name\";s:6:\"jquery\";s:4:\"slug\";s:6:\"jquery\";s:5:\"count\";i:661;}s:4:\"menu\";a:3:{s:4:\"name\";s:4:\"menu\";s:4:\"slug\";s:4:\"menu\";s:5:\"count\";i:658;}s:4:\"feed\";a:3:{s:4:\"name\";s:4:\"feed\";s:4:\"slug\";s:4:\"feed\";s:5:\"count\";i:656;}s:8:\"category\";a:3:{s:4:\"name\";s:8:\"category\";s:4:\"slug\";s:8:\"category\";s:5:\"count\";i:649;}s:4:\"ajax\";a:3:{s:4:\"name\";s:4:\"ajax\";s:4:\"slug\";s:4:\"ajax\";s:5:\"count\";i:632;}s:5:\"embed\";a:3:{s:4:\"name\";s:5:\"embed\";s:4:\"slug\";s:5:\"embed\";s:5:\"count\";i:628;}s:12:\"contact-form\";a:3:{s:4:\"name\";s:12:\"contact form\";s:4:\"slug\";s:12:\"contact-form\";s:5:\"count\";i:596;}s:3:\"css\";a:3:{s:4:\"name\";s:3:\"css\";s:4:\"slug\";s:3:\"css\";s:5:\"count\";i:587;}s:7:\"payment\";a:3:{s:4:\"name\";s:7:\"payment\";s:4:\"slug\";s:7:\"payment\";s:5:\"count\";i:583;}s:10:\"javascript\";a:3:{s:4:\"name\";s:10:\"javascript\";s:4:\"slug\";s:10:\"javascript\";s:5:\"count\";i:580;}s:7:\"youtube\";a:3:{s:4:\"name\";s:7:\"youtube\";s:4:\"slug\";s:7:\"youtube\";s:5:\"count\";i:578;}s:4:\"link\";a:3:{s:4:\"name\";s:4:\"link\";s:4:\"slug\";s:4:\"link\";s:5:\"count\";i:574;}s:5:\"share\";a:3:{s:4:\"name\";s:5:\"share\";s:4:\"slug\";s:5:\"share\";s:5:\"count\";i:560;}s:9:\"affiliate\";a:3:{s:4:\"name\";s:9:\"affiliate\";s:4:\"slug\";s:9:\"affiliate\";s:5:\"count\";i:552;}s:5:\"theme\";a:3:{s:4:\"name\";s:5:\"theme\";s:4:\"slug\";s:5:\"theme\";s:5:\"count\";i:551;}s:7:\"comment\";a:3:{s:4:\"name\";s:7:\"comment\";s:4:\"slug\";s:7:\"comment\";s:5:\"count\";i:550;}s:10:\"responsive\";a:3:{s:4:\"name\";s:10:\"responsive\";s:4:\"slug\";s:10:\"responsive\";s:5:\"count\";i:542;}s:9:\"dashboard\";a:3:{s:4:\"name\";s:9:\"dashboard\";s:4:\"slug\";s:9:\"dashboard\";s:5:\"count\";i:538;}s:6:\"custom\";a:3:{s:4:\"name\";s:6:\"custom\";s:4:\"slug\";s:6:\"custom\";s:5:\"count\";i:531;}s:3:\"ads\";a:3:{s:4:\"name\";s:3:\"ads\";s:4:\"slug\";s:3:\"ads\";s:5:\"count\";i:524;}s:10:\"categories\";a:3:{s:4:\"name\";s:10:\"categories\";s:4:\"slug\";s:10:\"categories\";s:5:\"count\";i:517;}s:9:\"gutenberg\";a:3:{s:4:\"name\";s:9:\"gutenberg\";s:4:\"slug\";s:9:\"gutenberg\";s:5:\"count\";i:517;}s:15:\"payment-gateway\";a:3:{s:4:\"name\";s:15:\"payment gateway\";s:4:\"slug\";s:15:\"payment-gateway\";s:5:\"count\";i:515;}s:3:\"api\";a:3:{s:4:\"name\";s:3:\"api\";s:4:\"slug\";s:3:\"api\";s:5:\"count\";i:510;}s:7:\"contact\";a:3:{s:4:\"name\";s:7:\"contact\";s:4:\"slug\";s:7:\"contact\";s:5:\"count\";i:507;}s:4:\"user\";a:3:{s:4:\"name\";s:4:\"user\";s:4:\"slug\";s:4:\"user\";s:5:\"count\";i:503;}s:4:\"tags\";a:3:{s:4:\"name\";s:4:\"tags\";s:4:\"slug\";s:4:\"tags\";s:5:\"count\";i:494;}s:6:\"button\";a:3:{s:4:\"name\";s:6:\"button\";s:4:\"slug\";s:6:\"button\";s:5:\"count\";i:491;}s:6:\"mobile\";a:3:{s:4:\"name\";s:6:\"mobile\";s:4:\"slug\";s:6:\"mobile\";s:5:\"count\";i:478;}s:5:\"users\";a:3:{s:4:\"name\";s:5:\"users\";s:4:\"slug\";s:5:\"users\";s:5:\"count\";i:478;}s:6:\"events\";a:3:{s:4:\"name\";s:6:\"events\";s:4:\"slug\";s:6:\"events\";s:5:\"count\";i:470;}s:9:\"marketing\";a:3:{s:4:\"name\";s:9:\"marketing\";s:4:\"slug\";s:9:\"marketing\";s:5:\"count\";i:449;}s:4:\"chat\";a:3:{s:4:\"name\";s:4:\"chat\";s:4:\"slug\";s:4:\"chat\";s:5:\"count\";i:443;}s:5:\"photo\";a:3:{s:4:\"name\";s:5:\"photo\";s:4:\"slug\";s:5:\"photo\";s:5:\"count\";i:438;}s:10:\"navigation\";a:3:{s:4:\"name\";s:10:\"navigation\";s:4:\"slug\";s:10:\"navigation\";s:5:\"count\";i:433;}s:8:\"calendar\";a:3:{s:4:\"name\";s:8:\"calendar\";s:4:\"slug\";s:8:\"calendar\";s:5:\"count\";i:432;}s:5:\"popup\";a:3:{s:4:\"name\";s:5:\"popup\";s:4:\"slug\";s:5:\"popup\";s:5:\"count\";i:431;}s:9:\"slideshow\";a:3:{s:4:\"name\";s:9:\"slideshow\";s:4:\"slug\";s:9:\"slideshow\";s:5:\"count\";i:430;}s:5:\"stats\";a:3:{s:4:\"name\";s:5:\"stats\";s:4:\"slug\";s:5:\"stats\";s:5:\"count\";i:423;}s:6:\"photos\";a:3:{s:4:\"name\";s:6:\"photos\";s:4:\"slug\";s:6:\"photos\";s:5:\"count\";i:421;}s:5:\"forms\";a:3:{s:4:\"name\";s:5:\"forms\";s:4:\"slug\";s:5:\"forms\";s:5:\"count\";i:413;}s:10:\"statistics\";a:3:{s:4:\"name\";s:10:\"statistics\";s:4:\"slug\";s:10:\"statistics\";s:5:\"count\";i:410;}s:10:\"newsletter\";a:3:{s:4:\"name\";s:10:\"newsletter\";s:4:\"slug\";s:10:\"newsletter\";s:5:\"count\";i:410;}s:14:\"contact-form-7\";a:3:{s:4:\"name\";s:14:\"contact form 7\";s:4:\"slug\";s:14:\"contact-form-7\";s:5:\"count\";i:403;}s:4:\"news\";a:3:{s:4:\"name\";s:4:\"news\";s:4:\"slug\";s:4:\"news\";s:5:\"count\";i:399;}s:10:\"shortcodes\";a:3:{s:4:\"name\";s:10:\"shortcodes\";s:4:\"slug\";s:10:\"shortcodes\";s:5:\"count\";i:398;}s:12:\"social-media\";a:3:{s:4:\"name\";s:12:\"social media\";s:4:\"slug\";s:12:\"social-media\";s:5:\"count\";i:394;}s:8:\"redirect\";a:3:{s:4:\"name\";s:8:\"redirect\";s:4:\"slug\";s:8:\"redirect\";s:5:\"count\";i:388;}s:4:\"code\";a:3:{s:4:\"name\";s:4:\"code\";s:4:\"slug\";s:4:\"code\";s:5:\"count\";i:380;}s:11:\"performance\";a:3:{s:4:\"name\";s:11:\"performance\";s:4:\"slug\";s:11:\"performance\";s:5:\"count\";i:379;}s:9:\"multisite\";a:3:{s:4:\"name\";s:9:\"multisite\";s:4:\"slug\";s:9:\"multisite\";s:5:\"count\";i:377;}s:7:\"plugins\";a:3:{s:4:\"name\";s:7:\"plugins\";s:4:\"slug\";s:7:\"plugins\";s:5:\"count\";i:376;}s:9:\"elementor\";a:3:{s:4:\"name\";s:9:\"elementor\";s:4:\"slug\";s:9:\"elementor\";s:5:\"count\";i:375;}s:3:\"url\";a:3:{s:4:\"name\";s:3:\"url\";s:4:\"slug\";s:3:\"url\";s:5:\"count\";i:373;}s:12:\"notification\";a:3:{s:4:\"name\";s:12:\"notification\";s:4:\"slug\";s:12:\"notification\";s:5:\"count\";i:369;}s:5:\"block\";a:3:{s:4:\"name\";s:5:\"block\";s:4:\"slug\";s:5:\"block\";s:5:\"count\";i:365;}s:4:\"meta\";a:3:{s:4:\"name\";s:4:\"meta\";s:4:\"slug\";s:4:\"meta\";s:5:\"count\";i:363;}s:8:\"shipping\";a:3:{s:4:\"name\";s:8:\"shipping\";s:4:\"slug\";s:8:\"shipping\";s:5:\"count\";i:360;}s:4:\"list\";a:3:{s:4:\"name\";s:4:\"list\";s:4:\"slug\";s:4:\"list\";s:5:\"count\";i:359;}s:8:\"tracking\";a:3:{s:4:\"name\";s:8:\"tracking\";s:4:\"slug\";s:8:\"tracking\";s:5:\"count\";i:351;}s:16:\"google-analytics\";a:3:{s:4:\"name\";s:16:\"google analytics\";s:4:\"slug\";s:16:\"google-analytics\";s:5:\"count\";i:348;}s:16:\"custom-post-type\";a:3:{s:4:\"name\";s:16:\"custom post type\";s:4:\"slug\";s:16:\"custom-post-type\";s:5:\"count\";i:342;}s:5:\"cache\";a:3:{s:4:\"name\";s:5:\"cache\";s:4:\"slug\";s:5:\"cache\";s:5:\"count\";i:339;}s:6:\"import\";a:3:{s:4:\"name\";s:6:\"import\";s:4:\"slug\";s:6:\"import\";s:5:\"count\";i:338;}}', 'no'),
(945, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1594874190;s:7:\"checked\";a:10:{s:19:\"akismet/akismet.php\";s:5:\"4.1.5\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:3:\"5.2\";s:9:\"hello.php\";s:5:\"1.7.2\";s:43:\"mesmerize-companion/mesmerize-companion.php\";s:7:\"1.6.111\";s:25:\"profile-builder/index.php\";s:5:\"3.1.9\";s:20:\"quiz-cat/quizcat.php\";s:5:\"1.8.0\";s:25:\"quiz-maker/quiz-maker.php\";s:5:\"5.1.5\";s:63:\"ultimate-addons-for-gutenberg/ultimate-addons-for-gutenberg.php\";s:6:\"1.16.0\";s:47:\"wp-security-audit-log/wp-security-audit-log.php\";s:5:\"4.1.2\";s:29:\"wp-mail-smtp/wp_mail_smtp.php\";s:5:\"2.2.1\";}s:8:\"response\";a:1:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.6\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.4.2\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:9:{s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:3:\"5.2\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/contact-form-7.5.2.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:67:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=2279696\";s:2:\"1x\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";s:3:\"svg\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}s:43:\"mesmerize-companion/mesmerize-companion.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:33:\"w.org/plugins/mesmerize-companion\";s:4:\"slug\";s:19:\"mesmerize-companion\";s:6:\"plugin\";s:43:\"mesmerize-companion/mesmerize-companion.php\";s:11:\"new_version\";s:7:\"1.6.111\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/mesmerize-companion/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/plugin/mesmerize-companion.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://s.w.org/plugins/geopattern-icon/mesmerize-companion.svg\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}}s:25:\"profile-builder/index.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:29:\"w.org/plugins/profile-builder\";s:4:\"slug\";s:15:\"profile-builder\";s:6:\"plugin\";s:25:\"profile-builder/index.php\";s:11:\"new_version\";s:5:\"3.1.9\";s:3:\"url\";s:46:\"https://wordpress.org/plugins/profile-builder/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/profile-builder.3.1.9.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/profile-builder/assets/icon-256x256.png?rev=2257592\";s:2:\"1x\";s:68:\"https://ps.w.org/profile-builder/assets/icon-128x128.png?rev=2257592\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/profile-builder/assets/banner-1544x500.png?rev=2257594\";s:2:\"1x\";s:70:\"https://ps.w.org/profile-builder/assets/banner-772x250.png?rev=2257592\";}s:11:\"banners_rtl\";a:0:{}}s:20:\"quiz-cat/quizcat.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:22:\"w.org/plugins/quiz-cat\";s:4:\"slug\";s:8:\"quiz-cat\";s:6:\"plugin\";s:20:\"quiz-cat/quizcat.php\";s:11:\"new_version\";s:5:\"1.8.0\";s:3:\"url\";s:39:\"https://wordpress.org/plugins/quiz-cat/\";s:7:\"package\";s:51:\"https://downloads.wordpress.org/plugin/quiz-cat.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:61:\"https://ps.w.org/quiz-cat/assets/icon-256x256.png?rev=1402684\";s:2:\"1x\";s:61:\"https://ps.w.org/quiz-cat/assets/icon-128x128.png?rev=1402684\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/quiz-cat/assets/banner-1544x500.png?rev=1402675\";s:2:\"1x\";s:63:\"https://ps.w.org/quiz-cat/assets/banner-772x250.png?rev=1402684\";}s:11:\"banners_rtl\";a:0:{}}s:25:\"quiz-maker/quiz-maker.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:24:\"w.org/plugins/quiz-maker\";s:4:\"slug\";s:10:\"quiz-maker\";s:6:\"plugin\";s:25:\"quiz-maker/quiz-maker.php\";s:11:\"new_version\";s:5:\"5.1.5\";s:3:\"url\";s:41:\"https://wordpress.org/plugins/quiz-maker/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/plugin/quiz-maker.5.1.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/quiz-maker/assets/icon-256x256.png?rev=2174282\";s:2:\"1x\";s:63:\"https://ps.w.org/quiz-maker/assets/icon-128x128.png?rev=2174282\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/quiz-maker/assets/banner-1544x500.jpg?rev=1953320\";s:2:\"1x\";s:65:\"https://ps.w.org/quiz-maker/assets/banner-772x250.jpg?rev=1953318\";}s:11:\"banners_rtl\";a:0:{}}s:63:\"ultimate-addons-for-gutenberg/ultimate-addons-for-gutenberg.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:43:\"w.org/plugins/ultimate-addons-for-gutenberg\";s:4:\"slug\";s:29:\"ultimate-addons-for-gutenberg\";s:6:\"plugin\";s:63:\"ultimate-addons-for-gutenberg/ultimate-addons-for-gutenberg.php\";s:11:\"new_version\";s:6:\"1.16.0\";s:3:\"url\";s:60:\"https://wordpress.org/plugins/ultimate-addons-for-gutenberg/\";s:7:\"package\";s:79:\"https://downloads.wordpress.org/plugin/ultimate-addons-for-gutenberg.1.16.0.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:74:\"https://ps.w.org/ultimate-addons-for-gutenberg/assets/icon.svg?rev=2211409\";s:3:\"svg\";s:74:\"https://ps.w.org/ultimate-addons-for-gutenberg/assets/icon.svg?rev=2211409\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:85:\"https://ps.w.org/ultimate-addons-for-gutenberg/assets/banner-1544x500.jpg?rev=1994798\";s:2:\"1x\";s:84:\"https://ps.w.org/ultimate-addons-for-gutenberg/assets/banner-772x250.jpg?rev=1994798\";}s:11:\"banners_rtl\";a:0:{}}s:47:\"wp-security-audit-log/wp-security-audit-log.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:35:\"w.org/plugins/wp-security-audit-log\";s:4:\"slug\";s:21:\"wp-security-audit-log\";s:6:\"plugin\";s:47:\"wp-security-audit-log/wp-security-audit-log.php\";s:11:\"new_version\";s:5:\"4.1.2\";s:3:\"url\";s:52:\"https://wordpress.org/plugins/wp-security-audit-log/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/plugin/wp-security-audit-log.4.1.2.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:74:\"https://ps.w.org/wp-security-audit-log/assets/icon-128x128.png?rev=1805537\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:76:\"https://ps.w.org/wp-security-audit-log/assets/banner-772x250.jpg?rev=2327238\";}s:11:\"banners_rtl\";a:0:{}}s:29:\"wp-mail-smtp/wp_mail_smtp.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:26:\"w.org/plugins/wp-mail-smtp\";s:4:\"slug\";s:12:\"wp-mail-smtp\";s:6:\"plugin\";s:29:\"wp-mail-smtp/wp_mail_smtp.php\";s:11:\"new_version\";s:5:\"2.2.1\";s:3:\"url\";s:43:\"https://wordpress.org/plugins/wp-mail-smtp/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/wp-mail-smtp.2.2.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/wp-mail-smtp/assets/icon-256x256.png?rev=1755440\";s:2:\"1x\";s:65:\"https://ps.w.org/wp-mail-smtp/assets/icon-128x128.png?rev=1755440\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/wp-mail-smtp/assets/banner-1544x500.png?rev=2120094\";s:2:\"1x\";s:67:\"https://ps.w.org/wp-mail-smtp/assets/banner-772x250.png?rev=2120094\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(946, 'ays_quiz_rate_state', '0', 'yes'),
(947, 'ays_quiz_db_version', '3.8.1', 'yes'),
(996, '__mesmerize_cached_values__', 'a:2:{s:22:\"mesmerize_google_fonts\";s:250:\"https://fonts.googleapis.com/css?family=Open+Sans%3A300%2C400%2C600%2C700%7CMuli%3A300%2C300italic%2C400%2C400italic%2C600%2C600italic%2C700%2C700italic%2C900%2C900italic%7CPlayfair+Display%3A400%2C400italic%2C700%2C700italic&subset=latin%2Clatin-ext\";s:38:\"mesmerize_cached_kirki_style_mesmerize\";s:1148:\"@media screen and (min-width: 768px){.header{background-position:center center;}}.header-homepage:not(.header-slide).color-overlay:before{background:#000000;}.header-homepage:not(.header-slide) .background-overlay,.header-homepage:not(.header-slide).color-overlay::before{opacity:0.7;}.header-homepage-arrow{font-size:calc( 75px * 0.84 );bottom:26px;background:rgba(255,255,255,0);}.header-homepage-arrow > i.fa{width:75px;height:75px;}.header-homepage-arrow > i{color:#ffffff;}.header-homepage .header-description-row{padding-top:15%;padding-bottom:20%;}.inner-header-description{padding-top:8%;padding-bottom:8%;}.mesmerize-front-page .navigation-bar.bordered{border-bottom-color:rgb(161,158,158);border-bottom-width:1px;border-bottom-style:solid;}.mesmerize-inner-page .navigation-bar.bordered{border-bottom-color:rgb(255,255,255);border-bottom-width:1px;border-bottom-style:solid;}@media screen and (max-width:767px){.header-homepage .header-description-row{padding-top:15%;padding-bottom:15%;}}@media only screen and (min-width: 768px){.header-content .align-holder{width:80%!important;}.inner-header-description{text-align:center!important;}}\";}', 'yes'),
(1012, 'action_scheduler_migration_status', 'complete', 'yes'),
(1019, '_transient_timeout_wsal-404-attempts', '1594964580', 'no'),
(1020, '_transient_wsal-404-attempts', 'a:1:{s:11:\"1:abiha:::1\";i:3;}', 'no'),
(1045, '_transient_timeout_dash_v2_88ae138922fe95674369b1cb3d215a2b', '1594922899', 'no'),
(1046, '_transient_dash_v2_88ae138922fe95674369b1cb3d215a2b', '<div class=\"rss-widget\"><p><strong>RSS Error:</strong> WP HTTP Error: A valid URL was not provided.</p></div><div class=\"rss-widget\"><p><strong>RSS Error:</strong> WP HTTP Error: A valid URL was not provided.</p></div>', 'no'),
(1104, '_site_transient_timeout_community-events-d41d8cd98f00b204e9800998ecf8427e', '1594934345', 'no'),
(1105, '_site_transient_community-events-d41d8cd98f00b204e9800998ecf8427e', 'a:3:{s:9:\"sandboxed\";b:0;s:8:\"location\";a:1:{s:2:\"ip\";b:0;}s:6:\"events\";a:0:{}}', 'no'),
(1231, '_site_transient_theme_roots', 'a:5:{s:9:\"highlight\";s:7:\"/themes\";s:9:\"mesmerize\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";}', 'no'),
(1232, '_site_transient_timeout_theme_roots', '1594892944', 'no'),
(1236, 'secret_key', ' jTsDMXNb<Ur&54>5U.pmZQ4ZcsLtoMQU{Kz#oD3@ZdE~jRB1IqDhMZYT)ddKD>W', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_edit_lock', '1594667500:1'),
(4, 6, '_wp_attached_file', '2020/07/quizbg.png'),
(5, 6, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:472;s:6:\"height\";i:260;s:4:\"file\";s:18:\"2020/07/quizbg.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"quizbg-300x165.png\";s:5:\"width\";i:300;s:6:\"height\";i:165;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"quizbg-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(6, 6, '_wp_attachment_image_alt', 'banner'),
(7, 7, '_wp_attached_file', '2020/07/bg2.png'),
(8, 7, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:472;s:6:\"height\";i:260;s:4:\"file\";s:15:\"2020/07/bg2.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"bg2-300x165.png\";s:5:\"width\";i:300;s:6:\"height\";i:165;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"bg2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(9, 7, '_wp_attachment_image_alt', ''),
(10, 5, '_wp_trash_meta_status', 'publish'),
(11, 5, '_wp_trash_meta_time', '1594667538'),
(12, 8, '_edit_lock', '1594667625:1'),
(13, 8, '_wp_trash_meta_status', 'publish'),
(14, 8, '_wp_trash_meta_time', '1594667633'),
(15, 2, '_wp_trash_meta_status', 'publish'),
(16, 2, '_wp_trash_meta_time', '1594667683'),
(17, 2, '_wp_desired_post_slug', 'sample-page'),
(18, 12, '_edit_lock', '1594709911:1'),
(19, 13, '_wp_attached_file', '2020/07/loginbg.png'),
(20, 13, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:300;s:4:\"file\";s:19:\"2020/07/loginbg.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"loginbg-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(21, 13, '_wp_attachment_image_alt', 'loginbg'),
(22, 14, '_edit_lock', '1594669701:1'),
(23, 14, '_wp_trash_meta_status', 'publish'),
(24, 14, '_wp_trash_meta_time', '1594669723'),
(25, 15, '_wp_trash_meta_status', 'publish'),
(26, 15, '_wp_trash_meta_time', '1594669864'),
(27, 16, '_edit_lock', '1594670062:1'),
(28, 16, '_wp_trash_meta_status', 'publish'),
(29, 16, '_wp_trash_meta_time', '1594670076'),
(30, 17, '_edit_lock', '1594890748:1'),
(31, 19, '_edit_lock', '1594670354:1'),
(33, 20, '_customize_changeset_uuid', '425fcc7d-61a0-4dad-823a-f03aff347d90'),
(34, 21, '_menu_item_type', 'post_type'),
(35, 21, '_menu_item_menu_item_parent', '0'),
(36, 21, '_menu_item_object_id', '17'),
(37, 21, '_menu_item_object', 'page'),
(38, 21, '_menu_item_target', ''),
(39, 21, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(40, 21, '_menu_item_xfn', ''),
(41, 21, '_menu_item_url', ''),
(50, 24, '_menu_item_type', 'post_type'),
(51, 24, '_menu_item_menu_item_parent', '0'),
(52, 24, '_menu_item_object_id', '20'),
(53, 24, '_menu_item_object', 'page'),
(54, 24, '_menu_item_target', ''),
(55, 24, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(56, 24, '_menu_item_xfn', ''),
(57, 24, '_menu_item_url', ''),
(58, 19, '_wp_trash_meta_status', 'publish'),
(59, 19, '_wp_trash_meta_time', '1594670358'),
(60, 25, '_wp_attached_file', '2020/07/cropped-loginbg-1.png'),
(61, 25, '_wp_attachment_context', 'custom-header'),
(62, 25, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:300;s:6:\"height\";i:125;s:4:\"file\";s:29:\"2020/07/cropped-loginbg-1.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"cropped-loginbg-1-150x125.png\";s:5:\"width\";i:150;s:6:\"height\";i:125;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:17:\"attachment_parent\";i:13;}'),
(63, 25, '_wp_attachment_custom_header_last_used_highlight', '1594670533'),
(64, 25, '_wp_attachment_is_custom_header', 'highlight'),
(65, 26, '_edit_lock', '1594670771:1'),
(66, 27, '_wp_attached_file', '2020/07/bglogin.png'),
(67, 27, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:300;s:4:\"file\";s:19:\"2020/07/bglogin.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"bglogin-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(68, 28, '_wp_attached_file', '2020/07/cropped-bglogin-1.png'),
(69, 28, '_wp_attachment_context', 'custom-header'),
(70, 28, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:300;s:6:\"height\";i:90;s:4:\"file\";s:29:\"2020/07/cropped-bglogin-1.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"cropped-bglogin-1-150x90.png\";s:5:\"width\";i:150;s:6:\"height\";i:90;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:17:\"attachment_parent\";i:27;}'),
(71, 28, '_wp_attachment_custom_header_last_used_highlight', '1594670702'),
(72, 28, '_wp_attachment_is_custom_header', 'highlight'),
(73, 27, '_wp_attachment_image_alt', 'bg'),
(74, 29, '_wp_attached_file', '2020/07/loginbg-1.png'),
(75, 29, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:300;s:4:\"file\";s:21:\"2020/07/loginbg-1.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"loginbg-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(76, 29, '_wp_attachment_image_alt', 'bg'),
(77, 30, '_wp_attached_file', '2020/07/cropped-loginbg-1-1.png'),
(78, 30, '_wp_attachment_context', 'custom-header'),
(79, 30, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:300;s:6:\"height\";i:163;s:4:\"file\";s:31:\"2020/07/cropped-loginbg-1-1.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"cropped-loginbg-1-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:17:\"attachment_parent\";i:29;}'),
(80, 26, '_customize_restore_dismissed', '1'),
(81, 30, '_wp_attachment_custom_header_last_used_highlight', '1594671907'),
(82, 30, '_wp_attachment_is_custom_header', 'highlight'),
(83, 31, '_edit_lock', '1594670904:1'),
(84, 31, '_wp_trash_meta_status', 'publish'),
(85, 31, '_wp_trash_meta_time', '1594670916'),
(86, 32, '_wp_attached_file', '2020/07/rgstrbg.png'),
(87, 32, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:300;s:4:\"file\";s:19:\"2020/07/rgstrbg.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"rgstrbg-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(88, 32, '_wp_attachment_image_alt', 'bg'),
(89, 33, '_wp_attached_file', '2020/07/cropped-rgstrbg.png'),
(90, 33, '_wp_attachment_context', 'custom-header'),
(91, 33, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:300;s:6:\"height\";i:156;s:4:\"file\";s:27:\"2020/07/cropped-rgstrbg.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"cropped-rgstrbg-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:17:\"attachment_parent\";i:32;}'),
(92, 33, '_wp_attachment_custom_header_last_used_highlight', '1594671461'),
(93, 33, '_wp_attachment_is_custom_header', 'highlight'),
(94, 34, '_wp_attached_file', '2020/07/rgstrbg-1.png'),
(95, 34, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:300;s:4:\"file\";s:21:\"2020/07/rgstrbg-1.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"rgstrbg-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(96, 34, '_wp_attachment_image_alt', 'bg'),
(97, 35, '_edit_lock', '1594671529:1'),
(98, 36, '_wp_attached_file', '2020/07/cropped-rgstrbg-1-1.png'),
(99, 36, '_wp_attachment_context', 'custom-header'),
(100, 36, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:300;s:6:\"height\";i:125;s:4:\"file\";s:31:\"2020/07/cropped-rgstrbg-1-1.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"cropped-rgstrbg-1-1-150x125.png\";s:5:\"width\";i:150;s:6:\"height\";i:125;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:17:\"attachment_parent\";i:34;}'),
(101, 36, '_wp_attachment_custom_header_last_used_highlight', '1594671636'),
(102, 36, '_wp_attachment_is_custom_header', 'highlight'),
(103, 35, '_wp_trash_meta_status', 'publish'),
(104, 35, '_wp_trash_meta_time', '1594671562'),
(105, 37, '_wp_trash_meta_status', 'publish'),
(106, 37, '_wp_trash_meta_time', '1594671590'),
(107, 38, '_wp_trash_meta_status', 'publish'),
(108, 38, '_wp_trash_meta_time', '1594671636'),
(109, 39, '_edit_lock', '1594671712:1'),
(110, 39, '_wp_trash_meta_status', 'publish'),
(111, 39, '_wp_trash_meta_time', '1594671714'),
(112, 40, '_wp_trash_meta_status', 'publish'),
(113, 40, '_wp_trash_meta_time', '1594671907'),
(114, 41, '_wp_trash_meta_status', 'publish'),
(115, 41, '_wp_trash_meta_time', '1594672013'),
(116, 42, '_wp_trash_meta_status', 'publish'),
(117, 42, '_wp_trash_meta_time', '1594672037'),
(118, 43, '_wp_attached_file', '2020/07/bg.jpg'),
(119, 43, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:626;s:6:\"height\";i:442;s:4:\"file\";s:14:\"2020/07/bg.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"bg-300x212.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:212;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"bg-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(120, 43, '_wp_attachment_image_alt', 'bg'),
(121, 44, '_wp_attached_file', '2020/07/cropped-bg.jpg'),
(122, 44, '_wp_attachment_context', 'custom-header'),
(123, 44, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:626;s:6:\"height\";i:341;s:4:\"file\";s:22:\"2020/07/cropped-bg.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"cropped-bg-300x163.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:163;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"cropped-bg-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:17:\"attachment_parent\";i:43;}'),
(124, 44, '_wp_attachment_custom_header_last_used_highlight', '1594672332'),
(125, 44, '_wp_attachment_is_custom_header', 'highlight'),
(126, 45, '_wp_trash_meta_status', 'publish'),
(127, 45, '_wp_trash_meta_time', '1594672332'),
(128, 10, '_edit_lock', '1594674729:1'),
(129, 52, '_edit_lock', '1594673977:1'),
(130, 54, '_edit_lock', '1594886450:1'),
(131, 57, '_edit_lock', '1594674651:1'),
(132, 57, '_wp_trash_meta_status', 'publish'),
(133, 57, '_wp_trash_meta_time', '1594674662'),
(134, 52, '_wp_trash_meta_status', 'publish'),
(135, 52, '_wp_trash_meta_time', '1594710010'),
(136, 52, '_wp_desired_post_slug', 'quiz'),
(137, 60, '_wp_trash_meta_status', 'publish'),
(138, 60, '_wp_trash_meta_time', '1594710128'),
(139, 61, '_wp_trash_meta_status', 'publish'),
(140, 61, '_wp_trash_meta_time', '1594710140'),
(141, 62, '_wp_trash_meta_status', 'publish'),
(142, 62, '_wp_trash_meta_time', '1594710373'),
(144, 63, '_customize_changeset_uuid', 'a241a9a4-3826-43ef-9761-65e9ef1dbe44'),
(145, 64, '_edit_lock', '1594710556:1'),
(154, 64, '_wp_trash_meta_status', 'publish'),
(155, 64, '_wp_trash_meta_time', '1594710584'),
(156, 67, '_edit_lock', '1594710736:1'),
(165, 67, '_wp_trash_meta_status', 'publish'),
(166, 67, '_wp_trash_meta_time', '1594710760'),
(167, 69, '_edit_lock', '1594711605:1'),
(168, 69, '_wp_trash_meta_status', 'publish'),
(169, 69, '_wp_trash_meta_time', '1594711618'),
(170, 70, '_edit_lock', '1594712338:1'),
(171, 70, '_wp_trash_meta_status', 'publish'),
(172, 70, '_wp_trash_meta_time', '1594712344'),
(173, 72, '_edit_lock', '1594713798:1'),
(174, 72, '_wp_trash_meta_status', 'publish'),
(175, 72, '_wp_trash_meta_time', '1594713805'),
(176, 75, '_wp_page_template', 'page-templates/homepage.php'),
(177, 75, 'is_mesmerize_front_page', '1'),
(178, 77, '_edit_lock', '1594714360:1'),
(179, 77, '_wp_trash_meta_status', 'publish'),
(180, 77, '_wp_trash_meta_time', '1594714412'),
(181, 54, '_edit_last', '1'),
(182, 80, '_form', '[text* Name class:name placeholder \"Enter your name\"]\n\n[email* E-mail class:email placeholder \"Enter your email adderss\"]\n\n[tel* PhoneNumber class:phone placeholder \"Enter your phone number\"]\n\n[text* Message class:message placeholder \"Enter your message\"]\n\n[submit \"Submit\"]'),
(183, 80, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:24:\"wp quiz \"[Contact form]\"\";s:6:\"sender\";s:33:\"wp quiz <abiha.amir456@gmail.com>\";s:9:\"recipient\";s:23:\"abiha.amir456@gmail.com\";s:4:\"body\";s:256:\"<h2>Contact form received from your website</h2>\n\nFrom : abiha.amir456@gmail.com\n\n<h3>User Details :</h3>\n\n<strong>Name</strong>: [Name]\n<strong>Email address</strong>: [E-mail]\n<strong>Contact no</strong>: [PhoneNumber]\n<strong>Message</strong>: [Message]\";s:18:\"additional_headers\";s:0:\"\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:1;s:13:\"exclude_blank\";b:0;}'),
(184, 80, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:24:\"wp quiz \"[your-subject]\"\";s:6:\"sender\";s:33:\"wp quiz <abiha.amir456@gmail.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:109:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on wp quiz (http://localhost/quiz)\";s:18:\"additional_headers\";s:33:\"Reply-To: abiha.amir456@gmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(185, 80, '_messages', 'a:22:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";s:12:\"invalid_date\";s:29:\"The date format is incorrect.\";s:14:\"date_too_early\";s:44:\"The date is before the earliest one allowed.\";s:13:\"date_too_late\";s:41:\"The date is after the latest one allowed.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:20:\"The file is too big.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:14:\"invalid_number\";s:29:\"The number format is invalid.\";s:16:\"number_too_small\";s:47:\"The number is smaller than the minimum allowed.\";s:16:\"number_too_large\";s:46:\"The number is larger than the maximum allowed.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:13:\"invalid_email\";s:38:\"The e-mail address entered is invalid.\";s:11:\"invalid_url\";s:19:\"The URL is invalid.\";s:11:\"invalid_tel\";s:32:\"The telephone number is invalid.\";}'),
(186, 80, '_additional_settings', ''),
(187, 80, '_locale', 'en_US'),
(189, 20, '_edit_lock', '1594717567:1'),
(190, 83, '_wp_attached_file', '2020/07/quiz.png'),
(191, 83, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:260;s:6:\"height\";i:260;s:4:\"file\";s:16:\"2020/07/quiz.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"quiz-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(192, 83, '_wp_attachment_image_alt', 'bg'),
(193, 84, '_wp_attached_file', '2020/07/rslt.png'),
(194, 84, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1300;s:6:\"height\";i:1390;s:4:\"file\";s:16:\"2020/07/rslt.png\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"rslt-281x300.png\";s:5:\"width\";i:281;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:17:\"rslt-958x1024.png\";s:5:\"width\";i:958;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"rslt-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"rslt-768x821.png\";s:5:\"width\";i:768;s:6:\"height\";i:821;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:18:\"rslt-1024x1095.png\";s:5:\"width\";i:1024;s:6:\"height\";i:1095;s:9:\"mime-type\";s:9:\"image/png\";}s:17:\"mesmerize-full-hd\";a:4:{s:4:\"file\";s:18:\"rslt-1010x1080.png\";s:5:\"width\";i:1010;s:6:\"height\";i:1080;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(195, 84, '_wp_attachment_image_alt', 'img'),
(196, 82, '_edit_last', '1'),
(197, 82, 'quiz_cat_meta', 'a:2:{s:4:\"desc\";s:75:\"<span class=\"wysiwyg-text-align-center\"><b>Let\'s start the quiz!</b></span>\";s:12:\"desc_img_src\";s:57:\"http://localhost/quiz/wp-content/uploads/2020/07/quiz.png\";}'),
(198, 82, 'quiz_cat_questions', 'a:20:{i:0;a:4:{s:8:\"question\";s:49:\"How can I add a sidebar to my WordPress theme?\n\n\n\";s:3:\"img\";s:0:\"\";s:2:\"id\";s:6:\"{{ID}}\";s:7:\"answers\";a:4:{i:0;a:2:{s:6:\"answer\";s:37:\"In the wordpress site widgets section\";s:2:\"id\";s:6:\"{{ID}}\";}i:1;a:2:{s:6:\"answer\";s:30:\"By installing a sidebar plugin\";s:2:\"id\";s:6:\"{{ID}}\";}i:2;a:2:{s:6:\"answer\";s:26:\"Inside the theme template \";s:2:\"id\";s:36:\"e662647d-6f43-468e-ada3-38057eb4f4b4\";}i:3;a:2:{s:6:\"answer\";s:37:\"In the wordpress site setting section\";s:2:\"id\";s:36:\"5e3e9570-8f25-4346-93ad-76df482b003d\";}}}i:1;a:4:{s:8:\"question\";s:36:\"You can change your WP themes using?\";s:3:\"img\";s:0:\"\";s:2:\"id\";s:36:\"4d653e17-b2c3-477a-b80a-80516f57c19c\";s:7:\"answers\";a:4:{i:0;a:2:{s:6:\"answer\";s:20:\"Wordpress appearence\";s:2:\"id\";s:36:\"1ea400c2-46d4-467d-bb03-074270579987\";}i:1;a:2:{s:6:\"answer\";s:26:\"Wordpress_setting.php file\";s:2:\"id\";s:36:\"9af6ea88-0c7b-4d89-816c-3d21e7079d5b\";}i:2;a:2:{s:6:\"answer\";s:18:\"wp_config.php file\";s:2:\"id\";s:36:\"c39bb303-c92b-46da-890c-05fdb70afd7c\";}i:3;a:2:{s:6:\"answer\";s:18:\"Wordpress settings\";s:2:\"id\";s:36:\"0d4e3487-ea59-480e-a4fa-a19b9a043dd8\";}}}i:2;a:4:{s:8:\"question\";s:141:\"A freshly installed plugin crashes your WordPress site with no access to the dashboard. What can you do to gain back access to the dashboard?\";s:3:\"img\";s:0:\"\";s:2:\"id\";s:36:\"b16a791b-0659-4a40-b5f7-a2a15dba38cf\";s:7:\"answers\";a:4:{i:0;a:2:{s:6:\"answer\";s:62:\"Rename the specific plugin folder found in /wp-content/plugins\";s:2:\"id\";s:36:\"b855fbb2-8e7a-4a3a-8dea-d1ce03b080f5\";}i:1;a:2:{s:6:\"answer\";s:56:\"Completely delete all the plugin folders from wp-content\";s:2:\"id\";s:36:\"458cb319-fffc-4593-b696-42d1c18b57a2\";}i:2;a:2:{s:6:\"answer\";s:55:\"Delete the current theme folder from /wp-content/themes\";s:2:\"id\";s:36:\"ed88e73b-a25c-4539-8056-26026cddd78d\";}i:3;a:2:{s:6:\"answer\";s:20:\"Re-install wordpress\";s:2:\"id\";s:36:\"89136b4b-adf0-4490-bff1-a564a4cfd626\";}}}i:3;a:4:{s:8:\"question\";s:26:\"What database does WP use?\";s:3:\"img\";s:0:\"\";s:2:\"id\";s:36:\"383713de-6d94-43d3-912d-8919362d9b51\";s:7:\"answers\";a:4:{i:0;a:2:{s:6:\"answer\";s:5:\"MySQL\";s:2:\"id\";s:36:\"9a6f4e85-6ae6-47e1-a0a1-e0b4ffb0dc2a\";}i:1;a:2:{s:6:\"answer\";s:10:\"PostgreSQL\";s:2:\"id\";s:36:\"1cdd1b10-fab4-4f47-8bf2-7d322d896fe3\";}i:2;a:2:{s:6:\"answer\";s:5:\"Notes\";s:2:\"id\";s:36:\"57ba0536-6203-4a21-81f8-2677ff0f21a9\";}i:3;a:2:{s:6:\"answer\";s:6:\"Oracle\";s:2:\"id\";s:36:\"37a9a645-3d8d-4c72-91f2-2c3f7bfbc3f0\";}}}i:4;a:4:{s:8:\"question\";s:25:\"What are WordPress hooks?\";s:3:\"img\";s:0:\"\";s:2:\"id\";s:36:\"f657fde3-674d-45d4-b304-d92ea63a04a9\";s:7:\"answers\";a:4:{i:0;a:2:{s:6:\"answer\";s:49:\"Ways to change the default behaviour of wordpress\";s:2:\"id\";s:36:\"ba25cf5a-81ef-4433-84c2-ee6b99126f14\";}i:1;a:2:{s:6:\"answer\";s:44:\"Security functions that run inside wordpress\";s:2:\"id\";s:36:\"8574143d-279f-4dba-9fbb-4068d3c3583b\";}i:2;a:2:{s:6:\"answer\";s:51:\"Groups of plugins which control wordpress behaviour\";s:2:\"id\";s:36:\"0c630e83-a3b4-436f-9e95-88231b35f2c1\";}i:3;a:2:{s:6:\"answer\";s:53:\"Settings options available to wordpress administrator\";s:2:\"id\";s:36:\"5773b749-c323-4e69-b9e3-bdbc26c76046\";}}}i:5;a:4:{s:8:\"question\";s:60:\"To access your admin area, you need to put the following URL\";s:3:\"img\";s:0:\"\";s:2:\"id\";s:36:\"63171b4b-ee2d-44fa-9397-9b787ec6cfbd\";s:7:\"answers\";a:4:{i:0;a:2:{s:6:\"answer\";s:9:\"/wp-admin\";s:2:\"id\";s:36:\"6a991670-b6c4-4596-b0a5-9e5ec118f4a8\";}i:1;a:2:{s:6:\"answer\";s:10:\"/wp-logout\";s:2:\"id\";s:36:\"db86ed6d-6177-4622-871b-ac8cf0ee5dd6\";}i:2;a:2:{s:6:\"answer\";s:13:\"/wp-wordpress\";s:2:\"id\";s:36:\"96447192-2150-4aa4-862d-68d58c2d78b7\";}i:3;a:2:{s:6:\"answer\";s:6:\"/admin\";s:2:\"id\";s:36:\"a165bcb2-8f42-4842-8dd0-21b65c997c5a\";}}}i:6;a:4:{s:8:\"question\";s:34:\"WordPress themes are found where? \";s:3:\"img\";s:0:\"\";s:2:\"id\";s:36:\"2c2873fa-8870-4fe4-ab97-d5abf12a3837\";s:7:\"answers\";a:4:{i:0;a:2:{s:6:\"answer\";s:18:\"/wp-content/themes\";s:2:\"id\";s:36:\"cae486f9-b49e-4794-8665-5cee582181d6\";}i:1;a:2:{s:6:\"answer\";s:16:\"/wp-content/main\";s:2:\"id\";s:36:\"0f3305bf-d8e2-4805-a29f-d06bf4994294\";}i:2;a:2:{s:6:\"answer\";s:19:\"/wp-content/uploads\";s:2:\"id\";s:36:\"496f34d2-61bb-42fe-8322-ea4d3460a8a9\";}i:3;a:2:{s:6:\"answer\";s:11:\"/wp-content\";s:2:\"id\";s:36:\"5683794f-d0f5-480e-96c3-beaac3c39e45\";}}}i:7;a:4:{s:8:\"question\";s:68:\"When I upload files and images to my WP site they are stored where? \";s:3:\"img\";s:0:\"\";s:2:\"id\";s:36:\"97f8d6a4-57ca-4fca-8b41-ffab3c414cff\";s:7:\"answers\";a:4:{i:0;a:2:{s:6:\"answer\";s:68:\"In the wordpress uploads folder with metadata stored on the database\";s:2:\"id\";s:36:\"8d680612-00ee-4eed-8f57-a378c8fbc271\";}i:1;a:2:{s:6:\"answer\";s:27:\"The wordpress database only\";s:2:\"id\";s:36:\"eb0b8ffc-f652-44f6-a9c4-285ec4fd1f4a\";}i:2;a:2:{s:6:\"answer\";s:24:\"On wordpress CDN storage\";s:2:\"id\";s:36:\"24e7b42a-d873-40e6-b038-6db4c060f332\";}i:3;a:2:{s:6:\"answer\";s:28:\"On my wordpress theme folder\";s:2:\"id\";s:36:\"38e39d1a-23e3-49b9-9cc2-1dedf32b46ad\";}}}i:8;a:4:{s:8:\"question\";s:43:\"What is the best way to describe WordPress?\";s:3:\"img\";s:0:\"\";s:2:\"id\";s:36:\"49659ee4-14f1-41c3-9e70-7728be8ef5b4\";s:7:\"answers\";a:4:{i:0;a:2:{s:6:\"answer\";s:27:\"Wordpress is a CMS platform\";s:2:\"id\";s:36:\"8effac5b-f04e-4197-9bf8-28816bd0d223\";}i:1;a:2:{s:6:\"answer\";s:32:\"Wordpress is a blogging platform\";s:2:\"id\";s:36:\"67805b91-afb6-46e5-8aa5-6c9117b8f17f\";}i:2;a:2:{s:6:\"answer\";s:31:\"Wordpress is a hosting platform\";s:2:\"id\";s:36:\"69b82d6f-dcc4-4cd5-b3a4-bea3131108ff\";}i:3;a:2:{s:6:\"answer\";s:35:\"Wordpress is an e-commerce platform\";s:2:\"id\";s:36:\"79c766e0-d26e-4d76-9480-24dc34630630\";}}}i:9;a:4:{s:8:\"question\";s:21:\"What is a permalink? \";s:3:\"img\";s:0:\"\";s:2:\"id\";s:36:\"ffcce893-8720-41e0-9059-80db277726a8\";s:7:\"answers\";a:4:{i:0;a:2:{s:6:\"answer\";s:39:\"Part of your wordpress url wich you set\";s:2:\"id\";s:36:\"2fe550e4-b34b-4095-b208-c548bdbfe303\";}i:1;a:2:{s:6:\"answer\";s:26:\"A popular wordpress plugin\";s:2:\"id\";s:36:\"71be8473-11a8-4278-8944-ea2fca707d32\";}i:2;a:2:{s:6:\"answer\";s:39:\"The complete url of your wordpress site\";s:2:\"id\";s:36:\"ad5ac836-7850-47ae-8e3c-b3ff5c17dfff\";}i:3;a:2:{s:6:\"answer\";s:45:\"The numeric IP address of your wordpress site\";s:2:\"id\";s:36:\"8305eea5-1009-451d-8ee8-56df37930359\";}}}i:10;a:4:{s:8:\"question\";s:51:\"Which one of the following is not a WordPress role?\";s:3:\"img\";s:0:\"\";s:2:\"id\";s:36:\"3a90029b-bb01-421f-97ab-660faed98dc7\";s:7:\"answers\";a:4:{i:0;a:2:{s:6:\"answer\";s:6:\"System\";s:2:\"id\";s:36:\"37d15253-c85c-4ff0-92a7-ae2a3e150a45\";}i:1;a:2:{s:6:\"answer\";s:9:\"Adimistor\";s:2:\"id\";s:36:\"65847d5d-5272-4431-9c67-5ce286482590\";}i:2;a:2:{s:6:\"answer\";s:6:\"Editor\";s:2:\"id\";s:36:\"7ec0e830-51a8-4812-98d5-13cebb4b6c01\";}i:3;a:2:{s:6:\"answer\";s:10:\"Subscriber\";s:2:\"id\";s:36:\"0f33c748-4d74-4c6f-899f-6ec357e48987\";}}}i:11;a:4:{s:8:\"question\";s:49:\"What programing language is WordPress written in?\";s:3:\"img\";s:0:\"\";s:2:\"id\";s:36:\"d504612e-6a0f-4e1c-b1c8-254ae2cd8ca7\";s:7:\"answers\";a:4:{i:0;a:2:{s:6:\"answer\";s:3:\"PHP\";s:2:\"id\";s:36:\"f2ead094-023d-45b2-9c5a-8328ed47276c\";}i:1;a:2:{s:6:\"answer\";s:6:\"Python\";s:2:\"id\";s:36:\"6b0a3271-14de-4f17-bf25-cbd976608ef5\";}i:2;a:2:{s:6:\"answer\";s:1:\"C\";s:2:\"id\";s:36:\"b500bf5a-befa-4472-86cb-e6ebb090f4c1\";}i:3;a:2:{s:6:\"answer\";s:4:\"Perl\";s:2:\"id\";s:36:\"65179998-01d1-498a-a4d2-a3b56bc13e8a\";}}}i:12;a:4:{s:8:\"question\";s:36:\"Where can I find wp_config.php file?\";s:3:\"img\";s:0:\"\";s:2:\"id\";s:36:\"af753ce8-3910-4d7e-815a-4996f1e56c10\";s:7:\"answers\";a:4:{i:0;a:2:{s:6:\"answer\";s:63:\"It is stored in the wordpress root directory on your web server\";s:2:\"id\";s:36:\"9776b5cd-ec2c-45ab-a207-09b729711188\";}i:1;a:2:{s:6:\"answer\";s:42:\"It is located inside wordpress root folder\";s:2:\"id\";s:36:\"b9b4bf63-a818-4abf-9b7d-d2711cea57c0\";}i:2;a:2:{s:6:\"answer\";s:39:\"It is located inside wordpress database\";s:2:\"id\";s:36:\"9dd57b31-dc4b-4581-9a57-e97d200853ec\";}i:3;a:2:{s:6:\"answer\";s:28:\"In my wordpress theme folder\";s:2:\"id\";s:36:\"805af5d1-6a11-4388-9a01-08f46f0f38cb\";}}}i:13;a:4:{s:8:\"question\";s:33:\"What can the Contributor role do?\";s:3:\"img\";s:0:\"\";s:2:\"id\";s:36:\"ab709f6a-4902-4e85-834f-1c0e46223aa8\";s:7:\"answers\";a:4:{i:0;a:2:{s:6:\"answer\";s:10:\"Edit posts\";s:2:\"id\";s:36:\"6c350a10-86a1-447b-8f80-f20ccc25f991\";}i:1;a:2:{s:6:\"answer\";s:17:\"Moderate comments\";s:2:\"id\";s:36:\"4179fb3d-d4a8-4fc6-be74-cdc48fbd36c5\";}i:2;a:2:{s:6:\"answer\";s:10:\"Edit pages\";s:2:\"id\";s:36:\"fd442254-a254-4630-8ba6-dd6f6b26f3bb\";}i:3;a:2:{s:6:\"answer\";s:13:\"Publish posts\";s:2:\"id\";s:36:\"b766a08f-611a-4a04-b0e0-30f3699e42c3\";}}}i:14;a:4:{s:8:\"question\";s:71:\"What function does WP use to control user access to different features?\";s:3:\"img\";s:0:\"\";s:2:\"id\";s:36:\"ffd7adcf-db2f-4ce1-a762-165d6131a50c\";s:7:\"answers\";a:4:{i:0;a:2:{s:6:\"answer\";s:4:\"Role\";s:2:\"id\";s:36:\"bd251d8f-c145-4f63-aca3-183ab8492d85\";}i:1;a:2:{s:6:\"answer\";s:8:\"Username\";s:2:\"id\";s:36:\"f501f645-4393-4d61-be07-e49bb8c0efa6\";}i:2;a:2:{s:6:\"answer\";s:13:\"Access tokens\";s:2:\"id\";s:36:\"f01bd0f9-5ccc-49c5-90d0-c6142b186bc4\";}i:3;a:2:{s:6:\"answer\";s:7:\"Cookies\";s:2:\"id\";s:36:\"52718679-49e0-4899-8ea5-86475f793471\";}}}i:15;a:4:{s:8:\"question\";s:38:\"How many WordPress posts can I create?\";s:3:\"img\";s:0:\"\";s:2:\"id\";s:36:\"570a411d-2a77-4cf9-af69-cc134494c4c8\";s:7:\"answers\";a:4:{i:0;a:2:{s:6:\"answer\";s:17:\"There is no limit\";s:2:\"id\";s:36:\"a61c3488-7836-4e7c-8967-307035ba4416\";}i:1;a:2:{s:6:\"answer\";s:43:\"Wordpress recommends less than 10,000 posts\";s:2:\"id\";s:36:\"16632bed-2b43-456e-bd93-1d3d9077d49b\";}i:2;a:2:{s:6:\"answer\";s:30:\"It depends on your server size\";s:2:\"id\";s:36:\"3aa315b4-9190-4982-8078-a036f67a57cf\";}i:3;a:2:{s:6:\"answer\";s:34:\"Wordpress is limited to 1000 posts\";s:2:\"id\";s:36:\"60c6f3c9-af4a-4251-8a68-f39dae0ef59b\";}}}i:16;a:4:{s:8:\"question\";s:41:\"How many templates can one theme contain?\";s:3:\"img\";s:0:\"\";s:2:\"id\";s:36:\"d9c6d06a-dafe-409c-9a20-999bf62c8f7c\";s:7:\"answers\";a:4:{i:0;a:2:{s:6:\"answer\";s:9:\"Unlimited\";s:2:\"id\";s:36:\"84a607a5-a09d-4409-ac4b-df3ac23e5c52\";}i:1;a:2:{s:6:\"answer\";s:8:\"One only\";s:2:\"id\";s:36:\"25ff49fa-b4d1-4972-a503-c31ac6d5db8b\";}i:2;a:2:{s:6:\"answer\";s:28:\"Depends on the server memory\";s:2:\"id\";s:36:\"7a8e1a17-e87e-4de7-a629-374388155a60\";}i:3;a:2:{s:6:\"answer\";s:11:\"maximum ten\";s:2:\"id\";s:36:\"3c0e0d3d-96a3-4596-a1b3-e21b0ad5e308\";}}}i:17;a:4:{s:8:\"question\";s:22:\"What is WP multisite? \";s:3:\"img\";s:0:\"\";s:2:\"id\";s:36:\"7e6729ac-c2c9-4045-b874-d5d5abbdba45\";s:7:\"answers\";a:4:{i:0;a:2:{s:6:\"answer\";s:49:\"Wp configuration feature that supports multisites\";s:2:\"id\";s:36:\"2d8da306-a1e6-4813-8207-3ef45b244dca\";}i:1;a:2:{s:6:\"answer\";s:54:\"A popular wordpress theme that supports mobile support\";s:2:\"id\";s:36:\"acac3d68-e2ff-4e53-b099-37c3af2dc247\";}i:2;a:2:{s:6:\"answer\";s:72:\"Special version of wordpress that can support many sites and is not free\";s:2:\"id\";s:36:\"573d7f44-b5d8-44ea-92aa-56e716517286\";}i:3;a:2:{s:6:\"answer\";s:40:\"A WP plugin that supports multiple sites\";s:2:\"id\";s:36:\"3bb1c1fc-1426-4770-beba-35d328719937\";}}}i:18;a:4:{s:8:\"question\";s:21:\"How old is WordPress?\";s:3:\"img\";s:0:\"\";s:2:\"id\";s:36:\"6b732151-68ab-40d2-8de3-3545f39278ee\";s:7:\"answers\";a:4:{i:0;a:2:{s:6:\"answer\";s:22:\"Only 10 years old 1995\";s:2:\"id\";s:36:\"e565fb59-f160-47cf-96b7-d11dc811d336\";}i:1;a:2:{s:6:\"answer\";s:32:\"Since the early days of web 1992\";s:2:\"id\";s:36:\"c8d341cf-daf5-4d14-992e-7a97569af6a8\";}i:2;a:2:{s:6:\"answer\";s:23:\"Same age as google 1998\";s:2:\"id\";s:36:\"112bfbdb-bdfa-4d0e-8cca-d7d3fe17c422\";}i:3;a:2:{s:6:\"answer\";s:41:\"First version is only five years old 2010\";s:2:\"id\";s:36:\"85c3a833-a2db-4dc0-a204-d0c24a95b8a7\";}}}i:19;a:4:{s:8:\"question\";s:46:\"Where are my WordPress plugins options stored?\";s:3:\"img\";s:0:\"\";s:2:\"id\";s:36:\"08f22561-9404-4182-9f1a-6a41b624a498\";s:7:\"answers\";a:4:{i:0;a:2:{s:6:\"answer\";s:37:\"They are stored in wordpress database\";s:2:\"id\";s:36:\"ef7c02ae-8a31-4bf3-a272-de0c167d4074\";}i:1;a:2:{s:6:\"answer\";s:51:\"Ther are stored in wordpress.org and not on my site\";s:2:\"id\";s:36:\"4f9557df-1e11-4824-9746-b3d0a6d485a7\";}i:2;a:2:{s:6:\"answer\";s:41:\"They are stored in wordpress theme folder\";s:2:\"id\";s:36:\"43725fe2-b8fa-4474-8a56-15b37cf441f9\";}i:3;a:2:{s:6:\"answer\";s:43:\"They are stored in wordpress plugins folder\";s:2:\"id\";s:36:\"8d5fe18c-d8d9-4699-ad31-c5c3e08950aa\";}}}}'),
(199, 82, 'quiz_cat_results', 'a:1:{i:0;a:8:{s:5:\"title\";s:16:\"Your Quiz Result\";s:4:\"desc\";s:0:\"\";s:3:\"img\";s:65:\"http://localhost/quiz/wp-content/uploads/2020/07/rslt-281x300.png\";s:3:\"min\";i:0;s:3:\"max\";i:20;s:3:\"url\";s:0:\"\";s:4:\"tags\";s:0:\"\";s:6:\"groups\";a:0:{}}}'),
(200, 82, 'quiz_cat_settings', 'a:4:{s:12:\"hide_answers\";s:0:\"\";s:11:\"result_mode\";s:0:\"\";s:9:\"quiz_type\";s:0:\"\";s:14:\"disable_scroll\";s:0:\"\";}'),
(201, 82, '_edit_lock', '1594877445:1'),
(202, 63, '_edit_lock', '1594887947:1'),
(203, 91, '_wp_trash_meta_status', 'publish'),
(204, 91, '_wp_trash_meta_time', '1594728061'),
(205, 91, '_wp_desired_post_slug', 'untitled-reusable-block'),
(206, 93, '_wp_attached_file', '2020/07/logout.png'),
(207, 93, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1300;s:6:\"height\";i:1390;s:4:\"file\";s:18:\"2020/07/logout.png\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"logout-281x300.png\";s:5:\"width\";i:281;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"logout-958x1024.png\";s:5:\"width\";i:958;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"logout-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"logout-768x821.png\";s:5:\"width\";i:768;s:6:\"height\";i:821;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:20:\"logout-1024x1095.png\";s:5:\"width\";i:1024;s:6:\"height\";i:1095;s:9:\"mime-type\";s:9:\"image/png\";}s:17:\"mesmerize-full-hd\";a:4:{s:4:\"file\";s:20:\"logout-1010x1080.png\";s:5:\"width\";i:1010;s:6:\"height\";i:1080;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(208, 98, '_edit_lock', '1594732070:1'),
(209, 99, '_wp_attached_file', '2020/07/banner.png'),
(210, 99, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1315;s:6:\"height\";i:741;s:4:\"file\";s:18:\"2020/07/banner.png\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"banner-300x169.png\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"banner-1024x577.png\";s:5:\"width\";i:1024;s:6:\"height\";i:577;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"banner-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"banner-768x433.png\";s:5:\"width\";i:768;s:6:\"height\";i:433;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:19:\"banner-1024x577.png\";s:5:\"width\";i:1024;s:6:\"height\";i:577;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(211, 99, '_wp_attachment_image_alt', 'bg'),
(212, 100, '_wp_attached_file', '2020/07/wpbg.jpg'),
(213, 100, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:307;s:6:\"height\";i:164;s:4:\"file\";s:16:\"2020/07/wpbg.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"wpbg-300x160.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"wpbg-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(214, 100, '_wp_attachment_image_alt', 'bg'),
(215, 98, '_wp_trash_meta_status', 'publish'),
(216, 98, '_wp_trash_meta_time', '1594732076'),
(217, 93, '_wp_attachment_image_alt', 'img'),
(218, 126, '_wp_attached_file', '2020/07/ready.png'),
(219, 126, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:1280;s:4:\"file\";s:17:\"2020/07/ready.png\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"ready-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"ready-1024x1024.png\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"ready-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"ready-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:19:\"ready-1024x1024.png\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}s:17:\"mesmerize-full-hd\";a:4:{s:4:\"file\";s:19:\"ready-1080x1080.png\";s:5:\"width\";i:1080;s:6:\"height\";i:1080;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(220, 127, '_wp_attached_file', '2020/07/ready-1.png'),
(221, 127, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:524;s:4:\"file\";s:19:\"2020/07/ready-1.png\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"ready-1-300x123.png\";s:5:\"width\";i:300;s:6:\"height\";i:123;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"ready-1-1024x419.png\";s:5:\"width\";i:1024;s:6:\"height\";i:419;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"ready-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"ready-1-768x314.png\";s:5:\"width\";i:768;s:6:\"height\";i:314;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:20:\"ready-1-1024x419.png\";s:5:\"width\";i:1024;s:6:\"height\";i:419;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2020-07-13 18:09:32', '2020-07-13 18:09:32', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2020-07-13 18:09:32', '2020-07-13 18:09:32', '', 0, 'http://localhost/quiz/?p=1', 0, 'post', '', 1),
(2, 1, '2020-07-13 18:09:32', '2020-07-13 18:09:32', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/quiz/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2020-07-13 19:14:43', '2020-07-13 19:14:43', '', 0, 'http://localhost/quiz/?page_id=2', 0, 'page', '', 0),
(3, 1, '2020-07-13 18:09:32', '2020-07-13 18:09:32', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://localhost/quiz.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2020-07-13 18:09:32', '2020-07-13 18:09:32', '', 0, 'http://localhost/quiz/?page_id=3', 0, 'page', '', 0),
(4, 1, '2020-07-13 18:10:17', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-07-13 18:10:17', '0000-00-00 00:00:00', '', 0, 'http://localhost/quiz/?p=4', 0, 'post', '', 0),
(5, 1, '2020-07-13 19:12:18', '2020-07-13 19:12:18', '{\n    \"highlight::header_content_show_title\": {\n        \"value\": true,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-13 18:31:30\"\n    },\n    \"highlight::header_title\": {\n        \"value\": \"WELCOME TO WORDPRESS QUIZ\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-13 18:31:30\"\n    },\n    \"highlight::header_content_show_subtitle\": {\n        \"value\": false,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-13 18:32:59\"\n    },\n    \"highlight::header_content_buttons\": {\n        \"value\": [\n            {\n                \"label\": \"Register\",\n                \"url\": \"#\",\n                \"target\": \"_self\",\n                \"class\": \"button big color1 round\"\n            },\n            {\n                \"label\": \"Login\",\n                \"url\": \"#\",\n                \"target\": \"_self\",\n                \"class\": \"button big color-white round outline\"\n            }\n        ],\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-13 18:33:58\"\n    },\n    \"highlight::header_show_overlay\": {\n        \"value\": true,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-13 18:34:43\"\n    },\n    \"highlight::header_show_separator\": {\n        \"value\": false,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-13 18:34:43\"\n    },\n    \"highlight::header_background_type\": {\n        \"value\": \"image\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-13 18:47:20\"\n    },\n    \"highlight::header_slideshow\": {\n        \"value\": [\n            {\n                \"url\": \"6\"\n            },\n            {\n                \"url\": \"http://localhost/quiz/wp-content/themes/highlight/assets/images/hero-2.jpg\"\n            },\n            {\n                \"url\": \"http://localhost/quiz/wp-content/themes/highlight/assets/images/hero-3.jpg\"\n            },\n            {\n                \"url\": \"http://localhost/quiz/wp-content/themes/highlight/assets/images/hero-4.jpg\"\n            }\n        ],\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-13 18:47:20\"\n    },\n    \"highlight::header_front_page_image\": {\n        \"value\": \"http://localhost/quiz/wp-content/uploads/2020/07/quizbg.png\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-13 19:02:34\"\n    },\n    \"highlight::header_size_bottom_arrow\": {\n        \"value\": \"75\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-13 18:49:49\"\n    },\n    \"highlight::header_offset_bottom_arrow\": {\n        \"value\": \"26\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-13 18:49:49\"\n    },\n    \"highlight::inner_header_text_align\": {\n        \"value\": \"center\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-13 18:53:49\"\n    },\n    \"highlight::inner_header_show_subtitle\": {\n        \"value\": true,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-13 18:53:49\"\n    },\n    \"highlight::blog_sidebar_enabled\": {\n        \"value\": false,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-13 18:54:49\"\n    },\n    \"highlight::show_single_item_title\": {\n        \"value\": false,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-13 18:55:49\"\n    },\n    \"highlight::blog_show_post_featured_image\": {\n        \"value\": true,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-13 18:54:49\"\n    },\n    \"highlight::blog_post_meta_enabled\": {\n        \"value\": false,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-13 18:55:49\"\n    },\n    \"highlight::blog_show_post_thumb_placeholder\": {\n        \"value\": false,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-13 18:55:49\"\n    },\n    \"highlight::header_bg_position\": {\n        \"value\": \"left top\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-13 19:01:34\"\n    },\n    \"highlight::header_bg_color_image\": {\n        \"value\": \"#1d178d\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-13 19:02:34\"\n    },\n    \"blogname\": {\n        \"value\": \"wp quiz\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-13 19:09:40\"\n    },\n    \"blogdescription\": {\n        \"value\": \"wordpress quiz\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-13 19:09:40\"\n    },\n    \"show_on_front\": {\n        \"value\": \"posts\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-13 19:11:40\"\n    },\n    \"page_on_front\": {\n        \"value\": \"0\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-13 19:11:40\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'ee03e0f5-dbf6-42c2-ab6e-87d6691a134e', '', '', '2020-07-13 19:12:18', '2020-07-13 19:12:18', '', 0, 'http://localhost/quiz/?p=5', 0, 'customize_changeset', '', 0),
(6, 1, '2020-07-13 18:46:50', '2020-07-13 18:46:50', '', 'quizbg', '', 'inherit', 'open', 'closed', '', 'quizbg', '', '', '2020-07-13 18:47:04', '2020-07-13 18:47:04', '', 0, 'http://localhost/quiz/wp-content/uploads/2020/07/quizbg.png', 0, 'attachment', 'image/png', 0),
(7, 1, '2020-07-13 19:01:03', '2020-07-13 19:01:03', '', 'bg2', '', 'inherit', 'open', 'closed', '', 'bg2', '', '', '2020-07-13 19:01:10', '2020-07-13 19:01:10', '', 0, 'http://localhost/quiz/wp-content/uploads/2020/07/bg2.png', 0, 'attachment', 'image/png', 0),
(8, 1, '2020-07-13 19:13:53', '2020-07-13 19:13:53', '{\n    \"highlight::inner_header_show_overlay\": {\n        \"value\": true,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-13 19:13:45\"\n    },\n    \"highlight::inner_header_show_separator\": {\n        \"value\": false,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-13 19:13:45\"\n    },\n    \"highlight::inner_header_text_align\": {\n        \"value\": \"center\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-13 19:13:45\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '700196fc-c7f5-4408-b50b-ffa64f00539f', '', '', '2020-07-13 19:13:53', '2020-07-13 19:13:53', '', 0, 'http://localhost/quiz/?p=8', 0, 'customize_changeset', '', 0),
(9, 1, '2020-07-13 19:14:43', '2020-07-13 19:14:43', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/quiz/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2020-07-13 19:14:43', '2020-07-13 19:14:43', '', 2, 'http://localhost/quiz/2020/07/13/2-revision-v1/', 0, 'revision', '', 0),
(10, 1, '2020-07-13 19:28:22', '2020-07-13 19:28:22', '<p>[wppb-register redirect_url=\"http://localhost/quiz/log-in/\"]</p>\n\n<!-- wp:html -->\n<p>Already a member? <a href=\"localhost/quiz/log-in\">Login now</a></p>\n<!-- /wp:html -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Register', '', 'publish', 'closed', 'closed', '', 'register', '', '', '2020-07-13 21:00:36', '2020-07-13 21:00:36', '', 0, 'http://localhost/quiz/register/', 0, 'page', '', 0),
(11, 1, '2020-07-13 19:28:22', '2020-07-13 19:28:22', '[wppb-edit-profile]', 'Edit Profile', '', 'publish', 'closed', 'closed', '', 'edit-profile', '', '', '2020-07-13 19:28:22', '2020-07-13 19:28:22', '', 0, 'http://localhost/quiz/edit-profile/', 0, 'page', '', 0),
(12, 1, '2020-07-13 19:28:22', '2020-07-13 19:28:22', '<p>[wppb-login redirect_url=\"http://localhost/quiz/quiz-2/\"]</p>\n\n<!-- wp:html -->\n<p>Not a member yet? <a href=\"http://localhost/quiz/register/\">Register now</a></p>\n<!-- /wp:html -->', 'Log In', '', 'publish', 'closed', 'closed', '', 'log-in', '', '', '2020-07-14 07:00:54', '2020-07-14 07:00:54', '', 0, 'http://localhost/quiz/log-in/', 0, 'page', '', 0),
(13, 1, '2020-07-13 19:45:57', '2020-07-13 19:45:57', '', 'loginbg', '', 'inherit', 'open', 'closed', '', 'loginbg', '', '', '2020-07-13 19:46:03', '2020-07-13 19:46:03', '', 0, 'http://localhost/quiz/wp-content/uploads/2020/07/loginbg.png', 0, 'attachment', 'image/png', 0),
(14, 1, '2020-07-13 19:48:43', '2020-07-13 19:48:43', '{\n    \"highlight::header_front_page_image\": {\n        \"value\": \"http://localhost/quiz/wp-content/uploads/2020/07/quizbg.png\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-13 19:48:43\"\n    },\n    \"highlight::header_bg_position\": {\n        \"value\": \"center top\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-13 19:47:04\"\n    },\n    \"highlight::header_content_show_subtitle\": {\n        \"value\": false,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-13 19:48:43\"\n    },\n    \"highlight::header_show_overlay\": {\n        \"value\": true,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-13 19:48:04\"\n    },\n    \"highlight::header_content_show_title\": {\n        \"value\": true,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-13 19:48:43\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '924f08b3-50b2-41b2-ba28-78030310dc85', '', '', '2020-07-13 19:48:43', '2020-07-13 19:48:43', '', 0, 'http://localhost/quiz/?p=14', 0, 'customize_changeset', '', 0),
(15, 1, '2020-07-13 19:51:04', '2020-07-13 19:51:04', '{\n    \"highlight::header_content_buttons\": {\n        \"value\": [\n            {\n                \"label\": \"Register\",\n                \"url\": \"http://localhost/quiz/log-in/\",\n                \"target\": \"_self\",\n                \"class\": \"button big color1 round\"\n            },\n            {\n                \"label\": \"Login\",\n                \"url\": \"#\",\n                \"target\": \"_self\",\n                \"class\": \"button big color-white round outline\"\n            }\n        ],\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-13 19:51:04\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '11cbe276-d572-4a6c-ab61-89b337544697', '', '', '2020-07-13 19:51:04', '2020-07-13 19:51:04', '', 0, 'http://localhost/quiz/2020/07/13/11cbe276-d572-4a6c-ab61-89b337544697/', 0, 'customize_changeset', '', 0),
(16, 1, '2020-07-13 19:54:36', '2020-07-13 19:54:36', '{\n    \"highlight::header_content_buttons\": {\n        \"value\": [\n            {\n                \"label\": \"Register\",\n                \"url\": \"http://localhost/quiz/register/\",\n                \"target\": \"_self\",\n                \"class\": \"button big color1 round\"\n            },\n            {\n                \"label\": \"Login\",\n                \"url\": \"http://localhost/quiz/log-in/\",\n                \"target\": \"_self\",\n                \"class\": \"button big color-white round outline\"\n            }\n        ],\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-13 19:53:18\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '19626590-ae47-4d65-953c-950d5191d842', '', '', '2020-07-13 19:54:36', '2020-07-13 19:54:36', '', 0, 'http://localhost/quiz/?p=16', 0, 'customize_changeset', '', 0),
(17, 1, '2020-07-13 19:56:00', '2020-07-13 19:56:00', '<!-- wp:uagb/section {\"classMigrate\":true,\"block_id\":\"16cf722c\"} -->\n<section class=\"wp-block-uagb-section uagb-section__wrap uagb-section__background-undefined uagb-block-16cf722c\"><div class=\"uagb-section__overlay\"></div><div class=\"uagb-section__inner-wrap\"><!-- wp:uagb/advanced-heading {\"block_id\":\"69edd71c\",\"classMigrate\":true,\"headingColor\":\"#5c5d5e\",\"separatorColor\":\"#03a9f4\",\"headingTag\":\"h3\",\"level\":3,\"separatorWidth\":35} -->\n<div class=\"wp-block-uagb-advanced-heading uagb-block-69edd71c\"><h3 class=\"uagb-heading-text\">We are pleased to have you here.</h3><div class=\"uagb-separator-wrap\"><div class=\"uagb-separator\"></div></div><p class=\"uagb-desc-text\"></p></div>\n<!-- /wp:uagb/advanced-heading -->\n\n<!-- wp:paragraph {\"align\":\"center\",\"customTextColor\":\"#292929\",\"customFontSize\":18} -->\n<p style=\"color:#292929;font-size:18px\" class=\"has-text-color has-text-align-center\">A quiz gives people fun and interactive experience. It is an effort to inspire people and you can test your knowledge regarding WordPress through it. lets gather on one platform and compete with others.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"align\":\"center\",\"customTextColor\":\"#292929\",\"customFontSize\":18} -->\n<p style=\"color:#292929;font-size:18px\" class=\"has-text-color has-text-align-center\">Register yourself here and test your education because it is made for You!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"align\":\"center\",\"id\":127,\"width\":389,\"height\":159,\"sizeSlug\":\"large\"} -->\n<div class=\"wp-block-image\"><figure class=\"aligncenter size-large is-resized\"><img src=\"http://localhost/quiz/wp-content/uploads/2020/07/ready-1-1024x419.png\" alt=\"\" class=\"wp-image-127\" width=\"389\" height=\"159\"/></figure></div>\n<!-- /wp:image -->\n\n<!-- wp:uagb/advanced-heading {\"block_id\":\"8558c71c\",\"classMigrate\":true,\"headingColor\":\"#5c5d5e\",\"separatorColor\":\"#03a9f4\",\"separatorWidth\":20} -->\n<div class=\"wp-block-uagb-advanced-heading uagb-block-8558c71c\"><h2 class=\"uagb-heading-text\">Instructions</h2><div class=\"uagb-separator-wrap\"><div class=\"uagb-separator\"></div></div><p class=\"uagb-desc-text\"></p></div>\n<!-- /wp:uagb/advanced-heading -->\n\n<!-- wp:list -->\n<ul><li>Be a part of WP Quiz and get yourself register now.</li><li>Login yourself to get started.</li><li>You have 20 mins to complete the quiz and submit it.</li><li>Once the time is up quiz will be submitted automatically.</li><li>Result will be shown after the submission of quiz.</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:uagb/icon-list {\"block_id\":\"cd69ef92\",\"classMigrate\":true,\"childMigrate\":true} -->\n<div class=\"wp-block-uagb-icon-list uagb-icon-list__outer-wrap uagb-icon-list__layout-vertical uagb-block-cd69ef92\"><div class=\"uagb-icon-list__wrap\"></div></div>\n<!-- /wp:uagb/icon-list --></div></section>\n<!-- /wp:uagb/section -->', 'HOME', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2020-07-16 09:14:51', '2020-07-16 09:14:51', '', 0, 'http://localhost/quiz/?page_id=17', 0, 'page', '', 0),
(18, 1, '2020-07-13 19:56:00', '2020-07-13 19:56:00', '', 'HOME', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2020-07-13 19:56:00', '2020-07-13 19:56:00', '', 17, 'http://localhost/quiz/2020/07/13/17-revision-v1/', 0, 'revision', '', 0),
(19, 1, '2020-07-13 19:59:18', '2020-07-13 19:59:18', '{\n    \"show_on_front\": {\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-13 19:57:51\"\n    },\n    \"page_on_front\": {\n        \"value\": \"17\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-13 19:57:51\"\n    },\n    \"highlight::nav_menu_locations[primary]\": {\n        \"value\": -8631956979804811000,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-13 19:58:51\"\n    },\n    \"nav_menu[-8631956979804811000]\": {\n        \"value\": {\n            \"name\": \"main menu\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-13 19:58:51\"\n    },\n    \"nav_menu_item[-2114783769859661800]\": {\n        \"value\": {\n            \"object_id\": 17,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"post_type\",\n            \"title\": \"HOME\",\n            \"url\": \"http://localhost/quiz/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"HOME\",\n            \"nav_menu_term_id\": -8631956979804811000,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-13 19:58:51\"\n    },\n    \"nav_menu_item[-8812593342244676000]\": {\n        \"value\": {\n            \"object_id\": 11,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"post_type\",\n            \"title\": \"Edit Profile\",\n            \"url\": \"http://localhost/quiz/edit-profile/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Edit Profile\",\n            \"nav_menu_term_id\": -8631956979804811000,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-13 19:58:51\"\n    },\n    \"nav_menus_created_posts\": {\n        \"value\": [\n            20\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-13 19:59:18\"\n    },\n    \"nav_menu_item[-4363794475592311000]\": {\n        \"value\": {\n            \"object_id\": 20,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 3,\n            \"type\": \"post_type\",\n            \"title\": \"CONTACT US\",\n            \"url\": \"http://localhost/quiz/?page_id=20\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"CONTACT US\",\n            \"nav_menu_term_id\": -8631956979804811000,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-13 19:59:18\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '425fcc7d-61a0-4dad-823a-f03aff347d90', '', '', '2020-07-13 19:59:18', '2020-07-13 19:59:18', '', 0, 'http://localhost/quiz/?p=19', 0, 'customize_changeset', '', 0),
(20, 1, '2020-07-13 19:59:18', '2020-07-13 19:59:18', '<!-- wp:paragraph {\"align\":\"center\",\"customTextColor\":\"#8f9091\",\"fontSize\":\"medium\"} -->\n<p style=\"color:#8f9091\" class=\"has-text-color has-text-align-center has-medium-font-size\"><strong>If you have any query please contact us. Send us a message and we\'ll respond as soon as possible</strong>.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:shortcode -->\n[contact-form-7 id=\"80\" title=\"Contact form 1\"]\n<!-- /wp:shortcode -->', 'CONTACT US', '', 'publish', 'closed', 'closed', '', 'contact-us', '', '', '2020-07-14 09:01:15', '2020-07-14 09:01:15', '', 0, 'http://localhost/quiz/?page_id=20', 0, 'page', '', 0),
(21, 1, '2020-07-13 19:59:18', '2020-07-13 19:59:18', ' ', '', '', 'publish', 'closed', 'closed', '', '21', '', '', '2020-07-14 07:02:20', '2020-07-14 07:02:20', '', 0, 'http://localhost/quiz/2020/07/13/21/', 1, 'nav_menu_item', '', 0),
(23, 1, '2020-07-13 19:59:18', '2020-07-13 19:59:18', '', 'CONTACT US', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2020-07-13 19:59:18', '2020-07-13 19:59:18', '', 20, 'http://localhost/quiz/2020/07/13/20-revision-v1/', 0, 'revision', '', 0),
(24, 1, '2020-07-13 19:59:18', '2020-07-13 19:59:18', ' ', '', '', 'publish', 'closed', 'closed', '', '24', '', '', '2020-07-13 19:59:18', '2020-07-13 19:59:18', '', 0, 'http://localhost/quiz/2020/07/13/24/', 3, 'nav_menu_item', '', 0),
(25, 1, '2020-07-13 20:02:12', '2020-07-13 20:02:12', '', 'cropped-loginbg-1.png', '', 'inherit', 'closed', 'closed', '', 'cropped-loginbg-png', '', '', '2020-07-13 20:02:12', '2020-07-13 20:02:12', '', 0, 'http://localhost/quiz/wp-content/uploads/2020/07/cropped-loginbg.png', 0, 'attachment', 'image/png', 0),
(26, 1, '2020-07-13 20:06:11', '0000-00-00 00:00:00', '{\n    \"highlight::header_image\": {\n        \"value\": \"http://localhost/quiz/wp-content/uploads/2020/07/cropped-bglogin-1.png\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-13 20:05:11\"\n    },\n    \"highlight::header_image_data\": {\n        \"value\": {\n            \"url\": \"http://localhost/quiz/wp-content/uploads/2020/07/cropped-bglogin-1.png\",\n            \"thumbnail_url\": \"http://localhost/quiz/wp-content/uploads/2020/07/cropped-bglogin-1.png\",\n            \"timestamp\": 1594670701832,\n            \"attachment_id\": 28,\n            \"width\": 300,\n            \"height\": 90\n        },\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-13 20:05:11\"\n    },\n    \"highlight::inner_header_bg_color_image\": {\n        \"value\": \"#3378ff\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-13 20:02:11\"\n    },\n    \"highlight::inner_header_bg_position\": {\n        \"value\": \"center bottom\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-13 20:06:11\"\n    },\n    \"highlight::inner_header_parallax\": {\n        \"value\": false,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-13 20:04:11\"\n    },\n    \"highlight::inner_header_text_align\": {\n        \"value\": \"center\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-13 20:04:11\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '1a0b2e70-a06f-4354-8fae-c429a3a64f46', '', '', '2020-07-13 20:06:11', '2020-07-13 20:06:11', '', 0, 'http://localhost/quiz/?p=26', 0, 'customize_changeset', '', 0),
(27, 1, '2020-07-13 20:03:24', '2020-07-13 20:03:24', '', 'bglogin', '', 'inherit', 'open', 'closed', '', 'bglogin', '', '', '2020-07-13 20:04:54', '2020-07-13 20:04:54', '', 0, 'http://localhost/quiz/wp-content/uploads/2020/07/bglogin.png', 0, 'attachment', 'image/png', 0),
(28, 1, '2020-07-13 20:05:01', '2020-07-13 20:05:01', '', 'cropped-bglogin-1.png', '', 'inherit', 'closed', 'closed', '', 'cropped-bglogin-png', '', '', '2020-07-13 20:05:01', '2020-07-13 20:05:01', '', 0, 'http://localhost/quiz/wp-content/uploads/2020/07/cropped-bglogin.png', 0, 'attachment', 'image/png', 0),
(29, 1, '2020-07-13 20:06:44', '2020-07-13 20:06:44', '', 'loginbg', '', 'inherit', 'open', 'closed', '', 'loginbg-2', '', '', '2020-07-13 20:06:49', '2020-07-13 20:06:49', '', 0, 'http://localhost/quiz/wp-content/uploads/2020/07/loginbg-1.png', 0, 'attachment', 'image/png', 0),
(30, 1, '2020-07-13 20:06:58', '2020-07-13 20:06:58', '', 'cropped-loginbg-1-1.png', '', 'inherit', 'open', 'closed', '', 'cropped-loginbg-1-1-png', '', '', '2020-07-13 20:06:58', '2020-07-13 20:06:58', '', 0, 'http://localhost/quiz/wp-content/uploads/2020/07/cropped-loginbg-1-1.png', 0, 'attachment', 'image/png', 0),
(31, 1, '2020-07-13 20:08:36', '2020-07-13 20:08:36', '{\n    \"highlight::header_image\": {\n        \"value\": \"http://localhost/quiz/wp-content/uploads/2020/07/cropped-loginbg-1-1.png\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-13 20:07:58\"\n    },\n    \"highlight::header_image_data\": {\n        \"value\": {\n            \"url\": \"http://localhost/quiz/wp-content/uploads/2020/07/cropped-loginbg-1-1.png\",\n            \"thumbnail_url\": \"http://localhost/quiz/wp-content/uploads/2020/07/cropped-loginbg-1-1.png\",\n            \"timestamp\": 1594670818478,\n            \"attachment_id\": 30,\n            \"width\": 300,\n            \"height\": 163\n        },\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-13 20:07:58\"\n    },\n    \"highlight::inner_header_bg_position\": {\n        \"value\": \"center center\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-13 20:07:58\"\n    },\n    \"highlight::inner_header_bg_color_image\": {\n        \"value\": \"#1967ff\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-13 20:07:58\"\n    },\n    \"highlight::inner_header_show_featured_image\": {\n        \"value\": true,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-13 20:07:58\"\n    },\n    \"highlight::inner_header_parallax\": {\n        \"value\": false,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-13 20:07:58\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'cb22b9bb-6d3e-42ae-89aa-98df1e886dcf', '', '', '2020-07-13 20:08:36', '2020-07-13 20:08:36', '', 0, 'http://localhost/quiz/?p=31', 0, 'customize_changeset', '', 0),
(32, 1, '2020-07-13 20:17:29', '2020-07-13 20:17:29', '', 'rgstrbg', '', 'inherit', 'open', 'closed', '', 'rgstrbg', '', '', '2020-07-13 20:17:33', '2020-07-13 20:17:33', '', 0, 'http://localhost/quiz/wp-content/uploads/2020/07/rgstrbg.png', 0, 'attachment', 'image/png', 0),
(33, 1, '2020-07-13 20:17:41', '2020-07-13 20:17:41', '', 'cropped-rgstrbg.png', '', 'inherit', 'open', 'closed', '', 'cropped-rgstrbg-png', '', '', '2020-07-13 20:17:41', '2020-07-13 20:17:41', '', 0, 'http://localhost/quiz/wp-content/uploads/2020/07/cropped-rgstrbg.png', 0, 'attachment', 'image/png', 0),
(34, 1, '2020-07-13 20:18:34', '2020-07-13 20:18:34', '', 'rgstrbg', '', 'inherit', 'open', 'closed', '', 'rgstrbg-2', '', '', '2020-07-13 20:18:41', '2020-07-13 20:18:41', '', 0, 'http://localhost/quiz/wp-content/uploads/2020/07/rgstrbg-1.png', 0, 'attachment', 'image/png', 0),
(35, 1, '2020-07-13 20:19:22', '2020-07-13 20:19:22', '{\n    \"highlight::header_image\": {\n        \"value\": \"http://localhost/quiz/wp-content/uploads/2020/07/cropped-rgstrbg-1.png\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-13 20:19:22\"\n    },\n    \"highlight::header_image_data\": {\n        \"value\": {\n            \"url\": \"http://localhost/quiz/wp-content/uploads/2020/07/cropped-rgstrbg-1.png\",\n            \"thumbnail_url\": \"http://localhost/quiz/wp-content/uploads/2020/07/cropped-rgstrbg-1.png\",\n            \"timestamp\": 1594671529142,\n            \"attachment_id\": 36,\n            \"width\": 300,\n            \"height\": 149\n        },\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-13 20:19:22\"\n    },\n    \"highlight::inner_header_bg_position\": {\n        \"value\": \"center top\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-13 20:19:22\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'f232b9b2-1ee7-4bb8-99cf-6753c3cc43af', '', '', '2020-07-13 20:19:22', '2020-07-13 20:19:22', '', 0, 'http://localhost/quiz/?p=35', 0, 'customize_changeset', '', 0),
(36, 1, '2020-07-13 20:20:31', '2020-07-13 20:20:31', '', 'cropped-rgstrbg-1-1.png', '', 'inherit', 'closed', 'closed', '', 'cropped-rgstrbg-1-png', '', '', '2020-07-13 20:20:31', '2020-07-13 20:20:31', '', 0, 'http://localhost/quiz/wp-content/uploads/2020/07/cropped-rgstrbg-1.png', 0, 'attachment', 'image/png', 0),
(37, 1, '2020-07-13 20:19:50', '2020-07-13 20:19:50', '{\n    \"highlight::inner_header_bg_position\": {\n        \"value\": \"center center\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-13 20:19:50\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '88ed92e5-b6e5-471f-8e8e-552962240c88', '', '', '2020-07-13 20:19:50', '2020-07-13 20:19:50', '', 0, 'http://localhost/quiz/2020/07/13/88ed92e5-b6e5-471f-8e8e-552962240c88/', 0, 'customize_changeset', '', 0),
(38, 1, '2020-07-13 20:20:36', '2020-07-13 20:20:36', '{\n    \"highlight::header_image\": {\n        \"value\": \"http://localhost/quiz/wp-content/uploads/2020/07/cropped-rgstrbg-1-1.png\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-13 20:20:36\"\n    },\n    \"highlight::header_image_data\": {\n        \"value\": {\n            \"url\": \"http://localhost/quiz/wp-content/uploads/2020/07/cropped-rgstrbg-1-1.png\",\n            \"thumbnail_url\": \"http://localhost/quiz/wp-content/uploads/2020/07/cropped-rgstrbg-1-1.png\",\n            \"timestamp\": 1594671631185,\n            \"attachment_id\": 36,\n            \"width\": 300,\n            \"height\": 125\n        },\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-13 20:20:36\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'b2dd8475-54ad-43e9-9619-93c70c376147', '', '', '2020-07-13 20:20:36', '2020-07-13 20:20:36', '', 0, 'http://localhost/quiz/2020/07/13/b2dd8475-54ad-43e9-9619-93c70c376147/', 0, 'customize_changeset', '', 0),
(39, 1, '2020-07-13 20:21:54', '2020-07-13 20:21:54', '{\n    \"highlight::header_spacing\": {\n        \"value\": {\n            \"top\": \"15%\",\n            \"bottom\": \"20%\"\n        },\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-13 20:21:52\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '15bc8775-4903-4c1b-82b5-a68b88233e72', '', '', '2020-07-13 20:21:54', '2020-07-13 20:21:54', '', 0, 'http://localhost/quiz/?p=39', 0, 'customize_changeset', '', 0),
(40, 1, '2020-07-13 20:25:07', '2020-07-13 20:25:07', '{\n    \"highlight::header_image\": {\n        \"value\": \"http://localhost/quiz/wp-content/uploads/2020/07/cropped-loginbg-1-1.png\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-13 20:25:07\"\n    },\n    \"highlight::header_image_data\": {\n        \"value\": {\n            \"attachment_id\": 30,\n            \"url\": \"http://localhost/quiz/wp-content/uploads/2020/07/cropped-loginbg-1-1.png\",\n            \"thumbnail_url\": \"http://localhost/quiz/wp-content/uploads/2020/07/cropped-loginbg-1-1.png\",\n            \"alt_text\": \"\",\n            \"attachment_parent\": 29,\n            \"width\": 300,\n            \"height\": 163,\n            \"timestamp\": [\n                \"1594670916\"\n            ]\n        },\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-13 20:25:07\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '975af964-5f57-48b9-8ca2-5ace44ca8e33', '', '', '2020-07-13 20:25:07', '2020-07-13 20:25:07', '', 0, 'http://localhost/quiz/2020/07/13/975af964-5f57-48b9-8ca2-5ace44ca8e33/', 0, 'customize_changeset', '', 0),
(41, 1, '2020-07-13 20:26:53', '2020-07-13 20:26:53', '{\n    \"highlight::inner_header_background_type\": {\n        \"value\": \"color\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-13 20:26:53\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'e533aa4b-0884-4470-8649-cbc4b24dc144', '', '', '2020-07-13 20:26:53', '2020-07-13 20:26:53', '', 0, 'http://localhost/quiz/2020/07/13/e533aa4b-0884-4470-8649-cbc4b24dc144/', 0, 'customize_changeset', '', 0),
(42, 1, '2020-07-13 20:27:16', '2020-07-13 20:27:16', '{\n    \"highlight::inner_header_background_type\": {\n        \"value\": \"image\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-13 20:27:16\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'c3f58b4c-b99e-4bbf-922b-0b8e12e57b16', '', '', '2020-07-13 20:27:16', '2020-07-13 20:27:16', '', 0, 'http://localhost/quiz/2020/07/13/c3f58b4c-b99e-4bbf-922b-0b8e12e57b16/', 0, 'customize_changeset', '', 0),
(43, 1, '2020-07-13 20:31:45', '2020-07-13 20:31:45', '', 'bg', '', 'inherit', 'open', 'closed', '', 'bg', '', '', '2020-07-13 20:31:52', '2020-07-13 20:31:52', '', 0, 'http://localhost/quiz/wp-content/uploads/2020/07/bg.jpg', 0, 'attachment', 'image/jpeg', 0),
(44, 1, '2020-07-13 20:32:04', '2020-07-13 20:32:04', '', 'cropped-bg.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-bg-jpg', '', '', '2020-07-13 20:32:04', '2020-07-13 20:32:04', '', 0, 'http://localhost/quiz/wp-content/uploads/2020/07/cropped-bg.jpg', 0, 'attachment', 'image/jpeg', 0),
(45, 1, '2020-07-13 20:32:12', '2020-07-13 20:32:12', '{\n    \"highlight::header_image\": {\n        \"value\": \"http://localhost/quiz/wp-content/uploads/2020/07/cropped-bg.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-13 20:32:12\"\n    },\n    \"highlight::header_image_data\": {\n        \"value\": {\n            \"url\": \"http://localhost/quiz/wp-content/uploads/2020/07/cropped-bg.jpg\",\n            \"thumbnail_url\": \"http://localhost/quiz/wp-content/uploads/2020/07/cropped-bg.jpg\",\n            \"timestamp\": 1594672324560,\n            \"attachment_id\": 44,\n            \"width\": 626,\n            \"height\": 341\n        },\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-13 20:32:12\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '401dbff7-9eb6-4ac2-907f-fdc2eee6b9aa', '', '', '2020-07-13 20:32:12', '2020-07-13 20:32:12', '', 0, 'http://localhost/quiz/2020/07/13/401dbff7-9eb6-4ac2-907f-fdc2eee6b9aa/', 0, 'customize_changeset', '', 0),
(47, 1, '2020-07-13 20:54:57', '2020-07-13 20:54:57', '<p>[wppb-register] redirect_url = \"localhost/quiz/log-in\"</p>\n\n<!-- wp:html -->\n<p>Already a member? <a href=\"localhost/quiz/log-in\">Login now</a></p>\n<!-- /wp:html -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Register', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2020-07-13 20:54:57', '2020-07-13 20:54:57', '', 10, 'http://localhost/quiz/2020/07/13/10-revision-v1/', 0, 'revision', '', 0),
(48, 1, '2020-07-13 20:55:41', '2020-07-13 20:55:41', '<p>[wppb-register] [redirect_url = \"localhost/quiz/log-in\"]</p>\n\n<!-- wp:html -->\n<p>Already a member? <a href=\"localhost/quiz/log-in\">Login now</a></p>\n<!-- /wp:html -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Register', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2020-07-13 20:55:41', '2020-07-13 20:55:41', '', 10, 'http://localhost/quiz/2020/07/13/10-revision-v1/', 0, 'revision', '', 0),
(49, 1, '2020-07-13 20:57:09', '2020-07-13 20:57:09', '<p>[wppb-register] [redirect_url=\"localhost/quiz/log-in/\"]</p>\n\n<!-- wp:html -->\n<p>Already a member? <a href=\"localhost/quiz/log-in\">Login now</a></p>\n<!-- /wp:html -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Register', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2020-07-13 20:57:09', '2020-07-13 20:57:09', '', 10, 'http://localhost/quiz/2020/07/13/10-revision-v1/', 0, 'revision', '', 0),
(50, 1, '2020-07-13 20:59:41', '2020-07-13 20:59:41', '<p>[wppb-register] [redirect_url=\"http://localhost/quiz/log-in/\"]</p>\n\n<!-- wp:html -->\n<p>Already a member? <a href=\"localhost/quiz/log-in\">Login now</a></p>\n<!-- /wp:html -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Register', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2020-07-13 20:59:41', '2020-07-13 20:59:41', '', 10, 'http://localhost/quiz/2020/07/13/10-revision-v1/', 0, 'revision', '', 0),
(51, 1, '2020-07-13 21:00:36', '2020-07-13 21:00:36', '<p>[wppb-register redirect_url=\"http://localhost/quiz/log-in/\"]</p>\n\n<!-- wp:html -->\n<p>Already a member? <a href=\"localhost/quiz/log-in\">Login now</a></p>\n<!-- /wp:html -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Register', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2020-07-13 21:00:36', '2020-07-13 21:00:36', '', 10, 'http://localhost/quiz/2020/07/13/10-revision-v1/', 0, 'revision', '', 0),
(52, 1, '2020-07-13 21:01:59', '2020-07-13 21:01:59', '', 'QUIZ', '', 'trash', 'closed', 'closed', '', 'quiz__trashed', '', '', '2020-07-14 07:00:10', '2020-07-14 07:00:10', '', 0, 'http://localhost/quiz/?page_id=52', 0, 'page', '', 0),
(53, 1, '2020-07-13 21:01:59', '2020-07-13 21:01:59', '', 'QUIZ', '', 'inherit', 'closed', 'closed', '', '52-revision-v1', '', '', '2020-07-13 21:01:59', '2020-07-13 21:01:59', '', 52, 'http://localhost/quiz/2020/07/13/52-revision-v1/', 0, 'revision', '', 0),
(54, 1, '2020-07-13 21:03:28', '2020-07-13 21:03:28', '<!-- wp:shortcode -->\n[ays_quiz id=\'3\']\n<!-- /wp:shortcode -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"></div>\n<!-- /wp:buttons -->\n\n<!-- wp:html -->\n<p style=\"color:#757879\" class=\"has-text-color has-text-align-center\"><strong>If you have attempt the quiz please <a href=\"http://localhost/quiz/logout/\">Logout now</a>.</strong></p>\n<!-- /wp:html -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'QUIZ', '', 'publish', 'closed', 'closed', '', 'quiz-2', '', '', '2020-07-16 08:02:31', '2020-07-16 08:02:31', '', 0, 'http://localhost/quiz/?page_id=54', 0, 'page', '', 0),
(55, 1, '2020-07-13 21:03:28', '2020-07-13 21:03:28', '', 'QUIZ', '', 'inherit', 'closed', 'closed', '', '54-revision-v1', '', '', '2020-07-13 21:03:28', '2020-07-13 21:03:28', '', 54, 'http://localhost/quiz/2020/07/13/54-revision-v1/', 0, 'revision', '', 0),
(56, 1, '2020-07-13 21:06:21', '2020-07-13 21:06:21', '<p>[wppb-login redirect_url=\"http://localhost/quiz/quiz-2/\"]</p>\n\n<!-- wp:html -->\n<p>Not a member yet? <a href=\"http://localhost/quiz/register/\">Register now</a></p>\n<!-- /wp:html -->', 'Log In', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2020-07-13 21:06:21', '2020-07-13 21:06:21', '', 12, 'http://localhost/quiz/2020/07/13/12-revision-v1/', 0, 'revision', '', 0),
(57, 1, '2020-07-13 21:11:02', '2020-07-13 21:11:02', '{\n    \"highlight::nav_menu_locations[primary]\": {\n        \"value\": 2,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-13 21:10:03\"\n    },\n    \"highlight::header_nav_transparent\": {\n        \"value\": true,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-13 21:10:03\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '7966a502-7e85-45da-8bbc-148a684ff14b', '', '', '2020-07-13 21:11:02', '2020-07-13 21:11:02', '', 0, 'http://localhost/quiz/?p=57', 0, 'customize_changeset', '', 0),
(58, 1, '2020-07-14 07:00:25', '2020-07-14 07:00:25', '<p>[wppb-login redirect_url=\"http://localhost/quiz/quiz/\"]</p>\n\n<!-- wp:html -->\n<p>Not a member yet? <a href=\"http://localhost/quiz/register/\">Register now</a></p>\n<!-- /wp:html -->', 'Log In', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2020-07-14 07:00:25', '2020-07-14 07:00:25', '', 12, 'http://localhost/quiz/2020/07/14/12-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(59, 1, '2020-07-14 07:00:54', '2020-07-14 07:00:54', '<p>[wppb-login redirect_url=\"http://localhost/quiz/quiz-2/\"]</p>\n\n<!-- wp:html -->\n<p>Not a member yet? <a href=\"http://localhost/quiz/register/\">Register now</a></p>\n<!-- /wp:html -->', 'Log In', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2020-07-14 07:00:54', '2020-07-14 07:00:54', '', 12, 'http://localhost/quiz/2020/07/14/12-revision-v1/', 0, 'revision', '', 0),
(60, 1, '2020-07-14 07:02:08', '2020-07-14 07:02:08', '{\n    \"nav_menu_item[21]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 17,\n            \"object\": \"page\",\n            \"type\": \"post_type\",\n            \"type_label\": \"Page\",\n            \"url\": \"http://localhost/quiz/\",\n            \"title\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 2,\n            \"position\": 2,\n            \"status\": \"publish\",\n            \"original_title\": \"HOME\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-14 07:02:08\"\n    },\n    \"nav_menu_item[22]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 11,\n            \"object\": \"page\",\n            \"type\": \"post_type\",\n            \"type_label\": \"Page\",\n            \"url\": \"http://localhost/quiz/edit-profile/\",\n            \"title\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 2,\n            \"position\": 1,\n            \"status\": \"publish\",\n            \"original_title\": \"Edit Profile\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-14 07:02:08\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '0f3f6dac-95bc-4eb6-87e1-526f01664436', '', '', '2020-07-14 07:02:08', '2020-07-14 07:02:08', '', 0, 'http://localhost/quiz/2020/07/14/0f3f6dac-95bc-4eb6-87e1-526f01664436/', 0, 'customize_changeset', '', 0),
(61, 1, '2020-07-14 07:02:20', '2020-07-14 07:02:20', '{\n    \"nav_menu_item[21]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 17,\n            \"object\": \"page\",\n            \"type\": \"post_type\",\n            \"type_label\": \"Page\",\n            \"url\": \"http://localhost/quiz/\",\n            \"title\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 2,\n            \"position\": 1,\n            \"status\": \"publish\",\n            \"original_title\": \"HOME\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-14 07:02:20\"\n    },\n    \"nav_menu_item[22]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 11,\n            \"object\": \"page\",\n            \"type\": \"post_type\",\n            \"type_label\": \"Page\",\n            \"url\": \"http://localhost/quiz/edit-profile/\",\n            \"title\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 2,\n            \"position\": 2,\n            \"status\": \"publish\",\n            \"original_title\": \"Edit Profile\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-14 07:02:20\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '5a71295b-f96f-451a-966d-6edcceee9caf', '', '', '2020-07-14 07:02:20', '2020-07-14 07:02:20', '', 0, 'http://localhost/quiz/2020/07/14/5a71295b-f96f-451a-966d-6edcceee9caf/', 0, 'customize_changeset', '', 0),
(62, 1, '2020-07-14 07:06:13', '2020-07-14 07:06:13', '{\n    \"highlight::nav_menu_locations[primary]\": {\n        \"value\": 0,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-14 07:06:13\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'fd63a6f0-2aa0-4431-b163-dd5d4a7e880f', '', '', '2020-07-14 07:06:13', '2020-07-14 07:06:13', '', 0, 'http://localhost/quiz/2020/07/14/fd63a6f0-2aa0-4431-b163-dd5d4a7e880f/', 0, 'customize_changeset', '', 0),
(63, 1, '2020-07-14 07:09:44', '2020-07-14 07:09:44', '<!-- wp:uagb/advanced-heading {\"block_id\":\"fa234d2c\",\"classMigrate\":true,\"headingColor\":\"#7b7979\",\"headingTag\":\"h3\",\"level\":3} -->\n<div class=\"wp-block-uagb-advanced-heading uagb-block-fa234d2c\"><h3 class=\"uagb-heading-text\">Thank you! You have successfully attempted the quiz.</h3><div class=\"uagb-separator-wrap\"><div class=\"uagb-separator\"></div></div><p class=\"uagb-desc-text\"></p></div>\n<!-- /wp:uagb/advanced-heading -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"></div>\n<!-- /wp:buttons -->\n\n<!-- wp:uagb/columns {\"block_id\":\"a876cd1e\",\"classMigrate\":true,\"vAlign\":\"center\",\"leftPadding\":50} -->\n<section class=\"wp-block-uagb-columns uagb-columns__wrap uagb-columns__background-undefined uagb-columns__stack-mobile uagb-columns__valign-center uagb-columns__gap-10 alignundefined uagb-block-a876cd1e\"><div class=\"uagb-columns__overlay\"></div><div class=\"uagb-columns__inner-wrap uagb-columns__columns-2\"><!-- wp:uagb/column {\"block_id\":\"021346f0\",\"classMigrate\":true,\"leftPadding\":230,\"colWidth\":50} -->\n<div class=\"wp-block-uagb-column uagb-column__wrap uagb-column__background-undefined uagb-block-021346f0\"><div class=\"uagb-column__overlay\"></div><div class=\"uagb-column__inner-wrap\"><!-- wp:image {\"id\":93,\"width\":206,\"height\":219,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large is-resized\"><img src=\"http://localhost/quiz/wp-content/uploads/2020/07/logout-958x1024.png\" alt=\"img\" class=\"wp-image-93\" width=\"206\" height=\"219\"/></figure>\n<!-- /wp:image --></div></div>\n<!-- /wp:uagb/column -->\n\n<!-- wp:uagb/column {\"block_id\":\"5fb92a79\",\"classMigrate\":true,\"leftPadding\":0,\"rightPadding\":100} -->\n<div class=\"wp-block-uagb-column uagb-column__wrap uagb-column__background-undefined uagb-block-5fb92a79\"><div class=\"uagb-column__overlay\"></div><div class=\"uagb-column__inner-wrap\"><!-- wp:shortcode -->\n[wppb-logout redirect_url=\"http://localhost/quiz/\"]\n<!-- /wp:shortcode -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph --></div></div>\n<!-- /wp:uagb/column --></div></section>\n<!-- /wp:uagb/columns -->\n\n<!-- wp:paragraph {\"className\":\".wp-block-button{text-align:\\u0022center\\u0022;}\"} -->\n<p class=\".wp-block-button{text-align:&quot;center&quot;;}\"></p>\n<!-- /wp:paragraph -->', 'LOGOUT', '', 'publish', 'closed', 'closed', '', 'logout', '', '', '2020-07-16 08:28:09', '2020-07-16 08:28:09', '', 0, 'http://localhost/quiz/?page_id=63', 0, 'page', '', 0),
(64, 1, '2020-07-14 07:09:44', '2020-07-14 07:09:44', '{\n    \"highlight::nav_menu_locations[primary]\": {\n        \"value\": -6779861062438302000,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-14 07:09:44\"\n    },\n    \"nav_menus_created_posts\": {\n        \"value\": [\n            63\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-14 07:07:14\"\n    },\n    \"nav_menu[-6779861062438302000]\": {\n        \"value\": {\n            \"name\": \"top menu\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-14 07:07:14\"\n    },\n    \"nav_menu_item[-103322588091918340]\": {\n        \"value\": {\n            \"object_id\": 63,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"post_type\",\n            \"title\": \"LOGOUT\",\n            \"url\": \"http://localhost/quiz/?page_id=63\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"LOGOUT\",\n            \"nav_menu_term_id\": -6779861062438302000,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-14 07:07:14\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'a241a9a4-3826-43ef-9761-65e9ef1dbe44', '', '', '2020-07-14 07:09:44', '2020-07-14 07:09:44', '', 0, 'http://localhost/quiz/?p=64', 0, 'customize_changeset', '', 0),
(65, 1, '2020-07-14 07:09:44', '2020-07-14 07:09:44', '', 'LOGOUT', '', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2020-07-14 07:09:44', '2020-07-14 07:09:44', '', 63, 'http://localhost/quiz/2020/07/14/63-revision-v1/', 0, 'revision', '', 0),
(67, 1, '2020-07-14 07:12:39', '2020-07-14 07:12:39', '{\n    \"highlight::nav_menu_locations[primary]\": {\n        \"value\": 2,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-14 07:10:46\"\n    },\n    \"nav_menu_item[22]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-14 07:12:39\"\n    },\n    \"nav_menu[3]\": {\n        \"value\": false,\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-14 07:12:39\"\n    },\n    \"nav_menu_item[-1281588324798142500]\": {\n        \"value\": {\n            \"object_id\": 63,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 4,\n            \"type\": \"post_type\",\n            \"title\": \"LOGOUT\",\n            \"url\": \"http://localhost/quiz/?page_id=63\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"LOGOUT\",\n            \"nav_menu_term_id\": 2,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-14 07:12:39\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '2df6cf88-f2b9-43a8-b1f1-0e74bc74eba8', '', '', '2020-07-14 07:12:39', '2020-07-14 07:12:39', '', 0, 'http://localhost/quiz/?p=67', 0, 'customize_changeset', '', 0),
(69, 1, '2020-07-14 07:26:58', '2020-07-14 07:26:58', '{\n    \"highlight::header_nav_sticked\": {\n        \"value\": true,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-14 07:23:15\"\n    },\n    \"highlight::header_nav_border\": {\n        \"value\": true,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-14 07:23:15\"\n    },\n    \"highlight::header_nav_border_color\": {\n        \"value\": \"rgb(161, 158, 158)\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-14 07:24:16\"\n    },\n    \"highlight::header_nav_border_thickness\": {\n        \"value\": \"1\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-14 07:23:15\"\n    },\n    \"highlight::inner_header_nav_bar_type\": {\n        \"value\": \"default\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-14 07:25:15\"\n    },\n    \"highlight::inner_header_nav_border\": {\n        \"value\": true,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-14 07:25:15\"\n    },\n    \"highlight::inner_header_nav_border_thickness\": {\n        \"value\": \"1\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-14 07:25:15\"\n    },\n    \"highlight::inner_header_nav_transparent\": {\n        \"value\": true,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-14 07:25:15\"\n    },\n    \"highlight::enable_top_bar\": {\n        \"value\": false,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-14 07:26:58\"\n    },\n    \"highlight::inner_header_nav_border_color\": {\n        \"value\": \"rgb(255, 255, 255)\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-14 07:26:15\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '4de703b0-7145-4856-b3a7-ef332ae98da3', '', '', '2020-07-14 07:26:58', '2020-07-14 07:26:58', '', 0, 'http://localhost/quiz/?p=69', 0, 'customize_changeset', '', 0),
(70, 1, '2020-07-14 07:39:04', '2020-07-14 07:39:04', '{\n    \"show_on_front\": {\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-14 07:33:32\"\n    },\n    \"page_on_front\": {\n        \"value\": \"17\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-14 07:31:28\"\n    },\n    \"nav_menu_item[68]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-14 07:38:32\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'ca195cc0-1a68-4c21-bf8a-3f1c49753b9b', '', '', '2020-07-14 07:39:04', '2020-07-14 07:39:04', '', 0, 'http://localhost/quiz/?p=70', 0, 'customize_changeset', '', 0),
(72, 1, '2020-07-14 08:03:25', '2020-07-14 08:03:25', '{\n    \"custom_css[highlight]\": {\n        \"value\": \".main-menu{\\n\\tdisplay: none\\n}\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-14 08:03:18\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'a42fd772-f180-402f-93b1-f80b5a893338', '', '', '2020-07-14 08:03:25', '2020-07-14 08:03:25', '', 0, 'http://localhost/quiz/?p=72', 0, 'customize_changeset', '', 0),
(73, 1, '2020-07-14 08:03:25', '2020-07-14 08:03:25', '', 'highlight', '', 'publish', 'closed', 'closed', '', 'highlight', '', '', '2020-07-14 08:13:32', '2020-07-14 08:13:32', '', 0, 'http://localhost/quiz/2020/07/14/highlight/', 0, 'custom_css', '', 0),
(74, 1, '2020-07-14 08:03:25', '2020-07-14 08:03:25', '.main-menu{\n	display: none\n}', 'highlight', '', 'inherit', 'closed', 'closed', '', '73-revision-v1', '', '', '2020-07-14 08:03:25', '2020-07-14 08:03:25', '', 73, 'http://localhost/quiz/2020/07/14/73-revision-v1/', 0, 'revision', '', 0),
(75, 1, '2020-07-14 08:07:59', '2020-07-14 08:07:59', '<div id=\"features-2\"  style=\"background-color:#ffffff\"  data-label=\"Features\" data-id=\"features-ov-4-mc\" data-export-id=\"features-ov-4-mc\" data-category=\"features\" class=\"features-ov-4-mc content-section content-section-spacing\"><div class=\"gridContainer\"> <div data-type=\"row\" class=\"row spaced-cols text-center\"><div class=\"col-xs-12 col-sm-4 col-padding\"> <i class=\"fa icon fa-clone large shadow-large-black round aligncenter reverse color1\"></i> <div data-type=\"column\"> <h5 class=\"font-400\">RESPONSIVE DESIGN</h5> <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p></div> </div> <div class=\"col-xs-12 col-sm-4 col-padding\"> <i class=\"fa icon fa-cogs large shadow-large-black round aligncenter reverse color2\"></i> <div data-type=\"column\"><h5 class=\"font-400\">SUPER FEATURES</h5> <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p></div> </div> <div class=\"col-xs-12 col-sm-4 col-padding\"> <i class=\"fa icon fa-magic large shadow-large-black round aligncenter reverse color4\"></i> <div data-type=\"column\"><h5 class=\"font-400\">DRAG AND DROP</h5> <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p></div> </div></div> </div></div><div id=\"about-1\"  style=\"background-color:#f5fafd\"  data-label=\"About\" data-id=\"about-images-right-section-mc\" data-export-id=\"about-images-right-section-mc\" data-bullets-visibility=\"true\" data-category=\"about\" class=\"about-images-right-section-mc content-section content-section-spacing\"><div class=\"gridContainer\"> <div class=\"row middle-sm text-center\"><div class=\"col-sm-5 content-left-sm\" data-type=\"column\"> <h5>WHAT WE DO</h5> <h2>We provide <br/> <span style=\"font-family:Playfair Display,sans-serif;font-weight:700;font-style:italic;\" href=\"#\">creative solutions</span> for all your needs!</h2> <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p> <a class=\"button color1\" href=\"#\">GET STARTED TODAY</a></div> <div class=\"col-sm-7 space-bottom-xs\"><div class=\"image-group-side-3-img\"> <img class=\"topimg shadow-large\" src=\"http://localhost/quiz/wp-content/themes/highlight/customizer/sections/images/cropped-paper-571937_1920.jpg\"/> <img class=\"rightimg shadow-large\" src=\"http://localhost/quiz/wp-content/themes/highlight/customizer/sections/images/cropped-cropped-background-2726039-6x4.jpg\"/> <div class=\"leftimg\"> <img class=\"shadow-large\" src=\"http://localhost/quiz/wp-content/themes/highlight/customizer/sections/images/cropped-girl-2940655_1920.jpg\"/></div> </div></div> </div></div> </div><div id=\"features-1\"  style=\"background-color:#ffffff\"  data-label=\"Features\" data-id=\"features-16-card-bordered-mc\" data-export-id=\"features-16-card-bordered-mc\" data-bullets-visibility=\"true\" data-category=\"features\" class=\"features-16-card-bordered-mc content-section content-section-spacing\"><div class=\"gridContainer\"> <div class=\"row text-center\"><div class=\"section-title-col\" data-type=\"column\"> <h5>WHAT WE OFFER</h5> <h2>We provide creative solutions!</h2> <p class=\"lead\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation.</p></div> </div> <div class=\"row spaced-cols\" data-type=\"row\"> <div class=\"col-xs-12 col-sm-6 col-md-4\"> <div class=\"card no-padding bordered y-move\"> <img class=\"face\" src=\"http://localhost/quiz/wp-content/themes/highlight/customizer/sections/images/agreement-2548139_1920.jpg\"/> <div data-type=\"column\" class=\"col-padding-small col-padding-small-xs description-container\"> <h4 class=\"font-500\">Responsive Design</h4> <p class=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation.</p></div> <div data-type=\"column\" class=\"col-padding-small col-padding-small-xs read-more-container\"><a class=\"read-more\">learn more</a></div> </div></div> <div class=\"col-xs-12 col-sm-6 col-md-4\"><div class=\"card no-padding bordered y-move\"> <img class=\"face\" src=\"http://localhost/quiz/wp-content/themes/highlight/customizer/sections/images/pencils-452238_1920.jpg\"/> <div data-type=\"column\" class=\"col-padding-small col-padding-small-xs description-container\"> <h4 class=\"font-500\">Responsive Design</h4> <p class=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation.</p></div> <div data-type=\"column\" class=\"col-padding-small col-padding-small-xs read-more-container\"><a class=\"read-more\">learn more</a></div> </div></div> <div class=\"col-xs-12 col-sm-6 col-md-4\"><div class=\"card no-padding bordered y-move\"> <img class=\"face\" src=\"http://localhost/quiz/wp-content/themes/highlight/customizer/sections/images/cropped-startup-849804_1920.jpg\"/> <div data-type=\"column\" class=\"col-padding-small col-padding-small-xs description-container\"> <h4 class=\"font-500\">Responsive Design</h4> <p class=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation.</p></div> <div data-type=\"column\" class=\"col-padding-small col-padding-small-xs read-more-container\"><a class=\"read-more\">learn more</a></div> </div></div> </div></div> </div><div id=\"content-1\"  style=\"background-color:#f5fafd\"  data-label=\"Content\" data-id=\"content-7-mc\" data-export-id=\"content-7-mc\" data-category=\"content\" class=\"content-7-mc content-section content-section-spacing\"><div class=\"gridContainer\"> <div class=\"row middle-sm\"><div class=\"col-sm-6 space-bottom-xs\" data-type=\"column\"> <h2>Web Design & Development</h2> <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p> <a class=\"button color1\" href=\"#\">LEARN MORE</a></div> <div class=\"col-sm-6\" data-type=\"column\"> <img class=\"shadow-large\" src=\"http://localhost/quiz/wp-content/themes/highlight/customizer/sections/images/cropped-hero-3.jpg\"></div> </div></div> </div><div id=\"content-2\"  style=\"background-color:#ffffff\"  data-label=\"Content\" data-id=\"content-8-mc\" data-export-id=\"content-8-mc\" data-category=\"content\" class=\"content-8-mc content-section content-section-spacing\"><div class=\"gridContainer\"> <div class=\"row middle-sm\"><div class=\"col-sm-6 space-bottom-xs space-top-xs\" data-type=\"column\"> <img class=\"shadow-large\" src=\"http://localhost/quiz/wp-content/themes/highlight/customizer/sections/images/business-3560916_1920.jpg\"></div> <div class=\"col-sm-6\" data-type=\"column\"><h2>App Design & Development</h2> <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p> <a class=\"button color1\" href=\"#\">LEARN MORE</a></div> </div></div> </div><div id=\"portfolio-1\"  data-label=\"Portfolio\" data-id=\"portfolio-5-mc\" data-export-id=\"portfolio-5-mc\" data-bullets-visibility=\"true\" data-category=\"portfolio\" class=\"portfolio-5-mc content-section content-section-spacing section-title-col-white-text bg-color1\"><div class=\"gridContainer\"> <div class=\"row text-center\"><div class=\"section-title-col\" data-type=\"column\"> <h5>OUR WORK</h5> <h2>Portfolio</h2> <p class=\"lead\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua, ut aliquip ex ea commodo consequat.</p></div> </div> <div class=\"row space-bottom spaced-cols\" data-type=\"row\"> <div class=\"col-xs-12 col-sm-4 text-center\"> <div class=\"card no-padding bordered\"> <div data-hover-fx=\"portfolio-6\" class=\"contentswap-effect contentswap-overlay\" style=\"float:none;margin:0;width:100%;\"> <div class=\"initial-image\" style=\"float:none;margin:0;\"> <img data-size=\"500x333\" src=\"http://localhost/quiz/wp-content/themes/highlight/customizer/sections/images/cropped-pf-1.jpg\"/></div> <div class=\"overlay bg-color6\" style=\"display:block;transition:opacity 800ms ease 0s;-webkit-transition-timing-function:ease;-moz-transition-timing-function:ease;-o-transition-timing-function:ease;transition-timing-function:ease;\"></div> <div class=\"swap-inner col-xs-12\" style=\"display:block;transition:all 800ms ease 0s;background-color:rgba(0,0,0,0);margin-top:0;\"> <div class=\"row full-height-row middle-xs middle-sm\"> <div class=\"col-xs-12 text-center content-holder\"> <a class=\"button small color2\" href=\"#\">View case study</a></div> </div></div> </div> <div class=\"col-xs-12\"> <div class=\"space-bottom space-top\" data-type=\"column\"> <h5 class=\"\">Project Name</h5> <p class=\"small italic\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore</p></div> </div></div> </div> <div class=\"col-xs-12 col-sm-4 text-center\"> <div class=\"card no-padding bordered\"> <div data-hover-fx=\"portfolio-6\" class=\"contentswap-effect contentswap-overlay\" style=\"float:none;margin:0;width:100%;\"> <div class=\"initial-image\" style=\"float:none;margin:0;\"> <img data-size=\"500x333\" src=\"http://localhost/quiz/wp-content/themes/highlight/customizer/sections/images/cropped-pf-3.jpg\"/></div> <div class=\"overlay bg-color6\" style=\"display:block;transition:opacity 800ms ease 0s;-webkit-transition-timing-function:ease;-moz-transition-timing-function:ease;-o-transition-timing-function:ease;transition-timing-function:ease;\"></div> <div class=\"swap-inner col-xs-12\" style=\"display:block;transition:all 800ms ease 0s;background-color:rgba(0,0,0,0);margin-top:0;\"> <div class=\"row full-height-row middle-xs middle-sm\"> <div class=\"col-xs-12 text-center content-holder\"> <a class=\"button small color2\" href=\"#\">View case study</a></div> </div></div> </div> <div class=\"col-xs-12\"> <div class=\"space-bottom space-top\" data-type=\"column\"> <h5 class=\"\">Project Name</h5> <p class=\"small italic\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore</p></div> </div></div> </div> <div class=\"col-xs-12 col-sm-4 text-center\"> <div class=\"card no-padding bordered\"> <div data-hover-fx=\"portfolio-6\" class=\"contentswap-effect contentswap-overlay\" style=\"float:none;margin:0;width:100%;\"> <div class=\"initial-image\" style=\"float:none;margin:0;\"> <img data-size=\"500x333\" src=\"http://localhost/quiz/wp-content/themes/highlight/customizer/sections/images/cropped-pf-2.jpg\"/></div> <div class=\"overlay bg-color6\" style=\"display:block;transition:opacity 800ms ease 0s;-webkit-transition-timing-function:ease;-moz-transition-timing-function:ease;-o-transition-timing-function:ease;transition-timing-function:ease;\"></div> <div class=\"swap-inner col-xs-12\" style=\"display:block;transition:all 800ms ease 0s;background-color:rgba(0,0,0,0);margin-top:0;\"> <div class=\"row full-height-row middle-xs middle-sm\"> <div class=\"col-xs-12 text-center content-holder\"> <a class=\"button small color2\" href=\"#\">View case study</a></div> </div></div> </div> <div class=\"col-xs-12\"> <div class=\"space-bottom space-top\" data-type=\"column\"> <h5 class=\"\">Project Name</h5> <p class=\"small italic\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore</p></div> </div></div> </div></div> <div class=\"row\"><div data-type=\"column\" class=\"col-xs-12 text-center\"> <a class=\"button color2 y-move\" href=\"#\">View Portfolio</a></div> </div></div> </div><div id=\"testimonials-1\"  style=\"background-color:#ffffff\"  data-label=\"Testimonials\" data-id=\"testimonials-5-mc\" data-export-id=\"testimonials-5-mc\" data-category=\"testimonials\" class=\"testimonials-5-mc content-section content-section-spacing\"><div class=\"gridContainer\"> <div class=\"row\"><div data-type=\"column\" class=\"section-title-col\"> <h5>OUR AWESOME CLIENTS</h5> <h2>Client Testimonials</h2> <p class=\"lead\">Don\'t take our word for it - here\'s what our clients say:</p></div> </div> <div class=\"row spaced-cols content-center-sm\" data-type=\"row\"> <div class=\"col-sm-4\"> <div class=\"card y-move bordered\" data-type=\"column\"> <i class=\"fa fa-quote-right icon color1 small quotation-icon\"></i> <p class=\"text-center\">Do you sometimes have the feeling that you\'re running into the same obstacles over and over again? Many of my conflicts have the same feel to them, like “Hey, I think I\'ve been here before,</p> <img src=\"http://localhost/quiz/wp-content/themes/highlight/customizer/sections/images/team-1.jpg\" class=\"round icon\"> <h6>John Doe</h6> <p class=\"small italic\">Company name</p></div> </div> <div class=\"col-sm-4\"> <div class=\"card y-move bordered\" data-type=\"column\"> <i class=\"fa fa-quote-right icon color1 small quotation-icon\"></i> <p class=\"text-center\">Do you sometimes have the feeling that you\'re running into the same obstacles over and over again? Many of my conflicts have the same feel to them, like “Hey, I think I\'ve been here before,</p> <img src=\"http://localhost/quiz/wp-content/themes/highlight/customizer/sections/images/team-3.jpg\" class=\"round icon\"> <h6>John Doe</h6> <p class=\"small italic\">Company name</p></div> </div> <div class=\"col-sm-4\"> <div class=\"card y-move bordered\" data-type=\"column\"> <i class=\"fa fa-quote-right icon color1 small quotation-icon\"></i> <p class=\"text-center\">Do you sometimes have the feeling that you\'re running into the same obstacles over and over again? Many of my conflicts have the same feel to them, like “Hey, I think I\'ve been here before,</p> <img src=\"http://localhost/quiz/wp-content/themes/highlight/customizer/sections/images/team-7.jpg\" class=\"round icon\"> <h6>John Doe</h6> <p class=\"small italic\">Company name</p></div> </div></div> </div></div><div id=\"cta-1\"  style=\"background-color:#f5fafd\"  data-label=\"Cta\" data-id=\"cta-blue-section-mc\" data-export-id=\"cta-blue-section-mc\" data-category=\"cta\" class=\"cta-blue-section-mc content-section content-section-spacing le_cocktail white-text\"><div class=\"gridContainer\"> <div class=\"row middle-xs\"><div class=\"col-sm-8 space-bottom-xs\" data-type=\"column\"> <h2>Join us! <span class=\"font-300\">It will only take a minute</span></h2> </div> <div class=\"col-sm-4 end-sm\" data-type=\"column\"> <a class=\"button color2\" href=\"#\">GET STARTED TODAY</a></div> </div></div> </div><div id=\"team-1\"  style=\"background-color:#ffffff\"  data-label=\"Team\" data-id=\"team-5-mc\" data-export-id=\"team-5-mc\" data-bullets-visibility=\"true\" data-category=\"team\" class=\"team-5-mc content-section content-section-spacing\"><div class=\"gridContainer\"> <div class=\"row text-center\"><div class=\"section-title-col\" data-type=\"column\"> <h5>OUR AWESOME TEAM</h5> <h2>Our Team</h2> <p class=\"lead\">There are number of instructions to be followed at the time of refilling an inket cartridge. So whenever your printer ink runs dry you need to follow the below steps for inkjet cartridge refill.</p></div> </div> <div class=\"row spaced-cols content-center-sm\" data-type=\"row\"> <div class=\"col-xs-12 col-sm-6 col-md-3 col-padding\"> <div class=\"row \"> <div data-type=\"column\" class=\"col-xs-12 col-sm-12\"> <img class=\"round face\" src=\"http://localhost/quiz/wp-content/themes/highlight/customizer/sections/images/team-1.jpg\"/> <h4 class=\"font-500\">Team Member</h4> <p class=\"italic\">job title</p> <p>Point of Sale hardware, the till at a shop check out, has become very complex over the past ten years.</p> <div class=\"social-icons-group\" data-type=\"group\"> <a href=\"#\"><i class=\"gray fa icon fa-facebook-square small \"></i></a> <a href=\"#\"><i class=\"gray fa icon fa-twitter-square small \"></i></a> <a href=\"#\"><i class=\"gray fa icon fa-linkedin-square small \"></i></a> <a href=\"#\"><i class=\"gray fa icon fa-google-plus-square small \"></i></a></div> </div></div> </div> <div class=\"col-xs-12 col-sm-6 col-md-3 col-padding\"> <div class=\"row \"> <div data-type=\"column\" class=\"col-xs-12 col-sm-12\"> <img class=\"round face\" src=\"http://localhost/quiz/wp-content/themes/highlight/customizer/sections/images/team-7.jpg\"/> <h4 class=\"font-500\">Team Member</h4> <p class=\"italic\">job title</p> <p>Point of Sale hardware, the till at a shop check out, has become very complex over the past ten years.</p> <div class=\"social-icons-group\" data-type=\"group\"> <a href=\"#\"><i class=\"gray fa icon fa-facebook-square small \"></i></a> <a href=\"#\"><i class=\"gray fa icon fa-twitter-square small \"></i></a> <a href=\"#\"><i class=\"gray fa icon fa-linkedin-square small \"></i></a> <a href=\"#\"><i class=\"gray fa icon fa-google-plus-square small \"></i></a></div> </div></div> </div> <div class=\"col-xs-12 col-sm-6 col-md-3 col-padding\"> <div class=\"row \"> <div data-type=\"column\" class=\"col-xs-12 col-sm-12\"> <img class=\"round face\" src=\"http://localhost/quiz/wp-content/themes/highlight/customizer/sections/images/team-3.jpg\"/> <h4 class=\"font-500\">Team Member</h4> <p class=\"italic\">job title</p> <p>Point of Sale hardware, the till at a shop check out, has become very complex over the past ten years.</p> <div class=\"social-icons-group\" data-type=\"group\"> <a href=\"#\"><i class=\"gray fa icon fa-facebook-square small \"></i></a> <a href=\"#\"><i class=\"gray fa icon fa-twitter-square small \"></i></a> <a href=\"#\"><i class=\"gray fa icon fa-linkedin-square small \"></i></a> <a href=\"#\"><i class=\"gray fa icon fa-google-plus-square small \"></i></a></div> </div></div> </div> <div class=\"col-xs-12 col-sm-6 col-md-3 col-padding\"> <div class=\"row \"> <div data-type=\"column\" class=\"col-xs-12 col-sm-12\"> <img class=\"round face\" src=\"http://localhost/quiz/wp-content/themes/highlight/customizer/sections/images/team-4.jpg\"/> <h4 class=\"font-500\">Team Member</h4> <p class=\"italic\">job title</p> <p>Point of Sale hardware, the till at a shop check out, has become very complex over the past ten years.</p> <div class=\"social-icons-group\" data-type=\"group\"> <a href=\"#\"><i class=\"gray fa icon fa-facebook-square small \"></i></a> <a href=\"#\"><i class=\"gray fa icon fa-twitter-square small \"></i></a> <a href=\"#\"><i class=\"gray fa icon fa-linkedin-square small \"></i></a> <a href=\"#\"><i class=\"gray fa icon fa-google-plus-square small \"></i></a></div> </div></div> </div></div> </div></div><div id=\"latest-news-1\"  style=\"background-color:#f5fafd\"  data-label=\"Latest-news\" data-id=\"blog-section-mc\" data-export-id=\"blog-section-mc\" data-category=\"latest_news\" class=\"blog-section-mc blog-section-standard content-section content-section-spacing\"><div class=\"gridContainer\"> <div class=\"row\"><div data-type=\"column\" class=\"section-title-col\"> <h5>WE LOVE BLOGGING</h5> <h2>Latest from Our Blog</h2> <p class=\"lead\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p></div> </div> <div class=\"row\"> <div data-type=\"row\" data-dynamic-columns=\"handled\" data-content-shortcode=\"mesmerize_latest_news posts=&quot;3&quot;\">[mesmerize_latest_news]</div></div> <div class=\"row\"><div class=\"text-center\"> <a class=\"button color1\" data-attr-shortcode=\"href:mesmerize_blog_link\" href=\"[mesmerize_blog_link]\">VIEW OUR BLOG</a></div> </div></div></div><div id=\"contact-1\"  style=\"background-color:#ffffff\"  data-label=\"Contact\" data-id=\"contact-1-mc\" data-export-id=\"contact-1-mc\" data-bullets-visibility=\"true\" data-category=\"contact\" class=\"contact-1-mc content-section content-section-spacing white-text\" data-parallax-depth=\"20\"><div class=\"gridContainer\"> <div class=\"row text-center\"><div class=\"section-title-col\" data-type=\"column\"> <h5>CONNECT WITH US</h5> <h2>Contact us</h2> <p class=\"lead\">With the Internet spreading linke wildfire and reaching every part of our daily life, more and more traffic is directed to websites in search for information.</p></div> </div> <div class=\"row text-center\"> <div class=\"col-xs-12 col-sm-8 col-sm-offset-2 contact-form-wrapper inline-info\"> <div class=\"card large-padding\"> <div class=\"\" data-content-shortcode=\"mesmerize_contact_form\" data-editable=\"true\">[mesmerize_contact_form]</div></div> </div></div> </div></div>', 'Front Page', '', 'publish', 'closed', 'closed', '', 'mesmerize', '', '', '2020-07-14 08:07:59', '2020-07-14 08:07:59', '', 0, 'http://localhost/quiz/mesmerize/', 0, 'page', '', 0),
(76, 1, '2020-07-14 08:07:59', '2020-07-14 08:07:59', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2020-07-14 08:07:59', '2020-07-14 08:07:59', '', 0, 'http://localhost/quiz/blog/', 0, 'page', '', 0),
(77, 1, '2020-07-14 08:13:32', '2020-07-14 08:13:32', '{\n    \"custom_css[highlight]\": {\n        \"value\": \"\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-14 08:11:53\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '417259ec-1287-450f-b9e1-608d49bd7787', '', '', '2020-07-14 08:13:32', '2020-07-14 08:13:32', '', 0, 'http://localhost/quiz/?p=77', 0, 'customize_changeset', '', 0),
(78, 1, '2020-07-14 08:13:32', '2020-07-14 08:13:32', '', 'highlight', '', 'inherit', 'closed', 'closed', '', '73-revision-v1', '', '', '2020-07-14 08:13:32', '2020-07-14 08:13:32', '', 73, 'http://localhost/quiz/2020/07/14/73-revision-v1/', 0, 'revision', '', 0),
(79, 1, '2020-07-14 08:22:35', '2020-07-14 08:22:35', '<!-- wp:paragraph -->\n<p>.main-navigation { display: none; }</p>\n<!-- /wp:paragraph -->', 'QUIZ', '', 'inherit', 'closed', 'closed', '', '54-revision-v1', '', '', '2020-07-14 08:22:35', '2020-07-14 08:22:35', '', 54, 'http://localhost/quiz/2020/07/14/54-revision-v1/', 0, 'revision', '', 0),
(80, 1, '2020-07-14 08:36:44', '2020-07-14 08:36:44', '[text* Name class:name placeholder \"Enter your name\"]\r\n\r\n[email* E-mail class:email placeholder \"Enter your email adderss\"]\r\n\r\n[tel* PhoneNumber class:phone placeholder \"Enter your phone number\"]\r\n\r\n[text* Message class:message placeholder \"Enter your message\"]\r\n\r\n[submit \"Submit\"]\n1\nwp quiz \"[Contact form]\"\nwp quiz <abiha.amir456@gmail.com>\nabiha.amir456@gmail.com\n<h2>Contact form received from your website</h2>\r\n\r\nFrom : abiha.amir456@gmail.com\r\n\r\n<h3>User Details :</h3>\r\n\r\n<strong>Name</strong>: [Name]\r\n<strong>Email address</strong>: [E-mail]\r\n<strong>Contact no</strong>: [PhoneNumber]\r\n<strong>Message</strong>: [Message]\n\n\n1\n\n\nwp quiz \"[your-subject]\"\nwp quiz <abiha.amir456@gmail.com>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on wp quiz (http://localhost/quiz)\nReply-To: abiha.amir456@gmail.com\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2020-07-14 09:07:58', '2020-07-14 09:07:58', '', 0, 'http://localhost/quiz/?post_type=wpcf7_contact_form&#038;p=80', 0, 'wpcf7_contact_form', '', 0),
(81, 1, '2020-07-14 09:01:15', '2020-07-14 09:01:15', '<!-- wp:paragraph {\"align\":\"center\",\"customTextColor\":\"#8f9091\",\"fontSize\":\"medium\"} -->\n<p style=\"color:#8f9091\" class=\"has-text-color has-text-align-center has-medium-font-size\"><strong>If you have any query please contact us. Send us a message and we\'ll respond as soon as possible</strong>.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:shortcode -->\n[contact-form-7 id=\"80\" title=\"Contact form 1\"]\n<!-- /wp:shortcode -->', 'CONTACT US', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2020-07-14 09:01:15', '2020-07-14 09:01:15', '', 20, 'http://localhost/quiz/2020/07/14/20-revision-v1/', 0, 'revision', '', 0),
(82, 1, '2020-07-14 11:17:03', '2020-07-14 11:17:03', '', '', '', 'publish', 'closed', 'closed', '', '82', '', '', '2020-07-14 11:25:38', '2020-07-14 11:25:38', '', 0, 'http://localhost/quiz/?post_type=fca_qc_quiz&#038;p=82', 0, 'fca_qc_quiz', '', 0),
(83, 1, '2020-07-14 11:05:35', '2020-07-14 11:05:35', '', 'quiz', '', 'inherit', 'open', 'closed', '', 'quiz', '', '', '2020-07-14 11:05:43', '2020-07-14 11:05:43', '', 0, 'http://localhost/quiz/wp-content/uploads/2020/07/quiz.png', 0, 'attachment', 'image/png', 0),
(84, 1, '2020-07-14 11:16:10', '2020-07-14 11:16:10', '', 'rslt', '', 'inherit', 'open', 'closed', '', 'rslt', '', '', '2020-07-14 11:16:19', '2020-07-14 11:16:19', '', 0, 'http://localhost/quiz/wp-content/uploads/2020/07/rslt.png', 0, 'attachment', 'image/png', 0),
(85, 1, '2020-07-14 11:22:14', '2020-07-14 11:22:14', '<!-- wp:shortcode -->\n[quiz-cat id=\"82\"]\n<!-- /wp:shortcode -->', 'QUIZ', '', 'inherit', 'closed', 'closed', '', '54-revision-v1', '', '', '2020-07-14 11:22:14', '2020-07-14 11:22:14', '', 54, 'http://localhost/quiz/2020/07/14/54-revision-v1/', 0, 'revision', '', 0),
(87, 1, '2020-07-14 11:44:29', '2020-07-14 11:44:29', '<!-- wp:shortcode -->\n[quiz-cat id=\"82\"]\n<!-- /wp:shortcode -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"><!-- wp:button {\"customTextColor\":\"#f8fbfd\",\"borderRadius\":11,\"gradient\":\"vivid-cyan-blue-to-vivid-purple\",\"className\":\"is-style-outline\"} -->\n<div class=\"wp-block-button is-style-outline\"><a class=\"wp-block-button__link has-text-color has-background has-vivid-cyan-blue-to-vivid-purple-gradient-background\" style=\"color:#f8fbfd;border-radius:11px\" rel=\"http://localhost/quiz/\">LOGOUT</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'QUIZ', '', 'inherit', 'closed', 'closed', '', '54-revision-v1', '', '', '2020-07-14 11:44:29', '2020-07-14 11:44:29', '', 54, 'http://localhost/quiz/2020/07/14/54-revision-v1/', 0, 'revision', '', 0),
(88, 1, '2020-07-14 11:45:33', '2020-07-14 11:45:33', '<!-- wp:shortcode -->\n[quiz-cat id=\"82\"]\n<!-- /wp:shortcode -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"></div>\n<!-- /wp:buttons -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'QUIZ', '', 'inherit', 'closed', 'closed', '', '54-revision-v1', '', '', '2020-07-14 11:45:33', '2020-07-14 11:45:33', '', 54, 'http://localhost/quiz/2020/07/14/54-revision-v1/', 0, 'revision', '', 0),
(91, 1, '2020-07-14 12:00:46', '2020-07-14 12:00:46', '<!-- wp:html -->\n<p>If you have attempt the quiz please <a href=\"http://localhost/quiz/logout/\">Logout</a></p>\n<!-- /wp:html -->', 'Untitled Reusable Block', '', 'trash', 'closed', 'closed', '', 'untitled-reusable-block__trashed', '', '', '2020-07-14 12:01:01', '2020-07-14 12:01:01', '', 0, 'http://localhost/quiz/2020/07/14/untitled-reusable-block/', 0, 'wp_block', '', 0),
(92, 1, '2020-07-14 12:04:01', '2020-07-14 12:04:01', '<!-- wp:shortcode -->\n[quiz-cat id=\"82\"]\n<!-- /wp:shortcode -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"></div>\n<!-- /wp:buttons -->\n\n<!-- wp:html -->\n<p style=\"color:#5c5e5e\" class=\"has-text-color has-text-align-center\"><strong>If you have attempt the quiz please <a href=\"http://localhost/quiz/logout/\">Logout</a></strong></p>\n<!-- /wp:html -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'QUIZ', '', 'inherit', 'closed', 'closed', '', '54-revision-v1', '', '', '2020-07-14 12:04:01', '2020-07-14 12:04:01', '', 54, 'http://localhost/quiz/2020/07/14/54-revision-v1/', 0, 'revision', '', 0),
(93, 1, '2020-07-14 12:14:30', '2020-07-14 12:14:30', '', 'logout', '', 'inherit', 'open', 'closed', '', 'logout-2', '', '', '2020-07-14 13:29:07', '2020-07-14 13:29:07', '', 63, 'http://localhost/quiz/wp-content/uploads/2020/07/logout.png', 0, 'attachment', 'image/png', 0),
(95, 1, '2020-07-14 12:29:31', '2020-07-14 12:29:31', '<!-- wp:uagb/advanced-heading {\"block_id\":\"f1e753b2\",\"classMigrate\":true,\"headingColor\":\"#7b7979\",\"headingTag\":\"h3\",\"level\":3} -->\n<div class=\"wp-block-uagb-advanced-heading uagb-block-f1e753b2\"><h3 class=\"uagb-heading-text\">Thank you! You have successfully attempted the quiz.</h3><div class=\"uagb-separator-wrap\"><div class=\"uagb-separator\"></div></div><p class=\"uagb-desc-text\">Please <a href=\"\" http:=\"\" localhost=\"\" quiz=\"\">Logout Now</a>.</p></div>\n<!-- /wp:uagb/advanced-heading -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"></div>\n<!-- /wp:buttons -->\n\n<!-- wp:image {\"align\":\"center\",\"id\":93,\"width\":226,\"height\":241,\"sizeSlug\":\"large\"} -->\n<div class=\"wp-block-image\"><figure class=\"aligncenter size-large is-resized\"><img src=\"http://localhost/quiz/wp-content/uploads/2020/07/logout-958x1024.png\" alt=\"\" class=\"wp-image-93\" width=\"226\" height=\"241\"/></figure></div>\n<!-- /wp:image -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"></div>\n<!-- /wp:buttons -->\n\n<!-- wp:paragraph {\"className\":\".wp-block-button{text-align:\\u0022center\\u0022;}\"} -->\n<p class=\".wp-block-button{text-align:&quot;center&quot;;}\"></p>\n<!-- /wp:paragraph -->', 'LOGOUT', '', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2020-07-14 12:29:31', '2020-07-14 12:29:31', '', 63, 'http://localhost/quiz/2020/07/14/63-revision-v1/', 0, 'revision', '', 0),
(96, 1, '2020-07-16 08:56:17', '2020-07-16 08:56:17', '<!-- wp:uagb/section {\"classMigrate\":true,\"block_id\":\"16cf722c\"} -->\n<section class=\"wp-block-uagb-section uagb-section__wrap uagb-section__background-undefined uagb-block-16cf722c\"><div class=\"uagb-section__overlay\"></div><div class=\"uagb-section__inner-wrap\"><!-- wp:uagb/advanced-heading {\"block_id\":\"69edd71c\",\"classMigrate\":true,\"headingColor\":\"#5c5d5e\",\"separatorColor\":\"#03a9f4\",\"headingTag\":\"h3\",\"level\":3,\"separatorWidth\":35} -->\n<div class=\"wp-block-uagb-advanced-heading uagb-block-69edd71c\"><h3 class=\"uagb-heading-text\">We are pleased to have you here.</h3><div class=\"uagb-separator-wrap\"><div class=\"uagb-separator\"></div></div><p class=\"uagb-desc-text\"></p></div>\n<!-- /wp:uagb/advanced-heading -->\n\n<!-- wp:paragraph {\"align\":\"center\",\"customTextColor\":\"#292929\",\"customFontSize\":18} -->\n<p style=\"color:#292929;font-size:18px\" class=\"has-text-color has-text-align-center\">A quiz gives people fun and interactive experience. It is an effort to inspire people and you can test your knowledge regarding WordPress through it. lets gather on one platform and compete with others.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"align\":\"center\",\"customTextColor\":\"#292929\",\"customFontSize\":18} -->\n<p style=\"color:#292929;font-size:18px\" class=\"has-text-color has-text-align-center\">Register yourself here and test your education because it is made for You!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:uagb/advanced-heading {\"block_id\":\"8558c71c\",\"classMigrate\":true,\"headingColor\":\"#5c5d5e\",\"separatorColor\":\"#03a9f4\",\"separatorWidth\":20} -->\n<div class=\"wp-block-uagb-advanced-heading uagb-block-8558c71c\"><h2 class=\"uagb-heading-text\">Instructions</h2><div class=\"uagb-separator-wrap\"><div class=\"uagb-separator\"></div></div><p class=\"uagb-desc-text\"></p></div>\n<!-- /wp:uagb/advanced-heading -->\n\n<!-- wp:list -->\n<ul><li>Be a part of WP Quiz and get yourself register now.</li><li>Login yourself to get started.</li><li>You have 20 mins to complete the quiz and submit it.</li><li>Once the time is up quiz will be submitted automatically.</li><li>Result will be shown after the submission of quiz.</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:uagb/icon-list {\"block_id\":\"cd69ef92\",\"classMigrate\":true,\"childMigrate\":true} -->\n<div class=\"wp-block-uagb-icon-list uagb-icon-list__outer-wrap uagb-icon-list__layout-vertical uagb-block-cd69ef92\"><div class=\"uagb-icon-list__wrap\"></div></div>\n<!-- /wp:uagb/icon-list --></div></section>\n<!-- /wp:uagb/section -->', 'HOME', '', 'inherit', 'closed', 'closed', '', '17-autosave-v1', '', '', '2020-07-16 08:56:17', '2020-07-16 08:56:17', '', 17, 'http://localhost/quiz/2020/07/14/17-autosave-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(97, 1, '2020-07-14 12:31:47', '2020-07-14 12:31:47', '<!-- wp:uagb/advanced-heading {\"block_id\":\"b983e754\",\"classMigrate\":true,\"headingColor\":\"#7b7979\",\"headingTag\":\"h3\",\"level\":3} -->\n<div class=\"wp-block-uagb-advanced-heading uagb-block-b983e754\"><h3 class=\"uagb-heading-text\">Thank you! You have successfully attempted the quiz.</h3><div class=\"uagb-separator-wrap\"><div class=\"uagb-separator\"></div></div><p class=\"uagb-desc-text\">Please <a href=\"http://localhost/quiz/\">Logout Now</a></p></div>\n<!-- /wp:uagb/advanced-heading -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"><!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link\"></a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->\n\n<!-- wp:image {\"align\":\"center\",\"id\":93,\"width\":226,\"height\":241,\"sizeSlug\":\"large\"} -->\n<div class=\"wp-block-image\"><figure class=\"aligncenter size-large is-resized\"><img src=\"http://localhost/quiz/wp-content/uploads/2020/07/logout-958x1024.png\" alt=\"\" class=\"wp-image-93\" width=\"226\" height=\"241\"/></figure></div>\n<!-- /wp:image -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"></div>\n<!-- /wp:buttons -->\n\n<!-- wp:paragraph {\"className\":\".wp-block-button{text-align:\\u0022center\\u0022;}\"} -->\n<p class=\".wp-block-button{text-align:&quot;center&quot;;}\"></p>\n<!-- /wp:paragraph -->', 'LOGOUT', '', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2020-07-14 12:31:47', '2020-07-14 12:31:47', '', 63, 'http://localhost/quiz/2020/07/14/63-revision-v1/', 0, 'revision', '', 0),
(98, 1, '2020-07-14 13:07:56', '2020-07-14 13:07:56', '{\n    \"highlight::header_background_type\": {\n        \"value\": \"slideshow\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-14 13:04:57\"\n    },\n    \"highlight::header_slideshow\": {\n        \"value\": [\n            {\n                \"url\": \"6\"\n            },\n            {\n                \"url\": \"99\"\n            },\n            {\n                \"url\": \"http://localhost/quiz/wp-content/themes/highlight/assets/images/hero-3.jpg\"\n            },\n            {\n                \"url\": \"100\"\n            }\n        ],\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-14 13:07:56\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'e630a03c-c12c-4a96-b565-bcdca3d4b9d0', '', '', '2020-07-14 13:07:56', '2020-07-14 13:07:56', '', 0, 'http://localhost/quiz/?p=98', 0, 'customize_changeset', '', 0),
(99, 1, '2020-07-14 13:05:42', '2020-07-14 13:05:42', '', 'banner', '', 'inherit', 'open', 'closed', '', 'banner', '', '', '2020-07-14 13:05:48', '2020-07-14 13:05:48', '', 0, 'http://localhost/quiz/wp-content/uploads/2020/07/banner.png', 0, 'attachment', 'image/png', 0),
(100, 1, '2020-07-14 13:07:32', '2020-07-14 13:07:32', '', 'wpbg', '', 'inherit', 'open', 'closed', '', 'wpbg', '', '', '2020-07-14 13:07:37', '2020-07-14 13:07:37', '', 0, 'http://localhost/quiz/wp-content/uploads/2020/07/wpbg.jpg', 0, 'attachment', 'image/jpeg', 0),
(102, 1, '2020-07-14 13:24:54', '2020-07-14 13:24:54', '<!-- wp:uagb/advanced-heading {\"block_id\":\"9a6ac49e\",\"classMigrate\":true,\"headingColor\":\"#7b7979\",\"headingTag\":\"h3\",\"level\":3} -->\n<div class=\"wp-block-uagb-advanced-heading uagb-block-9a6ac49e\"><h3 class=\"uagb-heading-text\">Thank you! You have successfully attempted the quiz.</h3><div class=\"uagb-separator-wrap\"><div class=\"uagb-separator\"></div></div><p class=\"uagb-desc-text\"></p></div>\n<!-- /wp:uagb/advanced-heading -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"><!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link\"></a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->\n\n<!-- wp:shortcode -->\n[wppb-logout redirect_url=\"http://localhost/quiz/\"]\n<!-- /wp:shortcode -->\n\n<!-- wp:image {\"align\":\"center\",\"id\":93,\"width\":226,\"height\":241,\"sizeSlug\":\"large\"} -->\n<div class=\"wp-block-image\"><figure class=\"aligncenter size-large is-resized\"><img src=\"http://localhost/quiz/wp-content/uploads/2020/07/logout-958x1024.png\" alt=\"\" class=\"wp-image-93\" width=\"226\" height=\"241\"/></figure></div>\n<!-- /wp:image -->\n\n<!-- wp:paragraph {\"className\":\".wp-block-button{text-align:\\u0022center\\u0022;}\"} -->\n<p class=\".wp-block-button{text-align:&quot;center&quot;;}\"></p>\n<!-- /wp:paragraph -->', 'LOGOUT', '', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2020-07-14 13:24:54', '2020-07-14 13:24:54', '', 63, 'http://localhost/quiz/2020/07/14/63-revision-v1/', 0, 'revision', '', 0),
(103, 1, '2020-07-14 13:25:15', '2020-07-14 13:25:15', '<!-- wp:uagb/advanced-heading {\"block_id\":\"774d060c\",\"classMigrate\":true,\"headingColor\":\"#7b7979\",\"headingTag\":\"h3\",\"level\":3} -->\n<div class=\"wp-block-uagb-advanced-heading uagb-block-774d060c\"><h3 class=\"uagb-heading-text\">Thank you! You have successfully attempted the quiz.</h3><div class=\"uagb-separator-wrap\"><div class=\"uagb-separator\"></div></div><p class=\"uagb-desc-text\"></p></div>\n<!-- /wp:uagb/advanced-heading -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"></div>\n<!-- /wp:buttons -->\n\n<!-- wp:shortcode -->\n[wppb-logout redirect_url=\"http://localhost/quiz/\"]\n<!-- /wp:shortcode -->\n\n<!-- wp:image {\"align\":\"center\",\"id\":93,\"width\":226,\"height\":241,\"sizeSlug\":\"large\"} -->\n<div class=\"wp-block-image\"><figure class=\"aligncenter size-large is-resized\"><img src=\"http://localhost/quiz/wp-content/uploads/2020/07/logout-958x1024.png\" alt=\"\" class=\"wp-image-93\" width=\"226\" height=\"241\"/></figure></div>\n<!-- /wp:image -->\n\n<!-- wp:paragraph {\"className\":\".wp-block-button{text-align:\\u0022center\\u0022;}\"} -->\n<p class=\".wp-block-button{text-align:&quot;center&quot;;}\"></p>\n<!-- /wp:paragraph -->', 'LOGOUT', '', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2020-07-14 13:25:15', '2020-07-14 13:25:15', '', 63, 'http://localhost/quiz/2020/07/14/63-revision-v1/', 0, 'revision', '', 0),
(104, 1, '2020-07-14 13:29:28', '2020-07-14 13:29:28', '<!-- wp:uagb/advanced-heading {\"block_id\":\"d5a97591\",\"classMigrate\":true,\"headingColor\":\"#7b7979\",\"headingTag\":\"h3\",\"level\":3} -->\n<div class=\"wp-block-uagb-advanced-heading uagb-block-d5a97591\"><h3 class=\"uagb-heading-text\">Thank you! You have successfully attempted the quiz.</h3><div class=\"uagb-separator-wrap\"><div class=\"uagb-separator\"></div></div><p class=\"uagb-desc-text\"></p></div>\n<!-- /wp:uagb/advanced-heading -->\n\n<!-- wp:uagb/columns {\"block_id\":\"9e4cb52d\",\"classMigrate\":true} -->\n<section class=\"wp-block-uagb-columns uagb-columns__wrap uagb-columns__background-undefined uagb-columns__stack-mobile uagb-columns__valign-undefined uagb-columns__gap-10 alignundefined uagb-block-9e4cb52d\"><div class=\"uagb-columns__overlay\"></div><div class=\"uagb-columns__inner-wrap uagb-columns__columns-2\"><!-- wp:uagb/column {\"block_id\":\"9a300c68\",\"classMigrate\":true,\"colWidth\":50} -->\n<div class=\"wp-block-uagb-column uagb-column__wrap uagb-column__background-undefined uagb-block-9a300c68\"><div class=\"uagb-column__overlay\"></div><div class=\"uagb-column__inner-wrap\"><!-- wp:shortcode -->\n[wppb-logout redirect_url=\"http://localhost/quiz/\"]\n<!-- /wp:shortcode --></div></div>\n<!-- /wp:uagb/column -->\n\n<!-- wp:uagb/column {\"block_id\":\"bad44011\",\"classMigrate\":true,\"colWidth\":50} -->\n<div class=\"wp-block-uagb-column uagb-column__wrap uagb-column__background-undefined uagb-block-bad44011\"><div class=\"uagb-column__overlay\"></div><div class=\"uagb-column__inner-wrap\"><!-- wp:image {\"id\":93,\"width\":241,\"height\":257,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large is-resized\"><img src=\"http://localhost/quiz/wp-content/uploads/2020/07/logout-958x1024.png\" alt=\"img\" class=\"wp-image-93\" width=\"241\" height=\"257\"/></figure>\n<!-- /wp:image --></div></div>\n<!-- /wp:uagb/column --></div></section>\n<!-- /wp:uagb/columns -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"></div>\n<!-- /wp:buttons -->\n\n<!-- wp:paragraph {\"className\":\".wp-block-button{text-align:\\u0022center\\u0022;}\"} -->\n<p class=\".wp-block-button{text-align:&quot;center&quot;;}\"></p>\n<!-- /wp:paragraph -->', 'LOGOUT', '', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2020-07-14 13:29:28', '2020-07-14 13:29:28', '', 63, 'http://localhost/quiz/2020/07/14/63-revision-v1/', 0, 'revision', '', 0),
(106, 1, '2020-07-14 13:31:01', '2020-07-14 13:31:01', '<!-- wp:uagb/advanced-heading {\"block_id\":\"dc83f1b4\",\"classMigrate\":true,\"headingColor\":\"#7b7979\",\"headingTag\":\"h3\",\"level\":3} -->\n<div class=\"wp-block-uagb-advanced-heading uagb-block-dc83f1b4\"><h3 class=\"uagb-heading-text\">Thank you! You have successfully attempted the quiz.</h3><div class=\"uagb-separator-wrap\"><div class=\"uagb-separator\"></div></div><p class=\"uagb-desc-text\"></p></div>\n<!-- /wp:uagb/advanced-heading -->\n\n<!-- wp:uagb/columns {\"block_id\":\"942aee32\",\"classMigrate\":true,\"vAlign\":\"center\"} -->\n<section class=\"wp-block-uagb-columns uagb-columns__wrap uagb-columns__background-undefined uagb-columns__stack-mobile uagb-columns__valign-center uagb-columns__gap-10 alignundefined uagb-block-942aee32\"><div class=\"uagb-columns__overlay\"></div><div class=\"uagb-columns__inner-wrap uagb-columns__columns-2\"><!-- wp:uagb/column {\"block_id\":\"6a92576f\",\"classMigrate\":true,\"colWidth\":50} -->\n<div class=\"wp-block-uagb-column uagb-column__wrap uagb-column__background-undefined uagb-block-6a92576f\"><div class=\"uagb-column__overlay\"></div><div class=\"uagb-column__inner-wrap\"><!-- wp:shortcode -->\n[wppb-logout redirect_url=\"http://localhost/quiz/\"]\n<!-- /wp:shortcode --></div></div>\n<!-- /wp:uagb/column -->\n\n<!-- wp:uagb/column {\"block_id\":\"d22956d1\",\"classMigrate\":true,\"colWidth\":50} -->\n<div class=\"wp-block-uagb-column uagb-column__wrap uagb-column__background-undefined uagb-block-d22956d1\"><div class=\"uagb-column__overlay\"></div><div class=\"uagb-column__inner-wrap\"><!-- wp:image {\"id\":93,\"width\":241,\"height\":257,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large is-resized\"><img src=\"http://localhost/quiz/wp-content/uploads/2020/07/logout-958x1024.png\" alt=\"img\" class=\"wp-image-93\" width=\"241\" height=\"257\"/></figure>\n<!-- /wp:image --></div></div>\n<!-- /wp:uagb/column --></div></section>\n<!-- /wp:uagb/columns -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"><!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link\"></a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->\n\n<!-- wp:paragraph {\"className\":\".wp-block-button{text-align:\\u0022center\\u0022;}\"} -->\n<p class=\".wp-block-button{text-align:&quot;center&quot;;}\"></p>\n<!-- /wp:paragraph -->', 'LOGOUT', '', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2020-07-14 13:31:01', '2020-07-14 13:31:01', '', 63, 'http://localhost/quiz/2020/07/14/63-revision-v1/', 0, 'revision', '', 0),
(107, 1, '2020-07-14 13:33:57', '2020-07-14 13:33:57', '<!-- wp:uagb/advanced-heading {\"block_id\":\"d581a4a4\",\"classMigrate\":true,\"headingColor\":\"#7b7979\",\"headingTag\":\"h3\",\"level\":3} -->\n<div class=\"wp-block-uagb-advanced-heading uagb-block-d581a4a4\"><h3 class=\"uagb-heading-text\">Thank you! You have successfully attempted the quiz.</h3><div class=\"uagb-separator-wrap\"><div class=\"uagb-separator\"></div></div><p class=\"uagb-desc-text\"></p></div>\n<!-- /wp:uagb/advanced-heading -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"></div>\n<!-- /wp:buttons -->\n\n<!-- wp:uagb/columns {\"block_id\":\"61ecf17e\",\"classMigrate\":true,\"vAlign\":\"center\",\"leftPadding\":50} -->\n<section class=\"wp-block-uagb-columns uagb-columns__wrap uagb-columns__background-undefined uagb-columns__stack-mobile uagb-columns__valign-center uagb-columns__gap-10 alignundefined uagb-block-61ecf17e\"><div class=\"uagb-columns__overlay\"></div><div class=\"uagb-columns__inner-wrap uagb-columns__columns-2\"><!-- wp:uagb/column {\"block_id\":\"ee3919aa\",\"classMigrate\":true,\"colWidth\":50} -->\n<div class=\"wp-block-uagb-column uagb-column__wrap uagb-column__background-undefined uagb-block-ee3919aa\"><div class=\"uagb-column__overlay\"></div><div class=\"uagb-column__inner-wrap\"><!-- wp:shortcode -->\n[wppb-logout redirect_url=\"http://localhost/quiz/\"]\n<!-- /wp:shortcode --></div></div>\n<!-- /wp:uagb/column -->\n\n<!-- wp:uagb/column {\"block_id\":\"f40c018e\",\"classMigrate\":true} -->\n<div class=\"wp-block-uagb-column uagb-column__wrap uagb-column__background-undefined uagb-block-f40c018e\"><div class=\"uagb-column__overlay\"></div><div class=\"uagb-column__inner-wrap\"><!-- wp:image {\"id\":93,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/quiz/wp-content/uploads/2020/07/logout-958x1024.png\" alt=\"img\" class=\"wp-image-93\"/></figure>\n<!-- /wp:image --></div></div>\n<!-- /wp:uagb/column --></div></section>\n<!-- /wp:uagb/columns -->\n\n<!-- wp:paragraph {\"className\":\".wp-block-button{text-align:\\u0022center\\u0022;}\"} -->\n<p class=\".wp-block-button{text-align:&quot;center&quot;;}\"></p>\n<!-- /wp:paragraph -->', 'LOGOUT', '', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2020-07-14 13:33:57', '2020-07-14 13:33:57', '', 63, 'http://localhost/quiz/2020/07/14/63-revision-v1/', 0, 'revision', '', 0),
(108, 1, '2020-07-14 13:34:54', '2020-07-14 13:34:54', '<!-- wp:uagb/advanced-heading {\"block_id\":\"631fe253\",\"classMigrate\":true,\"headingColor\":\"#7b7979\",\"headingTag\":\"h3\",\"level\":3} -->\n<div class=\"wp-block-uagb-advanced-heading uagb-block-631fe253\"><h3 class=\"uagb-heading-text\">Thank you! You have successfully attempted the quiz.</h3><div class=\"uagb-separator-wrap\"><div class=\"uagb-separator\"></div></div><p class=\"uagb-desc-text\"></p></div>\n<!-- /wp:uagb/advanced-heading -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"><!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link\"></a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->\n\n<!-- wp:uagb/columns {\"block_id\":\"7af07d87\",\"classMigrate\":true,\"vAlign\":\"center\",\"leftPadding\":50} -->\n<section class=\"wp-block-uagb-columns uagb-columns__wrap uagb-columns__background-undefined uagb-columns__stack-mobile uagb-columns__valign-center uagb-columns__gap-10 alignundefined uagb-block-7af07d87\"><div class=\"uagb-columns__overlay\"></div><div class=\"uagb-columns__inner-wrap uagb-columns__columns-2\"><!-- wp:uagb/column {\"block_id\":\"68f83d1b\",\"classMigrate\":true,\"leftPadding\":25,\"colWidth\":50} -->\n<div class=\"wp-block-uagb-column uagb-column__wrap uagb-column__background-undefined uagb-block-68f83d1b\"><div class=\"uagb-column__overlay\"></div><div class=\"uagb-column__inner-wrap\"><!-- wp:shortcode -->\n[wppb-logout redirect_url=\"http://localhost/quiz/\"]\n<!-- /wp:shortcode --></div></div>\n<!-- /wp:uagb/column -->\n\n<!-- wp:uagb/column {\"block_id\":\"82c7a0cf\",\"classMigrate\":true} -->\n<div class=\"wp-block-uagb-column uagb-column__wrap uagb-column__background-undefined uagb-block-82c7a0cf\"><div class=\"uagb-column__overlay\"></div><div class=\"uagb-column__inner-wrap\"><!-- wp:image {\"id\":93,\"width\":170,\"height\":181,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large is-resized\"><img src=\"http://localhost/quiz/wp-content/uploads/2020/07/logout-958x1024.png\" alt=\"img\" class=\"wp-image-93\" width=\"170\" height=\"181\"/></figure>\n<!-- /wp:image --></div></div>\n<!-- /wp:uagb/column --></div></section>\n<!-- /wp:uagb/columns -->\n\n<!-- wp:paragraph {\"className\":\".wp-block-button{text-align:\\u0022center\\u0022;}\"} -->\n<p class=\".wp-block-button{text-align:&quot;center&quot;;}\"></p>\n<!-- /wp:paragraph -->', 'LOGOUT', '', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2020-07-14 13:34:54', '2020-07-14 13:34:54', '', 63, 'http://localhost/quiz/2020/07/14/63-revision-v1/', 0, 'revision', '', 0),
(109, 1, '2020-07-14 13:35:51', '2020-07-14 13:35:51', '<!-- wp:uagb/advanced-heading {\"block_id\":\"dd5804cb\",\"classMigrate\":true,\"headingColor\":\"#7b7979\",\"headingTag\":\"h3\",\"level\":3} -->\n<div class=\"wp-block-uagb-advanced-heading uagb-block-dd5804cb\"><h3 class=\"uagb-heading-text\">Thank you! You have successfully attempted the quiz.</h3><div class=\"uagb-separator-wrap\"><div class=\"uagb-separator\"></div></div><p class=\"uagb-desc-text\"></p></div>\n<!-- /wp:uagb/advanced-heading -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"></div>\n<!-- /wp:buttons -->\n\n<!-- wp:uagb/columns {\"block_id\":\"cc5c46cb\",\"classMigrate\":true,\"vAlign\":\"center\",\"leftPadding\":50} -->\n<section class=\"wp-block-uagb-columns uagb-columns__wrap uagb-columns__background-undefined uagb-columns__stack-mobile uagb-columns__valign-center uagb-columns__gap-10 alignundefined uagb-block-cc5c46cb\"><div class=\"uagb-columns__overlay\"></div><div class=\"uagb-columns__inner-wrap uagb-columns__columns-2\"><!-- wp:uagb/column {\"block_id\":\"86057957\",\"classMigrate\":true,\"leftPadding\":25,\"colWidth\":50} -->\n<div class=\"wp-block-uagb-column uagb-column__wrap uagb-column__background-undefined uagb-block-86057957\"><div class=\"uagb-column__overlay\"></div><div class=\"uagb-column__inner-wrap\"><!-- wp:shortcode -->\n[wppb-logout redirect_url=\"http://localhost/quiz/\"]\n<!-- /wp:shortcode --></div></div>\n<!-- /wp:uagb/column -->\n\n<!-- wp:uagb/column {\"block_id\":\"4d59aad3\",\"classMigrate\":true,\"leftPadding\":20} -->\n<div class=\"wp-block-uagb-column uagb-column__wrap uagb-column__background-undefined uagb-block-4d59aad3\"><div class=\"uagb-column__overlay\"></div><div class=\"uagb-column__inner-wrap\"><!-- wp:image {\"id\":93,\"width\":216,\"height\":230,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large is-resized\"><img src=\"http://localhost/quiz/wp-content/uploads/2020/07/logout-958x1024.png\" alt=\"img\" class=\"wp-image-93\" width=\"216\" height=\"230\"/></figure>\n<!-- /wp:image --></div></div>\n<!-- /wp:uagb/column --></div></section>\n<!-- /wp:uagb/columns -->\n\n<!-- wp:paragraph {\"className\":\".wp-block-button{text-align:\\u0022center\\u0022;}\"} -->\n<p class=\".wp-block-button{text-align:&quot;center&quot;;}\"></p>\n<!-- /wp:paragraph -->', 'LOGOUT', '', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2020-07-14 13:35:51', '2020-07-14 13:35:51', '', 63, 'http://localhost/quiz/2020/07/14/63-revision-v1/', 0, 'revision', '', 0),
(110, 1, '2020-07-14 13:37:48', '2020-07-14 13:37:48', '<!-- wp:uagb/advanced-heading {\"block_id\":\"5b875b1f\",\"classMigrate\":true,\"headingColor\":\"#7b7979\",\"headingTag\":\"h3\",\"level\":3} -->\n<div class=\"wp-block-uagb-advanced-heading uagb-block-5b875b1f\"><h3 class=\"uagb-heading-text\">Thank you! You have successfully attempted the quiz.</h3><div class=\"uagb-separator-wrap\"><div class=\"uagb-separator\"></div></div><p class=\"uagb-desc-text\"></p></div>\n<!-- /wp:uagb/advanced-heading -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"></div>\n<!-- /wp:buttons -->\n\n<!-- wp:uagb/columns {\"block_id\":\"549cbee8\",\"classMigrate\":true,\"vAlign\":\"center\",\"leftPadding\":50} -->\n<section class=\"wp-block-uagb-columns uagb-columns__wrap uagb-columns__background-undefined uagb-columns__stack-mobile uagb-columns__valign-center uagb-columns__gap-10 alignundefined uagb-block-549cbee8\"><div class=\"uagb-columns__overlay\"></div><div class=\"uagb-columns__inner-wrap uagb-columns__columns-2\"><!-- wp:uagb/column {\"block_id\":\"1a0f980a\",\"classMigrate\":true,\"leftPadding\":25,\"colWidth\":50} -->\n<div class=\"wp-block-uagb-column uagb-column__wrap uagb-column__background-undefined uagb-block-1a0f980a\"><div class=\"uagb-column__overlay\"></div><div class=\"uagb-column__inner-wrap\"><!-- wp:image {\"id\":93,\"width\":206,\"height\":219,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large is-resized\"><img src=\"http://localhost/quiz/wp-content/uploads/2020/07/logout-958x1024.png\" alt=\"img\" class=\"wp-image-93\" width=\"206\" height=\"219\"/></figure>\n<!-- /wp:image --></div></div>\n<!-- /wp:uagb/column -->\n\n<!-- wp:uagb/column {\"block_id\":\"56987962\",\"classMigrate\":true,\"leftPadding\":20} -->\n<div class=\"wp-block-uagb-column uagb-column__wrap uagb-column__background-undefined uagb-block-56987962\"><div class=\"uagb-column__overlay\"></div><div class=\"uagb-column__inner-wrap\"><!-- wp:shortcode -->\n[wppb-logout redirect_url=\"http://localhost/quiz/\"]\n<!-- /wp:shortcode --></div></div>\n<!-- /wp:uagb/column --></div></section>\n<!-- /wp:uagb/columns -->\n\n<!-- wp:paragraph {\"className\":\".wp-block-button{text-align:\\u0022center\\u0022;}\"} -->\n<p class=\".wp-block-button{text-align:&quot;center&quot;;}\"></p>\n<!-- /wp:paragraph -->', 'LOGOUT', '', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2020-07-14 13:37:48', '2020-07-14 13:37:48', '', 63, 'http://localhost/quiz/2020/07/14/63-revision-v1/', 0, 'revision', '', 0),
(111, 1, '2020-07-14 13:38:31', '2020-07-14 13:38:31', '<!-- wp:uagb/advanced-heading {\"block_id\":\"7254fddc\",\"classMigrate\":true,\"headingColor\":\"#7b7979\",\"headingTag\":\"h3\",\"level\":3} -->\n<div class=\"wp-block-uagb-advanced-heading uagb-block-7254fddc\"><h3 class=\"uagb-heading-text\">Thank you! You have successfully attempted the quiz.</h3><div class=\"uagb-separator-wrap\"><div class=\"uagb-separator\"></div></div><p class=\"uagb-desc-text\"></p></div>\n<!-- /wp:uagb/advanced-heading -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"></div>\n<!-- /wp:buttons -->\n\n<!-- wp:uagb/columns {\"block_id\":\"dac91326\",\"classMigrate\":true,\"vAlign\":\"center\",\"leftPadding\":50} -->\n<section class=\"wp-block-uagb-columns uagb-columns__wrap uagb-columns__background-undefined uagb-columns__stack-mobile uagb-columns__valign-center uagb-columns__gap-10 alignundefined uagb-block-dac91326\"><div class=\"uagb-columns__overlay\"></div><div class=\"uagb-columns__inner-wrap uagb-columns__columns-2\"><!-- wp:uagb/column {\"block_id\":\"b9dfb218\",\"classMigrate\":true,\"leftPadding\":70,\"colWidth\":50} -->\n<div class=\"wp-block-uagb-column uagb-column__wrap uagb-column__background-undefined uagb-block-b9dfb218\"><div class=\"uagb-column__overlay\"></div><div class=\"uagb-column__inner-wrap\"><!-- wp:image {\"id\":93,\"width\":206,\"height\":219,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large is-resized\"><img src=\"http://localhost/quiz/wp-content/uploads/2020/07/logout-958x1024.png\" alt=\"img\" class=\"wp-image-93\" width=\"206\" height=\"219\"/></figure>\n<!-- /wp:image --></div></div>\n<!-- /wp:uagb/column -->\n\n<!-- wp:uagb/column {\"block_id\":\"6ddf30a2\",\"classMigrate\":true,\"leftPadding\":20} -->\n<div class=\"wp-block-uagb-column uagb-column__wrap uagb-column__background-undefined uagb-block-6ddf30a2\"><div class=\"uagb-column__overlay\"></div><div class=\"uagb-column__inner-wrap\"><!-- wp:shortcode -->\n[wppb-logout redirect_url=\"http://localhost/quiz/\"]\n<!-- /wp:shortcode --></div></div>\n<!-- /wp:uagb/column --></div></section>\n<!-- /wp:uagb/columns -->\n\n<!-- wp:paragraph {\"className\":\".wp-block-button{text-align:\\u0022center\\u0022;}\"} -->\n<p class=\".wp-block-button{text-align:&quot;center&quot;;}\"></p>\n<!-- /wp:paragraph -->', 'LOGOUT', '', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2020-07-14 13:38:31', '2020-07-14 13:38:31', '', 63, 'http://localhost/quiz/2020/07/14/63-revision-v1/', 0, 'revision', '', 0),
(112, 1, '2020-07-14 13:39:23', '2020-07-14 13:39:23', '<!-- wp:uagb/advanced-heading {\"block_id\":\"c04cb247\",\"classMigrate\":true,\"headingColor\":\"#7b7979\",\"headingTag\":\"h3\",\"level\":3} -->\n<div class=\"wp-block-uagb-advanced-heading uagb-block-c04cb247\"><h3 class=\"uagb-heading-text\">Thank you! You have successfully attempted the quiz.</h3><div class=\"uagb-separator-wrap\"><div class=\"uagb-separator\"></div></div><p class=\"uagb-desc-text\"></p></div>\n<!-- /wp:uagb/advanced-heading -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"></div>\n<!-- /wp:buttons -->\n\n<!-- wp:uagb/columns {\"block_id\":\"0f64cda6\",\"classMigrate\":true,\"vAlign\":\"center\",\"leftPadding\":50} -->\n<section class=\"wp-block-uagb-columns uagb-columns__wrap uagb-columns__background-undefined uagb-columns__stack-mobile uagb-columns__valign-center uagb-columns__gap-10 alignundefined uagb-block-0f64cda6\"><div class=\"uagb-columns__overlay\"></div><div class=\"uagb-columns__inner-wrap uagb-columns__columns-2\"><!-- wp:uagb/column {\"block_id\":\"e9fb3d64\",\"classMigrate\":true,\"leftPadding\":115,\"colWidth\":50} -->\n<div class=\"wp-block-uagb-column uagb-column__wrap uagb-column__background-undefined uagb-block-e9fb3d64\"><div class=\"uagb-column__overlay\"></div><div class=\"uagb-column__inner-wrap\"><!-- wp:image {\"id\":93,\"width\":206,\"height\":219,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large is-resized\"><img src=\"http://localhost/quiz/wp-content/uploads/2020/07/logout-958x1024.png\" alt=\"img\" class=\"wp-image-93\" width=\"206\" height=\"219\"/></figure>\n<!-- /wp:image --></div></div>\n<!-- /wp:uagb/column -->\n\n<!-- wp:uagb/column {\"block_id\":\"bf376c10\",\"classMigrate\":true,\"leftPadding\":20} -->\n<div class=\"wp-block-uagb-column uagb-column__wrap uagb-column__background-undefined uagb-block-bf376c10\"><div class=\"uagb-column__overlay\"></div><div class=\"uagb-column__inner-wrap\"><!-- wp:shortcode -->\n[wppb-logout redirect_url=\"http://localhost/quiz/\"]\n<!-- /wp:shortcode --></div></div>\n<!-- /wp:uagb/column --></div></section>\n<!-- /wp:uagb/columns -->\n\n<!-- wp:paragraph {\"className\":\".wp-block-button{text-align:\\u0022center\\u0022;}\"} -->\n<p class=\".wp-block-button{text-align:&quot;center&quot;;}\"></p>\n<!-- /wp:paragraph -->', 'LOGOUT', '', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2020-07-14 13:39:23', '2020-07-14 13:39:23', '', 63, 'http://localhost/quiz/2020/07/14/63-revision-v1/', 0, 'revision', '', 0),
(113, 1, '2020-07-14 13:40:04', '2020-07-14 13:40:04', '<!-- wp:uagb/advanced-heading {\"block_id\":\"b713bc2c\",\"classMigrate\":true,\"headingColor\":\"#7b7979\",\"headingTag\":\"h3\",\"level\":3} -->\n<div class=\"wp-block-uagb-advanced-heading uagb-block-b713bc2c\"><h3 class=\"uagb-heading-text\">Thank you! You have successfully attempted the quiz.</h3><div class=\"uagb-separator-wrap\"><div class=\"uagb-separator\"></div></div><p class=\"uagb-desc-text\"></p></div>\n<!-- /wp:uagb/advanced-heading -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"><!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link\"></a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->\n\n<!-- wp:uagb/columns {\"block_id\":\"15d4d178\",\"classMigrate\":true,\"vAlign\":\"center\",\"leftPadding\":50} -->\n<section class=\"wp-block-uagb-columns uagb-columns__wrap uagb-columns__background-undefined uagb-columns__stack-mobile uagb-columns__valign-center uagb-columns__gap-10 alignundefined uagb-block-15d4d178\"><div class=\"uagb-columns__overlay\"></div><div class=\"uagb-columns__inner-wrap uagb-columns__columns-2\"><!-- wp:uagb/column {\"block_id\":\"300112b7\",\"classMigrate\":true,\"leftPadding\":115,\"colWidth\":50} -->\n<div class=\"wp-block-uagb-column uagb-column__wrap uagb-column__background-undefined uagb-block-300112b7\"><div class=\"uagb-column__overlay\"></div><div class=\"uagb-column__inner-wrap\"><!-- wp:image {\"id\":93,\"width\":206,\"height\":219,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large is-resized\"><img src=\"http://localhost/quiz/wp-content/uploads/2020/07/logout-958x1024.png\" alt=\"img\" class=\"wp-image-93\" width=\"206\" height=\"219\"/></figure>\n<!-- /wp:image --></div></div>\n<!-- /wp:uagb/column -->\n\n<!-- wp:uagb/column {\"block_id\":\"1817c605\",\"classMigrate\":true,\"leftPadding\":20,\"rightPadding\":45} -->\n<div class=\"wp-block-uagb-column uagb-column__wrap uagb-column__background-undefined uagb-block-1817c605\"><div class=\"uagb-column__overlay\"></div><div class=\"uagb-column__inner-wrap\"><!-- wp:shortcode -->\n[wppb-logout redirect_url=\"http://localhost/quiz/\"]\n<!-- /wp:shortcode -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph --></div></div>\n<!-- /wp:uagb/column --></div></section>\n<!-- /wp:uagb/columns -->\n\n<!-- wp:paragraph {\"className\":\".wp-block-button{text-align:\\u0022center\\u0022;}\"} -->\n<p class=\".wp-block-button{text-align:&quot;center&quot;;}\"></p>\n<!-- /wp:paragraph -->', 'LOGOUT', '', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2020-07-14 13:40:04', '2020-07-14 13:40:04', '', 63, 'http://localhost/quiz/2020/07/14/63-revision-v1/', 0, 'revision', '', 0),
(114, 1, '2020-07-14 13:40:35', '2020-07-14 13:40:35', '<!-- wp:uagb/advanced-heading {\"block_id\":\"f6263474\",\"classMigrate\":true,\"headingColor\":\"#7b7979\",\"headingTag\":\"h3\",\"level\":3} -->\n<div class=\"wp-block-uagb-advanced-heading uagb-block-f6263474\"><h3 class=\"uagb-heading-text\">Thank you! You have successfully attempted the quiz.</h3><div class=\"uagb-separator-wrap\"><div class=\"uagb-separator\"></div></div><p class=\"uagb-desc-text\"></p></div>\n<!-- /wp:uagb/advanced-heading -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"></div>\n<!-- /wp:buttons -->\n\n<!-- wp:uagb/columns {\"block_id\":\"0243fab8\",\"classMigrate\":true,\"vAlign\":\"center\",\"leftPadding\":50} -->\n<section class=\"wp-block-uagb-columns uagb-columns__wrap uagb-columns__background-undefined uagb-columns__stack-mobile uagb-columns__valign-center uagb-columns__gap-10 alignundefined uagb-block-0243fab8\"><div class=\"uagb-columns__overlay\"></div><div class=\"uagb-columns__inner-wrap uagb-columns__columns-2\"><!-- wp:uagb/column {\"block_id\":\"d14576d0\",\"classMigrate\":true,\"leftPadding\":150,\"colWidth\":50} -->\n<div class=\"wp-block-uagb-column uagb-column__wrap uagb-column__background-undefined uagb-block-d14576d0\"><div class=\"uagb-column__overlay\"></div><div class=\"uagb-column__inner-wrap\"><!-- wp:image {\"id\":93,\"width\":206,\"height\":219,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large is-resized\"><img src=\"http://localhost/quiz/wp-content/uploads/2020/07/logout-958x1024.png\" alt=\"img\" class=\"wp-image-93\" width=\"206\" height=\"219\"/></figure>\n<!-- /wp:image --></div></div>\n<!-- /wp:uagb/column -->\n\n<!-- wp:uagb/column {\"block_id\":\"1d332fc6\",\"classMigrate\":true,\"leftPadding\":20,\"rightPadding\":45} -->\n<div class=\"wp-block-uagb-column uagb-column__wrap uagb-column__background-undefined uagb-block-1d332fc6\"><div class=\"uagb-column__overlay\"></div><div class=\"uagb-column__inner-wrap\"><!-- wp:shortcode -->\n[wppb-logout redirect_url=\"http://localhost/quiz/\"]\n<!-- /wp:shortcode -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph --></div></div>\n<!-- /wp:uagb/column --></div></section>\n<!-- /wp:uagb/columns -->\n\n<!-- wp:paragraph {\"className\":\".wp-block-button{text-align:\\u0022center\\u0022;}\"} -->\n<p class=\".wp-block-button{text-align:&quot;center&quot;;}\"></p>\n<!-- /wp:paragraph -->', 'LOGOUT', '', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2020-07-14 13:40:35', '2020-07-14 13:40:35', '', 63, 'http://localhost/quiz/2020/07/14/63-revision-v1/', 0, 'revision', '', 0),
(115, 1, '2020-07-14 13:41:47', '2020-07-14 13:41:47', '<!-- wp:uagb/advanced-heading {\"block_id\":\"7b2a4f23\",\"classMigrate\":true,\"headingColor\":\"#7b7979\",\"headingTag\":\"h3\",\"level\":3} -->\n<div class=\"wp-block-uagb-advanced-heading uagb-block-7b2a4f23\"><h3 class=\"uagb-heading-text\">Thank you! You have successfully attempted the quiz.</h3><div class=\"uagb-separator-wrap\"><div class=\"uagb-separator\"></div></div><p class=\"uagb-desc-text\"></p></div>\n<!-- /wp:uagb/advanced-heading -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"></div>\n<!-- /wp:buttons -->\n\n<!-- wp:uagb/columns {\"block_id\":\"e033edde\",\"classMigrate\":true,\"vAlign\":\"center\",\"leftPadding\":50} -->\n<section class=\"wp-block-uagb-columns uagb-columns__wrap uagb-columns__background-undefined uagb-columns__stack-mobile uagb-columns__valign-center uagb-columns__gap-10 alignundefined uagb-block-e033edde\"><div class=\"uagb-columns__overlay\"></div><div class=\"uagb-columns__inner-wrap uagb-columns__columns-2\"><!-- wp:uagb/column {\"block_id\":\"34232246\",\"classMigrate\":true,\"leftPadding\":230,\"colWidth\":50} -->\n<div class=\"wp-block-uagb-column uagb-column__wrap uagb-column__background-undefined uagb-block-34232246\"><div class=\"uagb-column__overlay\"></div><div class=\"uagb-column__inner-wrap\"><!-- wp:image {\"id\":93,\"width\":206,\"height\":219,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large is-resized\"><img src=\"http://localhost/quiz/wp-content/uploads/2020/07/logout-958x1024.png\" alt=\"img\" class=\"wp-image-93\" width=\"206\" height=\"219\"/></figure>\n<!-- /wp:image --></div></div>\n<!-- /wp:uagb/column -->\n\n<!-- wp:uagb/column {\"block_id\":\"a799f505\",\"classMigrate\":true,\"leftPadding\":0,\"rightPadding\":100} -->\n<div class=\"wp-block-uagb-column uagb-column__wrap uagb-column__background-undefined uagb-block-a799f505\"><div class=\"uagb-column__overlay\"></div><div class=\"uagb-column__inner-wrap\"><!-- wp:shortcode -->\n[wppb-logout redirect_url=\"http://localhost/quiz/\"]\n<!-- /wp:shortcode -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph --></div></div>\n<!-- /wp:uagb/column --></div></section>\n<!-- /wp:uagb/columns -->\n\n<!-- wp:paragraph {\"className\":\".wp-block-button{text-align:\\u0022center\\u0022;}\"} -->\n<p class=\".wp-block-button{text-align:&quot;center&quot;;}\"></p>\n<!-- /wp:paragraph -->', 'LOGOUT', '', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2020-07-14 13:41:47', '2020-07-14 13:41:47', '', 63, 'http://localhost/quiz/2020/07/14/63-revision-v1/', 0, 'revision', '', 0),
(116, 1, '2020-07-16 06:07:44', '2020-07-16 06:07:44', '<!-- wp:shortcode -->\n[ays_quiz id=\'3\']\n<!-- /wp:shortcode -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"></div>\n<!-- /wp:buttons -->\n\n<!-- wp:html -->\n<p style=\"color:#5c5e5e\" class=\"has-text-color has-text-align-center\"><strong>If you have attempt the quiz please <a href=\"http://localhost/quiz/logout/\">Logout</a></strong></p>\n<!-- /wp:html -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'QUIZ', '', 'inherit', 'closed', 'closed', '', '54-revision-v1', '', '', '2020-07-16 06:07:44', '2020-07-16 06:07:44', '', 54, 'http://localhost/quiz/2020/07/16/54-revision-v1/', 0, 'revision', '', 0),
(117, 1, '2020-07-16 06:13:53', '2020-07-16 06:13:53', '<!-- wp:shortcode -->\n [ays_quiz id=\'3\']\n<!-- /wp:shortcode -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"></div>\n<!-- /wp:buttons -->\n\n<!-- wp:html -->\n<p style=\"color:#5c5e5e\" class=\"has-text-color has-text-align-center\"><strong>If you have attempt the quiz please <a href=\"http://localhost/quiz/logout/\">Logout</a></strong></p>\n<!-- /wp:html -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'QUIZ', '', 'inherit', 'closed', 'closed', '', '54-revision-v1', '', '', '2020-07-16 06:13:53', '2020-07-16 06:13:53', '', 54, 'http://localhost/quiz/2020/07/16/54-revision-v1/', 0, 'revision', '', 0),
(118, 1, '2020-07-16 06:38:49', '2020-07-16 06:38:49', '<!-- wp:uagb/advanced-heading {\"block_id\":\"8e1a06ca\",\"classMigrate\":true,\"headingColor\":\"#7b7979\",\"headingTag\":\"h3\",\"level\":3} -->\n<div class=\"wp-block-uagb-advanced-heading uagb-block-8e1a06ca\"><h3 class=\"uagb-heading-text\">Thank you! You have successfully attempted the quiz.</h3><div class=\"uagb-separator-wrap\"><div class=\"uagb-separator\"></div></div><p class=\"uagb-desc-text\"></p></div>\n<!-- /wp:uagb/advanced-heading -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"></div>\n<!-- /wp:buttons -->\n\n<!-- wp:uagb/columns {\"block_id\":\"a0682f4c\",\"classMigrate\":true,\"vAlign\":\"center\",\"leftPadding\":50} -->\n<section class=\"wp-block-uagb-columns uagb-columns__wrap uagb-columns__background-undefined uagb-columns__stack-mobile uagb-columns__valign-center uagb-columns__gap-10 alignundefined uagb-block-a0682f4c\"><div class=\"uagb-columns__overlay\"></div><div class=\"uagb-columns__inner-wrap uagb-columns__columns-2\"><!-- wp:uagb/column {\"block_id\":\"4d33ba28\",\"classMigrate\":true,\"leftPadding\":230,\"colWidth\":50} -->\n<div class=\"wp-block-uagb-column uagb-column__wrap uagb-column__background-undefined uagb-block-4d33ba28\"><div class=\"uagb-column__overlay\"></div><div class=\"uagb-column__inner-wrap\"><!-- wp:image {\"id\":93,\"width\":206,\"height\":219,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large is-resized\"><img src=\"http://localhost/quiz/wp-content/uploads/2020/07/logout-958x1024.png\" alt=\"img\" class=\"wp-image-93\" width=\"206\" height=\"219\"/></figure>\n<!-- /wp:image --></div></div>\n<!-- /wp:uagb/column -->\n\n<!-- wp:uagb/column {\"block_id\":\"5b1e71e2\",\"classMigrate\":true,\"leftPadding\":0,\"rightPadding\":100} -->\n<div class=\"wp-block-uagb-column uagb-column__wrap uagb-column__background-undefined uagb-block-5b1e71e2\"><div class=\"uagb-column__overlay\"></div><div class=\"uagb-column__inner-wrap\"><!-- wp:shortcode -->\n[wppb-logout redirect_url=\"http://localhost/quiz/\"]\n<!-- /wp:shortcode -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph --></div></div>\n<!-- /wp:uagb/column --></div></section>\n<!-- /wp:uagb/columns -->\n\n<!-- wp:paragraph {\"className\":\".wp-block-button{text-align:\\u0022center\\u0022;}\"} -->\n<p class=\".wp-block-button{text-align:&quot;center&quot;;}\"></p>\n<!-- /wp:paragraph -->', 'LOGOUT', '', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2020-07-16 06:38:49', '2020-07-16 06:38:49', '', 63, 'http://localhost/quiz/2020/07/16/63-revision-v1/', 0, 'revision', '', 0),
(119, 1, '2020-07-16 06:39:16', '2020-07-16 06:39:16', '<!-- wp:shortcode -->\n[ays_quiz id=\'3\']\n<!-- /wp:shortcode -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"></div>\n<!-- /wp:buttons -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'QUIZ', '', 'inherit', 'closed', 'closed', '', '54-revision-v1', '', '', '2020-07-16 06:39:16', '2020-07-16 06:39:16', '', 54, 'http://localhost/quiz/2020/07/16/54-revision-v1/', 0, 'revision', '', 0),
(121, 1, '2020-07-16 07:07:36', '2020-07-16 07:07:36', '<!-- wp:shortcode -->\n[ays_quiz id=\'3\']\n<!-- /wp:shortcode -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"></div>\n<!-- /wp:buttons -->\n\n<!-- wp:html -->\n<p style=\"color:#757879\" class=\"has-text-color has-text-align-center\"><strong>If you have attempt the quiz please <a href=\"http://localhost/quiz/logout/\">Logout now</a>.</strong></p>\n<!-- /wp:html -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'QUIZ', '', 'inherit', 'closed', 'closed', '', '54-revision-v1', '', '', '2020-07-16 07:07:36', '2020-07-16 07:07:36', '', 54, 'http://localhost/quiz/2020/07/16/54-revision-v1/', 0, 'revision', '', 0),
(122, 1, '2020-07-16 07:07:50', '2020-07-16 07:07:50', '<!-- wp:uagb/advanced-heading {\"block_id\":\"c70776dc\",\"classMigrate\":true,\"headingColor\":\"#7b7979\",\"headingTag\":\"h3\",\"level\":3} -->\n<div class=\"wp-block-uagb-advanced-heading uagb-block-c70776dc\"><h3 class=\"uagb-heading-text\">Thank you! You have successfully attempted the quiz.</h3><div class=\"uagb-separator-wrap\"><div class=\"uagb-separator\"></div></div><p class=\"uagb-desc-text\"></p></div>\n<!-- /wp:uagb/advanced-heading -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"></div>\n<!-- /wp:buttons -->\n\n<!-- wp:uagb/columns {\"block_id\":\"61d62af3\",\"classMigrate\":true,\"vAlign\":\"center\",\"leftPadding\":50} -->\n<section class=\"wp-block-uagb-columns uagb-columns__wrap uagb-columns__background-undefined uagb-columns__stack-mobile uagb-columns__valign-center uagb-columns__gap-10 alignundefined uagb-block-61d62af3\"><div class=\"uagb-columns__overlay\"></div><div class=\"uagb-columns__inner-wrap uagb-columns__columns-2\"><!-- wp:uagb/column {\"block_id\":\"91049b57\",\"classMigrate\":true,\"leftPadding\":230,\"colWidth\":50} -->\n<div class=\"wp-block-uagb-column uagb-column__wrap uagb-column__background-undefined uagb-block-91049b57\"><div class=\"uagb-column__overlay\"></div><div class=\"uagb-column__inner-wrap\"><!-- wp:image {\"id\":93,\"width\":206,\"height\":219,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large is-resized\"><img src=\"http://localhost/quiz/wp-content/uploads/2020/07/logout-958x1024.png\" alt=\"img\" class=\"wp-image-93\" width=\"206\" height=\"219\"/></figure>\n<!-- /wp:image --></div></div>\n<!-- /wp:uagb/column -->\n\n<!-- wp:uagb/column {\"block_id\":\"ed7fc7c3\",\"classMigrate\":true,\"leftPadding\":0,\"rightPadding\":100} -->\n<div class=\"wp-block-uagb-column uagb-column__wrap uagb-column__background-undefined uagb-block-ed7fc7c3\"><div class=\"uagb-column__overlay\"></div><div class=\"uagb-column__inner-wrap\"><!-- wp:shortcode -->\n[wppb-logout redirect_url=\"http://localhost/quiz/\"]\n<!-- /wp:shortcode -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph --></div></div>\n<!-- /wp:uagb/column --></div></section>\n<!-- /wp:uagb/columns -->\n\n<!-- wp:paragraph {\"className\":\".wp-block-button{text-align:\\u0022center\\u0022;}\"} -->\n<p class=\".wp-block-button{text-align:&quot;center&quot;;}\"></p>\n<!-- /wp:paragraph -->', 'LOGOUT', '', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2020-07-16 07:07:50', '2020-07-16 07:07:50', '', 63, 'http://localhost/quiz/2020/07/16/63-revision-v1/', 0, 'revision', '', 0),
(123, 1, '2020-07-16 07:21:45', '2020-07-16 07:21:45', '<!-- wp:shortcode -->\n [ays_quiz id=\'3\']\n<!-- /wp:shortcode -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"></div>\n<!-- /wp:buttons -->\n\n<!-- wp:html -->\n<p style=\"color:#757879\" class=\"has-text-color has-text-align-center\"><strong>If you have attempt the quiz please <a href=\"http://localhost/quiz/logout/\">Logout now</a>.</strong></p>\n<!-- /wp:html -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'QUIZ', '', 'inherit', 'closed', 'closed', '', '54-revision-v1', '', '', '2020-07-16 07:21:45', '2020-07-16 07:21:45', '', 54, 'http://localhost/quiz/2020/07/16/54-revision-v1/', 0, 'revision', '', 0),
(124, 1, '2020-07-16 08:02:31', '2020-07-16 08:02:31', '<!-- wp:shortcode -->\n[ays_quiz id=\'3\']\n<!-- /wp:shortcode -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"></div>\n<!-- /wp:buttons -->\n\n<!-- wp:html -->\n<p style=\"color:#757879\" class=\"has-text-color has-text-align-center\"><strong>If you have attempt the quiz please <a href=\"http://localhost/quiz/logout/\">Logout now</a>.</strong></p>\n<!-- /wp:html -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'QUIZ', '', 'inherit', 'closed', 'closed', '', '54-revision-v1', '', '', '2020-07-16 08:02:31', '2020-07-16 08:02:31', '', 54, 'http://localhost/quiz/2020/07/16/54-revision-v1/', 0, 'revision', '', 0),
(125, 1, '2020-07-16 08:28:09', '2020-07-16 08:28:09', '<!-- wp:uagb/advanced-heading {\"block_id\":\"fa234d2c\",\"classMigrate\":true,\"headingColor\":\"#7b7979\",\"headingTag\":\"h3\",\"level\":3} -->\n<div class=\"wp-block-uagb-advanced-heading uagb-block-fa234d2c\"><h3 class=\"uagb-heading-text\">Thank you! You have successfully attempted the quiz.</h3><div class=\"uagb-separator-wrap\"><div class=\"uagb-separator\"></div></div><p class=\"uagb-desc-text\"></p></div>\n<!-- /wp:uagb/advanced-heading -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"></div>\n<!-- /wp:buttons -->\n\n<!-- wp:uagb/columns {\"block_id\":\"a876cd1e\",\"classMigrate\":true,\"vAlign\":\"center\",\"leftPadding\":50} -->\n<section class=\"wp-block-uagb-columns uagb-columns__wrap uagb-columns__background-undefined uagb-columns__stack-mobile uagb-columns__valign-center uagb-columns__gap-10 alignundefined uagb-block-a876cd1e\"><div class=\"uagb-columns__overlay\"></div><div class=\"uagb-columns__inner-wrap uagb-columns__columns-2\"><!-- wp:uagb/column {\"block_id\":\"021346f0\",\"classMigrate\":true,\"leftPadding\":230,\"colWidth\":50} -->\n<div class=\"wp-block-uagb-column uagb-column__wrap uagb-column__background-undefined uagb-block-021346f0\"><div class=\"uagb-column__overlay\"></div><div class=\"uagb-column__inner-wrap\"><!-- wp:image {\"id\":93,\"width\":206,\"height\":219,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large is-resized\"><img src=\"http://localhost/quiz/wp-content/uploads/2020/07/logout-958x1024.png\" alt=\"img\" class=\"wp-image-93\" width=\"206\" height=\"219\"/></figure>\n<!-- /wp:image --></div></div>\n<!-- /wp:uagb/column -->\n\n<!-- wp:uagb/column {\"block_id\":\"5fb92a79\",\"classMigrate\":true,\"leftPadding\":0,\"rightPadding\":100} -->\n<div class=\"wp-block-uagb-column uagb-column__wrap uagb-column__background-undefined uagb-block-5fb92a79\"><div class=\"uagb-column__overlay\"></div><div class=\"uagb-column__inner-wrap\"><!-- wp:shortcode -->\n[wppb-logout redirect_url=\"http://localhost/quiz/\"]\n<!-- /wp:shortcode -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph --></div></div>\n<!-- /wp:uagb/column --></div></section>\n<!-- /wp:uagb/columns -->\n\n<!-- wp:paragraph {\"className\":\".wp-block-button{text-align:\\u0022center\\u0022;}\"} -->\n<p class=\".wp-block-button{text-align:&quot;center&quot;;}\"></p>\n<!-- /wp:paragraph -->', 'LOGOUT', '', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2020-07-16 08:28:09', '2020-07-16 08:28:09', '', 63, 'http://localhost/quiz/2020/07/16/63-revision-v1/', 0, 'revision', '', 0),
(126, 1, '2020-07-16 09:13:03', '2020-07-16 09:13:03', '', 'ready', '', 'inherit', 'open', 'closed', '', 'ready', '', '', '2020-07-16 09:13:03', '2020-07-16 09:13:03', '', 17, 'http://localhost/quiz/wp-content/uploads/2020/07/ready.png', 0, 'attachment', 'image/png', 0),
(127, 1, '2020-07-16 09:14:28', '2020-07-16 09:14:28', '', 'ready-1', '', 'inherit', 'open', 'closed', '', 'ready-1', '', '', '2020-07-16 09:14:28', '2020-07-16 09:14:28', '', 17, 'http://localhost/quiz/wp-content/uploads/2020/07/ready-1.png', 0, 'attachment', 'image/png', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(128, 1, '2020-07-16 09:14:51', '2020-07-16 09:14:51', '<!-- wp:uagb/section {\"classMigrate\":true,\"block_id\":\"16cf722c\"} -->\n<section class=\"wp-block-uagb-section uagb-section__wrap uagb-section__background-undefined uagb-block-16cf722c\"><div class=\"uagb-section__overlay\"></div><div class=\"uagb-section__inner-wrap\"><!-- wp:uagb/advanced-heading {\"block_id\":\"69edd71c\",\"classMigrate\":true,\"headingColor\":\"#5c5d5e\",\"separatorColor\":\"#03a9f4\",\"headingTag\":\"h3\",\"level\":3,\"separatorWidth\":35} -->\n<div class=\"wp-block-uagb-advanced-heading uagb-block-69edd71c\"><h3 class=\"uagb-heading-text\">We are pleased to have you here.</h3><div class=\"uagb-separator-wrap\"><div class=\"uagb-separator\"></div></div><p class=\"uagb-desc-text\"></p></div>\n<!-- /wp:uagb/advanced-heading -->\n\n<!-- wp:paragraph {\"align\":\"center\",\"customTextColor\":\"#292929\",\"customFontSize\":18} -->\n<p style=\"color:#292929;font-size:18px\" class=\"has-text-color has-text-align-center\">A quiz gives people fun and interactive experience. It is an effort to inspire people and you can test your knowledge regarding WordPress through it. lets gather on one platform and compete with others.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"align\":\"center\",\"customTextColor\":\"#292929\",\"customFontSize\":18} -->\n<p style=\"color:#292929;font-size:18px\" class=\"has-text-color has-text-align-center\">Register yourself here and test your education because it is made for You!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"align\":\"center\",\"id\":127,\"width\":389,\"height\":159,\"sizeSlug\":\"large\"} -->\n<div class=\"wp-block-image\"><figure class=\"aligncenter size-large is-resized\"><img src=\"http://localhost/quiz/wp-content/uploads/2020/07/ready-1-1024x419.png\" alt=\"\" class=\"wp-image-127\" width=\"389\" height=\"159\"/></figure></div>\n<!-- /wp:image -->\n\n<!-- wp:uagb/advanced-heading {\"block_id\":\"8558c71c\",\"classMigrate\":true,\"headingColor\":\"#5c5d5e\",\"separatorColor\":\"#03a9f4\",\"separatorWidth\":20} -->\n<div class=\"wp-block-uagb-advanced-heading uagb-block-8558c71c\"><h2 class=\"uagb-heading-text\">Instructions</h2><div class=\"uagb-separator-wrap\"><div class=\"uagb-separator\"></div></div><p class=\"uagb-desc-text\"></p></div>\n<!-- /wp:uagb/advanced-heading -->\n\n<!-- wp:list -->\n<ul><li>Be a part of WP Quiz and get yourself register now.</li><li>Login yourself to get started.</li><li>You have 20 mins to complete the quiz and submit it.</li><li>Once the time is up quiz will be submitted automatically.</li><li>Result will be shown after the submission of quiz.</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:uagb/icon-list {\"block_id\":\"cd69ef92\",\"classMigrate\":true,\"childMigrate\":true} -->\n<div class=\"wp-block-uagb-icon-list uagb-icon-list__outer-wrap uagb-icon-list__layout-vertical uagb-block-cd69ef92\"><div class=\"uagb-icon-list__wrap\"></div></div>\n<!-- /wp:uagb/icon-list --></div></section>\n<!-- /wp:uagb/section -->', 'HOME', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2020-07-16 09:14:51', '2020-07-16 09:14:51', '', 17, 'http://localhost/quiz/2020/07/16/17-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'main menu', 'main-menu', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(21, 2, 0),
(24, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'abiha'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'wp_user-settings', 'libraryContent=browse'),
(19, 1, 'wp_user-settings-time', '1594667646'),
(22, 1, 'wppb_pms_cross_promo_dismiss_notification', 'true'),
(24, 1, 'closedpostboxes_fca_qc_quiz', 'a:0:{}'),
(25, 1, 'metaboxhidden_fca_qc_quiz', 'a:2:{i:1;s:7:\"slugdiv\";i:2;s:29:\"fca_qc_quiz_settings_meta_box\";}'),
(27, 1, 'session_tokens', 'a:4:{s:64:\"3d62a95cd562195e22586ac26a0a3b0f90b25ac9cf90d1fcf1ffa762f245e362\";a:4:{s:10:\"expiration\";i:1594900355;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36\";s:5:\"login\";i:1594727555;}s:64:\"89427b7006762ae9b91008759118f75fb30c93cef0f1477d43c416a1e7144c39\";a:4:{s:10:\"expiration\";i:1594909384;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36\";s:5:\"login\";i:1594736584;}s:64:\"8c9658c428d55c982aee0ca264ce001091c4b52bade3d2a0bffa9c53dad15472\";a:4:{s:10:\"expiration\";i:1595014601;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36\";s:5:\"login\";i:1594841801;}s:64:\"3670d24a0cf5311d33e615439e6b8d6ee25d71958e1e5a9ccf2d36330755fdbd\";a:4:{s:10:\"expiration\";i:1595064174;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36\";s:5:\"login\";i:1594891374;}}'),
(28, 1, 'wppb_new_feature_customization_toolbox_dismiss_notification', 'true'),
(29, 2, 'nickname', 'fatima kirmani'),
(30, 2, 'first_name', 'fatima'),
(31, 2, 'last_name', 'zehra'),
(32, 2, 'description', ''),
(33, 2, 'rich_editing', 'true'),
(34, 2, 'syntax_highlighting', 'true'),
(35, 2, 'comment_shortcuts', 'false'),
(36, 2, 'admin_color', 'fresh'),
(37, 2, 'use_ssl', '0'),
(38, 2, 'show_admin_bar_front', 'true'),
(39, 2, 'locale', ''),
(40, 2, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(41, 2, 'wp_user_level', '0'),
(43, 1, 'bsf-optin-notice', 'notice-dismissed'),
(45, 3, 'nickname', 'amal amir'),
(46, 3, 'first_name', 'amal'),
(47, 3, 'last_name', 'zehra'),
(48, 3, 'description', ''),
(49, 3, 'rich_editing', 'true'),
(50, 3, 'syntax_highlighting', 'true'),
(51, 3, 'comment_shortcuts', 'false'),
(52, 3, 'admin_color', 'fresh'),
(53, 3, 'use_ssl', '0'),
(54, 3, 'show_admin_bar_front', 'true'),
(55, 3, 'locale', ''),
(56, 3, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(57, 3, 'wp_user_level', '0'),
(58, 3, 'session_tokens', 'a:2:{s:64:\"2dfc041b36e764c1a306abbddbe63b26303f0246de65e0876c14aace344f0275\";a:4:{s:10:\"expiration\";i:1595056197;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36\";s:5:\"login\";i:1594883397;}s:64:\"f2b8ecfda4ec3797bfc47f0dbaf9f6596d9c689effec6876cfc8fbdf6312bb91\";a:4:{s:10:\"expiration\";i:1595056198;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36\";s:5:\"login\";i:1594883398;}}'),
(75, 5, 'nickname', 'tania'),
(76, 5, 'first_name', 'tania'),
(77, 5, 'last_name', 'kumail'),
(78, 5, 'description', ''),
(79, 5, 'rich_editing', 'true'),
(80, 5, 'syntax_highlighting', 'true'),
(81, 5, 'comment_shortcuts', 'false'),
(82, 5, 'admin_color', 'fresh'),
(83, 5, 'use_ssl', '0'),
(84, 5, 'show_admin_bar_front', 'true'),
(85, 5, 'locale', ''),
(86, 5, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(87, 5, 'wp_user_level', '0');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'abiha', '$P$BOeTG/6FsY36nqVovlObhG5FPaISvn1', 'abiha', 'abiha.amir456@gmail.com', 'http://localhost/quiz', '2020-07-13 18:09:32', '', 0, 'abiha'),
(2, 'fatima kirmani', '$P$BHjxBJSNGBObZcE/JTe0kyW6W3fQ/O/', 'fatima-kirmani', 'fatimakirmani56@gmail.com', '', '2020-07-14 14:22:10', '', 0, 'fatima zehra'),
(3, 'amal amir', '$P$BmtV..qoRrQHQncvMZlhlJyttnkla0.', 'amal-amir', 'amal.amir74@gmail.com', '', '2020-07-16 07:09:36', '', 0, 'amal zehra'),
(5, 'tania', '$P$BkaCFTRqq4xkE/tLbGRJaLQDw2CUuK/', 'tania', 'taniafatima@hotmail.com', '', '2020-07-16 09:19:51', '', 0, 'tania kumail');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpmailsmtp_tasks_meta`
--

CREATE TABLE `wp_wpmailsmtp_tasks_meta` (
  `id` bigint(20) NOT NULL,
  `action` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wsal_metadata`
--

CREATE TABLE `wp_wsal_metadata` (
  `id` bigint(20) NOT NULL,
  `occurrence_id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `value` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wp_wsal_metadata`
--

INSERT INTO `wp_wsal_metadata` (`id`, `occurrence_id`, `name`, `value`) VALUES
(1, 1, 'PluginFile', 'C:\\xampp\\htdocs\\quiz/wp-content/plugins/wp-security-audit-log/wp-security-audit-log.php'),
(2, 1, 'PluginData', 'O:8:\"stdClass\":5:{s:4:\"Name\";s:15:\"WP Activity Log\";s:9:\"PluginURI\";s:25:\"http://wpactivitylog.com/\";s:7:\"Version\";s:5:\"4.1.2\";s:6:\"Author\";s:17:\"WP White Security\";s:7:\"Network\";s:5:\"False\";}'),
(3, 1, 'ClientIP', '::1'),
(4, 1, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(5, 1, 'CurrentUserID', '1'),
(6, 1, 'CurrentUserRoles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:10:\"superadmin\";}'),
(7, 1, 'Severity', '6'),
(8, 1, 'Object', 'plugin'),
(9, 1, 'EventType', 'activated'),
(10, 2, 'PostID', '75'),
(11, 2, 'PostType', 'page'),
(12, 2, 'PostTitle', 'Front Page'),
(13, 2, 'PostStatus', 'publish'),
(14, 2, 'PostDate', '2020-07-14 08:07:59'),
(15, 2, 'PostUrl', 'http://localhost/quiz/mesmerize/'),
(16, 2, 'EditorLinkPost', 'http://localhost/quiz/wp-admin/post.php?post=75&amp;action=edit'),
(17, 2, 'ClientIP', '::1'),
(18, 2, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(19, 2, 'CurrentUserID', '1'),
(20, 2, 'CurrentUserRoles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:10:\"superadmin\";}'),
(21, 2, 'Severity', '20'),
(22, 2, 'Object', 'post'),
(23, 2, 'EventType', 'viewed'),
(24, 3, 'PostID', '17'),
(25, 3, 'PostType', 'page'),
(26, 3, 'PostTitle', 'HOME'),
(27, 3, 'PostStatus', 'publish'),
(28, 3, 'PostDate', '2020-07-13 19:56:00'),
(29, 3, 'PostUrl', 'http://localhost/quiz/'),
(30, 3, 'ClientIP', '::1'),
(31, 3, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(32, 3, 'CurrentUserID', '1'),
(33, 3, 'CurrentUserRoles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:10:\"superadmin\";}'),
(34, 3, 'Severity', '20'),
(35, 3, 'Object', 'post'),
(36, 3, 'EventType', 'viewed'),
(37, 4, 'PostID', '17'),
(38, 4, 'PostType', 'page'),
(39, 4, 'PostTitle', 'HOME'),
(40, 4, 'PostStatus', 'publish'),
(41, 4, 'PostDate', '2020-07-13 19:56:00'),
(42, 4, 'PostUrl', 'http://localhost/quiz/'),
(43, 4, 'ClientIP', '::1'),
(44, 4, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(45, 4, 'CurrentUserID', '1'),
(46, 4, 'CurrentUserRoles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:10:\"superadmin\";}'),
(47, 4, 'Severity', '20'),
(48, 4, 'Object', 'post'),
(49, 4, 'EventType', 'viewed'),
(50, 5, 'AttachmentID', '99'),
(51, 5, 'FileName', 'banner.png'),
(52, 5, 'FilePath', 'C:\\xampp\\htdocs\\quiz/wp-content/uploads/2020/07'),
(53, 5, 'ClientIP', '::1'),
(54, 5, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(55, 5, 'CurrentUserID', '1'),
(56, 5, 'CurrentUserRoles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:10:\"superadmin\";}'),
(57, 5, 'Severity', '10'),
(58, 5, 'Object', 'file'),
(59, 5, 'EventType', 'uploaded'),
(60, 6, 'PostID', '17'),
(61, 6, 'PostType', 'page'),
(62, 6, 'PostTitle', 'HOME'),
(63, 6, 'PostStatus', 'publish'),
(64, 6, 'PostDate', '2020-07-13 19:56:00'),
(65, 6, 'PostUrl', 'http://localhost/quiz/'),
(66, 6, 'ClientIP', '::1'),
(67, 6, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(68, 6, 'CurrentUserID', '1'),
(69, 6, 'CurrentUserRoles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:10:\"superadmin\";}'),
(70, 6, 'Severity', '20'),
(71, 6, 'Object', 'post'),
(72, 6, 'EventType', 'viewed'),
(73, 7, 'AttachmentID', '100'),
(74, 7, 'FileName', 'wpbg.jpg'),
(75, 7, 'FilePath', 'C:\\xampp\\htdocs\\quiz/wp-content/uploads/2020/07'),
(76, 7, 'ClientIP', '::1'),
(77, 7, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(78, 7, 'CurrentUserID', '1'),
(79, 7, 'CurrentUserRoles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:10:\"superadmin\";}'),
(80, 7, 'Severity', '10'),
(81, 7, 'Object', 'file'),
(82, 7, 'EventType', 'uploaded'),
(83, 8, 'PostID', '17'),
(84, 8, 'PostType', 'page'),
(85, 8, 'PostTitle', 'HOME'),
(86, 8, 'PostStatus', 'publish'),
(87, 8, 'PostDate', '2020-07-13 19:56:00'),
(88, 8, 'PostUrl', 'http://localhost/quiz/'),
(89, 8, 'ClientIP', '::1'),
(90, 8, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(91, 8, 'CurrentUserID', '1'),
(92, 8, 'CurrentUserRoles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:10:\"superadmin\";}'),
(93, 8, 'Severity', '20'),
(94, 8, 'Object', 'post'),
(95, 8, 'EventType', 'viewed'),
(96, 9, 'PostID', '17'),
(97, 9, 'PostType', 'page'),
(98, 9, 'PostTitle', 'HOME'),
(99, 9, 'PostStatus', 'publish'),
(100, 9, 'PostDate', '2020-07-13 19:56:00'),
(101, 9, 'PostUrl', 'http://localhost/quiz/'),
(102, 9, 'EditorLinkPost', 'http://localhost/quiz/wp-admin/post.php?post=17&amp;action=edit'),
(103, 9, 'ClientIP', '::1'),
(104, 9, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(105, 9, 'CurrentUserID', '1'),
(106, 9, 'CurrentUserRoles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:10:\"superadmin\";}'),
(107, 9, 'Severity', '20'),
(108, 9, 'Object', 'post'),
(109, 9, 'EventType', 'viewed'),
(110, 10, 'PostID', '10'),
(111, 10, 'PostType', 'page'),
(112, 10, 'PostTitle', 'Register'),
(113, 10, 'PostStatus', 'publish'),
(114, 10, 'PostDate', '2020-07-13 19:28:22'),
(115, 10, 'PostUrl', 'http://localhost/quiz/register/'),
(116, 10, 'EditorLinkPost', 'http://localhost/quiz/wp-admin/post.php?post=10&amp;action=edit'),
(117, 10, 'ClientIP', '::1'),
(118, 10, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(119, 10, 'CurrentUserID', '1'),
(120, 10, 'CurrentUserRoles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:10:\"superadmin\";}'),
(121, 10, 'Severity', '20'),
(122, 10, 'Object', 'post'),
(123, 10, 'EventType', 'viewed'),
(124, 11, 'PostID', '12'),
(125, 11, 'PostType', 'page'),
(126, 11, 'PostTitle', 'Log In'),
(127, 11, 'PostStatus', 'publish'),
(128, 11, 'PostDate', '2020-07-13 19:28:22'),
(129, 11, 'PostUrl', 'http://localhost/quiz/log-in/'),
(130, 11, 'EditorLinkPost', 'http://localhost/quiz/wp-admin/post.php?post=12&amp;action=edit'),
(131, 11, 'ClientIP', '::1'),
(132, 11, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(133, 11, 'CurrentUserID', '1'),
(134, 11, 'CurrentUserRoles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:10:\"superadmin\";}'),
(135, 11, 'Severity', '20'),
(136, 11, 'Object', 'post'),
(137, 11, 'EventType', 'viewed'),
(138, 12, 'CurrentUserID', '1'),
(139, 12, 'CurrentUserRoles', 'a:1:{i:0;s:13:\"administrator\";}'),
(140, 12, 'ClientIP', '::1'),
(141, 12, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(142, 12, 'Severity', '15'),
(143, 12, 'Object', 'user'),
(144, 12, 'EventType', 'logout'),
(145, 13, 'PostID', '54'),
(146, 13, 'PostType', 'page'),
(147, 13, 'PostTitle', 'QUIZ'),
(148, 13, 'PostStatus', 'publish'),
(149, 13, 'PostDate', '2020-07-13 21:03:28'),
(150, 13, 'PostUrl', 'http://localhost/quiz/quiz-2/'),
(151, 13, 'EditorLinkPost', 'http://localhost/quiz/wp-admin/post.php?post=54&amp;action=edit'),
(152, 13, 'ClientIP', '::1'),
(153, 13, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(154, 13, 'CurrentUserID', '1'),
(155, 13, 'CurrentUserRoles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:10:\"superadmin\";}'),
(156, 13, 'Severity', '20'),
(157, 13, 'Object', 'post'),
(158, 13, 'EventType', 'viewed'),
(159, 14, 'PostID', '63'),
(160, 14, 'PostType', 'page'),
(161, 14, 'PostTitle', 'LOGOUT'),
(162, 14, 'PostStatus', 'publish'),
(163, 14, 'PostDate', '2020-07-14 07:09:44'),
(164, 14, 'PostUrl', 'http://localhost/quiz/logout/'),
(165, 14, 'EditorLinkPost', 'http://localhost/quiz/wp-admin/post.php?post=63&amp;action=edit'),
(166, 14, 'ClientIP', '::1'),
(167, 14, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(168, 14, 'CurrentUserID', '1'),
(169, 14, 'CurrentUserRoles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:10:\"superadmin\";}'),
(170, 14, 'Severity', '20'),
(171, 14, 'Object', 'post'),
(172, 14, 'EventType', 'viewed'),
(173, 15, 'PostID', '20'),
(174, 15, 'PostType', 'page'),
(175, 15, 'PostTitle', 'CONTACT US'),
(176, 15, 'PostStatus', 'publish'),
(177, 15, 'PostDate', '2020-07-13 19:59:18'),
(178, 15, 'PostUrl', 'http://localhost/quiz/contact-us/'),
(179, 15, 'EditorLinkPost', 'http://localhost/quiz/wp-admin/post.php?post=20&amp;action=edit'),
(180, 15, 'ClientIP', '::1'),
(181, 15, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(182, 15, 'CurrentUserID', '1'),
(183, 15, 'CurrentUserRoles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:10:\"superadmin\";}'),
(184, 15, 'Severity', '20'),
(185, 15, 'Object', 'post'),
(186, 15, 'EventType', 'viewed'),
(187, 16, 'PostID', '10'),
(188, 16, 'PostType', 'page'),
(189, 16, 'PostTitle', 'Register'),
(190, 16, 'PostStatus', 'publish'),
(191, 16, 'PostDate', '2020-07-13 19:28:22'),
(192, 16, 'PostUrl', 'http://localhost/quiz/register/'),
(193, 16, 'EditorLinkPost', 'http://localhost/quiz/wp-admin/post.php?post=10&amp;action=edit'),
(194, 16, 'ClientIP', '::1'),
(195, 16, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(196, 16, 'CurrentUserID', '1'),
(197, 16, 'CurrentUserRoles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:10:\"superadmin\";}'),
(198, 16, 'Severity', '20'),
(199, 16, 'Object', 'post'),
(200, 16, 'EventType', 'viewed'),
(201, 17, 'PostID', '10'),
(202, 17, 'PostType', 'page'),
(203, 17, 'PostTitle', 'Register'),
(204, 17, 'PostStatus', 'publish'),
(205, 17, 'PostDate', '2020-07-13 19:28:22'),
(206, 17, 'PostUrl', 'http://localhost/quiz/register/'),
(207, 17, 'EditorLinkPost', 'http://localhost/quiz/wp-admin/post.php?post=10&amp;action=edit'),
(208, 17, 'ClientIP', '::1'),
(209, 17, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(210, 17, 'CurrentUserID', '1'),
(211, 17, 'CurrentUserRoles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:10:\"superadmin\";}'),
(212, 17, 'Severity', '20'),
(213, 17, 'Object', 'post'),
(214, 17, 'EventType', 'viewed'),
(215, 18, 'TargetUsername', 'abiha'),
(216, 18, 'custom_field_name', 'wppb_new_feature_customization_toolbox_dismiss_notification'),
(217, 18, 'new_value', 'true'),
(218, 18, 'Roles', 'administrator'),
(219, 18, 'EditUserLink', 'http://localhost/quiz/wp-admin/user-edit.php?user_id=1'),
(220, 18, 'ClientIP', '::1'),
(221, 18, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(222, 18, 'CurrentUserID', '1'),
(223, 18, 'CurrentUserRoles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:10:\"superadmin\";}'),
(224, 18, 'Severity', '15'),
(225, 18, 'Object', 'user'),
(226, 18, 'EventType', 'modified'),
(227, 19, 'PostID', '10'),
(228, 19, 'PostType', 'page'),
(229, 19, 'PostTitle', 'Register'),
(230, 19, 'PostStatus', 'publish'),
(231, 19, 'PostDate', '2020-07-13 19:28:22'),
(232, 19, 'PostUrl', 'http://localhost/quiz/register/'),
(233, 19, 'EditorLinkPost', 'http://localhost/quiz/wp-admin/post.php?post=10&amp;action=edit'),
(234, 19, 'ClientIP', '::1'),
(235, 19, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(236, 19, 'CurrentUserID', '1'),
(237, 19, 'CurrentUserRoles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:10:\"superadmin\";}'),
(238, 19, 'Severity', '20'),
(239, 19, 'Object', 'post'),
(240, 19, 'EventType', 'viewed'),
(241, 20, 'PostID', '63'),
(242, 20, 'PostType', 'page'),
(243, 20, 'PostTitle', 'LOGOUT'),
(244, 20, 'PostStatus', 'publish'),
(245, 20, 'PostDate', '2020-07-14 07:09:44'),
(246, 20, 'PostUrl', 'http://localhost/quiz/logout/'),
(247, 20, 'EditorLinkPost', 'http://localhost/quiz/wp-admin/post.php?post=63&amp;action=edit'),
(248, 20, 'ClientIP', '::1'),
(249, 20, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(250, 20, 'CurrentUserID', '1'),
(251, 20, 'CurrentUserRoles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:10:\"superadmin\";}'),
(252, 20, 'Severity', '20'),
(253, 20, 'Object', 'post'),
(254, 20, 'EventType', 'opened'),
(255, 21, 'PostID', '63'),
(256, 21, 'PostType', 'page'),
(257, 21, 'PostTitle', 'LOGOUT'),
(258, 21, 'PostStatus', 'publish'),
(259, 21, 'PostDate', '2020-07-14 07:09:44'),
(260, 21, 'PostUrl', 'http://localhost/quiz/logout/'),
(261, 21, 'EditorLinkPost', 'http://localhost/quiz/wp-admin/post.php?post=63&amp;action=edit'),
(262, 21, 'RevisionLink', 'http://localhost/quiz/wp-admin/revision.php?revision=102'),
(263, 21, 'ClientIP', '::1'),
(264, 21, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(265, 21, 'CurrentUserID', '1'),
(266, 21, 'CurrentUserRoles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:10:\"superadmin\";}'),
(267, 21, 'Severity', '15'),
(268, 21, 'Object', 'post'),
(269, 21, 'EventType', 'modified'),
(270, 22, 'PostID', '63'),
(271, 22, 'PostType', 'page'),
(272, 22, 'PostTitle', 'LOGOUT'),
(273, 22, 'PostStatus', 'publish'),
(274, 22, 'PostDate', '2020-07-14 07:09:44'),
(275, 22, 'PostUrl', 'http://localhost/quiz/logout/'),
(276, 22, 'EditorLinkPost', 'http://localhost/quiz/wp-admin/post.php?post=63&amp;action=edit'),
(277, 22, 'ClientIP', '::1'),
(278, 22, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(279, 22, 'CurrentUserID', '1'),
(280, 22, 'CurrentUserRoles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:10:\"superadmin\";}'),
(281, 22, 'Severity', '20'),
(282, 22, 'Object', 'post'),
(283, 22, 'EventType', 'viewed'),
(284, 23, 'PostID', '63'),
(285, 23, 'PostType', 'page'),
(286, 23, 'PostTitle', 'LOGOUT'),
(287, 23, 'PostStatus', 'publish'),
(288, 23, 'PostDate', '2020-07-14 07:09:44'),
(289, 23, 'PostUrl', 'http://localhost/quiz/logout/'),
(290, 23, 'EditorLinkPost', 'http://localhost/quiz/wp-admin/post.php?post=63&amp;action=edit'),
(291, 23, 'ClientIP', '::1'),
(292, 23, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(293, 23, 'CurrentUserID', '1'),
(294, 23, 'CurrentUserRoles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:10:\"superadmin\";}'),
(295, 23, 'Severity', '20'),
(296, 23, 'Object', 'post'),
(297, 23, 'EventType', 'opened'),
(298, 24, 'PostID', '63'),
(299, 24, 'PostType', 'page'),
(300, 24, 'PostTitle', 'LOGOUT'),
(301, 24, 'PostStatus', 'publish'),
(302, 24, 'PostDate', '2020-07-14 07:09:44'),
(303, 24, 'PostUrl', 'http://localhost/quiz/logout/'),
(304, 24, 'EditorLinkPost', 'http://localhost/quiz/wp-admin/post.php?post=63&amp;action=edit'),
(305, 24, 'RevisionLink', 'http://localhost/quiz/wp-admin/revision.php?revision=103'),
(306, 24, 'ClientIP', '::1'),
(307, 24, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(308, 24, 'CurrentUserID', '1'),
(309, 24, 'CurrentUserRoles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:10:\"superadmin\";}'),
(310, 24, 'Severity', '15'),
(311, 24, 'Object', 'post'),
(312, 24, 'EventType', 'modified'),
(313, 25, 'PostID', '63'),
(314, 25, 'PostType', 'page'),
(315, 25, 'PostTitle', 'LOGOUT'),
(316, 25, 'PostStatus', 'publish'),
(317, 25, 'PostDate', '2020-07-14 07:09:44'),
(318, 25, 'PostUrl', 'http://localhost/quiz/logout/'),
(319, 25, 'EditorLinkPost', 'http://localhost/quiz/wp-admin/post.php?post=63&amp;action=edit'),
(320, 25, 'ClientIP', '::1'),
(321, 25, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(322, 25, 'CurrentUserID', '1'),
(323, 25, 'CurrentUserRoles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:10:\"superadmin\";}'),
(324, 25, 'Severity', '20'),
(325, 25, 'Object', 'post'),
(326, 25, 'EventType', 'viewed'),
(327, 26, 'CurrentUserID', '1'),
(328, 26, 'CurrentUserRoles', 'a:1:{i:0;s:13:\"administrator\";}'),
(329, 26, 'ClientIP', '::1'),
(330, 26, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(331, 26, 'Severity', '15'),
(332, 26, 'Object', 'user'),
(333, 26, 'EventType', 'logout'),
(334, 27, 'Username', 'abiha'),
(335, 27, 'CurrentUserRoles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:10:\"superadmin\";}'),
(336, 27, 'ClientIP', '::1'),
(337, 27, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(338, 27, 'Severity', '15'),
(339, 27, 'Object', 'user'),
(340, 27, 'EventType', 'login'),
(341, 28, 'PostID', '63'),
(342, 28, 'PostType', 'page'),
(343, 28, 'PostTitle', 'LOGOUT'),
(344, 28, 'PostStatus', 'publish'),
(345, 28, 'PostDate', '2020-07-14 07:09:44'),
(346, 28, 'PostUrl', 'http://localhost/quiz/logout/'),
(347, 28, 'EditorLinkPost', 'http://localhost/quiz/wp-admin/post.php?post=63&amp;action=edit'),
(348, 28, 'ClientIP', '::1'),
(349, 28, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(350, 28, 'CurrentUserID', '1'),
(351, 28, 'CurrentUserRoles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:10:\"superadmin\";}'),
(352, 28, 'Severity', '20'),
(353, 28, 'Object', 'post'),
(354, 28, 'EventType', 'opened'),
(355, 29, 'PostID', '63'),
(356, 29, 'PostType', 'page'),
(357, 29, 'PostTitle', 'LOGOUT'),
(358, 29, 'PostStatus', 'publish'),
(359, 29, 'PostDate', '2020-07-14 07:09:44'),
(360, 29, 'PostUrl', 'http://localhost/quiz/logout/'),
(361, 29, 'EditorLinkPost', 'http://localhost/quiz/wp-admin/post.php?post=63&amp;action=edit'),
(362, 29, 'RevisionLink', 'http://localhost/quiz/wp-admin/revision.php?revision=104'),
(363, 29, 'ClientIP', '::1'),
(364, 29, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(365, 29, 'CurrentUserID', '1'),
(366, 29, 'CurrentUserRoles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:10:\"superadmin\";}'),
(367, 29, 'Severity', '15'),
(368, 29, 'Object', 'post'),
(369, 29, 'EventType', 'modified'),
(370, 30, 'PostID', '63'),
(371, 30, 'PostType', 'page'),
(372, 30, 'PostTitle', 'LOGOUT'),
(373, 30, 'PostStatus', 'publish'),
(374, 30, 'PostDate', '2020-07-14 07:09:44'),
(375, 30, 'PostUrl', 'http://localhost/quiz/logout/'),
(376, 30, 'EditorLinkPost', 'http://localhost/quiz/wp-admin/post.php?post=63&amp;action=edit'),
(377, 30, 'ClientIP', '::1'),
(378, 30, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(379, 30, 'CurrentUserID', '1'),
(380, 30, 'CurrentUserRoles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:10:\"superadmin\";}'),
(381, 30, 'Severity', '20'),
(382, 30, 'Object', 'post'),
(383, 30, 'EventType', 'viewed'),
(384, 31, 'PostID', '63'),
(385, 31, 'PostType', 'page'),
(386, 31, 'PostTitle', 'LOGOUT'),
(387, 31, 'PostStatus', 'publish'),
(388, 31, 'PostDate', '2020-07-14 07:09:44'),
(389, 31, 'PostUrl', 'http://localhost/quiz/logout/'),
(390, 31, 'EditorLinkPost', 'http://localhost/quiz/wp-admin/post.php?post=63&amp;action=edit'),
(391, 31, 'ClientIP', '::1'),
(392, 31, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(393, 31, 'CurrentUserID', '1'),
(394, 31, 'CurrentUserRoles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:10:\"superadmin\";}'),
(395, 31, 'Severity', '20'),
(396, 31, 'Object', 'post'),
(397, 31, 'EventType', 'viewed'),
(398, 32, 'PostID', '63'),
(399, 32, 'PostType', 'page'),
(400, 32, 'PostTitle', 'LOGOUT'),
(401, 32, 'PostStatus', 'publish'),
(402, 32, 'PostDate', '2020-07-14 07:09:44'),
(403, 32, 'PostUrl', 'http://localhost/quiz/logout/'),
(404, 32, 'EditorLinkPost', 'http://localhost/quiz/wp-admin/post.php?post=63&amp;action=edit'),
(405, 32, 'ClientIP', '::1'),
(406, 32, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(407, 32, 'CurrentUserID', '1'),
(408, 32, 'CurrentUserRoles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:10:\"superadmin\";}'),
(409, 32, 'Severity', '20'),
(410, 32, 'Object', 'post'),
(411, 32, 'EventType', 'opened'),
(412, 33, 'PostID', '63'),
(413, 33, 'PostType', 'page'),
(414, 33, 'PostTitle', 'LOGOUT'),
(415, 33, 'PostStatus', 'publish'),
(416, 33, 'PostDate', '2020-07-14 07:09:44'),
(417, 33, 'PostUrl', 'http://localhost/quiz/logout/'),
(418, 33, 'EditorLinkPost', 'http://localhost/quiz/wp-admin/post.php?post=63&amp;action=edit'),
(419, 33, 'RevisionLink', 'http://localhost/quiz/wp-admin/revision.php?revision=106'),
(420, 33, 'ClientIP', '::1'),
(421, 33, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(422, 33, 'CurrentUserID', '1'),
(423, 33, 'CurrentUserRoles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:10:\"superadmin\";}'),
(424, 33, 'Severity', '15'),
(425, 33, 'Object', 'post'),
(426, 33, 'EventType', 'modified'),
(427, 34, 'PostID', '63'),
(428, 34, 'PostType', 'page'),
(429, 34, 'PostTitle', 'LOGOUT'),
(430, 34, 'PostStatus', 'publish'),
(431, 34, 'PostDate', '2020-07-14 07:09:44'),
(432, 34, 'PostUrl', 'http://localhost/quiz/logout/'),
(433, 34, 'EditorLinkPost', 'http://localhost/quiz/wp-admin/post.php?post=63&amp;action=edit'),
(434, 34, 'ClientIP', '::1'),
(435, 34, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(436, 34, 'CurrentUserID', '1'),
(437, 34, 'CurrentUserRoles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:10:\"superadmin\";}'),
(438, 34, 'Severity', '20'),
(439, 34, 'Object', 'post'),
(440, 34, 'EventType', 'viewed'),
(441, 35, 'PostID', '63'),
(442, 35, 'PostType', 'page'),
(443, 35, 'PostTitle', 'LOGOUT'),
(444, 35, 'PostStatus', 'publish'),
(445, 35, 'PostDate', '2020-07-14 07:09:44'),
(446, 35, 'PostUrl', 'http://localhost/quiz/logout/'),
(447, 35, 'EditorLinkPost', 'http://localhost/quiz/wp-admin/post.php?post=63&amp;action=edit'),
(448, 35, 'ClientIP', '::1'),
(449, 35, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(450, 35, 'CurrentUserID', '1'),
(451, 35, 'CurrentUserRoles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:10:\"superadmin\";}'),
(452, 35, 'Severity', '20'),
(453, 35, 'Object', 'post'),
(454, 35, 'EventType', 'opened'),
(455, 36, 'PostID', '63'),
(456, 36, 'PostType', 'page'),
(457, 36, 'PostTitle', 'LOGOUT'),
(458, 36, 'PostStatus', 'publish'),
(459, 36, 'PostDate', '2020-07-14 07:09:44'),
(460, 36, 'PostUrl', 'http://localhost/quiz/logout/'),
(461, 36, 'EditorLinkPost', 'http://localhost/quiz/wp-admin/post.php?post=63&amp;action=edit'),
(462, 36, 'RevisionLink', 'http://localhost/quiz/wp-admin/revision.php?revision=107'),
(463, 36, 'ClientIP', '::1'),
(464, 36, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(465, 36, 'CurrentUserID', '1'),
(466, 36, 'CurrentUserRoles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:10:\"superadmin\";}'),
(467, 36, 'Severity', '15'),
(468, 36, 'Object', 'post'),
(469, 36, 'EventType', 'modified'),
(470, 37, 'PostID', '63'),
(471, 37, 'PostType', 'page'),
(472, 37, 'PostTitle', 'LOGOUT'),
(473, 37, 'PostStatus', 'publish'),
(474, 37, 'PostDate', '2020-07-14 07:09:44'),
(475, 37, 'PostUrl', 'http://localhost/quiz/logout/'),
(476, 37, 'EditorLinkPost', 'http://localhost/quiz/wp-admin/post.php?post=63&amp;action=edit'),
(477, 37, 'ClientIP', '::1'),
(478, 37, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(479, 37, 'CurrentUserID', '1'),
(480, 37, 'CurrentUserRoles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:10:\"superadmin\";}'),
(481, 37, 'Severity', '20'),
(482, 37, 'Object', 'post'),
(483, 37, 'EventType', 'viewed'),
(484, 38, 'PostID', '63'),
(485, 38, 'PostType', 'page'),
(486, 38, 'PostTitle', 'LOGOUT'),
(487, 38, 'PostStatus', 'publish'),
(488, 38, 'PostDate', '2020-07-14 07:09:44'),
(489, 38, 'PostUrl', 'http://localhost/quiz/logout/'),
(490, 38, 'EditorLinkPost', 'http://localhost/quiz/wp-admin/post.php?post=63&amp;action=edit'),
(491, 38, 'ClientIP', '::1'),
(492, 38, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(493, 38, 'CurrentUserID', '1'),
(494, 38, 'CurrentUserRoles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:10:\"superadmin\";}'),
(495, 38, 'Severity', '20'),
(496, 38, 'Object', 'post'),
(497, 38, 'EventType', 'opened'),
(498, 39, 'PostID', '63'),
(499, 39, 'PostType', 'page'),
(500, 39, 'PostTitle', 'LOGOUT'),
(501, 39, 'PostStatus', 'publish'),
(502, 39, 'PostDate', '2020-07-14 07:09:44'),
(503, 39, 'PostUrl', 'http://localhost/quiz/logout/'),
(504, 39, 'EditorLinkPost', 'http://localhost/quiz/wp-admin/post.php?post=63&amp;action=edit'),
(505, 39, 'RevisionLink', 'http://localhost/quiz/wp-admin/revision.php?revision=108'),
(506, 39, 'ClientIP', '::1'),
(507, 39, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(508, 39, 'CurrentUserID', '1'),
(509, 39, 'CurrentUserRoles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:10:\"superadmin\";}'),
(510, 39, 'Severity', '15'),
(511, 39, 'Object', 'post'),
(512, 39, 'EventType', 'modified'),
(513, 40, 'PostID', '63'),
(514, 40, 'PostType', 'page'),
(515, 40, 'PostTitle', 'LOGOUT'),
(516, 40, 'PostStatus', 'publish'),
(517, 40, 'PostDate', '2020-07-14 07:09:44'),
(518, 40, 'PostUrl', 'http://localhost/quiz/logout/'),
(519, 40, 'EditorLinkPost', 'http://localhost/quiz/wp-admin/post.php?post=63&amp;action=edit'),
(520, 40, 'ClientIP', '::1'),
(521, 40, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(522, 40, 'CurrentUserID', '1'),
(523, 40, 'CurrentUserRoles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:10:\"superadmin\";}'),
(524, 40, 'Severity', '20'),
(525, 40, 'Object', 'post'),
(526, 40, 'EventType', 'viewed'),
(527, 41, 'PostID', '63'),
(528, 41, 'PostType', 'page'),
(529, 41, 'PostTitle', 'LOGOUT'),
(530, 41, 'PostStatus', 'publish'),
(531, 41, 'PostDate', '2020-07-14 07:09:44'),
(532, 41, 'PostUrl', 'http://localhost/quiz/logout/'),
(533, 41, 'EditorLinkPost', 'http://localhost/quiz/wp-admin/post.php?post=63&amp;action=edit'),
(534, 41, 'ClientIP', '::1'),
(535, 41, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(536, 41, 'CurrentUserID', '1'),
(537, 41, 'CurrentUserRoles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:10:\"superadmin\";}'),
(538, 41, 'Severity', '20'),
(539, 41, 'Object', 'post'),
(540, 41, 'EventType', 'opened'),
(541, 42, 'PostID', '63'),
(542, 42, 'PostType', 'page'),
(543, 42, 'PostTitle', 'LOGOUT'),
(544, 42, 'PostStatus', 'publish'),
(545, 42, 'PostDate', '2020-07-14 07:09:44'),
(546, 42, 'PostUrl', 'http://localhost/quiz/logout/'),
(547, 42, 'EditorLinkPost', 'http://localhost/quiz/wp-admin/post.php?post=63&amp;action=edit'),
(548, 42, 'RevisionLink', 'http://localhost/quiz/wp-admin/revision.php?revision=109'),
(549, 42, 'ClientIP', '::1'),
(550, 42, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(551, 42, 'CurrentUserID', '1'),
(552, 42, 'CurrentUserRoles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:10:\"superadmin\";}'),
(553, 42, 'Severity', '15'),
(554, 42, 'Object', 'post'),
(555, 42, 'EventType', 'modified'),
(556, 43, 'PostID', '63'),
(557, 43, 'PostType', 'page'),
(558, 43, 'PostTitle', 'LOGOUT'),
(559, 43, 'PostStatus', 'publish'),
(560, 43, 'PostDate', '2020-07-14 07:09:44'),
(561, 43, 'PostUrl', 'http://localhost/quiz/logout/'),
(562, 43, 'EditorLinkPost', 'http://localhost/quiz/wp-admin/post.php?post=63&amp;action=edit'),
(563, 43, 'ClientIP', '::1'),
(564, 43, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(565, 43, 'CurrentUserID', '1'),
(566, 43, 'CurrentUserRoles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:10:\"superadmin\";}'),
(567, 43, 'Severity', '20'),
(568, 43, 'Object', 'post'),
(569, 43, 'EventType', 'viewed'),
(570, 44, 'PostID', '63'),
(571, 44, 'PostType', 'page'),
(572, 44, 'PostTitle', 'LOGOUT'),
(573, 44, 'PostStatus', 'publish'),
(574, 44, 'PostDate', '2020-07-14 07:09:44'),
(575, 44, 'PostUrl', 'http://localhost/quiz/logout/'),
(576, 44, 'EditorLinkPost', 'http://localhost/quiz/wp-admin/post.php?post=63&amp;action=edit'),
(577, 44, 'ClientIP', '::1'),
(578, 44, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(579, 44, 'CurrentUserID', '1'),
(580, 44, 'CurrentUserRoles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:10:\"superadmin\";}'),
(581, 44, 'Severity', '20'),
(582, 44, 'Object', 'post'),
(583, 44, 'EventType', 'opened'),
(584, 45, 'PostID', '63'),
(585, 45, 'PostType', 'page'),
(586, 45, 'PostTitle', 'LOGOUT'),
(587, 45, 'PostStatus', 'publish'),
(588, 45, 'PostDate', '2020-07-14 07:09:44'),
(589, 45, 'PostUrl', 'http://localhost/quiz/logout/'),
(590, 45, 'EditorLinkPost', 'http://localhost/quiz/wp-admin/post.php?post=63&amp;action=edit'),
(591, 45, 'RevisionLink', 'http://localhost/quiz/wp-admin/revision.php?revision=110'),
(592, 45, 'ClientIP', '::1'),
(593, 45, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(594, 45, 'CurrentUserID', '1'),
(595, 45, 'CurrentUserRoles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:10:\"superadmin\";}'),
(596, 45, 'Severity', '15'),
(597, 45, 'Object', 'post'),
(598, 45, 'EventType', 'modified'),
(599, 46, 'PostID', '63'),
(600, 46, 'PostType', 'page'),
(601, 46, 'PostTitle', 'LOGOUT'),
(602, 46, 'PostStatus', 'publish'),
(603, 46, 'PostDate', '2020-07-14 07:09:44'),
(604, 46, 'PostUrl', 'http://localhost/quiz/logout/'),
(605, 46, 'EditorLinkPost', 'http://localhost/quiz/wp-admin/post.php?post=63&amp;action=edit'),
(606, 46, 'ClientIP', '::1'),
(607, 46, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(608, 46, 'CurrentUserID', '1'),
(609, 46, 'CurrentUserRoles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:10:\"superadmin\";}'),
(610, 46, 'Severity', '20'),
(611, 46, 'Object', 'post'),
(612, 46, 'EventType', 'viewed'),
(613, 47, 'PostID', '63'),
(614, 47, 'PostType', 'page'),
(615, 47, 'PostTitle', 'LOGOUT'),
(616, 47, 'PostStatus', 'publish'),
(617, 47, 'PostDate', '2020-07-14 07:09:44'),
(618, 47, 'PostUrl', 'http://localhost/quiz/logout/'),
(619, 47, 'EditorLinkPost', 'http://localhost/quiz/wp-admin/post.php?post=63&amp;action=edit'),
(620, 47, 'ClientIP', '::1'),
(621, 47, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(622, 47, 'CurrentUserID', '1'),
(623, 47, 'CurrentUserRoles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:10:\"superadmin\";}'),
(624, 47, 'Severity', '20'),
(625, 47, 'Object', 'post'),
(626, 47, 'EventType', 'opened'),
(627, 48, 'PostID', '63'),
(628, 48, 'PostType', 'page'),
(629, 48, 'PostTitle', 'LOGOUT'),
(630, 48, 'PostStatus', 'publish'),
(631, 48, 'PostDate', '2020-07-14 07:09:44'),
(632, 48, 'PostUrl', 'http://localhost/quiz/logout/'),
(633, 48, 'EditorLinkPost', 'http://localhost/quiz/wp-admin/post.php?post=63&amp;action=edit'),
(634, 48, 'RevisionLink', 'http://localhost/quiz/wp-admin/revision.php?revision=111'),
(635, 48, 'ClientIP', '::1'),
(636, 48, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(637, 48, 'CurrentUserID', '1'),
(638, 48, 'CurrentUserRoles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:10:\"superadmin\";}'),
(639, 48, 'Severity', '15'),
(640, 48, 'Object', 'post'),
(641, 48, 'EventType', 'modified'),
(642, 49, 'PostID', '63'),
(643, 49, 'PostType', 'page'),
(644, 49, 'PostTitle', 'LOGOUT'),
(645, 49, 'PostStatus', 'publish'),
(646, 49, 'PostDate', '2020-07-14 07:09:44'),
(647, 49, 'PostUrl', 'http://localhost/quiz/logout/'),
(648, 49, 'EditorLinkPost', 'http://localhost/quiz/wp-admin/post.php?post=63&amp;action=edit'),
(649, 49, 'ClientIP', '::1'),
(650, 49, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(651, 49, 'CurrentUserID', '1'),
(652, 49, 'CurrentUserRoles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:10:\"superadmin\";}'),
(653, 49, 'Severity', '20'),
(654, 49, 'Object', 'post'),
(655, 49, 'EventType', 'viewed'),
(656, 50, 'PostID', '63'),
(657, 50, 'PostType', 'page'),
(658, 50, 'PostTitle', 'LOGOUT'),
(659, 50, 'PostStatus', 'publish'),
(660, 50, 'PostDate', '2020-07-14 07:09:44'),
(661, 50, 'PostUrl', 'http://localhost/quiz/logout/'),
(662, 50, 'EditorLinkPost', 'http://localhost/quiz/wp-admin/post.php?post=63&amp;action=edit'),
(663, 50, 'ClientIP', '::1'),
(664, 50, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(665, 50, 'CurrentUserID', '1'),
(666, 50, 'CurrentUserRoles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:10:\"superadmin\";}'),
(667, 50, 'Severity', '20'),
(668, 50, 'Object', 'post'),
(669, 50, 'EventType', 'opened'),
(670, 51, 'PostID', '63'),
(671, 51, 'PostType', 'page'),
(672, 51, 'PostTitle', 'LOGOUT'),
(673, 51, 'PostStatus', 'publish'),
(674, 51, 'PostDate', '2020-07-14 07:09:44'),
(675, 51, 'PostUrl', 'http://localhost/quiz/logout/'),
(676, 51, 'EditorLinkPost', 'http://localhost/quiz/wp-admin/post.php?post=63&amp;action=edit'),
(677, 51, 'RevisionLink', 'http://localhost/quiz/wp-admin/revision.php?revision=112'),
(678, 51, 'ClientIP', '::1'),
(679, 51, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(680, 51, 'CurrentUserID', '1'),
(681, 51, 'CurrentUserRoles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:10:\"superadmin\";}'),
(682, 51, 'Severity', '15'),
(683, 51, 'Object', 'post'),
(684, 51, 'EventType', 'modified'),
(685, 52, 'PostID', '63'),
(686, 52, 'PostType', 'page'),
(687, 52, 'PostTitle', 'LOGOUT'),
(688, 52, 'PostStatus', 'publish'),
(689, 52, 'PostDate', '2020-07-14 07:09:44'),
(690, 52, 'PostUrl', 'http://localhost/quiz/logout/'),
(691, 52, 'EditorLinkPost', 'http://localhost/quiz/wp-admin/post.php?post=63&amp;action=edit'),
(692, 52, 'ClientIP', '::1'),
(693, 52, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(694, 52, 'CurrentUserID', '1'),
(695, 52, 'CurrentUserRoles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:10:\"superadmin\";}'),
(696, 52, 'Severity', '20'),
(697, 52, 'Object', 'post'),
(698, 52, 'EventType', 'viewed'),
(699, 53, 'PostID', '63'),
(700, 53, 'PostType', 'page'),
(701, 53, 'PostTitle', 'LOGOUT'),
(702, 53, 'PostStatus', 'publish'),
(703, 53, 'PostDate', '2020-07-14 07:09:44'),
(704, 53, 'PostUrl', 'http://localhost/quiz/logout/'),
(705, 53, 'EditorLinkPost', 'http://localhost/quiz/wp-admin/post.php?post=63&amp;action=edit'),
(706, 53, 'ClientIP', '::1'),
(707, 53, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(708, 53, 'CurrentUserID', '1'),
(709, 53, 'CurrentUserRoles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:10:\"superadmin\";}'),
(710, 53, 'Severity', '20'),
(711, 53, 'Object', 'post'),
(712, 53, 'EventType', 'opened'),
(713, 54, 'PostID', '63'),
(714, 54, 'PostType', 'page'),
(715, 54, 'PostTitle', 'LOGOUT'),
(716, 54, 'PostStatus', 'publish'),
(717, 54, 'PostDate', '2020-07-14 07:09:44'),
(718, 54, 'PostUrl', 'http://localhost/quiz/logout/'),
(719, 54, 'EditorLinkPost', 'http://localhost/quiz/wp-admin/post.php?post=63&amp;action=edit'),
(720, 54, 'RevisionLink', 'http://localhost/quiz/wp-admin/revision.php?revision=113'),
(721, 54, 'ClientIP', '::1'),
(722, 54, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(723, 54, 'CurrentUserID', '1'),
(724, 54, 'CurrentUserRoles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:10:\"superadmin\";}'),
(725, 54, 'Severity', '15'),
(726, 54, 'Object', 'post'),
(727, 54, 'EventType', 'modified'),
(728, 55, 'PostID', '63'),
(729, 55, 'PostType', 'page'),
(730, 55, 'PostTitle', 'LOGOUT'),
(731, 55, 'PostStatus', 'publish'),
(732, 55, 'PostDate', '2020-07-14 07:09:44'),
(733, 55, 'PostUrl', 'http://localhost/quiz/logout/'),
(734, 55, 'EditorLinkPost', 'http://localhost/quiz/wp-admin/post.php?post=63&amp;action=edit'),
(735, 55, 'ClientIP', '::1'),
(736, 55, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(737, 55, 'CurrentUserID', '1'),
(738, 55, 'CurrentUserRoles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:10:\"superadmin\";}'),
(739, 55, 'Severity', '20'),
(740, 55, 'Object', 'post'),
(741, 55, 'EventType', 'viewed'),
(742, 56, 'PostID', '63'),
(743, 56, 'PostType', 'page'),
(744, 56, 'PostTitle', 'LOGOUT'),
(745, 56, 'PostStatus', 'publish'),
(746, 56, 'PostDate', '2020-07-14 07:09:44'),
(747, 56, 'PostUrl', 'http://localhost/quiz/logout/'),
(748, 56, 'EditorLinkPost', 'http://localhost/quiz/wp-admin/post.php?post=63&amp;action=edit'),
(749, 56, 'ClientIP', '::1'),
(750, 56, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(751, 56, 'CurrentUserID', '1'),
(752, 56, 'CurrentUserRoles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:10:\"superadmin\";}'),
(753, 56, 'Severity', '20'),
(754, 56, 'Object', 'post'),
(755, 56, 'EventType', 'opened'),
(756, 57, 'PostID', '63'),
(757, 57, 'PostType', 'page'),
(758, 57, 'PostTitle', 'LOGOUT'),
(759, 57, 'PostStatus', 'publish'),
(760, 57, 'PostDate', '2020-07-14 07:09:44'),
(761, 57, 'PostUrl', 'http://localhost/quiz/logout/'),
(762, 57, 'EditorLinkPost', 'http://localhost/quiz/wp-admin/post.php?post=63&amp;action=edit'),
(763, 57, 'RevisionLink', 'http://localhost/quiz/wp-admin/revision.php?revision=114'),
(764, 57, 'ClientIP', '::1'),
(765, 57, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(766, 57, 'CurrentUserID', '1'),
(767, 57, 'CurrentUserRoles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:10:\"superadmin\";}'),
(768, 57, 'Severity', '15'),
(769, 57, 'Object', 'post'),
(770, 57, 'EventType', 'modified'),
(771, 58, 'PostID', '63'),
(772, 58, 'PostType', 'page'),
(773, 58, 'PostTitle', 'LOGOUT'),
(774, 58, 'PostStatus', 'publish'),
(775, 58, 'PostDate', '2020-07-14 07:09:44'),
(776, 58, 'PostUrl', 'http://localhost/quiz/logout/'),
(777, 58, 'EditorLinkPost', 'http://localhost/quiz/wp-admin/post.php?post=63&amp;action=edit'),
(778, 58, 'ClientIP', '::1'),
(779, 58, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(780, 58, 'CurrentUserID', '1'),
(781, 58, 'CurrentUserRoles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:10:\"superadmin\";}'),
(782, 58, 'Severity', '20'),
(783, 58, 'Object', 'post'),
(784, 58, 'EventType', 'viewed'),
(785, 59, 'PostID', '63'),
(786, 59, 'PostType', 'page'),
(787, 59, 'PostTitle', 'LOGOUT'),
(788, 59, 'PostStatus', 'publish'),
(789, 59, 'PostDate', '2020-07-14 07:09:44'),
(790, 59, 'PostUrl', 'http://localhost/quiz/logout/'),
(791, 59, 'EditorLinkPost', 'http://localhost/quiz/wp-admin/post.php?post=63&amp;action=edit'),
(792, 59, 'ClientIP', '::1'),
(793, 59, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(794, 59, 'CurrentUserID', '1'),
(795, 59, 'CurrentUserRoles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:10:\"superadmin\";}'),
(796, 59, 'Severity', '20'),
(797, 59, 'Object', 'post'),
(798, 59, 'EventType', 'opened'),
(799, 60, 'PostID', '63'),
(800, 60, 'PostType', 'page'),
(801, 60, 'PostTitle', 'LOGOUT'),
(802, 60, 'PostStatus', 'publish'),
(803, 60, 'PostDate', '2020-07-14 07:09:44'),
(804, 60, 'PostUrl', 'http://localhost/quiz/logout/'),
(805, 60, 'EditorLinkPost', 'http://localhost/quiz/wp-admin/post.php?post=63&amp;action=edit'),
(806, 60, 'RevisionLink', 'http://localhost/quiz/wp-admin/revision.php?revision=115'),
(807, 60, 'ClientIP', '::1'),
(808, 60, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(809, 60, 'CurrentUserID', '1'),
(810, 60, 'CurrentUserRoles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:10:\"superadmin\";}'),
(811, 60, 'Severity', '15'),
(812, 60, 'Object', 'post'),
(813, 60, 'EventType', 'modified'),
(814, 61, 'PostID', '63'),
(815, 61, 'PostType', 'page'),
(816, 61, 'PostTitle', 'LOGOUT'),
(817, 61, 'PostStatus', 'publish'),
(818, 61, 'PostDate', '2020-07-14 07:09:44'),
(819, 61, 'PostUrl', 'http://localhost/quiz/logout/'),
(820, 61, 'EditorLinkPost', 'http://localhost/quiz/wp-admin/post.php?post=63&amp;action=edit'),
(821, 61, 'ClientIP', '::1'),
(822, 61, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(823, 61, 'CurrentUserID', '1'),
(824, 61, 'CurrentUserRoles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:10:\"superadmin\";}'),
(825, 61, 'Severity', '20'),
(826, 61, 'Object', 'post'),
(827, 61, 'EventType', 'viewed'),
(828, 62, 'PostID', '10'),
(829, 62, 'PostType', 'page'),
(830, 62, 'PostTitle', 'Register'),
(831, 62, 'PostStatus', 'publish'),
(832, 62, 'PostDate', '2020-07-13 19:28:22'),
(833, 62, 'PostUrl', 'http://localhost/quiz/register/'),
(834, 62, 'EditorLinkPost', 'http://localhost/quiz/wp-admin/post.php?post=10&amp;action=edit'),
(835, 62, 'ClientIP', '::1'),
(836, 62, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(837, 62, 'CurrentUserID', '1'),
(838, 62, 'CurrentUserRoles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:10:\"superadmin\";}'),
(839, 62, 'Severity', '20'),
(840, 62, 'Object', 'post'),
(841, 62, 'EventType', 'viewed'),
(842, 63, 'NewUserID', '2'),
(843, 63, 'UserChanger', 'abiha'),
(844, 63, 'NewUserData', 'O:8:\"stdClass\":5:{s:8:\"Username\";s:14:\"fatima kirmani\";s:9:\"FirstName\";s:6:\"fatima\";s:8:\"LastName\";s:5:\"zehra\";s:5:\"Email\";s:25:\"fatimakirmani56@gmail.com\";s:5:\"Roles\";s:10:\"subscriber\";}'),
(845, 63, 'EditUserLink', 'http://localhost/quiz/wp-admin/user-edit.php?user_id=2'),
(846, 63, 'ClientIP', '::1'),
(847, 63, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(848, 63, 'CurrentUserID', '1'),
(849, 63, 'CurrentUserRoles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:10:\"superadmin\";}'),
(850, 63, 'Severity', '1'),
(851, 63, 'Object', 'user'),
(852, 63, 'EventType', 'created'),
(853, 64, 'PostID', '12'),
(854, 64, 'PostType', 'page'),
(855, 64, 'PostTitle', 'Log In'),
(856, 64, 'PostStatus', 'publish'),
(857, 64, 'PostDate', '2020-07-13 19:28:22'),
(858, 64, 'PostUrl', 'http://localhost/quiz/log-in/'),
(859, 64, 'EditorLinkPost', 'http://localhost/quiz/wp-admin/post.php?post=12&amp;action=edit'),
(860, 64, 'ClientIP', '::1'),
(861, 64, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(862, 64, 'CurrentUserID', '1'),
(863, 64, 'CurrentUserRoles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:10:\"superadmin\";}'),
(864, 64, 'Severity', '20'),
(865, 64, 'Object', 'post'),
(866, 64, 'EventType', 'viewed'),
(867, 65, 'CurrentUserID', '1'),
(868, 65, 'CurrentUserRoles', 'a:1:{i:0;s:13:\"administrator\";}'),
(869, 65, 'ClientIP', '::1'),
(870, 65, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(871, 65, 'Severity', '15'),
(872, 65, 'Object', 'user'),
(873, 65, 'EventType', 'logout'),
(874, 66, 'Username', 'abiha'),
(875, 66, 'CurrentUserRoles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:10:\"superadmin\";}'),
(876, 66, 'ClientIP', '::1'),
(877, 66, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(878, 66, 'Severity', '15'),
(879, 66, 'Object', 'user'),
(880, 66, 'EventType', 'login'),
(881, 67, 'PostID', '54'),
(882, 67, 'PostType', 'page'),
(883, 67, 'PostTitle', 'QUIZ'),
(884, 67, 'PostStatus', 'publish'),
(885, 67, 'PostDate', '2020-07-13 21:03:28'),
(886, 67, 'PostUrl', 'http://localhost/quiz/quiz-2/'),
(887, 67, 'ClientIP', '::1'),
(888, 67, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(889, 67, 'CurrentUserID', '2'),
(890, 67, 'CurrentUserRoles', 'a:1:{i:0;s:10:\"subscriber\";}'),
(891, 67, 'Severity', '20'),
(892, 67, 'Object', 'post'),
(893, 67, 'EventType', 'viewed'),
(894, 68, 'PostID', '63'),
(895, 68, 'PostType', 'page'),
(896, 68, 'PostTitle', 'LOGOUT'),
(897, 68, 'PostStatus', 'publish'),
(898, 68, 'PostDate', '2020-07-14 07:09:44'),
(899, 68, 'PostUrl', 'http://localhost/quiz/logout/'),
(900, 68, 'ClientIP', '::1'),
(901, 68, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(902, 68, 'CurrentUserID', '2'),
(903, 68, 'CurrentUserRoles', 'a:1:{i:0;s:10:\"subscriber\";}'),
(904, 68, 'Severity', '20'),
(905, 68, 'Object', 'post'),
(906, 68, 'EventType', 'viewed'),
(907, 69, 'CurrentUserID', '2'),
(908, 69, 'CurrentUserRoles', 'a:1:{i:0;s:10:\"subscriber\";}'),
(909, 69, 'ClientIP', '::1'),
(910, 69, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(911, 69, 'Severity', '15'),
(912, 69, 'Object', 'user'),
(913, 69, 'EventType', 'logout'),
(914, 70, 'Username', 'abiha'),
(915, 70, 'CurrentUserRoles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:10:\"superadmin\";}'),
(916, 70, 'ClientIP', '::1'),
(917, 70, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(918, 70, 'Severity', '15'),
(919, 70, 'Object', 'user'),
(920, 70, 'EventType', 'login'),
(921, 71, 'Username', 'abiha'),
(922, 71, 'CurrentUserRoles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:10:\"superadmin\";}'),
(923, 71, 'ClientIP', '::1'),
(924, 71, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(925, 71, 'Severity', '15'),
(926, 71, 'Object', 'user'),
(927, 71, 'EventType', 'login'),
(928, 72, 'PluginFile', 'C:\\xampp\\htdocs\\quiz/wp-content/plugins/quiz-cat/quizcat.php'),
(929, 72, 'PluginData', 'O:8:\"stdClass\":5:{s:4:\"Name\";s:13:\"Quiz Cat Free\";s:9:\"PluginURI\";s:31:\"https://fatcatapps.com/quiz-cat\";s:7:\"Version\";s:5:\"1.8.0\";s:6:\"Author\";s:11:\"Fatcat Apps\";s:7:\"Network\";s:5:\"False\";}'),
(930, 72, 'ClientIP', '::1'),
(931, 72, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(932, 72, 'CurrentUserID', '1'),
(933, 72, 'CurrentUserRoles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:10:\"superadmin\";}'),
(934, 72, 'Severity', '6'),
(935, 72, 'Object', 'plugin'),
(936, 72, 'EventType', 'deactivated'),
(937, 73, 'PluginFile', 'C:\\xampp\\htdocs\\quiz/wp-content/plugins/quiz-cat/quizcat.php'),
(938, 73, 'PluginData', 'O:8:\"stdClass\":5:{s:4:\"Name\";s:13:\"Quiz Cat Free\";s:9:\"PluginURI\";s:31:\"https://fatcatapps.com/quiz-cat\";s:7:\"Version\";s:5:\"1.8.0\";s:6:\"Author\";s:11:\"Fatcat Apps\";s:7:\"Network\";s:5:\"False\";}'),
(939, 73, 'ClientIP', '::1'),
(940, 73, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(941, 73, 'CurrentUserID', '1'),
(942, 73, 'CurrentUserRoles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:10:\"superadmin\";}'),
(943, 73, 'Severity', '6'),
(944, 73, 'Object', 'plugin'),
(945, 73, 'EventType', 'deactivated'),
(946, 74, 'Plugin', 'O:8:\"stdClass\":6:{s:4:\"Name\";s:10:\"Quiz Maker\";s:9:\"PluginURI\";s:50:\"https://ays-pro.com/index.php/wordpress/quiz-maker\";s:7:\"Version\";s:5:\"5.1.5\";s:6:\"Author\";s:15:\"Quiz Maker team\";s:7:\"Network\";s:5:\"False\";s:15:\"plugin_dir_path\";s:40:\"C:\\xampp\\htdocs\\quiz/wp-content/plugins/\";}'),
(947, 74, 'ClientIP', '::1'),
(948, 74, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(949, 74, 'CurrentUserID', '1'),
(950, 74, 'CurrentUserRoles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:10:\"superadmin\";}'),
(951, 74, 'Severity', '1'),
(952, 74, 'Object', 'plugin'),
(953, 74, 'EventType', 'installed'),
(954, 75, 'Plugin', 'O:8:\"stdClass\":3:{s:4:\"Name\";s:10:\"Quiz Maker\";s:9:\"PluginURI\";s:50:\"https://ays-pro.com/index.php/wordpress/quiz-maker\";s:7:\"Version\";s:5:\"5.1.5\";}'),
(955, 75, 'TableNames', 'wp_aysquiz_quizcategories'),
(956, 75, 'ClientIP', '::1'),
(957, 75, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(958, 75, 'CurrentUserID', '1'),
(959, 75, 'CurrentUserRoles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:10:\"superadmin\";}'),
(960, 75, 'Severity', '15'),
(961, 75, 'Object', 'database'),
(962, 75, 'EventType', 'created'),
(963, 76, 'Plugin', 'O:8:\"stdClass\":3:{s:4:\"Name\";s:10:\"Quiz Maker\";s:9:\"PluginURI\";s:50:\"https://ays-pro.com/index.php/wordpress/quiz-maker\";s:7:\"Version\";s:5:\"5.1.5\";}'),
(964, 76, 'TableNames', 'wp_aysquiz_quizes'),
(965, 76, 'ClientIP', '::1'),
(966, 76, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(967, 76, 'CurrentUserID', '1'),
(968, 76, 'CurrentUserRoles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:10:\"superadmin\";}'),
(969, 76, 'Severity', '15'),
(970, 76, 'Object', 'database'),
(971, 76, 'EventType', 'created'),
(972, 77, 'Plugin', 'O:8:\"stdClass\":3:{s:4:\"Name\";s:10:\"Quiz Maker\";s:9:\"PluginURI\";s:50:\"https://ays-pro.com/index.php/wordpress/quiz-maker\";s:7:\"Version\";s:5:\"5.1.5\";}'),
(973, 77, 'TableNames', 'wp_aysquiz_questions'),
(974, 77, 'ClientIP', '::1');
INSERT INTO `wp_wsal_metadata` (`id`, `occurrence_id`, `name`, `value`) VALUES
(975, 77, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(976, 77, 'CurrentUserID', '1'),
(977, 77, 'CurrentUserRoles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:10:\"superadmin\";}'),
(978, 77, 'Severity', '15'),
(979, 77, 'Object', 'database'),
(980, 77, 'EventType', 'created'),
(981, 78, 'Plugin', 'O:8:\"stdClass\":3:{s:4:\"Name\";s:10:\"Quiz Maker\";s:9:\"PluginURI\";s:50:\"https://ays-pro.com/index.php/wordpress/quiz-maker\";s:7:\"Version\";s:5:\"5.1.5\";}'),
(982, 78, 'TableNames', 'wp_aysquiz_categories'),
(983, 78, 'ClientIP', '::1'),
(984, 78, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(985, 78, 'CurrentUserID', '1'),
(986, 78, 'CurrentUserRoles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:10:\"superadmin\";}'),
(987, 78, 'Severity', '15'),
(988, 78, 'Object', 'database'),
(989, 78, 'EventType', 'created'),
(990, 79, 'Plugin', 'O:8:\"stdClass\":3:{s:4:\"Name\";s:10:\"Quiz Maker\";s:9:\"PluginURI\";s:50:\"https://ays-pro.com/index.php/wordpress/quiz-maker\";s:7:\"Version\";s:5:\"5.1.5\";}'),
(991, 79, 'TableNames', 'wp_aysquiz_answers'),
(992, 79, 'ClientIP', '::1'),
(993, 79, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(994, 79, 'CurrentUserID', '1'),
(995, 79, 'CurrentUserRoles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:10:\"superadmin\";}'),
(996, 79, 'Severity', '15'),
(997, 79, 'Object', 'database'),
(998, 79, 'EventType', 'created'),
(999, 80, 'Plugin', 'O:8:\"stdClass\":3:{s:4:\"Name\";s:10:\"Quiz Maker\";s:9:\"PluginURI\";s:50:\"https://ays-pro.com/index.php/wordpress/quiz-maker\";s:7:\"Version\";s:5:\"5.1.5\";}'),
(1000, 80, 'TableNames', 'wp_aysquiz_reports'),
(1001, 80, 'ClientIP', '::1'),
(1002, 80, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(1003, 80, 'CurrentUserID', '1'),
(1004, 80, 'CurrentUserRoles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:10:\"superadmin\";}'),
(1005, 80, 'Severity', '15'),
(1006, 80, 'Object', 'database'),
(1007, 80, 'EventType', 'created'),
(1008, 81, 'Plugin', 'O:8:\"stdClass\":3:{s:4:\"Name\";s:10:\"Quiz Maker\";s:9:\"PluginURI\";s:50:\"https://ays-pro.com/index.php/wordpress/quiz-maker\";s:7:\"Version\";s:5:\"5.1.5\";}'),
(1009, 81, 'TableNames', 'wp_aysquiz_rates'),
(1010, 81, 'ClientIP', '::1'),
(1011, 81, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(1012, 81, 'CurrentUserID', '1'),
(1013, 81, 'CurrentUserRoles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:10:\"superadmin\";}'),
(1014, 81, 'Severity', '15'),
(1015, 81, 'Object', 'database'),
(1016, 81, 'EventType', 'created'),
(1017, 82, 'Plugin', 'O:8:\"stdClass\":3:{s:4:\"Name\";s:10:\"Quiz Maker\";s:9:\"PluginURI\";s:50:\"https://ays-pro.com/index.php/wordpress/quiz-maker\";s:7:\"Version\";s:5:\"5.1.5\";}'),
(1018, 82, 'TableNames', 'wp_aysquiz_settings'),
(1019, 82, 'ClientIP', '::1'),
(1020, 82, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(1021, 82, 'CurrentUserID', '1'),
(1022, 82, 'CurrentUserRoles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:10:\"superadmin\";}'),
(1023, 82, 'Severity', '15'),
(1024, 82, 'Object', 'database'),
(1025, 82, 'EventType', 'created'),
(1026, 83, 'Plugin', 'O:8:\"stdClass\":3:{s:4:\"Name\";s:10:\"Quiz Maker\";s:9:\"PluginURI\";s:50:\"https://ays-pro.com/index.php/wordpress/quiz-maker\";s:7:\"Version\";s:5:\"5.1.5\";}'),
(1027, 83, 'TableNames', 'wp_aysquiz_themes'),
(1028, 83, 'ClientIP', '::1'),
(1029, 83, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(1030, 83, 'CurrentUserID', '1'),
(1031, 83, 'CurrentUserRoles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:10:\"superadmin\";}'),
(1032, 83, 'Severity', '15'),
(1033, 83, 'Object', 'database'),
(1034, 83, 'EventType', 'created'),
(1035, 84, 'PluginFile', 'C:\\xampp\\htdocs\\quiz/wp-content/plugins/quiz-maker/quiz-maker.php'),
(1036, 84, 'PluginData', 'O:8:\"stdClass\":5:{s:4:\"Name\";s:10:\"Quiz Maker\";s:9:\"PluginURI\";s:50:\"https://ays-pro.com/index.php/wordpress/quiz-maker\";s:7:\"Version\";s:5:\"5.1.5\";s:6:\"Author\";s:15:\"Quiz Maker team\";s:7:\"Network\";s:5:\"False\";}'),
(1037, 84, 'ClientIP', '::1'),
(1038, 84, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(1039, 84, 'CurrentUserID', '1'),
(1040, 84, 'CurrentUserRoles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:10:\"superadmin\";}'),
(1041, 84, 'Severity', '6'),
(1042, 84, 'Object', 'plugin'),
(1043, 84, 'EventType', 'activated'),
(1044, 85, 'TargetUsername', 'abiha'),
(1045, 85, 'custom_field_name', 'bsf-optin-notice'),
(1046, 85, 'new_value', 'notice-dismissed'),
(1047, 85, 'Roles', 'administrator'),
(1048, 85, 'EditUserLink', 'http://localhost/quiz/wp-admin/user-edit.php?user_id=1'),
(1049, 85, 'ClientIP', '::1'),
(1050, 85, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(1051, 85, 'CurrentUserID', '1'),
(1052, 85, 'CurrentUserRoles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:10:\"superadmin\";}'),
(1053, 85, 'Severity', '15'),
(1054, 85, 'Object', 'user'),
(1055, 85, 'EventType', 'modified'),
(1056, 86, 'Attempts', '3'),
(1057, 86, 'Username', 'abiha'),
(1058, 86, 'Msg', 'times'),
(1059, 86, 'URL', 'http://localhost/quiz/quiz/wp-content/themes/highlight/style.min.css.map'),
(1060, 86, 'ClientIP', '::1'),
(1061, 86, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(1062, 86, 'CurrentUserRoles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:10:\"superadmin\";}'),
(1063, 86, 'Severity', '20'),
(1064, 86, 'Object', 'system'),
(1065, 86, 'EventType', 'opened'),
(1066, 87, 'PostID', '54'),
(1067, 87, 'PostType', 'page'),
(1068, 87, 'PostTitle', 'QUIZ'),
(1069, 87, 'PostStatus', 'publish'),
(1070, 87, 'PostDate', '2020-07-13 21:03:28'),
(1071, 87, 'PostUrl', 'http://localhost/quiz/quiz-2/'),
(1072, 87, 'EditorLinkPost', 'http://localhost/quiz/wp-admin/post.php?post=54&amp;action=edit'),
(1073, 87, 'ClientIP', '::1'),
(1074, 87, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(1075, 87, 'CurrentUserID', '1'),
(1076, 87, 'CurrentUserRoles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:10:\"superadmin\";}'),
(1077, 87, 'Severity', '20'),
(1078, 87, 'Object', 'post'),
(1079, 87, 'EventType', 'viewed'),
(1080, 88, 'PluginFile', 'C:\\xampp\\htdocs\\quiz/wp-content/plugins/quiz-cat/quizcat.php'),
(1081, 88, 'PluginData', 'O:8:\"stdClass\":5:{s:4:\"Name\";s:13:\"Quiz Cat Free\";s:9:\"PluginURI\";s:31:\"https://fatcatapps.com/quiz-cat\";s:7:\"Version\";s:5:\"1.8.0\";s:6:\"Author\";s:11:\"Fatcat Apps\";s:7:\"Network\";s:5:\"False\";}'),
(1082, 88, 'ClientIP', '::1'),
(1083, 88, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(1084, 88, 'CurrentUserID', '1'),
(1085, 88, 'CurrentUserRoles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:10:\"superadmin\";}'),
(1086, 88, 'Severity', '6'),
(1087, 88, 'Object', 'plugin'),
(1088, 88, 'EventType', 'activated'),
(1089, 89, 'PluginFile', 'C:\\xampp\\htdocs\\quiz/wp-content/plugins/quiz-cat/quizcat.php'),
(1090, 89, 'PluginData', 'O:8:\"stdClass\":5:{s:4:\"Name\";s:13:\"Quiz Cat Free\";s:9:\"PluginURI\";s:31:\"https://fatcatapps.com/quiz-cat\";s:7:\"Version\";s:5:\"1.8.0\";s:6:\"Author\";s:11:\"Fatcat Apps\";s:7:\"Network\";s:5:\"False\";}'),
(1091, 89, 'ClientIP', '::1'),
(1092, 89, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(1093, 89, 'CurrentUserID', '1'),
(1094, 89, 'CurrentUserRoles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:10:\"superadmin\";}'),
(1095, 89, 'Severity', '6'),
(1096, 89, 'Object', 'plugin'),
(1097, 89, 'EventType', 'deactivated'),
(1098, 90, 'PostID', '17'),
(1099, 90, 'PostType', 'page'),
(1100, 90, 'PostTitle', 'HOME'),
(1101, 90, 'PostStatus', 'publish'),
(1102, 90, 'PostDate', '2020-07-13 19:56:00'),
(1103, 90, 'PostUrl', 'http://localhost/quiz/'),
(1104, 90, 'EditorLinkPost', 'http://localhost/quiz/wp-admin/post.php?post=17&amp;action=edit'),
(1105, 90, 'ClientIP', '::1'),
(1106, 90, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(1107, 90, 'CurrentUserID', '1'),
(1108, 90, 'CurrentUserRoles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:10:\"superadmin\";}'),
(1109, 90, 'Severity', '20'),
(1110, 90, 'Object', 'post'),
(1111, 90, 'EventType', 'viewed'),
(1112, 91, 'PostID', '54'),
(1113, 91, 'PostType', 'page'),
(1114, 91, 'PostTitle', 'QUIZ'),
(1115, 91, 'PostStatus', 'publish'),
(1116, 91, 'PostDate', '2020-07-13 21:03:28'),
(1117, 91, 'PostUrl', 'http://localhost/quiz/quiz-2/'),
(1118, 91, 'EditorLinkPost', 'http://localhost/quiz/wp-admin/post.php?post=54&amp;action=edit'),
(1119, 91, 'ClientIP', '::1'),
(1120, 91, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(1121, 91, 'CurrentUserID', '1'),
(1122, 91, 'CurrentUserRoles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:10:\"superadmin\";}'),
(1123, 91, 'Severity', '20'),
(1124, 91, 'Object', 'post'),
(1125, 91, 'EventType', 'opened'),
(1126, 92, 'PostID', '54'),
(1127, 92, 'PostType', 'page'),
(1128, 92, 'PostTitle', 'QUIZ'),
(1129, 92, 'PostStatus', 'publish'),
(1130, 92, 'PostDate', '2020-07-13 21:03:28'),
(1131, 92, 'PostUrl', 'http://localhost/quiz/quiz-2/'),
(1132, 92, 'EditorLinkPost', 'http://localhost/quiz/wp-admin/post.php?post=54&amp;action=edit'),
(1133, 92, 'RevisionLink', 'http://localhost/quiz/wp-admin/revision.php?revision=116'),
(1134, 92, 'ClientIP', '::1'),
(1135, 92, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(1136, 92, 'CurrentUserID', '1'),
(1137, 92, 'CurrentUserRoles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:10:\"superadmin\";}'),
(1138, 92, 'Severity', '15'),
(1139, 92, 'Object', 'post'),
(1140, 92, 'EventType', 'modified'),
(1141, 93, 'PostID', '54'),
(1142, 93, 'PostType', 'page'),
(1143, 93, 'PostTitle', 'QUIZ'),
(1144, 93, 'PostStatus', 'publish'),
(1145, 93, 'PostDate', '2020-07-13 21:03:28'),
(1146, 93, 'PostUrl', 'http://localhost/quiz/quiz-2/'),
(1147, 93, 'EditorLinkPost', 'http://localhost/quiz/wp-admin/post.php?post=54&amp;action=edit'),
(1148, 93, 'ClientIP', '::1'),
(1149, 93, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(1150, 93, 'CurrentUserID', '1'),
(1151, 93, 'CurrentUserRoles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:10:\"superadmin\";}'),
(1152, 93, 'Severity', '20'),
(1153, 93, 'Object', 'post'),
(1154, 93, 'EventType', 'viewed'),
(1155, 94, 'PostID', '54'),
(1156, 94, 'PostType', 'page'),
(1157, 94, 'PostTitle', 'QUIZ'),
(1158, 94, 'PostStatus', 'publish'),
(1159, 94, 'PostDate', '2020-07-13 21:03:28'),
(1160, 94, 'PostUrl', 'http://localhost/quiz/quiz-2/'),
(1161, 94, 'EditorLinkPost', 'http://localhost/quiz/wp-admin/post.php?post=54&amp;action=edit'),
(1162, 94, 'ClientIP', '::1'),
(1163, 94, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(1164, 94, 'CurrentUserID', '1'),
(1165, 94, 'CurrentUserRoles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:10:\"superadmin\";}'),
(1166, 94, 'Severity', '20'),
(1167, 94, 'Object', 'post'),
(1168, 94, 'EventType', 'opened'),
(1169, 95, 'PostID', '54'),
(1170, 95, 'PostType', 'page'),
(1171, 95, 'PostTitle', 'QUIZ'),
(1172, 95, 'PostStatus', 'publish'),
(1173, 95, 'PostDate', '2020-07-13 21:03:28'),
(1174, 95, 'PostUrl', 'http://localhost/quiz/quiz-2/'),
(1175, 95, 'EditorLinkPost', 'http://localhost/quiz/wp-admin/post.php?post=54&amp;action=edit'),
(1176, 95, 'RevisionLink', 'http://localhost/quiz/wp-admin/revision.php?revision=117'),
(1177, 95, 'ClientIP', '::1'),
(1178, 95, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(1179, 95, 'CurrentUserID', '1'),
(1180, 95, 'CurrentUserRoles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:10:\"superadmin\";}'),
(1181, 95, 'Severity', '15'),
(1182, 95, 'Object', 'post'),
(1183, 95, 'EventType', 'modified'),
(1184, 96, 'PostID', '54'),
(1185, 96, 'PostType', 'page'),
(1186, 96, 'PostTitle', 'QUIZ'),
(1187, 96, 'PostStatus', 'publish'),
(1188, 96, 'PostDate', '2020-07-13 21:03:28'),
(1189, 96, 'PostUrl', 'http://localhost/quiz/quiz-2/'),
(1190, 96, 'EditorLinkPost', 'http://localhost/quiz/wp-admin/post.php?post=54&amp;action=edit'),
(1191, 96, 'ClientIP', '::1'),
(1192, 96, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(1193, 96, 'CurrentUserID', '1'),
(1194, 96, 'CurrentUserRoles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:10:\"superadmin\";}'),
(1195, 96, 'Severity', '20'),
(1196, 96, 'Object', 'post'),
(1197, 96, 'EventType', 'viewed'),
(1198, 97, 'PostID', '54'),
(1199, 97, 'PostType', 'page'),
(1200, 97, 'PostTitle', 'QUIZ'),
(1201, 97, 'PostStatus', 'publish'),
(1202, 97, 'PostDate', '2020-07-13 21:03:28'),
(1203, 97, 'PostUrl', 'http://localhost/quiz/quiz-2/'),
(1204, 97, 'EditorLinkPost', 'http://localhost/quiz/wp-admin/post.php?post=54&amp;action=edit'),
(1205, 97, 'ClientIP', '::1'),
(1206, 97, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(1207, 97, 'CurrentUserID', '1'),
(1208, 97, 'CurrentUserRoles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:10:\"superadmin\";}'),
(1209, 97, 'Severity', '20'),
(1210, 97, 'Object', 'post'),
(1211, 97, 'EventType', 'viewed'),
(1212, 98, 'PostID', '54'),
(1213, 98, 'PostType', 'page'),
(1214, 98, 'PostTitle', 'QUIZ'),
(1215, 98, 'PostStatus', 'publish'),
(1216, 98, 'PostDate', '2020-07-13 21:03:28'),
(1217, 98, 'PostUrl', 'http://localhost/quiz/quiz-2/'),
(1218, 98, 'EditorLinkPost', 'http://localhost/quiz/wp-admin/post.php?post=54&amp;action=edit'),
(1219, 98, 'ClientIP', '::1'),
(1220, 98, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(1221, 98, 'CurrentUserID', '1'),
(1222, 98, 'CurrentUserRoles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:10:\"superadmin\";}'),
(1223, 98, 'Severity', '20'),
(1224, 98, 'Object', 'post'),
(1225, 98, 'EventType', 'viewed'),
(1226, 99, 'PostID', '54'),
(1227, 99, 'PostType', 'page'),
(1228, 99, 'PostTitle', 'QUIZ'),
(1229, 99, 'PostStatus', 'publish'),
(1230, 99, 'PostDate', '2020-07-13 21:03:28'),
(1231, 99, 'PostUrl', 'http://localhost/quiz/quiz-2/'),
(1232, 99, 'EditorLinkPost', 'http://localhost/quiz/wp-admin/post.php?post=54&amp;action=edit'),
(1233, 99, 'ClientIP', '::1'),
(1234, 99, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(1235, 99, 'CurrentUserID', '1'),
(1236, 99, 'CurrentUserRoles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:10:\"superadmin\";}'),
(1237, 99, 'Severity', '20'),
(1238, 99, 'Object', 'post'),
(1239, 99, 'EventType', 'viewed'),
(1240, 100, 'PostID', '54'),
(1241, 100, 'PostType', 'page'),
(1242, 100, 'PostTitle', 'QUIZ'),
(1243, 100, 'PostStatus', 'publish'),
(1244, 100, 'PostDate', '2020-07-13 21:03:28'),
(1245, 100, 'PostUrl', 'http://localhost/quiz/quiz-2/'),
(1246, 100, 'EditorLinkPost', 'http://localhost/quiz/wp-admin/post.php?post=54&amp;action=edit'),
(1247, 100, 'ClientIP', '::1'),
(1248, 100, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(1249, 100, 'CurrentUserID', '1'),
(1250, 100, 'CurrentUserRoles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:10:\"superadmin\";}'),
(1251, 100, 'Severity', '20'),
(1252, 100, 'Object', 'post'),
(1253, 100, 'EventType', 'viewed'),
(1254, 101, 'PostID', '63'),
(1255, 101, 'PostType', 'page'),
(1256, 101, 'PostTitle', 'LOGOUT'),
(1257, 101, 'PostStatus', 'publish'),
(1258, 101, 'PostDate', '2020-07-14 07:09:44'),
(1259, 101, 'PostUrl', 'http://localhost/quiz/logout/'),
(1260, 101, 'EditorLinkPost', 'http://localhost/quiz/wp-admin/post.php?post=63&amp;action=edit'),
(1261, 101, 'ClientIP', '::1'),
(1262, 101, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(1263, 101, 'CurrentUserID', '1'),
(1264, 101, 'CurrentUserRoles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:10:\"superadmin\";}'),
(1265, 101, 'Severity', '20'),
(1266, 101, 'Object', 'post'),
(1267, 101, 'EventType', 'viewed'),
(1268, 102, 'PostID', '12'),
(1269, 102, 'PostType', 'page'),
(1270, 102, 'PostTitle', 'Log In'),
(1271, 102, 'PostStatus', 'publish'),
(1272, 102, 'PostDate', '2020-07-13 19:28:22'),
(1273, 102, 'PostUrl', 'http://localhost/quiz/log-in/'),
(1274, 102, 'EditorLinkPost', 'http://localhost/quiz/wp-admin/post.php?post=12&amp;action=edit'),
(1275, 102, 'ClientIP', '::1'),
(1276, 102, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(1277, 102, 'CurrentUserID', '1'),
(1278, 102, 'CurrentUserRoles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:10:\"superadmin\";}'),
(1279, 102, 'Severity', '20'),
(1280, 102, 'Object', 'post'),
(1281, 102, 'EventType', 'viewed'),
(1282, 103, 'CurrentUserID', '1'),
(1283, 103, 'CurrentUserRoles', 'a:1:{i:0;s:13:\"administrator\";}'),
(1284, 103, 'ClientIP', '::1'),
(1285, 103, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(1286, 103, 'Severity', '15'),
(1287, 103, 'Object', 'user'),
(1288, 103, 'EventType', 'logout'),
(1289, 104, 'PostID', '54'),
(1290, 104, 'PostType', 'page'),
(1291, 104, 'PostTitle', 'QUIZ'),
(1292, 104, 'PostStatus', 'publish'),
(1293, 104, 'PostDate', '2020-07-13 21:03:28'),
(1294, 104, 'PostUrl', 'http://localhost/quiz/quiz-2/'),
(1295, 104, 'EditorLinkPost', 'http://localhost/quiz/wp-admin/post.php?post=54&amp;action=edit'),
(1296, 104, 'ClientIP', '::1'),
(1297, 104, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(1298, 104, 'CurrentUserID', '1'),
(1299, 104, 'CurrentUserRoles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:10:\"superadmin\";}'),
(1300, 104, 'Severity', '20'),
(1301, 104, 'Object', 'post'),
(1302, 104, 'EventType', 'viewed'),
(1303, 105, 'PostID', '63'),
(1304, 105, 'PostType', 'page'),
(1305, 105, 'PostTitle', 'LOGOUT'),
(1306, 105, 'PostStatus', 'publish'),
(1307, 105, 'PostDate', '2020-07-14 07:09:44'),
(1308, 105, 'PostUrl', 'http://localhost/quiz/logout/'),
(1309, 105, 'EditorLinkPost', 'http://localhost/quiz/wp-admin/post.php?post=63&amp;action=edit'),
(1310, 105, 'ClientIP', '::1'),
(1311, 105, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(1312, 105, 'CurrentUserID', '1'),
(1313, 105, 'CurrentUserRoles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:10:\"superadmin\";}'),
(1314, 105, 'Severity', '20'),
(1315, 105, 'Object', 'post'),
(1316, 105, 'EventType', 'viewed'),
(1317, 106, 'CurrentUserID', '1'),
(1318, 106, 'CurrentUserRoles', 'a:1:{i:0;s:13:\"administrator\";}'),
(1319, 106, 'ClientIP', '::1'),
(1320, 106, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(1321, 106, 'Severity', '15'),
(1322, 106, 'Object', 'user'),
(1323, 106, 'EventType', 'logout'),
(1324, 107, 'Username', 'abiha'),
(1325, 107, 'CurrentUserRoles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:10:\"superadmin\";}'),
(1326, 107, 'ClientIP', '::1'),
(1327, 107, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(1328, 107, 'Severity', '15'),
(1329, 107, 'Object', 'user'),
(1330, 107, 'EventType', 'login'),
(1331, 108, 'PostID', '63'),
(1332, 108, 'PostType', 'page'),
(1333, 108, 'PostTitle', 'LOGOUT'),
(1334, 108, 'PostStatus', 'publish'),
(1335, 108, 'PostDate', '2020-07-14 07:09:44'),
(1336, 108, 'PostUrl', 'http://localhost/quiz/logout/'),
(1337, 108, 'EditorLinkPost', 'http://localhost/quiz/wp-admin/post.php?post=63&amp;action=edit'),
(1338, 108, 'ClientIP', '::1'),
(1339, 108, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(1340, 108, 'CurrentUserID', '1'),
(1341, 108, 'CurrentUserRoles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:10:\"superadmin\";}'),
(1342, 108, 'Severity', '20'),
(1343, 108, 'Object', 'post'),
(1344, 108, 'EventType', 'opened'),
(1345, 109, 'PostID', '63'),
(1346, 109, 'PostType', 'page'),
(1347, 109, 'PostTitle', 'LOGOUT'),
(1348, 109, 'PostStatus', 'publish'),
(1349, 109, 'PostDate', '2020-07-14 07:09:44'),
(1350, 109, 'PostUrl', 'http://localhost/quiz/logout/'),
(1351, 109, 'EditorLinkPost', 'http://localhost/quiz/wp-admin/post.php?post=63&amp;action=edit'),
(1352, 109, 'RevisionLink', 'http://localhost/quiz/wp-admin/revision.php?revision=118'),
(1353, 109, 'ClientIP', '::1'),
(1354, 109, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(1355, 109, 'CurrentUserID', '1'),
(1356, 109, 'CurrentUserRoles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:10:\"superadmin\";}'),
(1357, 109, 'Severity', '15'),
(1358, 109, 'Object', 'post'),
(1359, 109, 'EventType', 'modified'),
(1360, 110, 'PostID', '54'),
(1361, 110, 'PostType', 'page'),
(1362, 110, 'PostTitle', 'QUIZ'),
(1363, 110, 'PostStatus', 'publish'),
(1364, 110, 'PostDate', '2020-07-13 21:03:28'),
(1365, 110, 'PostUrl', 'http://localhost/quiz/quiz-2/'),
(1366, 110, 'EditorLinkPost', 'http://localhost/quiz/wp-admin/post.php?post=54&amp;action=edit'),
(1367, 110, 'ClientIP', '::1'),
(1368, 110, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(1369, 110, 'CurrentUserID', '1'),
(1370, 110, 'CurrentUserRoles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:10:\"superadmin\";}'),
(1371, 110, 'Severity', '20'),
(1372, 110, 'Object', 'post'),
(1373, 110, 'EventType', 'opened'),
(1374, 111, 'PostID', '54'),
(1375, 111, 'PostType', 'page'),
(1376, 111, 'PostTitle', 'QUIZ'),
(1377, 111, 'PostStatus', 'publish'),
(1378, 111, 'PostDate', '2020-07-13 21:03:28'),
(1379, 111, 'PostUrl', 'http://localhost/quiz/quiz-2/'),
(1380, 111, 'EditorLinkPost', 'http://localhost/quiz/wp-admin/post.php?post=54&amp;action=edit'),
(1381, 111, 'RevisionLink', 'http://localhost/quiz/wp-admin/revision.php?revision=119'),
(1382, 111, 'ClientIP', '::1'),
(1383, 111, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(1384, 111, 'CurrentUserID', '1'),
(1385, 111, 'CurrentUserRoles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:10:\"superadmin\";}'),
(1386, 111, 'Severity', '15'),
(1387, 111, 'Object', 'post'),
(1388, 111, 'EventType', 'modified'),
(1389, 112, 'PostID', '54'),
(1390, 112, 'PostType', 'page'),
(1391, 112, 'PostTitle', 'QUIZ'),
(1392, 112, 'PostStatus', 'publish'),
(1393, 112, 'PostDate', '2020-07-13 21:03:28'),
(1394, 112, 'PostUrl', 'http://localhost/quiz/quiz-2/'),
(1395, 112, 'EditorLinkPost', 'http://localhost/quiz/wp-admin/post.php?post=54&amp;action=edit'),
(1396, 112, 'ClientIP', '::1'),
(1397, 112, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(1398, 112, 'CurrentUserID', '1'),
(1399, 112, 'CurrentUserRoles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:10:\"superadmin\";}'),
(1400, 112, 'Severity', '20'),
(1401, 112, 'Object', 'post'),
(1402, 112, 'EventType', 'viewed'),
(1403, 113, 'PostID', '54'),
(1404, 113, 'PostType', 'page'),
(1405, 113, 'PostTitle', 'QUIZ'),
(1406, 113, 'PostStatus', 'publish'),
(1407, 113, 'PostDate', '2020-07-13 21:03:28'),
(1408, 113, 'PostUrl', 'http://localhost/quiz/quiz-2/'),
(1409, 113, 'EditorLinkPost', 'http://localhost/quiz/wp-admin/post.php?post=54&amp;action=edit'),
(1410, 113, 'ClientIP', '::1'),
(1411, 113, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(1412, 113, 'CurrentUserID', '1'),
(1413, 113, 'CurrentUserRoles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:10:\"superadmin\";}'),
(1414, 113, 'Severity', '20'),
(1415, 113, 'Object', 'post'),
(1416, 113, 'EventType', 'viewed'),
(1417, 114, 'PostID', '17'),
(1418, 114, 'PostType', 'page'),
(1419, 114, 'PostTitle', 'HOME'),
(1420, 114, 'PostStatus', 'publish'),
(1421, 114, 'PostDate', '2020-07-13 19:56:00'),
(1422, 114, 'PostUrl', 'http://localhost/quiz/'),
(1423, 114, 'EditorLinkPost', 'http://localhost/quiz/wp-admin/post.php?post=17&amp;action=edit'),
(1424, 114, 'ClientIP', '::1'),
(1425, 114, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(1426, 114, 'CurrentUserID', '1'),
(1427, 114, 'CurrentUserRoles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:10:\"superadmin\";}'),
(1428, 114, 'Severity', '20'),
(1429, 114, 'Object', 'post'),
(1430, 114, 'EventType', 'viewed'),
(1431, 115, 'PostID', '54'),
(1432, 115, 'PostType', 'page'),
(1433, 115, 'PostTitle', 'QUIZ'),
(1434, 115, 'PostStatus', 'publish'),
(1435, 115, 'PostDate', '2020-07-13 21:03:28'),
(1436, 115, 'PostUrl', 'http://localhost/quiz/quiz-2/'),
(1437, 115, 'EditorLinkPost', 'http://localhost/quiz/wp-admin/post.php?post=54&amp;action=edit'),
(1438, 115, 'ClientIP', '::1'),
(1439, 115, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(1440, 115, 'CurrentUserID', '1'),
(1441, 115, 'CurrentUserRoles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:10:\"superadmin\";}'),
(1442, 115, 'Severity', '20'),
(1443, 115, 'Object', 'post'),
(1444, 115, 'EventType', 'opened'),
(1445, 116, 'PostID', '17'),
(1446, 116, 'PostType', 'page'),
(1447, 116, 'PostTitle', 'HOME'),
(1448, 116, 'PostStatus', 'publish'),
(1449, 116, 'PostDate', '2020-07-13 19:56:00'),
(1450, 116, 'PostUrl', 'http://localhost/quiz/'),
(1451, 116, 'EditorLinkPost', 'http://localhost/quiz/wp-admin/post.php?post=17&amp;action=edit'),
(1452, 116, 'ClientIP', '::1'),
(1453, 116, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(1454, 116, 'CurrentUserID', '1'),
(1455, 116, 'CurrentUserRoles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:10:\"superadmin\";}'),
(1456, 116, 'Severity', '20'),
(1457, 116, 'Object', 'post'),
(1458, 116, 'EventType', 'viewed'),
(1459, 117, 'PostID', '12'),
(1460, 117, 'PostType', 'page'),
(1461, 117, 'PostTitle', 'Log In'),
(1462, 117, 'PostStatus', 'publish'),
(1463, 117, 'PostDate', '2020-07-13 19:28:22'),
(1464, 117, 'PostUrl', 'http://localhost/quiz/log-in/'),
(1465, 117, 'EditorLinkPost', 'http://localhost/quiz/wp-admin/post.php?post=12&amp;action=edit'),
(1466, 117, 'ClientIP', '::1'),
(1467, 117, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(1468, 117, 'CurrentUserID', '1'),
(1469, 117, 'CurrentUserRoles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:10:\"superadmin\";}'),
(1470, 117, 'Severity', '20'),
(1471, 117, 'Object', 'post'),
(1472, 117, 'EventType', 'viewed'),
(1473, 118, 'CurrentUserID', '1'),
(1474, 118, 'CurrentUserRoles', 'a:1:{i:0;s:13:\"administrator\";}'),
(1475, 118, 'ClientIP', '::1'),
(1476, 118, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(1477, 118, 'Severity', '15'),
(1478, 118, 'Object', 'user'),
(1479, 118, 'EventType', 'logout'),
(1480, 119, 'PostID', '54'),
(1481, 119, 'PostType', 'page'),
(1482, 119, 'PostTitle', 'QUIZ'),
(1483, 119, 'PostStatus', 'publish'),
(1484, 119, 'PostDate', '2020-07-13 21:03:28'),
(1485, 119, 'PostUrl', 'http://localhost/quiz/quiz-2/'),
(1486, 119, 'ClientIP', '::1'),
(1487, 119, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(1488, 119, 'CurrentUserID', '2'),
(1489, 119, 'CurrentUserRoles', 'a:1:{i:0;s:10:\"subscriber\";}'),
(1490, 119, 'Severity', '20'),
(1491, 119, 'Object', 'post'),
(1492, 119, 'EventType', 'viewed'),
(1493, 120, 'CurrentUserID', '2'),
(1494, 120, 'CurrentUserRoles', 'a:1:{i:0;s:10:\"subscriber\";}'),
(1495, 120, 'ClientIP', '::1'),
(1496, 120, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(1497, 120, 'Severity', '15'),
(1498, 120, 'Object', 'user'),
(1499, 120, 'EventType', 'logout'),
(1500, 121, 'Username', 'abiha'),
(1501, 121, 'CurrentUserRoles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:10:\"superadmin\";}'),
(1502, 121, 'ClientIP', '::1'),
(1503, 121, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(1504, 121, 'Severity', '15'),
(1505, 121, 'Object', 'user'),
(1506, 121, 'EventType', 'login'),
(1507, 122, 'PostID', '63'),
(1508, 122, 'PostType', 'page'),
(1509, 122, 'PostTitle', 'LOGOUT'),
(1510, 122, 'PostStatus', 'publish'),
(1511, 122, 'PostDate', '2020-07-14 07:09:44'),
(1512, 122, 'PostUrl', 'http://localhost/quiz/logout/'),
(1513, 122, 'EditorLinkPost', 'http://localhost/quiz/wp-admin/post.php?post=63&amp;action=edit'),
(1514, 122, 'ClientIP', '::1'),
(1515, 122, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(1516, 122, 'CurrentUserID', '1'),
(1517, 122, 'CurrentUserRoles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:10:\"superadmin\";}'),
(1518, 122, 'Severity', '20'),
(1519, 122, 'Object', 'post'),
(1520, 122, 'EventType', 'viewed'),
(1521, 123, 'PostID', '63'),
(1522, 123, 'PostType', 'page'),
(1523, 123, 'PostTitle', 'LOGOUT'),
(1524, 123, 'PostStatus', 'publish'),
(1525, 123, 'PostDate', '2020-07-14 07:09:44'),
(1526, 123, 'PostUrl', 'http://localhost/quiz/logout/'),
(1527, 123, 'EditorLinkPost', 'http://localhost/quiz/wp-admin/post.php?post=63&amp;action=edit'),
(1528, 123, 'ClientIP', '::1'),
(1529, 123, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(1530, 123, 'CurrentUserID', '1'),
(1531, 123, 'CurrentUserRoles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:10:\"superadmin\";}'),
(1532, 123, 'Severity', '20'),
(1533, 123, 'Object', 'post'),
(1534, 123, 'EventType', 'opened'),
(1535, 124, 'PostID', '54'),
(1536, 124, 'PostType', 'page'),
(1537, 124, 'PostTitle', 'QUIZ'),
(1538, 124, 'PostStatus', 'publish'),
(1539, 124, 'PostDate', '2020-07-13 21:03:28'),
(1540, 124, 'PostUrl', 'http://localhost/quiz/quiz-2/'),
(1541, 124, 'EditorLinkPost', 'http://localhost/quiz/wp-admin/post.php?post=54&amp;action=edit'),
(1542, 124, 'RevisionLink', 'http://localhost/quiz/wp-admin/revision.php?revision=121'),
(1543, 124, 'ClientIP', '::1'),
(1544, 124, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(1545, 124, 'CurrentUserID', '1'),
(1546, 124, 'CurrentUserRoles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:10:\"superadmin\";}'),
(1547, 124, 'Severity', '15'),
(1548, 124, 'Object', 'post'),
(1549, 124, 'EventType', 'modified'),
(1550, 125, 'PostID', '63'),
(1551, 125, 'PostType', 'page'),
(1552, 125, 'PostTitle', 'LOGOUT'),
(1553, 125, 'PostStatus', 'publish'),
(1554, 125, 'PostDate', '2020-07-14 07:09:44'),
(1555, 125, 'PostUrl', 'http://localhost/quiz/logout/'),
(1556, 125, 'EditorLinkPost', 'http://localhost/quiz/wp-admin/post.php?post=63&amp;action=edit'),
(1557, 125, 'RevisionLink', 'http://localhost/quiz/wp-admin/revision.php?revision=122'),
(1558, 125, 'ClientIP', '::1'),
(1559, 125, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(1560, 125, 'CurrentUserID', '1'),
(1561, 125, 'CurrentUserRoles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:10:\"superadmin\";}'),
(1562, 125, 'Severity', '15'),
(1563, 125, 'Object', 'post'),
(1564, 125, 'EventType', 'modified'),
(1565, 126, 'PostID', '17'),
(1566, 126, 'PostType', 'page'),
(1567, 126, 'PostTitle', 'HOME'),
(1568, 126, 'PostStatus', 'publish'),
(1569, 126, 'PostDate', '2020-07-13 19:56:00'),
(1570, 126, 'PostUrl', 'http://localhost/quiz/'),
(1571, 126, 'EditorLinkPost', 'http://localhost/quiz/wp-admin/post.php?post=17&amp;action=edit'),
(1572, 126, 'ClientIP', '::1'),
(1573, 126, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(1574, 126, 'CurrentUserID', '1'),
(1575, 126, 'CurrentUserRoles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:10:\"superadmin\";}'),
(1576, 126, 'Severity', '20'),
(1577, 126, 'Object', 'post'),
(1578, 126, 'EventType', 'viewed'),
(1579, 127, 'PostID', '12'),
(1580, 127, 'PostType', 'page'),
(1581, 127, 'PostTitle', 'Log In'),
(1582, 127, 'PostStatus', 'publish'),
(1583, 127, 'PostDate', '2020-07-13 19:28:22'),
(1584, 127, 'PostUrl', 'http://localhost/quiz/log-in/'),
(1585, 127, 'EditorLinkPost', 'http://localhost/quiz/wp-admin/post.php?post=12&amp;action=edit'),
(1586, 127, 'ClientIP', '::1'),
(1587, 127, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(1588, 127, 'CurrentUserID', '1'),
(1589, 127, 'CurrentUserRoles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:10:\"superadmin\";}'),
(1590, 127, 'Severity', '20'),
(1591, 127, 'Object', 'post'),
(1592, 127, 'EventType', 'viewed'),
(1593, 128, 'CurrentUserID', '1'),
(1594, 128, 'CurrentUserRoles', 'a:1:{i:0;s:13:\"administrator\";}'),
(1595, 128, 'ClientIP', '::1'),
(1596, 128, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(1597, 128, 'Severity', '15'),
(1598, 128, 'Object', 'user'),
(1599, 128, 'EventType', 'logout'),
(1600, 129, 'Username', 'abiha'),
(1601, 129, 'CurrentUserRoles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:10:\"superadmin\";}'),
(1602, 129, 'ClientIP', '::1'),
(1603, 129, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(1604, 129, 'Severity', '15'),
(1605, 129, 'Object', 'user'),
(1606, 129, 'EventType', 'login'),
(1607, 130, 'PostID', '54'),
(1608, 130, 'PostType', 'page'),
(1609, 130, 'PostTitle', 'QUIZ'),
(1610, 130, 'PostStatus', 'publish'),
(1611, 130, 'PostDate', '2020-07-13 21:03:28'),
(1612, 130, 'PostUrl', 'http://localhost/quiz/quiz-2/'),
(1613, 130, 'EditorLinkPost', 'http://localhost/quiz/wp-admin/post.php?post=54&amp;action=edit'),
(1614, 130, 'ClientIP', '::1'),
(1615, 130, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(1616, 130, 'CurrentUserID', '1'),
(1617, 130, 'CurrentUserRoles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:10:\"superadmin\";}'),
(1618, 130, 'Severity', '20'),
(1619, 130, 'Object', 'post'),
(1620, 130, 'EventType', 'opened'),
(1621, 131, 'PostID', '10'),
(1622, 131, 'PostType', 'page'),
(1623, 131, 'PostTitle', 'Register'),
(1624, 131, 'PostStatus', 'publish'),
(1625, 131, 'PostDate', '2020-07-13 19:28:22'),
(1626, 131, 'PostUrl', 'http://localhost/quiz/register/'),
(1627, 131, 'EditorLinkPost', 'http://localhost/quiz/wp-admin/post.php?post=10&amp;action=edit'),
(1628, 131, 'ClientIP', '::1'),
(1629, 131, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(1630, 131, 'CurrentUserID', '1'),
(1631, 131, 'CurrentUserRoles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:10:\"superadmin\";}'),
(1632, 131, 'Severity', '20'),
(1633, 131, 'Object', 'post'),
(1634, 131, 'EventType', 'viewed'),
(1635, 132, 'NewUserID', '3'),
(1636, 132, 'UserChanger', 'abiha'),
(1637, 132, 'NewUserData', 'O:8:\"stdClass\":5:{s:8:\"Username\";s:9:\"amal amir\";s:9:\"FirstName\";s:4:\"amal\";s:8:\"LastName\";s:5:\"zehra\";s:5:\"Email\";s:21:\"amal.amir74@gmail.com\";s:5:\"Roles\";s:10:\"subscriber\";}'),
(1638, 132, 'EditUserLink', 'http://localhost/quiz/wp-admin/user-edit.php?user_id=3'),
(1639, 132, 'ClientIP', '::1'),
(1640, 132, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(1641, 132, 'CurrentUserID', '1'),
(1642, 132, 'CurrentUserRoles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:10:\"superadmin\";}'),
(1643, 132, 'Severity', '1'),
(1644, 132, 'Object', 'user'),
(1645, 132, 'EventType', 'created'),
(1646, 133, 'PostID', '12'),
(1647, 133, 'PostType', 'page'),
(1648, 133, 'PostTitle', 'Log In'),
(1649, 133, 'PostStatus', 'publish'),
(1650, 133, 'PostDate', '2020-07-13 19:28:22'),
(1651, 133, 'PostUrl', 'http://localhost/quiz/log-in/'),
(1652, 133, 'EditorLinkPost', 'http://localhost/quiz/wp-admin/post.php?post=12&amp;action=edit'),
(1653, 133, 'ClientIP', '::1'),
(1654, 133, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(1655, 133, 'CurrentUserID', '1'),
(1656, 133, 'CurrentUserRoles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:10:\"superadmin\";}'),
(1657, 133, 'Severity', '20'),
(1658, 133, 'Object', 'post'),
(1659, 133, 'EventType', 'viewed'),
(1660, 134, 'CurrentUserID', '1'),
(1661, 134, 'CurrentUserRoles', 'a:1:{i:0;s:13:\"administrator\";}'),
(1662, 134, 'ClientIP', '::1'),
(1663, 134, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(1664, 134, 'Severity', '15'),
(1665, 134, 'Object', 'user'),
(1666, 134, 'EventType', 'logout'),
(1667, 135, 'PostID', '54'),
(1668, 135, 'PostType', 'page'),
(1669, 135, 'PostTitle', 'QUIZ'),
(1670, 135, 'PostStatus', 'publish'),
(1671, 135, 'PostDate', '2020-07-13 21:03:28'),
(1672, 135, 'PostUrl', 'http://localhost/quiz/quiz-2/'),
(1673, 135, 'ClientIP', '::1'),
(1674, 135, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(1675, 135, 'CurrentUserID', '3'),
(1676, 135, 'CurrentUserRoles', 'a:1:{i:0;s:10:\"subscriber\";}'),
(1677, 135, 'Severity', '20'),
(1678, 135, 'Object', 'post'),
(1679, 135, 'EventType', 'viewed'),
(1680, 136, 'PostID', '54'),
(1681, 136, 'PostType', 'page'),
(1682, 136, 'PostTitle', 'QUIZ'),
(1683, 136, 'PostStatus', 'publish'),
(1684, 136, 'PostDate', '2020-07-13 21:03:28'),
(1685, 136, 'PostUrl', 'http://localhost/quiz/quiz-2/'),
(1686, 136, 'ClientIP', '::1'),
(1687, 136, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(1688, 136, 'CurrentUserID', '3'),
(1689, 136, 'CurrentUserRoles', 'a:1:{i:0;s:10:\"subscriber\";}'),
(1690, 136, 'Severity', '20'),
(1691, 136, 'Object', 'post'),
(1692, 136, 'EventType', 'viewed'),
(1693, 137, 'Username', 'abiha'),
(1694, 137, 'CurrentUserRoles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:10:\"superadmin\";}'),
(1695, 137, 'ClientIP', '::1'),
(1696, 137, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(1697, 137, 'Severity', '15'),
(1698, 137, 'Object', 'user'),
(1699, 137, 'EventType', 'login'),
(1700, 138, 'PostID', '54'),
(1701, 138, 'PostType', 'page'),
(1702, 138, 'PostTitle', 'QUIZ'),
(1703, 138, 'PostStatus', 'publish'),
(1704, 138, 'PostDate', '2020-07-13 21:03:28'),
(1705, 138, 'PostUrl', 'http://localhost/quiz/quiz-2/'),
(1706, 138, 'EditorLinkPost', 'http://localhost/quiz/wp-admin/post.php?post=54&amp;action=edit'),
(1707, 138, 'ClientIP', '::1'),
(1708, 138, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(1709, 138, 'CurrentUserID', '1'),
(1710, 138, 'CurrentUserRoles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:10:\"superadmin\";}'),
(1711, 138, 'Severity', '20'),
(1712, 138, 'Object', 'post'),
(1713, 138, 'EventType', 'opened'),
(1714, 139, 'PostID', '54'),
(1715, 139, 'PostType', 'page'),
(1716, 139, 'PostTitle', 'QUIZ'),
(1717, 139, 'PostStatus', 'publish'),
(1718, 139, 'PostDate', '2020-07-13 21:03:28'),
(1719, 139, 'PostUrl', 'http://localhost/quiz/quiz-2/'),
(1720, 139, 'EditorLinkPost', 'http://localhost/quiz/wp-admin/post.php?post=54&amp;action=edit'),
(1721, 139, 'ClientIP', '::1'),
(1722, 139, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(1723, 139, 'CurrentUserID', '1'),
(1724, 139, 'CurrentUserRoles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:10:\"superadmin\";}'),
(1725, 139, 'Severity', '20'),
(1726, 139, 'Object', 'post'),
(1727, 139, 'EventType', 'viewed'),
(1728, 140, 'PostID', '63'),
(1729, 140, 'PostType', 'page'),
(1730, 140, 'PostTitle', 'LOGOUT'),
(1731, 140, 'PostStatus', 'publish'),
(1732, 140, 'PostDate', '2020-07-14 07:09:44'),
(1733, 140, 'PostUrl', 'http://localhost/quiz/logout/'),
(1734, 140, 'EditorLinkPost', 'http://localhost/quiz/wp-admin/post.php?post=63&amp;action=edit'),
(1735, 140, 'ClientIP', '::1'),
(1736, 140, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(1737, 140, 'CurrentUserID', '1'),
(1738, 140, 'CurrentUserRoles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:10:\"superadmin\";}'),
(1739, 140, 'Severity', '20'),
(1740, 140, 'Object', 'post'),
(1741, 140, 'EventType', 'viewed'),
(1742, 141, 'CurrentUserID', '1'),
(1743, 141, 'CurrentUserRoles', 'a:1:{i:0;s:13:\"administrator\";}'),
(1744, 141, 'ClientIP', '::1'),
(1745, 141, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(1746, 141, 'Severity', '15'),
(1747, 141, 'Object', 'user'),
(1748, 141, 'EventType', 'logout'),
(1749, 142, 'PostID', '54'),
(1750, 142, 'PostType', 'page'),
(1751, 142, 'PostTitle', 'QUIZ'),
(1752, 142, 'PostStatus', 'publish'),
(1753, 142, 'PostDate', '2020-07-13 21:03:28'),
(1754, 142, 'PostUrl', 'http://localhost/quiz/quiz-2/'),
(1755, 142, 'ClientIP', '::1'),
(1756, 142, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(1757, 142, 'CurrentUserID', '3'),
(1758, 142, 'CurrentUserRoles', 'a:1:{i:0;s:10:\"subscriber\";}'),
(1759, 142, 'Severity', '20'),
(1760, 142, 'Object', 'post'),
(1761, 142, 'EventType', 'viewed'),
(1762, 143, 'PostID', '63'),
(1763, 143, 'PostType', 'page'),
(1764, 143, 'PostTitle', 'LOGOUT'),
(1765, 143, 'PostStatus', 'publish'),
(1766, 143, 'PostDate', '2020-07-14 07:09:44'),
(1767, 143, 'PostUrl', 'http://localhost/quiz/logout/'),
(1768, 143, 'ClientIP', '::1'),
(1769, 143, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(1770, 143, 'CurrentUserID', '3'),
(1771, 143, 'CurrentUserRoles', 'a:1:{i:0;s:10:\"subscriber\";}'),
(1772, 143, 'Severity', '20'),
(1773, 143, 'Object', 'post'),
(1774, 143, 'EventType', 'viewed'),
(1775, 144, 'CurrentUserID', '3'),
(1776, 144, 'CurrentUserRoles', 'a:1:{i:0;s:10:\"subscriber\";}'),
(1777, 144, 'ClientIP', '::1'),
(1778, 144, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(1779, 144, 'Severity', '15'),
(1780, 144, 'Object', 'user'),
(1781, 144, 'EventType', 'logout'),
(1782, 145, 'Username', 'abiha'),
(1783, 145, 'CurrentUserRoles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:10:\"superadmin\";}'),
(1784, 145, 'ClientIP', '::1'),
(1785, 145, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(1786, 145, 'Severity', '15'),
(1787, 145, 'Object', 'user'),
(1788, 145, 'EventType', 'login'),
(1789, 146, 'PostID', '54'),
(1790, 146, 'PostType', 'page'),
(1791, 146, 'PostTitle', 'QUIZ'),
(1792, 146, 'PostStatus', 'publish'),
(1793, 146, 'PostDate', '2020-07-13 21:03:28'),
(1794, 146, 'PostUrl', 'http://localhost/quiz/quiz-2/'),
(1795, 146, 'EditorLinkPost', 'http://localhost/quiz/wp-admin/post.php?post=54&amp;action=edit'),
(1796, 146, 'ClientIP', '::1'),
(1797, 146, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(1798, 146, 'CurrentUserID', '1'),
(1799, 146, 'CurrentUserRoles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:10:\"superadmin\";}'),
(1800, 146, 'Severity', '20'),
(1801, 146, 'Object', 'post'),
(1802, 146, 'EventType', 'viewed'),
(1803, 147, 'PostID', '54'),
(1804, 147, 'PostType', 'page'),
(1805, 147, 'PostTitle', 'QUIZ'),
(1806, 147, 'PostStatus', 'publish'),
(1807, 147, 'PostDate', '2020-07-13 21:03:28'),
(1808, 147, 'PostUrl', 'http://localhost/quiz/quiz-2/'),
(1809, 147, 'EditorLinkPost', 'http://localhost/quiz/wp-admin/post.php?post=54&amp;action=edit'),
(1810, 147, 'ClientIP', '::1'),
(1811, 147, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(1812, 147, 'CurrentUserID', '1'),
(1813, 147, 'CurrentUserRoles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:10:\"superadmin\";}'),
(1814, 147, 'Severity', '20'),
(1815, 147, 'Object', 'post'),
(1816, 147, 'EventType', 'opened'),
(1817, 148, 'PostID', '54'),
(1818, 148, 'PostType', 'page'),
(1819, 148, 'PostTitle', 'QUIZ'),
(1820, 148, 'PostStatus', 'publish'),
(1821, 148, 'PostDate', '2020-07-13 21:03:28'),
(1822, 148, 'PostUrl', 'http://localhost/quiz/quiz-2/'),
(1823, 148, 'EditorLinkPost', 'http://localhost/quiz/wp-admin/post.php?post=54&amp;action=edit'),
(1824, 148, 'RevisionLink', 'http://localhost/quiz/wp-admin/revision.php?revision=123'),
(1825, 148, 'ClientIP', '::1'),
(1826, 148, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(1827, 148, 'CurrentUserID', '1'),
(1828, 148, 'CurrentUserRoles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:10:\"superadmin\";}'),
(1829, 148, 'Severity', '15'),
(1830, 148, 'Object', 'post'),
(1831, 148, 'EventType', 'modified'),
(1832, 149, 'PostID', '12'),
(1833, 149, 'PostType', 'page'),
(1834, 149, 'PostTitle', 'Log In'),
(1835, 149, 'PostStatus', 'publish'),
(1836, 149, 'PostDate', '2020-07-13 19:28:22'),
(1837, 149, 'PostUrl', 'http://localhost/quiz/log-in/'),
(1838, 149, 'EditorLinkPost', 'http://localhost/quiz/wp-admin/post.php?post=12&amp;action=edit'),
(1839, 149, 'ClientIP', '::1'),
(1840, 149, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(1841, 149, 'CurrentUserID', '1'),
(1842, 149, 'CurrentUserRoles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:10:\"superadmin\";}'),
(1843, 149, 'Severity', '20'),
(1844, 149, 'Object', 'post'),
(1845, 149, 'EventType', 'viewed'),
(1846, 150, 'CurrentUserID', '1'),
(1847, 150, 'CurrentUserRoles', 'a:1:{i:0;s:13:\"administrator\";}'),
(1848, 150, 'ClientIP', '::1'),
(1849, 150, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(1850, 150, 'Severity', '15'),
(1851, 150, 'Object', 'user'),
(1852, 150, 'EventType', 'logout'),
(1853, 151, 'PostID', '54'),
(1854, 151, 'PostType', 'page'),
(1855, 151, 'PostTitle', 'QUIZ'),
(1856, 151, 'PostStatus', 'publish'),
(1857, 151, 'PostDate', '2020-07-13 21:03:28'),
(1858, 151, 'PostUrl', 'http://localhost/quiz/quiz-2/'),
(1859, 151, 'ClientIP', '::1'),
(1860, 151, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(1861, 151, 'CurrentUserID', '3'),
(1862, 151, 'CurrentUserRoles', 'a:1:{i:0;s:10:\"subscriber\";}'),
(1863, 151, 'Severity', '20'),
(1864, 151, 'Object', 'post'),
(1865, 151, 'EventType', 'viewed'),
(1866, 152, 'PostID', '63'),
(1867, 152, 'PostType', 'page'),
(1868, 152, 'PostTitle', 'LOGOUT'),
(1869, 152, 'PostStatus', 'publish'),
(1870, 152, 'PostDate', '2020-07-14 07:09:44'),
(1871, 152, 'PostUrl', 'http://localhost/quiz/logout/'),
(1872, 152, 'ClientIP', '::1'),
(1873, 152, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(1874, 152, 'CurrentUserID', '3'),
(1875, 152, 'CurrentUserRoles', 'a:1:{i:0;s:10:\"subscriber\";}'),
(1876, 152, 'Severity', '20'),
(1877, 152, 'Object', 'post'),
(1878, 152, 'EventType', 'viewed'),
(1879, 153, 'CurrentUserID', '3'),
(1880, 153, 'CurrentUserRoles', 'a:1:{i:0;s:10:\"subscriber\";}'),
(1881, 153, 'ClientIP', '::1'),
(1882, 153, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(1883, 153, 'Severity', '15'),
(1884, 153, 'Object', 'user'),
(1885, 153, 'EventType', 'logout'),
(1886, 154, 'PostID', '54'),
(1887, 154, 'PostType', 'page'),
(1888, 154, 'PostTitle', 'QUIZ'),
(1889, 154, 'PostStatus', 'publish'),
(1890, 154, 'PostDate', '2020-07-13 21:03:28'),
(1891, 154, 'PostUrl', 'http://localhost/quiz/quiz-2/'),
(1892, 154, 'ClientIP', '::1'),
(1893, 154, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(1894, 154, 'CurrentUserID', '4'),
(1895, 154, 'CurrentUserRoles', 'a:1:{i:0;s:10:\"subscriber\";}'),
(1896, 154, 'Severity', '20'),
(1897, 154, 'Object', 'post'),
(1898, 154, 'EventType', 'viewed'),
(1899, 155, 'CurrentUserID', '4'),
(1900, 155, 'CurrentUserRoles', 'a:1:{i:0;s:10:\"subscriber\";}'),
(1901, 155, 'ClientIP', '::1'),
(1902, 155, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(1903, 155, 'Severity', '15'),
(1904, 155, 'Object', 'user'),
(1905, 155, 'EventType', 'logout'),
(1906, 156, 'Username', 'abiha'),
(1907, 156, 'CurrentUserRoles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:10:\"superadmin\";}'),
(1908, 156, 'ClientIP', '::1'),
(1909, 156, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(1910, 156, 'Severity', '15'),
(1911, 156, 'Object', 'user'),
(1912, 156, 'EventType', 'login'),
(1913, 157, 'PostID', '54'),
(1914, 157, 'PostType', 'page'),
(1915, 157, 'PostTitle', 'QUIZ'),
(1916, 157, 'PostStatus', 'publish'),
(1917, 157, 'PostDate', '2020-07-13 21:03:28'),
(1918, 157, 'PostUrl', 'http://localhost/quiz/quiz-2/');
INSERT INTO `wp_wsal_metadata` (`id`, `occurrence_id`, `name`, `value`) VALUES
(1919, 157, 'EditorLinkPost', 'http://localhost/quiz/wp-admin/post.php?post=54&amp;action=edit'),
(1920, 157, 'ClientIP', '::1'),
(1921, 157, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(1922, 157, 'CurrentUserID', '1'),
(1923, 157, 'CurrentUserRoles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:10:\"superadmin\";}'),
(1924, 157, 'Severity', '20'),
(1925, 157, 'Object', 'post'),
(1926, 157, 'EventType', 'viewed'),
(1927, 158, 'PostID', '63'),
(1928, 158, 'PostType', 'page'),
(1929, 158, 'PostTitle', 'LOGOUT'),
(1930, 158, 'PostStatus', 'publish'),
(1931, 158, 'PostDate', '2020-07-14 07:09:44'),
(1932, 158, 'PostUrl', 'http://localhost/quiz/logout/'),
(1933, 158, 'EditorLinkPost', 'http://localhost/quiz/wp-admin/post.php?post=63&amp;action=edit'),
(1934, 158, 'ClientIP', '::1'),
(1935, 158, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(1936, 158, 'CurrentUserID', '1'),
(1937, 158, 'CurrentUserRoles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:10:\"superadmin\";}'),
(1938, 158, 'Severity', '20'),
(1939, 158, 'Object', 'post'),
(1940, 158, 'EventType', 'viewed'),
(1941, 159, 'CurrentUserID', '1'),
(1942, 159, 'CurrentUserRoles', 'a:1:{i:0;s:13:\"administrator\";}'),
(1943, 159, 'ClientIP', '::1'),
(1944, 159, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(1945, 159, 'Severity', '15'),
(1946, 159, 'Object', 'user'),
(1947, 159, 'EventType', 'logout'),
(1948, 160, 'PostID', '54'),
(1949, 160, 'PostType', 'page'),
(1950, 160, 'PostTitle', 'QUIZ'),
(1951, 160, 'PostStatus', 'publish'),
(1952, 160, 'PostDate', '2020-07-13 21:03:28'),
(1953, 160, 'PostUrl', 'http://localhost/quiz/quiz-2/'),
(1954, 160, 'ClientIP', '::1'),
(1955, 160, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(1956, 160, 'CurrentUserID', '4'),
(1957, 160, 'CurrentUserRoles', 'a:1:{i:0;s:10:\"subscriber\";}'),
(1958, 160, 'Severity', '20'),
(1959, 160, 'Object', 'post'),
(1960, 160, 'EventType', 'viewed'),
(1961, 161, 'PostID', '63'),
(1962, 161, 'PostType', 'page'),
(1963, 161, 'PostTitle', 'LOGOUT'),
(1964, 161, 'PostStatus', 'publish'),
(1965, 161, 'PostDate', '2020-07-14 07:09:44'),
(1966, 161, 'PostUrl', 'http://localhost/quiz/logout/'),
(1967, 161, 'ClientIP', '::1'),
(1968, 161, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(1969, 161, 'CurrentUserID', '4'),
(1970, 161, 'CurrentUserRoles', 'a:1:{i:0;s:10:\"subscriber\";}'),
(1971, 161, 'Severity', '20'),
(1972, 161, 'Object', 'post'),
(1973, 161, 'EventType', 'viewed'),
(1974, 162, 'CurrentUserID', '4'),
(1975, 162, 'CurrentUserRoles', 'a:1:{i:0;s:10:\"subscriber\";}'),
(1976, 162, 'ClientIP', '::1'),
(1977, 162, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(1978, 162, 'Severity', '15'),
(1979, 162, 'Object', 'user'),
(1980, 162, 'EventType', 'logout'),
(1981, 163, 'PostID', '54'),
(1982, 163, 'PostType', 'page'),
(1983, 163, 'PostTitle', 'QUIZ'),
(1984, 163, 'PostStatus', 'publish'),
(1985, 163, 'PostDate', '2020-07-13 21:03:28'),
(1986, 163, 'PostUrl', 'http://localhost/quiz/quiz-2/'),
(1987, 163, 'ClientIP', '::1'),
(1988, 163, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(1989, 163, 'CurrentUserID', '4'),
(1990, 163, 'CurrentUserRoles', 'a:1:{i:0;s:10:\"subscriber\";}'),
(1991, 163, 'Severity', '20'),
(1992, 163, 'Object', 'post'),
(1993, 163, 'EventType', 'viewed'),
(1994, 164, 'PostID', '63'),
(1995, 164, 'PostType', 'page'),
(1996, 164, 'PostTitle', 'LOGOUT'),
(1997, 164, 'PostStatus', 'publish'),
(1998, 164, 'PostDate', '2020-07-14 07:09:44'),
(1999, 164, 'PostUrl', 'http://localhost/quiz/logout/'),
(2000, 164, 'ClientIP', '::1'),
(2001, 164, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(2002, 164, 'CurrentUserID', '4'),
(2003, 164, 'CurrentUserRoles', 'a:1:{i:0;s:10:\"subscriber\";}'),
(2004, 164, 'Severity', '20'),
(2005, 164, 'Object', 'post'),
(2006, 164, 'EventType', 'viewed'),
(2007, 165, 'CurrentUserID', '4'),
(2008, 165, 'CurrentUserRoles', 'a:1:{i:0;s:10:\"subscriber\";}'),
(2009, 165, 'ClientIP', '::1'),
(2010, 165, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(2011, 165, 'Severity', '15'),
(2012, 165, 'Object', 'user'),
(2013, 165, 'EventType', 'logout'),
(2014, 166, 'Username', 'abiha'),
(2015, 166, 'CurrentUserRoles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:10:\"superadmin\";}'),
(2016, 166, 'ClientIP', '::1'),
(2017, 166, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(2018, 166, 'Severity', '15'),
(2019, 166, 'Object', 'user'),
(2020, 166, 'EventType', 'login'),
(2021, 167, 'PostID', '54'),
(2022, 167, 'PostType', 'page'),
(2023, 167, 'PostTitle', 'QUIZ'),
(2024, 167, 'PostStatus', 'publish'),
(2025, 167, 'PostDate', '2020-07-13 21:03:28'),
(2026, 167, 'PostUrl', 'http://localhost/quiz/quiz-2/'),
(2027, 167, 'EditorLinkPost', 'http://localhost/quiz/wp-admin/post.php?post=54&amp;action=edit'),
(2028, 167, 'ClientIP', '::1'),
(2029, 167, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(2030, 167, 'CurrentUserID', '1'),
(2031, 167, 'CurrentUserRoles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:10:\"superadmin\";}'),
(2032, 167, 'Severity', '20'),
(2033, 167, 'Object', 'post'),
(2034, 167, 'EventType', 'opened'),
(2035, 168, 'PostID', '54'),
(2036, 168, 'PostType', 'page'),
(2037, 168, 'PostTitle', 'QUIZ'),
(2038, 168, 'PostStatus', 'publish'),
(2039, 168, 'PostDate', '2020-07-13 21:03:28'),
(2040, 168, 'PostUrl', 'http://localhost/quiz/quiz-2/'),
(2041, 168, 'EditorLinkPost', 'http://localhost/quiz/wp-admin/post.php?post=54&amp;action=edit'),
(2042, 168, 'RevisionLink', 'http://localhost/quiz/wp-admin/revision.php?revision=124'),
(2043, 168, 'ClientIP', '::1'),
(2044, 168, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(2045, 168, 'CurrentUserID', '1'),
(2046, 168, 'CurrentUserRoles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:10:\"superadmin\";}'),
(2047, 168, 'Severity', '15'),
(2048, 168, 'Object', 'post'),
(2049, 168, 'EventType', 'modified'),
(2050, 169, 'PostID', '17'),
(2051, 169, 'PostType', 'page'),
(2052, 169, 'PostTitle', 'HOME'),
(2053, 169, 'PostStatus', 'publish'),
(2054, 169, 'PostDate', '2020-07-13 19:56:00'),
(2055, 169, 'PostUrl', 'http://localhost/quiz/'),
(2056, 169, 'EditorLinkPost', 'http://localhost/quiz/wp-admin/post.php?post=17&amp;action=edit'),
(2057, 169, 'ClientIP', '::1'),
(2058, 169, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(2059, 169, 'CurrentUserID', '1'),
(2060, 169, 'CurrentUserRoles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:10:\"superadmin\";}'),
(2061, 169, 'Severity', '20'),
(2062, 169, 'Object', 'post'),
(2063, 169, 'EventType', 'opened'),
(2064, 170, 'PostID', '63'),
(2065, 170, 'PostType', 'page'),
(2066, 170, 'PostTitle', 'LOGOUT'),
(2067, 170, 'PostStatus', 'publish'),
(2068, 170, 'PostDate', '2020-07-14 07:09:44'),
(2069, 170, 'PostUrl', 'http://localhost/quiz/logout/'),
(2070, 170, 'EditorLinkPost', 'http://localhost/quiz/wp-admin/post.php?post=63&amp;action=edit'),
(2071, 170, 'RevisionLink', 'http://localhost/quiz/wp-admin/revision.php?revision=125'),
(2072, 170, 'ClientIP', '::1'),
(2073, 170, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(2074, 170, 'CurrentUserID', '1'),
(2075, 170, 'CurrentUserRoles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:10:\"superadmin\";}'),
(2076, 170, 'Severity', '15'),
(2077, 170, 'Object', 'post'),
(2078, 170, 'EventType', 'modified'),
(2079, 171, 'PostID', '17'),
(2080, 171, 'PostType', 'page'),
(2081, 171, 'PostTitle', 'HOME'),
(2082, 171, 'PostStatus', 'publish'),
(2083, 171, 'PostDate', '2020-07-13 19:56:00'),
(2084, 171, 'PostUrl', 'http://localhost/quiz/'),
(2085, 171, 'EditorLinkPost', 'http://localhost/quiz/wp-admin/post.php?post=17&amp;action=edit'),
(2086, 171, 'ClientIP', '::1'),
(2087, 171, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(2088, 171, 'CurrentUserID', '1'),
(2089, 171, 'CurrentUserRoles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:10:\"superadmin\";}'),
(2090, 171, 'Severity', '20'),
(2091, 171, 'Object', 'post'),
(2092, 171, 'EventType', 'opened'),
(2093, 172, 'AttachmentID', '126'),
(2094, 172, 'FileName', 'ready.png'),
(2095, 172, 'FilePath', 'C:\\xampp\\htdocs\\quiz/wp-content/uploads/2020/07'),
(2096, 172, 'ClientIP', '::1'),
(2097, 172, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(2098, 172, 'CurrentUserID', '1'),
(2099, 172, 'CurrentUserRoles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:10:\"superadmin\";}'),
(2100, 172, 'Severity', '10'),
(2101, 172, 'Object', 'file'),
(2102, 172, 'EventType', 'uploaded'),
(2103, 173, 'AttachmentID', '127'),
(2104, 173, 'FileName', 'ready-1.png'),
(2105, 173, 'FilePath', 'C:\\xampp\\htdocs\\quiz/wp-content/uploads/2020/07'),
(2106, 173, 'ClientIP', '::1'),
(2107, 173, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(2108, 173, 'CurrentUserID', '1'),
(2109, 173, 'CurrentUserRoles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:10:\"superadmin\";}'),
(2110, 173, 'Severity', '10'),
(2111, 173, 'Object', 'file'),
(2112, 173, 'EventType', 'uploaded'),
(2113, 174, 'PostID', '17'),
(2114, 174, 'PostType', 'page'),
(2115, 174, 'PostTitle', 'HOME'),
(2116, 174, 'PostStatus', 'publish'),
(2117, 174, 'PostDate', '2020-07-13 19:56:00'),
(2118, 174, 'PostUrl', 'http://localhost/quiz/'),
(2119, 174, 'EditorLinkPost', 'http://localhost/quiz/wp-admin/post.php?post=17&amp;action=edit'),
(2120, 174, 'RevisionLink', 'http://localhost/quiz/wp-admin/revision.php?revision=128'),
(2121, 174, 'ClientIP', '::1'),
(2122, 174, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(2123, 174, 'CurrentUserID', '1'),
(2124, 174, 'CurrentUserRoles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:10:\"superadmin\";}'),
(2125, 174, 'Severity', '15'),
(2126, 174, 'Object', 'post'),
(2127, 174, 'EventType', 'modified'),
(2128, 175, 'PostID', '10'),
(2129, 175, 'PostType', 'page'),
(2130, 175, 'PostTitle', 'Register'),
(2131, 175, 'PostStatus', 'publish'),
(2132, 175, 'PostDate', '2020-07-13 19:28:22'),
(2133, 175, 'PostUrl', 'http://localhost/quiz/register/'),
(2134, 175, 'EditorLinkPost', 'http://localhost/quiz/wp-admin/post.php?post=10&amp;action=edit'),
(2135, 175, 'ClientIP', '::1'),
(2136, 175, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(2137, 175, 'CurrentUserID', '1'),
(2138, 175, 'CurrentUserRoles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:10:\"superadmin\";}'),
(2139, 175, 'Severity', '20'),
(2140, 175, 'Object', 'post'),
(2141, 175, 'EventType', 'viewed'),
(2142, 176, 'TargetUserID', '4'),
(2143, 176, 'TargetUserData', 'O:8:\"stdClass\":5:{s:8:\"Username\";s:5:\"tania\";s:9:\"FirstName\";s:5:\"tania\";s:8:\"LastName\";s:6:\"fatima\";s:5:\"Email\";s:23:\"taniafatima@hotmail.com\";s:5:\"Roles\";s:10:\"subscriber\";}'),
(2144, 176, 'ClientIP', '::1'),
(2145, 176, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(2146, 176, 'CurrentUserID', '1'),
(2147, 176, 'CurrentUserRoles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:10:\"superadmin\";}'),
(2148, 176, 'Severity', '6'),
(2149, 176, 'Object', 'user'),
(2150, 176, 'EventType', 'deleted'),
(2151, 177, 'NewUserID', '5'),
(2152, 177, 'UserChanger', 'abiha'),
(2153, 177, 'NewUserData', 'O:8:\"stdClass\":5:{s:8:\"Username\";s:5:\"tania\";s:9:\"FirstName\";s:5:\"tania\";s:8:\"LastName\";s:6:\"kumail\";s:5:\"Email\";s:23:\"taniafatima@hotmail.com\";s:5:\"Roles\";s:10:\"subscriber\";}'),
(2154, 177, 'EditUserLink', 'http://localhost/quiz/wp-admin/user-edit.php?user_id=5'),
(2155, 177, 'ClientIP', '::1'),
(2156, 177, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(2157, 177, 'CurrentUserID', '1'),
(2158, 177, 'CurrentUserRoles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:10:\"superadmin\";}'),
(2159, 177, 'Severity', '1'),
(2160, 177, 'Object', 'user'),
(2161, 177, 'EventType', 'created'),
(2162, 178, 'PostID', '12'),
(2163, 178, 'PostType', 'page'),
(2164, 178, 'PostTitle', 'Log In'),
(2165, 178, 'PostStatus', 'publish'),
(2166, 178, 'PostDate', '2020-07-13 19:28:22'),
(2167, 178, 'PostUrl', 'http://localhost/quiz/log-in/'),
(2168, 178, 'EditorLinkPost', 'http://localhost/quiz/wp-admin/post.php?post=12&amp;action=edit'),
(2169, 178, 'ClientIP', '::1'),
(2170, 178, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(2171, 178, 'CurrentUserID', '1'),
(2172, 178, 'CurrentUserRoles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:10:\"superadmin\";}'),
(2173, 178, 'Severity', '20'),
(2174, 178, 'Object', 'post'),
(2175, 178, 'EventType', 'viewed'),
(2176, 179, 'CurrentUserID', '1'),
(2177, 179, 'CurrentUserRoles', 'a:1:{i:0;s:13:\"administrator\";}'),
(2178, 179, 'ClientIP', '::1'),
(2179, 179, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(2180, 179, 'Severity', '15'),
(2181, 179, 'Object', 'user'),
(2182, 179, 'EventType', 'logout'),
(2183, 180, 'PostID', '54'),
(2184, 180, 'PostType', 'page'),
(2185, 180, 'PostTitle', 'QUIZ'),
(2186, 180, 'PostStatus', 'publish'),
(2187, 180, 'PostDate', '2020-07-13 21:03:28'),
(2188, 180, 'PostUrl', 'http://localhost/quiz/quiz-2/'),
(2189, 180, 'ClientIP', '::1'),
(2190, 180, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(2191, 180, 'CurrentUserID', '5'),
(2192, 180, 'CurrentUserRoles', 'a:1:{i:0;s:10:\"subscriber\";}'),
(2193, 180, 'Severity', '20'),
(2194, 180, 'Object', 'post'),
(2195, 180, 'EventType', 'viewed'),
(2196, 181, 'PostID', '63'),
(2197, 181, 'PostType', 'page'),
(2198, 181, 'PostTitle', 'LOGOUT'),
(2199, 181, 'PostStatus', 'publish'),
(2200, 181, 'PostDate', '2020-07-14 07:09:44'),
(2201, 181, 'PostUrl', 'http://localhost/quiz/logout/'),
(2202, 181, 'ClientIP', '::1'),
(2203, 181, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(2204, 181, 'CurrentUserID', '5'),
(2205, 181, 'CurrentUserRoles', 'a:1:{i:0;s:10:\"subscriber\";}'),
(2206, 181, 'Severity', '20'),
(2207, 181, 'Object', 'post'),
(2208, 181, 'EventType', 'viewed'),
(2209, 182, 'CurrentUserID', '5'),
(2210, 182, 'CurrentUserRoles', 'a:1:{i:0;s:10:\"subscriber\";}'),
(2211, 182, 'ClientIP', '::1'),
(2212, 182, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(2213, 182, 'Severity', '15'),
(2214, 182, 'Object', 'user'),
(2215, 182, 'EventType', 'logout'),
(2216, 183, 'Username', 'abiha'),
(2217, 183, 'CurrentUserRoles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:10:\"superadmin\";}'),
(2218, 183, 'ClientIP', '::1'),
(2219, 183, 'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'),
(2220, 183, 'Severity', '15'),
(2221, 183, 'Object', 'user'),
(2222, 183, 'EventType', 'login');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wsal_occurrences`
--

CREATE TABLE `wp_wsal_occurrences` (
  `id` bigint(20) NOT NULL,
  `site_id` bigint(20) NOT NULL,
  `alert_id` bigint(20) NOT NULL,
  `created_on` double NOT NULL,
  `is_read` bit(1) NOT NULL,
  `is_migrated` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wp_wsal_occurrences`
--

INSERT INTO `wp_wsal_occurrences` (`id`, `site_id`, `alert_id`, `created_on`, `is_read`, `is_migrated`) VALUES
(1, 1, 5001, 1594730856.345236, b'0', b'0'),
(2, 1, 2101, 1594730951.630268, b'0', b'0'),
(3, 1, 2101, 1594731830.893616, b'0', b'0'),
(4, 1, 2101, 1594731838.382854, b'0', b'0'),
(5, 1, 2010, 1594731942.757668, b'0', b'0'),
(6, 1, 2101, 1594731949.496379, b'0', b'0'),
(7, 1, 2010, 1594732052.565973, b'0', b'0'),
(8, 1, 2101, 1594732057.997482, b'0', b'0'),
(9, 1, 2101, 1594732103.759326, b'0', b'0'),
(10, 1, 2101, 1594732267.105472, b'0', b'0'),
(11, 1, 2101, 1594732279.707458, b'0', b'0'),
(12, 1, 1001, 1594732281.936093, b'0', b'0'),
(13, 1, 2101, 1594732296.57511, b'0', b'0'),
(14, 1, 2101, 1594732316.74094, b'0', b'0'),
(15, 1, 2101, 1594732333.994542, b'0', b'0'),
(16, 1, 2101, 1594732424.99786, b'0', b'0'),
(17, 1, 2101, 1594732425.210618, b'0', b'0'),
(18, 1, 4016, 1594732511.801416, b'0', b'0'),
(19, 1, 2101, 1594732605.996163, b'0', b'0'),
(20, 1, 2100, 1594732920.184998, b'0', b'0'),
(21, 1, 2065, 1594733094.389908, b'0', b'0'),
(22, 1, 2101, 1594733096.240853, b'0', b'0'),
(23, 1, 2100, 1594733104.633909, b'0', b'0'),
(24, 1, 2065, 1594733115.804483, b'0', b'0'),
(25, 1, 2101, 1594733117.305051, b'0', b'0'),
(26, 1, 1001, 1594733131.034741, b'0', b'0'),
(27, 1, 1000, 1594733170.465326, b'0', b'0'),
(28, 1, 2100, 1594733263.977384, b'0', b'0'),
(29, 1, 2065, 1594733368.433965, b'0', b'0'),
(30, 1, 2101, 1594733375.306593, b'0', b'0'),
(31, 1, 2101, 1594733389.598686, b'0', b'0'),
(32, 1, 2100, 1594733398.748332, b'0', b'0'),
(33, 1, 2065, 1594733461.053229, b'0', b'0'),
(34, 1, 2101, 1594733463.085289, b'0', b'0'),
(35, 1, 2100, 1594733484.494758, b'0', b'0'),
(36, 1, 2065, 1594733637.450992, b'0', b'0'),
(37, 1, 2101, 1594733640.539076, b'0', b'0'),
(38, 1, 2100, 1594733651.548964, b'0', b'0'),
(39, 1, 2065, 1594733694.10294, b'0', b'0'),
(40, 1, 2101, 1594733696.916841, b'0', b'0'),
(41, 1, 2100, 1594733711.20431, b'0', b'0'),
(42, 1, 2065, 1594733751.181958, b'0', b'0'),
(43, 1, 2101, 1594733753.992688, b'0', b'0'),
(44, 1, 2100, 1594733818.049868, b'0', b'0'),
(45, 1, 2065, 1594733869.011648, b'0', b'0'),
(46, 1, 2101, 1594733871.9862, b'0', b'0'),
(47, 1, 2100, 1594733882.723711, b'0', b'0'),
(48, 1, 2065, 1594733912.014242, b'0', b'0'),
(49, 1, 2101, 1594733914.565323, b'0', b'0'),
(50, 1, 2100, 1594733925.485628, b'0', b'0'),
(51, 1, 2065, 1594733963.2175, b'0', b'0'),
(52, 1, 2101, 1594733965.95387, b'0', b'0'),
(53, 1, 2100, 1594733973.081578, b'0', b'0'),
(54, 1, 2065, 1594734004.909391, b'0', b'0'),
(55, 1, 2101, 1594734006.792691, b'0', b'0'),
(56, 1, 2100, 1594734015.073712, b'0', b'0'),
(57, 1, 2065, 1594734035.906232, b'0', b'0'),
(58, 1, 2101, 1594734038.411785, b'0', b'0'),
(59, 1, 2100, 1594734050.150469, b'0', b'0'),
(60, 1, 2065, 1594734107.787557, b'0', b'0'),
(61, 1, 2101, 1594734110.342807, b'0', b'0'),
(62, 1, 2101, 1594736455.253649, b'0', b'0'),
(63, 1, 4001, 1594736534.517335, b'0', b'0'),
(64, 1, 2101, 1594736538.378256, b'0', b'0'),
(65, 1, 1001, 1594736549.985946, b'0', b'0'),
(66, 1, 1000, 1594736584.446884, b'0', b'0'),
(67, 1, 2101, 1594736623.15558, b'0', b'0'),
(68, 1, 2101, 1594736848.797352, b'0', b'0'),
(69, 1, 1001, 1594736852.796152, b'0', b'0'),
(70, 1, 1000, 1594841801.671779, b'0', b'0'),
(71, 1, 1000, 1594841802.462662, b'0', b'0'),
(72, 1, 5002, 1594874151.964637, b'0', b'0'),
(73, 1, 5002, 1594874153.403594, b'0', b'0'),
(74, 1, 5000, 1594874185.977619, b'0', b'0'),
(75, 1, 5010, 1594874190.973429, b'0', b'0'),
(76, 1, 5010, 1594874191.04682, b'0', b'0'),
(77, 1, 5010, 1594874191.103733, b'0', b'0'),
(78, 1, 5010, 1594874191.164223, b'0', b'0'),
(79, 1, 5010, 1594874191.22553, b'0', b'0'),
(80, 1, 5010, 1594874191.279792, b'0', b'0'),
(81, 1, 5010, 1594874191.329866, b'0', b'0'),
(82, 1, 5010, 1594874191.3838, b'0', b'0'),
(83, 1, 5010, 1594874191.436244, b'0', b'0'),
(84, 1, 5001, 1594874191.654953, b'0', b'0'),
(85, 1, 4016, 1594874226.775627, b'0', b'0'),
(86, 1, 6007, 1594878180.388675, b'0', b'0'),
(87, 1, 2101, 1594875228.819782, b'0', b'0'),
(88, 1, 5001, 1594875272.32761, b'0', b'0'),
(89, 1, 5002, 1594877598.653095, b'0', b'0'),
(90, 1, 2101, 1594877613.798835, b'0', b'0'),
(91, 1, 2100, 1594879642.183684, b'0', b'0'),
(92, 1, 2065, 1594879664.69834, b'0', b'0'),
(93, 1, 2101, 1594879668.38506, b'0', b'0'),
(94, 1, 2100, 1594880016.760373, b'0', b'0'),
(95, 1, 2065, 1594880033.900515, b'0', b'0'),
(96, 1, 2101, 1594880036.945318, b'0', b'0'),
(97, 1, 2101, 1594880316.261996, b'0', b'0'),
(98, 1, 2101, 1594880318.599076, b'0', b'0'),
(99, 1, 2101, 1594880488.913434, b'0', b'0'),
(100, 1, 2101, 1594880491.371977, b'0', b'0'),
(101, 1, 2101, 1594880743.780181, b'0', b'0'),
(102, 1, 2101, 1594880756.877248, b'0', b'0'),
(103, 1, 1001, 1594880763.427869, b'0', b'0'),
(104, 1, 2101, 1594880801.907268, b'0', b'0'),
(105, 1, 2101, 1594880815.142071, b'0', b'0'),
(106, 1, 1001, 1594880820.359427, b'0', b'0'),
(107, 1, 1000, 1594880834.835076, b'0', b'0'),
(108, 1, 2100, 1594881488.156194, b'0', b'0'),
(109, 1, 2065, 1594881529.855169, b'0', b'0'),
(110, 1, 2100, 1594881537.075759, b'0', b'0'),
(111, 1, 2065, 1594881556.398954, b'0', b'0'),
(112, 1, 2101, 1594881560.68877, b'0', b'0'),
(113, 1, 2101, 1594881945.253127, b'0', b'0'),
(114, 1, 2101, 1594882721.415972, b'0', b'0'),
(115, 1, 2100, 1594882903.924114, b'0', b'0'),
(116, 1, 2101, 1594882922.948749, b'0', b'0'),
(117, 1, 2101, 1594882927.121706, b'0', b'0'),
(118, 1, 1001, 1594882933.696511, b'0', b'0'),
(119, 1, 2101, 1594882953.998489, b'0', b'0'),
(120, 1, 1001, 1594883012.624027, b'0', b'0'),
(121, 1, 1000, 1594883035.662697, b'0', b'0'),
(122, 1, 2101, 1594883215.083765, b'0', b'0'),
(123, 1, 2100, 1594883216.934939, b'0', b'0'),
(124, 1, 2065, 1594883256.173219, b'0', b'0'),
(125, 1, 2065, 1594883270.241669, b'0', b'0'),
(126, 1, 2101, 1594883277.766506, b'0', b'0'),
(127, 1, 2101, 1594883283.264665, b'0', b'0'),
(128, 1, 1001, 1594883285.887186, b'0', b'0'),
(129, 1, 1000, 1594883300.172965, b'0', b'0'),
(130, 1, 2100, 1594883300.662436, b'0', b'0'),
(131, 1, 2101, 1594883348.588948, b'0', b'0'),
(132, 1, 4001, 1594883380.225489, b'0', b'0'),
(133, 1, 2101, 1594883383.717829, b'0', b'0'),
(134, 1, 1001, 1594883388.486205, b'0', b'0'),
(135, 1, 2101, 1594883397.785821, b'0', b'0'),
(136, 1, 2101, 1594883398.453972, b'0', b'0'),
(137, 1, 1000, 1594883430.212422, b'0', b'0'),
(138, 1, 2100, 1594883499.180734, b'0', b'0'),
(139, 1, 2101, 1594883512.368432, b'0', b'0'),
(140, 1, 2101, 1594883519.873267, b'0', b'0'),
(141, 1, 1001, 1594883522.98143, b'0', b'0'),
(142, 1, 2101, 1594883536.599334, b'0', b'0'),
(143, 1, 2101, 1594883541.7587, b'0', b'0'),
(144, 1, 1001, 1594883544.830654, b'0', b'0'),
(145, 1, 1000, 1594883577.196313, b'0', b'0'),
(146, 1, 2101, 1594883601.771747, b'0', b'0'),
(147, 1, 2100, 1594884096.243058, b'0', b'0'),
(148, 1, 2065, 1594884105.292065, b'0', b'0'),
(149, 1, 2101, 1594884118.858542, b'0', b'0'),
(150, 1, 1001, 1594884121.006758, b'0', b'0'),
(151, 1, 2101, 1594884130.77325, b'0', b'0'),
(152, 1, 2101, 1594884141.461399, b'0', b'0'),
(153, 1, 1001, 1594884144.933592, b'0', b'0'),
(154, 1, 2101, 1594884208.993865, b'0', b'0'),
(155, 1, 1001, 1594884229.140919, b'0', b'0'),
(156, 1, 1000, 1594884235.788795, b'0', b'0'),
(157, 1, 2101, 1594884307.548877, b'0', b'0'),
(158, 1, 2101, 1594884314.867276, b'0', b'0'),
(159, 1, 1001, 1594884320.508222, b'0', b'0'),
(160, 1, 2101, 1594884332.568369, b'0', b'0'),
(161, 1, 2101, 1594884569.882222, b'0', b'0'),
(162, 1, 1001, 1594884579.002656, b'0', b'0'),
(163, 1, 2101, 1594884587.649675, b'0', b'0'),
(164, 1, 2101, 1594884613.571635, b'0', b'0'),
(165, 1, 1001, 1594884616.613738, b'0', b'0'),
(166, 1, 1000, 1594884673.421667, b'0', b'0'),
(167, 1, 2100, 1594886543.381856, b'0', b'0'),
(168, 1, 2065, 1594886551.857123, b'0', b'0'),
(169, 1, 2100, 1594888053.843847, b'0', b'0'),
(170, 1, 2065, 1594888089.811121, b'0', b'0'),
(171, 1, 2100, 1594888094.847583, b'0', b'0'),
(172, 1, 2010, 1594890783.365601, b'0', b'0'),
(173, 1, 2010, 1594890868.739445, b'0', b'0'),
(174, 1, 2065, 1594890891.321732, b'0', b'0'),
(175, 1, 2101, 1594891100.031667, b'0', b'0'),
(176, 1, 4007, 1594891158.133238, b'0', b'0'),
(177, 1, 4001, 1594891194.585069, b'0', b'0'),
(178, 1, 2101, 1594891198.217783, b'0', b'0'),
(179, 1, 1001, 1594891202.796489, b'0', b'0'),
(180, 1, 2101, 1594891212.277769, b'0', b'0'),
(181, 1, 2101, 1594891344.780813, b'0', b'0'),
(182, 1, 1001, 1594891350.385128, b'0', b'0'),
(183, 1, 1000, 1594891374.909943, b'0', b'0');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wsal_options`
--

CREATE TABLE `wp_wsal_options` (
  `id` bigint(20) NOT NULL,
  `option_name` varchar(100) NOT NULL,
  `option_value` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wp_wsal_options`
--

INSERT INTO `wp_wsal_options` (`id`, `option_name`, `option_value`) VALUES
(1, 'wsal-site_content', 'O:8:\"stdClass\":4:{s:7:\"plugins\";a:10:{i:0;s:7:\"akismet\";i:1;s:14:\"contact-form-7\";i:2;s:9:\"hello.php\";i:3;s:19:\"mesmerize-companion\";i:4;s:15:\"profile-builder\";i:5;s:8:\"quiz-cat\";i:6;s:29:\"ultimate-addons-for-gutenberg\";i:7;s:21:\"wp-security-audit-log\";i:8;s:12:\"wp-mail-smtp\";i:9;s:10:\"quiz-maker\";}s:12:\"skip_plugins\";a:10:{i:0;s:7:\"akismet\";i:1;s:14:\"contact-form-7\";i:2;s:9:\"hello.php\";i:3;s:19:\"mesmerize-companion\";i:4;s:15:\"profile-builder\";i:5;s:8:\"quiz-cat\";i:6;s:29:\"ultimate-addons-for-gutenberg\";i:7;s:21:\"wp-security-audit-log\";i:8;s:12:\"wp-mail-smtp\";i:9;s:10:\"quiz-maker\";}s:6:\"themes\";a:5:{i:0;s:9:\"highlight\";i:1;s:9:\"mesmerize\";i:2;s:14:\"twentynineteen\";i:3;s:15:\"twentyseventeen\";i:4;s:12:\"twentytwenty\";}s:11:\"skip_themes\";a:5:{i:0;s:9:\"highlight\";i:1;s:9:\"mesmerize\";i:2;s:14:\"twentynineteen\";i:3;s:15:\"twentyseventeen\";i:4;s:12:\"twentytwenty\";}}');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_actionscheduler_actions`
--
ALTER TABLE `wp_actionscheduler_actions`
  ADD PRIMARY KEY (`action_id`),
  ADD KEY `hook` (`hook`),
  ADD KEY `status` (`status`),
  ADD KEY `scheduled_date_gmt` (`scheduled_date_gmt`),
  ADD KEY `args` (`args`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `last_attempt_gmt` (`last_attempt_gmt`),
  ADD KEY `claim_id` (`claim_id`);

--
-- Indexes for table `wp_actionscheduler_claims`
--
ALTER TABLE `wp_actionscheduler_claims`
  ADD PRIMARY KEY (`claim_id`),
  ADD KEY `date_created_gmt` (`date_created_gmt`);

--
-- Indexes for table `wp_actionscheduler_groups`
--
ALTER TABLE `wp_actionscheduler_groups`
  ADD PRIMARY KEY (`group_id`),
  ADD KEY `slug` (`slug`(191));

--
-- Indexes for table `wp_actionscheduler_logs`
--
ALTER TABLE `wp_actionscheduler_logs`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `action_id` (`action_id`),
  ADD KEY `log_date_gmt` (`log_date_gmt`);

--
-- Indexes for table `wp_aysquiz_answers`
--
ALTER TABLE `wp_aysquiz_answers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_aysquiz_categories`
--
ALTER TABLE `wp_aysquiz_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_aysquiz_questions`
--
ALTER TABLE `wp_aysquiz_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_aysquiz_quizcategories`
--
ALTER TABLE `wp_aysquiz_quizcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_aysquiz_quizes`
--
ALTER TABLE `wp_aysquiz_quizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_aysquiz_rates`
--
ALTER TABLE `wp_aysquiz_rates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_aysquiz_reports`
--
ALTER TABLE `wp_aysquiz_reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_aysquiz_settings`
--
ALTER TABLE `wp_aysquiz_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_aysquiz_themes`
--
ALTER TABLE `wp_aysquiz_themes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Indexes for table `wp_wpmailsmtp_tasks_meta`
--
ALTER TABLE `wp_wpmailsmtp_tasks_meta`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_wsal_metadata`
--
ALTER TABLE `wp_wsal_metadata`
  ADD PRIMARY KEY (`id`),
  ADD KEY `occurrence_name` (`occurrence_id`,`name`),
  ADD KEY `name_value` (`name`,`value`(64));

--
-- Indexes for table `wp_wsal_occurrences`
--
ALTER TABLE `wp_wsal_occurrences`
  ADD PRIMARY KEY (`id`),
  ADD KEY `site_alert_created` (`site_id`,`alert_id`,`created_on`),
  ADD KEY `created_on` (`created_on`);

--
-- Indexes for table `wp_wsal_options`
--
ALTER TABLE `wp_wsal_options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `option_name` (`option_name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_actionscheduler_actions`
--
ALTER TABLE `wp_actionscheduler_actions`
  MODIFY `action_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `wp_actionscheduler_claims`
--
ALTER TABLE `wp_actionscheduler_claims`
  MODIFY `claim_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=862;

--
-- AUTO_INCREMENT for table `wp_actionscheduler_groups`
--
ALTER TABLE `wp_actionscheduler_groups`
  MODIFY `group_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_actionscheduler_logs`
--
ALTER TABLE `wp_actionscheduler_logs`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `wp_aysquiz_answers`
--
ALTER TABLE `wp_aysquiz_answers`
  MODIFY `id` int(150) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `wp_aysquiz_categories`
--
ALTER TABLE `wp_aysquiz_categories`
  MODIFY `id` int(16) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_aysquiz_questions`
--
ALTER TABLE `wp_aysquiz_questions`
  MODIFY `id` int(16) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `wp_aysquiz_quizcategories`
--
ALTER TABLE `wp_aysquiz_quizcategories`
  MODIFY `id` int(16) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_aysquiz_quizes`
--
ALTER TABLE `wp_aysquiz_quizes`
  MODIFY `id` int(16) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wp_aysquiz_rates`
--
ALTER TABLE `wp_aysquiz_rates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_aysquiz_reports`
--
ALTER TABLE `wp_aysquiz_reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wp_aysquiz_settings`
--
ALTER TABLE `wp_aysquiz_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_aysquiz_themes`
--
ALTER TABLE `wp_aysquiz_themes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1242;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=222;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wp_wpmailsmtp_tasks_meta`
--
ALTER TABLE `wp_wpmailsmtp_tasks_meta`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wsal_metadata`
--
ALTER TABLE `wp_wsal_metadata`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2223;

--
-- AUTO_INCREMENT for table `wp_wsal_occurrences`
--
ALTER TABLE `wp_wsal_occurrences`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=184;

--
-- AUTO_INCREMENT for table `wp_wsal_options`
--
ALTER TABLE `wp_wsal_options`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
