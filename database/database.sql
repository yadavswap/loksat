-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 01, 2017 at 09:03 PM
-- Server version: 5.6.37
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `software_newszone`
--

-- --------------------------------------------------------

--
-- Table structure for table `activations`
--

CREATE TABLE `activations` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activations`
--

INSERT INTO `activations` (`id`, `user_id`, `code`, `completed`, `completed_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'yMQoTUIEbccvGCpi4ihzaOQD3y7thTmt', 1, '2017-08-23 09:17:06', '2017-08-23 09:17:06', '2017-08-23 09:17:06'),
(2, 1, 'VGQvkahFVWGoHis8cvMQUBcdXpYmlfAp', 1, '2017-08-23 09:21:47', '2017-08-23 09:21:47', '2017-08-23 09:21:47'),
(3, 2, 'maq8wdC8l003flvDiSJXL6RXueApd1b3', 1, '2017-08-24 23:41:06', '2017-08-24 23:41:06', '2017-08-24 23:41:06'),
(6, 5, 'B0D6YFsf14c3CJvjqpKWYUHC1WpPzsBo', 1, '2017-10-03 02:46:10', '2017-10-03 02:46:10', '2017-10-03 02:46:10'),
(7, 6, '2ZCkty8drBYIODF686QliKMi5kwPxWav', 1, '2017-10-03 02:48:17', '2017-10-03 02:48:17', '2017-10-03 02:48:17'),
(8, 7, 'FI411Tcu2wsfaDy4RqYPXQeDSOAtEV7K', 1, '2017-10-31 13:42:32', '2017-10-31 13:42:32', '2017-10-31 13:42:32'),
(9, 8, 'klN4MOPsjV79q8sPZWdjlHJNSX6W63l8', 1, '2017-10-31 13:45:52', '2017-10-31 13:45:52', '2017-10-31 13:45:52');

-- --------------------------------------------------------

--
-- Table structure for table `advertisements`
--

