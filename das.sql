-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Mar 23, 2023 at 11:30 AM
-- Server version: 5.7.34
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `das`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `account_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `opening_date` date NOT NULL,
  `account_number` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_currency` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `opening_balance` decimal(10,2) NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `account_title`, `opening_date`, `account_number`, `account_currency`, `opening_balance`, `note`, `company_id`, `created_at`, `updated_at`) VALUES
(1, 'salaam', '2023-02-25', '100000121', 'USD', '0.00', NULL, 1, '2023-02-25 10:01:31', '2023-02-25 10:01:31'),
(2, 'salaam - shipping fee', '2023-02-28', '100100201', 'USD', '0.00', NULL, 1, '2023-02-28 08:42:53', '2023-02-28 08:42:53'),
(3, 'salaam bank', '2023-03-03', '828383', 'USD', '0.00', NULL, 1, '2023-03-03 14:58:20', '2023-03-03 14:58:20'),
(4, 'bank', '2023-03-03', '10010101010', 'USD', '120.00', NULL, 1, '2023-03-03 15:17:22', '2023-03-03 15:17:22'),
(5, 'slaaam  - deymo', '2023-03-03', '129w999w2', 'USD', '0.00', NULL, 1, '2023-03-03 15:48:46', '2023-03-03 15:48:46'),
(6, 'salaam - sales account', '2023-03-03', '10100101', 'USD', '0.00', NULL, 1, '2023-03-03 16:06:37', '2023-03-03 16:06:37');

-- --------------------------------------------------------

--
-- Table structure for table `activity_logs`
--

CREATE TABLE `activity_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `related_to` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `related_id` bigint(20) DEFAULT NULL,
  `activity` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chart_of_accounts`
--

CREATE TABLE `chart_of_accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chart_of_accounts`
--

INSERT INTO `chart_of_accounts` (`id`, `name`, `type`, `company_id`, `created_at`, `updated_at`) VALUES
(1, 'soo iibsasho', 'expense', 1, '2023-02-25 10:02:18', '2023-02-25 10:02:18'),
(2, 'deyn', 'income', 1, '2023-02-25 11:01:18', '2023-02-25 11:01:18'),
(3, 'dayn', 'expense', 1, '2023-02-26 12:47:02', '2023-02-26 12:47:02'),
(4, 'kirada bisha', 'income', 1, '2023-02-27 07:53:13', '2023-02-27 07:53:13'),
(5, 'iibin', 'income', 1, '2023-02-28 08:39:34', '2023-02-28 08:39:34'),
(6, 'qarasha geenta', 'expense', 1, '2023-02-28 08:44:02', '2023-02-28 08:44:02'),
(7, 'shipping', 'expense', 1, '2023-03-01 13:32:22', '2023-03-01 13:32:22'),
(8, 'alaab celin', 'expense', 1, '2023-03-01 13:42:11', '2023-03-01 13:42:11'),
(9, 'deymaha iibiye', 'expense', 1, '2023-03-03 15:18:22', '2023-03-03 15:18:22'),
(10, 'sales', 'income', 1, '2023-03-03 16:07:35', '2023-03-03 16:07:35');

-- --------------------------------------------------------

--
-- Table structure for table `chat_groups`
--

CREATE TABLE `chat_groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `company_id` bigint(20) NOT NULL,
  `created_by` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chat_group_users`
--

CREATE TABLE `chat_group_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `group_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chat_messages`
--

CREATE TABLE `chat_messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `from` bigint(20) NOT NULL,
  `to` bigint(20) NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `attachment` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chat_messages`
--

INSERT INTO `chat_messages` (`id`, `from`, `to`, `message`, `attachment`, `status`, `company_id`, `created_at`, `updated_at`) VALUES
(1, 3, 2, 'hi', NULL, 1, 1, '2023-02-28 08:33:56', '2023-02-28 08:34:11'),
(2, 2, 3, '<a target=\'_blank\' href=\'http://localhost:8888/public/uploads/chat_files/Attachment_1677573268.jpg\'>PHOTO-2023-02-25-12-41-25.jpg</a>', 'Attachment_1677573268.jpg', 1, 1, '2023-02-28 08:34:28', '2023-02-28 08:34:30');

-- --------------------------------------------------------

--
-- Table structure for table `cm_email_subscribers`
--

CREATE TABLE `cm_email_subscribers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip_address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cm_faqs`
--

CREATE TABLE `cm_faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cm_features`
--

CREATE TABLE `cm_features` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `icon` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cm_features`
--

