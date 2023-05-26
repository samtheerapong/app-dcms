-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 26, 2023 at 06:25 AM
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
  `requester_id` int DEFAULT NULL COMMENT 'เอกสารที่ร้องขอ',
  `approver_by` int DEFAULT NULL COMMENT 'อนุมัติโดย',
  `approver_at` varchar(45) DEFAULT NULL COMMENT 'อนุมัติเมื่อ',
  `approver_comment` text COMMENT 'ความคิดเห็นของผู้อนุมัติ',
  PRIMARY KEY (`id`),
  KEY `fk_approver_requester1_idx` (`requester_id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `approver`
--

INSERT INTO `approver` (`id`, `requester_id`, `approver_by`, `approver_at`, `approver_comment`) VALUES
(1, 1, NULL, NULL, NULL),
(2, 2, NULL, NULL, NULL),
(3, 3, NULL, NULL, NULL),
(4, 4, NULL, NULL, NULL),
(5, 5, NULL, NULL, NULL),
(6, 6, NULL, NULL, NULL),
(7, 7, NULL, NULL, NULL),
(8, 8, NULL, NULL, NULL),
(9, 9, NULL, NULL, NULL),
(10, 10, NULL, NULL, NULL),
(11, 11, NULL, NULL, NULL),
(12, 12, NULL, NULL, NULL),
(13, 13, NULL, NULL, NULL),
(14, 14, NULL, NULL, NULL),
(15, 15, NULL, NULL, NULL),
(16, 16, NULL, NULL, NULL),
(17, 17, NULL, NULL, NULL),
(18, 18, NULL, NULL, NULL),
(19, 19, NULL, NULL, NULL),
(20, 20, NULL, NULL, NULL),
(21, 21, NULL, NULL, NULL),
(22, 22, NULL, NULL, NULL),
(23, 23, NULL, NULL, NULL),
(24, 24, NULL, NULL, NULL),
(25, 25, NULL, NULL, NULL),
(26, 26, NULL, NULL, NULL),
(27, 27, NULL, NULL, NULL),
(28, 28, NULL, NULL, NULL),
(29, 29, NULL, NULL, NULL),
(30, 30, NULL, NULL, NULL),
(31, 31, NULL, NULL, NULL),
(32, 32, NULL, NULL, NULL),
(33, 33, NULL, NULL, NULL),
(34, 34, NULL, NULL, NULL),
(35, 35, NULL, NULL, NULL),
(36, 36, NULL, NULL, NULL),
(37, 37, NULL, NULL, NULL),
(38, 38, NULL, NULL, NULL),
(39, 39, NULL, NULL, NULL),
(40, 40, NULL, NULL, NULL),
(41, 41, NULL, NULL, NULL),
(42, 42, NULL, NULL, NULL),
(43, 43, NULL, NULL, NULL),
(44, 44, NULL, NULL, NULL),
(45, 45, NULL, NULL, NULL),
(46, 46, NULL, NULL, NULL),
(47, 47, NULL, NULL, NULL),
(48, 48, NULL, NULL, NULL),
(49, 49, NULL, NULL, NULL),
(50, 50, NULL, NULL, NULL),
(51, 51, NULL, NULL, NULL),
(52, 52, NULL, NULL, NULL),
(53, 53, NULL, NULL, NULL),
(54, 54, NULL, NULL, NULL),
(55, 55, NULL, NULL, NULL),
(56, 56, NULL, NULL, NULL),
(57, 57, NULL, NULL, NULL),
(58, 58, NULL, NULL, NULL),
(59, 59, NULL, NULL, NULL),
(60, 60, NULL, NULL, NULL),
(61, 61, NULL, NULL, NULL),
(62, 62, NULL, NULL, NULL),
(63, 63, NULL, NULL, NULL),
(64, 64, NULL, NULL, NULL),
(65, 65, NULL, NULL, NULL),
(66, 66, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `auth_assignment`
--

DROP TABLE IF EXISTS `auth_assignment`;
CREATE TABLE IF NOT EXISTS `auth_assignment` (
  `item_name` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `user_id` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` int DEFAULT NULL,
  PRIMARY KEY (`item_name`,`user_id`),
  KEY `idx-auth_assignment-user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `auth_assignment`
--

INSERT INTO `auth_assignment` (`item_name`, `user_id`, `created_at`) VALUES
('Actor', '19', 1683793747),
('Actor', '21', 1683793762),
('Actor', '22', 1683793771),
('Actor', '3', 1683767479),
('Admin', '5', 1683767503),
('QMR', '4', 1683767493),
('Super Admin', '1', 1683540071),
('User', '10', 1683793739),
('User', '11', 1683793861),
('User', '12', 1683793852),
('User', '13', 1683793856),
('User', '14', 1683793846),
('User', '15', 1683793840),
('User', '16', 1683793833),
('User', '17', 1683793828),
('User', '18', 1683793821),
('User', '2', 1683767460),
('User', '20', 1683793815),
('User', '23', 1683793810),
('User', '24', 1683793803),
('User', '25', 1683793796),
('User', '26', 1683793785),
('User', '27', 1683793779),
('User', '6', 1683793708),
('User', '7', 1683793715),
('User', '8', 1683793727),
('User', '9', 1683793733);

-- --------------------------------------------------------

--
-- Table structure for table `auth_item`
--

DROP TABLE IF EXISTS `auth_item`;
CREATE TABLE IF NOT EXISTS `auth_item` (
  `name` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `type` smallint NOT NULL,
  `description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `rule_name` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `data` blob,
  `created_at` int DEFAULT NULL,
  `updated_at` int DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `rule_name` (`rule_name`),
  KEY `idx-auth_item-type` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `auth_item`
--

INSERT INTO `auth_item` (`name`, `type`, `description`, `rule_name`, `data`, `created_at`, `updated_at`) VALUES
('/*', 2, NULL, NULL, NULL, 1683540052, 1683540052),
('/admin/*', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/admin/assignment/*', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/admin/assignment/assign', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/admin/assignment/index', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/admin/assignment/revoke', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/admin/assignment/view', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/admin/default/*', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/admin/default/index', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/admin/menu/*', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/admin/menu/create', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/admin/menu/delete', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/admin/menu/index', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/admin/menu/update', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/admin/menu/view', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/admin/permission/*', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/admin/permission/assign', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/admin/permission/create', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/admin/permission/delete', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/admin/permission/get-users', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/admin/permission/index', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/admin/permission/remove', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/admin/permission/update', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/admin/permission/view', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/admin/role/*', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/admin/role/assign', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/admin/role/create', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/admin/role/delete', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/admin/role/get-users', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/admin/role/index', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/admin/role/remove', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/admin/role/update', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/admin/role/view', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/admin/route/*', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/admin/route/assign', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/admin/route/create', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/admin/route/index', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/admin/route/refresh', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/admin/route/remove', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/admin/rule/*', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/admin/rule/create', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/admin/rule/delete', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/admin/rule/index', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/admin/rule/update', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/admin/rule/view', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/admin/user/*', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/admin/user/activate', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/admin/user/change-password', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/admin/user/delete', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/admin/user/index', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/admin/user/login', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/admin/user/logout', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/admin/user/request-password-reset', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/admin/user/reset-password', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/admin/user/signup', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/admin/user/view', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/debug/*', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/debug/default/*', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/debug/default/db-explain', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/debug/default/download-mail', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/debug/default/index', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/debug/default/toolbar', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/debug/default/view', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/debug/user/*', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/debug/user/reset-identity', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/debug/user/set-identity', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/gii/*', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/gii/default/*', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/gii/default/action', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/gii/default/diff', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/gii/default/index', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/gii/default/preview', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/gii/default/view', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/gridview/*', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/gridview/export/*', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/gridview/export/download', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/gridview/grid-edited-row/*', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/gridview/grid-edited-row/back', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/operator/*', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/operator/approver/*', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/operator/approver/create', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/operator/approver/delete', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/operator/approver/index', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/operator/approver/update', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/operator/approver/view', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/operator/categories/*', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/operator/categories/create', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/operator/categories/delete', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/operator/categories/index', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/operator/categories/update', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/operator/categories/view', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/operator/default/*', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/operator/default/index', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/operator/departments/*', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/operator/departments/create', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/operator/departments/delete', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/operator/departments/index', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/operator/departments/update', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/operator/departments/view', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/operator/points/*', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/operator/points/create', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/operator/points/delete', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/operator/points/index', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/operator/points/update', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/operator/points/view', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/operator/private-requester/*', 2, NULL, NULL, NULL, 1683794041, 1683794041),
('/operator/private-requester/create', 2, NULL, NULL, NULL, 1683794041, 1683794041),
('/operator/private-requester/delete', 2, NULL, NULL, NULL, 1683794041, 1683794041),
('/operator/private-requester/deletefile', 2, NULL, NULL, NULL, 1683794041, 1683794041),
('/operator/private-requester/download', 2, NULL, NULL, NULL, 1683794041, 1683794041),
('/operator/private-requester/index', 2, NULL, NULL, NULL, 1683794041, 1683794041),
('/operator/private-requester/update', 2, NULL, NULL, NULL, 1683794041, 1683794041),
('/operator/private-requester/view', 2, NULL, NULL, NULL, 1683794041, 1683794041),
('/operator/profile/*', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/operator/profile/create', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/operator/profile/delete', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/operator/profile/index', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/operator/profile/update', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/operator/profile/view', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/operator/report/*', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/operator/report/index', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/operator/report/jsoncalendar', 2, NULL, NULL, NULL, 1684996052, 1684996052),
('/operator/report/report1', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/operator/report/report2', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/operator/report/report3', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/operator/report/report4', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/operator/requester/*', 2, NULL, NULL, NULL, 1683539995, 1683539995),
('/operator/requester/create', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/operator/requester/delete', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/operator/requester/deletefile', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/operator/requester/download', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/operator/requester/index', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/operator/requester/update', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/operator/requester/view', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/operator/reviewer/*', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/operator/reviewer/create', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/operator/reviewer/delete', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/operator/reviewer/index', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/operator/reviewer/update', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/operator/reviewer/view', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/operator/stamps/*', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/operator/stamps/create', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/operator/stamps/delete', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/operator/stamps/index', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/operator/stamps/update', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/operator/stamps/upload', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/operator/stamps/view', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/operator/status/*', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/operator/status/create', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/operator/status/delete', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/operator/status/index', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/operator/status/update', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/operator/status/view', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/operator/types/*', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/operator/types/create', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/operator/types/delete', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/operator/types/index', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/operator/types/update', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/operator/types/view', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/operator/user/*', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/operator/user/create', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/operator/user/delete', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/operator/user/index', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/operator/user/update', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/operator/user/view', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/rbac/*', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/rbac/assignment/*', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/rbac/assignment/assign', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/rbac/permission/*', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/rbac/permission/create', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/rbac/permission/delete', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/rbac/permission/index', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/rbac/permission/update', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/rbac/role/*', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/rbac/role/create', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/rbac/role/delete', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/rbac/role/index', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/rbac/role/update', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/rbac/rule/*', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/rbac/rule/create', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/rbac/rule/delete', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/rbac/rule/index', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/rbac/rule/search', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/rbac/rule/update', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/site/*', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/site/about', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/site/captcha', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/site/contact', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/site/error', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/site/index', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/site/login', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/site/logout', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/user/*', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/user/admin/*', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/user/admin/assignments', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/user/admin/block', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/user/admin/confirm', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/user/admin/create', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/user/admin/delete', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/user/admin/index', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/user/admin/info', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/user/admin/resend-password', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/user/admin/switch', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/user/admin/update', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/user/admin/update-profile', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/user/profile/*', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/user/profile/index', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/user/profile/show', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/user/recovery/*', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/user/recovery/request', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/user/recovery/reset', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/user/registration/*', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/user/registration/confirm', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/user/registration/connect', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/user/registration/register', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/user/registration/resend', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/user/security/*', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/user/security/auth', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/user/security/login', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/user/security/logout', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/user/settings/*', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/user/settings/account', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/user/settings/confirm', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/user/settings/delete', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/user/settings/disconnect', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/user/settings/networks', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('/user/settings/profile', 2, NULL, NULL, NULL, 1683767079, 1683767079),
('Actor', 1, NULL, NULL, NULL, 1683766966, 1683766966),
('Admin', 1, NULL, NULL, NULL, 1683766940, 1683766940),
('QMR', 1, NULL, NULL, NULL, 1683766910, 1683766910),
('Super Admin', 1, NULL, NULL, NULL, 1683540013, 1683540013),
('User', 1, NULL, NULL, NULL, 1683540028, 1683540028);

-- --------------------------------------------------------

--
-- Table structure for table `auth_item_child`
--

DROP TABLE IF EXISTS `auth_item_child`;
CREATE TABLE IF NOT EXISTS `auth_item_child` (
  `parent` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `child` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`parent`,`child`),
  KEY `child` (`child`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `auth_item_child`
--

INSERT INTO `auth_item_child` (`parent`, `child`) VALUES
('Super Admin', '/*'),
('Admin', '/admin/*'),
('Admin', '/operator/*'),
('QMR', '/operator/*'),
('User', '/operator/private-requester/*'),
('User', '/operator/private-requester/create'),
('User', '/operator/private-requester/deletefile'),
('User', '/operator/private-requester/download'),
('User', '/operator/private-requester/index'),
('User', '/operator/private-requester/update'),
('User', '/operator/private-requester/view'),
('Actor', '/operator/report/*'),
('Actor', '/operator/requester/*'),
('User', '/operator/requester/create'),
('User', '/operator/requester/download'),
('User', '/operator/requester/index'),
('User', '/operator/requester/view'),
('Actor', '/operator/reviewer/*'),
('Admin', '/rbac/*'),
('Admin', '/site/*'),
('Admin', '/user/*'),
('Actor', 'User');

-- --------------------------------------------------------

--
-- Table structure for table `auth_rule`
--

DROP TABLE IF EXISTS `auth_rule`;
CREATE TABLE IF NOT EXISTS `auth_rule` (
  `name` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `data` blob,
  `created_at` int DEFAULT NULL,
  `updated_at` int DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auto_number`
--

DROP TABLE IF EXISTS `auto_number`;
CREATE TABLE IF NOT EXISTS `auto_number` (
  `group` varchar(32) NOT NULL,
  `number` int DEFAULT NULL,
  `optimistic_lock` int DEFAULT NULL,
  `update_time` int DEFAULT NULL,
  PRIMARY KEY (`group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `auto_number`
--

INSERT INTO `auto_number` (`group`, `number`, `optimistic_lock`, `update_time`) VALUES
('PM-AG-???', 1, 1, 1685075159),
('PM-EM-???', 7, 1, 1685077081),
('PM-EN-???', 1, 1, 1685074521),
('PM-GR-???', 34, 1, 1685076755),
('PM-HS-???', 4, 1, 1685077368),
('PM-MK-???', 1, 1, 1685005717),
('PM-PC-???', 3, 1, 1685074901),
('PM-PCC-???', 2, 1, 1685079545),
('PM-PD-???', 19, 1, 1685071731),
('PM-QC-???', 9, 1, 1685074348),
('PM-RD-???', 1, 1, 1685074994),
('ST-PD-???', 17, 1, 1685080376),
('ST-QC-???', 9, 1, 1685080715);

-- --------------------------------------------------------

--
-- Table structure for table `calendar`
--

DROP TABLE IF EXISTS `calendar`;
CREATE TABLE IF NOT EXISTS `calendar` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `color` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `calendar`
--

INSERT INTO `calendar` (`id`, `title`, `date_start`, `date_end`, `color`) VALUES
(1, 'sss', '2023-05-25 10:00:00', '2023-05-25 10:00:00', '#E55807');

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
(1, 'PM', 'ขั้นตอนการปฏิบัติ (Procedure Manual)', '#0000ff'),
(2, 'ST', 'มาตรฐานอ้างอิง (Standard)', '#ff00ff'),
(3, 'WI', 'วิธีการปฏิบัติ (Work Instruction)', '#ff9900'),
(4, 'MM', 'คู่มือระบบบริหารต่างๆ (Manual)', '#a64d79'),
(5, 'SP', 'เอกสารสนับสนุน (Support Document)', '#1c4587'),
(6, 'FM', 'แบบฟอร์ม (Form)', '#274e13'),
(7, 'QM', 'คู่มือคุณภาพ (QM)', '#674ea7'),
(8, 'SHE', 'คู่มือการจัดการด้านอาชีวอนามัยและความปลอดภัย', '#e06666'),
(9, 'EM', 'คู่มือระบบการจัดการด้านสิ่งแวดล้อม', '#666666');

-- --------------------------------------------------------

--
-- Table structure for table `chat_messages`
--

DROP TABLE IF EXISTS `chat_messages`;
CREATE TABLE IF NOT EXISTS `chat_messages` (
  `id` int NOT NULL AUTO_INCREMENT,
  `sender` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `chat_messages`
--

INSERT INTO `chat_messages` (`id`, `sender`, `message`, `created_at`) VALUES
(1, '1', 's', '0000-00-00 00:00:00');

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
(1, 'MK', 'การตลาด (Marketing)', '#434343', NULL),
(2, 'PD', 'ฝ่ายผลิต (Production)', '#4a86e8', NULL),
(3, 'QC', 'แผนกควบคุมคุณภาพ (Quality Control)', '#ff9900', NULL),
(4, 'EN', 'แผนกวิศวกรรม (Engineer)', '#9900ff', NULL),
(5, 'PC', 'แผนกจัดซื้อ (Purchasing)', '#ff00ff', NULL),
(6, 'WH', 'แผนกคลังสินค้า (Ware House)', '#980000', NULL),
(7, 'RD', 'แผนกวิจัยและพัฒนาผลิตภัณฑ์ (Research and Development)', '#ff0000', NULL),
(8, 'AG', 'แผนกส่งเสริมการเกษตร (Agriculture)', '#dd7e6b', NULL),
(9, 'GR', 'เอกสารใช้ทั่วไป (General)', '#93c47d', NULL),
(10, 'MM', 'เอกสารที่จัดทำจากระบบการจัดการมาตรฐานแรงงานไทย มรท.8001\r\n', '#76a5af', NULL),
(11, 'EM', 'เอกสารที่จัดทำจากระบบการจัดการสิ่งแวดล้อม (Environmental)', '#8e7cc3', NULL),
(12, 'HS', 'เอกสารที่จัดทำจากระบบการจัดการอาชีวอนามัยและความปลอดภัย (OHSAS 18001)\r\n', '#f6b26b', NULL),
(13, 'PCC', 'ฝ่ายวางแผนและควบคุมการผลิต', '#674ea7', NULL),
(14, 'IT', 'แผนกเทคโนโลยีสารสนเทศ', '#1c4587', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

DROP TABLE IF EXISTS `documents`;
CREATE TABLE IF NOT EXISTS `documents` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ref` varchar(45) DEFAULT NULL,
  `event_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `documents`
--

INSERT INTO `documents` (`id`, `ref`, `event_name`) VALUES
(3, 'kE5aS7EjNumiRZ9dFUHpmZ', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `document_logs`
--

DROP TABLE IF EXISTS `document_logs`;
CREATE TABLE IF NOT EXISTS `document_logs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `requester_id` int DEFAULT NULL,
  `reviewer_id` int DEFAULT NULL,
  `created_at` varchar(45) DEFAULT NULL,
  `updated_at` varchar(45) DEFAULT NULL,
  `document_name` varchar(45) DEFAULT NULL,
  `document_revision` varchar(45) DEFAULT NULL,
  `document_fullname` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `document_logs`
--

INSERT INTO `document_logs` (`id`, `requester_id`, `reviewer_id`, `created_at`, `updated_at`, `document_name`, `document_revision`, `document_fullname`) VALUES
(1, 16, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 17, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 18, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 19, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 20, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 23, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 24, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 31, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 32, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 33, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 34, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 35, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 36, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 37, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 38, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 39, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 40, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 41, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 42, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 2, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

DROP TABLE IF EXISTS `logs`;
CREATE TABLE IF NOT EXISTS `logs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `document_number` varchar(45) DEFAULT NULL,
  `document_revision` varchar(45) DEFAULT NULL,
  `document_title` varchar(200) DEFAULT NULL,
  `requester_by` int DEFAULT NULL,
  `requester_at` varchar(45) DEFAULT NULL,
  `details` text,
  `covenant` text,
  `docs` text,
  `document_age` varchar(45) DEFAULT NULL,
  `document_public_at` varchar(45) DEFAULT NULL,
  `stamps_id` int DEFAULT NULL,
  `document_tags` varchar(45) DEFAULT NULL,
  `points_id` int DEFAULT NULL,
  `additional_training` text,
  `reviewer_by` int DEFAULT NULL,
  `reviewer_at` varchar(45) DEFAULT NULL,
  `reviewer_comment` text,
  `approve_by` int DEFAULT NULL,
  `approve_at` varchar(45) DEFAULT NULL,
  `approver_comment` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`id`, `document_number`, `document_revision`, `document_title`, `requester_by`, `requester_at`, `details`, `covenant`, `docs`, `document_age`, `document_public_at`, `stamps_id`, `document_tags`, `points_id`, `additional_training`, `reviewer_by`, `reviewer_at`, `reviewer_comment`, `approve_by`, `approve_at`, `approver_comment`) VALUES
(1, '1', '1', '1', 1, '1', '1', '1', '1', '1', '1', 1, '1', 1, '1', 1, '1', '1', 1, '1', '1');

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
('m200409_110543_rbac_update_mssql_trigger', 1682473661),
('m140527_084418_auto_number', 1683857558);

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
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `public_email` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `gravatar_email` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `gravatar_id` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `location` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `website` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `bio` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `timezone` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
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
(5, 'พีรนัย โสทรทวีพงศ์', '', '', 'd41d8cd98f00b204e9800998ecf8427e', '', '', '', NULL),
(6, 'สาวิกา พินิจ', '', '', 'd41d8cd98f00b204e9800998ecf8427e', '', '', '', NULL),
(7, 'อารยา เทพโพธา', '', '', 'd41d8cd98f00b204e9800998ecf8427e', '', '', '', NULL),
(8, 'กรรณิกา คำภีระ', '', '', 'd41d8cd98f00b204e9800998ecf8427e', '', '', '', NULL),
(9, 'วรรษรา หลวงเป็ง', '', '', 'd41d8cd98f00b204e9800998ecf8427e', '', '', '', NULL),
(10, 'ยศพร พยัคฆญาติ', '', '', 'd41d8cd98f00b204e9800998ecf8427e', '', '', '', NULL),
(11, 'ทวีเกียรติ คำเทพ', '', '', 'd41d8cd98f00b204e9800998ecf8427e', '', '', '', NULL),
(12, 'กุลนิษฐ์นรี เจริญจิตรวี', '', '', 'd41d8cd98f00b204e9800998ecf8427e', '', '', '', NULL),
(13, 'จิราภรณ์ กาบแก้ว', '', '', 'd41d8cd98f00b204e9800998ecf8427e', '', '', '', NULL),
(14, 'ลภีพร กาบแก้ว', '', '', 'd41d8cd98f00b204e9800998ecf8427e', '', '', '', NULL),
(15, 'รัศมี ศศิยศพงศ์', '', '', 'd41d8cd98f00b204e9800998ecf8427e', '', '', '', NULL),
(16, 'ทักษิณ อินทรศิลา', '', '', 'd41d8cd98f00b204e9800998ecf8427e', '', '', '', NULL),
(17, 'ชฎาภรณ์ แก้วคำ', '', '', 'd41d8cd98f00b204e9800998ecf8427e', '', '', '', NULL),
(18, 'ปราณี แดงโคตร', '', '', 'd41d8cd98f00b204e9800998ecf8427e', '', '', '', NULL),
(19, 'เปรมมิกา พินิจ', '', '', 'd41d8cd98f00b204e9800998ecf8427e', '', '', '', NULL),
(20, 'ธัญญารัตน์ นิ่มวงษ์', '', '', 'd41d8cd98f00b204e9800998ecf8427e', '', '', '', NULL),
(21, 'ชาริณี จันต๊ะนาเขต', '', '', 'd41d8cd98f00b204e9800998ecf8427e', '', '', '', NULL),
(22, 'ประกายวรรณ เทพมณี', '', '', 'd41d8cd98f00b204e9800998ecf8427e', '', '', '', NULL),
(23, 'สุริยา สมเพชร', '', '', 'd41d8cd98f00b204e9800998ecf8427e', '', '', '', NULL),
(24, 'สุพจน์ ช่างฆ้อง', '', '', 'd41d8cd98f00b204e9800998ecf8427e', '', '', '', NULL),
(25, 'ณัฐพล ขันเขียว', '', '', 'd41d8cd98f00b204e9800998ecf8427e', '', '', '', NULL),
(26, 'สราวุฒิ โฆษิตเกียรติคุณ', '', '', 'd41d8cd98f00b204e9800998ecf8427e', '', '', '', NULL),
(27, 'ยศพนธ์ โพธิ', '', '', 'd41d8cd98f00b204e9800998ecf8427e', '', '', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `requester`
--

DROP TABLE IF EXISTS `requester`;
CREATE TABLE IF NOT EXISTS `requester` (
  `id` int NOT NULL AUTO_INCREMENT,
  `types_id` int DEFAULT NULL COMMENT 'ประเภทการร้องขอ',
  `type_details` varchar(255) DEFAULT NULL COMMENT 'รายละเอียดการร้องขอ',
  `status_id` int DEFAULT NULL COMMENT 'สถานะ',
  `created_at` varchar(45) DEFAULT NULL COMMENT 'สร้างเมื่อ',
  `updated_at` varchar(45) DEFAULT NULL COMMENT 'ปรับปรุงล่าสุดเมื่อ',
  `created_by` int DEFAULT NULL COMMENT 'สร้างโดย',
  `updated_by` int DEFAULT NULL COMMENT 'ปรับปรุงโดย',
  `request_by` int DEFAULT NULL COMMENT 'จัดทำโดย',
  `categories_id` int DEFAULT NULL COMMENT 'ระดับเอกสาร',
  `departments_id` int DEFAULT NULL COMMENT 'แผนกที่รับผิดชอบ',
  `document_title` varchar(255) DEFAULT NULL COMMENT 'เรื่อง',
  `document_number` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT 'ชื่อเอกสาร',
  `details` text COMMENT 'รายละเอียดเอกสาร',
  `document_name` varchar(255) DEFAULT NULL COMMENT 'ชื่อเอกสาร',
  `latest_rev` float DEFAULT NULL COMMENT 'ริวิชั่น ล่าสุด',
  `document_age` float DEFAULT NULL COMMENT 'อายุของเอกสาร(ปี)',
  `document_public_at` varchar(45) DEFAULT NULL COMMENT 'วันที่มีผลใช้เอกสาร',
  `ref` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT 'ref',
  `fullname` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT 'เลขที่เอกสาร',
  `covenant` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT 'PDF',
  `docs` text COMMENT 'เอกสารประกอบ',
  PRIMARY KEY (`id`),
  KEY `fk_requester_status_idx` (`status_id`),
  KEY `fk_requester_user1_idx` (`request_by`),
  KEY `fk_requester_categories1_idx` (`categories_id`),
  KEY `fk_requester_types1_idx` (`types_id`),
  KEY `fk_requester_departments1_idx` (`departments_id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `requester`
--

INSERT INTO `requester` (`id`, `types_id`, `type_details`, `status_id`, `created_at`, `updated_at`, `created_by`, `updated_by`, `request_by`, `categories_id`, `departments_id`, `document_title`, `document_number`, `details`, `document_name`, `latest_rev`, `document_age`, `document_public_at`, `ref`, `fullname`, `covenant`, `docs`) VALUES
(1, 6, '', 4, '2023-05-26 10:18:13', '2023-05-26 10:18:13', 1, 1, 1, 1, 1, 'การขาย', 'PM-MK-001', '', NULL, 2, 5, '2020-08-22', '-aBENf_j8CQIazUKhO9s2Y', NULL, '{\"0f5ff3318025b4fe3124c631c49492f6.pdf\":\"PM-MK-01_Rev_02[1].pdf\"}', 'null'),
(2, 6, '', 4, '2023-05-26 10:21:14', '2023-05-26 10:58:19', 1, 1, 10, 1, 2, 'กระบวนการผลิต', 'PM-PD-019', '', NULL, 8, 5, '2020-09-04', '48AGMVp9-nLNE4TBKMcxLC', NULL, '{\"cea3adf5cfc687c79dc21b808b11d6a5.pdf\":\"PM-PD-19_Rev_08[1].pdf\"}', 'null'),
(3, 6, '', 4, '2023-05-26 10:26:41', '2023-05-26 10:26:41', 1, 1, 10, 1, 2, 'การทบทวนและเปลี่ยนแปลงข้อตกลง', 'PM-PD-001', '', NULL, 15, 5, '2020-04-25', 'sItYJuRh-ofClUwSLGj03t', NULL, '{\"35ef06fc59fceec72a489ad99f89d9e0.pdf\":\"PM-PD-01_Rev_15[1].pdf\"}', 'null'),
(4, 6, '', 4, '2023-05-26 10:28:51', '2023-05-26 10:28:57', 1, 1, 10, 1, 2, 'การวางแผนการผลิต', 'PM-PD-003', '', NULL, 11, 5, '2020-08-24', 'rPmQHx7eu7bl3mlv7okN3W', NULL, '{\"f0ea3264219283b02564c00422359dce.pdf\":\"PM-PD-03_Rev_11[1].pdf\"}', 'null'),
(5, 6, '', 4, '2023-05-26 10:32:27', '2023-05-26 12:44:20', 1, 1, 22, 1, 3, 'การสอบเทียบเครื่องมือและอุปกรณ์', 'PM-QC-004', '', NULL, 10, 5, '2016-06-15', 'F2ucCcVrbFh9IOBtGFCr-N', NULL, '{\"2820ff13d90a18dfabfaf5ce70ea90cf.pdf\":\"PM-QC-04_Rev_10.pdf\"}', 'null'),
(6, 6, '', 4, '2023-05-26 10:52:52', '2023-05-26 10:52:52', 1, 1, 22, 1, 3, 'การควบคุมผลิตภัณฑ์ที่ไม่เป็นไปตามข้อกำหนด', 'PM-QC-005', '', NULL, 15, 5, '2019-08-07', '57p9r7K4thKXk4uj7WsmbN', NULL, '{\"2d39603e0b53ea9a18243f1de5c88b30.pdf\":\"PM-QC-05_Rev_15[1].pdf\"}', 'null'),
(7, 6, '', 4, '2023-05-26 10:57:09', '2023-05-26 10:57:09', 1, 1, 22, 1, 3, 'การควบคุมกระบวนการผลิตและการแสดงสถานะ', 'PM-QC-007', '', NULL, 6, 5, '2013-04-04', 'ECuCzO3ru5YKowinTO32cB', NULL, '{\"8c312758369558c072b5c381af047cc8.pdf\":\"PM-QC-07_Rev_06[1].pdf\"}', 'null'),
(8, 6, '', 4, '2023-05-26 11:11:11', '2023-05-26 11:11:11', 1, 1, 22, 1, 3, 'การตรวจปล่อยผลิตภัณฑ์', 'PM-QC-008', '', NULL, 1, 5, '2018-09-01', 'p_DECO-u_d0On84qnFeeB2', NULL, '{\"0574767e7e1fb12baa66e50733b21018.pdf\":\"PM-QC-08_Rev_01[1].pdf\"}', 'null'),
(9, 6, '', 4, '2023-05-26 11:12:28', '2023-05-26 11:12:28', 1, 1, 22, 1, 3, 'การทดสอบความชำนาญ (Proficiency Testing) ', 'PM-QC-009', '', NULL, 2, 5, '2017-06-16', 'cKc0qs_nnNwNnAWF5d0ufT', NULL, '{\"47529934ac98fa507e3531edfecc01cf.pdf\":\"PM-QC-09_Rev_02[1].pdf\"}', 'null'),
(10, 6, '', 4, '2023-05-26 11:15:21', '2023-05-26 11:15:21', 1, 1, 24, 1, 4, 'การบำรุงรักษาเครื่องจักร', 'PM-EN-001', '', NULL, 5, 5, '2019-11-23', 'dGAjyAQneD2iCCL24vXWd-', NULL, '{\"3753f4c165976648299c1a91e81ffe13.pdf\":\"PM-EN-01_Rev_05[1].pdf\"}', 'null'),
(11, 6, '', 4, '2023-05-26 11:19:07', '2023-05-26 11:19:07', 1, 1, 19, 1, 5, 'การคัดเลือกและประเมินผู้ขายและผู้ให้บริการ', 'PM-PC-001', '', NULL, 29, 5, '2021-12-01', '75sQ1wpFrzLOUlxCCgNOHJ', NULL, '{\"249ffbdd2856b217519a6d54b06c0296.pdf\":\"PM-PC-01_Rev_29[1].pdf\"}', 'null'),
(12, 6, '', 4, '2023-05-26 11:20:19', '2023-05-26 11:20:19', 1, 1, 19, 1, 5, 'การจัดซื้อ-จัดจ้าง', 'PM-PC-002', '', NULL, 22, 5, '2022-04-04', 'T6Bm-eVyLkhKKLDr4q58fs', NULL, '{\"a7f83293579a01459cd3adb1b63d7323.pdf\":\"PM-PC-02_Rev_22[1].pdf\"}', 'null'),
(13, 6, '', 4, '2023-05-26 11:21:41', '2023-05-26 11:21:41', 1, 1, 19, 1, 5, 'การตรวจติดตามและประเมินความเสี่ยงของผู้ขาย/ผู้ให้บริการ', 'PM-PC-003', '', NULL, 15, 5, '2022-01-04', 'eFgzJTEPHv2pXcFh7vl5EY', NULL, '{\"c9001ba96303df1cdf71875fe5be5c45.pdf\":\"PM-PC-03_Rev_15[1].pdf\"}', 'null'),
(14, 6, '', 4, '2023-05-26 11:23:14', '2023-05-26 11:23:14', 1, 1, 9, 1, 7, 'การพัฒนาผลิตภัณฑ์ใหม่ และการส่งตัวอย่าง', 'PM-RD-001', '', NULL, 22, 5, '2022-12-13', 'gwRZTPE2VxrqtX3XbMm2Qo', NULL, '{\"d3024b49d49f95d068355607a966ed48.pdf\":\"PM-RD-01_Rev_22[1].pdf\"}', 'null'),
(15, 6, '', 4, '2023-05-26 11:25:59', '2023-05-26 11:44:50', 1, 1, 1, 1, 8, 'การจัดการคุณภาพพืชผลทางการเกษตรที่ดี (GAP)', 'PM-AG-001', '', NULL, 0, 5, '2011-08-01', 'Mrioa_fGw006LGVBdVcJZZ', NULL, '{\"2d55b38a62eb344b2d21ca74050fb8c5.pdf\":\"PM-AG-01_Rev_00[1].pdf\"}', 'null'),
(16, 6, '', 4, '2023-05-26 11:28:04', '2023-05-26 11:28:04', 1, 1, 1, 1, 9, 'การทบทวนโดยฝ่ายบริหาร', 'PM-GR-001', '', NULL, 17, 5, '2020-07-07', 'BydA2F4wbRbyM7miOZoQXR', NULL, '{\"24a6edd93b4c4ba79ce150df76a58b25.pdf\":\"PM-GR-01_Rev_17[1].pdf\"}', 'null'),
(17, 6, '', 4, '2023-05-26 11:29:12', '2023-05-26 11:29:12', 1, 1, 1, 1, 9, 'การควบคุมเอกสารและข้อมูล', 'PM-GR-002', '', NULL, 25, 5, '2021-04-28', 'zD7z8jgIbCrRc1ry3EwBn-', NULL, '{\"1c536442fdc84b319819e2e00b5f899e.pdf\":\"PM-GR-02_Rev_25[1].pdf\"}', 'null'),
(18, 6, '', 4, '2023-05-26 11:30:06', '2023-05-26 11:30:06', 1, 1, 1, 1, 9, 'การปฏิบัติการแก้ไขและป้องกัน', 'PM-GR-003', '', NULL, 23, 5, '2020-12-05', 'GGxhKorY11scpvozTMmPpU', NULL, '{\"65c084aa6f7d63b20a7a6b9cf324a663.pdf\":\"PM-GR-03_Rev_23[1].pdf\"}', 'null'),
(19, 6, '', 4, '2023-05-26 11:31:02', '2023-05-26 11:31:02', 1, 1, 1, 1, 9, 'การควบคุมบันทึก', 'PM-GR-004', '', NULL, 15, 5, '2019-09-02', '8sK9pdZsH_8q-QOYxwycNf', NULL, '{\"942d7886c82c25a246d4250972602feb.pdf\":\"PM-GR-04_Rev_15[1].pdf\"}', 'null'),
(20, 6, '', 4, '2023-05-26 11:32:23', '2023-05-26 11:32:23', 1, 1, 1, 1, 9, 'การตรวจติดตามคุณภาพภายใน', 'PM-GR-005', '', NULL, 32, 5, '2021-10-05', 'FPOJS_VbOnBaNnVbMkQxdS', NULL, '{\"32cb46a426e5a12bc0fc4f5d1e9ccb8d.pdf\":\"PM-GR-05_Rev_32[1].pdf\"}', 'null'),
(21, 6, '', 4, '2023-05-26 11:34:24', '2023-05-26 11:34:24', 1, 1, 1, 1, 9, 'การสรรหาว่าจ้าง', 'PM-GR-010', '', NULL, 8, 5, '2016-02-27', 'flrQjoeSt4Vtfnt0TLBEPU', NULL, '{\"83fe7d4f9f81e228db57c53c98973b69.pdf\":\"PM-GR-10_Rev_09[1].pdf\"}', 'null'),
(22, 6, '', 4, '2023-05-26 11:35:47', '2023-05-26 11:35:47', 1, 1, 1, 1, 9, 'การวัดความพึงพอใจของลูกค้า', 'PM-GR-018', '', NULL, 8, 5, '2020-04-16', 'xqm73dZPdCmSQQuAkd3CrG', NULL, '{\"a3b22e3a4c7ec563b243501b30a5603d.pdf\":\"PM-GR-18_Rev_08[1].pdf\"}', 'null'),
(23, 6, '', 4, '2023-05-26 11:36:53', '2023-05-26 11:36:53', 1, 1, 1, 1, 9, 'การสื่อสาร', 'PM-GR-019', '', NULL, 13, 5, '2017-08-10', 'Cs7VmSYUf4Xpc6EZqDA1AO', NULL, '{\"6e493c4ba0114a38aa891d8dfbef01cb.pdf\":\"PM-GR-19_Rev_13[1].pdf\"}', 'null'),
(24, 6, '', 4, '2023-05-26 11:39:15', '2023-05-26 11:39:15', 1, 1, 1, 1, 9, 'การชี้บ่งและสอบกลับได้ของผลิตภัณฑ์', 'PM-GR-020', '', NULL, 7, 5, '2019-01-28', 'Ubbg1JGKPvJQDYhJvGRjS5', NULL, '{\"faf080af9ed350c07f754c73e4173c59.pdf\":\"PM-GR-20_Rev_07[1].pdf\"}', 'null'),
(25, 6, '', 4, '2023-05-26 11:40:02', '2023-05-26 11:40:02', 1, 1, 1, 1, 9, 'การดูแลทรัพย์สินของลูกค้า', 'PM-GR-021', '', NULL, 6, 5, '2021-04-01', '_OOzX6RzKGvbbwdubT-x41', NULL, '{\"66da6c1719476fe97692898e194203d5.pdf\":\"PM-GR-21_Rev_06[1].pdf\"}', 'null'),
(26, 6, '', 4, '2023-05-26 11:40:51', '2023-05-26 11:40:51', 1, 1, 1, 1, 9, 'การจัดทำข้อบังคับเกี่ยวกับการทำงาน', 'PM-GR-022', '', NULL, 1, 5, '2016-07-29', 'jrlt5O5QnLBD-6v_Kvchf7', NULL, '{\"080b36f2ecae68067ad5888fdc87c0b3.pdf\":\"PM-GR-22_Rev_01[1].pdf\"}', 'null'),
(27, 6, '', 4, '2023-05-26 11:41:42', '2023-05-26 11:41:42', 1, 1, 1, 1, 9, 'การกำหนดหน้าที่งาน', 'PM-GR-023', '', NULL, 1, 5, '2017-08-01', 'Jucl4mLtLDZg0meqB1qvLN', NULL, '{\"0accec5d528e861f7d65161a15b0a7db.pdf\":\"PM-GR-23_Rev_01[1].pdf\"}', 'null'),
(28, 6, '', 4, '2023-05-26 11:42:31', '2023-05-26 11:42:31', 1, 1, 1, 1, 9, 'ความปลอดภัยด้านสารสนเทศ', 'PM-GR-024', '', NULL, 3, 5, '2017-06-14', '4sx_pHJ9bfHh98rjnBum00', NULL, '{\"79902b5dcd02f291f4cec2c12040b8d8.pdf\":\"PM-GR-24_Rev_03[1].pdf\"}', 'null'),
(29, 6, '', 4, '2023-05-26 11:43:44', '2023-05-26 11:43:44', 1, 1, 1, 1, 9, 'การควบคุมอาหารที่ทำให้เกิดภูมิแพ้', 'PM-GR-025', '', NULL, 9, 5, '2019-07-01', 'a56NUlVe5O6zE3Ef5tzaxq', NULL, '{\"4d3ecd8afeef36464117d35c7961da0e.pdf\":\"PM-GR-25_Rev_09[1].pdf\"}', 'null'),
(30, 6, '', 4, '2023-05-26 11:44:29', '2023-05-26 11:44:29', 1, 1, 1, 1, 9, 'การเตรียมการ และตอบสนองสถานการณ์ฉุกเฉิน', 'PM-GR-026', '', NULL, 3, 5, '2021-03-15', 'lzdE9cvEHZyY925dEmNAqA', NULL, '{\"42645723b983283fb973cc43ead34ddf.pdf\":\"PM-GR-26_Rev_03[1].pdf\"}', 'null'),
(31, 6, '', 4, '2023-05-26 11:46:22', '2023-05-26 11:46:22', 1, 1, 1, 1, 9, 'การปกป้องและการคุ้มครองอาหารที่ผลิต', 'PM-GR-027', '', NULL, 3, 5, '2020-06-15', 'vqbY_cpGmxaazx62q3T82F', NULL, '{\"edf8c2356d68078e5978510260c77d78.pdf\":\"PM-GR-27_Rev_03[1].pdf\"}', 'null'),
(32, 6, '', 4, '2023-05-26 11:47:15', '2023-05-26 11:47:15', 1, 1, 1, 1, 9, 'การจัดการกฎหมายอาหาร', 'PM-GR-028', '', NULL, 1, 5, '2013-11-13', 'XkU47ZZ-p463WlGmmVnA2l', NULL, '{\"4b44de3b22aaf86077e300accf4903b4.pdf\":\"PM-GR-28_Rev_01[1].pdf\"}', 'null'),
(33, 6, '', 4, '2023-05-26 11:47:58', '2023-05-26 11:47:58', 1, 1, 1, 1, 9, 'การควบคุมบุคคลภายนอก', 'PM-GR-029', '', NULL, 1, 5, '2017-07-25', '4HojVybQbdpQitxtmnoGuq', NULL, '{\"958100874a28ccb88c997adf029ffcd4.pdf\":\"PM-GR-29_Rev_01[1].pdf\"}', 'null'),
(34, 6, '', 4, '2023-05-26 11:49:05', '2023-05-26 11:49:05', 1, 1, 1, 1, 9, 'การควบคุมฉลาก หรือ ตราสินค้าบนผลิตภัณฑ์ หรือบรรจุภัณฑ์ ที่ไม่ปลอดภัยต่อการบริโภค หรือที่จำหน่ายเป็นขยะ', 'PM-GR-030', '', NULL, 1, 5, '2018-09-01', 'B1mbshEoSIIrsvTald7pyy', NULL, '{\"0a956a66feb435f15bd08d2bc7b28a67.pdf\":\"PM-GR-30_Rev_01[1].pdf\"}', 'null'),
(35, 6, '', 4, '2023-05-26 11:49:55', '2023-05-26 11:49:55', 1, 1, 1, 1, 9, 'การบริหารการเปลี่ยนแปลง ( management of change)', 'PM-GR-031', '', NULL, 3, 5, '2019-09-21', '3TMgLuVOp2bcMfC6X501sU', NULL, '{\"3d1ab6d6a2e88e2a29edcdbffced962b.pdf\":\"PM-GR-31_Rev_03[1].pdf\"}', 'null'),
(36, 6, '', 4, '2023-05-26 11:50:48', '2023-05-26 11:50:48', 1, 1, 1, 1, 9, 'วัตถุประสงค์และเป้าหมายหลัก(KPI) และ วัตถุประสงค์และเป้าหมายรอง (PI)', 'PM-GR-032', '', NULL, 3, 5, '2019-09-21', 's_D9UGrn-bqzm-K8Fr00Ub', NULL, '{\"3b79a7ac106682d85ec611ebb63b2ab0.pdf\":\"PM-GR-31_Rev_03[1].pdf\"}', 'null'),
(37, 6, '', 4, '2023-05-26 11:51:52', '2023-05-26 11:51:52', 1, 1, 1, 1, 9, 'การสำรวจความสุขของพนักงาน', 'PM-GR-033', '', NULL, 0, 5, '2017-10-01', 'j7yod-NHpGdTh2RunRJRsk', NULL, '{\"34621039d46e127829ca18303c59ba8e.pdf\":\"PM-GR-33_Rev_00[1].pdf\"}', 'null'),
(38, 6, '', 4, '2023-05-26 11:52:35', '2023-05-26 11:52:35', 1, 1, 1, 1, 9, 'การตรวจสอบแบบฉลากและหีบห่อ', 'PM-GR-034', '', NULL, 3, 5, '2020-02-17', 'l_eHGM7fvPT3XO-eV2x3_c', NULL, '{\"d21170c297ff2cf9314a932097d6b3a6.pdf\":\"PM-GR-34_Rev_03[1].pdf\"}', 'null'),
(39, 6, '', 4, '2023-05-26 11:53:49', '2023-05-26 11:53:49', 1, 1, 1, 1, 11, 'การชี้บ่งและการประเมินลักษณะปัญหาด้านสิ่งแวดล้อม', 'PM-EM-001', '', NULL, 5, 5, '2017-08-15', 'wto2JCKEKf2YjX-YLYF2EU', NULL, '{\"ae20c7c616fa29fdad9435d5a48d3eef.pdf\":\"PM-EM-01_Rev_05[1].pdf\"}', 'null'),
(40, 6, '', 4, '2023-05-26 11:54:44', '2023-05-26 11:54:44', 1, 1, 1, 1, 11, 'การจัดการกฎหมาย และข้อกำหนดอื่น ๆ', 'PM-EM-002', '', NULL, 10, 5, '2020-09-28', '3ywvblL8zRLquz5dGdTCzD', NULL, '{\"d29a6b570b5d7b8018e4706ff046f0b9.pdf\":\"PM-EM-02_Rev_10[1].pdf\"}', 'null'),
(41, 6, '', 4, '2023-05-26 11:55:30', '2023-05-26 11:55:30', 1, 1, 1, 1, 11, 'แผนควบคุมภาวะฉุกเฉิน', 'PM-EM-003', '', NULL, 6, 5, '2020-06-01', 'g1x6GSIRPxDTotZDaJBdGx', NULL, '{\"395c33ef27b005eccf682d6196a1367a.pdf\":\"PM-EM-03_Rev_06[1].pdf\"}', 'null'),
(42, 6, '', 4, '2023-05-26 11:56:13', '2023-05-26 11:56:13', 1, 1, 1, 1, 11, 'การติดตามตรวจสอบ การตรวจวัด และ การประเมินความสอดคล้อง', 'PM-EM-004', '', NULL, 7, 5, '2020-06-01', 'N1PrntKKoSIi6mSclTu8Wi', NULL, '{\"cf7067cfb4eca1dd971433812cf36d8f.pdf\":\"PM-EM-04_Rev_07[1].pdf\"}', 'null'),
(43, 6, '', 4, '2023-05-26 11:57:01', '2023-05-26 11:57:01', 1, 1, 1, 1, 11, 'การเตรียมพร้อมกรณีฉุกเฉิน และตอบโต้', 'PM-EM-005', '', NULL, 5, 5, '2020-06-01', '6epB9CBHZZPkxU1QL2IzC1', NULL, '{\"1eed76646dd8ca85359ce0c409c3f1ed.pdf\":\"PM-EM-05_Rev_05[1].pdf\"}', 'null'),
(44, 6, '', 4, '2023-05-26 11:58:01', '2023-05-26 11:58:01', 1, 1, 1, 1, 11, 'การจัดการขยะมีพิษ', 'PM-EM-007', '', NULL, 1, 5, '2015-11-02', 'gq6waHuFbNHUcZdRAgzFkT', NULL, '{\"3e7bb7627d9587d57e0b8bb723bae397.pdf\":\"PM-EM-07_Rev_01[1].pdf\"}', 'null'),
(45, 6, '', 4, '2023-05-26 12:00:34', '2023-05-26 12:00:34', 1, 1, 1, 1, 12, 'การชี้บ่งอันตราย และ การประเมินความเสี่ยง', 'PM-HS-001', '', NULL, 6, 5, '2022-06-01', 'kPykxSoFpF63__So8uS6W-', NULL, '{\"1dbda1bcd8d4a1c83f9f9397031acc5b.pdf\":\"PM-HS-01_Rev_06[1].pdf\"}', 'null'),
(46, 6, '', 4, '2023-05-26 12:01:21', '2023-05-26 12:01:21', 1, 1, 1, 1, 12, 'การควบคุมการปฏิบัติ', 'PM-HS-002', '', NULL, 1, 5, '2019-09-09', '4_ysnqBr1uJF77vSVk_EEu', NULL, '{\"cd67af88465437d1c5e0ce7e36c31f38.pdf\":\"PM-HS-02_Rev_01[1].pdf\"}', 'null'),
(47, 6, '', 4, '2023-05-26 12:02:01', '2023-05-26 12:02:01', 1, 1, 1, 1, 12, 'การรายงาน การสอบสวน การติดตาม การแก้ไขอุบัติเหตุ หรืออุบัติการณ์', 'PM-HS-003', '', NULL, 1, 5, '2016-03-10', '5UfGRsY8oBbg4Yi3W4e1-y', NULL, '{\"f3d85af933892236bf993abb4fbcc3fd.pdf\":\"PM-HS-03_Rev_01[1].pdf\"}', 'null'),
(48, 6, '', 4, '2023-05-26 12:02:48', '2023-05-26 12:02:48', 1, 1, 1, 1, 12, 'การตรวจความปลอดภัย', 'PM-HS-004', '', NULL, 5, 5, '2020-09-07', '7ZhckylLlGQWTJpIul75Df', NULL, '{\"845976b23a4310bc086d7ee878c6982b.pdf\":\"PM-HS-04_Rev_05[1].pdf\"}', 'null'),
(49, 6, '', 4, '2023-05-26 12:38:21', '2023-05-26 12:38:21', 1, 1, 1, 1, 13, 'การวางแผนการผลิต และการควบคุมการผลิต', 'PM-PCC-001', '', NULL, 0, 5, '2018-12-15', 'fmgQrcye9rAKynWxOhXZex', NULL, '{\"9a4537ec457ef25b5daf39c821d48369.pdf\":\"PM-PCC-01_Rev_00[1].pdf\"}', 'null'),
(50, 6, '', 4, '2023-05-26 12:39:05', '2023-05-26 12:39:05', 1, 1, 1, 1, 13, 'การวางแผนการสั่งซื้อวัตถุดิบและบรรจุภัณฑ์', 'PM-PCC-002', '', NULL, 0, 5, '2022-09-05', '3NMrvuSpZb5n7fSmTMWDj5', NULL, '{\"b66f8f29aa97bcfed0750980e072bae9.pdf\":\"PM-PCC-02_Rev_00[1].pdf\"}', 'null'),
(51, 6, '', 4, '2023-05-26 12:40:16', '2023-05-26 12:40:16', 1, 1, 1, 2, 2, 'เวลาที่ใช้ในแต่ละขั้นตอนการผลิต', 'ST-PD-001', '', NULL, 1, 5, '2014-08-20', 'mt-tjnFSdnjCDu-CAy_dCN', NULL, '{\"6f5b5fb0cb54dde60fa9abbe59aa4081.pdf\":\"ST-PD-01_Rev_01[1].pdf\"}', 'null'),
(52, 6, '', 4, '2023-05-26 12:41:20', '2023-05-26 12:41:20', 1, 1, 1, 2, 2, 'อัตราส่วนวัตถุดิบ', 'ST-PD-002', '', NULL, 20, 5, '2019-08-08', 'OJnBfWU0PVCCmvqF_QBKWZ', NULL, '{\"ab26c4c44331e86f0ea547fa418a359e.pdf\":\"ST-PD-02_Rev_20[1].pdf\"}', 'null'),
(53, 6, '', 4, '2023-05-26 12:42:18', '2023-05-26 12:42:18', 1, 1, 1, 2, 2, 'การคั่วบดข้าวสาลี/ข้าวสาร', 'ST-PD-003', '', NULL, 12, 5, '2011-09-15', 'MJ7ykVMAjJMzXhzjI_pR9y', NULL, '{\"c93dc0336644b422cab4f5db490eb963.pdf\":\"ST-PD-03_Rev_12[1].pdf\"}', 'null'),
(54, 6, '', 4, '2023-05-26 12:43:07', '2023-05-26 12:43:07', 1, 1, 1, 2, 2, 'การนึ่งถั่วเหลือง', 'ST-PD-004', '', NULL, 15, 5, '2011-12-15', 'xJlME1cXuLgTpV38BLUmZR', NULL, '{\"b921891379dac36ff3039a4bb3ec4b15.pdf\":\"ST-PD-04_Rev_15[1].pdf\"}', 'null'),
(55, 6, '', 4, '2023-05-26 12:45:34', '2023-05-26 12:45:34', 1, 1, 1, 2, 2, 'การเตรียมน้ำเกลือ', 'ST-PD-005', '', NULL, 14, 5, '2018-12-10', '81g6_sslTnMJ9w0FIrDfLS', NULL, '{\"dd137b997ab1fd1570b32a40a29012ba.pdf\":\"ST-PD-05_Rev_14[1].pdf\"}', 'null'),
(56, 6, '', 4, '2023-05-26 12:46:21', '2023-05-26 12:46:21', 1, 1, 1, 2, 2, 'การทำKOJI', 'ST-PD-006', '', NULL, 8, 5, '2017-01-03', 'BrVozXYleqMue8s2ts7hlW', NULL, '{\"65281aa3506bf06f8e6b91d8806fa0a4.pdf\":\"ST-PD-06_Rev_08[1].pdf\"}', 'null'),
(57, 6, '', 4, '2023-05-26 12:47:09', '2023-05-26 12:47:09', 1, 1, 1, 2, 2, 'การเพาะยีสต์', 'ST-PD-007', '', NULL, 9, 5, '2021-12-15', 'FXjZUv7POSDIcpWzWA2v5l', NULL, '{\"5bd493a552b5c8767b9b541c91556ebd.pdf\":\"ST-PD-07_Rev_09[1].pdf\"}', 'null'),
(58, 6, '', 4, '2023-05-26 12:48:13', '2023-05-26 12:48:13', 1, 1, 1, 2, 2, 'การหมัก MOROMI', 'ST-PD-008', '', NULL, 9, 5, '2020-11-28', '7RwUSZ-jYk7SrFU9qUP6zX', NULL, '{\"5654b9efb800908750c901659e21aa2d.pdf\":\"ST-PD-08_Rev_09[1].pdf\"}', 'null'),
(59, 6, '', 4, '2023-05-26 12:49:23', '2023-05-26 12:49:23', 1, 1, 1, 2, 2, 'การคั้น MOROMI', 'ST-PD-009', '', NULL, 7, 5, '2018-12-03', '60UwLp4OrgcWTl3dg-oJQk', NULL, '{\"a7b1a0d5f270e4e4d6e82365a356041f.pdf\":\"ST-PD-09_Rev_07[1].pdf\"}', 'null'),
(60, 6, '', 4, '2023-05-26 12:50:38', '2023-05-26 12:50:38', 1, 1, 1, 2, 2, 'ตารางเทียบความลึกกับปริมาตรโมโรมิในถังหมัก 50 ตัน (ถังไฟเบอร์กลาส)', 'ST-PD-015', '', NULL, 2, 5, '2015-01-01', 'ti7SiPspJhqjJ2efmzXGI0', NULL, '{\"710c007b794831d7d07c818006ae6b69.pdf\":\"ST-PD-15_Rev_02[1].pdf\"}', 'null'),
(61, 6, '', 4, '2023-05-26 12:51:50', '2023-05-26 12:51:50', 1, 1, 1, 2, 2, 'เวลาที่ใช้แต่ละขั้นตอนการผลิตน้ำส้ม', 'ST-PD-016', '', NULL, 0, 5, '2020-08-26', 'FBneTWn4xo-Gm067YKwfr7', NULL, '{\"070180e8a67905467e73b401b16d0416.pdf\":\"ST-PD-16_Rev_00[1].pdf\"}', 'null'),
(62, 6, '', 4, '2023-05-26 12:52:56', '2023-05-26 12:52:56', 1, 1, 1, 2, 2, 'เวลาที่ใช้แต่ละขั้นตอนการผลิตมิโซะ', 'ST-PD-017', '', NULL, 0, 5, '2020-08-26', 'CoK9eUrsetJNj7t7biWOgd', NULL, '{\"89b0550fabbe780627ff51fb72a8e3ae.pdf\":\"ST-PD-17_Rev_00[1].pdf\"}', 'null'),
(63, 6, '', 4, '2023-05-26 12:54:31', '2023-05-26 12:54:31', 1, 1, 1, 2, 3, 'มาตรฐานจำนวนเชื้อ', 'ST-QC-005', '', NULL, 4, 5, '2020-09-14', 'aGc_SQ3QRTKhtQ_FGvtN8W', NULL, '{\"2fa235971f869646141ae487e2cf44d2.pdf\":\"ST-QC-05_Rev_04[1].pdf\"}', 'null'),
(64, 6, '', 4, '2023-05-26 12:55:28', '2023-05-26 12:55:28', 1, 1, 1, 2, 3, 'มาตรฐานการ Swab Test', 'ST-QC-006', '', NULL, 10, 5, '2018-01-08', 'axFhjPbuRuW2neF3c0hLFD', NULL, '{\"b5d193c3bbfeab6bd3561c651c2487fb.pdf\":\"ST-QC-06_Rev_10[1].pdf\"}', 'null'),
(65, 6, '', 4, '2023-05-26 12:57:42', '2023-05-26 12:57:42', 1, 1, 1, 2, 3, 'มาตรฐานอายุผลิตภัณฑ์', 'ST-QC-008', '', NULL, 7, 5, '2020-09-14', 'b525GVEtYFfk54d33G48xE', NULL, '{\"7f2d550f823d7313f6c4636c25264dc9.pdf\":\"ST-QC-08_Rev_07[1].pdf\"}', 'null'),
(66, 6, '', 4, '2023-05-26 12:58:35', '2023-05-26 12:58:35', 1, 1, 1, 2, 3, 'มาตรฐานสินค้าและบรรจุภัณฑ์', 'ST-QC-009', '', NULL, 0, 5, '2013-05-01', 'rHITaMBEdrZaH2Q62_in0W', NULL, '{\"3f5f7673e23500e77ff381f0164593dc.pdf\":\"ST-QC-09_Rev_00[1].pdf\"}', 'null');

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
  `document_revision` float DEFAULT NULL COMMENT 'แก้ไขครั้งที่',
  `document_ref` varchar(255) DEFAULT NULL COMMENT 'เอกสารอ้างอิง',
  `document_tags` varchar(255) DEFAULT NULL COMMENT '#tag',
  `points_id` int DEFAULT NULL COMMENT 'จุดรับเอกสาร',
  `reviewer_comment` text COMMENT 'ความคิดเห็นของผู้ทบทวน',
  `additional_training` text COMMENT 'การอบรมเพิ่มเติม',
  PRIMARY KEY (`id`),
  KEY `fk_reviewer_requester1_idx` (`requester_id`),
  KEY `fk_reviewer_user1_idx` (`reviewer_name`),
  KEY `fk_reviewer_points1_idx` (`points_id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `reviewer`
--

INSERT INTO `reviewer` (`id`, `requester_id`, `reviewer_name`, `reviewer_at`, `document_revision`, `document_ref`, `document_tags`, `points_id`, `reviewer_comment`, `additional_training`) VALUES
(1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 21, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 22, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, 24, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, 25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, 26, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, 27, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, 28, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, 29, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30, 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, 31, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32, 32, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(33, 33, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(34, 34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(35, 35, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(36, 36, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(37, 37, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(38, 38, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(39, 39, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40, 40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(41, 41, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(42, 42, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(43, 43, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(44, 44, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(45, 45, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(46, 46, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(47, 47, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(48, 48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(49, 49, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(50, 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(51, 51, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(52, 52, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(53, 53, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(54, 54, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(55, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(56, 56, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(57, 57, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(58, 58, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(59, 59, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(60, 60, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(61, 61, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(62, 62, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(63, 63, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(64, 64, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(65, 65, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(66, 66, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sam`
--

DROP TABLE IF EXISTS `sam`;
CREATE TABLE IF NOT EXISTS `sam` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ref` varchar(50) DEFAULT NULL,
  `covenant` varchar(255) DEFAULT NULL,
  `docs` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `sam`
--

INSERT INTO `sam` (`id`, `ref`, `covenant`, `docs`) VALUES
(2, 'DK-zL98nbRKpIDsyqjtJPa', '{\"1684558077.pdf\":\"FM-GR-150 Rev.01.pdf\"}', 'null');

-- --------------------------------------------------------

--
-- Table structure for table `social_account`
--

DROP TABLE IF EXISTS `social_account`;
CREATE TABLE IF NOT EXISTS `social_account` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `provider` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `client_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `data` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `code` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `created_at` int DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
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
  `stamp_name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci COMMENT 'ประทับตรา',
  `color` varchar(45) DEFAULT NULL COMMENT 'สี',
  `content` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `stamps`
--

INSERT INTO `stamps` (`id`, `stamp_code`, `stamp_name`, `color`, `content`) VALUES
(1, 'Master', 'ต้นฉบับ', '#0000ff', '1-4d514b7273a0fcbb72b0c249055a2dab.jpg'),
(2, 'Controlled', 'เอกสารควบคุม', '#e06666', NULL),
(3, 'Uncontrolled', 'เอกสารไม่ควบคุม', '#6aa84f', NULL),
(4, 'Canceled', 'ยกเลิก', '#434343', NULL);

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
(2, 'Review', 'รอทบทวน', '#ff9900'),
(3, 'Approve', 'รออนุมัติ', '#0000ff'),
(4, 'Success', 'เสร็จ', '#34870a');

-- --------------------------------------------------------

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `user_id` int NOT NULL,
  `code` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
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
  `color` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT 'สี',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `types`
--

INSERT INTO `types` (`id`, `type_name`, `type_details`, `color`) VALUES
(1, 'New Document', 'ขอจัดทำ', '#ff00ff'),
(2, 'Edit', 'ขอแก้ไข', '#ff6000'),
(3, 'Cancel', 'ขอยกเลิก', '#434343'),
(4, 'Copy Control', 'ขอสำเนา ควบคุม', '#6aa84f'),
(5, 'Copy Not Control', 'ขอสำเนา ไม่ควบคุม', '#cc0000'),
(6, 'Master', 'ต้นแบบ', '#0000ff');

-- --------------------------------------------------------

--
-- Table structure for table `uploads`
--

DROP TABLE IF EXISTS `uploads`;
CREATE TABLE IF NOT EXISTS `uploads` (
  `upload_id` int NOT NULL AUTO_INCREMENT,
  `ref` varchar(45) DEFAULT NULL,
  `file_name` varchar(200) DEFAULT NULL,
  `real_filename` varchar(200) DEFAULT NULL,
  `create_date` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`upload_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `uploads`
--

INSERT INTO `uploads` (`upload_id`, `ref`, `file_name`, `real_filename`, `create_date`) VALUES
(12, 'kE5aS7EjNumiRZ9dFUHpmZ', 'FM-GR-07 Rev.13.pdf', 'f301641a8ef176f070e41afdf1499852.pdf', NULL),
(13, 'kE5aS7EjNumiRZ9dFUHpmZ', 'How production tracking is made. - YouTube10.png', 'e6404e80a8daa717be8d34d809eb38e0.png', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `password_hash` varchar(60) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `auth_key` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `confirmed_at` int DEFAULT NULL,
  `unconfirmed_email` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `blocked_at` int DEFAULT NULL,
  `registration_ip` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `created_at` int NOT NULL,
  `updated_at` int NOT NULL,
  `flags` int NOT NULL DEFAULT '0',
  `last_login_at` int DEFAULT NULL,
  `status` int DEFAULT '10',
  `role` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_unique_username` (`username`),
  UNIQUE KEY `user_unique_email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `password_hash`, `auth_key`, `confirmed_at`, `unconfirmed_email`, `blocked_at`, `registration_ip`, `created_at`, `updated_at`, `flags`, `last_login_at`, `status`, `role`) VALUES
(1, 'admin', 'admin@admin.com', '$2y$12$M0hFXxztKZxCnaOnGJjrpOmQtnEPHqRbvE7spj4xkCVnT11VBcOaO', 'VPaMQzLRVu6gsDMqaZL9rwHiVdWwVFe3', 1682481192, NULL, NULL, '::1', 1682481077, 1682481077, 0, 1685074056, 10, NULL),
(2, 'theerapong', 'theerapong.khan@gmail.com', '$2y$12$wgw0evelJYnHo.OYJ6Oy7uSXkJuj/hc.KyN5Ua69k9EVzMZSPWH8S', 'l8eCAXjpfUIMnx1YKbKqw3xcBEA0D1T-', 1682481206, NULL, NULL, '::1', 1682481093, 1682481093, 0, 1685073971, 10, NULL),
(3, 'onanong', 'onanong@gmail.com', '$2y$12$hZYzUyddqbQgj.ZhVpYnk.HLsxue7JE6X10xAisAm97RV9O4Baque', 'GtUzBcGWelbaJ9MVBMz8I6o1XVUVhsMM', 1682481209, NULL, NULL, '::1', 1682481101, 1682481101, 0, 1685000180, 10, NULL),
(4, 'supanna', 'supanna@email.com', '$2y$12$JrgSpLqoe07bm0bVnPKR7O3/uZ1ubwIKHy5QOLxHMqThm24kf/ZLK', 'H4Gv7l_-KVl-TfLQo39JXcJJKHvz0o7c', 1682481210, NULL, NULL, '::1', 1682481110, 1682481110, 0, 1685003549, 10, NULL),
(5, 'peeranai', 'peeranai@gmail.com', '$2y$12$pkdao7ym04wlz08kyxj.l.5undNMHcst/0EzM1mzHebUMoqxVt436', 'kbcu9EyXHp2BeliynrSsZ5Skq1ASeLe8', 1682481212, NULL, NULL, '::1', 1682481121, 1682481121, 0, NULL, 10, NULL),
(6, 'sawika', 'sawika@email.com', '$2y$12$O3tNFBcq9cpEtcHqCTolDucXMtIb5knWKjHOL2OSL5N7UKkXdtoui', 's4v4f4FElf3N2uPdx6GZYLMy5mS8rNCd', 1683792969, NULL, NULL, '::1', 1683792969, 1683793430, 0, 1684744049, 10, NULL),
(7, 'araya', 'acc.nfcfa@gmail.com', '$2y$12$NrzWMCnFlYaX6ThguT8d9.PNE.euAzbH8Qse4.Y4qoj3fh33lqLSe', 'JLEI5sdHVlrhamckF6VXpy3heJfk6nQ9', 1683792990, NULL, NULL, '::1', 1683792990, 1683792990, 0, NULL, 10, NULL),
(8, 'kannika', 'kannika@nfc.com', '$2y$12$xffTyxflca52nU71YNdrpOrCfkwZaLWa/XtdCdYxmPvTRYcCov1eG', 'L57bjEoDoyL4EakO9ft3WombnlQsQ1Bc', 1683793010, NULL, NULL, '::1', 1683793010, 1683793010, 0, NULL, 10, NULL),
(9, 'watasara', 'lee_lew@hotmail.com', '$2y$12$2AZYznE2urQ9mo.nm9c0duZ7ANIIage.cC0nBYWsDCXjIEVLgJGc2', 'e3Wz-hxQL4ftWXyNYuiDoiecAegiHGq8', 1683793026, NULL, NULL, '::1', 1683793026, 1683793026, 0, NULL, 10, NULL),
(10, 'yosaporn', 'ypayakayat@yahoo.com', '$2y$12$z/5HU4gOYMv2rbIIf03PiuRM0Ohb8J7wjlA1X0dwvnRUxwYs9Dgvq', 'jQZ4ahmM-ow9KnGYwcn302ay3bX3wON6', 1683793047, NULL, NULL, '::1', 1683793047, 1683793047, 0, 1685074018, 10, NULL),
(11, 'taweekiat', 'd.taweekiat@gmail.com', '$2y$12$.MQq.u7Wb7UZkzTsL1VvmO.rzraFIdaghwb.bMGl/BujX9ab.MrRq', '8wWbkMZ4wN95vSxELWypKe3EHIBaTqPO', 1683793061, NULL, NULL, '::1', 1683793061, 1683793061, 0, NULL, 10, NULL),
(12, 'kullanitnaree', 'kullanitnaree@nfc.com', '$2y$12$OpKiXAEkMBkkX7jLo6XrhORV587pEAB7RaEYGrgz1MRKXWdYNw/2i', 'gXFVNvr0CSpX3AuLh7fMaSLkJJpeJg31', 1683793076, NULL, NULL, '::1', 1683793076, 1683793076, 0, NULL, 10, NULL),
(13, 'jiraporn', 'jiraporn@nfc.com', '$2y$12$O3duTGbmOGQCdabVNtGOIO7tFxKyEZffPJWvAuu7ynDJOgJNdVliO', 'SCe8MGcoRhYeKi7vavwMufJeUUUdrdUd', 1683793090, NULL, NULL, '::1', 1683793090, 1683793090, 0, NULL, 10, NULL),
(14, 'lapaeporn', 'lapaeporn@nfc.com', '$2y$12$1MnkoqAQ3bFvH39fr4afj.EA6WKGWPPNyP500pN/AqxERayxPg056', 'BHUBCxcZpztXEl_y26ZPMtV_KnwoYeHU', 1683793107, NULL, NULL, '::1', 1683793107, 1683793107, 0, NULL, 10, NULL),
(15, 'ratsamee', 'ratsamee@nfc.com', '$2y$12$FYc7l3HRZz9Su.pLPiop0u.dclzn7M9zUeSlurwtINYkqwGoFEbCu', 'iD4Vuipm5XWq5ryszxzwPFDkOOi5oc29', 1683793119, NULL, NULL, '::1', 1683793119, 1683793119, 0, NULL, 10, NULL),
(16, 'thaksin', 'notethaksin@hotmail.com', '$2y$12$3q7fpwnOleGTfPDsZxR1fek.tFT.7a.NRZTfnqJzeOFYhjI9UlEXK', 'ltM24mSBdAYkooq7t-AVUjtrBrsK2_G8', 1683793130, NULL, NULL, '::1', 1683793130, 1683793130, 0, NULL, 10, NULL),
(17, 'chadaporn', 'kaewkhamchadaporn@gmail.com', '$2y$12$LujF5jw2pZmCtpNE.CI/Lu8Y1mWER6Obn3NMvSN3SLPcH..ntVCEe', 'R5sYXX_Cp7k-hDa0v8Im-p3E1WHhgyx2', 1683793141, NULL, NULL, '::1', 1683793141, 1683793141, 0, NULL, 10, NULL),
(18, 'pranee', 'pranee@nfc.com', '$2y$12$RFa71D2fkjU5TGqbDEyFaOgzNBOq2l2PonqDNt9.a9Pi/ltz8lOw2', 'AgrQBEnC4usd05AdIzGvYP63tACwB1dG', 1683793166, NULL, NULL, '::1', 1683793166, 1683793166, 0, NULL, 10, NULL),
(19, 'premmika', 'premmika2910@gmail.com', '$2y$12$aV3Dus0NhZcn2w3wBVn/U.9bbswMETIF4XjlZE3UMBlAD.7tFM/T.', 'EjMUtCt6y_Hkt1uRFsF5EOQlBEGTsUAN', 1683793180, NULL, NULL, '::1', 1683793180, 1683793180, 0, 1684744118, 10, NULL),
(20, 'tanyarat', 'Nimwong2539@gmail.com', '$2y$12$WmDURu17WodhrGE.orah0.AZwZAcScOQwuGQalWwKhkJcqyid48J6', 'RcPfw0huWobtF5xILVloNxg0CtxF7WuJ', 1683793191, NULL, NULL, '::1', 1683793191, 1683793191, 0, NULL, 10, NULL),
(21, 'charinee', 'charinee@nfc.com', '$2y$12$DhVkil5ut9Cs04ezhdfp1ulkgoyDSD9nw8j9OMzYVptJnYid6LarG', '1oImVHdvLcJfCDpM2HvrOSu7cmqGBh-Y', 1683793203, NULL, NULL, '::1', 1683793203, 1683793203, 0, NULL, 10, NULL),
(22, 'prakaiwan', 'prakaiwan4213@gmail.com', '$2y$12$RB52vDO.vrWheFBqg4Zeo.RuWqkwvOn1rZPS85KFCZ3dRv6CQ9yGa', 'UQQF5MDyCqFDzForMDbe6vZJpv95X8Al', 1683793214, NULL, NULL, '::1', 1683793214, 1683793214, 0, NULL, 10, NULL),
(23, 'suriya', 'suriyasompatch@gmail.com', '$2y$12$C4xc4c3Lg.l7DVsyg4BQYe1cKnQOAmzYjro4K4ucGcT0Jy4JqbIFK', '7yTvVQ07qAL3hyoze5O46NbNhvs5QH9i', 1683793225, NULL, NULL, '::1', 1683793225, 1683793225, 0, NULL, 10, NULL),
(24, 'suphot', 'changkhong.8777@gmail.com', '$2y$12$qtUlDIw66IXTDrfoABmq/.eRz.9wMw/KF31AwZgCab3EEDCrYw5fm', 'eYevE-riqu1KNIfQHmgR_59NCbDVgvxH', 1683793236, NULL, NULL, '::1', 1683793236, 1683793236, 0, 1684999963, 10, NULL),
(25, 'natthaphon', 'natthaphon@nfc.com', '$2y$12$a9mtTJ0gxfhUcsq8j.fp5O41G5wzWbE9b/zvOFcavISZJ4Bep46V.', '45a51OLBtvaN5JfVVAYp5omrDcaD5tKs', 1683793247, NULL, NULL, '::1', 1683793247, 1683793247, 0, NULL, 10, NULL),
(26, 'sarawut', 'en.nfc2016@gmail.com', '$2y$12$YmNAxic6cTsLgvI1ed9O5efepj684pVoEDle.ClzThUJV6/SUzS82', 'XVG744_T2RsUjT1SZ_D_ANro3khRALsB', 1683793260, NULL, NULL, '::1', 1683793260, 1683793260, 0, 1684303771, 10, NULL),
(27, 'yosapon', 'yosapon@nfc.com', '$2y$12$PnOyJpgIVrlFq05kgKG0ru0nCkxvr381oh9j9POnYkstmuFYe8io.', '_zCG57x3OZ-SSXYr3m7aNLyR9ddbKY7N', 1683793273, NULL, NULL, '::1', 1683793273, 1683793273, 0, 1683793890, 10, NULL);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `approver`
--
ALTER TABLE `approver`
  ADD CONSTRAINT `fk_approver_requester1` FOREIGN KEY (`requester_id`) REFERENCES `requester` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

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
  ADD CONSTRAINT `fk_reviewer_requester1` FOREIGN KEY (`requester_id`) REFERENCES `requester` (`id`) ON DELETE CASCADE,
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
