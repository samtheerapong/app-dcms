-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 28, 2023 at 08:41 AM
-- Server version: 8.0.31
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_app-dcms`
--

-- --------------------------------------------------------

--
-- Table structure for table `approver`
--

DROP TABLE IF EXISTS `approver`;
CREATE TABLE IF NOT EXISTS `approver` (
  `id` int NOT NULL AUTO_INCREMENT,
  `reviewer_id` int DEFAULT NULL COMMENT 'เอกสาร',
  `approve_name` int DEFAULT NULL COMMENT 'ผู้อนุมัติ',
  `approve_at` varchar(45) DEFAULT NULL COMMENT 'วันที่อนุมัติ',
  `approve_comment` text COMMENT 'ความคิดเห็น',
  `approved` int DEFAULT NULL COMMENT 'อนุมัติ',
  PRIMARY KEY (`id`),
  KEY `fk_approver_user1_idx` (`approve_name`),
  KEY `fk_approver_reviewer1_idx` (`reviewer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `auth_assignment`
--

DROP TABLE IF EXISTS `auth_assignment`;
CREATE TABLE IF NOT EXISTS `auth_assignment` (
  `item_name` varchar(64) COLLATE utf8mb3_unicode_ci NOT NULL,
  `user_id` varchar(64) COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` int DEFAULT NULL,
  PRIMARY KEY (`item_name`,`user_id`),
  KEY `idx-auth_assignment-user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_item`
--

DROP TABLE IF EXISTS `auth_item`;
CREATE TABLE IF NOT EXISTS `auth_item` (
  `name` varchar(64) COLLATE utf8mb3_unicode_ci NOT NULL,
  `type` smallint NOT NULL,
  `description` text COLLATE utf8mb3_unicode_ci,
  `rule_name` varchar(64) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `data` blob,
  `created_at` int DEFAULT NULL,
  `updated_at` int DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `rule_name` (`rule_name`),
  KEY `idx-auth_item-type` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_item_child`
--

DROP TABLE IF EXISTS `auth_item_child`;
CREATE TABLE IF NOT EXISTS `auth_item_child` (
  `parent` varchar(64) COLLATE utf8mb3_unicode_ci NOT NULL,
  `child` varchar(64) COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`parent`,`child`),
  KEY `child` (`child`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_rule`
--

DROP TABLE IF EXISTS `auth_rule`;
CREATE TABLE IF NOT EXISTS `auth_rule` (
  `name` varchar(64) COLLATE utf8mb3_unicode_ci NOT NULL,
  `data` blob,
  `created_at` int DEFAULT NULL,
  `updated_at` int DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `category_code` varchar(45) NOT NULL COMMENT 'ระดับเอกสาร(CODE)',
  `category_details` varchar(100) DEFAULT NULL COMMENT 'รายละเอียด',
  `color` varchar(45) DEFAULT NULL COMMENT 'สี',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_code`, `category_details`, `color`) VALUES
(1, 'PM', 'ขั้นตอนการปฏิบัติ (Procedure Manual)', NULL),
(2, 'ST', 'มาตรฐานอ้างอิง (Standard)', NULL),
(3, 'WI', 'วิธีการปฏิบัติ (Work Instruction)', NULL),
(4, 'MM', 'คู่มือระบบบริหารต่างๆ (Manual)', NULL),
(5, 'SP', 'เอกสารสนับสนุน (Support Document)', NULL),
(6, 'FM', 'แบบฟอร์ม (Form)', NULL),
(7, 'QM', 'คู่มือคุณภาพ (QM)', NULL),
(8, 'SHE', 'คู่มือการจัดการด้านอาชีวอนามัยและความปลอดภัย', NULL),
(9, 'EM', 'คู่มือระบบการจัดการด้านสิ่งแวดล้อม', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

DROP TABLE IF EXISTS `departments`;
CREATE TABLE IF NOT EXISTS `departments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `department_code` varchar(45) DEFAULT NULL COMMENT 'รหัส',
  `department_details` text COMMENT 'รายละเอียด',
  `color` varchar(45) DEFAULT NULL COMMENT 'สี',
  `user_id` int DEFAULT NULL COMMENT 'หัวหน้าแผนก',
  PRIMARY KEY (`id`),
  KEY `fk_departments_user1_idx` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `department_code`, `department_details`, `color`, `user_id`) VALUES
(1, 'MK', 'การตลาด (Marketing)', NULL, NULL),
(2, 'PD', 'ฝ่ายผลิต (Production)', NULL, NULL),
(3, 'QC', 'แผนกควบคุมคุณภาพ (Quality Control)', NULL, NULL),
(4, 'EN', 'แผนกวิศวกรรม (Engineer)', NULL, NULL),
(5, 'PC', 'แผนกจัดซื้อ (Purchasing)', NULL, NULL),
(6, 'WH', 'แผนกคลังสินค้า (Ware House)', NULL, NULL),
(7, 'RD', 'แผนกวิจัยและพัฒนาผลิตภัณฑ์ (Research and Development)', NULL, NULL),
(8, 'AG', 'แผนกส่งเสริมการเกษตร (Agriculture)', NULL, NULL),
(9, 'GR', 'เอกสารใช้ทั่วไป (General)', NULL, NULL),
(10, 'MM', 'เอกสารที่จัดทำจากระบบการจัดการมาตรฐานแรงงานไทย มรท.8001\n', NULL, NULL),
(11, 'EM', 'เอกสารที่จัดทำจากระบบการจัดการสิ่งแวดล้อม (Environmental)', NULL, NULL),
(12, 'HS', 'เอกสารที่จัดทำจากระบบการจัดการอาชีวอนามัยและความปลอดภัย (OHSAS 18001)\r\n', NULL, NULL),
(13, 'PCC', 'ฝ่ายวางแผนและควบคุมการผลิต', NULL, NULL),
(14, 'IT', 'แผนกเทคโนโลยีสารสนเทศ', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migration`
--

DROP TABLE IF EXISTS `migration`;
CREATE TABLE IF NOT EXISTS `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1682472922),
('m140209_132017_init', 1682473632),
('m140403_174025_create_account_table', 1682473632),
('m140504_113157_update_tables', 1682473632),
('m140504_130429_create_token_table', 1682473632),
('m140830_171933_fix_ip_field', 1682473633),
('m140830_172703_change_account_table_name', 1682473633),
('m141222_110026_update_ip_field', 1682473633),
('m141222_135246_alter_username_length', 1682473633),
('m150614_103145_update_social_account_table', 1682473633),
('m150623_212711_fix_username_notnull', 1682473633),
('m151218_234654_add_timezone_to_profile', 1682473633),
('m160929_103127_add_last_login_at_to_user_table', 1682473633),
('m140506_102106_rbac_init', 1682473660),
('m170907_052038_rbac_add_index_on_auth_assignment_user_id', 1682473660),
('m180523_151638_rbac_updates_indexes_without_prefix', 1682473661),
('m200409_110543_rbac_update_mssql_trigger', 1682473661);

-- --------------------------------------------------------

--
-- Table structure for table `points`
--

DROP TABLE IF EXISTS `points`;
CREATE TABLE IF NOT EXISTS `points` (
  `id` int NOT NULL AUTO_INCREMENT,
  `point_code` varchar(45) DEFAULT NULL COMMENT 'รหัส',
  `point_name` varchar(100) DEFAULT NULL COMMENT 'จุดรับเอกสาร',
  `sub_points` int DEFAULT NULL COMMENT 'อยู่ภายใต้',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `points`
--

INSERT INTO `points` (`id`, `point_code`, `point_name`, `sub_points`) VALUES
(1, '1', 'ตัวแทนบริหาร', NULL),
(2, '2', 'QMR / Food  Safety  Team  Leader', NULL),
(3, '3', 'EMR', NULL),
(4, '4', 'SMR', NULL),
(5, '5', 'LMR', NULL),
(6, '6', 'ฝ่ายผลิต', NULL),
(7, '6.1', 'ฝ่ายผลิต B1', 6),
(8, '6.2', 'ฝ่ายผลิต B2', 6),
(9, '6.3', 'ฝ่ายผลิต B3', 6),
(10, '6.4', 'ฝ่ายผลิต B4  ส่วนคั้น', 6),
(11, '6.5', 'ฝ่ายผลิต B5', 6),
(12, '7', 'ควบคุมคุณภาพ', NULL),
(13, '8', 'วิจัยและพัฒนาผลิตภัณฑ์', NULL),
(14, '9', 'คลังสินค้า', NULL),
(15, '10', 'ประกันคุณภาพ', NULL),
(16, '11', 'จัดซื้อ', NULL),
(17, '12', 'บุคคล - ธุรการ', NULL),
(18, '13', 'วิศวกรรม', NULL),
(19, '14', 'ไอที', NULL),
(20, '15', 'วางแผนการผลิต', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

DROP TABLE IF EXISTS `profile`;
CREATE TABLE IF NOT EXISTS `profile` (
  `user_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `public_email` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `gravatar_email` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `gravatar_id` varchar(32) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `bio` text COLLATE utf8mb3_unicode_ci,
  `timezone` varchar(40) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`user_id`, `name`, `public_email`, `gravatar_email`, `gravatar_id`, `location`, `website`, `bio`, `timezone`) VALUES
(1, 'แอดมิน', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'ธีรพงศ์ ขันตา', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'อรอนงค์ ชุมภู', '', '', 'd41d8cd98f00b204e9800998ecf8427e', '', '', '', NULL),
(4, 'สุพรรณา พันธ์ภู่', '', '', 'd41d8cd98f00b204e9800998ecf8427e', '', '', '', NULL),
(5, 'พีรนัย โสทรทวีพงศ์', '', '', 'd41d8cd98f00b204e9800998ecf8427e', '', '', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `requester`
--

DROP TABLE IF EXISTS `requester`;
CREATE TABLE IF NOT EXISTS `requester` (
  `id` int NOT NULL AUTO_INCREMENT,
  `types_id` int DEFAULT NULL COMMENT 'ประเภทการร้องขอ',
  `status_id` int DEFAULT NULL COMMENT 'สถานะ',
  `created_at` int DEFAULT NULL COMMENT 'สร้างเมื่อ',
  `updated_at` int DEFAULT NULL COMMENT 'ปรับปรุงล่าสุดเมื่อ',
  `created_by` int DEFAULT NULL COMMENT 'สร้างโดย',
  `updated_by` int DEFAULT NULL COMMENT 'ปรับปรุงโดย',
  `request_by` int DEFAULT NULL COMMENT 'จัดทำโดย',
  `categories_id` int DEFAULT NULL COMMENT 'ระดับเอกสาร',
  `departments_id` int DEFAULT NULL COMMENT 'แผนกที่รับผิดชอบ',
  `document_title` varchar(255) DEFAULT NULL COMMENT 'เรื่อง',
  `details` text COMMENT 'รายละเอียดเอกสาร',
  `pdf_file` text COMMENT 'แนบไฟล์  PDF',
  `docs_file` text COMMENT 'แนบไฟล์ Docs',
  PRIMARY KEY (`id`),
  KEY `fk_requester_status_idx` (`status_id`),
  KEY `fk_requester_user1_idx` (`request_by`),
  KEY `fk_requester_categories1_idx` (`categories_id`),
  KEY `fk_requester_types1_idx` (`types_id`),
  KEY `fk_requester_departments1_idx` (`departments_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `requester`
--

INSERT INTO `requester` (`id`, `types_id`, `status_id`, `created_at`, `updated_at`, `created_by`, `updated_by`, `request_by`, `categories_id`, `departments_id`, `document_title`, `details`, `pdf_file`, `docs_file`) VALUES
(1, 1, 1, 1682484092, 1682485330, 5, 1, 4, 1, 2, 'การกำหนดรหัสเอกสาร', '', '', ''),
(2, 3, 2, 1682493338, 1682667886, 2, 1, 1, 5, 14, 'การกำหนดรหัสเอกสาร2', '', '', ''),
(3, 2, 1, 1682493659, 1682668446, 3, 1, 5, 3, 2, 'การทำความสะอาดห้อง ไอที', '', '', ''),
(4, 2, 4, 1682495074, 1682495248, 3, 2, 4, 3, 7, 'การทำความสะอาดห้อง RD', 'การทำความสะอาดห้อง', '', ''),
(5, 1, 1, 1682668390, 1682668390, 1, 1, 2, 1, 14, 'การกำหนดรหัสเอกสาร3', 'การกำหนดรหัสเอกสาร3', '', ''),
(6, 3, 1, 1682670609, 1682670609, NULL, NULL, 2, 4, 4, 'การกำหนดรหัสเอกสาร4', '', '', ''),
(7, 1, 1, 1682670740, 1682670740, 1, 1, 2, 5, 6, 'การทำความสะอาดห้อง RD', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `reviewer`
--

DROP TABLE IF EXISTS `reviewer`;
CREATE TABLE IF NOT EXISTS `reviewer` (
  `id` int NOT NULL AUTO_INCREMENT,
  `requester_id` int DEFAULT NULL COMMENT 'เอกสารที่ร้องขอ',
  `reviewer_name` int DEFAULT NULL COMMENT 'ทบทวนโดย',
  `reviewer_at` varchar(45) DEFAULT NULL COMMENT 'ทบทวนเมื่อ',
  `document_number` varchar(45) DEFAULT NULL COMMENT 'เลขที่เอกสาร',
  `document_revision` float DEFAULT NULL COMMENT 'แก้ไขครั้งที่',
  `document_age` float DEFAULT NULL COMMENT 'อายุของเอกสาร',
  `document_public_at` varchar(45) DEFAULT NULL COMMENT 'วันที่ประกาศใช้',
  `stamps_id` int DEFAULT NULL COMMENT 'ประทับตรา',
  `document_ref` varchar(255) DEFAULT NULL COMMENT 'เอกสารอ้างอิง',
  `document_tags` varchar(255) DEFAULT NULL COMMENT '#tag',
  `points_id` int DEFAULT NULL COMMENT 'จุดรับเอกสาร',
  `reviewer_comment` text COMMENT 'ความคิดเห็นของผู้ทบทวน',
  `additional_training` text COMMENT 'การอบรมเพิ่มเติม',
  PRIMARY KEY (`id`),
  KEY `fk_reviewer_requester1_idx` (`requester_id`),
  KEY `fk_reviewer_user1_idx` (`reviewer_name`),
  KEY `fk_reviewer_stamps1_idx` (`stamps_id`),
  KEY `fk_reviewer_points1_idx` (`points_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `reviewer`
--

INSERT INTO `reviewer` (`id`, `requester_id`, `reviewer_name`, `reviewer_at`, `document_number`, `document_revision`, `document_age`, `document_public_at`, `stamps_id`, `document_ref`, `document_tags`, `points_id`, `reviewer_comment`, `additional_training`) VALUES
(1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `social_account`
--

DROP TABLE IF EXISTS `social_account`;
CREATE TABLE IF NOT EXISTS `social_account` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `client_id` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `data` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `code` varchar(32) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `created_at` int DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `account_unique` (`provider`,`client_id`),
  UNIQUE KEY `account_unique_code` (`code`),
  KEY `fk_user_account` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stamps`
--

DROP TABLE IF EXISTS `stamps`;
CREATE TABLE IF NOT EXISTS `stamps` (
  `id` int NOT NULL AUTO_INCREMENT,
  `stamp_code` varchar(45) DEFAULT NULL COMMENT 'รหัสประทับตรา',
  `stamp_name` varchar(100) DEFAULT NULL COMMENT 'ประทับตรา',
  `color` varchar(45) DEFAULT NULL COMMENT 'สี',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `stamps`
--

INSERT INTO `stamps` (`id`, `stamp_code`, `stamp_name`, `color`) VALUES
(1, 'Master', 'ต้นฉบับ', NULL),
(2, 'Controlled', 'เอกสารควบคุม', NULL),
(3, 'Uncontrolled', 'เอกสารไม่ควบคุม', NULL),
(4, 'Canceled', 'ยกเลิก', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

DROP TABLE IF EXISTS `status`;
CREATE TABLE IF NOT EXISTS `status` (
  `id` int NOT NULL AUTO_INCREMENT,
  `status_name` varchar(100) DEFAULT NULL COMMENT 'สถานะ',
  `status_details` text COMMENT 'รายละเอียด',
  `color` varchar(45) DEFAULT NULL COMMENT 'สี',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`id`, `status_name`, `status_details`, `color`) VALUES
(1, 'New', 'ใหม่', '#ff0000'),
(2, 'Process Review', 'ดำเนินการทบทวน', '#ff9900'),
(3, 'Process Approve', 'ดำเนินการอนุมัติ', '#0000ff'),
(4, 'Success', 'เสร็จ', '#34870a');

-- --------------------------------------------------------

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `user_id` int NOT NULL,
  `code` varchar(32) COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` int NOT NULL,
  `type` smallint NOT NULL,
  UNIQUE KEY `token_unique` (`user_id`,`code`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `token`
--

INSERT INTO `token` (`user_id`, `code`, `created_at`, `type`) VALUES
(2, 'EMY0QLqlg68STQlkmHWoJQ-cGlEs2PaK', 1682481093, 0),
(3, 'NI3AaFysiV3kGhxMxHIEFVSLduv33jK3', 1682481101, 0),
(4, 'L27XIjdY_W1lssdap2ZxlaPUX5uVTdSo', 1682481110, 0),
(5, 'Ze1ly0J96EN-1Ldql4O3c1_lcKIi6_ZN', 1682481121, 0);

-- --------------------------------------------------------

--
-- Table structure for table `types`
--

DROP TABLE IF EXISTS `types`;
CREATE TABLE IF NOT EXISTS `types` (
  `id` int NOT NULL AUTO_INCREMENT,
  `type_name` varchar(100) DEFAULT NULL COMMENT 'ประเภทการร้องขอ',
  `type_details` text COMMENT 'รายละเอียด',
  `color` varchar(45) DEFAULT NULL COMMENT 'สี',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `types`
--

INSERT INTO `types` (`id`, `type_name`, `type_details`, `color`) VALUES
(1, 'New Request', 'ขอจัดทำ', '#6DA9E4'),
(2, 'Edit', 'ขอแก้ไข', '#F6BA6F'),
(3, 'Cancel', 'ขอยกเลิก', '#FF6D60');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `password_hash` varchar(60) COLLATE utf8mb3_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8mb3_unicode_ci NOT NULL,
  `confirmed_at` int DEFAULT NULL,
  `unconfirmed_email` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `blocked_at` int DEFAULT NULL,
  `registration_ip` varchar(45) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `created_at` int NOT NULL,
  `updated_at` int NOT NULL,
  `flags` int NOT NULL DEFAULT '0',
  `last_login_at` int DEFAULT NULL,
  `status` int DEFAULT '10',
  `role` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_unique_username` (`username`),
  UNIQUE KEY `user_unique_email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `password_hash`, `auth_key`, `confirmed_at`, `unconfirmed_email`, `blocked_at`, `registration_ip`, `created_at`, `updated_at`, `flags`, `last_login_at`, `status`, `role`) VALUES
(1, 'admin', 'admin@admin.com', '$2y$12$M0hFXxztKZxCnaOnGJjrpOmQtnEPHqRbvE7spj4xkCVnT11VBcOaO', 'VPaMQzLRVu6gsDMqaZL9rwHiVdWwVFe3', 1682481192, NULL, NULL, '::1', 1682481077, 1682481077, 0, 1682670717, 10, NULL),
(2, 'theerapong', 'theerapong.khan@gmail.com', '$2y$12$wgw0evelJYnHo.OYJ6Oy7uSXkJuj/hc.KyN5Ua69k9EVzMZSPWH8S', 'l8eCAXjpfUIMnx1YKbKqw3xcBEA0D1T-', 1682481206, NULL, NULL, '::1', 1682481093, 1682481093, 0, 1682495090, 10, NULL),
(3, 'onanong', 'onanong@gmail.com', '$2y$12$hZYzUyddqbQgj.ZhVpYnk.HLsxue7JE6X10xAisAm97RV9O4Baque', 'GtUzBcGWelbaJ9MVBMz8I6o1XVUVhsMM', 1682481209, NULL, NULL, '::1', 1682481101, 1682481101, 0, 1682494012, 10, NULL),
(4, 'supanna', 'supanna@email.com', '$2y$12$JrgSpLqoe07bm0bVnPKR7O3/uZ1ubwIKHy5QOLxHMqThm24kf/ZLK', 'H4Gv7l_-KVl-TfLQo39JXcJJKHvz0o7c', 1682481210, NULL, NULL, '::1', 1682481110, 1682481110, 0, 1682481604, 10, NULL),
(5, 'peeranai', 'peeranai@gmail.com', '$2y$12$pkdao7ym04wlz08kyxj.l.5undNMHcst/0EzM1mzHebUMoqxVt436', 'kbcu9EyXHp2BeliynrSsZ5Skq1ASeLe8', 1682481212, NULL, NULL, '::1', 1682481121, 1682481121, 0, NULL, 10, NULL);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `approver`
--
ALTER TABLE `approver`
  ADD CONSTRAINT `fk_approver_reviewer1` FOREIGN KEY (`reviewer_id`) REFERENCES `reviewer` (`id`),
  ADD CONSTRAINT `fk_approver_user1` FOREIGN KEY (`approve_name`) REFERENCES `user` (`id`);

--
-- Constraints for table `auth_assignment`
--
ALTER TABLE `auth_assignment`
  ADD CONSTRAINT `auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `auth_item`
--
ALTER TABLE `auth_item`
  ADD CONSTRAINT `auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `auth_item_child`
--
ALTER TABLE `auth_item_child`
  ADD CONSTRAINT `auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `departments`
--
ALTER TABLE `departments`
  ADD CONSTRAINT `fk_departments_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `profile`
--
ALTER TABLE `profile`
  ADD CONSTRAINT `fk_user_profile` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT;

--
-- Constraints for table `requester`
--
ALTER TABLE `requester`
  ADD CONSTRAINT `fk_requester_categories1` FOREIGN KEY (`categories_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `fk_requester_departments1` FOREIGN KEY (`departments_id`) REFERENCES `departments` (`id`),
  ADD CONSTRAINT `fk_requester_status` FOREIGN KEY (`status_id`) REFERENCES `status` (`id`),
  ADD CONSTRAINT `fk_requester_types1` FOREIGN KEY (`types_id`) REFERENCES `types` (`id`),
  ADD CONSTRAINT `fk_requester_user1` FOREIGN KEY (`request_by`) REFERENCES `user` (`id`);

--
-- Constraints for table `reviewer`
--
ALTER TABLE `reviewer`
  ADD CONSTRAINT `fk_reviewer_points1` FOREIGN KEY (`points_id`) REFERENCES `points` (`id`),
  ADD CONSTRAINT `fk_reviewer_requester1` FOREIGN KEY (`requester_id`) REFERENCES `requester` (`id`),
  ADD CONSTRAINT `fk_reviewer_stamps1` FOREIGN KEY (`stamps_id`) REFERENCES `stamps` (`id`),
  ADD CONSTRAINT `fk_reviewer_user1` FOREIGN KEY (`reviewer_name`) REFERENCES `user` (`id`);

--
-- Constraints for table `social_account`
--
ALTER TABLE `social_account`
  ADD CONSTRAINT `fk_user_account` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT;

--
-- Constraints for table `token`
--
ALTER TABLE `token`
  ADD CONSTRAINT `fk_user_token` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