INSERT INTO `cm_features` (`id`, `icon`, `title`, `content`, `created_at`, `updated_at`) VALUES
(1, '<i class=\'lni lni-package\'></i>', 'Easy Accounting', 'Manage Account without any accounting knowledge', NULL, NULL),
(2, '<i class=\'lni lni-files\'></i>', 'Invoice', 'Create professional Invoice and accept online payments', NULL, NULL),
(3, '<i class=\'lni lni-user\'></i>', 'CRM', 'Contacts with Contact Group and Rich Customer Portal', NULL, NULL),
(4, '<i class=\'lni lni-phone-set\'></i>', 'Leads', 'Manage leads from different lead sources with kanban view', NULL, NULL),
(5, '<i class=\'lni lni-briefcase\'></i>', 'Projects', 'Manage different types of projects with milestone', NULL, NULL),
(6, '<i class=\'lni lni-alarm\'></i>', 'Tasks', 'Manage tasks with kanban view and assign task to staff', NULL, NULL),
(7, '<i class=\'lni lni-empty-file\'></i>', 'Quotation', 'Create Professional Quotation for getting customer attention', NULL, NULL),
(8, '<i class=\'lni lni-facebook-messenger\'></i>', 'Live Chat', 'Real time Chat with staffs, customers and private groups', NULL, NULL),
(9, '<i class=\'lni lni-credit-cards\'></i>', 'Online Payments', 'Accept Online Payments from Clients', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `business_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(10) UNSIGNED NOT NULL,
  `package_id` int(11) DEFAULT NULL,
  `package_type` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `membership_type` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `valid_to` date NOT NULL,
  `last_email` date DEFAULT NULL,
  `staff_limit` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contacts_limit` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invoice_limit` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quotation_limit` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recurring_transaction` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `live_chat` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_manager` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `inventory_module` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pos_module` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hrm_module` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payroll_module` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `project_management_module` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `online_payment` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `business_name`, `status`, `package_id`, `package_type`, `membership_type`, `valid_to`, `last_email`, `staff_limit`, `contacts_limit`, `invoice_limit`, `quotation_limit`, `recurring_transaction`, `live_chat`, `file_manager`, `inventory_module`, `pos_module`, `hrm_module`, `payroll_module`, `project_management_module`, `online_payment`, `created_at`, `updated_at`) VALUES
(1, 'das', 1, 3, 'yearly', 'member', '2024-03-01', NULL, 'Unlimited', 'Unlimited', 'Unlimited', 'Unlimited', 'Yes', 'Yes', 'Yes', 'Yes', NULL, NULL, NULL, 'Yes', 'Yes', '2023-02-25 09:42:20', '2023-03-01 13:18:48');

-- --------------------------------------------------------

--
-- Table structure for table `company_email_template`
--

CREATE TABLE `company_email_template` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `related_to` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `company_settings`
--

CREATE TABLE `company_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `company_settings`
--

INSERT INTO `company_settings` (`id`, `name`, `value`, `company_id`, `created_at`, `updated_at`) VALUES
(1, 'quotation_starting', '1', 1, '2023-02-25 10:07:27', '2023-02-25 10:07:27'),
(2, 'invoice_starting', '1008', 1, '2023-02-25 11:08:21', '2023-03-20 14:51:16');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `profile_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vat_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reg_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `facebook` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` text COLLATE utf8mb4_unicode_ci,
  `contact_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `company_id` bigint(20) NOT NULL,
  `custom_fields` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `profile_type`, `company_name`, `contact_name`, `contact_email`, `vat_id`, `reg_no`, `contact_phone`, `country`, `currency`, `city`, `state`, `zip`, `address`, `facebook`, `twitter`, `linkedin`, `remarks`, `contact_image`, `group_id`, `user_id`, `company_id`, `custom_fields`, `created_at`, `updated_at`) VALUES
(1, 'Individual', 'prime solutions', 'mohamud mohamed', 'moha@gmail.com', NULL, NULL, '+252615379757', 'Somalia', 'USD', 'mogadishu', 'banaadir', 'BN0000', 'wadada wadnaha\r\nbakaaro', NULL, NULL, NULL, NULL, 'avatar.png', 1, NULL, 1, NULL, '2023-02-25 09:54:49', '2023-02-25 09:54:49');

-- --------------------------------------------------------

--
-- Table structure for table `contact_groups`
--

CREATE TABLE `contact_groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_groups`
--

INSERT INTO `contact_groups` (`id`, `name`, `note`, `company_id`, `created_at`, `updated_at`) VALUES
(1, 'somalia', NULL, 1, '2023-02-25 09:54:15', '2023-02-25 09:54:15');

-- --------------------------------------------------------

--
-- Table structure for table `currency_rates`
--

CREATE TABLE `currency_rates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `currency` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` decimal(10,6) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currency_rates`
--

INSERT INTO `currency_rates` (`id`, `currency`, `rate`, `created_at`, `updated_at`) VALUES
(1, 'AED', '4.101083', NULL, NULL),
(2, 'AFN', '85.378309', NULL, NULL),
(3, 'ALL', '123.510844', NULL, NULL),
(4, 'AMD', '548.849773', NULL, NULL),
(5, 'ANG', '2.008050', NULL, NULL),
(6, 'AOA', '556.155120', NULL, NULL),
(7, 'ARS', '70.205746', NULL, NULL),
(8, 'AUD', '1.809050', NULL, NULL),
(9, 'AWG', '2.009782', NULL, NULL),
(10, 'AZN', '1.833159', NULL, NULL),
(11, 'BAM', '1.966840', NULL, NULL),
(12, 'BBD', '2.245460', NULL, NULL),
(13, 'BDT', '95.162306', NULL, NULL),
(14, 'BGN', '1.952383', NULL, NULL),
(15, 'BHD', '0.421787', NULL, NULL),
(16, 'BIF', '2117.865003', NULL, NULL),
(17, 'BMD', '1.116545', NULL, NULL),
(18, 'BND', '1.583270', NULL, NULL),
(19, 'BOB', '7.718004', NULL, NULL),
(20, 'BRL', '5.425949', NULL, NULL),
(21, 'BSD', '1.121775', NULL, NULL),
(22, 'BTC', '0.000244', NULL, NULL),
(23, 'BTN', '82.818317', NULL, NULL),
(24, 'BWP', '12.683055', NULL, NULL),
(25, 'BYN', '2.621037', NULL, NULL),
(26, 'BYR', '9999.999999', NULL, NULL),
(27, 'BZD', '2.261248', NULL, NULL),
(28, 'CAD', '1.552879', NULL, NULL),
(29, 'CDF', '1898.127343', NULL, NULL),
(30, 'CHF', '1.056023', NULL, NULL),
(31, 'CLF', '0.033950', NULL, NULL),
(32, 'CLP', '936.781769', NULL, NULL),
(33, 'CNY', '7.827878', NULL, NULL),
(34, 'COP', '4491.872864', NULL, NULL),
(35, 'CRC', '635.520417', NULL, NULL),
(36, 'CUC', '1.116545', NULL, NULL),
(37, 'CUP', '29.588450', NULL, NULL),
(38, 'CVE', '110.887227', NULL, NULL),
(39, 'CZK', '26.906059', NULL, NULL),
(40, 'DJF', '198.432393', NULL, NULL),
(41, 'DKK', '7.472892', NULL, NULL),
(42, 'DOP', '60.196240', NULL, NULL),
(43, 'DZD', '134.499489', NULL, NULL),
(44, 'EGP', '17.585483', NULL, NULL),
(45, 'ERN', '16.748349', NULL, NULL),
(46, 'ETB', '36.696587', NULL, NULL),
(47, 'EUR', '1.000000', NULL, NULL),
(48, 'FJD', '2.549240', NULL, NULL),
(49, 'FKP', '0.908257', NULL, NULL),
(50, 'GBP', '0.907964', NULL, NULL),
(51, 'GEL', '3.115301', NULL, NULL),
(52, 'GGP', '0.908257', NULL, NULL),
(53, 'GHS', '6.220337', NULL, NULL),
(54, 'GIP', '0.908257', NULL, NULL),
(55, 'GMD', '56.605069', NULL, NULL),
(56, 'GNF', '9999.999999', NULL, NULL),
(57, 'GTQ', '8.576324', NULL, NULL),
(58, 'GYD', '234.489495', NULL, NULL),
(59, 'HKD', '8.674753', NULL, NULL),
(60, 'HNL', '27.678062', NULL, NULL),
(61, 'HRK', '7.590196', NULL, NULL),
(62, 'HTG', '106.356510', NULL, NULL),
(63, 'HUF', '341.150311', NULL, NULL),
(64, 'IDR', '9999.999999', NULL, NULL),
(65, 'ILS', '4.159226', NULL, NULL),
(66, 'IMP', '0.908257', NULL, NULL),
(67, 'INR', '82.763894', NULL, NULL),
(68, 'IQD', '1339.198712', NULL, NULL),
(69, 'IRR', '9999.999999', NULL, NULL),
(70, 'ISK', '151.202539', NULL, NULL),
(71, 'JEP', '0.908257', NULL, NULL),
(72, 'JMD', '151.606351', NULL, NULL),
(73, 'JOD', '0.791685', NULL, NULL),
(74, 'JPY', '118.278988', NULL, NULL),
(75, 'KES', '115.283224', NULL, NULL),
(76, 'KGS', '81.395812', NULL, NULL),
(77, 'KHR', '4603.144194', NULL, NULL),
(78, 'KMF', '495.355724', NULL, NULL),
(79, 'KPW', '1004.922902', NULL, NULL),
(80, 'KRW', '1372.190164', NULL, NULL),
(81, 'KWD', '0.344879', NULL, NULL),
(82, 'KYD', '0.934921', NULL, NULL),
(83, 'KZT', '456.318281', NULL, NULL),
(84, 'LAK', '9978.233671', NULL, NULL),
(85, 'LBP', '1696.373291', NULL, NULL),
(86, 'LKR', '206.967335', NULL, NULL),
(87, 'LRD', '221.076044', NULL, NULL),
(88, 'LSL', '18.121543', NULL, NULL),
(89, 'LTL', '3.296868', NULL, NULL),
(90, 'LVL', '0.675387', NULL, NULL),
(91, 'LYD', '1.557311', NULL, NULL),
(92, 'MAD', '10.730569', NULL, NULL),
(93, 'MDL', '19.734707', NULL, NULL),
(94, 'MGA', '4165.265277', NULL, NULL),
(95, 'MKD', '61.516342', NULL, NULL),
(96, 'MMK', '1566.586511', NULL, NULL),
(97, 'MNT', '3088.650418', NULL, NULL),
(98, 'MOP', '8.975925', NULL, NULL),
(99, 'MRO', '398.607011', NULL, NULL),
(100, 'MUR', '43.205754', NULL, NULL),
(101, 'MVR', '17.250725', NULL, NULL),
(102, 'MWK', '825.239292', NULL, NULL),
(103, 'MXN', '24.963329', NULL, NULL),
(104, 'MYR', '4.810633', NULL, NULL),
(105, 'MZN', '73.591410', NULL, NULL),
(106, 'NAD', '18.121621', NULL, NULL),
(107, 'NGN', '408.099790', NULL, NULL),
(108, 'NIO', '37.844015', NULL, NULL),
(109, 'NOK', '11.405599', NULL, NULL),
(110, 'NPR', '132.508354', NULL, NULL),
(111, 'NZD', '1.847363', NULL, NULL),
(112, 'OMR', '0.429801', NULL, NULL),
(113, 'PAB', '1.121880', NULL, NULL),
(114, 'PEN', '3.958258', NULL, NULL),
(115, 'PGK', '3.838505', NULL, NULL),
(116, 'PHP', '57.698037', NULL, NULL),
(117, 'PKR', '176.121721', NULL, NULL),
(118, 'PLN', '4.386058', NULL, NULL),
(119, 'PYG', '7386.917924', NULL, NULL),
(120, 'QAR', '4.065302', NULL, NULL),
(121, 'RON', '4.826717', NULL, NULL),
(122, 'RSD', '117.627735', NULL, NULL),
(123, 'RUB', '83.568390', NULL, NULL),
(124, 'RWF', '1067.822267', NULL, NULL),
(125, 'SAR', '4.190432', NULL, NULL),
(126, 'SBD', '9.235251', NULL, NULL),
(127, 'SCR', '14.529548', NULL, NULL),
(128, 'SDG', '61.772847', NULL, NULL),
(129, 'SEK', '10.785247', NULL, NULL),
(130, 'SGD', '1.587844', NULL, NULL),
(131, 'SHP', '0.908257', NULL, NULL),
(132, 'SLL', '9999.999999', NULL, NULL),
(133, 'SOS', '653.732410', NULL, NULL),
(134, 'SRD', '8.327212', NULL, NULL),
(135, 'STD', '9999.999999', NULL, NULL),
(136, 'SVC', '9.816821', NULL, NULL),
(137, 'SYP', '575.019506', NULL, NULL),
(138, 'SZL', '18.038821', NULL, NULL),
(139, 'THB', '35.884679', NULL, NULL),
(140, 'TJS', '10.875343', NULL, NULL),
(141, 'TMT', '3.907909', NULL, NULL),
(142, 'TND', '3.186636', NULL, NULL),
(143, 'TOP', '2.635661', NULL, NULL),
(144, 'TRY', '7.131927', NULL, NULL),
(145, 'TTD', '7.585158', NULL, NULL),
(146, 'TWD', '33.739208', NULL, NULL),
(147, 'TZS', '2582.397529', NULL, NULL),
(148, 'UAH', '29.335146', NULL, NULL),
(149, 'UGX', '4169.685347', NULL, NULL),
(150, 'USD', '1.116545', NULL, NULL),
(151, 'UYU', '48.718630', NULL, NULL),
(152, 'UZS', '9999.999999', NULL, NULL),
(153, 'VEF', '11.151499', NULL, NULL),
(154, 'VND', '9999.999999', NULL, NULL),
(155, 'VUV', '133.944917', NULL, NULL),
(156, 'WST', '3.074259', NULL, NULL),
(157, 'XAF', '659.652615', NULL, NULL),
(158, 'XAG', '0.088073', NULL, NULL),
(159, 'XAU', '0.000756', NULL, NULL),
(160, 'XCD', '3.017519', NULL, NULL),
(161, 'XDR', '0.809234', NULL, NULL),
(162, 'XOF', '659.646672', NULL, NULL),
(163, 'XPF', '119.931356', NULL, NULL),
(164, 'YER', '279.475009', NULL, NULL),
(165, 'ZAR', '18.603040', NULL, NULL),
(166, 'ZMK', '9999.999999', NULL, NULL),
(167, 'ZMW', '17.892580', NULL, NULL),
(168, 'ZWL', '359.527584', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `current_stocks`
--

CREATE TABLE `current_stocks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `quantity` decimal(8,2) NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `current_stocks`
--

INSERT INTO `current_stocks` (`id`, `product_id`, `quantity`, `company_id`, `created_at`, `updated_at`) VALUES
(1, 1, '8.00', 1, '2023-02-25 09:57:00', '2023-03-15 08:00:23'),
(2, 3, '10.00', 1, '2023-03-01 13:23:32', '2023-03-20 14:51:16'),
(3, 4, '0.00', 1, '2023-03-20 14:47:41', '2023-03-20 14:47:41');

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

CREATE TABLE `email_templates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `email_templates`
--

INSERT INTO `email_templates` (`id`, `name`, `subject`, `body`, `created_at`, `updated_at`) VALUES
(1, 'registration', 'Registration Sucessfully', '<div style=\"padding: 15px 30px;\">\n						 <h2 style=\"color: #555555;\">Registration Successful</h2>\n						 <p style=\"color: #555555;\">Hi {name},<br /><span style=\"color: #555555;\">Welcome to ElitKit and thank you for joining with us. You can now sign in to your account using your email and password.<br /><br />Regards<br />Tricky Code<br /></span></p>\n						 </div>', NULL, NULL),
(2, 'premium_membership', 'Premium Membership', '<div style=\"padding: 15px 30px;\">\n						<h2 style=\"color: #555555; font-family: \"PT Sans\", sans-serif;\">ElitKit Premium Subscription</h2>\n						<p style=\"color: #555555; font-family: \"PT Sans\", sans-serif;\">Hi {name},<br>\n						<span style=\"color: #555555; font-family: \"PT Sans\", sans-serif;\"><strong>Congratulations</strong> your paymnet was made sucessfully. Your current membership is valid <strong>until</strong> <strong>{valid_to}</strong></span><span style=\"color: #555555; font-family: \"PT Sans\", sans-serif;\"><strong>.</strong>&nbsp;</span></p>\n						<p><br style=\"color: #555555; font-family: \"PT Sans\", sans-serif;\" /><span style=\"color: #555555; font-family: \"PT Sans\", sans-serif;\">Thank You</span><br style=\"color: #555555; font-family: \"PT Sans\", sans-serif;\" /><span style=\"color: #555555; font-family: \"PT Sans\", sans-serif;\">Tricky Code</span></p>\n						</div>', NULL, NULL),
(3, 'alert_notification', 'ElitKit Renewals', '<div style=\"padding: 15px 30px;\">\n							<h2 style=\"color: #555555; font-family: \"PT Sans\", sans-serif;\">Account Renew Notification</h2>\n							<p style=\"color: #555555; font-family: \"PT Sans\", sans-serif;\">Hi {name},<br>\n							<span style=\"color: #555555; font-family: \"PT Sans\", sans-serif;\">Your package is due to <strong>expire on {valid_to}</strong> s</span><span style=\"color: #555555; font-family: \"PT Sans\", sans-serif;\">o you will need to renew by then to keep your account active.</span></p>\n							<p><br style=\"color: #555555; font-family: \"PT Sans\", sans-serif;\" /><span style=\"color: #555555; font-family: \"PT Sans\", sans-serif;\">Regards</span><br style=\"color: #555555; font-family: \"PT Sans\", sans-serif;\" /><span style=\"color: #555555; font-family: \"PT Sans\", sans-serif;\">Tricky Code</span></p>\n							</div>', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `related_to` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `related_id` bigint(20) DEFAULT NULL,
  `file` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `file_manager`
--

CREATE TABLE `file_manager` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_dir` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  `company_id` bigint(20) NOT NULL,
  `created_by` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `group_chat_messages`
--

CREATE TABLE `group_chat_messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `group_id` bigint(20) NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `attachment` text COLLATE utf8mb4_unicode_ci,
  `sender_id` bigint(20) NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `group_chat_message_status`
--

CREATE TABLE `group_chat_message_status` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `message_id` bigint(20) NOT NULL,
  `group_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invoice_date` date NOT NULL,
  `due_date` date NOT NULL,
  `grand_total` decimal(10,2) NOT NULL,
  `tax_total` decimal(10,2) NOT NULL,
  `paid` decimal(10,2) DEFAULT NULL,
  `converted_total` decimal(10,2) DEFAULT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `template` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `related_to` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `related_id` bigint(20) DEFAULT NULL,
  `client_id` bigint(20) NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`id`, `invoice_number`, `invoice_date`, `due_date`, `grand_total`, `tax_total`, `paid`, `converted_total`, `status`, `template`, `note`, `related_to`, `related_id`, `client_id`, `company_id`, `created_at`, `updated_at`) VALUES
(1, '', '2023-02-25', '2023-02-25', '200.00', '0.00', '0.00', '200.00', 'Unpaid', 'classic', NULL, 'contacts', 1, 1, 1, '2023-02-25 11:08:21', '2023-02-25 11:08:21'),
(2, '1002', '2023-02-26', '2023-02-26', '200.00', '0.00', '0.00', '200.00', 'Unpaid', 'classic', NULL, 'contacts', 1, 1, 1, '2023-02-26 12:43:02', '2023-02-26 12:43:02'),
(3, '1003', '2023-02-28', '2023-02-28', '200.00', '0.00', '200.00', '200.00', 'Paid', 'modern', NULL, 'contacts', 1, 1, 1, '2023-02-28 08:38:54', '2023-02-28 08:44:09'),
(4, '1004', '2023-03-03', '2023-03-03', '200.00', '0.00', '200.00', '200.00', 'Paid', 'classic', NULL, 'contacts', 1, 1, 1, '2023-03-03 16:05:51', '2023-03-03 16:08:26'),
(5, '1005', '2023-03-15', '2023-03-15', '200.00', '0.00', '0.00', '200.00', 'Unpaid', 'classic', NULL, 'contacts', 1, 1, 1, '2023-03-15 08:00:23', '2023-03-15 08:00:23'),
(6, '1005', '2023-03-15', '2023-03-15', '100.00', '0.00', '0.00', '100.00', 'Unpaid', 'classic', NULL, 'contacts', 1, 1, 1, '2023-03-15 08:01:10', '2023-03-15 08:01:10'),
(7, '1007', '2023-03-20', '2023-03-20', '200.00', '0.00', '200.00', '200.00', 'Paid', 'classic', NULL, 'contacts', 1, 1, 1, '2023-03-20 14:51:16', '2023-03-20 14:52:28');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_items`
--

CREATE TABLE `invoice_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_id` bigint(20) NOT NULL,
  `item_id` bigint(20) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `quantity` decimal(10,2) NOT NULL,
  `unit_cost` decimal(10,2) NOT NULL,
  `discount` decimal(10,2) NOT NULL,
  `tax_method` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax_id` bigint(20) DEFAULT NULL,
  `tax_amount` decimal(10,2) DEFAULT NULL,
  `sub_total` decimal(10,2) NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoice_items`
--

INSERT INTO `invoice_items` (`id`, `invoice_id`, `item_id`, `description`, `quantity`, `unit_cost`, `discount`, `tax_method`, `tax_id`, `tax_amount`, `sub_total`, `company_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, '2.00', '100.00', '0.00', NULL, NULL, '0.00', '200.00', 1, '2023-02-25 11:08:21', '2023-02-25 11:08:21'),
(2, 2, 1, NULL, '2.00', '100.00', '0.00', NULL, NULL, '0.00', '200.00', 1, '2023-02-26 12:43:02', '2023-02-26 12:43:02'),
(3, 3, 1, NULL, '2.00', '100.00', '0.00', NULL, NULL, '0.00', '200.00', 1, '2023-02-28 08:38:54', '2023-02-28 08:38:54'),
(4, 4, 3, NULL, '2.00', '100.00', '0.00', NULL, NULL, '0.00', '200.00', 1, '2023-03-03 16:05:51', '2023-03-03 16:05:51'),
(5, 5, 1, NULL, '1.00', '200.00', '0.00', NULL, NULL, '0.00', '200.00', 1, '2023-03-15 08:00:23', '2023-03-15 08:00:23'),
(6, 6, 3, NULL, '1.00', '100.00', '0.00', NULL, NULL, '0.00', '100.00', 1, '2023-03-15 08:01:10', '2023-03-15 08:01:10'),
(7, 7, 3, NULL, '1.00', '200.00', '0.00', NULL, NULL, '0.00', '200.00', 1, '2023-03-20 14:51:16', '2023-03-20 14:51:16');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_item_taxes`
--

CREATE TABLE `invoice_item_taxes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_id` bigint(20) NOT NULL,
  `invoice_item_id` bigint(20) NOT NULL,
  `tax_id` bigint(20) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoice_templates`
--

CREATE TABLE `invoice_templates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `editor` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_css` text COLLATE utf8mb4_unicode_ci,
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `item_name`, `item_type`, `company_id`, `created_at`, `updated_at`) VALUES
(1, 'iphone x', 'product', 1, '2023-02-25 09:57:00', '2023-02-25 09:57:00'),
(2, 'miom', 'service', 1, '2023-02-27 15:21:01', '2023-02-27 15:21:01'),
(3, 'ipad', 'product', 1, '2023-03-01 13:23:32', '2023-03-01 13:23:32'),
(4, 'ipad', 'product', 1, '2023-03-20 14:47:41', '2023-03-20 14:47:41');

