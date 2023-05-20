-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 20, 2023 at 07:44 AM
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
  `parent` varchar(64) COLLATE utf8mb3_unicode_ci NOT NULL,
  `child` varchar(64) COLLATE utf8mb3_unicode_ci NOT NULL,
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
  `name` varchar(64) COLLATE utf8mb3_unicode_ci NOT NULL,
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
('05fa85d63c9532697e952d5c1359207a', 10, 1, 1683883745),
('EM-MK-???', 3, 1, 1684287560),
('EM-RD-???', 1, 1, 1683882086),
('FM-AG-???', 1, 1, 1684303462),
('FM-IT-???', 2, 1, 1683865265),
('FM-PC-???', 2, 1, 1683884207),
('FM-WH-???', 1, 1, 1683883958),
('MM-AG-???', 1, 1, 1683882730),
('MM-EN-???', 1, 1, 1684568511),
('MM-PC-???', 7, 1, 1684374918),
('PM-EN-???', 1, 1, 1684117280),
('PM-QC-???', 2, 1, 1684479811),
('PM-RD-???', 3, 1, 1683882077),
('PM-WH-???', 1, 1, 1684117140),
('QM-PC-???', 3, 1, 1684302604),
('QM-WH-???', 1, 1, 1684117212),
('SHE-EN-???', 2, 1, 1683972022),
('SHE-MM-???', 2, 1, 1684302648),
('SP-AG-???', 2, 1, 1684302572),
('SP-EN-???', 15, 1, 1684486516),
('SP-PC-???', 1, 1, 1683883745),
('SP-QC-???', 2, 1, 1684315140),
('SP-RD-???', 1, 1, 1683946262),
('SP-WH-???', 43, 1, 1684477584),
('ST-PD-???', 2, 1, 1684555228),
('ST-QC-???', 1, 1, 1684488157),
('ST-WH-???', 1, 1, 1684117162),
('WI-EN-???', 1, 1, 1683941629),
('WI-MK-???', 1, 1, 1683942957),
('WI-PC-???', 18, 1, 1684490426),
('WI-PD-???', 1, 1, 1684555144),
('WI-QC-???', 6, 1, 1684556433),
('WI-RD-???', 2, 1, 1684479801);

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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3;

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
(14, 36, NULL, NULL, NULL, NULL, NULL, NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `requester`
--

INSERT INTO `requester` (`id`, `types_id`, `type_details`, `status_id`, `created_at`, `updated_at`, `created_by`, `updated_by`, `request_by`, `categories_id`, `departments_id`, `document_title`, `document_number`, `details`, `document_name`, `latest_rev`, `document_age`, `document_public_at`, `ref`, `fullname`, `covenant`, `docs`) VALUES
(2, 1, NULL, 3, '2023-05-11 08:07:55', '2023-05-17 14:18:40', 1, 4, 21, 9, 1, 'การชี้บ่งอันตราย และ การประเมินความเสี่ยง', 'EM-MK-003', '', NULL, NULL, NULL, NULL, 'cektOJbBgsDWCLmmGLzYF9', NULL, NULL, 'null'),
(3, 2, NULL, 1, '2023-05-12 08:07:55', '2023-05-17 16:19:00', 1, 1, 18, 5, 3, 'การรายงาน การสอบสวน การติดตาม การแก้ไขอุบัติเหตุ หรืออุบัติการณ์', 'SP-QC-002', '', NULL, NULL, NULL, NULL, '3n2YDBOCT3BEN2HcvyY5eB', NULL, NULL, 'null'),
(4, 1, NULL, 1, '2023-05-13 08:07:55', '2023-05-10 08:07:55', 1, 1, 19, 3, 7, 'การจัดซื้อ-จัดจ้าง', 'WI-RD-001', '', NULL, NULL, NULL, NULL, '-aOsLaBMVpC5nK07xZI1Fk', NULL, NULL, 'null'),
(5, 2, NULL, 1, '2023-05-14 08:07:55', '2023-05-10 08:07:55', 1, 1, 3, 7, 6, 'การตรวจติดตามและประเมินความเสี่ยงของผู้ขาย/ผู้ให้บริการ', 'QM-WH-001', '', NULL, NULL, NULL, NULL, '4jsA0oPZSRI_m8F0o8UetI', NULL, NULL, 'null'),
(6, 2, NULL, 1, '2023-05-15 08:07:55', '2023-05-10 08:07:55', 1, 1, 4, 2, 6, 'การวางแผนการผลิต และการควบคุมการผลิต', 'ST-WH-001', '', NULL, NULL, NULL, NULL, 'CBM2KdQ_tsi_etWB_2G4Rs', NULL, NULL, 'null'),
(7, 3, NULL, 3, '2023-05-16 08:07:55', '2023-05-17 11:55:13', 1, 1, 13, 1, 4, 'การวางแผนการสั่งซื้อวัตถุดิบและบรรจุภัณฑ์', 'PM-EN-001', '', NULL, NULL, NULL, NULL, '5EUzIsxnj_fy65fGacXL6c', NULL, NULL, 'null'),
(8, 1, NULL, 4, '2023-05-17 08:07:55', '2023-05-19 14:03:31', 1, 1, 3, 1, 3, 'การทบทวนและเปลี่ยนแปลงข้อตกลง', 'PM-QC-002', '', NULL, NULL, NULL, NULL, 'wAlve3PwYRSorpNtDjsgHg', NULL, NULL, 'null'),
(9, 1, NULL, 1, '2023-05-18 08:07:55', '2023-05-17 12:50:48', 1, 1, 12, 8, 10, 'การวางแผนการผลิต', 'SHE-MM-002', '', NULL, NULL, NULL, NULL, 'R5T8SnBacTYyUdmcIzt8Bu', NULL, NULL, 'null'),
(10, 2, NULL, 1, '2023-05-19 08:07:55', '2023-05-17 12:50:32', 1, 1, 15, 4, 5, 'กระบวนการผลิต', 'MM-PC-006', '', NULL, NULL, NULL, NULL, 'YYzgJPDPVcikzsu8e9E50p', NULL, NULL, 'null'),
(11, 1, NULL, 1, '2023-05-10 08:07:55', '2023-05-18 08:55:18', 8, 1, 20, 4, 5, 'การสอบเทียบเครื่องมือและอุปกรณ์', 'MM-PC-007', '', NULL, NULL, NULL, NULL, 'u2z3rCi58jOZOexdu8DaSp', NULL, NULL, 'null'),
(12, 1, NULL, 1, '2023-05-20 08:07:55', '2023-05-17 12:50:04', 11, 1, 21, 7, 5, 'การควบคุมผลิตภัณฑ์ที่ไม่เป็นไปตามข้อกำหนด', 'QM-PC-003', '', NULL, NULL, NULL, NULL, 'vgFYbLvuwiWy6xJrie3Boy', NULL, NULL, 'null'),
(14, 1, NULL, 4, '2023-05-17 08:43:30', '2023-05-17 13:12:17', 1, 4, 25, 5, 4, 'การควบคุมกระบวนการผลิตและการแสดงสถานะ', 'SP-EN-009', '', NULL, NULL, NULL, NULL, 'M2W8vQBziy36J2cMDD5Kd5', NULL, NULL, 'null'),
(15, 1, NULL, 1, '2023-05-17 11:31:37', '2023-05-18 08:55:07', 5, 1, 2, 5, 4, 'การติดตามตรวจสอบ การตรวจวัด และ การประเมินความสอดคล้อง', 'SP-EN-014', '', NULL, NULL, NULL, NULL, 'Yny1qaRt5LQ6EZ5N2uPqyD', NULL, NULL, 'null'),
(16, 3, NULL, 3, '2023-05-17 11:32:50', '2023-05-17 14:18:09', 20, 4, 8, 6, 8, 'การตรวจปล่อยผลิตภัณฑ์', 'FM-AG-001', '', NULL, NULL, NULL, NULL, 'lmpC2NmdQyAdTh_GWWo5wq', NULL, NULL, 'null'),
(17, 2, NULL, 1, '2023-05-17 11:34:37', '2023-05-19 17:00:02', 1, 4, 4, 5, 4, 'การทดสอบความชำนาญ (Proficiency Testing)', 'SP-EN-008', '', NULL, NULL, NULL, NULL, '9CpDYZTYRocwpcRieuTz_z', NULL, '{\"62d739f4f67b2ea36cb7ebde2409c0de.pdf\":\"Peavey.pdf\"}', '{\"dcecd54ef79c40f092e3dbd3ecf5353d.jpg\":\"347023767_1386890032095727_6537520077498869560_n.jpg\",\"f2db74ec9aef96adaae56e612fc49ef3.jpg\":\"346282223_6037182342997895_2206992463809428455_n.jpg\"}'),
(18, 2, 'การพัฒนาผลิตภัณฑ์ใหมการพัฒนาผลิตภัณฑ์ใหม', 4, '2023-05-17 11:34:37', '2023-05-20 09:59:18', 1, 4, 1, 5, 4, 'การพัฒนาผลิตภัณฑ์ใหม่ และการส่งตัวอย่าง', 'SP-EN-012', '', NULL, 7, 1, '2023-05-27', 'GMGAfj5tylZgdKAmTu-ZGt', NULL, '{\"9d92c9b09c3bce439464f1ddf826eaf9.pdf\":\"BK23002908.pdf\"}', 'null'),
(19, 2, NULL, 1, '2023-05-17 16:28:33', '2023-05-19 16:38:12', 1, 2, 2, 3, 5, 'asdasdasds', 'WI-PC-017', '', NULL, NULL, NULL, NULL, 'NFYLrrMDMrTH3RSxJ81Z6X', NULL, '{\"d5a4be45a23e38f01e90855692bb5f77.pdf\":\"BK23002908.pdf\"}', '{\"19729f52367dfd8e220db2ddb81e3c38.jpg\":\"278623677_5688512154512188_2642951835844879887_n.jpg\",\"8537ad4982bc722536bac2e621fa5e3c.pdf\":\"ตารางแสดงความเกี่ยวข้องISO14001.pdf\",\"ab4fd591b536af92d4a9b631b2ae8562.doc\":\"FM-GR-14 Rev.07.doc\"}'),
(20, 1, NULL, 1, '2023-05-17 16:56:53', '2023-05-19 13:26:24', 1, 1, 2, 5, 6, 'asasafaf', 'SP-WH-043', '', NULL, NULL, NULL, NULL, 'hkIxEXgrDPyuFAiFPjYKsn', NULL, '{\"22227125a70540cd498b545d3dcf6bf4.pdf\":\"FM-GR-150 Rev.01.pdf\"}', 'null'),
(21, 1, NULL, 1, '2023-05-19 14:03:21', '2023-05-19 14:03:21', 1, 1, 2, 3, 7, 'tttttt', 'WI-RD-002', '', NULL, NULL, NULL, NULL, 'uiKUixu5gdhMhsk8_tijMZ', NULL, NULL, 'null'),
(23, 2, NULL, 1, '2023-05-19 15:55:17', '2023-05-19 16:54:38', 1, 2, 2, 1, 4, 'asdasdas', 'SP-EN-015', '', NULL, NULL, NULL, NULL, 'Z-oTXQZ9CpJ7By0WiwKoPF', NULL, '{\"2191ed67e867e381392e30731d35be1a.pdf\":\"ตารางแสดงความเกี่ยวข้องISO14001.pdf\"}', '{\"ca5a2a5a4f43fe3e92322ad2b1394b7d.jpg\":\"347127484_140089352385790_8097340672391811810_n.jpg\",\"d01553418c465351fb2e0fc8da4d148d.jpg\":\"346093680_6371086809614786_8227620584066180087_n.jpg\",\"fd915b053687f0be8578ab1d9bbb8ed1.jpg\":\"346484289_927645415136870_6849167580194324613_n.jpg\"}'),
(24, 1, NULL, 1, '2023-05-19 16:00:02', '2023-05-19 16:00:02', 1, 1, 3, 3, 3, 'ytutyuty', 'WI-QC-001', '', NULL, NULL, NULL, NULL, '3hFzQwpCIa8TuXekNYQgzy', NULL, '{\"5505dcc03d1734d3aa0c26afa0377349.pdf\":\"PM-GR-05 Rev.33.pdf\"}', 'null'),
(26, 5, 'ขอสำเนาจำนวน 10 ชุด', 1, '2023-05-19 16:22:37', '2023-05-20 10:00:52', 1, 4, 1, 2, 3, 'dadddd', 'ST-QC-001', '', NULL, 1, 20, '2023-05-24', 'exEqcrLzsopj1ujvzXXfEk', NULL, '{\"de893f86dcba0dd087a31c93d098076a.pdf\":\"ตารางแสดงความเกี่ยวข้อง  Food  safety.pdf\"}', 'null'),
(27, 4, 'การทบทวนและเปลี่ยนแปลงข้อตกลงการทบทวนและเปลี่ยนแปลงข้อตกลงการทบทวนและเปลี่ยนแปลงข้อตกลง', 1, '2023-05-19 17:00:26', '2023-05-20 10:13:50', 4, 4, 4, 3, 5, 'การทบทวนและเปลี่ยนแปลงข้อตกลงการทบทวนและเปลี่ยนแปลงข้อตกลง', 'WI-PC-018', '', NULL, 2, 8, '2023-05-23', 'Nkorgfin1Rl8fqhZvQQ36F', NULL, '{\"304e1be32eddb85e1a07663cef38f5c9.pdf\":\"Peavey.pdf\"}', '{\"2725afa9c209ea1ce3e2f3d16dc9864f.png\":\"How production tracking is made. - YouTube12.png\",\"e9ef29f911689dbca1a101a8a9f74d14.png\":\"How production tracking is made. - YouTube12.png\",\"f8643c0a566af3fb92a19907aca701f6.png\":\"How production tracking is made. - YouTube11.png\",\"54a0279f54175e6165690e4ea607075d.png\":\"How production tracking is made. - YouTube10.png\"}'),
(33, 3, 'sdasddd', 1, '2023-05-20 10:59:04', '2023-05-20 14:41:23', 4, 1, 3, 3, 2, 'fasfasfasf', 'WI-PD-001', '', NULL, NULL, NULL, '', 'xBRA3xru1yYztDSbdWC6iD', NULL, '[]', '[]'),
(36, 4, 'การพัฒนาผลิตภัณฑ์ใหมการพัฒนาผลิตภัณฑ์ใหม', 1, '2023-05-20 14:41:51', '2023-05-20 14:43:22', 1, 1, 3, 4, 4, 'adddd', 'MM-EN-001', '', NULL, NULL, NULL, '', 'B426prYGtTDwRzm2rXXdb1', NULL, '{\"2cb25ab5646451e8e8e2df206e2a3aef.pdf\":\"PR-6603-0149- ups phase 1.pdf\"}', 'null');

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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `reviewer`
--

INSERT INTO `reviewer` (`id`, `requester_id`, `reviewer_name`, `reviewer_at`, `document_revision`, `document_ref`, `document_tags`, `points_id`, `reviewer_comment`, `additional_training`) VALUES
(2, 2, 4, '2023-05-19', 1, '', '', 3, '', ''),
(3, 3, 2, '2023-05-03', 1, '', '', 7, '', ''),
(4, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 7, 3, '2023-05-10', 5, '', '', 1, '', ''),
(8, 8, 2, '2023-05-15', 1, '', '', 2, '', ''),
(9, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 12, 4, '2023-05-18', 6, '', '', 3, '', ''),
(13, 14, 3, '2023-05-24', 2, '', '', 1, '', ''),
(14, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 16, 3, '2023-05-18', 5, '', '', 1, '', ''),
(16, 17, 2, '2023-05-17', 5, '', '', 1, '', ''),
(17, 18, 3, '2023-05-02', 2, '', '', 1, '', ''),
(18, 19, 5, '2023-05-18', 2, '22', '', 8, '2', '2'),
(19, 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 21, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 24, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, 26, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, 27, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, 33, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32, 36, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

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
  `color` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT 'สี',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `types`
--

INSERT INTO `types` (`id`, `type_name`, `type_details`, `color`) VALUES
(1, 'New Document', 'ขอจัดทำ', '#4a86e8'),
(2, 'Edit', 'ขอแก้ไข', '#ff6000'),
(3, 'Cancel', 'ขอยกเลิก', '#434343'),
(4, 'Copy Control', 'ขอสำเนา ควบคุมเอกสาร', '#6aa84f'),
(5, 'Copy Not Control', 'ขอสำเนา ไม่ควบคุมเอกสาร', '#cc0000');

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
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `password_hash`, `auth_key`, `confirmed_at`, `unconfirmed_email`, `blocked_at`, `registration_ip`, `created_at`, `updated_at`, `flags`, `last_login_at`, `status`, `role`) VALUES
(1, 'admin', 'admin@admin.com', '$2y$12$M0hFXxztKZxCnaOnGJjrpOmQtnEPHqRbvE7spj4xkCVnT11VBcOaO', 'VPaMQzLRVu6gsDMqaZL9rwHiVdWwVFe3', 1682481192, NULL, NULL, '::1', 1682481077, 1682481077, 0, 1684555537, 10, NULL),
(2, 'theerapong', 'theerapong.khan@gmail.com', '$2y$12$wgw0evelJYnHo.OYJ6Oy7uSXkJuj/hc.KyN5Ua69k9EVzMZSPWH8S', 'l8eCAXjpfUIMnx1YKbKqw3xcBEA0D1T-', 1682481206, NULL, NULL, '::1', 1682481093, 1682481093, 0, 1684488488, 10, NULL),
(3, 'onanong', 'onanong@gmail.com', '$2y$12$hZYzUyddqbQgj.ZhVpYnk.HLsxue7JE6X10xAisAm97RV9O4Baque', 'GtUzBcGWelbaJ9MVBMz8I6o1XVUVhsMM', 1682481209, NULL, NULL, '::1', 1682481101, 1682481101, 0, 1684545043, 10, NULL),
(4, 'supanna', 'supanna@email.com', '$2y$12$JrgSpLqoe07bm0bVnPKR7O3/uZ1ubwIKHy5QOLxHMqThm24kf/ZLK', 'H4Gv7l_-KVl-TfLQo39JXcJJKHvz0o7c', 1682481210, NULL, NULL, '::1', 1682481110, 1682481110, 0, 1684554007, 10, NULL),
(5, 'peeranai', 'peeranai@gmail.com', '$2y$12$pkdao7ym04wlz08kyxj.l.5undNMHcst/0EzM1mzHebUMoqxVt436', 'kbcu9EyXHp2BeliynrSsZ5Skq1ASeLe8', 1682481212, NULL, NULL, '::1', 1682481121, 1682481121, 0, NULL, 10, NULL),
(6, 'sawika', 'sawika@email.com', '$2y$12$O3tNFBcq9cpEtcHqCTolDucXMtIb5knWKjHOL2OSL5N7UKkXdtoui', 's4v4f4FElf3N2uPdx6GZYLMy5mS8rNCd', 1683792969, NULL, NULL, '::1', 1683792969, 1683793430, 0, 1683794565, 10, NULL),
(7, 'araya', 'acc.nfcfa@gmail.com', '$2y$12$NrzWMCnFlYaX6ThguT8d9.PNE.euAzbH8Qse4.Y4qoj3fh33lqLSe', 'JLEI5sdHVlrhamckF6VXpy3heJfk6nQ9', 1683792990, NULL, NULL, '::1', 1683792990, 1683792990, 0, NULL, 10, NULL),
(8, 'kannika', 'kannika@nfc.com', '$2y$12$xffTyxflca52nU71YNdrpOrCfkwZaLWa/XtdCdYxmPvTRYcCov1eG', 'L57bjEoDoyL4EakO9ft3WombnlQsQ1Bc', 1683793010, NULL, NULL, '::1', 1683793010, 1683793010, 0, NULL, 10, NULL),
(9, 'watasara', 'lee_lew@hotmail.com', '$2y$12$2AZYznE2urQ9mo.nm9c0duZ7ANIIage.cC0nBYWsDCXjIEVLgJGc2', 'e3Wz-hxQL4ftWXyNYuiDoiecAegiHGq8', 1683793026, NULL, NULL, '::1', 1683793026, 1683793026, 0, NULL, 10, NULL),
(10, 'yosaporn', 'ypayakayat@yahoo.com', '$2y$12$z/5HU4gOYMv2rbIIf03PiuRM0Ohb8J7wjlA1X0dwvnRUxwYs9Dgvq', 'jQZ4ahmM-ow9KnGYwcn302ay3bX3wON6', 1683793047, NULL, NULL, '::1', 1683793047, 1683793047, 0, 1684303737, 10, NULL),
(11, 'taweekiat', 'd.taweekiat@gmail.com', '$2y$12$.MQq.u7Wb7UZkzTsL1VvmO.rzraFIdaghwb.bMGl/BujX9ab.MrRq', '8wWbkMZ4wN95vSxELWypKe3EHIBaTqPO', 1683793061, NULL, NULL, '::1', 1683793061, 1683793061, 0, NULL, 10, NULL),
(12, 'kullanitnaree', 'kullanitnaree@nfc.com', '$2y$12$OpKiXAEkMBkkX7jLo6XrhORV587pEAB7RaEYGrgz1MRKXWdYNw/2i', 'gXFVNvr0CSpX3AuLh7fMaSLkJJpeJg31', 1683793076, NULL, NULL, '::1', 1683793076, 1683793076, 0, NULL, 10, NULL),
(13, 'jiraporn', 'jiraporn@nfc.com', '$2y$12$O3duTGbmOGQCdabVNtGOIO7tFxKyEZffPJWvAuu7ynDJOgJNdVliO', 'SCe8MGcoRhYeKi7vavwMufJeUUUdrdUd', 1683793090, NULL, NULL, '::1', 1683793090, 1683793090, 0, NULL, 10, NULL),
(14, 'lapaeporn', 'lapaeporn@nfc.com', '$2y$12$1MnkoqAQ3bFvH39fr4afj.EA6WKGWPPNyP500pN/AqxERayxPg056', 'BHUBCxcZpztXEl_y26ZPMtV_KnwoYeHU', 1683793107, NULL, NULL, '::1', 1683793107, 1683793107, 0, NULL, 10, NULL),
(15, 'ratsamee', 'ratsamee@nfc.com', '$2y$12$FYc7l3HRZz9Su.pLPiop0u.dclzn7M9zUeSlurwtINYkqwGoFEbCu', 'iD4Vuipm5XWq5ryszxzwPFDkOOi5oc29', 1683793119, NULL, NULL, '::1', 1683793119, 1683793119, 0, NULL, 10, NULL),
(16, 'thaksin', 'notethaksin@hotmail.com', '$2y$12$3q7fpwnOleGTfPDsZxR1fek.tFT.7a.NRZTfnqJzeOFYhjI9UlEXK', 'ltM24mSBdAYkooq7t-AVUjtrBrsK2_G8', 1683793130, NULL, NULL, '::1', 1683793130, 1683793130, 0, NULL, 10, NULL),
(17, 'chadaporn', 'kaewkhamchadaporn@gmail.com', '$2y$12$LujF5jw2pZmCtpNE.CI/Lu8Y1mWER6Obn3NMvSN3SLPcH..ntVCEe', 'R5sYXX_Cp7k-hDa0v8Im-p3E1WHhgyx2', 1683793141, NULL, NULL, '::1', 1683793141, 1683793141, 0, NULL, 10, NULL),
(18, 'pranee', 'pranee@nfc.com', '$2y$12$RFa71D2fkjU5TGqbDEyFaOgzNBOq2l2PonqDNt9.a9Pi/ltz8lOw2', 'AgrQBEnC4usd05AdIzGvYP63tACwB1dG', 1683793166, NULL, NULL, '::1', 1683793166, 1683793166, 0, NULL, 10, NULL),
(19, 'premmika', 'premmika2910@gmail.com', '$2y$12$aV3Dus0NhZcn2w3wBVn/U.9bbswMETIF4XjlZE3UMBlAD.7tFM/T.', 'EjMUtCt6y_Hkt1uRFsF5EOQlBEGTsUAN', 1683793180, NULL, NULL, '::1', 1683793180, 1683793180, 0, NULL, 10, NULL),
(20, 'tanyarat', 'Nimwong2539@gmail.com', '$2y$12$WmDURu17WodhrGE.orah0.AZwZAcScOQwuGQalWwKhkJcqyid48J6', 'RcPfw0huWobtF5xILVloNxg0CtxF7WuJ', 1683793191, NULL, NULL, '::1', 1683793191, 1683793191, 0, NULL, 10, NULL),
(21, 'charinee', 'charinee@nfc.com', '$2y$12$DhVkil5ut9Cs04ezhdfp1ulkgoyDSD9nw8j9OMzYVptJnYid6LarG', '1oImVHdvLcJfCDpM2HvrOSu7cmqGBh-Y', 1683793203, NULL, NULL, '::1', 1683793203, 1683793203, 0, NULL, 10, NULL),
(22, 'prakaiwan', 'prakaiwan4213@gmail.com', '$2y$12$RB52vDO.vrWheFBqg4Zeo.RuWqkwvOn1rZPS85KFCZ3dRv6CQ9yGa', 'UQQF5MDyCqFDzForMDbe6vZJpv95X8Al', 1683793214, NULL, NULL, '::1', 1683793214, 1683793214, 0, NULL, 10, NULL),
(23, 'suriya', 'suriyasompatch@gmail.com', '$2y$12$C4xc4c3Lg.l7DVsyg4BQYe1cKnQOAmzYjro4K4ucGcT0Jy4JqbIFK', '7yTvVQ07qAL3hyoze5O46NbNhvs5QH9i', 1683793225, NULL, NULL, '::1', 1683793225, 1683793225, 0, NULL, 10, NULL),
(24, 'suphot', 'changkhong.8777@gmail.com', '$2y$12$qtUlDIw66IXTDrfoABmq/.eRz.9wMw/KF31AwZgCab3EEDCrYw5fm', 'eYevE-riqu1KNIfQHmgR_59NCbDVgvxH', 1683793236, NULL, NULL, '::1', 1683793236, 1683793236, 0, NULL, 10, NULL),
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