CREATE TABLE `advertisements` (
  `id` int(10) UNSIGNED NOT NULL,
  `advert_type` tinyint(4) NOT NULL,
  `advert_size` tinyint(4) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `val1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `val2` text COLLATE utf8mb4_unicode_ci,
  `link` text COLLATE utf8mb4_unicode_ci,
  `hit` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `advertisements`
--

INSERT INTO `advertisements` (`id`, `advert_type`, `advert_size`, `title`, `val1`, `val2`, `link`, `hit`, `status`, `created_at`, `updated_at`) VALUES
(10, 1, 3, 'Janina', 'sxIrEaGuARfEnkVQy7gb.png', NULL, 'https://www.facebook.com/', 3, 1, '2017-09-26 05:55:58', '2017-09-26 07:15:16'),
(11, 1, 3, 'Janina', 'dAG6aCznt5rWtlGenb1c.jpg', NULL, 'https://www.facebook.com/', 5, 1, '2017-09-26 05:56:18', '2017-11-01 10:41:35'),
(12, 1, 2, 'Janina', 'hmbYyFV9he65yyaLQVY4.png', NULL, 'https://www.facebook.com/', 3, 1, '2017-09-26 05:57:18', '2017-09-27 17:34:27'),
(13, 1, 4, 'Janina', 'FhJZmYkqQTM5ArWdOyWS.gif', NULL, 'https://www.facebook.com/', 3, 1, '2017-09-26 05:58:16', '2017-10-19 11:23:28'),
(14, 1, 5, 'Janina', '6tS3NJcbD2NQpkMnnvXK.jpg', NULL, 'https://www.facebook.com/', 2, 1, '2017-09-26 05:58:42', '2017-09-26 17:39:57'),
(15, 1, 5, 'Janina', '4jhAxeRiOfcDtOdtQlZH.jpg', NULL, 'https://www.facebook.com/', 1, 1, '2017-09-26 05:59:58', '2017-09-29 13:44:36');

-- --------------------------------------------------------

--
-- Table structure for table `all_images`
--

CREATE TABLE `all_images` (
  `id` int(10) UNSIGNED NOT NULL,
  `title_id` int(11) DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `all_images`
--

INSERT INTO `all_images` (`id`, `title_id`, `image`, `created_at`, `updated_at`) VALUES
(4, 4, 'All_Image/413wQK6NcR0eZ9p6dugJQgeQhMkuOPWhyprOqdTI.jpeg', '2017-08-26 07:16:17', '2017-08-26 07:16:17'),
(5, 4, 'All_Image/H6cE1pfrFy8X7ly8JpTEEuTNqbNPOxjbnUbHj9Ks.jpeg', '2017-08-26 07:16:17', '2017-08-26 07:16:17'),
(6, 5, 'All_Image/n8H7xEx0l1gd6istRhzDhctXsDTEqfedFfeYbP3t.jpeg', '2017-08-26 07:18:45', '2017-08-26 07:18:45'),
(7, 5, 'All_Image/OoTDg2ifAoi7LbzgATtvHk7rNvcZbsacNy8ydS95.jpeg', '2017-08-26 07:18:45', '2017-08-26 07:18:45'),
(8, 6, 'All_Image/0OAiyelB8uKMmhxjjl9VuZNsF9EJuw64a7g5WpkG.jpeg', '2017-08-26 07:19:15', '2017-08-26 07:19:15'),
(9, 6, 'All_Image/QKjK5UX93CS7xPOhFs993EOH1HCnxV2oFyokoMO8.jpeg', '2017-08-26 07:19:15', '2017-08-26 07:19:15');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `position`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Local', 'local', 1, 1, '2017-08-26 22:11:16', '2017-10-30 05:45:44'),
(2, 'International', 'international', 3, 1, '2017-08-26 22:11:39', '2017-09-26 16:43:36'),
(4, 'Life Style', 'lifeStyle', 7, 1, '2017-08-26 22:12:34', '2017-09-22 05:29:18'),
(5, 'Economics', 'economic', 6, 1, '2017-08-26 22:13:17', '2017-09-26 16:44:40'),
(6, 'Sports', 'sports', 5, 1, '2017-08-26 22:13:29', '2017-09-22 05:29:35'),
(7, 'Glamour', 'glamour', 4, 1, '2017-09-26 16:34:58', '2017-09-26 16:44:25');

-- --------------------------------------------------------

--
-- Table structure for table `gsettings`
--

CREATE TABLE `gsettings` (
  `id` int(10) UNSIGNED NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about` longtext COLLATE utf8mb4_unicode_ci,
  `footer` text COLLATE utf8mb4_unicode_ci,
  `address` text COLLATE utf8mb4_unicode_ci,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `populartag` text COLLATE utf8mb4_unicode_ci,
  `privacy` text COLLATE utf8mb4_unicode_ci,
  `sitemap` text COLLATE utf8mb4_unicode_ci,
  `email_body` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gsettings`
--

INSERT INTO `gsettings` (`id`, `logo`, `default_img`, `about`, `footer`, `address`, `phone`, `fax`, `email`, `title`, `populartag`, `privacy`, `sitemap`, `email_body`, `created_at`, `updated_at`) VALUES
(1, 'urCmAqZRboSf94XJh9Tk.png', 'UC2xWPwRRUIpKNsdDCcw.png', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.\r\n\r\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', '2017 \r\n\r\n©\r\n\r\nAll Copyright Reserved.', '<p>Mirpur, Dhaka 1216.</p>', '01974-447300', '01974-447300', 'softwarezon@hotmail.com', 'NewsZon', 'sport,national', '<p>\r\n\r\n\r\n\r\n</p><h1>Privacy</h1><p>\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.\"</p>\r\n\r\n\r\n\r\n<h3>Section 1.10.33 of \"de Finibus Bonorum et Malorum\", written by Cicero in 45 BC</h3><p>\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.\"</p>\r\n\r\n\r\n\r\n<h3>Section 1.10.33 of \"de Finibus Bonorum et Malorum\", written by Cicero in 45 BC</h3><p>\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.\"</p>\r\n\r\n\r\n<br><p></p>', '<div><div><h3>1914 translation by H. Rackham</h3><p>\"On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.\"</p></div><div></div><div></div></div><br>\r\n\r\n\r\n\r\n<div><div><h3>1914 translation by H. Rackham</h3><p>\"On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.\"</p></div><div></div><div></div></div><br>\r\n\r\n\r\n\r\n<div><div><h3>1914 translation by H. Rackham</h3><p>\"On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.\"</p></div><div></div><div></div></div><br>', '\r\n<p>&nbsp;</p>\r\n<div class=\"wrapper\" style=\"background-color: #f2f2f2;\">\r\n<table style=\"border-collapse: collapse; table-layout: fixed; color: #b8b8b8; font-family: Ubuntu,sans-serif;\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td class=\"preheader__snippet\" style=\"padding: 10px 0 5px 0; vertical-align: top; width: 280px;\">&nbsp;</td>\r\n<td class=\"preheader__webversion\" style=\"text-align: right; padding: 10px 0 5px 0; vertical-align: top; width: 280px;\">&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table id=\"emb-email-header-container\" class=\"header\" style=\"border-collapse: collapse; table-layout: fixed; margin-left: auto; margin-right: auto;\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td style=\"padding: 0; width: 600px;\">\r\n<div class=\"header__logo emb-logo-margin-box\" style=\"font-size: 26px; line-height: 32px; color: #c3ced9; font-family: Roboto,Tahoma,sans-serif; margin: 6px 20px 20px 20px;\">\r\n<div id=\"emb-email-header\" class=\"logo-left\" style=\"font-size: 0px !important; line-height: 0 !important;\" align=\"left\"></div>\r\n</div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table class=\"layout layout--no-gutter\" style=\"border-collapse: collapse; table-layout: fixed; margin-left: auto; margin-right: auto; overflow-wrap: break-word; word-wrap: break-word; word-break: break-word; background-color: #ffffff;\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td class=\"column\" style=\"padding: 0px; text-align: left; vertical-align: top; color: rgb(96, 102, 109); line-height: 21px; font-family: sans-serif; width: 600px;\">\r\n<div style=\"font-size: 14px; margin-left: 20px; margin-right: 20px; margin-top: 24px;\">\r\n<div style=\"line-height: 10px; font-size: 1px;\">&nbsp;</div>\r\n</div>\r\n<div style=\"font-size: 14px; margin-left: 20px; margin-right: 20px;\">\r\n<h2>Hi {{name}},</h2>\r\n<p><strong>{{message}}</strong></p>\r\n</div>\r\n<div style=\"font-size: 14px; margin-left: 20px; margin-right: 20px;\"><br></div>\r\n<div style=\"margin-left: 20px; margin-right: 20px; margin-bottom: 24px;\">\r\n<p class=\"size-14\" style=\"margin-top: 0px; margin-bottom: 0px; line-height: 21px;\"><font size=\"3\">Thanks,</font><br> <strong style=\"font-size: 14px;\">{{footer}}</strong></p>\r\n</div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table><br>\r\n</div><div class=\"wrapper\" style=\"background-color: #f2f2f2;\"><br></div><div class=\"wrapper\" style=\"background-color: #f2f2f2;\"><br></div><div class=\"wrapper\" style=\"background-color: #f2f2f2;\"><br></div><div class=\"wrapper\" style=\"background-color: #f2f2f2;\"><br></div><div class=\"wrapper\" style=\"background-color: #f2f2f2;\"><br></div>\r\n<br>\r\n<br>\r\n<br>', '2017-08-23 11:33:28', '2017-11-01 10:38:50');

-- --------------------------------------------------------

--
-- Table structure for table `image_galleries`
--

CREATE TABLE `image_galleries` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `image_galleries`
--

INSERT INTO `image_galleries` (`id`, `title`, `created_at`, `updated_at`) VALUES
(4, 'sxcasc', '2017-08-26 07:16:17', '2017-08-26 07:16:17'),
(5, 'sxcasc', '2017-08-26 07:18:45', '2017-08-26 07:18:45'),
(6, '‘ধর্মগুরুর’ ভক্তদের তাণ্ডব', '2017-08-26 07:19:14', '2017-08-26 07:19:14');

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
(1, '2014_10_12_100000_create_password_resets_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(10) UNSIGNED NOT NULL,
  `schedule` tinyint(1) NOT NULL DEFAULT '0',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` int(100) DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `source` text COLLATE utf8mb4_unicode_ci,
  `breaking` tinyint(1) NOT NULL DEFAULT '0',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `slider` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `hit_count` tinyint(4) NOT NULL DEFAULT '0',
  `user_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `schedule`, `title`, `slug`, `category_id`, `image`, `details`, `source`, `breaking`, `featured`, `slider`, `status`, `hit_count`, `user_name`, `created_at`, `updated_at`) VALUES
(17, 1, 'Who will help Myanmar\'s Rohingya?', 'who-will-help-myanmars-rohingya', 2, 'z0XQ5TVEjpRIkht4DcXM.jpg', '<p>\r\n\r\n<strong></strong>\r\n\r\n</p><p>In recent months, tens of thousands of Rohingya have fled to Bangladesh amid a military crackdown on insurgents in Myanmar\'s western Rakhine state.</p><p>They have told horrifying stories of rapes, killings and house burnings, which the government of Myanmar - formerly Burma - has claimed are \"false\" and \"distorted\".</p><p>Activists have condemned the lack of a firm international response. Some have described the situation as South East Asia\'s Srebrenica, referring to the July 1995 massacre of more than 8,000 Bosnian Muslims who were meant to be under UN protection - a dark stain on Europe\'s human rights record.</p><h2>What\'s happening?</h2><p>Tun Khin, from the Burmese Rohingya Organisation UK, says Rohingyas are suffering \"mass atrocities\" perpetrated by security forces in the northern part of Rakhine state.</p><p>A counter-insurgency campaign was launched after nine border policemen near Maungdaw were killed in a militant attack in early October, but the Rohingya say they are being targeted indiscriminately.</p><p>\r\n\r\n</p><p>The BBC cannot visit the locked-down area to verify the claims and the Myanmar government has vociferously denied alleged abuses.</p><p>But UN officials have <a target=\"_blank\" rel=\"nofollow\" href=\"http://www.bbc.co.uk/news/world-asia-38091816\">told the BBC</a>&nbsp;that the Rohingya are being collectively punished for militant attacks, with the ultimate goal being ethnic cleansing.</p><h2>What led to the current situation?</h2><p>The Rohingya are one of Myanmar\'s many ethnic minorities and say they are descendants of Arab traders and other groups who have been in the region for generations.</p><p>But Myanmar\'s government denies them citizenship and sees them as illegal immigrants from Bangladesh - a common attitude among many Burmese.</p><p>The predominantly Buddhist country has a long history of communal mistrust, which was allowed to simmer, and was at times exploited, under decades of military rule.</p><br>\r\n\r\n<br><p></p>\r\n\r\n\r\n\r\n<p></p>', 'cszcsd,szcsdv,szc', 1, 1, 1, 1, 14, 'Jone', '2017-09-23 04:59:47', '2017-10-10 06:27:24'),
(18, 1, 'Yoda stars in Saudi textbook blunder', 'yoda-stars-in-saudi-textbook-blunder', 1, 'F9BXTwa0kViB6A5M4uUA.jpg', '<p>\r\n\r\n</p><h1></h1>\r\n\r\n<strong></strong>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.   <br><br>Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.   <br><br>Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.   <br><br>Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.   <br><br>Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis.   <br><br>At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, At accusam aliquyam diam diam dolore dolores duo eirmod eos erat, et nonumy sed tempor et et invidunt justo labore Stet clita ea et gubergren, kasd magna no rebum. sanctus sea sed takimata ut vero voluptua. est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat.   <br><br>Consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus.   <br><br>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.   <br><br>Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.   <br><br>Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.   <br><br>Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo\r\n<br><p></p>', 'badtamiz', 1, 1, 1, 1, 7, 'Jone', '2017-09-23 05:06:15', '2017-10-10 06:30:01'),
(19, 1, 'Theresa May urges EU to retain trade terms for two years after Brexit', 'theresa-may-urges-eu-to-retain-trade-terms-for-two-years-after-brexit', 4, 'IfYw6OI7LZXlVZ3WuWbP.jpg', '<p>\r\n\r\n</p><p><strong><small><i></i></small></strong><b></b><u></u>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.   <br><br>Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.   <br><br>Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.   <br><br>Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.   <br><br>Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis.   <br><br>At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, At accusam aliquyam diam diam dolore dolores duo eirmod eos erat, et nonumy sed tempor et et invidunt justo labore Stet clita ea et gubergren, kasd magna no rebum. sanctus sea sed takimata ut vero voluptua. est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat.   <br><br>Consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus.   <br><br>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.   <br><br>Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.   <br><br>Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.   <br><br>Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodoLorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&nbsp;<u></u><u></u><b></b><b></b><br></p><p></p>', 'Aladin', 1, 1, 1, 1, 2, 'Jone', '2017-09-23 05:07:04', '2017-10-10 06:30:36'),
(20, 1, 'Why are posts by Rohingya activists getting deleted? By BBC Trending', 'why-are-posts-by-rohingya-activists-getting-deleted-by-bbc-trending', 1, 'Z4gZZujLWoK4yRYUR6rj.jpg', '<p>\r\n\r\n\r\n\r\n\r\n\r\n</p><h2></h2>\r\n\r\n<strong></strong>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.   <br><br>Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.   <br><br>Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.   <br><br>Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.   <br><br>Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis.   <br><br>At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, At accusam aliquyam diam diam dolore dolores duo eirmod eos erat, et nonumy sed tempor et et invidunt justo labore Stet clita ea et gubergren, kasd magna no rebum. sanctus sea sed takimata ut vero voluptua. est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat.   <br><br>Consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus.   <br><br>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.   <br><br>Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.   <br><br>Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.   <br><br>Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo<div></div><div><br></div><p></p>', 'good, best', 1, 1, 1, 1, 10, 'Jone', '2017-09-23 05:09:04', '2017-10-10 06:48:05'),
(21, 1, 'India using chilli sprays, stun grenades to stop Rohingya Muslims', 'india-using-chilli-sprays-stun-grenades-to-stop-rohingya-muslims', 2, 'ilIB8qELYAumoIhFSIyi.jpg', '<p>\r\n\r\n<strong></strong>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.   <br><br>Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.   <br><br>Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.   <br><br>Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.   <br><br>Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis.   <br><br>At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, At accusam aliquyam diam diam dolore dolores duo eirmod eos erat, et nonumy sed tempor et et invidunt justo labore Stet clita ea et gubergren, kasd magna no rebum. sanctus sea sed takimata ut vero voluptua. est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat.   <br><br>Consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus.   <br><br>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.   <br><br>Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.   <br><br>Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.   <br><br>Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo\r\n\r\n</p>', 'think,note', 1, 1, 1, 1, 3, 'Jone', '2017-09-23 05:11:37', '2017-10-10 06:32:35'),
(22, 1, 'Fresh fires, bomb blast in Rakhine', 'fresh-fires-bomb-blast-in-rakhine', 1, 'GmCzcxhlTc3JyTo6ukmO.jpg', '<p>\r\n\r\n<strong></strong>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.   <br><br>Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.   <br><br>Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.   <br><br>Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.   <br><br>Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis.   <br><br>At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, At accusam aliquyam diam diam dolore dolores duo eirmod eos erat, et nonumy sed tempor et et invidunt justo labore Stet clita ea et gubergren, kasd magna no rebum. sanctus sea sed takimata ut vero voluptua. est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat.   <br><br>Consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus.   <br><br>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.   <br><br>Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.   <br><br>Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.   <br><br>Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo\r\n\r\n</p>', 'real', 1, 1, 1, 1, 19, 'Jone', '2017-09-23 05:12:15', '2017-10-10 06:33:10'),
(23, 1, 'Fake news worries \'are growing\'', 'fake-news-worries-are-growing', 5, 'mBrNgrF1dufrBvzHbOd3.jpg', '<p>Fake news worries \'are growing\'Fake news worries \'are growing\'Fake news worries \'are growing\'Fake news worries \'are growing\'Fake news worries \'are growing\'Fake news worries \'are growing\'Fake news worries \'are growing\'Fake news worries \'are growing\'Fake news worries \'are growing\'Fake news worries \'are growing\'Fake news worries \'are growing\'Fake news worries \'are growing\'Fake news worries \'are growing\'Fake news worries \'are growing\'Fake news worries \'are growing\'Fake news worries \'are growing\'Fake news worries \'are growing\'Fake news worries \'are growing\'Fake news worries \'are growing\'Fake news worries \'are growing\'Fake news worries \'are growing\'Fake news worries \'are growing\'Fake news worries \'are growing\'Fake news worries \'are growing\'Fake news worries \'are growing\'Fake news worries \'are growing\'.<br></p><p><br></p><p>\r\n\r\nFake news worries \'are growing\'Fake news worries \'are growing\'Fake news worries \'are growing\'Fake news worries \'are growing\'Fake news worries \'are growing\'Fake news worries \'are growing\'Fake news worries \'are growing\'Fake news worries \'are growing\'Fake news worries \'are growing\'Fake news worries \'are growing\'Fake news worries \'are growing\'Fake news worries \'are growing\'Fake news worries \'are growing\'Fake news worries \'are growing\'Fake news worries \'are growing\'Fake news worries \'are growing\'Fake news worries \'are growing\'Fake news worries \'are growing\'Fake news worries \'are growing\'Fake news worries \'are growing\'Fake news worries \'are growing\'Fake news worries \'are growing\'Fake news worries \'are growing\'Fake news worries \'are growing\'Fake news worries \'are growing\'Fake news worries \'are growing\'\r\n\r\n<br></p>', 'faker, owner', 1, 1, 1, 1, 12, 'Jone', '2017-09-23 05:17:23', '2017-10-30 08:14:50'),
(24, 1, 'Why do we use it?', 'why-do-we-use-it', 2, 'zLSozUQDXRAZb7VUGpmk.jpg', '<p>\r\n\r\n</p><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p><br>\r\n\r\n\r\n\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p><br>\r\n\r\n\r\n\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p><br>\r\n\r\n\r\n\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p><br>\r\n\r\n\r\n\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p><br>\r\n\r\n<br><p></p>', 'Ladies', 1, 1, 1, 1, 17, 'Ronnie', '2017-09-24 04:28:40', '2017-10-03 19:07:13'),
(25, 1, 'The story not being talked about in Myanmar', 'the-story-not-being-talked-about-in-myanmar', 7, '5PX2WfvIm1vHZNrO0Uyb.jpg', '<p>\r\n\r\n</p><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p><br>\r\n\r\n\r\n\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p><br>\r\n\r\n\r\n\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p><br>\r\n\r\n\r\n\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p><br>\r\n\r\n<br><p></p>', 'alternative, needed', 1, 1, 1, 1, 59, 'Jone', '2017-09-24 04:29:39', '2017-10-10 06:34:51'),
(26, 1, 'Fake news worries \'are growing\'', 'fake-news-worries-are-growing', 7, '4ootBXaV2zpxPKW439ft.jpg', '', 'Awesome', 1, 1, 1, 1, 7, 'Ronnie', '2017-09-24 04:30:40', '2017-10-03 08:57:53'),
(27, 1, 'Fresh fires, bomb blast in Rakhine', 'fresh-fires-bomb-blast-in-rakhine', 2, 'GKfIelJsAAZyTIYKpKxp.jpg', '<p>\r\n\r\n</p><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p><br>\r\n\r\n<br><p></p>', NULL, 1, 1, 1, 1, 57, 'Ronnie', '2017-09-24 04:32:05', '2017-11-01 10:31:50'),
(28, 0, 'Raped girl\'s baby \'was fathered by uncle\'', 'raped-girls-baby-was-fathered-by-uncle', 7, 'vilZpzfoqEAmeoDIh3xe.jpg', '<p>\r\n\r\n</p><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p><br>\r\n\r\n\r\n\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p><br>\r\n\r\n\r\n\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p><br>\r\n\r\n<br><p></p>', NULL, 1, 1, 1, 1, 34, 'Jone', '2017-09-24 04:32:48', '2017-10-31 18:06:07'),
(29, 0, 'Ben Stokes: England cricketer arrested after Bristol nightclub incident', 'ben-stokes-england-cricketer-arrested-after-bristol-nightclub-incident', 6, 'jx0kexR9XW1FMKaDMDX2.jpg', '<p>\r\n\r\n</p><p>He will not be available for England\'s fourth one-day international against West Indies on Wednesday, the England and Wales Cricket Board has announced.</p><p>Team-mate Alex Hales, who was with Stokes, will also miss the match and has returned to Bristol to help police.</p><p>Stokes was held overnight after the team\'s victory in the third ODI.</p><p>The team went 2-0 up in the best-of-five series with</p><p>The 26-year-old Test vice-captain was arrested after an incident at about 02:35 BST at the city\'s Mbargo club which left another man needing hospital treatment for facial injuries.</p><p>England are due to name their squad on Wednesday for the Ashes tour of Australia.</p>\r\n\r\n<br><p></p>', 'tascb,asc,ascasc,szczs,ascas,asczsc,asczzs,czc,aszcasc', 1, 1, 1, 1, 14, 'Ronnie', '2017-09-26 16:09:07', '2017-10-31 18:02:59'),
(30, 1, 'Billings called up to the England squad', 'billings-called-up-to-the-england-squad', 6, 'Tltt10pJDHzHoZWRKCgj.png', '<p>\r\n\r\n</p><p>Kent\'s Sam Billings has left his team\'s game against Glamorgan for England duties after the exclusion of Ben Stokes and Alex Hales from selection for the next One-Day International against the West Indies.</p><p>That meant Adam Rouse being drafted into the Kent side and shoved straight into action as the home side lost four quick wickets.</p><p>Michael Hogan claimed three of them to reach 500 first-class wickets, so Glamorgan were left bowling at a man who had not been in the team at the start of play.</p>\r\n\r\n<br><p></p>', 'zsxc,zczx,zc,ZC,szC,cZC,ZCzc', 1, 1, 1, 1, 20, 'Ronnie', '2017-09-26 16:12:00', '2017-11-01 08:35:14'),
(31, 1, 'Women\'s Ashes 2017: Sophie Ecclestone in England squad', 'womens-ashes-2017-sophie-ecclestone-in-england-squad', 6, '7F5FjHlkOUSANYDWnZ9r.jpg', '<p>\r\n\r\n</p><p>\"Sophie Ecclestone has finished school now and has had a great summer domestically. Her selection will provide another option to our attack,\" said coach Mark Robinson.</p><p>\"It\'s a hugely exciting tour and one we are really looking forward to. Australia on their home soil will be a further test of the progress we have made.</p><p>\"We said before the World Cup that the final at Lord\'s was never going to be our destination, it was just part of the journey, and that journey continues with this tour.\"</p><p>Lancashire\'s Ecclestone has played two ODIs and two T20s but has not featured for England since the tour of the West Indies in October 2016.</p><p>Langston, 25, was an unused member of the squad for the <a target=\"_blank\" rel=\"nofollow\" href=\"http://www.bbc.com/sport/cricket/40698974\">World Cup,</a>&nbsp;which England won with a dramatic final victory over India at Lord\'s in July.</p><p>As well as the touring party, England will have pace bowler Kate Cross and wicketkeeper Amy Jones in Australia, with both playing domestic cricket for Western Fury in Perth.</p><p>And it will be the first time Knight has led her side into an Ashes series.</p>\r\n\r\n<br><p></p>', 'zcas,sacas,ascas,cascasz,cascsac,ascsac,aasz asz ca,aszcasc,ascaszc,asc,ascasc,a.', 1, 1, 1, 1, 57, 'Ronnie', '2017-09-26 16:13:24', '2017-10-03 11:20:59');
INSERT INTO `news` (`id`, `schedule`, `title`, `slug`, `category_id`, `image`, `details`, `source`, `breaking`, `featured`, `slider`, `status`, `hit_count`, `user_name`, `created_at`, `updated_at`) VALUES
(32, 1, 'Benjamin Mendy: Manchester City full-back to visit knee specialist in Barcelona', 'benjamin-mendy-manchester-city-full-back-to-visit-knee-specialist-in-barcelona', 5, 'n1V7Gum1DaSWrlawms6N.jpg', '<p>\r\n\r\nBenjamin Mendy: Manchester City full-back to visit knee specialist in Barcelona\r\n\r\n\r\n\r\n\r\nBenjamin Mendy: Manchester City full-back to visit knee specialist in Barcelona\r\n\r\n\r\n\r\n\r\nBenjamin Mendy: Manchester City full-back to visit knee specialist in Barcelona\r\n\r\n\r\n\r\n\r\nBenjamin Mendy: Manchester City full-back to visit knee specialist in Barcelona\r\n\r\n\r\n\r\n\r\nBenjamin Mendy: Manchester City full-back to visit knee specialist in Barcelona\r\n\r\n\r\n\r\n\r\nBenjamin Mendy: Manchester City full-back to visit knee specialist in Barcelona\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<br></p>', NULL, 1, 1, 1, 1, 9, 'Ronnie', '2017-09-26 16:14:54', '2017-10-03 09:50:44'),
(33, 1, 'Music News LIVE: Cardi B lands historic US number one', 'music-news-live-cardi-b-lands-historic-us-number-one', 4, 'RvEtj6bOHePAPvUpyZ3u.jpg', '<p>Music News LIVE: Cardi B lands historic US number oneMusic News LIVE: Cardi B lands historic US number oneMusic News LIVE: Cardi B lands historic US number oneMusic News LIVE: Cardi B lands historic US number one<br></p>', NULL, 1, 1, 1, 1, 58, 'Ronnie', '2017-09-26 16:21:55', '2017-10-03 09:25:00'),
(34, 1, 'Music News LIVE: Cardi B lands historic US number one', 'music-news-live-cardi-b-lands-historic-us-number-one', 4, 'wnkgqDCezSpxCLPsXxFX.jpg', '<p>Music News LIVE: Cardi B lands historic US number oneMusic News LIVE: Cardi B lands historic US number oneMusic News LIVE: Cardi B lands historic US number oneMusic News LIVE: Cardi B lands historic US number one<br></p>', 'no tage', 1, 1, 1, 1, 13, 'Ronnie', '2017-09-26 16:22:41', '2017-10-03 19:04:11'),
(36, 1, 'lorem ipsum dolor sit amet ni polla', 'lorem-ipsum-dolor-sit-amet-ni-polla', 7, '23aagDNEjscF34mHmRvL.jpg', '<p>\r\n\r\n</p><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p><br>\r\n\r\n<br><p></p>', 'glamour', 1, 1, 1, 1, 36, 'Jone', '2017-10-30 06:47:06', '2017-11-01 10:08:09'),
(37, 1, 'Just Jane: I\'m haunted by my childhood hell', 'just-jane-im-haunted-by-my-childhood-hell', 4, 'Thf0ojCSA2jNkmky0sKx.jpg', '<p>\r\n\r\n</p><p>Today I’m a proud, successful woman, but I can’t forget my terrible early days.</p><p>Even though my husband is fantastic and my friends are supportive and fun, I’m always sad and scared under the surface.</p><p>I lost touch with my father years ago, but my mum is still alive.</p><p>She contacts me from time to time, but I can’t have any kind of relationship with her because she was cruel, vicious and vindictive as a younger woman.</p><p>I always felt she got pleasure out of making the little me cry.</p><p>Once she burned all my toys on a big bonfire when I refused to tell her that I loved her.</p><p>I could only have been about five.</p><p>The last time we spoke, about nine months ago, I asked her never to contact me again.</p><p>But I’ve just had another text asking for money, which has brought all the old hurt flooding back.</p><p>I suppose what I’m looking for is closure and peace, but I can’t find it.</p>\r\n\r\n<br><p></p>', NULL, 1, 1, 1, 1, 18, 'Jone', '2017-10-30 07:06:28', '2017-10-31 15:25:46');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('admin@gmail.com', '$2y$10$TNcvV4J02InBNKD8YU/0b.UZA5eu1F6usrVv1kCiNzCYx2rYq7.FK', NULL),
('ronniearea@gmail.com', '$2y$10$vyGKPyypTzSv47a4eT5MIeNK4hJKBWRUJeqImu.hnqFMFSbRYUaG2', NULL),
('hellomrhasan@gmail.com', '$2y$10$PCA0q/Wr.W.lzoo1WaSrjePbLxv4BblA9ufI4Ul2xqIjWYVebb7zC', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `persistences`
--

CREATE TABLE `persistences` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `persistences`
--

INSERT INTO `persistences` (`id`, `user_id`, `code`, `created_at`, `updated_at`) VALUES
(1, 1, 'CDSEtx5IsBMrw0ZHRa7wO8BsryEe5TQm', '2017-08-23 09:21:59', '2017-08-23 09:21:59'),
(2, 1, 'Gbty4AgVdL1SReiD4NpgkhaVoHd0laX4', '2017-08-23 20:27:08', '2017-08-23 20:27:08'),
(3, 1, 'DTm6lEowBvIu8Xo6E3bj5J1eejJAl5BP', '2017-08-24 00:54:33', '2017-08-24 00:54:33'),
(4, 1, 'idrSdxSD2j2PRxVePd8sXNlLF5ddxcUb', '2017-08-24 01:01:06', '2017-08-24 01:01:06'),
(5, 1, 'YnprgwaiKhMcPKNmKcwaH5BahvdqIi6K', '2017-08-24 02:19:47', '2017-08-24 02:19:47'),
(6, 1, 'UQoI6Cd9vKhqRGtklPHHQI3J0WtVAYMc', '2017-08-24 02:28:30', '2017-08-24 02:28:30'),
(7, 1, 'Zh3JUOT2aoUbV5qP0jZYnABXD9TOKIwr', '2017-08-24 02:44:24', '2017-08-24 02:44:24'),
(8, 1, '9NMTOaPvu3WZ2jbm4j1sA2aOMjQhcpkr', '2017-08-24 20:17:08', '2017-08-24 20:17:08'),
(9, 1, 'XrWQVhrCAG9lCSWUmQvQckCbkJzGH89G', '2017-08-25 02:41:57', '2017-08-25 02:41:57'),
(10, 1, 'hf6y3tviIcSuCmJVlg7nlh5fe7l3g4NU', '2017-08-25 04:03:22', '2017-08-25 04:03:22'),
(12, 1, 'YI7ejHvO1azT8pEPFt15auC1i0yV0eyf', '2017-08-25 05:08:13', '2017-08-25 05:08:13'),
(13, 1, '7Pv4l4TvIy29Ei2e9QtAdkUrb83tAh0z', '2017-08-25 05:12:31', '2017-08-25 05:12:31'),
(14, 1, 'Zy0UjAouSFX54P9bp6z06TVH4EtIfDgc', '2017-08-25 21:37:37', '2017-08-25 21:37:37'),
(15, 1, '8Hki60Ql8OTq9RANpaMFedZ8vRjYWnei', '2017-08-26 11:30:11', '2017-08-26 11:30:11'),
(16, 1, 'gnkzWz5YyxQlLt5Zp9fXFEmvlPFV8EE5', '2017-08-26 20:08:25', '2017-08-26 20:08:25'),
(17, 1, 'LGHo82iX27d41aaWQrcNBm7bQ1rHsxtn', '2017-08-26 22:07:46', '2017-08-26 22:07:46'),
(18, 1, 'PwMQI5MU0Bfzw4Ev8wfAVVWMj5Zj20yr', '2017-08-29 12:16:17', '2017-08-29 12:16:17'),
(19, 1, '7Ce5x50jSZgq79r6MJt3tbouWey5ZTYo', '2017-08-29 20:54:09', '2017-08-29 20:54:09'),
(21, 1, 'GP0Ax45aAZIsvxAxkpQvNcBMDpwDfxZo', '2017-09-08 00:12:26', '2017-09-08 00:12:26'),
(22, 1, 'RML71atlnVuo4wNQGWDbpUVD77SEeepc', '2017-09-09 06:28:23', '2017-09-09 06:28:23'),
(23, 1, 'ULp87M5wzoIKz0Co3cKZ9L5JFKuXwBMs', '2017-09-09 22:00:18', '2017-09-09 22:00:18'),
(24, 1, 'wDguCoPPI0gIUlW75FBIl6UuiHAWp9tu', '2017-09-10 01:18:57', '2017-09-10 01:18:57'),
(25, 1, '96i4hAT70lmhYtgmpFQfvSeQbeCEcTm1', '2017-09-10 22:33:48', '2017-09-10 22:33:48'),
(26, 1, 'hiE610UDeidzBzeNFvCZoX2gwtZTA2ke', '2017-09-11 07:32:50', '2017-09-11 07:32:50'),
(27, 1, 'Fri71ZxY3b0F0TCwhoAdoAvkQLrr99Vf', '2017-09-13 02:09:03', '2017-09-13 02:09:03'),
(28, 1, 'qGZwjb0Qj7W3HVAJ3SydGH56SicU7sFz', '2017-09-13 02:53:45', '2017-09-13 02:53:45'),
(29, 1, 'qlnxCVkSTeztnG5vj095rINwcskEjIDW', '2017-09-13 03:13:05', '2017-09-13 03:13:05'),
(30, 1, 'uwtR6YndT1w4lKNPPVLkiWYShac67Jg2', '2017-09-13 10:30:59', '2017-09-13 10:30:59'),
(31, 1, 'p0ucxvLQH2nvlXmHilDd6QIkiPmQf789', '2017-09-14 02:40:36', '2017-09-14 02:40:36'),
(33, 1, 'W20omh1TiFpVhhzD7X0rSf97L4QiMhP5', '2017-09-14 05:23:18', '2017-09-14 05:23:18'),
(34, 1, 'eA4Me0VekldwMbcxO8Q0QKXm0DIn3K46', '2017-09-14 07:01:52', '2017-09-14 07:01:52'),
(35, 1, 'dQanlyos6f2aO0ZFy9ecN2XCN8Itetws', '2017-09-14 07:46:58', '2017-09-14 07:46:58'),
(36, 1, 'KUSvboK40wGnzbKxh1NLYsZYkiZiwThY', '2017-09-14 08:06:45', '2017-09-14 08:06:45'),
(37, 1, 'uA0bRP1dqdDtf55va0eYNHoQ0qUN2hHs', '2017-09-14 08:34:10', '2017-09-14 08:34:10'),
(38, 1, 'gwUmvl8xNpNJmXVq5lcfyLsy9AQL4CCz', '2017-09-14 08:46:03', '2017-09-14 08:46:03'),
(39, 1, 'TDS5QldoQS2VwmHPT0UeNWoFXGSDkj73', '2017-09-14 08:54:49', '2017-09-14 08:54:49'),
(41, 2, 'gE9kblPBguipH9bCMxgsFHMyuW8EHHSM', '2017-09-15 08:20:33', '2017-09-15 08:20:33'),
(42, 2, 'ydASGvR8lHqRpiHMT38qJ458cUXVsORj', '2017-09-15 08:21:20', '2017-09-15 08:21:20'),
(44, 1, 'veOLvTEnCvgE0rYXnOPWOAP5Zd3l46dh', '2017-09-15 08:51:46', '2017-09-15 08:51:46'),
(46, 2, '63WeOHpIGH1ZKLFutrIUoipdLHbBPeA4', '2017-09-15 09:11:07', '2017-09-15 09:11:07'),
(47, 2, '1hWHawtQMmqSwChzWLThrq1z78yT9xUG', '2017-09-15 09:13:39', '2017-09-15 09:13:39'),
(48, 1, 'VcedjApqW7sIjTiQmDXpPxhJPIYpS1OG', '2017-09-15 13:42:52', '2017-09-15 13:42:52'),
(49, 1, 'GmIl4C6Pmdnm4yHplC1RL6RLhCeAzckM', '2017-09-15 17:43:02', '2017-09-15 17:43:02'),
(50, 1, 'z99BbMa4ccpMQYBE5nR1x5QvKPeNsfsF', '2017-09-16 03:27:48', '2017-09-16 03:27:48'),
(51, 1, 'q9AGBXyPz8Wf9P4DhAs7RriDG9d0Pf5g', '2017-09-16 06:50:54', '2017-09-16 06:50:54'),
(52, 1, 'qcGuomWo31e8U4uG9dy0nn4e7SnOErRh', '2017-09-16 06:58:27', '2017-09-16 06:58:27'),
(53, 1, 'ty7NZ6Ep1ipRsy9Ib1QEfJ1krWoecJf7', '2017-09-16 12:38:37', '2017-09-16 12:38:37'),
(54, 1, 'uPpZYZAK0xwICLUKihtempRViBtJAYY3', '2017-09-16 14:45:53', '2017-09-16 14:45:53'),
(55, 1, 'nJU4Boi1CocdGYP76FcUi7oqyLCkHAia', '2017-09-16 14:48:36', '2017-09-16 14:48:36'),
(56, 1, 'QQbXPuxDdrHGdMabrEbc75q8ZKiduV3F', '2017-09-16 14:50:51', '2017-09-16 14:50:51'),
(57, 1, 'K9CUXKAMGqOFKqFl1zRDtIfejZfc8qA8', '2017-09-16 14:57:59', '2017-09-16 14:57:59'),
(59, 1, 'ItjJhXZBnxMnyIBJgzgu1UPBu31vFN4p', '2017-09-16 15:48:46', '2017-09-16 15:48:46'),
(60, 1, 'aSdd1XxbP6cWOuVUD3kzs45EHiJzXZGo', '2017-09-16 15:53:02', '2017-09-16 15:53:02'),
(61, 1, 'h3idTA1skBqtvL6LpIJV1TW1T4jD8kGJ', '2017-09-16 17:09:41', '2017-09-16 17:09:41'),
(62, 1, 'Cq5gQwHJ4EffhvVXWymAotdBryZ6NDk8', '2017-09-17 03:54:19', '2017-09-17 03:54:19'),
(63, 1, '3XvaWe06roeUK62d1ljx38ds7k2IPHYR', '2017-09-17 04:33:52', '2017-09-17 04:33:52'),
(64, 1, 'v5yVSETdbTCUnzAHcvsZgWLqxyx2VUsv', '2017-09-17 04:38:54', '2017-09-17 04:38:54'),
(65, 1, '309fKyxcJUjJW0i7BxTrapHNUSe1WkOL', '2017-09-17 04:41:52', '2017-09-17 04:41:52'),
(66, 1, 'Q83b2rAZ2RvSMFYZLs4SGBqClC1N6k3a', '2017-09-17 05:01:15', '2017-09-17 05:01:15'),
(67, 1, 'xWQybu0wQ07w17NqA0Xks1PrZ8zUm1ek', '2017-09-17 05:08:10', '2017-09-17 05:08:10'),
(68, 1, 'yNYYhx9lxWv7N2gwn7eSDqF8OMjOBzc1', '2017-09-17 05:29:06', '2017-09-17 05:29:06'),
(69, 1, 'AWsEPvdU36IB9TriMrOQB5rGmCcdfqlh', '2017-09-17 07:02:53', '2017-09-17 07:02:53'),
(70, 1, 'RqOSKlZnv2KEmkn9vsEDXVSMV4o9lAn8', '2017-09-17 09:53:45', '2017-09-17 09:53:45'),
(71, 1, 'HwgHr2yMdl47wLh9Q4eYSgN7Vb0oRBb6', '2017-09-17 09:56:39', '2017-09-17 09:56:39'),
(72, 1, 'FgR0vydrbmKPZ6KV2gscsX1uJR0zzAwj', '2017-09-17 10:02:02', '2017-09-17 10:02:02'),
(73, 1, '4Gg54jKoVfW44Az1arsWlh1GkBnHaoYX', '2017-09-17 10:24:08', '2017-09-17 10:24:08'),
(74, 1, 'Q6tkAmbvaGL5hj47O5zUDMf4XpLFxuqK', '2017-09-17 16:54:49', '2017-09-17 16:54:49'),
(75, 1, 'CNoO7nligcyMCxNzlQwi7vmtUowgegSQ', '2017-09-17 17:52:52', '2017-09-17 17:52:52'),
(76, 1, 'okotyfqKPL9qOOwMZYLcRz0i0KYGHtZC', '2017-09-18 03:20:40', '2017-09-18 03:20:40'),
(77, 1, '6kaJVgU0YA3sXzGV91ySyuoTrrGyuY4O', '2017-09-18 03:44:24', '2017-09-18 03:44:24'),
(78, 1, 'OS0vjK7iDP2YkKUFpsleqmXNNUM0UFFX', '2017-09-18 03:46:25', '2017-09-18 03:46:25'),
(79, 1, 'YAnBVsXEWYoCakE2dRd9zP21PT9QgWzB', '2017-09-18 03:53:42', '2017-09-18 03:53:42'),
(80, 1, 'DzcKguG9MNOgAi0R9AL3r9Uyy8BDblc2', '2017-09-18 04:23:42', '2017-09-18 04:23:42'),
(81, 1, 'T4YD2ZlVciHLIJ95SK1w2KpBKKKIMPiV', '2017-09-18 04:29:21', '2017-09-18 04:29:21'),
(82, 1, 'UxujsgbIffEc9m2pvhXrDW4WOg2azjfO', '2017-09-18 05:57:08', '2017-09-18 05:57:08'),
(83, 1, 'HG70aEFpT8VFNMEjtQMtJJGJ7EeBVNXp', '2017-09-18 08:35:38', '2017-09-18 08:35:38'),
(88, 1, '2DCG8y3MOQiXEnPLD533NYDYbxZ0LStE', '2017-09-18 10:08:42', '2017-09-18 10:08:42'),
(92, 1, 'iY6DucfUnceDp1gnROUujGJEQlA4BiNH', '2017-09-18 10:24:04', '2017-09-18 10:24:04'),
(93, 1, 'te2KfbmjLNXsa7CqjsFbjHK2qiJ4Zs0C', '2017-09-18 10:57:04', '2017-09-18 10:57:04'),
(94, 1, 'ntA2MY4nIOp2ik7fmbbogMhe9aUm3hoI', '2017-09-18 16:57:50', '2017-09-18 16:57:50'),
(98, 1, 'KCDM9O1eAnhKDySjdpqIQhfbRFODraMw', '2017-09-18 18:27:32', '2017-09-18 18:27:32'),
(99, 1, 'zjzLvMmzS2iTLmQLtE1YWsLmVmGQyr1j', '2017-09-19 04:05:53', '2017-09-19 04:05:53'),
(100, 1, 'ukG9ZzBOjFfgBaNN4LsWF31Qz35UvjpJ', '2017-09-19 04:27:36', '2017-09-19 04:27:36'),
(101, 1, 'y3lApH70qLwcZnbrlNUlu5tfJ2E8SPKP', '2017-09-19 04:45:28', '2017-09-19 04:45:28'),
(102, 1, 'hWtZUjRbhLoDZ97IgmOWT1nbUZCIwIUN', '2017-09-19 04:56:36', '2017-09-19 04:56:36'),
(103, 1, 'FrwzmGVIc6FMYU9ATeeKS3Ax6mKgxe7g', '2017-09-19 05:23:16', '2017-09-19 05:23:16'),
(104, 1, 'pcKj1On95D3Sxs0yDFW5f4wd9xiGTE2R', '2017-09-19 05:56:15', '2017-09-19 05:56:15'),
(105, 1, 'K9VEbkM4Hx5nuwmrkS63RGeKE6BU0EQt', '2017-09-19 10:25:20', '2017-09-19 10:25:20'),
(106, 1, 'nc5GVYzzjpa9cqCtsd7wgxGDFosS3XXz', '2017-09-19 10:53:31', '2017-09-19 10:53:31'),
(107, 1, 'AB4XqN1h33Oyu9cBerizOyf6flWVwEnl', '2017-09-19 11:18:07', '2017-09-19 11:18:07'),
(108, 1, 'Dn7K8a4aZsBV9J0bDxXjs9wovmcDEshe', '2017-09-19 11:49:30', '2017-09-19 11:49:30'),
(109, 1, 'lMZdj8bCE7gpE7OqjeZSOxN3VNIs6Ol3', '2017-09-19 11:50:31', '2017-09-19 11:50:31'),
(110, 1, 'tYYFUmy19pJAtc8A4OwAHMEC1nItzkaE', '2017-09-19 11:51:39', '2017-09-19 11:51:39'),
(111, 1, 'nfq4wml64y5iEZfa212UXNg1qOqiaCte', '2017-09-19 11:53:07', '2017-09-19 11:53:07'),
(112, 1, 'QiGNqEhFVMafmCtAp8IAJyyg1drlsMmn', '2017-09-19 12:03:12', '2017-09-19 12:03:12'),
(113, 1, 'fk1jua0TjoawqAvytZqrrvZwFWucEii3', '2017-09-19 12:09:29', '2017-09-19 12:09:29'),
(114, 1, 'WosYUwmk5rfVezY5JWSfbMZMUXsbCLHH', '2017-09-19 12:11:01', '2017-09-19 12:11:01'),
(115, 1, '4ImjhO7R9rUIkzW5KqZBJIAHBF8LcaKp', '2017-09-19 12:11:53', '2017-09-19 12:11:53'),
(116, 1, 'mrC8NyPivdPpPmjNfn2iJycT3e8nik02', '2017-09-19 18:29:55', '2017-09-19 18:29:55'),
(117, 1, 'auOBoioiutrnb6WJX9IY1EXH4NLPhMR0', '2017-09-19 18:40:02', '2017-09-19 18:40:02'),
(118, 1, 'V0HF6f7TeBpQv85ryPqSn9grWYynhm3v', '2017-09-20 11:40:38', '2017-09-20 11:40:38'),
(119, 1, 'ZraU6Al5J9pjkacvWFRbhtqjw0IrHcdH', '2017-09-20 13:39:35', '2017-09-20 13:39:35'),
(120, 1, 'TyK17cbPFOjOoHa48hh1ul47B3nea39X', '2017-09-20 14:36:26', '2017-09-20 14:36:26'),
(121, 1, 'qcTkMzHfy82JGmVWfGlSPSNXQ07wHaAV', '2017-09-21 09:06:27', '2017-09-21 09:06:27'),
(122, 1, 'FsqtCBseMG3i2b8QlqGXEtZMyFtzOQv3', '2017-09-21 09:18:05', '2017-09-21 09:18:05'),
(123, 1, 'hKOIyrDEJwRAVHUcEYk83i8OIrlcc8Aa', '2017-09-21 17:14:51', '2017-09-21 17:14:51'),
(124, 1, 'FLw2jJaOQ79tNix2LAJRJoHqUg0Ngi6s', '2017-09-21 17:14:51', '2017-09-21 17:14:51'),
(125, 1, 'AaSFBIkvZGpP5sszRJlK0knBgIs08O3J', '2017-09-22 03:46:10', '2017-09-22 03:46:10'),
(126, 1, 'CqLmUbR1iPsMUzGvHx47otLy1OD1szaJ', '2017-09-22 05:25:01', '2017-09-22 05:25:01'),
(127, 1, 'tuzH1sAF4rXVg0eTQFcDne8e7pwNpxLh', '2017-09-22 12:21:18', '2017-09-22 12:21:18'),
(128, 1, '5fmODiVanJaQJXXo6l9BtQoAraGVwatE', '2017-09-22 12:55:06', '2017-09-22 12:55:06'),
(129, 1, 'smNyJgohiisSFdMhCBtPqvUGlbEgJvEY', '2017-09-22 13:02:26', '2017-09-22 13:02:26'),
(130, 1, '6dGIYBeu83Bpq9oqsT0UhZH74Iy8bgwG', '2017-09-23 04:29:43', '2017-09-23 04:29:43'),
(131, 1, 'TSxdnKYrdCd0KqjyC9uO40gu17aMIpf2', '2017-09-23 14:51:34', '2017-09-23 14:51:34'),
(132, 1, 'ajOcOs1LxOhpMnQ4Q2mwSRceInEw1VGi', '2017-09-24 04:00:39', '2017-09-24 04:00:39'),
(133, 1, '0XYhxPDba1C2gcgvyA3KLNak8dn1EsQi', '2017-09-25 08:01:59', '2017-09-25 08:01:59'),
(134, 1, 'LDaohEEsd7omtAfLYXCREdK1tkZCXkZN', '2017-09-26 04:16:50', '2017-09-26 04:16:50'),
(135, 1, 'HxRHqhunwDoGwS81lF31Pf9JoMZBZHW9', '2017-09-26 05:19:46', '2017-09-26 05:19:46'),
(136, 1, 'OgPRGgAIloxvx1Kwu1pqRhfjurCSDyY5', '2017-09-26 16:05:47', '2017-09-26 16:05:47'),
(137, 1, '0ChRo8JuknrbeCFIxNByMRvLeVexVXOZ', '2017-09-27 05:27:48', '2017-09-27 05:27:48'),
(138, 1, 'aAng2K0EgLucUmEKZoVpcEAkw8IVZCnJ', '2017-09-27 12:05:51', '2017-09-27 12:05:51'),
(142, 1, '0IUQzEajLWvEEnSj61lIKbd5ZM3Anz11', '2017-09-28 06:39:14', '2017-09-28 06:39:14'),
(143, 1, 'ovmqu8hTvsP1mtng1CiQM5xOZnUdDm9L', '2017-09-29 13:25:51', '2017-09-29 13:25:51'),
(144, 1, 'LjROF69eLUomatn46NBF3bQInd4ZDEJo', '2017-10-03 02:35:37', '2017-10-03 02:35:37'),
(145, 6, 'Id6e6rqzcWGYn8MeUKS47yOHxPmyHPRO', '2017-10-03 02:58:29', '2017-10-03 02:58:29'),
(146, 1, 'ASSLUgFRPdvVo6GDscdsYu4EJuDKeN2t', '2017-10-03 05:36:23', '2017-10-03 05:36:23'),
(147, 1, 'nmvXPMSEv3oCKhl4Z8GPO34uWYqNcDpx', '2017-10-03 19:10:55', '2017-10-03 19:10:55'),
(148, 1, 'GrYcKMbVKl5wltZov9vTqEEOiBPnU11d', '2017-10-04 02:51:02', '2017-10-04 02:51:02'),
(149, 1, 'A0tBLLZoHM0Oj7DjDimrPZvt0xaREraA', '2017-10-04 04:18:11', '2017-10-04 04:18:11'),
(150, 1, 'hr9LdPiWakF3UnzgmVOhkVedbzW4awIR', '2017-10-10 06:03:31', '2017-10-10 06:03:31'),
(151, 1, '1MrNIInEB3kUkiGOdO10CbujufwDcfhn', '2017-10-25 15:51:22', '2017-10-25 15:51:22'),
(152, 1, 'BRltVTjN6J9fRmoLZnmRSAm8y0B4XELe', '2017-10-25 18:40:18', '2017-10-25 18:40:18'),
(154, 1, 'lAKXfiqkzFqEoPr6YvFTck6Z0Qjp29DQ', '2017-10-26 05:31:16', '2017-10-26 05:31:16'),
(155, 1, 'S2Bvhzt4OBFxuUDoNGxnUeHeRgg6MVEe', '2017-10-30 05:42:00', '2017-10-30 05:42:00'),
(156, 1, 'Yz6inthAzi4YY8ZeyL4gcyAWNLhFMbPA', '2017-10-30 05:43:24', '2017-10-30 05:43:24'),
(157, 1, 'RvAywF2c4Djg57nUmskUKX98VTD3ifsz', '2017-10-30 05:56:58', '2017-10-30 05:56:58'),
(158, 1, '4VhQeDR7f16TpsfnUoBt8Vwj9fh3WOTY', '2017-10-30 05:59:25', '2017-10-30 05:59:25'),
(159, 1, 'oB2JrdX0aIrc2qY5M4eQydtFwxOcTSPc', '2017-10-30 06:04:52', '2017-10-30 06:04:52'),
(160, 1, '72kYf6g3HtvK8ZODoi4hqkXrVRH798Us', '2017-10-30 06:08:31', '2017-10-30 06:08:31'),
(161, 1, 'JXahITebR5xUWJnXXukErhwFgG1OUP3T', '2017-10-30 06:09:13', '2017-10-30 06:09:13'),
(162, 1, 'EG4Jx0YHSzGwchWmJQEnIxZN8b1gFtF8', '2017-10-30 06:09:45', '2017-10-30 06:09:45'),
(163, 1, 'vvaXhcW37x20KPWrRoJHeSNytZIu7jOG', '2017-10-30 06:12:57', '2017-10-30 06:12:57'),
(164, 1, 'hUM0HtdITt8bdvZyzU8X1jL40pSUW4Qp', '2017-10-30 06:13:14', '2017-10-30 06:13:14'),
(165, 1, 'dGdZj5F5r2gbUrfivlcl0dIbZx17ZfPE', '2017-10-30 06:15:03', '2017-10-30 06:15:03'),
(166, 1, 'MiFdXqgxGLK4itStOIUedVxmMUmA5bxm', '2017-10-30 06:19:12', '2017-10-30 06:19:12'),
(167, 1, 'ShdU6FBmGrD3dOs7OklmpQCnDezolmFD', '2017-10-30 06:23:11', '2017-10-30 06:23:11'),
(168, 1, 'AJGrN5U8H3LNlX82Wtw9pKCC4lACSJ9h', '2017-10-30 06:28:42', '2017-10-30 06:28:42'),
(169, 1, 'OrbaIZMtNIxpSboZjYS5BGOGkbmYLzb1', '2017-10-30 06:40:23', '2017-10-30 06:40:23'),
(170, 1, 'uJMxew9iAoOiE4CMPYm7vtPZhX7B1N3J', '2017-10-30 06:41:27', '2017-10-30 06:41:27'),
(171, 1, 'Rfni062D1aaJu2Pog64x3Xt9KL8Vv3gC', '2017-10-30 06:41:44', '2017-10-30 06:41:44'),
(172, 1, 'QFf5AfaJf4os44IFeR5896VpY3nOcrO9', '2017-10-30 06:45:09', '2017-10-30 06:45:09'),
(173, 1, 'kimt19yM4vG9ITLiQ6T9lBY2jx3V7wVf', '2017-10-30 06:51:52', '2017-10-30 06:51:52'),
(174, 1, 'ZwdYHq23luhlxegfJEJt5YzmeA3BP5on', '2017-10-30 06:52:48', '2017-10-30 06:52:48'),
(175, 1, 'q9nM5GyHPHf7YJvdi7XuswkvZERYlGRH', '2017-10-30 07:01:10', '2017-10-30 07:01:10'),
(176, 1, 'edjhwB1W391oapCE99oOHg1PJfSfBkZJ', '2017-10-30 07:02:29', '2017-10-30 07:02:29'),
(177, 1, 'qamzeqcRt5RL7leWPVLXP7WWw5a0vkwb', '2017-10-30 07:06:48', '2017-10-30 07:06:48'),
(178, 1, 'VSkdbbKliFQnQJdbqsuHnm5rCzzesqZi', '2017-10-30 07:25:43', '2017-10-30 07:25:43'),
(179, 1, 'H1zS5CGkWEG9TtSxLQUBEr639bH88c4I', '2017-10-30 07:56:57', '2017-10-30 07:56:57'),
(180, 1, '6B1bfc6Bzffs5eWz1FDGlM8PeaH0EboE', '2017-10-30 08:17:53', '2017-10-30 08:17:53'),
(181, 1, 'tqbB8BnTcI4RFn61uYCFi1uG1ETlcZmO', '2017-10-30 09:53:32', '2017-10-30 09:53:32'),
(182, 1, 'q9Fpg0W0ZcPlv9xxkKNvyR9ZHldbI0JL', '2017-10-31 08:27:48', '2017-10-31 08:27:48'),
(183, 1, 'TGYg7Kk8n3HUyUdMQeTapvGnl4MKzr9s', '2017-10-31 08:28:36', '2017-10-31 08:28:36'),
(184, 6, '9Myy4yGIA2vGMKOoROvswsTmIgupHe0C', '2017-10-31 08:29:18', '2017-10-31 08:29:18'),
(187, 1, 'kJnbx5nvYwKMuSbHHKU2TymuhpPa9S61', '2017-10-31 08:32:04', '2017-10-31 08:32:04'),
(194, 1, 'mdfrXpcDFTMZyodXOF1pwisvgQ5LMw0X', '2017-10-31 15:03:24', '2017-10-31 15:03:24'),
(196, 1, 'kceXZs9Eo56CNsmCGVdm7iGCpnGTamfv', '2017-10-31 16:37:19', '2017-10-31 16:37:19'),
(197, 1, 'qJXfBaFmVNIU3YiVFXzbVHn6XmCTp5JJ', '2017-11-01 07:15:45', '2017-11-01 07:15:45'),
(198, 1, 'pmbKexGylNDOHA2pudIaynp12PxxbcRd', '2017-11-01 07:19:20', '2017-11-01 07:19:20'),
(199, 1, '6FFOh9Ip6nrzuctGMcMBIXIKoPIIsbHb', '2017-11-01 10:07:33', '2017-11-01 10:07:33'),
(200, 1, 'ZlxGMTc7P1ACBwasEd2L8mjjZNVhO1hq', '2017-11-01 10:14:02', '2017-11-01 10:14:02'),
(201, 1, 'nO0IUiBt5XtFvB0n1OubYD4QQXOwoTSa', '2017-11-01 10:15:24', '2017-11-01 10:15:24'),
(202, 1, 'XF8vxZKQnSWLVKDNP2L363PYjpg9tYlc', '2017-11-01 10:26:22', '2017-11-01 10:26:22'),
(207, 8, 'RiDeNlgegshKudxnEt7mekMekcUbJzlu', '2017-11-01 10:37:40', '2017-11-01 10:37:40'),
(208, 1, 'VlyCnmYSdf6S5uj0ooTXUYHZBfL1TvGn', '2017-11-01 10:38:23', '2017-11-01 10:38:23'),
(209, 1, 'IJSbdFvXZBCoqYpKFgb405WLzIPIN4kE', '2017-11-01 20:29:56', '2017-11-01 20:29:56');

-- --------------------------------------------------------

--
-- Table structure for table `reminders`
--

CREATE TABLE `reminders` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `slug`, `name`, `permissions`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Admin', NULL, '2017-08-23 09:16:28', '2017-08-23 09:16:28'),
(2, 'manager', 'Manager', NULL, '2017-08-23 09:16:28', '2017-08-23 09:16:28'),
(3, 'staff', 'Staff', NULL, '2017-08-23 09:16:28', '2017-08-23 09:16:28'),
(4, 'user', 'User', NULL, '2017-10-02 18:00:00', '2017-10-02 18:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `role_users`
--

CREATE TABLE `role_users` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_users`
--

INSERT INTO `role_users` (`user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2017-08-23 09:21:47', '2017-08-23 09:21:47'),
(2, 2, '2017-08-24 23:41:06', '2017-08-24 23:41:06'),
(5, 4, '2017-10-03 02:46:10', '2017-10-03 02:46:10'),
(6, 1, '2017-10-03 02:48:17', '2017-10-03 02:48:17'),
(8, 4, '2017-10-31 13:45:52', '2017-10-31 13:45:52');

-- --------------------------------------------------------

--
-- Table structure for table `seos`
--

CREATE TABLE `seos` (
  `id` int(10) UNSIGNED NOT NULL,
  `analytics` text COLLATE utf8mb4_unicode_ci,
  `metakeyword` text COLLATE utf8mb4_unicode_ci,
  `fbcomment` text COLLATE utf8mb4_unicode_ci,
  `siteurl` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seos`
--

INSERT INTO `seos` (`id`, `analytics`, `metakeyword`, `fbcomment`, `siteurl`, `created_at`, `updated_at`) VALUES
(1, '&lt;div id=\"fb-root\"&gt;&lt;/div&gt;<br>&lt;script&gt;(function(d, s, id) {<br>&nbsp; var js, fjs = d.getElementsByTagName(s)[0];<br>&nbsp; if (d.getElementById(id)) return;<br>&nbsp; js = d.createElement(s); js.id = id;<br>&nbsp; js.src = \"//connect.facebook.net/en_US/sdk.js#xfbml=1&amp;version=v2.10&amp;appId=1755138674497516\";<br>&nbsp; fjs.parentNode.insertBefore(js, fjs);<br>}(document, \'script\', \'facebook-jssdk\'));&lt;/script&gt;', 'newszon, latest news', '<div id=\"fb-root\"></div>\r\n<script>(function(d, s, id) {\r\n  var js, fjs = d.getElementsByTagName(s)[0];\r\n  if (d.getElementById(id)) return;\r\n  js = d.createElement(s); js.id = id;\r\n  js.src = \"//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.10&appId=1755138674497516\";\r\n  fjs.parentNode.insertBefore(js, fjs);\r\n}(document, \'script\', \'facebook-jssdk\'));</script>', 'http://softwarezon.com/newszon/', '2017-08-23 09:16:28', '2017-11-01 07:24:53');

-- --------------------------------------------------------

--
-- Table structure for table `socials`
--

CREATE TABLE `socials` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` text COLLATE utf8mb4_unicode_ci,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `socials`
--

INSERT INTO `socials` (`id`, `name`, `code`, `link`, `status`, `created_at`, `updated_at`) VALUES
(14, 'Facebook', '<i class=\"fa fa-facebook\"></i>', 'http://facebook.com', 1, '2017-09-21 18:55:02', '2017-09-22 14:34:50'),
(18, 'Twitter', '<i class=\"fa fa-twitter\"></i>', 'https://twitter.com/', 1, '2017-09-21 19:51:24', '2017-09-22 04:52:28'),
(29, 'Google Plus', '<i class=\"fa fa-google-plus\" aria-hidden=\"true\"></i>', 'https://plus.google.com/', 1, '2017-09-21 20:11:42', '2017-09-22 04:11:21'),
(30, 'Linkedin', '<i class=\"fa fa-linkedin\" aria-hidden=\"true\"></i>', 'https://www.linkedin.com/', 0, '2017-09-22 04:13:15', '2017-10-03 19:13:33'),
(31, 'Skype', '<i class=\"fa fa-skype\" aria-hidden=\"true\"></i>', 'https://www.skype.com', 1, '2017-09-22 04:14:54', '2017-09-22 04:14:54');

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`id`, `email`, `created_at`, `updated_at`) VALUES
(1, 'j@gmail.com', '2017-09-14 02:43:45', '2017-09-14 02:43:45'),
(2, 'l@gmail.com', '2017-09-22 03:45:22', '2017-09-22 03:45:22'),
(3, 'hasan@gmail.com', '2017-09-22 03:45:49', '2017-09-22 03:45:49'),
(4, 'r@gmail.com', '2017-09-22 03:59:05', '2017-09-22 03:59:05'),
(5, 'labib@gmail.com', '2017-09-22 04:00:56', '2017-09-22 04:00:56'),
(6, 'kamalpasa@gmail.com', '2017-10-30 05:41:43', '2017-10-30 05:41:43'),
(7, 'kamalpasha@gmail.com', '2017-10-30 06:18:58', '2017-10-30 06:18:58'),
(8, 'kamapasha@gmail.com', '2017-10-30 08:17:26', '2017-10-30 08:17:26');

-- --------------------------------------------------------

--
-- Table structure for table `themes`
--

CREATE TABLE `themes` (
  `id` int(10) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `themes`
--

INSERT INTO `themes` (`id`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, '2017-09-26 18:00:00', '2017-11-01 11:28:24');

-- --------------------------------------------------------

--
-- Table structure for table `throttle`
--

CREATE TABLE `throttle` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `throttle`
--

INSERT INTO `throttle` (`id`, `user_id`, `type`, `ip`, `created_at`, `updated_at`) VALUES
(1, NULL, 'global', NULL, '2017-08-24 02:28:21', '2017-08-24 02:28:21'),
(2, NULL, 'ip', '::1', '2017-08-24 02:28:22', '2017-08-24 02:28:22'),
(3, 1, 'user', NULL, '2017-08-24 02:28:22', '2017-08-24 02:28:22'),
(4, NULL, 'global', NULL, '2017-09-09 22:00:10', '2017-09-09 22:00:10'),
(5, NULL, 'ip', '::1', '2017-09-09 22:00:10', '2017-09-09 22:00:10'),
(6, 1, 'user', NULL, '2017-09-09 22:00:10', '2017-09-09 22:00:10'),
(7, NULL, 'global', NULL, '2017-09-10 01:18:49', '2017-09-10 01:18:49'),
(8, NULL, 'ip', '::1', '2017-09-10 01:18:49', '2017-09-10 01:18:49'),
(9, 1, 'user', NULL, '2017-09-10 01:18:49', '2017-09-10 01:18:49'),
(10, NULL, 'global', NULL, '2017-09-13 10:30:52', '2017-09-13 10:30:52'),
(11, NULL, 'ip', '::1', '2017-09-13 10:30:52', '2017-09-13 10:30:52'),
(12, 1, 'user', NULL, '2017-09-13 10:30:52', '2017-09-13 10:30:52'),
(13, NULL, 'global', NULL, '2017-09-15 08:15:10', '2017-09-15 08:15:10'),
(14, NULL, 'ip', '::1', '2017-09-15 08:15:10', '2017-09-15 08:15:10'),
(15, 1, 'user', NULL, '2017-09-15 08:15:10', '2017-09-15 08:15:10'),
(16, NULL, 'global', NULL, '2017-09-18 03:20:30', '2017-09-18 03:20:30'),
(17, NULL, 'ip', '::1', '2017-09-18 03:20:30', '2017-09-18 03:20:30'),
(18, 1, 'user', NULL, '2017-09-18 03:20:30', '2017-09-18 03:20:30'),
(19, NULL, 'global', NULL, '2017-09-18 10:06:40', '2017-09-18 10:06:40'),
(20, NULL, 'ip', '::1', '2017-09-18 10:06:40', '2017-09-18 10:06:40'),
(21, 1, 'user', NULL, '2017-09-18 10:06:40', '2017-09-18 10:06:40'),
(22, NULL, 'global', NULL, '2017-09-18 10:07:58', '2017-09-18 10:07:58'),
(23, NULL, 'ip', '::1', '2017-09-18 10:07:58', '2017-09-18 10:07:58'),
(24, 2, 'user', NULL, '2017-09-18 10:07:58', '2017-09-18 10:07:58'),
(25, NULL, 'global', NULL, '2017-09-18 10:08:23', '2017-09-18 10:08:23'),
(26, NULL, 'ip', '::1', '2017-09-18 10:08:23', '2017-09-18 10:08:23'),
(27, 1, 'user', NULL, '2017-09-18 10:08:23', '2017-09-18 10:08:23'),
(28, NULL, 'global', NULL, '2017-09-18 10:17:01', '2017-09-18 10:17:01'),
(29, NULL, 'ip', '::1', '2017-09-18 10:17:01', '2017-09-18 10:17:01'),
(30, 2, 'user', NULL, '2017-09-18 10:17:01', '2017-09-18 10:17:01'),
(31, NULL, 'global', NULL, '2017-09-18 10:17:07', '2017-09-18 10:17:07'),
(32, NULL, 'ip', '::1', '2017-09-18 10:17:07', '2017-09-18 10:17:07'),
(33, 1, 'user', NULL, '2017-09-18 10:17:07', '2017-09-18 10:17:07'),
(34, NULL, 'global', NULL, '2017-09-18 10:18:11', '2017-09-18 10:18:11'),
(35, NULL, 'ip', '::1', '2017-09-18 10:18:11', '2017-09-18 10:18:11'),
(36, 1, 'user', NULL, '2017-09-18 10:18:11', '2017-09-18 10:18:11'),
(37, NULL, 'global', NULL, '2017-09-18 10:56:37', '2017-09-18 10:56:37'),
(38, NULL, 'ip', '::1', '2017-09-18 10:56:37', '2017-09-18 10:56:37'),
(39, 1, 'user', NULL, '2017-09-18 10:56:37', '2017-09-18 10:56:37'),
(40, NULL, 'global', NULL, '2017-09-18 10:56:40', '2017-09-18 10:56:40'),
(41, NULL, 'ip', '::1', '2017-09-18 10:56:40', '2017-09-18 10:56:40'),
(42, 1, 'user', NULL, '2017-09-18 10:56:40', '2017-09-18 10:56:40'),
(43, NULL, 'global', NULL, '2017-09-18 10:56:42', '2017-09-18 10:56:42'),
(44, NULL, 'ip', '::1', '2017-09-18 10:56:42', '2017-09-18 10:56:42'),
(45, 1, 'user', NULL, '2017-09-18 10:56:42', '2017-09-18 10:56:42'),
(46, NULL, 'global', NULL, '2017-09-18 10:56:53', '2017-09-18 10:56:53'),
(47, NULL, 'ip', '::1', '2017-09-18 10:56:53', '2017-09-18 10:56:53'),
(48, 1, 'user', NULL, '2017-09-18 10:56:53', '2017-09-18 10:56:53'),
(49, NULL, 'global', NULL, '2017-09-29 13:25:43', '2017-09-29 13:25:43'),
(50, NULL, 'ip', '::1', '2017-09-29 13:25:43', '2017-09-29 13:25:43'),
(51, 1, 'user', NULL, '2017-09-29 13:25:43', '2017-09-29 13:25:43'),
(52, NULL, 'global', NULL, '2017-10-31 12:51:11', '2017-10-31 12:51:11'),
(53, NULL, 'ip', '::1', '2017-10-31 12:51:11', '2017-10-31 12:51:11'),
(54, NULL, 'global', NULL, '2017-10-31 12:51:12', '2017-10-31 12:51:12'),
(55, NULL, 'ip', '::1', '2017-10-31 12:51:12', '2017-10-31 12:51:12'),
(56, NULL, 'global', NULL, '2017-10-31 12:51:14', '2017-10-31 12:51:14'),
(57, NULL, 'ip', '::1', '2017-10-31 12:51:14', '2017-10-31 12:51:14'),
(58, NULL, 'global', NULL, '2017-10-31 12:51:15', '2017-10-31 12:51:15'),
(59, NULL, 'ip', '::1', '2017-10-31 12:51:15', '2017-10-31 12:51:15'),
(60, NULL, 'global', NULL, '2017-10-31 12:51:16', '2017-10-31 12:51:16'),
(61, NULL, 'ip', '::1', '2017-10-31 12:51:16', '2017-10-31 12:51:16'),
(62, NULL, 'global', NULL, '2017-10-31 12:51:17', '2017-10-31 12:51:17'),
(63, NULL, 'ip', '::1', '2017-10-31 12:51:17', '2017-10-31 12:51:17'),
(64, NULL, 'global', NULL, '2017-10-31 13:24:58', '2017-10-31 13:24:58'),
(65, NULL, 'ip', '::1', '2017-10-31 13:24:58', '2017-10-31 13:24:58'),
(66, NULL, 'global', NULL, '2017-10-31 13:27:30', '2017-10-31 13:27:30'),
(67, NULL, 'ip', '::1', '2017-10-31 13:27:30', '2017-10-31 13:27:30'),
(68, 1, 'user', NULL, '2017-10-31 13:27:30', '2017-10-31 13:27:30'),
(69, NULL, 'global', NULL, '2017-10-31 14:03:20', '2017-10-31 14:03:20'),
(70, NULL, 'ip', '::1', '2017-10-31 14:03:20', '2017-10-31 14:03:20'),
(71, 1, 'user', NULL, '2017-10-31 14:03:20', '2017-10-31 14:03:20'),
(72, NULL, 'global', NULL, '2017-10-31 14:05:07', '2017-10-31 14:05:07'),
(73, NULL, 'ip', '::1', '2017-10-31 14:05:07', '2017-10-31 14:05:07'),
(74, 1, 'user', NULL, '2017-10-31 14:05:07', '2017-10-31 14:05:07'),
(75, NULL, 'global', NULL, '2017-10-31 14:13:34', '2017-10-31 14:13:34'),
(76, NULL, 'ip', '::1', '2017-10-31 14:13:34', '2017-10-31 14:13:34'),
(77, 1, 'user', NULL, '2017-10-31 14:13:34', '2017-10-31 14:13:34'),
(78, NULL, 'global', NULL, '2017-10-31 14:15:41', '2017-10-31 14:15:41'),
(79, NULL, 'ip', '::1', '2017-10-31 14:15:41', '2017-10-31 14:15:41'),
(80, 1, 'user', NULL, '2017-10-31 14:15:41', '2017-10-31 14:15:41'),
(81, NULL, 'global', NULL, '2017-10-31 14:19:42', '2017-10-31 14:19:42'),
(82, NULL, 'ip', '::1', '2017-10-31 14:19:43', '2017-10-31 14:19:43'),
(83, NULL, 'global', NULL, '2017-10-31 14:23:07', '2017-10-31 14:23:07'),
(84, NULL, 'ip', '::1', '2017-10-31 14:23:07', '2017-10-31 14:23:07'),
(85, NULL, 'global', NULL, '2017-10-31 16:37:11', '2017-10-31 16:37:11'),
(86, NULL, 'ip', '103.60.172.10', '2017-10-31 16:37:11', '2017-10-31 16:37:11'),
(87, 1, 'user', NULL, '2017-10-31 16:37:11', '2017-10-31 16:37:11'),
(88, NULL, 'global', NULL, '2017-11-01 07:19:06', '2017-11-01 07:19:06'),
(89, NULL, 'ip', '103.85.156.87', '2017-11-01 07:19:06', '2017-11-01 07:19:06'),
(90, 1, 'user', NULL, '2017-11-01 07:19:06', '2017-11-01 07:19:06'),
(91, NULL, 'global', NULL, '2017-11-01 20:29:48', '2017-11-01 20:29:48'),
(92, NULL, 'ip', '103.85.156.87', '2017-11-01 20:29:48', '2017-11-01 20:29:48'),
(93, 1, 'user', NULL, '2017-11-01 20:29:48', '2017-11-01 20:29:48');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `last_login` timestamp NULL DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `profile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `permissions`, `last_login`, `first_name`, `last_name`, `phone`, `status`, `profile`, `created_at`, `updated_at`) VALUES
(1, 'admin@gmail.com', '$2y$10$R23ar11PEKOZAgRtZVQvsudBHKTCEc/m5A3bIVtuAKgPgLyMGinhi', NULL, '2017-11-01 20:29:56', 'Jone', 'Area', '(555) 555-1234', 1, 'rCghgnQqP7B4srabOpyb.jpg', '2017-08-23 09:21:47', '2017-11-01 20:29:56'),
(2, 'staff@gmail.com', '$2y$10$MjRQqZ7CDu6g5NRBsjsZi.9olPrw/r//dGP0.stf8JfoUuHm4C2Ka', NULL, '2017-11-01 10:31:31', 'Doue', 'Uddin', '(555) 555-1234', 1, NULL, '2017-08-24 23:41:06', '2017-11-01 10:31:31'),
(5, 'akash@gmail.com', '$2y$10$V67mbS0dFRS2f5FFuuPtpOQzcvgDyHMSTP0oD25CrctRT1JMsXRsG', NULL, NULL, 'Akash', 'Das', NULL, 0, NULL, '2017-10-03 02:46:10', '2017-10-03 02:46:10'),
(6, 'l@gmail.com', '$2y$10$u9wex6NzgOtFvnVMDFaOAOxdqm0r1eJoTbeaelQ3kKd2.2LoQAX3i', NULL, '2017-10-31 08:30:33', 'lima', 'Roy', NULL, 0, NULL, '2017-10-03 02:48:17', '2017-10-31 08:30:33'),
(8, 'hellomrhasan@gmail.com', '$2y$10$3WEvMV4g1EhLU.m6Sy5tiOJdgTNm6dKKJfJLJ1uCZaf7dpFy.q5hm', NULL, '2017-11-01 10:37:40', 'Jamal', 'Hazari', NULL, 0, NULL, '2017-10-31 13:45:52', '2017-11-01 10:37:40');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `title`, `slug`, `url`, `link`, `status`, `created_at`, `updated_at`) VALUES
(7, 'Thikana | Bangla New Song 2017 | Mithila | Tahsin | Apurba | Mizanur Rahman Aryan', 'thikana-bangla-new-song-2017-mithila-tahsin-apurba-mizanur-rahman-aryan', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/GmoYpOUEwVc\" frameborder=\"0\" allowfullscreen></iframe>', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p><br>', 1, '2017-09-22 06:08:28', '2017-10-04 04:21:25'),
(8, 'Amar Golpe Tumi | Tahsan | Mithila | Urmila | Mizanur Aryan | Sajid Sarker| Bangla New Songs Full HD', 'amar-golpe-tumi-tahsan-mithila-urmila-mizanur-aryan-sajid-sarker-bangla-new-songs-full-hd', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/M5soWd1Uy34\" frameborder=\"0\" allowfullscreen></iframe>', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p><br>', 1, '2017-09-22 06:17:36', '2017-10-04 04:21:17'),
(9, 'Prithibir Joto Sukh | Bangla Song 2017 | by Habib Wahid | Nancy', 'prithibir-joto-sukh-bangla-song-2017-by-habib-wahid-nancy', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/O_xFSe4fZuA\" frameborder=\"0\" allowfullscreen></iframe>', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p><br>', 1, '2017-09-22 06:18:30', '2017-10-04 04:21:11'),
(10, 'Doob | Movie Projapoti | Movie Song', 'doob-movie-projapoti-movie-song', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/YmdxYvLgsGg\" frameborder=\"0\" allowfullscreen></iframe>', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p><br>', 1, '2017-09-22 06:19:38', '2017-10-04 04:21:05'),
(11, 'Ovimaner Golpora | Eid Drama Promo | 2017 | PRAN UP | Mishu Sabbir| Urmila Srabanti', 'ovimaner-golpora-eid-drama-promo-2017-pran-up-mishu-sabbir-urmila-srabanti', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/UOPwiG6yezU\" frameborder=\"0\" allowfullscreen></iframe>', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p><br>', 1, '2017-09-22 06:30:37', '2017-10-04 04:20:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activations`
--
ALTER TABLE `activations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `advertisements`
--
ALTER TABLE `advertisements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `all_images`
--
ALTER TABLE `all_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gsettings`
--
ALTER TABLE `gsettings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `image_galleries`
--
ALTER TABLE `image_galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `persistences`
--
ALTER TABLE `persistences`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `persistences_code_unique` (`code`);

--
-- Indexes for table `reminders`
--
ALTER TABLE `reminders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_slug_unique` (`slug`);

--
-- Indexes for table `role_users`
--
ALTER TABLE `role_users`
  ADD PRIMARY KEY (`user_id`,`role_id`);

--
-- Indexes for table `seos`
--
ALTER TABLE `seos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `socials`
--
ALTER TABLE `socials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subscribers_email_unique` (`email`);

--
-- Indexes for table `themes`
--
ALTER TABLE `themes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `throttle`
--
ALTER TABLE `throttle`
  ADD PRIMARY KEY (`id`),
  ADD KEY `throttle_user_id_index` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activations`
--
ALTER TABLE `activations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `advertisements`
--
ALTER TABLE `advertisements`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `all_images`
--
ALTER TABLE `all_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `gsettings`
--
ALTER TABLE `gsettings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `image_galleries`
--
ALTER TABLE `image_galleries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `persistences`
--
ALTER TABLE `persistences`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=210;
--
-- AUTO_INCREMENT for table `reminders`
--
ALTER TABLE `reminders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `seos`
--
ALTER TABLE `seos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `socials`
--
ALTER TABLE `socials`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `themes`
--
ALTER TABLE `themes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `throttle`
--
ALTER TABLE `throttle`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