-- --------------------------------------------------------

--
-- Table structure for table `leads`
--

CREATE TABLE `leads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `converted_lead` int(11) DEFAULT NULL,
  `lead_status_id` bigint(20) NOT NULL,
  `lead_source_id` bigint(20) NOT NULL,
  `assigned_user_id` bigint(20) NOT NULL,
  `created_user_id` bigint(20) NOT NULL,
  `contact_date` date NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vat_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reg_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `custom_fields` longtext COLLATE utf8mb4_unicode_ci,
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lead_sources`
--

CREATE TABLE `lead_sources` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) DEFAULT NULL,
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lead_statuses`
--

CREATE TABLE `lead_statuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) DEFAULT NULL,
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_06_01_080940_create_settings_table', 1),
(4, '2018_08_29_084110_create_permissions_table', 1),
(5, '2018_10_28_101819_create_contact_groups_table', 1),
(6, '2018_10_28_104344_create_contacts_table', 1),
(7, '2018_10_28_151911_create_taxs_table', 1),
(8, '2018_10_29_095644_create_items_table', 1),
(9, '2018_10_29_100449_create_products_table', 1),
(10, '2018_10_29_101301_create_services_table', 1),
(11, '2018_10_29_101756_create_suppliers_table', 1),
(12, '2018_11_12_152015_create_email_templates_table', 1),
(13, '2018_11_13_063551_create_accounts_table', 1),
(14, '2018_11_13_082226_create_chart_of_accounts_table', 1),
(15, '2018_11_13_082512_create_payment_methods_table', 1),
(16, '2018_11_13_141249_create_transactions_table', 1),
(17, '2018_11_14_134254_create_repeating_transactions_table', 1),
(18, '2018_11_17_142037_create_payment_histories_table', 1),
(19, '2019_03_07_084028_create_purchase_orders_table', 1),
(20, '2019_03_07_085537_create_purchase_order_items_table', 1),
(21, '2019_03_19_070903_create_current_stocks_table', 1),
(22, '2019_03_19_123527_create_company_settings_table', 1),
(23, '2019_03_19_133922_create_product_units_table', 1),
(24, '2019_03_20_113605_create_invoices_table', 1),
(25, '2019_03_20_113618_create_invoice_items_table', 1),
(26, '2019_05_11_080519_create_purchase_return_table', 1),
(27, '2019_05_11_080546_create_purchase_return_items_table', 1),
(28, '2019_05_27_153656_create_quotations_table', 1),
(29, '2019_05_27_153712_create_quotation_items_table', 1),
(30, '2019_06_22_062221_create_sales_return_table', 1),
(31, '2019_06_22_062233_create_sales_return_items_table', 1),
(32, '2019_06_23_055645_create_company_email_template_table', 1),
(33, '2019_08_19_000000_create_failed_jobs_table', 1),
(34, '2019_10_31_172912_create_social_google_accounts_table', 1),
(35, '2019_11_04_133151_create_chat_messages_table', 1),
(36, '2019_11_07_105822_create_chat_groups_table', 1),
(37, '2019_11_08_063856_create_chat_group_users', 1),
(38, '2019_11_08_143329_create_group_chat_messages_table', 1),
(39, '2019_11_08_143607_create_group_chat_message_status_table', 1),
(40, '2019_11_11_170656_create_file_manager_table', 1),
(41, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(42, '2020_03_15_154649_create_currency_rates_table', 1),
(43, '2020_03_21_052934_create_companies_table', 1),
(44, '2020_03_21_070022_create_packages_table', 1),
(45, '2020_04_02_155956_create_cm_features_table', 1),
(46, '2020_04_02_160209_create_cm_faqs_table', 1),
(47, '2020_04_02_160249_create_cm_email_subscribers_table', 1),
(48, '2020_05_18_104400_create_invoice_templates_table', 1),
(49, '2020_05_24_152947_create_lead_statuses_table', 1),
(50, '2020_05_24_153000_create_lead_sources_table', 1),
(51, '2020_05_24_153224_create_leads_table', 1),
(52, '2020_06_03_112519_create_files_table', 1),
(53, '2020_06_03_112538_create_notes_table', 1),
(54, '2020_06_03_112553_create_activity_logs_table', 1),
(55, '2020_06_22_083001_create_projects_table', 1),
(56, '2020_06_22_095143_create_project_members_table', 1),
(57, '2020_06_23_083455_create_project_milestones_table', 1),
(58, '2020_06_23_112159_create_task_statuses_table', 1),
(59, '2020_06_23_144512_create_tasks_table', 1),
(60, '2020_06_25_065937_create_timesheets_table', 1),
(61, '2020_06_27_152210_create_notifications_table', 1),
(62, '2020_08_21_063443_add_related_to_company_email_template', 1),
(63, '2020_10_19_082621_create_staff_roles_table', 1),
(64, '2020_10_20_080849_add_description_to_invoice_items', 1),
(65, '2020_12_13_150320_create_invoice_item_taxes_table', 1),
(66, '2020_12_15_055832_create_quotation_item_taxes_table', 1),
(67, '2020_12_15_102722_create_purchase_order_item_taxes_table', 1),
(68, '2020_12_16_070412_create_purchase_return_item_taxes_table', 1),
(69, '2020_12_17_065847_create_sales_return_item_taxes_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `related_to` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `related_id` bigint(20) DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` int(10) UNSIGNED NOT NULL,
  `package_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cost_per_month` decimal(10,2) NOT NULL,
  `cost_per_year` decimal(10,2) NOT NULL,
  `staff_limit` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contacts_limit` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invoice_limit` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quotation_limit` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `recurring_transaction` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `live_chat` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_manager` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `inventory_module` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pos_module` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hrm_module` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payroll_module` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `project_management_module` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `online_payment` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_featured` tinyint(4) NOT NULL DEFAULT '0',
  `others` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `package_name`, `cost_per_month`, `cost_per_year`, `staff_limit`, `contacts_limit`, `invoice_limit`, `quotation_limit`, `recurring_transaction`, `live_chat`, `file_manager`, `inventory_module`, `pos_module`, `hrm_module`, `payroll_module`, `project_management_module`, `online_payment`, `is_featured`, `others`, `created_at`, `updated_at`) VALUES
(1, 'Basic', '10.00', '99.00', 'a:2:{s:7:\"monthly\";s:1:\"3\";s:6:\"yearly\";s:2:\"10\";}', 'a:2:{s:7:\"monthly\";s:2:\"10\";s:6:\"yearly\";s:2:\"30\";}', 'a:2:{s:7:\"monthly\";s:2:\"20\";s:6:\"yearly\";s:3:\"300\";}', 'a:2:{s:7:\"monthly\";s:2:\"20\";s:6:\"yearly\";s:3:\"300\";}', 'a:2:{s:7:\"monthly\";s:2:\"No\";s:6:\"yearly\";s:2:\"No\";}', 'a:2:{s:7:\"monthly\";s:2:\"No\";s:6:\"yearly\";s:2:\"No\";}', 'a:2:{s:7:\"monthly\";s:2:\"No\";s:6:\"yearly\";s:2:\"No\";}', 'a:2:{s:7:\"monthly\";s:2:\"No\";s:6:\"yearly\";s:2:\"No\";}', NULL, NULL, NULL, 'a:2:{s:7:\"monthly\";s:2:\"No\";s:6:\"yearly\";s:2:\"No\";}', 'a:2:{s:7:\"monthly\";s:2:\"No\";s:6:\"yearly\";s:2:\"No\";}', 0, NULL, NULL, NULL),
(2, 'Standard', '25.00', '199.00', 'a:2:{s:7:\"monthly\";s:2:\"10\";s:6:\"yearly\";s:2:\"20\";}', 'a:2:{s:7:\"monthly\";s:2:\"30\";s:6:\"yearly\";s:2:\"50\";}', 'a:2:{s:7:\"monthly\";s:3:\"300\";s:6:\"yearly\";s:3:\"500\";}', 'a:2:{s:7:\"monthly\";s:3:\"300\";s:6:\"yearly\";s:3:\"500\";}', 'a:2:{s:7:\"monthly\";s:3:\"Yes\";s:6:\"yearly\";s:3:\"Yes\";}', 'a:2:{s:7:\"monthly\";s:3:\"Yes\";s:6:\"yearly\";s:3:\"Yes\";}', 'a:2:{s:7:\"monthly\";s:2:\"No\";s:6:\"yearly\";s:2:\"No\";}', 'a:2:{s:7:\"monthly\";s:3:\"Yes\";s:6:\"yearly\";s:3:\"Yes\";}', NULL, NULL, NULL, 'a:2:{s:7:\"monthly\";s:3:\"Yes\";s:6:\"yearly\";s:3:\"Yes\";}', 'a:2:{s:7:\"monthly\";s:2:\"No\";s:6:\"yearly\";s:2:\"No\";}', 1, NULL, NULL, NULL),
(3, 'Business Plus', '40.00', '399.00', 'a:2:{s:7:\"monthly\";s:2:\"30\";s:6:\"yearly\";s:9:\"Unlimited\";}', 'a:2:{s:7:\"monthly\";s:9:\"Unlimited\";s:6:\"yearly\";s:9:\"Unlimited\";}', 'a:2:{s:7:\"monthly\";s:3:\"300\";s:6:\"yearly\";s:9:\"Unlimited\";}', 'a:2:{s:7:\"monthly\";s:3:\"300\";s:6:\"yearly\";s:9:\"Unlimited\";}', 'a:2:{s:7:\"monthly\";s:3:\"Yes\";s:6:\"yearly\";s:3:\"Yes\";}', 'a:2:{s:7:\"monthly\";s:3:\"Yes\";s:6:\"yearly\";s:3:\"Yes\";}', 'a:2:{s:7:\"monthly\";s:3:\"Yes\";s:6:\"yearly\";s:3:\"Yes\";}', 'a:2:{s:7:\"monthly\";s:3:\"Yes\";s:6:\"yearly\";s:3:\"Yes\";}', NULL, NULL, NULL, 'a:2:{s:7:\"monthly\";s:3:\"Yes\";s:6:\"yearly\";s:3:\"Yes\";}', 'a:2:{s:7:\"monthly\";s:3:\"Yes\";s:6:\"yearly\";s:3:\"Yes\";}', 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_histories`
--

CREATE TABLE `payment_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(10,2) NOT NULL,
  `package_id` int(11) NOT NULL,
  `package_type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_histories`
--

INSERT INTO `payment_histories` (`id`, `company_id`, `title`, `method`, `currency`, `amount`, `package_id`, `package_type`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Buy Business Plus Package', 'Offline', 'USD', '399.00', 3, 'yearly', 'paid', '2023-03-01 13:18:48', '2023-03-01 13:18:48');

-- --------------------------------------------------------

--
-- Table structure for table `payment_methods`
--

CREATE TABLE `payment_methods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_methods`
--

INSERT INTO `payment_methods` (`id`, `name`, `company_id`, `created_at`, `updated_at`) VALUES
(1, 'Evc Plus', 1, '2023-02-25 10:02:34', '2023-02-25 10:02:34');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) NOT NULL,
  `permission` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `role_id`, `permission`, `created_at`, `updated_at`) VALUES
(1, 1, 'contact_groups.index', '2023-02-28 08:31:56', '2023-02-28 08:31:56'),
(2, 1, 'contact_groups.show', '2023-02-28 08:31:56', '2023-02-28 08:31:56'),
(3, 1, 'contacts.index', '2023-02-28 08:31:56', '2023-02-28 08:31:56'),
(4, 1, 'contacts.create', '2023-02-28 08:31:56', '2023-02-28 08:31:56'),
(5, 1, 'contacts.show', '2023-02-28 08:31:56', '2023-02-28 08:31:56'),
(6, 1, 'accounts.index', '2023-02-28 08:31:56', '2023-02-28 08:31:56'),
(7, 1, 'income.index', '2023-02-28 08:31:56', '2023-02-28 08:31:56'),
(8, 1, 'income.show', '2023-02-28 08:31:56', '2023-02-28 08:31:56'),
(9, 1, 'expense.expense_calendar', '2023-02-28 08:31:56', '2023-02-28 08:31:56'),
(10, 1, 'expense.index', '2023-02-28 08:31:56', '2023-02-28 08:31:56'),
(11, 1, 'expense.show', '2023-02-28 08:31:56', '2023-02-28 08:31:56'),
(12, 1, 'chart_of_accounts.index', '2023-02-28 08:31:56', '2023-02-28 08:31:56'),
(13, 1, 'chart_of_accounts.show', '2023-02-28 08:31:56', '2023-02-28 08:31:56'),
(14, 1, 'invoices.create_payment', '2023-02-28 08:31:56', '2023-02-28 08:31:56'),
(15, 1, 'invoices.index', '2023-02-28 08:31:56', '2023-02-28 08:31:56'),
(16, 1, 'invoices.show', '2023-02-28 08:31:56', '2023-02-28 08:31:56'),
(17, 1, 'quotations.show', '2023-02-28 08:31:56', '2023-02-28 08:31:56'),
(18, 1, 'quotations.destroy', '2023-02-28 08:31:56', '2023-02-28 08:31:56'),
(19, 1, 'product_units.index', '2023-02-28 08:31:56', '2023-02-28 08:31:56'),
(20, 1, 'product_units.create', '2023-02-28 08:31:56', '2023-02-28 08:31:56'),
(21, 1, 'product_sites.index', '2023-02-28 08:31:56', '2023-02-28 08:31:56'),
(22, 1, 'product_sites.create', '2023-02-28 08:31:56', '2023-02-28 08:31:56'),
(23, 2, 'contacts.index', '2023-03-01 13:58:51', '2023-03-01 13:58:51'),
(24, 2, 'contacts.create', '2023-03-01 13:58:51', '2023-03-01 13:58:51'),
(25, 2, 'contacts.show', '2023-03-01 13:58:51', '2023-03-01 13:58:51'),
(26, 2, 'contacts.edit', '2023-03-01 13:58:51', '2023-03-01 13:58:51'),
(27, 2, 'transfer.create', '2023-03-01 13:58:51', '2023-03-01 13:58:51'),
(28, 2, 'products.create', '2023-03-01 13:58:51', '2023-03-01 13:58:51'),
(29, 2, 'products.show', '2023-03-01 13:58:51', '2023-03-01 13:58:51'),
(30, 2, 'invoices.index', '2023-03-01 13:58:51', '2023-03-01 13:58:51'),
(31, 2, 'invoices.create', '2023-03-01 13:58:51', '2023-03-01 13:58:51'),
(32, 2, 'invoices.edit', '2023-03-01 13:58:51', '2023-03-01 13:58:51');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_id` bigint(20) NOT NULL,
  `supplier_id` bigint(20) DEFAULT NULL,
  `account_id` bigint(20) NOT NULL,
  `product_cost` decimal(10,2) DEFAULT NULL,
  `product_price` decimal(10,2) DEFAULT NULL,
  `product_unit` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_id` bigint(20) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `item_id`, `supplier_id`, `account_id`, `product_cost`, `product_price`, `product_unit`, `tax_method`, `tax_id`, `description`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 0, '110.00', '100.00', '1swj', 'exclusive', NULL, NULL, '2023-02-25 09:57:00', '2023-02-25 09:57:00'),
