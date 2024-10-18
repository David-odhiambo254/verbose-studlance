-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 22, 2024 at 05:37 AM
-- Server version: 8.0.36
-- PHP Version: 8.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `xgenix_cc_xilancer_beta`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_email_verified` tinyint UNSIGNED NOT NULL DEFAULT '0' COMMENT '0: not verified, 1:verified',
  `email_verify_token` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'editor' COMMENT '1:super admin, 2:admin, 3:manager, 4:editor, 5:supporter 6:employee',
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '0:active, 1:inactive',
  `designation` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admin_notifications`
--

CREATE TABLE `admin_notifications` (
  `id` bigint UNSIGNED NOT NULL,
  `identity` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_read` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blog_posts`
--

CREATE TABLE `blog_posts` (
  `id` bigint UNSIGNED NOT NULL,
  `category_id` bigint NOT NULL,
  `admin_id` bigint NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `views` bigint DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '0=inactive, 1=active',
  `tag_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_posts`
--

INSERT INTO `blog_posts` (`id`, `category_id`, `admin_id`, `title`, `slug`, `content`, `image`, `views`, `status`, `tag_name`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 'I will do figma website design or landing page UI UX design 1', 's-jksdnf-lksdf-sldkf-sdf-sd', '<p>Over the last several years, a number of factors—including the pandemic, shifting labor market dynamics, macroeconomic uncertainties, and technological advancements—have prompted a significant reevaluation of what “work” looks like among enterprise leaders. To help drive the growth and success of our enterprise business, and deliver work solutions to our largest clients, we were pleased to welcome Zoë Diamadi as Upwork’s General Manager (GM) of Enterprise.</p><p><br></p><p>\r\n</p><p>Zoë came to Upwork with over two decades of experience as a go-to-market leader, strategist, engineer, management consultant, and innovator at many companies across tech, talent, and B2B. Since joining in June of 2023, she has overseen and evolved Enterprise sales, product, engineering, and operations.\r\n</p><p>We spoke with Zoë about her critical role in helping enterprises navigate the changing global work environment and dynamic hiring climate, her reasons for joining Upwork, and how she plans to champion the delivery of a best-in-class Enterprise Suite offering to our largest customers.</p><p><br></p><p>\r\n</p><p>You have extensive background in technology and business. How has your journey prepared you for your role as GM of Enterprise at Upwork?\r\n</p><p>My journey has been an evolution through various domains, from engineering to management consulting, and what I like to call “intrapreneurship.” I spent six years as GM of LinkedIn Elevate, building the leading employee advocacy solution for enterprises, as well as time spent in executive positions for LinkedIn’s B2B organization, helping scale its three enterprise business lines.</p><p><br></p><p>\r\n</p><p>More recently, I served as an operating advisor at Bessemer Venture Partners. There, I guided portfolio companies on go-to-market topics spanning revenue growth, efficient scaling, and operational excellence for sales and post-sales functions.\r\n</p><p>These experiences have given me a holistic perspective on enterprises, their business strategies, and opportunities that drive growth. This journey has led me to my current role at Upwork.\r\n</p><p>I believe we are at a critical inflection point in the future of work, and frankly, \"work\" needs to catch up to the technologies that are now enabling it to happen. Upwork delivers an end-to-end offering that gives enterprise companies access to a wide breadth of highly skilled fractional to full-time professionals and workforce solutions, enabling them to achieve incredible business outcomes. I hope to help even more organizations discover, and scale with, the transformational value of Upwork.\r\n</p><p>What motivated you to join Upwork?</p><p><br></p><p>\r\n</p><p>Aside from what I feel is the perfect career fit, on a more personal level, I grew up in a small rural place in Greece. Every day, I saw firsthand how many talented and hardworking people were limited by their geography and couldn’t access the opportunities they wanted and were qualified for. These people in my memories represent an untapped pool of highly skilled talent who could have a huge impact on companies. Additionally, these companies and jobs represent a huge economic opportunity for these people to lift themselves, their families, and their communities up.\r\n</p><p>That’s why I’m so passionate about Upwork—and why I joined.</p>', '122', NULL, 1, 'sd asd ads,as as', '2023-12-10 19:20:24', '2023-12-11 20:53:37'),
(3, 1, 1, 'I will do figma website design or landing page UI UX design 234', 'as-dad-asd-asd-asd-asda-da', 'Over the last several years, a number of factors—including the pandemic, shifting labor market dynamics, macroeconomic uncertainties, and technological advancements—have prompted a significant reevaluation of what “work” looks like among enterprise leaders. To help drive the growth and success of our enterprise business, and deliver work solutions to our largest clients, we were pleased to welcome Zoë Diamadi as Upwork’s General Manager (GM) of Enterprise.\r\n<div>Zoë came to Upwork with over two decades of experience as a go-to-market leader, strategist, engineer, management consultant, and innovator at many companies across tech, talent, and B2B. Since joining in June of 2023, she has overseen and evolved Enterprise sales, product, engineering, and operations.\r\n</div><div>We spoke with Zoë about her critical role in helping enterprises navigate the changing global work environment and dynamic hiring climate, her reasons for joining Upwork, and how she plans to champion the delivery of a best-in-class Enterprise Suite offering to our largest customers.\r\n</div><div>You have extensive background in technology and business. How has your journey prepared you for your role as GM of Enterprise at Upwork?\r\n</div><div>My journey has been an evolution through various domains, from engineering to management consulting, and what I like to call “intrapreneurship.” I spent six years as GM of LinkedIn Elevate, building the leading employee advocacy solution for enterprises, as well as time spent in executive positions for LinkedIn’s B2B organization, helping scale its three enterprise business lines.\r\n</div><div>More recently, I served as an operating advisor at Bessemer Venture Partners. There, I guided portfolio companies on go-to-market topics spanning revenue growth, efficient scaling, and operational excellence for sales and post-sales functions.\r\n</div><div>These experiences have given me a holistic perspective on enterprises, their business strategies, and opportunities that drive growth. This journey has led me to my current role at Upwork.\r\n</div><div>I believe we are at a critical inflection point in the future of work, and frankly, \"work\" needs to catch up to the technologies that are now enabling it to happen. Upwork delivers an end-to-end offering that gives enterprise companies access to a wide breadth of highly skilled fractional to full-time professionals and workforce solutions, enabling them to achieve incredible business outcomes. I hope to help even more organizations discover, and scale with, the transformational value of Upwork.\r\n</div><div>What motivated you to join Upwork?\r\n</div><div>Aside from what I feel is the perfect career fit, on a more personal level, I grew up in a small rural place in Greece. Every day, I saw firsthand how many talented and hardworking people were limited by their geography and couldn’t access the opportunities they wanted and were qualified for. These people in my memories represent an untapped pool of highly skilled talent who could have a huge impact on companies. Additionally, these companies and jobs represent a huge economic opportunity for these people to lift themselves, their families, and their communities up.\r\n</div><div>That’s why I’m so passionate about Upwork—and why I joined.</div>', '121', NULL, 1, 'asdadasd,asd ,ads a', '2023-12-10 22:52:45', '2023-12-14 02:34:32'),
(4, 1, 1, 'I will do figma website design or landing page UI UX design 2', 'as-asd-asd-asd-asd', 'Over the last several years, a number of factors—including the pandemic, shifting labor market dynamics, macroeconomic uncertainties, and technological advancements—have prompted a significant reevaluation of what “work” looks like among enterprise leaders. To help drive the growth and success of our enterprise business, and deliver work solutions to our largest clients, we were pleased to welcome Zoë Diamadi as Upwork’s General Manager (GM) of Enterprise.\r\n<div>Zoë came to Upwork with over two decades of experience as a go-to-market leader, strategist, engineer, management consultant, and innovator at many companies across tech, talent, and B2B. Since joining in June of 2023, she has overseen and evolved Enterprise sales, product, engineering, and operations.\r\n</div><div>We spoke with Zoë about her critical role in helping enterprises navigate the changing global work environment and dynamic hiring climate, her reasons for joining Upwork, and how she plans to champion the delivery of a best-in-class Enterprise Suite offering to our largest customers.\r\n</div><div>You have extensive background in technology and business. How has your journey prepared you for your role as GM of Enterprise at Upwork?\r\n</div><div>My journey has been an evolution through various domains, from engineering to management consulting, and what I like to call “intrapreneurship.” I spent six years as GM of LinkedIn Elevate, building the leading employee advocacy solution for enterprises, as well as time spent in executive positions for LinkedIn’s B2B organization, helping scale its three enterprise business lines.\r\n</div><div>More recently, I served as an operating advisor at Bessemer Venture Partners. There, I guided portfolio companies on go-to-market topics spanning revenue growth, efficient scaling, and operational excellence for sales and post-sales functions.\r\n</div><div>These experiences have given me a holistic perspective on enterprises, their business strategies, and opportunities that drive growth. This journey has led me to my current role at Upwork.\r\n</div><div>I believe we are at a critical inflection point in the future of work, and frankly, \"work\" needs to catch up to the technologies that are now enabling it to happen. Upwork delivers an end-to-end offering that gives enterprise companies access to a wide breadth of highly skilled fractional to full-time professionals and workforce solutions, enabling them to achieve incredible business outcomes. I hope to help even more organizations discover, and scale with, the transformational value of Upwork.\r\n</div><div>What motivated you to join Upwork?\r\n</div><div>Aside from what I feel is the perfect career fit, on a more personal level, I grew up in a small rural place in Greece. Every day, I saw firsthand how many talented and hardworking people were limited by their geography and couldn’t access the opportunities they wanted and were qualified for. These people in my memories represent an untapped pool of highly skilled talent who could have a huge impact on companies. Additionally, these companies and jobs represent a huge economic opportunity for these people to lift themselves, their families, and their communities up.\r\n</div><div>That’s why I’m so passionate about Upwork—and why I joined.</div>', '119', NULL, 1, 'a sasda', '2023-12-10 22:53:11', '2023-12-14 02:34:57'),
(5, 1, 1, 'I will do figma website design or landing page UI UX design', 'iofj-asdmasdm-ad-akldasd-askd-asd-asd-as-as', 'Over the last several years, a number of factors—including the pandemic, shifting labor market dynamics, macroeconomic uncertainties, and technological advancements—have prompted a significant reevaluation of what “work” looks like among enterprise leaders. To help drive the growth and success of our enterprise business, and deliver work solutions to our largest clients, we were pleased to welcome Zoë Diamadi as Upwork’s General Manager (GM) of Enterprise.\r\n<div>\r\n</div><div>Zoë came to Upwork with over two decades of experience as a go-to-market leader, strategist, engineer, management consultant, and innovator at many companies across tech, talent, and B2B. Since joining in June of 2023, she has overseen and evolved Enterprise sales, product, engineering, and operations.\r\n</div><div>\r\n</div><div>We spoke with Zoë about her critical role in helping enterprises navigate the changing global work environment and dynamic hiring climate, her reasons for joining Upwork, and how she plans to champion the delivery of a best-in-class Enterprise Suite offering to our largest customers.\r\n</div><div>\r\n</div><div>You have extensive background in technology and business. How has your journey prepared you for your role as GM of Enterprise at Upwork?\r\n</div><div>My journey has been an evolution through various domains, from engineering to management consulting, and what I like to call “intrapreneurship.” I spent six years as GM of LinkedIn Elevate, building the leading employee advocacy solution for enterprises, as well as time spent in executive positions for LinkedIn’s B2B organization, helping scale its three enterprise business lines.\r\n</div><div>\r\n</div><div>More recently, I served as an operating advisor at Bessemer Venture Partners. There, I guided portfolio companies on go-to-market topics spanning revenue growth, efficient scaling, and operational excellence for sales and post-sales functions.\r\n</div><div>\r\n</div><div>These experiences have given me a holistic perspective on enterprises, their business strategies, and opportunities that drive growth. This journey has led me to my current role at Upwork.\r\n</div><div>\r\n</div><div>I believe we are at a critical inflection point in the future of work, and frankly, \"work\" needs to catch up to the technologies that are now enabling it to happen. Upwork delivers an end-to-end offering that gives enterprise companies access to a wide breadth of highly skilled fractional to full-time professionals and workforce solutions, enabling them to achieve incredible business outcomes. I hope to help even more organizations discover, and scale with, the transformational value of Upwork.\r\n</div><div>\r\n</div><div>What motivated you to join Upwork?\r\n</div><div>Aside from what I feel is the perfect career fit, on a more personal level, I grew up in a small rural place in Greece. Every day, I saw firsthand how many talented and hardworking people were limited by their geography and couldn’t access the opportunities they wanted and were qualified for. These people in my memories represent an untapped pool of highly skilled talent who could have a huge impact on companies. Additionally, these companies and jobs represent a huge economic opportunity for these people to lift themselves, their families, and their communities up.\r\n</div><div>\r\n</div><div>That’s why I’m so passionate about Upwork—and why I joined.</div>', '120', NULL, 1, 'dfsdf,sdfsdf,dsf sdf', '2023-12-11 17:57:15', '2023-12-11 18:00:35');

-- --------------------------------------------------------

--
-- Table structure for table `bookmarks`
--

CREATE TABLE `bookmarks` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint NOT NULL,
  `identity` bigint NOT NULL,
  `is_project_job` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `category` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '0=inactive 1=active',
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category`, `short_description`, `slug`, `status`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Design and Creative', 'This category describes design and creatives', 'design-and-creative', 1, '17', '2023-02-06 05:36:19', '2023-11-06 01:09:53'),
(2, 'Website Development', 'This category describes website development', 'website-development', 1, '18', '2023-02-06 05:48:16', '2023-11-06 01:09:38'),
(3, 'Customer Service', 'This category describes customer service', 'customer-service', 1, '19', '2023-02-06 05:48:36', '2023-11-06 01:09:17'),
(4, 'Mobile App Development', 'This category describes mobile app development', 'mobile-app-development', 1, '20', '2023-02-06 05:48:45', '2023-11-06 01:09:00'),
(5, 'Education & Teachings', 'This category describes Education', 'education', 1, '21', '2023-02-06 05:49:25', '2023-11-28 05:19:28'),
(9, 'Research', 'This category describes research', 'research', 1, '22', '2023-02-07 00:27:03', '2023-11-06 01:07:48'),
(11, 'Digital Marketing', 'This category describes digital marketing', 'digital-marketing', 1, '24', '2023-02-07 00:57:08', '2023-11-06 01:08:05'),
(13, 'Writing and Translation', 'This category describes writing and translation', 'writing-and-translation', 1, '21', '2023-02-07 00:58:39', '2023-11-06 01:08:24'),
(18, 'Website Design', 'This category describes website design', 'website-design', 1, '118', '2023-05-15 23:50:03', '2023-11-28 05:24:17');

-- --------------------------------------------------------

--
-- Table structure for table `chat_messages`
--

CREATE TABLE `chat_messages` (
  `id` bigint UNSIGNED NOT NULL,
  `ticket_id` bigint NOT NULL,
  `message` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `notify` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'admin, client, freelancer',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` bigint UNSIGNED NOT NULL,
  `country_id` int DEFAULT NULL,
  `state_id` int NOT NULL,
  `city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '0=inactive 1=active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `country_id`, `state_id`, `city`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Dhanmondi', 1, '2023-01-29 00:52:22', '2023-01-29 00:52:22'),
(2, 2, 16, 'Lende Pral', 1, '2023-01-29 01:14:49', '2023-01-29 01:14:49'),
(4, 1, 2, 'Najirhat', 1, '2023-01-29 01:32:51', '2023-01-29 03:51:38'),
(15, 1, 1, '   Kalabagan', 1, '2023-01-29 05:12:55', '2023-01-29 05:12:55'),
(16, 1, 1, '   Nilkhet', 1, '2023-01-29 05:12:55', '2023-01-29 05:12:55'),
(17, 1, 1, 'sdfsd', 1, '2023-02-08 05:56:36', '2023-02-08 05:56:36'),
(18, 2, 16, 'zxczxc', 1, '2023-02-08 06:12:41', '2023-02-08 06:12:41'),
(19, 1, 3, 'zxczxczxc', 1, '2023-02-08 06:12:53', '2023-02-08 06:12:53'),
(20, 1, 18, 'sdfsdfs sd', 1, '2023-02-08 06:13:19', '2023-02-08 06:13:19');

-- --------------------------------------------------------

--
-- Table structure for table `client_notifications`
--

CREATE TABLE `client_notifications` (
  `id` bigint UNSIGNED NOT NULL,
  `identity` bigint NOT NULL,
  `client_id` bigint NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_read` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `client_notifications`
--

INSERT INTO `client_notifications` (`id`, `identity`, `client_id`, `type`, `message`, `is_read`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 'Order', 'Your order has been submitted. Please check it.', 'read', '2023-11-07 00:39:43', '2023-11-09 08:01:57'),
(2, 2, 1, 'Order', 'Your order has been submitted. Please check it.', 'read', '2023-11-07 00:54:07', '2023-11-09 08:01:57'),
(3, 4, 1, 'Order', 'Your order has been submitted. Please check it.', 'read', '2023-11-07 01:35:52', '2023-11-09 08:01:57'),
(4, 8, 1, 'Order', 'Your order has been submitted. Please check it.', 'read', '2023-11-07 03:19:17', '2023-11-09 08:01:57'),
(5, 8, 1, 'Order', 'Your order has been submitted. Please check it.', 'read', '2023-11-07 03:26:16', '2023-11-09 08:01:57'),
(6, 8, 1, 'Order', 'Your order has been submitted. Please check it.', 'read', '2023-11-07 03:36:33', '2023-11-09 08:01:57'),
(7, 1, 1, 'Proposal', 'You have a new job proposal', 'read', '2023-11-07 04:09:39', '2023-11-09 08:01:57'),
(8, 9, 1, 'Order', 'Order Payment Confirm', 'read', '2023-11-07 04:41:59', '2023-11-09 08:01:57'),
(9, 9, 1, 'Order', 'Your order has been submitted. Please check it.', 'read', '2023-11-07 04:43:43', '2023-11-09 08:01:57'),
(10, 2, 1, 'Proposal', 'You have a new job proposal', 'read', '2023-11-07 05:31:04', '2023-11-09 08:01:57'),
(11, 1, 1, 'Offer', 'You have a new offer', 'read', '2023-11-07 06:20:53', '2023-11-09 08:01:57'),
(12, 10, 1, 'Order', 'Your order has been submitted. Please check it.', 'read', '2023-11-07 06:41:20', '2023-11-09 08:01:57'),
(13, 3, 1, 'Proposal', 'You have a new job proposal', 'read', '2023-11-07 07:13:41', '2023-11-09 08:01:57'),
(14, 2, 1, 'Offer', 'You have a new offer', 'read', '2023-11-07 07:22:05', '2023-11-09 08:01:57'),
(15, 11, 1, 'Order', 'Your order has been submitted. Please check it.', 'read', '2023-11-07 07:32:48', '2023-11-09 08:01:57'),
(16, 12, 2, 'Order', 'Your order has been submitted. Please check it.', 'read', '2023-11-07 23:19:40', '2023-11-07 23:32:13'),
(17, 15, 2, 'Order', 'Your order has been submitted. Please check it.', 'read', '2023-11-07 23:28:55', '2023-11-07 23:32:13'),
(18, 11, 1, 'Order', 'Your order has been submitted. Please check it.', 'read', '2023-11-13 04:41:02', '2023-11-13 22:33:51'),
(19, 20, 1, 'Order', 'Order Payment Confirm', 'read', '2023-11-15 06:51:09', '2023-11-15 07:10:39'),
(20, 21, 1, 'Order', 'Order Payment Confirm', 'read', '2023-11-15 07:09:52', '2023-11-15 07:10:39'),
(21, 21, 1, 'Order', 'Order cancel', 'read', '2023-11-15 07:10:27', '2023-11-15 07:10:39'),
(22, 25, 1, 'Order', 'Your order has been submitted. Please check it.', 'read', '2023-11-25 07:11:45', '2023-11-27 06:36:39'),
(23, 3, 1, 'Offer', 'You have a new offer', 'read', '2023-11-26 07:36:56', '2023-11-27 06:36:39'),
(24, 4, 1, 'Offer', 'You have a new offer', 'read', '2023-11-26 07:40:58', '2023-11-27 06:36:39'),
(25, 16, 1, 'Order', 'Your order has been submitted. Please check it.', 'read', '2023-11-27 06:20:57', '2023-11-27 06:36:39'),
(26, 5, 1, 'Offer', 'You have a new offer', 'read', '2023-11-27 07:58:04', '2023-11-27 09:09:09'),
(27, 6, 2, 'Offer', 'You have a new offer', 'unread', '2023-12-04 00:32:49', '2023-12-04 00:32:49'),
(28, 7, 1, 'Offer', 'You have a new offer', 'read', '2023-12-05 01:36:54', '2024-01-27 07:42:40'),
(29, 8, 1, 'Offer', 'You have a new offer', 'read', '2023-12-05 09:23:14', '2024-01-27 07:42:40'),
(30, 9, 1, 'Offer', 'You have a new offer', 'read', '2023-12-05 09:24:20', '2024-01-27 07:42:40'),
(31, 10, 2, 'Offer', 'You have a new offer', 'unread', '2023-12-11 02:53:09', '2023-12-11 02:53:09'),
(32, 11, 1, 'Offer', 'You have a new offer', 'read', '2023-12-12 09:51:08', '2024-01-27 07:42:40'),
(33, 12, 2, 'Offer', 'You have a new offer', 'unread', '2023-12-12 18:46:15', '2023-12-12 18:46:15'),
(34, 13, 1, 'Offer', 'You have a new offer', 'read', '2023-12-16 08:07:45', '2024-01-27 07:42:40'),
(35, 14, 1, 'Offer', 'You have a new offer', 'read', '2023-12-16 16:11:51', '2024-01-27 07:42:40'),
(36, 15, 1, 'Offer', 'You have a new offer', 'read', '2023-12-18 08:59:20', '2024-01-27 07:42:40'),
(37, 4, 1, 'Proposal', 'You have a new job proposal', 'read', '2023-12-18 20:30:46', '2024-01-27 07:42:40'),
(38, 5, 1, 'Proposal', 'You have a new job proposal', 'read', '2023-12-18 22:15:49', '2024-01-27 07:42:40'),
(39, 16, 1, 'Offer', 'You have a new offer', 'read', '2023-12-19 13:43:08', '2024-01-27 07:42:40'),
(40, 17, 1, 'Offer', 'You have a new offer', 'read', '2023-12-20 09:02:56', '2024-01-27 07:42:40'),
(41, 18, 1, 'Offer', 'You have a new offer', 'read', '2023-12-25 16:44:52', '2024-01-27 07:42:40'),
(42, 6, 1, 'Proposal', 'You have a new job proposal', 'read', '2023-12-29 12:50:47', '2024-01-27 07:42:40'),
(43, 19, 1, 'Offer', 'You have a new offer', 'read', '2023-12-31 09:09:34', '2024-01-27 07:42:40'),
(44, 7, 1, 'Proposal', 'You have a new job proposal', 'read', '2024-01-01 06:43:02', '2024-01-27 07:42:40'),
(45, 20, 2, 'Offer', 'You have a new offer', 'unread', '2024-01-02 05:28:29', '2024-01-02 05:28:29'),
(46, 21, 1, 'Offer', 'You have a new offer', 'read', '2024-01-06 12:12:36', '2024-01-27 07:42:40'),
(47, 8, 1, 'Proposal', 'You have a new job proposal', 'read', '2024-01-07 04:11:02', '2024-01-27 07:42:40'),
(48, 22, 1, 'Offer', 'You have a new offer', 'read', '2024-01-08 14:22:58', '2024-01-27 07:42:40'),
(49, 9, 1, 'Proposal', 'You have a new job proposal', 'read', '2024-01-11 07:39:18', '2024-01-27 07:42:40'),
(50, 23, 2, 'Offer', 'You have a new offer', 'unread', '2024-01-15 05:02:54', '2024-01-15 05:02:54'),
(51, 145, 1, 'Order', 'Order cancel', 'read', '2024-01-17 07:54:53', '2024-01-27 07:42:40'),
(52, 24, 1, 'Offer', 'You have a new offer', 'read', '2024-01-17 10:59:10', '2024-01-27 07:42:40'),
(53, 25, 1, 'Offer', 'You have a new offer', 'read', '2024-01-19 16:43:24', '2024-01-27 07:42:40'),
(54, 26, 1, 'Offer', 'You have a new offer', 'read', '2024-01-20 10:30:56', '2024-01-27 07:42:40'),
(55, 27, 1, 'Offer', 'You have a new offer', 'read', '2024-01-20 10:35:20', '2024-01-27 07:42:40'),
(56, 28, 2, 'Offer', 'You have a new offer', 'unread', '2024-01-23 04:21:45', '2024-01-23 04:21:45'),
(57, 10, 1, 'Proposal', 'You have a new job proposal', 'read', '2024-01-23 05:33:43', '2024-01-27 07:42:40'),
(58, 29, 1, 'Offer', 'You have a new offer', 'read', '2024-01-23 23:22:58', '2024-01-27 07:42:40'),
(59, 30, 2, 'Offer', 'You have a new offer', 'unread', '2024-01-23 23:24:34', '2024-01-23 23:24:34'),
(60, 11, 1, 'Proposal', 'You have a new job proposal', 'read', '2024-01-26 14:11:34', '2024-01-27 07:42:40'),
(61, 12, 1, 'Proposal', 'You have a new job proposal', 'read', '2024-01-27 04:42:14', '2024-01-27 07:42:40'),
(62, 31, 1, 'Offer', 'You have a new offer', 'unread', '2024-02-07 10:38:48', '2024-02-07 10:38:48'),
(63, 32, 1, 'Offer', 'You have a new offer', 'unread', '2024-02-12 05:42:25', '2024-02-12 05:42:25'),
(64, 13, 2, 'Proposal', 'You have a new job proposal', 'unread', '2024-02-13 09:31:46', '2024-02-13 09:31:46'),
(65, 33, 2, 'Offer', 'You have a new offer', 'unread', '2024-02-13 14:56:07', '2024-02-13 14:56:07'),
(66, 34, 2, 'Offer', 'You have a new offer', 'unread', '2024-02-13 14:56:09', '2024-02-13 14:56:09'),
(67, 35, 1, 'Offer', 'You have a new offer', 'unread', '2024-02-16 06:25:32', '2024-02-16 06:25:32'),
(68, 36, 1, 'Offer', 'You have a new offer', 'unread', '2024-02-16 06:26:14', '2024-02-16 06:26:14'),
(69, 37, 1, 'Offer', 'You have a new offer', 'unread', '2024-02-19 22:28:54', '2024-02-19 22:28:54'),
(70, 38, 1, 'Offer', 'You have a new offer', 'unread', '2024-02-19 22:34:24', '2024-02-19 22:34:24'),
(71, 39, 1, 'Offer', 'You have a new offer', 'unread', '2024-02-19 22:34:57', '2024-02-19 22:34:57'),
(72, 40, 1, 'Offer', 'You have a new offer', 'unread', '2024-02-19 22:35:31', '2024-02-19 22:35:31'),
(73, 41, 1, 'Offer', 'You have a new offer', 'unread', '2024-02-19 23:36:17', '2024-02-19 23:36:17'),
(74, 42, 1, 'Offer', 'You have a new offer', 'unread', '2024-02-20 13:10:04', '2024-02-20 13:10:04'),
(75, 43, 1, 'Offer', 'You have a new offer', 'unread', '2024-02-21 20:10:05', '2024-02-21 20:10:05'),
(76, 44, 1, 'Offer', 'You have a new offer', 'unread', '2024-02-21 20:10:53', '2024-02-21 20:10:53'),
(77, 45, 2, 'Offer', 'You have a new offer', 'unread', '2024-02-22 03:49:34', '2024-02-22 03:49:34'),
(78, 46, 1, 'Offer', 'You have a new offer', 'unread', '2024-02-24 13:01:50', '2024-02-24 13:01:50'),
(79, 47, 1, 'Offer', 'You have a new offer', 'unread', '2024-02-24 13:01:51', '2024-02-24 13:01:51'),
(80, 48, 2, 'Offer', 'You have a new offer', 'unread', '2024-02-28 06:21:11', '2024-02-28 06:21:11'),
(81, 49, 2, 'Offer', 'You have a new offer', 'unread', '2024-02-28 06:22:30', '2024-02-28 06:22:30'),
(82, 50, 1, 'Offer', 'You have a new offer', 'unread', '2024-03-01 06:45:40', '2024-03-01 06:45:40'),
(83, 51, 2, 'Offer', 'You have a new offer', 'unread', '2024-03-02 10:27:55', '2024-03-02 10:27:55'),
(84, 52, 1, 'Offer', 'You have a new offer', 'unread', '2024-03-03 01:01:51', '2024-03-03 01:01:51'),
(85, 53, 1, 'Offer', 'You have a new offer', 'unread', '2024-03-03 01:03:04', '2024-03-03 01:03:04'),
(86, 54, 1, 'Offer', 'You have a new offer', 'unread', '2024-03-03 22:55:56', '2024-03-03 22:55:56'),
(87, 55, 1, 'Offer', 'You have a new offer', 'unread', '2024-03-05 00:35:41', '2024-03-05 00:35:41'),
(88, 56, 1, 'Offer', 'You have a new offer', 'unread', '2024-03-05 00:36:07', '2024-03-05 00:36:07'),
(89, 57, 1, 'Offer', 'You have a new offer', 'unread', '2024-03-09 14:18:53', '2024-03-09 14:18:53'),
(90, 58, 1, 'Offer', 'You have a new offer', 'unread', '2024-03-09 14:19:27', '2024-03-09 14:19:27'),
(91, 59, 1, 'Offer', 'You have a new offer', 'unread', '2024-03-16 13:45:06', '2024-03-16 13:45:06'),
(92, 60, 2, 'Offer', 'You have a new offer', 'unread', '2024-03-17 22:27:34', '2024-03-17 22:27:34'),
(93, 61, 1, 'Offer', 'You have a new offer', 'unread', '2024-03-17 22:39:05', '2024-03-17 22:39:05'),
(94, 62, 2, 'Offer', 'You have a new offer', 'unread', '2024-03-17 22:39:51', '2024-03-17 22:39:51'),
(95, 63, 1, 'Offer', 'You have a new offer', 'unread', '2024-03-30 11:57:26', '2024-03-30 11:57:26'),
(96, 64, 1, 'Offer', 'You have a new offer', 'unread', '2024-03-30 20:33:55', '2024-03-30 20:33:55'),
(97, 65, 1, 'Offer', 'You have a new offer', 'unread', '2024-04-17 21:03:40', '2024-04-17 21:03:40'),
(98, 66, 2, 'Offer', 'You have a new offer', 'unread', '2024-04-18 23:18:04', '2024-04-18 23:18:04');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint UNSIGNED NOT NULL,
  `country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '0=inactive 1=active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `country`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Bangladesh', 1, '2023-01-25 01:48:20', '2023-01-27 23:17:33'),
(2, 'Argentina', 1, '2023-01-25 01:48:20', '2023-01-25 01:48:20'),
(6, 'United Kingdom', 1, '2023-01-28 01:01:55', '2023-01-28 01:01:55'),
(7, 'United States', 1, '2023-01-28 01:02:07', '2023-01-28 01:02:07'),
(8, 'Malayesia', 1, '2023-02-08 03:38:17', '2023-02-08 04:02:21'),
(9, 'Canada', 1, '2023-02-08 04:00:25', '2023-02-08 04:06:18'),
(10, 'Soudi Arabia', 1, '2023-02-08 04:00:31', '2023-02-08 04:01:51'),
(11, 'Pakistan', 1, '2023-02-08 04:00:38', '2023-02-08 04:01:33'),
(12, 'Australia', 1, '2023-02-08 04:00:46', '2023-02-08 04:00:46'),
(13, 'Norway', 1, '2023-02-08 04:00:58', '2023-02-08 04:00:58'),
(14, 'India', 1, '2023-02-08 04:01:13', '2023-02-08 04:01:13');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '0=inactive,1=active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Order Management', 0, '2023-08-27 01:44:10', '2023-08-27 03:42:50'),
(2, 'Project Management', 1, '2023-08-27 01:49:45', '2023-08-27 03:44:07'),
(3, 'Account Management', 1, '2023-08-27 01:50:59', '2023-08-27 01:50:59'),
(7, 'Payment Management', 1, '2023-08-27 03:44:23', '2023-08-27 03:44:23');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` int NOT NULL,
  `status` tinyint NOT NULL DEFAULT '0' COMMENT '0=active 1=inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `user_id`, `title`, `description`, `rating`, `status`, `created_at`, `updated_at`) VALUES
(1, 7, 'Outstanding Platform', 'I am working on Freelancer Platform since 2018 and I was amazed by the outcomes I got in my life Thanks to them for freeing me from 9-5 Now I can proudly say it is a outstanding platform', 5, 0, '2023-10-30 04:20:41', '2023-10-30 04:20:41'),
(2, 8, 'Useful Platform', 'I am working on Freelancer Platform since 2018 and I was amazed by the outcomes I got in my life Thanks to them for freeing me from 9-5 Now I can proudly say it is a outstanding platform', 5, 1, '2023-10-30 04:20:41', '2024-01-17 06:33:41'),
(3, 9, 'I Found Best Ever Client', 'I am working on Freelancer Platform since 2018 and I was amazed by the outcomes I got in my life Thanks to them for freeing me from 9-5 Now I can proudly say it is a outstanding platform', 5, 1, '2023-10-30 04:20:41', '2024-01-17 06:33:48'),
(4, 10, 'Friendly Support', 'I am working on Freelancer Platform since 2018 and I was amazed by the outcomes I got in my life Thanks to them for freeing me from 9-5 Now I can proudly say it is a outstanding platform', 5, 1, '2023-10-30 04:20:41', '2024-01-17 06:33:55'),
(5, 11, 'Outstanding Platform', 'I am working on Freelancer Platform since 2018 and I was amazed by the outcomes I got in my life Thanks to them for freeing me from 9-5 Now I can proudly say it is a outstanding platform', 5, 1, '2023-10-30 04:20:41', '2024-01-17 06:34:03'),
(6, 7, 'Outstanding Platform', 'I am working on Freelancer Platform since 2018 and I was amazed by the outcomes I got in my life Thanks to them for freeing me from 9-5 Now I can proudly say it is a outstanding platform', 5, 0, '2023-10-30 04:20:41', '2023-10-30 04:20:41'),
(7, 7, 'Easy Systems', 'I am working on Freelancer Platform since 2018 and I was amazed by the outcomes I got in my life Thanks to them for freeing me from 9-5 Now I can proudly say it is a outstanding platform', 5, 1, '2023-10-30 04:30:21', '2024-01-17 06:33:31');

-- --------------------------------------------------------

--
-- Table structure for table `form_builders`
--

CREATE TABLE `form_builders` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fields` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `success_message` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `form_builders`
--

INSERT INTO `form_builders` (`id`, `title`, `email`, `button_text`, `fields`, `success_message`, `created_at`, `updated_at`) VALUES
(1, 'Contact Form', 'contact@xilancer.com', 'Submit', '{\"success_message\":\"Your Message Successfully Send.\",\"field_type\":[\"text\",\"email\",\"tel\",\"textarea\"],\"field_name\":[\"your-name\",\"your-email\",\"your-phone\",\"your-message\"],\"field_placeholder\":[\"Your Name\",\"Your Email\",\"Your Phone\",\"Your Message\"],\"field_required\":[\"on\",\"on\"]}', 'Your Message Successfully Send.', '2022-12-29 04:52:45', '2023-11-28 06:27:30'),
(6, 'Test Form', 'test@filancer.com', 'Test', '{\"success_message\":\"Test\",\"field_type\":[\"text\"],\"field_name\":[\"your-name\"],\"field_placeholder\":[\"Your Name\"]}', 'Test', '2022-12-29 05:53:05', '2023-01-01 06:46:56');

-- --------------------------------------------------------

--
-- Table structure for table `freelancer_levels`
--

CREATE TABLE `freelancer_levels` (
  `id` bigint UNSIGNED NOT NULL,
  `level` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '0=inactive 1=active',
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `freelancer_levels`
--

INSERT INTO `freelancer_levels` (`id`, `level`, `status`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Top Rated Plus', 1, '130', '2024-01-04 06:41:18', '2024-01-04 06:41:18'),
(2, 'Top Rated', 1, '128', '2024-01-04 06:41:53', '2024-01-04 06:41:53'),
(3, 'Rising Talent', 1, '126', '2024-01-04 06:42:17', '2024-01-04 06:42:17');

-- --------------------------------------------------------

--
-- Table structure for table `freelancer_level_rules`
--

CREATE TABLE `freelancer_level_rules` (
  `id` bigint UNSIGNED NOT NULL,
  `freelancer_level_id` bigint NOT NULL,
  `period` int NOT NULL,
  `avg_rating` double NOT NULL,
  `earning` double NOT NULL,
  `complete_order` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `freelancer_level_rules`
--

INSERT INTO `freelancer_level_rules` (`id`, `freelancer_level_id`, `period`, `avg_rating`, `earning`, `complete_order`, `created_at`, `updated_at`) VALUES
(1, 3, 3, 4.5, 10, 1, '2024-01-04 06:43:07', '2024-01-04 06:43:07'),
(2, 2, 9, 4.8, 500, 8, '2024-01-04 06:43:37', '2024-01-04 06:47:18');

-- --------------------------------------------------------

--
-- Table structure for table `freelancer_notifications`
--

CREATE TABLE `freelancer_notifications` (
  `id` bigint UNSIGNED NOT NULL,
  `identity` bigint NOT NULL,
  `freelancer_id` bigint NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_read` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `identity_verifications`
--

CREATE TABLE `identity_verifications` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint NOT NULL,
  `verify_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_id` bigint NOT NULL,
  `state_id` bigint NOT NULL,
  `city_id` bigint NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `zipcode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `national_id_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `front_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `back_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint DEFAULT NULL COMMENT '1=verified, 2=rejected',
  `is_read` tinyint NOT NULL DEFAULT '0' COMMENT '1=read and 0=unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `identity_verifications`
--

INSERT INTO `identity_verifications` (`id`, `user_id`, `verify_by`, `country_id`, `state_id`, `city_id`, `address`, `zipcode`, `national_id_number`, `front_image`, `back_image`, `status`, `is_read`, `created_at`, `updated_at`) VALUES
(12, 1, 'National ID Card', 1, 1, 1, 'opfgvxcv', 'fd', '2546454', '1679390050-64197562ea113.png', '1679390050-64197562ea3e2.png', 1, 0, '2023-03-21 03:06:42', '2023-03-21 05:15:49'),
(13, 7, 'National ID Card', 1, 1, 1, 'gjkadfsd', 'hjgkhj', '576441', '1680670995-642d011358dee.png', '1680670995-642d011359127.png', 1, 0, '2023-03-21 03:12:26', '2023-08-23 22:46:58'),
(14, 8, 'National ID Card', 1, 2, 4, 'asd asdas dasd a', '345', '345345345', '1695124219-65098afb75c6f.png', '1695124219-65098afb75f56.png', 1, 0, '2023-09-19 05:27:15', '2023-09-19 05:51:20'),
(15, 2, 'National ID Card', 1, 1, 1, 'North Dhanmondi Dhaka', '1205', '090858967', '1695186732-650a7f2cdef42.png', '1695186732-650a7f2cdf123.png', NULL, 0, '2023-09-19 23:12:12', '2023-09-19 23:12:12');

-- --------------------------------------------------------

--
-- Table structure for table `individual_commission_settings`
--

CREATE TABLE `individual_commission_settings` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint NOT NULL,
  `admin_commission_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_commission_charge` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `individual_commission_settings`
--

INSERT INTO `individual_commission_settings` (`id`, `user_id`, `admin_commission_type`, `admin_commission_charge`, `created_at`, `updated_at`) VALUES
(1, 7, 'percentage', 10, '2023-07-11 06:32:57', '2023-07-11 06:32:57');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_histories`
--

CREATE TABLE `job_histories` (
  `id` bigint UNSIGNED NOT NULL,
  `job_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `reject_count` bigint DEFAULT NULL,
  `edit_count` bigint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_posts`
--

CREATE TABLE `job_posts` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` bigint NOT NULL,
  `duration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `budget` double NOT NULL,
  `attachment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '0' COMMENT '0=pending/inactivate, 1=approve/publish',
  `current_status` tinyint NOT NULL DEFAULT '0' COMMENT '0=nothing, 1=in progress, 2=complete, 3=cancel',
  `on_off` tinyint NOT NULL DEFAULT '1' COMMENT '1=on, 0=off',
  `job_approve_request` tinyint NOT NULL DEFAULT '0' COMMENT '0=request for approve, 1=approve, 2=decline, 2=will change to 0 when the user edit the project.',
  `last_seen` timestamp NULL DEFAULT NULL,
  `last_apply_date` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_posts`
--

INSERT INTO `job_posts` (`id`, `user_id`, `title`, `slug`, `category`, `duration`, `level`, `description`, `type`, `budget`, `attachment`, `status`, `current_status`, `on_off`, `job_approve_request`, `last_seen`, `last_apply_date`, `created_at`, `updated_at`) VALUES
(1, 1, 'Article Writer Needed ( Blog focusing on Immigration)', 'article-writer-needed---blog-focusing-on-immigration', 13, 'less than a week', 'not mandatory', '<p style=\"line-height: 1.4;\"><span style=\"color: rgb(14, 23, 36); font-size: 14px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 15px;=\"\" display:=\"\" inline=\"\" !important;\"=\"\">We\'re on the lookout for a talented and passionate article writer to contribute compelling content to our blog, which centers around immigration topics. If you have a flair for storytelling, a deep understanding of immigration issues, and a knack for engaging readers, we invite you to be a part of our content creation journey.</span></p><p style=\"line-height: 1.4;\"><span style=\"color: rgb(14, 23, 36); font-family: Roboto, \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 15px;=\"\" display:=\"\" inline=\"\" !important;\"=\"\"><br></span></p><p style=\"line-height: 2;\"><span style=\"color: rgb(14, 23, 36); font-size: 18px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 15px;=\"\" display:=\"\" inline=\"\" !important;\"=\"\"><b>Scope of Work:</b></span></p><ul><li><font color=\"#0e1724\"><b>In-Depth Research:</b> Dive into immigration-related topics, staying updated on current events, policies, and global perspectives. 📚</font></li><li><font color=\"#0e1724\"><b>Engaging Content Creation:</b> Craft well-researched and engaging articles that resonate with our audience, covering a range of immigration subjects. ✍️</font></li><li><font color=\"#0e1724\"><b>Storytelling Mastery:</b> Weave narratives that humanize the immigration experience, making complex topics accessible and relatable. 🗣️</font></li><li><font color=\"#0e1724\"><b>SEO Integration:</b> Implement basic SEO principles to enhance the discoverability of our articles on search engines. 🔍</font></li></ul><p><span style=\"font-size: 18px;\"><b><font color=\"#000000\"><br></font></b></span></p><p style=\"line-height: 2;\"><span style=\"font-size: 18px;\"><b><font color=\"#000000\">Qualifications:</font></b></span></p><ul><li><font color=\"#424242\">Proven experience as a successful online English language instructor.\r\n</font></li><li><font color=\"#424242\">Bachelor\'s degree in English, Education, or a related field.\r\n</font></li><li><font color=\"#424242\">Native or near-native proficiency in English.\r\n</font></li><li><font color=\"#424242\">Excellent communication and interpersonal skills.\r\n</font></li><li><font color=\"#424242\">Familiarity with popular virtual teaching platforms.</font></li></ul><p><b style=\"font-size: 18px; color: var(--paragraph-color); text-align: var(--bs-body-text-align);\"><font color=\"#000000\"><br></font></b></p><p style=\"line-height: 2;\"><b style=\"font-size: 18px; color: var(--paragraph-color); text-align: var(--bs-body-text-align);\"><font color=\"#000000\">Requirements:</font></b><br></p><p style=\"line-height: 1.4;\"><font color=\"#000000\"><span style=\"font-size: 14px;\">If you\'re a skilled wordsmith with a passion for shedding light on immigration matters, submit your application. Include writing samples showcasing your ability to tackle immigration-related topics and a brief cover letter expressing your interest.</span></font></p><p><span style=\"font-size: 18px;\"><b><font color=\"#000000\">\r\n</font></b></span></p><p><b><span style=\"font-size: 18px;\"><font color=\"#000000\"><br></font></span></b></p><p style=\"line-height: 2;\"><b><span style=\"font-size: 18px;\"><font color=\"#000000\">Please apply if you\'re only qualified.</font></span></b></p><p><span style=\"font-size: 14px;\"><font color=\"#000000\" style=\"\">We value diversity and encourage writers from all backgrounds to apply. Shortlisted candidates will be contacted for further discussions. 🌈</font></span></p>', 'fixed', 50, '1699251875-654886a31880f.txt', 1, 0, 1, 1, '2023-11-25 07:21:41', NULL, '2023-04-16 17:51:16', '2023-11-25 07:21:41'),
(2, 1, 'Real Estate Proposal Writer for U.S. Clients 🏡📄', 'submit-proposals-for-my-agency', 13, 'less than a week', 'not mandatory', '<p style=\"line-height: 1.4;\"><span style=\"font-size: 14px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 15px;=\"\" display:=\"\" inline=\"\" !important;\"=\"\"><font color=\"#424242\">We\'re in search of a skilled and articulate proposal writer to craft compelling documents for our real estate clients in the USA. As a key player in our team, you\'ll be responsible for translating our clients\' visions into persuasive proposals that showcase the unique value of their properties and services.</font></span></p><p><span style=\"\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 15px;=\"\" display:=\"\" inline=\"\" !important;\"=\"\"><font color=\"#424242\"><br></font></span></p><p><span style=\"font-size: 18px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 15px;=\"\" display:=\"\" inline=\"\" !important;\"=\"\"><b><font color=\"#424242\">Responsibilities:</font></b></span></p><ul><li><font color=\"#424242\"><b>Client Collaboration:</b> Collaborate with our real estate clients to understand their goals, property features, and target audience.</font></li><li><font color=\"#424242\"><b>Content Creation:</b> Develop detailed and engaging proposals that highlight the key selling points of each property, including location advantages, amenities, and investment potential.</font></li><li><font color=\"#424242\"><b>Market Analysis:</b> Conduct market research to provide clients with relevant data and insights, supporting the value proposition presented in the proposals.</font></li><li><font color=\"#424242\"><b>Tailored Language:</b> Customize proposal language to resonate with diverse audiences, from potential buyers to investors and stakeholders.</font></li></ul><p><span style=\"font-size: 18px;\"><b><font color=\"#424242\"><br></font></b></span></p><p><span style=\"font-size: 18px;\"><b><font color=\"#424242\">Qualifications:</font></b></span></p><ul><li><font color=\"#424242\">Proven experience as a successful online English language instructor.\r\n</font></li><li><font color=\"#424242\">Bachelor\'s degree in English, Education, or a related field.\r\n</font></li><li><font color=\"#424242\">Native or near-native proficiency in English.\r\n</font></li><li><font color=\"#424242\">Excellent communication and interpersonal skills.\r\n</font></li><li><font color=\"#424242\">Familiarity with popular virtual teaching platforms.</font></li></ul><p><b style=\"font-size: 18px; text-align: var(--bs-body-text-align);\"><font color=\"#424242\"><br></font></b></p><p><font color=\"#424242\"><b style=\"font-size: 18px; text-align: var(--bs-body-text-align);\">Budget:</b><br></font></p><p><span style=\"font-size: 18px;\"><font color=\"#424242\"><span style=\"font-size: 14px;\">Open to negotiation based on experience and qualifications.</span><b>\r\n</b></font></span></p><p><span style=\"font-size: 18px;\"><b><font color=\"#424242\">\r\n</font></b></span></p><p><b><span style=\"font-size: 18px;\"><font color=\"#424242\"><br></font></span></b></p><p><b><span style=\"font-size: 18px;\"><font color=\"#424242\">Please apply if you\'re only qualified.</font></span></b></p>', 'fixed', 50, '1699251432-654884e887c26.txt', 1, 0, 1, 1, '2023-11-29 01:52:20', NULL, '2023-04-16 21:19:42', '2023-11-29 01:52:20'),
(4, 1, 'Full-time professional Android and iOS app developer', 'full-time-preffessional-android-and-ios-app-developer', 4, 'less than 2 month', 'not mandatory', '<p style=\"line-height: 1.4;\"><span style=\"color: rgb(14, 23, 36); font-size: 14px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 15px;=\"\" display:=\"\" inline=\"\" !important;\"=\"\">Embark on a journey as a full-time Android and iOS app developer, shaping the future of our mobile applications. If you\'re passionate about crafting seamless user experiences, staying ahead in mobile technology, and contributing to innovative app solutions, we invite you to be a key player in our development journey.</span></p><p><span style=\"color: rgb(14, 23, 36); font-family: Roboto, \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 15px;=\"\" display:=\"\" inline=\"\" !important;\"=\"\"><br></span></p><p><span style=\"color: rgb(14, 23, 36); font-size: 18px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 15px;=\"\" display:=\"\" inline=\"\" !important;\"=\"\"><b>Responsibilities:</b></span></p><ul><li><font color=\"#0e1724\">App Development Mastery: Utilize your expertise to design, develop, test, and deploy high-quality Android and iOS applications.</font></li><li><font color=\"#0e1724\">Platform Innovation: Stay abreast of the latest mobile trends and technologies, bringing innovative ideas to enhance our app offerings.</font></li><li><font color=\"#0e1724\">Collaborative Work: Engage with designers and product managers to deliver exceptional app experiences.</font></li><li><font color=\"#0e1724\">Code Optimization: Implement best practices for code quality, performance, and maintainability.</font></li></ul><p><span style=\"font-size: 18px;\"><b><font color=\"#000000\"><br></font></b></span></p><p><span style=\"font-size: 18px;\"><b><font color=\"#000000\">Scope of Work:</font></b></span></p><ul><li>Proven experience as a successful online English language instructor.\r\n</li><li>Bachelor\'s degree in English, Education, or a related field.\r\n</li><li>Native or near-native proficiency in English.\r\n</li><li>Excellent communication and interpersonal skills.\r\n</li><li>Familiarity with popular virtual teaching platforms.</li></ul><p><b style=\"font-size: 18px; color: var(--paragraph-color); text-align: var(--bs-body-text-align);\"><font color=\"#000000\"><br></font></b></p><p><b style=\"font-size: 18px; color: var(--paragraph-color); text-align: var(--bs-body-text-align);\"><font color=\"#000000\">Budget:</font></b><br></p><p style=\"line-height: 1.4;\"><font color=\"#000000\"><span style=\"font-size: 14px;\">If you\'re a mobile app maestro ready to contribute to cutting-edge development, submit your application. Include your portfolio showcasing your app development projects and a brief cover letter expressing your passion for mobile innovation.</span></font></p>', 'fixed', 500, '1699250918-654882e6bbf98.pdf', 1, 0, 1, 1, '2024-04-18 17:22:24', NULL, '2023-05-24 17:17:27', '2024-04-18 17:22:24'),
(5, 1, 'Flutter Android & iOS mobile app development for eCommerce store', 'android-app-development', 4, 'less than a week', 'not mandatory', '<p style=\"line-height: 1.4;\"><span style=\"font-size: 14px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 15px;=\"\" display:=\"\" inline=\"\" !important;\"=\"\"><font color=\"#424242\">We\'re seeking a skilled Flutter developer to shape the future of mobile commerce. Join us in crafting a seamless Android and iOS mobile app for our eCommerce store, ensuring a cutting-edge and user-friendly shopping experience 🛒📱</font></span></p><p><font color=\"#424242\"><br></font></p><p style=\"line-height: 2;\"><span style=\"font-size: 18px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 15px;=\"\" display:=\"\" inline=\"\" !important;\"=\"\"><b><font color=\"#424242\">Scope of Work:</font></b></span></p><ul><li><font color=\"#424242\"><b>Flutter Expertise:</b> Utilize your expertise to develop a unified mobile app for Android and iOS platforms.</font></li><li><font color=\"#424242\"><b>E-commerce Integration:</b> Seamlessly integrate the app with our existing eCommerce store, 🔒🔄</font></li><li><font color=\"#424242\"><b>User-Centric Design:</b> Create an engaging and intuitive user interface, optimizing the mobile 🎨👩‍💻</font></li><li><font color=\"#424242\"><b>Performance Optimization:</b> Implement best practices to ensure the app\'s performance, responsiveness, and swift loading times.⚙️🚀</font></li></ul><p><span style=\"font-size: 18px;\"><b><font color=\"#424242\"><br></font></b></span></p><p style=\"line-height: 2;\"><span style=\"font-size: 18px;\"><b><font color=\"#424242\">Requirements:</font></b></span></p><ul><li><font color=\"#424242\">Proven experience in developing Android and iOS apps using Flutter.\r\n</font></li><li><font color=\"#424242\">Expertise in integrating mobile apps with eCommerce platforms.\r\n</font></li><li><font color=\"#424242\">A portfolio showcasing successful mobile app projects.</font></li></ul><p><font color=\"#424242\"><br></font></p><p><b><span style=\"font-size: 18px;\"><font color=\"#424242\">Please apply if you\'re only qualified.</font></span></b></p>', 'fixed', 500, '1685861166-647c332e48e81.pdf', 1, 2, 1, 1, '2024-02-23 04:07:04', NULL, '2023-06-03 18:46:06', '2024-02-23 04:07:04'),
(6, 1, 'Website UI and HTML design for good website', 'website-ui-and-html-design-for-good-website-', 1, 'less than a month', 'midLevel', '<p><span style=\"color: rgb(14, 23, 36); font-size: 14px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 15px;=\"\" display:=\"\" inline=\"\" !important;\"=\"\">We are in search of a skilled and engaging English Language Instructor to join our virtual teaching team. If you have a passion for language education and the ability to create dynamic online learning experiences, we want to hear from you!</span></p><p><span style=\"color: rgb(14, 23, 36); font-family: Roboto, \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 15px;=\"\" display:=\"\" inline=\"\" !important;\"=\"\"><br></span></p><p style=\"line-height: 2;\"><span style=\"color: rgb(14, 23, 36); font-size: 18px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 15px;=\"\" display:=\"\" inline=\"\" !important;\"=\"\"><b>Responsibilities:</b></span></p><ul><li><font color=\"#0e1724\">Conduct virtual English language classes catering to a diverse audience.\r\n</font></li><li><font color=\"#0e1724\">Develop and execute engaging lesson plans that enhance language proficiency and communication skills.\r\n</font></li><li><font color=\"#0e1724\">Provide constructive feedback to students to support their learning journey.\r\n</font></li><li><font color=\"#0e1724\">Cultivate an inclusive and supportive online learning environment.</font></li></ul><p><span style=\"font-size: 18px;\"><b><font color=\"#000000\"><br></font></b></span></p><p style=\"line-height: 2;\"><span style=\"font-size: 18px;\"><b><font color=\"#000000\">Qualifications:</font></b></span></p><ul><li>Proven experience as a successful online English language instructor.\r\n</li><li>Bachelor\'s degree in English, Education, or a related field.\r\n</li><li>Native or near-native proficiency in English.\r\n</li><li>Excellent communication and interpersonal skills.\r\n</li><li>Familiarity with popular virtual teaching platforms.</li></ul><p><b style=\"font-size: 18px; color: var(--paragraph-color); text-align: var(--bs-body-text-align);\"><font color=\"#000000\"><br></font></b></p><p style=\"line-height: 2;\"><b style=\"font-size: 18px; color: var(--paragraph-color); text-align: var(--bs-body-text-align);\"><font color=\"#000000\">Budget:</font></b><br></p><p><span style=\"font-size: 18px;\"><font color=\"#000000\" style=\"\"><span style=\"font-size: 14px;\">Open to negotiation based on experience and qualifications.</span><b>\r\n</b></font></span></p><p><span style=\"font-size: 18px;\"><b><font color=\"#000000\">\r\n</font></b></span></p><p><b><span style=\"font-size: 18px;\"><font color=\"#000000\"><br></font></span></b></p><p><b><span style=\"font-size: 18px;\"><font color=\"#000000\">Please apply if you\'re only qualified.</font></span></b></p>', 'fixed', 250, '1699249858-65487ec28b030.txt', 1, 0, 1, 1, '2024-02-22 13:46:12', NULL, '2023-06-05 17:13:55', '2024-02-22 13:46:12'),
(7, 1, 'Website UI and HTML theme design for online shopping', 'website-ui-and-html-theme-design-for-online-shopping', 1, 'less than 2 month', 'senior', '<p style=\"line-height: 1.8;\"><span style=\"font-size: 14px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 15px;=\"\" display:=\"\" inline=\"\" !important;\"=\"\"><font color=\"#424242\">Join us in the creation of a digital masterpiece, redefining the online shopping realm! We\'re seeking a design virtuoso to weave a visually enchanting UI and HTML theme that will transport users to a realm of seamless, delightful, and unforgettable online shopping.</font></span></p><p><span style=\"\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 15px;=\"\" display:=\"\" inline=\"\" !important;\"=\"\"><font color=\"#424242\"><br></font></span></p><p style=\"line-height: 2;\"><span style=\"font-size: 18px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 15px;=\"\" display:=\"\" inline=\"\" !important;\"=\"\"><b><font color=\"#424242\">Scope of Work:</font></b></span></p><ul><li><font color=\"#424242\"><b>User-Centric Design:</b> Craft an intuitive interface that guides users seamlessly through the shopping experience.</font></li><li><font color=\"#424242\"><b>Visual Impact:</b> Create a visually captivating masterpiece that embodies our brand identity</font></li><li><font color=\"#424242\"><b>Responsive Excellence:</b> Ensure a flawless dance of elements on screens of all sizes, from desktop to mobile.</font></li><li><font color=\"#424242\"><b>E-commerce Brilliance:</b> Apply e-commerce wisdom to make product showcasing, navigation, and checkout a captivating journey.</font></li></ul><p><font color=\"#424242\"><br></font></p><p style=\"line-height: 2;\"><span style=\"font-size: 18px;\"><b><font color=\"#424242\">Qualifications:</font></b></span></p><ul><li><font color=\"#424242\">Proven experience in UI/UX design for e-commerce.\r\n</font></li><li><font color=\"#424242\">Proficiency in Adobe XD, Sketch, or similar design tools.\r\n</font></li><li><font color=\"#424242\">A captivating portfolio showcasing past successes in online shopping design</font></li></ul><p><b style=\"font-size: 18px; text-align: var(--bs-body-text-align);\"><font color=\"#424242\"><br></font></b></p><p style=\"line-height: 2;\"><font color=\"#424242\"><b style=\"font-size: 18px; text-align: var(--bs-body-text-align);\">Budget:</b><br></font></p><p><span style=\"font-size: 18px;\"><font color=\"#424242\"><span style=\"font-size: 14px;\">Open to negotiation based on experience and qualifications.</span><b>\r\n</b></font></span></p><p><span style=\"font-size: 18px;\"><b><font color=\"#424242\">\r\n</font></b></span></p><p><b><span style=\"font-size: 18px;\"><font color=\"#424242\"><br></font></span></b></p><p><b><span style=\"font-size: 18px;\"><font color=\"#424242\">Please apply if you\'re only qualified.</font></span></b></p>', 'fixed', 200, '1699249329-65487cb1e839e.txt', 1, 0, 1, 1, '2024-02-04 09:26:24', NULL, '2023-09-11 06:45:09', '2024-02-04 09:26:24'),
(8, 2, 'I need a SEO Developer', 'i-need-a-seo-developer', 11, 'less than a month', 'not mandatory', '<p><span style=\"color: rgb(14, 23, 36); font-size: 14px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 15px;=\"\" display:=\"\" inline=\"\" !important;\"=\"\">We are in search of a skilled and engaging English Language Instructor to join our virtual teaching team. If you have a passion for language education and the ability to create dynamic online learning experiences, we want to hear from you!</span></p><p><span style=\"color: rgb(14, 23, 36); font-family: Roboto, \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 15px;=\"\" display:=\"\" inline=\"\" !important;\"=\"\"><br></span></p><p><span style=\"color: rgb(14, 23, 36); font-size: 18px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 15px;=\"\" display:=\"\" inline=\"\" !important;\"=\"\"><b>Responsibilities:</b></span></p><ul><li><font color=\"#0e1724\">Conduct virtual English language classes catering to a diverse audience.\n</font></li><li><font color=\"#0e1724\">Develop and execute engaging lesson plans that enhance language proficiency and communication skills.\n</font></li><li><font color=\"#0e1724\">Provide constructive feedback to students to support their learning journey.\n</font></li><li><font color=\"#0e1724\">Cultivate an inclusive and supportive online learning environment.</font></li></ul><p><span style=\"font-size: 18px;\"><b><font color=\"#000000\"><br></font></b></span></p><p><span style=\"font-size: 18px;\"><b><font color=\"#000000\">Qualifications:</font></b></span></p><ul><li>Proven experience as a successful online English language instructor.\n</li><li>Bachelor\'s degree in English, Education, or a related field.\n</li><li>Native or near-native proficiency in English.\n</li><li>Excellent communication and interpersonal skills.\n</li><li>Familiarity with popular virtual teaching platforms.</li></ul><p><b style=\"font-size: 18px; color: var(--paragraph-color); text-align: var(--bs-body-text-align);\"><font color=\"#000000\"><br></font></b></p><p><b style=\"font-size: 18px; color: var(--paragraph-color); text-align: var(--bs-body-text-align);\"><font color=\"#000000\">Budget:</font></b><br></p><p><span style=\"font-size: 18px;\"><font color=\"#000000\" style=\"\"><span style=\"font-size: 14px;\">Open to negotiation based on experience and qualifications.</span><b>\n</b></font></span></p><p><span style=\"font-size: 18px;\"><b><font color=\"#000000\">\n</font></b></span></p><p><b><span style=\"font-size: 18px;\"><font color=\"#000000\"><br></font></span></b></p><p><b><span style=\"font-size: 18px;\"><font color=\"#000000\">Please apply if you\'re only qualified.</font></span></b></p>', 'fixed', 100, '1699257624-65489d18d695a.pdf', 1, 0, 1, 1, NULL, NULL, '2023-09-19 23:56:28', '2023-11-06 02:03:51'),
(9, 1, 'Make a nice and clean logo design for my company identification', 'make-a-nice-and-clean-logo-design-for-my-company-identification', 1, 'less than a week', 'senior', '<p style=\"line-height: 1.4;\"><span style=\"font-size: 14px;\"><font color=\"#424242\">Embark on a creative collaboration to define and elevate your company\'s identity through a visually appealing and clean logo design. We are in search of a skilled graphic designer to craft a unique logo that encapsulates the essence and values of our brand.</font></span></p><p><span style=\"\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 15px;=\"\" display:=\"\" inline=\"\" !important;\"=\"\"><font color=\"#424242\"><br></font></span></p><p style=\"line-height: 2;\"><span style=\"font-size: 18px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 15px;=\"\" display:=\"\" inline=\"\" !important;\"=\"\"><b><font color=\"#424242\">Scope of Work:</font></b></span></p><ul><li><span style=\"font-size: 14px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 15px;=\"\" display:=\"\" inline=\"\" !important;\"=\"\"><font color=\"#424242\"><b>Concept Development: </b>Work closely with our team to understand the core values and vision of our company, translating them into design concepts.</font></span></li><li><span style=\"font-size: 14px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 15px;=\"\" display:=\"\" inline=\"\" !important;\"=\"\"><font color=\"#424242\"><b>Creativity Unleashed:</b> Bring forth your creative prowess to develop unique and memorable logo options, ensuring they align with our brand identity.</font></span></li><li><span style=\"font-size: 14px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 15px;=\"\" display:=\"\" inline=\"\" !important;\"=\"\"><font color=\"#424242\"><b>Clean and Timeless Design:</b> Strive for simplicity and timelessness in the design, creating a logo that stands the test of trends and resonates with our audience.</font></span></li><li><span style=\"font-size: 14px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 15px;=\"\" display:=\"\" inline=\"\" !important;\"=\"\"><font color=\"#424242\"><b>Iterative Process:</b> Engage in an iterative design process, incorporating feedback and refining the chosen concept to perfection.</font></span></li></ul><p><span style=\"font-size: 18px;\"><b><font color=\"#424242\"><br></font></b></span></p><p style=\"line-height: 2;\"><span style=\"font-size: 18px;\"><b><font color=\"#424242\">Requirements:</font></b></span></p><ul><li><span style=\"font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align); display: inline !important;\"><font color=\"#424242\">Proven experience in logo design, showcasing a diverse portfolio.\r\n</font></span></li><li><span style=\"font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align); display: inline !important;\"><font color=\"#424242\">Strong creative and conceptual thinking skills.\r\n</font></span></li><li><font color=\"#424242\"><span style=\"font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align); display: inline !important;\">A keen eye for detail and a commitment to delivering clean and impactful designs..</span><br></font></li></ul><p><b style=\"font-size: 18px; text-align: var(--bs-body-text-align);\"><font color=\"#424242\"><br></font></b></p><p style=\"line-height: 2;\"><font color=\"#424242\"><b style=\"font-size: 18px; text-align: var(--bs-body-text-align);\">Note:</b><br></font></p><p><span style=\"font-size: 18px;\"><span style=\"font-size: 14px;\"><font color=\"#424242\">We value diversity and encourage designers from all background to apply. Shortlisted candidates will be invited for further discussions to ensure a collaborative and successful logo design process.\r\n</font></span></span></p><p><span style=\"font-size: 18px;\"><font color=\"#000000\" style=\"\"><span style=\"font-size: 14px;\"><br></span></font></span></p><p><span style=\"font-size: 18px;\"><font color=\"#000000\" style=\"\"><span style=\"font-size: 14px;\">\r\n</span></font></span></p>', 'fixed', 200, '1699248745-65487a691055a.txt', 1, 0, 1, 1, '2024-01-22 21:19:34', NULL, '2023-09-20 06:04:27', '2024-01-22 21:19:34'),
(10, 1, 'Full-time Full stack developer for long term project', 'full-time-full-stack-developer-for-long-term-project', 2, '1 Days', 'midLevel', '<p style=\"line-height: 1.4;\"><span style=\"font-size: 14px;\"><font color=\"#424242\">Embark on a dynamic journey as a Freelance Full Stack Developer, where your expertise meets project-driven opportunities. We\'re in search of a talented developer to engage in specific projects, contributing your skills to both frontend and backend development.</font></span></p><p><span style=\"\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 15px;=\"\" display:=\"\" inline=\"\" !important;\"=\"\"><font color=\"#424242\"><br></font></span></p><p><span style=\"font-size: 18px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 15px;=\"\" display:=\"\" inline=\"\" !important;\"=\"\"><b><font color=\"#424242\"><br></font></b></span></p><p style=\"line-height: 2;\"><span style=\"font-size: 18px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 15px;=\"\" display:=\"\" inline=\"\" !important;\"=\"\"><b><font color=\"#424242\">Role and Responsibilities:</font></b></span></p><ul><li><span style=\"font-size: 14px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 15px;=\"\" display:=\"\" inline=\"\" !important;\"=\"\"><font color=\"#424242\"><b>Project-Based Development: </b>Engage in project-specific development tasks, covering both frontend and backend requirements.</font></span></li><li><span style=\"font-size: 14px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 15px;=\"\" display:=\"\" inline=\"\" !important;\"=\"\"><font color=\"#424242\"><b>Technical Versatility:</b> Showcase proficiency in diverse technologies, frameworks, and languages relevant to the project scope.</font></span></li><li><span style=\"font-size: 14px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 15px;=\"\" display:=\"\" inline=\"\" !important;\"=\"\"><font color=\"#424242\"><b>Collaborative Contribution:</b> Work independently and collaboratively with our teams to ensure successful project outcomes.</font></span></li><li><span style=\"font-size: 14px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 15px;=\"\" display:=\"\" inline=\"\" !important;\"=\"\"><font color=\"#424242\"><b>Creative Problem-Solving:</b> Tackle project challenges with innovation and analytical thinking to deliver effective solutions.</font></span></li></ul><p><span style=\"font-size: 18px;\"><b><font color=\"#424242\"><br></font></b></span></p><p style=\"line-height: 2;\"><span style=\"font-size: 18px;\"><b><font color=\"#424242\">Requirements:</font></b></span></p><ul><li><font color=\"#424242\">Proven freelance experience as a Full Stack Developer.\r\n</font></li><li><font color=\"#424242\">Proficiency in various frontend and backend technologies, frameworks, and languages.\r\n</font></li><li><font color=\"#424242\">Strong problem-solving skills and effective communication for collaborative success.</font></li></ul><p><b style=\"font-size: 18px; text-align: var(--bs-body-text-align);\"><font color=\"#424242\"><br></font></b></p><p style=\"line-height: 2;\"><font color=\"#424242\"><b style=\"font-size: 18px; text-align: var(--bs-body-text-align);\">Compensation:</b><br></font></p><p><span style=\"font-size: 18px;\"><span style=\"font-size: 14px;\"><font color=\"#424242\">Fixed-rate, negotiable based on the project scope and your expertise.\r\n</font></span></span></p><p><span style=\"font-size: 18px;\"><span style=\"font-size: 14px;\"><font color=\"#424242\">\r\n</font></span></span></p><p><br></p>', 'fixed', 300, '1699248562-654879b26056f.pdf', 1, 0, 1, 1, '2024-03-25 14:55:38', NULL, '2023-09-20 06:10:35', '2024-03-25 14:55:38'),
(11, 1, 'Laravel Ecommerce Extension Developer Needed', 'laravel-ecommerce-extension-developer-needed', 2, 'less than a week', 'midLevel', '<p style=\"line-height: 1.4;\"><span style=\"font-size: 14px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 15px;=\"\" display:=\"\" inline=\"\" !important;\"=\"\"><font color=\"#424242\">Seeking a skilled Freelance Laravel E-commerce Extension Developer for a project-based opportunity. Join us for a one-time fixed-rate job to enhance our e-commerce platform with custom </font></span></p><p style=\"line-height: 1.4;\"><span style=\"font-size: 14px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 15px;=\"\" display:=\"\" inline=\"\" !important;\"=\"\"><font color=\"#424242\">extensions. Take on the challenge of creating unique Laravel extensions to enrich our e-commerce functionalities. This is a one-time fixed-rate job focusing on delivering specific project </font></span></p><p style=\"line-height: 1.4;\"><span style=\"font-size: 14px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 15px;=\"\" display:=\"\" inline=\"\" !important;\"=\"\"><font color=\"#424242\">requirements.</font></span></p><p style=\"line-height: 1.4;\"><font color=\"#424242\"><br></font></p><p style=\"line-height: 1.4;\"><font color=\"#424242\"><br></font></p><p style=\"line-height: 2;\"><span style=\"font-size: 18px;\"><b><font color=\"#424242\">Key Responsibilities:</font></b></span></p><ul><li><span style=\"font-size: 14px;\"><font color=\"#424242\"><span style=\"font-weight: bold; font-size: 14px;\">Extension Development:</span> Craft custom Laravel extensions to augment our e-commerce platform\'s capabilities.</font></span></li><li><span style=\"font-size: 14px;\"><font color=\"#424242\"><b>Integration:</b> Integrate new extensions seamlessly into our existing Laravel-based e-commerce setup.</font></span></li><li><span style=\"font-size: 14px;\"><font color=\"#424242\"><b>Customization:</b> Tailor extensions to meet precise project requirements, ensuring an enhanced user experience.</font></span></li><li><span style=\"font-size: 14px;\"><font color=\"#424242\"><b>Bug Fixing:</b> Collaborate on identifying and fixing bugs during the project to ensure smooth extension performance.</font></span></li></ul><p><b style=\"font-size: 18px; text-align: var(--bs-body-text-align);\"><font color=\"#424242\"><br></font></b></p><p style=\"line-height: 2;\"><font color=\"#424242\"><b style=\"font-size: 18px; text-align: var(--bs-body-text-align);\">Compensation:</b><br></font></p><p><span style=\"font-size: 14px;\"><font color=\"#424242\">Fixed-rate, negotiable based on experience and the proposed scope of extension development.</font></span></p><p><b><span style=\"font-size: 18px;\"><font color=\"#424242\"><br></font></span></b></p><p style=\"line-height: 2;\"><b><span style=\"font-size: 18px;\"><font color=\"#424242\">Note:\r\n</font></span></b></p><p><font color=\"#424242\"><span style=\"font-size: 14px; font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align); display: inline !important;\">We\'re looking for a creative freelancer passionate about shaping the future of e-commerce. Successful candidates may be invited for further discussions related to the freelance project.</span><br></font></p><p><br></p><p>\r\n</p>', 'fixed', 500, '1699247558-654875c61d50c.txt', 1, 2, 1, 1, '2024-03-25 14:37:31', NULL, '2023-09-20 06:48:17', '2024-03-25 14:37:31'),
(12, 1, 'E-Commerce Store Project in Laravel and VueJS 3', 'project-in-laravel-and-vuejs-3', 2, 'less than a month', 'senior', '<p style=\"line-height: 1.4;\"><span style=\"font-size: 14px;\">﻿</span><span>﻿</span><span style=\"color: rgb(14, 23, 36); font-size: 14px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 15px;=\"\" display:=\"\" inline=\"\" !important;\"=\"\">Embark on a transformative journey with us as we craft a cutting-edge Dynamic Collaboration Hub that seamlessly integrates Laravel and Vue.js 3. We\'re on the lookout for a skilled development team to join us in bringing this vision to life.</span></p><p><span style=\"color: rgb(14, 23, 36); font-family: Roboto, \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 15px;=\"\" display:=\"\" inline=\"\" !important;\"=\"\"><br></span></p><p style=\"line-height: 2;\"><span style=\"color: rgb(14, 23, 36); font-size: 18px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 15px;=\"\" display:=\"\" inline=\"\" !important;\"=\"\"><b>Project Scope:</b></span></p><p style=\"line-height: 1.4;\"><span style=\"font-size: 14px;\">Imagine a collaborative space where users can effortlessly share ideas, documents, and insights. Our goal is to create a dynamic platform that fosters real-time collaboration, harnessing the power of Laravel\'s robust backend functionalities and Vue.js 3\'s reactive and user-friendly frontend capabilities.</span></p><p><span style=\"font-size: 18px;\"><b><font color=\"#000000\"><br></font></b></span></p><p style=\"line-height: 2;\"><span style=\"font-size: 18px;\"><b><font color=\"#000000\">Key Features:</font></b></span></p><ul><li style=\"line-height: 1.6;\"><span style=\"font-size: 18px;\"><font color=\"#000000\" style=\"\"><span style=\"font-size: 14px;\"><b>Real-Time Collaboration:</b>&nbsp;Implement Vue.js 3 for responsive remote collaboration.</span></font></span></li><li style=\"line-height: 1.6;\"><span style=\"font-size: 18px;\"><font color=\"#000000\" style=\"\"><span style=\"font-size: 14px;\"><b>Document Management:</b> Use Laravel for remote document management,</span></font></span></li><li style=\"line-height: 1.6;\"><span style=\"font-size: 18px;\"><font color=\"#000000\" style=\"\"><span style=\"font-size: 14px;\"><b>Task and Project Management:</b> Develop Laravel-backed project management with Vue.js 3 for an intuitive remote interface.</span></font></span></li></ul><p style=\"line-height: 2;\"><b style=\"font-size: 18px; color: var(--paragraph-color); text-align: var(--bs-body-text-align);\"><font color=\"#000000\">Requirements to apply:</font></b><br></p><ul><li><span style=\"font-size: 18px;\"><font color=\"#000000\" style=\"\"><span style=\"font-size: 14px;\">Proven experience in Laravel and Vue.js 3 development.\r\n</span></font></span></li><li><span style=\"font-size: 18px;\"><font color=\"#000000\" style=\"\"><span style=\"font-size: 14px;\">Familiarity with real-time collaboration features and document management systems.\r\n</span></font></span></li><li><span style=\"font-size: 18px;\"><font color=\"#000000\" style=\"\"><span style=\"font-size: 14px;\">Ability to design and implement responsive and user-friendly interfaces.\r\n</span></font></span></li><li><span style=\"font-size: 18px;\"><font color=\"#000000\" style=\"\"><span style=\"font-size: 14px;\">Strong problem-solving skills and a creative approach to addressing project challenges.</span></font></span></li></ul><p style=\"line-height: 2;\"><span style=\"font-size: 18px;\"><b><font color=\"#000000\">\r\n</font></b></span></p><p style=\"line-height: 2;\"><b style=\"color: var(--paragraph-color); text-align: var(--bs-body-text-align);\"><span style=\"font-size: 18px;\"><font color=\"#000000\">Please apply</font></span></b><br></p><p><span style=\"font-size: 14px;\"><font color=\"#000000\">We welcome creative insights and collaborative minds. Successful candidates may be invited for a discussion to further explore the project\'s intricacies.</font></span></p>', 'fixed', 50, '1699247291-654874bba36ad.pdf', 1, 0, 1, 1, '2024-03-16 21:29:50', NULL, '2023-10-04 04:12:56', '2024-03-16 21:29:50'),
(13, 1, 'Extreme experience in eBay research and listings', 'extreme-experience-in-ebay-research-and-listings', 9, 'less than a week', 'not mandatory', '<p style=\"line-height: 2;\"><font color=\"#0e1724\"><span style=\"font-size: 14px;\">Are you an eBay virtuoso with a flair for turning product listings into digital masterpieces? We\'re on the lookout for a Listings Optimization Specialist with a wealth of eBay expertise. If you\'re ready to elevate our online presence and drive sales, we want to collaborate with you!</span></font></p><p><span style=\"color: rgb(14, 23, 36); font-family: Roboto, \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 15px;=\"\" display:=\"\" inline=\"\" !important;\"=\"\"><br></span></p><p style=\"line-height: 2;\"><span style=\"color: rgb(14, 23, 36); font-size: 18px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 15px;=\"\" display:=\"\" inline=\"\" !important;\"=\"\"><b>Responsibilities:</b></span></p><ul><li><font color=\"#0e1724\">Dive deep into the eBay realm, conducting extensive market research to uncover trends, pricing strategies, and competitive landscapes.\r\n</font></li><li><font color=\"#0e1724\">Transcend ordinary listings by optimizing existing ones, ensuring they shine in the eBay spotlight.\r\n</font></li><li><font color=\"#0e1724\">Craft captivating and SEO-friendly product listings, transforming ordinary items into must-haves.\r\n</font></li><li><font color=\"#0e1724\">Stay ahead of the eBay curve, staying attuned to policies, algorithms, and the ever-evolving art of marketplace dynamics.\r\n</font></li><li><font color=\"#0e1724\">Deploy strategies that not only enhance product visibility but orchestrate a symphony of sales.</font></li></ul><p><span style=\"font-size: 18px;\"><b><font color=\"#000000\"><br></font></b></span></p><p style=\"line-height: 2;\"><span style=\"font-size: 18px;\"><b><font color=\"#000000\">Qualifications:</font></b></span></p><ul><li>Maestro-level expertise in eBay market research and listings optimization.\r\n</li><li>A portfolio of successful eBay sales stories where your touch made all the difference.\r\n</li><li>A virtuoso\'s understanding of eBay algorithms, SEO nuances, and the intricate dance of marketplace dynamics.\r\n</li><li>A meticulous eye for detail, turning product descriptions into arias that captivate and convert.\r\n</li><li>A keen sense of harmony with eBay policies, always in sync with updates and guidelines.</li></ul><p><b style=\"font-size: 18px; color: var(--paragraph-color); text-align: var(--bs-body-text-align);\"><font color=\"#000000\"><br></font></b></p><p style=\"line-height: 2;\"><font color=\"#000000\"><span style=\"font-size: 18px;\"><b>How to Apply:</b></span></font></p><p style=\"line-height: 1.4;\"><font color=\"#000000\"><span style=\"font-size: 14px;\">If you\'re ready to be the eBay maestro we\'ve been seeking, compose your application concerto. Submit your Xilancer proposal, including your resume, a crescendo of a cover letter showcasing your experience, and a few samples of eBay listings that have hit the right notes.</span></font></p><p><br></p>', 'fixed', 100, '1699252773-65488a251c02a.pdf', 1, 0, 1, 1, '2024-03-25 14:36:38', NULL, '2023-11-06 00:39:33', '2024-03-25 14:36:38'),
(14, 1, 'Virtual Spanish assistant, Customer support over the phone', 'virtual-spanish-assistant--customer-support-for-phone', 3, 'less than a month', 'senior', '<p style=\"line-height: 1.4;\"><span style=\"font-size: 14px; color: rgb(14, 23, 36); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align); display: inline !important;\">We are seeking a Virtual Spanish Assistant with excellent communication skills to provide top-notch customer support over the phone. If you are fluent in Spanish, customer-oriented, and thrive in a remote work environment, we want to connect with you!</span><br></p><p><span style=\"color: rgb(14, 23, 36); font-family: Roboto, \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 15px;=\"\" display:=\"\" inline=\"\" !important;\"=\"\"><br></span></p><p style=\"line-height: 2;\"><span style=\"color: rgb(14, 23, 36); font-size: 18px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 15px;=\"\" display:=\"\" inline=\"\" !important;\"=\"\"><b>Responsibilities:</b></span></p><ul><li><font color=\"#0e1724\">Fluent in Spanish with exceptional verbal communication skills.\r\n</font></li><li><font color=\"#0e1724\">Proven experience in customer support, particularly over the phone.\r\n</font></li><li><font color=\"#0e1724\">Strong problem-solving skills and the ability to handle challenging situations.\r\n</font></li><li><font color=\"#0e1724\">Excellent organizational skills to manage and document customer interactions effectively.\r\n</font></li><li><font color=\"#0e1724\">Reliable internet connection and a quiet workspace for virtual assistance.</font></li></ul><p><span style=\"font-size: 18px;\"><b><font color=\"#000000\"><br></font></b></span></p><p style=\"line-height: 2;\"><span style=\"font-size: 18px;\"><b><font color=\"#000000\">Duration:</font></b></span></p><ul><li>This is an ongoing position with the potential for a long-term collaboration.</li></ul><p style=\"line-height: 2;\"><b style=\"font-size: 18px; color: var(--paragraph-color); text-align: var(--bs-body-text-align);\"><font color=\"#000000\">Budget:</font></b><br></p><p><span style=\"font-size: 18px;\"><font color=\"#000000\" style=\"\"><span style=\"font-size: 14px;\">Open to negotiation based on experience and qualifications.</span><b>\r\n</b></font></span></p><p><span style=\"font-size: 18px;\"><b><font color=\"#000000\">\r\n</font></b></span></p><p><b><span style=\"font-size: 18px;\"><font color=\"#000000\"><br></font></span></b></p><p><b><span style=\"font-size: 18px;\"><font color=\"#000000\">Note:</font></span></b></p><p><span style=\"font-size: 14px;\"><font color=\"#000000\" style=\"\">We value diversity and encourage applications from individuals of all backgrounds. Successful candidates will undergo a brief phone interview as part of the selection process.</font></span></p>', 'fixed', 500, '1699253437-65488cbd45a82.pdf', 1, 0, 1, 1, '2024-04-19 05:51:31', NULL, '2023-11-06 00:50:37', '2024-04-19 05:51:31'),
(15, 1, 'I Need a English language instructor for 3 months', 'ielts-training-for-3-month', 5, 'less than a month', 'midLevel', '<p style=\"line-height: 1.6;\"><span style=\"font-size: 14px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 15px;=\"\" display:=\"\" inline=\"\" !important;\"=\"\"><font color=\"#424242\">We are in search of a skilled and engaging English Language Instructor to join our virtual teaching team. If you have a passion for language education and the ability to create dynamic online learning experiences, we want to hear from you!</font></span></p><p><span style=\"\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 15px;=\"\" display:=\"\" inline=\"\" !important;\"=\"\"><font color=\"#424242\"><br></font></span></p><p style=\"line-height: 2;\"><span style=\"font-size: 18px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 15px;=\"\" display:=\"\" inline=\"\" !important;\"=\"\"><b><font color=\"#424242\">Responsibilities:</font></b></span></p><ul><li><font color=\"#424242\">Conduct virtual English language classes catering to a diverse audience.\r\n</font></li><li><font color=\"#424242\">Develop and execute engaging lesson plans that enhance language proficiency and communication skills.\r\n</font></li><li><font color=\"#424242\">Provide constructive feedback to students to support their learning journey.\r\n</font></li><li><font color=\"#424242\">Cultivate an inclusive and supportive online learning environment.</font></li></ul><p><span style=\"font-size: 18px;\"><b><font color=\"#424242\"><br></font></b></span></p><p style=\"line-height: 2;\"><span style=\"font-size: 18px;\"><b><font color=\"#424242\">Qualifications:</font></b></span></p><ul><li><font color=\"#424242\">Proven experience as a successful online English language instructor.\r\n</font></li><li><font color=\"#424242\">Bachelor\'s degree in English, Education, or a related field.\r\n</font></li><li><font color=\"#424242\">Native or near-native proficiency in English.\r\n</font></li><li><font color=\"#424242\">Excellent communication and interpersonal skills.\r\n</font></li><li><font color=\"#424242\">Familiarity with popular virtual teaching platforms.</font></li></ul><p><b style=\"font-size: 18px; text-align: var(--bs-body-text-align);\"><font color=\"#424242\"><br></font></b></p><p style=\"line-height: 2;\"><font color=\"#424242\"><b style=\"font-size: 18px; text-align: var(--bs-body-text-align);\">Budget:</b><br></font></p><p><span style=\"font-size: 18px;\"><font color=\"#424242\"><span style=\"font-size: 14px;\">Open to negotiation based on experience and qualifications.</span><b>\r\n</b></font></span></p><p><span style=\"font-size: 18px;\"><b><font color=\"#424242\">\r\n</font></b></span></p><p><b><span style=\"font-size: 18px;\"><font color=\"#424242\"><br></font></span></b></p><p><b><span style=\"font-size: 18px;\"><font color=\"#424242\">Please apply if you\'re only qualified.</font></span></b></p>', 'fixed', 300, '1699255170-65489382671f1.pdf', 1, 0, 1, 1, '2024-04-22 13:28:09', NULL, '2023-11-06 01:19:30', '2024-04-22 13:28:09');

-- --------------------------------------------------------

--
-- Table structure for table `job_post_skills`
--

CREATE TABLE `job_post_skills` (
  `id` bigint UNSIGNED NOT NULL,
  `job_post_id` bigint NOT NULL,
  `skill_id` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_post_skills`
--

INSERT INTO `job_post_skills` (`id`, `job_post_id`, `skill_id`, `created_at`, `updated_at`) VALUES
(8, 3, 2, '2023-04-17 18:36:06', '2023-04-17 18:36:06'),
(9, 3, 3, '2023-04-17 18:36:06', '2023-04-17 18:36:06'),
(10, 4, 1, '2023-05-24 17:17:27', '2023-05-24 17:17:27'),
(11, 4, 2, '2023-05-24 17:17:27', '2023-05-24 17:17:27'),
(12, 5, 1, '2023-06-03 18:46:06', '2023-06-03 18:46:06'),
(13, 5, 3, '2023-06-03 18:46:06', '2023-06-03 18:46:06'),
(25, 12, 4, '2023-11-05 22:54:02', '2023-11-05 22:54:02'),
(26, 12, 6, '2023-11-05 22:54:02', '2023-11-05 22:54:02'),
(27, 12, 21, '2023-11-05 23:00:34', '2023-11-05 23:00:34'),
(28, 12, 22, '2023-11-05 23:00:34', '2023-11-05 23:00:34'),
(29, 12, 23, '2023-11-05 23:00:34', '2023-11-05 23:00:34'),
(30, 11, 4, '2023-11-05 23:12:38', '2023-11-05 23:12:38'),
(31, 11, 6, '2023-11-05 23:12:38', '2023-11-05 23:12:38'),
(33, 11, 21, '2023-11-05 23:12:38', '2023-11-05 23:12:38'),
(34, 11, 22, '2023-11-05 23:12:38', '2023-11-05 23:12:38'),
(35, 11, 23, '2023-11-05 23:12:38', '2023-11-05 23:12:38'),
(36, 11, 26, '2023-11-05 23:24:45', '2023-11-05 23:24:45'),
(37, 10, 6, '2023-11-05 23:29:22', '2023-11-05 23:29:22'),
(38, 10, 7, '2023-11-05 23:29:22', '2023-11-05 23:29:22'),
(39, 10, 20, '2023-11-05 23:29:22', '2023-11-05 23:29:22'),
(40, 10, 24, '2023-11-05 23:29:23', '2023-11-05 23:29:23'),
(41, 10, 25, '2023-11-05 23:29:23', '2023-11-05 23:29:23'),
(42, 10, 26, '2023-11-05 23:29:23', '2023-11-05 23:29:23'),
(43, 9, 28, '2023-11-05 23:37:39', '2023-11-05 23:37:39'),
(44, 9, 29, '2023-11-05 23:37:39', '2023-11-05 23:37:39'),
(45, 9, 30, '2023-11-05 23:37:39', '2023-11-05 23:37:39'),
(46, 9, 31, '2023-11-05 23:37:39', '2023-11-05 23:37:39'),
(47, 9, 32, '2023-11-05 23:37:39', '2023-11-05 23:37:39'),
(48, 7, 7, '2023-11-05 23:42:10', '2023-11-05 23:42:10'),
(49, 7, 20, '2023-11-05 23:42:10', '2023-11-05 23:42:10'),
(50, 7, 21, '2023-11-05 23:42:10', '2023-11-05 23:42:10'),
(52, 7, 33, '2023-11-05 23:44:00', '2023-11-05 23:44:00'),
(53, 7, 34, '2023-11-05 23:44:00', '2023-11-05 23:44:00'),
(54, 6, 6, '2023-11-05 23:50:58', '2023-11-05 23:50:58'),
(55, 6, 7, '2023-11-05 23:50:58', '2023-11-05 23:50:58'),
(56, 6, 10, '2023-11-05 23:50:58', '2023-11-05 23:50:58'),
(57, 6, 20, '2023-11-05 23:50:58', '2023-11-05 23:50:58'),
(58, 6, 21, '2023-11-05 23:50:58', '2023-11-05 23:50:58'),
(59, 6, 33, '2023-11-05 23:50:59', '2023-11-05 23:50:59'),
(60, 5, 35, '2023-11-06 00:02:36', '2023-11-06 00:02:36'),
(61, 5, 36, '2023-11-06 00:02:36', '2023-11-06 00:02:36'),
(62, 4, 35, '2023-11-06 00:08:39', '2023-11-06 00:08:39'),
(63, 4, 36, '2023-11-06 00:08:39', '2023-11-06 00:08:39'),
(64, 2, 37, '2023-11-06 00:20:46', '2023-11-06 00:20:46'),
(65, 2, 38, '2023-11-06 00:20:46', '2023-11-06 00:20:46'),
(66, 2, 39, '2023-11-06 00:20:46', '2023-11-06 00:20:46'),
(67, 2, 40, '2023-11-06 00:20:47', '2023-11-06 00:20:47'),
(68, 1, 37, '2023-11-06 00:24:35', '2023-11-06 00:24:35'),
(69, 1, 41, '2023-11-06 00:27:33', '2023-11-06 00:27:33'),
(70, 1, 42, '2023-11-06 00:27:33', '2023-11-06 00:27:33'),
(72, 13, 44, '2023-11-06 00:39:33', '2023-11-06 00:39:33'),
(73, 13, 46, '2023-11-06 00:45:49', '2023-11-06 00:45:49'),
(74, 13, 47, '2023-11-06 00:45:49', '2023-11-06 00:45:49'),
(75, 13, 48, '2023-11-06 00:45:49', '2023-11-06 00:45:49'),
(77, 14, 49, '2023-11-06 00:58:33', '2023-11-06 00:58:33'),
(78, 14, 50, '2023-11-06 00:58:33', '2023-11-06 00:58:33'),
(79, 14, 51, '2023-11-06 00:58:33', '2023-11-06 00:58:33'),
(80, 15, 52, '2023-11-06 01:19:30', '2023-11-06 01:19:30'),
(81, 15, 53, '2023-11-06 01:19:30', '2023-11-06 01:19:30'),
(82, 15, 54, '2023-11-06 01:19:30', '2023-11-06 01:19:30'),
(84, 8, 45, '2023-11-06 02:03:51', '2023-11-06 02:03:51'),
(85, 8, 47, '2023-11-06 02:03:51', '2023-11-06 02:03:51'),
(86, 8, 53, '2023-11-06 02:03:51', '2023-11-06 02:03:51'),
(87, 8, 56, '2023-11-06 02:03:51', '2023-11-06 02:03:51'),
(88, 8, 57, '2023-11-06 02:03:51', '2023-11-06 02:03:51'),
(89, 15, 55, '2023-11-24 23:14:47', '2023-11-24 23:14:47');

-- --------------------------------------------------------

--
-- Table structure for table `job_post_sub_categories`
--

CREATE TABLE `job_post_sub_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `job_post_id` bigint NOT NULL,
  `sub_category_id` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_post_sub_categories`
--

INSERT INTO `job_post_sub_categories` (`id`, `job_post_id`, `sub_category_id`, `created_at`, `updated_at`) VALUES
(5, 3, 21, '2023-04-17 18:36:06', '2023-04-17 18:36:06'),
(7, 5, 6, '2023-06-03 18:46:06', '2023-06-03 18:46:06'),
(8, 5, 8, '2023-06-03 18:46:06', '2023-06-03 18:46:06'),
(9, 6, 1, '2023-06-05 17:13:55', '2023-06-05 17:13:55'),
(10, 7, 1, '2023-09-11 06:45:09', '2023-09-11 06:45:09'),
(12, 9, 2, '2023-09-20 06:04:28', '2023-09-20 06:04:28'),
(18, 12, 20, '2023-11-05 22:54:02', '2023-11-05 22:54:02'),
(19, 12, 21, '2023-11-05 22:54:02', '2023-11-05 22:54:02'),
(20, 12, 22, '2023-11-05 22:54:02', '2023-11-05 22:54:02'),
(21, 11, 20, '2023-11-05 23:12:38', '2023-11-05 23:12:38'),
(22, 11, 21, '2023-11-05 23:12:38', '2023-11-05 23:12:38'),
(23, 11, 22, '2023-11-05 23:12:38', '2023-11-05 23:12:38'),
(24, 10, 21, '2023-11-05 23:29:22', '2023-11-05 23:29:22'),
(25, 10, 22, '2023-11-05 23:29:22', '2023-11-05 23:29:22'),
(27, 7, 24, '2023-11-05 23:42:10', '2023-11-05 23:42:10'),
(28, 6, 24, '2023-11-05 23:50:58', '2023-11-05 23:50:58'),
(29, 5, 5, '2023-11-06 00:01:23', '2023-11-06 00:01:23'),
(30, 5, 7, '2023-11-06 00:01:23', '2023-11-06 00:01:23'),
(31, 4, 5, '2023-11-06 00:08:39', '2023-11-06 00:08:39'),
(32, 4, 6, '2023-11-06 00:08:39', '2023-11-06 00:08:39'),
(33, 4, 7, '2023-11-06 00:08:39', '2023-11-06 00:08:39'),
(34, 4, 8, '2023-11-06 00:08:39', '2023-11-06 00:08:39'),
(35, 2, 26, '2023-11-06 00:17:12', '2023-11-06 00:17:12'),
(36, 2, 33, '2023-11-06 00:17:12', '2023-11-06 00:17:12'),
(37, 1, 26, '2023-11-06 00:24:35', '2023-11-06 00:24:35'),
(38, 1, 32, '2023-11-06 00:24:35', '2023-11-06 00:24:35'),
(39, 1, 31, '2023-11-06 00:28:07', '2023-11-06 00:28:07'),
(41, 13, 35, '2023-11-06 00:45:49', '2023-11-06 00:45:49'),
(43, 14, 36, '2023-11-06 00:58:33', '2023-11-06 00:58:33'),
(45, 15, 37, '2023-11-06 01:24:11', '2023-11-06 01:24:11'),
(46, 8, 29, '2023-11-06 02:00:25', '2023-11-06 02:00:25');

-- --------------------------------------------------------

--
-- Table structure for table `job_proposals`
--

CREATE TABLE `job_proposals` (
  `id` bigint UNSIGNED NOT NULL,
  `job_id` bigint NOT NULL,
  `freelancer_id` bigint NOT NULL,
  `client_id` bigint NOT NULL,
  `amount` double NOT NULL,
  `duration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `revision` int NOT NULL DEFAULT '0',
  `cover_letter` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attachment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '0' COMMENT '0=pending, 1=accept, 2=reject',
  `is_hired` tinyint NOT NULL DEFAULT '0' COMMENT '0=no, 1=yes',
  `is_short_listed` tinyint NOT NULL DEFAULT '0' COMMENT '0=no, 1=yes',
  `is_interview_take` tinyint NOT NULL DEFAULT '0' COMMENT '0=no, 1=yes',
  `is_view` tinyint NOT NULL DEFAULT '0' COMMENT '0=no, 1=yes',
  `is_rejected` tinyint NOT NULL DEFAULT '0' COMMENT '0=no, 1=yes',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_proposals`
--

INSERT INTO `job_proposals` (`id`, `job_id`, `freelancer_id`, `client_id`, `amount`, `duration`, `revision`, `cover_letter`, `attachment`, `status`, `is_hired`, `is_short_listed`, `is_interview_take`, `is_view`, `is_rejected`, `created_at`, `updated_at`) VALUES
(1, 11, 7, 1, 500, 'Less than a month', 3, 'We are looking for skilled and experienced LARAVEL and JS developer.\r\n\r\nWe have ecommerce system build in Laravel and we want to further extend it.\r\n\r\n* We will be adding new features (enhance search, add filters, improve listings)\r\n\r\n* We are already hosting multiple stores in our system with ability to run their own products and categories\r\n\r\n* We want to make it for wholesalers with large amount of products\r\n\r\n* Connecting Paypal API', '1699351779-654a0ce3075f8.pdf', 0, 1, 1, 1, 1, 0, '2023-11-07 04:09:39', '2024-03-25 14:37:18'),
(2, 10, 7, 1, 300, 'Less than 2 month', 4, '- Experience in building and adding new features to existing software\r\n\r\n- Strong problem-solving skills and attention to detail\r\n\r\n- Ability to collaborate with a team and communicate effectively', '1699356664-654a1ff8dcdb9.pdf', 0, 0, 1, 1, 1, 0, '2023-11-07 05:31:04', '2024-03-25 14:42:37'),
(3, 13, 7, 1, 100, 'Less than 2 month', 3, 'I am looking for someone with extreme experience in eBay research and listings to assist with listing optimization and management.- I am open to any', '1699362821-654a3805d08da.pdf', 0, 1, 1, 1, 1, 0, '2023-11-07 07:13:41', '2024-03-25 14:36:46'),
(4, 4, 7, 1, 3, '3 Days', 2, 'vijnkbjbnnklookkkmbnnjn.  joining i ono only hb ob i j i knub ibnk ki.  i. j ni I I I I I bbnnnnbb. ñ nnnnnnbbbnnnnnnn chhoodaayen guddi hii giggles cufflinks giggleskk ji', '1702953046-658100561afa1.png', 0, 0, 0, 1, 1, 0, '2023-12-18 20:30:46', '2023-12-24 17:26:59'),
(5, 1, 7, 1, 2, '3 Days', 1, 'ghcgbbbvbbhhhh bhhhhjui hhjjiii hhjiio jjjjjj ghcgbbbvbbhhhh bhhhhjui hhjjiii hhjiio jjjjjj jjkkkk ghcgbbbvbbhhhh bhhhhjui hhjjiii hhjiio jjjjjj jjkkkk', '', 0, 0, 0, 0, 1, 0, '2023-12-18 22:15:49', '2023-12-31 10:08:55'),
(6, 2, 7, 1, 2, '1 Days', 96, 'vvghjkkkkxixixixixixickkckckckckckckioo I kkocii iko i ii I kiiijjhhjoskkdoodbbbbbbbkiiijjhhjoskkdoodbbbbbbbbbkiiijjhhjoskkdoodbbbbbbbbbbkiiijjhhjoskkdoodbbbbbbbbbbbbbkdkhhhhhbbbkdkhhhhhbbbbkdkhhhhhbbbbbbkdkhhhhh', '', 0, 0, 0, 0, 1, 0, '2023-12-29 12:50:47', '2024-01-23 01:12:53'),
(7, 12, 7, 1, 20, '1 Days', 50, 'ok hospital acompanha Hugol Goiânia Goiás...................................okbhfhcfhbcxhbvffghjiidsxvjijcdsebjirthcf', '', 0, 0, 0, 1, 1, 0, '2024-01-01 06:43:02', '2024-03-16 21:31:03'),
(8, 7, 7, 1, 100, '1 Days', 50, 'dhvhvvhhjjjjkk jjjjkio njjio jiooooooo jjiiooo ijjjjjjji jjjjjjjjiiii jjjjjjjiii jjjuu jjjjjjjjiii ijiiiiiiiuiiiiiiijjiììjjjhhjhiujhjgj', '', 0, 0, 0, 1, 1, 0, '2024-01-07 04:11:02', '2024-01-26 00:50:46'),
(9, 15, 7, 1, 57, '3 Days', 5, 'ghhhbzbzbzbsbsbbdbdbbbvvkjiiiiiu all all dj FG gzhshdhdhhdhdhfhdhdhjdjfjfudufufudjfjjfjfjdjjfjfjfjfjjfjfgzhshdhdhhdhdhfhdhdhjdjfjfudufufudjfjjfjgzhshdhdhhdhdhfhdhdhjdjfjfudufufudjfjjfjfjdjjfjfjfjfjjfjffjdjjfjfjfjfjjfjf', '', 0, 1, 0, 1, 1, 0, '2024-01-11 07:39:18', '2024-04-22 12:40:45'),
(10, 5, 7, 1, 200, 'less than a month', 50, 'hihhjjhjhhhgyugucuvov8vjuhhuijjkvivivijguhhhjjjhjhjjjjkkkjhhhhuujujikkkkiikikkjujjhhgccccccggghhhuuuu777uhvbbbbbbju9lnbvcchgghhhhhhhhhhhhhhhhhhhhhhhvv', '', 0, 0, 0, 0, 1, 0, '2024-01-23 05:33:43', '2024-01-23 15:21:45'),
(11, 6, 7, 1, 25, '1 Days', 6, 'hdndjs nsjsjjsjeje dndndjjsjd dndndjjsjd dndjdjjs dndjdjdjsjjdd dndndjjsjd dndjdjdjejdjd dndjdjjs dndjdjdijdj ndndjjjsjjdjdjjd ndjdkdkskndndjjdd', '', 0, 0, 0, 0, 0, 0, '2024-01-26 14:11:34', '2024-01-26 14:11:34'),
(12, 14, 7, 1, 100, '2 Days', 1, 'hiihkvdhbxbbcbncvbccvnnnkkkjczasfunvxzvnkhdzcnnxXbjgdxbnvxzvnnvxzvngdzxXchhhbthjxxbnmhxxvnjute nidvnbgjccuvibuvyxycuvuctxycuchxgxjvkbkbjctxtsrstcuvivucfzrzuvj hfzrsvivhxrxyvj gzesycjcbxseuknvxx', '1706352134-65b4de060a770.jpg', 0, 1, 0, 1, 1, 0, '2024-01-27 04:42:14', '2024-04-19 05:51:46'),
(13, 8, 7, 2, 100, 'less than a week', 8, 'human hsksbsjsssjsksjsjsnsksnenjeenenenenenebbeenenebjebeneekjeenendnendnnendnednhjdnenejejjje njjhje jejejejkke jdjejendjendnnd', '', 0, 0, 0, 0, 0, 0, '2024-02-13 09:31:46', '2024-02-13 09:31:46');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `direction` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default` int UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `slug`, `direction`, `status`, `default`, `created_at`, `updated_at`) VALUES
(1, 'English (UK)', 'en_GB', 'ltr', 'publish', 1, '2023-05-07 04:56:35', '2024-03-10 16:30:35');

-- --------------------------------------------------------

--
-- Table structure for table `live_chats`
--

CREATE TABLE `live_chats` (
  `id` bigint UNSIGNED NOT NULL,
  `client_id` bigint DEFAULT NULL,
  `freelancer_id` bigint DEFAULT NULL,
  `admin_id` bigint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `live_chat_messages`
--

CREATE TABLE `live_chat_messages` (
  `id` bigint UNSIGNED NOT NULL,
  `live_chat_id` bigint UNSIGNED NOT NULL,
  `from_user` int NOT NULL COMMENT '1 = client, 2 = freelancer, 3 = admin',
  `message` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_seen` tinyint NOT NULL DEFAULT '0' COMMENT '0=unseen, 1=seen',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `media_uploads`
--

CREATE TABLE `media_uploads` (
  `id` bigint UNSIGNED NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `size` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `dimensions` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'admin',
  `user_id` bigint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media_uploads`
--

INSERT INTO `media_uploads` (`id`, `title`, `path`, `alt`, `size`, `dimensions`, `type`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'argentina_640.png', 'argentina-6401670821936.png', NULL, '138.92 KB', '640 x 480 pixels', 'admin', 1, '2022-12-11 23:12:16', '2022-12-11 23:12:16'),
(2, 'image (1).png', 'image-11670822077.png', NULL, '106.68 KB', '555 x 537 pixels', 'admin', 1, '2022-12-11 23:14:37', '2022-12-11 23:14:37'),
(3, 'image (1).png', 'image-11670822746.png', NULL, '106.68 KB', '555 x 537 pixels', 'admin', 1, '2022-12-11 23:25:46', '2022-12-11 23:25:46'),
(4, 'image (1).png', 'image-11670822997.png', NULL, '106.68 KB', '555 x 537 pixels', 'admin', 1, '2022-12-11 23:29:57', '2022-12-11 23:29:57'),
(5, 'image (1).png', 'image-11670824513.png', NULL, '106.68 KB', '555 x 537 pixels', 'admin', 1, '2022-12-11 23:55:13', '2022-12-11 23:55:13'),
(6, 'image.png', 'image1671357828.png', NULL, '6.03 KB', '287 x 178 pixels', 'admin', 1, '2022-12-18 04:03:48', '2022-12-18 04:03:48'),
(7, 'argentina_640.png', 'argentina-6401671518921.png', NULL, '138.92 KB', '640 x 480 pixels', 'admin', 1, '2022-12-20 00:48:41', '2022-12-20 00:48:41'),
(8, 'IMG_7485.png', 'img-74851671620331.png', NULL, '5.2 MB', '1170 x 2532 pixels', 'admin', 1, '2022-12-21 04:58:52', '2022-12-21 04:58:52'),
(9, 'image.png', 'image1671621252.png', NULL, '6.03 KB', '287 x 178 pixels', 'admin', 1, '2022-12-21 05:14:12', '2022-12-21 05:14:12'),
(10, 'argentina_640.png', 'argentina-6401671628954.png', NULL, '138.92 KB', '640 x 480 pixels', 'admin', 1, '2022-12-21 07:22:35', '2022-12-21 07:22:35'),
(11, 'author.jpg', 'author1675076010.jpg', NULL, '3.55 KB', '80 x 80 pixels', 'admin', NULL, '2023-01-30 04:53:30', '2023-01-30 04:53:30'),
(12, '404.png', '4041676181010.png', NULL, '10.45 KB', '656 x 500 pixels', 'admin', 1, '2023-02-11 23:50:10', '2023-02-11 23:50:10'),
(13, 'account_s6.svg', 'account_s61676182380.svg', NULL, '', '', 'admin', 1, '2023-02-12 00:13:00', '2023-02-12 00:13:00'),
(14, 'account_s2.svg', 'account_s21676182415.svg', NULL, '', '', 'admin', 1, '2023-02-12 00:13:35', '2023-02-12 00:13:35'),
(15, 'account_s5.svg', 'account_s51676182840.svg', NULL, '', '', 'admin', 1, '2023-02-12 00:20:40', '2023-02-12 00:20:40'),
(16, 'account_s3.svg', 'account_s31676182896.svg', NULL, '', '', 'admin', 1, '2023-02-12 00:21:36', '2023-02-12 00:21:36'),
(17, 'account_s1.svg', 'account_s11676182965.svg', NULL, '', '', 'admin', 1, '2023-02-12 00:22:45', '2023-02-12 00:22:45'),
(18, 'account_s2.svg', 'account_s21676183067.svg', NULL, '', '', 'admin', 1, '2023-02-12 00:24:27', '2023-02-12 00:24:27'),
(19, 'account_s3.svg', 'account_s31676183272.svg', NULL, '', '', 'admin', 1, '2023-02-12 00:27:52', '2023-02-12 00:27:52'),
(20, 'account_s4.svg', 'account_s41676183896.svg', NULL, '', '', 'admin', 1, '2023-02-12 00:38:16', '2023-02-12 00:38:16'),
(21, 'account_s5.svg', 'account_s51676183967.svg', NULL, '', '', 'admin', 1, '2023-02-12 00:39:27', '2023-02-12 00:39:27'),
(22, 'account_s6.svg', 'account_s61676184022.svg', NULL, '', '', 'admin', 1, '2023-02-12 00:40:22', '2023-02-12 00:40:22'),
(23, 'account_s7.svg', 'account_s71676184081.svg', NULL, '', '', 'admin', 1, '2023-02-12 00:41:21', '2023-02-12 00:41:21'),
(24, 'account_s8.svg', 'account_s81676184135.svg', NULL, '', '', 'admin', 1, '2023-02-12 00:42:15', '2023-02-12 00:42:15'),
(25, 'account_s9.svg', 'account_s91676184207.svg', NULL, '', '', 'admin', 1, '2023-02-12 00:43:27', '2023-02-12 00:43:27'),
(26, 'login_page.png', 'login_page1680158041.png', NULL, '169.27 KB', '838 x 645 pixels', 'admin', 1, '2023-03-30 00:34:01', '2023-03-30 00:34:01'),
(27, 'appStore-shapes.svg', 'appStore-shapes1680158077.svg', NULL, '', '', 'admin', 1, '2023-03-30 00:34:37', '2023-03-30 00:34:37'),
(28, 'fr_1.png', 'fr_11680161260.png', NULL, '163.44 KB', '905 x 645 pixels', 'admin', 1, '2023-03-30 01:27:40', '2023-03-30 01:27:40'),
(29, 'fr_2.png', 'fr_21680162933.png', NULL, '140.79 KB', '905 x 699 pixels', 'admin', 1, '2023-03-30 01:55:33', '2023-03-30 01:55:33'),
(30, 'favicon.png', 'favicon1680407178.png', NULL, '855 ', '40 x 40 pixels', 'admin', 1, '2023-04-01 21:46:18', '2023-04-01 21:46:18'),
(31, 'logo.png', 'logo1680407228.png', NULL, '2.37 KB', '201 x 40 pixels', 'admin', 1, '2023-04-01 21:47:08', '2023-04-01 21:47:08'),
(32, 'white-logo.png', 'white-logo1680497717.png', NULL, '2.82 KB', '280 x 56 pixels', 'admin', 1, '2023-04-02 22:55:18', '2023-04-02 22:55:18'),
(33, 'dashboard_logo.png', 'dashboard_logo1680498170.png', NULL, '1.09 KB', '200 x 40 pixels', 'admin', 1, '2023-04-02 23:02:50', '2023-04-02 23:02:50'),
(34, 'Group 1171274876.png', 'Group 11712748761680683992.png', NULL, '1.2 KB', '60 x 40 pixels', 'admin', 1, '2023-04-05 02:39:52', '2023-04-05 02:39:52'),
(35, 'Group 1171274878.png', 'Group 11712748781680684016.png', NULL, '984 ', '60 x 40 pixels', 'admin', 1, '2023-04-05 02:40:16', '2023-04-05 02:40:16'),
(36, 'Group 1171274879.png', 'Group 11712748791680684063.png', NULL, '1.09 KB', '60 x 40 pixels', 'admin', 1, '2023-04-05 02:41:03', '2023-04-05 02:41:03'),
(37, 'Group 1171274880.png', 'Group 11712748801680684063.png', NULL, '1.15 KB', '60 x 40 pixels', 'admin', 1, '2023-04-05 02:41:03', '2023-04-05 02:41:03'),
(38, 'Group 1171274881.png', 'Group 11712748811680684064.png', NULL, '810 ', '60 x 40 pixels', 'admin', 1, '2023-04-05 02:41:04', '2023-04-05 02:41:04'),
(39, 'Group 1171274882.png', 'Group 11712748821680684064.png', NULL, '1 KB', '59 x 40 pixels', 'admin', 1, '2023-04-05 02:41:04', '2023-04-05 02:41:04'),
(40, 'Group 1171274883.png', 'Group 11712748831680684064.png', NULL, '1.28 KB', '60 x 40 pixels', 'admin', 1, '2023-04-05 02:41:04', '2023-04-05 02:41:04'),
(41, 'Group 1171274887.png', 'Group 11712748871680684064.png', NULL, '1.32 KB', '60 x 40 pixels', 'admin', 1, '2023-04-05 02:41:04', '2023-04-05 02:41:04'),
(42, 'Group 1171274889.png', 'Group 11712748891680684065.png', NULL, '1.52 KB', '60 x 40 pixels', 'admin', 1, '2023-04-05 02:41:05', '2023-04-05 02:41:05'),
(43, 'Group 1171274891.png', 'Group 11712748911680684065.png', NULL, '1.38 KB', '59 x 40 pixels', 'admin', 1, '2023-04-05 02:41:05', '2023-04-05 02:41:05'),
(44, 'Group 1171274892.png', 'Group 11712748921680684065.png', NULL, '2.74 KB', '60 x 40 pixels', 'admin', 1, '2023-04-05 02:41:05', '2023-04-05 02:41:05'),
(45, 'Group 1171274896.png', 'Group 11712748961680684065.png', NULL, '1.41 KB', '60 x 40 pixels', 'admin', 1, '2023-04-05 02:41:05', '2023-04-05 02:41:05'),
(46, 'Group 1171274884.png', 'Group 11712748841680684099.png', NULL, '907 ', '60 x 40 pixels', 'admin', 1, '2023-04-05 02:41:39', '2023-04-05 02:41:39'),
(47, 'Group 1171274885.png', 'Group 11712748851680684099.png', NULL, '1.66 KB', '60 x 40 pixels', 'admin', 1, '2023-04-05 02:41:39', '2023-04-05 02:41:39'),
(48, 'Group 1171274886.png', 'Group 11712748861680684099.png', NULL, '1.63 KB', '60 x 40 pixels', 'admin', 1, '2023-04-05 02:41:40', '2023-04-05 02:41:40'),
(49, 'Group 1171274897.png', 'Group 11712748971680684099.png', NULL, '1.84 KB', '59 x 40 pixels', 'admin', 1, '2023-04-05 02:41:40', '2023-04-05 02:41:40'),
(50, 'Group 1171274898.png', 'Group 11712748981680684100.png', NULL, '1.36 KB', '59 x 40 pixels', 'admin', 1, '2023-04-05 02:41:40', '2023-04-05 02:41:40'),
(51, 'Group 1171274877.png', 'Group 11712748771680684126.png', NULL, '1.06 KB', '60 x 40 pixels', 'admin', 1, '2023-04-05 02:42:06', '2023-04-05 02:42:06'),
(52, 'toyyibpay.png', 'toyyibpay1681269588.png', NULL, '1.78 KB', '115 x 40 pixels', 'admin', 1, '2023-04-11 21:19:48', '2023-04-11 21:19:48'),
(53, 'toybppay.png', 'toybppay1681276253.png', NULL, '1014 ', '60 x 40 pixels', 'admin', 1, '2023-04-11 23:10:54', '2023-04-11 23:10:54'),
(54, 'pagali.png', 'pagali1681276333.png', NULL, '993 ', '60 x 40 pixels', 'admin', 1, '2023-04-11 23:12:13', '2023-04-11 23:12:13'),
(55, 'authorize.png', 'authorize1681276383.png', NULL, '2.01 KB', '60 x 40 pixels', 'admin', 1, '2023-04-11 23:13:03', '2023-04-11 23:13:03'),
(56, 'sitesway.png', 'sitesway1681276405.png', NULL, '1.41 KB', '60 x 40 pixels', 'admin', 1, '2023-04-11 23:13:25', '2023-04-11 23:13:25'),
(57, 'pricing1.png', 'pricing11686718012.png', NULL, '3.17 KB', '46 x 46 pixels', 'admin', 1, '2023-06-13 22:46:52', '2023-06-13 22:46:52'),
(58, 'freelancer-fortn.png', 'freelancer-fortn1697719200.png', NULL, '245.65 KB', '500 x 300 pixels', 'admin', 1, '2023-10-19 06:40:01', '2023-10-19 06:40:01'),
(59, 'brand2.png', 'brand21698472943.png', NULL, '2.28 KB', '153 x 32 pixels', 'admin', 1, '2023-10-28 00:02:23', '2023-10-28 00:02:23'),
(60, 'brand1.png', 'brand11698472943.png', NULL, '2.75 KB', '98 x 32 pixels', 'admin', 1, '2023-10-28 00:02:23', '2023-10-28 00:02:23'),
(61, 'brand4.png', 'brand41698472943.png', NULL, '3.05 KB', '193 x 32 pixels', 'admin', 1, '2023-10-28 00:02:23', '2023-10-28 00:02:23'),
(62, 'brand3.png', 'brand31698472943.png', NULL, '1.96 KB', '129 x 32 pixels', 'admin', 1, '2023-10-28 00:02:23', '2023-10-28 00:02:23'),
(63, 'brand6.png', 'brand61698472944.png', NULL, '1.81 KB', '150 x 32 pixels', 'admin', 1, '2023-10-28 00:02:24', '2023-10-28 00:02:24'),
(64, 'brand5.png', 'brand51698472944.png', NULL, '697 ', '105 x 32 pixels', 'admin', 1, '2023-10-28 00:02:24', '2023-10-28 00:02:24'),
(65, 'brand7.png', 'brand71698472944.png', NULL, '2.16 KB', '110 x 32 pixels', 'admin', 1, '2023-10-28 00:02:24', '2023-10-28 00:02:24'),
(66, 'work2.svg', 'work21698488777.svg', NULL, '', '', 'admin', 1, '2023-10-28 04:26:17', '2023-10-28 04:26:17'),
(67, 'work.svg', 'work1698488777.svg', NULL, '', '', 'admin', 1, '2023-10-28 04:26:17', '2023-10-28 04:26:17'),
(68, 'work3.svg', 'work31698488777.svg', NULL, '', '', 'admin', 1, '2023-10-28 04:26:17', '2023-10-28 04:26:17'),
(69, 'work4.svg', 'work41698488777.svg', NULL, '', '', 'admin', 1, '2023-10-28 04:26:17', '2023-10-28 04:26:17'),
(70, 'newsletter-shape.png', 'newsletter-shape1698572628.png', NULL, '8.8 KB', '1210 x 334 pixels', 'admin', 1, '2023-10-29 03:43:48', '2023-10-29 03:43:48'),
(71, 'question-arrow.png', 'question-arrow1698577866.png', NULL, '7.94 KB', '158 x 154 pixels', 'admin', 1, '2023-10-29 05:11:06', '2023-10-29 05:11:06'),
(72, 'question-arrow-circle.png', 'question-arrow-circle1698578844.png', NULL, '9.44 KB', '180 x 180 pixels', 'admin', 1, '2023-10-29 05:27:24', '2023-10-29 05:27:24'),
(73, 'trust_apple.png', 'trust_apple1698673348.png', NULL, '551 ', '40 x 40 pixels', 'admin', 1, '2023-10-30 07:42:28', '2023-10-30 07:42:28'),
(74, 'trust_facebook.png', 'trust_facebook1698673348.png', NULL, '515 ', '40 x 40 pixels', 'admin', 1, '2023-10-30 07:42:28', '2023-10-30 07:42:28'),
(75, 'trust_google.png', 'trust_google1698673349.png', NULL, '744 ', '38 x 40 pixels', 'admin', 1, '2023-10-30 07:42:29', '2023-10-30 07:42:29'),
(76, 'trust_linkedIn.png', 'trust_linkedIn1698673349.png', NULL, '516 ', '40 x 40 pixels', 'admin', 1, '2023-10-30 07:42:29', '2023-10-30 07:42:29'),
(77, 'trust_spotify.png', 'trust_spotify1698673349.png', NULL, '636 ', '40 x 40 pixels', 'admin', 1, '2023-10-30 07:42:29', '2023-10-30 07:42:29'),
(78, 'logo.png', 'logo1698752007.png', NULL, '2.37 KB', '201 x 40 pixels', 'admin', 1, '2023-10-31 05:33:27', '2023-10-31 05:33:27'),
(79, 'white-logo.png', 'white-logo1698752859.png', NULL, '2.82 KB', '280 x 56 pixels', 'admin', 1, '2023-10-31 05:47:39', '2023-10-31 05:47:39'),
(80, '404.png', '4041700399918.png', NULL, '23.67 KB', '653 x 288 pixels', 'admin', 1, '2023-11-19 07:18:38', '2023-11-19 07:18:38'),
(82, '2nd.png', '2nd1700401499.png', NULL, '1.32 MB', '1296 x 700 pixels', 'admin', 1, '2023-11-19 07:44:59', '2023-11-19 07:44:59'),
(83, 'M1.png', 'M11700401542.png', NULL, '35.09 KB', '152 x 202 pixels', 'admin', 1, '2023-11-19 07:45:43', '2023-11-19 07:45:43'),
(84, 'M2.png', 'M21700401545.png', NULL, '38.87 KB', '152 x 202 pixels', 'admin', 1, '2023-11-19 07:45:45', '2023-11-19 07:45:45'),
(85, '3rd.png', '3rd1700401545.png', NULL, '448.37 KB', '526 x 500 pixels', 'admin', 1, '2023-11-19 07:45:46', '2023-11-19 07:45:46'),
(86, 'M3.png', 'M31700401547.png', NULL, '37.87 KB', '152 x 202 pixels', 'admin', 1, '2023-11-19 07:45:47', '2023-11-19 07:45:47'),
(87, 'Check.svg', 'Check1700401601.svg', NULL, '', '', 'admin', 1, '2023-11-19 07:46:41', '2023-11-19 07:46:41'),
(88, 'Smile.svg', 'Smile1700401601.svg', NULL, '', '', 'admin', 1, '2023-11-19 07:46:41', '2023-11-19 07:46:41'),
(89, 'Trustpilot.svg', 'Trustpilot1700401602.svg', NULL, '', '', 'admin', 1, '2023-11-19 07:46:42', '2023-11-19 07:46:42'),
(90, 'Logo 1.png', 'Logo 11700402559.png', NULL, '985 ', '40 x 40 pixels', 'admin', 1, '2023-11-19 08:02:39', '2023-11-19 08:02:39'),
(91, 'Logo 2.png', 'Logo 21700402559.png', NULL, '1.02 KB', '40 x 40 pixels', 'admin', 1, '2023-11-19 08:02:39', '2023-11-19 08:02:39'),
(92, 'Logo 3.png', 'Logo 31700402560.png', NULL, '1.44 KB', '40 x 40 pixels', 'admin', 1, '2023-11-19 08:02:40', '2023-11-19 08:02:40'),
(93, 'Logo 5.png', 'Logo 51700402560.png', NULL, '1.13 KB', '40 x 40 pixels', 'admin', 1, '2023-11-19 08:02:41', '2023-11-19 08:02:41'),
(94, 'Logo4.png', 'Logo41700402561.png', NULL, '1.04 KB', '40 x 40 pixels', 'admin', 1, '2023-11-19 08:02:41', '2023-11-19 08:02:41'),
(95, 'Logo 1.png', 'Logo 11700402715.png', NULL, '2.93 KB', '191 x 40 pixels', 'admin', 1, '2023-11-19 08:05:15', '2023-11-19 08:05:15'),
(96, 'Logo 2.png', 'Logo 21700402715.png', NULL, '2.74 KB', '169 x 40 pixels', 'admin', 1, '2023-11-19 08:05:15', '2023-11-19 08:05:15'),
(97, 'Logo 3.png', 'Logo 31700402716.png', NULL, '3.51 KB', '167 x 40 pixels', 'admin', 1, '2023-11-19 08:05:16', '2023-11-19 08:05:16'),
(98, 'Logo 4.png', 'Logo 41700402716.png', NULL, '2.9 KB', '170 x 40 pixels', 'admin', 1, '2023-11-19 08:05:16', '2023-11-19 08:05:16'),
(99, 'Logo 5.png', 'Logo 51700402717.png', NULL, '4.32 KB', '169 x 42 pixels', 'admin', 1, '2023-11-19 08:05:17', '2023-11-19 08:05:17'),
(100, 'Logo 6.png', 'Logo 61700402717.png', NULL, '2.95 KB', '186 x 40 pixels', 'admin', 1, '2023-11-19 08:05:17', '2023-11-19 08:05:17'),
(101, 'team5.jpg', 'team51701081246.jpg', NULL, '64.01 KB', '306 x 306 pixels', 'admin', 1, '2023-11-27 04:34:06', '2023-11-27 04:34:06'),
(102, 'team3.jpg', 'team31701081247.jpg', NULL, '63.07 KB', '306 x 306 pixels', 'admin', 1, '2023-11-27 04:34:07', '2023-11-27 04:34:07'),
(103, 'team1.jpg', 'team11701081247.jpg', NULL, '58.52 KB', '306 x 306 pixels', 'admin', 1, '2023-11-27 04:34:07', '2023-11-27 04:34:07'),
(104, 'team4.jpg', 'team41701081248.jpg', NULL, '52.02 KB', '306 x 306 pixels', 'admin', 1, '2023-11-27 04:34:08', '2023-11-27 04:34:08'),
(105, 'team2.jpg', 'team21701081248.jpg', NULL, '62.66 KB', '306 x 306 pixels', 'admin', 1, '2023-11-27 04:34:09', '2023-11-27 04:34:09'),
(106, '2.png', '21701082884.png', NULL, '15.11 KB', '193 x 192 pixels', 'admin', 1, '2023-11-27 05:01:24', '2023-11-27 05:01:24'),
(107, '1.png', '11701082885.png', NULL, '9.66 KB', '193 x 196 pixels', 'admin', 1, '2023-11-27 05:01:25', '2023-11-27 05:01:25'),
(108, '3.png', '31701082885.png', NULL, '14.72 KB', '193 x 192 pixels', 'admin', 1, '2023-11-27 05:01:26', '2023-11-27 05:01:26'),
(109, '4.png', '41701082886.png', NULL, '14.55 KB', '193 x 192 pixels', 'admin', 1, '2023-11-27 05:01:27', '2023-11-27 05:01:27'),
(110, '5.png', '51701082887.png', NULL, '15.06 KB', '193 x 192 pixels', 'admin', 1, '2023-11-27 05:01:28', '2023-11-27 05:01:28'),
(111, '5.png', '51701082978.png', NULL, '2.59 KB', '47 x 47 pixels', 'admin', 1, '2023-11-27 05:02:58', '2023-11-27 05:02:58'),
(112, '1.png', '11701083072.png', NULL, '2.11 KB', '47 x 48 pixels', 'admin', 1, '2023-11-27 05:04:32', '2023-11-27 05:04:32'),
(113, '2.png', '21701083072.png', NULL, '2.68 KB', '47 x 47 pixels', 'admin', 1, '2023-11-27 05:04:32', '2023-11-27 05:04:32'),
(114, '4.png', '41701083073.png', NULL, '2.68 KB', '47 x 47 pixels', 'admin', 1, '2023-11-27 05:04:33', '2023-11-27 05:04:33'),
(115, '3.png', '31701083073.png', NULL, '2.69 KB', '47 x 47 pixels', 'admin', 1, '2023-11-27 05:04:33', '2023-11-27 05:04:33'),
(116, 'Top.png', 'Top1701157305.png', NULL, '127.37 KB', '636 x 465 pixels', 'admin', 1, '2023-11-28 01:41:45', '2023-11-28 01:41:45'),
(118, 'Skills.svg', 'Skills1701170646.svg', NULL, '', '', 'admin', 1, '2023-11-28 05:24:06', '2023-11-28 05:24:06'),
(119, '1699183717-65477c650cf4f.png', '1699183717-65477c650cf4f1702542814.png', NULL, '155.37 KB', '1770 x 960 pixels', 'admin', 1, '2023-12-14 02:33:35', '2023-12-14 02:33:35'),
(120, '1699183003-6547799bcdeb9.png', '1699183003-6547799bcdeb91702542814.png', NULL, '82.92 KB', '1770 x 960 pixels', 'admin', 1, '2023-12-14 02:33:35', '2023-12-14 02:33:35'),
(121, '1699184794-6547809aeeaca.png', '1699184794-6547809aeeaca1702542816.png', NULL, '305.16 KB', '1770 x 960 pixels', 'admin', 1, '2023-12-14 02:33:36', '2023-12-14 02:33:36'),
(122, '1699185138-654781f2c2efe.png', '1699185138-654781f2c2efe1702542816.png', NULL, '276.58 KB', '1770 x 960 pixels', 'admin', 1, '2023-12-14 02:33:37', '2023-12-14 02:33:37'),
(123, 'img-shape11703590525.svg', 'img-shape117035905251703684257.svg', NULL, '', '', 'admin', 1, '2023-12-27 07:37:37', '2023-12-27 07:37:37'),
(124, 'img-shape21703590525.svg', 'img-shape217035905251703684257.svg', NULL, '', '', 'admin', 1, '2023-12-27 07:37:37', '2023-12-27 07:37:37'),
(125, 'iyzipay1701066485.svg', 'iyzipay17010664851703684447.svg', NULL, '', '', 'admin', 1, '2023-12-27 07:40:47', '2023-12-27 07:40:47'),
(126, '1.png', '11704372060.png', NULL, '4.57 KB', '80 x 80 pixels', 'admin', 1, '2024-01-04 06:41:00', '2024-01-04 06:41:00'),
(127, '2.png', '21704372060.png', NULL, '3.93 KB', '80 x 80 pixels', 'admin', 1, '2024-01-04 06:41:00', '2024-01-04 06:41:00'),
(128, '3.png', '31704372062.png', NULL, '4.3 KB', '80 x 80 pixels', 'admin', 1, '2024-01-04 06:41:02', '2024-01-04 06:41:02'),
(129, '4.png', '41704372062.png', NULL, '4.59 KB', '80 x 80 pixels', 'admin', 1, '2024-01-04 06:41:02', '2024-01-04 06:41:02'),
(130, '5.png', '51704372063.png', NULL, '4.18 KB', '80 x 80 pixels', 'admin', 1, '2024-01-04 06:41:03', '2024-01-04 06:41:03');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `title`, `content`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Primary Menu', '[{\"ptype\":\"custom\",\"id\":2,\"antarget\":\"\",\"icon\":\"\",\"pname\":\"Home\",\"purl\":\"@url\"},{\"ptype\":\"custom\",\"id\":3,\"antarget\":\"\",\"icon\":\"\",\"pname\":\"Jobs\",\"purl\":\"@url/jobs/all\"},{\"ptype\":\"custom\",\"id\":4,\"antarget\":\"\",\"icon\":\"\",\"pname\":\"Talents\",\"purl\":\"@url/talents/all\"},{\"ptype\":\"custom\",\"id\":5,\"antarget\":\"\",\"icon\":\"\",\"pname\":\"Subscriptions\",\"purl\":\"@url/subscriptions/all\"},{\"ptype\":\"custom\",\"id\":6,\"antarget\":\"\",\"icon\":\"\",\"pname\":\"Pages\",\"purl\":\"#\",\"children\":[{\"ptype\":\"custom\",\"id\":7,\"antarget\":\"\",\"icon\":\"\",\"pname\":\"Projects\",\"purl\":\"@url/projects/all\"},{},{},{\"ptype\":\"custom\",\"id\":9,\"antarget\":\"\",\"icon\":\"\",\"pname\":\"Blog\",\"purl\":\"@url/blogs/all\"},{},{\"ptype\":\"pages\",\"id\":10,\"antarget\":\"\",\"icon\":\"\",\"menulabel\":\"\",\"pid\":6},{},{},{},{},{\"ptype\":\"pages\",\"pid\":9,\"id\":22},{\"ptype\":\"pages\",\"id\":14,\"antarget\":\"\",\"icon\":\"\",\"menulabel\":\"\",\"pid\":8},{},{},{},{}]},{\"ptype\":\"pages\",\"id\":18,\"antarget\":\"\",\"icon\":\"\",\"menulabel\":\"\",\"pid\":2}]', 'default', '2022-12-27 04:43:16', '2024-03-10 16:38:51'),
(2, 'Footer Menu', NULL, '', '2022-12-27 04:44:55', '2023-11-14 05:24:22'),
(4, 'Social Menu', NULL, NULL, '2022-12-27 05:31:28', '2022-12-27 05:31:28'),
(5, 'Test Menu', '[{\"ptype\":\"custom\",\"id\":2,\"antarget\":\"\",\"icon\":\"\",\"pname\":\"Home\",\"purl\":\"@url\"},{\"ptype\":\"pages\",\"pid\":2,\"id\":2}]', NULL, '2022-12-28 01:50:31', '2022-12-29 06:32:52');

-- --------------------------------------------------------

--
-- Table structure for table `meta_data`
--

CREATE TABLE `meta_data` (
  `id` bigint UNSIGNED NOT NULL,
  `meta_taggable_id` bigint UNSIGNED NOT NULL,
  `meta_taggable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_tags` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `facebook_meta_tags` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `facebook_meta_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_meta_tags` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `twitter_meta_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `meta_data`
--

INSERT INTO `meta_data` (`id`, `meta_taggable_id`, `meta_taggable_type`, `meta_title`, `meta_tags`, `meta_description`, `facebook_meta_tags`, `facebook_meta_description`, `facebook_meta_image`, `twitter_meta_tags`, `twitter_meta_description`, `twitter_meta_image`, `created_at`, `updated_at`) VALUES
(1, 1, 'Modules\\Pages\\Entities\\Page', 'asdasd asd', 'asdasdasd,as dasd as', 'asd asda', 'asd asd', 'asd asdas', NULL, 'asda sdas', 'as dasd a asdad', NULL, '2022-12-21 03:07:00', '2023-10-31 00:11:53'),
(2, 2, 'Modules\\Pages\\Entities\\Page', 'dfgsdfsdf', 'sdfsd sdf,fsdfsdf s,sd fsd sdf', 'sdf sdfsd fsdf', 'sdf sdfsd', 'sdfsdfsd', '8', 'sdf sdfsd f', 'sdf sdfsdf', '5', '2022-12-21 05:30:29', '2023-11-28 05:25:04'),
(3, 1, 'Modules\\Pages\\Entities\\Page', 'asdasd asd', 'asdasdasd,as dasd as', 'asd asda', 'asd asd', 'asd asdas', NULL, 'asda sdas', 'as dasd a asdad', NULL, '2022-12-21 07:09:52', '2023-10-31 00:11:53'),
(4, 2, 'Modules\\Pages\\Entities\\Page', 'dfgsdfsdf', 'sdfsd sdf,fsdfsdf s,sd fsd sdf', 'sdf sdfsd fsdf', 'sdf sdfsd', 'sdfsdfsd', '8', 'sdf sdfsd f', 'sdf sdfsdf', '5', '2022-12-21 07:22:54', '2023-11-28 05:25:04'),
(8, 6, 'Modules\\Pages\\Entities\\Page', 'as dasda', 'asd asd', 'asd asd asdas', 'asd asd as', 'asd asd asd', NULL, '', '', NULL, '2022-12-28 01:51:07', '2023-11-28 00:05:12'),
(9, 7, 'Modules\\Pages\\Entities\\Page', 'Home page one', 'Home page one asdas,asdasd,asd', 'home page one', '', '', NULL, '', '', NULL, '2023-10-26 05:33:00', '2024-01-17 06:22:19'),
(10, 8, 'Modules\\Pages\\Entities\\Page', 'about us', 'about,us', 'about us \"&gt;', '', '', NULL, '', '', NULL, '2023-11-02 06:43:42', '2023-11-19 07:42:47'),
(12, 9, 'Modules\\Pages\\Entities\\Page', '', '', '', '', '', NULL, '', '', NULL, '2024-03-10 16:36:03', '2024-03-10 16:36:03');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_12_06_070148_create_admins_table', 1),
(6, '2022_12_07_111046_create_static_options_table', 2),
(7, '2022_12_07_111908_create_media_uploads_table', 3),
(9, '2022_12_21_081351_create_meta_data_table', 4),
(10, '2022_12_21_075819_create_pages_table', 5),
(11, '2022_12_27_102354_create_menus_table', 6),
(12, '2022_12_29_073650_create_form_builders_table', 7),
(13, '2023_01_14_111350_create_widgets_table', 8),
(15, '2014_10_12_000000_create_users_table', 9),
(16, '2023_01_25_061947_create_countries_table', 10),
(17, '2023_01_25_062042_create_states_table', 10),
(18, '2023_01_25_062051_create_cities_table', 10),
(20, '2023_01_31_111953_create_user_introductions_table', 11),
(21, '2023_02_01_105814_create_user_experiences_table', 12),
(22, '2023_02_06_070500_create_user_education_table', 13),
(26, '2023_02_06_104340_create_categories_table', 15),
(27, '2023_02_06_104409_create_sub_categories_table', 15),
(31, '2023_02_08_080702_add_slug_and_image_to_categories_table', 16),
(32, '2023_02_08_080738_add_slug_and_image_to_sub_categories_table', 16),
(33, '2023_02_09_031836_create_skills_table', 17),
(34, '2023_02_12_120227_create_user_works_table', 18),
(35, '2023_02_13_070232_create_user_skills_table', 19),
(36, '2023_02_13_110318_add_hourly_rate_to_users_table', 20),
(38, '2023_02_15_084950_create_identity_verifications_table', 21),
(41, '2023_02_20_062146_add_status_and_is_read_to_identity_verifications_table', 22),
(43, '2023_02_22_102326_add_deleted_at_to_users', 23),
(47, '2023_02_26_072137_create_create_projects_table', 25),
(48, '2023_02_27_060732_create_create_project_attributes_table', 26),
(49, '2023_03_05_045336_add_slug_and_status_to_create_projects', 27),
(51, '2023_03_13_091210_create_portfolios_table', 28),
(52, '2023_03_19_061043_add_timezone_to_states', 29),
(53, '2023_03_19_091240_add_check_online_status_to_users', 30),
(55, '2023_03_19_101455_add_check_work_availability_to_users', 31),
(56, '2023_03_22_065938_add_google_2fa_secret_to_users', 32),
(57, '2023_03_22_085506_add_google_2fa_enable_disable_disable_to_users', 33),
(58, '2023_03_28_090737_create_project_histories_table', 34),
(61, '2023_03_29_034510_add_project_approve_request_to_create_projects', 35),
(62, '2023_04_02_045528_create_admin_notifications_table', 36),
(63, '2023_04_03_083057_create_create_project_sub_categories_table', 37),
(64, '2023_04_04_063804_add_category_id_to_create_projects', 38),
(65, '2023_04_06_022811_create_wallets_table', 39),
(66, '2023_04_06_022826_create_wallet_histories_table', 39),
(76, '2023_04_29_070422_create_subscription_types_table', 43),
(77, '2023_04_29_071804_create_subscription_features_table', 43),
(78, '2023_04_29_072511_create_subscriptions_table', 43),
(79, '2023_05_02_123118_create_page_builders_table', 44),
(80, '2023_05_07_070709_create_languages_table', 45),
(81, '2023_05_15_052137_add_short_description_to_categories', 46),
(82, '2023_05_15_060433_add_short_description_to_sub_categories', 47),
(83, '2023_05_17_072955_add_level_to_users', 48),
(85, '2023_05_30_105849_add_last_apply_date_and_last_seen_to_jobs_table', 49),
(86, '2023_06_01_063633_create_job_histories_table', 50),
(88, '2023_06_07_044153_change_is_read_column_name', 51),
(89, '2023_06_08_034931_rename_subscription_connet_to_limit', 52),
(91, '2023_06_13_044928_add_validatity_to_subscription_types', 53),
(96, '2023_06_17_054259_create_user_subscriptions_table', 54),
(107, '2023_07_10_043726_create_user_earnings_table', 55),
(108, '2023_07_10_075003_create_individual_commission_settings_table', 55),
(145, '2023_07_09_042039_create_orders_table', 56),
(147, '2023_07_26_115750_create_order_decline_histories_table', 56),
(148, '2023_07_26_120317_create_order_decline_wallet_histories_table', 56),
(169, '2023_07_30_063825_create_user_notifications_table', 57),
(170, '2023_07_30_070915_create_order_submit_histories_table', 57),
(171, '2023_08_01_103629_create_order_request_revisions_table', 57),
(174, '2023_08_08_054420_add_revision_left_to_orders_table', 58),
(181, '2023_08_10_043412_create_ratings_table', 59),
(182, '2023_08_10_045939_create_rating_details_table', 59),
(183, '2023_08_21_101229_add_status_before_hold_to_orders_table', 60),
(184, '2023_08_21_101822_add_is_suspend_to_users_table', 60),
(185, '2023_08_27_055736_create_departments_table', 61),
(186, '2023_08_27_060148_create_tickets_table', 61),
(187, '2023_08_27_060349_create_chat_messages_table', 61),
(192, '2023_05_23_165755_create_live_chats_table', 62),
(193, '2023_05_23_165849_create_live_chat_messages_table', 62),
(195, '2023_09_11_094021_create_job_posts_table', 63),
(197, '2023_09_11_111935_create_job_post_sub_categories_table', 64),
(198, '2023_04_17_052446_create_job_skills_table', 65),
(199, '2023_09_11_115123_create_job_post_skills_table', 66),
(204, '2023_09_12_112426_create_job_proposals_table', 67),
(211, '2023_08_02_074726_create_freelancer_notifications_table', 69),
(212, '2023_08_03_115328_create_client_notifications_table', 69),
(213, '2023_10_01_051409_add_revision_to_job_proposals', 70),
(214, '2023_09_24_072604_create_offers_table', 71),
(215, '2023_09_24_072659_create_offer_milestones_table', 71),
(216, '2023_07_13_093714_create_order_milestones_table', 72),
(217, '2023_10_04_125750_add_current_status_to_job_posts', 73),
(218, '2023_10_15_073144_add_remaining_balance_and_withdraw_amount_to_wallets', 74),
(220, '2023_10_15_130310_create_withdraw_gateways_table', 75),
(222, '2023_10_16_122611_create_withdraw_requests_table', 76),
(223, '2023_10_19_092727_create_permission_tables', 77),
(224, '2023_10_19_095329_add_menu_name_to_permissions', 77),
(225, '2020_02_04_010636_create_newsletters_table', 78),
(230, '2023_10_29_115154_create_question_answers_table', 79),
(232, '2023_10_30_082828_create_feedback_table', 80),
(233, '2023_11_09_052611_create_bookmarks_table', 81),
(234, '2023_11_13_090531_create_reports_table', 82),
(235, '2023_12_04_093048_create_xg_ftp_infos_table', 83),
(236, '2023_12_11_062442_create_blog_posts_table', 83),
(237, '2023_12_23_081053_create_freelancer_levels_table', 84),
(238, '2023_12_23_081216_create_freelancer_level_rules_table', 84),
(239, '2024_01_14_091704_add_reject_reason_to_project_histories_table', 85),
(240, '2024_01_31_071706_add_offer_package_available_or_not_to_projects_table', 86),
(241, '2024_02_14_060336_add_is_pro_and_pro_expire_date_to_projects_table', 87),
(242, '2024_02_15_120132_add_is_valid_payment_to_orders_table', 87),
(243, '2024_02_18_072401_add_note_to_reports_table', 87),
(244, '2024_02_18_150813_create_news_letter_for_emails_table', 87),
(245, '2024_03_05_123836_add_email_verify_token_to_admins', 88),
(246, '2024_03_06_065635_add_firebase_device_token_to_users', 88),
(247, '2024_04_21_131737_create_jobs_table', 89);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `newsletters`
--

CREATE TABLE `newsletters` (
  `id` bigint UNSIGNED NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `verified` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `news_letter_for_emails`
--

CREATE TABLE `news_letter_for_emails` (
  `id` bigint UNSIGNED NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `verified` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `offers`
--

CREATE TABLE `offers` (
  `id` bigint UNSIGNED NOT NULL,
  `freelancer_id` bigint NOT NULL,
  `client_id` bigint NOT NULL,
  `price` double NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `deadline` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '0' COMMENT '0=pending, 1=active, 2=reject',
  `revision` int NOT NULL DEFAULT '0',
  `revision_left` int NOT NULL DEFAULT '0',
  `attachment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `offer_milestones`
--

CREATE TABLE `offer_milestones` (
  `id` bigint UNSIGNED NOT NULL,
  `offer_id` bigint NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `deadline` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '0' COMMENT '0=pending, 1=active, 2=complete, 3=cancel',
  `revision` int NOT NULL DEFAULT '0',
  `revision_left` int NOT NULL DEFAULT '0',
  `attachment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint NOT NULL COMMENT 'client id',
  `freelancer_id` bigint NOT NULL,
  `identity` bigint NOT NULL COMMENT 'project_id or job_id',
  `is_project_job` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'project or job',
  `is_basic_standard_premium_custom` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'project type',
  `is_fixed_hourly` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'fixed or hourly',
  `is_custom` tinyint NOT NULL DEFAULT '0' COMMENT '1=custom',
  `status` tinyint NOT NULL DEFAULT '0' COMMENT '0=pending, 1=active, 2=delivered, 3=complete, 4=cancel, 5=decline by frl, 6=suspend by ad, 7=hold by ad',
  `status_before_hold` tinyint NOT NULL DEFAULT '0' COMMENT '0=not hold , 1=hold',
  `revision` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revision_left` int NOT NULL DEFAULT '0',
  `delivery_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `price` double NOT NULL,
  `commission_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `commission_charge` double NOT NULL,
  `commission_amount` double NOT NULL DEFAULT '0',
  `transaction_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_charge` double NOT NULL DEFAULT '0',
  `transaction_amount` double NOT NULL DEFAULT '0',
  `payable_amount` double NOT NULL DEFAULT '0',
  `refund_amount` double NOT NULL DEFAULT '0',
  `refund_status` tinyint NOT NULL DEFAULT '0' COMMENT '0=pending, 1=paid',
  `total_hour` double DEFAULT NULL,
  `payment_gateway` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_valid_payment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `manual_payment_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_decline_histories`
--

CREATE TABLE `order_decline_histories` (
  `id` bigint UNSIGNED NOT NULL,
  `order_id` bigint NOT NULL,
  `freelancer_id` bigint NOT NULL,
  `client_id` bigint NOT NULL,
  `order_price` double NOT NULL,
  `payment_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `cancel_or_decline` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cancel_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_decline_wallet_histories`
--

CREATE TABLE `order_decline_wallet_histories` (
  `id` bigint UNSIGNED NOT NULL,
  `order_id` bigint NOT NULL,
  `freelancer_id` bigint NOT NULL,
  `client_id` bigint NOT NULL,
  `order_price` double NOT NULL,
  `payment_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `cancel_or_decline` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cancel_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_milestones`
--

CREATE TABLE `order_milestones` (
  `id` bigint UNSIGNED NOT NULL,
  `order_id` bigint NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `deadline` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '0' COMMENT '0=pending, 1=active, 2=complete, 3=cancel',
  `revision` int NOT NULL DEFAULT '0',
  `revision_left` int NOT NULL DEFAULT '0',
  `attachment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_request_revisions`
--

CREATE TABLE `order_request_revisions` (
  `id` bigint UNSIGNED NOT NULL,
  `order_id` bigint NOT NULL,
  `order_submit_history_id` bigint DEFAULT NULL,
  `milestone_id` int DEFAULT NULL,
  `description` blob,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_submit_histories`
--

CREATE TABLE `order_submit_histories` (
  `id` bigint UNSIGNED NOT NULL,
  `order_id` bigint NOT NULL,
  `order_milestone_id` bigint DEFAULT NULL,
  `attachment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '0' COMMENT '0=pending, 1=approve, 2=request revision,',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint UNSIGNED NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `page_content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `page_builder_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `layout` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_class` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `breadcrumb_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `navbar_variant` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_variant` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visibility` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint DEFAULT NULL COMMENT '1-active, 0-inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `slug`, `page_content`, `page_builder_status`, `layout`, `page_class`, `breadcrumb_status`, `navbar_variant`, `footer_variant`, `visibility`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Contact', 'contact-us', '<p><span style=\"color: rgb(153, 153, 153); font-family: Manrope, sans-serif; font-size: 15px; display: inline !important;\">You’re not obliged to pay any fee before you earn and we just charge less than 2% on your total earnings if you have membership then it’s less than 1%</span><span style=\"color: rgb(153, 153, 153); font-family: Manrope, sans-serif; font-size: 15px; font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align); display: inline !important;\">You’re not obliged to pay any fee before you earn and we just charge less than 2% on your total earnings if you have membership then it’s less than 1%</span><span style=\"color: rgb(153, 153, 153); font-family: Manrope, sans-serif; font-size: 15px; font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align); display: inline !important;\">You’re not obliged to pay any fee before you earn and we just charge less than 2% on your total earnings if you have membership then it’s less than 1%</span><span style=\"color: rgb(153, 153, 153); font-family: Manrope, sans-serif; font-size: 15px; font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align); display: inline !important;\">You’re not obliged to pay any fee before you earn and we just charge less than 2% on your total earnings if you have membership then it’s less than 1%</span><span style=\"color: rgb(153, 153, 153); font-family: Manrope, sans-serif; font-size: 15px; font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align); display: inline !important;\">You’re not obliged to pay any fee before you earn and we just charge less than 2% on your total earnings if you have membership then it’s less than 1%</span><span style=\"color: rgb(153, 153, 153); font-family: Manrope, sans-serif; font-size: 15px; font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align); display: inline !important;\">You’re not obliged to pay any fee before you earn and we just charge less than 2% on your total earnings if you have membership then it’s less than 1%</span></p><p><span style=\"color: rgb(153, 153, 153); font-family: Manrope, sans-serif; font-size: 15px; font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align); display: inline !important;\"><br></span></p><p><span style=\"color: rgb(153, 153, 153); font-family: Manrope, sans-serif; font-size: 15px; font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align); display: inline !important;\"><span style=\"display: inline !important;\">You’re not obliged to pay any fee before you earn and we just charge less than 2% on your total earnings if you have membership then it’s less than 1%</span></span></p><p><span style=\"color: rgb(153, 153, 153); font-family: Manrope, sans-serif; font-size: 15px; font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align); display: inline !important;\"><span style=\"display: inline !important;\"><span style=\"display: inline !important;\">You’re not obliged to pay any fee before you earn and we just charge less than 2% on your total earnings if you have membership then it’s less than 1%</span></span></span></p><p><span style=\"color: rgb(153, 153, 153); font-family: Manrope, sans-serif; font-size: 15px; font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align); display: inline !important;\"><span style=\"display: inline !important;\"><span style=\"display: inline !important;\"><br></span></span></span></p><p><span style=\"color: rgb(153, 153, 153); font-family: Manrope, sans-serif; font-size: 15px; font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align); display: inline !important;\"><span style=\"display: inline !important;\"><span style=\"display: inline !important;\"><span style=\"display: inline !important;\">You’re not obliged to pay any fee before you earn and we just charge less than 2% on your total earnings if you have membership then it’s less than 1%</span></span></span></span></p><p><span style=\"color: rgb(153, 153, 153); font-family: Manrope, sans-serif; font-size: 15px; font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align); display: inline !important;\"><span style=\"display: inline !important;\"><span style=\"display: inline !important;\"><span style=\"display: inline !important;\"><br></span></span></span></span></p><p><span style=\"color: rgb(153, 153, 153); font-family: Manrope, sans-serif; font-size: 15px; font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align); display: inline !important;\"><span style=\"display: inline !important;\"><span style=\"display: inline !important;\"><span style=\"display: inline !important;\"><span style=\"display: inline !important;\">You’re not obliged to pay any fee before you earn and we just charge less than 2% on your total earnings if you have membership then it’s less than 1%</span><br></span><br></span><br></span><br></span><br></p>', 'on', 'normal_layout', 'nav-absolute', 'on', '02', '01', 'all', 1, '2022-12-21 07:22:54', '2023-11-28 05:25:04');
INSERT INTO `pages` (`id`, `title`, `slug`, `page_content`, `page_builder_status`, `layout`, `page_class`, `breadcrumb_status`, `navbar_variant`, `footer_variant`, `visibility`, `status`, `created_at`, `updated_at`) VALUES
(6, 'Privacy Policy', 'privacy-policy', '<p style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin: 1.25em 0px; color: rgb(55, 65, 81); line-height: 2;\" segoe=\"\" ui\",=\"\" roboto,=\"\" ubuntu,=\"\" cantarell,=\"\" \"noto=\"\" sans\",=\"\" sans-serif,=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" \"segoe=\"\" ui=\"\" symbol\",=\"\" emoji\";=\"\" white-space-collapse:=\"\" preserve;=\"\" background-color:=\"\" rgb(247,=\"\" 247,=\"\" 248);\"=\"\"><span style=\"font-size: 36px;\"><b>Privacy Policy</b></span></p><p style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin: 1.25em 0px; color: rgb(55, 65, 81); font-family: Söhne, ui-sans-serif, system-ui, -apple-system, \" segoe=\"\" ui\",=\"\" roboto,=\"\" ubuntu,=\"\" cantarell,=\"\" \"noto=\"\" sans\",=\"\" sans-serif,=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" \"segoe=\"\" ui=\"\" symbol\",=\"\" emoji\";=\"\" white-space-collapse:=\"\" preserve;=\"\" background-color:=\"\" rgb(247,=\"\" 247,=\"\" 248);\"=\"\"><span style=\"font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align); display: inline !important;\">Welcome to Xilancer, a freelancing platform dedicated to connecting clients with independent professionals globally. We understand the importance of privacy and are committed to protecting the personal information of our users. This Privacy Policy outlines our practices regarding the collection, use, and disclosure of your information when you use our website and services.</span><br></p><p style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin: 1.25em 0px; color: rgb(55, 65, 81); font-family: Söhne, ui-sans-serif, system-ui, -apple-system, \" segoe=\"\" ui\",=\"\" roboto,=\"\" ubuntu,=\"\" cantarell,=\"\" \"noto=\"\" sans\",=\"\" sans-serif,=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" \"segoe=\"\" ui=\"\" symbol\",=\"\" emoji\";=\"\" white-space-collapse:=\"\" preserve;=\"\" background-color:=\"\" rgb(247,=\"\" 247,=\"\" 248);\"=\"\">Please read this policy carefully to understand how we handle your personal information.</p><p style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin: 1.25em 0px; color: rgb(55, 65, 81); font-family: Söhne, ui-sans-serif, system-ui, -apple-system, \" segoe=\"\" ui\",=\"\" roboto,=\"\" ubuntu,=\"\" cantarell,=\"\" \"noto=\"\" sans\",=\"\" sans-serif,=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" \"segoe=\"\" ui=\"\" symbol\",=\"\" emoji\";=\"\" white-space-collapse:=\"\" preserve;=\"\" background-color:=\"\" rgb(247,=\"\" 247,=\"\" 248);\"=\"\"><span style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; font-weight: 600; color: var(--tw-prose-bold);\">1. Information We Collect</span></p><p style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin: 1.25em 0px; color: rgb(55, 65, 81); font-family: Söhne, ui-sans-serif, system-ui, -apple-system, \" segoe=\"\" ui\",=\"\" roboto,=\"\" ubuntu,=\"\" cantarell,=\"\" \"noto=\"\" sans\",=\"\" sans-serif,=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" \"segoe=\"\" ui=\"\" symbol\",=\"\" emoji\";=\"\" white-space-collapse:=\"\" preserve;=\"\" background-color:=\"\" rgb(247,=\"\" 247,=\"\" 248);\"=\"\">We may collect the following types of information:</p><ul style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; list-style-position: initial; list-style-image: initial; margin: 1.25em 0px; padding: 0px; display: flex; flex-direction: column; color: rgb(55, 65, 81); font-family: Söhne, ui-sans-serif, system-ui, -apple-system, \" segoe=\"\" ui\",=\"\" roboto,=\"\" ubuntu,=\"\" cantarell,=\"\" \"noto=\"\" sans\",=\"\" sans-serif,=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" \"segoe=\"\" ui=\"\" symbol\",=\"\" emoji\";=\"\" font-size:=\"\" 16px;=\"\" white-space-collapse:=\"\" preserve;=\"\" background-color:=\"\" rgb(247,=\"\" 247,=\"\" 248);\"=\"\"><li style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin: 0px; padding-left: 0.375em; display: block; min-height: 28px;\"><span style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; font-weight: 600; color: var(--tw-prose-bold); margin-top: 1.25em; margin-bottom: 1.25em;\">Personal Identification Information:</span> Name, email address, phone number, postal address, and other contact details.</li><li style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin: 0px; padding-left: 0.375em; display: block; min-height: 28px;\"><span style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; font-weight: 600; color: var(--tw-prose-bold); margin-top: 1.25em; margin-bottom: 1.25em;\">Professional Information:</span> Resume, work history, educational background, skills, and any other information related to professional qualifications.</li><li style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin: 0px; padding-left: 0.375em; display: block; min-height: 28px;\"><span style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; font-weight: 600; color: var(--tw-prose-bold); margin-top: 1.25em; margin-bottom: 1.25em;\">Financial Information:</span> Payment details, including credit card numbers, bank information, and billing address, which are processed by our secure payment processing partners.</li><li style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin: 0px; padding-left: 0.375em; display: block; min-height: 28px;\"><span style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; font-weight: 600; color: var(--tw-prose-bold); margin-top: 1.25em; margin-bottom: 1.25em;\">Technical Information:</span> IP addresses, browser types, operating system details, device information, and usage data such as website navigation patterns.</li></ul><p style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin: 1.25em 0px; color: rgb(55, 65, 81); font-family: Söhne, ui-sans-serif, system-ui, -apple-system, \" segoe=\"\" ui\",=\"\" roboto,=\"\" ubuntu,=\"\" cantarell,=\"\" \"noto=\"\" sans\",=\"\" sans-serif,=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" \"segoe=\"\" ui=\"\" symbol\",=\"\" emoji\";=\"\" white-space-collapse:=\"\" preserve;=\"\" background-color:=\"\" rgb(247,=\"\" 247,=\"\" 248);\"=\"\"><span style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; font-weight: 600; color: var(--tw-prose-bold);\">2. How We Use Your Information</span></p><p style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin: 1.25em 0px; color: rgb(55, 65, 81); font-family: Söhne, ui-sans-serif, system-ui, -apple-system, \" segoe=\"\" ui\",=\"\" roboto,=\"\" ubuntu,=\"\" cantarell,=\"\" \"noto=\"\" sans\",=\"\" sans-serif,=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" \"segoe=\"\" ui=\"\" symbol\",=\"\" emoji\";=\"\" white-space-collapse:=\"\" preserve;=\"\" background-color:=\"\" rgb(247,=\"\" 247,=\"\" 248);\"=\"\">The information we collect may be used for the following purposes:</p><ul style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; list-style-position: initial; list-style-image: initial; margin: 1.25em 0px; padding: 0px; display: flex; flex-direction: column; color: rgb(55, 65, 81); font-family: Söhne, ui-sans-serif, system-ui, -apple-system, \" segoe=\"\" ui\",=\"\" roboto,=\"\" ubuntu,=\"\" cantarell,=\"\" \"noto=\"\" sans\",=\"\" sans-serif,=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" \"segoe=\"\" ui=\"\" symbol\",=\"\" emoji\";=\"\" font-size:=\"\" 16px;=\"\" white-space-collapse:=\"\" preserve;=\"\" background-color:=\"\" rgb(247,=\"\" 247,=\"\" 248);\"=\"\"><li style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin: 0px; padding-left: 0.375em; display: block; min-height: 28px;\">To facilitate the creation of your account and your access to our services.</li><li style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin: 0px; padding-left: 0.375em; display: block; min-height: 28px;\">To match clients with suitable freelancers and vice versa.</li><li style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin: 0px; padding-left: 0.375em; display: block; min-height: 28px;\">To process payments and manage transactions.</li><li style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin: 0px; padding-left: 0.375em; display: block; min-height: 28px;\">To communicate with you about your account or transactions and to send you updates about our services.</li><li style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin: 0px; padding-left: 0.375em; display: block; min-height: 28px;\">To improve our website functionality and user experience.</li><li style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin: 0px; padding-left: 0.375em; display: block; min-height: 28px;\">To comply with legal obligations and enforce our terms and conditions.</li></ul><p style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin: 1.25em 0px; color: rgb(55, 65, 81); font-family: Söhne, ui-sans-serif, system-ui, -apple-system, \" segoe=\"\" ui\",=\"\" roboto,=\"\" ubuntu,=\"\" cantarell,=\"\" \"noto=\"\" sans\",=\"\" sans-serif,=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" \"segoe=\"\" ui=\"\" symbol\",=\"\" emoji\";=\"\" white-space-collapse:=\"\" preserve;=\"\" background-color:=\"\" rgb(247,=\"\" 247,=\"\" 248);\"=\"\"><span style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; font-weight: 600; color: var(--tw-prose-bold);\">3. Sharing Your Information</span></p><p style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin: 1.25em 0px; color: rgb(55, 65, 81); font-family: Söhne, ui-sans-serif, system-ui, -apple-system, \" segoe=\"\" ui\",=\"\" roboto,=\"\" ubuntu,=\"\" cantarell,=\"\" \"noto=\"\" sans\",=\"\" sans-serif,=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" \"segoe=\"\" ui=\"\" symbol\",=\"\" emoji\";=\"\" white-space-collapse:=\"\" preserve;=\"\" background-color:=\"\" rgb(247,=\"\" 247,=\"\" 248);\"=\"\">We may share your information with:</p><ul style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; list-style-position: initial; list-style-image: initial; margin: 1.25em 0px; padding: 0px; display: flex; flex-direction: column; color: rgb(55, 65, 81); font-family: Söhne, ui-sans-serif, system-ui, -apple-system, \" segoe=\"\" ui\",=\"\" roboto,=\"\" ubuntu,=\"\" cantarell,=\"\" \"noto=\"\" sans\",=\"\" sans-serif,=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" \"segoe=\"\" ui=\"\" symbol\",=\"\" emoji\";=\"\" font-size:=\"\" 16px;=\"\" white-space-collapse:=\"\" preserve;=\"\" background-color:=\"\" rgb(247,=\"\" 247,=\"\" 248);\"=\"\"><li style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin: 0px; padding-left: 0.375em; display: block; min-height: 28px;\">Other users of the site when necessary to facilitate service offerings and collaborations.</li><li style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin: 0px; padding-left: 0.375em; display: block; min-height: 28px;\">Service providers who perform services on our behalf, such as payment processing, data analysis, and email delivery services.</li><li style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin: 0px; padding-left: 0.375em; display: block; min-height: 28px;\">Law enforcement or other government agencies if required by law or in good faith belief that such action is necessary to comply with legal processes.</li></ul><p style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin: 1.25em 0px; color: rgb(55, 65, 81); font-family: Söhne, ui-sans-serif, system-ui, -apple-system, \" segoe=\"\" ui\",=\"\" roboto,=\"\" ubuntu,=\"\" cantarell,=\"\" \"noto=\"\" sans\",=\"\" sans-serif,=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" \"segoe=\"\" ui=\"\" symbol\",=\"\" emoji\";=\"\" white-space-collapse:=\"\" preserve;=\"\" background-color:=\"\" rgb(247,=\"\" 247,=\"\" 248);\"=\"\">We do not sell, rent, or lease our user lists to third parties for their marketing purposes without your explicit consent.</p><p style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin: 1.25em 0px; color: rgb(55, 65, 81); font-family: Söhne, ui-sans-serif, system-ui, -apple-system, \" segoe=\"\" ui\",=\"\" roboto,=\"\" ubuntu,=\"\" cantarell,=\"\" \"noto=\"\" sans\",=\"\" sans-serif,=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" \"segoe=\"\" ui=\"\" symbol\",=\"\" emoji\";=\"\" white-space-collapse:=\"\" preserve;=\"\" background-color:=\"\" rgb(247,=\"\" 247,=\"\" 248);\"=\"\"><span style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; font-weight: 600; color: var(--tw-prose-bold);\">4. Data Security</span></p><p style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin: 1.25em 0px; color: rgb(55, 65, 81); font-family: Söhne, ui-sans-serif, system-ui, -apple-system, \" segoe=\"\" ui\",=\"\" roboto,=\"\" ubuntu,=\"\" cantarell,=\"\" \"noto=\"\" sans\",=\"\" sans-serif,=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" \"segoe=\"\" ui=\"\" symbol\",=\"\" emoji\";=\"\" white-space-collapse:=\"\" preserve;=\"\" background-color:=\"\" rgb(247,=\"\" 247,=\"\" 248);\"=\"\">We implement reasonable security measures to protect against unauthorized access, alteration, disclosure, or destruction of your personal information. However, no method of transmission over the internet or electronic storage is 100% secure, and we cannot guarantee its absolute security.</p><p style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin: 1.25em 0px; color: rgb(55, 65, 81); font-family: Söhne, ui-sans-serif, system-ui, -apple-system, \" segoe=\"\" ui\",=\"\" roboto,=\"\" ubuntu,=\"\" cantarell,=\"\" \"noto=\"\" sans\",=\"\" sans-serif,=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" \"segoe=\"\" ui=\"\" symbol\",=\"\" emoji\";=\"\" white-space-collapse:=\"\" preserve;=\"\" background-color:=\"\" rgb(247,=\"\" 247,=\"\" 248);\"=\"\"><span style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; font-weight: 600; color: var(--tw-prose-bold);\">5. Your Rights</span></p><p style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin: 1.25em 0px; color: rgb(55, 65, 81); font-family: Söhne, ui-sans-serif, system-ui, -apple-system, \" segoe=\"\" ui\",=\"\" roboto,=\"\" ubuntu,=\"\" cantarell,=\"\" \"noto=\"\" sans\",=\"\" sans-serif,=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" \"segoe=\"\" ui=\"\" symbol\",=\"\" emoji\";=\"\" white-space-collapse:=\"\" preserve;=\"\" background-color:=\"\" rgb(247,=\"\" 247,=\"\" 248);\"=\"\">You have the right to:</p><ul style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; list-style-position: initial; list-style-image: initial; margin: 1.25em 0px; padding: 0px; display: flex; flex-direction: column; color: rgb(55, 65, 81); font-family: Söhne, ui-sans-serif, system-ui, -apple-system, \" segoe=\"\" ui\",=\"\" roboto,=\"\" ubuntu,=\"\" cantarell,=\"\" \"noto=\"\" sans\",=\"\" sans-serif,=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" \"segoe=\"\" ui=\"\" symbol\",=\"\" emoji\";=\"\" font-size:=\"\" 16px;=\"\" white-space-collapse:=\"\" preserve;=\"\" background-color:=\"\" rgb(247,=\"\" 247,=\"\" 248);\"=\"\"><li style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin: 0px; padding-left: 0.375em; display: block; min-height: 28px;\">Access, update, or delete the personal information we have on you.</li><li style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin: 0px; padding-left: 0.375em; display: block; min-height: 28px;\">Object to the processing of your personal information.</li><li style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin: 0px; padding-left: 0.375em; display: block; min-height: 28px;\">Request that we restrict the processing of your personal information.</li><li style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin: 0px; padding-left: 0.375em; display: block; min-height: 28px;\">Withdraw consent at any time where we relied on your consent to process your personal information.</li></ul><p style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin: 1.25em 0px; color: rgb(55, 65, 81); font-family: Söhne, ui-sans-serif, system-ui, -apple-system, \" segoe=\"\" ui\",=\"\" roboto,=\"\" ubuntu,=\"\" cantarell,=\"\" \"noto=\"\" sans\",=\"\" sans-serif,=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" \"segoe=\"\" ui=\"\" symbol\",=\"\" emoji\";=\"\" white-space-collapse:=\"\" preserve;=\"\" background-color:=\"\" rgb(247,=\"\" 247,=\"\" 248);\"=\"\"><span style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; font-weight: 600; color: var(--tw-prose-bold);\">6. International Transfers</span></p><p style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin: 1.25em 0px; color: rgb(55, 65, 81); font-family: Söhne, ui-sans-serif, system-ui, -apple-system, \" segoe=\"\" ui\",=\"\" roboto,=\"\" ubuntu,=\"\" cantarell,=\"\" \"noto=\"\" sans\",=\"\" sans-serif,=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" \"segoe=\"\" ui=\"\" symbol\",=\"\" emoji\";=\"\" white-space-collapse:=\"\" preserve;=\"\" background-color:=\"\" rgb(247,=\"\" 247,=\"\" 248);\"=\"\">Your information may be transferred to, and maintained on, computers located outside of your state, province, country, or other governmental jurisdiction where the data protection laws may differ from those of your jurisdiction.</p><p style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin: 1.25em 0px; color: rgb(55, 65, 81); font-family: Söhne, ui-sans-serif, system-ui, -apple-system, \" segoe=\"\" ui\",=\"\" roboto,=\"\" ubuntu,=\"\" cantarell,=\"\" \"noto=\"\" sans\",=\"\" sans-serif,=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" \"segoe=\"\" ui=\"\" symbol\",=\"\" emoji\";=\"\" white-space-collapse:=\"\" preserve;=\"\" background-color:=\"\" rgb(247,=\"\" 247,=\"\" 248);\"=\"\"><span style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; font-weight: 600; color: var(--tw-prose-bold);\">7. Changes to This Privacy Policy</span></p><p style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin: 1.25em 0px; color: rgb(55, 65, 81); font-family: Söhne, ui-sans-serif, system-ui, -apple-system, \" segoe=\"\" ui\",=\"\" roboto,=\"\" ubuntu,=\"\" cantarell,=\"\" \"noto=\"\" sans\",=\"\" sans-serif,=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" \"segoe=\"\" ui=\"\" symbol\",=\"\" emoji\";=\"\" white-space-collapse:=\"\" preserve;=\"\" background-color:=\"\" rgb(247,=\"\" 247,=\"\" 248);\"=\"\">We may update this Privacy Policy from time to time. We will notify you of any changes by posting the new Privacy Policy on this page. We encourage you to review this Privacy Policy periodically for any changes.</p><p style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin: 1.25em 0px; color: rgb(55, 65, 81); font-family: Söhne, ui-sans-serif, system-ui, -apple-system, \" segoe=\"\" ui\",=\"\" roboto,=\"\" ubuntu,=\"\" cantarell,=\"\" \"noto=\"\" sans\",=\"\" sans-serif,=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" \"segoe=\"\" ui=\"\" symbol\",=\"\" emoji\";=\"\" white-space-collapse:=\"\" preserve;=\"\" background-color:=\"\" rgb(247,=\"\" 247,=\"\" 248);\"=\"\"><span style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; font-weight: 600; color: var(--tw-prose-bold);\">8. Contact Us</span></p><p style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin: 1.25em 0px; color: rgb(55, 65, 81); font-family: Söhne, ui-sans-serif, system-ui, -apple-system, \" segoe=\"\" ui\",=\"\" roboto,=\"\" ubuntu,=\"\" cantarell,=\"\" \"noto=\"\" sans\",=\"\" sans-serif,=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" \"segoe=\"\" ui=\"\" symbol\",=\"\" emoji\";=\"\" white-space-collapse:=\"\" preserve;=\"\" background-color:=\"\" rgb(247,=\"\" 247,=\"\" 248);\"=\"\">If you have any questions about this Privacy Policy, please contact us:</p><ul style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; list-style-position: initial; list-style-image: initial; margin: 1.25em 0px; padding: 0px; display: flex; flex-direction: column; color: rgb(55, 65, 81); font-family: Söhne, ui-sans-serif, system-ui, -apple-system, \" segoe=\"\" ui\",=\"\" roboto,=\"\" ubuntu,=\"\" cantarell,=\"\" \"noto=\"\" sans\",=\"\" sans-serif,=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" \"segoe=\"\" ui=\"\" symbol\",=\"\" emoji\";=\"\" font-size:=\"\" 16px;=\"\" white-space-collapse:=\"\" preserve;=\"\" background-color:=\"\" rgb(247,=\"\" 247,=\"\" 248);\"=\"\"><li style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin: 0px; padding-left: 0.375em; display: block; min-height: 28px;\">By email: [Insert Email Address]</li><li style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin: 0px; padding-left: 0.375em; display: block; min-height: 28px;\">By visiting this page on our website: [Insert Privacy Policy Page URL]</li></ul><p style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin: 1.25em 0px; color: rgb(55, 65, 81); font-family: Söhne, ui-sans-serif, system-ui, -apple-system, \" segoe=\"\" ui\",=\"\" roboto,=\"\" ubuntu,=\"\" cantarell,=\"\" \"noto=\"\" sans\",=\"\" sans-serif,=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" \"segoe=\"\" ui=\"\" symbol\",=\"\" emoji\";=\"\" white-space-collapse:=\"\" preserve;=\"\" background-color:=\"\" rgb(247,=\"\" 247,=\"\" 248);\"=\"\"><span style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; font-weight: 600; color: var(--tw-prose-bold);\">Consent</span></p><p style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin: 1.25em 0px; color: rgb(55, 65, 81); font-family: Söhne, ui-sans-serif, system-ui, -apple-system, \" segoe=\"\" ui\",=\"\" roboto,=\"\" ubuntu,=\"\" cantarell,=\"\" \"noto=\"\" sans\",=\"\" sans-serif,=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" \"segoe=\"\" ui=\"\" symbol\",=\"\" emoji\";=\"\" white-space-collapse:=\"\" preserve;=\"\" background-color:=\"\" rgb(247,=\"\" 247,=\"\" 248);\"=\"\">By using our website and services, you consent to the collection, use, and sharing of your personal information as outlined in this Privacy Policy.</p><p style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-top: 1.25em; margin-right: 0px; margin-left: 0px; color: rgb(55, 65, 81); font-family: Söhne, ui-sans-serif, system-ui, -apple-system, \" segoe=\"\" ui\",=\"\" roboto,=\"\" ubuntu,=\"\" cantarell,=\"\" \"noto=\"\" sans\",=\"\" sans-serif,=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" \"segoe=\"\" ui=\"\" symbol\",=\"\" emoji\";=\"\" white-space-collapse:=\"\" preserve;=\"\" background-color:=\"\" rgb(247,=\"\" 247,=\"\" 248);\"=\"\">This Privacy Policy is intended to be a general template and may need to be tailored to comply with the laws of your jurisdiction or to suit the specific operations of your website or application. It is advisable to consult with a legal expert when drafting your actual privacy policy.</p>', NULL, 'normal_layout', 'none', 'on', NULL, '01', 'all', 1, '2022-12-28 01:51:06', '2023-11-28 00:05:11');
INSERT INTO `pages` (`id`, `title`, `slug`, `page_content`, `page_builder_status`, `layout`, `page_class`, `breadcrumb_status`, `navbar_variant`, `footer_variant`, `visibility`, `status`, `created_at`, `updated_at`) VALUES
(7, 'Home Page One', 'home-page-one', '<p>asdaui sasd aosidj laksdj aklsdj alkfjsdoijqoi aslkd aslkdj asoidj asoidj asd jmoriopi posdf aspod kaspod jaspodij asdiopja siopdjasoid jaspodi jaspdas fdpasoqwe k rokasodk aspodk asdasd asd</p>', 'on', 'home_page_layout', 'none', NULL, '01', '01', 'all', 1, '2023-10-26 05:33:00', '2024-01-17 06:22:19');
INSERT INTO `pages` (`id`, `title`, `slug`, `page_content`, `page_builder_status`, `layout`, `page_class`, `breadcrumb_status`, `navbar_variant`, `footer_variant`, `visibility`, `status`, `created_at`, `updated_at`) VALUES
(8, 'About Us', 'about-us', '<p style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-right: 0px; margin-bottom: 1.25em; margin-left: 0px; color: rgb(55, 65, 81); font-family: Söhne, ui-sans-serif, system-ui, -apple-system, \"Segoe UI\", Roboto, Ubuntu, Cantarell, \"Noto Sans\", sans-serif, \"Helvetica Neue\", Arial, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol\", \"Noto Color Emoji\"; white-space-collapse: preserve; background-color: rgb(247, 247, 248);\"><span style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; font-weight: 600; color: var(--tw-prose-bold);\">About Us</span></p><p style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin: 1.25em 0px; color: rgb(55, 65, 81); font-family: Söhne, ui-sans-serif, system-ui, -apple-system, \"Segoe UI\", Roboto, Ubuntu, Cantarell, \"Noto Sans\", sans-serif, \"Helvetica Neue\", Arial, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol\", \"Noto Color Emoji\"; white-space-collapse: preserve; background-color: rgb(247, 247, 248);\">Welcome to [Your Freelancing Website Name], where talent meets opportunity.</p><h3 style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; font-size: 1.25em; font-weight: 600; margin-top: 1rem; margin-bottom: 0.5rem; line-height: 1.6; font-family: Söhne, ui-sans-serif, system-ui, -apple-system, \"Segoe UI\", Roboto, Ubuntu, Cantarell, \"Noto Sans\", sans-serif, \"Helvetica Neue\", Arial, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol\", \"Noto Color Emoji\"; white-space-collapse: preserve; background-color: rgb(247, 247, 248);\"><span style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; color: inherit;\">Our Story</span></h3><p style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-right: 0px; margin-bottom: 1.25em; margin-left: 0px; color: rgb(55, 65, 81); font-family: Söhne, ui-sans-serif, system-ui, -apple-system, \"Segoe UI\", Roboto, Ubuntu, Cantarell, \"Noto Sans\", sans-serif, \"Helvetica Neue\", Arial, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol\", \"Noto Color Emoji\"; white-space-collapse: preserve; background-color: rgb(247, 247, 248);\">In the bustling digital age, where connectivity is as simple as a click, we found that the true potential of freelance talent was still untapped. Established in [Year], our platform was born from a simple yet powerful vision: to create a seamless bridge between gifted freelancers and visionary businesses.</p><p style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin: 1.25em 0px; color: rgb(55, 65, 81); font-family: Söhne, ui-sans-serif, system-ui, -apple-system, \"Segoe UI\", Roboto, Ubuntu, Cantarell, \"Noto Sans\", sans-serif, \"Helvetica Neue\", Arial, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol\", \"Noto Color Emoji\"; white-space-collapse: preserve; background-color: rgb(247, 247, 248);\">We recognized the hurdles of the gig economy – the uncertainty, the competition, the often-impersonal interactions – and set out to craft a solution that would empower both freelancers and clients alike.</p><h3 style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; font-size: 1.25em; font-weight: 600; margin-top: 1rem; margin-bottom: 0.5rem; line-height: 1.6; font-family: Söhne, ui-sans-serif, system-ui, -apple-system, \"Segoe UI\", Roboto, Ubuntu, Cantarell, \"Noto Sans\", sans-serif, \"Helvetica Neue\", Arial, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol\", \"Noto Color Emoji\"; white-space-collapse: preserve; background-color: rgb(247, 247, 248);\"><span style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; color: inherit;\">Our Mission</span></h3><p style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-right: 0px; margin-bottom: 1.25em; margin-left: 0px; color: rgb(55, 65, 81); font-family: Söhne, ui-sans-serif, system-ui, -apple-system, \"Segoe UI\", Roboto, Ubuntu, Cantarell, \"Noto Sans\", sans-serif, \"Helvetica Neue\", Arial, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol\", \"Noto Color Emoji\"; white-space-collapse: preserve; background-color: rgb(247, 247, 248);\">At [Your Freelancing Website Name], we\'re not just building a marketplace; we\'re cultivating a community. Our mission is to facilitate a professional environment where freelancers can thrive, businesses can innovate, and collaboration can flourish.</p><h3 style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; font-size: 1.25em; font-weight: 600; margin-top: 1rem; margin-bottom: 0.5rem; line-height: 1.6; font-family: Söhne, ui-sans-serif, system-ui, -apple-system, \"Segoe UI\", Roboto, Ubuntu, Cantarell, \"Noto Sans\", sans-serif, \"Helvetica Neue\", Arial, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol\", \"Noto Color Emoji\"; white-space-collapse: preserve; background-color: rgb(247, 247, 248);\"><span style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; color: inherit;\">Our Values</span></h3><p style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-right: 0px; margin-bottom: 1.25em; margin-left: 0px; color: rgb(55, 65, 81); font-family: Söhne, ui-sans-serif, system-ui, -apple-system, \"Segoe UI\", Roboto, Ubuntu, Cantarell, \"Noto Sans\", sans-serif, \"Helvetica Neue\", Arial, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol\", \"Noto Color Emoji\"; white-space-collapse: preserve; background-color: rgb(247, 247, 248);\"><span style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; font-weight: 600; color: var(--tw-prose-bold);\">Integrity</span>: We believe in honest and transparent communication, ensuring that every interaction on our platform is conducted with the utmost respect and professionalism.</p><p style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin: 1.25em 0px; color: rgb(55, 65, 81); font-family: Söhne, ui-sans-serif, system-ui, -apple-system, \"Segoe UI\", Roboto, Ubuntu, Cantarell, \"Noto Sans\", sans-serif, \"Helvetica Neue\", Arial, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol\", \"Noto Color Emoji\"; white-space-collapse: preserve; background-color: rgb(247, 247, 248);\"><span style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; font-weight: 600; color: var(--tw-prose-bold);\">Innovation</span>: Staying ahead of the curve is in our DNA. We constantly seek out new ways to enhance your experience, simplify processes, and enable success.</p><p style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin: 1.25em 0px; color: rgb(55, 65, 81); font-family: Söhne, ui-sans-serif, system-ui, -apple-system, \"Segoe UI\", Roboto, Ubuntu, Cantarell, \"Noto Sans\", sans-serif, \"Helvetica Neue\", Arial, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol\", \"Noto Color Emoji\"; white-space-collapse: preserve; background-color: rgb(247, 247, 248);\"><span style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; font-weight: 600; color: var(--tw-prose-bold);\">Excellence</span>: Our commitment to quality is unwavering. We meticulously curate our pool of talent and the projects that come through our platform, guaranteeing a standard of excellence that is second to none.</p><p style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin: 1.25em 0px; color: rgb(55, 65, 81); font-family: Söhne, ui-sans-serif, system-ui, -apple-system, \"Segoe UI\", Roboto, Ubuntu, Cantarell, \"Noto Sans\", sans-serif, \"Helvetica Neue\", Arial, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol\", \"Noto Color Emoji\"; white-space-collapse: preserve; background-color: rgb(247, 247, 248);\"><span style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; font-weight: 600; color: var(--tw-prose-bold);\">Community</span>: We understand the power of connection. That\'s why we foster a supportive network of professionals who share advice, offer mentorship, and help each other grow.</p><h3 style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; font-size: 1.25em; font-weight: 600; margin-top: 1rem; margin-bottom: 0.5rem; line-height: 1.6; font-family: Söhne, ui-sans-serif, system-ui, -apple-system, \"Segoe UI\", Roboto, Ubuntu, Cantarell, \"Noto Sans\", sans-serif, \"Helvetica Neue\", Arial, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol\", \"Noto Color Emoji\"; white-space-collapse: preserve; background-color: rgb(247, 247, 248);\"><span style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; color: inherit;\">Our Community</span></h3><p style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-right: 0px; margin-bottom: 1.25em; margin-left: 0px; color: rgb(55, 65, 81); font-family: Söhne, ui-sans-serif, system-ui, -apple-system, \"Segoe UI\", Roboto, Ubuntu, Cantarell, \"Noto Sans\", sans-serif, \"Helvetica Neue\", Arial, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol\", \"Noto Color Emoji\"; white-space-collapse: preserve; background-color: rgb(247, 247, 248);\">Our freelancers are the heartbeat of our platform. They are writers, designers, developers, marketers, consultants, and more – each bringing a unique set of skills and a passion for their craft.</p><p style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin: 1.25em 0px; color: rgb(55, 65, 81); font-family: Söhne, ui-sans-serif, system-ui, -apple-system, \"Segoe UI\", Roboto, Ubuntu, Cantarell, \"Noto Sans\", sans-serif, \"Helvetica Neue\", Arial, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol\", \"Noto Color Emoji\"; white-space-collapse: preserve; background-color: rgb(247, 247, 248);\">Our clients range from startups to Fortune 500 companies, all seeking the perfect match for their project needs. Together, they span the globe, creating a diverse and dynamic tapestry of cultures and ideas.</p><h3 style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; font-size: 1.25em; font-weight: 600; margin-top: 1rem; margin-bottom: 0.5rem; line-height: 1.6; font-family: Söhne, ui-sans-serif, system-ui, -apple-system, \"Segoe UI\", Roboto, Ubuntu, Cantarell, \"Noto Sans\", sans-serif, \"Helvetica Neue\", Arial, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol\", \"Noto Color Emoji\"; white-space-collapse: preserve; background-color: rgb(247, 247, 248);\"><span style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; color: inherit;\">Our Promise</span></h3><p style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-right: 0px; margin-bottom: 1.25em; margin-left: 0px; color: rgb(55, 65, 81); font-family: Söhne, ui-sans-serif, system-ui, -apple-system, \"Segoe UI\", Roboto, Ubuntu, Cantarell, \"Noto Sans\", sans-serif, \"Helvetica Neue\", Arial, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol\", \"Noto Color Emoji\"; white-space-collapse: preserve; background-color: rgb(247, 247, 248);\">To Freelancers: We promise to provide you with a platform where you can showcase your skills, set your rates, and connect with clients who value what you do.</p><p style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin: 1.25em 0px; color: rgb(55, 65, 81); font-family: Söhne, ui-sans-serif, system-ui, -apple-system, \"Segoe UI\", Roboto, Ubuntu, Cantarell, \"Noto Sans\", sans-serif, \"Helvetica Neue\", Arial, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol\", \"Noto Color Emoji\"; white-space-collapse: preserve; background-color: rgb(247, 247, 248);\">To Clients: We promise a curated selection of top-tier freelancers who are not only talented but also reliable and ready to help bring your projects to life.</p><h3 style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; font-size: 1.25em; font-weight: 600; margin-top: 1rem; margin-bottom: 0.5rem; line-height: 1.6; font-family: Söhne, ui-sans-serif, system-ui, -apple-system, \"Segoe UI\", Roboto, Ubuntu, Cantarell, \"Noto Sans\", sans-serif, \"Helvetica Neue\", Arial, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol\", \"Noto Color Emoji\"; white-space-collapse: preserve; background-color: rgb(247, 247, 248);\"><span style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; color: inherit;\">Join Us</span></h3><p style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-right: 0px; margin-bottom: 1.25em; margin-left: 0px; color: rgb(55, 65, 81); font-family: Söhne, ui-sans-serif, system-ui, -apple-system, \"Segoe UI\", Roboto, Ubuntu, Cantarell, \"Noto Sans\", sans-serif, \"Helvetica Neue\", Arial, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol\", \"Noto Color Emoji\"; white-space-collapse: preserve; background-color: rgb(247, 247, 248);\">Whether you\'re a freelancer looking to take your career to new heights or a business in search of the right talent to complete your next project, [Your Freelancing Website Name] is your partner in success. Explore our site, join our community, and let\'s make something incredible together.</p><p style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin: 1.25em 0px; color: rgb(55, 65, 81); font-family: Söhne, ui-sans-serif, system-ui, -apple-system, \"Segoe UI\", Roboto, Ubuntu, Cantarell, \"Noto Sans\", sans-serif, \"Helvetica Neue\", Arial, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol\", \"Noto Color Emoji\"; white-space-collapse: preserve; background-color: rgb(247, 247, 248);\">Because here, we believe that when great minds collaborate, the possibilities are endless.</p><hr style=\"border-top-width: 1px; border-style: solid; border-color: var(--tw-prose-hr); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; color: rgb(55, 65, 81); height: 0px; margin-top: 3em; margin-bottom: 3em; font-family: Söhne, ui-sans-serif, system-ui, -apple-system, \"Segoe UI\", Roboto, Ubuntu, Cantarell, \"Noto Sans\", sans-serif, \"Helvetica Neue\", Arial, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol\", \"Noto Color Emoji\"; font-size: 16px; white-space-collapse: preserve; background-color: rgb(247, 247, 248);\"><p style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-right: 0px; margin-left: 0px; color: rgb(55, 65, 81); font-family: Söhne, ui-sans-serif, system-ui, -apple-system, \"Segoe UI\", Roboto, Ubuntu, Cantarell, \"Noto Sans\", sans-serif, \"Helvetica Neue\", Arial, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol\", \"Noto Color Emoji\"; white-space-collapse: preserve; background-color: rgb(247, 247, 248);\">This sample is meant to be inspirational and should be customized to align with the specific brand voice, value proposition, and unique selling points of your freelancing website.</p>', 'on', 'normal_layout', 'none', 'on', NULL, '01', 'all', 1, '2023-11-02 06:43:42', '2023-11-19 07:42:47');
INSERT INTO `pages` (`id`, `title`, `slug`, `page_content`, `page_builder_status`, `layout`, `page_class`, `breadcrumb_status`, `navbar_variant`, `footer_variant`, `visibility`, `status`, `created_at`, `updated_at`) VALUES
(9, 'Terms Conditions', 'terms-conditions', '<p><span style=\"font-size: 36px;\">Terms Conditions</span><br><br><br>Welcome to Xilancer, a freelancing platform dedicated to connecting clients with independent professionals globally. We understand the importance of privacy and are committed to protecting the personal information of our users. This Privacy Policy outlines our practices regarding the collection, use, and disclosure of your information when you use our website and services.<br><br>Please read this policy carefully to understand how we handle your persona﻿l information.<br><br>1. Information We Collect<br><br>We may collect the following types of information:<br><br>&nbsp;&nbsp;&nbsp; Personal Identification Information: Name, email address, phone number, postal address, and other contact details.<br>&nbsp;&nbsp;&nbsp; Professional Information: Resume, work history, educational background, skills, and any other information related to professional qualifications.<br>&nbsp;&nbsp;&nbsp; Financial Information: Payment details, including credit card numbers, bank information, and billing address, which are processed by our secure payment processing partners.<br>&nbsp;&nbsp;&nbsp; Technical Information: IP addresses, browser types, operating system details, device information, and usage data such as website navigation patterns.<br><br>2. How We Use Your Information<br><br>The information we collect may be used for the following purposes:<br><br>&nbsp;&nbsp;&nbsp; To facilitate the creation of your account and your access to our services.<br>&nbsp;&nbsp;&nbsp; To match clients with suitable freelancers and vice versa.<br>&nbsp;&nbsp;&nbsp; To process payments and manage transactions.<br>&nbsp;&nbsp;&nbsp; To communicate with you about your account or transactions and to send you updates about our services.<br>&nbsp;&nbsp;&nbsp; To improve our website functionality and user experience.<br>&nbsp;&nbsp;&nbsp; To comply with legal obligations and enforce our terms and conditions.<br><br>3. Sharing Your Information<br><br>We may share your information with:<br><br>&nbsp;&nbsp;&nbsp; Other users of the site when necessary to facilitate service offerings and collaborations.<br>&nbsp;&nbsp;&nbsp; Service providers who perform services on our behalf, such as payment processing, data analysis, and email delivery services.<br>Law enforcement or other government agencies if required by law or in good faith belief that such action is necessary to comply with legal processes.<br><br>We do not sell, rent, or lease our user lists to third parties for their marketing purposes without your explicit consent.<br><br>4. Data Security<br><br>We implement reasonable security measures to protect against unauthorized access, alteration, disclosure, or destruction of your personal information. However, no method of transmission over the internet or electronic storage is 100% secure, and we cannot guarantee its absolute security.<br><br>5. Your Rights<br><br>You have the right to:<br><br>&nbsp;&nbsp;&nbsp; Access, update, or delete the personal information we have on you.<br>&nbsp;&nbsp;&nbsp; Object to the processing of your personal information.<br>&nbsp;&nbsp;&nbsp; Request that we restrict the processing of your personal information.<br>&nbsp;&nbsp;&nbsp; Withdraw consent at any time where we relied on your consent to process your personal information.<br><br>6. International Transfers<br><br>Your information may be transferred to, and maintained on, computers located outside of your state, province, country, or other governmental jurisdiction where the data protection laws may differ from those of your jurisdiction.<br><br>7. Changes to This Privacy Policy<br><br>We may update this Privacy Policy from time to time. We will notify you of any changes by posting the new Privacy Policy on this page. We encourage you to review this Privacy Policy periodically for any changes.<br><br>8. Contact Us<br><br>If you have any questions about this Privacy Policy, please contact us:<br><br>&nbsp;&nbsp;&nbsp; By email: [Insert Email Address]<br>&nbsp;&nbsp;&nbsp; By visiting this page on our website: [Insert Privacy Policy Page URL]<br><br>Consent<br><br>By using our website and services, you consent to the collection, use, and sharing of your personal information as outlined in this Privacy Policy.<br><br>This Privacy Policy is intended to be a general template and may need to be tailored to comply with the laws of your jurisdiction or to suit the specific operations of your website or application. It is advisable to consult with a legal expert when drafting your actual privacy policy.<br></p>', NULL, 'normal_layout', NULL, NULL, NULL, '01', 'all', 1, '2024-03-10 16:36:03', '2024-03-10 16:36:03');

-- --------------------------------------------------------

--
-- Table structure for table `page_builders`
--

CREATE TABLE `page_builders` (
  `id` bigint UNSIGNED NOT NULL,
  `addon_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `addon_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `addon_namespace` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `addon_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `addon_order` bigint UNSIGNED DEFAULT NULL,
  `addon_page_id` bigint UNSIGNED DEFAULT NULL,
  `addon_page_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `addon_settings` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_builders`
--

INSERT INTO `page_builders` (`id`, `addon_name`, `addon_type`, `addon_namespace`, `addon_location`, `addon_order`, `addon_page_id`, `addon_page_type`, `addon_settings`, `created_at`, `updated_at`) VALUES
(3, 'HeaderStyleOne', 'update', 'plugins\\PageBuilder\\Addons\\Header\\HeaderStyleOne', 'dynamic_page', 1, 7, 'dynamic_page', 'a:21:{s:2:\"id\";s:1:\"3\";s:10:\"addon_name\";s:14:\"HeaderStyleOne\";s:15:\"addon_namespace\";s:64:\"cGx1Z2luc1xQYWdlQnVpbGRlclxBZGRvbnNcSGVhZGVyXEhlYWRlclN0eWxlT25l\";s:10:\"addon_type\";s:6:\"update\";s:14:\"addon_location\";s:12:\"dynamic_page\";s:11:\"addon_order\";s:1:\"1\";s:13:\"addon_page_id\";s:1:\"7\";s:15:\"addon_page_type\";s:12:\"dynamic_page\";s:5:\"title\";s:47:\"Work from anywhere, Get the freedom you deserve\";s:8:\"subtitle\";s:131:\"Get hired by great clients and businesses around the world and work independently as you want. Pay just 1-2% fees on your earnings.\";s:21:\"find_work_button_text\";N;s:24:\"find_project_button_text\";N;s:27:\"top_freelancer_of_the_month\";N;s:12:\"slider_image\";N;s:15:\"shape_image_one\";s:3:\"123\";s:15:\"shape_image_two\";s:3:\"124\";s:16:\"background_image\";N;s:11:\"padding_top\";s:2:\"64\";s:14:\"padding_bottom\";s:2:\"59\";s:10:\"section_bg\";N;s:10:\"trusted_by\";a:1:{s:5:\"logo_\";a:5:{i:0;s:2:\"94\";i:1;s:2:\"92\";i:2;s:2:\"91\";i:3;s:2:\"90\";i:4;s:2:\"93\";}}}', '2023-10-26 00:25:40', '2024-02-19 07:33:46'),
(4, 'WhyOurMarketplace', 'update', 'plugins\\PageBuilder\\Addons\\WhyOurMarketplace\\WhyOurMarketplace', 'dynamic_page', 2, 7, 'dynamic_page', 'a:13:{s:2:\"id\";s:1:\"4\";s:10:\"addon_name\";s:17:\"WhyOurMarketplace\";s:15:\"addon_namespace\";s:84:\"cGx1Z2luc1xQYWdlQnVpbGRlclxBZGRvbnNcV2h5T3VyTWFya2V0cGxhY2VcV2h5T3VyTWFya2V0cGxhY2U=\";s:10:\"addon_type\";s:6:\"update\";s:14:\"addon_location\";s:12:\"dynamic_page\";s:11:\"addon_order\";s:1:\"2\";s:13:\"addon_page_id\";s:1:\"7\";s:15:\"addon_page_type\";s:12:\"dynamic_page\";s:5:\"title\";s:25:\"Why work in our platform?\";s:11:\"padding_top\";s:3:\"100\";s:14:\"padding_bottom\";s:2:\"50\";s:10:\"section_bg\";N;s:21:\"why_choose_our_market\";a:2:{s:6:\"image_\";a:4:{i:0;s:2:\"67\";i:1;s:2:\"66\";i:2;s:2:\"68\";i:3;s:2:\"69\";}s:6:\"title_\";a:4:{i:0;s:25:\"19K+ Jobs Posted Everyday\";i:1;s:29:\"8K+ Globally Verified Clients\";i:2;s:31:\"We Take Little to No Commission\";i:3;s:28:\"Get Certificates of Earnings\";}}}', '2023-10-26 00:59:44', '2024-02-19 07:36:04'),
(5, 'PopularJobOne', 'update', 'plugins\\PageBuilder\\Addons\\Job\\PopularJobOne', 'dynamic_page', 4, 7, 'dynamic_page', 'a:13:{s:2:\"id\";s:1:\"5\";s:10:\"addon_name\";s:13:\"PopularJobOne\";s:15:\"addon_namespace\";s:60:\"cGx1Z2luc1xQYWdlQnVpbGRlclxBZGRvbnNcSm9iXFBvcHVsYXJKb2JPbmU=\";s:10:\"addon_type\";s:6:\"update\";s:14:\"addon_location\";s:12:\"dynamic_page\";s:11:\"addon_order\";s:1:\"3\";s:13:\"addon_page_id\";s:1:\"7\";s:15:\"addon_page_type\";s:12:\"dynamic_page\";s:5:\"title\";s:11:\"Recent Jobs\";s:5:\"items\";s:2:\"10\";s:11:\"padding_top\";s:2:\"61\";s:14:\"padding_bottom\";s:2:\"60\";s:10:\"section_bg\";N;}', '2023-10-26 01:09:17', '2023-11-28 04:46:07'),
(6, 'TestimonialOne', 'update', 'plugins\\PageBuilder\\Addons\\Testimonial\\TestimonialOne', 'dynamic_page', 5, 7, 'dynamic_page', 'a:14:{s:2:\"id\";s:1:\"6\";s:10:\"addon_name\";s:14:\"TestimonialOne\";s:15:\"addon_namespace\";s:72:\"cGx1Z2luc1xQYWdlQnVpbGRlclxBZGRvbnNcVGVzdGltb25pYWxcVGVzdGltb25pYWxPbmU=\";s:10:\"addon_type\";s:6:\"update\";s:14:\"addon_location\";s:12:\"dynamic_page\";s:11:\"addon_order\";s:1:\"5\";s:13:\"addon_page_id\";s:1:\"7\";s:15:\"addon_page_type\";s:12:\"dynamic_page\";s:5:\"title\";s:38:\"What Freelancers are Thinking About Us\";s:18:\"slider_button_text\";N;s:5:\"items\";s:1:\"5\";s:11:\"padding_top\";s:3:\"100\";s:14:\"padding_bottom\";s:3:\"100\";s:10:\"section_bg\";N;}', '2023-10-26 01:22:31', '2024-02-19 07:44:23'),
(7, 'FaqOne', 'update', 'plugins\\PageBuilder\\Addons\\Faq\\FaqOne', 'dynamic_page', 7, 7, 'dynamic_page', 'a:15:{s:2:\"id\";s:1:\"7\";s:10:\"addon_name\";s:6:\"FaqOne\";s:15:\"addon_namespace\";s:52:\"cGx1Z2luc1xQYWdlQnVpbGRlclxBZGRvbnNcRmFxXEZhcU9uZQ==\";s:10:\"addon_type\";s:6:\"update\";s:14:\"addon_location\";s:12:\"dynamic_page\";s:11:\"addon_order\";s:1:\"7\";s:13:\"addon_page_id\";s:1:\"7\";s:15:\"addon_page_type\";s:12:\"dynamic_page\";s:13:\"section_title\";s:25:\"Frequently Asked Question\";s:9:\"sub_title\";s:82:\"Didn’t find the right answer? here you can ask your own questions to our support\";s:5:\"image\";s:2:\"72\";s:11:\"padding_top\";s:3:\"100\";s:14:\"padding_bottom\";s:2:\"50\";s:10:\"section_bg\";N;s:3:\"faq\";a:2:{s:6:\"title_\";a:5:{i:0;s:37:\"How much commission do I need to pay?\";i:1;s:33:\"How membership subscription work?\";i:2;s:53:\"What are the benefits of joining Freelancer platform?\";i:3;s:43:\"Do I need to pay extra fees for withdrawal?\";i:4;s:26:\"What’s the closure time?\";}s:12:\"description_\";a:5:{i:0;s:154:\"You’re not obliged to pay any fee before you earn and we just charge less than 2% on your total earnings if you have membership then it’s less than 1%\";i:1;s:154:\"You’re not obliged to pay any fee before you earn and we just charge less than 2% on your total earnings if you have membership then it’s less than 1%\";i:2;s:154:\"You’re not obliged to pay any fee before you earn and we just charge less than 2% on your total earnings if you have membership then it’s less than 1%\";i:3;s:154:\"You’re not obliged to pay any fee before you earn and we just charge less than 2% on your total earnings if you have membership then it’s less than 1%\";i:4;s:154:\"You’re not obliged to pay any fee before you earn and we just charge less than 2% on your total earnings if you have membership then it’s less than 1%\";}}}', '2023-10-26 01:28:32', '2024-02-19 07:51:18'),
(8, 'PricePlanOne', 'update', 'plugins\\PageBuilder\\Addons\\PricePlan\\PricePlanOne', 'dynamic_page', 8, 7, 'dynamic_page', 'a:12:{s:2:\"id\";s:1:\"8\";s:10:\"addon_name\";s:12:\"PricePlanOne\";s:15:\"addon_namespace\";s:68:\"cGx1Z2luc1xQYWdlQnVpbGRlclxBZGRvbnNcUHJpY2VQbGFuXFByaWNlUGxhbk9uZQ==\";s:10:\"addon_type\";s:6:\"update\";s:14:\"addon_location\";s:12:\"dynamic_page\";s:11:\"addon_order\";s:1:\"8\";s:13:\"addon_page_id\";s:1:\"7\";s:15:\"addon_page_type\";s:12:\"dynamic_page\";s:5:\"title\";s:10:\"Price Plan\";s:10:\"section_bg\";N;s:11:\"padding_top\";s:2:\"50\";s:14:\"padding_bottom\";s:2:\"50\";}', '2023-10-26 01:34:03', '2024-02-19 07:57:12'),
(9, 'NewsLetterOne', 'update', 'plugins\\PageBuilder\\Addons\\NewsLetter\\NewsLetterOne', 'dynamic_page', 10, 7, 'dynamic_page', 'a:14:{s:2:\"id\";s:1:\"9\";s:10:\"addon_name\";s:13:\"NewsLetterOne\";s:15:\"addon_namespace\";s:68:\"cGx1Z2luc1xQYWdlQnVpbGRlclxBZGRvbnNcTmV3c0xldHRlclxOZXdzTGV0dGVyT25l\";s:10:\"addon_type\";s:6:\"update\";s:14:\"addon_location\";s:12:\"dynamic_page\";s:11:\"addon_order\";s:1:\"7\";s:13:\"addon_page_id\";s:1:\"7\";s:15:\"addon_page_type\";s:12:\"dynamic_page\";s:5:\"title\";s:67:\"Join the club of hundreds of other Freelancers working with freedom\";s:9:\"sub_title\";s:102:\"Get discounts and newsletters on our hotels in your email. We promise to not spam. Unsubscribe anytime\";s:5:\"image\";s:2:\"70\";s:11:\"padding_top\";s:3:\"100\";s:14:\"padding_bottom\";s:3:\"100\";s:10:\"section_bg\";N;}', '2023-10-27 17:31:28', '2024-01-17 06:31:50'),
(10, 'BrandOne', 'update', 'plugins\\PageBuilder\\Addons\\Brand\\BrandOne', 'dynamic_page', 11, 7, 'dynamic_page', 'a:12:{s:2:\"id\";s:2:\"10\";s:10:\"addon_name\";s:8:\"BrandOne\";s:15:\"addon_namespace\";s:56:\"cGx1Z2luc1xQYWdlQnVpbGRlclxBZGRvbnNcQnJhbmRcQnJhbmRPbmU=\";s:10:\"addon_type\";s:6:\"update\";s:14:\"addon_location\";s:12:\"dynamic_page\";s:11:\"addon_order\";s:1:\"8\";s:13:\"addon_page_id\";s:1:\"7\";s:15:\"addon_page_type\";s:12:\"dynamic_page\";s:11:\"padding_top\";s:2:\"50\";s:14:\"padding_bottom\";s:2:\"50\";s:10:\"section_bg\";N;s:10:\"brand_logo\";a:1:{s:6:\"brand_\";a:7:{i:0;s:3:\"100\";i:1;s:2:\"99\";i:2;s:2:\"98\";i:3;s:2:\"96\";i:4;s:2:\"95\";i:5;s:2:\"97\";i:6;s:2:\"98\";}}}', '2023-10-27 17:35:54', '2024-01-17 06:31:50'),
(12, 'ContactMessage', 'update', 'plugins\\PageBuilder\\Addons\\Contact\\ContactMessage', 'dynamic_page', 1, 2, 'dynamic_page', 'a:16:{s:2:\"id\";s:2:\"12\";s:10:\"addon_name\";s:14:\"ContactMessage\";s:15:\"addon_namespace\";s:68:\"cGx1Z2luc1xQYWdlQnVpbGRlclxBZGRvbnNcQ29udGFjdFxDb250YWN0TWVzc2FnZQ==\";s:10:\"addon_type\";s:6:\"update\";s:14:\"addon_location\";s:12:\"dynamic_page\";s:11:\"addon_order\";s:1:\"1\";s:13:\"addon_page_id\";s:1:\"2\";s:15:\"addon_page_type\";s:12:\"dynamic_page\";s:7:\"heading\";s:10:\"Contact Us\";s:16:\"contact_form_des\";s:90:\"Feel free to contact with us if you have any query or face any issues to use this website.\";s:5:\"title\";s:12:\"Contact Info\";s:16:\"contact_info_des\";s:83:\"Also you can use quick contact details. Our team will response as soon as possible.\";s:12:\"contact_info\";a:3:{s:5:\"icon_\";a:5:{i:0;s:21:\"fas fa-map-marker-alt\";i:1;s:12:\"fas fa-phone\";i:2;s:12:\"fas fa-phone\";i:3;s:15:\"fas fa-envelope\";i:4;s:12:\"fas fa-clock\";}s:6:\"title_\";a:5:{i:0;s:7:\"Address\";i:1;s:12:\"Phone Number\";i:2;s:15:\"Phone Number(2)\";i:3;s:13:\"Email Address\";i:4;s:14:\"Business Hours\";}s:12:\"description_\";a:5:{i:0;s:34:\"8502 Preston Wood, Oregon Michigan\";i:1;s:12:\"(629)5550129\";i:2;s:12:\"(088)5532129\";i:3;s:24:\"bill.senders@example.com\";i:4;s:26:\"(GMT +6) 10:00am - 07:00pm\";}}s:11:\"padding_top\";s:3:\"191\";s:14:\"padding_bottom\";s:3:\"190\";s:14:\"custom_form_id\";s:1:\"1\";}', '2023-10-30 19:18:39', '2023-11-28 06:10:30'),
(13, 'AboutUs', 'update', 'plugins\\PageBuilder\\Addons\\About\\AboutUs', 'dynamic_page', 1, 8, 'dynamic_page', 'a:15:{s:2:\"id\";s:2:\"13\";s:10:\"addon_name\";s:7:\"AboutUs\";s:15:\"addon_namespace\";s:56:\"cGx1Z2luc1xQYWdlQnVpbGRlclxBZGRvbnNcQWJvdXRcQWJvdXRVcw==\";s:10:\"addon_type\";s:6:\"update\";s:14:\"addon_location\";s:12:\"dynamic_page\";s:11:\"addon_order\";s:1:\"1\";s:13:\"addon_page_id\";s:1:\"8\";s:15:\"addon_page_type\";s:12:\"dynamic_page\";s:13:\"section_title\";s:8:\"About Us\";s:11:\"description\";s:880:\"<p style=\"text-align: left; line-height: 1.6;\"><span style=\"font-weight: normal;\">Welcome to Xilancer, where dynamic connections between talented freelancers and visionary clients. Our platform is a vibrant marketplace designed to elevate the way freelancers and clients collaborate, innovate, and succeed.</span></p><p style=\"text-align: left; line-height: 1.6;\"><span style=\"font-weight: normal;\"><span style=\"text-align: var(--bs-body-text-align); display: inline !important;\"><br></span></span></p><p style=\"text-align: left; line-height: 1.6;\"><span style=\"font-weight: normal; text-align: var(--bs-body-text-align); color: var(--light-color); display: inline !important;\">At Xilancer, we envision a world where every project, big or small, finds its perfect match. We\'re here to break down barriers, empower creativity, and redefine the future of work.</span><br></p><p></p>\";s:11:\"creditility\";a:2:{s:6:\"title_\";a:3:{i:0;s:3:\"39K\";i:1;s:3:\"60K\";i:2;s:3:\"50K\";}s:12:\"description_\";a:3:{i:0;s:23:\"Clients working with us\";i:1;s:27:\"Freelancers working with us\";i:2;s:16:\"Orders processed\";}}s:5:\"image\";s:3:\"116\";s:11:\"padding_top\";s:3:\"100\";s:14:\"padding_bottom\";s:3:\"100\";s:10:\"section_bg\";s:16:\"rgb(201, 38, 38)\";}', '2023-11-18 00:30:12', '2024-02-19 08:40:41'),
(14, 'WhatWeDo', 'update', 'plugins\\PageBuilder\\Addons\\About\\WhatWeDo', 'dynamic_page', 2, 8, 'dynamic_page', 'a:15:{s:2:\"id\";s:2:\"14\";s:10:\"addon_name\";s:8:\"WhatWeDo\";s:15:\"addon_namespace\";s:56:\"cGx1Z2luc1xQYWdlQnVpbGRlclxBZGRvbnNcQWJvdXRcV2hhdFdlRG8=\";s:10:\"addon_type\";s:6:\"update\";s:14:\"addon_location\";s:12:\"dynamic_page\";s:11:\"addon_order\";s:1:\"2\";s:13:\"addon_page_id\";s:1:\"8\";s:15:\"addon_page_type\";s:12:\"dynamic_page\";s:13:\"section_title\";s:11:\"What we do?\";s:8:\"subtitle\";s:162:\"Xilancer is your seamless gateway to connect clients with exceptional freelancers. We curate a diverse talent pool, streamline collaboration with efficient tools.\";s:5:\"image\";s:2:\"82\";s:9:\"video_url\";s:43:\"https://www.youtube.com/watch?v=NJqnhqWt2Jc\";s:11:\"padding_top\";s:3:\"100\";s:14:\"padding_bottom\";s:2:\"50\";s:10:\"section_bg\";s:18:\"rgb(255, 255, 255)\";}', '2023-11-18 00:32:13', '2024-02-19 08:42:53'),
(17, 'Team', 'update', 'plugins\\PageBuilder\\Addons\\About\\Team', 'dynamic_page', 4, 8, 'dynamic_page', 'a:14:{s:2:\"id\";s:2:\"17\";s:10:\"addon_name\";s:4:\"Team\";s:15:\"addon_namespace\";s:52:\"cGx1Z2luc1xQYWdlQnVpbGRlclxBZGRvbnNcQWJvdXRcVGVhbQ==\";s:10:\"addon_type\";s:6:\"update\";s:14:\"addon_location\";s:12:\"dynamic_page\";s:11:\"addon_order\";s:1:\"4\";s:13:\"addon_page_id\";s:1:\"8\";s:15:\"addon_page_type\";s:12:\"dynamic_page\";s:13:\"section_title\";s:26:\"Meet our  hardworking team\";s:8:\"subtitle\";N;s:11:\"padding_top\";s:3:\"100\";s:14:\"padding_bottom\";s:3:\"100\";s:10:\"section_bg\";N;s:4:\"team\";a:3:{s:6:\"image_\";a:5:{i:0;s:3:\"105\";i:1;s:3:\"104\";i:2;s:3:\"103\";i:3;s:3:\"102\";i:4;s:3:\"101\";}s:5:\"name_\";a:5:{i:0;s:13:\"Md Siam Ahmed\";i:1;s:15:\"Mohammad Shahin\";i:2;s:12:\"Nazmul Hoque\";i:3;s:16:\"Md Riyad Hossain\";i:4;s:14:\"Md Zahid Hasan\";}s:12:\"designation_\";a:5:{i:0;s:17:\"Webflow Developer\";i:1;s:12:\"Web Designer\";i:2;s:9:\"Developer\";i:3;s:14:\"Html Developer\";i:4;s:9:\"Developer\";}}}', '2023-11-18 01:11:45', '2024-02-19 08:45:27'),
(18, 'PopularProjectOne', 'update', 'plugins\\PageBuilder\\Addons\\Project\\PopularProjectOne', 'dynamic_page', 3, 7, 'dynamic_page', 'a:13:{s:2:\"id\";s:2:\"18\";s:10:\"addon_name\";s:17:\"PopularProjectOne\";s:15:\"addon_namespace\";s:72:\"cGx1Z2luc1xQYWdlQnVpbGRlclxBZGRvbnNcUHJvamVjdFxQb3B1bGFyUHJvamVjdE9uZQ==\";s:10:\"addon_type\";s:6:\"update\";s:14:\"addon_location\";s:12:\"dynamic_page\";s:11:\"addon_order\";s:1:\"3\";s:13:\"addon_page_id\";s:1:\"7\";s:15:\"addon_page_type\";s:12:\"dynamic_page\";s:5:\"title\";s:12:\"Top Projects\";s:5:\"items\";s:1:\"5\";s:11:\"padding_top\";s:2:\"50\";s:14:\"padding_bottom\";s:2:\"50\";s:10:\"section_bg\";N;}', '2023-11-25 05:15:02', '2024-02-19 07:39:07'),
(19, 'Credit', 'update', 'plugins\\PageBuilder\\Addons\\About\\Credit', 'dynamic_page', 3, 8, 'dynamic_page', 'a:12:{s:2:\"id\";s:2:\"19\";s:10:\"addon_name\";s:6:\"Credit\";s:15:\"addon_namespace\";s:52:\"cGx1Z2luc1xQYWdlQnVpbGRlclxBZGRvbnNcQWJvdXRcQ3JlZGl0\";s:10:\"addon_type\";s:6:\"update\";s:14:\"addon_location\";s:12:\"dynamic_page\";s:11:\"addon_order\";s:1:\"3\";s:13:\"addon_page_id\";s:1:\"8\";s:15:\"addon_page_type\";s:12:\"dynamic_page\";s:6:\"credit\";a:2:{s:6:\"title_\";a:3:{i:0;s:3:\"49K\";i:1;s:4:\"$50M\";i:2;s:3:\"09X\";}s:12:\"description_\";a:3:{i:0;s:45:\"Jobs we have handled in our Xilancer platform\";i:1;s:47:\"Earned by Freelancers in our platform till date\";i:2;s:47:\"Awards received in IT for excellence in service\";}}s:11:\"padding_top\";s:2:\"50\";s:14:\"padding_bottom\";s:3:\"100\";s:10:\"section_bg\";N;}', '2023-11-27 04:32:01', '2024-02-19 08:44:17'),
(20, 'CategoryProjectOne', 'update', 'plugins\\PageBuilder\\Addons\\Category\\CategoryProjectOne', 'dynamic_page', 6, 7, 'dynamic_page', 'a:14:{s:2:\"id\";s:2:\"20\";s:10:\"addon_name\";s:18:\"CategoryProjectOne\";s:15:\"addon_namespace\";s:72:\"cGx1Z2luc1xQYWdlQnVpbGRlclxBZGRvbnNcQ2F0ZWdvcnlcQ2F0ZWdvcnlQcm9qZWN0T25l\";s:10:\"addon_type\";s:6:\"update\";s:14:\"addon_location\";s:12:\"dynamic_page\";s:11:\"addon_order\";s:1:\"6\";s:13:\"addon_page_id\";s:1:\"7\";s:15:\"addon_page_type\";s:12:\"dynamic_page\";s:5:\"title\";N;s:5:\"items\";s:2:\"10\";s:18:\"slider_button_text\";N;s:11:\"padding_top\";s:2:\"50\";s:14:\"padding_bottom\";s:2:\"50\";s:10:\"section_bg\";N;}', '2024-01-17 06:31:37', '2024-02-19 07:48:08'),
(21, 'CategoryJobOne', 'update', 'plugins\\PageBuilder\\Addons\\Category\\CategoryJobOne', 'dynamic_page', 9, 7, 'dynamic_page', 'a:14:{s:2:\"id\";s:2:\"21\";s:10:\"addon_name\";s:14:\"CategoryJobOne\";s:15:\"addon_namespace\";s:68:\"cGx1Z2luc1xQYWdlQnVpbGRlclxBZGRvbnNcQ2F0ZWdvcnlcQ2F0ZWdvcnlKb2JPbmU=\";s:10:\"addon_type\";s:6:\"update\";s:14:\"addon_location\";s:12:\"dynamic_page\";s:11:\"addon_order\";s:1:\"9\";s:13:\"addon_page_id\";s:1:\"7\";s:15:\"addon_page_type\";s:12:\"dynamic_page\";s:5:\"title\";N;s:5:\"items\";s:2:\"10\";s:18:\"slider_button_text\";N;s:11:\"padding_top\";s:2:\"50\";s:14:\"padding_bottom\";s:2:\"50\";s:10:\"section_bg\";N;}', '2024-01-17 06:31:55', '2024-02-19 07:59:11');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `menu_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `menu_name`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Category', 'category-list', 'admin', '2023-10-22 01:16:30', '2023-10-22 01:16:30'),
(2, 'Category', 'category-add', 'admin', '2023-10-22 01:16:30', '2023-10-22 01:16:30'),
(3, 'Category', 'category-edit', 'admin', '2023-10-22 01:16:31', '2023-10-22 01:16:31'),
(4, 'Category', 'category-delete', 'admin', '2023-10-22 01:16:31', '2023-10-22 01:16:31'),
(5, 'Category', 'category-status-change', 'admin', '2023-10-22 01:16:31', '2023-10-22 01:16:31'),
(6, 'Category', 'category-bulk-delete', 'admin', '2023-10-22 01:16:31', '2023-10-22 01:16:31'),
(7, 'Subcategory', 'subcategory-list', 'admin', '2023-10-22 01:18:53', '2023-10-22 01:18:53'),
(8, 'Subcategory', 'subcategory-add', 'admin', '2023-10-22 01:18:53', '2023-10-22 01:18:53'),
(9, 'Subcategory', 'subcategory-edit', 'admin', '2023-10-22 01:18:53', '2023-10-22 01:18:53'),
(10, 'Subcategory', 'subcategory-delete', 'admin', '2023-10-22 01:18:53', '2023-10-22 01:18:53'),
(11, 'Subcategory', 'subcategory-status-change', 'admin', '2023-10-22 01:18:53', '2023-10-22 01:18:53'),
(12, 'Subcategory', 'subcategory-bulk-delete', 'admin', '2023-10-22 01:18:53', '2023-10-22 01:18:53'),
(13, 'Skill', 'skill-list', 'admin', '2023-10-22 01:20:00', '2023-10-22 01:20:00'),
(14, 'Skill', 'skill-add', 'admin', '2023-10-22 01:20:00', '2023-10-22 01:20:00'),
(15, 'Skill', 'skill-edit', 'admin', '2023-10-22 01:20:00', '2023-10-22 01:20:00'),
(16, 'Skill', 'skill-delete', 'admin', '2023-10-22 01:20:00', '2023-10-22 01:20:00'),
(17, 'Skill', 'skill-status-change', 'admin', '2023-10-22 01:20:00', '2023-10-22 01:20:00'),
(18, 'Skill', 'skill-bulk-delete', 'admin', '2023-10-22 01:20:00', '2023-10-22 01:20:00'),
(19, 'Country', 'country-list', 'admin', '2023-10-22 01:25:54', '2023-10-22 01:25:54'),
(20, 'Country', 'country-add', 'admin', '2023-10-22 01:25:54', '2023-10-22 01:25:54'),
(21, 'Country', 'country-edit', 'admin', '2023-10-22 01:25:54', '2023-10-22 01:25:54'),
(22, 'Country', 'country-delete', 'admin', '2023-10-22 01:25:54', '2023-10-22 01:25:54'),
(23, 'Country', 'country-status-change', 'admin', '2023-10-22 01:25:54', '2023-10-22 01:25:54'),
(24, 'Country', 'country-bulk-delete', 'admin', '2023-10-22 01:25:54', '2023-10-22 01:25:54'),
(25, 'Country', 'country-csv-file-import', 'admin', '2023-10-22 01:25:54', '2023-10-22 01:25:54'),
(26, 'State', 'state-list', 'admin', '2023-10-22 01:26:48', '2023-10-22 01:26:48'),
(27, 'State', 'state-add', 'admin', '2023-10-22 01:26:48', '2023-10-22 01:26:48'),
(28, 'State', 'state-edit', 'admin', '2023-10-22 01:26:48', '2023-10-22 01:26:48'),
(29, 'State', 'state-delete', 'admin', '2023-10-22 01:26:48', '2023-10-22 01:26:48'),
(30, 'State', 'state-status-change', 'admin', '2023-10-22 01:26:48', '2023-10-22 01:26:48'),
(31, 'State', 'state-bulk-delete', 'admin', '2023-10-22 01:26:48', '2023-10-22 01:26:48'),
(32, 'State', 'state-csv-file-import', 'admin', '2023-10-22 01:26:48', '2023-10-22 01:26:48'),
(33, 'City', 'city-list', 'admin', '2023-10-22 01:27:12', '2023-10-22 01:27:12'),
(34, 'City', 'city-add', 'admin', '2023-10-22 01:27:12', '2023-10-22 01:27:12'),
(35, 'City', 'city-edit', 'admin', '2023-10-22 01:27:12', '2023-10-22 01:27:12'),
(36, 'City', 'city-delete', 'admin', '2023-10-22 01:27:12', '2023-10-22 01:27:12'),
(37, 'City', 'city-status-change', 'admin', '2023-10-22 01:27:13', '2023-10-22 01:27:13'),
(38, 'City', 'city-bulk-delete', 'admin', '2023-10-22 01:27:13', '2023-10-22 01:27:13'),
(39, 'City', 'city-csv-file-import', 'admin', '2023-10-22 01:27:13', '2023-10-22 01:27:13'),
(40, 'Project', 'project-list', 'admin', '2023-10-22 01:33:18', '2023-10-22 01:33:18'),
(41, 'Project', 'project-delete', 'admin', '2023-10-22 01:33:18', '2023-10-22 01:33:18'),
(42, 'Project', 'project-details', 'admin', '2023-10-22 01:33:18', '2023-10-22 01:33:18'),
(43, 'Project', 'project-reject', 'admin', '2023-10-22 01:33:19', '2023-10-22 01:33:19'),
(44, 'Project', 'project-status-change', 'admin', '2023-10-22 01:33:19', '2023-10-22 01:33:19'),
(45, 'Project', 'project-history-list', 'admin', '2023-10-22 01:35:30', '2023-10-22 01:35:30'),
(46, 'Job', 'job-list', 'admin', '2023-10-22 01:51:58', '2023-10-22 01:51:58'),
(47, 'Job', 'job-details', 'admin', '2023-10-22 01:51:58', '2023-10-22 01:51:58'),
(48, 'Job', 'job-delete', 'admin', '2023-10-22 01:51:58', '2023-10-22 01:51:58'),
(49, 'Job', 'job-status-change', 'admin', '2023-10-22 01:51:58', '2023-10-22 01:51:58'),
(50, 'Job', 'job-auto-approval', 'admin', '2023-10-22 01:51:59', '2023-10-22 01:51:59'),
(51, 'Job', 'job-history-list', 'admin', '2023-10-22 01:51:59', '2023-10-22 01:51:59'),
(52, 'Wallet', 'deposit-list', 'admin', '2023-10-22 01:58:28', '2023-10-22 01:58:28'),
(53, 'Wallet', 'deposit-settings-view', 'admin', '2023-10-22 01:58:28', '2023-10-22 01:58:28'),
(54, 'Wallet', 'deposit-settings-update', 'admin', '2023-10-22 01:58:28', '2023-10-22 01:58:28'),
(55, 'Wallet', 'deposit-history-details', 'admin', '2023-10-22 01:58:28', '2023-10-22 01:58:28'),
(56, 'Wallet', 'complete-manual-deposit-status', 'admin', '2023-10-22 01:58:28', '2023-10-22 01:58:28'),
(57, 'Withdraw', 'withdraw-list', 'admin', '2023-10-22 02:03:25', '2023-10-22 02:03:25'),
(58, 'Withdraw', 'withdraw-settings-view', 'admin', '2023-10-22 02:03:25', '2023-10-22 02:03:25'),
(59, 'Withdraw', 'withdraw-settings-update', 'admin', '2023-10-22 02:03:25', '2023-10-22 02:03:25'),
(60, 'Withdraw', 'withdraw-status-change', 'admin', '2023-10-22 02:03:25', '2023-10-22 02:03:25'),
(61, 'Withdraw', 'withdraw-payment-gateway-list', 'admin', '2023-10-22 02:03:25', '2023-10-22 02:03:25'),
(62, 'Withdraw', 'withdraw-payment-gateway-add', 'admin', '2023-10-22 02:03:25', '2023-10-22 02:03:25'),
(63, 'Withdraw', 'withdraw-payment-gateway-edit', 'admin', '2023-10-22 02:03:25', '2023-10-22 02:03:25'),
(64, 'Withdraw', 'withdraw-payment-gateway-delete', 'admin', '2023-10-22 02:03:25', '2023-10-22 02:03:25'),
(65, 'Withdraw', 'withdraw-payment-status-change', 'admin', '2023-10-22 02:03:25', '2023-10-22 02:03:25'),
(66, 'Subscription', 'subscription-type-list', 'admin', '2023-10-22 03:18:59', '2023-10-22 03:18:59'),
(67, 'Subscription', 'subscription-type-add', 'admin', '2023-10-22 03:18:59', '2023-10-22 03:18:59'),
(68, 'Subscription', 'subscription-type-edit', 'admin', '2023-10-22 03:18:59', '2023-10-22 03:18:59'),
(69, 'Subscription', 'subscription-type-delete', 'admin', '2023-10-22 03:18:59', '2023-10-22 03:18:59'),
(70, 'Subscription', 'subscription-type-bulk-delete', 'admin', '2023-10-22 03:18:59', '2023-10-22 03:18:59'),
(71, 'Subscription', 'subscription-list', 'admin', '2023-10-22 03:18:59', '2023-10-22 03:18:59'),
(72, 'Subscription', 'subscription-add', 'admin', '2023-10-22 03:18:59', '2023-10-22 03:18:59'),
(73, 'Subscription', 'subscription-edit', 'admin', '2023-10-22 03:18:59', '2023-10-22 03:18:59'),
(74, 'Subscription', 'subscription-delete', 'admin', '2023-10-22 03:18:59', '2023-10-22 03:18:59'),
(75, 'Subscription', 'subscription-bulk-delete', 'admin', '2023-10-22 03:18:59', '2023-10-22 03:18:59'),
(76, 'Subscription', 'subscription-status-change', 'admin', '2023-10-22 03:18:59', '2023-10-22 03:18:59'),
(77, 'Subscription', 'subscription-connect-settings-view', 'admin', '2023-10-22 03:18:59', '2023-10-22 03:18:59'),
(78, 'Subscription', 'subscription-connect-settings-update', 'admin', '2023-10-22 03:18:59', '2023-10-22 03:18:59'),
(79, 'User Subscription', 'user-subscription-list', 'admin', '2023-10-22 03:23:39', '2023-10-22 03:23:39'),
(80, 'User Subscription', 'user-subscription-status-change', 'admin', '2023-10-22 03:23:39', '2023-10-22 03:23:39'),
(81, 'User Subscription', 'user-active-subscription', 'admin', '2023-10-22 03:23:39', '2023-10-22 03:23:39'),
(82, 'User Subscription', 'user-inactive-subscription', 'admin', '2023-10-22 03:23:40', '2023-10-22 03:23:40'),
(83, 'User Subscription', 'user-manual-subscription', 'admin', '2023-10-22 03:23:40', '2023-10-22 03:23:40'),
(84, 'Transaction Fee', 'transaction-fee-settings-view', 'admin', '2023-10-22 03:28:15', '2023-10-22 03:28:15'),
(85, 'Transaction Fee', 'transaction-fee-settings-update', 'admin', '2023-10-22 03:28:15', '2023-10-22 03:28:15'),
(86, 'Withdraw Fee', 'withdraw-fee-settings-view', 'admin', '2023-10-22 03:28:38', '2023-10-22 03:28:38'),
(87, 'Withdraw Fee', 'withdraw-fee-settings-update', 'admin', '2023-10-22 03:28:38', '2023-10-22 03:28:38'),
(88, 'Admin Commission', 'admin-commission-settings-view', 'admin', '2023-10-22 03:30:49', '2023-10-22 03:30:49'),
(89, 'Admin Commission', 'admin-commission-settings-update', 'admin', '2023-10-22 03:30:49', '2023-10-22 03:30:49'),
(90, 'Order', 'order-list', 'admin', '2023-10-22 03:38:10', '2023-10-22 03:38:10'),
(91, 'Order', 'order-details', 'admin', '2023-10-22 03:38:10', '2023-10-22 03:38:10'),
(92, 'Order', 'order-hold', 'admin', '2023-10-22 03:38:10', '2023-10-22 03:38:10'),
(93, 'Order', 'order-active', 'admin', '2023-10-22 03:38:10', '2023-10-22 03:38:10'),
(94, 'Order', 'order-queue', 'admin', '2023-10-22 03:38:10', '2023-10-22 03:38:10'),
(95, 'Order', 'order-deliver', 'admin', '2023-10-22 03:38:10', '2023-10-22 03:38:10'),
(96, 'Order', 'order-complete', 'admin', '2023-10-22 03:38:10', '2023-10-22 03:38:10'),
(97, 'Order', 'order-cancel', 'admin', '2023-10-22 03:38:10', '2023-10-22 03:38:10'),
(98, 'Order', 'order-decline', 'admin', '2023-10-22 03:38:10', '2023-10-22 03:38:10'),
(99, 'Order', 'order-manual-payment-status-update', 'admin', '2023-10-22 03:38:10', '2023-10-22 03:38:10'),
(100, 'Department', 'department-list', 'admin', '2023-10-22 03:59:01', '2023-10-22 03:59:01'),
(101, 'Department', 'department-add', 'admin', '2023-10-22 03:59:01', '2023-10-22 03:59:01'),
(102, 'Department', 'department-edit', 'admin', '2023-10-22 03:59:01', '2023-10-22 03:59:01'),
(103, 'Department', 'department-delete', 'admin', '2023-10-22 03:59:01', '2023-10-22 03:59:01'),
(104, 'Department', 'department-bulk-delete', 'admin', '2023-10-22 03:59:01', '2023-10-22 03:59:01'),
(105, 'Department', 'department-status-update', 'admin', '2023-10-22 03:59:01', '2023-10-22 03:59:01'),
(106, 'Support Ticket', 'support-ticket-list', 'admin', '2023-10-22 04:19:55', '2023-10-22 04:19:55'),
(107, 'Support Ticket', 'support-ticket-details', 'admin', '2023-10-22 04:19:55', '2023-10-22 04:19:55'),
(108, 'Support Ticket', 'support-ticket-delete', 'admin', '2023-10-22 04:19:55', '2023-10-22 04:19:55'),
(109, 'Support Ticket', 'support-ticket-bulk-action', 'admin', '2023-10-22 04:19:55', '2023-10-22 04:19:55'),
(110, 'Support Ticket', 'support-ticket-status-change', 'admin', '2023-10-22 04:19:55', '2023-10-22 04:19:55'),
(111, 'Support Ticket', 'support-ticket-reply', 'admin', '2023-10-22 04:19:55', '2023-10-22 04:19:55'),
(112, 'Support Ticket', 'support-ticket-close', 'admin', '2023-10-22 04:19:56', '2023-10-22 04:19:56'),
(113, 'Notification', 'notification-list', 'admin', '2023-10-22 04:21:17', '2023-10-22 04:21:17'),
(114, 'Notification', 'notification-details', 'admin', '2023-10-22 04:21:17', '2023-10-22 04:21:17'),
(115, 'User Manage', 'user-list', 'admin', '2023-10-22 04:47:01', '2023-10-22 04:47:01'),
(116, 'User Manage', 'user-details', 'admin', '2023-10-22 04:47:01', '2023-10-22 04:47:01'),
(117, 'User Manage', 'user-details-update', 'admin', '2023-10-22 04:47:01', '2023-10-22 04:47:01'),
(118, 'User Manage', 'user-identity-details', 'admin', '2023-10-22 04:47:01', '2023-10-22 04:47:01'),
(119, 'User Manage', 'user-identity-decline', 'admin', '2023-10-22 04:47:01', '2023-10-22 04:47:01'),
(120, 'User Manage', 'user-identity-status-update', 'admin', '2023-10-22 04:47:01', '2023-10-22 04:47:01'),
(121, 'User Manage', 'user-password-change', 'admin', '2023-10-22 04:47:01', '2023-10-22 04:47:01'),
(122, 'User Manage', 'user-delete', 'admin', '2023-10-22 04:47:01', '2023-10-22 04:47:01'),
(123, 'User Manage', 'user-account-status-change', 'admin', '2023-10-22 04:47:01', '2023-10-22 04:47:01'),
(124, 'User Manage', 'user-individual-commission-settings', 'admin', '2023-10-22 04:47:01', '2023-10-22 04:47:01'),
(125, 'User Manage', 'user-account-suspend-page', 'admin', '2023-10-22 04:47:01', '2023-10-22 04:47:01'),
(126, 'User Manage', 'user-account-suspend', 'admin', '2023-10-22 04:47:01', '2023-10-22 04:47:01'),
(127, 'User Manage', 'user-trash-list', 'admin', '2023-10-22 04:49:01', '2023-10-22 04:49:01'),
(128, 'User Manage', 'user-restore-from-trash-list', 'admin', '2023-10-22 04:49:01', '2023-10-22 04:49:01'),
(129, 'Page Text Settings', 'login-page-settings-view', 'admin', '2023-10-22 05:12:33', '2023-10-22 05:12:33'),
(130, 'Page Text Settings', 'login-page-settings-update', 'admin', '2023-10-22 05:12:33', '2023-10-22 05:12:33'),
(131, 'Page Text Settings', 'register-page-settings-view', 'admin', '2023-10-22 05:12:33', '2023-10-22 05:12:33'),
(132, 'Page Text Settings', 'register-page-settings-update', 'admin', '2023-10-22 05:12:33', '2023-10-22 05:12:33'),
(133, 'Page Text Settings', 'account-page-settings-view', 'admin', '2023-10-22 05:12:33', '2023-10-22 05:12:33'),
(134, 'Page Text Settings', 'account-page-settings-update', 'admin', '2023-10-22 05:12:33', '2023-10-22 05:12:33'),
(135, 'Page Text Settings', 'introduction-page-settings-view', 'admin', '2023-10-22 05:12:33', '2023-10-22 05:12:33'),
(136, 'Page Text Settings', 'introduction-page-settings-update', 'admin', '2023-10-22 05:12:34', '2023-10-22 05:12:34'),
(137, 'Page Text Settings', 'experience-page-settings-view', 'admin', '2023-10-22 05:12:34', '2023-10-22 05:12:34'),
(138, 'Page Text Settings', 'experience-page-settings-update', 'admin', '2023-10-22 05:12:34', '2023-10-22 05:12:34'),
(139, 'Page Text Settings', 'education-page-settings-view', 'admin', '2023-10-22 05:12:34', '2023-10-22 05:12:34'),
(140, 'Page Text Settings', 'education-page-settings-update', 'admin', '2023-10-22 05:12:34', '2023-10-22 05:12:34'),
(141, 'Page Text Settings', 'work-page-settings-view', 'admin', '2023-10-22 05:12:34', '2023-10-22 05:12:34'),
(142, 'Page Text Settings', 'work-page-settings-update', 'admin', '2023-10-22 05:12:34', '2023-10-22 05:12:34'),
(143, 'Page Text Settings', 'skill-page-settings-view', 'admin', '2023-10-22 05:12:34', '2023-10-22 05:12:34'),
(144, 'Page Text Settings', 'skill-page-settings-update', 'admin', '2023-10-22 05:12:34', '2023-10-22 05:12:34'),
(145, 'Page Text Settings', 'photo-page-settings-view', 'admin', '2023-10-22 05:12:34', '2023-10-22 05:12:34'),
(146, 'Page Text Settings', 'photo-page-settings-update', 'admin', '2023-10-22 05:12:34', '2023-10-22 05:12:34'),
(147, 'General Settings', 'reading', 'admin', '2023-10-22 05:58:58', '2023-10-22 05:58:58'),
(148, 'General Settings', 'navbar-global-variant', 'admin', '2023-10-22 05:58:58', '2023-10-22 05:58:58'),
(149, 'General Settings', 'footer-global-variant', 'admin', '2023-10-22 05:58:58', '2023-10-22 05:58:58'),
(150, 'General Settings', 'site-identity', 'admin', '2023-10-22 05:58:58', '2023-10-22 05:58:58'),
(151, 'General Settings', 'basic-settings', 'admin', '2023-10-22 05:58:58', '2023-10-22 05:58:58'),
(152, 'General Settings', 'color-settings', 'admin', '2023-10-22 05:58:58', '2023-10-22 05:58:58'),
(153, 'General Settings', 'typography-settings', 'admin', '2023-10-22 05:58:58', '2023-10-22 05:58:58'),
(154, 'General Settings', 'seo-settings', 'admin', '2023-10-22 05:58:58', '2023-10-22 05:58:58'),
(155, 'General Settings', 'third-party-script-settings', 'admin', '2023-10-22 05:58:58', '2023-10-22 05:58:58'),
(156, 'General Settings', 'social-login-settings', 'admin', '2023-10-22 05:58:58', '2023-10-22 05:58:58'),
(157, 'General Settings', 'email-template-settings', 'admin', '2023-10-22 05:58:58', '2023-10-22 05:58:58'),
(158, 'General Settings', 'smtp-settings', 'admin', '2023-10-22 05:58:58', '2023-10-22 05:58:58'),
(159, 'General Settings', 'custom-css-settings', 'admin', '2023-10-22 05:58:59', '2023-10-22 05:58:59'),
(160, 'General Settings', 'custom-js-settings', 'admin', '2023-10-22 05:58:59', '2023-10-22 05:58:59'),
(161, 'General Settings', 'gdpr-settings', 'admin', '2023-10-22 05:58:59', '2023-10-22 05:58:59'),
(162, 'General Settings', 'licence-settings', 'admin', '2023-10-22 05:58:59', '2023-10-22 05:58:59'),
(163, 'General Settings', 'cache-settings', 'admin', '2023-10-22 05:58:59', '2023-10-22 05:58:59'),
(164, 'General Settings', 'database-upgrade', 'admin', '2023-10-22 05:58:59', '2023-10-22 05:58:59'),
(165, 'Payment Gateway Settings', 'payment-info-settings', 'admin', '2023-10-22 06:03:42', '2023-10-22 06:03:42'),
(166, 'Payment Gateway Settings', 'payment-gateway-settings', 'admin', '2023-10-22 06:03:42', '2023-10-22 06:03:42'),
(167, 'Menu Builder', 'menu-list', 'admin', '2023-10-22 06:20:10', '2023-10-22 06:20:10'),
(168, 'Menu Builder', 'menu-add', 'admin', '2023-10-22 06:20:10', '2023-10-22 06:20:10'),
(169, 'Menu Builder', 'menu-edit', 'admin', '2023-10-22 06:20:10', '2023-10-22 06:20:10'),
(170, 'Menu Builder', 'menu-delete', 'admin', '2023-10-22 06:20:10', '2023-10-22 06:20:10'),
(171, 'Form Builder', 'form-list', 'admin', '2023-10-22 06:27:24', '2023-10-22 06:27:24'),
(172, 'Form Builder', 'form-add', 'admin', '2023-10-22 06:27:24', '2023-10-22 06:27:24'),
(173, 'Form Builder', 'form-edit', 'admin', '2023-10-22 06:27:24', '2023-10-22 06:27:24'),
(174, 'Form Builder', 'form-delete', 'admin', '2023-10-22 06:27:24', '2023-10-22 06:27:24'),
(175, 'Form Builder', 'form-bulk-delete', 'admin', '2023-10-22 06:27:24', '2023-10-22 06:27:24'),
(176, 'Widget Builder', 'widget-list', 'admin', '2023-10-22 06:35:42', '2023-10-22 06:35:42'),
(177, 'Widget Builder', 'widget-add', 'admin', '2023-10-22 06:35:42', '2023-10-22 06:35:42'),
(178, 'Widget Builder', 'widget-update', 'admin', '2023-10-22 06:35:42', '2023-10-22 06:35:42'),
(179, 'Widget Builder', 'widget-delete', 'admin', '2023-10-22 06:35:42', '2023-10-22 06:35:42'),
(180, 'Email Template', 'email-template-list', 'admin', '2023-10-22 06:39:35', '2023-10-22 06:39:35'),
(181, 'Email Template', 'email-template-details', 'admin', '2023-10-22 06:39:35', '2023-10-22 06:39:35'),
(182, 'Email Template', 'email-template-update', 'admin', '2023-10-22 06:39:35', '2023-10-22 06:39:35'),
(183, 'Email Template', 'email-template-delete', 'admin', '2023-10-22 06:39:36', '2023-10-22 06:39:36'),
(184, 'Pages', 'page-list', 'admin', '2023-10-22 06:47:37', '2023-10-22 06:47:37'),
(185, 'Pages', 'page-create-new', 'admin', '2023-10-22 06:47:37', '2023-10-22 06:47:37'),
(186, 'Pages', 'page-edit', 'admin', '2023-10-22 06:47:37', '2023-10-22 06:47:37'),
(187, 'Pages', 'page-update', 'admin', '2023-10-22 06:47:37', '2023-10-22 06:47:37'),
(188, 'Pages', 'page-delete', 'admin', '2023-10-22 06:47:37', '2023-10-22 06:47:37'),
(189, 'Pages', 'page-delete-bulk-action', 'admin', '2023-10-22 06:47:38', '2023-10-22 06:47:38'),
(190, 'Pages', 'manage-404-page', 'admin', '2023-10-22 06:47:38', '2023-10-22 06:47:38'),
(191, 'Pages', 'update-404-page', 'admin', '2023-10-22 06:47:38', '2023-10-22 06:47:38'),
(192, 'Pages', 'manage-maintenance-page', 'admin', '2023-10-22 06:47:38', '2023-10-22 06:47:38'),
(193, 'Pages', 'update-maintenance-page', 'admin', '2023-10-22 06:47:38', '2023-10-22 06:47:38'),
(194, 'Language', 'language-list', 'admin', '2023-10-22 06:54:01', '2023-10-22 06:54:01'),
(195, 'Language', 'language-add', 'admin', '2023-10-22 06:54:01', '2023-10-22 06:54:01'),
(196, 'Language', 'language-edit', 'admin', '2023-10-22 06:54:01', '2023-10-22 06:54:01'),
(197, 'Language', 'language-word-edit', 'admin', '2023-10-22 06:54:01', '2023-10-22 06:54:01'),
(198, 'User Subscription', 'user-subscription-manual-payment-status-change', 'admin', '2023-10-25 04:31:06', '2023-10-25 04:31:06'),
(199, 'Support Ticket', 'support-ticket-add', 'admin', '2023-10-25 05:53:02', '2023-10-25 05:53:02'),
(200, 'Language', 'language-word-list', 'admin', '2023-10-25 22:44:08', '2023-10-25 22:44:08'),
(201, 'Language', 'language-word-add', 'admin', '2023-10-25 22:48:59', '2023-10-25 22:48:59'),
(202, 'User Manage', 'user-identity-verify-request-list', 'admin', '2023-10-25 23:04:19', '2023-10-25 23:04:19'),
(203, 'Blog Manage', 'blog-list', 'admin', '2024-01-04 06:37:10', '2024-01-04 06:37:10'),
(204, 'Blog Manage', 'blog-add', 'admin', '2024-01-04 06:37:10', '2024-01-04 06:37:10'),
(205, 'Blog Manage', 'blog-edit', 'admin', '2024-01-04 06:37:10', '2024-01-04 06:37:10'),
(206, 'Blog Manage', 'blog-delete', 'admin', '2024-01-04 06:37:11', '2024-01-04 06:37:11'),
(207, 'License Manage', 'generate-license-key', 'admin', '2024-01-04 06:37:11', '2024-01-04 06:37:11'),
(208, 'License Manage', 'update-license', 'admin', '2024-01-04 06:37:11', '2024-01-04 06:37:11');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `portfolios`
--

CREATE TABLE `portfolios` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint NOT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `published_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `portfolios`
--

INSERT INTO `portfolios` (`id`, `user_id`, `username`, `image`, `title`, `description`, `published_date`, `created_at`, `updated_at`) VALUES
(2, 7, 'freelancer', '1699336547-6549d163cbd51.png', 'Build Laravel Website From Scratch', 'Zaika is an E-commerce app I designed for my client who owns a fashion brand in Britain - I did secondary reseach to understand people’s need and', NULL, '2023-03-13 04:52:50', '2023-11-06 23:55:47'),
(3, 7, 'freelancer', '1678780315-6410279b00cb4.png', 'Build Ecommerce Website From Scratch', 'Build Laravel Website From ScratchBuild Laravel Website From ScratchBuild Laravel Website From ScratchBuild Laravel Website From ScratchBuild', NULL, '2023-03-13 05:19:45', '2023-03-14 01:51:55'),
(4, 7, 'freelancer', '1678780293-641027851d676.png', 'Build PHP Website From Scratch', 'Build Ecommerce Website From ScratchBuild Ecommerce Website From ScratchBuild Ecommerce Website From ScratchBuild Ecommerce Website From Scratch', NULL, '2023-03-13 05:22:03', '2023-03-14 01:51:33'),
(5, 7, 'freelancer', '1678798094-64106d0e7e758.png', 'Build App Website From Scratch34', 'Build Ecommerce Website From Scratch   sdsdf sdfsd fsdf', NULL, '2023-03-13 05:24:23', '2023-03-15 04:56:27'),
(11, 8, 'tfreelancer2', '1678969543-64130ac75052e.png', 'as dasdasd asdas d', 'as dasd asdas asd asda sasd asda  asd asd asdas asdasd asd', NULL, '2023-03-16 06:25:43', '2023-03-16 06:25:43'),
(12, 8, 'riad', '1700914953-6561e7095c9f8.png', 'Multi Vendor Ecommerce Marketplace', 'Multi vendor market place is designed for multi purpose use.', NULL, '2023-11-05 06:03:51', '2023-11-25 06:22:33'),
(13, 8, 'riad', '1700914932-6561e6f4f1ca2.png', 'Service Marketplace', 'On demand service marketplace for freelancers and users.', NULL, '2023-11-05 06:07:34', '2023-11-25 06:22:12');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint NOT NULL,
  `category_id` bigint NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `basic_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `standard_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `premium_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `basic_revision` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `standard_revision` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `premium_revision` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `basic_delivery` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `standard_delivery` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `premium_delivery` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `basic_regular_charge` double NOT NULL,
  `basic_discount_charge` double DEFAULT NULL,
  `standard_regular_charge` double DEFAULT NULL,
  `standard_discount_charge` double DEFAULT NULL,
  `premium_regular_charge` double DEFAULT NULL,
  `premium_discount_charge` double DEFAULT NULL,
  `project_on_off` tinyint NOT NULL DEFAULT '1' COMMENT '0=off, 1=on',
  `project_approve_request` tinyint NOT NULL DEFAULT '0' COMMENT '0=request for approve, 1=approve,2=2 will change to 0 when the user resubmit after rejected.',
  `status` tinyint NOT NULL DEFAULT '0' COMMENT 'o=pending, 1=approve',
  `is_pro` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_expire_date` timestamp NULL DEFAULT NULL,
  `offer_packages_available_or_not` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `user_id`, `category_id`, `title`, `slug`, `description`, `image`, `basic_title`, `standard_title`, `premium_title`, `basic_revision`, `standard_revision`, `premium_revision`, `basic_delivery`, `standard_delivery`, `premium_delivery`, `basic_regular_charge`, `basic_discount_charge`, `standard_regular_charge`, `standard_discount_charge`, `premium_regular_charge`, `premium_discount_charge`, `project_on_off`, `project_approve_request`, `status`, `is_pro`, `pro_expire_date`, `offer_packages_available_or_not`, `created_at`, `updated_at`) VALUES
(68, 7, 1, 'I will create a responsive web design in HTML with 100% accuracy', 'i-will-create-responsive-ui-ux-web-page-design-and-html', '<header style=\"border: 0px; margin: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;\"=\"\"><h6 style=\"color: rgb(98, 100, 106);\"></h6><h6 style=\"color: rgb(98, 100, 106);\"></h6><h2 class=\"section-title\" style=\"color: rgb(64, 65, 69); border: 0px; outline-style: initial; outline-width: 0px; padding: 0px 0px 25px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-weight:=\"\" 700;=\"\" font-size:=\"\" 20px;=\"\" line-height:=\"\" 28px;\"=\"\"></h2><h6 style=\"line-height: 2;\"><span style=\"font-size: 18px;\" times=\"\" new=\"\" roman\";\"=\"\"><b>Looking for an expert Front-End dev?</b></span></h6><h3 style=\"color: rgb(98, 100, 106);\"></h3><h5 style=\"color: rgb(98, 100, 106); line-height: 1.6;\"><font face=\"sans-serif\"><span style=\"font-size: 14px;\">Elevate your online presence with a meticulously crafted, responsive UI/UX web page designed to enhance user experience and engagement. With expertise in HTML/CSS, we bring your vision to life, ensuring a seamless and visually appealing website.</span></font></h5></header><div class=\"description-wrapper\" style=\"border: 0px; margin: 0px; outline-style: initial; outline-width: 0px; padding: 0px 0px 20px; position: relative;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;\"=\"\"><div class=\"description-content\" data-impression-collected=\"true\" style=\"border: 0px; margin: 0px; outline-style: initial; outline-width: 0px; padding: 0px; overflow-wrap: break-word; max-height: none; overflow: hidden; word-break: break-word;\"><p style=\"border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"></p><h5><br></h5><p style=\"border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"></p><h5 style=\"line-height: 2;\"><span style=\"font-size: 18px;\"><b>👉 What You Get</b></span></h5><ul style=\"border: 0px; margin-right: 5px; margin-bottom: 0px; margin-left: 5px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: none none;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;\"=\"\"><li style=\"border: 0px; margin: 0px 0px 0px 24px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: outside none disc;\"><font color=\"#424242\">Customized and responsive UI/UX web page design.\r\n</font></li><li style=\"border: 0px; margin: 0px 0px 0px 24px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: outside none disc;\"><font color=\"#424242\">HTML/CSS coding for a seamless browsing experience.</font></li></ul><p style=\"color: rgb(98, 100, 106); border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"><br></p><p style=\"color: rgb(98, 100, 106); border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"></p><h5 style=\"\"></h5><h5></h5><h5></h5><h5 style=\"line-height: 2;\"><span style=\"font-size: 18px;\"><b>💡 Perfect for:</b></span></h5><ul><li style=\"line-height: 2;\"><font color=\"#424242\"><b>Business Websites</b> - For information technology, Textile, Agriculture industry</font></li><li style=\"line-height: 2;\"><font color=\"#424242\"><b>Portfolios</b> - For individuals looking to make their presence online</font></li><li style=\"line-height: 2;\"><font color=\"#424242\"><b>Landing Pages </b>- To generate sells/conversions for short or long events</font></li><li style=\"line-height: 2;\"><font color=\"#424242\"><b>Blogs</b> - To attract more visitor in web by spreading awareness in your target customers base&nbsp;</font></li></ul><h5 style=\"line-height: 2;\"><span style=\"font-size: 18px;\"><b>🖥️ Package Includes:</b></span></h5><ul style=\"border: 0px; margin-right: 5px; margin-bottom: 0px; margin-left: 5px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: none none;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;\"=\"\"><li style=\"border: 0px; margin: 0px 0px 0px 24px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: outside none disc;\"><font color=\"#424242\">$100 For 1 Page</font></li><li style=\"border: 0px; margin: 0px 0px 0px 24px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: outside none disc;\"><font color=\"#424242\">$300 For 5 Page</font></li></ul><p style=\"color: rgb(98, 100, 106); border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"><br></p><p style=\"border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"><font color=\"#000000\"><span style=\"font-size: 14px;\">💬 Chat with me for special requirements or to discuss your project, and let\'s bring your website vision to reality!</span></font></p><blockquote style=\"border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\">\r\n</blockquote></div></div>', '1699175008-65475a6063c3e.png', 'Basic', 'Standard', 'Premium', '1', '2', '3', '1 Days', '1 Days', '1 Days', 50, NULL, 60, NULL, 70, NULL, 1, 1, 1, NULL, NULL, 1, '2023-03-06 01:27:46', '2023-11-25 00:58:26'),
(69, 7, 2, 'I will develop you a beautiful website with JavaScript, React, Laravel', 'i-will-develop-your-website-with-javascript-react-laravel', '<header style=\"border: 0px; margin: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;\"=\"\"><h6 style=\"color: rgb(98, 100, 106);\"></h6><h6 style=\"color: rgb(98, 100, 106);\"></h6><h2 class=\"section-title\" style=\"color: rgb(64, 65, 69); border: 0px; outline-style: initial; outline-width: 0px; padding: 0px 0px 25px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-weight:=\"\" 700;=\"\" font-size:=\"\" 20px;=\"\" line-height:=\"\" 28px;\"=\"\"></h2><h6 style=\"line-height: 2;\"><span style=\"font-size: 18px;\" times=\"\" new=\"\" roman\";\"=\"\"><b>Experienced in dynamic websites:</b></span></h6><h3 style=\"color: rgb(98, 100, 106);\"></h3><h5 style=\"color: rgb(98, 100, 106); line-height: 1.2;\"><span style=\"font-size: 14px; font-family: sans-serif; font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align); display: inline !important;\">Elevate your online presence with a professionally developed website. We specialize in crafting robust and engaging websites using a powerful tech stack: JavaScript, React, and Laravel.</span></h5></header><div class=\"description-wrapper\" style=\"border: 0px; margin: 0px; outline-style: initial; outline-width: 0px; padding: 0px 0px 20px; position: relative;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;\"=\"\"><div class=\"description-content\" data-impression-collected=\"true\" style=\"border: 0px; margin: 0px; outline-style: initial; outline-width: 0px; padding: 0px; overflow-wrap: break-word; max-height: none; overflow: hidden; word-break: break-word;\"><p></p><p style=\"\"></p><p style=\"color: rgb(98, 100, 106); border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"><br></p><p style=\"border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"></p><h5 style=\"line-height: 2;\"><span style=\"font-size: 18px;\"><b>🌐 What We Offer:</b></span></h5><ul style=\"border: 0px; margin-right: 5px; margin-bottom: 0px; margin-left: 5px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: none none;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;\"=\"\"><li style=\"border: 0px; margin: 0px 0px 0px 24px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: outside none disc;\"><font color=\"#424242\">Custom website development with a focus on user experience and functionality</font></li></ul><p style=\"color: rgb(98, 100, 106); border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"><b style=\"font-size: 18px; color: var(--heading-color); font-family: var(--heading-font); text-align: var(--bs-body-text-align);\"><br></b></p><p style=\"color: rgb(98, 100, 106); border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"><b style=\"font-size: 18px; color: var(--heading-color); font-family: var(--heading-font); text-align: var(--bs-body-text-align);\">🛠️ Tech Stack:\r\n</b><br></p><p style=\"color: rgb(98, 100, 106); border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"><b style=\"font-size: 18px; color: var(--heading-color); font-family: var(--heading-font); text-align: var(--bs-body-text-align);\">\r\n</b></p><ul><li style=\"line-height: 2;\"><font color=\"#424242\"><b>JavaScript</b> - The foundational language for client-side scripting, enabling dynamic web experiences.</font></li><li style=\"line-height: 2;\"><font color=\"#424242\"><b>React</b> - A declarative JavaScript library for building user interfaces component-based development</font></li><li style=\"line-height: 2;\"><font color=\"#424242\"><b>Laravel</b> - A PHP framework known for its elegant syntax and powerful features.</font></li></ul><h5 style=\"line-height: 2;\"><span style=\"font-size: 18px;\"><b>🖥️ Packages:</b></span></h5><ul style=\"border: 0px; margin-right: 5px; margin-bottom: 0px; margin-left: 5px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: none none;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;\"=\"\"><li style=\"border: 0px; margin: 0px 0px 0px 24px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: outside none disc;\"><font color=\"#424242\"><b>$100</b> - Only static website development using JavaScript (Perfect for portfolios)</font></li><li style=\"border: 0px; margin: 0px 0px 0px 24px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: outside none disc;\"><font color=\"#424242\"><b>$300</b> - Dynamic and interactive website using React (Perfect for websites that needs medium features)</font></li><li style=\"border: 0px; margin: 0px 0px 0px 24px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: outside none disc;\"><font color=\"#424242\"><b>$500</b> - Comprehensive website with React for the frontend and Laravel for the backend.</font></li></ul><p style=\"color: rgb(98, 100, 106); border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"><br></p><p style=\"border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"></p><h5 style=\"\"></h5><h5><b style=\"font-size: 18px; color: var(--heading-color); font-family: var(--heading-font); text-align: var(--bs-body-text-align);\">&nbsp; 👉What\'s Not Included:</b><br></h5><p></p><p style=\"color: rgb(98, 100, 106); border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"><span style=\"color: rgb(0, 0, 0); font-size: 14px; font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align); display: inline !important;\"><br></span></p><p style=\"color: rgb(98, 100, 106); border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"><span style=\"color: rgb(0, 0, 0); font-size: 14px; font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align); display: inline !important;\">💬 Chat with us for special requirements, and let\'s bring your vision to the digital realm!</span><br></p><blockquote style=\"border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\">\r\n</blockquote></div></div>', '1700664296-655e13e800dbc.png', 'Basic', 'Standard', 'Premium', '2', '5', '10', '3 Days', '3 Days', '3 Days', 300, NULL, 400, NULL, 450, NULL, 1, 1, 1, NULL, NULL, 1, '2023-03-06 02:16:52', '2023-11-27 06:55:37'),
(70, 7, 2, 'I will develop a books shop website using PHP, Laravel or WordPress', 'i-will-develop-php-laravel-website', '<header style=\"border: 0px; margin: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;\"=\"\"><h6 style=\"color: rgb(98, 100, 106);\"></h6><h6 style=\"color: rgb(98, 100, 106);\"></h6><h2 class=\"section-title\" style=\"color: rgb(64, 65, 69); border: 0px; outline-style: initial; outline-width: 0px; padding: 0px 0px 25px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-weight:=\"\" 700;=\"\" font-size:=\"\" 20px;=\"\" line-height:=\"\" 28px;\"=\"\"></h2><h6 style=\"line-height: 2;\"><span style=\"font-size: 18px;\" times=\"\" new=\"\" roman\";\"=\"\"><b>Expert bookshop website development.</b></span></h6><h3 style=\"color: rgb(98, 100, 106);\"></h3><h5 style=\"color: rgb(98, 100, 106); line-height: 1.2;\"><span style=\"font-size: 14px; font-family: sans-serif; font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align); display: inline !important;\">Whether you\'re an independent bookstore, an author, or a book enthusiast, we specialize in creating dynamic and user-friendly bookshop websites. Harness the power of PHP, Laravel, or WordPress to bring your literary vision to life.</span><br></h5></header><div class=\"description-wrapper\" style=\"border: 0px; margin: 0px; outline-style: initial; outline-width: 0px; padding: 0px 0px 20px; position: relative;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;\"=\"\"><div class=\"description-content\" data-impression-collected=\"true\" style=\"border: 0px; margin: 0px; outline-style: initial; outline-width: 0px; padding: 0px; overflow-wrap: break-word; max-height: none; overflow: hidden; word-break: break-word;\"><p style=\"border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"></p><h5><span style=\"border: 0px; margin: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><b><br></b></span></span></h5><h5 style=\"line-height: 2;\"><b style=\"color: var(--heading-color); font-family: var(--heading-font); font-size: 16px; text-align: var(--bs-body-text-align);\"><span style=\"font-size: 18px;\">💼 Current rates are for a limited time.</span></b></h5><p></p><p style=\"\"></p><p style=\"color: rgb(98, 100, 106); border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"><br></p><p style=\"border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"></p><h5 style=\"line-height: 2;\"><b style=\"font-size: 18px; color: var(--heading-color); font-family: var(--heading-font); text-align: var(--bs-body-text-align);\">🌐 What You Get:</b><br></h5><ul style=\"border: 0px; margin-right: 5px; margin-bottom: 0px; margin-left: 5px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: none none;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;\"=\"\"><li style=\"border: 0px; margin: 0px 0px 0px 24px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: outside none disc;\"><font color=\"#424242\">Professionally developed bookshop website tailored to your specifications. Easy-to-manage backend for updating book listings</font></li></ul><p style=\"color: rgb(98, 100, 106); border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"><br></p><p style=\"color: rgb(98, 100, 106); border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"></p><h5 style=\"\"></h5><h5></h5><h5></h5><h5 style=\"line-height: 2;\"><span style=\"font-size: 18px;\"><b>📖 Features:</b></span></h5><ul><li style=\"line-height: 2;\"><font color=\"#424242\">User-friendly book browsing and search functionality. My team of developers are well educated on UX</font></li><li style=\"line-height: 2;\"><font color=\"#424242\">Secure payment gateways for seamless transactions. Payment gateways are well integrated&nbsp;for</font></li><li style=\"line-height: 2;\"><font color=\"#424242\">Responsive design for optimal viewing on all devices. Test extensive responsive experience</font></li></ul><h5 style=\"line-height: 2;\"><b style=\"font-size: 18px; color: var(--heading-color); font-family: var(--heading-font); text-align: var(--bs-body-text-align);\">📘 Premium Services:</b><br></h5><ul style=\"border: 0px; margin-right: 5px; margin-bottom: 0px; margin-left: 5px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: none none;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;\"=\"\"><li style=\"border: 0px; margin: 0px 0px 0px 24px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: outside none disc;\"><font color=\"#424242\"><b>24x7 Support </b>- No matter when you need it I manage a team of developers to support you 24x7</font></li><li style=\"border: 0px; margin: 0px 0px 0px 24px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: outside none disc;\"><font color=\"#424242\"><b>On-time delivery</b> - Worried about things gets out of time? then no worries our on time delivery</font></li></ul><p><br></p><p style=\"border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"><font color=\"#000000\"><span style=\"font-size: 14px;\">💬 Chat with us for special requirements, and let\'s bring your bookshop vision to the digital world!</span></font></p><blockquote style=\"border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\">\r\n</blockquote></div></div>', '1699173508-65475484d03f6.png', 'Basic', 'Standard', 'Premium', '2', '5', '1', 'Less than a week', 'Less than a week', 'Less than a week', 550, NULL, 600, NULL, 1000, NULL, 1, 1, 1, NULL, NULL, 1, '2023-03-12 02:02:42', '2023-11-25 23:17:52'),
(73, 7, 4, 'I will develop a Flutter Mobile App for eCommerce with extensive support', 'i-will-do-mobile-app-development', '<header style=\"border: 0px; margin: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;\"=\"\"><h6 style=\"color: rgb(98, 100, 106);\"></h6><h6 style=\"color: rgb(98, 100, 106);\"></h6><h2 class=\"section-title\" style=\"color: rgb(64, 65, 69); border: 0px; outline-style: initial; outline-width: 0px; padding: 0px 0px 25px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-weight:=\"\" 700;=\"\" font-size:=\"\" 20px;=\"\" line-height:=\"\" 28px;\"=\"\"></h2><h6 style=\"line-height: 2;\"><span style=\"font-size: 18px;\" times=\"\" new=\"\" roman\";\"=\"\"><b>✨ Available for custom orders</b></span></h6><h3 style=\"color: rgb(98, 100, 106);\"></h3><h5 style=\"color: rgb(98, 100, 106); line-height: 1.2;\"><span style=\"font-size: 14px; font-family: sans-serif; font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align); display: inline !important;\">Offering comprehensive Flutter mobile app development services for your eCommerce business with extended support.</span><br></h5></header><div class=\"description-wrapper\" style=\"border: 0px; margin: 0px; outline-style: initial; outline-width: 0px; padding: 0px 0px 20px; position: relative;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;\"=\"\"><div class=\"description-content\" data-impression-collected=\"true\" style=\"border: 0px; margin: 0px; outline-style: initial; outline-width: 0px; padding: 0px; overflow-wrap: break-word; max-height: none; overflow: hidden; word-break: break-word;\"><p style=\"border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"></p><h5><span style=\"border: 0px; margin: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><b><br></b></span></span></h5><h5 style=\"line-height: 2;\"><b style=\"color: var(--heading-color); font-family: var(--heading-font); font-size: 16px; text-align: var(--bs-body-text-align);\"><span style=\"font-size: 18px;\">👉Perfect gig for you</span></b><br></h5><p></p><p style=\"color: rgb(98, 100, 106); border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px; line-height: 1.4;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"><span style=\"font-size: 14px;\">Elevate your online store with a cutting-edge Flutter mobile app. We specialize in crafting seamless and feature-rich eCommerce applications that provide an immersive shopping experience for your customers.</span></p><p></p><p style=\"\"></p><p style=\"color: rgb(98, 100, 106); border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"><br></p><p style=\"border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"></p><h5 style=\"line-height: 2;\"><span style=\"font-size: 18px;\"><b>🛒 Key Features:</b></span></h5><ul style=\"border: 0px; margin-right: 5px; margin-bottom: 0px; margin-left: 5px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: none none;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;\"=\"\"><li style=\"border: 0px; margin: 0px 0px 0px 24px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: outside none disc;\"><font color=\"#424242\">User-friendly product browsing and purchasing - This let\'s your customers have a better experience&nbsp;</font></li><li style=\"border: 0px; margin: 0px 0px 0px 24px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: outside none disc;\"><font color=\"#424242\">Secure payment gateways for hassle-free transactions - We use a secured method to complete the payment</font></li><li style=\"border: 0px; margin: 0px 0px 0px 24px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: outside none disc;\"><font color=\"#424242\">Real-time order tracking and notifications.&nbsp;</font></li><li style=\"border: 0px; margin: 0px 0px 0px 24px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: outside none disc;\"><font color=\"#424242\">Customizable to match your brand identity.</font></li></ul><p style=\"color: rgb(98, 100, 106); border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"><br></p><h5 style=\"line-height: 2;\"><b style=\"font-size: 18px; color: var(--heading-color); font-family: var(--heading-font); text-align: var(--bs-body-text-align);\">My specialty:</b><br></h5><ul style=\"border: 0px; margin-right: 5px; margin-bottom: 0px; margin-left: 5px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: none none;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;\"=\"\"><li style=\"border: 0px; margin: 0px 0px 0px 24px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: outside none disc;\"><font color=\"#424242\">Apply Updated Methods - We work on updated technologies so we&nbsp;</font></li><li style=\"border: 0px; margin: 0px 0px 0px 24px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: outside none disc;\"><font color=\"#424242\">Maintain Quality Work - Iterative reviews and revisions for content that evolves with your feedback.</font></li><li style=\"border: 0px; margin: 0px 0px 0px 24px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: outside none disc;\"><font color=\"#424242\">On-Time Delivery - Timely delivery is main priority</font></li></ul><p></p><p style=\"color: rgb(98, 100, 106); border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"><span style=\"color: rgb(0, 0, 0); font-size: 14px; font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align); display: inline !important;\"><br></span></p><p style=\"border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"><font color=\"#000000\"><span style=\"font-size: 14px;\">Message me before placing order to discuss your specific business goals I would be glad to answer.</span></font></p><blockquote style=\"border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\">\r\n</blockquote></div></div>', '1699173151-6547531f6ebf9.png', 'Basic', 'Standard', 'Premium', '1', '3', '5', '3 Days', '3 Days', '3 Days', 500, NULL, 600, NULL, 800, NULL, 1, 1, 1, NULL, NULL, 1, '2023-04-02 00:14:30', '2023-11-25 00:33:05'),
(84, 7, 4, 'I will develop an eCommerce Flutter Mobile app for Android and iOS', 'i-will-develop-a-flutter-mobile-app-for-android-and-ios', '<header style=\"border: 0px; margin: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;\"=\"\"><h6 style=\"color: rgb(98, 100, 106);\"></h6><h6 style=\"color: rgb(98, 100, 106);\"></h6><h2 class=\"section-title\" style=\"color: rgb(64, 65, 69); border: 0px; outline-style: initial; outline-width: 0px; padding: 0px 0px 25px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-weight:=\"\" 700;=\"\" font-size:=\"\" 20px;=\"\" line-height:=\"\" 28px;\"=\"\"></h2><h6 style=\"line-height: 2;\"><span style=\"font-size: 18px;\" times=\"\" new=\"\" roman\";\"=\"\"><b>A✨ Open for Custom Orders</b></span></h6><h3 style=\"color: rgb(98, 100, 106);\"></h3><h5 style=\"color: rgb(98, 100, 106); line-height: 1.2;\"><span style=\"font-size: 14px; font-family: sans-serif; font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align); display: inline !important;\">Propel your eCommerce venture to new heights with a tailored Flutter mobile app, available for both Android and iOS platforms.📱 Leveraging advanced Flutter development, I specialize in creating feature-rich, cross-platform mobile apps that seamlessly translate your eCommerce vision into a captivating digital experience.</span></h5><h5 style=\"color: rgb(98, 100, 106); line-height: 1.2;\"><span style=\"font-size: 14px; font-family: sans-serif; font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align); display: inline !important;\"><br></span></h5></header><div class=\"description-wrapper\" style=\"border: 0px; margin: 0px; outline-style: initial; outline-width: 0px; padding: 0px 0px 20px; position: relative;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;\"=\"\"><div class=\"description-content\" data-impression-collected=\"true\" style=\"border: 0px; margin: 0px; outline-style: initial; outline-width: 0px; padding: 0px; overflow-wrap: break-word; max-height: none; overflow: hidden; word-break: break-word;\"><h5 style=\"line-height: 2;\"><b style=\"color: var(--heading-color); font-family: var(--heading-font); font-size: 16px; text-align: var(--bs-body-text-align);\"><span style=\"font-size: 18px;\">🚀 Flutter App Mastery:</span></b></h5><ul style=\"border: 0px; margin-right: 5px; margin-bottom: 0px; margin-left: 5px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: none none;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;\"=\"\"><li style=\"border: 0px; margin: 0px 0px 0px 24px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: outside none disc;\"><font color=\"#424242\">Expertly crafted Flutter mobile app for a dynamic and engaging user interface.\r\n</font></li><li style=\"border: 0px; margin: 0px 0px 0px 24px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: outside none disc;\"><font color=\"#424242\">Effortless cross-platform functionality, ensuring a consistent experience on Android and iOS devices.</font></li></ul><p style=\"color: rgb(98, 100, 106); border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"><br></p><p style=\"color: rgb(98, 100, 106); border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"></p><h5 style=\"\"></h5><h5></h5><h5></h5><h5 style=\"line-height: 2;\"><span style=\"font-size: 18px;\"><b>🛒 eCommerce Integration:</b></span></h5><ul><li style=\"line-height: 2;\"><font color=\"#424242\">Seamless integration of your eCommerce business, enabling customers to explore, shop, and checkout effortlessly.\r\n</font></li><li style=\"line-height: 2;\"><font color=\"#424242\">Intuitive navigation and user-friendly interfaces to boost conversions.</font></li></ul><h5 style=\"line-height: 2;\"><span style=\"font-size: 18px;\"><b>Final Delivery Includes:</b></span></h5><ul style=\"border: 0px; margin-right: 5px; margin-bottom: 0px; margin-left: 5px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: none none;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;\"=\"\"><li style=\"border: 0px; margin: 0px 0px 0px 24px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: outside none disc;\"><font color=\"#424242\">A polished and professionally developed Flutter mobile app tailored for your eCommerce success.\r\n</font></li><li style=\"border: 0px; margin: 0px 0px 0px 24px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: outside none disc;\"><font color=\"#424242\">Support and guidance for a successful app launch.</font></li></ul><p style=\"color: rgb(98, 100, 106); border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"><br></p><p style=\"border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"></p><h5 style=\"\"></h5><h5><b style=\"font-size: 18px; color: var(--heading-color); font-family: var(--heading-font); text-align: var(--bs-body-text-align);\">💬Have Any Questions?</b></h5><blockquote style=\"border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\">\r\n</blockquote></div></div>', '1699172883-6547521391fbd.png', 'Basic', 'Standard', 'Premium', '1', '2', '3', '1 Days', '1 Days', '1 Days', 300, NULL, 400, NULL, 500, NULL, 1, 1, 1, NULL, NULL, 1, '2023-04-03 03:23:16', '2023-11-25 00:57:35'),
(92, 7, 2, 'I will build you a Laravel/WordPress recruitment website and publish for you', 'i-will-fix-or-develop-laravel-website-and-vuejs', '<header style=\"border: 0px; margin: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;\"=\"\"><h6 style=\"color: rgb(98, 100, 106);\"></h6><h6 style=\"color: rgb(98, 100, 106);\"></h6><h2 class=\"section-title\" style=\"color: rgb(64, 65, 69); border: 0px; outline-style: initial; outline-width: 0px; padding: 0px 0px 25px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-weight:=\"\" 700;=\"\" font-size:=\"\" 20px;=\"\" line-height:=\"\" 28px;\"=\"\"></h2><h6 style=\"line-height: 2;\"><span style=\"font-size: 18px;\" times=\"\" new=\"\" roman\";\"=\"\"><b>✨ Available for Custom Orders</b></span></h6><h3 style=\"color: rgb(98, 100, 106);\"></h3><h5 style=\"color: rgb(98, 100, 106); line-height: 1.2;\"><span style=\"font-size: 14px; font-family: sans-serif; font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align); display: inline !important;\">With over 10 years of experience in the design industry, we specialize in crafting responsive WordPress websites and dynamic eCommerce platforms. Our expertise spans various sectors, including AI, Web 3.0, ICOs, IDOs, Crypto, NFT, IT, Blockchain, E-commerce, Airports, Retail, Universities, Automobile, and more.</span><br></h5></header><div class=\"description-wrapper\" style=\"border: 0px; margin: 0px; outline-style: initial; outline-width: 0px; padding: 0px 0px 20px; position: relative;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;\"=\"\"><div class=\"description-content\" data-impression-collected=\"true\" style=\"border: 0px; margin: 0px; outline-style: initial; outline-width: 0px; padding: 0px; overflow-wrap: break-word; max-height: none; overflow: hidden; word-break: break-word;\"><p style=\"border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"></p><h5><span style=\"border: 0px; margin: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><b><br></b></span></span></h5><h5 style=\"line-height: 2;\"><b style=\"color: var(--heading-color); font-family: var(--heading-font); font-size: 16px; text-align: var(--bs-body-text-align);\"><span style=\"font-size: 18px;\">🌟 Completed 500+ projects\r\n</span></b><br></h5><div><b style=\"color: var(--heading-color); font-family: var(--heading-font); font-size: 16px; text-align: var(--bs-body-text-align);\"><span style=\"font-size: 18px;\"><br></span></b></div><p></p><p style=\"color: rgb(98, 100, 106); border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px; line-height: 1.4;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"><span style=\"font-size: 14px; font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align); display: inline !important;\">With my expertise, I\'ll define effective marketing goals for your business. I\'ll craft an innovative plan and strategy, utilizing advanced advertising methods for success.</span><br></p><p></p><p style=\"\"></p><p style=\"color: rgb(98, 100, 106); border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"><br></p><p style=\"border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"></p><h5 style=\"line-height: 2;\"><b style=\"font-size: 18px; color: var(--heading-color); font-family: var(--heading-font); text-align: var(--bs-body-text-align);\">🌐 Top Clients:</b><br></h5><ul style=\"border: 0px; margin-right: 5px; margin-bottom: 0px; margin-left: 5px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: none none;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;\"=\"\"><li style=\"border: 0px; margin: 0px 0px 0px 24px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: outside none disc;\"><font color=\"#424242\"><b>Multiple Governments</b> - We built many WordPress websites for governments around the world  \r\n</font></li><li style=\"border: 0px; margin: 0px 0px 0px 24px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: outside none disc;\"><font color=\"#424242\"><b>Intelio</b> - My one of the finest client is Intel we built an internal website for their recruitment process</font></li><li style=\"border: 0px; margin: 0px 0px 0px 24px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: outside none disc;\"><font color=\"#424242\"><b>Goolio</b> - Goolio is the world largest hosting provider and I built their website</font></li><li style=\"border: 0px; margin: 0px 0px 0px 24px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: outside none disc;\"><font color=\"#424242\"><b>Giantsoft</b> - Giant soft build SaaS software for their clients and I helped them with WordPress&nbsp;</font></li><li style=\"border: 0px; margin: 0px 0px 0px 24px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: outside none disc;\"><font color=\"#424242\"><b>Shahincedes</b> - A car brand which needed a website for their B2B agents and I built them.</font></li></ul><p style=\"color: rgb(98, 100, 106); border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"><br></p><p style=\"color: rgb(98, 100, 106); border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"></p><h5 style=\"\"></h5><h5></h5><h5></h5><h5 style=\"line-height: 2;\"><span style=\"font-size: 18px;\"><b>What\'s Included in This Gig:</b></span></h5><ul><li style=\"line-height: 2;\"><font color=\"#424242\">Crafted for responsiveness on all devices (After completing project we do extensive tests)\r\n</font></li><li style=\"line-height: 2;\"><font color=\"#424242\">Build a eCommerce platform tailored to your business needs (Every business is unique, So are we)\r\n</font></li><li style=\"line-height: 2;\"><font color=\"#424242\">Customization options available for a unique web presence</font></li></ul><h5 style=\"line-height: 2;\"><b style=\"font-size: 18px; color: var(--heading-color); font-family: var(--heading-font); text-align: var(--bs-body-text-align);\">What\'s Not Included:</b><br></h5><ul style=\"border: 0px; margin-right: 5px; margin-bottom: 0px; margin-left: 5px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: none none;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;\"=\"\"><li style=\"border: 0px; margin: 0px 0px 0px 24px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: outside none disc;\"><font color=\"#424242\">Content Creation (Image and text)\r\n</font></li><li style=\"border: 0px; margin: 0px 0px 0px 24px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: outside none disc;\"><font color=\"#424242\">Additional features beyond website design (You have to pay extra for e.g., custom functionalities, plugins)</font></li></ul><p style=\"color: rgb(98, 100, 106); border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"><br></p><p style=\"border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"></p><h5 style=\"\"></h5><h5><span style=\"font-size: 18px;\"><b>💬 Please message me before ordering</b></span></h5><blockquote style=\"border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\">\r\n</blockquote></div></div>', '1699168234-65473feae005f.png', 'Basic', 'Standard', 'Premium', '2', '5', '10', 'Less than a week', 'Less than a week', 'Less than a week', 150, NULL, 250, NULL, 400, NULL, 1, 1, 1, NULL, NULL, 1, '2023-05-15 07:25:04', '2023-11-28 06:47:39');
INSERT INTO `projects` (`id`, `user_id`, `category_id`, `title`, `slug`, `description`, `image`, `basic_title`, `standard_title`, `premium_title`, `basic_revision`, `standard_revision`, `premium_revision`, `basic_delivery`, `standard_delivery`, `premium_delivery`, `basic_regular_charge`, `basic_discount_charge`, `standard_regular_charge`, `standard_discount_charge`, `premium_regular_charge`, `premium_discount_charge`, `project_on_off`, `project_approve_request`, `status`, `is_pro`, `pro_expire_date`, `offer_packages_available_or_not`, `created_at`, `updated_at`) VALUES
(93, 8, 1, 'I will convert psd to html, pdf to html, sketch to html responsive', 'i-will-convert-psd-to-html--pdf-to-html--sketch-to-html-responsive', '<header style=\"border: 0px; margin: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;\"=\"\"><h6 style=\"color: rgb(98, 100, 106);\"></h6><h6 style=\"color: rgb(98, 100, 106);\"></h6><h2 class=\"section-title\" style=\"color: rgb(64, 65, 69); border: 0px; outline-style: initial; outline-width: 0px; padding: 0px 0px 25px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-weight:=\"\" 700;=\"\" font-size:=\"\" 20px;=\"\" line-height:=\"\" 28px;\"=\"\"></h2><h6 style=\"line-height: 2;\"><span style=\"font-size: 18px;\" times=\"\" new=\"\" roman\";\"=\"\"><b>Your Design, Your Vision, Our Expertise</b></span></h6><h3 style=\"color: rgb(98, 100, 106);\"></h3><h5 style=\"color: rgb(98, 100, 106); line-height: 1.2;\"><span style=\"font-size: 14px; font-family: sans-serif; font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align); display: inline !important;\">🎨 Seeking to bring your designs to life on the web? Unlock the potential of your PSD, PDF, or Sketch files with our responsive HTML conversion services.</span></h5><h5 style=\"color: rgb(98, 100, 106); line-height: 1.2;\"><span style=\"font-size: 14px; font-family: sans-serif; font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align); display: inline !important;\"><br></span></h5></header><div class=\"description-wrapper\" style=\"border: 0px; margin: 0px; outline-style: initial; outline-width: 0px; padding: 0px 0px 20px; position: relative;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;\"=\"\"><div class=\"description-content\" data-impression-collected=\"true\" style=\"border: 0px; margin: 0px; outline-style: initial; outline-width: 0px; padding: 0px; overflow-wrap: break-word; max-height: none; overflow: hidden; word-break: break-word;\"><h5 style=\"line-height: 2;\"><span style=\"font-size: 18px;\"><b>💼 Exclusive promotional rates</b></span></h5><p></p><p style=\"color: rgb(98, 100, 106); border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px; line-height: 1.4;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"><span style=\"font-size: 14px; font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align); display: inline !important;\">With a keen eye for detail and expertise in coding, I specialize in converting your design files into high-quality, pixel-perfect, and responsive HTML.</span><br></p><p></p><p style=\"\"></p><p style=\"color: rgb(98, 100, 106); border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"><br></p><p style=\"border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"></p><h5 style=\"line-height: 2;\"><b style=\"font-size: 18px; color: var(--heading-color); font-family: var(--heading-font); text-align: var(--bs-body-text-align);\">🌐 Responsive HTML Conversion:</b><br></h5><ul style=\"border: 0px; margin-right: 5px; margin-bottom: 0px; margin-left: 5px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: none none;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;\"=\"\"><li style=\"border: 0px; margin: 0px 0px 0px 24px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: outside none disc;\"><font color=\"#424242\">Precision coding to ensure your design seamlessly adapts to various devices and screen sizes.\r\n</font></li><li style=\"border: 0px; margin: 0px 0px 0px 24px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: outside none disc;\"><font color=\"#424242\">Cross-browser compatibility for a consistent user experience.</font></li></ul><p style=\"color: rgb(98, 100, 106); border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"><br></p><p style=\"color: rgb(98, 100, 106); border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"></p><h5 style=\"\"></h5><h5></h5><h5></h5><h5 style=\"line-height: 2;\"><span style=\"font-size: 18px;\"><b>🔍 File Format Expertise:</b></span></h5><ul><li style=\"line-height: 2;\"><font color=\"#424242\">Expert handling of PSD, PDF, and Sketch files, preserving the design integrity during the conversion process.\r\n</font></li><li style=\"line-height: 2;\"><font color=\"#424242\">Attention to detail in implementing design elements, ensuring accuracy.</font></li></ul><h5 style=\"line-height: 2;\"><b style=\"font-size: 18px; color: var(--heading-color); font-family: var(--heading-font); text-align: var(--bs-body-text-align);\">Final Delivery Includes:</b><br></h5><ul style=\"border: 0px; margin-right: 5px; margin-bottom: 0px; margin-left: 5px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: none none;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;\"=\"\"><li style=\"border: 0px; margin: 0px 0px 0px 24px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: outside none disc;\"><font color=\"#424242\">Clean and optimized HTML files ready for seamless integration into your web project.\r\n</font></li><li style=\"border: 0px; margin: 0px 0px 0px 24px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: outside none disc;\"><font color=\"#424242\">Guidance on implementation and support for any post-conversion adjustments.</font></li></ul><p></p><p style=\"color: rgb(98, 100, 106); border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"><span style=\"color: rgb(0, 0, 0); font-size: 14px; font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align); display: inline !important;\"><br></span></p><p style=\"color: rgb(98, 100, 106); border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"><span style=\"color: rgb(0, 0, 0); font-size: 14px; font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align); display: inline !important;\">Send a message to me before ordering 💬</span><br></p><blockquote style=\"border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\">\r\n</blockquote></div></div>', '1699185334-654782b6ed9e9.png', 'Basic', 'Standard', 'Premium', 'unlimited', 'unlimited', '1', '1 Days', '1 Days', '1 Days', 50, NULL, 250, NULL, 400, NULL, 1, 1, 1, NULL, NULL, 1, '2023-05-15 23:58:55', '2023-11-25 02:17:44'),
(94, 8, 11, 'I provide marketing and legal consultancy to the businesses in European Union', 'i-will-do-digital-marketing-training-for-business-owners', '<header style=\"border: 0px; margin: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;\"=\"\"><h6 style=\"color: rgb(98, 100, 106);\"></h6><h6 style=\"color: rgb(98, 100, 106);\"></h6><h2 class=\"section-title\" style=\"color: rgb(64, 65, 69); border: 0px; outline-style: initial; outline-width: 0px; padding: 0px 0px 25px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-weight:=\"\" 700;=\"\" font-size:=\"\" 20px;=\"\" line-height:=\"\" 28px;\"=\"\"></h2><h6 style=\"line-height: 2;\"><span style=\"font-size: 18px;\" times=\"\" new=\"\" roman\";\"=\"\"><b>Open for Consultation</b></span></h6><h3 style=\"color: rgb(98, 100, 106);\"></h3><h5 style=\"color: rgb(98, 100, 106); line-height: 1.2;\"><span style=\"font-size: 14px; font-family: sans-serif; font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align); display: inline !important;\">🌍 Are you a business in the European Union seeking expert guidance in marketing and consultancy? Look no further. With a focus on the EU market, I specialize in providing strategic marketing and consultancy services designed to propel your business towards sustained success.</span><br></h5></header><div class=\"description-wrapper\" style=\"border: 0px; margin: 0px; outline-style: initial; outline-width: 0px; padding: 0px 0px 20px; position: relative;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;\"=\"\"><div class=\"description-content\" data-impression-collected=\"true\" style=\"border: 0px; margin: 0px; outline-style: initial; outline-width: 0px; padding: 0px; overflow-wrap: break-word; max-height: none; overflow: hidden; word-break: break-word;\"><p style=\"border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"></p><h5><br></h5><p style=\"border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"></p><h5 style=\"line-height: 2;\"><b style=\"font-size: 18px; color: var(--heading-color); font-family: var(--heading-font); text-align: var(--bs-body-text-align);\">📊 Strategic Marketing Insights:\r\n</b><br></h5><div><b style=\"font-size: 18px; color: var(--heading-color); font-family: var(--heading-font); text-align: var(--bs-body-text-align);\">\r\n</b></div><ul style=\"border: 0px; margin-right: 5px; margin-bottom: 0px; margin-left: 5px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: none none;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;\"=\"\"><li style=\"border: 0px; margin: 0px 0px 0px 24px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: outside none disc;\">In-depth market analysis tailored to the EU business landscape.\r\n</li><li style=\"border: 0px; margin: 0px 0px 0px 24px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: outside none disc;\">Customized marketing strategies to maximize your brand\'s impact.</li><li style=\"border: 0px; margin: 0px 0px 0px 24px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: outside none disc;\"><font color=\"#424242\">Daily Ads Reporting &amp; Technical Support</font></li></ul><p style=\"color: rgb(98, 100, 106); border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"><br></p><p style=\"color: rgb(98, 100, 106); border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"></p><h5 style=\"\"></h5><h5></h5><h5></h5><h5 style=\"line-height: 2;\"><span style=\"font-size: 18px;\"><b>🤝 Business Consultancy:</b></span></h5><ul><li style=\"line-height: 2;\"><font color=\"#424242\">Comprehensive business consultations to address challenges and seize opportunities.\r\n</font></li><li style=\"line-height: 2;\"><font color=\"#424242\">Strategic planning to enhance your business operations and growth.</font></li></ul><h5 style=\"line-height: 2;\"><b style=\"font-size: 18px; color: var(--heading-color); font-family: var(--heading-font); text-align: var(--bs-body-text-align);\">Additional Services:</b><br></h5><ul style=\"border: 0px; margin-right: 5px; margin-bottom: 0px; margin-left: 5px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: none none;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;\"=\"\"><li style=\"border: 0px; margin: 0px 0px 0px 24px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: outside none disc;\"><font color=\"#424242\">Tailored marketing campaigns designed for the EU market.\r\n</font></li><li style=\"border: 0px; margin: 0px 0px 0px 24px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: outside none disc;\"><font color=\"#424242\">Ongoing consultancy to adapt strategies to evolving market dynamics.</font></li><li style=\"border: 0px; margin: 0px 0px 0px 24px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: outside none disc;\"><font color=\"#424242\">Legal consultancy</font></li></ul><p style=\"border: 0px; margin: 0px 0px 0px 24px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: outside none disc;\"><font color=\"#424242\"><br></font></p><p style=\"border: 0px; margin: 0px 0px 0px 24px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: outside none disc;\"><font color=\"#424242\"><br></font></p><p style=\"border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"></p><h5 style=\"\"></h5><h5><b style=\"font-size: 18px; color: var(--heading-color); font-family: var(--heading-font); text-align: var(--bs-body-text-align);\">Have Any Questions? Chat with me.</b></h5><blockquote style=\"border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\">\r\n</blockquote></div></div>', '1699185138-654781f2c2efe.png', 'Basic', 'Standard', 'Premium', '1', '2', '3', '1 Days', '1 Days', '1 Days', 50, NULL, 100, NULL, 150, NULL, 1, 1, 1, NULL, NULL, 1, '2023-05-16 00:54:37', '2024-01-27 06:54:22'),
(95, 8, 11, 'I will create a  successful strategic marketing plan for your business', 'i-will-create-a-strategic-marketing-plan-for-your-business', '<header style=\"border: 0px; margin: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;\"=\"\"><h6 style=\"color: rgb(98, 100, 106);\"></h6><h6 style=\"color: rgb(98, 100, 106);\"></h6><h2 class=\"section-title\" style=\"color: rgb(64, 65, 69); border: 0px; outline-style: initial; outline-width: 0px; padding: 0px 0px 25px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-weight:=\"\" 700;=\"\" font-size:=\"\" 20px;=\"\" line-height:=\"\" 28px;\"=\"\"></h2><h6 style=\"line-height: 2;\"><span style=\"font-size: 18px;\" times=\"\" new=\"\" roman\";\"=\"\"><b>Let\'s shape your success story</b></span></h6><h3 style=\"color: rgb(98, 100, 106);\"></h3><h5 style=\"color: rgb(98, 100, 106); line-height: 1.2;\"><span style=\"font-size: 14px; font-family: sans-serif; font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align); display: inline !important;\">🚀 Is your business ready to soar to new heights? Unlock its full potential with a meticulously crafted and successful strategic marketing plan. 📈 With a wealth of experience in strategic marketing, I specialize in developing plans that not only align with your business goals but propel you ahead of the competition.</span><br></h5></header><div class=\"description-wrapper\" style=\"border: 0px; margin: 0px; outline-style: initial; outline-width: 0px; padding: 0px 0px 20px; position: relative;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;\"=\"\"><div class=\"description-content\" data-impression-collected=\"true\" style=\"border: 0px; margin: 0px; outline-style: initial; outline-width: 0px; padding: 0px; overflow-wrap: break-word; max-height: none; overflow: hidden; word-break: break-word;\"><p style=\"border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"></p><h5><span style=\"border: 0px; margin: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><b><br></b></span></span></h5><h5 style=\"line-height: 2;\"><b style=\"color: var(--heading-color); font-family: var(--heading-font); font-size: 16px; text-align: var(--bs-body-text-align);\"><span style=\"font-size: 18px;\">What\'s Included in This Service:</span></b><br></h5><p></p><ul><li style=\"border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px; line-height: 1.8;\"><font color=\"#424242\"><span style=\"font-size: 14px; font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align); display: inline !important;\">In-depth research to understand your industry landscape, competitors, and target audience.\r\n</span><br></font></li><li style=\"border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px; line-height: 1.4;\"><span style=\"font-size: 14px; font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align); display: inline !important;\"><font color=\"#424242\">Identification of market trends and opportunities.</font></span></li></ul><p></p><p style=\"\"></p><p style=\"color: rgb(98, 100, 106); border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"><br></p><p style=\"border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"></p><h5 style=\"line-height: 2;\"><b style=\"font-size: 18px; color: var(--heading-color); font-family: var(--heading-font); text-align: var(--bs-body-text-align);\">🎯 Strategic Goal Setting:</b><br></h5><ul style=\"border: 0px; margin-right: 5px; margin-bottom: 0px; margin-left: 5px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: none none;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;\"=\"\"><li style=\"border: 0px; margin: 0px 0px 0px 24px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: outside none disc;\"><font color=\"#424242\">Collaborative goal-setting sessions to define clear and achievable marketing objectives.\r\n</font></li><li style=\"border: 0px; margin: 0px 0px 0px 24px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: outside none disc;\"><font color=\"#424242\">Alignment of marketing goals with overall business objectives.</font></li></ul><p style=\"color: rgb(98, 100, 106); border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"><br></p><p style=\"color: rgb(98, 100, 106); border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"></p><h5 style=\"\"></h5><h5></h5><h5></h5><h5 style=\"line-height: 2;\"><span style=\"font-size: 18px;\"><b>Additional Services:</b></span></h5><ul><li style=\"line-height: 2;\"><font color=\"#424242\">Customized marketing strategies based on your industry, business size, and target market.\r\n</font></li><li style=\"line-height: 2;\"><font color=\"#424242\">Detailed implementation timelines and budget considerations.</font></li></ul><h5 style=\"line-height: 2;\"><b style=\"font-size: 18px; color: var(--heading-color); font-family: var(--heading-font); text-align: var(--bs-body-text-align);\">Final Delivery Includes:</b><br></h5><ul style=\"border: 0px; margin-right: 5px; margin-bottom: 0px; margin-left: 5px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: none none;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;\"=\"\"><li style=\"border: 0px; margin: 0px 0px 0px 24px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: outside none disc;\"><font color=\"#424242\">A detailed and actionable strategic marketing plan tailored to your business needs.\r\n</font></li><li style=\"border: 0px; margin: 0px 0px 0px 24px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: outside none disc;\"><font color=\"#424242\">Guidance on plan implementation and monitoring for optimal results.</font></li></ul><blockquote style=\"border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\">\r\n</blockquote></div></div>', '1699184794-6547809aeeaca.png', 'Basic', 'Standard', 'Premium', '1', '2', '3', 'Less than a month', 'Less than a month', 'Less than a month', 100, NULL, 200, NULL, 300, NULL, 1, 1, 1, NULL, NULL, 1, '2023-05-16 01:03:12', '2023-11-25 02:08:58'),
(96, 8, 1, 'Need a expert graphic designer with an extensive real estate experience?', 'i-will-do-expert-3d-modeling-and-rendering-for-home-and-office-exterior', '<header style=\"border: 0px; margin: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;\"=\"\"><h6 style=\"color: rgb(98, 100, 106);\"></h6><h6 style=\"color: rgb(98, 100, 106);\"></h6><h2 class=\"section-title\" style=\"color: rgb(64, 65, 69); border: 0px; outline-style: initial; outline-width: 0px; padding: 0px 0px 25px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-weight:=\"\" 700;=\"\" font-size:=\"\" 20px;=\"\" line-height:=\"\" 28px;\"=\"\"></h2><h6 style=\"line-height: 2;\"><span style=\"font-size: 18px;\" times=\"\" new=\"\" roman\";\"=\"\"><b>For Real Estate Visionaries</b></span></h6><h3 style=\"color: rgb(98, 100, 106);\"></h3><h5 style=\"color: rgb(98, 100, 106); line-height: 1.2;\"><span style=\"font-size: 14px; font-family: sans-serif; font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align); display: inline !important;\">🏡 Are you in search of a graphic designer who not only understands design intricacies but also possesses a deep understanding of the real estate industry? Look no further. 🎨 Comprehensive understanding of the real estate landscape, Let me bring the unique blend of creativity and industry expertise to elevate your brand.</span><br></h5></header><div class=\"description-wrapper\" style=\"border: 0px; margin: 0px; outline-style: initial; outline-width: 0px; padding: 0px 0px 20px; position: relative;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;\"=\"\"><div class=\"description-content\" data-impression-collected=\"true\" style=\"border: 0px; margin: 0px; outline-style: initial; outline-width: 0px; padding: 0px; overflow-wrap: break-word; max-height: none; overflow: hidden; word-break: break-word;\"><p style=\"border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"></p><h5><br></h5><p style=\"border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"></p><h5 style=\"line-height: 2;\"><b style=\"font-size: 18px; color: var(--heading-color); font-family: var(--heading-font); text-align: var(--bs-body-text-align);\">What\'s Included in This Service:</b></h5><ul style=\"border: 0px; margin-right: 5px; margin-bottom: 0px; margin-left: 5px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: none none;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;\"=\"\"><li style=\"border: 0px; margin: 0px 0px 0px 24px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: outside none disc;\"><font color=\"#424242\">Custom graphics designed to enhance your real estate brand\'s visual appeal.\r\n</font></li><li style=\"border: 0px; margin: 0px 0px 0px 24px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: outside none disc;\"><font color=\"#424242\">Infographics, brochures, banners, and more, finely tuned to resonate with your target audience.</font></li></ul><p style=\"color: rgb(98, 100, 106); border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"><br></p><p style=\"color: rgb(98, 100, 106); border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"></p><h5 style=\"\"></h5><h5></h5><h5></h5><h5 style=\"line-height: 2;\"><span style=\"font-size: 18px;\"><b>🏢 Real Estate Industry Insight:</b></span></h5><ul><li style=\"line-height: 2;\"><font color=\"#424242\">In-depth knowledge of real estate design trends and standards.\r\n</font></li><li style=\"line-height: 2;\"><font color=\"#424242\">Visual elements crafted to convey the unique selling points of your properties.</font></li></ul><h5 style=\"line-height: 2;\"><b style=\"font-size: 18px; color: var(--heading-color); font-family: var(--heading-font); text-align: var(--bs-body-text-align);\">Additional Services:</b><br></h5><ul style=\"border: 0px; margin-right: 5px; margin-bottom: 0px; margin-left: 5px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: none none;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;\"=\"\"><li style=\"border: 0px; margin: 0px 0px 0px 24px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: outside none disc;\"><font color=\"#424242\">Custom design packages to suit your specific real estate marketing needs.\r\n</font></li><li style=\"border: 0px; margin: 0px 0px 0px 24px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: outside none disc;\"><font color=\"#424242\">Quick turnaround to meet tight deadlines and campaign launches.</font></li></ul><p style=\"color: rgb(98, 100, 106); border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"><br></p><p style=\"border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"></p><h5 style=\"\"></h5><h5><b style=\"font-size: 18px; color: var(--heading-color); font-family: var(--heading-font); text-align: var(--bs-body-text-align);\">Have Any Questions?</b></h5><p style=\"color: rgb(98, 100, 106); border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"><span style=\"color: rgb(0, 0, 0); font-size: 14px; font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align); display: inline !important;\">📧Let\'s chat :)</span><br></p><blockquote style=\"border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\">\r\n</blockquote></div></div>', '1700898615-6561a737223c6.png', 'Basic', 'Standard', 'Premium', '1', '2', '1', '1 Days', '1 Days', '1 Days', 200, NULL, 250, NULL, 300, NULL, 1, 1, 1, NULL, NULL, 1, '2023-05-16 01:29:02', '2023-11-25 02:06:03'),
(97, 8, 4, 'I will build you an customized eCommerce Flutter mobile app with the Zaika script', 'i-will-write-seo-content-for-your-blog', '<header style=\"border: 0px; margin: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;\"=\"\"><h6 style=\"color: rgb(98, 100, 106);\"></h6><h6 style=\"color: rgb(98, 100, 106);\"></h6><h2 class=\"section-title\" style=\"color: rgb(64, 65, 69); border: 0px; outline-style: initial; outline-width: 0px; padding: 0px 0px 25px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-weight:=\"\" 700;=\"\" font-size:=\"\" 20px;=\"\" line-height:=\"\" 28px;\"=\"\"></h2><h6 style=\"line-height: 2;\"><span style=\"font-size: 18px;\" times=\"\" new=\"\" roman\";\"=\"\"><b>✨Accepting Custom Orders</b></span></h6><h3 style=\"color: rgb(98, 100, 106);\"></h3><h5 style=\"color: rgb(98, 100, 106); line-height: 1.2;\"><span style=\"font-size: 14px; font-family: sans-serif; font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align); display: inline !important;\">Supercharge your eCommerce journey with a uniquely crafted Flutter mobile app, meticulously designed and seamlessly intertwined with the powerful Zaika script.📱 Bringing together the finesse of Flutter development and the robust Zaika script, I specialize in delivering cross-platform mobile apps that not only echo your brand but redefine your eCommerce experience.</span><br></h5></header><div class=\"description-wrapper\" style=\"border: 0px; margin: 0px; outline-style: initial; outline-width: 0px; padding: 0px 0px 20px; position: relative;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;\"=\"\"><div class=\"description-content\" data-impression-collected=\"true\" style=\"border: 0px; margin: 0px; outline-style: initial; outline-width: 0px; padding: 0px; overflow-wrap: break-word; max-height: none; overflow: hidden; word-break: break-word;\"><p style=\"border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"></p><h5><span style=\"border: 0px; margin: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><b><br></b></span></span></h5><h5 style=\"line-height: 2;\"><b style=\"color: var(--heading-color); font-family: var(--heading-font); font-size: 16px; text-align: var(--bs-body-text-align);\"><span style=\"font-size: 18px;\">💼 Avail the exclusive promotional rates</span></b></h5><p></p><p style=\"\"></p><p style=\"color: rgb(98, 100, 106); border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"><br></p><p style=\"border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"></p><h5 style=\"line-height: 2;\"><span style=\"font-size: 18px;\"><b>🚀 Distinctive Flutter App:</b></span></h5><ul style=\"border: 0px; margin-right: 5px; margin-bottom: 0px; margin-left: 5px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: none none;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;\"=\"\"><li style=\"border: 0px; margin: 0px 0px 0px 24px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: outside none disc;\"><font color=\"#424242\">Precision-designed Flutter mobile app tailored for Android and iOS, reflecting your brand\'s uniqueness.\r\n</font></li><li style=\"border: 0px; margin: 0px 0px 0px 24px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: outside none disc;\"><font color=\"#424242\">Integration of Zaika script for an enriched and feature-packed eCommerce voyage.</font></li></ul><p style=\"color: rgb(98, 100, 106); border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"><br></p><p style=\"color: rgb(98, 100, 106); border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"></p><h5 style=\"\"></h5><h5></h5><h5></h5><h5 style=\"line-height: 2;\"><span style=\"font-size: 18px;\"><b>🛒 Zaika Script Harmony:</b></span></h5><ul><li style=\"line-height: 2;\"><font color=\"#424242\">Effortless assimilation of Zaika script features, ensuring a comprehensive and scalable eCommerce solution.\r\n</font></li><li style=\"line-height: 2;\"><font color=\"#424242\">Personalization options to ensure the app aligns seamlessly with your brand persona.</font></li></ul><h5 style=\"line-height: 2;\"><b style=\"font-size: 18px; color: var(--heading-color); font-family: var(--heading-font); text-align: var(--bs-body-text-align);\">Additional Services:</b><br></h5><ul style=\"border: 0px; margin-right: 5px; margin-bottom: 0px; margin-left: 5px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: none none;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;\"=\"\"><li style=\"border: 0px; margin: 0px 0px 0px 24px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: outside none disc;\"><font color=\"#424242\">Unique features tailored to meet your specific business requirements.\r\n</font></li><li style=\"border: 0px; margin: 0px 0px 0px 24px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: outside none disc;\"><font color=\"#424242\">Integration with secure payment gateways for a seamless and trustworthy transaction experience.</font></li></ul><p style=\"color: rgb(98, 100, 106); border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"><br></p><p style=\"border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"></p><h5 style=\"\"></h5><h5><b style=\"font-size: 18px; color: var(--heading-color); font-family: var(--heading-font); text-align: var(--bs-body-text-align);\">What\'s Not Included:</b><br></h5><p></p><p style=\"color: rgb(98, 100, 106); border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"><span style=\"font-size: 14px;\"><br></span></p><p style=\"color: rgb(98, 100, 106); border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"><span style=\"font-size: 14px;\">Backend development (available through custom offers).\r\n</span></p><p style=\"color: rgb(98, 100, 106); border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"><span style=\"font-size: 14px;\">Ongoing maintenance services to keep your app at its prime.</span></p><blockquote style=\"border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\">\r\n</blockquote></div></div>', '1700897731-6561a3c35902e.png', 'Basic', 'Standard', 'Premium', '1', '2', '3', 'Less than a week', 'Less than a week', 'Less than a week', 200, NULL, 400, NULL, 500, NULL, 1, 1, 1, NULL, NULL, 1, '2023-05-16 02:18:29', '2023-11-25 01:43:11'),
(98, 8, 4, 'I will develop you an service based Flutter mobile app for Android and iOS', 'i-will-develop-php-laravel-codeigniter-node-website-design-rest-api', '<header style=\"border: 0px; margin: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;\"=\"\"><h6 style=\"color: rgb(98, 100, 106);\"></h6><h6 style=\"color: rgb(98, 100, 106);\"></h6><h2 class=\"section-title\" style=\"color: rgb(64, 65, 69); border: 0px; outline-style: initial; outline-width: 0px; padding: 0px 0px 25px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-weight:=\"\" 700;=\"\" font-size:=\"\" 20px;=\"\" line-height:=\"\" 28px;\"=\"\"></h2><h6 style=\"line-height: 2;\"><span style=\"font-size: 18px;\" times=\"\" new=\"\" roman\";\"=\"\"><b>✨ Ready for custom orders</b></span></h6><h3 style=\"color: rgb(98, 100, 106);\"></h3><h5 style=\"color: rgb(98, 100, 106); line-height: 1.2;\"><span style=\"font-size: 14px; font-family: sans-serif; font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align); display: inline !important;\">Transform your service-oriented business into a digital success story with a bespoke Flutter mobile app, compatible with both Android and iOS platforms. 📱 With expertise in Flutter development, I specialize in creating dynamic, cross-platform mobile apps tailored to showcase and enhance your service offerings.</span><br></h5></header><div class=\"description-wrapper\" style=\"border: 0px; margin: 0px; outline-style: initial; outline-width: 0px; padding: 0px 0px 20px; position: relative;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;\"=\"\"><div class=\"description-content\" data-impression-collected=\"true\" style=\"border: 0px; margin: 0px; outline-style: initial; outline-width: 0px; padding: 0px; overflow-wrap: break-word; max-height: none; overflow: hidden; word-break: break-word;\"><p style=\"border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"></p><h5><span style=\"border: 0px; margin: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><b><br></b></span></span></h5><h5 style=\"line-height: 2;\"><span style=\"font-size: 18px;\"><b>💼 Avail the current promotional rates.</b></span></h5><p></p><p style=\"\"></p><p style=\"color: rgb(98, 100, 106); border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"><br></p><p style=\"border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"></p><h5 style=\"line-height: 2;\"><b style=\"font-size: 18px; color: var(--heading-color); font-family: var(--heading-font); text-align: var(--bs-body-text-align);\">🚀 Flutter Excellence:</b><br></h5><ul style=\"border: 0px; margin-right: 5px; margin-bottom: 0px; margin-left: 5px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: none none;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;\"=\"\"><li style=\"border: 0px; margin: 0px 0px 0px 24px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: outside none disc;\"><font color=\"#424242\">Expertly designed Flutter mobile app for a seamless and engaging user experience.\r\n</font></li><li style=\"border: 0px; margin: 0px 0px 0px 24px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: outside none disc;\"><font color=\"#424242\">Cross-platform compatibility ensuring your app reaches both Android and iOS users.</font></li></ul><p style=\"color: rgb(98, 100, 106); border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"><br></p><p style=\"color: rgb(98, 100, 106); border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"></p><h5 style=\"\"></h5><h5></h5><h5></h5><h5 style=\"line-height: 2;\"><span style=\"font-size: 18px;\"><b>🛠️ Service-Centric Integration:</b></span></h5><ul><li style=\"line-height: 2;\"><font color=\"#424242\">Seamless integration of your service offerings, allowing users to effortlessly access and utilize your services.\r\n</font></li><li style=\"line-height: 2;\"><font color=\"#424242\">Intuitive interfaces designed for optimal user engagement.</font></li></ul><h5 style=\"line-height: 2;\"><b style=\"font-size: 18px; color: var(--heading-color); font-family: var(--heading-font); text-align: var(--bs-body-text-align);\">Additional Services:</b><br></h5><ul style=\"border: 0px; margin-right: 5px; margin-bottom: 0px; margin-left: 5px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: none none;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;\"=\"\"><li style=\"border: 0px; margin: 0px 0px 0px 24px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: outside none disc;\"><font color=\"#424242\">Customization options to reflect your brand identity and unique service features.\r\n</font></li><li style=\"border: 0px; margin: 0px 0px 0px 24px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: outside none disc;\"><font color=\"#424242\">Incorporation of appointment scheduling, bookings, or other service-specific functionalities.</font></li></ul><p style=\"color: rgb(98, 100, 106); border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"><br></p><p style=\"border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"></p><h5 style=\"\"></h5><h5><span style=\"font-size: 18px;\"><b>Have Any Questions?\r\n</b></span></h5><div><span style=\"font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align); display: inline !important;\">Let\'s chat 💬</span></div><div><span style=\"font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align); display: inline !important;\">\r\n</span></div><div><span style=\"font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align); display: inline !important;\">\r\n</span></div><div><span style=\"font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align); display: inline !important;\">\r\n</span></div><div><span style=\"font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align); display: inline !important;\">\r\n</span></div><div><span style=\"font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align); display: inline !important;\">\r\n</span></div><blockquote style=\"border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\">\r\n</blockquote></div></div>', '1700896932-6561a0a47d056.png', 'Basic', 'Standard', 'Premium', '1', '2', '3', '1 Days', '1 Days', '1 Days', 300, NULL, 400, NULL, 500, NULL, 1, 1, 1, NULL, NULL, 1, '2023-05-16 03:42:56', '2024-01-27 06:56:53');
INSERT INTO `projects` (`id`, `user_id`, `category_id`, `title`, `slug`, `description`, `image`, `basic_title`, `standard_title`, `premium_title`, `basic_revision`, `standard_revision`, `premium_revision`, `basic_delivery`, `standard_delivery`, `premium_delivery`, `basic_regular_charge`, `basic_discount_charge`, `standard_regular_charge`, `standard_discount_charge`, `premium_regular_charge`, `premium_discount_charge`, `project_on_off`, `project_approve_request`, `status`, `is_pro`, `pro_expire_date`, `offer_packages_available_or_not`, `created_at`, `updated_at`) VALUES
(99, 7, 4, 'I will develop you online food business flutter Android, iOS  mobile app', 'i-will-do-mobile-app-development-ios-app-development', '<header style=\"border: 0px; margin: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;\"=\"\"><h6 style=\"color: rgb(98, 100, 106);\"></h6><h6 style=\"color: rgb(98, 100, 106);\"></h6><h2 class=\"section-title\" style=\"color: rgb(64, 65, 69); border: 0px; outline-style: initial; outline-width: 0px; padding: 0px 0px 25px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-weight:=\"\" 700;=\"\" font-size:=\"\" 20px;=\"\" line-height:=\"\" 28px;\"=\"\"></h2><h6 style=\"line-height: 2;\"><span style=\"font-size: 18px;\" times=\"\" new=\"\" roman\";\"=\"\"><b>💼 Current rates are promotional</b></span></h6><h3 style=\"color: rgb(98, 100, 106);\"></h3><h5 style=\"color: rgb(98, 100, 106); line-height: 1.2;\"><span style=\"font-size: 14px; font-family: sans-serif; font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align); display: inline !important;\">A Elevate your online food business with a custom-designed Flutter mobile app for both Android and iOS platforms. With expertise in mobile app development, I specialize in creating seamless and user-friendly applications that bring the convenience of your food business to customers\' fingertips.</span></h5><h5 style=\"color: rgb(98, 100, 106); line-height: 1.2;\"><span style=\"font-size: 14px; font-family: sans-serif; font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align); display: inline !important;\"><br></span></h5></header><div class=\"description-wrapper\" style=\"border: 0px; margin: 0px; outline-style: initial; outline-width: 0px; padding: 0px 0px 20px; position: relative;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;\"=\"\"><div class=\"description-content\" data-impression-collected=\"true\" style=\"border: 0px; margin: 0px; outline-style: initial; outline-width: 0px; padding: 0px; overflow-wrap: break-word; max-height: none; overflow: hidden; word-break: break-word;\"><h5 style=\"line-height: 2;\"><b style=\"color: var(--heading-color); font-family: var(--heading-font); font-size: 16px; text-align: var(--bs-body-text-align);\"><span style=\"font-size: 18px;\">📲 Flutter App Development:</span></b></h5><ul style=\"border: 0px; margin-right: 5px; margin-bottom: 0px; margin-left: 5px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: none none;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;\"=\"\"><li style=\"border: 0px; margin: 0px 0px 0px 24px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: outside none disc;\"><font color=\"#424242\">Customized mobile app development using Flutter for a consistent and engaging user experience.\r\n</font></li><li style=\"border: 0px; margin: 0px 0px 0px 24px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: outside none disc;\"><font color=\"#424242\">Cross-platform compatibility for Android and iOS devices</font></li></ul><p style=\"color: rgb(98, 100, 106); border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"><br></p><p style=\"color: rgb(98, 100, 106); border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"></p><h5 style=\"\"></h5><h5></h5><h5></h5><h5 style=\"line-height: 2;\"><span style=\"font-size: 18px;\"><b>🍔 Online Food Business Integration:</b></span></h5><ul><li style=\"line-height: 2;\"><font color=\"#424242\">Seamless integration of your food business, enabling customers to browse, order, and enjoy your offerings effortlessly.\r\n</font></li><li style=\"line-height: 2;\"><font color=\"#424242\">Intuitive navigation and user-friendly interfaces.</font></li></ul><h5 style=\"line-height: 2;\"><b style=\"font-size: 18px; color: var(--heading-color); font-family: var(--heading-font); text-align: var(--bs-body-text-align);\">Additional Services:</b><br></h5><ul style=\"border: 0px; margin-right: 5px; margin-bottom: 0px; margin-left: 5px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: none none;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;\"=\"\"><li style=\"border: 0px; margin: 0px 0px 0px 24px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: outside none disc;\"><font color=\"#424242\">Customization options to reflect your brand identity and unique offerings.\r\n</font></li><li style=\"border: 0px; margin: 0px 0px 0px 24px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: outside none disc;\"><font color=\"#424242\">Integration with payment gateways for secure and convenient transactions.</font></li></ul><p></p><p style=\"color: rgb(98, 100, 106); border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"><span style=\"color: rgb(0, 0, 0); font-size: 14px; font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align); display: inline !important;\"><br></span></p><p style=\"color: rgb(98, 100, 106); border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"><span style=\"color: rgb(0, 0, 0); font-size: 14px; font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align); display: inline !important;\">💬 Chat with us to discuss your online food business\'s unique requirements, and let\'s bring your culinary offerings closer to your customers through a user-friendly mobile app.</span><br></p><blockquote style=\"border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\">\r\n</blockquote></div></div>', '1700895106-656199820ac61.png', 'Basic', 'Standard', 'Premium', '1', '1', '1', '1 Days', '1 Days', '1 Days', 200, NULL, 300, NULL, 700, NULL, 1, 1, 1, NULL, NULL, 1, '2023-05-16 03:51:24', '2023-11-25 00:51:46'),
(100, 7, 13, 'Unlock profound sales growth with my expertise in copywriting mastery', 'i-will-write-compelling-website-content-copywriting', '<header style=\"border: 0px; margin: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;\"=\"\"><h6 style=\"color: rgb(98, 100, 106);\"></h6><h6 style=\"color: rgb(98, 100, 106);\"></h6><h2 class=\"section-title\" style=\"color: rgb(64, 65, 69); border: 0px; outline-style: initial; outline-width: 0px; padding: 0px 0px 25px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-weight:=\"\" 700;=\"\" font-size:=\"\" 20px;=\"\" line-height:=\"\" 28px;\"=\"\"></h2><h6 style=\"line-height: 2;\"><span style=\"font-size: 18px;\" times=\"\" new=\"\" roman\";\"=\"\"><b>💼 Current rates are promotional</b></span></h6><h3 style=\"color: rgb(98, 100, 106);\"></h3><h5 style=\"color: rgb(98, 100, 106); line-height: 1.2;\"><span style=\"font-size: 14px; font-family: sans-serif; font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align); display: inline !important;\">Elevate your brand and drive unprecedented sales with the prowess of a professional content writer at your service. 🚀 With a passion for crafting compelling copies, I specialize in creating content that not only tells your brand story but propels your sales to new heights.</span><br></h5></header><div class=\"description-wrapper\" style=\"border: 0px; margin: 0px; outline-style: initial; outline-width: 0px; padding: 0px 0px 20px; position: relative;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;\"=\"\"><div class=\"description-content\" data-impression-collected=\"true\" style=\"border: 0px; margin: 0px; outline-style: initial; outline-width: 0px; padding: 0px; overflow-wrap: break-word; max-height: none; overflow: hidden; word-break: break-word;\"><p style=\"border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"></p><h5><span style=\"border: 0px; margin: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><b><br></b></span></span></h5><h5 style=\"line-height: 2;\"><b style=\"color: var(--heading-color); font-family: var(--heading-font); font-size: 16px; text-align: var(--bs-body-text-align);\"><span style=\"font-size: 18px;\">📝 Strategic Copywriting:</span></b></h5><ul style=\"border: 0px; margin-right: 5px; margin-bottom: 0px; margin-left: 5px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: none none;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;\"=\"\"><li style=\"border: 0px; margin: 0px 0px 0px 24px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: outside none disc;\"><font color=\"#424242\">Tailored copies designed to resonate with your target audience and propel them to action.\r\n</font></li><li style=\"border: 0px; margin: 0px 0px 0px 24px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: outside none disc;\"><font color=\"#424242\">Persuasive messaging that transforms visitors into customers.</font></li></ul><p style=\"color: rgb(98, 100, 106); border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"><br></p><p style=\"color: rgb(98, 100, 106); border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"></p><h5 style=\"\"></h5><h5></h5><h5></h5><h5 style=\"line-height: 2;\"><span style=\"font-size: 18px;\"><b>📊 Sales-Boosting Content:</b></span></h5><ul><li style=\"line-height: 2;\"><font color=\"#424242\">Engaging product descriptions, captivating landing pages, and magnetic calls-to-action.\r\n</font></li><li style=\"line-height: 2;\"><font color=\"#424242\">SEO-optimized content for enhanced discoverability.</font></li></ul><h5 style=\"line-height: 2;\"><b style=\"font-size: 18px; color: var(--heading-color); font-family: var(--heading-font); text-align: var(--bs-body-text-align);\">Additional Services:</b><br></h5><ul style=\"border: 0px; margin-right: 5px; margin-bottom: 0px; margin-left: 5px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: none none;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;\"=\"\"><li style=\"border: 0px; margin: 0px 0px 0px 24px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: outside none disc;\"><font color=\"#424242\">Customized content strategies to align with your brand voice and marketing goals.\r\n</font></li><li style=\"border: 0px; margin: 0px 0px 0px 24px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: outside none disc;\"><font color=\"#424242\">Iterative reviews and revisions for content that evolves with your feedback.</font></li></ul><p></p><p style=\"color: rgb(98, 100, 106); border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"><span style=\"color: rgb(0, 0, 0); font-size: 14px; font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align); display: inline !important;\"><br></span></p><p style=\"color: rgb(98, 100, 106); border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"><span style=\"color: rgb(0, 0, 0); font-size: 14px; font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align); display: inline !important;\">Message me before placing order to discuss your specific business goals I would be glad to answer.</span><br></p><blockquote style=\"border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\">\r\n</blockquote></div></div>', '1699191208-654799a800029.png', 'Basic', 'Standard', 'Premium', '2', '5', '1', '1 Days', '1 Days', '1 Days', 100, NULL, 200, NULL, 300, NULL, 1, 1, 1, NULL, NULL, 1, '2023-05-16 04:13:39', '2023-11-25 03:49:13'),
(101, 7, 13, 'I will create Pitch decks for your Startups round based investment funding pitch', 'i-will-write-powerful-and-engaging-website-content', '<header style=\"border: 0px; margin: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;\"=\"\"><h6 style=\"color: rgb(98, 100, 106);\"></h6><h6 style=\"color: rgb(98, 100, 106);\"></h6><h2 class=\"section-title\" style=\"color: rgb(64, 65, 69); border: 0px; outline-style: initial; outline-width: 0px; padding: 0px 0px 25px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-weight:=\"\" 700;=\"\" font-size:=\"\" 20px;=\"\" line-height:=\"\" 28px;\"=\"\"></h2><h6 style=\"line-height: 2;\"><span style=\"font-size: 18px;\" times=\"\" new=\"\" roman\";\"=\"\"><b>✨ Available for Custom Orders</b></span></h6><h3 style=\"color: rgb(98, 100, 106);\"></h3><h5 style=\"color: rgb(98, 100, 106); line-height: 1.2;\"><span style=\"font-size: 14px; font-family: sans-serif; font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align); display: inline !important;\">Secure the investment your startup deserves with a professionally crafted pitch deck tailored to captivate investors. 🚀 With a proven track record, I specialize in creating compelling pitch decks that effectively communicate your startup\'s value proposition, growth potential, and financial outlook.</span><br></h5></header><div class=\"description-wrapper\" style=\"border: 0px; margin: 0px; outline-style: initial; outline-width: 0px; padding: 0px 0px 20px; position: relative;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;\"=\"\"><div class=\"description-content\" data-impression-collected=\"true\" style=\"border: 0px; margin: 0px; outline-style: initial; outline-width: 0px; padding: 0px; overflow-wrap: break-word; max-height: none; overflow: hidden; word-break: break-word;\"><p style=\"border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"></p><h5><br></h5><p style=\"border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"></p><h5 style=\"line-height: 2;\"><b style=\"color: var(--heading-color); font-family: var(--heading-font); text-align: var(--bs-body-text-align); font-size: 18px;\">📊 Strategic Deck Design:</b><br></h5><div><b style=\"font-size: 18px; color: var(--heading-color); font-family: var(--heading-font); text-align: var(--bs-body-text-align);\">\r\n</b></div><ul style=\"border: 0px; margin-right: 5px; margin-bottom: 0px; margin-left: 5px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: none none;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;\"=\"\"><li style=\"border: 0px; margin: 0px 0px 0px 24px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: outside none disc;\"><span style=\"color: rgb(66, 66, 66); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align); display: inline !important;\">Custom pitch deck designs that highlight key elements and tell your startup story effectively.</span><br></li><li style=\"border: 0px; margin: 0px 0px 0px 24px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: outside none disc;\"><font color=\"#424242\">Visual elements crafted for maximum impact and engagement.</font></li></ul><p style=\"border: 0px; margin: 0px 0px 0px 24px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: outside none disc;\"><font color=\"#424242\"><br></font></p><p style=\"color: rgb(98, 100, 106); border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"></p><h5 style=\"\"></h5><h5></h5><h5></h5><h5 style=\"line-height: 2;\"><span style=\"font-size: 18px;\"><b>💡 Content Development:</b></span></h5><ul><li style=\"line-height: 2;\"><font color=\"#424242\">Comprehensive content creation to articulate your business model, market opportunity.</font></li><li style=\"line-height: 2;\"><font color=\"#424242\">Concise and persuasive messaging to resonate with potential investors.</font></li></ul><h5 style=\"line-height: 2;\"><b style=\"font-size: 18px; color: var(--heading-color); font-family: var(--heading-font); text-align: var(--bs-body-text-align);\">Additional Services:</b><br></h5><ul style=\"border: 0px; margin-right: 5px; margin-bottom: 0px; margin-left: 5px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: none none;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;\"=\"\"><li style=\"border: 0px; margin: 0px 0px 0px 24px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: outside none disc;\"><font color=\"#424242\">Customization options to align with your specific industry and target audience.\r\n</font></li><li style=\"border: 0px; margin: 0px 0px 0px 24px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: outside none disc;\"><font color=\"#424242\">Iterative reviews and revisions for a pitch deck that evolves with your feedback.</font></li></ul><p style=\"color: rgb(98, 100, 106); border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"><br></p><p style=\"border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"></p><h5 style=\"\"></h5><h5><b style=\"font-size: 18px; color: var(--heading-color); font-family: var(--heading-font); text-align: var(--bs-body-text-align);\">📧 Please message me before ordering</b></h5><blockquote style=\"border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\">\r\n</blockquote></div></div>', '1699190458-654796bad8a5d.png', 'Basic', 'Standard', 'Premium', '1', '2', '3', '1 Days', '1 Days', '1 Days', 100, NULL, 200, NULL, 300, NULL, 1, 1, 1, NULL, NULL, 1, '2023-05-16 04:56:08', '2024-01-27 07:01:35'),
(102, 7, 13, 'Your SEO Advantage: I will be your dedicated SEO website content writer', 'i-will-be-your-seo-website-content-writer', '<header style=\"border: 0px; margin: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;\"=\"\"><h6 style=\"color: rgb(98, 100, 106);\"></h6><h6 style=\"color: rgb(98, 100, 106);\"></h6><h2 class=\"section-title\" style=\"color: rgb(64, 65, 69); border: 0px; outline-style: initial; outline-width: 0px; padding: 0px 0px 25px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-weight:=\"\" 700;=\"\" font-size:=\"\" 20px;=\"\" line-height:=\"\" 28px;\"=\"\"></h2><h6 style=\"line-height: 2;\"><span style=\"font-size: 18px;\" times=\"\" new=\"\" roman\";\"=\"\"><b>✨ Available for Custom Orders</b></span></h6><h3 style=\"color: rgb(98, 100, 106);\"></h3><h5 style=\"color: rgb(98, 100, 106); line-height: 1.2;\"><span style=\"font-size: 14px; font-family: sans-serif; font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align); display: inline !important;\">With a passion for precision and SEO expertise, I specialize in crafting website content that not only captivates your audience but also boosts your search engine rankings.</span><br></h5></header><div class=\"description-wrapper\" style=\"border: 0px; margin: 0px; outline-style: initial; outline-width: 0px; padding: 0px 0px 20px; position: relative;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;\"=\"\"><div class=\"description-content\" data-impression-collected=\"true\" style=\"border: 0px; margin: 0px; outline-style: initial; outline-width: 0px; padding: 0px; overflow-wrap: break-word; max-height: none; overflow: hidden; word-break: break-word;\"><p style=\"border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"></p><h5><br></h5><p style=\"border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"></p><h5 style=\"line-height: 2;\"><b style=\"font-size: 18px; color: var(--heading-color); font-family: var(--heading-font); text-align: var(--bs-body-text-align);\">What\'s Included in This Gig:</b><br></h5><ul style=\"border: 0px; margin-right: 5px; margin-bottom: 0px; margin-left: 5px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: none none;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;\"=\"\"><li style=\"border: 0px; margin: 0px 0px 0px 24px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: outside none disc;\"><font color=\"#424242\">Tailored website content infused with strategic SEO elements for your business needs</font></li><li style=\"border: 0px; margin: 0px 0px 0px 24px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: outside none disc;\"><font color=\"#424242\">Keyword-rich and engaging copy for enhanced discoverability for better search engine optimizable&nbsp;</font></li></ul><p style=\"color: rgb(98, 100, 106); border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"><br></p><p style=\"color: rgb(98, 100, 106); border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"></p><h5 style=\"\"></h5><h5></h5><h5></h5><h5 style=\"line-height: 2;\"><span style=\"font-size: 18px;\"><b>Content Strategy 🔍</b></span></h5><ul><li style=\"line-height: 2;\"><font color=\"#424242\">Comprehensive keyword research and integration for targeted content.\r\n</font></li><li style=\"line-height: 2;\"><font color=\"#424242\">Structured content plans to align with your SEO goals.</font></li></ul><h5 style=\"line-height: 2;\"><b style=\"font-size: 18px; color: var(--heading-color); font-family: var(--heading-font); text-align: var(--bs-body-text-align);\">Additional Services:</b><br></h5><ul style=\"border: 0px; margin-right: 5px; margin-bottom: 0px; margin-left: 5px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: none none;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;\"=\"\"><li style=\"border: 0px; margin: 0px 0px 0px 24px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: outside none disc;\"><font color=\"#424242\">Customized content packages for various website sections.\r\n</font></li><li style=\"border: 0px; margin: 0px 0px 0px 24px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: outside none disc;\"><font color=\"#424242\">Regular content updates for sustained SEO benefits.</font></li></ul><p style=\"color: rgb(98, 100, 106); border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"><br></p><p style=\"color: rgb(98, 100, 106); border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"><span style=\"color: rgb(0, 0, 0); font-size: 14px; font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align); display: inline !important;\">💬 Chat with me for personalized SEO content solutions and let\'s boost your website\'s visibility and engagement.</span><br></p><blockquote style=\"border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\">\r\n</blockquote></div></div>', '1699189450-654792ca066b0.png', 'Basic', 'Standard', 'Premium', '1', '2', '3', '1 Days', '1 Days', '1 Days', 100, NULL, 120, NULL, 150, NULL, 1, 1, 1, NULL, NULL, 1, '2023-05-16 04:57:22', '2023-11-25 00:05:32'),
(103, 7, 13, 'I will create quality, SEO driven web content for your eCommerce business', 'asd-haysdb-aksjda-dasdas-', '<header style=\"border: 0px; margin: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;\"=\"\"><h6 style=\"color: rgb(98, 100, 106);\"></h6><h6 style=\"color: rgb(98, 100, 106);\"></h6><h2 class=\"section-title\" style=\"color: rgb(64, 65, 69); border: 0px; outline-style: initial; outline-width: 0px; padding: 0px 0px 25px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-weight:=\"\" 700;=\"\" font-size:=\"\" 20px;=\"\" line-height:=\"\" 28px;\"=\"\"></h2><h6 style=\"line-height: 2;\"><span style=\"font-size: 18px;\" times=\"\" new=\"\" roman\";\"=\"\"><b>🌟 Crafting compelling and SEO-driven web content</b></span></h6><h3 style=\"color: rgb(98, 100, 106);\"></h3><h5 style=\"color: rgb(98, 100, 106); line-height: 1.2;\"><span style=\"font-size: 14px; font-family: sans-serif; font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align); display: inline !important;\">With a keen understanding of both quality content creation and SEO strategies, I\'ll elevate your eCommerce brand with engaging and search-optimized web content.</span></h5></header><div class=\"description-wrapper\" style=\"border: 0px; margin: 0px; outline-style: initial; outline-width: 0px; padding: 0px 0px 20px; position: relative;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;\"=\"\"><div class=\"description-content\" data-impression-collected=\"true\" style=\"border: 0px; margin: 0px; outline-style: initial; outline-width: 0px; padding: 0px; overflow-wrap: break-word; max-height: none; overflow: hidden; word-break: break-word;\"><p></p><p style=\"\"></p><p style=\"color: rgb(98, 100, 106); border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"><br></p><p style=\"border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"></p><h5 style=\"line-height: 2;\"><b style=\"font-size: 18px; color: var(--heading-color); font-family: var(--heading-font); text-align: var(--bs-body-text-align);\">📜What\'s Included in This Gig:</b><br></h5><ul style=\"border: 0px; margin-right: 5px; margin-bottom: 0px; margin-left: 5px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: none none;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;\"=\"\"><li style=\"border: 0px; margin: 0px 0px 0px 24px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: outside none disc;\"><font color=\"#424242\">Engaging and persuasive web content crafted to resonate with your target audience.\r\n</font></li><li style=\"border: 0px; margin: 0px 0px 0px 24px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: outside none disc;\"><font color=\"#424242\">Unique product descriptions, brand stories, and landing page content.</font></li></ul><p style=\"color: rgb(98, 100, 106); border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"><br></p><p style=\"color: rgb(98, 100, 106); border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"></p><h5 style=\"\"></h5><h5></h5><h5></h5><h5 style=\"line-height: 2;\"><span style=\"font-size: 18px;\"><b>🔍 SEO Optimization:</b></span></h5><ul><li style=\"line-height: 2;\"><font color=\"#424242\">Implementing SEO best practices to enhance your website\'s visibility on search engines for your business</font></li><li style=\"line-height: 2;\"><font color=\"#424242\">Keyword research and integration for strategic content placement on Google, Bing and other search engines</font></li></ul><h5 style=\"line-height: 2;\"><span style=\"font-size: 18px;\"><b>Additional Services:</b></span></h5><ul style=\"border: 0px; margin-right: 5px; margin-bottom: 0px; margin-left: 5px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: none none;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;\"=\"\"><li style=\"border: 0px; margin: 0px 0px 0px 24px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: outside none disc;\"><font color=\"#424242\">Customized content packages based on your specific&nbsp;eCommerce business needs.\r\n</font></li><li style=\"border: 0px; margin: 0px 0px 0px 24px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: outside none disc;\"><font color=\"#424242\">Ongoing content updates and optimization.</font></li></ul><p style=\"color: rgb(98, 100, 106); border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"><br></p><p style=\"border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"></p><h5 style=\"\"></h5><h5><b style=\"font-size: 18px; color: var(--heading-color); font-family: var(--heading-font); text-align: var(--bs-body-text-align);\">🤔Have Any Questions? Contact me</b></h5><blockquote style=\"border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\">\r\n</blockquote></div></div>', '1699188456-65478ee8de9b8.png', 'Basic', 'Standard', 'Premium', 'unlimited', 'unlimited', '1', '1 Days', '1 Days', '1 Days', 100, NULL, 120, NULL, 150, NULL, 1, 1, 1, NULL, NULL, 1, '2023-05-16 04:58:35', '2023-11-24 23:49:09'),
(104, 7, 1, 'I will design an attractive Youtube thumb for your new video', 'i-will-design-attractive-youtube-thumbnails', '<header style=\"border: 0px; margin: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;\"=\"\"><h6 style=\"color: rgb(98, 100, 106);\"></h6><h6 style=\"color: rgb(98, 100, 106);\"></h6><h2 class=\"section-title\" style=\"color: rgb(64, 65, 69); border: 0px; outline-style: initial; outline-width: 0px; padding: 0px 0px 25px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-weight:=\"\" 700;=\"\" font-size:=\"\" 20px;=\"\" line-height:=\"\" 28px;\"=\"\"></h2><h6 style=\"line-height: 2;\"><span style=\"font-size: 18px;\" times=\"\" new=\"\" roman\";\"=\"\"><b>Need ✨shining YouTube thumbnail?</b></span></h6><h3 style=\"color: rgb(98, 100, 106);\"></h3><h5 style=\"color: rgb(98, 100, 106); line-height: 1.6;\"><font face=\"sans-serif\"><span style=\"font-size: 14px;\">Elevate your content with eye-catching YouTube thumbnails designed to enhance visibility and engagement. With a keen eye for visual appeal, we specialize in creating thumbnails that entice viewers and reflect the essence of your content.</span></font></h5></header><div class=\"description-wrapper\" style=\"border: 0px; margin: 0px; outline-style: initial; outline-width: 0px; padding: 0px 0px 20px; position: relative; line-height: 1.6;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;\"=\"\"><div class=\"description-content\" data-impression-collected=\"true\" style=\"border: 0px; margin: 0px; outline-style: initial; outline-width: 0px; padding: 0px; overflow-wrap: break-word; max-height: none; overflow: hidden; word-break: break-word; line-height: 1.8;\"><p style=\"border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"></p><h5><br></h5><p style=\"border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"></p><h5 style=\"line-height: 2;\"><span style=\"font-size: 18px;\"><b>🎬 Perfect for:</b></span></h5><ul style=\"border: 0px; margin-right: 5px; margin-bottom: 0px; margin-left: 5px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: none none;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;\"=\"\"><li style=\"border: 0px; margin: 0px 0px 0px 24px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: outside none disc; line-height: 1.8;\"><font color=\"#424242\"><b>Vlogs</b> - Elevate your vlogs with captivating thumbnails that tell your story at a glance for your loving fans</font></li><li style=\"border: 0px; margin: 0px 0px 0px 24px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: outside none disc; line-height: 1.8;\"><font color=\"#424242\"><b>Tutorials</b> - Guide viewers seamlessly with visually enticing thumbnails for your tutorials and earn trusts</font></li><li style=\"border: 0px; margin: 0px 0px 0px 24px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: outside none disc; line-height: 1.8;\"><font color=\"#424242\"><b>Gaming </b>- Gaming is on of the top niche. Level up your gaming content with attention-grabbing thumbnail</font></li></ul><p style=\"color: rgb(98, 100, 106); border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"><br></p><h5 style=\"line-height: 2;\"><b style=\"font-size: 18px; color: var(--heading-color); font-family: var(--heading-font); text-align: var(--bs-body-text-align);\">What\'s not included</b><br></h5><ul style=\"border: 0px; margin-right: 5px; margin-bottom: 0px; margin-left: 5px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: none none;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;\"=\"\"><li style=\"border: 0px; margin: 0px 0px 0px 24px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: outside none disc;\"><font color=\"#424242\">Content creation (I charge extra for content creation. You will have to pay $5 extra for an image editing)&nbsp;</font></li><li style=\"border: 0px; margin: 0px 0px 0px 24px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: outside none disc;\"><font color=\"#424242\">Revisions beyond the agreed-upon scope (12 revision are free but more than 12 will be needed $2/5 for each)</font></li></ul><p style=\"color: rgb(98, 100, 106); border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"><br></p><p style=\"border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"></p><h5 style=\"\"></h5><h5 style=\"line-height: 2;\"><b style=\"font-size: 18px; color: var(--heading-color); font-family: var(--heading-font); text-align: var(--bs-body-text-align);\">Have any questions?</b><br></h5><p></p><p style=\"color: rgb(98, 100, 106); border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"><span style=\"color: rgb(0, 0, 0); font-size: 14px; font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align); display: inline !important;\">💬 Contact with me before ordering I will reply any of your questions you may have. Thanks</span><br></p><blockquote style=\"border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\">\r\n</blockquote></div></div>', '1699187854-65478c8e08747.png', 'Basic', 'Standard', 'Premium', '5', '10', '10', '1 Days', '1 Days', '1 Days', 50, NULL, 69, NULL, 90, NULL, 1, 1, 1, NULL, NULL, 1, '2023-05-16 05:01:21', '2023-11-25 03:48:34'),
(105, 7, 1, 'I will design a  website or landing page design for your SaaS', 'i-will-do-figma-website-design-or-landing-page-ui-ux-design', '<header style=\"border: 0px; margin: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;\"=\"\"><h6 style=\"color: rgb(98, 100, 106);\"></h6><h6 style=\"color: rgb(98, 100, 106);\"></h6><h2 class=\"section-title\" style=\"color: rgb(64, 65, 69); border: 0px; outline-style: initial; outline-width: 0px; padding: 0px 0px 25px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-weight:=\"\" 700;=\"\" font-size:=\"\" 20px;=\"\" line-height:=\"\" 28px;\"=\"\"></h2><h6 style=\"line-height: 2;\"><span style=\"font-size: 18px;\" times=\"\" new=\"\" roman\";\"=\"\"><b>About this gig</b></span></h6><h3 style=\"color: rgb(98, 100, 106);\"></h3><h5 style=\"color: rgb(98, 100, 106); line-height: 1.2;\"><span style=\"font-size: 14px; font-family: sans-serif; font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align); display: inline !important;\">Are you considering how to create a successful Facebook Ads Campaign that can increase the number of leads or sales for your business, resulting in the achievement of your business goals?</span><br></h5></header><div class=\"description-wrapper\" style=\"border: 0px; margin: 0px; outline-style: initial; outline-width: 0px; padding: 0px 0px 20px; position: relative;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;\"=\"\"><div class=\"description-content\" data-impression-collected=\"true\" style=\"border: 0px; margin: 0px; outline-style: initial; outline-width: 0px; padding: 0px; overflow-wrap: break-word; max-height: none; overflow: hidden; word-break: break-word;\"><p style=\"border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"></p><h5><span style=\"border: 0px; margin: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><b><br></b></span></span></h5><h5 style=\"line-height: 2;\"><b style=\"color: var(--heading-color); font-family: var(--heading-font); font-size: 16px; text-align: var(--bs-body-text-align);\"><span style=\"font-size: 18px;\">✨Available for custom order</span></b><br></h5><p></p><p style=\"color: rgb(98, 100, 106); border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px; line-height: 1.6;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"><span style=\"font-size: 14px;\">With a decade of expertise, I excel in creating captivating Figma website designs and landing page UI/UX. My portfolio boasts successful partnerships spanning AI, Web 3.0, ICOs, IDOs, Crypto, Blockchain, E-commerce, Retail, Automobiles, and beyond</span></p><p style=\"color: rgb(98, 100, 106); border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px; line-height: 1.4;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"><span style=\"font-size: 14px;\"><br></span></p><p style=\"border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"></p><h5 style=\"line-height: 2;\"><span style=\"font-size: 18px;\"><b>🌐&nbsp; Top Clients:</b></span></h5><ul style=\"border: 0px; margin-right: 5px; margin-bottom: 0px; margin-left: 5px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: none none;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;\"=\"\"><li style=\"border: 0px; margin: 0px 0px 0px 24px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: outside none disc;\"><font color=\"#424242\"><b>Governments </b>- I work with governments around the world to improve products for citizens</font></li><li style=\"border: 0px; margin: 0px 0px 0px 24px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: outside none disc;\"><font color=\"#424242\"><b>Intelio&nbsp;</b>- Collaborated with intelio to enhance the experience of their products</font></li><li style=\"border: 0px; margin: 0px 0px 0px 24px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: outside none disc;\"><font color=\"#424242\"><b>Goolio&nbsp;</b>- Worked on Goolio Drive to maximize the potential and&nbsp;revenue</font></li><li style=\"border: 0px; margin: 0px 0px 0px 24px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: outside none disc;\"><font color=\"#424242\"><b>Giantsoft </b>- Collaborating with Giantsoft for better experience of their users in AI</font></li></ul><p style=\"color: rgb(98, 100, 106); border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"><br></p><p style=\"color: rgb(98, 100, 106); border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"></p><h5 style=\"\"></h5><h5></h5><h5></h5><h5 style=\"line-height: 2;\"><span style=\"font-size: 18px;\"><b>What\'s included in this Gig:</b></span></h5><ul><li style=\"line-height: 2;\"><span style=\"color: rgb(66, 66, 66); text-align: var(--bs-body-text-align); display: inline !important;\"><b>Homepage</b></span><span style=\"color: rgb(66, 66, 66); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align); display: inline !important;\"> - Up to 5 sections with well researched and explained case study for stakeholders</span></li><li style=\"line-height: 2;\"><span style=\"color: rgb(66, 66, 66); text-align: var(--bs-body-text-align); display: inline !important;\"><b>Homepage</b></span><span style=\"color: rgb(66, 66, 66); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align); display: inline !important;\"> + 1 Inner page designed with researched and analyzed data for enhanced user experience</span></li></ul><h5 style=\"line-height: 2;\"><b style=\"font-size: 18px; color: var(--heading-color); font-family: var(--heading-font); text-align: var(--bs-body-text-align);\">🌐 My specialty</b><br></h5><ul style=\"border: 0px; margin-right: 5px; margin-bottom: 0px; margin-left: 5px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: none none;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;\"=\"\"><li style=\"border: 0px; margin: 0px 0px 0px 24px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: outside none disc;\"><font color=\"#424242\"><b>Apply Updated UX Methods</b> - I will work on most updated UX methods like double diamond</font></li><li style=\"border: 0px; margin: 0px 0px 0px 24px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: outside none disc;\"><font color=\"#424242\"><b>Maintain Quality Work</b> - Quality is must for any user experience I maintain the highest quality possible</font></li><li style=\"border: 0px; margin: 0px 0px 0px 24px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: outside none disc;\"><font color=\"#424242\"><b>On-Time Delivery</b> - Worried about timing? No worries my delivery rate is high I\'ll deliver on time</font></li></ul><p style=\"color: rgb(98, 100, 106); border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"><br></p><p style=\"border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"></p><h5 style=\"\"></h5><h5 style=\"line-height: 1;\"><b style=\"font-size: 18px; color: var(--heading-color); font-family: var(--heading-font); text-align: var(--bs-body-text-align);\">Please 📩 message me before ordering</b></h5><blockquote style=\"border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\">\r\n</blockquote></div></div>', '1699187515-65478b3b0682d.png', 'Basic', 'Standard', 'Premium', '1', '1', '1', '1 Days', '1 Days', '1 Days', 100, NULL, 120, NULL, 170, NULL, 1, 1, 1, NULL, NULL, 1, '2023-05-16 05:05:24', '2023-11-27 07:26:54');
INSERT INTO `projects` (`id`, `user_id`, `category_id`, `title`, `slug`, `description`, `image`, `basic_title`, `standard_title`, `premium_title`, `basic_revision`, `standard_revision`, `premium_revision`, `basic_delivery`, `standard_delivery`, `premium_delivery`, `basic_regular_charge`, `basic_discount_charge`, `standard_regular_charge`, `standard_discount_charge`, `premium_regular_charge`, `premium_discount_charge`, `project_on_off`, `project_approve_request`, `status`, `is_pro`, `pro_expire_date`, `offer_packages_available_or_not`, `created_at`, `updated_at`) VALUES
(107, 7, 11, 'I will be your Facebook campaign manager to run Shopify Facebook ads', 'as-dasdasuhyd-bsdjkaskjasdasdasda-s', '<header style=\"border: 0px; margin: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;\"=\"\"><h6 style=\"color: rgb(98, 100, 106);\"></h6><h6 style=\"color: rgb(98, 100, 106);\"></h6><h2 class=\"section-title\" style=\"color: rgb(64, 65, 69); border: 0px; outline-style: initial; outline-width: 0px; padding: 0px 0px 25px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-weight:=\"\" 700;=\"\" font-size:=\"\" 20px;=\"\" line-height:=\"\" 28px;\"=\"\"></h2><h6 style=\"line-height: 2;\"><span style=\"text-align: var(--bs-body-text-align); display: inline !important; font-size: 18px;\"><b>🎯 Facebook Campaign Management:\r\n</b></span></h6><h6 style=\"line-height: 1.6;\"><span style=\"color: rgb(98, 100, 106); font-family: sans-serif; font-size: 14px; font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align); display: inline !important;\">As your dedicated Facebook Campaign Manager, I will bring expertise in running strategic and effective Shopify Facebook ad campaigns. 📈 With a proven track record, I\'ve successfully managed and optimized Facebook campaigns for Shopify businesses, ensuring increased visibility, engagement, and conversions.</span><br></h6></header><div class=\"description-wrapper\" style=\"border: 0px; margin: 0px; outline-style: initial; outline-width: 0px; padding: 0px 0px 20px; position: relative;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;\"=\"\"><div class=\"description-content\" data-impression-collected=\"true\" style=\"border: 0px; margin: 0px; outline-style: initial; outline-width: 0px; padding: 0px; overflow-wrap: break-word; max-height: none; overflow: hidden; word-break: break-word;\"><p style=\"border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"></p><h5><br></h5><p style=\"border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"></p><h5 style=\"line-height: 2;\"><b style=\"font-size: 18px; color: var(--heading-color); font-family: var(--heading-font); text-align: var(--bs-body-text-align);\">🛒 Shopify Facebook Ads:\r\n</b><br></h5><div><b style=\"font-size: 18px; color: var(--heading-color); font-family: var(--heading-font); text-align: var(--bs-body-text-align);\">\r\n</b></div><ul style=\"border: 0px; margin-right: 5px; margin-bottom: 0px; margin-left: 5px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: none none;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;\"=\"\"><li style=\"border: 0px; margin: 0px 0px 0px 24px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: outside none disc;\"><font color=\"#424242\">Tailored ad creatives to showcase your Shopify products effectively (I will show my case study)</font></li><li style=\"border: 0px; margin: 0px 0px 0px 24px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: outside none disc;\"><font color=\"#424242\">Continuous monitoring and optimization for improved ROI (Monitoring provides better option)&nbsp;</font></li></ul><p style=\"color: rgb(98, 100, 106); border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"><br></p><p style=\"color: rgb(98, 100, 106); border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"></p><h5 style=\"\"></h5><h5></h5><h5></h5><h5 style=\"line-height: 2;\"><span style=\"font-size: 18px;\"><b>Additional Services:</b></span></h5><ul><li style=\"line-height: 2;\"><font color=\"#424242\">Customization options available for specific business goals (Customize order for specific business goal)</font></li><li style=\"line-height: 2;\"><font color=\"#424242\">Ad performance analytics and reporting.</font></li></ul><h5 style=\"line-height: 2;\"><span style=\"font-size: 18px;\"><b>Final Delivery Includes:</b></span></h5><ul style=\"border: 0px; margin-right: 5px; margin-bottom: 0px; margin-left: 5px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: none none;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;\"=\"\"><li style=\"border: 0px; margin: 0px 0px 0px 24px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: outside none disc;\"><font color=\"#424242\">Detailed insights into campaign performance to drive better results for your ad campaign&nbsp;</font></li><li style=\"border: 0px; margin: 0px 0px 0px 24px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: outside none disc;\"><font color=\"#424242\">Recommendations for future improvements. I will provide recommendation to run better ads in the future</font></li></ul><p></p><p style=\"color: rgb(98, 100, 106); border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"><span style=\"color: rgb(0, 0, 0); font-size: 14px; font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align); display: inline !important;\"><br></span></p><p style=\"border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"><font color=\"#000000\"><span style=\"font-size: 14px;\">💬 Chat with us and let\'s boost your Shopify presence through strategic Facebook campaigns.</span></font></p><blockquote style=\"border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\">\r\n</blockquote></div></div>', '1699186857-654788a9a99f5.png', 'Basic', 'Standard', 'Premium', '3', '7', '9', 'Less than a month', 'Less than a month', 'Less than a month', 100, NULL, 200, NULL, 300, NULL, 1, 1, 1, NULL, NULL, 1, '2023-05-16 05:08:19', '2023-12-04 00:24:00'),
(108, 7, 2, 'I will build responsive WordPress website design and ecommerce website', 'i-will-build-responsive-wordpress-website-design-and-ecommerce-website', '<header style=\"border: 0px; margin: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;\"=\"\"><h6 style=\"color: rgb(98, 100, 106);\"></h6><h6 style=\"color: rgb(98, 100, 106);\"></h6><h2 class=\"section-title\" style=\"color: rgb(64, 65, 69); border: 0px; outline-style: initial; outline-width: 0px; padding: 0px 0px 25px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-weight:=\"\" 700;=\"\" font-size:=\"\" 20px;=\"\" line-height:=\"\" 28px;\"=\"\"></h2><h6 style=\"line-height: 2;\"><span style=\"font-size: 18px;\" times=\"\" new=\"\" roman\";\"=\"\"><b>✨ Available for Custom Orders</b></span></h6><h3 style=\"color: rgb(98, 100, 106);\"></h3><h5 style=\"color: rgb(98, 100, 106); line-height: 1.2;\"><span style=\"font-size: 14px; font-family: sans-serif; font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align); display: inline !important;\">With over 10 years of experience in the design industry, we specialize in crafting responsive WordPress websites and dynamic eCommerce platforms. Our expertise spans various sectors, including AI, Web 3.0, ICOs, IDOs, Crypto, NFT, IT, Blockchain, E-commerce, Airports, Retail, Universities, Automobile, and more.</span><br></h5></header><div class=\"description-wrapper\" style=\"border: 0px; margin: 0px; outline-style: initial; outline-width: 0px; padding: 0px 0px 20px; position: relative;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;\"=\"\"><div class=\"description-content\" data-impression-collected=\"true\" style=\"border: 0px; margin: 0px; outline-style: initial; outline-width: 0px; padding: 0px; overflow-wrap: break-word; max-height: none; overflow: hidden; word-break: break-word;\"><p style=\"border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"></p><h5><span style=\"border: 0px; margin: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><b><br></b></span></span></h5><h5 style=\"line-height: 2;\"><span style=\"font-size: 18px;\"><b>🌟 Completed 500+ projects</b></span></h5><h5 style=\"line-height: 2;\"><span style=\"font-size: 18px;\"><b><br></b></span></h5><p style=\"border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"></p><h5 style=\"line-height: 2;\"><b style=\"font-size: 18px; color: var(--heading-color); font-family: var(--heading-font); text-align: var(--bs-body-text-align);\">🌐 Top Clients:\r\n</b><br></h5><div><b style=\"font-size: 18px; color: var(--heading-color); font-family: var(--heading-font); text-align: var(--bs-body-text-align);\">\r\n</b></div><ul style=\"border: 0px; margin-right: 5px; margin-bottom: 0px; margin-left: 5px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: none none;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;\"=\"\"><li style=\"border: 0px; margin: 0px 0px 0px 24px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: outside none disc;\"><span style=\"color: rgb(66, 66, 66); text-align: var(--bs-body-text-align); display: inline !important;\"><b>Multiple Governments</b></span><span style=\"color: rgb(66, 66, 66); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align); display: inline !important;\"> - We built many WordPress websites for governments around the world&nbsp;&nbsp;</span><br></li><li style=\"border: 0px; margin: 0px 0px 0px 24px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: outside none disc;\"><font color=\"#424242\"><b>Intelio</b> - My one of the finest client is Intel we built an internal website for their recruitment process</font></li><li style=\"border: 0px; margin: 0px 0px 0px 24px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: outside none disc;\"><font color=\"#424242\"><b>Goolio</b> - Goolio is the world largest hosting provider and I built their website</font></li><li style=\"border: 0px; margin: 0px 0px 0px 24px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: outside none disc;\"><font color=\"#424242\"><b>Giantsoft</b> - Giant soft build SaaS software for their clients and I helped them with WordPress&nbsp;</font></li><li style=\"border: 0px; margin: 0px 0px 0px 24px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: outside none disc;\"><font color=\"#424242\"><b>Shahincedes</b> - A car brand which needed a website for their B2B agents and I built them.</font></li></ul><p style=\"color: rgb(98, 100, 106); border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"><br></p><p style=\"color: rgb(98, 100, 106); border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"></p><h5 style=\"\"></h5><h5></h5><h5></h5><h5 style=\"line-height: 2;\"><span style=\"font-size: 18px;\"><b>What\'s Included in This Gig:</b></span></h5><ul><li style=\"line-height: 2;\"><font color=\"#424242\">Crafted for responsiveness on all devices (After completing project we do extensive tests)</font></li><li style=\"line-height: 2;\"><font color=\"#424242\">Build a dynamic eCommerce platform tailored to your business needs (Every business is unique, So we\'re)</font></li><li style=\"line-height: 2;\"><font color=\"#424242\">Customization options available for a unique web presence</font></li></ul><h5 style=\"line-height: 2;\"><b style=\"font-size: 18px; color: var(--heading-color); font-family: var(--heading-font); text-align: var(--bs-body-text-align);\">What\'s Not Included:</b><br></h5><ul style=\"border: 0px; margin-right: 5px; margin-bottom: 0px; margin-left: 5px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: none none;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;\"=\"\"><li style=\"border: 0px; margin: 0px 0px 0px 24px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: outside none disc;\"><font color=\"#424242\">Content Creation (Image and text)</font></li><li style=\"border: 0px; margin: 0px 0px 0px 24px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: outside none disc;\"><font color=\"#424242\">Additional features beyond website design (You have to pay extra for e.g., custom functionalities, plugins)</font></li></ul><p style=\"color: rgb(98, 100, 106); border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"><br></p><p style=\"border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"></p><h5 style=\"\"></h5><h5><b style=\"font-size: 18px; color: var(--heading-color); font-family: var(--heading-font); text-align: var(--bs-body-text-align);\">💬 Please message me before ordering</b></h5><blockquote style=\"border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\">\r\n</blockquote></div></div>', '1699164445-6547311def884.png', 'Basic', 'Standard', 'Premium', '1', '2', '3', 'Less than a week', 'Less than a week', 'Less than a week', 100, NULL, 150, NULL, 200, 0, 1, 1, 1, NULL, NULL, 1, '2023-10-02 06:58:03', '2023-11-28 06:46:11'),
(110, 7, 4, 'Qixer service provider buyer mobile appp', 'qixer-service-provider-buyer-mobile-appp', '<header style=\"border: 0px; margin: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;\"=\"\"><h6 style=\"color: rgb(98, 100, 106);\"></h6><h6 style=\"color: rgb(98, 100, 106);\"></h6><h2 class=\"section-title\" style=\"color: rgb(64, 65, 69); border: 0px; outline-style: initial; outline-width: 0px; padding: 0px 0px 25px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-weight:=\"\" 700;=\"\" font-size:=\"\" 20px;=\"\" line-height:=\"\" 28px;\"=\"\"></h2><h6 style=\"line-height: 2;\"><span style=\"font-size: 18px;\" times=\"\" new=\"\" roman\";\"=\"\"><b>About this project</b></span></h6><h3 style=\"color: rgb(98, 100, 106);\"></h3><h5 style=\"color: rgb(98, 100, 106); line-height: 1.2;\"><span style=\"font-size: 14px; font-family: sans-serif; font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align); display: inline !important;\">Are you considering how to create a successful Facebook Ads Campaign that can increase the number of leads or sales for your business, resulting in the achievement of your business goals?</span><br></h5></header><div class=\"description-wrapper\" style=\"border: 0px; margin: 0px; outline-style: initial; outline-width: 0px; padding: 0px 0px 20px; position: relative;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;\"=\"\"><div class=\"description-content\" data-impression-collected=\"true\" style=\"border: 0px; margin: 0px; outline-style: initial; outline-width: 0px; padding: 0px; overflow-wrap: break-word; max-height: none; overflow: hidden; word-break: break-word;\"><p style=\"border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"></p><h5><span style=\"border: 0px; margin: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><b><br></b></span></span></h5><h5 style=\"line-height: 2;\"><b style=\"color: var(--heading-color); font-family: var(--heading-font); font-size: 16px; text-align: var(--bs-body-text-align);\"><span style=\"font-size: 18px;\">This gig is perfect for you</span></b><br></h5><p></p><p style=\"color: rgb(98, 100, 106); border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px; line-height: 1.4;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"><span style=\"font-size: 14px; font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align); display: inline !important;\">With my expertise, I\'ll define effective marketing goals for your business. I\'ll craft an innovative plan and strategy, utilizing advanced advertising methods for success.</span><br></p><p></p><p style=\"\"></p><p style=\"color: rgb(98, 100, 106); border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"><br></p><p style=\"border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"></p><h5 style=\"line-height: 2;\"><b style=\"font-size: 18px; color: var(--heading-color); font-family: var(--heading-font); text-align: var(--bs-body-text-align);\">My services</b><br></h5><ul style=\"border: 0px; margin-right: 5px; margin-bottom: 0px; margin-left: 5px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: none none;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;\"=\"\"><li style=\"border: 0px; margin: 0px 0px 0px 24px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: outside none disc;\"><font color=\"#424242\">Setup &amp; Manage Creative Facebook and Instagram Ads Campaign</font></li><li style=\"border: 0px; margin: 0px 0px 0px 24px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: outside none disc;\"><font color=\"#424242\">Target Audience Research &amp; Competitor Analysis</font></li><li style=\"border: 0px; margin: 0px 0px 0px 24px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: outside none disc;\"><font color=\"#424242\">Sales Funnel Create</font></li><li style=\"border: 0px; margin: 0px 0px 0px 24px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: outside none disc;\"><font color=\"#424242\">Eye-Catching Ad Copy Writing</font></li><li style=\"border: 0px; margin: 0px 0px 0px 24px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: outside none disc;\"><font color=\"#424242\">Tracking fb pixel and Event Set up</font></li><li style=\"border: 0px; margin: 0px 0px 0px 24px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: outside none disc;\"><font color=\"#424242\">Create Custom &amp; Lookalike Audience</font></li><li style=\"border: 0px; margin: 0px 0px 0px 24px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: outside none disc;\"><font color=\"#424242\">Facebook Conversion API</font></li><li style=\"border: 0px; margin: 0px 0px 0px 24px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: outside none disc;\"><font color=\"#424242\">iOS 14.5+ Update, Domain Verify</font></li><li style=\"border: 0px; margin: 0px 0px 0px 24px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: outside none disc;\"><font color=\"#424242\">Daily Ads Reporting &amp; Technical Support</font></li></ul><p style=\"color: rgb(98, 100, 106); border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"><br></p><p style=\"color: rgb(98, 100, 106); border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"></p><h5 style=\"\"></h5><h5></h5><h5></h5><h5 style=\"line-height: 2;\"><span style=\"font-size: 18px;\"><b>Campaign I can setup</b></span></h5><ul><li style=\"line-height: 2;\"><font color=\"#424242\">Facebook Ad Campaign</font></li><li style=\"line-height: 2;\"><font color=\"#424242\">Instagram Ad Campaign</font></li><li style=\"line-height: 2;\"><font color=\"#424242\">LinkedIn&nbsp;Ad Campaign</font></li><li style=\"line-height: 2;\"><font color=\"#424242\">Twitter Ad Campaign&nbsp;</font></li><li style=\"line-height: 2;\"><font color=\"#424242\">YouTube&nbsp;Ad Campaign</font></li></ul><h5 style=\"line-height: 2;\"><b style=\"font-size: 18px; color: var(--heading-color); font-family: var(--heading-font); text-align: var(--bs-body-text-align);\">My specialty</b><br></h5><ul style=\"border: 0px; margin-right: 5px; margin-bottom: 0px; margin-left: 5px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: none none;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 16px;\"=\"\"><li style=\"border: 0px; margin: 0px 0px 0px 24px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: outside none disc;\"><font color=\"#424242\">Apply Update Methods</font></li><li style=\"border: 0px; margin: 0px 0px 0px 24px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: outside none disc;\"><font color=\"#424242\">Maintain Quality Work</font></li><li style=\"border: 0px; margin: 0px 0px 0px 24px; outline-style: initial; outline-width: 0px; padding: 0px; list-style: outside none disc;\"><font color=\"#424242\">On-Time Delivery</font></li></ul><p style=\"color: rgb(98, 100, 106); border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"><br></p><p style=\"border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"></p><h5 style=\"\"></h5><h5><b style=\"font-size: 18px; color: var(--heading-color); font-family: var(--heading-font); text-align: var(--bs-body-text-align);\">Please message me before ordering</b><br></h5><p></p><p style=\"color: rgb(98, 100, 106); border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"><span style=\"color: rgb(0, 0, 0); font-size: 14px; font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align); display: inline !important;\"><br></span></p><p style=\"color: rgb(98, 100, 106); border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"><span style=\"color: rgb(0, 0, 0); font-size: 14px; font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align); display: inline !important;\">Tag: Facebook Ads Campaign Instagram Ads Shopify Facebook Ads Social Media Ads.</span><br></p><blockquote style=\"border: 0px; margin-right: 0px; margin-left: 0px; outline-style: initial; outline-width: 0px; padding: 0px;\">\n</blockquote></div></div>', '1700027551-65545c9f71231.png', 'Basic', 'Standard', 'Premium', '1', '1', '1', '1 Days', '1 Days', '1 Days', 50, 40, 60, 50, 70, 60, 0, 1, 1, NULL, NULL, 1, '2023-11-14 23:52:31', '2023-11-15 07:13:15'),
(114, 7, 1, 'Ще получите минимум 20 символа', 'you-can-gen-20a', '<p>asdasdasdadssasdasdasdasdasdadssasdasdasdasdasdadssasdasdasdasdasdadssasdasdasdasdasdadssasdasdasdasdasdadssasdasdasdasdasdadssasdasdasdasdasdadssasdaasdsd<br></p>', '1706367303-65b51947c480b.png', 'Basic', 'Standard', 'Premium', '1', '1', '3', '1 Days', '1 Days', '1 Days', 50, 40, 60, 50, 70, 60, 1, 0, 0, NULL, NULL, 1, '2024-01-27 08:55:03', '2024-01-27 09:00:34');

-- --------------------------------------------------------

--
-- Table structure for table `project_attributes`
--

CREATE TABLE `project_attributes` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint NOT NULL,
  `create_project_id` bigint NOT NULL,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `check_numeric_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `basic_check_numeric` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `standard_check_numeric` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `premium_check_numeric` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `project_attributes`
--

INSERT INTO `project_attributes` (`id`, `user_id`, `create_project_id`, `type`, `check_numeric_title`, `basic_check_numeric`, `standard_check_numeric`, `premium_check_numeric`, `created_at`, `updated_at`) VALUES
(440, 9, 1, 'numeric', 'sdfsd sdf sd', '5', '5', '5', '2023-05-16 04:53:42', '2023-05-16 04:53:42'),
(441, 9, 1, 'numeric', 'ZZz', '0', '0', '0', '2023-05-16 04:54:36', '2023-05-16 04:54:36'),
(822, 7, 110, 'checkbox', 'Extended support', 'on', 'on', 'on', '2023-11-14 23:52:31', '2023-11-14 23:52:31'),
(1443, 7, 103, 'numeric', 'No of Pages', '1', '2', '3', NULL, '2023-11-24 23:49:09'),
(1444, 7, 103, 'numeric', 'Words', '500', '1000', '2000', NULL, '2023-11-24 23:49:09'),
(1445, 7, 103, 'checkbox', 'SEO friendly', 'on', 'on', 'on', NULL, '2023-11-24 23:49:09'),
(1462, 7, 102, 'numeric', 'Words', '500', '1500', '3000', NULL, '2023-11-25 00:05:32'),
(1463, 7, 102, 'checkbox', 'SEO keywords', 'on', 'on', 'on', NULL, '2023-11-25 00:05:32'),
(1464, 7, 102, 'checkbox', 'SEO Keyword Research', 'on', 'on', 'on', NULL, '2023-11-25 00:05:32'),
(1465, 7, 102, 'checkbox', 'Competitor research', 'on', 'on', 'on', NULL, '2023-11-25 00:05:32'),
(1514, 7, 73, 'checkbox', 'Functional app', 'on', 'on', 'on', NULL, '2023-11-25 00:33:05'),
(1515, 7, 73, 'checkbox', '1 operating system', 'on', 'on', 'on', NULL, '2023-11-25 00:33:05'),
(1516, 7, 73, 'checkbox', 'App submission', 'on', 'on', 'on', NULL, '2023-11-25 00:33:05'),
(1517, 7, 73, 'checkbox', 'App icon', 'on', 'on', 'on', NULL, '2023-11-25 00:33:05'),
(1518, 7, 73, 'checkbox', 'Splash screen', 'on', 'on', 'on', NULL, '2023-11-25 00:33:05'),
(1519, 7, 73, 'checkbox', 'Ad network integration', 'off', 'off', 'on', NULL, '2023-11-25 00:33:05'),
(1520, 7, 73, 'checkbox', 'Source code', 'off', 'on', 'on', NULL, '2023-11-25 00:33:05'),
(1521, 7, 73, 'numeric', 'sdfsdf', '5', '5', '5', NULL, '2023-11-25 00:33:05'),
(1550, 7, 99, 'numeric', 'No of Pages', '5', '10', '15', NULL, '2023-11-25 00:51:46'),
(1551, 7, 99, 'checkbox', 'Source', 'on', 'on', 'on', NULL, '2023-11-25 00:51:46'),
(1552, 7, 99, 'checkbox', 'Functional Android app', 'on', 'on', 'on', NULL, '2023-11-25 00:51:46'),
(1553, 7, 99, 'checkbox', 'Functional IOS App', 'on', 'on', 'on', NULL, '2023-11-25 00:51:46'),
(1554, 7, 99, 'checkbox', 'App submission', 'off', 'on', 'on', NULL, '2023-11-25 00:51:46'),
(1555, 7, 99, 'checkbox', 'Ad network integration', 'off', 'off', 'on', NULL, '2023-11-25 00:51:46'),
(1570, 7, 84, 'checkbox', 'Functional app', 'on', 'on', 'on', NULL, '2023-11-25 00:57:35'),
(1571, 7, 84, 'checkbox', '2 operating systems', 'on', 'on', 'on', NULL, '2023-11-25 00:57:35'),
(1572, 7, 84, 'checkbox', 'App submission', 'off', 'off', 'on', NULL, '2023-11-25 00:57:35'),
(1573, 7, 84, 'checkbox', 'App icon', 'on', 'on', 'on', NULL, '2023-11-25 00:57:35'),
(1574, 7, 84, 'checkbox', 'Splash screen', 'off', 'off', 'on', NULL, '2023-11-25 00:57:35'),
(1575, 7, 84, 'checkbox', 'Ad network integration', 'off', 'on', 'on', NULL, '2023-11-25 00:57:35'),
(1576, 7, 84, 'checkbox', 'Source code', 'on', 'on', 'on', NULL, '2023-11-25 00:57:35'),
(1577, 7, 68, 'checkbox', 'Main File includedd', 'on', 'on', 'on', NULL, '2023-11-25 00:58:26'),
(1578, 7, 68, 'numeric', 'No of Pagess', '5', '6', '8', NULL, '2023-11-25 00:58:26'),
(1579, 7, 68, 'checkbox', 'Resources', 'on', 'on', 'on', NULL, '2023-11-25 00:58:26'),
(1580, 7, 68, 'checkbox', 'Source code', 'on', 'on', 'on', NULL, '2023-11-25 00:58:26'),
(1581, 7, 68, 'checkbox', 'Seo friendly', 'on', 'on', 'on', NULL, '2023-11-25 00:58:26'),
(1582, 7, 68, 'checkbox', 'Speed optimize', 'off', 'on', 'on', NULL, '2023-11-25 00:58:26'),
(1583, 7, 68, 'checkbox', 'Content upload', 'off', 'off', 'on', NULL, '2023-11-25 00:58:26'),
(1632, 8, 97, 'numeric', 'No of words', '500', '1000', '1500', NULL, '2023-11-25 01:43:11'),
(1633, 8, 97, 'checkbox', 'Topic research', 'on', 'on', 'on', NULL, '2023-11-25 01:43:11'),
(1634, 8, 97, 'checkbox', 'SEO keywords', 'on', 'on', 'on', NULL, '2023-11-25 01:43:11'),
(1635, 8, 97, 'checkbox', 'SEO Keyword', 'on', 'on', 'on', NULL, '2023-11-25 01:43:11'),
(1636, 8, 97, 'checkbox', 'Research References & citations', 'on', 'on', 'on', NULL, '2023-11-25 01:43:11'),
(1667, 8, 96, 'checkbox', '3D modeling', 'on', 'on', 'on', NULL, '2023-11-25 02:06:03'),
(1668, 8, 96, 'checkbox', 'Include environment', 'on', 'on', 'on', NULL, '2023-11-25 02:06:03'),
(1669, 8, 96, 'checkbox', 'Include furniture and people', 'on', 'on', 'on', NULL, '2023-11-25 02:06:03'),
(1670, 8, 96, 'checkbox', 'Texturing & lighting', 'on', 'on', 'on', NULL, '2023-11-25 02:06:03'),
(1671, 8, 96, 'numeric', 'Rendering', '1', '2', '3', NULL, '2023-11-25 02:06:03'),
(1672, 8, 96, 'checkbox', 'Architectural walkthrough', 'off', 'off', 'on', NULL, '2023-11-25 02:06:03'),
(1673, 8, 95, 'checkbox', 'Competitor analyze', 'on', 'on', 'on', NULL, '2023-11-25 02:08:58'),
(1674, 8, 95, 'checkbox', 'Action plan', 'on', 'on', 'on', NULL, '2023-11-25 02:08:58'),
(1675, 8, 95, 'checkbox', 'Goals and KPIS', 'off', 'on', 'on', NULL, '2023-11-25 02:08:58'),
(1676, 8, 95, 'checkbox', 'Convert HTML CSS', 'on', 'on', 'on', NULL, '2023-11-25 02:08:58'),
(1677, 8, 95, 'checkbox', 'Source code', 'on', 'on', 'on', NULL, '2023-11-25 02:08:58'),
(1693, 8, 93, 'numeric', 'Pages', '5', '10', '15', NULL, '2023-11-25 02:17:44'),
(1694, 8, 93, 'checkbox', 'Responsive design', 'on', 'on', 'on', NULL, '2023-11-25 02:17:44'),
(1695, 8, 93, 'checkbox', 'Slider/scroller', 'on', 'on', 'on', NULL, '2023-11-25 02:17:44'),
(1696, 8, 93, 'checkbox', 'Server upload', 'off', 'on', 'on', NULL, '2023-11-25 02:17:44'),
(1697, 8, 93, 'checkbox', 'Browser compatibility', 'on', 'on', 'on', NULL, '2023-11-25 02:17:44'),
(1701, 7, 104, 'checkbox', 'High quality thumbnail', 'on', 'on', 'on', NULL, '2023-11-25 03:48:34'),
(1702, 7, 104, 'checkbox', 'Color ratio', 'off', 'off', 'off', NULL, '2023-11-25 03:48:34'),
(1703, 7, 104, 'checkbox', 'Eye catching', 'on', 'on', 'on', NULL, '2023-11-25 03:48:34'),
(1704, 7, 100, 'numeric', 'No of Pages', '1', '2', '3', NULL, '2023-11-25 03:49:13'),
(1705, 7, 100, 'numeric', 'Words', '500', '700', '1000', NULL, '2023-11-25 03:49:13'),
(1706, 7, 100, 'checkbox', 'SEO keywords', 'on', 'on', 'on', NULL, '2023-11-25 03:49:13'),
(1707, 7, 100, 'checkbox', 'Competitor research', 'on', 'on', 'on', NULL, '2023-11-25 03:49:13'),
(1736, 7, 70, 'checkbox', 'Source code', 'on', 'on', 'on', NULL, '2023-11-25 23:17:52'),
(1737, 7, 70, 'checkbox', 'Resources', 'on', 'on', 'on', NULL, '2023-11-25 23:17:52'),
(1738, 7, 70, 'checkbox', 'Responsive design', 'on', 'on', 'on', NULL, '2023-11-25 23:17:52'),
(1739, 7, 70, 'checkbox', 'Content upload', 'off', 'on', 'on', NULL, '2023-11-25 23:17:52'),
(1740, 7, 70, 'checkbox', 'Payment processing', 'off', 'off', 'off', NULL, '2023-11-25 23:17:52'),
(1741, 7, 70, 'checkbox', 'Speed optimization', 'on', 'on', 'on', NULL, '2023-11-25 23:17:52'),
(1742, 7, 70, 'checkbox', 'Hosting setup', 'off', 'off', 'on', NULL, '2023-11-25 23:17:52'),
(1748, 7, 69, 'checkbox', 'Main File includedd', 'on', 'on', 'on', NULL, '2023-11-27 06:55:37'),
(1749, 7, 69, 'checkbox', 'No of Pagess', '3', '10', '15', NULL, '2023-11-27 06:55:37'),
(1750, 7, 69, 'checkbox', 'Functional website', 'on', 'on', 'on', NULL, '2023-11-27 06:55:37'),
(1751, 7, 69, 'checkbox', 'Content upload', 'on', 'on', 'on', NULL, '2023-11-27 06:55:37'),
(1752, 7, 69, 'checkbox', 'SMS gateway support', 'off', 'on', 'on', NULL, '2023-11-27 06:55:37'),
(1753, 7, 69, 'checkbox', 'Hosting setup', 'off', 'off', 'on', NULL, '2023-11-27 06:55:37'),
(1757, 7, 105, 'numeric', 'No of Pages', '1', '2', '3', NULL, '2023-11-27 07:26:54'),
(1758, 7, 105, 'checkbox', 'Responsive Design', 'on', 'on', 'on', NULL, '2023-11-27 07:26:54'),
(1759, 7, 105, 'checkbox', 'Source Code', 'on', 'on', 'on', NULL, '2023-11-27 07:26:54'),
(1770, 7, 108, 'checkbox', 'Functional website', 'on', 'on', 'on', NULL, '2023-11-28 06:46:11'),
(1771, 7, 108, 'numeric', 'Pages', '5', '7', '10', NULL, '2023-11-28 06:46:11'),
(1772, 7, 108, 'checkbox', 'Responsive design', 'on', 'on', 'on', NULL, '2023-11-28 06:46:11'),
(1773, 7, 108, 'checkbox', 'Content upload', 'off', 'on', 'on', NULL, '2023-11-28 06:46:11'),
(1774, 7, 108, 'numeric', 'Plugin', '3', '5', '10', NULL, '2023-11-28 06:46:11'),
(1775, 7, 108, 'checkbox', 'E-commerce functionality', 'on', 'on', 'on', NULL, '2023-11-28 06:46:11'),
(1776, 7, 108, 'checkbox', 'Payment processing', 'on', 'on', 'on', NULL, '2023-11-28 06:46:11'),
(1777, 7, 108, 'checkbox', 'Opt-in form', 'off', 'off', 'on', NULL, '2023-11-28 06:46:11'),
(1785, 7, 92, 'checkbox', 'Functional website', 'on', 'on', 'on', NULL, '2023-11-28 06:47:39'),
(1786, 7, 92, 'numeric', 'Pages', '3', '5', '10', NULL, '2023-11-28 06:47:39'),
(1787, 7, 92, 'numeric', 'Revisions', '2', '5', '10', NULL, '2023-11-28 06:47:39'),
(1788, 7, 92, 'checkbox', 'Content upload', 'off', 'on', 'on', NULL, '2023-11-28 06:47:39'),
(1789, 7, 92, 'checkbox', 'Speed optimization', 'on', 'on', 'on', NULL, '2023-11-28 06:47:39'),
(1790, 7, 92, 'checkbox', 'Hosting setup', 'off', 'off', 'on', NULL, '2023-11-28 06:47:39'),
(1791, 7, 92, 'checkbox', 'Social media icons', 'off', 'on', 'on', NULL, '2023-11-28 06:47:39'),
(1794, 7, 107, 'checkbox', 'Action plan', 'off', 'off', 'off', NULL, '2023-12-04 00:24:00'),
(1795, 7, 107, 'checkbox', 'Campaign audit', 'on', 'on', 'on', NULL, '2023-12-04 00:24:00'),
(1796, 7, 107, 'checkbox', 'Target audience research', 'on', 'on', 'on', NULL, '2023-12-04 00:24:00'),
(1797, 7, 107, 'checkbox', 'Ad content creation', 'off', 'on', 'on', NULL, '2023-12-04 00:24:00'),
(1798, 7, 107, 'checkbox', 'Campaign setup', 'off', 'off', 'off', NULL, '2023-12-04 00:24:00'),
(1799, 8, 94, 'numeric', 'Lesson', '1', '2', '3', NULL, '2024-01-27 06:54:22'),
(1800, 8, 94, 'numeric', 'Minutes', '30', '60', '120', NULL, '2024-01-27 06:54:22'),
(1801, 8, 94, 'checkbox', 'Live support', 'on', 'on', 'on', NULL, '2024-01-27 06:54:22'),
(1802, 8, 94, 'checkbox', 'Backup class', 'off', 'on', 'on', NULL, '2024-01-27 06:54:22'),
(1803, 8, 94, 'checkbox', 'Browser compatibility', 'on', 'on', 'on', NULL, '2024-01-27 06:54:22'),
(1804, 8, 98, 'numeric', 'Pages', '3', '5', '9', NULL, '2024-01-27 06:56:53'),
(1805, 8, 98, 'checkbox', 'Functional website', 'on', 'on', 'on', NULL, '2024-01-27 06:56:53'),
(1806, 8, 98, 'checkbox', 'Source Code', 'on', 'on', 'on', NULL, '2024-01-27 06:56:53'),
(1807, 8, 98, 'checkbox', 'Server Upload', 'off', 'on', 'on', NULL, '2024-01-27 06:56:53'),
(1808, 8, 98, 'checkbox', 'Speed optimize', 'on', 'on', 'on', NULL, '2024-01-27 06:56:53'),
(1809, 8, 98, 'checkbox', 'Server Setup', 'off', 'off', 'on', NULL, '2024-01-27 06:56:53'),
(1810, 7, 101, 'numeric', 'Words', '500', '1000', '1500', NULL, '2024-01-27 07:01:35'),
(1811, 7, 101, 'checkbox', 'SEO keywords', 'on', 'on', 'on', NULL, '2024-01-27 07:01:35'),
(1812, 7, 101, 'checkbox', 'SEO Keyword Research', 'on', 'on', 'on', NULL, '2024-01-27 07:01:35'),
(1813, 7, 101, 'checkbox', 'Competitor research', 'on', 'on', 'on', NULL, '2024-01-27 07:01:35'),
(1814, 7, 114, 'checkbox', 'asd', 'on', 'on', 'on', '2024-01-27 08:55:03', '2024-01-27 08:55:03');

-- --------------------------------------------------------

--
-- Table structure for table `project_histories`
--

CREATE TABLE `project_histories` (
  `id` bigint UNSIGNED NOT NULL,
  `project_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `reject_count` bigint DEFAULT NULL,
  `edit_count` bigint DEFAULT NULL,
  `reject_reason` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `project_histories`
--

INSERT INTO `project_histories` (`id`, `project_id`, `user_id`, `reject_count`, `edit_count`, `reject_reason`, `created_at`, `updated_at`) VALUES
(1, 68, 7, 1, 0, NULL, '2023-03-28 03:36:25', '2023-11-25 00:58:26'),
(3, 84, 7, 2, 1, NULL, '2023-04-04 01:31:11', '2023-11-25 00:57:35'),
(4, 69, 7, 2, 1, NULL, '2023-04-15 00:03:21', '2023-11-27 06:55:37'),
(6, 73, 7, 2, 1, NULL, '2023-05-14 00:53:56', '2023-11-25 00:33:05'),
(7, 70, 7, 2, 1, NULL, '2023-05-14 03:56:36', '2023-11-25 23:17:52'),
(8, 92, 7, 2, 1, NULL, '2023-05-15 22:42:28', '2023-11-28 06:47:39'),
(9, 93, 8, 2, 1, NULL, '2023-05-16 00:01:17', '2023-11-25 02:17:44'),
(10, 94, 8, 2, 1, NULL, '2023-05-16 00:56:48', '2024-01-27 06:54:22'),
(11, 97, 8, 2, 1, NULL, '2023-05-16 02:28:36', '2023-11-25 01:43:11'),
(12, 99, 9, 2, 1, NULL, '2023-05-16 04:00:55', '2023-11-25 00:51:46'),
(13, 100, 9, 2, 1, NULL, '2023-05-16 04:21:48', '2023-11-25 03:49:13'),
(14, 101, 9, 2, 1, NULL, '2023-05-16 05:44:19', '2024-01-27 07:01:35'),
(15, 102, 9, 2, 1, NULL, '2023-05-16 05:58:35', '2023-11-25 00:05:32'),
(16, 103, 9, 2, 1, NULL, '2023-05-16 06:29:54', '2023-11-24 23:49:09'),
(17, 104, 9, 2, 1, NULL, '2023-05-16 06:39:17', '2023-11-25 03:48:34'),
(18, 107, 10, 2, 1, NULL, '2023-05-16 07:00:23', '2023-12-04 00:24:00'),
(19, 105, 10, 2, 1, NULL, '2023-05-16 07:02:32', '2023-11-27 07:26:54'),
(20, 98, 8, 2, 1, NULL, '2023-08-19 03:43:03', '2024-01-27 06:56:53'),
(21, 96, 8, 2, 1, NULL, '2023-08-19 03:43:40', '2023-11-25 02:06:03'),
(22, 95, 8, 2, 1, NULL, '2023-08-19 03:43:53', '2023-11-25 02:08:58'),
(23, 108, 7, 2, 1, NULL, '2023-11-05 00:07:26', '2023-11-28 06:46:11');

-- --------------------------------------------------------

--
-- Table structure for table `project_sub_categories`
--

CREATE TABLE `project_sub_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `project_id` bigint NOT NULL,
  `sub_category_id` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `project_sub_categories`
--

INSERT INTO `project_sub_categories` (`id`, `project_id`, `sub_category_id`, `created_at`, `updated_at`) VALUES
(11, 84, 5, '2023-04-04 01:32:37', '2023-04-04 01:32:37'),
(12, 84, 6, '2023-04-04 01:32:37', '2023-04-04 01:32:37'),
(23, 73, 6, '2023-05-14 03:47:27', '2023-05-14 03:47:27'),
(24, 70, 22, '2023-05-14 03:56:36', '2023-05-14 03:56:36'),
(34, 92, 20, '2023-05-15 07:25:04', '2023-05-15 07:25:04'),
(35, 92, 22, '2023-05-15 22:48:28', '2023-05-15 22:48:28'),
(36, 93, 24, '2023-05-15 23:58:55', '2023-05-15 23:58:55'),
(40, 96, 2, '2023-05-16 01:29:02', '2023-05-16 01:29:02'),
(63, 108, 3, '2023-11-05 00:18:30', '2023-11-05 00:18:30'),
(64, 108, 21, '2023-11-05 00:18:30', '2023-11-05 00:18:30'),
(65, 108, 22, '2023-11-05 00:18:30', '2023-11-05 00:18:30'),
(66, 92, 21, '2023-11-05 01:14:27', '2023-11-05 01:14:27'),
(67, 84, 7, '2023-11-05 02:26:29', '2023-11-05 02:26:29'),
(68, 84, 8, '2023-11-05 02:26:29', '2023-11-05 02:26:29'),
(69, 73, 5, '2023-11-05 02:32:31', '2023-11-05 02:32:31'),
(70, 73, 7, '2023-11-05 02:32:31', '2023-11-05 02:32:31'),
(71, 73, 8, '2023-11-05 02:32:31', '2023-11-05 02:32:31'),
(72, 70, 20, '2023-11-05 02:38:28', '2023-11-05 02:38:28'),
(73, 70, 21, '2023-11-05 02:38:28', '2023-11-05 02:38:28'),
(75, 69, 20, '2023-11-05 02:46:17', '2023-11-05 02:46:17'),
(76, 69, 21, '2023-11-05 02:46:17', '2023-11-05 02:46:17'),
(77, 69, 22, '2023-11-05 02:46:17', '2023-11-05 02:46:17'),
(79, 68, 1, '2023-11-05 03:03:28', '2023-11-05 03:03:28'),
(80, 68, 2, '2023-11-05 03:03:28', '2023-11-05 03:03:28'),
(81, 68, 24, '2023-11-05 03:10:07', '2023-11-05 03:10:07'),
(85, 96, 1, '2023-11-05 05:28:37', '2023-11-05 05:28:37'),
(86, 95, 30, '2023-11-05 05:46:34', '2023-11-05 05:46:34'),
(87, 95, 29, '2023-11-05 05:46:54', '2023-11-05 05:46:54'),
(88, 94, 29, '2023-11-05 05:52:18', '2023-11-05 05:52:18'),
(89, 94, 30, '2023-11-05 05:52:18', '2023-11-05 05:52:18'),
(90, 93, 1, '2023-11-05 05:55:34', '2023-11-05 05:55:34'),
(91, 107, 29, '2023-11-05 06:20:57', '2023-11-05 06:20:57'),
(92, 107, 30, '2023-11-05 06:20:57', '2023-11-05 06:20:57'),
(93, 107, 34, '2023-11-05 06:27:13', '2023-11-05 06:27:13'),
(94, 105, 1, '2023-11-05 06:32:26', '2023-11-05 06:32:26'),
(95, 105, 24, '2023-11-05 06:32:26', '2023-11-05 06:32:26'),
(96, 104, 1, '2023-11-05 06:37:34', '2023-11-05 06:37:34'),
(97, 104, 2, '2023-11-05 06:37:34', '2023-11-05 06:37:34'),
(98, 103, 26, '2023-11-05 06:47:36', '2023-11-05 06:47:36'),
(99, 103, 31, '2023-11-05 06:47:36', '2023-11-05 06:47:36'),
(100, 103, 32, '2023-11-05 06:47:36', '2023-11-05 06:47:36'),
(101, 102, 26, '2023-11-05 07:04:10', '2023-11-05 07:04:10'),
(102, 102, 31, '2023-11-05 07:04:10', '2023-11-05 07:04:10'),
(103, 101, 31, '2023-11-05 07:20:58', '2023-11-05 07:20:58'),
(104, 101, 32, '2023-11-05 07:20:58', '2023-11-05 07:20:58'),
(105, 100, 26, '2023-11-05 07:33:28', '2023-11-05 07:33:28'),
(106, 100, 31, '2023-11-05 07:33:28', '2023-11-05 07:33:28'),
(107, 100, 32, '2023-11-05 07:33:28', '2023-11-05 07:33:28'),
(108, 99, 5, '2023-11-05 07:42:58', '2023-11-05 07:42:58'),
(109, 99, 6, '2023-11-05 07:42:58', '2023-11-05 07:42:58'),
(110, 99, 7, '2023-11-05 07:42:58', '2023-11-05 07:42:58'),
(111, 109, 5, '2023-11-14 23:49:51', '2023-11-14 23:49:51'),
(112, 110, 5, '2023-11-14 23:52:31', '2023-11-14 23:52:31'),
(113, 70, 3, '2023-11-22 23:28:47', '2023-11-22 23:28:47'),
(114, 98, 5, '2023-11-25 01:27:04', '2023-11-25 01:27:04'),
(115, 98, 6, '2023-11-25 01:27:04', '2023-11-25 01:27:04'),
(116, 98, 7, '2023-11-25 01:27:04', '2023-11-25 01:27:04'),
(117, 98, 8, '2023-11-25 01:27:04', '2023-11-25 01:27:04'),
(118, 97, 5, '2023-11-25 01:37:39', '2023-11-25 01:37:39'),
(119, 97, 6, '2023-11-25 01:37:39', '2023-11-25 01:37:39'),
(120, 97, 7, '2023-11-25 01:37:39', '2023-11-25 01:37:39'),
(121, 97, 8, '2023-11-25 01:37:39', '2023-11-25 01:37:39'),
(122, 96, 24, '2023-11-25 01:58:51', '2023-11-25 01:58:51'),
(123, 95, 34, '2023-11-25 02:08:58', '2023-11-25 02:08:58'),
(124, 111, 3, '2023-11-26 07:01:31', '2023-11-26 07:01:31'),
(125, 112, 21, '2023-11-26 08:52:25', '2023-11-26 08:52:25'),
(126, 113, 20, '2023-11-28 08:25:53', '2023-11-28 08:25:53'),
(127, 114, 2, '2024-01-27 08:55:03', '2024-01-27 08:55:03');

-- --------------------------------------------------------

--
-- Table structure for table `question_answers`
--

CREATE TABLE `question_answers` (
  `id` bigint UNSIGNED NOT NULL,
  `question` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `question_answers`
--

INSERT INTO `question_answers` (`id`, `question`, `answer`, `created_at`, `updated_at`) VALUES
(1, 'sdf sdf sdf sdf sdf sdfs', NULL, '2023-11-06 03:11:41', '2023-11-06 03:11:41'),
(2, 'fhygh..jhhihhjkhh uhgiugji ihhhjjjjjjj', NULL, '2023-11-19 00:53:58', '2023-11-19 00:53:58'),
(3, 'dfdsfs sdf sdf sd fs df s d f s df s f sdfs', NULL, '2023-12-05 18:13:41', '2023-12-05 18:13:41'),
(4, 'Je n\'arrive pas à définir mon projet sur votre site.', NULL, '2023-12-17 18:36:48', '2023-12-17 18:36:48'),
(5, 'kljhljljkhlkhlkg jkghlkbhkl jlhklhklçjl ljhlkjl', NULL, '2023-12-24 04:43:42', '2023-12-24 04:43:42'),
(6, 'Questo è una domanda per il test?', NULL, '2023-12-28 04:21:00', '2023-12-28 04:21:00'),
(7, 'Where does it come from?', NULL, '2023-12-29 00:46:50', '2023-12-29 00:46:50'),
(8, 'questo e ub test per le domande', NULL, '2024-01-17 10:50:41', '2024-01-17 10:50:41'),
(9, 'ииисмамавмавимывмывмывывм ывм ывм ывм ывм', NULL, '2024-02-15 12:43:24', '2024-02-15 12:43:24'),
(10, 'Hello,this is the test message', NULL, '2024-02-19 09:33:29', '2024-02-19 09:33:29'),
(11, 'How does this work and how many does it cost?', NULL, '2024-02-24 05:51:59', '2024-02-24 05:51:59'),
(12, 'rrtrtrtrt trtrtrtr rtrrtr', NULL, '2024-02-24 09:16:03', '2024-02-24 09:16:03'),
(13, 'ddsdsdsds ddfdfdfdf dfdfdfdfdfdfd', NULL, '2024-02-27 20:46:28', '2024-02-27 20:46:28'),
(14, 'Where Does BuyWebsiteTraffic.net Get Its Affordable Traffic?', NULL, '2024-02-29 12:53:58', '2024-02-29 12:53:58'),
(15, '12212321 dvsdfvvdf dassfdfadsv', NULL, '2024-03-05 21:10:59', '2024-03-05 21:10:59'),
(16, 'jkljljh jhjhlj hjhj hlhkl hjhjh jhh', NULL, '2024-03-21 16:13:14', '2024-03-21 16:13:14'),
(17, 'QuestionSubmit Question', NULL, '2024-04-04 10:02:36', '2024-04-04 10:02:36'),
(18, '111111111111111111111111111111111111111111111111111111111111111111111111', NULL, '2024-04-14 12:39:13', '2024-04-14 12:39:13'),
(19, 'TestTestTestTestTestTestTestTestTestTest', NULL, '2024-04-17 20:36:18', '2024-04-17 20:36:18'),
(20, 'Jiinnnnhñhhhhhybububububububububububububini I I I i', NULL, '2024-04-18 22:51:21', '2024-04-18 22:51:21');

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` bigint UNSIGNED NOT NULL,
  `order_id` bigint NOT NULL,
  `sender_id` bigint NOT NULL,
  `sender_type` tinyint NOT NULL COMMENT '1=client, 2=freelancer',
  `rating` double NOT NULL,
  `review_feedback` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rating_details`
--

CREATE TABLE `rating_details` (
  `id` bigint UNSIGNED NOT NULL,
  `rating_id` bigint NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'skill,availability,communication,deadline,quality,co-operation',
  `rating` tinyint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `id` bigint UNSIGNED NOT NULL,
  `order_id` bigint DEFAULT NULL,
  `client_id` bigint NOT NULL,
  `freelancer_id` bigint NOT NULL,
  `reporter` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'freelancer, client',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint DEFAULT NULL,
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'admin', '2023-10-19 07:28:11', '2023-10-19 07:28:11'),
(2, 'Admin', 'admin', '2023-10-19 07:31:16', '2023-10-19 07:31:16'),
(6, 'Editor', 'admin', '2023-10-23 01:03:36', '2023-10-23 01:03:36');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 2),
(2, 2),
(3, 2),
(5, 2),
(7, 2),
(8, 2),
(9, 2),
(11, 2),
(13, 2),
(14, 2),
(15, 2),
(17, 2),
(19, 2),
(20, 2),
(21, 2),
(23, 2),
(26, 2),
(27, 2),
(28, 2),
(30, 2),
(32, 2),
(33, 2),
(34, 2),
(35, 2),
(37, 2),
(38, 2),
(39, 2),
(40, 2),
(42, 2),
(44, 2),
(45, 2),
(46, 2),
(47, 2),
(49, 2),
(50, 2),
(51, 2),
(52, 2),
(53, 2),
(54, 2),
(55, 2),
(56, 2),
(57, 2),
(58, 2),
(61, 2),
(62, 2),
(63, 2),
(65, 2),
(66, 2),
(67, 2),
(68, 2),
(70, 2),
(71, 2),
(72, 2),
(73, 2),
(76, 2),
(77, 2),
(78, 2),
(79, 2),
(80, 2),
(81, 2),
(82, 2),
(83, 2),
(84, 2),
(85, 2),
(90, 2),
(91, 2),
(92, 2),
(93, 2),
(94, 2),
(95, 2),
(96, 2),
(99, 2),
(100, 2),
(101, 2),
(102, 2),
(105, 2),
(106, 2),
(107, 2),
(110, 2),
(111, 2),
(112, 2),
(113, 2),
(115, 2),
(116, 2),
(117, 2),
(118, 2),
(119, 2),
(120, 2),
(121, 2),
(123, 2),
(124, 2),
(125, 2),
(127, 2),
(128, 2),
(129, 2),
(130, 2),
(131, 2),
(132, 2),
(133, 2),
(134, 2),
(135, 2),
(136, 2),
(137, 2),
(138, 2),
(139, 2),
(140, 2),
(141, 2),
(142, 2),
(143, 2),
(144, 2),
(145, 2),
(146, 2),
(147, 2),
(148, 2),
(149, 2),
(150, 2),
(151, 2),
(152, 2),
(153, 2),
(154, 2),
(155, 2),
(156, 2),
(157, 2),
(158, 2),
(159, 2),
(160, 2),
(161, 2),
(162, 2),
(163, 2),
(164, 2),
(165, 2),
(166, 2),
(167, 2),
(168, 2),
(169, 2),
(171, 2),
(172, 2),
(173, 2),
(176, 2),
(177, 2),
(178, 2),
(180, 2),
(181, 2),
(182, 2),
(184, 2),
(185, 2),
(186, 2),
(187, 2),
(191, 2),
(194, 2),
(195, 2),
(196, 2),
(197, 2),
(200, 2),
(201, 2),
(1, 6),
(2, 6),
(3, 6),
(4, 6),
(5, 6),
(6, 6),
(88, 6),
(89, 6);

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `id` bigint UNSIGNED NOT NULL,
  `skill` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_category_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '0=inactive 1=active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`id`, `skill`, `category_id`, `sub_category_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Android', '4', NULL, 1, '2023-02-08 22:31:43', '2023-09-18 00:43:23'),
(2, 'Firebase on Android', '4', '6', 1, '2023-02-08 22:41:05', '2023-02-08 22:41:05'),
(3, 'Android foundations', '4', '6', 1, '2023-02-08 22:42:43', '2023-02-08 22:42:43'),
(4, 'Php', '2', '20', 1, '2023-02-08 22:49:30', '2023-02-08 22:49:30'),
(6, 'Javascript', '2', NULL, 1, '2023-02-08 23:00:58', '2023-02-08 23:00:58'),
(7, 'HTML', '2', NULL, 1, '2023-02-08 23:03:02', '2023-11-05 22:58:25'),
(10, 'Jquery', '2', NULL, 1, '2023-02-08 23:03:48', '2023-02-08 23:03:48'),
(20, 'CSS', '2', NULL, 1, '2023-11-05 22:56:47', '2023-11-05 22:56:47'),
(21, 'Bootstrap', '2', NULL, 1, '2023-11-05 22:57:04', '2023-11-05 22:57:04'),
(22, 'Vue JS', '2', NULL, 1, '2023-11-05 22:57:24', '2023-11-05 22:57:24'),
(23, 'Laravel', '2', NULL, 1, '2023-11-05 22:57:38', '2023-11-05 22:57:38'),
(24, 'React', '2', NULL, 1, '2023-11-05 22:57:51', '2023-11-05 22:57:51'),
(25, 'NodeJS', '2', NULL, 1, '2023-11-05 22:58:13', '2023-11-05 22:58:13'),
(26, 'Ajax', '2', NULL, 1, '2023-11-05 23:13:28', '2023-11-05 23:25:00'),
(27, 'Rest API', '2', NULL, 1, '2023-11-05 23:13:41', '2023-11-05 23:13:41'),
(28, 'Logo Design', '1', '2', 1, '2023-11-05 23:32:46', '2023-11-05 23:33:05'),
(29, 'Graphic Design', '1', '2', 1, '2023-11-05 23:33:35', '2023-11-05 23:33:35'),
(30, 'Photoshop', '1', '2', 1, '2023-11-05 23:34:30', '2023-11-05 23:34:30'),
(31, 'Illustrator', '1', NULL, 1, '2023-11-05 23:34:43', '2023-11-05 23:34:43'),
(32, '3D Design', '1', NULL, 1, '2023-11-05 23:34:58', '2023-11-05 23:34:58'),
(33, 'UI/UX Design', '1', NULL, 1, '2023-11-05 23:42:26', '2023-11-05 23:42:26'),
(34, 'eCommerce', '2', NULL, 1, '2023-11-05 23:42:50', '2023-11-05 23:42:50'),
(35, 'Mobile App Development', '4', NULL, 1, '2023-11-06 00:01:56', '2023-11-06 00:01:56'),
(36, 'Software Architecture', '2', NULL, 1, '2023-11-06 00:02:14', '2023-11-06 00:02:14'),
(37, 'Article Writing', '13', '26', 1, '2023-11-06 00:18:01', '2023-11-06 00:18:01'),
(38, 'Technical Writing', '13', NULL, 1, '2023-11-06 00:18:20', '2023-11-06 00:18:20'),
(39, 'Data Entry', '13', NULL, 1, '2023-11-06 00:18:36', '2023-11-06 00:18:36'),
(40, 'Copy Writing', '13', NULL, 1, '2023-11-06 00:19:29', '2023-11-06 00:19:29'),
(41, 'Content Writing', '13', NULL, 1, '2023-11-06 00:25:10', '2023-11-06 00:25:10'),
(42, 'Blog', '13', NULL, 1, '2023-11-06 00:25:26', '2023-11-06 00:25:26'),
(43, 'Accounting', '11', NULL, 1, '2023-11-06 00:31:19', '2023-11-06 00:31:19'),
(44, 'Sales', '11', NULL, 1, '2023-11-06 00:31:35', '2023-11-06 00:31:35'),
(45, 'Digital Marketing', '11', NULL, 1, '2023-11-06 00:31:57', '2023-11-06 00:31:57'),
(46, 'Research', '9', NULL, 1, '2023-11-06 00:40:36', '2023-11-06 00:40:36'),
(47, 'Market Research', '9', NULL, 1, '2023-11-06 00:40:59', '2023-11-06 00:40:59'),
(48, 'Internet marketing', '9', NULL, 1, '2023-11-06 00:41:18', '2023-11-06 00:41:18'),
(49, 'Customer Service', '3', NULL, 1, '2023-11-06 00:56:09', '2023-11-06 00:56:09'),
(50, 'English Translator', '3', NULL, 1, '2023-11-06 00:56:53', '2023-11-06 00:56:53'),
(51, 'Spanish Translator', '3', NULL, 1, '2023-11-06 00:57:12', '2023-11-06 00:57:12'),
(52, 'English Teaching', '5', NULL, 1, '2023-11-06 01:16:19', '2023-11-06 01:16:19'),
(53, 'English Grammer', '5', NULL, 1, '2023-11-06 01:16:43', '2023-11-06 01:16:43'),
(54, 'English Tutoring', '5', NULL, 1, '2023-11-06 01:17:00', '2023-11-06 01:17:00'),
(55, 'Education', '5', NULL, 1, '2023-11-06 01:20:07', '2023-11-06 01:20:07'),
(56, 'SEO', '11', NULL, 1, '2023-11-06 02:01:16', '2023-11-06 02:01:16'),
(57, 'Serach Engine marketing', '11', NULL, 1, '2023-11-06 02:02:18', '2023-11-06 02:02:18');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` bigint UNSIGNED NOT NULL,
  `country_id` int DEFAULT NULL,
  `state` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '0=inactive 1=active',
  `timezone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `country_id`, `state`, `status`, `timezone`, `created_at`, `updated_at`) VALUES
(1, 1, 'Dhaka', 1, 'Asia/Dhaka', '2023-01-28 00:55:31', '2023-03-28 23:39:28'),
(2, 1, 'Chittagong', 1, NULL, '2023-01-28 00:55:56', '2023-01-28 03:04:44'),
(3, 1, 'Sylhet', 1, NULL, '2023-01-28 00:56:11', '2023-01-28 03:22:41'),
(16, 2, 'Buenos Aires', 1, 'America/Argentina/Buenos_Aires', '2023-01-28 04:32:19', '2023-11-25 07:16:35'),
(17, 1, '   Rajshahi', 1, NULL, '2023-01-28 04:32:19', '2023-01-28 04:32:19'),
(18, 1, '   Khulna', 1, NULL, '2023-01-28 04:32:19', '2023-01-28 04:32:19'),
(19, 14, 'New Delli', 1, NULL, '2023-02-08 04:33:28', '2023-02-08 04:58:52'),
(20, 11, 'Lahore', 1, NULL, '2023-02-08 04:40:48', '2023-02-08 04:56:01'),
(21, 6, 'zxczc', 1, NULL, '2023-02-08 05:09:35', '2023-02-08 05:09:35'),
(22, 9, 'zxczxczx', 1, NULL, '2023-02-08 05:09:44', '2023-02-08 05:09:44'),
(23, 13, 'zxczxcz', 1, NULL, '2023-02-08 05:09:52', '2023-02-08 05:09:52');

-- --------------------------------------------------------

--
-- Table structure for table `static_options`
--

CREATE TABLE `static_options` (
  `id` bigint UNSIGNED NOT NULL,
  `option_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `option_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `static_options`
--

INSERT INTO `static_options` (`id`, `option_name`, `option_value`, `created_at`, `updated_at`) VALUES
(1, 'site_title', 'Xilancer', '2022-12-10 01:37:26', '2023-11-13 07:45:07'),
(2, 'site_footer_copyright', '{copy}  {year}  All right reserved by  <a href=\"https://xilancer.xgenious.com/\">xgenious</a>', '2022-12-10 01:37:26', '2023-11-13 07:45:07'),
(3, 'disable_user_email_verify', 'on', '2022-12-10 01:37:26', '2023-11-13 07:45:07'),
(4, 'site_maintenance_mode', NULL, '2022-12-10 01:37:26', '2023-11-13 07:45:07'),
(5, 'admin_loader_animation', NULL, '2022-12-10 01:37:26', '2023-11-13 07:45:07'),
(6, 'site_loader_animation', 'on', '2022-12-10 01:37:26', '2023-11-13 07:45:07'),
(7, 'site_force_ssl_redirection', NULL, '2022-12-10 01:37:26', '2023-11-13 07:45:07'),
(8, 'site_google_captcha_enable', 'on', '2022-12-10 01:37:26', '2023-11-13 07:45:07'),
(9, 'site_logo', '31', '2022-12-11 23:42:42', '2023-04-02 23:03:25'),
(10, 'site_favicon', '30', '2022-12-11 23:42:42', '2023-04-02 23:03:25'),
(11, 'site_main_color_one', '#9c3030', '2022-12-12 00:51:22', '2022-12-12 00:51:48'),
(12, 'site_main_color_two', '#000000', '2022-12-12 00:51:22', '2022-12-12 00:51:48'),
(13, 'site_main_color_three', '#4b1111', '2022-12-12 00:51:22', '2022-12-12 00:51:48'),
(14, 'heading_color', '#1D2635', '2022-12-12 00:51:22', '2023-11-23 00:10:41'),
(15, 'light_color', '#a04eb7', '2022-12-12 00:51:22', '2022-12-12 00:51:48'),
(16, 'extra_light_color', '#000000', '2022-12-12 00:51:22', '2022-12-12 00:51:48'),
(17, 'body_font_family', 'Manrope', '2022-12-12 05:19:22', '2023-11-15 04:41:13'),
(18, 'heading_font_family', 'Plus Jakarta Sans', '2022-12-12 05:19:22', '2023-11-15 04:41:13'),
(19, 'extra_body_font', NULL, '2022-12-12 05:19:22', '2023-11-15 04:41:13'),
(20, 'heading_font', 'on', '2022-12-12 05:19:22', '2023-11-15 04:41:13'),
(21, 'body_font_variant', 'a:6:{i:0;s:5:\"0,300\";i:1;s:5:\"0,400\";i:2;s:5:\"0,500\";i:3;s:5:\"0,600\";i:4;s:5:\"0,700\";i:5;s:5:\"0,800\";}', '2022-12-12 05:19:22', '2023-11-15 04:41:13'),
(22, 'heading_font_variant', 'a:6:{i:0;s:5:\"0,300\";i:1;s:5:\"0,400\";i:2;s:5:\"0,500\";i:3;s:5:\"0,600\";i:4;s:5:\"0,700\";i:5;s:5:\"0,800\";}', '2022-12-12 05:19:22', '2023-11-15 04:41:13'),
(23, 'site_meta_tags', 'fds sdsdf sdf sdf ,sdf sdf sdf sdf sdfsd ,sdf sdf sdf sd', '2022-12-13 00:03:23', '2022-12-13 00:03:23'),
(24, 'site_meta_description', 'Xilancr market place', '2022-12-13 00:03:23', '2022-12-13 00:03:23'),
(25, 'og_meta_title', 'Xilancr market place', '2022-12-13 00:03:23', '2022-12-13 00:03:23'),
(26, 'og_meta_description', 'Xilancr market place', '2022-12-13 00:03:23', '2022-12-13 00:03:23'),
(27, 'og_meta_site_name', 'Xilancr market place', '2022-12-13 00:03:23', '2022-12-13 00:03:23'),
(28, 'og_meta_url', 'Xilancr market place', '2022-12-13 00:03:24', '2022-12-13 00:03:24'),
(29, 'og_meta_image', '2', '2022-12-13 00:03:24', '2022-12-13 00:03:24'),
(30, 'site_third_party_tracking_code', NULL, '2022-12-13 01:46:32', '2022-12-13 04:41:00'),
(31, 'site_google_analytics', NULL, '2022-12-13 01:46:32', '2022-12-13 04:41:00'),
(32, 'site_google_captcha_v3_site_key', '6LcJtlYpAAAAAAZAJk7pjWKhz09FRSWLCYyKVpAd', '2022-12-13 01:46:32', '2024-01-27 06:49:27'),
(33, 'site_google_captcha_v3_secret_key', '6LcJtlYpAAAAAENuELMZG9N3UqUak0bV0IvioEHA', '2022-12-13 01:46:32', '2024-01-27 06:49:27'),
(34, 'tawk_api_key', NULL, '2022-12-13 01:46:32', '2022-12-13 04:41:00'),
(35, 'facebook_client_id', '713291307367672', '2022-12-13 04:59:55', '2024-03-10 14:52:54'),
(36, 'facebook_client_secret', '5ec25da1868a7b58b838850570b90c08', '2022-12-13 04:59:55', '2024-03-10 14:52:54'),
(37, 'google_client_id', '483808191107-sjonvl0tg80j1mk63i8tsjdub7ql9v4a.apps.googleusercontent.com', '2022-12-13 04:59:55', '2024-03-10 14:52:54'),
(38, 'google_client_secret', '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', '2022-12-13 04:59:55', '2024-03-10 14:52:54'),
(39, 'site_global_email', 'nazmul@gmail.com', '2022-12-13 07:46:18', '2022-12-14 00:50:18'),
(40, 'site_global_email_template', '<p>sdf sdf sdf sdf sdfs dsdf sdf&nbsp;</p>', '2022-12-13 07:46:18', '2022-12-14 00:50:18'),
(41, 'site_smtp_mail_mailer', 'smtp', '2022-12-14 00:53:07', '2022-12-14 05:19:48'),
(42, 'site_smtp_mail_host', 'smtp.mailtrap.io', '2022-12-14 00:53:07', '2022-12-14 05:19:48'),
(43, 'site_smtp_mail_port', '587', '2022-12-14 00:53:07', '2022-12-14 05:19:48'),
(44, 'site_smtp_mail_username', '8fa73add6aad18', '2022-12-14 00:53:07', '2022-12-14 05:19:48'),
(45, 'site_smtp_mail_password', 'c96cbf3b046393', '2022-12-14 00:53:07', '2022-12-14 05:19:48'),
(46, 'site_smtp_mail_encryption', 'tls', '2022-12-14 00:53:07', '2022-12-14 05:19:48'),
(47, 'site_gdpr_cookie_title', 'Cookies & Privacy', '2022-12-15 03:19:57', '2022-12-15 03:24:34'),
(48, 'site_gdpr_cookie_message', 'Is education residence conveying so so. Suppose shyness say ten behaved morning had. Any unsatiable assistance compliment occasional too reasonably advantages.', '2022-12-15 03:19:57', '2022-12-15 03:24:34'),
(49, 'site_gdpr_cookie_more_info_label', 'More information', '2022-12-15 03:19:57', '2022-12-15 03:24:34'),
(50, 'site_gdpr_cookie_more_info_link', '{url}/privacy-policy', '2022-12-15 03:19:57', '2022-12-15 03:24:34'),
(51, 'site_gdpr_cookie_accept_button_label', 'Accept', '2022-12-15 03:19:57', '2022-12-15 03:24:34'),
(52, 'site_gdpr_cookie_decline_button_label', 'Decline', '2022-12-15 03:19:57', '2022-12-15 03:24:34'),
(53, 'site_gdpr_cookie_manage_button_label', 'Manage', '2022-12-15 03:19:57', '2022-12-15 03:24:34'),
(54, 'site_gdpr_cookie_manage_title', NULL, '2022-12-15 03:19:57', '2022-12-15 03:24:34'),
(55, 'site_gdpr_cookie_manage_item_title', 'a:2:{i:0;s:4:\"test\";i:1;s:8:\"yr dfdfg\";}', '2022-12-15 03:19:57', '2022-12-15 03:24:34'),
(56, 'site_gdpr_cookie_manage_item_description', 'a:2:{i:0;s:14:\"sadas dsa asda\";i:1;s:61:\"fg dfg dfgdf dfgdfg dfg dfg dfg dfg dfg dfg dfg dfgdfgdfg d d\";}', '2022-12-15 03:19:57', '2022-12-15 03:24:34'),
(57, 'site_gdpr_cookie_delay', '5000', '2022-12-15 03:19:57', '2022-12-15 03:24:34'),
(58, 'site_gdpr_cookie_enabled', 'on', '2022-12-15 03:19:57', '2022-12-15 03:24:34'),
(59, 'site_gdpr_cookie_expire', '30', '2022-12-15 03:19:57', '2022-12-15 03:24:34'),
(60, 'global_navbar_variant', '01', '2022-12-15 07:08:00', '2023-05-10 01:01:49'),
(61, 'global_footer_variant', '01', '2022-12-17 23:45:33', '2022-12-17 23:45:41'),
(62, 'paypal_preview_logo', '34', '2022-12-20 01:33:51', '2024-03-10 15:58:04'),
(63, 'paypal_mode', NULL, '2022-12-20 01:33:51', '2023-04-09 22:54:08'),
(64, 'paypal_sandbox_client_id', 'AUP7AuZMwJbkee-2OmsSZrU-ID1XUJYE-YB-2JOrxeKV-q9ZJZYmsr-UoKuJn4kwyCv5ak26lrZyb-gb', '2022-12-20 01:33:51', '2024-03-10 15:58:04'),
(65, 'paypal_sandbox_client_secret', 'EEIxCuVnbgING9EyzcF2q-gpacLneVbngQtJ1mbx-42Lbq-6Uf6PEjgzF7HEayNsI4IFmB9_CZkECc3y', '2022-12-20 01:33:51', '2024-03-10 15:58:04'),
(66, 'paypal_sandbox_app_id', '641651651958', '2022-12-20 01:33:51', '2024-03-10 15:58:04'),
(67, 'paypal_live_app_id', 'Test', '2022-12-20 01:33:51', '2024-03-10 15:58:04'),
(68, 'paypal_payment_action', NULL, '2022-12-20 01:33:51', '2024-03-10 15:58:04'),
(69, 'paypal_currency', NULL, '2022-12-20 01:33:51', '2024-03-10 15:58:04'),
(70, 'paypal_notify_url', NULL, '2022-12-20 01:33:51', '2024-03-10 15:58:04'),
(71, 'paypal_locale', NULL, '2022-12-20 01:33:51', '2024-03-10 15:58:04'),
(72, 'paypal_validate_ssl', NULL, '2022-12-20 01:33:52', '2024-03-10 15:58:04'),
(73, 'paypal_live_client_id', 'Test', '2022-12-20 01:33:52', '2024-03-10 15:58:04'),
(74, 'paypal_live_client_secret', 'Test', '2022-12-20 01:33:52', '2024-03-10 15:58:04'),
(75, 'paypal_gateway', 'on', '2022-12-20 01:33:52', '2024-03-10 15:58:04'),
(76, 'paypal_test_mode', 'on', '2022-12-20 01:33:52', '2024-03-10 15:58:04'),
(77, 'razorpay_preview_logo', '36', '2022-12-20 01:56:54', '2024-03-10 15:58:04'),
(78, 'razorpay_key', NULL, '2022-12-20 01:56:54', '2024-03-10 15:58:04'),
(79, 'razorpay_secret', NULL, '2022-12-20 01:56:54', '2024-03-10 15:58:04'),
(80, 'razorpay_api_key', 'rzp_test_SXk7LZqsBPpAkj', '2022-12-20 01:56:54', '2024-03-10 15:58:04'),
(81, 'razorpay_api_secret', 'Nenvq0aYArtYBDOGgmMH7JNv', '2022-12-20 01:56:54', '2024-03-10 15:58:04'),
(82, 'razorpay_gateway', 'on', '2022-12-20 01:56:54', '2024-03-10 15:58:04'),
(83, 'stripe_preview_logo', '37', '2022-12-20 01:56:54', '2024-03-10 15:58:04'),
(84, 'stripe_publishable_key', NULL, '2022-12-20 01:56:54', '2024-03-10 15:58:04'),
(85, 'stripe_secret_key', 'sk_test_51GwS1SEmGOuJLTMs2vhSliTwAGkOt4fKJMBrxzTXeCJoLrRu8HFf4I0C5QuyE3l3bQHBJm3c0qFmeVjd0V9nFb6Z00VrWDJ9Uw', '2022-12-20 01:56:54', '2024-03-10 15:58:04'),
(86, 'stripe_public_key', 'pk_test_51GwS1SEmGOuJLTMsIeYKFtfAT3o3Fc6IOC7wyFmmxA2FIFQ3ZigJ2z1s4ZOweKQKlhaQr1blTH9y6HR2PMjtq1Rx00vqE8LO0x', '2022-12-20 01:56:54', '2024-03-10 15:58:04'),
(87, 'stripe_gateway', 'on', '2022-12-20 01:56:55', '2024-03-10 15:58:04'),
(88, 'paytm_gateway', 'on', '2022-12-20 01:56:55', '2024-03-10 15:58:04'),
(89, 'paytm_preview_logo', '35', '2022-12-20 01:56:55', '2024-03-10 15:58:04'),
(90, 'paytm_merchant_key', 'dv0XtmsPYpewNag', '2022-12-20 01:56:55', '2024-03-10 15:58:04'),
(91, 'paytm_merchant_mid', 'Digita57697814558795', '2022-12-20 01:56:55', '2024-03-10 15:58:04'),
(92, 'paytm_merchant_website', 'WEBSTAGING', '2022-12-20 01:56:55', '2024-03-10 15:58:04'),
(93, 'paytm_test_mode', 'on', '2022-12-20 01:56:55', '2024-03-10 15:58:04'),
(94, 'paystack_merchant_email', 'xgeniousteam@gmail.com', '2022-12-20 01:56:55', '2024-03-10 15:58:05'),
(95, 'paystack_preview_logo', '51', '2022-12-20 01:56:55', '2024-03-10 15:58:05'),
(96, 'paystack_public_key', 'pk_test_7c6f87613b4dc1514acc3875998ba4f3a12bfda7', '2022-12-20 01:56:55', '2024-03-10 15:58:05'),
(97, 'paystack_secret_key', 'sk_test_0ec08da7d5d342774eaa3779ff37004a1fbda6c4', '2022-12-20 01:56:55', '2024-03-10 15:58:05'),
(98, 'paystack_gateway', 'on', '2022-12-20 01:56:55', '2024-03-10 15:58:05'),
(99, 'mollie_preview_logo', '38', '2022-12-20 01:56:55', '2024-03-10 15:58:05'),
(100, 'mollie_public_key', 'test_fVk76gNbAp6ryrtRjfAVvzjxSHxC2v', '2022-12-20 01:56:55', '2024-03-10 15:58:05'),
(101, 'mollie_gateway', 'on', '2022-12-20 01:56:55', '2024-03-10 15:58:05'),
(102, 'marcado_pagp_client_id', NULL, '2022-12-20 01:56:55', '2023-04-09 22:54:10'),
(103, 'marcado_pago_client_secret', NULL, '2022-12-20 01:56:55', '2023-04-09 22:54:10'),
(104, 'marcado_pago_test_mode', NULL, '2022-12-20 01:56:55', '2023-04-09 22:54:10'),
(105, 'cash_on_delivery_gateway', NULL, '2022-12-20 01:56:55', '2024-03-10 15:58:05'),
(106, 'cash_on_delivery_preview_logo', NULL, '2022-12-20 01:56:55', '2024-03-10 15:58:05'),
(107, 'flutterwave_preview_logo', '39', '2022-12-20 01:56:55', '2024-03-10 15:58:05'),
(108, 'flutterwave_gateway', 'on', '2022-12-20 01:56:55', '2024-03-10 15:58:05'),
(109, 'flw_public_key', '86cce2ec43c63e09a517290a8347fcab', '2022-12-20 01:56:56', '2024-03-10 15:58:05'),
(110, 'flw_secret_key', 'd37a42d8917db84f1b2f47c125252d0a', '2022-12-20 01:56:56', '2024-03-10 15:58:05'),
(111, 'flw_secret_hash', NULL, '2022-12-20 01:56:56', '2024-03-10 15:58:05'),
(112, 'midtrans_preview_logo', '46', '2022-12-20 01:56:56', '2024-03-10 15:58:05'),
(113, 'midtrans_merchant_id', NULL, '2022-12-20 01:56:56', '2024-03-10 15:58:05'),
(114, 'midtrans_server_key', 'SB-Mid-server-9z5jztsHyYxEdSs7DgkNg2on', '2022-12-20 01:56:56', '2024-03-10 15:58:05'),
(115, 'midtrans_client_key', 'SB-Mid-client-iDuy-jKdZHkLjL_I', '2022-12-20 01:56:56', '2024-03-10 15:58:05'),
(116, 'midtrans_environment', NULL, '2022-12-20 01:56:56', '2024-03-10 15:58:05'),
(117, 'midtrans_gateway', 'on', '2022-12-20 01:56:56', '2024-03-10 15:58:05'),
(118, 'midtrans_test_mode', 'on', '2022-12-20 01:56:56', '2024-03-10 15:58:05'),
(119, 'payfast_preview_logo', '40', '2022-12-20 01:56:56', '2024-03-10 15:58:05'),
(120, 'payfast_merchant_id', '10024000', '2022-12-20 01:56:56', '2024-03-10 15:58:05'),
(121, 'payfast_merchant_key', '77jcu5v4ufdod', '2022-12-20 01:56:56', '2024-03-10 15:58:05'),
(122, 'payfast_passphrase', 'testpayfastsohan', '2022-12-20 01:56:56', '2024-03-10 15:58:05'),
(123, 'payfast_merchant_env', NULL, '2022-12-20 01:56:56', '2024-03-10 15:58:05'),
(124, 'payfast_itn_url', NULL, '2022-12-20 01:56:56', '2024-03-10 15:58:05'),
(125, 'payfast_gateway', 'on', '2022-12-20 01:56:56', '2024-03-10 15:58:05'),
(126, 'cashfree_preview_logo', '41', '2022-12-20 01:56:56', '2024-03-10 15:58:05'),
(127, 'cashfree_test_mode', 'on', '2022-12-20 01:56:56', '2024-03-10 15:58:05'),
(128, 'cashfree_app_id', '94527832f47d6e74fa6ca5e3c72549', '2022-12-20 01:56:56', '2024-03-10 15:58:05'),
(129, 'cashfree_secret_key', 'ec6a3222018c676e95436b2e26e89c1ec6be2830', '2022-12-20 01:56:56', '2024-03-10 15:58:05'),
(130, 'cashfree_gateway', 'on', '2022-12-20 01:56:56', '2024-03-10 15:58:05'),
(131, 'instamojo_preview_logo', '47', '2022-12-20 01:56:57', '2024-03-10 15:58:05'),
(132, 'instamojo_client_id', 'test_nhpJ3RvWObd3uryoIYF0gjKby5NB5xu6S9Z', '2022-12-20 01:56:57', '2024-03-10 15:58:05'),
(133, 'instamojo_client_secret', 'test_iZusG4P35maQVPTfqutbCc6UEbba3iesbCbrYM7zOtDaJUdbPz76QOnBcDgblC53YBEgsymqn2sx3NVEPbl3b5coA3uLqV1ikxKquOeXSWr8Ruy7eaKUMX1yBbm', '2022-12-20 01:56:57', '2024-03-10 15:58:05'),
(134, 'instamojo_username', NULL, '2022-12-20 01:56:57', '2024-03-10 15:58:05'),
(135, 'instamojo_password', NULL, '2022-12-20 01:56:57', '2024-03-10 15:58:05'),
(136, 'instamojo_test_mode', 'on', '2022-12-20 01:56:57', '2024-03-10 15:58:05'),
(137, 'instamojo_gateway', 'on', '2022-12-20 01:56:57', '2024-03-10 15:58:05'),
(138, 'marcadopago_preview_logo', '48', '2022-12-20 01:56:57', '2024-03-10 15:58:05'),
(139, 'marcado_pago_client_id', 'TEST-0a3cc78a-57bf-4556-9dbe-2afa06347769', '2022-12-20 01:56:57', '2023-04-10 21:43:47'),
(140, 'marcadopago_gateway', 'on', '2022-12-20 01:56:57', '2024-03-10 15:58:05'),
(141, 'marcadopago_test_mode', 'on', '2022-12-20 01:56:57', '2024-03-10 15:58:05'),
(142, 'zitopay_username', 'dvrobin4', '2022-12-20 01:56:57', '2024-03-10 15:58:05'),
(143, 'zitopay_preview_logo', '42', '2022-12-20 01:56:57', '2024-03-10 15:58:05'),
(144, 'zitopay_gateway', 'on', '2022-12-20 01:56:57', '2024-03-10 15:58:05'),
(145, 'zitopay_test_mode', 'on', '2022-12-20 01:56:57', '2024-03-10 15:58:05'),
(146, 'billplz_collection_name', 'kjj5ya006', '2022-12-20 01:56:57', '2024-03-10 15:58:05'),
(147, 'billplz_xsignature', 'S-HDXHxRJB-J7rNtoktZkKJg', '2022-12-20 01:56:57', '2024-03-10 15:58:05'),
(148, 'billplz_key', 'b2ead199-e6f3-4420-ae5c-c94f1b1e8ed6', '2022-12-20 01:56:57', '2024-03-10 15:58:05'),
(149, 'billplz_preview_logo', '50', '2022-12-20 01:56:57', '2024-03-10 15:58:05'),
(150, 'billplz_gateway', 'on', '2022-12-20 01:56:57', '2024-03-10 15:58:05'),
(151, 'billplz_test_mode', 'on', '2022-12-20 01:56:57', '2024-03-10 15:58:05'),
(152, 'paytabs_region', 'GLOBAL', '2022-12-20 01:56:57', '2024-03-10 15:58:05'),
(153, 'paytabs_profile_id', '96698', '2022-12-20 01:56:57', '2024-03-10 15:58:05'),
(154, 'paytabs_server_key', 'SKJNDNRHM2-JDKTZDDH2N-H9HLMJNJ2L', '2022-12-20 01:56:58', '2024-03-10 15:58:05'),
(155, 'paytabs_preview_logo', '49', '2022-12-20 01:56:58', '2024-03-10 15:58:05'),
(156, 'paytabs_gateway', 'on', '2022-12-20 01:56:58', '2024-03-10 15:58:05'),
(157, 'paytabs_test_mode', 'on', '2022-12-20 01:56:58', '2024-03-10 15:58:05'),
(158, 'cinetpay_site_id', '445160', '2022-12-20 01:56:58', '2024-03-10 15:58:05'),
(159, 'cinetpay_app_key', '12912847765bc0db748fdd44.40081707', '2022-12-20 01:56:58', '2024-03-10 15:58:05'),
(160, 'cinetpay_preview_logo', '45', '2022-12-20 01:56:58', '2024-03-10 15:58:05'),
(161, 'cinetpay_gateway', 'on', '2022-12-20 01:56:58', '2024-03-10 15:58:05'),
(162, 'cinetpay_test_mode', 'on', '2022-12-20 01:56:58', '2024-03-10 15:58:05'),
(163, 'squareup_application_id', NULL, '2022-12-20 01:56:58', '2024-03-10 15:58:05'),
(164, 'squareup_location_id', 'LE9C12TNM5HAS', '2022-12-20 01:56:58', '2024-03-10 15:58:05'),
(165, 'squareup_access_token', 'EAAAEOuLQObrVwJvCvoio3H13b8Ssqz1ighmTBKZvIENW9qxirHGHkqsGcPBC1uN', '2022-12-20 01:56:58', '2024-03-10 15:58:05'),
(166, 'squareup_preview_logo', '43', '2022-12-20 01:56:58', '2024-03-10 15:58:05'),
(167, 'squareup_gateway', 'on', '2022-12-20 01:56:58', '2024-03-10 15:58:05'),
(168, 'squareup_test_mode', 'on', '2022-12-20 01:56:58', '2024-03-10 15:58:05'),
(169, 'paytm_channel', 'WEB', '2022-12-20 02:01:36', '2024-03-10 15:58:04'),
(170, 'paytm_industry_type', 'Retail', '2022-12-20 02:01:36', '2024-03-10 15:58:04'),
(171, 'error_404_page_title', 'Page Not Found', '2022-12-26 04:23:23', '2023-11-19 07:18:47'),
(172, 'error_404_page_subtitle', 'Page Unavailable!!', '2022-12-26 04:23:23', '2023-11-19 07:18:47'),
(173, 'error_404_page_paragraph', NULL, '2022-12-26 04:23:23', '2023-11-19 07:18:47'),
(174, 'error_404_page_button_text', 'Back To Home', '2022-12-26 04:23:23', '2023-11-19 07:18:47'),
(175, 'error_image', '80', '2022-12-26 04:23:23', '2023-11-19 07:18:47'),
(176, 'maintain_page_title', 'Sorry  we are down for schedule maintenance right now !!', '2022-12-26 05:51:02', '2022-12-26 05:51:02'),
(177, 'maintain_page_description', 'Sorry  we are down for schedule maintenance right now !!', '2022-12-26 05:51:02', '2022-12-26 05:51:02'),
(178, 'maintenance_duration', '2022-12-31', '2022-12-26 05:51:02', '2022-12-26 05:51:02'),
(179, 'maintain_page_logo', '10', '2022-12-26 05:51:02', '2022-12-26 05:51:02'),
(180, 'professional_title', 'Tell us what professional title describes you?', '2023-02-14 04:40:23', '2023-04-02 22:32:36'),
(181, 'intro_title', 'Provide an intro about yourself', '2023-02-14 04:40:23', '2023-04-02 22:32:36'),
(182, 'experience_title', 'Tell us about your professional experiences(Experience)', '2023-02-14 05:31:43', '2023-04-02 22:03:58'),
(183, 'inner_title', 'Experience', '2023-02-14 05:31:43', '2023-02-14 05:32:10'),
(184, 'modal_title', 'Add Work Experience', '2023-02-14 05:31:43', '2023-02-14 05:32:10'),
(185, 'edit_modal_title', 'Edit Work Experience', '2023-02-14 05:31:43', '2023-02-14 05:32:10'),
(186, 'experience_inner_title', 'Work experience', '2023-02-14 05:36:13', '2023-04-02 22:03:58'),
(187, 'experience_modal_title', 'Add work experience', '2023-02-14 05:36:13', '2023-04-02 22:03:58'),
(188, 'experience_edit_modal_title', 'Edit work experience', '2023-02-14 05:36:13', '2023-04-02 22:03:59'),
(189, 'education_title', 'What’s your Educational Background?(Education)', '2023-02-14 05:44:09', '2023-04-02 22:04:04'),
(190, 'education_inner_title', 'Education', '2023-02-14 05:44:09', '2023-04-02 22:04:04'),
(191, 'education_modal_title', 'Educational background', '2023-02-14 05:44:09', '2023-04-02 22:04:04'),
(192, 'education_edit_modal_title', 'Edit educational background', '2023-02-14 05:44:09', '2023-04-02 22:04:04'),
(193, 'work_title', 'What kinds of services will you provide to clients?(Work)', '2023-02-14 05:57:43', '2023-04-02 22:04:09'),
(194, 'work_inner_title', 'Choose, what would you do?', '2023-02-14 05:57:43', '2023-04-02 22:04:09'),
(195, 'work_modal_title', 'Choose a service', '2023-02-14 05:57:43', '2023-04-02 22:04:09'),
(196, 'skill_title', 'Great! Now add some skills you have', '2023-02-14 06:30:53', '2023-04-02 22:04:14'),
(197, 'hourly_rate', NULL, '2023-02-14 06:40:13', '2023-02-14 06:40:13'),
(198, 'profile_photo', NULL, '2023-02-14 06:40:13', '2023-02-14 06:40:13'),
(199, 'hourly_rate_title', 'What is your hourly rate?', '2023-02-14 06:41:09', '2023-04-02 22:04:19'),
(200, 'profile_photo_title', 'Upload profile photo', '2023-02-14 06:41:09', '2023-04-02 22:04:19'),
(201, 'account_page_title', 'Setup Your Account', '2023-02-14 22:59:23', '2023-04-02 22:04:24'),
(202, 'account_page_skip_title', 'Skip', '2023-02-14 22:59:23', '2023-04-02 22:04:24'),
(203, 'account_page_back_button_title', 'Back', '2023-02-14 22:59:23', '2023-04-02 22:04:24'),
(204, 'introduction_menu_title', 'Introduction', '2023-02-14 23:08:28', '2023-04-02 22:32:36'),
(205, 'introduction_menu_sub_title', 'How do you professionally introduce yourself?', '2023-02-14 23:08:28', '2023-04-02 22:32:36'),
(206, 'experience_menu_title', 'Experience', '2023-02-14 23:36:28', '2023-04-02 22:03:58'),
(207, 'experience_menu_sub_title', 'Let clients know about your professional experiences.', '2023-02-14 23:36:29', '2023-04-02 22:03:58'),
(208, 'education_menu_title', 'Education', '2023-02-14 23:36:50', '2023-04-02 22:04:04'),
(209, 'education_menu_sub_title', 'How do you professionally introduce yourself?', '2023-02-14 23:36:50', '2023-04-02 22:04:04'),
(210, 'work_menu_title', 'Work', '2023-02-14 23:37:33', '2023-04-02 22:04:09'),
(211, 'work_menu_sub_title', 'Add the services and necessary skills you offer.', '2023-02-14 23:37:33', '2023-04-02 22:04:09'),
(212, 'skill_menu_title', 'Skills', '2023-02-14 23:37:56', '2023-04-02 22:04:14'),
(213, 'skill_menu_sub_title', 'Add the services and necessary skills you offer.', '2023-02-14 23:37:56', '2023-04-02 22:04:14'),
(214, 'hourly_rate_menu_title', 'Hourly Rate & Photo', '2023-02-14 23:38:36', '2023-04-02 22:04:19'),
(215, 'hourly_rate_menu_sub_title', 'Just add your Hourly Rate and Profile Photo to finish.', '2023-02-14 23:38:36', '2023-04-02 22:04:19'),
(216, 'user_identity_verify_subject', 'User identity verify request email', '2023-02-16 02:31:58', '2023-02-16 02:32:15'),
(217, 'user_identity_verify_message', '<p>Hello,</p><p></p>You have a new request for user identity verification<p></p>', '2023-02-16 02:31:58', '2023-02-16 02:32:15'),
(218, 'user_info_update_subject', 'User Info Update Email', '2023-02-18 04:51:23', '2023-02-18 05:10:03'),
(219, 'user_info_update_message', '<p>Hello @name,\r\n</p><p>Your information successfully updated</p><p>Username: @username</p><p> Email: @email</p><p>\r\n</p>', '2023-02-18 04:51:23', '2023-02-18 05:10:03'),
(220, 'user_identity_verify_confirm_subject', 'User Identity Verify Confirm', '2023-02-20 01:38:44', '2023-02-20 01:38:44'),
(221, 'user_identity_verify_confirm_message', '<p>Hello @name,\r\n</p><p>Your identity verification successfully done. Now you are a verified user.\r\n</p><p>Username: @username\r\n</p><p>Email: @email</p><p>\r\n</p><p>\r\n</p><p>\r\n</p>', '2023-02-20 01:38:45', '2023-02-20 01:38:45'),
(222, 'user_identity_re_verify_subject', 'User Identity Reverification', '2023-02-20 02:10:13', '2023-02-20 02:10:13'),
(223, 'user_identity_re_verify_message', '<p>Hello @name,\r\n</p><p>Your identity need to reverification for the following reasons.</p><ul><li>Face issue</li><li>ID issue</li></ul><p>Username: @username\r\n</p><p>Email: @email</p><p>\r\n</p><p>\r\n</p><p>\r\n</p>', '2023-02-20 02:10:13', '2023-02-20 02:10:13'),
(224, 'user_identity_decline_subject', 'User Identity Decline', '2023-02-20 03:17:50', '2023-02-20 03:36:03'),
(225, 'user_identity_decline_message', '<p>Hello @name,\r\n</p><p>Your identity verification request decline for the bellow reasons</p><ul><li>&nbsp;image not si,ilar</li><li>number not match</li><li>email not match</li></ul><p>Username: @username\r\n</p><p>Email: @email</p><p>\r\n</p><p>\r\n</p><p>\r\n</p>', '2023-02-20 03:17:50', '2023-02-20 03:36:03'),
(226, 'user_password_change_subject', 'User Password Change Email', '2023-02-21 22:53:34', '2023-02-21 22:56:21'),
(227, 'user_password_change_message', '<p>Hello @name,\r\n</p><p>Your password has been changed.\r\n</p><p>New password : @password</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p>', '2023-02-21 22:53:34', '2023-02-21 22:56:21'),
(228, 'user_status_active_subject', 'User Status Activate Email', '2023-02-22 03:18:43', '2023-02-22 03:18:43'),
(229, 'user_status_active_message', '<p>Hello @name,\r\n</p><p>Your account status has been changed from inactive to active.</p><p>\r\n</p>', '2023-02-22 03:18:43', '2023-02-22 03:18:43'),
(230, 'user_status_inactive_subject', 'User Status Inactivate Email', '2023-02-22 03:22:20', '2023-02-22 03:22:20'),
(231, 'user_status_inactive_message', '<p>Hello @name,\r\n</p><p>Your account status has been changed from active to inactive due to multiple violations of our community guidelines.</p><ul><li>test text</li><li>test text</li><li>test text</li><li>test text</li></ul><p>\r\n</p>', '2023-02-22 03:22:20', '2023-02-22 03:22:20'),
(232, 'user_register_subject', 'New User Register Email', '2023-02-23 06:36:57', '2024-01-30 04:23:56'),
(233, 'user_register_message', '<p>Hello Admin,\r\n</p><p>New user just registered. Bello is the user details.</p><p><br></p><p>\r\n</p><p>Name : @name\r\n</p><p>Email: @email\r\n</p><p>Username: @username\r\n</p><p>User Type: @userType</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p>', '2023-02-23 06:36:57', '2024-01-30 04:23:56'),
(234, 'site_global_currency', 'USD', '2023-03-06 06:48:47', '2024-01-27 22:41:57'),
(235, 'enable_disable_decimal_point', NULL, '2023-03-06 07:51:22', '2023-04-12 00:04:54'),
(236, 'site_currency_symbol_position', 'left', '2023-03-06 07:51:22', '2023-04-12 00:04:54'),
(237, 'site_default_payment_gateway', 'paypal', '2023-03-06 07:51:22', '2023-04-12 00:04:54'),
(238, 'site_usd_to_idr_exchange_rate', '100', '2023-03-06 07:51:22', '2024-01-27 22:41:57'),
(239, 'site_usd_to_inr_exchange_rate', '100', '2023-03-06 07:51:22', '2024-01-27 22:41:57'),
(240, 'site_usd_to_ngn_exchange_rate', '100', '2023-03-06 07:51:22', '2024-01-27 22:41:57'),
(241, 'site_usd_to_zar_exchange_rate', '100', '2023-03-06 07:51:22', '2024-01-27 22:41:57'),
(242, 'site_usd_to_brl_exchange_rate', '100', '2023-03-06 07:51:22', '2024-01-27 22:41:57'),
(243, 'site_usd_to_myr_exchange_rate', '100', '2023-03-06 07:51:22', '2024-01-27 22:41:57'),
(244, '_2fa_disable_subject', 'Disable 2FA Email', '2023-03-25 00:36:36', '2023-03-25 00:36:36'),
(245, '_2fa_disable_message', '<p>Hello @name,<br><br>2 factor authentication successfully disable from your account.<br></p>', '2023-03-25 00:36:36', '2023-03-25 00:36:36'),
(246, 'user_email_verified_subject', 'User Email Verify', '2023-03-25 01:12:29', '2023-03-25 02:22:42'),
(247, 'user_email_verified_message', '<p>Hello @name,<br><br>Your email address successfully verified.<br></p>', '2023-03-25 01:12:29', '2023-03-25 02:22:42'),
(248, 'project_create_email_subject', 'Project Create Email', '2023-03-25 03:12:40', '2023-03-25 03:12:40'),
(249, 'project_create_email_message', '<p>Hello,<br><br>A new project is just created. Project ID: @project_id<br></p>', '2023-03-25 03:12:40', '2023-03-25 03:12:40'),
(250, 'project_approve_email_subject', 'Project Activate Email', '2023-03-25 03:41:43', '2023-03-28 02:12:13'),
(251, 'project_approve_email_message', '<p>Hello @name,<br><br>Your project successfully activate. Project ID: @project_id<br></p>', '2023-03-25 03:41:43', '2023-03-28 02:12:13'),
(252, 'project_decline_email_subject', 'Project Reject Email', '2023-03-25 03:50:42', '2023-03-28 02:27:42'),
(253, 'project_decline_email_message', '<p>Hello @name,<br><br>Your project has been rejected. Project ID: @project_id<br></p>', '2023-03-25 03:50:42', '2023-03-28 02:27:42'),
(254, 'project_edit_email_subject', 'Project Edit Email', '2023-03-26 21:55:46', '2023-03-26 21:55:46'),
(255, 'project_edit_email_message', '<p>Hello,\r\n</p><p>A project is just edited. Project ID: @project_id</p><p>\r\n</p>', '2023-03-26 21:55:46', '2023-03-26 21:55:46'),
(256, 'project_inactivate_email_subject', 'Project Inactivate Email', '2023-03-28 01:12:45', '2023-03-28 02:00:19'),
(257, 'project_inactivate_email_message', '<p>Hello @name,\r\n</p><p>Your project inactivate for the bellow reasons..... Project ID: @project_id</p><p>\r\n</p>', '2023-03-28 01:12:45', '2023-03-28 02:00:19'),
(258, 'login_page_title', 'Please login to continue', '2023-03-29 23:49:12', '2023-11-09 06:39:50'),
(259, 'login_page_button_title', 'Sign In Now', '2023-03-29 23:49:12', '2023-11-09 06:39:50'),
(260, 'login_page_sidebar_title', 'Xilancer Marketplace', '2023-03-29 23:49:12', '2023-11-09 06:39:50'),
(261, 'login_page_sidebar_description', 'Welcome, to xilancer marketplace. Here you can build a awesome career. Be a freelancer or you can post your job.', '2023-03-29 23:49:12', '2023-11-09 06:39:50'),
(262, 'login_page_social_login_enable_disable', 'on', '2023-03-29 23:49:12', '2023-11-09 06:39:50'),
(263, 'login_page_sidebar_image', '26', '2023-03-30 00:26:39', '2023-11-09 06:39:50'),
(264, 'register_page_title', 'Sign Up', '2023-03-30 01:27:49', '2023-11-25 05:53:06'),
(265, 'register_page_button_title', 'Sign Up Now', '2023-03-30 01:27:49', '2023-11-25 05:53:06'),
(266, 'register_page_sidebar_title', 'Register and start discover', '2023-03-30 01:27:49', '2023-11-25 05:53:06'),
(267, 'register_page_sidebar_description', 'Once register you will see the magic of xilancer marketplace.', '2023-03-30 01:27:49', '2023-11-25 05:53:06'),
(268, 'register_page_social_login_enable_disable', 'on', '2023-03-30 01:27:49', '2023-11-25 05:53:06'),
(269, 'register_page_sidebar_image', '26', '2023-03-30 01:27:49', '2023-11-25 05:53:06'),
(270, 'site_white_logo', '33', '2023-04-02 22:55:28', '2023-04-02 23:03:25'),
(271, 'manual_payment_preview_logo', '44', '2023-04-05 03:06:03', '2024-03-10 15:58:06'),
(272, 'site_manual_payment_name', 'Bank  Transfer', '2023-04-05 03:06:03', '2023-04-12 21:34:36'),
(273, 'manual_payment_test_mode', NULL, '2023-04-05 03:06:03', '2024-03-10 15:58:06'),
(274, 'user_deposit_to_wallet_subject', 'User Deposit Email', '2023-04-06 01:30:36', '2023-04-06 01:42:47'),
(275, 'user_deposit_to_wallet_message', '<p>Hello @name,<br><br>Your deposit to wallet successfully completed. Deposit ID: @deposit_id<br></p>', '2023-04-06 01:30:36', '2023-04-06 01:42:47'),
(276, 'user_deposit_to_wallet_subject_admin', 'User Deposit Email', '2023-04-06 01:31:53', '2023-04-06 01:42:41'),
(277, 'user_deposit_to_wallet_message_admin', '<p>Hello,<br></p><p>A user deposit to his wallet. Deposit ID: @deposit_id<br></p>', '2023-04-06 01:31:53', '2023-04-06 01:42:41'),
(278, 'deposit_amount_limitation_for_user', '500', '2023-04-08 23:01:49', '2023-07-05 06:44:12'),
(279, 'razorpay_test_mode', 'on', '2023-04-09 23:51:10', '2024-03-10 15:58:04'),
(280, 'stripe_test_mode', 'on', '2023-04-09 23:51:10', '2024-03-10 15:58:04'),
(281, 'paystack_test_mode', 'on', '2023-04-09 23:51:11', '2024-03-10 15:58:05'),
(282, 'mollie_test_mode', NULL, '2023-04-09 23:51:11', '2024-03-10 15:58:05'),
(283, 'flutterwave_test_mode', 'on', '2023-04-09 23:51:11', '2024-03-10 15:58:05'),
(284, 'payfast_test_mode', 'on', '2023-04-09 23:51:12', '2024-03-10 15:58:05'),
(285, 'marcadopago_client_id', 'TEST-0a3cc78a-57bf-4556-9dbe-2afa06347769', '2023-04-10 21:46:19', '2024-03-10 15:58:05'),
(286, 'marcadopago_client_secret', 'TEST-4644184554273630-070813-7d817e2ca1576e75884001d0755f8a7a-786499991', '2023-04-10 21:46:19', '2024-03-10 15:58:05'),
(287, 'toyyibpay_secrect_key', 'wnbtrqle-9t9l-m02j-e2bz-iaj2tkp52sfo', '2023-04-11 03:10:15', '2024-03-10 15:58:05'),
(288, 'toyyibpay_category_code', '0m0j9yc4', '2023-04-11 03:10:15', '2024-03-10 15:58:05'),
(289, 'toyyibpay_preview_logo', '53', '2023-04-11 03:10:15', '2024-03-10 15:58:05'),
(290, 'toyyibpay_gateway', 'on', '2023-04-11 03:10:15', '2024-03-10 15:58:05'),
(291, 'toyyibpay_test_mode', 'on', '2023-04-11 03:10:15', '2024-03-10 15:58:05'),
(292, 'pagali_page_id', NULL, '2023-04-11 03:53:41', '2024-03-10 15:58:05'),
(293, 'pagali_entity_id', NULL, '2023-04-11 03:53:41', '2024-03-10 15:58:05'),
(294, 'pagali_preview_logo', '54', '2023-04-11 03:53:41', '2024-03-10 15:58:05'),
(295, 'pagali_gateway', 'on', '2023-04-11 03:53:41', '2024-03-10 15:58:05'),
(296, 'pagali_test_mode', 'on', '2023-04-11 03:53:41', '2024-03-10 15:58:05'),
(297, 'authorize_dot_net_login_id', '2e8yjNL89kV2', '2023-04-11 22:24:12', '2024-03-10 15:58:05'),
(298, 'authorize_dot_net_transaction_id', '65968Gb3DU2ntX2v', '2023-04-11 22:24:12', '2024-03-10 15:58:05'),
(299, 'authorize_dot_net_preview_logo', '55', '2023-04-11 22:24:12', '2024-03-10 15:58:05'),
(300, 'authorize_dot_net_gateway', 'on', '2023-04-11 22:24:12', '2024-03-10 15:58:05'),
(301, 'authorize_dot_net_test_mode', 'on', '2023-04-11 22:24:12', '2024-03-10 15:58:05'),
(302, 'sitesway_brand_id', NULL, '2023-04-11 23:13:38', '2024-03-10 15:58:05'),
(303, 'sitesway_api_key', NULL, '2023-04-11 23:13:38', '2024-03-10 15:58:05'),
(304, 'sitesway_preview_logo', '56', '2023-04-11 23:13:38', '2024-03-10 15:58:06'),
(305, 'sitesway_gateway', 'on', '2023-04-11 23:13:38', '2024-03-10 15:58:06'),
(306, 'sitesway_test_mode', 'on', '2023-04-11 23:13:38', '2024-03-10 15:58:06'),
(307, 'manual_payment_gateway', 'on', '2023-04-12 22:12:04', '2024-03-10 15:58:06'),
(308, 'job_create_email_subject', 'Job Create Email', '2023-04-17 01:14:00', '2023-04-17 03:20:55'),
(309, 'job_create_email_message', '<p>Hello,</p><p><br></p><p>\r\n</p><p>A new job is just created. Job ID: @job_id</p><p>\r\n</p>', '2023-04-17 01:14:00', '2023-04-17 03:20:55'),
(310, 'job_edit_email_subject', 'Job Edit Email', '2023-04-17 01:42:31', '2023-04-17 01:42:53'),
(311, 'job_edit_email_message', '<p>Hello,</p><p>\r\n</p><p>A project is just edited. Job ID: @job_id</p><p>\r\n</p>', '2023-04-17 01:42:31', '2023-04-17 01:42:53'),
(312, 'job_approve_email_subject', 'Job Activate Email', '2023-04-17 02:02:00', '2023-04-17 02:13:30'),
(313, 'job_approve_email_message', '<p>Hello @name,</p><p><br></p><p>\r\n</p><p>Your job successfully activate. Job ID: @job_id</p><p>\r\n</p>', '2023-04-17 02:02:00', '2023-04-17 02:13:30'),
(314, 'job_inactivate_email_subject', 'Job Inactivate Email', '2023-04-17 02:09:25', '2023-04-17 02:09:30'),
(315, 'job_inactivate_email_message', '<p>Hello @name,\r\n</p><p>Your job inactivate for the bellow reasons..... Job ID: @job_id</p><p>\r\n</p>', '2023-04-17 02:09:25', '2023-04-17 02:09:30'),
(316, 'job_decline_email_subject', 'Job Decline Email', '2023-04-17 02:13:15', '2023-04-17 02:13:15'),
(317, 'job_decline_email_message', '<p>Hello @name,\r\n</p><p>Your job has been rejected. Job ID: @job_id</p><p>\r\n</p>', '2023-04-17 02:13:15', '2023-04-17 02:13:15'),
(318, 'site_tag_line', 'Freelance Services Marketplace', '2023-05-09 01:09:04', '2023-11-13 07:45:07'),
(319, 'home_page', '7', '2023-05-10 00:53:34', '2023-10-26 05:40:12'),
(320, 'user_subscription_purchase_subject', 'User Subscription Purchase Email', '2023-06-22 05:44:20', '2023-06-22 05:44:20'),
(321, 'user_subscription_purchase_message', '<p>Your subscription purchase successfully completed. Subscription ID: @subscription_id</p>', '2023-06-22 05:44:20', '2023-06-22 05:44:20'),
(322, 'user_subscription_purchase_admin_email_subject', 'User Subscription Purchase Email', '2023-06-22 05:46:20', '2023-06-22 05:46:20'),
(323, 'user_subscription_purchase_admin_email_message', '<p>A user just purchase a subscription. Subscription ID: @subscription_id</p>', '2023-06-22 05:46:20', '2023-06-22 05:46:20'),
(324, 'limit_settings', '2', '2023-06-24 01:29:25', '2023-07-06 04:01:20'),
(325, 'manual_subscription_complete_subject', 'Subscription Manual Payment Complete', '2023-06-26 01:16:35', '2023-07-04 03:55:16'),
(326, 'manual_subscription_complete_message', '<p>Hello @name,\r\n</p><p>Your manual subscription payment status successfully changed from pending to complete. Subscription ID: @subscription_id</p><p>\r\n</p>', '2023-06-26 01:16:35', '2023-07-04 03:55:16'),
(327, 'manual_subscription_pending_subject', 'Subscription Manual Payment Pending Email', '2023-06-26 01:17:48', '2023-06-26 01:17:48'),
(328, 'manual_subscription_pending_message', '<p>Hello @name,\r\n</p><p>Your manual subscription payment status changed from complete to pending. Subscription ID: @subscription_id</p><p>\r\n</p>', '2023-06-26 01:17:48', '2023-06-26 01:17:48'),
(329, 'manual_subscription_complete_subject_to_admin', 'Subscription Manual Payment Complete', '2023-07-04 03:59:45', '2023-07-04 03:59:52'),
(330, 'manual_subscription_complete_message_to_admin', '<p>Hello admin,\r\n</p><p>A manual subscription payment status successfully changed from pending to complete. Subscription ID: @subscription_id</p><p>\r\n</p><p>\r\n</p>', '2023-07-04 03:59:46', '2023-07-04 03:59:52'),
(331, 'subscription_active_subject', 'Subscription Active', '2023-07-04 05:28:01', '2023-07-04 05:28:42'),
(332, 'subscription_active_message', '<p>Hello @name,\r\n</p><p>Your subscription status changed from inactive to active. Subscription ID: @subscription_id</p><p>\r\n</p>', '2023-07-04 05:28:01', '2023-07-04 05:28:42'),
(333, 'subscription_inactive_subject', 'Subscription Inactive', '2023-07-04 05:29:31', '2023-07-04 05:29:31'),
(334, 'subscription_inactive_message', '<p>Hello @name,\r\n</p><p>Your subscription status changed from active to inactive. Subscription ID: @subscription_id</p><p>\r\n</p>', '2023-07-04 05:29:31', '2023-07-04 05:29:31'),
(353, 'admin_commission_type', 'percentage', '2023-07-11 01:37:44', '2023-07-11 01:37:44'),
(354, 'admin_commission_charge', '21', '2023-07-11 01:37:44', '2023-07-11 01:37:44'),
(359, 'transaction_fee_type', 'percentage', '2023-07-12 01:19:22', '2023-07-27 00:29:56'),
(360, 'transaction_fee_charge', '2', '2023-07-12 01:19:22', '2023-07-27 00:29:57'),
(361, 'order_hold_subject', 'Hold Order', '2023-08-22 00:39:06', '2023-08-22 06:48:43'),
(362, 'order_hold_message', '<p>Hello @name,</p><p><br></p><p>Your order has been hold .... contact with support team</p><p><br></p><p>Order Id: #@order_id</p>', '2023-08-22 00:39:06', '2023-08-22 06:48:43'),
(363, 'order_unhold_subject', 'Unhold Order', '2023-08-22 00:40:04', '2023-08-22 01:24:20'),
(364, 'order_unhold_message', '<p>Hello @name;\r\n</p><p>Your order has been Unhold ....</p><p><br></p><p>Order Id: #@order_id</p><p>\r\n</p><p>\r\n</p><p>\r\n</p>', '2023-08-22 00:40:04', '2023-08-22 01:24:21'),
(365, 'account_active_subject', 'Account Active', '2023-08-22 03:55:06', '2023-08-22 06:48:19'),
(366, 'account_active_message', '<p>Hello @name,</p><p><br></p><p>Your account has been active......</p>', '2023-08-22 03:55:06', '2023-08-22 06:48:19'),
(367, 'account_suspend_subject', 'Account Suspend', '2023-08-22 03:55:23', '2023-08-22 06:48:24'),
(368, 'account_suspend_message', '<p>Hello @name,</p><p><br></p><p>Your account has been suspended......</p>', '2023-08-22 03:55:23', '2023-08-22 06:48:24'),
(369, 'account_unsuspend_subject', 'Account Active', '2023-08-24 04:10:00', '2023-08-24 04:10:00'),
(370, 'account_unsuspend_message', '<p>Hello @name,\r\n</p><p>Your account has been unsuspend form suspend......</p><p>\r\n</p><p>\r\n</p><p>\r\n</p>', '2023-08-24 04:10:00', '2023-08-24 04:10:00'),
(371, 'order_manual_payment_complete_subject', 'Order Manual Payment Complete', '2023-08-24 07:30:11', '2023-08-24 07:30:11'),
(372, 'order_manual_payment_complete_message', '<p>Hello @name,</p><p><br></p><p>\r\n</p><p>Your order payment has been updated from pending to complete.</p><p><br></p><p>\r\n</p><p>Order Id: #@order_id</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p>', '2023-08-24 07:30:11', '2023-08-24 07:30:11'),
(373, 'support_ticket_subject', 'Support Ticket', '2023-08-27 06:59:20', '2023-08-27 07:08:12'),
(374, 'support_ticket_message', '<p>Hello @name,</p><p><br></p><p>You have a new ticket</p><p><br></p><p>Ticket ID: #@ticket_id</p>', '2023-08-27 06:59:20', '2023-08-27 07:08:12'),
(375, 'support_ticket_message_email_subject', 'Support Ticket Message Email', '2023-08-29 04:57:15', '2023-08-29 04:57:15'),
(376, 'support_ticket_message_email_message', '<p>Hello @name,</p><p><br></p><p>You have a new message for the bellow ticket</p><p><br></p><p>Ticket ID : #@ticket_id</p>', '2023-08-29 04:57:15', '2023-08-29 04:57:15'),
(377, 'job_auto_approval', 'yes', '2023-09-20 05:50:29', '2023-10-04 04:11:52'),
(378, 'withdraw_amount_limitation_for_user', '50', '2023-10-15 05:09:35', '2023-10-15 05:09:35'),
(379, 'minimum_withdraw_amount', '50', '2023-10-15 05:28:40', '2023-10-17 03:47:28'),
(380, 'maximum_withdraw_amount', '500', '2023-10-15 05:28:40', '2023-10-17 03:47:28'),
(381, 'withdraw_fee', '5', '2023-10-16 23:47:35', '2023-10-16 23:47:35'),
(382, 'register_subscription', '10', '2023-11-06 04:35:25', '2023-11-06 04:35:25'),
(383, 'main_color_one', '#6176f6', '2023-11-15 04:32:16', '2023-11-23 00:10:41'),
(384, 'main_color_two', NULL, '2023-11-15 04:32:16', '2023-11-23 00:10:41'),
(385, 'secondary_color', '#ffa500', '2023-11-15 04:32:16', '2023-11-23 00:10:41'),
(386, 'paragraph_color', '#475467', '2023-11-15 04:32:16', '2023-11-23 00:10:41'),
(387, 'body_color', '#667085', '2023-11-15 04:32:16', '2023-11-23 00:10:41'),
(388, 'site_script_version', '2.3.0', '2023-12-18 14:01:27', '2023-12-18 14:01:30'),
(389, 'iyzipay_secret_key', 'sandbox-QsgXTUpizlCZzHaypMJwkL8YTMGsYMBM', '2023-12-27 07:40:33', '2024-03-10 15:58:06'),
(390, 'iyzipay_api_key', 'sandbox-QsgXTUpizlCZzHaypMJwkL8YTMGsYMBM', '2023-12-27 07:40:33', '2024-03-10 15:58:06'),
(391, 'iyzipay_preview_logo', '125', '2023-12-27 07:40:33', '2024-03-10 15:58:06'),
(392, 'iyzipay_gateway', 'on', '2023-12-27 07:40:33', '2024-03-10 15:58:06'),
(393, 'iyzipay_test_mode', 'on', '2023-12-27 07:40:33', '2024-03-10 15:58:06'),
(394, 'site_manual_payment_description', NULL, '2023-12-27 07:40:33', '2024-03-10 15:58:06'),
(395, 'job_enable_disable', 'enable', '2024-01-17 06:35:58', '2024-01-17 07:34:50'),
(396, 'project_enable_disable', 'enable', '2024-01-17 07:07:23', '2024-01-17 07:35:07'),
(397, 'captcha_status', 'on', '2024-01-27 06:46:42', '2024-01-27 06:46:42'),
(398, 'site_bgn_to_usd_exchange_rate', NULL, '2024-01-27 09:02:54', '2024-01-27 09:03:21'),
(399, 'site_bgn_to_idr_exchange_rate', NULL, '2024-01-27 09:02:54', '2024-01-27 09:03:21'),
(400, 'site_bgn_to_inr_exchange_rate', NULL, '2024-01-27 09:02:54', '2024-01-27 09:03:21'),
(401, 'site_bgn_to_ngn_exchange_rate', NULL, '2024-01-27 09:02:54', '2024-01-27 09:03:21'),
(402, 'site_bgn_to_zar_exchange_rate', NULL, '2024-01-27 09:02:54', '2024-01-27 09:03:21'),
(403, 'site_bgn_to_brl_exchange_rate', NULL, '2024-01-27 09:02:54', '2024-01-27 09:03:21'),
(404, 'site_bgn_to_myr_exchange_rate', NULL, '2024-01-27 09:02:54', '2024-01-27 09:03:21'),
(405, 'site_usd_to_usd_exchange_rate', '100', '2024-01-27 22:41:10', '2024-01-27 22:41:57'),
(406, 'user_register_welcome_subject', 'User Register Welcome Email', '2024-01-30 03:58:20', '2024-01-30 03:58:20'),
(407, 'user_register_welcome_message', '<p>Hello @name,\r\n</p><p>Your registration successfully completed. Below is your account details.</p><p><br></p><p>\r\n</p><p>Name : @name\r\n</p><p>Email: @email\r\n</p><p>Username: @username\r\n</p><p>Password : @password\r\n</p><p>User Type: @userType</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p>', '2024-01-30 03:58:20', '2024-01-30 03:58:20'),
(408, 'manual_payment_gateway_name', NULL, '2024-03-10 15:58:06', '2024-03-10 15:58:06');

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` bigint UNSIGNED NOT NULL,
  `subscription_type_id` bigint NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `limit` bigint NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '1-active, 0-inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscriptions`
--

INSERT INTO `subscriptions` (`id`, `subscription_type_id`, `title`, `logo`, `price`, `limit`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Standard', '113', 20, 100, 0, '2023-05-01 22:45:15', '2023-11-28 06:12:12'),
(2, 2, 'Standard', '112', 110, 60, 1, '2023-05-02 00:21:17', '2023-11-28 06:12:04'),
(3, 1, 'Starter', '111', 30, 5, 1, '2023-05-02 00:23:11', '2023-11-27 05:07:44'),
(4, 2, 'Starter', '57', 100, 50, 0, '2023-05-02 03:29:33', '2023-11-08 04:59:30'),
(5, 2, 'Professional', '114', 150, 100, 1, '2023-06-13 23:06:27', '2023-11-27 05:06:09'),
(6, 1, 'Professional', '115', 50, 10, 1, '2023-06-13 23:10:38', '2023-11-27 05:06:57'),
(7, 1, 'Professional Plus', '113', 60, 23, 0, '2023-06-13 23:11:55', '2023-11-28 06:24:17'),
(8, 3, 'Nano Offer', '57', 10, 5, 0, '2023-06-13 23:13:30', '2023-11-08 06:09:17'),
(9, 3, 'Micro Offer', '114', 20, 10, 1, '2023-06-13 23:17:56', '2023-11-28 06:24:44'),
(10, 5, 'Free', '112', 12, 20, 1, '2023-08-19 06:57:07', '2023-11-27 05:04:47');

-- --------------------------------------------------------

--
-- Table structure for table `subscription_features`
--

CREATE TABLE `subscription_features` (
  `id` bigint UNSIGNED NOT NULL,
  `subscription_id` bigint NOT NULL,
  `feature` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscription_features`
--

INSERT INTO `subscription_features` (`id`, `subscription_id`, `feature`, `status`, `created_at`, `updated_at`) VALUES
(293, 4, 'Yearly useable', 'on', '2023-11-08 04:59:30', '2023-11-08 04:59:30'),
(294, 4, 'Support', 'on', '2023-11-08 04:59:30', '2023-11-08 04:59:30'),
(295, 4, 'Very professional', 'on', '2023-11-08 04:59:30', '2023-11-08 04:59:30'),
(296, 4, 'Easy Access', 'on', '2023-11-08 04:59:30', '2023-11-08 04:59:30'),
(297, 4, 'New policy remove', 'on', '2023-11-08 04:59:30', '2023-11-08 04:59:30'),
(298, 4, 'Lifetime', 'off', '2023-11-08 04:59:30', '2023-11-08 04:59:30'),
(299, 4, 'Less use', 'off', '2023-11-08 04:59:30', '2023-11-08 04:59:30'),
(356, 8, 'Connect 5', 'on', '2023-11-08 06:09:17', '2023-11-08 06:09:17'),
(357, 8, 'Weekly', 'on', '2023-11-08 06:09:17', '2023-11-08 06:09:17'),
(358, 8, 'Less feature', 'on', '2023-11-08 06:09:17', '2023-11-08 06:09:17'),
(359, 8, 'New feature', 'on', '2023-11-08 06:09:17', '2023-11-08 06:09:17'),
(360, 8, 'Support system', 'on', '2023-11-08 06:09:17', '2023-11-08 06:09:17'),
(361, 8, 'No drawback', 'on', '2023-11-08 06:09:17', '2023-11-08 06:09:17'),
(362, 8, 'Professional', 'on', '2023-11-08 06:09:17', '2023-11-08 06:09:17'),
(384, 10, 'Free for first time', 'on', '2023-11-27 05:04:47', '2023-11-27 05:04:47'),
(385, 10, 'Get while register', 'on', '2023-11-27 05:04:47', '2023-11-27 05:04:47'),
(386, 10, 'Must register as a freelancer', 'on', '2023-11-27 05:04:47', '2023-11-27 05:04:47'),
(387, 10, 'One time get', 'on', '2023-11-27 05:04:47', '2023-11-27 05:04:47'),
(388, 10, 'Use for job proposal', 'on', '2023-11-27 05:04:47', '2023-11-27 05:04:47'),
(389, 10, 'Get only once', 'on', '2023-11-27 05:04:47', '2023-11-27 05:04:47'),
(390, 10, 'Totally Free', 'on', '2023-11-27 05:04:47', '2023-11-27 05:04:47'),
(391, 7, 'Connect 23', 'on', '2023-11-27 05:05:37', '2023-11-27 05:05:37'),
(392, 7, 'Professional', 'on', '2023-11-27 05:05:37', '2023-11-27 05:05:37'),
(393, 7, 'Monthly support', 'on', '2023-11-27 05:05:37', '2023-11-27 05:05:37'),
(394, 7, 'Features', 'on', '2023-11-27 05:05:37', '2023-11-27 05:05:37'),
(395, 7, 'New way', 'on', '2023-11-27 05:05:37', '2023-11-27 05:05:37'),
(396, 7, 'Long term', 'on', '2023-11-27 05:05:37', '2023-11-27 05:05:37'),
(397, 7, 'Usefull', 'on', '2023-11-27 05:05:37', '2023-11-27 05:05:37'),
(398, 5, 'Connect 100', 'on', '2023-11-27 05:06:09', '2023-11-27 05:06:09'),
(399, 5, 'Yearly system', 'on', '2023-11-27 05:06:09', '2023-11-27 05:06:09'),
(400, 5, 'Less use', 'on', '2023-11-27 05:06:09', '2023-11-27 05:06:09'),
(401, 5, 'Professional', 'on', '2023-11-27 05:06:09', '2023-11-27 05:06:09'),
(402, 5, 'One time get', 'on', '2023-11-27 05:06:09', '2023-11-27 05:06:09'),
(403, 5, 'Monthly support', 'on', '2023-11-27 05:06:09', '2023-11-27 05:06:09'),
(404, 5, 'New policy', 'on', '2023-11-27 05:06:09', '2023-11-27 05:06:09'),
(405, 6, 'Connect 10', 'on', '2023-11-27 05:06:57', '2023-11-27 05:06:57'),
(406, 6, 'Monthly support', 'on', '2023-11-27 05:06:57', '2023-11-27 05:06:57'),
(407, 6, 'Professional', 'on', '2023-11-27 05:06:57', '2023-11-27 05:06:57'),
(408, 6, 'List type', 'on', '2023-11-27 05:06:57', '2023-11-27 05:06:57'),
(409, 6, 'New feature', 'on', '2023-11-27 05:06:57', '2023-11-27 05:06:57'),
(410, 6, 'Long term', 'on', '2023-11-27 05:06:57', '2023-11-27 05:06:57'),
(411, 6, 'Healthy usecase', 'on', '2023-11-27 05:06:57', '2023-11-27 05:06:57'),
(412, 3, 'Monthly support', 'on', '2023-11-27 05:07:44', '2023-11-27 05:07:44'),
(413, 3, 'Lifetime', 'on', '2023-11-27 05:07:44', '2023-11-27 05:07:44'),
(414, 3, 'Professional', 'on', '2023-11-27 05:07:44', '2023-11-27 05:07:44'),
(415, 3, 'Long term', 'off', '2023-11-27 05:07:44', '2023-11-27 05:07:44'),
(416, 3, 'New feature', 'off', '2023-11-27 05:07:44', '2023-11-27 05:07:44'),
(417, 3, 'Unlimited validity', 'off', '2023-11-27 05:07:44', '2023-11-27 05:07:44'),
(418, 3, 'All Time', 'off', '2023-11-27 05:07:44', '2023-11-27 05:07:44'),
(419, 1, 'Month wise', 'on', '2023-11-27 05:08:18', '2023-11-27 05:08:18'),
(420, 1, 'Get more connect', 'on', '2023-11-27 05:08:18', '2023-11-27 05:08:18'),
(421, 1, 'Multiple use', 'on', '2023-11-27 05:08:18', '2023-11-27 05:08:18'),
(422, 1, 'Multi connect', 'on', '2023-11-27 05:08:18', '2023-11-27 05:08:18'),
(423, 1, 'Professional use', 'on', '2023-11-27 05:08:18', '2023-11-27 05:08:18'),
(424, 1, 'Month wise', 'off', '2023-11-27 05:08:18', '2023-11-27 05:08:18'),
(425, 1, 'Lifetime support', 'off', '2023-11-27 05:08:18', '2023-11-27 05:08:18'),
(426, 2, 'Yearly system', 'on', '2023-11-27 05:08:43', '2023-11-27 05:08:43'),
(427, 2, 'Professional', 'on', '2023-11-27 05:08:43', '2023-11-27 05:08:43'),
(428, 2, 'Usefull', 'on', '2023-11-27 05:08:43', '2023-11-27 05:08:43'),
(429, 2, 'Less price', 'on', '2023-11-27 05:08:43', '2023-11-27 05:08:43'),
(430, 2, 'Low cost', 'on', '2023-11-27 05:08:43', '2023-11-27 05:08:43'),
(431, 2, 'Reasonable', 'off', '2023-11-27 05:08:43', '2023-11-27 05:08:43'),
(432, 2, 'Lifetime', 'off', '2023-11-27 05:08:43', '2023-11-27 05:08:43'),
(440, 9, 'Connect 10', 'on', '2023-11-28 06:24:44', '2023-11-28 06:24:44'),
(441, 9, 'Weekly 2', 'on', '2023-11-28 06:24:44', '2023-11-28 06:24:44'),
(442, 9, 'Limit 10', 'on', '2023-11-28 06:24:44', '2023-11-28 06:24:44'),
(443, 9, 'Professional', 'on', '2023-11-28 06:24:44', '2023-11-28 06:24:44'),
(444, 9, 'Supported', 'on', '2023-11-28 06:24:44', '2023-11-28 06:24:44'),
(445, 9, 'Less use', 'on', '2023-11-28 06:24:44', '2023-11-28 06:24:44'),
(446, 9, 'Welcome feature', 'off', '2023-11-28 06:24:44', '2023-11-28 06:24:44');

-- --------------------------------------------------------

--
-- Table structure for table `subscription_types`
--

CREATE TABLE `subscription_types` (
  `id` bigint UNSIGNED NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `validity` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscription_types`
--

INSERT INTO `subscription_types` (`id`, `type`, `validity`, `created_at`, `updated_at`) VALUES
(1, 'Monthly', 30, '2023-04-30 06:39:12', '2023-06-13 00:11:48'),
(2, 'Yearly', 365, '2023-04-30 06:39:24', '2023-06-13 00:11:36'),
(3, 'Weekly', 7, '2023-06-13 00:13:12', '2023-06-13 00:13:12'),
(5, 'Free', 30, '2023-08-19 06:56:31', '2023-11-06 05:04:26');

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `sub_category` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '0=inactive 1=active',
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `sub_category`, `short_description`, `slug`, `category_id`, `status`, `image`, `created_at`, `updated_at`) VALUES
(1, 'UI/UX Design', 'This category descrips financial ui-ux design', 'uiux-design', 1, 1, NULL, '2023-02-07 06:00:14', '2023-05-15 00:26:03'),
(2, 'Graphic Design', 'This category descrips financial graphic design', 'graphic-design', 1, 1, NULL, '2023-02-07 06:00:23', '2023-05-15 00:25:33'),
(3, 'Wordpress', 'This category related to wordpres development', 'wordpress', 2, 1, '69', '2023-02-07 22:28:02', '2023-11-05 00:17:38'),
(5, 'Flutter Development', 'This category descrips financial flutter development', 'flutter-development', 4, 1, NULL, '2023-02-07 22:28:28', '2023-05-15 00:23:43'),
(6, 'Android Development', 'This category descrips financial android development', 'android-development', 4, 1, NULL, '2023-02-07 22:28:43', '2023-05-15 00:22:58'),
(7, 'ios Development', 'This category descrips financial operations ios development', 'ios-development', 4, 1, NULL, '2023-02-07 22:28:55', '2023-05-15 00:21:20'),
(8, 'Kotlin Development', 'This category descrips financial kotlin development', 'kotlin-development', 4, 1, NULL, '2023-02-07 22:29:07', '2023-05-15 00:20:39'),
(20, 'Php Developer', 'This category descrips php developer', 'php-developer', 2, 1, '7', '2023-02-08 22:49:10', '2023-05-15 00:15:19'),
(21, 'Frontend Developer', 'This category descrips frontend developer', 'frontend-developer', 2, 1, NULL, '2023-02-08 23:02:13', '2023-05-15 00:15:05'),
(22, 'Backend Developer', 'This category descrips backend developer', 'backend-developer', 2, 1, NULL, '2023-02-08 23:02:39', '2023-05-15 00:14:47'),
(24, 'Website Design', 'This category describes html templates design.', 'website-design', 1, 1, '69', '2023-05-15 23:54:28', '2023-11-05 03:09:25'),
(26, 'Content Writing', 'This category descrips wordpress templates design', 'content-writing', 13, 1, NULL, '2023-05-17 06:51:34', '2023-05-05 06:51:34'),
(29, 'Search Engine Optimization (SEO)', 'Seo', 'search-engine-optimization--seo-', 11, 1, '77', '2023-11-05 05:21:43', '2023-11-05 05:21:43'),
(30, 'Branding', 'branding', 'branding', 11, 1, '77', '2023-11-05 05:41:56', '2023-11-05 05:41:56'),
(31, 'Website Content', 'Website Content', 'website-content', 13, 1, '77', '2023-11-05 06:23:45', '2023-11-05 06:23:45'),
(32, 'Article and Blog Post', 'Article and Blog Post', 'article-and-blog-post', 13, 1, '69', '2023-11-05 06:24:27', '2023-11-05 06:24:27'),
(33, 'Script Writing', 'Script Writing', 'script-writing', 13, 1, '67', '2023-11-05 06:25:42', '2023-11-05 06:25:42'),
(34, 'Social Media Marketing', 'Social Media Marketing', 'social-media-marketing', 11, 1, '66', '2023-11-05 06:26:26', '2023-11-05 06:26:26'),
(35, 'Market Research', 'Market Research', 'market-research', 9, 1, NULL, '2023-11-06 00:45:03', '2023-11-06 00:45:03'),
(36, 'Virtual Assistance', 'Virtual Assistance', 'virtual-assistance', 3, 1, NULL, '2023-11-06 00:51:44', '2023-11-06 00:51:44'),
(37, 'IELTS', 'ielts', 'ielts', 5, 1, NULL, '2023-11-06 01:20:41', '2023-11-06 01:20:41');

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` bigint UNSIGNED NOT NULL,
  `department_id` bigint NOT NULL,
  `admin_id` bigint DEFAULT NULL,
  `client_id` bigint DEFAULT NULL,
  `freelancer_id` bigint DEFAULT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `subject` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `priority` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `via` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'admin, client, freelancer',
  `operating_system` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `first_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `hourly_rate` double NOT NULL DEFAULT '0',
  `experience_level` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'junior',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` bigint DEFAULT NULL,
  `state_id` bigint DEFAULT NULL,
  `city_id` bigint DEFAULT NULL,
  `user_type` tinyint NOT NULL DEFAULT '0' COMMENT '1:client, 2:freelancer',
  `check_online_status` timestamp NULL DEFAULT NULL,
  `check_work_availability` tinyint NOT NULL DEFAULT '1',
  `user_active_inactive_status` tinyint NOT NULL DEFAULT '1' COMMENT '0:inactive, 1:active',
  `user_verified_status` tinyint NOT NULL DEFAULT '0' COMMENT '0:not verified, 1:verified',
  `is_suspend` tinyint NOT NULL DEFAULT '0' COMMENT '0=no , 1=yes',
  `terms_condition` int NOT NULL DEFAULT '1',
  `about` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `is_email_verified` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT '0: not verified, 1:verified',
  `google_2fa_secret` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_2fa_enable_disable_disable` tinyint NOT NULL DEFAULT '0' COMMENT '0=disable 1=enable',
  `google_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `github_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verify_token` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `firebase_device_token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `hourly_rate`, `experience_level`, `email`, `phone`, `username`, `password`, `image`, `country_id`, `state_id`, `city_id`, `user_type`, `check_online_status`, `check_work_availability`, `user_active_inactive_status`, `user_verified_status`, `is_suspend`, `terms_condition`, `about`, `is_email_verified`, `google_2fa_secret`, `google_2fa_enable_disable_disable`, `google_id`, `facebook_id`, `github_id`, `email_verify_token`, `firebase_device_token`, `email_verified_at`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Test', 'Client', 0, 'junior', 'tclient@gmail.com', '0189232', 'client', '$2y$10$dVn7Zka2IxHQeXYRCe/GweDPW7wqxjwT2qycATvIcLh3fg20i5z0W', '1680500462-642a66ee548e7.jpg', 1, 1, 1, 1, '2024-04-22 13:32:33', 1, 1, 1, 0, 1, NULL, '1', 'HATKCPGN5WGPJEFU', 0, NULL, NULL, NULL, '876626', NULL, NULL, NULL, '2023-01-23 06:03:28', '2024-04-22 13:32:33', NULL),
(2, 'Istiak', 'Ahmed', 0, 'junior', 'istiak@gmail.com', '0172873763', 'istiak', '$2y$10$dVn7Zka2IxHQeXYRCe/GweDPW7wqxjwT2qycATvIcLh3fg20i5z0W', NULL, 1, 1, 1, 1, '2023-12-31 00:26:57', 1, 1, 0, 0, 1, NULL, '1', NULL, 0, NULL, NULL, NULL, '374933', NULL, NULL, NULL, '2023-01-23 23:35:32', '2023-12-31 00:26:57', NULL),
(3, 'Patrick', 'Donaldson', 0, 'junior', 'loji@mailinator.com', '+1 (569) 294-6165', 'tydax', '$2y$10$H.C3BMHTi1VQExe8kOwo2.qUmtr33JCNK2v/nKOTa9OIspafWawOq', NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '242413', NULL, NULL, NULL, '2023-01-23 23:38:58', '2023-01-23 23:38:58', NULL),
(4, 'Lynn', 'Wiggins', 0, 'junior', 'xyrokuzifo@mailinator.com', '+1 (176) 464-7465', 'gexywy', '$2y$10$K6TDsOkHxpIdZ58rcJPvaeDfNKynXuO9OmbrQZtoGT/URy81/RSkS', NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '167949', NULL, NULL, NULL, '2023-01-23 23:41:36', '2023-10-21 04:46:21', '2023-10-21 04:46:21'),
(5, 'Anthony', 'Obrien', 0, 'junior', 'dapylywivi@mailinator.com', '+1 (201) 841-6695', 'bysine', '$2y$10$7.skChO4jVIfxl/OO7ncX.A6mcssBqpunOyHbVmTMPxzhojRv72lK', NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 0, 0, 1, NULL, '1', NULL, 0, NULL, NULL, NULL, '743311', NULL, NULL, NULL, '2023-01-23 23:49:57', '2023-02-20 03:52:59', NULL),
(6, 'Chester', 'Bruce', 0, 'junior', 'rycuz@mailinator.com', '+1 (629) 458-5067', 'tfreelancer2', '$2y$10$Ie0lyMggV7YeWQcdh.iT/ugJPFjIvrz8DBJCpHK3s6a8eaA70/286', NULL, NULL, NULL, NULL, 2, NULL, 1, 1, 0, 0, 1, NULL, '1', NULL, 0, NULL, NULL, NULL, '533428', NULL, NULL, NULL, '2023-01-24 04:41:22', '2023-02-22 23:27:05', NULL),
(7, 'William', 'Montag', 300, 'senior', 'ali.abdulah.sd@gmail.com', '6546463544645', 'freelancer', '$2y$10$qIx2SM3faeDLL.Mv3.OrsuqZD5iP6oEvWe3OUizm5yQ5xGxQmtbq2', '1713458450-66214d1273e38.png', 11, 20, 1, 2, '2024-04-22 13:31:35', 1, 1, 1, 0, 1, NULL, '1', 'SOVLAM7IWRWHZX23', 0, NULL, NULL, NULL, '531787', 'eownMq7CT0en-Pp0PA9gi0:APA91bE6lVu5YPzD-7sWRUndmHhrutXitD1KmpjPFqWPlfainDS1YKNsza9mRSMda5IEly2Bjbmuh8ULdEJ4xEx1g71pHbA8QLe66B-nmxsxM-6lb7cQTQ921RhU2shkAv4gzP3ekgPf', NULL, NULL, '2023-01-24 04:58:46', '2024-04-22 13:31:35', NULL),
(8, 'Md', 'Riad', 20, 'senior', 'riad@gmail.com', '01713602726', 'riad', '$2y$10$sXCk0xU6shlnk8QuJWvmSeca/vDULwFCOgKQP68TyPIbObo7cIFWa', '1684218520-646322986158d.jpg', 2, 16, 2, 2, '2024-04-18 13:57:26', 1, 1, 1, 0, 1, NULL, '1', NULL, 0, NULL, NULL, NULL, '525550', NULL, NULL, NULL, '2023-09-29 22:40:49', '2024-04-18 13:57:26', NULL),
(9, 'Md', 'Shahin', 0, 'junior', 'shahin@gmail.com', '45634563454', 'shahin', '$2y$10$sXCk0xU6shlnk8QuJWvmSeca/vDULwFCOgKQP68TyPIbObo7cIFWa', '1684231325-6463549ded9b5.png', 1, 2, 4, 2, '2024-03-10 15:38:00', 1, 1, 0, 0, 1, NULL, '1', NULL, 0, NULL, NULL, NULL, '965295', NULL, NULL, NULL, '2023-02-23 06:49:24', '2024-03-10 15:38:00', NULL),
(10, 'Sri Sri', 'Rupak', 0, 'junior', 'rupak@gmail.com', '2343445454', 'rupak', '$2y$10$HPClvqvTFaX5NuVhoQCPkuB1e0kh5GDGV9jrgp0iRA1r9FDMXEApa', NULL, 2, 2, 4, 2, '2024-02-03 00:16:38', 1, 1, 0, 0, 1, NULL, '1', NULL, 0, NULL, NULL, NULL, '617388', NULL, NULL, NULL, '2023-03-12 05:18:48', '2024-02-03 00:16:38', NULL),
(11, 'Md', 'Zahid', 0, 'junior', 'zahid@gmail.com', '456454654656', 'zahid', '$2y$10$HPClvqvTFaX5NuVhoQCPkuB1e0kh5GDGV9jrgp0iRA1r9FDMXEApa', NULL, 1, 1, 16, 2, '2023-10-15 01:45:35', 1, 1, 0, 0, 1, NULL, '1', NULL, 0, NULL, NULL, NULL, '705497', NULL, NULL, NULL, '2023-03-12 05:24:14', '2023-10-15 01:45:35', NULL),
(12, 'Md', 'Sojon', 0, 'junior', 'sojon@gmail.com', '01893908767', 'sojon', '$2y$10$OuhlvbjbDDDkbjDIAiNGJOWr.s54NdPrT0pqqzBDuXwNWTICpf6K6', NULL, NULL, NULL, NULL, 2, '2023-10-15 04:38:29', 1, 1, 0, 0, 1, NULL, '1', NULL, 0, NULL, NULL, NULL, '659157', NULL, NULL, NULL, '2023-10-15 01:49:48', '2023-10-15 04:38:29', NULL),
(14, 'Nazmul', 'Hoque', 0, 'junior', 'nazmul@gmail.com', '01713602728', 'nazmul', '$2y$10$vnWGr2W1yTpyPUroLCgLEOrgC9q3/6oqQnFyMyehywCDv3x4Zp.ZG', NULL, NULL, NULL, NULL, 2, '2023-12-23 04:42:28', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '211703', NULL, NULL, NULL, '2023-10-18 04:41:21', '2023-12-23 04:42:28', NULL),
(15, 'dsafsf', 'sdfds sd', 0, 'junior', 'qwewq@ga.com', '23423423234', 'sdfsdsdsdf', '$2y$10$H6Dj53ELqMNVR7u197rU1O6q.dUq5UZ5NsjN/WmGOl/DnMQ3eBe/O', NULL, NULL, NULL, NULL, 2, '2023-10-18 05:25:57', 1, 1, 0, 0, 1, NULL, '1', NULL, 0, NULL, NULL, NULL, '683958', NULL, NULL, NULL, '2023-10-18 05:16:56', '2023-10-28 05:26:30', NULL),
(16, 'dfsgdg', 'sdfsdf', 0, 'junior', 'sdfsd@dfd.vo', '43534543435', 'sdfsdf', '$2y$10$MW.PQ25uzzBy8e/eayjXxO3IzD2F9oj65tYucTItj3UQItcvvw.qa', NULL, NULL, NULL, NULL, 2, '2023-10-18 05:26:50', 1, 1, 0, 0, 1, NULL, '1', NULL, 0, NULL, NULL, NULL, '833423', NULL, NULL, NULL, '2023-10-18 05:25:57', '2023-10-18 05:26:50', NULL),
(17, 'Rina', 'Ochoa', 0, 'junior', 'qedicyqa@mailinator.com', '019234342343', 'momyjyw', '$2y$10$WJUCCw6e7eaaDQkmXePQEuGI6qu8KFIeziyVdBiMnInGa48RIBta6', NULL, 1, 1, 15, 2, '2023-11-06 05:11:41', 1, 1, 0, 0, 1, NULL, '1', NULL, 0, NULL, NULL, NULL, '951522', NULL, NULL, NULL, '2023-11-06 05:06:31', '2023-11-08 01:58:55', NULL),
(18, 'Ruby', 'Bolton', 0, 'junior', 'tosaso@mailinator.com', '04345353434435', 'dyhejiq', '$2y$10$d9up2axv1l3b185JPH/IFe6Wt8l5wQLfhInPLKzsdH5MoNapyn7P.', NULL, 1, 2, 4, 1, '2023-11-06 05:27:36', 1, 1, 0, 0, 1, NULL, '1', NULL, 0, NULL, NULL, NULL, '866008', NULL, NULL, NULL, '2023-11-06 05:21:16', '2023-11-08 01:14:28', NULL),
(19, 'Muhammad', 'Shahin', 0, 'junior', 'sahinforu12@gmail.com', '01777395216', 'freelancer12', '$2y$10$CbNHTOeE2tHsIWtWTK.ylOCnbH7aqdsfWDsvsANnhSpvlSm7AUUym', NULL, NULL, NULL, NULL, 2, '2023-11-19 00:22:23', 1, 1, 0, 0, 1, NULL, '1', NULL, 0, NULL, NULL, NULL, '864459', NULL, NULL, NULL, '2023-11-11 22:54:42', '2023-11-19 00:22:23', NULL),
(20, 'Lara', 'Sawyer', 0, 'junior', 'nori@mailinator.com', '+1 (878) 928-3122', 'kyxarewoc', '$2y$10$QLiE7QPD0ljfWwwE7cbFBuruu2PLzntv0mduutBD6vfyKyFObwbYe', NULL, NULL, NULL, NULL, 2, '2023-11-19 09:07:47', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '252370', NULL, NULL, NULL, '2023-11-19 08:13:02', '2023-11-19 09:07:47', NULL),
(21, 'User', '100', 0, 'junior', 'printtech@protonmail.com', '0883838333', 'user100', '$2y$10$bLW5hZwKKN3tGiorGskAu.3hXHQGC/gh7bUyQloTkda6ImPHv2doe', NULL, NULL, NULL, NULL, 1, '2024-02-20 23:18:07', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '873956', NULL, NULL, NULL, '2023-12-04 03:53:52', '2024-02-20 23:18:07', NULL),
(22, 'Artyom', 'Kozyrev', 0, 'junior', 'cloudhost@yandex.ru', '+7 (905) 225-25-25', 'artimed', '$2y$10$lbq67eQJy3MZaJBYPvD1C.LxsF7FFqTqpa.YtxfIFzEFgvX46OOAS', NULL, NULL, NULL, NULL, 2, '2024-03-05 22:35:04', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '947220', NULL, NULL, NULL, '2023-12-04 09:29:19', '2024-03-05 22:35:04', NULL),
(23, 'Leo', 'Boyer', 0, 'junior', 'juki@mailinator.com', '+1 (229) 836-5242', 'maqujus', '$2y$10$dGdmvVCvh.2uDECWqE5IF.0V8Wlf9ktHw6BttcjigMVqHv/IFenoa', NULL, NULL, NULL, NULL, 2, '2023-12-05 05:15:00', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '912602', NULL, NULL, NULL, '2023-12-05 05:14:04', '2023-12-05 05:15:00', NULL),
(24, 'Brent', 'Howe', 0, 'junior', 'qaga@mailinator.com', '+1 (628) 736-8871', 'jijow', '$2y$10$CQ6A2EwZ5NOcKbwA1ODWB.R7z/5QcVM44GP8PICC2iaerrHOt7AIy', NULL, NULL, NULL, NULL, 2, '2023-12-05 12:15:13', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '498584', NULL, NULL, NULL, '2023-12-05 11:00:56', '2023-12-05 12:15:13', NULL),
(25, 'Brooke', 'Riggs', 0, 'junior', 'mavhungatapiwa@gmail.com', '+1 (523) 373-4488', 'zyfisypyre', '$2y$10$z7dJYOYhf0Y2gStA/yeGFOca5TPAI2FBHXS5LBEBdkyyyIdwpRndO', NULL, NULL, NULL, NULL, 2, '2023-12-06 01:53:04', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '258371', NULL, NULL, NULL, '2023-12-06 01:52:51', '2023-12-06 01:53:04', NULL),
(26, 'jassel', 'er', 0, 'junior', 'appadmin@gmail.com', '12212121', 'aewqa', '$2y$10$6qGRycyzxBSoc0.XUIu8EeNRlRY5DDN0GSMFkrS8vI0DaojJQL5w6', NULL, NULL, NULL, NULL, 2, '2023-12-07 01:14:29', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '874397', NULL, NULL, NULL, '2023-12-07 01:13:17', '2023-12-07 01:14:29', NULL),
(27, 'Anu', 'g', 0, 'junior', 'anug8181@gmail.com', '67676767', 'anug1983', '$2y$10$yT5pASTCPM1tEW926h1m7.Jg5ByFVdW7YDJbEOW4H4WXl4Z/JOU8i', NULL, NULL, NULL, NULL, 2, '2023-12-07 01:16:27', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '358260', NULL, NULL, NULL, '2023-12-07 01:14:30', '2023-12-07 01:16:27', NULL),
(28, 'ee', 'epas', 0, 'junior', 'atutibrian729@gmail.com', '1234', 'fjov', '$2y$10$pP9REhLKJkjvT/yzzkLnAuKJ/rg7rfKwjDIgxnEMykdi8ZJiudZz2', NULL, NULL, NULL, NULL, 1, '2023-12-10 10:39:43', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '976732', NULL, NULL, NULL, '2023-12-08 04:12:18', '2023-12-10 10:39:43', NULL),
(29, 'brian', 'atuti', 0, 'junior', 'atutibrian426@gmail.com', '32423', 'bro', '$2y$10$/uE.S9EhAb2h9Q.5lfrmLOy8yB6MQte47BeSjAxzAOtlou6FYyg1i', NULL, NULL, NULL, NULL, 1, '2023-12-08 07:20:37', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '596126', NULL, NULL, NULL, '2023-12-08 04:41:44', '2023-12-08 07:20:37', NULL),
(30, 'Brand', 'Africa', 0, 'junior', 'brandafrica75@gmail.com', '0712345678', 'PinkiePodcast', '$2y$10$8nQnV79XhSz5k4pzniJf9.BHXwOR6O0VvbA29F/V8CQNPZPljPn/C', NULL, NULL, NULL, NULL, 2, '2023-12-08 06:36:23', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '573768', NULL, NULL, NULL, '2023-12-08 06:32:35', '2023-12-08 06:36:23', NULL),
(31, 'Mauro', 'Jacinto', 0, 'junior', 'maurogashfix@gmail.com', '858119033', 'gashfix', '$2y$10$7.X7BFLcgOOMc3WBocn4Z.9Q2C7fBUQMFj3LfffH6H032tqTe6YrS', NULL, NULL, NULL, NULL, 1, '2023-12-08 14:10:35', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '462357', NULL, NULL, NULL, '2023-12-08 14:01:58', '2023-12-08 14:10:35', NULL),
(32, 'Abbalo', 'Lucky', 0, 'junior', 'luckyabbalo@gmail.com', '8121294923', 'abbalo', '$2y$10$1OOW31UFZ7.vmN8Du1iJPuqw3zeEY9Myf.kl741YvJx9zW0w5hN1O', NULL, NULL, NULL, NULL, 1, '2023-12-08 18:29:48', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '523633', NULL, NULL, NULL, '2023-12-08 18:28:13', '2023-12-29 19:08:43', NULL),
(33, 'Abbalo', 'Lucky', 0, 'junior', 'abbalolucky@gmail.com', '08037789444', 'abbalo1', '$2y$10$VjM24tdNT2h6DMcj/ZJSCOH/cyYlmjBjc26woZfn2ev1zjLxEC22O', NULL, NULL, NULL, NULL, 2, '2023-12-08 18:29:50', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '997397', NULL, NULL, NULL, '2023-12-08 18:29:49', '2023-12-29 19:09:20', NULL),
(34, 'Louis', 'Wandago', 0, 'junior', 'louiswandago@gmail.com', '+254727599322', 'tester', '$2y$10$zRRb3R/W4YTlUJACVpl/YOjiJlLf53FdLVWQ.lXGQJ2Jnnspme0Lq', NULL, NULL, NULL, NULL, 2, '2023-12-10 06:36:16', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '615669', NULL, NULL, NULL, '2023-12-10 06:32:19', '2023-12-10 06:36:16', NULL),
(35, 'paulla', 'ander', 0, 'junior', 'ehijoshua1@gmail.com', '+905335895485', 'ehijoshua1', '$2y$10$I5OuqD/fKFb4VjtVNe4kYeDwDAPY2ApOryqglbO1x0rcF3Z6g5l.K', NULL, NULL, NULL, NULL, 2, '2024-04-02 12:54:45', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '442418', NULL, NULL, NULL, '2023-12-10 15:39:01', '2024-04-02 12:54:45', NULL),
(36, 'Deliverance', 'Tanyanyiwa', 0, 'junior', 'deliverancetanyanyiwa6@gmail.com', '+27763852142', 'dtanya', '$2y$10$D76Nb9smLeMEWY9cJ4Irn.O2rFm4WtxNv9SxXkWyO1DzlNI2yaTue', NULL, NULL, NULL, NULL, 2, '2023-12-10 15:58:30', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '238777', NULL, NULL, NULL, '2023-12-10 15:58:28', '2023-12-10 15:58:30', NULL),
(37, 'big', 'tester', 0, 'junior', 'citebuzz@gmail.com', '5555555555', 'bigtester', '$2y$10$WYmbR9desE0gFQbp3Yy4AOFWkVqLRTwtsj8pFdjjgeaZdhDn24.qa', NULL, NULL, NULL, NULL, 2, '2023-12-11 10:59:38', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '619614', NULL, NULL, NULL, '2023-12-11 09:49:31', '2023-12-11 10:59:38', NULL),
(38, 'ishimwe', 'de dieu', 0, 'junior', 'webjado@gmail.com', '+250783108862', 'webjado', '$2y$10$MRY4KkNFSUW5TiUbatQ3XeaJfnwzfe06b6O6/MQPanz09fXTuua4G', NULL, NULL, NULL, NULL, 1, '2023-12-12 03:36:11', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '438476', NULL, NULL, NULL, '2023-12-12 03:31:55', '2023-12-12 03:36:11', NULL),
(39, 'Patrick', 'Ernandes', 0, 'junior', 'peaplf@gmail.com', '86995675597', 'patrickpi', '$2y$10$jZczULj2Lq.C4JxFwdaLGOrGyTyvRtLuzanT60vod/EWdqPellnca', NULL, NULL, NULL, NULL, 2, '2023-12-13 04:48:53', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '480296', NULL, NULL, NULL, '2023-12-13 04:26:01', '2023-12-13 04:48:53', NULL),
(40, 'tarek', 'mohamed', 0, 'junior', 'tarekmagdy193@gmail.com', '+201149688894', 'tekkahammad', '$2y$10$R4rBNIQCoDi5JKNRi/UcQuh097wps33ol5ALL1rEFAykxtX0j593S', NULL, NULL, NULL, NULL, 2, '2023-12-14 15:15:08', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '703431', NULL, NULL, NULL, '2023-12-14 15:12:44', '2023-12-14 15:15:08', NULL),
(41, 'vinicius', 'OLIVEIRA', 0, 'junior', 'fixaparacatu.net@gmail.com', '+5538998584583', 'vinicius', '$2y$10$9KMnxukvl1RvahwKNGVteupP1bqZ2vO8rH9xe1TGr.YxWFT4fOaeW', NULL, NULL, NULL, NULL, 1, '2023-12-15 15:18:50', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '614813', NULL, NULL, NULL, '2023-12-15 12:57:54', '2023-12-15 15:18:50', NULL),
(42, 'Дима', 'Глушков', 0, 'junior', 'dimagluskov4868@gmail.com', '89197157236', 'dima', '$2y$10$kkFKKYa2tepr9h8rJZu6nOo23vYBIAL6LMZktEiZHdJUApoYjLBti', NULL, NULL, NULL, NULL, 1, '2023-12-17 07:15:12', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '394548', NULL, NULL, NULL, '2023-12-17 06:42:28', '2023-12-17 07:15:12', NULL),
(43, 'dfgd', 'dfgdfg', 0, 'junior', 'maxmorozov211@gmail.com', 'super_admin', 'dgfdg', '$2y$10$UQGaAui8Wp91jvt7NVG2AecywV.wmHB96B5SD43qakigBgfTSn1aq', NULL, NULL, NULL, NULL, 1, '2023-12-17 07:59:57', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '934085', NULL, NULL, NULL, '2023-12-17 06:53:50', '2023-12-17 07:59:57', NULL),
(44, 'jr', 'ee', 0, 'junior', 'allsubscribe2023@gmail.com', '0551349142', 'jhay555', '$2y$10$Hb9yYf6PlIZ3.7tGhsPR7.zhFltp.xVQb0im24XC9wMEObGFXVFk2', NULL, NULL, NULL, NULL, 1, '2023-12-18 06:41:18', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '729015', NULL, NULL, NULL, '2023-12-18 06:39:25', '2023-12-18 06:41:18', NULL),
(45, 'testing', 'tormo', 0, 'junior', 'shankusemo@gmail.com', '+4915216719483', 'testingor', '$2y$10$N7qdy2v7K.Ef8qfUFwwo0emprQgfZ88ZYqmcmHlruyGK.1qoptLyi', NULL, NULL, NULL, NULL, 2, NULL, 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '404710', NULL, NULL, NULL, '2023-12-18 19:47:27', '2023-12-18 19:47:59', NULL),
(46, 'Gil', 'Romero', 0, 'junior', 'hiryj@mailinator.com', '+1 (585) 892-9192', 'figuzumon', '$2y$10$WNdq2fMKsty5IA/.hrw4hukukj0DmgwH/FSuhWhP6mQAKZPtL2/Hq', NULL, NULL, NULL, NULL, 1, '2023-12-19 09:28:13', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '602193', NULL, NULL, NULL, '2023-12-19 09:26:43', '2023-12-19 09:28:13', NULL),
(47, 'Alex', 'noni', 0, 'junior', 'alexokor91@gmail.com', '08129836236', 'AlexNoni', '$2y$10$iabVSXktC9XBn/M5cK9rQe0WvVrfrdQYFCOPNz15QSmnd8brnkbWW', NULL, NULL, NULL, NULL, 1, '2023-12-20 02:34:41', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '494582', NULL, NULL, NULL, '2023-12-20 02:31:51', '2023-12-20 02:34:41', NULL),
(48, 'Test', 'Test', 0, 'junior', 'test.user@mail.com', '464456456', 'TestUser', '$2y$10$YyeWlXpgpqHzDaik2fAO5eVwoGegPnmyUNG3jdxNQtPorKNdRQx6i', NULL, NULL, NULL, NULL, 2, '2023-12-20 05:40:00', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '850257', NULL, NULL, NULL, '2023-12-20 05:39:37', '2023-12-20 05:40:00', NULL),
(49, 'Magee', 'Delgado', 0, 'junior', 'lobuzit@mailinator.com', '+1 (412) 891-5401', 'rusil', '$2y$10$gNho6kEdVj76.8q58Ipgxe2mkcXS7yn6gA84prgFQIFg543oilx1S', NULL, NULL, NULL, NULL, 2, '2023-12-20 07:01:40', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '416994', NULL, NULL, NULL, '2023-12-20 07:01:22', '2023-12-20 07:01:40', NULL),
(50, 'Amena', 'Ware', 0, 'junior', 'tuzegazyv@mailinator.com', '+1 (902) 433-3765', 'bosalus', '$2y$10$NE8ymImqZacOPeAjyOjF6.yNg8VZpHAy4d6egiAr35zs5TwE76U36', NULL, NULL, NULL, NULL, 2, '2023-12-20 07:01:56', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '327386', NULL, NULL, NULL, '2023-12-20 07:01:51', '2023-12-20 07:01:56', NULL),
(51, 'Phyllis', 'Phelps', 0, 'junior', 'mapyw@mailinator.com', '+1 (822) 682-3238', 'tazonuwyz', '$2y$10$8tIbk/gbf9C4qc7wrmm3TOjaqd8mHbVWrxUbRcxLR24/45GeAXGh.', NULL, NULL, NULL, NULL, 1, '2023-12-20 07:02:17', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '727826', NULL, NULL, NULL, '2023-12-20 07:02:12', '2023-12-20 07:02:17', NULL),
(52, 'Antoine', 'Vernat', 0, 'junior', 'vernatantoine7@gmail.com', '0614397152', 'Vernat', '$2y$10$b6JgpNCkiI0nbv1qJyVYBOiodGIyrphqbWBeAoRQ2KMa4rRxKiGm.', NULL, NULL, NULL, NULL, 2, NULL, 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '984169', NULL, NULL, NULL, '2023-12-20 11:33:38', '2023-12-20 11:33:38', NULL),
(53, 'Alişan', 'Bayram', 0, 'junior', 'alisann.bayram@gmail.com', '05342433740', 'admin', '$2y$10$fupxB.c7Yl2mYwZ/KUQxPu/4wwt0XNCVaOB79YMWUhEqdiACZaW2y', NULL, NULL, NULL, NULL, 1, '2023-12-28 02:28:26', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '712460', NULL, NULL, NULL, '2023-12-20 13:15:13', '2023-12-28 02:28:26', NULL),
(54, 'dsfds f', 'sdfsdf', 0, 'junior', 'sdfsdfsdfsd@gmail.com', '345345345', 'sdfsdfsdfsd', '$2y$10$KxqVMu/wtB.BFIYgvIns1OmcaR4DmtRA/Gs3MGO6TKG65EJdfJb0e', NULL, NULL, NULL, NULL, 2, '2023-12-21 05:02:00', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '806997', NULL, NULL, NULL, '2023-12-21 05:01:51', '2023-12-21 05:02:00', NULL),
(55, 'Kimly', 'sin', 0, 'junior', 'kimlysin2020@gmail.com', '+85569533880', 'kimly', '$2y$10$4e/TGrwsjrqC9XZuKP75seOWni/iTrwECpRbQBmbTXokFU7WIFzmm', NULL, NULL, NULL, NULL, 2, NULL, 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '796112', NULL, NULL, NULL, '2023-12-21 09:30:26', '2023-12-21 09:30:26', NULL),
(56, 'mrt', 'mrt', 0, 'junior', 'info@mertsuslu.com', '234234234234', 'mrtmrt', '$2y$10$Te5UrIs6XDTmlDL70thn4uruSRKv8LokW2qgVPbR.r.RKB9jRiCYW', NULL, NULL, NULL, NULL, 2, '2023-12-21 11:17:08', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '560377', NULL, NULL, NULL, '2023-12-21 10:24:45', '2023-12-21 11:17:08', NULL),
(57, 'Jawwad', 'Ali', 0, 'junior', 'ali@jawad.com', '332211445', 'jawadali', '$2y$10$WMpP5XNtYcEjELwtuY9JI.TdAtPK7TRZCukDrNNtlKLkFjcCQautK', NULL, NULL, NULL, NULL, 2, '2023-12-22 23:58:06', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '291856', NULL, NULL, NULL, '2023-12-22 23:57:20', '2023-12-22 23:58:06', NULL),
(58, 'Jawwad', 'Ali', 0, 'junior', 'jawwad.ali.jamil@gmail.com', '22331144', 'jawwadalli', '$2y$10$Xfd1iZhxtNHqraPRZ3A/8uQXPU39gOScNe9oCCQtgTk4Qt.kSlmLW', NULL, NULL, NULL, NULL, 2, '2023-12-23 00:00:48', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '524276', NULL, NULL, NULL, '2023-12-22 23:58:06', '2023-12-23 00:00:48', NULL),
(59, 'kabegi', 'Amos', 0, 'junior', 'amadadigilton216@gmail.com', '719320764', 'gins2345', '$2y$10$opF51MfoUSBYdHjhvNDmy.6qiIlZWy30kbzUdIBRvWwTe6.U4FkpC', NULL, NULL, NULL, NULL, 2, '2024-01-08 13:04:25', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '517073', NULL, NULL, NULL, '2023-12-23 16:05:37', '2024-01-08 13:04:25', NULL),
(60, 'Hugo', 'Roger', 0, 'junior', 'hugoroger@gmail.com', '+5511989707236', 'hugoroger', '$2y$10$DbYfgCiOi1vOMA.mIt7xcuLsqNAXqLKFzaffjUmdbVnpiIQzLPZOO', NULL, NULL, NULL, NULL, 2, '2023-12-23 22:50:16', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '368894', NULL, NULL, NULL, '2023-12-23 22:50:14', '2023-12-23 22:50:16', NULL),
(61, 'elmi', 'elmi', 0, 'junior', 'elmi@elmi.com', '1234567890', 'elmi', '$2y$10$a8o98uKRfRpZj1c0HOfi8OfLL2gqqDk/.2ciSkv2e2L8Nd96220Bu', NULL, NULL, NULL, NULL, 2, NULL, 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '972446', NULL, NULL, NULL, '2023-12-24 08:48:41', '2023-12-24 08:48:41', NULL),
(62, 'elmi', 'elmi', 0, 'junior', 'dev.biin.io@gmail.com', '12345678901', 'elmi1', '$2y$10$unPP3Di8RiIF80NAf0SWBOZCrCdYBut59pSHyvpTHeP2T8sHdbJ8W', NULL, NULL, NULL, NULL, 2, NULL, 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '432051', NULL, NULL, NULL, '2023-12-24 08:49:32', '2023-12-24 08:49:32', NULL),
(63, 'engino', 'saho', 0, 'junior', 'enginmurat@hotmail.com', '+905378606860', 'engino', '$2y$10$cdJERrBJhMf3DdaFdr3T9ugV/HPiiCOGEwXH71GpYZI28s0sB.3Qu', NULL, NULL, NULL, NULL, 2, '2023-12-24 13:17:43', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '700472', NULL, NULL, NULL, '2023-12-24 13:10:18', '2023-12-24 13:17:43', NULL),
(64, 'viwek', 'patel', 0, 'junior', 'Viwek08@gmail.com', '7698380093', 'viwek08', '$2y$10$Oam2GvY0UzIxF4YgidOq/uKpKvsxVSPnEy28MyVKX9Tr4Xs0xFLDa', NULL, NULL, NULL, NULL, 2, NULL, 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '766838', NULL, NULL, NULL, '2023-12-25 12:43:24', '2023-12-25 12:43:24', NULL),
(65, 'Qamar', 'zaman', 0, 'junior', 'skillsider.pk@gmail.com', '03257956145', 'qamarzaman01', '$2y$10$T/9b/KiitThcKL6kTJyDgexg6bNXejkapzeTbbX5bpQ1WpDxLzBCe', NULL, NULL, NULL, NULL, 2, '2023-12-25 13:07:11', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '771384', NULL, NULL, NULL, '2023-12-25 13:04:52', '2023-12-25 13:07:11', NULL),
(66, 'Amir', 'jafry', 0, 'junior', 'gosika3250@wikfee.com', '03177096898', 'demouser333', '$2y$10$13.kmIVVJiJfhrMjHIRLPOeJ.Hwgzzw6gxqYMODvKljel/s.8ba8S', NULL, NULL, NULL, NULL, 2, '2023-12-25 13:09:17', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '809796', NULL, NULL, NULL, '2023-12-25 13:07:11', '2023-12-25 13:09:17', NULL),
(67, 'ww', 'yy', 0, 'junior', 'qamar22jan01@gmail.com', '444444', 'qamar222', '$2y$10$3GKIjxagR7SqLTKHAD1uoOJODF6hCWLqD6SrYkKaw/qhsdIwgsjCK', NULL, NULL, NULL, NULL, 2, '2023-12-25 13:16:13', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '247177', NULL, NULL, NULL, '2023-12-25 13:14:12', '2023-12-25 13:16:13', NULL),
(68, 'mehbub', 'hasan', 0, 'junior', 'hassanmehbub644@gmail.com', '01568632477', 'ovo', '$2y$10$6oE.MoMH7Iv7KYXUX4u7UujyoFp.CogyL62rCipAhSHcAzLzLDDiW', NULL, NULL, NULL, NULL, 1, '2023-12-25 23:16:53', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '671665', NULL, NULL, NULL, '2023-12-25 23:13:32', '2023-12-25 23:16:53', NULL),
(69, 'hassan', 'mehbub', 0, 'junior', 'hassansiam776@gmail.com', '01825774777', 'siam', '$2y$10$klfvstFBdQ2klgYw36H5jeG4FEE7dNDF6X3b2yvSy3Bcq.hxfp3.2', NULL, NULL, NULL, NULL, 2, '2023-12-25 23:16:25', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '286337', NULL, NULL, NULL, '2023-12-25 23:13:33', '2023-12-25 23:16:25', NULL),
(70, 'Demo', 'Demo', 0, 'junior', 'demo@gmail.com', '9876543210', 'demousername', '$2y$10$82D/VG8yBczqr5hpt466fO1ZpG8kLntw4QtysN7Dqm5GcpCWg624K', NULL, NULL, NULL, NULL, 1, '2023-12-26 10:26:19', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '857458', NULL, NULL, NULL, '2023-12-26 10:23:40', '2023-12-26 10:26:19', NULL),
(71, 'jsjsj', 'nddjdj', 0, 'junior', 'mrwork15@mail.ru', '89618204321', 'as15', '$2y$10$cfwqVLx3VEdxiTUCJEs5QOxen/cesFBCo.5FZXKySYo437IiskGKe', NULL, NULL, NULL, NULL, 2, NULL, 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '497708', NULL, NULL, NULL, '2023-12-26 16:05:17', '2023-12-26 16:05:17', NULL),
(72, 'Test', 'John', 0, 'junior', 'test@test.com', '123456789', 'Test1234', '$2y$10$xSu3bMO/bNpx7qJ2iGZ8TecgdZAjb7ssSnzNws2MUpiYdmJlfzROC', NULL, NULL, NULL, NULL, 2, '2023-12-26 21:36:55', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '230026', NULL, NULL, NULL, '2023-12-26 21:30:45', '2023-12-26 21:36:55', NULL),
(73, 'OK', 'John', 0, 'junior', 'creatuve96116@gmail.com', '123456', 'sky123', '$2y$10$h9yttHjNFr3wlFXbWj4m6OlODWxVLc0XasTMckj.d.lFa0Otoj3ym', NULL, NULL, NULL, NULL, 2, '2023-12-26 21:45:00', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '737184', NULL, NULL, NULL, '2023-12-26 21:41:33', '2023-12-26 21:45:00', NULL),
(74, 'Good', 'Fookc', 0, 'junior', 'bobik@mail.com', '+99699896669', 'user01', '$2y$10$teQ1BLeM6XWhrn4Z9gq2a.ifap1uDhQu8Dy0rngBrrqkPWBbNmtRK', NULL, NULL, NULL, NULL, 2, NULL, 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '804653', NULL, NULL, NULL, '2023-12-27 12:44:12', '2023-12-27 12:44:12', NULL),
(75, 'Good', 'Fookc', 0, 'junior', 'bobik1@mail.com', '+79529240256', 'user02', '$2y$10$0/9Pa6X8TQxJhQ5u0V9ykOygdKKvJt91Nhft5Tb.L564vXVG9ZpdC', NULL, NULL, NULL, NULL, 2, NULL, 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '337974', NULL, NULL, NULL, '2023-12-27 12:44:42', '2023-12-27 12:44:42', NULL),
(76, 'Nizar', 'SAFSAFI', 0, 'junior', 'direction.metasoft@gmail.com', '51072324', 'nizar', '$2y$10$aYm1pDBwjAzI6ZXymOQ4W.bpNjtbWzmkxFwVf4/F8sFLfuYapw1Tu', NULL, NULL, NULL, NULL, 2, '2023-12-28 14:52:12', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '817824', NULL, NULL, NULL, '2023-12-28 13:20:34', '2023-12-28 14:52:12', NULL),
(77, 'omar', 'naser', 0, 'junior', 'on01280534672@gmail.com', '01003951322', 'on01280534672', '$2y$10$Du3cwObBg/ZFYjb.lSQb3u7EE/gCeVBeYxr/g3rWddoXxrDRYf2vS', NULL, NULL, NULL, NULL, 1, '2023-12-29 18:36:57', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '126315', NULL, NULL, NULL, '2023-12-29 14:57:44', '2023-12-29 18:36:57', NULL),
(78, 'Abbalo', 'Lucky', 0, 'junior', 'luckyabbaloq@gmail.com', '00000000', 'abbalo11', '$2y$10$Aw1ofRtQU8iY1wSuBLRkZur7ehijwv26Awdfoh2AjF9F9Kuh1mc.a', NULL, NULL, NULL, NULL, 2, '2023-12-29 19:07:19', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '514368', NULL, NULL, NULL, '2023-12-29 19:06:13', '2023-12-29 19:08:28', NULL),
(79, 'Tech', 'Me', 0, 'junior', 'hcs9ja@gmail.com', '000000000', 'techme', '$2y$10$04ycL23owHNmmHnp0FIe/.jC.tjpQNK7wmZQbWhX44bdsB/zuKE0q', NULL, NULL, NULL, NULL, 2, '2023-12-29 19:27:18', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '841979', NULL, NULL, NULL, '2023-12-29 19:23:15', '2023-12-29 19:27:18', NULL),
(80, 'Macaire', 'Gbego', 0, 'junior', 'macairegbego@gmail.com', '63219719', 'macairemtx', '$2y$10$JckRUQtD9zzGllBF9eKEueG8DGrAo.3X4CUKPyYTeWxnHDbQlC4tq', NULL, NULL, NULL, NULL, 1, '2023-12-30 11:13:38', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '421483', NULL, NULL, NULL, '2023-12-30 11:10:01', '2023-12-30 11:13:38', NULL),
(81, 'Mubashir', 'Riaz', 0, 'junior', 'maverickbashoo@gmail.com', '03341996332', 'maverickbashoo', '$2y$10$NCoIFQl0.YN2GPBqJ5ThQussz2/eQ71yU7CLtD2ruEMEbsHqT1lCy', NULL, NULL, NULL, NULL, 1, '2024-01-16 00:56:58', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '962036', NULL, NULL, NULL, '2023-12-31 01:13:26', '2024-01-16 00:56:58', NULL),
(82, 'katimbo', 'atwabi', 0, 'junior', 'Beinganaatiidu@gmail.com', '0770405633', 'atwabi', '$2y$10$gtdX0hAMjtvXpd7tlPpobuRVUTnHJUknioPeYlwRiQjepFf9WkAAm', NULL, NULL, NULL, NULL, 2, '2023-12-31 06:28:20', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '290674', NULL, NULL, NULL, '2023-12-31 06:16:42', '2023-12-31 06:28:20', NULL),
(83, 'dsqdqs', 'dqsdqs', 0, 'junior', 'thewaxfr@gmail.com', '33751326545', 'waxfr', '$2y$10$3KJYoD9PBo0wfSWudON/eOfDzbb6uAJYXjr45YnB34d.HOvJQdksK', NULL, NULL, NULL, NULL, 2, '2023-12-31 11:40:01', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '234295', NULL, NULL, NULL, '2023-12-31 11:35:53', '2023-12-31 11:40:01', NULL),
(84, 'ema', 'uba', 0, 'junior', 'onnycare8@gmail.com', '62 986449374', 'ubame', '$2y$10$ljJ/Ed6asoz8XtAQNySZ4emF355uX9Kvkryu4PzwZEisTyIn.OibG', NULL, NULL, NULL, NULL, 2, NULL, 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '644262', NULL, NULL, NULL, '2024-01-01 06:29:29', '2024-01-01 06:29:29', NULL),
(85, 'DABRE', 'anase', 0, 'junior', 'junkostorecotedivoire@gmail.com', '0565851779', 'Vixheskey1', '$2y$10$pCvDUN57A/FRBHGdyJoyYOKhojaO30QBOEZuptxCQARVxrmo7N5NW', NULL, NULL, NULL, NULL, 1, '2024-01-01 08:45:32', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '228823', NULL, NULL, NULL, '2024-01-01 08:20:25', '2024-01-01 08:45:32', NULL),
(86, 'Shaun', 'martin', 0, 'junior', 'shaun@blueboxinteractive.com', '0788554608', 'bluebox', '$2y$10$Zw7gsqEUyB2t8/yHiDKwPeXwO5evwxpfUutWARD5jZ.Gs81ban8Ee', NULL, NULL, NULL, NULL, 2, '2024-01-01 09:48:25', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '210639', NULL, NULL, NULL, '2024-01-01 09:38:16', '2024-01-01 09:48:25', NULL),
(87, 'AYDIN', 'GÜLHAN', 0, 'junior', 'aydingulhan@icloud.com', '05325195106', 'aydin', '$2y$10$erkcN4uod6XwKWzhcIXP0e2Wnn.VzAFeO8M54gWyhUQpmAMPUP5Ee', NULL, NULL, NULL, NULL, 2, '2024-01-01 12:08:21', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '914550', NULL, NULL, NULL, '2024-01-01 12:07:24', '2024-01-01 12:08:21', NULL),
(88, 'semih', 'yaşa', 0, 'junior', 'semihyasa33@icloud.com', '5319968523', 'semihyasa', '$2y$10$li7CKMEmjz6RUY8N.X9Zp.cVjtACO3ryljprq2HFWwedrRb3bHRyu', NULL, NULL, NULL, NULL, 2, '2024-01-01 16:47:25', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '449493', NULL, NULL, NULL, '2024-01-01 16:46:19', '2024-01-01 16:47:25', NULL),
(89, 'dummy', 'dummy', 0, 'junior', 'tarungarg.ccet@gmail.com', '9646433443', 'dummy', '$2y$10$1MPcXtLZGGS7mHckic/2KODYndX/y5GqcjyXiM2r3AY0jmGFfZzbO', NULL, NULL, NULL, NULL, 1, '2024-01-02 05:15:41', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '833025', NULL, NULL, NULL, '2024-01-02 05:14:14', '2024-01-02 05:15:41', NULL),
(90, 'ahmed', 'abace', 0, 'junior', 'info@seo4arab.info', '0561746185', 'ahmedmetwali', '$2y$10$rdSn8i63hMdiCvrEhFdEce0I3gq5p199aGbjr2EYtx6vpRH60f5Uy', NULL, NULL, NULL, NULL, 2, '2024-01-02 05:23:15', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '773276', NULL, NULL, NULL, '2024-01-02 05:17:55', '2024-01-02 05:23:15', NULL),
(91, 'ahmed', 'abace', 0, 'junior', 'hamadabebo50@gmail.com', '0567876691', 'ahmedmetwali1', '$2y$10$fjzhOvzjejjaJhTn7QPDT.WWNEmTj07mx67p3vBq3fwL2FfJO7Yte', NULL, NULL, NULL, NULL, 2, '2024-01-02 05:22:52', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '368841', NULL, NULL, NULL, '2024-01-02 05:18:46', '2024-01-02 05:22:52', NULL),
(92, 'ahmed', 'abace', 0, 'junior', 'ahmed@gmail.com', '01204732660', 'ahmedmetwali2', '$2y$10$FJUSCxhheoEeuPmb.Wd1N.FVjQGCKrN0caqezbyuGt/csEEt7zUZK', NULL, NULL, NULL, NULL, 2, '2024-01-02 05:25:33', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '166213', NULL, NULL, NULL, '2024-01-02 05:25:12', '2024-01-02 05:25:33', NULL),
(93, 'yaswith', 'valluru', 0, 'junior', 'yaswith@gmail.com', '8765432123', 'yaswith', '$2y$10$4Y4QxtTeaQArg3.q.wD8FeEbRa5q7klWOG9fser2sKfEwVLh1rDpK', NULL, NULL, NULL, NULL, 2, '2024-01-02 11:36:06', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '374734', NULL, NULL, NULL, '2024-01-02 11:34:06', '2024-01-02 11:36:06', NULL),
(94, '1', '1', 0, 'junior', 'hadibag810@ubinert.com', '12', '1t', '$2y$10$LTUL3oCxsnMf6buoKW62gu9QIdrYxi3oFA.Fj020iNQ85vqqep9zq', NULL, NULL, NULL, NULL, 2, '2024-01-02 11:36:58', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '525497', NULL, NULL, NULL, '2024-01-02 11:36:06', '2024-01-02 11:36:58', NULL),
(95, 'ahmed', 'abace', 0, 'junior', 'hamadabebo@gmail.com', '0120473266', 'ahmedabace', '$2y$10$.X.8Rxe0y2LejdRUUXtt4OL/lIXykzxI4nGjPj6Hy2LmWW107skcG', NULL, NULL, NULL, NULL, 2, NULL, 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '746148', NULL, NULL, NULL, '2024-01-02 23:54:01', '2024-01-02 23:54:01', NULL),
(96, 'Mauro', 'Gashfix', 0, 'junior', 'maurojacinto820@gmail.com', '85812903', 'maurogashfix', '$2y$10$TdQ9QLX4xOJ0Srm/4cB7Z.pnWXsfTn9tpTWBwQUv2wBZalqCzmAhy', NULL, NULL, NULL, NULL, 2, NULL, 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '259182', NULL, NULL, NULL, '2024-01-03 05:06:42', '2024-01-03 05:06:42', NULL),
(97, 'Sien', 'Sivminh', 0, 'junior', 'siensivminh@gmail.com', '0962530601', 'siensivminh', '$2y$10$k1gI9XfAUPJf.jXczy9t5uU.RtugQhoelKcEMNrJY/Djrfya.eHR6', NULL, NULL, NULL, NULL, 2, '2024-01-03 06:01:06', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '879611', NULL, NULL, NULL, '2024-01-03 05:34:51', '2024-01-03 06:01:06', NULL),
(98, 'Romil', 'Patel', 0, 'junior', 'romil.hingarajiya@gmail.com', '8780670096', 'rompatel', '$2y$10$w0y8Qb5YPCWYY9mP1q2JSOLu13FiOOcSfThJv0OCMoHHRITiYmJlq', NULL, NULL, NULL, NULL, 2, '2024-01-03 11:06:11', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '470591', NULL, NULL, NULL, '2024-01-03 10:02:44', '2024-01-03 11:06:11', NULL),
(99, 'aboudramane', 'diallo', 0, 'junior', 'aboudramanediallo@outlook.fr', '0750584266', 'aboudramane23', '$2y$10$1/tv9KK4ryARCQOmLENfLOdQhdxKgEa2GyP4LKVb68mceHP/Zogmi', NULL, NULL, NULL, NULL, 2, NULL, 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '733087', NULL, NULL, NULL, '2024-01-03 12:30:18', '2024-01-03 12:30:18', NULL),
(100, 'sukhochir', 'davaajav', 0, 'junior', 'dsukhochir@gmail.com', '99429967', 'sukhochir', '$2y$10$2fs5SIoWqP3/RShabkvSj.mLyJ5jBXmvPUtr8QNvklmrJv1tTCp5m', NULL, NULL, NULL, NULL, 2, '2024-01-04 00:44:18', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '998485', NULL, NULL, NULL, '2024-01-04 00:27:14', '2024-01-04 00:44:18', NULL),
(101, 'Yasir', 'Siddique', 0, 'junior', 'yasirm79@gmail.com', '03145221700', 'yasirm79', '$2y$10$wut6qxO/8ICB/ernu8ag4.8aZI30qDIRDthb3vlLW/bkxl3NQKp0G', NULL, NULL, NULL, NULL, 1, '2024-01-05 07:20:11', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '909720', NULL, NULL, NULL, '2024-01-05 07:15:32', '2024-01-05 07:20:11', NULL),
(102, 'Ilya', 'Ivanov', 0, 'junior', 'modcoding@gmail.com', '+79651504610', 'iliaivanov', '$2y$10$pbbAL5eW9Rw8AjU8O2I.KOr62GshrP6E4ztFZTDm5.0XOTZbdL05G', NULL, NULL, NULL, NULL, 2, '2024-01-05 09:01:11', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '556611', NULL, NULL, NULL, '2024-01-05 09:01:09', '2024-01-05 09:01:11', NULL),
(103, 'syed', 'hassan', 0, 'junior', 'grobciel@gmail.com', '8904682672', 'suehe', '$2y$10$3Z/p/VO94OdSutfSe9.xGunbK1zSycrogxTyPAc2Ztd/9AGG4FY6u', NULL, NULL, NULL, NULL, 2, NULL, 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '836284', NULL, NULL, NULL, '2024-01-05 09:33:32', '2024-01-05 09:33:32', NULL),
(104, 'yufuyfyfuy', 'efewfewef', 0, 'junior', 'efefwfewfewfewew@gmail.com', '+8801100000000', 'fewfeewfefwfeewfew', '$2y$10$.doaS61846N/rPcpDmaD0ewH8MCMph86JSd6ws/3KvcuCKhbKFxna', NULL, NULL, NULL, NULL, 2, '2024-01-05 12:24:15', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '936790', NULL, NULL, NULL, '2024-01-05 12:23:14', '2024-01-05 12:24:15', NULL),
(105, 'dritan', 'bajr', 0, 'junior', 'tani73@hotmail.it', '3292966888', 'dritan', '$2y$10$gtBlMCz8HVlTqr2cjLA.fet4LRGn56aT95uFbHFzjfZ6RHQ1ZiWri', NULL, NULL, NULL, NULL, 2, '2024-01-05 13:35:09', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '850433', NULL, NULL, NULL, '2024-01-05 13:15:23', '2024-01-05 13:35:09', NULL),
(106, 'jojo', 'jojo', 0, 'junior', 'jojo@gmail.com', '+12345678910', 'jojo', '$2y$10$3Iq.Fja1dfCXHGObz/YhMeP5EZQEQN08FUd9QlsXqi1gdGzDAdmuO', NULL, NULL, NULL, NULL, 1, '2024-01-06 10:59:35', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '462624', NULL, NULL, NULL, '2024-01-06 10:42:02', '2024-01-06 10:59:35', NULL),
(107, 'TEST', 'TEST', 0, 'junior', 'wreckstudio16@gmail.com', '09090900909', 'TESTTEST', '$2y$10$djrLy61eR2F12wgL6aOeKuUDvZYsioUHCQoEBfP1avnUTXSdXt7n6', NULL, NULL, NULL, NULL, 2, '2024-01-07 13:45:42', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '956555', NULL, NULL, NULL, '2024-01-07 13:41:41', '2024-01-07 13:45:42', NULL),
(108, 'Rey', 'mando', 0, 'junior', '124324234@mailinator.com', '43543543543', 'reymando1', '$2y$10$BW8523VhZD2w3c7QElN0V.nW8w9w3qePwhNwWlClICkdB1iybNGIi', NULL, NULL, NULL, NULL, 2, '2024-01-08 14:18:24', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '605652', NULL, NULL, NULL, '2024-01-08 14:15:17', '2024-01-08 14:18:24', NULL),
(109, 'Nikita', 'Noray', 0, 'junior', 'nikita.k.noray@gmail.com', '8683520613', 'nikk1987', '$2y$10$OPr.b/rYCsffs00Bhd6hv.drRcTEFfdQ.1LgCCkOIAQdW6qiEKaZe', NULL, NULL, NULL, NULL, 2, NULL, 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '685921', NULL, NULL, NULL, '2024-01-08 16:54:49', '2024-01-08 16:54:49', NULL),
(110, 'Siddik', 'ak', 0, 'junior', 'user@adfox.com', '01408317189', 'freelancerdf', '$2y$10$sRfxYyiWJzntFxg1MbMMX.MyiUKD64qtyZvxqYTtXDLRVBt6alvtS', NULL, NULL, NULL, NULL, 1, '2024-01-08 22:58:42', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '278799', NULL, NULL, NULL, '2024-01-08 22:40:22', '2024-01-08 22:58:42', NULL),
(111, 'Siddik', 'ak', 0, 'junior', 'abubokkorsiddik9876@gmail.com', 'freelancer', 'freelancer45', '$2y$10$ZhZLmdr.Mive4SIfYDAziulfVNSu6KfMg5sJ4l.e3WKM6MsDZH/O.', NULL, NULL, NULL, NULL, 1, '2024-01-08 23:08:16', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '984423', NULL, NULL, NULL, '2024-01-08 22:58:42', '2024-01-08 23:08:16', NULL),
(112, 'tom', 'tom', 0, 'junior', 'cleaons@gmail.com', '0735214032', 'cleaons', '$2y$10$HLIJGFoQBpTuVFgypf.UH.jufoHiPoiOnGoFhDQ8m7Zcnw1mbQ8yW', NULL, NULL, NULL, NULL, 2, NULL, 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '275393', NULL, NULL, NULL, '2024-01-09 01:08:07', '2024-01-09 01:08:07', NULL),
(113, 'Zain ul abedeen', 'Zain', 0, 'junior', 'zainulabedeen188@gmail.com', '07448035138', 'zainfreak', '$2y$10$oC5veDvnUgS8yryCoClWuejHc7w8XsvfKbQlQKu1kICJydWYTr10y', NULL, NULL, NULL, NULL, 1, '2024-01-09 08:05:04', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '957122', NULL, NULL, NULL, '2024-01-09 08:05:01', '2024-01-09 08:05:04', NULL),
(114, 'Nikhil', 'Sharma', 0, 'junior', 'nikkisha4@gmail.com', '0800000005', 'Nikki', '$2y$10$BN73Ew1yerwJmBGR40rjwumGYPDcmpi03o7S39jj45Xpm4pTo6wU6', NULL, NULL, NULL, NULL, 2, '2024-01-09 13:43:58', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '359180', NULL, NULL, NULL, '2024-01-09 13:42:37', '2024-01-09 13:43:58', NULL),
(115, 'Nikhil', 'Sharma', 0, 'junior', 'boxeye2065@taobudao.com', '08094042000', 'Nikki1', '$2y$10$FKfXyo9j9QIpjO8ZAtWMOeDo2jAi/OyxzeuDM8vm0zINtf26oWdjO', NULL, NULL, NULL, NULL, 2, '2024-01-09 13:45:21', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '186026', NULL, NULL, NULL, '2024-01-09 13:43:58', '2024-01-09 13:45:21', NULL),
(116, 'Jose', 'Perez', 0, 'junior', 'jose@pere.com', '5551212', 'jopere', '$2y$10$D7qSPhb6N0zdhTKC.rDgz.awVWiwLSxmVPAlL5J9OBlZFpkvBfyUy', NULL, NULL, NULL, NULL, 1, '2024-01-09 15:21:28', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '300858', NULL, NULL, NULL, '2024-01-09 15:11:30', '2024-01-09 15:21:28', NULL),
(117, 'smart', 'ass', 0, 'junior', 'smartass@smartass.cc', '1231231234', 'smartass', '$2y$10$MvLHgP9H1wpzRKaF3jFd9u0APdpU5oiNDD7uukJv0MhqvgiuEx856', NULL, NULL, NULL, NULL, 1, '2024-01-09 16:11:38', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '463188', NULL, NULL, NULL, '2024-01-09 16:11:36', '2024-01-09 16:11:38', NULL),
(118, 'Kay', 'Bay', 0, 'junior', 'Kayboysayd@Gmail.com', '07066396028', 'Klyceworld', '$2y$10$YKQ4.AySJitlQVZSZZa3XOtxJ8sJWYxzgZFwT96ERAaC7KssK7lA.', NULL, NULL, NULL, NULL, 2, NULL, 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '979692', NULL, NULL, NULL, '2024-01-10 05:36:40', '2024-01-10 05:36:40', NULL),
(119, 'Yury', 'byalik', 0, 'junior', 'ybyalik@gmail.com', '7232222222', 'byalik', '$2y$10$6.RQzkxX/pyqpw/DFE7hM.de/0crtr/r4njj6S5hcOUEPJuqkvL9i', NULL, NULL, NULL, NULL, 2, '2024-01-10 21:43:07', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '829130', NULL, NULL, NULL, '2024-01-10 21:41:35', '2024-01-10 21:43:07', NULL),
(120, 'soumya', 'senapati', 0, 'junior', 'soumyasenapti6677@gmail.com', '8260397998', 'soumya', '$2y$10$hIMSHaH2ekGsA3KvIpvTXeZcjtGZgKydUHf1QOjPyHify6ZeL/gCG', NULL, NULL, NULL, NULL, 2, NULL, 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '695486', NULL, NULL, NULL, '2024-01-11 07:31:39', '2024-01-11 07:31:39', NULL),
(121, 'Mohammed', '7Amni', 0, 'junior', 'steam1717s@gmail.com', '0570287579', 'mohammed7amni', '$2y$10$byNanFe0ytME5PSiIwgc2eGMmXdFphyISm5rtlgPWC2vNvp/zsX9u', NULL, NULL, NULL, NULL, 1, '2024-01-11 18:17:14', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '234692', NULL, NULL, NULL, '2024-01-11 18:04:30', '2024-01-11 18:17:14', NULL),
(122, 'balaji', 'ponnaiah', 0, 'junior', 'antidevil1332@gmail.com', '9965916911', 'balaji123', '$2y$10$ehihYP7MG68Esqfzjms5Yu5zxwGd0KnLkL1oBJPitMXPknWQxiz4i', NULL, NULL, NULL, NULL, 2, NULL, 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '973062', NULL, NULL, NULL, '2024-01-11 18:17:06', '2024-01-11 18:17:06', NULL),
(123, 'Petit', 'Sebastien', 0, 'junior', 'petitsebastien509@gmail.com', '44633916', 'ertyui', '$2y$10$6bPRNVnVJ0Y4NoVgDzaA/.CfMP0/egJ/4SihY58M3e2zDRG1X2Ni2', NULL, NULL, NULL, NULL, 1, '2024-01-12 05:06:07', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '426513', NULL, NULL, NULL, '2024-01-12 03:22:46', '2024-01-12 05:06:07', NULL),
(124, 'frank', 'abignale', 0, 'junior', 'franky2191@gmail.com', '4839282039', 'franky2191', '$2y$10$rVEEOs0NII.Vp2D9zYSEfOUqMPsrR9X0P4r/WRprwACQCLBYQv0o2', NULL, NULL, NULL, NULL, 2, '2024-01-12 11:54:03', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '703557', NULL, NULL, NULL, '2024-01-12 11:50:41', '2024-01-12 11:54:03', NULL),
(125, 'Frank', 'Rullan', 0, 'junior', 'franciscorullan1@gmail.com', '9546125223', 'fran21', '$2y$10$OqUp5uokis0VkYkJm8hU5OY2/E7B9Reuky/N4SeJknd82xKGlxKt.', NULL, NULL, NULL, NULL, 2, '2024-01-12 12:12:55', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '315838', NULL, NULL, NULL, '2024-01-12 11:54:50', '2024-01-12 12:12:55', NULL),
(126, 'Amitabh', 'Sarkar', 0, 'junior', 'icodingbad@gmail.com', '07702293917', 'amitabh300', '$2y$10$VdAZ4wzuH/kKAnSlANApUumDgF2b0zfee0kap/6f1tbUFhLdSLh8G', NULL, NULL, NULL, NULL, 2, '2024-01-13 12:02:30', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '175748', NULL, NULL, NULL, '2024-01-13 12:02:27', '2024-01-13 12:02:30', NULL),
(127, 'Oueid', 'Sassi', 0, 'junior', 'ouelidsassi@gmail.com', '+33661949629', 'Waldo', '$2y$10$G9.14BoLr2b8v12U4Bx1i.SRPrXXhxASMpHzqhNtC33KX5kmzmKGa', NULL, NULL, NULL, NULL, 1, '2024-01-14 11:49:48', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '940476', NULL, NULL, NULL, '2024-01-14 11:49:46', '2024-01-14 11:49:48', NULL),
(128, 'Par', 'Vesh', 0, 'junior', 'menaservergamer98@gmail.com', '09115991775', 'ghjghjk', '$2y$10$Ov4VKL6YVsu.TtkzWq2qeulW0WiNM4lK978TymTxwQx/NHEXVP08i', NULL, NULL, NULL, NULL, 1, '2024-01-15 09:00:36', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '266399', NULL, NULL, NULL, '2024-01-15 08:57:45', '2024-01-15 09:00:36', NULL),
(129, 'Vyacheslav', 'Erwe', 0, 'junior', 'bja09451@zbock.com', '910-973-33-65', 'prmoscow', '$2y$10$8.Yg8U1ub7xeiZPCEFGWm.nkWnAaLRX74xVfcqmobtKbmsdE8qXH2', NULL, NULL, NULL, NULL, 2, '2024-01-15 11:14:47', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '257298', NULL, NULL, NULL, '2024-01-15 11:06:03', '2024-01-15 11:14:47', NULL),
(130, 'jon', 'ton', 0, 'junior', 'jonton@disbox.net', '0998766555', 'jonton', '$2y$10$qENtV86JZaTpjHLKU1blAuc8l40QMS4kb8SR3O9r3y9U3wiJIbeHu', NULL, NULL, NULL, NULL, 2, '2024-01-16 08:48:41', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '836196', NULL, NULL, NULL, '2024-01-16 08:43:02', '2024-01-16 08:48:41', NULL),
(131, 'Shady', 'Yousuf', 0, 'junior', 'shadyousuf01@gmail.com', '01312198830', 'shadyousuf01', '$2y$10$ahbXIRb1hl2yHtrwW0.erOjf3ox9OFAm7WFUT4Wfkf2kEAe2iKv6i', NULL, NULL, NULL, NULL, 2, '2024-01-17 02:51:52', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '554432', NULL, NULL, NULL, '2024-01-17 02:50:59', '2024-01-17 02:51:52', NULL),
(132, 'ss', 'ddd', 0, 'junior', 'roshni0087@gmail.com', '6789023456', 'vijurj08', '$2y$10$cfJ.3Evi8ZKLInHBwop3kOkiTlqtXhE.Ka.nWgHSVY7V39z9938q.', NULL, NULL, NULL, NULL, 2, '2024-01-17 03:29:38', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '799005', NULL, NULL, NULL, '2024-01-17 03:26:42', '2024-01-17 03:29:38', NULL),
(133, 'muhammad', 'bilal', 0, 'junior', 'npdbilal@gmail.com', '03128604463', 'npdbilal', '$2y$10$Sy0lYDlFawjeW0rQMNK15eyDhithNRY6Et12TgO2HgIhBBnN93tzy', NULL, NULL, NULL, NULL, 2, NULL, 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '491156', NULL, NULL, NULL, '2024-01-17 14:20:11', '2024-01-17 14:20:11', NULL),
(134, 'asd', 'asdasd', 0, 'junior', 'pncuong.net@gmail.com', '0936167151', 'pncuong', '$2y$10$ML46mpKiFmkZshTSxr7uve4Vou7y4UUAbeV8js4nYFLdbKPZ1Cr5y', NULL, NULL, NULL, NULL, 2, '2024-01-18 04:20:37', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '175606', NULL, NULL, NULL, '2024-01-18 04:16:42', '2024-01-18 04:20:37', NULL),
(135, 'precious', 'omokhaiye', 0, 'junior', 'pomokhaiye8@gmail.com', '08119979067', 'maestroeffct', '$2y$10$.6UvDXh7oW0KPvI3aGzkY.Hs6vUHG/YGRYatTwEz3zFZZpfj.2l3S', NULL, NULL, NULL, NULL, 1, '2024-01-18 09:05:06', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '948764', NULL, NULL, NULL, '2024-01-18 08:39:40', '2024-01-18 09:05:06', NULL),
(136, 'fatih', 'Çamcıoğlu', 0, 'junior', 'fatih@dveb.com.tr', '05425068864', 'fatih', '$2y$10$DSiwikpQ1PbY7RGhB0pa1.LZESGpaUlgkDCfif.qfWaz3f1yEcAcG', NULL, NULL, NULL, NULL, 2, '2024-01-18 11:36:22', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '307344', NULL, NULL, NULL, '2024-01-18 11:29:49', '2024-01-18 11:36:22', NULL),
(137, 'Nguyễn Đức', 'Vương', 0, 'junior', 'vuong260902@gmail.com', '0965997557', 'vuong260902', '$2y$10$JpaBZgzYVZBjXSC9RE3vAO4EerLGEryz5xXLWTGMWxcBhFkzQShEi', NULL, NULL, NULL, NULL, 2, '2024-01-18 22:09:45', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '333835', NULL, NULL, NULL, '2024-01-18 21:42:36', '2024-01-18 22:09:45', NULL),
(138, 'Chuong', 'Nguyen', 0, 'junior', 'vanchuongsubmail@gmail.com', '0334235955', 'vanchuong', '$2y$10$u2AmUg4LS4osEaBYvmID4uTU80Q3n4MMqj4LeyZG2osqeGT2ERqDi', NULL, NULL, NULL, NULL, 1, '2024-01-18 22:10:39', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '854989', NULL, NULL, NULL, '2024-01-18 21:43:05', '2024-01-18 22:10:39', NULL),
(139, 'Jonny', 'Baltikor', 0, 'junior', 'minh15553a1@gmail.com', '0988988889', 'jony', '$2y$10$bNs2yivtDj/egY2Xp9HnpesAageD3mOYlNeDNslbF9fQNYcWvo2f.', NULL, NULL, NULL, NULL, 2, '2024-01-18 21:54:10', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '654668', NULL, NULL, NULL, '2024-01-18 21:51:30', '2024-01-18 21:54:10', NULL),
(140, 'Ha', 'Le', 0, 'junior', 'hale@fetch.tech', '0943181997', 'lethanhha', '$2y$10$4v6ZbvG3zXY/zyvcZI5ZJebB8JotsfSCEH1zxW6hva6hyu.bvq5am', NULL, NULL, NULL, NULL, 2, '2024-01-18 22:00:59', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '483199', NULL, NULL, NULL, '2024-01-18 21:53:58', '2024-01-18 22:00:59', NULL),
(141, 'Arrasyid', 'Alkhawariz', 0, 'junior', 'arrasyidamh8@gmail.com', '089513592047', 'Sid', '$2y$10$QqaKDR55fuwl.2dUe/XXX.0dcFNlbQj6Zo4hz2UcoG25rOE653jFC', NULL, NULL, NULL, NULL, 2, NULL, 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '339156', NULL, NULL, NULL, '2024-01-19 03:29:04', '2024-01-19 03:29:04', NULL),
(142, 'test', 'tshsb', 0, 'junior', 'jinim16623@trackden.com', '123665839', 'testfreelancer2024', '$2y$10$pj1.IXqy.V.Bpm5Oqwquzu9IHtaBxLSIbe99vL9AJbmdXrMSfOlha', NULL, NULL, NULL, NULL, 2, NULL, 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '191173', NULL, NULL, NULL, '2024-01-19 20:28:31', '2024-01-19 20:28:31', NULL),
(143, 'eyyüp', 'tünceli', 0, 'junior', 'banabiustaa@gmail.com', '05356065372', 'superadmin45', '$2y$10$Gju5CEhX8Th/WJJ8GlDTQ.TjeZpXGPgRjIr5tbfdhaDOR1bj/M2Xu', NULL, NULL, NULL, NULL, 2, '2024-01-21 13:57:03', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '146486', NULL, NULL, NULL, '2024-01-20 01:37:08', '2024-01-21 13:57:03', NULL),
(144, 'eyyüp', 'tünceli', 0, 'junior', 'jihitol771@konican.com', 'superadmin45', 'awfsdbdb', '$2y$10$BDZRcxv21kXrs8u5wsAeBulIWcW6vCerm4kuPhVpFpcIah//SX.Yi', NULL, NULL, NULL, NULL, 1, '2024-01-20 02:53:37', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '632704', NULL, NULL, NULL, '2024-01-20 01:40:30', '2024-01-20 02:53:37', NULL),
(145, 'Tester', 'test', 0, 'junior', 'ayhanimren@yahoo.com', '5644664646', 'tester11', '$2y$10$So4mcB4.vr/Dy8ZNTEuZ1OEXgQK3HDZFdxPhkO5ejLyO5PyuUBZBa', NULL, NULL, NULL, NULL, 2, '2024-02-20 06:29:30', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '724096', NULL, NULL, NULL, '2024-01-20 04:32:00', '2024-02-20 06:29:30', NULL),
(146, 'Muhammad Ahmed', 'Khurshid', 0, 'junior', 'glownile@gmail.com', '2345234234', 'smilingsoul', '$2y$10$QMAs8mrgDfcrMBSW/biLyupPFpsgLppnrL2TEyd.Moc/D4/FEL5g.', NULL, NULL, NULL, NULL, 1, '2024-01-21 06:19:49', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '757343', NULL, NULL, NULL, '2024-01-21 06:10:51', '2024-01-21 06:19:49', NULL),
(147, 'tetet', 'tetet', 0, 'junior', 'tetet@gmail.com', '987654567', 'tetet', '$2y$10$hG3gs6NCUFmN5Rh.kGg8DuOfe.p4CuvXcJsnUeLEv3ucJroO9Nt5e', NULL, NULL, NULL, NULL, 2, '2024-01-21 07:42:02', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '985115', NULL, NULL, NULL, '2024-01-21 07:37:56', '2024-01-21 07:42:02', NULL),
(148, 'etrtete', 'etetett', 0, 'junior', 'kebojo2468@tsderp.com', '43535335', 'kebojo2468', '$2y$10$QG9HSQlkS4vX6ChUplTf4.JKH9NJM7NUubEbKZJHRN3k9pIr/K5hy', NULL, NULL, NULL, NULL, 2, '2024-01-21 07:43:13', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '893672', NULL, NULL, NULL, '2024-01-21 07:43:12', '2024-01-21 07:43:13', NULL),
(149, 'Marcus', 'Deeds', 0, 'junior', 'marcel@stylinkz.com', '022188828888', 'MediaLabs', '$2y$10$Ml1Hjz83.pD8acAmANZCzO5y4HyXzcN5l1S/K6wkpzT6z4kjT9fJy', NULL, NULL, NULL, NULL, 1, '2024-01-22 06:30:27', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '706175', NULL, NULL, NULL, '2024-01-22 06:30:25', '2024-01-22 06:30:27', NULL);
INSERT INTO `users` (`id`, `first_name`, `last_name`, `hourly_rate`, `experience_level`, `email`, `phone`, `username`, `password`, `image`, `country_id`, `state_id`, `city_id`, `user_type`, `check_online_status`, `check_work_availability`, `user_active_inactive_status`, `user_verified_status`, `is_suspend`, `terms_condition`, `about`, `is_email_verified`, `google_2fa_secret`, `google_2fa_enable_disable_disable`, `google_id`, `facebook_id`, `github_id`, `email_verify_token`, `firebase_device_token`, `email_verified_at`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(150, 'libaax', 'libaax', 0, 'junior', 'iskabaashaal20@gmail.com', '616658244', 'libaax', '$2y$10$umPKRd5esFndNVFIhJCYN..dC7WfEvFVHZyKRtuG2NuwXG3Qnt6kq', NULL, NULL, NULL, NULL, 2, '2024-01-24 00:33:05', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '778587', NULL, NULL, NULL, '2024-01-24 00:24:38', '2024-01-24 00:48:23', NULL),
(151, 'fgsdf', 'gsdfg', 0, 'junior', 'gsdfgsdfg@fgsadf.com', 'rfeawsf', 'sdfgsdf', '$2y$10$qHegBQV6LMQzhRreW/d7B.otG.WpzKHvponuK7tajNXPleR.DgW7e', NULL, NULL, NULL, NULL, 1, '2024-01-24 07:03:35', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '889270', NULL, NULL, NULL, '2024-01-24 07:02:37', '2024-01-24 07:03:35', NULL),
(152, 'Hzhzh', 'Hehshs', 0, 'junior', 'Hshsh@gmail.com', '845481040484545', 'Shshdhdbs vs', '$2y$10$.Hn8.i5siU3ldhxzE.1LBOx5BD16pCpuZKHLTl7y4qctTXtiYmVhq', NULL, NULL, NULL, NULL, 1, '2024-01-24 07:27:13', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '988967', NULL, NULL, NULL, '2024-01-24 07:25:33', '2024-01-24 07:27:13', NULL),
(153, 'Cawden', 'Muchinjiko', 0, 'junior', 'quickprofessionals@gmail.com', '0792705444', 'Cal', '$2y$10$gEHsr4Sj4uF.v3jdzRLyuuu649VQcPcaOPqL9X/Q/bDd134itKh/u', NULL, NULL, NULL, NULL, 1, '2024-02-10 18:13:00', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '573041', NULL, NULL, NULL, '2024-01-25 12:08:52', '2024-02-10 18:13:00', NULL),
(154, 'noon', 'seen', 0, 'junior', 'seen@hotmail.com', '97139516', 'noon', '$2y$10$VeY8G.Zl64rqqNEcw6BROuXOECFFRt7NBoZoCPj1fb9ObDWahE2Ya', NULL, NULL, NULL, NULL, 2, NULL, 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '255568', NULL, NULL, NULL, '2024-01-26 01:50:10', '2024-01-26 01:50:10', NULL),
(155, 'noon', 'seen', 0, 'junior', 'naser_sultan@hotmail.com', '97139515', 'naser', '$2y$10$9ukj/h.fzJiSOFiy39sBr.dFSAClDd0DRZ0qJiZzu8m1YFWK34BZW', NULL, NULL, NULL, NULL, 2, NULL, 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '800849', NULL, NULL, NULL, '2024-01-26 01:51:01', '2024-01-26 01:52:23', NULL),
(156, 'Alandieice', 'Freire', 0, 'junior', 'alandieice@gmail.com', '44998709877', 'Aladieice', '$2y$10$n5ubCgFXIbwI44dN4d51E.BxlGpmU1ceiwjK4ACkz32jXDq.vfiUW', NULL, NULL, NULL, NULL, 1, '2024-01-26 12:55:02', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '613218', NULL, NULL, NULL, '2024-01-26 09:10:03', '2024-01-26 12:55:02', NULL),
(157, 'aline', 'freire', 0, 'junior', 'alinenbfreire@gmail.com', '+5544998709877', 'Aline', '$2y$10$G.ILPGnLR6Zd.mABlg7ns.gcKU4Sv/Eeh3437hI6N2ZwjngTkJYnK', NULL, NULL, NULL, NULL, 2, NULL, 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '986095', NULL, NULL, NULL, '2024-01-26 11:35:24', '2024-01-26 11:35:24', NULL),
(158, 'ajay', 'ajay', 0, 'junior', 'ajayesvj1@gmail.com', '8520820581', 'ajay', '$2y$10$q5akJsC.Om8j39kpsH6EROulYA1J7oTpSbt036KgXh17FDbx95ymq', NULL, NULL, NULL, NULL, 1, '2024-01-27 15:12:14', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '533646', NULL, NULL, NULL, '2024-01-27 07:10:29', '2024-01-27 15:12:14', NULL),
(159, 'Theekshana', 'Theekshana', 0, 'junior', 'tryjustme@gmail.com', '0717214659', 'theekshana', '$2y$10$JeWfW9.ebYSxYZMKrt4J8u3vjJn0mLliVEDWVfrqBKjsTR5CqOn5y', NULL, NULL, NULL, NULL, 2, '2024-01-27 08:52:36', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '384436', NULL, NULL, NULL, '2024-01-27 08:52:34', '2024-01-27 08:52:36', NULL),
(160, 'Tesk', 'user', 0, 'junior', 'info.biin.io@gmail.com', '0799189834', 'testing', '$2y$10$qPkq9rIoyhxO1M4Nxsw6le0UUefqnF1upkqEurfea9cf7HkqfgPAq', NULL, NULL, NULL, NULL, 2, '2024-01-28 09:33:22', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '629286', NULL, NULL, NULL, '2024-01-28 09:27:54', '2024-01-28 09:33:22', NULL),
(161, 'chnag', 'min', 0, 'junior', 'raychang35@gmail.com', '0908266752', 'ray', '$2y$10$mKR.4RaFoxjQtuUvPq6Hcuci3vTSqBKJWQBU5OjzGvh7uYoN120I.', NULL, NULL, NULL, NULL, 2, '2024-01-28 11:58:27', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '288279', NULL, NULL, NULL, '2024-01-28 11:41:55', '2024-01-28 11:58:27', NULL),
(162, 'Marcus', 'Business', 0, 'junior', 'a@a.sk', '1', 'a', '$2y$10$g379mwsvHXEQFw/IdrgRROxr/YpS9/nGbvHtpTM5BzCcn3E6afqdO', NULL, NULL, NULL, NULL, 1, '2024-01-29 05:17:09', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '297741', NULL, NULL, NULL, '2024-01-29 05:16:57', '2024-01-29 05:17:09', NULL),
(163, 'asdasd', 'asdasd', 0, 'junior', 'asdasas@gmail.com', '2133421323', 'asdasd', '$2y$10$oM8girVhnY.kHCuBmLdy5e1uWLyXHumhmyxmxhj2QZl5DWxNFfomu', NULL, NULL, NULL, NULL, 2, '2024-01-30 00:23:17', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '362851', NULL, NULL, NULL, '2024-01-30 00:23:05', '2024-01-30 00:23:17', NULL),
(164, 'sdfsdf', 'sdfsdfsdf', 0, 'junior', 'sdfsdfsd@gmail.com', '32423432', 'sdfsdfsdf', '$2y$10$GCtQrI/Wjp06Z4ZGALTozeT7TEkqpr85O/H99OFOQ4objneKQNG92', NULL, NULL, NULL, NULL, 2, '2024-01-30 00:27:05', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '977557', NULL, NULL, NULL, '2024-01-30 00:23:57', '2024-01-30 00:27:05', NULL),
(165, 'Porter', 'Zahid', 0, 'junior', 'cogicifun@mailinator.com', '8351697116', 'fadsfadsfas', '$2y$10$3F1d.4i9W8E4SlNAmikxFugkIzyji9xqluK8mIEvoEylwtRNDV8NG', NULL, NULL, NULL, NULL, 2, '2024-01-30 00:32:42', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '711071', NULL, NULL, NULL, '2024-01-30 00:32:38', '2024-01-30 00:32:42', NULL),
(166, 'adasda', 'asdasdasd', 0, 'junior', 'nazmul655diu8@gmail.com', '12321321', 'asdasdasd', '$2y$10$4NxuPFqOVzOlkEB7Wd.63O180oqWdjTKAaRPQElDpVGXZFkdYUyMm', NULL, NULL, NULL, NULL, 2, '2024-01-30 03:55:37', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '484265', NULL, NULL, NULL, '2024-01-30 03:54:23', '2024-01-30 03:55:37', NULL),
(167, 'asd asd', 'asd aasd', 0, 'junior', 'nazmuldiu8@gmail.com', '12345678', 'asdasdsadsadsad', '$2y$10$2bdqORvguJWDTrHQfq8GOOZ3j9vFf2hBErSa1xTFYal8YOALX7V1y', NULL, NULL, NULL, NULL, 2, '2024-01-30 04:14:02', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '345817', NULL, NULL, NULL, '2024-01-30 04:08:28', '2024-01-30 04:14:02', NULL),
(168, 'Ruby', 'Boyle', 0, 'junior', 'zupivavuke@mailinator.com', '+1 (788) 136-6823', 'pejobilah', '$2y$10$FMi8LNJO3l/7qifp0WHcTu.2Pap73OS1bz2f.bPB69TxNlspEGfyi', NULL, NULL, NULL, NULL, 2, '2024-01-30 04:18:59', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '726661', NULL, NULL, NULL, '2024-01-30 04:17:26', '2024-01-30 04:18:59', NULL),
(169, 'Xavier', 'Hunt', 0, 'junior', 'kawinevywa@mailinator.com', '+1 (361) 638-4567', 'pevum', '$2y$10$v8z3XW1xWfJMg1ppz60WGeoVsWTEdgMA9wA/NyeL1YN9a4McBXfsy', NULL, NULL, NULL, NULL, 2, '2024-01-30 04:20:58', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '743207', NULL, NULL, NULL, '2024-01-30 04:19:33', '2024-01-30 04:20:58', NULL),
(170, 'Ashton', 'Pennington', 0, 'junior', 'paxupe@mailinator.com', '+1 (184) 502-5329', 'serujis', '$2y$10$nN6kz8NlCpZj1.cTOdjU2.vmRB8ST5g4RbVqFYTukD4yE6maSu2N2', NULL, NULL, NULL, NULL, 2, '2024-01-30 04:21:24', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '439031', NULL, NULL, NULL, '2024-01-30 04:21:22', '2024-01-30 04:21:24', NULL),
(171, 'Jaime', 'Dudley', 0, 'junior', 'topagular@mailinator.com', '+1 (911) 739-6825', 'dovav', '$2y$10$2uqaD0d1XPuMdjHVSx0CuummFSZk2gl3med2rnnVujcl4yaHJsZC.', NULL, NULL, NULL, NULL, 2, '2024-01-30 04:25:25', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '131934', NULL, NULL, NULL, '2024-01-30 04:24:41', '2024-01-30 04:25:25', NULL),
(172, 'Gui', 'Test', 0, 'junior', 'guilherme.c3g@gmail.com', '459991923', 'guilhermefg', '$2y$10$VVFEeJEckJIDeVt7AkWzZ.7zii4B/rzDrfkpEU.ix.47hi6xgn/my', NULL, NULL, NULL, NULL, 2, NULL, 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '390054', NULL, NULL, NULL, '2024-01-30 09:14:05', '2024-01-30 09:14:05', NULL),
(173, 'sadf', 'asdf', 0, 'junior', 'asdf@asdf.com', '21312312fasdfasd', 'asdf', '$2y$10$Pr0Up/fLDyqZ3XarkyuH/.XbEO.pSy53ok8o04XZNxMctA09SAd3i', NULL, NULL, NULL, NULL, 1, '2024-01-30 11:01:26', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '895956', NULL, NULL, NULL, '2024-01-30 11:00:39', '2024-01-30 11:01:26', NULL),
(174, 'gg', 'gg', 0, 'junior', 'blod228@gmail.com', '21312312fasdfasd212', 'Sergey', '$2y$10$XLZe5O8mmFQaZ8twSVgfae9ZWmrkNSZVYebQN3Vo.5mD50sgpT0ue', NULL, NULL, NULL, NULL, 1, '2024-01-30 11:05:28', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '183266', NULL, NULL, NULL, '2024-01-30 11:01:26', '2024-01-30 11:05:28', NULL),
(175, 'Qm', 'mr', 0, 'junior', 'contact.qamarzaman@gmail.com', '123456552', 'trt', '$2y$10$5dyv97MLX3b57yE0eEpk0.zjMwlTUycDHhkpQiYBgAYC5hiMF7Jri', NULL, NULL, NULL, NULL, 2, NULL, 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '297992', NULL, NULL, NULL, '2024-01-31 02:56:40', '2024-01-31 02:56:40', NULL),
(176, 'am', 'arr', 0, 'junior', 'qamar22jan07@gmail.com', '18252672', 'yrtqqq', '$2y$10$JYwMxgcBt3g84wki8M8dNupIIP36ZQuGsY65cu9e5aJaIhLTigm.G', NULL, NULL, NULL, NULL, 2, NULL, 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '887295', NULL, NULL, NULL, '2024-01-31 03:06:31', '2024-01-31 03:06:31', NULL),
(177, 'Hamim', 'Adghirni', 0, 'junior', 'djhamim@gmail.com', '665269697', 'sticop', '$2y$10$GZktGgTBY40jS7nbOGuLieyUVT6fjiVIw3nzuDbJVAIG8NqEE7gyK', NULL, NULL, NULL, NULL, 1, '2024-02-01 03:22:02', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '928458', NULL, NULL, NULL, '2024-02-01 02:41:56', '2024-02-01 03:22:02', NULL),
(178, 'José', 'Kassala', 0, 'junior', 'arturjose0@gmail.com', '+244950735891', 'arturjose0', '$2y$10$Q8UMsG685waQ8TlZQMuoJ.GnbHYYyeBujcpSQ6bsEWSf7FEouMPtO', NULL, NULL, NULL, NULL, 1, '2024-02-01 06:33:14', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '718243', NULL, NULL, NULL, '2024-02-01 06:23:40', '2024-02-01 06:33:14', NULL),
(179, 'gürkan', 'okutan', 0, 'junior', 'okgurkan767676@gmail.com', '05312102120', 'monument', '$2y$10$36r0051yt1HTeagxESvqc.o6enb4WPYTJgoaVIFypCdQM7LFBilmO', NULL, NULL, NULL, NULL, 2, NULL, 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '818813', NULL, NULL, NULL, '2024-02-01 09:01:29', '2024-02-01 09:01:29', NULL),
(180, 'Vitaly', 'Zimo', 0, 'junior', 'freelanceman@list.ru', '+7 912 1740631', 'anceman', '$2y$10$FxVhjNMT5hd6JKG/LCVjyuHiSM5Nv8vbVPbzUi3K5z5CsKe29mGmW', NULL, NULL, NULL, NULL, 2, '2024-02-01 17:48:33', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '669174', NULL, NULL, NULL, '2024-02-01 15:50:09', '2024-02-01 17:48:33', NULL),
(181, 'Hasan', 'Türer', 0, 'junior', 'hsn_trr@hotmail.com', '05334631011', 'feyt', '$2y$10$PiWn87JPOV6xn8leltXf2Oauo5yqjZNAfWDT4nNjCuxIIsuoMEwh2', NULL, NULL, NULL, NULL, 2, '2024-02-02 08:36:28', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '442958', NULL, NULL, NULL, '2024-02-02 06:06:20', '2024-02-02 08:36:28', NULL),
(182, 'vishu', 'vishwa', 0, 'junior', 'vishuloveappa@gmail.com', '9593949434', 'vishu', '$2y$10$0FVl7f0P4NuXBfJdJyrwP.g9BLEaIX5rHZHz11mgn5BYB.OjKoewG', NULL, NULL, NULL, NULL, 2, '2024-02-02 10:55:43', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '762595', NULL, NULL, NULL, '2024-02-02 10:47:44', '2024-02-02 10:55:43', NULL),
(183, 'Thomas', 'nikhil', 0, 'junior', 'gmx260@gmail.com', '948448484', 'thosee45', '$2y$10$n24mwZxPk3Qf4NujMaEct.u4fLq1t/OYaUqeCQ00es7.f/Q6cmLi2', NULL, NULL, NULL, NULL, 2, NULL, 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '239782', NULL, NULL, NULL, '2024-02-04 17:45:13', '2024-02-04 17:45:13', NULL),
(184, 'rx', 'rx', 0, 'junior', 'romeoskus@gmail.com', '242424', 'rxrx', '$2y$10$CnOrb5tyr/IUvtkPi2I9sOMc41Uh9DgGoPW7Kyo5acJX4cb1n9k56', NULL, NULL, NULL, NULL, 1, '2024-02-05 14:04:16', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '873683', NULL, NULL, NULL, '2024-02-05 14:04:14', '2024-02-05 14:04:16', NULL),
(185, 'Rahul', 'Das', 0, 'junior', 'arunroy875939@gmail.com', '7981820891', 'arun1234', '$2y$10$GiV.6qpCjL6TDYypUCHsI.IYiUlsniou3s.asMjfl79qJbcnJF3O.', NULL, NULL, NULL, NULL, 1, '2024-02-06 09:26:32', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '780041', NULL, NULL, NULL, '2024-02-06 09:20:36', '2024-02-06 09:26:32', NULL),
(186, 'fırat', 'Help', 0, 'junior', 'tatasfirat@gmail.com', '5425681117', 'admadada', '$2y$10$nEnNuF5PNgpWl7H7EvNzPOPbcd35Hyy74UlCDFUx33qM6dlFPpjkq', NULL, NULL, NULL, NULL, 2, '2024-02-06 10:11:33', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '613235', NULL, NULL, NULL, '2024-02-06 10:09:49', '2024-02-06 10:11:33', NULL),
(187, 'Muhammad', 'Rafiq', 0, 'junior', 'abdullahbeta553@gmail.com', '03438785406', 'MRafiq', '$2y$10$MdABnRzuNEBaFldIXw2cT.LzH7aHpv1C68SIbBHTC9ZcNjePRxrCi', NULL, NULL, NULL, NULL, 2, NULL, 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '937112', NULL, NULL, NULL, '2024-02-06 12:35:53', '2024-02-06 12:35:53', NULL),
(188, 'user 1', 'test', 0, 'junior', 'virtualmr99@gmail.com', '+8801955000704', 'user1test', '$2y$10$u7EPS8gObUIBLVpsxiYBTuUSSNGfUg0EgPGjpLui5SySH69mH1kQW', NULL, NULL, NULL, NULL, 2, NULL, 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '601292', NULL, NULL, NULL, '2024-02-06 23:15:22', '2024-02-06 23:15:22', NULL),
(189, 'Recep', 'güne', 0, 'junior', 'recepgunese69@gmail.com', '5010722416', 'recepgunese', '$2y$10$WfddidDfAFkjVyYNrA5EbOMVJtHzaqOHMuKaEwzoQRk43YdxEBTc6', NULL, NULL, NULL, NULL, 2, NULL, 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '629472', NULL, NULL, NULL, '2024-02-07 04:47:30', '2024-02-07 04:47:30', NULL),
(190, 'Recep', 'güne', 0, 'junior', 'recepgunese@gmail.com', '+905010722416', 'recepgunese69', '$2y$10$FwGhE0hLYHdnU.9mD/8eT./fTDfUBb8wsfVx5DJX/dfLuQOUFyLMK', NULL, NULL, NULL, NULL, 2, NULL, 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '899476', NULL, NULL, NULL, '2024-02-07 04:48:46', '2024-02-07 04:48:46', NULL),
(191, 'AJ', 'sabbir', 0, 'junior', 'ajsabbirbd@gmail.com', '01893997433', 'ajsabbir', '$2y$10$cyIaAo0q8Cvzoe2jDxQNou.ZBByRTLRK0Dd9xH8qe1RX4bYDvJjLG', NULL, NULL, NULL, NULL, 2, NULL, 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '499874', NULL, NULL, NULL, '2024-02-07 22:55:02', '2024-02-07 22:56:20', NULL),
(192, 'Osama', 'Abdelhadi', 0, 'junior', 'info@mawsool.tech', '0797178828', 'osamaabdelhadi5', '$2y$10$iNs9d2SaMOgb9J/1atwLbuxoWLs5XUsPmhpPEJCIshNXzKXpO2x4u', NULL, NULL, NULL, NULL, 2, '2024-02-08 08:56:13', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '233559', NULL, NULL, NULL, '2024-02-08 08:54:48', '2024-02-08 08:56:13', NULL),
(193, 'dfsdfsdf', 'sdfsdfsdfs', 0, 'junior', 'nishadsaranga@gmail.com', '7587575', 'dgsdgsdfsdf', '$2y$10$oEmPKJXzTtIwaZJCn6rZDu4RM4keb8Mutk0XV00deWI2nNl1YbDpa', NULL, NULL, NULL, NULL, 1, '2024-02-08 12:13:19', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '381800', NULL, NULL, NULL, '2024-02-08 11:46:31', '2024-02-08 12:13:19', NULL),
(194, 'mm', 'BOUAMANE', 0, 'junior', 'med.bouamane.dev@gmail.com', '0644684404', 'mm', '$2y$10$KYQ.hmIZMZun1auM1EmndeXAq7HHWYrR7LpAeMez09OBgCfeLM2Oy', NULL, NULL, NULL, NULL, 1, '2024-02-08 15:26:57', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '477052', NULL, NULL, NULL, '2024-02-08 15:18:29', '2024-02-08 15:26:57', NULL),
(195, 'abdo', 'bambi', 0, 'junior', 'abdallahdz2021@gmail.com', '00213674799807', 'abdo', '$2y$10$dGagJUiI4qIZWgLveKYHBevmh.Mpug3G75Ervj6Pa4kwKppkJsz6y', NULL, NULL, NULL, NULL, 2, NULL, 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '804342', NULL, NULL, NULL, '2024-02-08 21:02:59', '2024-02-08 21:03:58', NULL),
(196, 'abdo', 'bambi', 0, 'junior', 'abdallahdz13dz@gmail.com', '+213674799807', 'abdo1', '$2y$10$Hud7kUNj/ExerkKqK8YT7OF1q5K7P7q7y1uRwLH74uYprL2QvAr8q', NULL, NULL, NULL, NULL, 2, NULL, 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '307774', NULL, NULL, NULL, '2024-02-08 21:05:00', '2024-02-08 21:05:18', NULL),
(197, 'ashish', 'gupta', 0, 'junior', 'akgupta.ch@gmail.com', '9971660364', 'ashish', '$2y$10$g31paxdrHXyjSh8srtCDD.ZV/be/KDnNHAXJW71DDGAh2thwvNix.', NULL, NULL, NULL, NULL, 2, '2024-02-10 00:24:31', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '325549', NULL, NULL, NULL, '2024-02-10 00:02:49', '2024-02-10 00:24:31', NULL),
(198, 'anxrei', 'rsyl', 0, 'junior', 'dutucs@gmail.com', '671225875', 'kenium', '$2y$10$tVd3nGPjQElE4ENqdXnjZOnf.94KmTaBAVxZ7tIR76Hp2QwDnAdkm', NULL, NULL, NULL, NULL, 2, NULL, 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '430813', NULL, NULL, NULL, '2024-02-11 00:33:17', '2024-02-11 00:34:45', NULL),
(199, 'Nevig', 'Drawde', 0, 'junior', 'givenality@gmail.com', '0658295950', 'nevig', '$2y$10$2.2tVGOwBXo7C3RVur0lM.dXbqRaJSB2I2BtBl6PRU91CA1s3j0.S', NULL, NULL, NULL, NULL, 2, '2024-02-12 06:16:52', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '869447', NULL, NULL, NULL, '2024-02-12 06:10:00', '2024-02-12 06:16:52', NULL),
(200, 'Lupsa', 'George', 0, 'junior', 'georgelupsa@gmail.com', '0770154242', 'georgelupsa', '$2y$10$MEzSAF57ZC5p4gQnj57f/uI6WHisCO6Bsh.Hr.D82Nx/gNxi0aWXe', NULL, NULL, NULL, NULL, 2, '2024-02-13 17:23:30', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '776339', NULL, NULL, NULL, '2024-02-13 16:04:05', '2024-02-13 17:23:30', NULL),
(201, 'Aaman', 'Mehra', 0, 'junior', 'aman888mehra@gmail.com', '6395652599', 'aman84', '$2y$10$5Ma9icvQvSz2chThccvAYumkBdEf9Hly2waQMP7E6xJKyixnmGh32', NULL, NULL, NULL, NULL, 2, '2024-02-15 02:18:37', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '466755', NULL, NULL, NULL, '2024-02-15 01:46:01', '2024-02-15 02:18:37', NULL),
(202, 'demo', 'demo', 0, 'junior', 'demo@demo.com', '1234567891', 'demo14', '$2y$10$nlL7R6dmiXkTDIXrTskhgOPlTDHIrlIAWPz3JJzLXYQdlsGJvKhdm', NULL, NULL, NULL, NULL, 1, '2024-02-15 11:38:08', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '133139', NULL, NULL, NULL, '2024-02-15 11:36:12', '2024-02-15 11:38:08', NULL),
(203, 'fiver', 'sss', 0, 'junior', 'paultheblogger96@gmail.com', '1234567822', 'sss14', '$2y$10$UeR1kjYJMUKtNSLyA.Ssz.qVp.zgyJl2v4WBZCoFdhHUAusbk1IUi', NULL, NULL, NULL, NULL, 1, '2024-02-15 11:39:04', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '270098', NULL, NULL, NULL, '2024-02-15 11:38:08', '2024-02-15 11:39:04', NULL),
(204, 'chnag', 'min', 0, 'junior', 'hunterxtoptw@gmail.com', '0936754760', 'ray1212', '$2y$10$NZe/iSNtKp7mz7JRZRxuJeOlifTYPQ5etWCGoII8s9O98bxghdDvK', NULL, NULL, NULL, NULL, 2, '2024-02-15 21:33:53', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '432159', NULL, NULL, NULL, '2024-02-15 21:28:51', '2024-02-15 21:33:53', NULL),
(205, 'dfdf', 'dsfdf', 0, 'junior', 'sff@gmail.com', '9876543', 'sdfdfdgge', '$2y$10$NJWEFbvB.bZuu4cS5aZP0uVWo4Ld4enSg73NrLdOK.lgwzlz9SPrK', NULL, NULL, NULL, NULL, 2, '2024-02-16 08:23:32', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '437155', NULL, NULL, NULL, '2024-02-16 08:12:51', '2024-02-16 08:23:32', NULL),
(206, 'amine', 'rezig', 0, 'junior', 'aminetheride@gmail.com', '0555136249', 'amine', '$2y$10$hVG/w2fW5e4QQ6Af9ONci.cdYLbq5Lmmi6Kc12bboOxflebBvnroO', NULL, NULL, NULL, NULL, 2, NULL, 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '802296', NULL, NULL, NULL, '2024-02-16 14:02:15', '2024-02-16 14:02:28', NULL),
(207, 'hassan', 'mehbub', 0, 'junior', 'xgenioussiam@gmail.com', '01777597363', 'xxgenioussiam', '$2y$10$y1otzd5GYVvlAIy.N1g58uRaGD7Beyd7Wrtm8ZNwFxf.r8GZ.Evny', NULL, NULL, NULL, NULL, 2, '2024-02-17 00:05:07', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '966462', NULL, NULL, NULL, '2024-02-16 22:37:49', '2024-02-17 00:05:07', NULL),
(208, 'Muhammad', 'Shahin', 0, 'junior', 'rasheddj900@gmail.com', '01608085753', 'freelancer1234', '$2y$10$CvC5PDI5iBAlcH04qXTyue2EmrcZvlDk/KV7b8uYbpjNoU9kTA1eW', NULL, NULL, NULL, NULL, 2, '2024-02-16 22:47:36', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '999718', NULL, NULL, NULL, '2024-02-16 22:43:17', '2024-02-16 22:47:36', NULL),
(209, 'Muhammad', 'Shahin', 0, 'junior', 'shahin123@gmail.com', '01608085752', 'freelancer12345', '$2y$10$Qmb2cJAz472MUn4W14OANe/jthR20K0EgrXMfCaR10ArULwfORmCm', NULL, NULL, NULL, NULL, 2, '2024-02-16 22:49:02', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '525621', NULL, NULL, NULL, '2024-02-16 22:49:00', '2024-02-16 22:49:02', NULL),
(210, 'Developer', 'Nazmul', 0, 'junior', 'devnaz@gmail.com', '65454564565', 'devnaz', '$2y$10$pbgnap4.yTf7Miva7Y0ZoezLgM4f25FHSRmMpvYOPbCsqMFxpS0Xe', NULL, NULL, NULL, NULL, 1, '2024-02-16 23:48:06', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '474225', NULL, NULL, NULL, '2024-02-16 23:46:07', '2024-02-16 23:48:06', NULL),
(211, 'Xaviera', 'Frederick', 0, 'junior', 'viceby@mailinator.com', '+1 (671) 502-7586', 'nyxihuloc', '$2y$10$xVHhUUG9husX/LbyRoVqF.kb9oPqadZjYjd0pOLSU//O1vUcEIugC', NULL, NULL, NULL, NULL, 1, '2024-02-16 23:51:05', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '455687', NULL, NULL, NULL, '2024-02-16 23:49:20', '2024-02-16 23:51:05', NULL),
(212, 'Steel', 'Lamb', 0, 'junior', 'huwofi@mailinator.com', '+1 (471) 612-8899', 'rolywelagu', '$2y$10$UmcO/YU4Eczu9drQNR4FE.Qybm80PaJnwEUO32puPsI5cNLZaJW9y', NULL, NULL, NULL, NULL, 2, '2024-02-16 23:54:33', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '392733', NULL, NULL, NULL, '2024-02-16 23:54:06', '2024-02-16 23:54:33', NULL),
(213, 'ftrftrdtr', 'trdtrt', 0, 'junior', 'adttrdtdrtrdtrdtmin@gmail.com', '01799328264', 'rolywelagutrdtdrtdrt', '$2y$10$hxM78vWyMH75PFTEy2dCeeFjvZPbH8gmvtk7ajlmBldWGo5RgognS', NULL, NULL, NULL, NULL, 1, '2024-02-16 23:59:37', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '288655', NULL, NULL, NULL, '2024-02-16 23:56:06', '2024-02-16 23:59:37', NULL),
(214, 'Tyrel', 'Gutkowski', 0, 'junior', 'your.email+fakedata33548@gmail.com', '535-196-0029', 'Ferne_Auer40', '$2y$10$o0pgRLSfRFI3uif6IK1HHed6OF4jgd82dGBmqEuvIWlY1fTophUJy', NULL, NULL, NULL, NULL, 2, '2024-02-16 23:58:01', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '904045', NULL, NULL, NULL, '2024-02-16 23:57:49', '2024-02-16 23:58:01', NULL),
(215, 'Lupe', 'Moen', 0, 'junior', 'your.email+fakedata75877@gmail.com', '382-843-9325', 'Delores.Borer', '$2y$10$qMSIRWtoSVm.YUXioFaZCONPHVjX9dMdK/8lQowD4fTfQrCbSIolG', NULL, NULL, NULL, NULL, 2, '2024-02-16 23:58:39', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '445053', NULL, NULL, NULL, '2024-02-16 23:58:32', '2024-02-16 23:58:39', NULL),
(216, 'Cristopher', 'O\'Conner', 0, 'junior', 'your.email+fakedata29594@gmail.com', '545-926-5498', 'Felix.Carter89', '$2y$10$cfrHZYAjbM7AhwKZl6ssQus0iDyKfsBith9zj5vXusjHKGX4Te6SK', NULL, NULL, NULL, NULL, 2, '2024-02-16 23:59:20', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '245554', NULL, NULL, NULL, '2024-02-16 23:58:58', '2024-02-16 23:59:20', NULL),
(217, 'Reta', 'Hauck', 0, 'junior', 'your.email+fakedata37800@gmail.com', '631-936-2456', 'Idella.Hermann39', '$2y$10$rgBZ5p2KZvMrni59Vz0Bn.1KTIk/pIDsuXmNoJE1sfWUnbnTSamGC', NULL, NULL, NULL, NULL, 1, '2024-02-17 00:00:26', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '209532', NULL, NULL, NULL, '2024-02-16 23:59:35', '2024-02-17 00:00:26', NULL),
(218, 'Linnea', 'Skiles', 0, 'junior', 'your.email+fakedata12074@gmail.com', '051-713-8523', 'Keanu_Torphy', '$2y$10$/jv1GjYsEHACdY9bsuA3L.hqwCOE/ud78r0.zu8XNL0sbOme3gfp.', NULL, NULL, NULL, NULL, 1, '2024-02-17 00:01:35', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '922104', NULL, NULL, NULL, '2024-02-17 00:00:26', '2024-02-17 00:01:35', NULL),
(219, 'Nakia', 'Gerlach', 0, 'junior', 'your.email+fakedata93317@gmail.com', '766-943-0662', 'Heidi55', '$2y$10$QbKbzDmMXfOgXO4wo8wh2OgXJA7mZPcs7AbE6AaIywun/eS95CE3G', NULL, NULL, NULL, NULL, 1, '2024-02-17 00:03:34', 1, 1, 0, 0, 1, NULL, '1', NULL, 0, NULL, NULL, NULL, '208134', NULL, NULL, NULL, '2024-02-17 00:02:09', '2024-02-17 00:03:34', NULL),
(220, 'hassan', 'mehbub', 0, 'junior', 'aysha.xgenious@gmail.com', '01777597363l', 'qwerty', '$2y$10$ua2E35BBJNcddghxoybMXuhDiLYqwPO8pDsooEQU9f.I9Y0kOt6y.', NULL, NULL, NULL, NULL, 1, '2024-02-17 00:06:07', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '989435', NULL, NULL, NULL, '2024-02-17 00:05:07', '2024-02-17 00:06:07', NULL),
(221, 'Mariam', 'May', 0, 'junior', 'hyzyj@mailinator.com', '344 395-5275', 'nupybu', '$2y$10$jHSaqTctEizVoj7AY//Ktu5jdTGF77SemBfaFA8J4OiZZqBum9h2i', NULL, NULL, NULL, NULL, 2, '2024-02-17 00:29:11', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '183180', NULL, NULL, NULL, '2024-02-17 00:29:09', '2024-02-17 00:29:11', NULL),
(222, 'asdasd', 'asdasd', 0, 'junior', 'asdasdasdasd@gmail.com', '32423423', 'asdasdsa', '$2y$10$8G3Woge2ShqorY5Z/pk5mucFXK.GekqVlSX2kXqnoU5HVImpEUxe.', NULL, NULL, NULL, NULL, 1, '2024-02-17 02:26:56', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '949174', NULL, NULL, NULL, '2024-02-17 01:36:12', '2024-02-17 02:26:56', NULL),
(223, 'test', 'jay', 0, 'junior', 'accessjerry1@gmail.com', '206 445 6789', 'testjay', '$2y$10$kXKvOUQRz81HXUfhyTbpouo2I4f9zbKSdOSz/AAiaj.Dj0q1GIz3.', NULL, NULL, NULL, NULL, 1, '2024-02-17 01:54:00', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '329669', NULL, NULL, NULL, '2024-02-17 01:39:35', '2024-02-17 01:54:00', NULL),
(224, 'Rob', 'Fax', 0, 'junior', 'robfax314@gmail.com', '3144411128', 'Robfax314', '$2y$10$aCmlpMr2xwItCCz0LLl2mOSO9.1Wj6exySP1zJXgqLVTMfaVSF3fm', NULL, NULL, NULL, NULL, 1, '2024-02-17 10:25:18', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '667260', NULL, NULL, NULL, '2024-02-17 10:18:34', '2024-02-17 10:25:18', NULL),
(225, 'Mari', 'Witt', 0, 'junior', 'wapokov@mailinator.com', '+1 (744) 728-7562', 'kysely', '$2y$10$654NrR9cO8KyFgosSWpGnOyoe7e61fQHISkzkyO93DPypj99cH4cq', NULL, NULL, NULL, NULL, 1, '2024-02-17 11:08:49', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '156129', NULL, NULL, NULL, '2024-02-17 11:08:38', '2024-02-17 11:08:49', NULL),
(226, 'monirul', 'Islam', 0, 'junior', 'info@responsivecoding.com', '01743030340', 'monirbd', '$2y$10$tatrZo4f0ya.L8xW3jUxROwULBGr39MXLBnghkc0W6jfHBqNxEjHS', NULL, NULL, NULL, NULL, 2, NULL, 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '416383', NULL, NULL, NULL, '2024-02-18 09:28:08', '2024-02-18 09:33:47', NULL),
(227, 'Akem', 'Etchu', 0, 'junior', 'akemshowbiz@gmail.com', '652772976', 'akemshowbiz', '$2y$10$s0vKzQ8s7MfAHWdSektsiuI03FXEueSA0sAk6x9AY2Ot7VWs/AY/6', NULL, NULL, NULL, NULL, 2, '2024-02-18 17:29:31', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '858506', NULL, NULL, NULL, '2024-02-18 17:26:22', '2024-02-18 17:29:31', NULL),
(228, 'asdasd', 'asdasdasd', 0, 'junior', 'asdadasd@gmail.com', '2131232', 'asdasdas', '$2y$10$mcJFj7AlgTaTQDOQDTItueVzpMlgUEtqeGyWSJ.W7ezkEmOqRbVQS', NULL, NULL, NULL, NULL, 1, '2024-02-19 08:26:54', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '322523', NULL, NULL, NULL, '2024-02-19 08:26:45', '2024-02-19 08:26:54', NULL),
(229, 'mani', 'kanta', 0, 'junior', 'mani@gmail.com', '6302596560', 'bmk', '$2y$10$ZLsC2A./YIJAYHzQYvOi6eQDU/x3IsprvYgEz4zmPxW.9/9LcEmBm', NULL, NULL, NULL, NULL, 2, NULL, 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '476252', NULL, NULL, NULL, '2024-02-19 14:58:39', '2024-02-19 14:58:39', NULL),
(230, 'mani', 'kanta', 0, 'junior', 'manikantaborra1010@gmail.com', '6302596562', 'bmk1010', '$2y$10$D4oH9FJhc075MpHy25Ju5eLybPbYLHgYQvzFHp20T5m1zNNpnehPK', NULL, NULL, NULL, NULL, 2, NULL, 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '210152', NULL, NULL, NULL, '2024-02-19 14:59:21', '2024-02-19 15:43:19', NULL),
(231, 'gopi', 'krishna', 0, 'junior', 'krish@gmail.com', '7901529080', 'krish', '$2y$10$7I4Up60dbCB6aYczpe2hae47IJV/vf4Zte16luRBUdI8w7/GQbXLa', NULL, NULL, NULL, NULL, 2, NULL, 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '724050', NULL, NULL, NULL, '2024-02-19 15:44:26', '2024-02-19 15:44:26', NULL),
(232, 'keneil', 'mcfarlane', 0, 'junior', 'kenielmcfarlane73@gmail.com', '8764794885', 'keneil mcfarlane', '$2y$10$7MI18Hikeq8LJQ8b4d8vkeP6RKR0aSK7O116/Oo812Vw83JD.4RsW', NULL, NULL, NULL, NULL, 2, NULL, 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '716081', NULL, NULL, NULL, '2024-02-19 21:04:43', '2024-02-19 21:04:55', NULL),
(233, 'keneil', 'mcfarlane', 0, 'junior', 'keneilmcfarlane79@gmail.com', '+18764794885', '1keneil mcfarlane', '$2y$10$f3i81GOxdwoFAfIwwilgGOhGUl.iB9XupG4YmhGhxrAuvcNP2jUTK', NULL, NULL, NULL, NULL, 2, NULL, 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '753593', NULL, NULL, NULL, '2024-02-19 21:26:22', '2024-02-19 21:26:44', NULL),
(234, 'Belle', 'Riley', 0, 'junior', 'bazyny@mailinator.com', '+1 (988) 545-9715', 'sydetiwuse', '$2y$10$hMEaoyjwjyQ5TegGhyi.b.mlppjSB71xSssJQONwaQj1GExYXfg9i', NULL, NULL, NULL, NULL, 2, '2024-02-20 00:40:47', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '737209', NULL, NULL, NULL, '2024-02-20 00:40:23', '2024-02-20 00:40:47', NULL),
(236, 'Ruth', 'Wagner', 0, 'junior', 'wehuruv@mailinator.com', '+1 (449) 515-3329', 'vudygod', '$2y$10$qk5Z6IaKYU4AplFcnrZqKefrLFyEPiZHammuGyv3LTgNrOaaRYa86', NULL, NULL, NULL, NULL, 1, '2024-02-20 00:41:09', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '366880', NULL, NULL, NULL, '2024-02-20 00:41:02', '2024-02-20 00:41:09', NULL),
(237, 'Daniel', 'Pierce', 0, 'junior', 'bevucedo@mailinator.com', '+1 (986) 479-1533', 'rotazytybu', '$2y$10$GQq5GAqM9YgYqY.sz93qzue.BY6bGE9rIj8gQbu2ZKpNMibcFB73u', NULL, NULL, NULL, NULL, 2, '2024-02-20 01:07:58', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '787820', NULL, NULL, NULL, '2024-02-20 00:41:22', '2024-02-20 01:07:58', NULL),
(238, 'neo', 'tes', 0, 'junior', 'foceker815@molyg.com', '5129872463', 'ketnes', '$2y$10$3AAj7LLos0DPYXBN2y7rou6zmgWbdl6CtA68ekFTYaKM9rgiqIIrS', NULL, NULL, NULL, NULL, 2, '2024-02-20 01:21:17', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '961147', NULL, NULL, NULL, '2024-02-20 01:15:51', '2024-02-20 01:21:17', NULL),
(239, 'Rhodium', 'Inc', 0, 'junior', 'seller@email.com', '183490222', 'rhodium', '$2y$10$R8gJxO2nF0vYwj0JU6MJ8OfAdK/oSMjl2sgMWI1L9HtZtHtEdcZLa', NULL, NULL, NULL, NULL, 1, '2024-02-20 09:18:19', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '488405', NULL, NULL, NULL, '2024-02-20 09:15:10', '2024-02-20 09:18:19', NULL),
(240, 'sonu', 'saini', 0, 'junior', 'ersonusainibhadra@gmail.com', '9782533198', 'ersonusaini', '$2y$10$pJiZxp4HRZbLOBVWMFXiAeknGf.SMKQAMNrxUAqKDr45c3rOLntEC', NULL, NULL, NULL, NULL, 2, NULL, 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '491802', NULL, NULL, NULL, '2024-02-20 10:26:07', '2024-02-20 10:27:42', NULL),
(241, 'hhv', 'hvhyg', 0, 'junior', 'chilmitsaous@gmail.com', '668779890', 'bhhv', '$2y$10$oO.hIZfwnGdSTYNcwUEbPOTfCMVKpIVeD5.SIhl0bP6EGR6WnTqB2', NULL, NULL, NULL, NULL, 1, '2024-02-20 14:12:33', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '856700', NULL, NULL, NULL, '2024-02-20 13:01:14', '2024-02-20 14:12:33', NULL),
(242, 'test', 'test', 0, 'junior', 'numanawan120@gmail.com', '929789479734', 'test', '$2y$10$0UjhMZRfYuhYWhldGaAjH.HrraqPaN/a3SyLNEq5WtwGLL4FETDyi', NULL, NULL, NULL, NULL, 2, '2024-02-21 01:57:07', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '701291', NULL, NULL, NULL, '2024-02-21 01:54:54', '2024-02-21 01:57:07', NULL),
(243, 'Nx', 'Sol', 0, 'junior', 'mukund.h.php@gmail.com', '1020302010', 'nxFreelancer', '$2y$10$.U14Iq6xClobotIOmY.16O4iVH2hSQ3Nk1wSqNGN5JuIPy1WzXzxy', NULL, NULL, NULL, NULL, 2, '2024-02-21 05:37:25', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '145795', NULL, NULL, NULL, '2024-02-21 04:50:17', '2024-02-21 05:37:25', NULL),
(244, 'Nikunj', 'Bhimani', 0, 'junior', 'nikunjbhimani99@gmail.com', '8866204162', 'nikunjbhimani', '$2y$10$/Qywh77B9JkkLXMFgcFRQOkr4pBXXKyLUVSoVR.84lQVGKV9L0mBm', NULL, NULL, NULL, NULL, 2, NULL, 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '124512', NULL, NULL, NULL, '2024-02-21 10:08:01', '2024-02-21 10:09:51', NULL),
(245, 'sumit', 'jaiswal', 0, 'junior', 'jaiswalsumit057@gmail.com', '7691810506', 'sumit', '$2y$10$tEHD6STbBBsmbxzoOzhiueaX.Auia3byVw8erBs.I99ncMBUbEVJO', NULL, NULL, NULL, NULL, 2, NULL, 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '842770', NULL, NULL, NULL, '2024-02-22 10:53:23', '2024-02-22 10:53:23', NULL),
(246, 'Sss', 'See', 0, 'junior', 'mnxer.mail@gmail.com', '8154545514', 'mnxer', '$2y$10$6vjCvS7AHs.jQeoiAbgLZugNSP.2akOwaNWFhHDww0Mua2/7SR2aq', NULL, NULL, NULL, NULL, 1, '2024-02-22 15:18:21', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '963376', NULL, NULL, NULL, '2024-02-22 15:13:58', '2024-02-22 15:18:21', NULL),
(247, 'Jaffar', 'Ali', 0, 'junior', '285inadequate@puabook.com', '03215685980', 'JaffarAli', '$2y$10$.ZeB.fSqspUOAxk/v6MiRuTYG/pU4WuZm7Pj3hmdi8oKRy2/LN/Qu', NULL, NULL, NULL, NULL, 2, '2024-02-22 17:44:51', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '800301', NULL, NULL, NULL, '2024-02-22 17:40:19', '2024-02-22 17:44:51', NULL),
(248, 'Hamzer', 'Mutumba', 0, 'junior', 'hamuzahgamer4@gmail.com', '0709315042', 'hamzer', '$2y$10$Fq8M2p4TIsjQggqFd0bu9eTtbMBJErh32D09b.Gh/M3bc9yJrs7cS', NULL, NULL, NULL, NULL, 2, NULL, 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '452633', NULL, NULL, NULL, '2024-02-23 02:32:37', '2024-02-23 02:32:50', NULL),
(249, 'Mayra', 'G', 0, 'junior', 'mayra.aleja98@gmail.com', '642088133', 'mayra', '$2y$10$KXZ0Q3zhMyHv/JT6DO/CdejmmKND4ZOmHJrXtwFZtk0WhSqtBvfuK', NULL, NULL, NULL, NULL, 2, '2024-02-23 07:19:23', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '191551', NULL, NULL, NULL, '2024-02-23 05:51:22', '2024-02-23 07:22:24', NULL),
(250, 'Farnaz', 'Taheri', 0, 'junior', 'info@rhodiumsolutions.ca', '14168259080', 'farnaztaheri', '$2y$10$eXRtDYskv65LoIfbxv7ngOw.bkCjQVDgkdfZ0V80LoHL46iSafWN.', NULL, NULL, NULL, NULL, 1, '2024-02-23 12:09:09', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '954371', NULL, NULL, NULL, '2024-02-23 12:00:23', '2024-02-23 12:09:09', NULL),
(251, 'Hakan', 'AVCI', 0, 'junior', 'masteret@gmail.com', '5525343635', 'emaster', '$2y$10$1EIsUUg7kTHjarg2x0XBbuv0MmCZ.4Gc4cRm/whljKBVDGm3c3y0i', NULL, NULL, NULL, NULL, 2, '2024-02-23 13:42:50', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '453134', NULL, NULL, NULL, '2024-02-23 13:41:55', '2024-02-23 13:42:50', NULL),
(252, 'Fershteh', 'Nabi', 0, 'junior', 'fereshtnabi@gmail.com', '1486909654', 'frersht', '$2y$10$UBe/rgOvWORsYDRCLhPJOeVzNTdMDA8ZbyZl4f9VNfFsdPRs8v9Y2', NULL, NULL, NULL, NULL, 2, '2024-02-23 16:08:49', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '664809', NULL, NULL, NULL, '2024-02-23 16:08:48', '2024-02-23 16:08:49', NULL),
(253, 'First', 'Last', 0, 'junior', 'email05@gmail.com', '093654878944', 'username', '$2y$10$96bjEu/.tbrvi67g402ldeCQiCtX5SVLhD0JdUmezVrChqQkuKs0W', NULL, NULL, NULL, NULL, 2, '2024-02-23 21:21:03', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '856046', NULL, NULL, NULL, '2024-02-23 21:15:54', '2024-02-23 21:21:03', NULL),
(254, 'kwang', 'lee', 0, 'junior', 'hotitems@naver.com', '1020748888', 'hotitem', '$2y$10$3RGF3pUMYoJ4qix/2Wdu2.lh.o89O733Y0XzPuTA6c7JeLXUO.w56', NULL, NULL, NULL, NULL, 2, '2024-02-24 06:38:43', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '919574', NULL, NULL, NULL, '2024-02-24 05:47:25', '2024-02-24 06:38:43', NULL),
(255, 'Hasan', 'yılmaz', 0, 'junior', 'kolaymedya@gmail.com', '05303005010', 'haso', '$2y$10$uDl8sJNbp0hOGIJApMGi3uexbK4rGZAkaxAawGSr4mTRvGgP6DqGW', NULL, NULL, NULL, NULL, 1, '2024-02-24 09:21:45', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '492421', NULL, NULL, NULL, '2024-02-24 09:11:47', '2024-02-24 09:21:45', NULL),
(256, 'xcvvx', 'xcvxcvx', 0, 'junior', 'vxcvxccx@gmail.com', '0539956310', 'xcvxvxc', '$2y$10$p9ibrTY9VXkqbMQXs1gCAe7fvExeoDsP8dIFf/MVunwanTi0Z2zkq', NULL, NULL, NULL, NULL, 2, '2024-02-24 09:59:29', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '139223', NULL, NULL, NULL, '2024-02-24 09:58:57', '2024-02-24 09:59:29', NULL),
(257, 'KEREM', 'kuzu', 0, 'junior', 'aa.foto@hotmail.com', '05467222755', 'ratepablo', '$2y$10$G5XJ/vhoY88m8pAm0agp/OSsxILasbjqoEh3FUOB//6ci6v1bJOtu', NULL, NULL, NULL, NULL, 1, '2024-02-24 11:32:58', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '265510', NULL, NULL, NULL, '2024-02-24 11:32:29', '2024-02-24 11:32:58', NULL),
(258, 'Scofild', 'Barbaros', 0, 'junior', 'c0d3b5c029@emailabox.pro', '656239455', 'scofild', '$2y$10$rNKSIcRyejC6GQHf8V66FOmk03REat3XtHUPKP2rHg48i53KUGpty', NULL, NULL, NULL, NULL, 1, '2024-02-24 12:24:13', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '379796', NULL, NULL, NULL, '2024-02-24 12:14:21', '2024-02-24 12:24:13', NULL),
(259, 'Saeed', 'Mohammed', 0, 'junior', 'mltwo902@gmail.com', '0567929135', 'saeed', '$2y$10$XwqASQzARX2PfN7kU8ERSOrI1.XC8/FO5CtDM.8F37xN3gq/38o7m', NULL, NULL, NULL, NULL, 1, '2024-02-24 12:30:01', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '184849', NULL, NULL, NULL, '2024-02-24 12:25:02', '2024-02-24 12:30:01', NULL),
(260, 'ahmad', 'badleh', 0, 'junior', 'ahmad1.2badleh@gmail.com', '0000000000', 'ahmadbadleh', '$2y$10$zGMGfboKKxYz6trkpbMYzuGxzradnoX8WxgXFe6kEIRrbxP0gX4Te', NULL, NULL, NULL, NULL, 1, '2024-02-24 13:57:53', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '597616', NULL, NULL, NULL, '2024-02-24 13:55:17', '2024-02-24 13:57:53', NULL),
(261, 'Harriet', 'Noble', 0, 'junior', 'jafatoriku@mailinator.com', '+1 (577) 548-7135', 'gahyriwi', '$2y$10$ww1khMahasDkBbwuP8GUxu.sdEFkEfW6r1gbV2YVvdGdqneg0zJnu', NULL, NULL, NULL, NULL, 2, '2024-02-24 18:04:15', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '204741', NULL, NULL, NULL, '2024-02-24 18:03:29', '2024-02-24 18:04:15', NULL),
(262, 'Adria', 'Norris', 0, 'junior', 'sateny@mailinator.com', '+1 (568) 226-9048', 'zonydyto', '$2y$10$PZ00PLyGXaSid/XScMnbF.KSV6nLRH8sdyynIvwjJgd6URx3LIHF2', NULL, NULL, NULL, NULL, 1, '2024-02-24 18:06:07', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '601372', NULL, NULL, NULL, '2024-02-24 18:04:29', '2024-02-24 18:06:07', NULL),
(263, 'test', 'lastk', 0, 'junior', 'test@example.com', '9876543589', 'testuserrr', '$2y$10$BPs1iE5HlZSb/WFzSk2NT.cQk5G9/5Av/6Xta/daHPCowcvjDuU3G', NULL, NULL, NULL, NULL, 2, NULL, 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '713339', NULL, NULL, NULL, '2024-02-27 14:49:58', '2024-02-27 14:49:58', NULL),
(264, 'Agamya', 'Boos', 0, 'junior', 'agamyashiromani@gmail.com', '9865455666', 'AgamyaShiromani', '$2y$10$nOQ8cN1nvHdvynQPJDcSMuMgt7Mz7JK1YS9PIFVs8z31B3dbaOqk6', NULL, NULL, NULL, NULL, 2, NULL, 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '943503', NULL, NULL, NULL, '2024-02-27 14:51:03', '2024-02-27 14:51:03', NULL),
(265, '18Plus', 'Store', 0, 'junior', '18plusstore@gmail.com', '9841846204', '18plusstore', '$2y$10$yKU9TCYpaKWZryHn5MrjeODnoN8TblD08/9rjZFIiLKCWbIxRhQ0y', NULL, NULL, NULL, NULL, 2, NULL, 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '656198', NULL, NULL, NULL, '2024-02-27 14:53:04', '2024-02-27 14:53:04', NULL),
(266, 'Arslan', 'Aslam', 0, 'junior', 'designer.arslanch@gmail.com', '03420079136', 'arslan', '$2y$10$xH8aTlAxa954MOFT0gQFNu./tkrgAyfYQj21/XcqeaWQGD4zAA8.G', NULL, NULL, NULL, NULL, 2, '2024-02-28 03:57:33', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '627132', NULL, NULL, NULL, '2024-02-28 03:54:59', '2024-02-28 03:57:33', NULL),
(267, 'Asad', 'Malik', 0, 'junior', 'masadmalik2000@gmail.com', '03023806855', 'Asad', '$2y$10$pgIf8/3Seiuxcn/wxpnHPu0poGSDuNgy4VPxQZoyCidkb/Ag7bDCG', NULL, NULL, NULL, NULL, 2, '2024-02-28 14:11:04', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '968962', NULL, NULL, NULL, '2024-02-28 13:32:23', '2024-02-28 14:11:04', NULL),
(268, 'khalid', 'hussain', 0, 'junior', 'wvtel1@gmail.com', '0000000', 'khalid341', '$2y$10$L7LvSdY/wcF9w3149A1J2.t2vrRyKtIOSdRKr6RLYNDGf67KAfPbO', NULL, NULL, NULL, NULL, 2, '2024-02-28 17:11:16', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '288420', NULL, NULL, NULL, '2024-02-28 17:10:31', '2024-02-28 17:11:16', NULL),
(269, 'Mohamed', 'Abbas', 0, 'junior', 'mohamedmoustafa.mada@gmail.com', '01025676190', 'mohamedabbas97', '$2y$10$3BkjCsy0qC/FmvXUabriIuKFTQQQNJUVOaKBYV0b9cHfgopvr33cO', NULL, NULL, NULL, NULL, 2, '2024-02-29 09:40:46', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '710197', NULL, NULL, NULL, '2024-02-29 08:12:06', '2024-02-29 09:40:46', NULL),
(270, 'Mohamed', 'Abbas', 0, 'junior', 'mohamedabbasinnovations@gmail.com', '01025676195', 'abas97', '$2y$10$6ByrK4tzIaklb59J/RjKd.6FgKp5f/M8XciGJxDsCAxLrF6Alm1sy', NULL, NULL, NULL, NULL, 1, '2024-04-10 11:20:41', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '974042', NULL, NULL, NULL, '2024-02-29 09:41:21', '2024-04-10 11:20:41', NULL),
(271, 'azlef', 'med', 0, 'junior', 'wailazlef@gmail.com', '+213557270539', 'wail523', '$2y$10$t6f3R8TG/orzc77EQSUS9uu1ewaH6EoVOE7yMmFObD/zMbynbgqdm', NULL, NULL, NULL, NULL, 2, '2024-02-29 15:54:55', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '668039', NULL, NULL, NULL, '2024-02-29 14:22:49', '2024-02-29 15:54:55', NULL),
(272, 'Amaefula', 'Kenneth', 0, 'junior', 'princekenneth2354@gmail.com', '07042404521', 'Kennyme', '$2y$10$5E0XX61riJLt7Iresuxm2uqcLpO.POqEYgHhVBW1HiDxOZ5/Uxy3y', NULL, NULL, NULL, NULL, 2, '2024-02-29 15:30:51', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '716881', NULL, NULL, NULL, '2024-02-29 15:30:49', '2024-02-29 15:30:51', NULL),
(273, 'Dharvi', 'Sanghvi', 0, 'junior', 'dharvi.s@indianic.com', '9687312371', 'Dharvi', '$2y$10$BlANo0ss/BbidxjzS8gZ8ONo0M2ltHYjl33qAqVwGht3HAXcMJctC', NULL, NULL, NULL, NULL, 2, '2024-02-29 17:29:12', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '308152', NULL, NULL, NULL, '2024-02-29 17:25:44', '2024-02-29 17:29:12', NULL),
(274, 'mary', 'laty', 0, 'junior', 'mary@gmail.com', '07864538753', 'mary', '$2y$10$/sLed94zN9SNaUeOdmrJfOXt46NyT9w0S0esjgfmPpODMj3V1fEOO', NULL, NULL, NULL, NULL, 2, NULL, 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '465234', NULL, NULL, NULL, '2024-03-01 01:46:54', '2024-03-01 01:46:54', NULL),
(275, 'mary', 'laty', 0, 'junior', 'marlo@gmail.com', '07488855300', 'marlo', '$2y$10$iq4Q4gPpZt3P6ZlOqFMMaeE3HILLgP2ijhV4u5UNYV1wW7Jxj.2Ti', NULL, NULL, NULL, NULL, 2, NULL, 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '183209', NULL, NULL, NULL, '2024-03-01 01:48:29', '2024-03-01 01:48:29', NULL),
(276, 'Dharvi', 'Sanghvi', 0, 'junior', 'dharvisanghvi46@gmail.com', '9825341914', 'Dha', '$2y$10$kh3jGUGEw1A0ZD.4BgvQjuiuP3mtq19TqCgUjjprTSFoAN5Ejm67.', NULL, NULL, NULL, NULL, 2, '2024-03-01 15:39:55', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '771771', NULL, NULL, NULL, '2024-03-01 15:39:06', '2024-03-01 15:39:55', NULL),
(277, 'Uğur', 'Özşahin', 0, 'junior', 'ozsahinqreus@gmail.com', '+905305911886', 'ugurr', '$2y$10$PHDO8MwRYUmZOcgOQ8xz1eYeGrhwaeRxFYzctQne90LfM0GD02SXO', NULL, NULL, NULL, NULL, 1, '2024-03-01 16:19:11', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '169690', NULL, NULL, NULL, '2024-03-01 15:54:27', '2024-03-01 16:19:11', NULL),
(278, 'don', 'zigdon', 0, 'junior', 'sahar.zigdon@gmail.com', '8039159161', 'zigdons', '$2y$10$qPFFRhAKDdbwI/xvjzDaUuSDjNbGQ4TiGWQZM/WtXFYkP8fFObtk.', NULL, NULL, NULL, NULL, 1, '2024-03-01 22:47:32', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '566641', NULL, NULL, NULL, '2024-03-01 22:44:55', '2024-03-01 22:47:32', NULL),
(279, 'Derick', 'Asibabi', 0, 'junior', 'asibabiderick@gmail.com', '0741745675', 'sboyz', '$2y$10$Yt39MiUmGHssUdT4OQtRCOH6HJgcprD6WlWwSk5iLJooc0qL/xz/a', NULL, NULL, NULL, NULL, 2, '2024-03-02 12:42:26', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '242825', NULL, NULL, NULL, '2024-03-02 12:39:20', '2024-03-02 12:42:26', NULL),
(280, 'Jane', 'Speirs', 0, 'junior', 'j@elitepcservice.com', '9094301013', 'usernamex', '$2y$10$uA8K7c1JZFwl1tYLv24VIe4o0GXHe6OsNvfyVvD/X5hvItk4ucWre', NULL, NULL, NULL, NULL, 2, '2024-03-02 18:58:05', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '954339', NULL, NULL, NULL, '2024-03-02 18:57:14', '2024-03-02 18:58:05', NULL),
(281, 'Ross', 'Swanson', 0, 'junior', 'kotagasono@mailinator.com', '+1 (644) 816-7652', 'kokaqek', '$2y$10$b/EmQKt10727IpCCwewCV.nRVa6hnCjRHfJOEKsu0VQ11zTzPTkjO', NULL, NULL, NULL, NULL, 1, '2024-03-02 21:18:31', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '985805', NULL, NULL, NULL, '2024-03-02 21:17:09', '2024-03-02 21:18:31', NULL),
(282, 'Moiz', 'Khan', 0, 'junior', 'moizk3659@gmail.com', '3737383893', 'MoizKhan', '$2y$10$NSILaDB0FPBNUqj.zppXJ.gDpeELp00hSLLQ1OuLQvrMhV/JDxxLq', NULL, NULL, NULL, NULL, 2, NULL, 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '651207', NULL, NULL, NULL, '2024-03-02 22:14:31', '2024-03-02 22:14:31', NULL),
(283, 'Pankaj', 'Patra', 0, 'junior', 'patrapankaj36@gmail.com', '9933663838', 'pankaj27', '$2y$10$zhETCHxZs1mWO98mpX8PUePrd565mDfFWN8UFkm4gRaN27mrTPlS2', NULL, NULL, NULL, NULL, 2, '2024-03-02 22:31:23', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '800849', NULL, NULL, NULL, '2024-03-02 22:22:02', '2024-03-02 22:31:23', NULL),
(284, 'mariana', 'ana', 0, 'junior', 'mariana@gmail.com', '08244425622', 'mariana', '$2y$10$plWBj8GW2L04pDcNzrEi5OqveJKHcr3CsWRTA..3RKdqVRn6rsPDW', NULL, NULL, NULL, NULL, 2, '2024-03-02 22:26:56', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '247742', NULL, NULL, NULL, '2024-03-02 22:25:44', '2024-03-02 22:26:56', NULL),
(285, 'mariana', 'ana', 0, 'junior', 'gustiafernando08@gmail.com', '082444256889', 'mariana08', '$2y$10$rwjQiIHOUCwEHfJuWoGyqu6Q5HPI3dTLPN2LNBuQtn4V65RMg.E.O', NULL, NULL, NULL, NULL, 2, '2024-03-02 22:26:57', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '384979', NULL, NULL, NULL, '2024-03-02 22:26:56', '2024-03-02 22:26:57', NULL),
(286, 'fdgfdg', 'fdshgfdh', 0, 'junior', 'gfhdgfhgfd@gamil.com', '4534563464364', 'gfdhgdfhgfdh', '$2y$10$puIqJyaU0IGWFmXSUyf9v.3hEAvQHb11tF6xCMWU1S3hYsbck.FSK', NULL, NULL, NULL, NULL, 1, '2024-03-02 22:59:58', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '367448', NULL, NULL, NULL, '2024-03-02 22:58:52', '2024-03-02 22:59:58', NULL),
(287, '‪Youssef', 'Khkh‬‏', 0, 'junior', 'elex.tito50@gmail.com', '00000000000', 'dfgsdgdfgfd', '$2y$10$CWlwck6JELQKLSRRE2p3euTa2.bHHS2T1Ifwmah3DnSo/2Iy8m8XC', NULL, NULL, NULL, NULL, 1, '2024-03-02 23:12:08', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '605635', NULL, NULL, NULL, '2024-03-02 23:03:25', '2024-03-02 23:12:08', NULL),
(288, 'Mr', 'Tester', 0, 'junior', 'tester@tt.t', '1236547891', 'testerr', '$2y$10$PRxGNbxFbUDAL0peqQQR.u8Ce.Z6DIbVbdf4OzasI3/iAt4TMcNfK', NULL, NULL, NULL, NULL, 2, NULL, 1, 1, 0, 0, 1, NULL, '1', NULL, 0, NULL, NULL, NULL, '508514', NULL, NULL, NULL, '2024-03-03 10:49:17', '2024-03-03 10:49:46', NULL),
(289, 'md', 'redowan', 0, 'junior', 'mdredowan588@gmail.com', '01911650494', 'mdredowan588', '$2y$10$royO311T24/YuyLOPmHF3e7aBf8tMkDuFx3hDqiaM4Mea7.0JhnkW', NULL, NULL, NULL, NULL, 2, '2024-03-03 13:11:32', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '649125', NULL, NULL, NULL, '2024-03-03 13:11:30', '2024-03-03 13:11:32', NULL),
(290, 'Max', 'Truong', 0, 'junior', 'mtbuyer@mailnesia.com', '0987654321', 'mtbuyer', '$2y$10$1BTRzixWTe5oC48zlb4jYuciRCc3F5Tqy41cz0F4pR7Uf5WMk2Hca', NULL, NULL, NULL, NULL, 1, '2024-04-14 10:17:53', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '641616', NULL, NULL, NULL, '2024-03-03 20:05:01', '2024-04-14 10:17:53', NULL),
(291, 'Gjore', 'Dimov', 0, 'junior', 'contact@processin.mk', '+38971244660', 'stambol', '$2y$10$4Fa6vac7msqnz6vRHXIPQuaO6fFSU5QE3W2qy25qp31wi79kcA01i', NULL, NULL, NULL, NULL, 2, '2024-03-03 22:39:40', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '583903', NULL, NULL, NULL, '2024-03-03 22:33:47', '2024-03-03 22:39:40', NULL),
(292, 'VIMAL', 'RAMDIN', 0, 'junior', 'ramdinkavivimal@gmail.com', '7788635357', 'vramdin', '$2y$10$PVib5/K1O.Lc10zwWdpX8.AtwXHaFp5V91W4xSw82epPOywADqJvm', NULL, NULL, NULL, NULL, 1, '2024-03-04 02:06:12', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '369689', NULL, NULL, NULL, '2024-03-04 01:39:43', '2024-03-04 02:06:12', NULL),
(293, 'Адрей', 'Просужих', 0, 'junior', 'zimorodok75@mail.ru', '+79121740631', 'super_admin', '$2y$10$foL6Rl.7pSYfWxZDPMgY1uIFEOK2xuhyvgILVYV/tz94MYP8YFsdm', NULL, NULL, NULL, NULL, 2, '2024-04-22 11:45:45', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '635320', NULL, NULL, NULL, '2024-03-04 04:46:02', '2024-04-22 11:45:45', NULL),
(294, 'omar', 'zariah', 0, 'junior', 'omarzariah.dev@gmail.com', '+212708496863', 'adminfuzion', '$2y$10$xci67lqQ0ImV4WhAockrtOEfghokYngzUxeCKhJ3qVH140MT8mezq', NULL, NULL, NULL, NULL, 1, '2024-03-04 16:39:14', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '939481', NULL, NULL, NULL, '2024-03-04 16:37:20', '2024-03-04 16:39:14', NULL),
(295, 'wail', 'ùmed', 0, 'junior', 'waiflazlef@gmail.com', '0662053604', 'wail5234', '$2y$10$Y6n/KJvorWdRhOD6eVlcwerptxFs3g6UdpaQKkOhbHvnNZiomLDPa', NULL, NULL, NULL, NULL, 2, '2024-03-05 00:15:33', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '136179', NULL, NULL, NULL, '2024-03-05 00:14:54', '2024-03-05 00:15:33', NULL),
(296, 'wail', 'ùmed', 0, 'junior', 'azlefiskander@gmail.com', '0662053605', 'wail52342', '$2y$10$vSX.sG0V/bxS4c4LmiP8Aers3HgqPfxIGSOTvR2spQTAS8.wZ9aq.', NULL, NULL, NULL, NULL, 2, '2024-03-05 00:16:02', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '817483', NULL, NULL, NULL, '2024-03-05 00:15:33', '2024-03-05 00:16:02', NULL),
(297, 'knl', 'czxc', 0, 'junior', 'dasd@gmail.com', '3123123', 'jblkbl', '$2y$10$G6Deu2y4mrceIeIKGTdHbu5BH0//4s98nXrWp6txcCHDKO4WUG3ZS', NULL, NULL, NULL, NULL, 1, '2024-03-05 07:57:31', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '725242', NULL, NULL, NULL, '2024-03-05 07:56:58', '2024-03-05 07:57:31', NULL),
(298, 'marwan', 'mosleh', 0, 'junior', 'marwan.mosleh@gmail.com', '1111111', 'mmosleh', '$2y$10$L7qL5nVILpx9rzfv.jJ6Y.Xj6h5e6uAdSpuYSNYwsXkfKMSesjSo.', NULL, NULL, NULL, NULL, 2, '2024-03-05 12:43:28', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '434950', NULL, NULL, NULL, '2024-03-05 12:37:20', '2024-03-10 11:30:10', NULL);
INSERT INTO `users` (`id`, `first_name`, `last_name`, `hourly_rate`, `experience_level`, `email`, `phone`, `username`, `password`, `image`, `country_id`, `state_id`, `city_id`, `user_type`, `check_online_status`, `check_work_availability`, `user_active_inactive_status`, `user_verified_status`, `is_suspend`, `terms_condition`, `about`, `is_email_verified`, `google_2fa_secret`, `google_2fa_enable_disable_disable`, `google_id`, `facebook_id`, `github_id`, `email_verify_token`, `firebase_device_token`, `email_verified_at`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(299, 'Ezel', 'Bayraktar', 0, 'junior', 'Ezelinhobayraktar@gmail.com', '0784512848769484648', 'Ezelbayraktar', '$2y$10$Q2DBxBp3PcTd7J.oDAXyUeiTmGYIU5B/m24VFr5WXMR7LNbsoOnLy', NULL, NULL, NULL, NULL, 2, '2024-03-05 17:14:42', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '848773', NULL, NULL, NULL, '2024-03-05 17:14:41', '2024-03-05 17:14:42', NULL),
(300, 'el', 'pav', 0, 'junior', 'epavlitsa@ied.eu', '+302410234422', 'ELpAN', '$2y$10$7M2T1f0ieGnScKtVf55uuelmsssSJAGy4hd1HgiPpb0i0NX.YAnom', NULL, NULL, NULL, NULL, 1, '2024-03-05 19:44:23', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '544541', NULL, NULL, NULL, '2024-03-05 19:41:59', '2024-03-05 19:44:23', NULL),
(301, 'raghad', 'akram', 0, 'junior', 'raghad91194@gmail.com', '31335530', 'raghad911', '$2y$10$DmYhuRorZEje5HYAz7P1SeoKwJL1whkRsJxBVGUc7W0U7N6pD46eO', NULL, NULL, NULL, NULL, 2, NULL, 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '919952', NULL, NULL, NULL, '2024-03-06 09:23:58', '2024-03-06 09:23:58', NULL),
(302, 'Jahangir', 'Hakro', 0, 'junior', 'jhakro6@gmail.com', '03343649624', 'hakro786', '$2y$10$fkHSEhQu.LwPQoikJOn6H.x/wrKa5FQtksFJVVdT7yd93SIn.qJKS', NULL, NULL, NULL, NULL, 2, '2024-03-06 11:09:37', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '498691', NULL, NULL, NULL, '2024-03-06 11:06:43', '2024-03-06 11:09:37', NULL),
(304, 'talat', 'koç', 0, 'junior', 'dorlef644@gmail.com', '05374853102', 'talatk0c', '$2y$10$nMbEyABzmYIty5Tgu5o7num9MbDukfopFG5bQoJ40PBbAhdaCD6FK', NULL, NULL, NULL, NULL, 2, '2024-03-06 20:22:03', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '939810', NULL, NULL, NULL, '2024-03-06 19:44:49', '2024-03-06 20:22:03', NULL),
(305, 'yuns', 'yuns33', 0, 'junior', 'gkxtyyssqq@gmail.com', '772845593', 'yuns772', '$2y$10$1f9mn1RyHuOCF057EvPqmeBOO13R4zvzUubnOq6WZCLcUta5vNmxm', NULL, NULL, NULL, NULL, 2, NULL, 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '139127', NULL, NULL, NULL, '2024-03-06 23:37:31', '2024-03-06 23:37:31', NULL),
(306, 'Arthur', 'Miller', 0, 'junior', 'toviqu@mailinator.com', '+1 (853) 552-6274', 'wixafaqo', '$2y$10$pLrjEEyIQNoQg3k.18e1lO7jPAt8CMHqpX1OWNH/8LpouEGubEPaa', NULL, NULL, NULL, NULL, 1, '2024-03-07 02:05:15', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '674418', NULL, NULL, NULL, '2024-03-07 02:04:06', '2024-03-07 02:05:15', NULL),
(307, 'Sohan', 'Islam', 0, 'junior', 'sohan.riseuplabs@gmail.com', '01774286074', 'Sohan', '$2y$10$Q51jS3Y809jaiM2dyT0fZOOATEHxXBum1nkwMcTMuFoSiiNNfSutO', NULL, NULL, NULL, NULL, 1, '2024-03-07 09:35:27', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '670319', NULL, NULL, NULL, '2024-03-07 09:30:50', '2024-03-07 09:35:27', NULL),
(308, 'jhay', 'Eleydo', 0, 'junior', 'pinoycurl@gmail.com', '0551349143', 'jhay5556', '$2y$10$2MeLc0V6Vr1Rr9f1VtiU9.BCB4i7O8.joa.tlrFMqIDLUH3k6bd7K', NULL, NULL, NULL, NULL, 2, '2024-03-08 21:26:41', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '913623', NULL, NULL, NULL, '2024-03-08 19:42:31', '2024-03-08 21:26:41', NULL),
(309, 'James', 'Houenou', 0, 'junior', 'houenoujames@gmail.com', '226 54 15 77 77', 'houenoujames', '$2y$10$2m9VTP4jhjD77bTZj5QSRO.jGU/f7izwgbOtOfQDX.eRNol9E87i6', NULL, NULL, NULL, NULL, 2, NULL, 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '808734', NULL, NULL, NULL, '2024-03-09 01:41:58', '2024-03-09 01:41:58', NULL),
(310, 'muhammad', 'talha', 0, 'junior', 'graphihubislamabad@gmail.com', '03325188771', 'admin12', '$2y$10$F6a/ItStYuMX4IvSJpv7IeOjVt39UHa47UfOnnas8LCrqmcmhBmB6', NULL, NULL, NULL, NULL, 1, '2024-03-10 00:28:33', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '745687', NULL, NULL, NULL, '2024-03-09 23:10:58', '2024-03-10 00:28:33', NULL),
(311, 'Nazmul Hoque', 'Nazmul Hoque', 0, 'junior', 'najmulhaque01@gmail.com', NULL, 'fb_najmulhaque01', '$2y$10$fG7iOQI71YTfSVe9fdx38e.SmQ5GldhOK9KF/VkzisUTh2H8ZQ8yW', NULL, NULL, NULL, NULL, 1, '2024-03-10 17:24:52', 1, 1, 0, 0, 1, NULL, '1', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-10 16:55:04', '2024-03-10 17:24:52', NULL),
(312, 'umair', 'ali', 0, 'junior', 'umairali2k181@gmail.com', '03098929098', 'umairali2k181', '$2y$10$nqKZEnAHUw7aIJYQSegJz.not/V1DV0pJrZ2M6jGut5YLjUKgjK52', NULL, NULL, NULL, NULL, 2, NULL, 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '802573', NULL, NULL, NULL, '2024-03-12 08:41:49', '2024-03-12 08:41:49', NULL),
(313, 'Umair', 'ali', 0, 'junior', 'umairali2k1811@gmail.com', '+923098929098', 'umairali2k1811', '$2y$10$cbRKSGwei7Mm2lel7Idnf.zjV6h1k3/2r.5XuGDVyRfbxSAFJiK32', NULL, NULL, NULL, NULL, 2, NULL, 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '742728', NULL, NULL, NULL, '2024-03-12 08:44:46', '2024-03-12 08:44:46', NULL),
(314, 'Aleksandr', 'Trachyk', 0, 'junior', 'sniper62899@gmail.com', '48 697345991', 'Alex', '$2y$10$cbhA1Lrsqoa7e0pcdwPVfu/CIebU1UeJrAthcT4hvqZpF0zK36uwG', NULL, NULL, NULL, NULL, 2, '2024-03-12 12:29:52', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '485200', NULL, NULL, NULL, '2024-03-12 12:26:14', '2024-03-12 12:29:52', NULL),
(315, 'pankaj', 'nishad', 0, 'junior', 'care.fistmoney@gmail.com', '8808471608', 'ppower', '$2y$10$tidW6iSu0AaDownrZ244V.zJa027msANCOzgUz2MnYWJ3Hm18WBwi', NULL, NULL, NULL, NULL, 2, NULL, 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '668968', NULL, NULL, NULL, '2024-03-12 15:01:42', '2024-03-12 15:01:42', NULL),
(316, 'pankaj', 'nishad', 0, 'junior', 'care.panrox@gmail.com', '9005947019', 'powerp', '$2y$10$qUcav9b53GdcOk/02OilJuiD8pDZWloXSMa4A5jFhq3.kV68xigte', NULL, NULL, NULL, NULL, 2, NULL, 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '502920', NULL, NULL, NULL, '2024-03-12 15:02:37', '2024-03-12 15:02:37', NULL),
(317, 'test', 'test', 0, 'junior', 'admin@admin.com', '+905525287286', 'admin123', '$2y$10$vn2SA0mbvlqlD6FjyOWzzOktbEPmbSRnqwRsAAVocpjdWYMMxVwTK', NULL, NULL, NULL, NULL, 1, '2024-03-12 16:44:21', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '446329', NULL, NULL, NULL, '2024-03-12 16:44:10', '2024-03-12 16:44:21', NULL),
(318, 'Muhannad', 'Al Hasani', 0, 'junior', 'mhnddev@gmail.com', '95552556', 'Muhannad511', '$2y$10$WmkstUSPmirXvkjz8.h.CeBeKvxVn/BJrRmhLN5A1pOiXohaBH5qy', NULL, NULL, NULL, NULL, 1, '2024-03-13 13:33:11', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '630960', NULL, NULL, NULL, '2024-03-13 13:32:10', '2024-03-13 13:33:11', NULL),
(319, 'ffff', 'ffff', 0, 'junior', 'fff@fff.ff', '3333333', 'fff', '$2y$10$vi5MR6C3PJu.k/7HDCmT6OFKwuGjOBQCNex5uAADSb/0blTeZJv7y', NULL, NULL, NULL, NULL, 2, NULL, 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '969582', NULL, NULL, NULL, '2024-03-14 12:08:44', '2024-03-14 12:08:44', NULL),
(320, 'peshawari', 'shoes', 0, 'junior', 'dankaleek@gmail.com', '29348923984234', 'peshawarishoes', '$2y$10$rpXlUvDc4A8NiVl3n28Mm.Uduju9AP4.apE8qggKkKM9brGSyV9RK', NULL, NULL, NULL, NULL, 2, '2024-03-14 13:12:39', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '836543', NULL, NULL, NULL, '2024-03-14 12:53:41', '2024-03-14 13:12:39', NULL),
(321, 'Nilesh', 'Sonawane', 0, 'junior', 'Nileshsonawanen1@gmail.com', '9075881595', 'freelancers', '$2y$10$2LSOsLXOemzEG7/Bp32uCu6xA.NFUBoaldHqXSmR/ZPQ/vC8RsVHi', NULL, NULL, NULL, NULL, 2, '2024-03-15 13:29:28', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '456879', NULL, NULL, NULL, '2024-03-15 12:38:49', '2024-03-15 13:29:28', NULL),
(322, 'mahmoud', 'younes', 0, 'junior', '011damascus011@gmail.com', '0963993365528', 'mahmoudyounes2002', '$2y$10$gwdNFOVTOG//g.DjgW8CVurN4uTiNXA8KNYvBNtQsfQec9KTETH5.', NULL, NULL, NULL, NULL, 2, '2024-03-15 16:22:17', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '413538', NULL, NULL, NULL, '2024-03-15 16:06:07', '2024-03-15 16:22:17', NULL),
(323, 'fouzii', 'zouagri', 0, 'junior', 'fouzizouagri14@gmail.com', '0612456398', 'fzouagri', '$2y$10$FSY4m1qGIuRV7ZyTjhtVeOw4ujQO4B3zLd/mzTEu6NXSYvS.VpL3G', NULL, NULL, NULL, NULL, 2, '2024-03-16 07:16:36', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '431127', NULL, NULL, NULL, '2024-03-16 07:14:17', '2024-03-16 07:16:36', NULL),
(324, 'philip', 'clode', 0, 'junior', 'philipicloud22@gmail.com', '0814112767', 'philipiclod', '$2y$10$6vAFSK04fkSAURz3hIzN2uF2A6.JxGC3RCdfPSiI99AqZ3kt2uvU6', NULL, NULL, NULL, NULL, 1, '2024-03-16 09:49:07', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '650768', NULL, NULL, NULL, '2024-03-16 09:39:05', '2024-03-16 09:49:07', NULL),
(325, 'beso', 'jjj', 0, 'junior', 'jawishbassam@gmail.com', '+963953524651', 'beso', '$2y$10$UMgYEDYT2teUNV94E417ROFZ/dxSfpkuaHoYZFw/i78X4W48KBvgW', NULL, NULL, NULL, NULL, 2, '2024-03-17 18:18:49', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '659857', NULL, NULL, NULL, '2024-03-17 16:16:42', '2024-03-17 18:18:49', NULL),
(326, 'asad', 'ali', 0, 'junior', 'info@sociallink.pk', '03076192393', 'Mbabar132', '$2y$10$qVvZ9Y.b95NHA6TZBeki8OkHT2AsidMnT6hglNu6uHuo350JiqRze', NULL, NULL, NULL, NULL, 1, '2024-03-17 17:25:37', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '945013', NULL, NULL, NULL, '2024-03-17 17:20:57', '2024-03-17 17:25:37', NULL),
(327, 'test', 'name', 0, 'junior', 'testuser@yopmail.com', '98989898', 'testuser90', '$2y$10$wEVC/whIq7Z.mfI2aPBV2esq7XSi.f5UXzdEQgU9Ai6tEN99ruVSG', NULL, NULL, NULL, NULL, 1, '2024-03-18 23:56:33', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '305272', NULL, NULL, NULL, '2024-03-18 23:55:11', '2024-03-18 23:56:33', NULL),
(328, 'test', 'user', 0, 'junior', 'shoaib.octachat@gmail.com', '788888888888', 'testuser900', '$2y$10$ubKUPgo1jZYX2Fe4OHYoauUG2qvo3denF/cRvhuzB/M4dLBM.YF6W', NULL, NULL, NULL, NULL, 1, '2024-03-19 00:03:44', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '280039', NULL, NULL, NULL, '2024-03-18 23:57:31', '2024-03-19 00:03:44', NULL),
(329, 'zebi', 'shah', 0, 'junior', 'zebi@gmail.com', '22222222', 'zebi', '$2y$10$./fbSL8kzxqSwBDf952IBuXC.MPB3wxJG.MIyI01pBjxxBjZeTrBO', NULL, NULL, NULL, NULL, 1, '2024-03-19 11:39:09', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '179974', NULL, NULL, NULL, '2024-03-19 11:37:35', '2024-03-19 11:39:09', NULL),
(330, 'zebi', 'shah', 0, 'junior', 'shahzebaliawan49@gmail.com', '222222222', 'zebii', '$2y$10$aDwyhqizYWYrTy9EzWbfM.UT7eKTmSVvd8vTWQErKnVY3De/dVUOi', NULL, NULL, NULL, NULL, 1, '2024-03-19 11:39:11', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '488084', NULL, NULL, NULL, '2024-03-19 11:39:09', '2024-03-19 11:39:11', NULL),
(331, 'An', 'An', 0, 'junior', 'anvn161@gmail.com', '+84934634156', 'annn', '$2y$10$vd6BT21uHNITRnAEnYEmSeDuZFqmeiFhuiFKpvtQTuc/aL0dDmZCG', NULL, NULL, NULL, NULL, 2, '2024-03-20 00:46:17', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '625455', NULL, NULL, NULL, '2024-03-20 00:43:12', '2024-03-20 00:46:17', NULL),
(332, 'aaaa', 'ddddd', 0, 'junior', 'mas.art.new@gmail.com', '0000200000', 'artemq', '$2y$10$87.7zVcGlOoxAEv8ZDcSQ.XN6PI3dZ3.m4zZuAaDc/JdKfZu/Jbaa', NULL, NULL, NULL, NULL, 1, '2024-03-21 01:45:16', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '714711', NULL, NULL, NULL, '2024-03-21 01:44:22', '2024-03-21 01:45:16', NULL),
(333, 'aba', 'dva', 0, 'junior', 'ababke@gmail.com', '+251627373', 'ababa', '$2y$10$f.wVQ3qH61qHX80E5UzA7.ErnJOvIStB4h8Mlpiy5lDXlPxZDxPHa', NULL, NULL, NULL, NULL, 2, '2024-03-21 12:50:23', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '128593', NULL, NULL, NULL, '2024-03-21 12:49:33', '2024-03-21 12:50:23', NULL),
(334, 'aba', 'dva', 0, 'junior', 'abakebe19@gmail.com', '+2516273732', 'ababaa23', '$2y$10$nknVb332JxCM.W7lfuePwuKzfBSmAk4O93pUucemhL4.z6bXTxpaW', NULL, NULL, NULL, NULL, 2, '2024-03-21 12:51:08', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '239105', NULL, NULL, NULL, '2024-03-21 12:50:23', '2024-03-21 12:51:08', NULL),
(335, 'Guyot Stanley', 'RAHARINORO', 0, 'junior', 'guyotstanley7@gmail.com', '0327886999', 'Stanley206', '$2y$10$3vOG/1cPxZ/W/jBUFmeF4.JN/grY9dgo2BLuZeROiX3dLnLkzbjfG', NULL, NULL, NULL, NULL, 2, '2024-03-21 16:14:56', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '585923', NULL, NULL, NULL, '2024-03-21 16:05:01', '2024-03-21 16:14:56', NULL),
(336, 'Evgeniia', 'Romanenko', 0, 'junior', 'evgeniia.romanenko@greenice.net', '0506405502', 'Evgeniia', '$2y$10$Vvug3TwPi7iKuTnGlcOAze90SoEB8VOsqRnRlqqn5yLeZGQ7gBBAS', NULL, NULL, NULL, NULL, 1, '2024-03-21 17:31:21', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '796665', NULL, NULL, NULL, '2024-03-21 16:56:09', '2024-03-21 17:31:21', NULL),
(337, 'Evgeniia', 'Romanenko', 0, 'junior', 'romanenko22romanenko@gmail.com', '0506405503', 'romanenko', '$2y$10$EGW9mbrq47B1DTDWswCueua3DhnQWTj.Kg9bH9o/HgZB6zhoQtxeK', NULL, NULL, NULL, NULL, 2, '2024-03-21 18:27:54', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '374873', NULL, NULL, NULL, '2024-03-21 17:33:34', '2024-03-21 18:27:54', NULL),
(338, 'Md', 'Ratan', 0, 'junior', 'xoceco3376@sentrau.com', '08521555', 'Ratan', '$2y$10$/fA3/qHlhfzqYNbzlW4A7ea5Z2yji.fzlwt1vsc6tXBZYA34tdqSK', NULL, NULL, NULL, NULL, 2, '2024-03-23 04:12:18', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '324822', NULL, NULL, NULL, '2024-03-23 04:09:58', '2024-03-23 04:12:18', NULL),
(339, 'Test', 'last', 0, 'junior', 'test24@gmail.com', '82937972329732', 'test24', '$2y$10$95Qo6pcYtN1LmmOzMltW1uPKHm.f0RbeDTs7/7uUU2CBXhYDav7P.', NULL, NULL, NULL, NULL, 2, '2024-03-23 13:17:37', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '923069', NULL, NULL, NULL, '2024-03-23 13:16:24', '2024-03-23 13:17:37', NULL),
(340, 'Mudassar', 'Malik', 0, 'junior', 'mudassarmalik4046@gmail.com', '8327897433', 'Mudassar', '$2y$10$.zRPXc/iCATKdTKZCLQdVuV/XKVMaohb8a7lchWoh10OrdOtS0RSC', NULL, NULL, NULL, NULL, 2, '2024-03-23 13:28:52', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '930345', NULL, NULL, NULL, '2024-03-23 13:17:37', '2024-03-23 13:28:52', NULL),
(341, 'Alamgir', 'Kabir', 0, 'junior', 'kabir4c@gmail.com', '0500244266', 'coderlity', '$2y$10$7M80TbNhMWxp/JO1yNBA9.qaK9O3vRx0FK2zT7I.3IVmjZ2PUdBg2', NULL, NULL, NULL, NULL, 2, '2024-03-24 06:19:42', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '956546', NULL, NULL, NULL, '2024-03-24 06:18:30', '2024-03-24 06:19:42', NULL),
(342, 'test1', 'test1', 0, 'junior', 'anulaherath00@gmail.com', '0123456789', 'test1', '$2y$10$tJDOoZqxPlE1N2untsiPzeaU4SpkdHrY03FQkpQJg8/gHCWU1iOEi', NULL, NULL, NULL, NULL, 2, '2024-03-24 14:01:17', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '867922', NULL, NULL, NULL, '2024-03-24 13:57:53', '2024-03-24 14:01:17', NULL),
(343, 'test', 'test', 0, 'junior', 'designpyc@gmail.com', '01234567890', 'test123', '$2y$10$7kIWAheMV896VSwmCzM8uup1RvcxpXiHtVVR5NP74.kCcyHCdV0gu', NULL, NULL, NULL, NULL, 1, '2024-03-24 16:13:39', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '842789', NULL, NULL, NULL, '2024-03-24 16:13:05', '2024-03-24 16:13:39', NULL),
(344, 'Ilia', 'Zakharov', 0, 'junior', 'zackharoff@gmail.com', '+34957777777', 'zackharoff', '$2y$10$1EjcaaAgJ6mg65aNYsbXVep/b0SUoh2j2uLZd2sbDagJaw.05eyWC', NULL, NULL, NULL, NULL, 1, '2024-03-24 23:50:56', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '942990', NULL, NULL, NULL, '2024-03-24 23:49:05', '2024-03-24 23:50:56', NULL),
(345, 'MUHAMMED JAMIU', 'ABDULWAHEED', 0, 'junior', 'abdulquwamz@gmail.com', '08062090367', 'Jquan', '$2y$10$BxC.G1uGooCVEnXMv5gxyuq9zp51QDYervUDT9Lwvlw5ElhbUEWTO', NULL, NULL, NULL, NULL, 2, '2024-03-25 05:36:57', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '370251', NULL, NULL, NULL, '2024-03-25 04:39:09', '2024-03-25 05:36:57', NULL),
(346, 'Chastity', 'Berry', 0, 'junior', 'fafubeh@mailinator.com', '+1 (599) 502-6305', 'tokodi', '$2y$10$SHqYxjg.uzCx0HHE5FS7t.etIQXw5.wGQrFjj6bOyhZRGt4ZTtX4K', NULL, NULL, NULL, NULL, 2, '2024-03-25 08:01:48', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '292507', NULL, NULL, NULL, '2024-03-25 07:52:03', '2024-03-25 08:01:48', NULL),
(347, 'antony', 'obegi', 0, 'junior', 'samuelmarks222@gmail.com', '0795 107754', 'obesg347', '$2y$10$lyiRrYuP9DngO7euc7r6XufrNNCXUvAOLMf8LijvBJRYhLJL6Rov6', NULL, NULL, NULL, NULL, 2, '2024-03-31 01:54:06', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '866543', NULL, NULL, NULL, '2024-03-25 20:40:02', '2024-03-31 01:54:06', NULL),
(348, 'John', 'Holmes', 0, 'junior', 'augppucrf@mozmail.com', '45647564', 'holmes101', '$2y$10$YYn39IgG0GKJMskQJVkLCeofIdm7r.nQwrfsyp6iUDWISJ/xNxPUa', NULL, NULL, NULL, NULL, 2, '2024-03-26 00:34:00', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '390541', NULL, NULL, NULL, '2024-03-26 00:30:22', '2024-03-26 00:34:00', NULL),
(349, 'Ayuk Ndip', 'Arrey Ntoh', 0, 'junior', 'texadigital@gmail.com', '680105784', 'texa', '$2y$10$jCJ6EBTRb4wvnt18cwGYz.IDFWLWYzZhK1ZEpLaAwfeqOIa3jIUPi', NULL, NULL, NULL, NULL, 1, '2024-03-26 09:54:26', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '952950', NULL, NULL, NULL, '2024-03-26 09:47:51', '2024-03-26 09:54:26', NULL),
(350, 'Dustin', 'Russo', 0, 'junior', 'caqopo@mailinator.com', '+1 (606) 784-7892', 'hexohuwuj', '$2y$10$j/WbMAXYT5TiNbd5VQgfh.F11MP0zwbt3RoNq01yCQtrzBkDS.gO6', NULL, NULL, NULL, NULL, 1, '2024-03-26 16:36:43', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '348607', NULL, NULL, NULL, '2024-03-26 15:42:58', '2024-03-26 16:36:43', NULL),
(351, 'Amadou', 'Fall', 0, 'junior', 'amadoufinances@gmail.com', '772543344', 'amadoufaitduyt', '$2y$10$IHVxzCmQQm5oKWmR21Je8.5cRy2kllHfpq7.5xLyF9Gc5C0OTGi6y', NULL, NULL, NULL, NULL, 2, '2024-03-27 03:35:48', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '340101', NULL, NULL, NULL, '2024-03-27 03:28:31', '2024-03-27 03:35:48', NULL),
(352, 'Ali', 'Mutasal', 0, 'junior', 'ali.mutasal@gmail.com', '0852947777777', 'alimutasal', '$2y$10$eS0sF9QYkpreQxYnYgJ3guJR8ssCU3Lxzrxe4DyilKcGn8yuaIMju', NULL, NULL, NULL, NULL, 2, '2024-03-28 08:12:50', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '275434', NULL, NULL, NULL, '2024-03-27 14:59:36', '2024-03-28 08:12:50', NULL),
(353, 'aqib', 'ali', 0, 'junior', 'waqaraqib8@gmail.com', '03229866108', 'sfsafaf', '$2y$10$AVSU93GA6xb7r9CD5F6FM.8.RJ.mgACL/30wR6gF3RmJYe5lduH5y', NULL, NULL, NULL, NULL, 1, '2024-03-27 19:09:37', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '807760', NULL, NULL, NULL, '2024-03-27 19:08:02', '2024-03-27 19:09:37', NULL),
(354, 'Ali', 'Mutasal', 0, 'junior', 'mutasal.ali@gmail.com', '085783900739', 'mutasalali', '$2y$10$XQDx9MljtXSxyCUBg3Cz3e7JjSikj9nhlcIZTh9JRTglya8MNKSxm', NULL, NULL, NULL, NULL, 2, '2024-03-28 08:31:04', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '379488', NULL, NULL, NULL, '2024-03-28 08:06:09', '2024-03-28 08:31:04', NULL),
(355, 'Ramim', 'Ahammad', 0, 'junior', 'hello.ramimahammad@gmail.com', '01828145688', 'ramimahammad', '$2y$10$g2CLDDsgUr2kLw0lKfHIweamltEDWPIMbjrY2shbM5x5e19iDVBGa', NULL, NULL, NULL, NULL, 2, '2024-03-28 09:54:14', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '319940', NULL, NULL, NULL, '2024-03-28 09:03:45', '2024-03-28 09:54:14', NULL),
(356, 'Sakin', 'Hasan Ovi', 0, 'junior', 'oopsflix@gmail.com', '01744652427', 'boneshop', '$2y$10$O2ih4/mlVtVU0HP9c1EzTOY8buCSI4kXgB3ehDJEYyuywx5Zg0AYe', NULL, NULL, NULL, NULL, 1, '2024-03-28 09:42:19', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '923366', NULL, NULL, NULL, '2024-03-28 09:40:08', '2024-03-28 09:42:19', NULL),
(357, 'Ali', 'nabeel', 0, 'junior', 'omaimanabeel0@gmail.com', '0771224101', 'ALI', '$2y$10$Jck/Hnh22/a5EiOH4cyv0OaHQzjQOaH.w1B06SD3V4cSSL7THwHmm', NULL, NULL, NULL, NULL, 2, '2024-03-28 16:28:07', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '196579', NULL, NULL, NULL, '2024-03-28 16:20:05', '2024-03-28 16:28:07', NULL),
(358, 'John', 'Zedir', 0, 'junior', 'officialjzent@gmail.com', '0727788982', 'jzedir', '$2y$10$4OhzX9lBAlNa7kVKOSu1IeZWmn5B2RQ136UhMpJE4k92axnvRHPha', NULL, NULL, NULL, NULL, 2, '2024-03-29 02:28:09', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '977504', NULL, NULL, NULL, '2024-03-29 02:22:36', '2024-03-29 02:28:09', NULL),
(359, 'prashant', 'soni', 0, 'junior', 'prashantbloommedia@gmail.com', '9098329847', 'prashant27', '$2y$10$1U/KQXFV3bP2iB7bRVaF7.HIA8u8ong2dHThYPeAipjwtheQ5tKve', NULL, NULL, NULL, NULL, 2, '2024-03-29 09:33:05', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '984236', NULL, NULL, NULL, '2024-03-29 09:27:31', '2024-03-29 09:33:05', NULL),
(360, 'prashant', 'soni', 0, 'junior', 'prashant27dangare@gmail.com', '9644958751', 'prashant27dangare', '$2y$10$Es/B7yf/WMSVM1HbWJuMz.kiyR6TYu5BFMH6MGyJDyhp5c9dMWYO.', NULL, NULL, NULL, NULL, 2, '2024-03-29 10:05:13', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '431168', NULL, NULL, NULL, '2024-03-29 09:34:15', '2024-03-29 10:05:13', NULL),
(361, 'S A Malindu', 'Praboda', 0, 'junior', 'samalinaboda@gmail.com', '+94769239984', 'samalindupraboda', '$2y$10$HDf327ryQAyjR7Ah3ZSqEOdirwXHx9iuThPYq6YOpmYJqxc9pukcu', NULL, NULL, NULL, NULL, 1, '2024-03-29 09:42:38', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '788895', NULL, NULL, NULL, '2024-03-29 09:42:23', '2024-03-29 09:42:38', NULL),
(362, 'dfsdf', 'sdfsd', 0, 'junior', 'dev@aronwebsolutions.com', '07206489374', 'dev123', '$2y$10$QqOAE7igW1eImCvT809i2.WaQTA0SntjW0Bw75as1GX46VzRcJDfe', NULL, NULL, NULL, NULL, 1, '2024-04-01 16:22:06', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '763707', NULL, NULL, NULL, '2024-03-29 11:04:26', '2024-04-01 16:22:06', NULL),
(363, 'dheeraj', 'vyas', 0, 'junior', 'dheerajblog2@gmail.com', '7023867178', 'dheerajblog2', '$2y$10$SsvirSugObXzNH260nzlTOTQSOJHx9gjQLKFTv.oroRci.XrsgY2q', NULL, NULL, NULL, NULL, 2, '2024-03-29 17:00:38', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '156155', NULL, NULL, NULL, '2024-03-29 16:57:12', '2024-03-29 17:00:38', NULL),
(364, 'rohan', 'kumar', 0, 'junior', 'aman@gmai.com', '131212312312', 'rohan', '$2y$10$k16EYrRyCde4oioDJRxcbuPAbJFGAfrmdGYx6V.dc9Tn7833QfdO6', NULL, NULL, NULL, NULL, 2, '2024-03-29 18:15:48', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '137324', NULL, NULL, NULL, '2024-03-29 18:15:14', '2024-03-29 18:15:48', NULL),
(365, 'rohan', 'kumar', 0, 'junior', 'ceyadic621@storesr.com', '12121212', 'rohankumar', '$2y$10$KxQpHPaSyqyTsZB9lVI41OqWcvekRQZhTus6EL6C.S7tP2LbUmLAG', NULL, NULL, NULL, NULL, 2, '2024-03-29 18:35:56', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '256508', NULL, NULL, NULL, '2024-03-29 18:18:00', '2024-03-29 18:35:56', NULL),
(366, 'Christopher', 'Vagalia', 0, 'junior', 'christopher.vagalia@atopng.com', '76275502', 'cvagalia', '$2y$10$sAEFT0SrEHv/la56Hizz4OgE25xaq.KBYTB3pfa9vEbhsZ5.CzaxO', NULL, NULL, NULL, NULL, 1, '2024-03-30 07:06:11', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '615274', NULL, NULL, NULL, '2024-03-30 07:03:39', '2024-03-30 07:06:11', NULL),
(367, 'kokila', 'priya', 0, 'junior', 'kokilapriyadhana@gmail.com', '7708165218', 'kokila', '$2y$10$ITVhUjU4qz6u8OsopGmbHeQMkaByUQb1aOcQMSLfUvnEEWPTHk5xe', NULL, NULL, NULL, NULL, 1, '2024-03-30 10:38:26', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '607170', NULL, NULL, NULL, '2024-03-30 09:47:56', '2024-03-30 10:38:26', NULL),
(368, 'Barjees', 'Babar', 0, 'junior', 'divine.rapier8599@gmail.com', '+923154511478', 'babarjees', '$2y$10$yy9JLlsYYH12N30n8Dz7/eQe/GWNkgmVCkBp1Gf12k9TUflseeC0i', NULL, NULL, NULL, NULL, 1, '2024-03-30 22:25:10', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '343318', NULL, NULL, NULL, '2024-03-30 22:22:51', '2024-03-30 22:25:10', NULL),
(369, 'S', 'G', 0, 'junior', 'g@gmail.com', '0717', 'SS', '$2y$10$Sy9UJ/qDz1KpUcqmxAL/ie33ZfsvNvxjCc1/pjjONP1qXJxNhKJNa', NULL, NULL, NULL, NULL, 2, '2024-03-31 13:56:54', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '629887', NULL, NULL, NULL, '2024-03-31 13:53:54', '2024-03-31 13:56:54', NULL),
(370, 'sagi', 'test', 0, 'junior', 'sagi.hirsh@gmail.com', '984834434', 'sagitest', '$2y$10$DIx5j9g9ae0vhNzwIhmrOe3ZhfxpnZ4b6fQBUb68yoeZIVv7BlYyS', NULL, NULL, NULL, NULL, 1, '2024-03-31 15:58:21', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '790752', NULL, NULL, NULL, '2024-03-31 15:53:03', '2024-03-31 15:58:21', NULL),
(371, 'John', 'Travolta', 0, 'junior', 'johntravolta@gmail.com', '5541995354223', 'johntravolta@gmail.com', '$2y$10$yrqItAvJL8dXqtjCwP5bm.oyKu6nAm9lWpFs.W12UcpdPXgo7uvju', NULL, NULL, NULL, NULL, 2, '2024-04-01 04:43:31', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '954382', NULL, NULL, NULL, '2024-04-01 04:42:47', '2024-04-01 04:43:31', NULL),
(372, 'John', 'Travolta', 0, 'junior', 'juan@leadstack.com.br', '5541995354223343423', 'juan@leadstack.com.br', '$2y$10$bHMRbJpXIZczKxMnFPKAKuKdljI3I5LZiOK2k6OOGsIIyBF8poNT2', NULL, NULL, NULL, NULL, 2, '2024-04-01 04:44:52', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '249252', NULL, NULL, NULL, '2024-04-01 04:43:31', '2024-04-01 04:44:52', NULL),
(373, 'fgjngh', 'jtuj', 0, 'junior', 'userdemo@gmail.com', '01828145685', 'userdemo', '$2y$10$gho1bVxq5XNUmxOb8GB75OIzzE9WvuV01aE4z//YYBToJ0TN8Augm', NULL, NULL, NULL, NULL, 2, '2024-04-01 19:23:37', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '728168', NULL, NULL, NULL, '2024-04-01 19:19:18', '2024-04-01 19:23:37', NULL),
(374, 'Kim', 'kim', 0, 'junior', 'kim@yopmail.com', '1234567899', 'kim', '$2y$10$I6XPgmYGXOSBpBoLAqZZ4ufF2fQEcqWIQJd.yZ.d.IHjLbDBwAIYS', NULL, NULL, NULL, NULL, 2, '2024-04-02 09:12:08', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '389360', NULL, NULL, NULL, '2024-04-02 09:08:43', '2024-04-02 09:12:08', NULL),
(375, 'Chider', 'Emm', 0, 'junior', 'chidexco291@gmail.com', '09076589855', 'chidexco', '$2y$10$cTpNuwO6tDTIioG6keHBt.1rgzQDPSTYOy6KCvTj0Hic3N24v5AZS', NULL, NULL, NULL, NULL, 2, '2024-04-02 18:54:31', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '933551', NULL, NULL, NULL, '2024-04-02 18:46:20', '2024-04-02 18:54:31', NULL),
(376, 'akash', 'das', 0, 'junior', 'wabakash99@gmail.com', '01786590260', 'admin909', '$2y$10$09Jv6kbZJmQ.2sPdltlyo.oc4cKs4VuTrLcspKZYGuvYVnddr3Cdq', NULL, NULL, NULL, NULL, 2, '2024-04-03 14:29:42', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '479424', NULL, NULL, NULL, '2024-04-03 14:23:44', '2024-04-03 14:29:42', NULL),
(377, 'hakim', 'sylla', 0, 'junior', 'mamadouamadousylla@gmail.com', '781757502', 'hakim', '$2y$10$ydvT7pF.xoUb66dLASf7vOnmR7zi5.W1fa.XNz/Lv1IwZBmZkxrOa', NULL, NULL, NULL, NULL, 2, '2024-04-04 05:25:07', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '627106', NULL, NULL, NULL, '2024-04-04 05:18:23', '2024-04-04 05:25:07', NULL),
(378, 'Andrew', 'Andrew', 0, 'junior', 'andrew@com.com', '1234567', 'Andrew', '$2y$10$34iTR0mePukJyA5WyZQ5/uVbs8gC.MzjJ/usRxfKq02dIQo/OYl6q', NULL, NULL, NULL, NULL, 1, '2024-04-04 09:29:41', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '182257', NULL, NULL, NULL, '2024-04-04 09:26:56', '2024-04-04 09:29:41', NULL),
(379, 'Test', 'Test', 0, 'junior', 'setst@mailinator.com', '46849498464', 'estst', '$2y$10$IAo7xr.9N6ueDlOs9zahPuNnbiAkMXL76Q.gTJi6wDGeQYoSqkTU2', NULL, NULL, NULL, NULL, 2, '2024-04-04 13:27:25', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '567106', NULL, NULL, NULL, '2024-04-04 13:26:52', '2024-04-04 13:27:25', NULL),
(380, 'shateesh', 'Prajapati', 0, 'junior', 'shateeshprajapati@gmail.com', '+918655658831', 'shateesh', '$2y$10$PBXOwnfGYBcUWgfgok0CNOCBUJaSW1HSy0mtuQ2FK/qRorkjUS4MG', NULL, NULL, NULL, NULL, 2, NULL, 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '451768', NULL, NULL, NULL, '2024-04-04 13:40:31', '2024-04-04 13:40:31', NULL),
(381, 'fcff', 'dfuyiiw', 0, 'junior', 'matt55@gmail.com', '4333222222', 'ffffffef', '$2y$10$BMI2cXxL.py.Ss19kCo7zOJi1HAB/MFPZwFUbCaa83TPCgE5XFvn2', NULL, NULL, NULL, NULL, 1, '2024-04-05 14:55:07', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '328517', NULL, NULL, NULL, '2024-04-05 14:54:28', '2024-04-05 14:55:07', NULL),
(382, 'fcff', 'dfuyiiw', 0, 'junior', 'pier3428@gmail.com', '43332222223', 'ffffffefe', '$2y$10$QiiDlsXMZEinUJnpwWJtW.r8sinARbAotfj.mJRAwgZ876jSA8I0O', NULL, NULL, NULL, NULL, 1, '2024-04-05 14:58:45', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '420330', NULL, NULL, NULL, '2024-04-05 14:55:07', '2024-04-05 14:58:45', NULL),
(383, 'Md', 'Rayhan', 0, 'junior', 'rayhan520m@gmail.com', '01968978832', 'VectorGhor', '$2y$10$coP1OKOthVdqRDh9.1ZIl.25tVAMRVwJinAWJVzXLnNF9f/IhPHam', NULL, NULL, NULL, NULL, 2, '2024-04-05 18:26:35', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '689195', NULL, NULL, NULL, '2024-04-05 18:26:33', '2024-04-05 18:26:35', NULL),
(384, 'Ayodeji', 'Samuel', 0, 'junior', 'ayodejisojeva04@gmail.com', '09127117818', 'Emperor', '$2y$10$grR06h0T2v.Qx3GseHy4sOqpEMnjbt7atdKuMZJxmR7ksw1x/TH9.', NULL, NULL, NULL, NULL, 2, '2024-04-06 11:43:34', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '141099', NULL, NULL, NULL, '2024-04-06 11:41:44', '2024-04-06 11:43:34', NULL),
(385, 'Alejandro', 'Hernandez', 0, 'junior', 'metico2003@googlemail.com', '3229009051', 'metico2003', '$2y$10$Q8sxv921EMlUYLjnEWHyUeTzum00nRdxm1Mfl9/tr2WcuYD2VvOkK', NULL, NULL, NULL, NULL, 2, '2024-04-06 18:23:54', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '558305', NULL, NULL, NULL, '2024-04-06 18:23:53', '2024-04-06 21:01:59', NULL),
(386, 'Alejandro', 'Hernandez', 0, 'junior', 'metico2003@gmail.com', '3229009055', 'metico200', '$2y$10$D26XAdmsAyf7.D25mCNrO.UH.TtGPwaWmsWMoWTUDcbP/ms34fE52', NULL, NULL, NULL, NULL, 2, '2024-04-06 21:03:57', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '573392', NULL, NULL, NULL, '2024-04-06 21:03:08', '2024-04-06 21:03:57', NULL),
(387, 'Haris', 'Mazta', 0, 'junior', 'harismazta2@gmail.com', '089531295708', 'Harismazta', '$2y$10$UAsW/JZHmxvEKvFzbrBEs.wCd1EDM.AQ3q1NY2P6EkEweyaa88d5O', NULL, NULL, NULL, NULL, 1, '2024-04-08 06:07:18', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '293846', NULL, NULL, NULL, '2024-04-08 06:03:41', '2024-04-08 06:07:18', NULL),
(388, 'David', 'Oladeji', 0, 'junior', 'david.oladeji.daveola@gmail.com', '08039540050', 'davidoladeji', '$2y$10$yO0JXSMwfE34CNz36c3DleOLwI/086YFjkC.RmL56ibc/1yv5MLWm', NULL, NULL, NULL, NULL, 2, '2024-04-08 18:28:32', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '633807', NULL, NULL, NULL, '2024-04-08 18:27:14', '2024-04-08 18:28:32', NULL),
(389, 'ellington', 'machado de paula', 0, 'junior', 'ellington1209@gmail.com', '62991720735', 'ellington1209', '$2y$10$KfxdXkydHQErxfLuvaWaBu1kelLb8gAs1rKBWEJ7KkfVMLCCmtFYO', NULL, NULL, NULL, NULL, 1, '2024-04-08 21:35:04', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '438181', NULL, NULL, NULL, '2024-04-08 21:24:03', '2024-04-08 21:35:04', NULL),
(390, 'nbvvb', 'bvnvbn', 0, 'junior', 'bnnbvn@yopmail.com', '0144558899', 'bvnvbn', '$2y$10$K7NW9PMkZnU.SOIVLdSEtuIL/J191/sn.bqo5XUAkDBe5F8p20EPq', NULL, NULL, NULL, NULL, 2, '2024-04-11 18:04:41', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '487585', NULL, NULL, NULL, '2024-04-11 18:03:53', '2024-04-11 18:04:41', NULL),
(391, 'nbvvb', 'bvnvbn', 0, 'junior', 'bnnbvkn@yopmail.com', '0144558499', 'bvnvbnfg', '$2y$10$91UPgTPVMTj5UGIOJZoqCeG6f4J51jePVuRzZ8FC3X1BY/P2GePBS', NULL, NULL, NULL, NULL, 2, '2024-04-11 18:08:04', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '967032', NULL, NULL, NULL, '2024-04-11 18:04:41', '2024-04-11 18:08:04', NULL),
(392, 'Mark', 'Webb', 0, 'junior', 'admin@dvcmarket.com', '4074466647', 'markwebb3', '$2y$10$H6InkQ.n03GnkT5J9xgcLO4y7pdtsQbfaQaE3NkfNaxYsav8BX52G', NULL, NULL, NULL, NULL, 1, '2024-04-11 20:21:25', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '626530', NULL, NULL, NULL, '2024-04-11 20:13:24', '2024-04-11 20:21:25', NULL),
(393, 'Sayed', 'Khattab', 0, 'junior', 'sayedmakhattab@gmail.com', '01206994677', 'sayedkhattab', '$2y$10$AvghdYV/RKXkGEo6FRpoK.Kt.hcZkEsM0n8fpLUcv/CWW94FvQ4k.', NULL, NULL, NULL, NULL, 2, '2024-04-12 14:06:09', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '607202', NULL, NULL, NULL, '2024-04-12 14:03:47', '2024-04-12 14:06:09', NULL),
(394, 'hanza', 'shanbe', 0, 'junior', 'hamzashabbir1288@gmail.com', '01928282', 'oueiej', '$2y$10$Pi/YUYxRh3Jgt0oJazH80e7C/KLQ1BLUCeM3Z7qG6LbCyIyPzrdKi', NULL, NULL, NULL, NULL, 2, NULL, 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '457566', NULL, NULL, NULL, '2024-04-12 20:36:25', '2024-04-12 20:36:25', NULL),
(395, 'Karm', 'Nami', 0, 'junior', 'zourob345@gmail.com', '201096235015', 'Namu', '$2y$10$gQLQ/sFyr1ckabhJZ/AUxuuJCqc/beWWcedgzYkQxp4SK9caeykrG', NULL, NULL, NULL, NULL, 2, '2024-04-13 02:11:15', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '199131', NULL, NULL, NULL, '2024-04-13 02:10:17', '2024-04-13 02:11:15', NULL),
(396, 'Rana Umair', 'Nawaz', 0, 'junior', 'ranaumairnawaz@gmail.com', '+923164851631', 'umairnawaz', '$2y$10$OY3niJHWFsdQTDj7OsvtuuvQHEJfKAADErEV/ge8xalkQRQ74.0O2', NULL, NULL, NULL, NULL, 1, '2024-04-13 13:04:21', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '551223', NULL, NULL, NULL, '2024-04-13 13:01:30', '2024-04-13 13:04:21', NULL),
(397, 'qqw', 'eww', 0, 'junior', 'sales@signscity.com.au', '89898985656', 'admin664', '$2y$10$yNiUHjwdnsmZe2IWpvZNee6sB8wse1EP.lfZX493FUiuVNMrLNb.i', NULL, NULL, NULL, NULL, 2, '2024-04-13 20:45:57', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '659069', NULL, NULL, NULL, '2024-04-13 20:41:33', '2024-04-13 20:45:57', NULL),
(398, 'abc', 'def', 0, 'junior', 'weyovi9065@rartg.com', '0315240109', 'abcdef', '$2y$10$pivIFrGnqQ4X7bx5z3Joa.STYIYGYUIYmBTsAsfNZlM.7Be7JzCNC', NULL, NULL, NULL, NULL, 2, '2024-04-16 03:16:25', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '471666', NULL, NULL, NULL, '2024-04-16 00:20:39', '2024-04-16 03:16:25', NULL),
(399, 'Fer', 'P', 0, 'junior', 'fer@getextendly.com', '55555555', 'fer', '$2y$10$grk8fZSbXYQHpqfd0ihU4.K/mtui3cGXMoJq1Z5LQaQHCzK40YTMW', NULL, NULL, NULL, NULL, 2, '2024-04-17 20:51:37', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '464878', NULL, NULL, NULL, '2024-04-17 00:12:07', '2024-04-17 20:51:37', NULL),
(400, 'nitin', 'chopra', 0, 'junior', 'nitinc13@gmail.com', '9838373636', 'nitinc', '$2y$10$s8XN0.p02OMdrO9APFDTcuJ7P0EwOUOG3AVS.gcmsCgkfGlW30NA6', NULL, NULL, NULL, NULL, 1, '2024-04-17 00:45:26', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '322369', NULL, NULL, NULL, '2024-04-17 00:33:15', '2024-04-17 00:45:26', NULL),
(401, 'Floflo', 'Lulu', 0, 'junior', 'contact@mayakind.com', '06601547896', 'freelancerflo', '$2y$10$FQYjxkcV660UEbtIr7zyeuFQSgE22Xqwq556O76W0zMH5/i69SYiG', NULL, NULL, NULL, NULL, 2, '2024-04-19 19:56:17', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '901680', NULL, NULL, NULL, '2024-04-19 19:34:40', '2024-04-19 19:56:17', NULL),
(402, 'Toto', 'Tutu', 0, 'junior', 'contact@flpgsoftware.com', '0660145879', 'freelancerflo2', '$2y$10$vC8Hsz.bw9kOnXsksHov5.ed93333223SdHSVAPRCCP9JuBJke9ba', NULL, NULL, NULL, NULL, 2, '2024-04-19 20:05:01', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '336285', NULL, NULL, NULL, '2024-04-19 19:57:15', '2024-04-19 20:05:01', NULL),
(403, 'anjay', 'bro', 0, 'junior', 'anjay@gmail.com', '08382521421', 'anjaybro', '$2y$10$tmpPovK5XGAyTa8Z8Q08s.Vo0/aART4h1EPJDg6UY8fwLlsM6NpgS', NULL, NULL, NULL, NULL, 2, '2024-04-20 11:22:32', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '522036', NULL, NULL, NULL, '2024-04-20 11:21:26', '2024-04-20 11:22:32', NULL),
(404, 'alsana', 'birh', 0, 'junior', 'alsanabirhesap@gmail.com', '905343303311', 'alsana', '$2y$10$8DO9KBxUasNurBQRoUmEyecwxG.v0Dr3/sXamtArHHnChdX4Nq4Gy', NULL, NULL, NULL, NULL, 1, '2024-04-20 23:20:42', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '514943', NULL, NULL, NULL, '2024-04-20 23:13:00', '2024-04-20 23:20:42', NULL),
(405, 'hosain', 'ali', 0, 'junior', 'hosain3010@gmail.com', '713345721', 'hosain', '$2y$10$r.L14frf0nhiX706uJuAN.NwxfVCz3RTZSaJPHwbteIdbvWdB5WA6', NULL, NULL, NULL, NULL, 2, '2024-04-21 02:15:52', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '293850', NULL, NULL, NULL, '2024-04-21 01:04:25', '2024-04-21 02:15:52', NULL),
(406, 'semih', 'yaşa', 0, 'junior', 'semo@gmail.com', '34342355', 'semo', '$2y$10$iznJoX2rbhRy5AygDtt8f.fEuAVePyE.50k2voRUHQOQkno4zhXLW', NULL, NULL, NULL, NULL, 2, '2024-04-21 20:45:13', 1, 1, 0, 0, 1, NULL, '0', NULL, 0, NULL, NULL, NULL, '589596', NULL, NULL, NULL, '2024-04-21 20:35:29', '2024-04-21 20:45:13', NULL),
(407, 'Nina', 'Kurasaki', 0, 'junior', 'nina@gmail.com', '55565688282383', 'nina', '$2y$10$03DXeKmYbwns197VtEMNKOXpyS981o7Kco7AQ5K2ZGPZFnKele5wG', NULL, 1, 2, 4, 1, NULL, 1, 1, 0, 0, 1, NULL, '1', NULL, 0, NULL, NULL, NULL, '285197', NULL, NULL, NULL, '2024-04-22 11:24:46', '2024-04-22 11:26:30', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_earnings`
--

CREATE TABLE `user_earnings` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint NOT NULL,
  `total_earning` double NOT NULL DEFAULT '0',
  `total_withdraw` double NOT NULL DEFAULT '0',
  `remaining_balance` double NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_earnings`
--

INSERT INTO `user_earnings` (`id`, `user_id`, `total_earning`, `total_withdraw`, `remaining_balance`, `created_at`, `updated_at`) VALUES
(1, 7, 2592, 0, 2592, '2023-11-07 00:54:27', '2023-11-25 07:12:08'),
(2, 8, 39.5, 0, 39.5, '2023-11-27 06:22:28', '2023-11-27 06:22:28');

-- --------------------------------------------------------

--
-- Table structure for table `user_education`
--

CREATE TABLE `user_education` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint NOT NULL,
  `institution` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `degree` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_education`
--

INSERT INTO `user_education` (`id`, `user_id`, `institution`, `degree`, `subject`, `start_date`, `end_date`, `created_at`, `updated_at`) VALUES
(1, 7, 'Dhaka International university', 'Bsc in CSE', 'Computer Science and Engineering', '2013-06-30 18:00:00', '2017-11-30 18:00:00', '2023-02-06 01:16:13', '2023-11-20 23:46:01'),
(10, 8, 'Dhaka International university', 'Computer Science and Engineering', 'Bsc in CSE', '2023-03-15 18:00:00', '2023-03-23 18:00:00', '2023-03-16 06:11:57', '2023-11-25 06:17:38');

-- --------------------------------------------------------

--
-- Table structure for table `user_experiences`
--

CREATE TABLE `user_experiences` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `organization` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `state_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_experiences`
--

INSERT INTO `user_experiences` (`id`, `user_id`, `title`, `short_description`, `organization`, `address`, `country_id`, `state_id`, `start_date`, `end_date`, `created_at`, `updated_at`) VALUES
(2, 7, 'Frontend Developer', 'I was working for a php developer. I developed multiple products like crm, real estate etc.', 'Avery and Palmer Co', 'Dhaka Bangladesh', '1', '2', '2018-02-28 18:00:00', '2019-03-30 18:00:00', '2023-02-01 05:54:04', '2023-03-15 06:18:55'),
(3, 7, 'PHP Laravel Developer', 'In iHelpBD I was working as a PHP developer. I developed multiple products like CRM, Real estate etc.', 'iHelpBD', 'Dhanmondi 27', '1', '1', '2020-02-29 18:00:00', '2022-03-30 18:00:00', '2023-02-01 05:58:44', '2023-11-28 05:03:31'),
(16, 8, 'PHP Laravel Developer', 'Uttara Dhaka 1203', 'Softking', 'Uttara Dhaka 1203', '2', '16', '2023-03-20 18:00:00', '2023-03-29 18:00:00', '2023-03-16 06:12:18', '2023-11-25 06:16:47');

-- --------------------------------------------------------

--
-- Table structure for table `user_introductions`
--

CREATE TABLE `user_introductions` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_introductions`
--

INSERT INTO `user_introductions` (`id`, `user_id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(2, 7, 'Laravel Developer', 'I am a professional web developer work experience with 5 years. I will able to develop your any business  with laravel.', '2023-02-01 01:37:26', '2023-03-19 06:05:38'),
(3, 9, 'Professional Developer', 'Expert of Php, Laravel, vue js, React Js, Python, Sql.', '2023-02-23 07:15:46', '2023-05-16 04:03:18'),
(5, 8, 'Professional Html Developer', 'I have 5 years of experience designing psd to html, pdf to html, ui-ux to html templates.', '2023-05-16 00:50:04', '2023-05-16 00:50:04'),
(6, 10, 'Backend Developer', 'I\'m a professional backend  developer ready to create your scripts.', '2023-05-16 06:54:28', '2023-05-16 06:54:28');

-- --------------------------------------------------------

--
-- Table structure for table `user_notifications`
--

CREATE TABLE `user_notifications` (
  `id` bigint UNSIGNED NOT NULL,
  `identity` bigint NOT NULL,
  `client_id` bigint NOT NULL,
  `freelancer_id` bigint NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_client_read` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `is_freelancer_read` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_notifications`
--

INSERT INTO `user_notifications` (`id`, `identity`, `client_id`, `freelancer_id`, `type`, `message`, `is_client_read`, `is_freelancer_read`, `created_at`, `updated_at`) VALUES
(1, 4, 1, 7, 'Order Submit', 'Order Submitted', 'unread', 'unread', '2023-08-06 00:42:24', '2023-08-06 00:42:24'),
(2, 4, 1, 7, 'Order Submit', 'Order Submitted', 'unread', 'unread', '2023-08-06 01:55:45', '2023-08-06 01:55:45'),
(3, 4, 1, 7, 'Order Submit', 'Order Submitted', 'unread', 'unread', '2023-08-06 04:18:11', '2023-08-06 04:18:11'),
(4, 4, 1, 7, 'Order Submit', 'Order Submitted', 'unread', 'unread', '2023-08-06 23:39:47', '2023-08-06 23:39:47'),
(5, 4, 1, 7, 'Order Submit', 'Order Submitted', 'unread', 'unread', '2023-08-06 23:43:33', '2023-08-06 23:43:33'),
(6, 6, 1, 7, 'Order', 'New order placed', 'unread', 'unread', '2023-08-14 05:37:23', '2023-08-14 05:37:23'),
(7, 7, 1, 7, 'Order', 'New order placed', 'unread', 'unread', '2023-08-14 05:39:11', '2023-08-14 05:39:11'),
(8, 8, 1, 7, 'Order', 'New order placed', 'unread', 'unread', '2023-08-14 05:41:18', '2023-08-14 05:41:18'),
(9, 9, 1, 7, 'Order', 'New order placed', 'unread', 'unread', '2023-08-14 05:41:52', '2023-08-14 05:41:52'),
(10, 10, 1, 7, 'Order', 'New order placed', 'unread', 'unread', '2023-08-14 05:45:02', '2023-08-14 05:45:02'),
(11, 11, 1, 7, 'Order', 'New order placed', 'unread', 'unread', '2023-08-14 06:05:33', '2023-08-14 06:05:33');

-- --------------------------------------------------------

--
-- Table structure for table `user_skills`
--

CREATE TABLE `user_skills` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint NOT NULL,
  `skill` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_skills`
--

INSERT INTO `user_skills` (`id`, `user_id`, `skill`, `created_at`, `updated_at`) VALUES
(1, 7, 'Laravel, Php, Node Js, Firebase on Android, Android, Android foundations', '2023-02-13 01:11:06', '2023-09-18 00:49:15'),
(2, 8, 'Android , Firebase on Android , Android foundations , Mobile App Development', '2023-03-16 06:50:02', '2023-11-25 06:18:27');

-- --------------------------------------------------------

--
-- Table structure for table `user_subscriptions`
--

CREATE TABLE `user_subscriptions` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint NOT NULL,
  `subscription_id` bigint NOT NULL,
  `price` double NOT NULL DEFAULT '0',
  `limit` bigint NOT NULL DEFAULT '0',
  `expire_date` timestamp NULL DEFAULT NULL,
  `payment_gateway` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `transaction_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `manual_payment_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_subscriptions`
--

INSERT INTO `user_subscriptions` (`id`, `user_id`, `subscription_id`, `price`, `limit`, `expire_date`, `payment_gateway`, `payment_status`, `status`, `transaction_id`, `manual_payment_image`, `created_at`, `updated_at`) VALUES
(1, 7, 2, 110, 34, '2024-11-06 04:07:06', 'stripe', 'complete', 1, 'pi_3O9mBcEmGOuJLTMs0vuJtPwk', NULL, '2023-11-07 04:07:06', '2024-02-13 09:31:46'),
(2, 19, 10, 12, 20, '2023-12-11 22:54:42', 'Trial', 'complete', 1, NULL, NULL, '2023-11-11 22:54:42', '2023-11-11 22:54:42'),
(3, 7, 7, 60, 23, '2023-12-19 01:29:14', 'cinetpay', NULL, 0, NULL, NULL, '2023-11-19 01:29:14', '2023-11-19 01:29:14'),
(4, 7, 7, 60, 23, '2023-12-19 01:29:44', 'cashfree', NULL, 0, NULL, NULL, '2023-11-19 01:29:44', '2023-11-19 01:29:44'),
(5, 7, 10, 12, 20, '2023-12-19 01:31:19', 'payfast', NULL, 0, NULL, NULL, '2023-11-19 01:31:19', '2023-11-19 01:31:19'),
(6, 20, 10, 12, 20, '2023-12-19 08:13:02', 'Trial', 'complete', 1, NULL, NULL, '2023-11-19 08:13:02', '2023-11-19 08:13:02'),
(7, 22, 10, 12, 20, '2024-01-03 09:29:19', 'Trial', 'complete', 1, NULL, NULL, '2023-12-04 09:29:19', '2023-12-04 09:29:19'),
(8, 7, 6, 50, 10, '2024-01-03 13:28:20', 'paystack', NULL, 0, NULL, NULL, '2023-12-04 13:28:20', '2023-12-04 13:28:20'),
(9, 23, 10, 12, 20, '2024-01-04 05:14:04', 'Trial', 'complete', 1, NULL, NULL, '2023-12-05 05:14:04', '2023-12-05 05:14:04'),
(10, 24, 10, 12, 20, '2024-01-04 11:00:56', 'Trial', 'complete', 1, NULL, NULL, '2023-12-05 11:00:56', '2023-12-05 11:00:56'),
(11, 25, 10, 12, 20, '2024-01-05 01:52:51', 'Trial', 'complete', 1, NULL, NULL, '2023-12-06 01:52:51', '2023-12-06 01:52:51'),
(12, 7, 10, 12, 20, '2024-01-05 12:02:19', 'wallet', 'complete', 1, NULL, NULL, '2023-12-06 12:02:19', '2023-12-06 12:02:19'),
(13, 26, 10, 12, 20, '2024-01-06 01:13:17', 'Trial', 'complete', 1, NULL, NULL, '2023-12-07 01:13:17', '2023-12-07 01:13:17'),
(14, 27, 10, 12, 20, '2024-01-06 01:14:30', 'Trial', 'complete', 1, NULL, NULL, '2023-12-07 01:14:30', '2023-12-07 01:14:30'),
(15, 30, 10, 12, 20, '2024-01-07 06:32:35', 'Trial', 'complete', 1, NULL, NULL, '2023-12-08 06:32:35', '2023-12-08 06:32:35'),
(16, 7, 10, 12, 20, '2024-01-07 14:08:25', 'paypal', NULL, 0, NULL, NULL, '2023-12-08 14:08:25', '2023-12-08 14:08:25'),
(17, 7, 10, 12, 20, '2024-01-07 14:08:51', 'wallet', 'complete', 1, NULL, NULL, '2023-12-08 14:08:51', '2023-12-08 14:08:51'),
(18, 7, 10, 12, 20, '2024-01-07 14:18:35', 'wallet', 'complete', 1, NULL, NULL, '2023-12-08 14:18:35', '2023-12-08 14:18:35'),
(19, 33, 10, 12, 20, '2024-01-07 18:29:49', 'Trial', 'complete', 1, NULL, NULL, '2023-12-08 18:29:49', '2023-12-08 18:29:49'),
(20, 34, 10, 12, 20, '2024-01-09 06:32:19', 'Trial', 'complete', 1, NULL, NULL, '2023-12-10 06:32:19', '2023-12-10 06:32:19'),
(21, 35, 10, 12, 20, '2024-01-09 15:39:01', 'Trial', 'complete', 1, NULL, NULL, '2023-12-10 15:39:01', '2023-12-10 15:39:01'),
(22, 36, 10, 12, 20, '2024-01-09 15:58:28', 'Trial', 'complete', 1, NULL, NULL, '2023-12-10 15:58:28', '2023-12-10 15:58:28'),
(23, 7, 9, 20, 10, '2023-12-17 16:36:33', 'paystack', NULL, 0, NULL, NULL, '2023-12-10 16:36:33', '2023-12-10 16:36:33'),
(24, 37, 10, 12, 20, '2024-01-10 09:49:31', 'Trial', 'complete', 1, NULL, NULL, '2023-12-11 09:49:31', '2023-12-11 09:49:31'),
(25, 7, 9, 20, 10, '2023-12-19 09:24:19', 'paypal', NULL, 0, NULL, NULL, '2023-12-12 09:24:19', '2023-12-12 09:24:19'),
(26, 7, 5, 150, 100, '2024-12-11 09:46:07', 'paypal', NULL, 0, NULL, NULL, '2023-12-12 09:46:07', '2023-12-12 09:46:07'),
(27, 7, 5, 150, 100, '2024-12-11 09:46:29', 'stripe', NULL, 0, NULL, NULL, '2023-12-12 09:46:29', '2023-12-12 09:46:29'),
(28, 7, 5, 150, 100, '2024-12-11 09:47:12', 'razorpay', NULL, 0, NULL, NULL, '2023-12-12 09:47:12', '2023-12-12 09:47:12'),
(29, 7, 5, 150, 100, '2024-12-11 09:47:26', 'flutterwave', NULL, 0, NULL, NULL, '2023-12-12 09:47:26', '2023-12-12 09:47:26'),
(30, 7, 10, 12, 20, '2024-01-12 01:01:38', 'stripe', NULL, 0, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(31, 39, 10, 12, 20, '2024-01-12 04:26:01', 'Trial', 'complete', 1, NULL, NULL, '2023-12-13 04:26:01', '2023-12-13 04:26:01'),
(32, 39, 10, 12, 20, '2024-01-12 04:31:55', 'marcadopago', NULL, 0, NULL, NULL, '2023-12-13 04:31:55', '2023-12-13 04:31:55'),
(33, 40, 10, 12, 20, '2024-01-13 15:12:44', 'Trial', 'complete', 1, NULL, NULL, '2023-12-14 15:12:44', '2023-12-14 15:12:44'),
(34, 7, 9, 20, 10, '2023-12-25 06:54:43', 'stripe', 'complete', 1, 'pi_3OOgLIEmGOuJLTMs0qdP1s6U', NULL, '2023-12-18 06:54:43', '2023-12-18 06:55:36'),
(35, 7, 6, 50, 10, '2024-01-17 06:56:14', 'marcadopago', NULL, 0, NULL, NULL, '2023-12-18 06:56:14', '2023-12-18 06:56:14'),
(36, 7, 6, 50, 10, '2024-01-17 07:11:27', 'marcadopago', NULL, 0, NULL, NULL, '2023-12-18 07:11:27', '2023-12-18 07:11:27'),
(37, 7, 6, 50, 10, '2024-01-17 07:16:18', 'marcadopago', NULL, 0, NULL, NULL, '2023-12-18 07:16:18', '2023-12-18 07:16:18'),
(38, 7, 9, 20, 10, '2023-12-25 07:26:41', 'marcadopago', NULL, 0, NULL, NULL, '2023-12-18 07:26:41', '2023-12-18 07:26:41'),
(39, 7, 9, 20, 10, '2023-12-25 07:35:27', 'marcadopago', NULL, 0, NULL, NULL, '2023-12-18 07:35:27', '2023-12-18 07:35:27'),
(40, 7, 5, 150, 100, '2024-12-18 13:30:04', 'wallet', 'complete', 1, NULL, NULL, '2023-12-19 13:30:04', '2023-12-19 13:30:04'),
(41, 48, 10, 12, 20, '2024-01-19 05:39:37', 'Trial', 'complete', 1, NULL, NULL, '2023-12-20 05:39:37', '2023-12-20 05:39:37'),
(42, 49, 10, 12, 20, '2024-01-19 07:01:22', 'Trial', 'complete', 1, NULL, NULL, '2023-12-20 07:01:22', '2023-12-20 07:01:22'),
(43, 50, 10, 12, 20, '2024-01-19 07:01:51', 'Trial', 'complete', 1, NULL, NULL, '2023-12-20 07:01:51', '2023-12-20 07:01:51'),
(44, 7, 9, 20, 10, '2023-12-27 11:04:25', 'stripe', NULL, 0, NULL, NULL, '2023-12-20 11:04:25', '2023-12-20 11:04:25'),
(45, 7, 9, 20, 10, '2023-12-27 11:04:46', 'authorize_dot_net', NULL, 0, NULL, NULL, '2023-12-20 11:04:46', '2023-12-20 11:04:46'),
(46, 54, 10, 12, 20, '2024-01-20 05:01:51', 'Trial', 'complete', 1, NULL, NULL, '2023-12-21 05:01:51', '2023-12-21 05:01:51'),
(47, 7, 3, 30, 5, '2024-01-20 10:13:10', 'stripe', NULL, 0, NULL, NULL, '2023-12-21 10:13:10', '2023-12-21 10:13:10'),
(48, 7, 3, 30, 5, '2024-01-20 10:13:29', 'authorize_dot_net', NULL, 0, NULL, NULL, '2023-12-21 10:13:29', '2023-12-21 10:13:29'),
(49, 7, 6, 50, 10, '2024-01-20 10:18:53', 'authorize_dot_net', NULL, 0, NULL, NULL, '2023-12-21 10:18:53', '2023-12-21 10:18:53'),
(50, 56, 10, 12, 20, '2024-01-20 10:24:45', 'Trial', 'complete', 1, NULL, NULL, '2023-12-21 10:24:45', '2023-12-21 10:24:45'),
(51, 7, 9, 20, 10, '2023-12-29 09:27:01', 'paypal', NULL, 0, NULL, NULL, '2023-12-22 09:27:01', '2023-12-22 09:27:01'),
(52, 57, 10, 12, 20, '2024-01-21 23:57:20', 'Trial', 'complete', 1, NULL, NULL, '2023-12-22 23:57:20', '2023-12-22 23:57:20'),
(53, 58, 10, 12, 20, '2024-01-21 23:58:06', 'Trial', 'complete', 1, NULL, NULL, '2023-12-22 23:58:06', '2023-12-22 23:58:06'),
(54, 59, 10, 12, 20, '2024-01-22 16:05:39', 'Trial', 'complete', 1, NULL, NULL, '2023-12-23 16:05:39', '2023-12-23 16:05:39'),
(55, 60, 10, 12, 20, '2024-01-22 22:50:14', 'Trial', 'complete', 1, NULL, NULL, '2023-12-23 22:50:14', '2023-12-23 22:50:14'),
(56, 63, 10, 12, 20, '2024-01-23 13:10:18', 'Trial', 'complete', 1, NULL, NULL, '2023-12-24 13:10:18', '2023-12-24 13:10:18'),
(57, 65, 10, 12, 20, '2024-01-24 13:04:52', 'Trial', 'complete', 1, NULL, NULL, '2023-12-25 13:04:52', '2023-12-25 13:04:52'),
(58, 66, 10, 12, 20, '2024-01-24 13:07:11', 'Trial', 'complete', 1, NULL, NULL, '2023-12-25 13:07:11', '2023-12-25 13:07:11'),
(59, 67, 10, 12, 20, '2024-01-24 13:14:12', 'Trial', 'complete', 1, NULL, NULL, '2023-12-25 13:14:12', '2023-12-25 13:14:12'),
(60, 69, 10, 12, 20, '2024-01-24 23:13:33', 'Trial', 'complete', 1, NULL, NULL, '2023-12-25 23:13:33', '2023-12-25 23:13:33'),
(61, 72, 10, 12, 20, '2024-01-25 21:30:45', 'Trial', 'complete', 1, NULL, NULL, '2023-12-26 21:30:45', '2023-12-26 21:30:45'),
(62, 73, 10, 12, 20, '2024-01-25 21:41:33', 'Trial', 'complete', 1, NULL, NULL, '2023-12-26 21:41:33', '2023-12-26 21:41:33'),
(63, 7, 10, 12, 20, '2024-01-27 08:35:04', 'wallet', 'complete', 1, NULL, NULL, '2023-12-28 08:35:04', '2023-12-28 08:35:04'),
(64, 76, 10, 12, 20, '2024-01-27 13:20:34', 'Trial', 'complete', 1, NULL, NULL, '2023-12-28 13:20:34', '2023-12-28 13:20:34'),
(65, 78, 10, 12, 20, '2024-01-28 19:06:13', 'Trial', 'complete', 1, NULL, NULL, '2023-12-29 19:06:13', '2023-12-29 19:06:13'),
(66, 79, 10, 12, 20, '2024-01-28 19:23:15', 'Trial', 'complete', 1, NULL, NULL, '2023-12-29 19:23:15', '2023-12-29 19:23:15'),
(67, 82, 10, 12, 20, '2024-01-30 06:16:42', 'Trial', 'complete', 1, NULL, NULL, '2023-12-31 06:16:42', '2023-12-31 06:16:42'),
(68, 83, 10, 12, 20, '2024-01-30 11:35:53', 'Trial', 'complete', 1, NULL, NULL, '2023-12-31 11:35:53', '2023-12-31 11:35:53'),
(69, 86, 10, 12, 20, '2024-01-31 09:38:16', 'Trial', 'complete', 1, NULL, NULL, '2024-01-01 09:38:16', '2024-01-01 09:38:16'),
(70, 87, 10, 12, 20, '2024-01-31 12:07:24', 'Trial', 'complete', 1, NULL, NULL, '2024-01-01 12:07:24', '2024-01-01 12:07:24'),
(71, 88, 10, 12, 20, '2024-01-31 16:46:19', 'Trial', 'complete', 1, NULL, NULL, '2024-01-01 16:46:19', '2024-01-01 16:46:19'),
(72, 90, 10, 12, 20, '2024-02-01 05:17:55', 'Trial', 'complete', 1, NULL, NULL, '2024-01-02 05:17:55', '2024-01-02 05:17:55'),
(73, 91, 10, 12, 20, '2024-02-01 05:18:46', 'Trial', 'complete', 1, NULL, NULL, '2024-01-02 05:18:46', '2024-01-02 05:18:46'),
(74, 92, 10, 12, 20, '2024-02-01 05:25:12', 'Trial', 'complete', 1, NULL, NULL, '2024-01-02 05:25:12', '2024-01-02 05:25:12'),
(75, 7, 10, 12, 20, '2024-02-01 10:37:42', 'iyzipay', NULL, 0, NULL, NULL, '2024-01-02 10:37:42', '2024-01-02 10:37:42'),
(76, 7, 10, 12, 20, '2024-02-01 10:37:59', 'payfast', NULL, 0, NULL, NULL, '2024-01-02 10:37:59', '2024-01-02 10:37:59'),
(77, 93, 10, 12, 20, '2024-02-01 11:34:06', 'Trial', 'complete', 1, NULL, NULL, '2024-01-02 11:34:06', '2024-01-02 11:34:06'),
(78, 94, 10, 12, 20, '2024-02-01 11:36:06', 'Trial', 'complete', 1, NULL, NULL, '2024-01-02 11:36:07', '2024-01-02 11:36:07'),
(79, 7, 10, 12, 20, '2024-02-01 11:55:31', 'razorpay', NULL, 0, NULL, NULL, '2024-01-02 11:55:31', '2024-01-02 11:55:31'),
(80, 7, 10, 12, 20, '2024-02-01 23:14:10', 'wallet', 'complete', 1, NULL, NULL, '2024-01-02 23:14:10', '2024-01-02 23:14:10'),
(81, 97, 10, 12, 20, '2024-02-02 05:34:51', 'Trial', 'complete', 1, NULL, NULL, '2024-01-03 05:34:51', '2024-01-03 05:34:51'),
(82, 98, 10, 12, 20, '2024-02-02 10:02:44', 'Trial', 'complete', 1, NULL, NULL, '2024-01-03 10:02:44', '2024-01-03 10:02:44'),
(83, 100, 10, 12, 20, '2024-02-03 00:27:14', 'Trial', 'complete', 1, NULL, NULL, '2024-01-04 00:27:14', '2024-01-04 00:27:14'),
(84, 7, 6, 50, 10, '2024-02-03 17:32:40', 'stripe', NULL, 0, NULL, NULL, '2024-01-04 17:32:40', '2024-01-04 17:32:40'),
(85, 7, 6, 50, 10, '2024-02-03 17:32:59', 'wallet', 'complete', 1, NULL, NULL, '2024-01-04 17:32:59', '2024-01-04 17:32:59'),
(86, 102, 10, 12, 20, '2024-02-04 09:01:09', 'Trial', 'complete', 1, NULL, NULL, '2024-01-05 09:01:09', '2024-01-05 09:01:09'),
(87, 104, 10, 12, 20, '2024-02-04 12:23:14', 'Trial', 'complete', 1, NULL, NULL, '2024-01-05 12:23:14', '2024-01-05 12:23:14'),
(88, 105, 10, 12, 20, '2024-02-04 13:15:23', 'Trial', 'complete', 1, NULL, NULL, '2024-01-05 13:15:23', '2024-01-05 13:15:23'),
(89, 7, 9, 20, 10, '2024-01-12 22:44:20', 'wallet', 'complete', 1, NULL, NULL, '2024-01-05 22:44:20', '2024-01-05 22:44:20'),
(90, 7, 9, 20, 10, '2024-01-13 14:14:40', 'paypal', NULL, 0, NULL, NULL, '2024-01-06 14:14:40', '2024-01-06 14:14:40'),
(91, 107, 10, 12, 20, '2024-02-06 13:41:41', 'Trial', 'complete', 1, NULL, NULL, '2024-01-07 13:41:41', '2024-01-07 13:41:41'),
(92, 7, 9, 20, 10, '2024-01-15 00:37:09', 'paypal', NULL, 0, NULL, NULL, '2024-01-08 00:37:09', '2024-01-08 00:37:09'),
(93, 108, 10, 12, 20, '2024-02-07 14:15:17', 'Trial', 'complete', 1, NULL, NULL, '2024-01-08 14:15:17', '2024-01-08 14:15:17'),
(94, 7, 9, 20, 10, '2024-01-16 02:49:56', 'paypal', NULL, 0, NULL, NULL, '2024-01-09 02:49:56', '2024-01-09 02:49:56'),
(95, 114, 10, 12, 20, '2024-02-08 13:42:37', 'Trial', 'complete', 1, NULL, NULL, '2024-01-09 13:42:37', '2024-01-09 13:42:37'),
(96, 115, 10, 12, 20, '2024-02-08 13:43:58', 'Trial', 'complete', 1, NULL, NULL, '2024-01-09 13:43:58', '2024-01-09 13:43:58'),
(97, 7, 3, 30, 5, '2024-02-08 16:10:54', 'marcadopago', NULL, 0, NULL, NULL, '2024-01-09 16:10:54', '2024-01-09 16:10:54'),
(98, 119, 10, 12, 20, '2024-02-09 21:41:36', 'Trial', 'complete', 1, NULL, NULL, '2024-01-10 21:41:36', '2024-01-10 21:41:36'),
(99, 124, 10, 12, 20, '2024-02-11 11:50:41', 'Trial', 'complete', 1, NULL, NULL, '2024-01-12 11:50:41', '2024-01-12 11:50:41'),
(100, 125, 10, 12, 20, '2024-02-11 11:54:50', 'Trial', 'complete', 1, NULL, NULL, '2024-01-12 11:54:50', '2024-01-12 11:54:50'),
(101, 126, 10, 12, 20, '2024-02-12 12:02:27', 'Trial', 'complete', 1, NULL, NULL, '2024-01-13 12:02:27', '2024-01-13 12:02:27'),
(102, 129, 10, 12, 20, '2024-02-14 11:06:03', 'Trial', 'complete', 1, NULL, NULL, '2024-01-15 11:06:03', '2024-01-15 11:06:03'),
(103, 130, 10, 12, 20, '2024-02-15 08:43:02', 'Trial', 'complete', 1, NULL, NULL, '2024-01-16 08:43:02', '2024-01-16 08:43:02'),
(104, 131, 10, 12, 20, '2024-02-16 02:50:59', 'Trial', 'complete', 1, NULL, NULL, '2024-01-17 02:50:59', '2024-01-17 02:50:59'),
(105, 132, 10, 12, 20, '2024-02-16 03:26:42', 'Trial', 'complete', 1, NULL, NULL, '2024-01-17 03:26:42', '2024-01-17 03:26:42'),
(106, 7, 9, 20, 10, '2024-01-24 23:59:40', 'wallet', 'complete', 1, NULL, NULL, '2024-01-17 23:59:40', '2024-01-17 23:59:40'),
(107, 134, 10, 12, 20, '2024-02-17 04:16:42', 'Trial', 'complete', 1, NULL, NULL, '2024-01-18 04:16:42', '2024-01-18 04:16:42'),
(108, 136, 10, 12, 20, '2024-02-17 11:29:50', 'Trial', 'complete', 1, NULL, NULL, '2024-01-18 11:29:50', '2024-01-18 11:29:50'),
(109, 137, 10, 12, 20, '2024-02-17 21:42:36', 'Trial', 'complete', 1, NULL, NULL, '2024-01-18 21:42:36', '2024-01-18 21:42:36'),
(110, 139, 10, 12, 20, '2024-02-17 21:51:31', 'Trial', 'complete', 1, NULL, NULL, '2024-01-18 21:51:31', '2024-01-18 21:51:31'),
(111, 140, 10, 12, 20, '2024-02-17 21:53:58', 'Trial', 'complete', 1, NULL, NULL, '2024-01-18 21:53:58', '2024-01-18 21:53:58'),
(112, 137, 9, 20, 10, '2024-01-25 22:08:38', 'paypal', NULL, 0, NULL, NULL, '2024-01-18 22:08:38', '2024-01-18 22:08:38'),
(113, 143, 10, 12, 20, '2024-02-19 01:37:08', 'Trial', 'complete', 1, NULL, NULL, '2024-01-20 01:37:08', '2024-01-20 01:37:08'),
(114, 145, 10, 12, 20, '2024-02-19 04:32:00', 'Trial', 'complete', 1, NULL, NULL, '2024-01-20 04:32:00', '2024-01-20 04:32:00'),
(115, 147, 10, 12, 20, '2024-02-20 07:37:56', 'Trial', 'complete', 1, NULL, NULL, '2024-01-21 07:37:56', '2024-01-21 07:37:56'),
(116, 148, 10, 12, 20, '2024-02-20 07:43:12', 'Trial', 'complete', 1, NULL, NULL, '2024-01-21 07:43:12', '2024-01-21 07:43:12'),
(117, 7, 2, 110, 60, '2025-01-20 13:58:09', 'wallet', 'complete', 1, NULL, NULL, '2024-01-21 13:58:09', '2024-01-21 13:58:09'),
(118, 7, 9, 20, 10, '2024-01-28 16:18:18', 'flutterwave', NULL, 0, NULL, NULL, '2024-01-21 16:18:18', '2024-01-21 16:18:18'),
(119, 7, 5, 150, 100, '2025-01-21 14:16:30', 'stripe', NULL, 0, NULL, NULL, '2024-01-22 14:16:30', '2024-01-22 14:16:30'),
(120, 7, 5, 150, 100, '2025-01-21 21:15:18', 'stripe', 'complete', 1, 'pi_3ObaSJEmGOuJLTMs0xkAGhfw', NULL, '2024-01-22 21:15:18', '2024-01-22 21:15:48'),
(121, 7, 10, 12, 20, '2024-02-21 21:17:14', 'stripe', NULL, 0, NULL, NULL, '2024-01-22 21:17:14', '2024-01-22 21:17:14'),
(122, 159, 10, 12, 20, '2024-02-26 08:52:34', 'Trial', 'complete', 1, NULL, NULL, '2024-01-27 08:52:34', '2024-01-27 08:52:34'),
(123, 160, 10, 12, 20, '2024-02-27 09:27:54', 'Trial', 'complete', 1, NULL, NULL, '2024-01-28 09:27:54', '2024-01-28 09:27:54'),
(124, 161, 10, 12, 20, '2024-02-27 11:41:56', 'Trial', 'complete', 1, NULL, NULL, '2024-01-28 11:41:56', '2024-01-28 11:41:56'),
(125, 7, 2, 110, 60, '2025-01-28 10:29:27', 'wallet', 'complete', 1, NULL, NULL, '2024-01-29 10:29:27', '2024-01-29 10:29:27'),
(126, 163, 10, 12, 20, '2024-02-29 00:23:05', 'Trial', 'complete', 1, NULL, NULL, '2024-01-30 00:23:05', '2024-01-30 00:23:05'),
(127, 164, 10, 12, 20, '2024-02-29 00:23:57', 'Trial', 'complete', 1, NULL, NULL, '2024-01-30 00:23:57', '2024-01-30 00:23:57'),
(128, 165, 10, 12, 20, '2024-02-29 00:32:38', 'Trial', 'complete', 1, NULL, NULL, '2024-01-30 00:32:38', '2024-01-30 00:32:38'),
(129, 166, 10, 12, 20, '2024-02-29 03:54:24', 'Trial', 'complete', 1, NULL, NULL, '2024-01-30 03:54:24', '2024-01-30 03:54:24'),
(130, 167, 10, 12, 20, '2024-02-29 04:08:28', 'Trial', 'complete', 1, NULL, NULL, '2024-01-30 04:08:28', '2024-01-30 04:08:28'),
(131, 168, 10, 12, 20, '2024-02-29 04:17:26', 'Trial', 'complete', 1, NULL, NULL, '2024-01-30 04:17:26', '2024-01-30 04:17:26'),
(132, 169, 10, 12, 20, '2024-02-29 04:19:33', 'Trial', 'complete', 1, NULL, NULL, '2024-01-30 04:19:33', '2024-01-30 04:19:33'),
(133, 170, 10, 12, 20, '2024-02-29 04:21:22', 'Trial', 'complete', 1, NULL, NULL, '2024-01-30 04:21:22', '2024-01-30 04:21:22'),
(134, 171, 10, 12, 20, '2024-02-29 04:24:41', 'Trial', 'complete', 1, NULL, NULL, '2024-01-30 04:24:41', '2024-01-30 04:24:41'),
(135, 7, 9, 20, 10, '2024-02-08 11:10:51', 'paypal', NULL, 0, NULL, NULL, '2024-02-01 11:10:51', '2024-02-01 11:10:51'),
(136, 180, 10, 12, 20, '2024-03-02 15:50:09', 'Trial', 'complete', 1, NULL, NULL, '2024-02-01 15:50:09', '2024-02-01 15:50:09'),
(137, 181, 10, 12, 20, '2024-03-03 06:06:20', 'Trial', 'complete', 1, NULL, NULL, '2024-02-02 06:06:20', '2024-02-02 06:06:20'),
(138, 182, 10, 12, 20, '2024-03-03 10:47:44', 'Trial', 'complete', 1, NULL, NULL, '2024-02-02 10:47:44', '2024-02-02 10:47:44'),
(139, 186, 10, 12, 20, '2024-03-07 10:09:49', 'Trial', 'complete', 1, NULL, NULL, '2024-02-06 10:09:49', '2024-02-06 10:09:49'),
(140, 7, 10, 12, 20, '2024-03-09 05:29:05', 'iyzipay', NULL, 0, NULL, NULL, '2024-02-08 05:29:05', '2024-02-08 05:29:05'),
(141, 192, 10, 12, 20, '2024-03-09 08:54:48', 'Trial', 'complete', 1, NULL, NULL, '2024-02-08 08:54:48', '2024-02-08 08:54:48'),
(142, 7, 9, 20, 10, '2024-02-15 09:33:53', 'marcadopago', NULL, 0, NULL, NULL, '2024-02-08 09:33:53', '2024-02-08 09:33:53'),
(143, 7, 9, 20, 10, '2024-02-16 22:05:50', 'zitopay', NULL, 0, NULL, NULL, '2024-02-09 22:05:50', '2024-02-09 22:05:50'),
(144, 197, 10, 12, 20, '2024-03-11 00:02:49', 'Trial', 'complete', 1, NULL, NULL, '2024-02-10 00:02:49', '2024-02-10 00:02:49'),
(145, 7, 5, 150, 100, '2025-02-11 05:44:16', 'wallet', 'complete', 1, NULL, NULL, '2024-02-12 05:44:16', '2024-02-12 05:44:16'),
(146, 199, 10, 12, 20, '2024-03-13 06:10:00', 'Trial', 'complete', 1, NULL, NULL, '2024-02-12 06:10:00', '2024-02-12 06:10:00'),
(147, 200, 10, 12, 20, '2024-03-14 16:04:05', 'Trial', 'complete', 1, NULL, NULL, '2024-02-13 16:04:05', '2024-02-13 16:04:05'),
(148, 201, 10, 12, 20, '2024-03-16 01:46:01', 'Trial', 'complete', 1, NULL, NULL, '2024-02-15 01:46:01', '2024-02-15 01:46:01'),
(149, 204, 10, 12, 20, '2024-03-16 21:28:51', 'Trial', 'complete', 1, NULL, NULL, '2024-02-15 21:28:51', '2024-02-15 21:28:51'),
(150, 205, 10, 12, 20, '2024-03-17 08:12:51', 'Trial', 'complete', 1, NULL, NULL, '2024-02-16 08:12:51', '2024-02-16 08:12:51'),
(151, 207, 10, 12, 20, '2024-03-17 22:37:49', 'Trial', 'complete', 1, NULL, NULL, '2024-02-16 22:37:49', '2024-02-16 22:37:49'),
(152, 208, 10, 12, 20, '2024-03-17 22:43:17', 'Trial', 'complete', 1, NULL, NULL, '2024-02-16 22:43:17', '2024-02-16 22:43:17'),
(153, 209, 10, 12, 20, '2024-03-17 22:49:00', 'Trial', 'complete', 1, NULL, NULL, '2024-02-16 22:49:00', '2024-02-16 22:49:00'),
(154, 212, 10, 12, 20, '2024-03-17 23:54:06', 'Trial', 'complete', 1, NULL, NULL, '2024-02-16 23:54:06', '2024-02-16 23:54:06'),
(155, 214, 10, 12, 20, '2024-03-17 23:57:49', 'Trial', 'complete', 1, NULL, NULL, '2024-02-16 23:57:49', '2024-02-16 23:57:49'),
(156, 215, 10, 12, 20, '2024-03-17 23:58:32', 'Trial', 'complete', 1, NULL, NULL, '2024-02-16 23:58:32', '2024-02-16 23:58:32'),
(157, 216, 10, 12, 20, '2024-03-17 23:58:58', 'Trial', 'complete', 1, NULL, NULL, '2024-02-16 23:58:58', '2024-02-16 23:58:58'),
(158, 221, 10, 12, 20, '2024-03-18 00:29:09', 'Trial', 'complete', 1, NULL, NULL, '2024-02-17 00:29:09', '2024-02-17 00:29:09'),
(159, 227, 10, 12, 20, '2024-03-19 17:26:22', 'Trial', 'complete', 1, NULL, NULL, '2024-02-18 17:26:22', '2024-02-18 17:26:22'),
(160, 7, 2, 110, 60, '2025-02-18 09:36:12', 'wallet', 'complete', 1, NULL, NULL, '2024-02-19 09:36:12', '2024-02-19 09:36:12'),
(161, 234, 10, 12, 20, '2024-03-21 00:40:23', 'Trial', 'complete', 1, NULL, NULL, '2024-02-20 00:40:23', '2024-02-20 00:40:23'),
(162, 237, 10, 12, 20, '2024-03-21 00:41:22', 'Trial', 'complete', 1, NULL, NULL, '2024-02-20 00:41:22', '2024-02-20 00:41:22'),
(163, 238, 10, 12, 20, '2024-03-21 01:15:51', 'Trial', 'complete', 1, NULL, NULL, '2024-02-20 01:15:51', '2024-02-20 01:15:51'),
(164, 242, 10, 12, 20, '2024-03-22 01:54:54', 'Trial', 'complete', 1, NULL, NULL, '2024-02-21 01:54:54', '2024-02-21 01:54:54'),
(165, 243, 10, 12, 20, '2024-03-22 04:50:17', 'Trial', 'complete', 1, NULL, NULL, '2024-02-21 04:50:17', '2024-02-21 04:50:17'),
(166, 247, 10, 12, 20, '2024-03-23 17:40:19', 'Trial', 'complete', 1, NULL, NULL, '2024-02-22 17:40:19', '2024-02-22 17:40:19'),
(167, 249, 10, 12, 20, '2024-03-24 05:51:22', 'Trial', 'complete', 1, NULL, NULL, '2024-02-23 05:51:22', '2024-02-23 05:51:22'),
(168, 251, 10, 12, 20, '2024-03-24 13:41:55', 'Trial', 'complete', 1, NULL, NULL, '2024-02-23 13:41:55', '2024-02-23 13:41:55'),
(169, 252, 10, 12, 20, '2024-03-24 16:08:48', 'Trial', 'complete', 1, NULL, NULL, '2024-02-23 16:08:48', '2024-02-23 16:08:48'),
(170, 253, 10, 12, 20, '2024-03-24 21:15:54', 'Trial', 'complete', 1, NULL, NULL, '2024-02-23 21:15:54', '2024-02-23 21:15:54'),
(171, 7, 2, 110, 60, '2025-02-23 05:46:15', 'wallet', 'complete', 1, NULL, NULL, '2024-02-24 05:46:15', '2024-02-24 05:46:15'),
(172, 254, 10, 12, 20, '2024-03-25 05:47:26', 'Trial', 'complete', 1, NULL, NULL, '2024-02-24 05:47:26', '2024-02-24 05:47:26'),
(173, 256, 10, 12, 20, '2024-03-25 09:58:57', 'Trial', 'complete', 1, NULL, NULL, '2024-02-24 09:58:57', '2024-02-24 09:58:57'),
(174, 7, 2, 110, 60, '2025-02-23 10:05:46', 'wallet', 'complete', 1, NULL, NULL, '2024-02-24 10:05:46', '2024-02-24 10:05:46'),
(175, 7, 6, 50, 10, '2024-03-25 13:34:30', 'paystack', NULL, 0, NULL, NULL, '2024-02-24 13:34:30', '2024-02-24 13:34:30'),
(176, 261, 10, 12, 20, '2024-03-25 18:03:29', 'Trial', 'complete', 1, NULL, NULL, '2024-02-24 18:03:29', '2024-02-24 18:03:29'),
(177, 266, 10, 12, 20, '2024-03-29 03:54:59', 'Trial', 'complete', 1, NULL, NULL, '2024-02-28 03:54:59', '2024-02-28 03:54:59'),
(178, 267, 10, 12, 20, '2024-03-29 13:32:23', 'Trial', 'complete', 1, NULL, NULL, '2024-02-28 13:32:23', '2024-02-28 13:32:23'),
(179, 268, 10, 12, 20, '2024-03-29 17:10:31', 'Trial', 'complete', 1, NULL, NULL, '2024-02-28 17:10:31', '2024-02-28 17:10:31'),
(180, 269, 10, 12, 20, '2024-03-30 08:12:06', 'Trial', 'complete', 1, NULL, NULL, '2024-02-29 08:12:06', '2024-02-29 08:12:06'),
(181, 271, 10, 12, 20, '2024-03-30 14:22:49', 'Trial', 'complete', 1, NULL, NULL, '2024-02-29 14:22:49', '2024-02-29 14:22:49'),
(182, 272, 10, 12, 20, '2024-03-30 15:30:49', 'Trial', 'complete', 1, NULL, NULL, '2024-02-29 15:30:49', '2024-02-29 15:30:49'),
(183, 273, 10, 12, 20, '2024-03-30 17:25:44', 'Trial', 'complete', 1, NULL, NULL, '2024-02-29 17:25:44', '2024-02-29 17:25:44'),
(184, 7, 9, 20, 10, '2024-03-07 18:33:00', 'sitesway', NULL, 0, NULL, NULL, '2024-02-29 18:33:00', '2024-02-29 18:33:00'),
(185, 7, 9, 20, 10, '2024-03-07 18:33:16', 'wallet', 'complete', 1, NULL, NULL, '2024-02-29 18:33:16', '2024-02-29 18:33:16'),
(186, 276, 10, 12, 20, '2024-03-31 15:39:06', 'Trial', 'complete', 1, NULL, NULL, '2024-03-01 15:39:06', '2024-03-01 15:39:06'),
(187, 279, 10, 12, 20, '2024-04-01 12:39:21', 'Trial', 'complete', 1, NULL, NULL, '2024-03-02 12:39:21', '2024-03-02 12:39:21'),
(188, 280, 10, 12, 20, '2024-04-01 18:57:14', 'Trial', 'complete', 1, NULL, NULL, '2024-03-02 18:57:14', '2024-03-02 18:57:14'),
(189, 283, 10, 12, 20, '2024-04-01 22:22:02', 'Trial', 'complete', 1, NULL, NULL, '2024-03-02 22:22:02', '2024-03-02 22:22:02'),
(190, 284, 10, 12, 20, '2024-04-01 22:25:44', 'Trial', 'complete', 1, NULL, NULL, '2024-03-02 22:25:44', '2024-03-02 22:25:44'),
(191, 285, 10, 12, 20, '2024-04-01 22:26:56', 'Trial', 'complete', 1, NULL, NULL, '2024-03-02 22:26:56', '2024-03-02 22:26:56'),
(192, 7, 9, 20, 10, '2024-03-10 01:00:52', 'flutterwave', NULL, 0, NULL, NULL, '2024-03-03 01:00:52', '2024-03-03 01:00:52'),
(193, 289, 10, 12, 20, '2024-04-02 13:11:30', 'Trial', 'complete', 1, NULL, NULL, '2024-03-03 13:11:30', '2024-03-03 13:11:30'),
(194, 291, 10, 12, 20, '2024-04-02 22:33:47', 'Trial', 'complete', 1, NULL, NULL, '2024-03-03 22:33:47', '2024-03-03 22:33:47'),
(195, 7, 9, 20, 10, '2024-03-10 23:04:32', 'wallet', 'complete', 1, NULL, NULL, '2024-03-03 23:04:32', '2024-03-03 23:04:32'),
(196, 293, 10, 12, 20, '2024-04-03 04:46:02', 'Trial', 'complete', 1, NULL, NULL, '2024-03-04 04:46:02', '2024-03-04 04:46:02'),
(197, 295, 10, 12, 20, '2024-04-04 00:14:54', 'Trial', 'complete', 1, NULL, NULL, '2024-03-05 00:14:54', '2024-03-05 00:14:54'),
(198, 296, 10, 12, 20, '2024-04-04 00:15:33', 'Trial', 'complete', 1, NULL, NULL, '2024-03-05 00:15:33', '2024-03-05 00:15:33'),
(199, 298, 10, 12, 20, '2024-04-04 12:37:20', 'Trial', 'complete', 1, NULL, NULL, '2024-03-05 12:37:20', '2024-03-05 12:37:20'),
(200, 299, 10, 12, 20, '2024-04-04 17:14:41', 'Trial', 'complete', 1, NULL, NULL, '2024-03-05 17:14:41', '2024-03-05 17:14:41'),
(201, 302, 10, 12, 20, '2024-04-05 11:06:44', 'Trial', 'complete', 1, NULL, NULL, '2024-03-06 11:06:44', '2024-03-06 11:06:44'),
(202, 304, 10, 12, 20, '2024-04-05 19:44:49', 'Trial', 'complete', 1, NULL, NULL, '2024-03-06 19:44:49', '2024-03-06 19:44:49'),
(203, 308, 10, 12, 20, '2024-04-07 19:42:31', 'Trial', 'complete', 1, NULL, NULL, '2024-03-08 19:42:31', '2024-03-08 19:42:31'),
(204, 7, 5, 150, 100, '2025-03-12 07:13:49', 'manual_payment', 'pending', 0, NULL, NULL, '2024-03-12 07:13:49', '2024-03-12 07:13:49'),
(205, 314, 10, 12, 20, '2024-04-11 12:26:14', 'Trial', 'complete', 1, NULL, NULL, '2024-03-12 12:26:14', '2024-03-12 12:26:14'),
(206, 320, 10, 12, 20, '2024-04-13 12:53:41', 'Trial', 'complete', 1, NULL, NULL, '2024-03-14 12:53:41', '2024-03-14 12:53:41'),
(207, 321, 10, 12, 20, '2024-04-14 12:38:49', 'Trial', 'complete', 1, NULL, NULL, '2024-03-15 12:38:49', '2024-03-15 12:38:49'),
(208, 322, 10, 12, 20, '2024-04-14 16:06:07', 'Trial', 'complete', 1, NULL, NULL, '2024-03-15 16:06:07', '2024-03-15 16:06:07'),
(209, 323, 10, 12, 20, '2024-04-15 07:14:17', 'Trial', 'complete', 1, NULL, NULL, '2024-03-16 07:14:17', '2024-03-16 07:14:17'),
(210, 7, 10, 12, 20, '2024-04-15 18:21:16', 'wallet', 'complete', 1, NULL, NULL, '2024-03-16 18:21:16', '2024-03-16 18:21:16'),
(211, 7, 10, 12, 20, '2024-04-16 11:15:59', 'billplz', NULL, 0, NULL, NULL, '2024-03-17 11:15:59', '2024-03-17 11:15:59'),
(212, 7, 10, 12, 20, '2024-04-16 11:16:11', 'paytm', NULL, 0, NULL, NULL, '2024-03-17 11:16:11', '2024-03-17 11:16:11'),
(213, 7, 10, 12, 20, '2024-04-16 11:16:25', 'sitesway', NULL, 0, NULL, NULL, '2024-03-17 11:16:25', '2024-03-17 11:16:25'),
(214, 7, 10, 12, 20, '2024-04-16 11:16:33', 'mollie', NULL, 0, NULL, NULL, '2024-03-17 11:16:33', '2024-03-17 11:16:33'),
(215, 7, 10, 12, 20, '2024-04-16 11:16:43', 'midtrans', NULL, 0, NULL, NULL, '2024-03-17 11:16:43', '2024-03-17 11:16:43'),
(216, 7, 9, 20, 10, '2024-03-24 11:16:58', 'mollie', NULL, 0, NULL, NULL, '2024-03-17 11:16:58', '2024-03-17 11:16:58'),
(217, 325, 10, 12, 20, '2024-04-16 16:16:42', 'Trial', 'complete', 1, NULL, NULL, '2024-03-17 16:16:42', '2024-03-17 16:16:42'),
(218, 7, 9, 20, 10, '2024-03-24 20:10:19', 'paypal', NULL, 0, NULL, NULL, '2024-03-17 20:10:19', '2024-03-17 20:10:19'),
(219, 7, 9, 20, 10, '2024-03-26 00:14:14', 'stripe', 'complete', 1, 'pi_3OvmZZEmGOuJLTMs1CsMBmLc', NULL, '2024-03-19 00:14:14', '2024-03-19 00:15:07'),
(220, 331, 10, 12, 20, '2024-04-19 00:43:12', 'Trial', 'complete', 1, NULL, NULL, '2024-03-20 00:43:12', '2024-03-20 00:43:12'),
(221, 35, 9, 20, 10, '2024-03-28 00:00:52', 'paystack', NULL, 0, NULL, NULL, '2024-03-21 00:00:52', '2024-03-21 00:00:52'),
(222, 333, 10, 12, 20, '2024-04-20 12:49:33', 'Trial', 'complete', 1, NULL, NULL, '2024-03-21 12:49:33', '2024-03-21 12:49:33'),
(223, 334, 10, 12, 20, '2024-04-20 12:50:23', 'Trial', 'complete', 1, NULL, NULL, '2024-03-21 12:50:23', '2024-03-21 12:50:23'),
(224, 335, 10, 12, 20, '2024-04-20 16:05:01', 'Trial', 'complete', 1, NULL, NULL, '2024-03-21 16:05:01', '2024-03-21 16:05:01'),
(225, 337, 10, 12, 20, '2024-04-20 17:33:34', 'Trial', 'complete', 1, NULL, NULL, '2024-03-21 17:33:34', '2024-03-21 17:33:34'),
(226, 338, 10, 12, 20, '2024-04-22 04:09:58', 'Trial', 'complete', 1, NULL, NULL, '2024-03-23 04:09:58', '2024-03-23 04:09:58'),
(227, 339, 10, 12, 20, '2024-04-22 13:16:24', 'Trial', 'complete', 1, NULL, NULL, '2024-03-23 13:16:24', '2024-03-23 13:16:24'),
(228, 340, 10, 12, 20, '2024-04-22 13:17:37', 'Trial', 'complete', 1, NULL, NULL, '2024-03-23 13:17:37', '2024-03-23 13:17:37'),
(229, 7, 3, 30, 5, '2024-04-23 03:41:05', 'iyzipay', NULL, 0, NULL, NULL, '2024-03-24 03:41:05', '2024-03-24 03:41:05'),
(230, 7, 3, 30, 5, '2024-04-23 03:41:25', 'mollie', NULL, 0, NULL, NULL, '2024-03-24 03:41:25', '2024-03-24 03:41:25'),
(231, 341, 10, 12, 20, '2024-04-23 06:18:30', 'Trial', 'complete', 1, NULL, NULL, '2024-03-24 06:18:30', '2024-03-24 06:18:30'),
(232, 342, 10, 12, 20, '2024-04-23 13:57:53', 'Trial', 'complete', 1, NULL, NULL, '2024-03-24 13:57:53', '2024-03-24 13:57:53'),
(233, 345, 10, 12, 20, '2024-04-24 04:39:09', 'Trial', 'complete', 1, NULL, NULL, '2024-03-25 04:39:09', '2024-03-25 04:39:09'),
(234, 7, 10, 12, 20, '2024-04-24 07:45:07', 'stripe', NULL, 0, NULL, NULL, '2024-03-25 07:45:07', '2024-03-25 07:45:07'),
(235, 346, 10, 12, 20, '2024-04-24 07:52:03', 'Trial', 'complete', 1, NULL, NULL, '2024-03-25 07:52:03', '2024-03-25 07:52:03'),
(236, 7, 10, 12, 20, '2024-04-24 08:24:33', 'mollie', 'complete', 1, 'tr_oVW7wQvvW7', NULL, '2024-03-25 08:24:33', '2024-03-25 08:25:17'),
(237, 7, 10, 12, 20, '2024-04-24 08:26:08', 'mollie', 'complete', 1, 'tr_ENGiYkKCoc', NULL, '2024-03-25 08:26:08', '2024-03-25 08:26:28'),
(238, 347, 10, 12, 20, '2024-04-24 20:40:02', 'Trial', 'complete', 1, NULL, NULL, '2024-03-25 20:40:02', '2024-03-25 20:40:02'),
(239, 348, 10, 12, 20, '2024-04-25 00:30:22', 'Trial', 'complete', 1, NULL, NULL, '2024-03-26 00:30:22', '2024-03-26 00:30:22'),
(240, 7, 10, 12, 20, '2024-04-26 03:08:59', 'authorize_dot_net', NULL, 0, NULL, NULL, '2024-03-27 03:08:59', '2024-03-27 03:08:59'),
(241, 7, 10, 12, 20, '2024-04-26 03:09:12', 'authorize_dot_net', NULL, 0, NULL, NULL, '2024-03-27 03:09:12', '2024-03-27 03:09:12'),
(242, 351, 10, 12, 20, '2024-04-26 03:28:31', 'Trial', 'complete', 1, NULL, NULL, '2024-03-27 03:28:31', '2024-03-27 03:28:31'),
(243, 352, 10, 12, 20, '2024-04-26 14:59:36', 'Trial', 'complete', 1, NULL, NULL, '2024-03-27 14:59:36', '2024-03-27 14:59:36'),
(244, 354, 10, 12, 20, '2024-04-27 08:06:09', 'Trial', 'complete', 1, NULL, NULL, '2024-03-28 08:06:09', '2024-03-28 08:06:09'),
(245, 355, 10, 12, 20, '2024-04-27 09:03:45', 'Trial', 'complete', 1, NULL, NULL, '2024-03-28 09:03:45', '2024-03-28 09:03:45'),
(246, 357, 10, 12, 20, '2024-04-27 16:20:05', 'Trial', 'complete', 1, NULL, NULL, '2024-03-28 16:20:05', '2024-03-28 16:20:05'),
(247, 358, 10, 12, 20, '2024-04-28 02:22:36', 'Trial', 'complete', 1, NULL, NULL, '2024-03-29 02:22:36', '2024-03-29 02:22:36'),
(248, 359, 10, 12, 20, '2024-04-28 09:27:31', 'Trial', 'complete', 1, NULL, NULL, '2024-03-29 09:27:31', '2024-03-29 09:27:31'),
(249, 360, 10, 12, 20, '2024-04-28 09:34:15', 'Trial', 'complete', 1, NULL, NULL, '2024-03-29 09:34:15', '2024-03-29 09:34:15'),
(250, 363, 10, 12, 20, '2024-04-28 16:57:13', 'Trial', 'complete', 1, NULL, NULL, '2024-03-29 16:57:13', '2024-03-29 16:57:13'),
(251, 364, 10, 12, 20, '2024-04-28 18:15:15', 'Trial', 'complete', 1, NULL, NULL, '2024-03-29 18:15:15', '2024-03-29 18:15:15'),
(252, 365, 10, 12, 20, '2024-04-28 18:18:00', 'Trial', 'complete', 1, NULL, NULL, '2024-03-29 18:18:00', '2024-03-29 18:18:00'),
(253, 7, 9, 20, 10, '2024-04-06 13:12:55', 'stripe', NULL, 0, NULL, NULL, '2024-03-30 13:12:55', '2024-03-30 13:12:55'),
(254, 369, 10, 12, 20, '2024-04-30 13:53:54', 'Trial', 'complete', 1, NULL, NULL, '2024-03-31 13:53:54', '2024-03-31 13:53:54'),
(255, 371, 10, 12, 20, '2024-05-01 04:42:47', 'Trial', 'complete', 1, NULL, NULL, '2024-04-01 04:42:47', '2024-04-01 04:42:47'),
(256, 372, 10, 12, 20, '2024-05-01 04:43:31', 'Trial', 'complete', 1, NULL, NULL, '2024-04-01 04:43:31', '2024-04-01 04:43:31'),
(257, 373, 10, 12, 20, '2024-05-01 19:19:18', 'Trial', 'complete', 1, NULL, NULL, '2024-04-01 19:19:18', '2024-04-01 19:19:18'),
(258, 374, 10, 12, 20, '2024-05-02 09:08:43', 'Trial', 'complete', 1, NULL, NULL, '2024-04-02 09:08:43', '2024-04-02 09:08:43'),
(259, 375, 10, 12, 20, '2024-05-02 18:46:20', 'Trial', 'complete', 1, NULL, NULL, '2024-04-02 18:46:20', '2024-04-02 18:46:20'),
(260, 376, 10, 12, 20, '2024-05-03 14:23:44', 'Trial', 'complete', 1, NULL, NULL, '2024-04-03 14:23:44', '2024-04-03 14:23:44'),
(261, 7, 9, 20, 10, '2024-04-10 14:32:15', 'wallet', 'complete', 1, NULL, NULL, '2024-04-03 14:32:15', '2024-04-03 14:32:15'),
(262, 377, 10, 12, 20, '2024-05-04 05:18:23', 'Trial', 'complete', 1, NULL, NULL, '2024-04-04 05:18:23', '2024-04-04 05:18:23'),
(263, 7, 10, 12, 20, '2024-05-04 08:14:47', 'paypal', NULL, 0, NULL, NULL, '2024-04-04 08:14:47', '2024-04-04 08:14:47'),
(264, 379, 10, 12, 20, '2024-05-04 13:26:52', 'Trial', 'complete', 1, NULL, NULL, '2024-04-04 13:26:52', '2024-04-04 13:26:52'),
(265, 383, 10, 12, 20, '2024-05-05 18:26:33', 'Trial', 'complete', 1, NULL, NULL, '2024-04-05 18:26:33', '2024-04-05 18:26:33'),
(266, 384, 10, 12, 20, '2024-05-06 11:41:44', 'Trial', 'complete', 1, NULL, NULL, '2024-04-06 11:41:44', '2024-04-06 11:41:44'),
(267, 385, 10, 12, 20, '2024-05-06 18:23:53', 'Trial', 'complete', 1, NULL, NULL, '2024-04-06 18:23:53', '2024-04-06 18:23:53'),
(268, 386, 10, 12, 20, '2024-05-06 21:03:08', 'Trial', 'complete', 1, NULL, NULL, '2024-04-06 21:03:08', '2024-04-06 21:03:08'),
(269, 293, 9, 20, 10, '2024-04-15 13:03:56', 'stripe', NULL, 0, NULL, NULL, '2024-04-08 13:03:56', '2024-04-08 13:03:56'),
(270, 293, 9, 20, 10, '2024-04-15 13:04:14', 'paytabs', NULL, 0, NULL, NULL, '2024-04-08 13:04:14', '2024-04-08 13:04:14'),
(271, 293, 9, 20, 10, '2024-04-15 13:04:27', 'cashfree', NULL, 0, NULL, NULL, '2024-04-08 13:04:27', '2024-04-08 13:04:27'),
(272, 388, 10, 12, 20, '2024-05-08 18:27:14', 'Trial', 'complete', 1, NULL, NULL, '2024-04-08 18:27:14', '2024-04-08 18:27:14'),
(273, 390, 10, 12, 20, '2024-05-11 18:03:53', 'Trial', 'complete', 1, NULL, NULL, '2024-04-11 18:03:53', '2024-04-11 18:03:53'),
(274, 391, 10, 12, 20, '2024-05-11 18:04:41', 'Trial', 'complete', 1, NULL, NULL, '2024-04-11 18:04:41', '2024-04-11 18:04:41'),
(275, 393, 10, 12, 20, '2024-05-12 14:03:47', 'Trial', 'complete', 1, NULL, NULL, '2024-04-12 14:03:47', '2024-04-12 14:03:47'),
(276, 395, 10, 12, 20, '2024-05-13 02:10:17', 'Trial', 'complete', 1, NULL, NULL, '2024-04-13 02:10:17', '2024-04-13 02:10:17'),
(277, 397, 10, 12, 20, '2024-05-13 20:41:33', 'Trial', 'complete', 1, NULL, NULL, '2024-04-13 20:41:33', '2024-04-13 20:41:33'),
(278, 7, 9, 20, 10, '2024-04-21 05:52:56', 'flutterwave', NULL, 0, NULL, NULL, '2024-04-14 05:52:56', '2024-04-14 05:52:56'),
(279, 398, 10, 12, 20, '2024-05-16 00:20:39', 'Trial', 'complete', 1, NULL, NULL, '2024-04-16 00:20:39', '2024-04-16 00:20:39'),
(280, 7, 6, 50, 10, '2024-05-16 20:57:31', 'wallet', 'complete', 1, NULL, NULL, '2024-04-16 20:57:31', '2024-04-16 20:57:31'),
(281, 399, 10, 12, 20, '2024-05-17 00:12:07', 'Trial', 'complete', 1, NULL, NULL, '2024-04-17 00:12:07', '2024-04-17 00:12:07'),
(282, 401, 10, 12, 20, '2024-05-19 19:34:40', 'Trial', 'complete', 1, NULL, NULL, '2024-04-19 19:34:40', '2024-04-19 19:34:40'),
(283, 402, 10, 12, 20, '2024-05-19 19:57:15', 'Trial', 'complete', 1, NULL, NULL, '2024-04-19 19:57:15', '2024-04-19 19:57:15'),
(284, 403, 10, 12, 20, '2024-05-20 11:21:26', 'Trial', 'complete', 1, NULL, NULL, '2024-04-20 11:21:26', '2024-04-20 11:21:26'),
(285, 405, 10, 12, 20, '2024-05-21 01:04:25', 'Trial', 'complete', 1, NULL, NULL, '2024-04-21 01:04:25', '2024-04-21 01:04:25'),
(286, 406, 10, 12, 20, '2024-05-21 20:35:29', 'Trial', 'complete', 1, NULL, NULL, '2024-04-21 20:35:29', '2024-04-21 20:35:29');

-- --------------------------------------------------------

--
-- Table structure for table `user_works`
--

CREATE TABLE `user_works` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint NOT NULL,
  `category_id` bigint NOT NULL,
  `sub_category_id` bigint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_works`
--

INSERT INTO `user_works` (`id`, `user_id`, `category_id`, `sub_category_id`, `created_at`, `updated_at`) VALUES
(1, 7, 18, 22, '2023-02-12 06:09:10', '2023-11-28 05:24:33'),
(2, 8, 4, 6, '2023-05-17 01:38:56', '2023-09-18 01:02:37');

-- --------------------------------------------------------

--
-- Table structure for table `wallets`
--

CREATE TABLE `wallets` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint NOT NULL,
  `balance` double NOT NULL,
  `remaining_balance` double NOT NULL DEFAULT '0',
  `withdraw_amount` double NOT NULL DEFAULT '0',
  `status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wallets`
--

INSERT INTO `wallets` (`id`, `user_id`, `balance`, `remaining_balance`, `withdraw_amount`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 250, 0, 1, '2023-04-06 01:41:22', '2024-01-19 18:53:46'),
(2, 7, 1170, 2292, 752, 1, '2023-04-15 02:35:25', '2024-04-16 20:57:31'),
(3, 8, 39.5, 39.5, 0, 1, '2023-05-17 06:12:16', '2023-11-27 06:22:28'),
(4, 2, 140, 500, 0, 1, '2023-08-23 06:21:54', '2023-11-07 23:28:14'),
(5, 9, 0, 0, 0, 1, '2023-10-15 01:05:12', '2023-10-15 01:06:27'),
(6, 12, 0, 0, 0, 1, '2023-10-15 01:49:48', '2023-10-15 04:13:27'),
(8, 14, 0, 0, 0, 1, '2023-10-18 04:41:21', '2023-10-18 04:41:21'),
(9, 15, 0, 0, 0, 1, '2023-10-18 05:16:56', '2023-10-18 05:16:56'),
(10, 16, 0, 0, 0, 1, '2023-10-18 05:25:58', '2023-10-18 05:25:58'),
(11, 17, 0, 0, 0, 1, '2023-11-06 05:06:31', '2023-11-06 05:06:31'),
(12, 18, 0, 0, 0, 1, '2023-11-06 05:21:16', '2023-11-06 05:21:16'),
(13, 19, 0, 0, 0, 1, '2023-11-11 22:54:42', '2023-11-11 22:54:42'),
(14, 20, 0, 0, 0, 1, '2023-11-19 08:13:02', '2023-11-19 08:13:02'),
(15, 21, 0, 0, 0, 1, '2023-12-04 03:53:52', '2023-12-04 03:53:52'),
(16, 22, 0, 0, 0, 1, '2023-12-04 09:29:19', '2023-12-04 09:29:19'),
(17, 23, 0, 0, 0, 1, '2023-12-05 05:14:04', '2023-12-05 05:14:04'),
(18, 24, 0, 0, 0, 1, '2023-12-05 11:00:56', '2023-12-05 11:00:56'),
(19, 25, 0, 0, 0, 1, '2023-12-06 01:52:51', '2023-12-06 01:52:51'),
(20, 26, 0, 0, 0, 1, '2023-12-07 01:13:17', '2023-12-07 01:13:17'),
(21, 27, 0, 0, 0, 1, '2023-12-07 01:14:30', '2023-12-07 01:14:30'),
(22, 28, 0, 0, 0, 1, '2023-12-08 04:12:18', '2023-12-08 04:12:18'),
(23, 29, 0, 0, 0, 1, '2023-12-08 04:41:44', '2023-12-08 04:41:44'),
(24, 30, 0, 0, 0, 1, '2023-12-08 06:32:35', '2023-12-08 06:32:35'),
(25, 31, 0, 0, 0, 1, '2023-12-08 14:01:58', '2023-12-08 14:01:58'),
(26, 32, 0, 0, 0, 1, '2023-12-08 18:28:13', '2023-12-08 18:28:13'),
(27, 33, 0, 0, 0, 1, '2023-12-08 18:29:49', '2023-12-08 18:29:49'),
(28, 34, 0, 0, 0, 1, '2023-12-10 06:32:19', '2023-12-10 06:32:19'),
(29, 35, 0, 0, 0, 1, '2023-12-10 15:39:01', '2023-12-10 15:39:01'),
(30, 36, 0, 0, 0, 1, '2023-12-10 15:58:28', '2023-12-10 15:58:28'),
(31, 37, 0, 0, 0, 1, '2023-12-11 09:49:31', '2023-12-11 09:49:31'),
(32, 38, 0, 0, 0, 1, '2023-12-12 03:31:55', '2023-12-12 03:31:55'),
(33, 39, 0, 0, 0, 1, '2023-12-13 04:26:01', '2023-12-13 04:26:01'),
(34, 40, 0, 0, 0, 1, '2023-12-14 15:12:44', '2023-12-14 15:12:44'),
(35, 41, 0, 0, 0, 1, '2023-12-15 12:57:54', '2023-12-15 12:57:54'),
(36, 42, 0, 0, 0, 1, '2023-12-17 06:42:28', '2023-12-17 06:42:28'),
(37, 43, 0, 0, 0, 1, '2023-12-17 06:53:50', '2023-12-17 06:53:50'),
(38, 44, 0, 0, 0, 1, '2023-12-18 06:39:25', '2023-12-18 06:39:25'),
(39, 45, 0, 0, 0, 1, '2023-12-18 19:47:27', '2023-12-18 19:47:27'),
(40, 46, 0, 0, 0, 1, '2023-12-19 09:26:43', '2023-12-19 09:26:43'),
(41, 47, 0, 0, 0, 1, '2023-12-20 02:31:51', '2023-12-20 02:31:51'),
(42, 48, 0, 0, 0, 1, '2023-12-20 05:39:37', '2023-12-20 05:39:37'),
(43, 49, 0, 0, 0, 1, '2023-12-20 07:01:22', '2023-12-20 07:01:22'),
(44, 50, 0, 0, 0, 1, '2023-12-20 07:01:51', '2023-12-20 07:01:51'),
(45, 51, 0, 0, 0, 1, '2023-12-20 07:02:12', '2023-12-20 07:02:12'),
(46, 52, 0, 0, 0, 1, '2023-12-20 11:33:38', '2023-12-20 11:33:38'),
(47, 53, 0, 0, 0, 1, '2023-12-20 13:15:13', '2023-12-20 13:15:13'),
(48, 54, 0, 0, 0, 1, '2023-12-21 05:01:51', '2023-12-21 05:01:51'),
(49, 55, 0, 0, 0, 1, '2023-12-21 09:30:26', '2023-12-21 09:30:26'),
(50, 56, 0, 0, 0, 1, '2023-12-21 10:24:45', '2023-12-21 10:24:45'),
(51, 57, 0, 0, 0, 1, '2023-12-22 23:57:20', '2023-12-22 23:57:20'),
(52, 58, 0, 0, 0, 1, '2023-12-22 23:58:06', '2023-12-22 23:58:06'),
(53, 59, 0, 0, 0, 1, '2023-12-23 16:05:37', '2023-12-23 16:05:37'),
(54, 60, 0, 0, 0, 1, '2023-12-23 22:50:14', '2023-12-23 22:50:14'),
(55, 61, 0, 0, 0, 1, '2023-12-24 08:48:41', '2023-12-24 08:48:41'),
(56, 62, 0, 0, 0, 1, '2023-12-24 08:49:32', '2023-12-24 08:49:32'),
(57, 63, 0, 0, 0, 1, '2023-12-24 13:10:18', '2023-12-24 13:10:18'),
(58, 64, 0, 0, 0, 1, '2023-12-25 12:43:24', '2023-12-25 12:43:24'),
(59, 65, 0, 0, 0, 1, '2023-12-25 13:04:52', '2023-12-25 13:04:52'),
(60, 66, 0, 0, 0, 1, '2023-12-25 13:07:11', '2023-12-25 13:07:11'),
(61, 67, 0, 0, 0, 1, '2023-12-25 13:14:12', '2023-12-25 13:14:12'),
(62, 68, 0, 0, 0, 1, '2023-12-25 23:13:32', '2023-12-25 23:13:32'),
(63, 69, 0, 0, 0, 1, '2023-12-25 23:13:33', '2023-12-25 23:13:33'),
(64, 70, 0, 0, 0, 1, '2023-12-26 10:23:40', '2023-12-26 10:23:40'),
(65, 71, 0, 0, 0, 1, '2023-12-26 16:05:17', '2023-12-26 16:05:17'),
(66, 72, 0, 0, 0, 1, '2023-12-26 21:30:45', '2023-12-26 21:30:45'),
(67, 73, 0, 0, 0, 1, '2023-12-26 21:41:33', '2023-12-26 21:41:33'),
(68, 74, 0, 0, 0, 1, '2023-12-27 12:44:12', '2023-12-27 12:44:12'),
(69, 75, 0, 0, 0, 1, '2023-12-27 12:44:42', '2023-12-27 12:44:42'),
(70, 76, 0, 0, 0, 1, '2023-12-28 13:20:34', '2023-12-28 13:20:34'),
(71, 77, 0, 0, 0, 1, '2023-12-29 14:57:44', '2023-12-29 14:57:44'),
(72, 78, 0, 0, 0, 1, '2023-12-29 19:06:13', '2023-12-29 19:06:13'),
(73, 79, 0, 0, 0, 1, '2023-12-29 19:23:15', '2023-12-29 19:23:15'),
(74, 80, 0, 0, 0, 1, '2023-12-30 11:10:01', '2023-12-30 11:10:01'),
(75, 81, 0, 0, 0, 1, '2023-12-31 01:13:26', '2023-12-31 01:13:26'),
(76, 82, 0, 0, 0, 1, '2023-12-31 06:16:42', '2023-12-31 06:16:42'),
(77, 83, 0, 0, 0, 1, '2023-12-31 11:35:53', '2023-12-31 11:35:53'),
(78, 84, 0, 0, 0, 1, '2024-01-01 06:29:29', '2024-01-01 06:29:29'),
(79, 85, 0, 0, 0, 1, '2024-01-01 08:20:25', '2024-01-01 08:20:25'),
(80, 86, 0, 0, 0, 1, '2024-01-01 09:38:16', '2024-01-01 09:38:16'),
(81, 87, 0, 0, 0, 1, '2024-01-01 12:07:24', '2024-01-01 12:07:24'),
(82, 88, 0, 0, 0, 1, '2024-01-01 16:46:19', '2024-01-01 16:46:19'),
(83, 89, 0, 0, 0, 1, '2024-01-02 05:14:14', '2024-01-02 05:14:14'),
(84, 90, 0, 0, 0, 1, '2024-01-02 05:17:55', '2024-01-02 05:17:55'),
(85, 91, 0, 0, 0, 1, '2024-01-02 05:18:46', '2024-01-02 05:18:46'),
(86, 92, 0, 0, 0, 1, '2024-01-02 05:25:12', '2024-01-02 05:25:12'),
(87, 93, 0, 0, 0, 1, '2024-01-02 11:34:06', '2024-01-02 11:34:06'),
(88, 94, 0, 0, 0, 1, '2024-01-02 11:36:06', '2024-01-02 11:36:06'),
(89, 95, 0, 0, 0, 1, '2024-01-02 23:54:01', '2024-01-02 23:54:01'),
(90, 96, 0, 0, 0, 1, '2024-01-03 05:06:42', '2024-01-03 05:06:42'),
(91, 97, 0, 0, 0, 1, '2024-01-03 05:34:51', '2024-01-03 05:34:51'),
(92, 98, 0, 0, 0, 1, '2024-01-03 10:02:44', '2024-01-03 10:02:44'),
(93, 99, 0, 0, 0, 1, '2024-01-03 12:30:18', '2024-01-03 12:30:18'),
(94, 100, 0, 0, 0, 1, '2024-01-04 00:27:14', '2024-01-04 00:27:14'),
(95, 101, 0, 0, 0, 1, '2024-01-05 07:15:32', '2024-01-05 07:15:32'),
(96, 102, 0, 0, 0, 1, '2024-01-05 09:01:09', '2024-01-05 09:01:09'),
(97, 103, 0, 0, 0, 1, '2024-01-05 09:33:32', '2024-01-05 09:33:32'),
(98, 104, 0, 0, 0, 1, '2024-01-05 12:23:14', '2024-01-05 12:23:14'),
(99, 105, 0, 0, 0, 1, '2024-01-05 13:15:23', '2024-01-05 13:15:23'),
(100, 106, 0, 0, 0, 1, '2024-01-06 10:42:02', '2024-01-06 10:42:02'),
(101, 107, 0, 0, 0, 1, '2024-01-07 13:41:41', '2024-01-07 13:41:41'),
(102, 108, 0, 0, 0, 1, '2024-01-08 14:15:17', '2024-01-08 14:15:17'),
(103, 109, 0, 0, 0, 1, '2024-01-08 16:54:49', '2024-01-08 16:54:49'),
(104, 110, 0, 0, 0, 1, '2024-01-08 22:40:22', '2024-01-08 22:40:22'),
(105, 111, 0, 0, 0, 1, '2024-01-08 22:58:42', '2024-01-08 22:58:42'),
(106, 112, 0, 0, 0, 1, '2024-01-09 01:08:07', '2024-01-09 01:08:07'),
(107, 113, 0, 0, 0, 1, '2024-01-09 08:05:01', '2024-01-09 08:05:01'),
(108, 114, 0, 0, 0, 1, '2024-01-09 13:42:37', '2024-01-09 13:42:37'),
(109, 115, 0, 0, 0, 1, '2024-01-09 13:43:58', '2024-01-09 13:43:58'),
(110, 116, 0, 0, 0, 1, '2024-01-09 15:11:30', '2024-01-09 15:11:30'),
(111, 117, 0, 0, 0, 1, '2024-01-09 16:11:36', '2024-01-09 16:11:36'),
(112, 118, 0, 0, 0, 1, '2024-01-10 05:36:40', '2024-01-10 05:36:40'),
(113, 119, 0, 0, 0, 1, '2024-01-10 21:41:36', '2024-01-10 21:41:36'),
(114, 120, 0, 0, 0, 1, '2024-01-11 07:31:39', '2024-01-11 07:31:39'),
(115, 121, 0, 0, 0, 1, '2024-01-11 18:04:30', '2024-01-11 18:04:30'),
(116, 122, 0, 0, 0, 1, '2024-01-11 18:17:06', '2024-01-11 18:17:06'),
(117, 123, 0, 0, 0, 1, '2024-01-12 03:22:46', '2024-01-12 03:22:46'),
(118, 124, 0, 0, 0, 1, '2024-01-12 11:50:41', '2024-01-12 11:50:41'),
(119, 125, 0, 0, 0, 1, '2024-01-12 11:54:50', '2024-01-12 11:54:50'),
(120, 126, 0, 0, 0, 1, '2024-01-13 12:02:27', '2024-01-13 12:02:27'),
(121, 127, 0, 0, 0, 1, '2024-01-14 11:49:46', '2024-01-14 11:49:46'),
(122, 128, 0, 0, 0, 1, '2024-01-15 08:57:45', '2024-01-15 08:57:45'),
(123, 129, 0, 0, 0, 1, '2024-01-15 11:06:03', '2024-01-15 11:06:03'),
(124, 130, 0, 0, 0, 1, '2024-01-16 08:43:02', '2024-01-16 08:43:02'),
(125, 131, 0, 0, 0, 1, '2024-01-17 02:50:59', '2024-01-17 02:50:59'),
(126, 132, 0, 0, 0, 1, '2024-01-17 03:26:42', '2024-01-17 03:26:42'),
(127, 133, 0, 0, 0, 1, '2024-01-17 14:20:11', '2024-01-17 14:20:11'),
(128, 134, 0, 0, 0, 1, '2024-01-18 04:16:42', '2024-01-18 04:16:42'),
(129, 135, 0, 0, 0, 1, '2024-01-18 08:39:41', '2024-01-18 08:39:41'),
(130, 136, 0, 0, 0, 1, '2024-01-18 11:29:49', '2024-01-18 11:29:49'),
(131, 137, 0, 0, 0, 1, '2024-01-18 21:42:36', '2024-01-18 21:42:36'),
(132, 138, 0, 0, 0, 1, '2024-01-18 21:43:05', '2024-01-18 21:43:05'),
(133, 139, 0, 0, 0, 1, '2024-01-18 21:51:31', '2024-01-18 21:51:31'),
(134, 140, 0, 0, 0, 1, '2024-01-18 21:53:58', '2024-01-18 21:53:58'),
(135, 141, 0, 0, 0, 1, '2024-01-19 03:29:04', '2024-01-19 03:29:04'),
(136, 142, 0, 0, 0, 1, '2024-01-19 20:28:31', '2024-01-19 20:28:31'),
(137, 143, 0, 0, 0, 1, '2024-01-20 01:37:08', '2024-01-20 01:37:08'),
(138, 144, 0, 0, 0, 1, '2024-01-20 01:40:30', '2024-01-20 01:40:30'),
(139, 145, 0, 0, 0, 1, '2024-01-20 04:32:00', '2024-01-20 04:32:00'),
(140, 146, 0, 0, 0, 1, '2024-01-21 06:10:51', '2024-01-21 06:10:51'),
(141, 147, 0, 0, 0, 1, '2024-01-21 07:37:56', '2024-01-21 07:37:56'),
(142, 148, 0, 0, 0, 1, '2024-01-21 07:43:12', '2024-01-21 07:43:12'),
(143, 149, 0, 0, 0, 1, '2024-01-22 06:30:25', '2024-01-22 06:30:25'),
(144, 150, 0, 0, 0, 1, '2024-01-24 00:24:38', '2024-01-24 00:24:38'),
(145, 151, 0, 0, 0, 1, '2024-01-24 07:02:37', '2024-01-24 07:02:37'),
(146, 152, 0, 0, 0, 1, '2024-01-24 07:25:33', '2024-01-24 07:25:33'),
(147, 153, 0, 0, 0, 1, '2024-01-25 12:08:52', '2024-01-25 12:08:52'),
(148, 154, 0, 0, 0, 1, '2024-01-26 01:50:10', '2024-01-26 01:50:10'),
(149, 155, 0, 0, 0, 1, '2024-01-26 01:51:01', '2024-01-26 01:51:01'),
(150, 156, 0, 0, 0, 1, '2024-01-26 09:10:03', '2024-01-26 09:10:03'),
(151, 157, 0, 0, 0, 1, '2024-01-26 11:35:24', '2024-01-26 11:35:24'),
(152, 158, 0, 0, 0, 1, '2024-01-27 07:10:29', '2024-01-27 07:10:29'),
(153, 159, 0, 0, 0, 1, '2024-01-27 08:52:34', '2024-01-27 08:52:34'),
(154, 160, 0, 0, 0, 1, '2024-01-28 09:27:54', '2024-01-28 09:27:54'),
(155, 161, 0, 0, 0, 1, '2024-01-28 11:41:55', '2024-01-28 11:41:55'),
(156, 162, 0, 0, 0, 1, '2024-01-29 05:16:57', '2024-01-29 05:16:57'),
(157, 163, 0, 0, 0, 1, '2024-01-30 00:23:05', '2024-01-30 00:23:05'),
(158, 164, 0, 0, 0, 1, '2024-01-30 00:23:57', '2024-01-30 00:23:57'),
(159, 165, 0, 0, 0, 1, '2024-01-30 00:32:38', '2024-01-30 00:32:38'),
(160, 166, 0, 0, 0, 1, '2024-01-30 03:54:23', '2024-01-30 03:54:23'),
(161, 167, 0, 0, 0, 1, '2024-01-30 04:08:28', '2024-01-30 04:08:28'),
(162, 168, 0, 0, 0, 1, '2024-01-30 04:17:26', '2024-01-30 04:17:26'),
(163, 169, 0, 0, 0, 1, '2024-01-30 04:19:33', '2024-01-30 04:19:33'),
(164, 170, 0, 0, 0, 1, '2024-01-30 04:21:22', '2024-01-30 04:21:22'),
(165, 171, 0, 0, 0, 1, '2024-01-30 04:24:41', '2024-01-30 04:24:41'),
(166, 172, 0, 0, 0, 1, '2024-01-30 09:14:05', '2024-01-30 09:14:05'),
(167, 173, 0, 0, 0, 1, '2024-01-30 11:00:39', '2024-01-30 11:00:39'),
(168, 174, 0, 0, 0, 1, '2024-01-30 11:01:26', '2024-01-30 11:01:26'),
(169, 175, 0, 0, 0, 1, '2024-01-31 02:56:40', '2024-01-31 02:56:40'),
(170, 176, 0, 0, 0, 1, '2024-01-31 03:06:31', '2024-01-31 03:06:31'),
(171, 177, 0, 0, 0, 1, '2024-02-01 02:41:56', '2024-02-01 02:41:56'),
(172, 178, 0, 0, 0, 1, '2024-02-01 06:23:40', '2024-02-01 06:23:40'),
(173, 179, 0, 0, 0, 1, '2024-02-01 09:01:29', '2024-02-01 09:01:29'),
(174, 180, 0, 0, 0, 1, '2024-02-01 15:50:09', '2024-02-01 15:50:09'),
(175, 181, 0, 0, 0, 1, '2024-02-02 06:06:20', '2024-02-02 06:06:20'),
(176, 182, 0, 0, 0, 1, '2024-02-02 10:47:44', '2024-02-02 10:47:44'),
(177, 183, 0, 0, 0, 1, '2024-02-04 17:45:13', '2024-02-04 17:45:13'),
(178, 184, 0, 0, 0, 1, '2024-02-05 14:04:14', '2024-02-05 14:04:14'),
(179, 185, 0, 0, 0, 1, '2024-02-06 09:20:36', '2024-02-06 09:20:36'),
(180, 186, 0, 0, 0, 1, '2024-02-06 10:09:49', '2024-02-06 10:09:49'),
(181, 187, 0, 0, 0, 1, '2024-02-06 12:35:53', '2024-02-06 12:35:53'),
(182, 188, 0, 0, 0, 1, '2024-02-06 23:15:23', '2024-02-06 23:15:23'),
(183, 189, 0, 0, 0, 1, '2024-02-07 04:47:30', '2024-02-07 04:47:30'),
(184, 190, 0, 0, 0, 1, '2024-02-07 04:48:46', '2024-02-07 04:48:46'),
(185, 191, 0, 0, 0, 1, '2024-02-07 22:55:02', '2024-02-07 22:55:02'),
(186, 192, 0, 0, 0, 1, '2024-02-08 08:54:48', '2024-02-08 08:54:48'),
(187, 193, 0, 0, 0, 1, '2024-02-08 11:46:31', '2024-02-08 11:46:31'),
(188, 194, 0, 0, 0, 1, '2024-02-08 15:18:29', '2024-02-08 15:18:29'),
(189, 195, 0, 0, 0, 1, '2024-02-08 21:02:59', '2024-02-08 21:02:59'),
(190, 196, 0, 0, 0, 1, '2024-02-08 21:05:00', '2024-02-08 21:05:00'),
(191, 197, 0, 0, 0, 1, '2024-02-10 00:02:49', '2024-02-10 00:02:49'),
(192, 198, 0, 0, 0, 1, '2024-02-11 00:33:17', '2024-02-11 00:33:17'),
(193, 199, 0, 0, 0, 1, '2024-02-12 06:10:00', '2024-02-12 06:10:00'),
(194, 200, 0, 0, 0, 1, '2024-02-13 16:04:05', '2024-02-13 16:04:05'),
(195, 201, 0, 0, 0, 1, '2024-02-15 01:46:01', '2024-02-15 01:46:01'),
(196, 202, 0, 0, 0, 1, '2024-02-15 11:36:12', '2024-02-15 11:36:12'),
(197, 203, 0, 0, 0, 1, '2024-02-15 11:38:08', '2024-02-15 11:38:08'),
(198, 204, 0, 0, 0, 1, '2024-02-15 21:28:51', '2024-02-15 21:28:51'),
(199, 205, 0, 0, 0, 1, '2024-02-16 08:12:51', '2024-02-16 08:12:51'),
(200, 206, 0, 0, 0, 1, '2024-02-16 14:02:15', '2024-02-16 14:02:15'),
(201, 207, 0, 0, 0, 1, '2024-02-16 22:37:49', '2024-02-16 22:37:49'),
(202, 208, 0, 0, 0, 1, '2024-02-16 22:43:17', '2024-02-16 22:43:17'),
(203, 209, 0, 0, 0, 1, '2024-02-16 22:49:00', '2024-02-16 22:49:00'),
(204, 210, 0, 0, 0, 1, '2024-02-16 23:46:07', '2024-02-16 23:46:07'),
(205, 211, 0, 0, 0, 1, '2024-02-16 23:49:20', '2024-02-16 23:49:20'),
(206, 212, 0, 0, 0, 1, '2024-02-16 23:54:06', '2024-02-16 23:54:06'),
(207, 213, 0, 0, 0, 1, '2024-02-16 23:56:06', '2024-02-16 23:56:06'),
(208, 214, 0, 0, 0, 1, '2024-02-16 23:57:49', '2024-02-16 23:57:49'),
(209, 215, 0, 0, 0, 1, '2024-02-16 23:58:32', '2024-02-16 23:58:32'),
(210, 216, 0, 0, 0, 1, '2024-02-16 23:58:58', '2024-02-16 23:58:58'),
(211, 217, 0, 0, 0, 1, '2024-02-16 23:59:35', '2024-02-16 23:59:35'),
(212, 218, 0, 0, 0, 1, '2024-02-17 00:00:26', '2024-02-17 00:00:26'),
(213, 219, 0, 0, 0, 1, '2024-02-17 00:02:09', '2024-02-17 00:02:09'),
(214, 220, 0, 0, 0, 1, '2024-02-17 00:05:07', '2024-02-17 00:05:07'),
(215, 221, 0, 0, 0, 1, '2024-02-17 00:29:09', '2024-02-17 00:29:09'),
(216, 222, 0, 0, 0, 1, '2024-02-17 01:36:12', '2024-02-17 01:36:12'),
(217, 223, 0, 0, 0, 1, '2024-02-17 01:39:35', '2024-02-17 01:39:35'),
(218, 224, 0, 0, 0, 1, '2024-02-17 10:18:34', '2024-02-17 10:18:34'),
(219, 225, 0, 0, 0, 1, '2024-02-17 11:08:38', '2024-02-17 11:08:38'),
(220, 226, 0, 0, 0, 1, '2024-02-18 09:28:08', '2024-02-18 09:28:08'),
(221, 227, 0, 0, 0, 1, '2024-02-18 17:26:22', '2024-02-18 17:26:22'),
(222, 228, 0, 0, 0, 1, '2024-02-19 08:26:45', '2024-02-19 08:26:45'),
(223, 229, 0, 0, 0, 1, '2024-02-19 14:58:39', '2024-02-19 14:58:39'),
(224, 230, 0, 0, 0, 1, '2024-02-19 14:59:21', '2024-02-19 14:59:21'),
(225, 231, 0, 0, 0, 1, '2024-02-19 15:44:26', '2024-02-19 15:44:26'),
(226, 232, 0, 0, 0, 1, '2024-02-19 21:04:43', '2024-02-19 21:04:43'),
(227, 233, 0, 0, 0, 1, '2024-02-19 21:26:22', '2024-02-19 21:26:22'),
(228, 234, 0, 0, 0, 1, '2024-02-20 00:40:23', '2024-02-20 00:40:23'),
(229, 236, 0, 0, 0, 1, '2024-02-20 00:41:02', '2024-02-20 00:41:02'),
(230, 237, 0, 0, 0, 1, '2024-02-20 00:41:22', '2024-02-20 00:41:22'),
(231, 238, 0, 0, 0, 1, '2024-02-20 01:15:51', '2024-02-20 01:15:51'),
(232, 239, 0, 0, 0, 1, '2024-02-20 09:15:10', '2024-02-20 09:15:10'),
(233, 240, 0, 0, 0, 1, '2024-02-20 10:26:07', '2024-02-20 10:26:07'),
(234, 241, 0, 0, 0, 1, '2024-02-20 13:01:14', '2024-02-20 13:01:14'),
(235, 242, 0, 0, 0, 1, '2024-02-21 01:54:54', '2024-02-21 01:54:54'),
(236, 243, 0, 0, 0, 1, '2024-02-21 04:50:17', '2024-02-21 04:50:17'),
(237, 244, 0, 0, 0, 1, '2024-02-21 10:08:01', '2024-02-21 10:08:01'),
(238, 245, 0, 0, 0, 1, '2024-02-22 10:53:23', '2024-02-22 10:53:23'),
(239, 246, 0, 0, 0, 1, '2024-02-22 15:13:58', '2024-02-22 15:13:58'),
(240, 247, 0, 0, 0, 1, '2024-02-22 17:40:19', '2024-02-22 17:40:19'),
(241, 248, 0, 0, 0, 1, '2024-02-23 02:32:37', '2024-02-23 02:32:37'),
(242, 249, 0, 0, 0, 1, '2024-02-23 05:51:22', '2024-02-23 05:51:22'),
(243, 250, 0, 0, 0, 1, '2024-02-23 12:00:23', '2024-02-23 12:00:23'),
(244, 251, 0, 0, 0, 1, '2024-02-23 13:41:55', '2024-02-23 13:41:55'),
(245, 252, 0, 0, 0, 1, '2024-02-23 16:08:48', '2024-02-23 16:08:48'),
(246, 253, 0, 0, 0, 1, '2024-02-23 21:15:54', '2024-02-23 21:15:54'),
(247, 254, 0, 0, 0, 1, '2024-02-24 05:47:25', '2024-02-24 05:47:25'),
(248, 255, 0, 0, 0, 1, '2024-02-24 09:11:47', '2024-02-24 09:11:47'),
(249, 256, 0, 0, 0, 1, '2024-02-24 09:58:57', '2024-02-24 09:58:57'),
(250, 257, 0, 0, 0, 1, '2024-02-24 11:32:29', '2024-02-24 11:32:29'),
(251, 258, 0, 0, 0, 1, '2024-02-24 12:14:21', '2024-02-24 12:14:21'),
(252, 259, 0, 0, 0, 1, '2024-02-24 12:25:02', '2024-02-24 12:25:02'),
(253, 260, 0, 0, 0, 1, '2024-02-24 13:55:17', '2024-02-24 13:55:17'),
(254, 261, 0, 0, 0, 1, '2024-02-24 18:03:29', '2024-02-24 18:03:29'),
(255, 262, 0, 0, 0, 1, '2024-02-24 18:04:29', '2024-02-24 18:04:29'),
(256, 263, 0, 0, 0, 1, '2024-02-27 14:49:58', '2024-02-27 14:49:58'),
(257, 264, 0, 0, 0, 1, '2024-02-27 14:51:03', '2024-02-27 14:51:03'),
(258, 265, 0, 0, 0, 1, '2024-02-27 14:53:04', '2024-02-27 14:53:04'),
(259, 266, 0, 0, 0, 1, '2024-02-28 03:54:59', '2024-02-28 03:54:59'),
(260, 267, 0, 0, 0, 1, '2024-02-28 13:32:23', '2024-02-28 13:32:23'),
(261, 268, 0, 0, 0, 1, '2024-02-28 17:10:31', '2024-02-28 17:10:31'),
(262, 269, 0, 0, 0, 1, '2024-02-29 08:12:06', '2024-02-29 08:12:06'),
(263, 270, 0, 0, 0, 1, '2024-02-29 09:41:21', '2024-02-29 09:41:21'),
(264, 271, 0, 0, 0, 1, '2024-02-29 14:22:49', '2024-02-29 14:22:49'),
(265, 272, 0, 0, 0, 1, '2024-02-29 15:30:49', '2024-02-29 15:30:49'),
(266, 273, 0, 0, 0, 1, '2024-02-29 17:25:44', '2024-02-29 17:25:44'),
(267, 274, 0, 0, 0, 1, '2024-03-01 01:46:54', '2024-03-01 01:46:54'),
(268, 275, 0, 0, 0, 1, '2024-03-01 01:48:29', '2024-03-01 01:48:29'),
(269, 276, 0, 0, 0, 1, '2024-03-01 15:39:06', '2024-03-01 15:39:06'),
(270, 277, 0, 0, 0, 1, '2024-03-01 15:54:27', '2024-03-01 15:54:27'),
(271, 278, 0, 0, 0, 1, '2024-03-01 22:44:55', '2024-03-01 22:44:55'),
(272, 279, 0, 0, 0, 1, '2024-03-02 12:39:21', '2024-03-02 12:39:21'),
(273, 280, 0, 0, 0, 1, '2024-03-02 18:57:14', '2024-03-02 18:57:14'),
(274, 281, 0, 0, 0, 1, '2024-03-02 21:17:09', '2024-03-02 21:17:09'),
(275, 282, 0, 0, 0, 1, '2024-03-02 22:14:31', '2024-03-02 22:14:31'),
(276, 283, 0, 0, 0, 1, '2024-03-02 22:22:02', '2024-03-02 22:22:02'),
(277, 284, 0, 0, 0, 1, '2024-03-02 22:25:44', '2024-03-02 22:25:44'),
(278, 285, 0, 0, 0, 1, '2024-03-02 22:26:56', '2024-03-02 22:26:56'),
(279, 286, 0, 0, 0, 1, '2024-03-02 22:58:52', '2024-03-02 22:58:52'),
(280, 287, 0, 0, 0, 1, '2024-03-02 23:03:25', '2024-03-02 23:03:25'),
(281, 288, 0, 0, 0, 1, '2024-03-03 10:49:17', '2024-03-03 10:49:17'),
(282, 289, 0, 0, 0, 1, '2024-03-03 13:11:30', '2024-03-03 13:11:30'),
(283, 290, 0, 0, 0, 1, '2024-03-03 20:05:01', '2024-03-03 20:05:01'),
(284, 291, 0, 0, 0, 1, '2024-03-03 22:33:47', '2024-03-03 22:33:47'),
(285, 292, 0, 0, 0, 1, '2024-03-04 01:39:43', '2024-03-04 01:39:43'),
(286, 293, 0, 0, 0, 1, '2024-03-04 04:46:02', '2024-03-04 04:46:02'),
(287, 294, 0, 0, 0, 1, '2024-03-04 16:37:20', '2024-03-04 16:37:20'),
(288, 295, 0, 0, 0, 1, '2024-03-05 00:14:54', '2024-03-05 00:14:54'),
(289, 296, 0, 0, 0, 1, '2024-03-05 00:15:33', '2024-03-05 00:15:33'),
(290, 297, 0, 0, 0, 1, '2024-03-05 07:56:58', '2024-03-05 07:56:58'),
(291, 298, 0, 0, 0, 1, '2024-03-05 12:37:20', '2024-03-05 12:37:20'),
(292, 299, 0, 0, 0, 1, '2024-03-05 17:14:41', '2024-03-05 17:14:41'),
(293, 300, 0, 0, 0, 1, '2024-03-05 19:41:59', '2024-03-05 19:41:59'),
(294, 301, 0, 0, 0, 1, '2024-03-06 09:23:58', '2024-03-06 09:23:58'),
(295, 302, 0, 0, 0, 1, '2024-03-06 11:06:44', '2024-03-06 11:06:44'),
(296, 304, 0, 0, 0, 1, '2024-03-06 19:44:49', '2024-03-06 19:44:49'),
(297, 305, 0, 0, 0, 1, '2024-03-06 23:37:31', '2024-03-06 23:37:31'),
(298, 306, 0, 0, 0, 1, '2024-03-07 02:04:06', '2024-03-07 02:04:06'),
(299, 307, 0, 0, 0, 1, '2024-03-07 09:30:50', '2024-03-07 09:30:50'),
(300, 308, 0, 0, 0, 1, '2024-03-08 19:42:31', '2024-03-08 19:42:31'),
(301, 309, 0, 0, 0, 1, '2024-03-09 01:41:58', '2024-03-09 01:41:58'),
(302, 310, 0, 0, 0, 1, '2024-03-09 23:10:58', '2024-03-09 23:10:58'),
(303, 312, 0, 0, 0, 1, '2024-03-12 08:41:49', '2024-03-12 08:41:49'),
(304, 313, 0, 0, 0, 1, '2024-03-12 08:44:46', '2024-03-12 08:44:46'),
(305, 314, 0, 0, 0, 1, '2024-03-12 12:26:14', '2024-03-12 12:26:14'),
(306, 315, 0, 0, 0, 1, '2024-03-12 15:01:42', '2024-03-12 15:01:42'),
(307, 316, 0, 0, 0, 1, '2024-03-12 15:02:37', '2024-03-12 15:02:37'),
(308, 317, 0, 0, 0, 1, '2024-03-12 16:44:10', '2024-03-12 16:44:10'),
(309, 318, 0, 0, 0, 1, '2024-03-13 13:32:10', '2024-03-13 13:32:10'),
(310, 319, 0, 0, 0, 1, '2024-03-14 12:08:44', '2024-03-14 12:08:44'),
(311, 320, 0, 0, 0, 1, '2024-03-14 12:53:41', '2024-03-14 12:53:41'),
(312, 321, 0, 0, 0, 1, '2024-03-15 12:38:49', '2024-03-15 12:38:49'),
(313, 322, 0, 0, 0, 1, '2024-03-15 16:06:07', '2024-03-15 16:06:07'),
(314, 323, 0, 0, 0, 1, '2024-03-16 07:14:17', '2024-03-16 07:14:17'),
(315, 324, 0, 0, 0, 1, '2024-03-16 09:39:05', '2024-03-16 09:39:05'),
(316, 325, 0, 0, 0, 1, '2024-03-17 16:16:42', '2024-03-17 16:16:42'),
(317, 326, 0, 0, 0, 1, '2024-03-17 17:20:57', '2024-03-17 17:20:57'),
(318, 327, 0, 0, 0, 1, '2024-03-18 23:55:11', '2024-03-18 23:55:11'),
(319, 328, 0, 0, 0, 1, '2024-03-18 23:57:31', '2024-03-18 23:57:31'),
(320, 329, 0, 0, 0, 1, '2024-03-19 11:37:35', '2024-03-19 11:37:35'),
(321, 330, 0, 0, 0, 1, '2024-03-19 11:39:09', '2024-03-19 11:39:09'),
(322, 331, 0, 0, 0, 1, '2024-03-20 00:43:12', '2024-03-20 00:43:12'),
(323, 332, 0, 0, 0, 1, '2024-03-21 01:44:22', '2024-03-21 01:44:22'),
(324, 333, 0, 0, 0, 1, '2024-03-21 12:49:33', '2024-03-21 12:49:33'),
(325, 334, 0, 0, 0, 1, '2024-03-21 12:50:23', '2024-03-21 12:50:23'),
(326, 335, 0, 0, 0, 1, '2024-03-21 16:05:01', '2024-03-21 16:05:01'),
(327, 336, 0, 0, 0, 1, '2024-03-21 16:56:09', '2024-03-21 16:56:09'),
(328, 337, 0, 0, 0, 1, '2024-03-21 17:33:34', '2024-03-21 17:33:34'),
(329, 338, 0, 0, 0, 1, '2024-03-23 04:09:58', '2024-03-23 04:09:58'),
(330, 339, 0, 0, 0, 1, '2024-03-23 13:16:24', '2024-03-23 13:16:24'),
(331, 340, 0, 0, 0, 1, '2024-03-23 13:17:37', '2024-03-23 13:17:37'),
(332, 341, 0, 0, 0, 1, '2024-03-24 06:18:30', '2024-03-24 06:18:30'),
(333, 342, 0, 0, 0, 1, '2024-03-24 13:57:53', '2024-03-24 13:57:53'),
(334, 343, 0, 0, 0, 1, '2024-03-24 16:13:05', '2024-03-24 16:13:05'),
(335, 344, 0, 0, 0, 1, '2024-03-24 23:49:05', '2024-03-24 23:49:05'),
(336, 345, 0, 0, 0, 1, '2024-03-25 04:39:09', '2024-03-25 04:39:09'),
(337, 346, 0, 0, 0, 1, '2024-03-25 07:52:03', '2024-03-25 07:52:03'),
(338, 347, 0, 0, 0, 1, '2024-03-25 20:40:02', '2024-03-25 20:40:02'),
(339, 348, 0, 0, 0, 1, '2024-03-26 00:30:22', '2024-03-26 00:30:22'),
(340, 349, 0, 0, 0, 1, '2024-03-26 09:47:51', '2024-03-26 09:47:51'),
(341, 350, 0, 0, 0, 1, '2024-03-26 15:42:58', '2024-03-26 15:42:58'),
(342, 351, 0, 0, 0, 1, '2024-03-27 03:28:31', '2024-03-27 03:28:31'),
(343, 352, 0, 0, 0, 1, '2024-03-27 14:59:36', '2024-03-27 14:59:36'),
(344, 353, 0, 0, 0, 1, '2024-03-27 19:08:02', '2024-03-27 19:08:02'),
(345, 354, 0, 0, 0, 1, '2024-03-28 08:06:09', '2024-03-28 08:06:09'),
(346, 355, 0, 0, 0, 1, '2024-03-28 09:03:45', '2024-03-28 09:03:45'),
(347, 356, 0, 0, 0, 1, '2024-03-28 09:40:08', '2024-03-28 09:40:08'),
(348, 357, 0, 0, 0, 1, '2024-03-28 16:20:05', '2024-03-28 16:20:05'),
(349, 358, 0, 0, 0, 1, '2024-03-29 02:22:36', '2024-03-29 02:22:36'),
(350, 359, 0, 0, 0, 1, '2024-03-29 09:27:31', '2024-03-29 09:27:31'),
(351, 360, 0, 0, 0, 1, '2024-03-29 09:34:15', '2024-03-29 09:34:15'),
(352, 361, 0, 0, 0, 1, '2024-03-29 09:42:23', '2024-03-29 09:42:23'),
(353, 362, 0, 0, 0, 1, '2024-03-29 11:04:26', '2024-03-29 11:04:26'),
(354, 363, 0, 0, 0, 1, '2024-03-29 16:57:12', '2024-03-29 16:57:12'),
(355, 364, 0, 0, 0, 1, '2024-03-29 18:15:15', '2024-03-29 18:15:15'),
(356, 365, 0, 0, 0, 1, '2024-03-29 18:18:00', '2024-03-29 18:18:00'),
(357, 366, 0, 0, 0, 1, '2024-03-30 07:03:39', '2024-03-30 07:03:39'),
(358, 367, 0, 0, 0, 1, '2024-03-30 09:47:56', '2024-03-30 09:47:56'),
(359, 368, 0, 0, 0, 1, '2024-03-30 22:22:51', '2024-03-30 22:22:51'),
(360, 369, 0, 0, 0, 1, '2024-03-31 13:53:54', '2024-03-31 13:53:54'),
(361, 370, 0, 0, 0, 1, '2024-03-31 15:53:03', '2024-03-31 15:53:03'),
(362, 371, 0, 0, 0, 1, '2024-04-01 04:42:47', '2024-04-01 04:42:47'),
(363, 372, 0, 0, 0, 1, '2024-04-01 04:43:31', '2024-04-01 04:43:31'),
(364, 373, 0, 0, 0, 1, '2024-04-01 19:19:18', '2024-04-01 19:19:18'),
(365, 374, 0, 0, 0, 1, '2024-04-02 09:08:43', '2024-04-02 09:08:43'),
(366, 375, 0, 0, 0, 1, '2024-04-02 18:46:20', '2024-04-02 18:46:20'),
(367, 376, 0, 0, 0, 1, '2024-04-03 14:23:44', '2024-04-03 14:23:44'),
(368, 377, 0, 0, 0, 1, '2024-04-04 05:18:23', '2024-04-04 05:18:23'),
(369, 378, 0, 0, 0, 1, '2024-04-04 09:26:56', '2024-04-04 09:26:56'),
(370, 379, 0, 0, 0, 1, '2024-04-04 13:26:52', '2024-04-04 13:26:52'),
(371, 380, 0, 0, 0, 1, '2024-04-04 13:40:31', '2024-04-04 13:40:31'),
(372, 381, 0, 0, 0, 1, '2024-04-05 14:54:28', '2024-04-05 14:54:28'),
(373, 382, 0, 0, 0, 1, '2024-04-05 14:55:07', '2024-04-05 14:55:07'),
(374, 383, 0, 0, 0, 1, '2024-04-05 18:26:33', '2024-04-05 18:26:33'),
(375, 384, 0, 0, 0, 1, '2024-04-06 11:41:44', '2024-04-06 11:41:44'),
(376, 385, 0, 0, 0, 1, '2024-04-06 18:23:53', '2024-04-06 18:23:53'),
(377, 386, 0, 0, 0, 1, '2024-04-06 21:03:08', '2024-04-06 21:03:08'),
(378, 387, 0, 0, 0, 1, '2024-04-08 06:03:41', '2024-04-08 06:03:41'),
(379, 388, 0, 0, 0, 1, '2024-04-08 18:27:14', '2024-04-08 18:27:14'),
(380, 389, 0, 0, 0, 1, '2024-04-08 21:24:03', '2024-04-08 21:24:03'),
(381, 390, 0, 0, 0, 1, '2024-04-11 18:03:53', '2024-04-11 18:03:53'),
(382, 391, 0, 0, 0, 1, '2024-04-11 18:04:41', '2024-04-11 18:04:41'),
(383, 392, 0, 0, 0, 1, '2024-04-11 20:13:24', '2024-04-11 20:13:24'),
(384, 393, 0, 0, 0, 1, '2024-04-12 14:03:47', '2024-04-12 14:03:47'),
(385, 394, 0, 0, 0, 1, '2024-04-12 20:36:25', '2024-04-12 20:36:25'),
(386, 395, 0, 0, 0, 1, '2024-04-13 02:10:17', '2024-04-13 02:10:17'),
(387, 396, 0, 0, 0, 1, '2024-04-13 13:01:30', '2024-04-13 13:01:30'),
(388, 397, 0, 0, 0, 1, '2024-04-13 20:41:33', '2024-04-13 20:41:33'),
(389, 398, 0, 0, 0, 1, '2024-04-16 00:20:39', '2024-04-16 00:20:39'),
(390, 399, 0, 0, 0, 1, '2024-04-17 00:12:07', '2024-04-17 00:12:07'),
(391, 400, 0, 0, 0, 1, '2024-04-17 00:33:15', '2024-04-17 00:33:15'),
(392, 401, 0, 0, 0, 1, '2024-04-19 19:34:40', '2024-04-19 19:34:40'),
(393, 402, 0, 0, 0, 1, '2024-04-19 19:57:15', '2024-04-19 19:57:15'),
(394, 403, 0, 0, 0, 1, '2024-04-20 11:21:26', '2024-04-20 11:21:26'),
(395, 404, 0, 0, 0, 1, '2024-04-20 23:13:00', '2024-04-20 23:13:00'),
(396, 405, 0, 0, 0, 1, '2024-04-21 01:04:25', '2024-04-21 01:04:25'),
(397, 406, 0, 0, 0, 1, '2024-04-21 20:35:29', '2024-04-21 20:35:29'),
(398, 407, 0, 0, 0, 1, '2024-04-22 11:24:46', '2024-04-22 11:24:46');

-- --------------------------------------------------------

--
-- Table structure for table `wallet_histories`
--

CREATE TABLE `wallet_histories` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint NOT NULL,
  `payment_gateway` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` double NOT NULL DEFAULT '0',
  `transaction_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `manual_payment_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wallet_histories`
--

INSERT INTO `wallet_histories` (`id`, `user_id`, `payment_gateway`, `payment_status`, `amount`, `transaction_id`, `manual_payment_image`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 'stripe', 'complete', 300, 'pi_3OA3qvEmGOuJLTMs1Jxz8St3', '0', 1, '2023-11-07 22:58:54', '2023-11-07 22:59:34'),
(2, 2, 'mollie', 'complete', 200, 'tr_r6jpWbWabY', '0', 1, '2023-11-07 23:00:16', '2023-11-07 23:01:31'),
(3, 7, 'mollie', 'complete', 250, 'tr_8DFZ2Eu9dh', '0', 1, '2023-11-11 22:43:14', '2023-11-11 22:44:36'),
(4, 1, 'stripe', 'complete', 250, 'pi_3OCKlaEmGOuJLTMs1gvfeayb', '0', 1, '2023-11-14 05:26:48', '2023-11-14 05:27:09'),
(5, 1, 'paypal', '', 500, NULL, '0', 1, '2023-12-04 00:28:25', '2023-12-04 00:28:25');

-- --------------------------------------------------------

--
-- Table structure for table `widgets`
--

CREATE TABLE `widgets` (
  `id` bigint UNSIGNED NOT NULL,
  `widget_area` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `widget_order` int DEFAULT NULL,
  `widget_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `widget_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `widget_content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `widgets`
--

INSERT INTO `widgets` (`id`, `widget_area`, `widget_order`, `widget_location`, `widget_name`, `widget_content`, `created_at`, `updated_at`) VALUES
(13, NULL, 2, 'footer_one', 'AboutUsWidget', 'a:7:{s:2:\"id\";s:2:\"13\";s:11:\"widget_name\";s:13:\"AboutUsWidget\";s:11:\"widget_type\";s:6:\"update\";s:15:\"widget_location\";s:10:\"footer_one\";s:12:\"widget_order\";s:1:\"2\";s:5:\"title\";s:8:\"About Us\";s:9:\"menu_link\";a:2:{s:10:\"list_item_\";a:4:{i:0;s:5:\"About\";i:1;s:7:\"Contact\";i:2;s:14:\"Privacy Policy\";i:3;s:20:\"Terms and Conditions\";}s:4:\"url_\";a:4:{i:0;s:1:\"#\";i:1;s:1:\"#\";i:2;s:1:\"#\";i:3;s:1:\"#\";}}}', '2023-10-31 05:11:20', '2023-10-31 05:59:33'),
(14, NULL, 1, 'footer_one', 'SocialAreaWidget', 'a:8:{s:2:\"id\";s:2:\"14\";s:11:\"widget_name\";s:16:\"SocialAreaWidget\";s:11:\"widget_type\";s:6:\"update\";s:15:\"widget_location\";s:10:\"footer_one\";s:12:\"widget_order\";s:1:\"1\";s:5:\"image\";s:2:\"79\";s:11:\"description\";s:45:\"Hi You will find everything on this platform.\";s:11:\"social_icon\";a:2:{s:5:\"icon_\";a:4:{i:0;s:17:\"fab fa-facebook-f\";i:1;s:14:\"fab fa-youtube\";i:2;s:14:\"fab fa-twitter\";i:3;s:18:\"fab fa-linkedin-in\";}s:4:\"url_\";a:4:{i:0;s:1:\"#\";i:1;s:1:\"#\";i:2;s:1:\"#\";i:3;s:1:\"#\";}}}', '2023-10-31 05:34:22', '2023-10-31 05:47:49'),
(15, NULL, 3, 'footer_one', 'ServiceWidget', 'a:9:{s:2:\"id\";s:2:\"15\";s:11:\"widget_name\";s:13:\"ServiceWidget\";s:11:\"widget_type\";s:6:\"update\";s:15:\"widget_location\";s:10:\"footer_one\";s:12:\"widget_order\";s:1:\"3\";s:5:\"title\";s:8:\"Services\";s:8:\"order_by\";s:2:\"id\";s:5:\"order\";s:3:\"asc\";s:5:\"items\";s:1:\"5\";}', '2023-10-31 06:12:50', '2023-10-31 06:25:06'),
(16, NULL, 4, 'footer_one', 'ContactUsWidget', 'a:7:{s:2:\"id\";s:2:\"16\";s:11:\"widget_name\";s:15:\"ContactUsWidget\";s:11:\"widget_type\";s:6:\"update\";s:15:\"widget_location\";s:10:\"footer_one\";s:12:\"widget_order\";s:1:\"4\";s:5:\"title\";s:10:\"Contact Us\";s:12:\"contact_info\";a:2:{s:5:\"icon_\";a:3:{i:0;s:12:\"fas fa-phone\";i:1;s:15:\"far fa-envelope\";i:2;s:17:\"fas fa-map-marker\";}s:5:\"info_\";a:3:{i:0;s:13:\"+627-521-1504\";i:1;s:18:\"info@washeco.co.uk\";i:2;s:27:\"8702 Jayson, Well Suite 348\";}}}', '2023-10-31 06:37:46', '2023-10-31 06:38:30'),
(18, NULL, 1, 'footer_two', 'ContactUsTwoWidget', 'a:8:{s:2:\"id\";s:2:\"18\";s:11:\"widget_name\";s:18:\"ContactUsTwoWidget\";s:11:\"widget_type\";s:6:\"update\";s:15:\"widget_location\";s:10:\"footer_two\";s:12:\"widget_order\";s:1:\"1\";s:5:\"title\";s:10:\"Contact Us\";s:11:\"description\";s:70:\"Amet minim mollit non deserunt ullamco est sit ali dolor do amet sint.\";s:12:\"contact_info\";a:2:{s:5:\"icon_\";a:2:{i:0;s:12:\"fas fa-phone\";i:1;s:15:\"fas fa-envelope\";}s:5:\"info_\";a:2:{i:0;s:29:\"Have a question? 310-437-2766\";i:1;s:35:\"Have a question? unreal@example.com\";}}}', '2023-10-31 07:26:30', '2023-11-27 08:54:56'),
(19, NULL, 2, 'footer_two', 'AboutUsWidget', 'a:7:{s:2:\"id\";s:2:\"19\";s:11:\"widget_name\";s:13:\"AboutUsWidget\";s:11:\"widget_type\";s:6:\"update\";s:15:\"widget_location\";s:10:\"footer_two\";s:12:\"widget_order\";s:1:\"2\";s:5:\"title\";s:8:\"About Us\";s:9:\"menu_link\";a:2:{s:10:\"list_item_\";a:5:{i:0;s:5:\"About\";i:1;s:7:\"Contact\";i:2;s:14:\"Privacy Policy\";i:3;s:20:\"Terms and Conditions\";i:4;s:20:\"Terms and Conditions\";}s:4:\"url_\";a:5:{i:0;s:1:\"#\";i:1;s:1:\"#\";i:2;s:1:\"#\";i:3;s:1:\"#\";i:4;s:1:\"#\";}}}', '2023-10-31 07:33:39', '2023-10-31 07:34:50'),
(20, NULL, 3, 'footer_two', 'ServiceWidget', 'a:9:{s:2:\"id\";s:2:\"20\";s:11:\"widget_name\";s:13:\"ServiceWidget\";s:11:\"widget_type\";s:6:\"update\";s:15:\"widget_location\";s:10:\"footer_two\";s:12:\"widget_order\";s:1:\"3\";s:5:\"title\";s:8:\"Services\";s:8:\"order_by\";s:2:\"id\";s:5:\"order\";s:3:\"asc\";s:5:\"items\";s:1:\"5\";}', '2023-10-31 07:35:30', '2023-10-31 07:40:20'),
(21, NULL, 4, 'footer_two', 'NewsLetterWidget', 'a:7:{s:2:\"id\";s:2:\"21\";s:11:\"widget_name\";s:16:\"NewsLetterWidget\";s:11:\"widget_type\";s:6:\"update\";s:15:\"widget_location\";s:10:\"footer_two\";s:12:\"widget_order\";s:1:\"4\";s:5:\"title\";s:20:\"Subscribe Newsletter\";s:11:\"description\";s:81:\"Enter your email to receive regular updates, newsletters. We promise to not spam.\";}', '2023-10-31 07:41:26', '2023-10-31 07:41:53');

-- --------------------------------------------------------

--
-- Table structure for table `withdraw_gateways`
--

CREATE TABLE `withdraw_gateways` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `field` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '1=active, 2=inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `withdraw_gateways`
--

INSERT INTO `withdraw_gateways` (`id`, `name`, `field`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Bank', 'a:3:{i:0;s:9:\"Bank Name\";i:1;s:10:\"Swift Code\";i:2;s:14:\"Account Number\";}', 1, '2023-10-16 02:31:37', '2023-10-16 04:24:26'),
(4, 'Paypal', 'a:4:{i:0;s:12:\"Account Name\";i:1;s:14:\"Account Number\";i:2;s:12:\"Account Type\";i:3;s:10:\"Account Id\";}', 1, '2023-10-16 04:17:18', '2023-10-16 04:20:51');

-- --------------------------------------------------------

--
-- Table structure for table `withdraw_requests`
--

CREATE TABLE `withdraw_requests` (
  `id` bigint UNSIGNED NOT NULL,
  `amount` double NOT NULL,
  `gateway_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '1=pending, 2=complete, 3=cancel',
  `gateway_fields` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `xg_ftp_infos`
--

CREATE TABLE `xg_ftp_infos` (
  `id` bigint UNSIGNED NOT NULL,
  `item_version` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_license_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_license_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_license_msg` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_username_unique` (`username`);

--
-- Indexes for table `admin_notifications`
--
ALTER TABLE `admin_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_posts`
--
ALTER TABLE `blog_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bookmarks`
--
ALTER TABLE `bookmarks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chat_messages`
--
ALTER TABLE `chat_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `client_notifications`
--
ALTER TABLE `client_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `form_builders`
--
ALTER TABLE `form_builders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `freelancer_levels`
--
ALTER TABLE `freelancer_levels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `freelancer_level_rules`
--
ALTER TABLE `freelancer_level_rules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `freelancer_notifications`
--
ALTER TABLE `freelancer_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `identity_verifications`
--
ALTER TABLE `identity_verifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `individual_commission_settings`
--
ALTER TABLE `individual_commission_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_histories`
--
ALTER TABLE `job_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_posts`
--
ALTER TABLE `job_posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `job_posts_category_index` (`category`);

--
-- Indexes for table `job_post_skills`
--
ALTER TABLE `job_post_skills`
  ADD PRIMARY KEY (`id`),
  ADD KEY `job_post_skills_job_post_id_skill_id_index` (`job_post_id`,`skill_id`);

--
-- Indexes for table `job_post_sub_categories`
--
ALTER TABLE `job_post_sub_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `job_post_sub_categories_job_post_id_sub_category_id_index` (`job_post_id`,`sub_category_id`);

--
-- Indexes for table `job_proposals`
--
ALTER TABLE `job_proposals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `live_chats`
--
ALTER TABLE `live_chats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `live_chat_messages`
--
ALTER TABLE `live_chat_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `live_chat_messages_live_chat_id_foreign` (`live_chat_id`);

--
-- Indexes for table `media_uploads`
--
ALTER TABLE `media_uploads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meta_data`
--
ALTER TABLE `meta_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `newsletters`
--
ALTER TABLE `newsletters`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `newsletters_email_unique` (`email`);

--
-- Indexes for table `news_letter_for_emails`
--
ALTER TABLE `news_letter_for_emails`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `news_letter_for_emails_email_unique` (`email`);

--
-- Indexes for table `offers`
--
ALTER TABLE `offers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offer_milestones`
--
ALTER TABLE `offer_milestones`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_decline_histories`
--
ALTER TABLE `order_decline_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_decline_wallet_histories`
--
ALTER TABLE `order_decline_wallet_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_milestones`
--
ALTER TABLE `order_milestones`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_request_revisions`
--
ALTER TABLE `order_request_revisions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_submit_histories`
--
ALTER TABLE `order_submit_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_builders`
--
ALTER TABLE `page_builders`
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
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `portfolios`
--
ALTER TABLE `portfolios`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_attributes`
--
ALTER TABLE `project_attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_histories`
--
ALTER TABLE `project_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_sub_categories`
--
ALTER TABLE `project_sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `question_answers`
--
ALTER TABLE `question_answers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rating_details`
--
ALTER TABLE `rating_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `static_options`
--
ALTER TABLE `static_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscription_features`
--
ALTER TABLE `subscription_features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscription_types`
--
ALTER TABLE `subscription_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- Indexes for table `user_earnings`
--
ALTER TABLE `user_earnings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_education`
--
ALTER TABLE `user_education`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_experiences`
--
ALTER TABLE `user_experiences`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_introductions`
--
ALTER TABLE `user_introductions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_notifications`
--
ALTER TABLE `user_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_skills`
--
ALTER TABLE `user_skills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_subscriptions`
--
ALTER TABLE `user_subscriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_works`
--
ALTER TABLE `user_works`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wallets`
--
ALTER TABLE `wallets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wallet_histories`
--
ALTER TABLE `wallet_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `widgets`
--
ALTER TABLE `widgets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdraw_gateways`
--
ALTER TABLE `withdraw_gateways`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdraw_requests`
--
ALTER TABLE `withdraw_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `xg_ftp_infos`
--
ALTER TABLE `xg_ftp_infos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `admin_notifications`
--
ALTER TABLE `admin_notifications`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blog_posts`
--
ALTER TABLE `blog_posts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `bookmarks`
--
ALTER TABLE `bookmarks`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `chat_messages`
--
ALTER TABLE `chat_messages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `client_notifications`
--
ALTER TABLE `client_notifications`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `form_builders`
--
ALTER TABLE `form_builders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `freelancer_levels`
--
ALTER TABLE `freelancer_levels`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `freelancer_level_rules`
--
ALTER TABLE `freelancer_level_rules`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `freelancer_notifications`
--
ALTER TABLE `freelancer_notifications`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `identity_verifications`
--
ALTER TABLE `identity_verifications`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `individual_commission_settings`
--
ALTER TABLE `individual_commission_settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `job_histories`
--
ALTER TABLE `job_histories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `job_posts`
--
ALTER TABLE `job_posts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `job_post_skills`
--
ALTER TABLE `job_post_skills`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `job_post_sub_categories`
--
ALTER TABLE `job_post_sub_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `job_proposals`
--
ALTER TABLE `job_proposals`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `live_chats`
--
ALTER TABLE `live_chats`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `live_chat_messages`
--
ALTER TABLE `live_chat_messages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `media_uploads`
--
ALTER TABLE `media_uploads`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `meta_data`
--
ALTER TABLE `meta_data`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=248;

--
-- AUTO_INCREMENT for table `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `news_letter_for_emails`
--
ALTER TABLE `news_letter_for_emails`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `offers`
--
ALTER TABLE `offers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `offer_milestones`
--
ALTER TABLE `offer_milestones`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_decline_histories`
--
ALTER TABLE `order_decline_histories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_decline_wallet_histories`
--
ALTER TABLE `order_decline_wallet_histories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_milestones`
--
ALTER TABLE `order_milestones`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_request_revisions`
--
ALTER TABLE `order_request_revisions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_submit_histories`
--
ALTER TABLE `order_submit_histories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `page_builders`
--
ALTER TABLE `page_builders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=209;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `portfolios`
--
ALTER TABLE `portfolios`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT for table `project_attributes`
--
ALTER TABLE `project_attributes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1815;

--
-- AUTO_INCREMENT for table `project_histories`
--
ALTER TABLE `project_histories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `project_sub_categories`
--
ALTER TABLE `project_sub_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT for table `question_answers`
--
ALTER TABLE `question_answers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rating_details`
--
ALTER TABLE `rating_details`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `static_options`
--
ALTER TABLE `static_options`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=409;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `subscription_features`
--
ALTER TABLE `subscription_features`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=447;

--
-- AUTO_INCREMENT for table `subscription_types`
--
ALTER TABLE `subscription_types`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=408;

--
-- AUTO_INCREMENT for table `user_earnings`
--
ALTER TABLE `user_earnings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_education`
--
ALTER TABLE `user_education`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user_experiences`
--
ALTER TABLE `user_experiences`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `user_introductions`
--
ALTER TABLE `user_introductions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user_notifications`
--
ALTER TABLE `user_notifications`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `user_skills`
--
ALTER TABLE `user_skills`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_subscriptions`
--
ALTER TABLE `user_subscriptions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=287;

--
-- AUTO_INCREMENT for table `user_works`
--
ALTER TABLE `user_works`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wallets`
--
ALTER TABLE `wallets`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=399;

--
-- AUTO_INCREMENT for table `wallet_histories`
--
ALTER TABLE `wallet_histories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `widgets`
--
ALTER TABLE `widgets`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `withdraw_gateways`
--
ALTER TABLE `withdraw_gateways`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `withdraw_requests`
--
ALTER TABLE `withdraw_requests`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `xg_ftp_infos`
--
ALTER TABLE `xg_ftp_infos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `live_chat_messages`
--
ALTER TABLE `live_chat_messages`
  ADD CONSTRAINT `live_chat_messages_live_chat_id_foreign` FOREIGN KEY (`live_chat_id`) REFERENCES `live_chats` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