(2, 3, 1, 0, '100.00', '100.00', '1swj', 'exclusive', NULL, NULL, '2023-03-01 13:23:32', '2023-03-01 13:23:32'),
(3, 4, NULL, 0, '100.00', '110.00', 'xirmo - 100', 'exclusive', NULL, NULL, '2023-03-20 14:47:41', '2023-03-20 14:47:41');

-- --------------------------------------------------------

--
-- Table structure for table `product_sites`
--

CREATE TABLE `product_sites` (
  `id` int(11) NOT NULL,
  `site_name` varchar(255) NOT NULL,
  `company_id` int(11) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `product_units`
--

CREATE TABLE `product_units` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `unit_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_units`
--

INSERT INTO `product_units` (`id`, `unit_name`, `company_id`, `created_at`, `updated_at`) VALUES
(1, '1swj', 1, '2023-02-25 09:56:58', '2023-02-25 09:56:58'),
(2, 'xirmo - 100', 1, '2023-03-01 13:23:21', '2023-03-01 13:23:21'),
(3, 'pairn - 100', 1, '2023-03-03 16:17:18', '2023-03-03 16:17:18');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` bigint(20) NOT NULL,
  `progress` int(11) DEFAULT NULL,
  `billing_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fixed_rate` decimal(10,2) DEFAULT NULL,
  `hourly_rate` decimal(10,2) DEFAULT NULL,
  `start_date` date NOT NULL,
  `end_date` date DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `custom_fields` longtext COLLATE utf8mb4_unicode_ci,
  `user_id` bigint(20) NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `project_members`
--

CREATE TABLE `project_members` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `project_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `project_milestones`
--

CREATE TABLE `project_milestones` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `due_date` date NOT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cost` decimal(10,2) DEFAULT NULL,
  `project_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_orders`
--

CREATE TABLE `purchase_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_date` date NOT NULL,
  `supplier_id` bigint(20) NOT NULL,
  `order_status` tinyint(4) NOT NULL,
  `order_tax_id` bigint(20) DEFAULT NULL,
  `order_tax` decimal(10,2) DEFAULT NULL,
  `order_discount` decimal(10,2) NOT NULL,
  `shipping_cost` decimal(10,2) NOT NULL,
  `product_total` decimal(10,2) NOT NULL,
  `grand_total` decimal(10,2) NOT NULL,
  `paid` decimal(10,2) NOT NULL,
  `payment_status` tinyint(4) NOT NULL,
  `attachemnt` text COLLATE utf8mb4_unicode_ci,
  `note` text COLLATE utf8mb4_unicode_ci,
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchase_orders`
--

INSERT INTO `purchase_orders` (`id`, `order_date`, `supplier_id`, `order_status`, `order_tax_id`, `order_tax`, `order_discount`, `shipping_cost`, `product_total`, `grand_total`, `paid`, `payment_status`, `attachemnt`, `note`, `company_id`, `created_at`, `updated_at`) VALUES
(1, '2023-02-25', 1, 3, NULL, '0.00', '0.00', '0.00', '1200.00', '1200.00', '12000.00', 1, '', NULL, 1, '2023-02-25 09:59:08', '2023-02-25 10:04:15'),
(2, '2023-02-26', 1, 3, NULL, '0.00', '0.00', '8.00', '200.00', '208.00', '0.00', 0, '', NULL, 1, '2023-02-26 12:44:54', '2023-02-26 12:44:54'),
(3, '2023-03-01', 2, 3, NULL, '0.00', '0.00', '100.00', '1000.00', '1100.00', '1100.00', 2, '', NULL, 1, '2023-03-01 13:27:25', '2023-03-01 13:34:48'),
(4, '2023-03-03', 2, 3, NULL, '0.00', '0.00', '0.00', '600.00', '600.00', '600.00', 2, '', NULL, 1, '2023-03-03 15:48:01', '2023-03-03 16:04:03');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_order_items`
--

CREATE TABLE `purchase_order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `purchase_order_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `quantity` decimal(8,2) NOT NULL,
  `unit_cost` decimal(10,2) NOT NULL,
  `discount` decimal(10,2) NOT NULL,
  `tax_method` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax_id` bigint(20) DEFAULT NULL,
  `tax_amount` decimal(10,2) DEFAULT NULL,
  `sub_total` decimal(10,2) NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchase_order_items`
--

INSERT INTO `purchase_order_items` (`id`, `purchase_order_id`, `product_id`, `description`, `quantity`, `unit_cost`, `discount`, `tax_method`, `tax_id`, `tax_amount`, `sub_total`, `company_id`, `created_at`, `updated_at`) VALUES
(3, 1, 1, NULL, '12.00', '100.00', '0.00', NULL, NULL, '0.00', '1200.00', 1, '2023-02-25 10:04:15', '2023-02-25 10:04:15'),
(4, 2, 1, NULL, '2.00', '100.00', '0.00', NULL, NULL, '0.00', '200.00', 1, '2023-02-26 12:44:54', '2023-02-26 12:44:54'),
(6, 3, 3, NULL, '10.00', '100.00', '0.00', NULL, NULL, '0.00', '1000.00', 1, '2023-03-01 13:34:48', '2023-03-01 13:34:48'),
(8, 4, 3, NULL, '6.00', '100.00', '0.00', NULL, NULL, '0.00', '600.00', 1, '2023-03-03 16:04:03', '2023-03-03 16:04:03');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_order_item_taxes`
--

CREATE TABLE `purchase_order_item_taxes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `purchase_order_id` bigint(20) NOT NULL,
  `purchase_order_item_id` bigint(20) NOT NULL,
  `tax_id` bigint(20) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_return`
--

CREATE TABLE `purchase_return` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `return_date` date NOT NULL,
  `supplier_id` bigint(20) DEFAULT NULL,
  `account_id` bigint(20) NOT NULL,
  `chart_id` bigint(20) NOT NULL,
  `payment_method_id` bigint(20) NOT NULL,
  `tax_id` bigint(20) DEFAULT NULL,
  `tax_amount` decimal(10,2) DEFAULT NULL,
  `product_total` decimal(10,2) NOT NULL,
  `grand_total` decimal(10,2) NOT NULL,
  `attachemnt` text COLLATE utf8mb4_unicode_ci,
  `note` text COLLATE utf8mb4_unicode_ci,
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchase_return`
--

INSERT INTO `purchase_return` (`id`, `return_date`, `supplier_id`, `account_id`, `chart_id`, `payment_method_id`, `tax_id`, `tax_amount`, `product_total`, `grand_total`, `attachemnt`, `note`, `company_id`, `created_at`, `updated_at`) VALUES
(1, '2023-02-28', 1, 1, 4, 1, NULL, '0.00', '200.00', '200.00', '', NULL, 1, '2023-02-28 08:37:41', '2023-02-28 08:37:41'),
(2, '2023-03-01', 2, 1, 8, 1, NULL, '0.00', '200.00', '200.00', '', NULL, 1, '2023-03-01 13:42:15', '2023-03-01 13:42:15');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_return_items`
--

CREATE TABLE `purchase_return_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `purchase_return_id` int(11) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `quantity` decimal(10,2) NOT NULL,
  `unit_cost` decimal(10,2) NOT NULL,
  `discount` decimal(10,2) NOT NULL,
  `tax_method` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax_id` bigint(20) DEFAULT NULL,
  `tax_amount` decimal(10,2) DEFAULT NULL,
  `sub_total` decimal(10,2) NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchase_return_items`
--

INSERT INTO `purchase_return_items` (`id`, `purchase_return_id`, `product_id`, `description`, `quantity`, `unit_cost`, `discount`, `tax_method`, `tax_id`, `tax_amount`, `sub_total`, `company_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, '2.00', '100.00', '0.00', NULL, NULL, '0.00', '200.00', 1, '2023-02-28 08:37:41', '2023-02-28 08:37:41'),
(2, 2, 3, NULL, '2.00', '100.00', '0.00', NULL, NULL, '0.00', '200.00', 1, '2023-03-01 13:42:15', '2023-03-01 13:42:15');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_return_item_taxes`
--

CREATE TABLE `purchase_return_item_taxes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `purchase_return_id` bigint(20) NOT NULL,
  `purchase_return_item_id` bigint(20) NOT NULL,
  `tax_id` bigint(20) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `quotations`
--

CREATE TABLE `quotations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `quotation_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quotation_date` date NOT NULL,
  `template` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `grand_total` decimal(10,2) NOT NULL,
  `converted_total` decimal(10,2) DEFAULT NULL,
  `tax_total` decimal(10,2) NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `related_to` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `related_id` bigint(20) DEFAULT NULL,
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `quotation_items`
--

CREATE TABLE `quotation_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `quotation_id` bigint(20) NOT NULL,
  `item_id` bigint(20) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `quantity` decimal(10,2) NOT NULL,
  `unit_cost` decimal(10,2) NOT NULL,
  `discount` decimal(10,2) NOT NULL,
  `tax_method` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax_id` bigint(20) DEFAULT NULL,
  `tax_amount` decimal(10,2) DEFAULT NULL,
  `sub_total` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `quotation_item_taxes`
--

CREATE TABLE `quotation_item_taxes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `quotation_id` bigint(20) NOT NULL,
  `quotation_item_id` bigint(20) NOT NULL,
  `tax_id` bigint(20) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `repeating_transactions`
--

CREATE TABLE `repeating_transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `trans_date` date NOT NULL,
  `account_id` bigint(20) NOT NULL,
  `chart_id` bigint(20) NOT NULL,
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dr_cr` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `base_amount` decimal(10,2) DEFAULT NULL,
  `payer_payee_id` bigint(20) DEFAULT NULL,
  `payment_method_id` bigint(20) NOT NULL,
  `reference` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `company_id` bigint(20) NOT NULL,
  `status` tinyint(4) DEFAULT '0',
  `trans_id` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `repeating_transactions`
--

INSERT INTO `repeating_transactions` (`id`, `trans_date`, `account_id`, `chart_id`, `type`, `dr_cr`, `amount`, `base_amount`, `payer_payee_id`, `payment_method_id`, `reference`, `note`, `company_id`, `status`, `trans_id`, `created_at`, `updated_at`) VALUES
(1, '2023-02-27', 1, 1, 'expense', 'dr', '10.00', '10.00', 1, 1, NULL, NULL, 1, 0, NULL, '2023-02-27 07:55:23', '2023-02-27 07:55:23');

-- --------------------------------------------------------

--
-- Table structure for table `sales_return`
--

CREATE TABLE `sales_return` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `return_date` date NOT NULL,
  `customer_id` bigint(20) NOT NULL,
  `tax_id` bigint(20) DEFAULT NULL,
  `tax_amount` decimal(10,2) DEFAULT NULL,
  `product_total` decimal(10,2) NOT NULL,
  `grand_total` decimal(10,2) NOT NULL,
  `converted_total` decimal(10,2) DEFAULT NULL,
  `attachemnt` text COLLATE utf8mb4_unicode_ci,
  `note` text COLLATE utf8mb4_unicode_ci,
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sales_return`
--

INSERT INTO `sales_return` (`id`, `return_date`, `customer_id`, `tax_id`, `tax_amount`, `product_total`, `grand_total`, `converted_total`, `attachemnt`, `note`, `company_id`, `created_at`, `updated_at`) VALUES
(1, '2023-02-27', 1, NULL, '0.00', '200.00', '200.00', '200.00', '', NULL, 1, '2023-02-27 08:35:41', '2023-02-27 08:35:41'),
(2, '2023-02-27', 1, NULL, '0.00', '100.00', '100.00', '100.00', '', NULL, 1, '2023-02-27 08:36:20', '2023-02-27 08:36:20');

-- --------------------------------------------------------

--
-- Table structure for table `sales_return_items`
--

CREATE TABLE `sales_return_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sales_return_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `quantity` decimal(8,2) NOT NULL,
  `unit_cost` decimal(10,2) NOT NULL,
  `discount` decimal(10,2) NOT NULL,
  `tax_method` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax_id` bigint(20) DEFAULT NULL,
  `tax_amount` decimal(10,2) DEFAULT NULL,
  `sub_total` decimal(10,2) NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sales_return_items`
--

INSERT INTO `sales_return_items` (`id`, `sales_return_id`, `product_id`, `description`, `quantity`, `unit_cost`, `discount`, `tax_method`, `tax_id`, `tax_amount`, `sub_total`, `company_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, '2.00', '100.00', '0.00', NULL, NULL, '0.00', '200.00', 1, '2023-02-27 08:35:41', '2023-02-27 08:35:41'),
(2, 2, 1, NULL, '1.00', '100.00', '0.00', NULL, NULL, '0.00', '100.00', 1, '2023-02-27 08:36:20', '2023-02-27 08:36:20');

-- --------------------------------------------------------

--
-- Table structure for table `sales_return_item_taxes`
--

CREATE TABLE `sales_return_item_taxes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sales_return_id` bigint(20) NOT NULL,
  `sales_return_item_id` bigint(20) NOT NULL,
  `tax_id` bigint(20) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_id` bigint(20) NOT NULL,
  `cost` decimal(10,2) NOT NULL,
  `tax_method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_id` bigint(20) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `item_id`, `cost`, `tax_method`, `tax_id`, `description`, `created_at`, `updated_at`) VALUES
(1, 2, '100.00', 'exclusive', NULL, 'ij', '2023-02-27 15:21:01', '2023-02-27 15:21:01');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `value`, `created_at`, `updated_at`) VALUES
(1, 'mail_type', 'mail', NULL, NULL),
(2, 'backend_direction', 'ltr', NULL, '2023-02-27 09:20:48'),
(3, 'membership_system', 'enabled', NULL, '2023-02-27 08:58:45'),
(4, 'trial_period', '3', NULL, '2023-02-27 08:58:45'),
(5, 'allow_singup', 'yes', NULL, '2023-02-27 08:58:45'),
(6, 'email_verification', 'disabled', NULL, '2023-02-27 08:58:45'),
(7, 'hero_title', 'a:2:{s:6:\"Bangla\";s:31:\"das - doogsan accounting system\";s:7:\"English\";s:31:\"das - doogsan accounting system\";}', NULL, '2023-02-27 08:56:00'),
(8, 'hero_sub_title', 'a:2:{s:6:\"Bangla\";s:40:\"doogsan haqabtiraha baahidaada xisaabeed\";s:7:\"English\";s:40:\"doogsan haqabtiraha baahidaada xisaabeed\";}', NULL, '2023-02-27 08:56:00'),
(9, 'meta_keywords', 'invoice, projects, tasks, accounting, quotation, crm, business, erp, accounting software, live chat', NULL, '2023-02-27 08:58:05'),
(10, 'meta_description', 'DAS waa adeeg xisaabin/maaliyadeed oo dhamestiran oo aad u isticmaali kartid ganacsi walba ha noqdo mid online ah ama ofline', NULL, '2023-02-27 08:58:05'),
(11, 'company_name', 'doogsan', '2023-02-25 06:33:59', '2023-02-25 06:33:59'),
(12, 'site_title', 'doogsan', '2023-02-25 06:33:59', '2023-02-25 06:33:59'),
(13, 'phone', '+252615379757', '2023-02-25 06:33:59', '2023-02-25 06:33:59'),
(14, 'email', 'mohamudmohamed1@gmail.com', '2023-02-25 06:33:59', '2023-02-25 06:33:59'),
(15, 'timezone', 'Africa/Mogadishu', '2023-02-25 06:33:59', '2023-02-25 06:33:59'),
(16, 'live_chat', 'enabled', '2023-02-25 09:39:24', '2023-02-25 09:39:24'),
(17, 'PUSHER_APP_ID', '1559635', '2023-02-25 09:39:24', '2023-02-25 09:39:24'),
(18, 'PUSHER_KEY', '580e67a36d35b00858de', '2023-02-25 09:39:24', '2023-02-25 09:39:24'),
(19, 'PUSHER_SECRET', 'c7ca3bceb401167e7fa9', '2023-02-25 09:39:24', '2023-02-25 09:39:24'),
(20, 'PUSHER_CLUSTER', 'mt1', '2023-02-25 09:39:24', '2023-02-25 09:39:24'),
(21, 'chat_max_upload_size', '5', '2023-02-25 09:39:24', '2023-02-25 09:39:24'),
(22, 'chat_file_type_supported', 'png,jpg,jpeg,doc,pdf', '2023-02-25 09:39:24', '2023-02-25 09:39:24'),
(23, 'custom_css_code', '', '2023-02-25 09:43:15', '2023-02-25 09:43:15'),
(24, 'website_copyright', 'a:2:{s:6:\"Bangla\";s:13:\"doogsan @2023\";s:7:\"English\";s:13:\"doogsan @2023\";}', '2023-02-27 08:55:29', '2023-02-27 08:56:00'),
(25, 'website_title', 'DAS - doogsan accounting system', '2023-02-27 08:58:05', '2023-02-27 08:58:05'),
(26, 'currency', 'USD', '2023-02-27 08:58:45', '2023-02-27 08:58:45'),
(27, 'currency_position', 'left', '2023-02-27 08:58:45', '2023-02-27 08:58:45'),
(28, 'favicon', 'file_1677488850.png', '2023-02-27 08:59:11', '2023-02-27 09:07:30'),
(29, 'logo', 'logo.png', '2023-02-27 08:59:13', '2023-02-27 09:07:28'),
(30, 'website_enable', 'yes', '2023-02-27 09:20:48', '2023-02-27 09:20:48'),
(31, 'website_language_dropdown', 'yes', '2023-02-27 09:20:48', '2023-02-27 09:20:48'),
(32, 'currency_converter', 'manual', '2023-02-27 09:20:48', '2023-02-27 09:20:48'),
(33, 'fixer_api_key', '', '2023-02-27 09:20:48', '2023-02-27 09:20:48'),
(34, 'date_format', 'Y-m-d', '2023-02-27 09:20:48', '2023-02-27 09:20:48'),
(35, 'time_format', '12', '2023-02-27 09:20:48', '2023-02-27 09:20:48'),
(36, 'file_manager_file_type_supported', 'png,jpg,jpeg', '2023-02-27 09:20:48', '2023-02-27 09:20:48'),
(37, 'file_manager_max_upload_size', '5', '2023-02-27 09:20:48', '2023-02-27 09:20:48');

-- --------------------------------------------------------

--
-- Table structure for table `social_google_accounts`
--

CREATE TABLE `social_google_accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `provider_user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `staff_roles`
--

CREATE TABLE `staff_roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `staff_roles`
--

INSERT INTO `staff_roles` (`id`, `name`, `description`, `company_id`, `created_at`, `updated_at`) VALUES
(1, 'xafiis', NULL, 1, '2023-02-28 08:30:01', '2023-02-28 08:30:01'),
(2, 'eeg', 'k;edmieqkdopwwq', 1, '2023-03-01 13:56:41', '2023-03-01 13:56:41');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `supplier_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vat_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `supplier_name`, `company_name`, `vat_number`, `email`, `phone`, `address`, `country`, `city`, `state`, `postal_code`, `company_id`, `created_at`, `updated_at`) VALUES
(1, 'mohamud', 'mohamud', NULL, 'reg10@g.com', '+252614332121', 'edx', 'Somalia', NULL, NULL, NULL, 1, '2023-02-25 09:55:35', '2023-02-25 09:55:35'),
(2, 'ali', 'magan', '100211', 'fff@gmail.com', '+2527153333', 'khqbsdkeq', 'Somalia', 'mogadishu', 'banaadir', 'BN0000', 1, '2023-03-01 13:26:55', '2023-03-01 13:26:55');

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `project_id` bigint(20) NOT NULL,
  `milestone_id` bigint(20) DEFAULT NULL,
  `priority` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `task_status_id` bigint(20) NOT NULL,
  `assigned_user_id` bigint(20) DEFAULT NULL,
  `start_date` date NOT NULL,
  `end_date` date DEFAULT NULL,
  `custom_fields` longtext COLLATE utf8mb4_unicode_ci,
  `user_id` bigint(20) NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `task_statuses`
--

CREATE TABLE `task_statuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) DEFAULT NULL,
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `taxs`
--

CREATE TABLE `taxs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tax_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` decimal(10,2) NOT NULL,
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `timesheets`
--

CREATE TABLE `timesheets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  `total_hour` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `project_id` bigint(20) NOT NULL,
  `task_id` bigint(20) NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `trans_date` date NOT NULL,
  `account_id` bigint(20) NOT NULL,
  `chart_id` bigint(20) NOT NULL,
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dr_cr` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `base_amount` decimal(10,2) DEFAULT NULL,
  `payer_payee_id` bigint(20) DEFAULT NULL,
  `invoice_id` bigint(20) DEFAULT NULL,
  `purchase_id` bigint(20) DEFAULT NULL,
  `purchase_return_id` bigint(20) DEFAULT NULL,
  `project_id` bigint(20) DEFAULT NULL,
  `payment_method_id` bigint(20) NOT NULL,
  `reference` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment` text COLLATE utf8mb4_unicode_ci,
  `note` text COLLATE utf8mb4_unicode_ci,
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `trans_date`, `account_id`, `chart_id`, `type`, `dr_cr`, `amount`, `base_amount`, `payer_payee_id`, `invoice_id`, `purchase_id`, `purchase_return_id`, `project_id`, `payment_method_id`, `reference`, `attachment`, `note`, `company_id`, `created_at`, `updated_at`) VALUES
(1, '2023-02-25', 1, 1, 'expense', 'dr', '12000.00', '12000.00', NULL, NULL, 1, NULL, NULL, 1, NULL, '', NULL, 1, '2023-02-25 10:02:39', '2023-02-25 10:02:39'),
(2, '2023-02-25', 1, 2, 'income', 'cr', '100.00', '100.00', 1, NULL, NULL, NULL, NULL, 1, NULL, '', NULL, 1, '2023-02-25 11:01:35', '2023-02-25 11:01:35'),
(3, '2023-02-28', 1, 4, 'income', 'cr', '200.00', '200.00', NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, 1, '2023-02-28 08:37:41', '2023-02-28 08:37:41'),
(4, '2023-02-28', 1, 5, 'income', 'cr', '190.00', '190.00', 1, 3, NULL, NULL, NULL, 1, NULL, '', NULL, 1, '2023-02-28 08:39:36', '2023-02-28 08:39:36'),
(5, '2023-02-28', 2, 6, 'income', 'cr', '10.00', '10.00', 1, 3, NULL, NULL, NULL, 1, NULL, '', NULL, 1, '2023-02-28 08:44:09', '2023-02-28 08:44:09'),
(6, '2023-03-01', 1, 1, 'expense', 'dr', '1000.00', '1000.00', NULL, NULL, 3, NULL, NULL, 1, 'behxhjewdb', '', NULL, 1, '2023-03-01 13:32:59', '2023-03-01 13:32:59'),
(7, '2023-03-01', 1, 7, 'expense', 'dr', '100.00', '100.00', NULL, NULL, 3, NULL, NULL, 1, NULL, '', NULL, 1, '2023-03-01 13:34:03', '2023-03-01 13:34:03'),
(8, '2023-03-01', 1, 8, 'income', 'cr', '200.00', '200.00', NULL, NULL, NULL, 2, NULL, 1, NULL, NULL, NULL, 1, '2023-03-01 13:42:15', '2023-03-01 13:42:15'),
(9, '2023-03-03', 4, 9, 'income', 'cr', '300.00', '300.00', 1, NULL, NULL, NULL, NULL, 1, NULL, '', NULL, 1, '2023-03-03 15:19:12', '2023-03-03 15:19:12'),
(10, '2023-03-03', 5, 9, 'expense', 'dr', '600.00', '600.00', NULL, NULL, 4, NULL, NULL, 1, '10001010', '', NULL, 1, '2023-03-03 15:50:53', '2023-03-03 15:50:53'),
(11, '2023-03-03', 6, 10, 'income', 'cr', '200.00', '200.00', 1, 4, NULL, NULL, NULL, 1, '111', '', NULL, 1, '2023-03-03 16:08:26', '2023-03-03 16:08:26'),
(12, '2023-03-20', 1, 10, 'income', 'cr', '200.00', '200.00', 1, 7, NULL, NULL, NULL, 1, NULL, '', NULL, 1, '2023-03-20 14:52:28', '2023-03-20 14:52:28');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` bigint(20) DEFAULT NULL,
  `profile_picture` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL,
  `language` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `user_type`, `role_id`, `profile_picture`, `status`, `language`, `company_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'mohamud', 'doon199p@gmail.com', '2023-02-25 06:33:14', '$2y$10$DsbxCzFaKRKlHO9HLeaXMeNwC9Yudlrf6e3n3NO5GS5prU70.kLxm', 'admin', NULL, 'default.png', 1, NULL, NULL, NULL, '2023-02-25 06:33:14', '2023-02-25 06:33:14'),
(2, 'das', 'das@gmail.com', '2023-02-25 09:42:20', '$2y$10$yhzAuhDNacvvUqyGEvbnWOC4v10MGN/FP9CuWSLRXBipTBkBslKSC', 'user', NULL, 'default.png', 1, NULL, 1, NULL, '2023-02-25 09:42:20', '2023-02-25 09:42:20'),
(3, 'nuux', 'nux@gmail.com', '2023-02-28 08:32:34', '$2y$10$jaFWiCexHNb0Ha.//du/O.wu2fvUrmDY/akZEndywQsC9RqdCeYfa', 'staff', 2, 'default.png', 1, NULL, 1, NULL, '2023-02-28 08:32:35', '2023-03-01 14:01:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `activity_logs`
--
ALTER TABLE `activity_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chart_of_accounts`
--
ALTER TABLE `chart_of_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chat_groups`
--
ALTER TABLE `chat_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chat_group_users`
--
ALTER TABLE `chat_group_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chat_messages`
--
ALTER TABLE `chat_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cm_email_subscribers`
--
ALTER TABLE `cm_email_subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cm_faqs`
--
ALTER TABLE `cm_faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cm_features`
--
ALTER TABLE `cm_features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company_email_template`
--
ALTER TABLE `company_email_template`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company_settings`
--
ALTER TABLE `company_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_groups`
--
ALTER TABLE `contact_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currency_rates`
--
ALTER TABLE `currency_rates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `current_stocks`
--
ALTER TABLE `current_stocks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `file_manager`
--
ALTER TABLE `file_manager`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `group_chat_messages`
--
ALTER TABLE `group_chat_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `group_chat_message_status`
--
ALTER TABLE `group_chat_message_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice_items`
--
ALTER TABLE `invoice_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice_item_taxes`
--
ALTER TABLE `invoice_item_taxes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice_templates`
--
ALTER TABLE `invoice_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leads`
--
ALTER TABLE `leads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lead_sources`
--
ALTER TABLE `lead_sources`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lead_statuses`
--
ALTER TABLE `lead_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payment_histories`
--
ALTER TABLE `payment_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_methods`
--
ALTER TABLE `payment_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_sites`
--
ALTER TABLE `product_sites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_units`
--
ALTER TABLE `product_units`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_members`
--
ALTER TABLE `project_members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_milestones`
--
ALTER TABLE `project_milestones`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_orders`
--
ALTER TABLE `purchase_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_order_items`
--
ALTER TABLE `purchase_order_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_order_item_taxes`
--
ALTER TABLE `purchase_order_item_taxes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_return`
--
ALTER TABLE `purchase_return`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_return_items`
--
ALTER TABLE `purchase_return_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_return_item_taxes`
--
ALTER TABLE `purchase_return_item_taxes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quotations`
--
ALTER TABLE `quotations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quotation_items`
--
ALTER TABLE `quotation_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quotation_item_taxes`
--
ALTER TABLE `quotation_item_taxes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `repeating_transactions`
--
ALTER TABLE `repeating_transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales_return`
--
ALTER TABLE `sales_return`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales_return_items`
--
ALTER TABLE `sales_return_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales_return_item_taxes`
--
ALTER TABLE `sales_return_item_taxes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_google_accounts`
--
ALTER TABLE `social_google_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff_roles`
--
ALTER TABLE `staff_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `task_statuses`
--
ALTER TABLE `task_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `taxs`
--
ALTER TABLE `taxs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `timesheets`
--
ALTER TABLE `timesheets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
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
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `activity_logs`
--
ALTER TABLE `activity_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chart_of_accounts`
--
ALTER TABLE `chart_of_accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `chat_groups`
--
ALTER TABLE `chat_groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chat_group_users`
--
ALTER TABLE `chat_group_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chat_messages`
--
ALTER TABLE `chat_messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cm_email_subscribers`
--
ALTER TABLE `cm_email_subscribers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cm_faqs`
--
ALTER TABLE `cm_faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cm_features`
--
ALTER TABLE `cm_features`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `company_email_template`
--
ALTER TABLE `company_email_template`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `company_settings`
--
ALTER TABLE `company_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contact_groups`
--
ALTER TABLE `contact_groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `currency_rates`
--
ALTER TABLE `currency_rates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=169;

--
-- AUTO_INCREMENT for table `current_stocks`
--
ALTER TABLE `current_stocks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `file_manager`
--
ALTER TABLE `file_manager`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `group_chat_messages`
--
ALTER TABLE `group_chat_messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `group_chat_message_status`
--
ALTER TABLE `group_chat_message_status`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `invoice_items`
--
ALTER TABLE `invoice_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `invoice_item_taxes`
--
ALTER TABLE `invoice_item_taxes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoice_templates`
--
ALTER TABLE `invoice_templates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `leads`
--
ALTER TABLE `leads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lead_sources`
--
ALTER TABLE `lead_sources`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lead_statuses`
--
ALTER TABLE `lead_statuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `notes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `payment_histories`
--
ALTER TABLE `payment_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `payment_methods`
--
ALTER TABLE `payment_methods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `product_sites`
--
ALTER TABLE `product_sites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_units`
--
ALTER TABLE `product_units`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `project_members`
--
ALTER TABLE `project_members`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `project_milestones`
--
ALTER TABLE `project_milestones`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchase_orders`
--
ALTER TABLE `purchase_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `purchase_order_items`
--
ALTER TABLE `purchase_order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `purchase_order_item_taxes`
--
ALTER TABLE `purchase_order_item_taxes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchase_return`
--
ALTER TABLE `purchase_return`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `purchase_return_items`
--
ALTER TABLE `purchase_return_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `purchase_return_item_taxes`
--
ALTER TABLE `purchase_return_item_taxes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `quotations`
--
ALTER TABLE `quotations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `quotation_items`
--
ALTER TABLE `quotation_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `quotation_item_taxes`
--
ALTER TABLE `quotation_item_taxes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `repeating_transactions`
--
ALTER TABLE `repeating_transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sales_return`
--
ALTER TABLE `sales_return`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sales_return_items`
--
ALTER TABLE `sales_return_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sales_return_item_taxes`
--
ALTER TABLE `sales_return_item_taxes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `social_google_accounts`
--
ALTER TABLE `social_google_accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `staff_roles`
--
ALTER TABLE `staff_roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `task_statuses`
--
ALTER TABLE `task_statuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `taxs`
--
ALTER TABLE `taxs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `timesheets`
--
ALTER TABLE `timesheets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
