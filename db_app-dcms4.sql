-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 27, 2023 at 09:32 AM
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
) ENGINE=InnoDB AUTO_INCREMENT=385 DEFAULT CHARSET=utf8mb3;

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
(66, 66, NULL, NULL, NULL),
(67, 67, NULL, NULL, NULL),
(68, 68, NULL, NULL, NULL),
(69, 69, NULL, NULL, NULL),
(70, 70, NULL, NULL, NULL),
(71, 71, NULL, NULL, NULL),
(72, 72, NULL, NULL, NULL),
(73, 73, NULL, NULL, NULL),
(74, 74, NULL, NULL, NULL),
(75, 75, NULL, NULL, NULL),
(76, 76, NULL, NULL, NULL),
(77, 77, NULL, NULL, NULL),
(78, 78, NULL, NULL, NULL),
(79, 79, NULL, NULL, NULL),
(80, 80, NULL, NULL, NULL),
(81, 81, NULL, NULL, NULL),
(82, 82, NULL, NULL, NULL),
(83, 83, NULL, NULL, NULL),
(84, 84, NULL, NULL, NULL),
(88, 88, NULL, NULL, NULL),
(89, 89, NULL, NULL, NULL),
(90, 90, NULL, NULL, NULL),
(91, 91, NULL, NULL, NULL),
(92, 92, NULL, NULL, NULL),
(93, 93, NULL, NULL, NULL),
(94, 94, NULL, NULL, NULL),
(95, 95, NULL, NULL, NULL),
(96, 96, NULL, NULL, NULL),
(97, 97, NULL, NULL, NULL),
(98, 98, NULL, NULL, NULL),
(99, 99, NULL, NULL, NULL),
(100, 100, NULL, NULL, NULL),
(101, 101, NULL, NULL, NULL),
(102, 102, NULL, NULL, NULL),
(103, 103, NULL, NULL, NULL),
(104, 104, NULL, NULL, NULL),
(105, 105, NULL, NULL, NULL),
(106, 106, NULL, NULL, NULL),
(107, 107, NULL, NULL, NULL),
(108, 108, NULL, NULL, NULL),
(109, 109, NULL, NULL, NULL),
(110, 110, NULL, NULL, NULL),
(111, 111, NULL, NULL, NULL),
(112, 112, NULL, NULL, NULL),
(113, 113, NULL, NULL, NULL),
(114, 114, NULL, NULL, NULL),
(115, 115, NULL, NULL, NULL),
(116, 116, NULL, NULL, NULL),
(117, 117, NULL, NULL, NULL),
(118, 118, NULL, NULL, NULL),
(119, 119, NULL, NULL, NULL),
(120, 120, NULL, NULL, NULL),
(121, 121, NULL, NULL, NULL),
(122, 122, NULL, NULL, NULL),
(123, 123, NULL, NULL, NULL),
(124, 124, NULL, NULL, NULL),
(125, 125, NULL, NULL, NULL),
(126, 126, NULL, NULL, NULL),
(127, 127, NULL, NULL, NULL),
(128, 128, NULL, NULL, NULL),
(129, 129, NULL, NULL, NULL),
(130, 130, NULL, NULL, NULL),
(131, 131, NULL, NULL, NULL),
(132, 132, NULL, NULL, NULL),
(133, 133, NULL, NULL, NULL),
(134, 134, NULL, NULL, NULL),
(135, 135, NULL, NULL, NULL),
(136, 136, NULL, NULL, NULL),
(137, 137, NULL, NULL, NULL),
(138, 138, NULL, NULL, NULL),
(139, 139, NULL, NULL, NULL),
(140, 140, NULL, NULL, NULL),
(141, 141, NULL, NULL, NULL),
(142, 142, NULL, NULL, NULL),
(143, 143, NULL, NULL, NULL),
(144, 144, NULL, NULL, NULL),
(145, 145, NULL, NULL, NULL),
(146, 146, NULL, NULL, NULL),
(147, 147, NULL, NULL, NULL),
(148, 148, NULL, NULL, NULL),
(149, 149, NULL, NULL, NULL),
(150, 150, NULL, NULL, NULL),
(151, 151, NULL, NULL, NULL),
(152, 152, NULL, NULL, NULL),
(153, 153, NULL, NULL, NULL),
(154, 154, NULL, NULL, NULL),
(155, 155, NULL, NULL, NULL),
(156, 156, NULL, NULL, NULL),
(157, 157, NULL, NULL, NULL),
(158, 158, NULL, NULL, NULL),
(159, 159, NULL, NULL, NULL),
(160, 160, NULL, NULL, NULL),
(161, 161, NULL, NULL, NULL),
(162, 162, NULL, NULL, NULL),
(163, 163, NULL, NULL, NULL),
(164, 164, NULL, NULL, NULL),
(165, 165, NULL, NULL, NULL),
(166, 166, NULL, NULL, NULL),
(167, 167, NULL, NULL, NULL),
(168, 168, NULL, NULL, NULL),
(169, 169, NULL, NULL, NULL),
(170, 170, NULL, NULL, NULL),
(171, 171, NULL, NULL, NULL),
(172, 172, NULL, NULL, NULL),
(173, 173, NULL, NULL, NULL),
(175, 175, NULL, NULL, NULL),
(176, 176, NULL, NULL, NULL),
(177, 177, NULL, NULL, NULL),
(178, 178, NULL, NULL, NULL),
(179, 179, NULL, NULL, NULL),
(180, 180, NULL, NULL, NULL),
(181, 181, NULL, NULL, NULL),
(182, 182, NULL, NULL, NULL),
(183, 183, NULL, NULL, NULL),
(184, 184, NULL, NULL, NULL),
(185, 185, NULL, NULL, NULL),
(186, 186, NULL, NULL, NULL),
(187, 187, NULL, NULL, NULL),
(188, 188, NULL, NULL, NULL),
(189, 189, NULL, NULL, NULL),
(190, 190, NULL, NULL, NULL),
(191, 191, NULL, NULL, NULL),
(192, 192, NULL, NULL, NULL),
(193, 193, NULL, NULL, NULL),
(194, 194, NULL, NULL, NULL),
(195, 195, NULL, NULL, NULL),
(196, 196, NULL, NULL, NULL),
(197, 197, NULL, NULL, NULL),
(198, 198, NULL, NULL, NULL),
(199, 199, NULL, NULL, NULL),
(200, 200, NULL, NULL, NULL),
(201, 201, NULL, NULL, NULL),
(202, 202, NULL, NULL, NULL),
(203, 203, NULL, NULL, NULL),
(204, 204, NULL, NULL, NULL),
(205, 205, NULL, NULL, NULL),
(206, 206, NULL, NULL, NULL),
(207, 207, NULL, NULL, NULL),
(208, 208, NULL, NULL, NULL),
(209, 209, NULL, NULL, NULL),
(210, 210, NULL, NULL, NULL),
(211, 211, NULL, NULL, NULL),
(212, 212, NULL, NULL, NULL),
(213, 213, NULL, NULL, NULL),
(214, 214, NULL, NULL, NULL),
(215, 215, NULL, NULL, NULL),
(216, 216, NULL, NULL, NULL),
(217, 217, NULL, NULL, NULL),
(218, 218, NULL, NULL, NULL),
(219, 219, NULL, NULL, NULL),
(220, 220, NULL, NULL, NULL),
(221, 221, NULL, NULL, NULL),
(222, 222, NULL, NULL, NULL),
(223, 223, NULL, NULL, NULL),
(224, 224, NULL, NULL, NULL),
(225, 225, NULL, NULL, NULL),
(226, 226, NULL, NULL, NULL),
(227, 227, NULL, NULL, NULL),
(228, 228, NULL, NULL, NULL),
(229, 229, NULL, NULL, NULL),
(230, 230, NULL, NULL, NULL),
(231, 231, NULL, NULL, NULL),
(232, 232, NULL, NULL, NULL),
(233, 233, NULL, NULL, NULL),
(234, 234, NULL, NULL, NULL),
(235, 235, NULL, NULL, NULL),
(236, 236, NULL, NULL, NULL),
(237, 237, NULL, NULL, NULL),
(238, 238, NULL, NULL, NULL),
(239, 239, NULL, NULL, NULL),
(240, 240, NULL, NULL, NULL),
(241, 241, NULL, NULL, NULL),
(242, 242, NULL, NULL, NULL),
(243, 243, NULL, NULL, NULL),
(244, 244, NULL, NULL, NULL),
(245, 245, NULL, NULL, NULL),
(246, 246, NULL, NULL, NULL),
(247, 247, NULL, NULL, NULL),
(248, 248, NULL, NULL, NULL),
(249, 249, NULL, NULL, NULL),
(250, 250, NULL, NULL, NULL),
(251, 251, NULL, NULL, NULL),
(252, 252, NULL, NULL, NULL),
(253, 253, NULL, NULL, NULL),
(254, 254, NULL, NULL, NULL),
(255, 255, NULL, NULL, NULL),
(256, 256, NULL, NULL, NULL),
(257, 257, NULL, NULL, NULL),
(258, 258, NULL, NULL, NULL),
(259, 259, NULL, NULL, NULL),
(260, 260, NULL, NULL, NULL),
(261, 261, NULL, NULL, NULL),
(262, 262, NULL, NULL, NULL),
(263, 263, NULL, NULL, NULL),
(264, 264, NULL, NULL, NULL),
(265, 265, NULL, NULL, NULL),
(266, 266, NULL, NULL, NULL),
(267, 267, NULL, NULL, NULL),
(268, 268, NULL, NULL, NULL),
(269, 269, NULL, NULL, NULL),
(270, 270, NULL, NULL, NULL),
(271, 271, NULL, NULL, NULL),
(272, 272, NULL, NULL, NULL),
(273, 273, NULL, NULL, NULL),
(274, 274, NULL, NULL, NULL),
(275, 275, NULL, NULL, NULL),
(276, 276, NULL, NULL, NULL),
(277, 277, NULL, NULL, NULL),
(278, 278, NULL, NULL, NULL),
(279, 279, NULL, NULL, NULL),
(280, 280, NULL, NULL, NULL),
(281, 281, NULL, NULL, NULL),
(282, 282, NULL, NULL, NULL),
(283, 283, NULL, NULL, NULL),
(284, 284, NULL, NULL, NULL),
(285, 285, NULL, NULL, NULL),
(286, 286, NULL, NULL, NULL),
(287, 287, NULL, NULL, NULL),
(288, 288, NULL, NULL, NULL),
(289, 289, NULL, NULL, NULL),
(290, 290, NULL, NULL, NULL),
(291, 291, NULL, NULL, NULL),
(292, 292, NULL, NULL, NULL),
(293, 293, NULL, NULL, NULL),
(294, 294, NULL, NULL, NULL),
(295, 295, NULL, NULL, NULL),
(296, 296, NULL, NULL, NULL),
(297, 297, NULL, NULL, NULL),
(298, 298, NULL, NULL, NULL),
(299, 299, NULL, NULL, NULL),
(300, 300, NULL, NULL, NULL),
(301, 301, NULL, NULL, NULL),
(302, 302, NULL, NULL, NULL),
(303, 303, NULL, NULL, NULL),
(304, 304, NULL, NULL, NULL),
(305, 305, NULL, NULL, NULL),
(306, 306, NULL, NULL, NULL),
(307, 307, NULL, NULL, NULL),
(308, 308, NULL, NULL, NULL),
(309, 309, NULL, NULL, NULL),
(310, 310, NULL, NULL, NULL),
(311, 311, NULL, NULL, NULL),
(312, 312, NULL, NULL, NULL),
(313, 313, NULL, NULL, NULL),
(314, 314, NULL, NULL, NULL),
(315, 315, NULL, NULL, NULL),
(316, 316, NULL, NULL, NULL),
(317, 317, NULL, NULL, NULL),
(318, 318, NULL, NULL, NULL),
(319, 319, NULL, NULL, NULL),
(320, 320, NULL, NULL, NULL),
(321, 321, NULL, NULL, NULL),
(322, 322, NULL, NULL, NULL),
(323, 323, NULL, NULL, NULL),
(324, 324, NULL, NULL, NULL),
(325, 325, NULL, NULL, NULL),
(326, 326, NULL, NULL, NULL),
(327, 327, NULL, NULL, NULL),
(328, 328, NULL, NULL, NULL),
(329, 329, NULL, NULL, NULL),
(330, 330, NULL, NULL, NULL),
(331, 331, NULL, NULL, NULL),
(332, 332, NULL, NULL, NULL),
(333, 333, NULL, NULL, NULL),
(334, 334, NULL, NULL, NULL),
(335, 335, NULL, NULL, NULL),
(336, 336, NULL, NULL, NULL),
(337, 337, NULL, NULL, NULL),
(338, 338, NULL, NULL, NULL),
(339, 339, NULL, NULL, NULL),
(340, 340, NULL, NULL, NULL),
(341, 341, NULL, NULL, NULL),
(342, 342, NULL, NULL, NULL),
(343, 343, NULL, NULL, NULL),
(344, 344, NULL, NULL, NULL),
(345, 345, NULL, NULL, NULL),
(346, 346, NULL, NULL, NULL),
(347, 347, NULL, NULL, NULL),
(348, 348, NULL, NULL, NULL),
(349, 349, NULL, NULL, NULL),
(350, 350, NULL, NULL, NULL),
(351, 351, NULL, NULL, NULL),
(352, 352, NULL, NULL, NULL),
(353, 353, NULL, NULL, NULL),
(354, 354, NULL, NULL, NULL),
(355, 355, NULL, NULL, NULL),
(356, 356, NULL, NULL, NULL),
(357, 357, NULL, NULL, NULL),
(358, 358, NULL, NULL, NULL),
(359, 359, NULL, NULL, NULL),
(360, 360, NULL, NULL, NULL),
(361, 361, NULL, NULL, NULL),
(362, 362, NULL, NULL, NULL),
(363, 363, NULL, NULL, NULL),
(364, 364, NULL, NULL, NULL),
(365, 365, NULL, NULL, NULL),
(366, 366, NULL, NULL, NULL),
(367, 367, NULL, NULL, NULL),
(368, 368, NULL, NULL, NULL),
(369, 369, NULL, NULL, NULL),
(370, 370, NULL, NULL, NULL),
(371, 371, NULL, NULL, NULL),
(372, 372, NULL, NULL, NULL),
(373, 373, NULL, NULL, NULL),
(374, 374, NULL, NULL, NULL),
(375, 375, NULL, NULL, NULL),
(376, 376, NULL, NULL, NULL),
(377, 377, NULL, NULL, NULL),
(378, 378, NULL, NULL, NULL),
(379, 379, NULL, NULL, NULL),
(380, 380, NULL, NULL, NULL),
(381, 381, NULL, NULL, NULL),
(382, 382, NULL, NULL, NULL),
(383, 383, NULL, NULL, NULL),
(384, 384, NULL, NULL, NULL);

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
('FM-PD-???', 11, 1, 1685176233),
('MM-MM-???', 1, 1, 1685151572),
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
('SP-EM-???', 7, 1, 1685175360),
('SP-EN-???', 52, 1, 1685170723),
('SP-GR-???', 162, 1, 1685175071),
('SP-HS-???', 6, 1, 1685175762),
('SP-PC-???', 2, 1, 1685170009),
('SP-PD-???', 71, 1, 1685153136),
('SP-QC-???', 102, 1, 1685160448),
('ST-PD-???', 17, 1, 1685080376),
('ST-QC-???', 9, 1, 1685080715),
('WI-AG-???', 5, 1, 1685092434),
('WI-EN-???', 10, 1, 1685091584),
('WI-GR-???', 25, 1, 1685151411),
('WI-PD-???', 33, 1, 1685085389),
('WI-QC-???', 81, 1, 1685091181),
('WI-RD-???', 5, 1, 1685092170);

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
(13, 'PCC', 'ฝ่ายวางแผนและควบคุมการผลิต', '#674ea7', NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=385 DEFAULT CHARSET=utf8mb3;

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
(66, 6, '', 4, '2023-05-26 12:58:35', '2023-05-26 12:58:35', 1, 1, 1, 2, 3, 'มาตรฐานสินค้าและบรรจุภัณฑ์', 'ST-QC-009', '', NULL, 0, 5, '2013-05-01', 'rHITaMBEdrZaH2Q62_in0W', NULL, '{\"3f5f7673e23500e77ff381f0164593dc.pdf\":\"ST-QC-09_Rev_00[1].pdf\"}', 'null'),
(67, 6, '', 4, '2023-05-26 14:00:35', '2023-05-26 14:00:35', 1, 1, 1, 3, 2, 'การคั่วบดข้าวสาลีหรือข้าวสาร', 'WI-PD-023', '', NULL, 2, 5, '2019-08-09', 'wUElXJihCDhRPGx9W8Jt0Y', NULL, '{\"807ffe2a98c0b7f41cfde82822a5aa84.pdf\":\"WI-PD-23_Rev_02[1].pdf\"}', 'null'),
(68, 6, '', 4, '2023-05-26 14:01:55', '2023-05-26 14:01:55', 1, 1, 1, 3, 2, 'การนึ่งถั่วเหลือง', 'WI-PD-024', '', NULL, 3, 5, '2017-05-31', 'vAZY2GSHfmuoLhOlZF2IP0', NULL, '{\"25590f119d790fbbb97c7bb7dee8666b.pdf\":\"WI-PD-24_Rev_03[1].pdf\"}', 'null'),
(69, 6, '', 4, '2023-05-26 14:03:06', '2023-05-26 14:03:06', 1, 1, 1, 3, 2, 'การเตรียมน้ำเกลือ', 'WI-PD-025', '', NULL, 3, 5, '2018-12-10', 'AWzZuyd4M4X7uLHu4bSWAn', NULL, '{\"5a864eeb20e748a291fa2e531c89194c.pdf\":\"WI-PD-25_Rev_03[1].pdf\"}', 'null'),
(70, 6, '', 4, '2023-05-26 14:04:00', '2023-05-26 14:04:00', 1, 1, 1, 3, 2, 'การทำ KOJI', 'WI-PD-026', '', NULL, 2, 5, '2018-12-10', '6GNH1SGvJIRiJzSn7_KCIh', NULL, '{\"488ff6995fbaf0e5909509847c23207b.pdf\":\"WI-PD-26_Rev_02[1].pdf\"}', 'null'),
(71, 6, '', 4, '2023-05-26 14:04:50', '2023-05-26 14:04:50', 1, 1, 1, 3, 2, 'การเพาะยีสต์', 'WI-PD-027', '', NULL, 2, 5, '2018-12-03', 'cNcjhT1aGigMohGoV6blgC', NULL, '{\"324b8193c6cfd04753b9b4ac3fbc3681.pdf\":\"WI-PD-27_Rev_02[1].pdf\"}', 'null'),
(72, 6, '', 4, '2023-05-26 14:09:19', '2023-05-26 14:09:19', 1, 1, 1, 3, 2, 'การหมักโมโรมิและการปั๊มย้ายโมโรมิ', 'WI-PD-028', '', NULL, 7, 5, '2020-05-21', 'FIpFbG-450Jzfjf20KHjjT', NULL, '{\"2b5234876edeb1ee03653a61f8d5a423.pdf\":\"WI-PD-28_Rev_07[1].pdf\"}', 'null'),
(73, 6, '', 4, '2023-05-26 14:11:51', '2023-05-26 14:11:51', 1, 1, 1, 3, 2, 'การคั้น MOROMI', 'WI-PD-029', '', NULL, 4, 5, '2018-12-03', 'jULj_hHMnFxWEdnR2ixw62', NULL, '{\"09f1d689384884ecc9d6d7f50bba0232.pdf\":\"WI-PD-29_Rev_04[1].pdf\"}', 'null'),
(74, 6, '', 4, '2023-05-26 14:13:47', '2023-05-26 14:13:47', 1, 1, 1, 3, 2, 'การกรองครั้งที่ 1', 'WI-PD-030', '', NULL, 4, 5, '2018-09-15', 'ojLElcvF5rI1723VW44sFl', NULL, '{\"70827d264294aa58e94a7d9940f0a9e3.pdf\":\"WI-PD-30_Rev_04[1].pdf\"}', 'null'),
(75, 6, '', 4, '2023-05-26 14:15:03', '2023-05-26 14:15:03', 1, 1, 1, 3, 2, 'การผสมและฆ่าเชื้อ', 'WI-PD-031', '', NULL, 6, 5, '2020-03-10', 'l4n1W6lq2d5l9Eefc_UP8L', NULL, '{\"0d0b5875298f9fc7df6aede344970bac.pdf\":\"WI-PD-31_Rev_06[1].pdf\"}', 'null'),
(76, 6, '', 4, '2023-05-26 14:15:49', '2023-05-26 14:15:49', 1, 1, 1, 3, 2, 'การกรองครั้งที่ 2', 'WI-PD-032', '', NULL, 4, 5, '2020-04-27', 'dn4SW_E6xkmU1CghT_tpdP', NULL, '{\"7d0c85da2563373e95b589dbcbcc4331.pdf\":\"WI-PD-32_Rev_04[1].pdf\"}', 'null'),
(77, 6, '', 4, '2023-05-26 14:16:29', '2023-05-26 14:16:29', 1, 1, 1, 3, 2, 'การผสมครั้งที่ 2', 'WI-PD-033', '', NULL, 4, 5, '2021-09-01', '9i5-dpde3U8ILOP5toqRZo', NULL, '{\"6790ba11c43ff7cd49d70a77214f3d51.pdf\":\"WI-PD-33_Rev_04[1].pdf\"}', 'null'),
(78, 6, '', 4, '2023-05-26 14:21:11', '2023-05-26 14:21:11', 1, 1, 1, 3, 3, 'การตรวจสอบวัตถุดิบทางการเกษตร', 'WI-QC-002', '', NULL, 12, 5, '2015-12-08', 'RHkrMbIvVz6ZHc51XDT8YK', NULL, '{\"08cc4eb50bddd3d90619852593cea5f4.pdf\":\"WI-QC-02_Rev_12[1].pdf\"}', 'null'),
(79, 6, '', 4, '2023-05-26 14:22:05', '2023-05-26 14:22:05', 1, 1, 1, 3, 3, 'การตรวจสอบวัตถุดิบการผลิต', 'WI-QC-003', '', NULL, 10, 5, '2022-11-01', 'z3mVNeqvOWIwBM-dXj93ca', NULL, '{\"b0e096d2a22db8e5bee3d799fb0de64f.pdf\":\"WI-QC-03_Rev_10[1].pdf\"}', 'null'),
(80, 6, '', 4, '2023-05-26 14:22:46', '2023-05-26 14:22:46', 1, 1, 1, 3, 3, 'การตรวจสอบภาชนะบรรจุ', 'WI-QC-004', '', NULL, 11, 5, '2019-08-10', 'l45H6fi6bTg1wFj-L-7-Aa', NULL, '{\"945d8da1ab23843511d2ae49bd8f380b.pdf\":\"WI-QC-04_Rev_11[1].pdf\"}', 'null'),
(81, 6, '', 4, '2023-05-26 14:23:25', '2023-05-26 14:23:25', 1, 1, 1, 3, 3, 'วิธีการตรวจสอบข้าวคั่วบด', 'WI-QC-005', '', NULL, 5, 5, '2019-08-13', 'zU-yxs0UnmwTXaGnEDE-Nd', NULL, '{\"03edef942fcb309724780a58eeedc786.pdf\":\"WI-QC-05_Rev_05[1].pdf\"}', 'null'),
(82, 6, '', 4, '2023-05-26 14:24:05', '2023-05-26 14:24:05', 1, 1, 1, 3, 3, 'วิธีการตรวจสอบน้ำเกลือและน้ำดอง', 'WI-QC-006', '', NULL, 4, 5, '2020-09-25', 'iG-NNPo-_zEUeHcCc_u-_K', NULL, '{\"f4836a639b30dfe6090c9685c4ea05cf.pdf\":\"WI-QC-06_Rev_04[1].pdf\"}', 'null'),
(83, 6, '', 4, '2023-05-26 14:24:51', '2023-05-26 14:24:51', 1, 1, 1, 3, 3, 'การตรวจสอบระหว่างการหมัก (Moromi)', 'WI-QC-007', '', NULL, 6, 5, '2015-08-01', 'TJIpIHxE5fRy_ivBYIVB6E', NULL, '{\"fbc544e69fb38da02c02c22a98681e08.pdf\":\"WI-QC-07_Rev_06[1].pdf\"}', 'null'),
(84, 6, '', 4, '2023-05-26 14:25:54', '2023-05-26 14:25:54', 1, 1, 1, 3, 3, 'วิธีการตรวจสอบคุณภาพซีอิ๊วดิบหลังการกรอง', 'WI-QC-008', '', NULL, 3, 5, '2006-03-17', 'i4omuGEN3ToNfP0bMddLtr', NULL, '{\"fb8ea267a046c5248f5d4fdb42666a12.pdf\":\"WI-QC-08_Rev_03[1].pdf\"}', 'null'),
(88, 6, '', 4, '2023-05-26 14:30:15', '2023-05-26 14:30:15', 1, 1, 1, 3, 3, 'การตรวจสอบคุณภาพซีอิ๊วหลังการผสม', 'WI-QC-009', '', NULL, 5, 5, '2006-03-17', '9RflMmtIVzfKQ1uLw0om_A', NULL, '{\"6c2b477ebeb4ed4f8c6d9484bfc0a6b5.pdf\":\"WI-QC-09_Rev_05[1].pdf\"}', 'null'),
(89, 6, '', 4, '2023-05-26 14:31:06', '2023-05-26 14:31:06', 1, 1, 1, 3, 3, 'การตรวจสอบคุณภาพซีอิ๊วหลังการฆ่าเชื้อ', 'WI-QC-010', '', NULL, 8, 5, '2006-03-17', '4574KnhV0iMavOHaXfQpTR', NULL, '{\"abe492282815fad8cd1f0cf8d814ec48.pdf\":\"WI-QC-10_Rev_08[1].pdf\"}', 'null'),
(90, 6, '', 4, '2023-05-26 14:32:14', '2023-05-26 14:32:14', 1, 1, 1, 3, 3, 'การตรวจสอบคุณภาพซีอิ๊วหลังการกรอง ครั้งที่ 2', 'WI-QC-011', '', NULL, 10, 5, '2014-08-08', 'A9qi6IpBlqvrOdioU7ynVL', NULL, '{\"19acab2a975ae3033708e58378e21d63.pdf\":\"WI-QC-11_Rev_10[1].pdf\"}', 'null'),
(91, 6, '', 4, '2023-05-26 14:33:18', '2023-05-26 14:33:18', 1, 1, 1, 3, 3, 'วิธีการตรวจสอบฉลาก', 'WI-QC-012', '', NULL, 8, 5, '2019-08-08', 'zO7I3avt-zMePk733FV5l2', NULL, '{\"1f46b4caef0eac7ea7a501c4ebc11b18.pdf\":\"WI-QC-12_Rev_08[1].pdf\"}', 'null'),
(92, 6, '', 4, '2023-05-26 14:34:28', '2023-05-26 14:34:28', 1, 1, 1, 3, 3, 'การตรวจสอบการบรรจุ', 'WI-QC-013', '', NULL, 18, 5, '2019-03-23', 'HXKLd7FrLCeR3eF-19Jsxs', NULL, '{\"c5f9bc1604ca24fc500a20ca70a75e90.pdf\":\"WI-QC-13_Rev_18[1].pdf\"}', 'null'),
(93, 6, '', 4, '2023-05-26 14:35:18', '2023-05-26 14:35:18', 1, 1, 1, 3, 3, 'วิธีการตรวจสอบคุณภาพผลิตภัณฑ์ก่อน และหลังการบรรจุ', 'WI-QC-014', '', NULL, 7, 5, '2014-07-22', 'jBERPfWsZVCoIzVOeaX52W', NULL, '{\"b177ed97192ed7185740b33097462d02.pdf\":\"WI-QC-14_Rev_07[1].pdf\"}', 'null'),
(94, 6, '', 4, '2023-05-26 14:36:26', '2023-05-26 14:37:48', 1, 1, 1, 3, 3, 'การสอบเทียบอุปกรณ์', 'WI-QC-015', '', NULL, 13, 5, '2014-12-22', 'Y0miVi26oTA-koxyfNgwzU', NULL, '{\"4882e9b492a5e7b813dbd7537f13d9be.pdf\":\"WI-QC-15_Rev_13[1].pdf\"}', 'null'),
(95, 6, '', 4, '2023-05-26 14:39:14', '2023-05-26 14:39:14', 1, 1, 1, 3, 3, 'การเตรียม Slant', 'WI-QC-016', '', NULL, 7, 5, '2020-05-02', 'R1rEUSniMLJOcYeQtM0OoG', NULL, '{\"e4566fff350c295811ba1b975d1e473c.pdf\":\"WI-QC-16_Rev_07[1].pdf\"}', 'null'),
(96, 6, '', 4, '2023-05-26 14:40:04', '2023-05-26 14:40:04', 1, 1, 1, 3, 3, 'วิธีการเตรียมอาหารเลี้ยงเชื้อชนิดเหลว', 'WI-QC-017', '', NULL, 5, 5, '2020-05-02', 'gFR989cHBdN3yWMwo_H-Tp', NULL, '{\"356753facb976e250c6fa63d34662969.pdf\":\"WI-QC-17_Rev_05[1].pdf\"}', 'null'),
(97, 6, '', 4, '2023-05-26 14:41:26', '2023-05-26 14:41:26', 1, 1, 1, 3, 3, 'วิธีการเก็บรักษาตัวอย่างผลิตภัณฑ์', 'WI-QC-021', '', NULL, 4, 5, '2017-09-18', 'lPUVpt2WK6sKP3i7WsIo3L', NULL, '{\"906bc54fec8fadd59f5a02e0f74078d2.pdf\":\"WI-QC-21_Rev_04[1].pdf\"}', 'null'),
(98, 6, '', 4, '2023-05-26 14:44:10', '2023-05-26 14:44:10', 1, 1, 1, 3, 3, 'วิธีการตรวจสอบวัตถุดิบสำหรับการตรวจสอบ', 'WI-QC-023', '', NULL, 6, 5, '2017-02-16', '68bIbGnR-dl1lRKF_Tnb_G', NULL, '{\"7b26a3ef8b9bb72dab793ae65f5b9752.pdf\":\"WI-QC-23_Rev_06[1].pdf\"}', 'null'),
(99, 6, '', 4, '2023-05-26 14:45:11', '2023-05-26 14:45:11', 1, 1, 1, 3, 3, 'วิธีการปรับค่า pH', 'WI-QC-024', '', NULL, 1, 5, '2000-10-27', 'R7SjWl9bYJTGtIjm5PHRG3', NULL, '{\"58366c6fc1b15944cfcc110bd7c243ce.pdf\":\"WI-QC-24_Rev_01[1].pdf\"}', 'null'),
(100, 6, '', 4, '2023-05-26 14:46:13', '2023-05-26 14:46:13', 1, 1, 1, 3, 3, 'วิธีการกำหนดหมายเลข Lot ของผลิตภัณฑ์ก่อนการบรรจุ และผลิตภัณฑ์ระหว่างกระบวนการผลิต', 'WI-QC-025', '', NULL, 4, 5, '2020-09-25', 'eEXlIoJDxCLmlSzxMB6EFu', NULL, '{\"d9bd633809837eb10760e12fa4cb4000.pdf\":\"WI-QC-25_Rev_04[1].pdf\"}', 'null'),
(101, 6, '', 4, '2023-05-26 14:48:01', '2023-05-26 14:48:01', 1, 1, 1, 3, 3, 'การออกรายงาน Certificate of Analysis', 'WI-QC-027', '', NULL, 3, 5, '2014-07-29', '92uISoz8fIM9T3OOpHJLSx', NULL, '{\"2586869c90644b1ef87831dfdf706c09.pdf\":\"WI-QC-27_Rev_03[1].pdf\"}', 'null'),
(102, 6, '', 4, '2023-05-26 14:51:33', '2023-05-26 14:51:33', 1, 1, 1, 3, 3, 'การ Swab test', 'WI-QC-028', '', NULL, 22, 5, '2022-11-01', 'aoDUApZhJrBS2rHma5Do0b', NULL, '{\"1b071a93ef5b094921db93c0358b8214.pdf\":\"WI-QC-28_Rev_22[1].pdf\"}', 'null'),
(103, 6, '', 4, '2023-05-26 14:52:58', '2023-05-26 14:52:58', 1, 1, 1, 3, 3, 'วิธีการตรวจวัดระดับสี', 'WI-QC-029', '', NULL, 3, 5, '2016-12-15', 'y6YfFe-v2u1TI67ls94WV7', NULL, '{\"ff7281eb20fd2cf0e2f0f7c6c9766f2f.pdf\":\"WI-QC-29_Rev_03[1].pdf\"}', 'null'),
(104, 6, '', 4, '2023-05-26 14:54:14', '2023-05-26 14:54:14', 1, 1, 1, 3, 3, '	วิธีการวัดเปอร์เซ็นต์เกลือ', 'WI-QC-030', '', NULL, 4, 5, '2013-02-20', '8jltneUGOIZQ2gMTjjnNvf', NULL, '{\"9fcc80955dee07e2f1bc1bb5ab9f4273.pdf\":\"WI-QC-30_Rev_04[1].pdf\"}', 'null'),
(105, 6, '', 4, '2023-05-26 14:55:29', '2023-05-26 14:55:29', 1, 1, 1, 3, 3, 'วิธีการวัดเปอร์เซ็นต์ TN', 'WI-QC-031', '', NULL, 4, 5, '2012-01-26', 'FQtKpwPLdmWuiK6p6ciaaf', NULL, '{\"d7890b32e4d3627b356a36e7f4973030.pdf\":\"WI-QC-31_Rev_04[1].pdf\"}', 'null'),
(106, 6, '', 4, '2023-05-26 14:56:17', '2023-05-26 14:56:17', 1, 1, 1, 3, 3, 'วิธีการวัดเปอร์เซ็นต์แอลกอฮอล์', 'WI-QC-032', '', NULL, 3, 5, '2007-07-05', 'xkUroP7yG0GxOoIFwhCamd', NULL, '{\"be6710ced8913fb472cd7ce17d523041.pdf\":\"WI-QC-32_Rev_03[1].pdf\"}', 'null'),
(107, 6, '', 4, '2023-05-26 14:57:58', '2023-05-26 14:57:58', 1, 1, 1, 3, 3, 'วิธีการวัดเปอร์เซ็นต์ RS', 'WI-QC-033', '', NULL, 2, 5, '2001-01-08', 'WC_DTni_MpeLmzLu1Vxs5L', NULL, '{\"52d092629a8de601c9e8a9af24d9c51d.pdf\":\"WI-QC-33_Rev_02[1].pdf\"}', 'null'),
(108, 6, '', 4, '2023-05-26 15:03:25', '2023-05-26 15:03:25', 1, 1, 1, 3, 3, 'วิธีการวัดเปอร์เซ็นต์ FN', 'WI-QC-034', '', NULL, 2, 5, '2001-01-18', '0aE3g8m4m4_i2CHT57IV5U', NULL, '{\"57d1ef561786225e4164b54485772588.pdf\":\"WI-QC-34_Rev_02[1].pdf\"}', 'null'),
(109, 6, '', 4, '2023-05-26 15:04:43', '2023-05-26 15:04:43', 1, 1, 1, 3, 3, 'วิธีการตรวจสอบเปอร์เซ็นต์ความชื้น', 'WI-QC-035', '', NULL, 4, 5, '2021-10-28', 'Je84fXSciy07-YmiUlBF7d', NULL, '{\"f379fc6f223898bf90308024d9960260.pdf\":\"WI-QC-35_Rev_04[1].pdf\"}', 'null'),
(110, 6, '', 4, '2023-05-26 15:05:30', '2023-05-26 15:05:30', 1, 1, 1, 3, 3, 'วิธีการวัดค่า Brix', 'WI-QC-036', '', NULL, 4, 5, '2020-09-13', 'S6wrY9IOAOV-yhLrGbqLoF', NULL, '{\"5739030b2416c3370630527fcf5d953a.pdf\":\"WI-QC-36_Rev_04[1].pdf\"}', 'null'),
(111, 6, '', 4, '2023-05-26 15:07:25', '2023-05-26 15:07:25', 1, 1, 1, 3, 3, 'วิธีการวัดเปอร์เซ็นต์ TA', 'WI-QC-037', '', NULL, 2, 5, '2001-01-08', 'BU_BRclQBM7KEoSdGIkErF', NULL, '{\"e1196325d739da8b6e42aa526b9d463a.pdf\":\"WI-QC-37_Rev_02[1].pdf\"}', 'null'),
(112, 6, '', 4, '2023-05-26 15:08:25', '2023-05-26 15:08:25', 1, 1, 1, 3, 3, 'วิธีการวัดค่า Protease Activity', 'WI-QC-038', '', NULL, 0, 5, '2000-10-27', 'IaDB9Eh7URaep5v1dGrGRj', NULL, '{\"3118e5f3f950e422de60a2782f932cfb.pdf\":\"WI-QC-38_Rev_00[1].pdf\"}', 'null'),
(113, 6, '', 4, '2023-05-26 15:09:52', '2023-05-26 15:09:52', 1, 1, 1, 3, 3, 'การตรวจสอบโคจิ', 'WI-QC-039', '', NULL, 3, 5, '2007-03-08', '2KCIa2jkTpjbbjPUQW-WjM', NULL, '{\"ecc06f2933d5acd3d60b15557e010175.pdf\":\"WI-QC-39_Rev_03[1].pdf\"}', 'null'),
(114, 6, '', 4, '2023-05-26 15:10:59', '2023-05-26 15:10:59', 1, 1, 1, 3, 3, 'วิธีการตรวจสอบตะกอน', 'WI-QC-040', '', NULL, 3, 5, '2020-05-02', 'rV-Tpb_h3MlZTGvi9X_wVy', NULL, '{\"c590c8c803e3f58b301d0be1e2d5d96b.pdf\":\"WI-QC-40_Rev_03[1].pdf\"}', 'null'),
(115, 6, '', 4, '2023-05-26 15:12:01', '2023-05-26 15:12:01', 1, 1, 1, 3, 3, 'วิธีการวัดเปอร์เซ็นต์ TS', 'WI-QC-041', '', NULL, 1, 5, '2000-10-27', 'MX3ghx_R2PpBJrTVPNBd78', NULL, '{\"1f09ac263253b489e1703ff6e76bc6dd.pdf\":\"WI-QC-41_Rev_01[1].pdf\"}', 'null'),
(116, 6, '', 4, '2023-05-26 15:12:55', '2023-05-26 15:12:55', 1, 1, 1, 3, 3, 'การตรวจสอบเชื้อ S-Yeast ใน Moromi', 'WI-QC-042', '', NULL, 1, 5, '2012-11-12', 'lbjdgbzHRLz3d9BVU4XEiU', NULL, '{\"755927a6b999631226042c06b5442e98.pdf\":\"WI-QC-42_Rev_01[1].pdf\"}', 'null'),
(117, 6, '', 4, '2023-05-26 15:13:38', '2023-05-26 15:13:38', 1, 1, 1, 3, 3, 'การตรวจสอบ Heaping', 'WI-QC-043', '', NULL, 4, 5, '2006-03-17', 'dLFm1C2EawqxtDAe947ScB', NULL, '{\"20080a9baa36b55b02894bba54732504.pdf\":\"WI-QC-43_Rev_04[1].pdf\"}', 'null'),
(118, 6, '', 4, '2023-05-26 15:14:24', '2023-05-26 15:14:24', 1, 1, 1, 3, 3, 'วิธีการสุ่มตัวอย่าง ตรวจวิเคราะห์', 'WI-QC-044', '', NULL, 3, 5, '2017-09-11', 'AVDbArt3TXH_IhebZADaid', NULL, '{\"0309054631541a7c3d8890d288531cff.pdf\":\"WI-QC-44_Rev_03[1].pdf\"}', 'null'),
(119, 6, '', 4, '2023-05-26 15:15:23', '2023-05-26 15:15:23', 1, 1, 1, 3, 3, 'วิธีการวัด pH', 'WI-QC-047', '', NULL, 2, 5, '2001-01-08', 'Lgu5KTI88N5mRfs3v_7anP', NULL, '{\"594b6e549e2298bb54b4238a907c7cc8.pdf\":\"WI-QC-47_Rev_02[1].pdf\"}', 'null'),
(120, 6, '', 4, '2023-05-26 15:16:34', '2023-05-26 15:16:34', 1, 1, 1, 3, 3, 'วิธีการตรวจนับเชื้อยีสต์ใน starter', 'WI-QC-049', '', NULL, 1, 5, '2003-09-24', 'tVrp-URYxfwdF6o-uytGby', NULL, '{\"3c653daf95a29320158443c75121db5c.pdf\":\"WI-QC-49_Rev_01[1].pdf\"}', 'null'),
(121, 6, '', 4, '2023-05-26 15:20:41', '2023-05-26 15:20:41', 1, 1, 1, 3, 3, 'การคัดเลือกและฝึกฝนด้านประสาทสัมผัส ', 'WI-QC-050', '', NULL, 3, 5, '2012-03-05', 'qYDJty8IpKmCSdpBgf4l04', NULL, '{\"45a1314f0714bd11d0cf4692d63faf4d.pdf\":\"WI-QC-50_Rev_03[1].pdf\"}', 'null'),
(122, 6, '', 4, '2023-05-26 15:21:23', '2023-05-26 15:21:23', 1, 1, 1, 3, 3, 'วิธีการตรวจฉลากรับเข้า', 'WI-QC-051', '', NULL, 3, 5, '2019-08-08', 'Pdp2_wdVhtX7VvgAobBDfK', NULL, '{\"38abaacfe803d6cc990e44ae0f812e3e.pdf\":\"WI-QC-51_Rev_03[1].pdf\"}', 'null'),
(123, 6, '', 4, '2023-05-26 15:22:09', '2023-05-26 15:22:09', 1, 1, 1, 3, 3, 'วิธีการตรวจสอบปริมาณคลอรีนในน้ำ', 'WI-QC-052', '', NULL, 7, 5, '2021-07-20', 'ihpQsRBTkHj2nc2idOLNtc', NULL, '{\"41162e4224aa5aedaaaf61eaa743c202.pdf\":\"WI-QC-52_Rev_07[1].pdf\"}', 'null'),
(124, 6, '', 4, '2023-05-26 15:22:56', '2023-05-26 15:22:56', 1, 1, 1, 3, 3, 'วิธีการส่งตัวอย่างน้ำวิเคราะห์ประจำปี', 'WI-QC-053', '', NULL, 6, 5, '2020-11-24', 'l-OI-x18mfyBOmBkB7Mq8Q', NULL, '{\"504da4921252df45faa11c9e904e19c5.pdf\":\"WI-QC-53_Rev_06[1].pdf\"}', 'null'),
(125, 6, '', 4, '2023-05-26 15:23:33', '2023-05-26 15:23:33', 1, 1, 1, 3, 3, 'วิธีการสุ่มตัวอย่างผลิตภัณฑ์วิเคราะห์ประจำปี', 'WI-QC-054', '', NULL, 15, 5, '2020-11-24', 'bCekwWSu4t6FDuvJWS4kkb', NULL, '{\"5ea799276e6647e976d68247bf08789a.pdf\":\"WI-QC-54_Rev_15[1].pdf\"}', 'null'),
(126, 6, '', 4, '2023-05-26 15:24:20', '2023-05-26 15:24:20', 1, 1, 1, 3, 3, 'วิธีการวัดค่า SG', 'WI-QC-055', '', NULL, 0, 5, '2002-12-11', 'eYUPNSVJfHsY-9ULV55Qd3', NULL, '{\"a06c5347d23b635785bca575ba21e4bf.pdf\":\"WI-QC-55_Rev_00[1].pdf\"}', 'null'),
(127, 6, '', 4, '2023-05-26 15:24:58', '2023-05-26 15:24:58', 1, 1, 1, 3, 3, 'การตรวจสอบคุณภาพการบำบัดน้ำเสีย', 'WI-QC-056', '', NULL, 4, 5, '2012-03-01', 'qkjA-cezcCpAr_9lNtKVVI', NULL, '{\"77d4fad8f992c8e5279f17d21df336f0.pdf\":\"WI-QC-56_Rev_04[1].pdf\"}', 'null'),
(128, 6, '', 4, '2023-05-26 15:25:48', '2023-05-26 15:25:48', 1, 1, 1, 3, 3, 'วิธีการหาค่า COD และ DO', 'WI-QC-057', '', NULL, 1, 5, '2018-09-24', 'XaMVoBtk5O87erwzYhkPLf', NULL, '{\"131dd67610ccb6f1c5e2ca241bb4a1a3.pdf\":\"WI-QC-57_Rev_01[1].pdf\"}', 'null'),
(129, 6, '', 4, '2023-05-26 15:26:32', '2023-05-26 15:26:32', 1, 1, 1, 3, 3, 'วิธีการหาค่า SS,TDS และ TS', 'WI-QC-058', '', NULL, 1, 5, '2013-03-01', 'WZToDi-msNNSO7hctqFJt0', NULL, '{\"34c7d0d8deef04dc6bf78823ffebf1dd.pdf\":\"WI-QC-58_Rev_01[1].pdf\"}', 'null'),
(130, 6, '', 4, '2023-05-26 15:27:11', '2023-05-26 15:27:11', 1, 1, 1, 3, 3, 'วิธีการหาค่าวัดความหนืด', 'WI-QC-059', '', NULL, 1, 5, '2019-09-23', 'ux8ihnWGr7aRHvLvXFolLv', NULL, '{\"e73e5edb0647fda08051dce7f4cf0e62.pdf\":\"WI-QC-59_Rev_01[1].pdf\"}', 'null'),
(131, 6, '', 4, '2023-05-26 15:28:03', '2023-05-26 15:28:03', 1, 1, 1, 3, 3, 'วิธีการทดสอบความชำนาญภายใน', 'WI-QC-060', '', NULL, 1, 5, '2011-09-01', 'xIB_w-gPIhxN24b7EO5Zf2', NULL, '{\"671def2e51b4ebb702fea21f12d13d4f.pdf\":\"WI-QC-60_Rev_01[1].pdf\"}', 'null'),
(132, 6, '', 4, '2023-05-26 15:29:01', '2023-05-26 15:29:01', 1, 1, 1, 3, 3, 'วิธีการชักสิ่งตัวอย่างเพื่อการยอมรับ', 'WI-QC-062', '', NULL, 3, 5, '2019-08-08', 'dLneBiDpWGoDMJKh8zJS9b', NULL, '{\"82e241fd6d3928e8efc4ee4c4c85fd20.pdf\":\"WI-QC-62_Rev_03[1].pdf\"}', 'null'),
(133, 6, '', 4, '2023-05-26 15:29:50', '2023-05-26 15:29:50', 1, 1, 1, 3, 3, 'การรับตัวอย่างและการจัดการตัวอย่าง', 'WI-QC-063', '', NULL, 2, 5, '2020-05-15', 'iVT3UozivXltZJnZ_Q84eZ', NULL, '{\"ad5616960272f1d67f95c998c467a24f.pdf\":\"WI-QC-63_Rev_02[1].pdf\"}', 'null'),
(134, 6, '', 4, '2023-05-26 15:34:47', '2023-05-26 15:34:47', 1, 1, 1, 3, 3, 'การคำนวณหา Holding time ในการฆ่าเชื้อ', 'WI-QC-064', '', NULL, 2, 5, '2016-12-27', 'lK7FC7BCAIrsxXIHdhd_Gd', NULL, '{\"c737048ebaefd2993f5882f18d1d3b7b.pdf\":\"WI-QC-64_Rev_02[1].pdf\"}', 'null'),
(135, 6, '', 4, '2023-05-26 15:37:22', '2023-05-26 15:37:22', 1, 1, 1, 3, 3, 'วิธีการตรวจหายาฆ่าแมลง', 'WI-QC-065', '', NULL, 1, 5, '2012-03-15', 'NLWzaU1P_zC2-KLb2d11_c', NULL, '{\"8d32cdf17dc9a53c8a39c5d5491336a8.pdf\":\"WI-QC-65_Rev_01[1].pdf\"}', 'null'),
(136, 6, '', 4, '2023-05-26 15:38:02', '2023-05-26 15:38:02', 1, 1, 1, 3, 3, 'การเสริมไอโอดีนในผลิตภัณฑ์สุดท้าย', 'WI-QC-066', '', NULL, 1, 5, '2018-12-25', 'hnvWqaLoVnKAf5rYQmex-R', NULL, '{\"b1b821f1ac82f0e4402f4e57c99461e4.pdf\":\"WI-QC-66_Rev_01[1].pdf\"}', 'null'),
(137, 6, '', 4, '2023-05-26 15:39:00', '2023-05-26 15:39:00', 1, 1, 1, 3, 3, 'วิธีการวิเคราะห์ Air Test', 'WI-QC-067', '', NULL, 3, 5, '2014-03-01', '_y1snWDECvIeQ3hwanbef2', NULL, '{\"2ca8b136bf8e1468de20084e8c52af82.pdf\":\"WI-QC-67_Rev_03[1].pdf\"}', 'null'),
(138, 6, '', 4, '2023-05-26 15:39:40', '2023-05-26 15:39:40', 1, 1, 1, 3, 3, 'การจัดทำและแก้ไขมาตรฐาน Spec. วัตถุดิบรับเข้า', 'WI-QC-068', '', NULL, 8, 5, '2020-08-10', 'j76r1RMwY72irO1cv0nJdN', NULL, '{\"f26081e122725612c957443c92a67b57.pdf\":\"WI-QC-68_Rev_08[1].pdf\"}', 'null'),
(139, 6, '', 4, '2023-05-26 15:40:21', '2023-05-26 15:40:21', 1, 1, 1, 3, 3, 'การตรวจสอบประสิทธิภาพเครื่องมือชั่งไฟฟ้า', 'WI-QC-069', '', NULL, 0, 5, '2011-09-01', 'W8Z1iZyakYTsfO2h2Y2Z3s', NULL, '{\"5f3b17201579c4cbcd1307693bf8c05a.pdf\":\"WI-QC-69_Rev_00[1].pdf\"}', 'null'),
(140, 6, '', 4, '2023-05-26 15:41:18', '2023-05-26 15:41:18', 1, 1, 1, 3, 3, 'วิธีการตรวจสอบคุณภาพไวน์และน้ำส้มสายชู', 'WI-QC-070', '', NULL, 0, 5, '2011-10-10', 'h4To1zkfMjivZYiRaZ9iJW', NULL, '{\"3f5a4a968a0f2716278e08fcba4405a7.pdf\":\"WI-QC-70_Rev_00[1].pdf\"}', 'null'),
(141, 6, '', 4, '2023-05-26 15:41:56', '2023-05-26 15:41:56', 1, 1, 1, 3, 3, 'วิธีการตรวจสอบค่าความกระด้างในน้ำ', 'WI-QC-071', '', NULL, 1, 5, '2013-02-01', 'nnoVZuTFrNHfu88Ik6RglJ', NULL, '{\"0a2223e0c13afc4a8f91b5617f2eac38.pdf\":\"WI-QC-71_Rev_01[1].pdf\"}', 'null'),
(142, 6, '', 4, '2023-05-26 15:42:37', '2023-05-26 15:42:37', 1, 1, 1, 3, 3, 'วิธีการตรวจสอบคุณภาพน้ำ', 'WI-QC-072', '', NULL, 5, 5, '2018-08-20', 'HGz91tj2WXjGN5Tg08AAEf', NULL, '{\"561b2c96b0dd0ecfcbc1dfdc35f4040d.pdf\":\"WI-QC-72_Rev_05[1].pdf\"}', 'null'),
(143, 6, '', 4, '2023-05-26 15:43:16', '2023-05-26 15:43:16', 1, 1, 1, 3, 3, 'การตรวจวิเคราะห์เชื้อจุลินทรีย์', 'WI-QC-073', '', NULL, 6, 5, '2019-08-01', 'gjI85YQ8I4QWNiHJ9XGo46', NULL, '{\"427e50dd03934be46cb9a9970a0f93f5.pdf\":\"WI-QC-73_Rev_06[1].pdf\"}', 'null'),
(144, 6, '', 4, '2023-05-26 15:44:02', '2023-05-26 15:44:02', 1, 1, 1, 3, 3, 'การตรวจสอบผลิตภัณฑ์สำเร็จรูป', 'WI-QC-074', '', NULL, 1, 5, '2012-06-25', 'JvKktuMRtcareBdLZS-2yJ', NULL, '{\"082bb91384ab59c7a1a6966d36cfc0ce.pdf\":\"WI-QC-74_Rev_01[1].pdf\"}', 'null'),
(145, 6, '', 4, '2023-05-26 15:44:39', '2023-05-26 15:44:39', 1, 1, 1, 3, 3, 'การใช้ Salometer', 'WI-QC-075', '', NULL, 0, 5, '2012-06-05', 'Dot9BpEqRgTm164cogknY9', NULL, '{\"ae637b131e96f8eb724c54c97bb4a360.pdf\":\"WI-QC-75_Rev_00[1].pdf\"}', 'null'),
(146, 6, '', 4, '2023-05-26 15:45:11', '2023-05-26 15:45:11', 1, 1, 1, 3, 3, 'วิธีการวิเคราะห์ M-ALK , P-ALK และ T-ALK', 'WI-QC-076', '', NULL, 1, 5, '2018-08-20', 'Wg7mYXyqjEfy3MPylS9kI9', NULL, '{\"d08905007bdc0196b76e54adccf7d3c0.pdf\":\"WI-QC-76_Rev_01[1].pdf\"}', 'null'),
(147, 6, '', 4, '2023-05-26 15:45:47', '2023-05-26 15:45:47', 1, 1, 1, 3, 3, 'การเตรียมสารเคมีและการเตรียมอาหารเลี้ยงเชื้อ', 'WI-QC-077', '', NULL, 0, 5, '2012-11-12', 'T1EG08G-3Sqbm4qBiwMMH9', NULL, '{\"521dfdf4937ca7efbacaad5e6f471adf.pdf\":\"WI-QC-77_Rev_00[1].pdf\"}', 'null'),
(148, 6, '', 4, '2023-05-26 15:46:27', '2023-05-26 15:46:27', 1, 1, 1, 3, 3, 'การจัดทำ การแจกจ่าย Finished product Specification และการยืนยัน Raw material และ Finished product Specification ', 'WI-QC-079', '', NULL, 2, 5, '2020-04-25', 'cLC_pRvNW1C0nB6tlvsE_I', NULL, '{\"895c1e977a292c82ea2678bb13e40996.pdf\":\"WI-QC-79_Rev_02[1].pdf\"}', 'null'),
(149, 6, '', 4, '2023-05-26 15:47:32', '2023-05-26 15:47:32', 1, 1, 1, 3, 3, 'วิธีการตรวจสอบ Ink Jet และ Shrink Film', 'WI-QC-080', '', NULL, 0, 5, '2015-06-01', '_Trz1DEmTJG78Z4xhG-gY4', NULL, '{\"cd4d068a1730139caadef0228c39a35d.pdf\":\"WI-QC-80_Rev_00[1].pdf\"}', 'null'),
(150, 6, '', 4, '2023-05-26 15:49:12', '2023-05-26 15:49:12', 1, 1, 1, 3, 3, 'วิธีการตรวจสอบคุณภาพ MISO', 'WI-QC-081', '', NULL, 0, 5, '2020-09-14', '280MNTdHMCR7rx3YCXqyv9', NULL, '{\"554d5a6a86fc069a85488a2b2ebbca96.pdf\":\"WI-QC-81_Rev_00[1].pdf\"}', 'null'),
(151, 6, '', 4, '2023-05-26 15:51:04', '2023-05-26 15:51:04', 1, 1, 1, 3, 4, 'การบำรุงรักษาเครื่องจักรเชิงป้องกัน', 'WI-EN-001', '', NULL, 13, 5, '2021-11-12', 'XzV6gw5fWSmvaVLcKeOMf8', NULL, '{\"8b1a9797e2c46c8bf40cff955a0b552f.pdf\":\"WI-EN-01_Rev_13[1].pdf\"}', 'null'),
(152, 6, '', 4, '2023-05-26 15:51:56', '2023-05-26 15:51:56', 1, 1, 1, 3, 4, 'การซ่อมแซมเครื่องจักร', 'WI-EN-002', '', NULL, 15, 5, '2021-10-01', '-gI-sfLLfwDNAlYM4M_Iwo', NULL, '{\"7395abcfc40c4469342c19d189502fb8.pdf\":\"WI-EN-02_Rev_15[1].pdf\"}', 'null'),
(153, 6, '', 4, '2023-05-26 15:53:01', '2023-05-26 15:53:09', 1, 1, 1, 3, 4, 'การติดตั้งเครื่องจักรเพิ่มเติม', 'WI-EN-003', '', NULL, 9, 5, '2021-10-01', 'ncEX7xX0NtMQBY9vXgOLYO', NULL, '{\"62ed40b7b355ecfbb89b79525ced2435.pdf\":\"WI-EN-03_Rev_09[1].pdf\"}', 'null'),
(154, 6, '', 4, '2023-05-26 15:55:08', '2023-05-26 15:55:08', 1, 1, 1, 3, 4, 'การควบคุมคุณภาพน้ำใช้ในโรงงาน', 'WI-EN-004', '', NULL, 15, 5, '2021-11-12', 'v5z-sREDQoWyNvtOa7ImUn', NULL, '{\"c95b659903e87c21e2e66d99b1596b67.pdf\":\"WI-EN-04_Rev_15[1].pdf\"}', 'null'),
(155, 6, '', 4, '2023-05-26 15:55:52', '2023-05-26 15:55:52', 1, 1, 1, 3, 4, 'การควบคุมน้ำเสีย', 'WI-EN-005', '', NULL, 11, 5, '2021-10-01', 'r7R8kjUczf4xCWZHHTm-pS', NULL, '{\"64cc140f64c63d2742a5e2f420ad26b5.pdf\":\"WI-EN-05_Rev_11[1].pdf\"}', 'null'),
(156, 6, '', 4, '2023-05-26 15:56:32', '2023-05-26 15:56:32', 1, 1, 1, 3, 4, 'การบำรุงรักษาและซ่อมแซมโครงสร้างพื้นฐานของโรงงาน', 'WI-EN-006', '', NULL, 9, 5, '2021-10-01', '7zNdCukv9RYrNRSd7lVQ5e', NULL, '{\"1c560f3bffa10367fe5a6743064e78f0.pdf\":\"WI-EN-06_Rev_09[1].pdf\"}', 'null'),
(157, 6, '', 4, '2023-05-26 15:57:12', '2023-05-26 15:57:12', 1, 1, 1, 3, 4, 'การใช้ระบบ lock out และระบบป้ายทะเบียน Tag out', 'WI-EN-007', '', NULL, 2, 5, '2019-09-11', 'JK5bTel5dsahl1G3KcQwJm', NULL, '{\"b8f5090f6a2ef17cf5f463faaf696508.pdf\":\"WI-EN-07_Rev_02[1].pdf\"}', 'null'),
(158, 6, '', 4, '2023-05-26 15:58:12', '2023-05-26 15:58:12', 1, 1, 1, 3, 4, 'การจัดการลมอัดที่สัมผัสกับผลิตภัณฑ์', 'WI-EN-008', '', NULL, 2, 5, '2021-10-01', 'SFugStpgVLh7W_0gxf2v30', NULL, '{\"6d2ed646b70f8141e4cddcca2f702582.pdf\":\"WI-EN-08_Rev_02[1].pdf\"}', 'null'),
(159, 6, '', 4, '2023-05-26 15:58:51', '2023-05-26 15:58:51', 1, 1, 1, 3, 4, 'การผลิตไอน้ำ', 'WI-EN-009', '', NULL, 2, 5, '2021-10-01', 'o19_cxfKViyV8LvEC1FdG7', NULL, NULL, 'null'),
(160, 6, '', 4, '2023-05-26 15:59:44', '2023-05-26 15:59:44', 1, 1, 1, 3, 4, 'การสอบเทียบอุปกรณ์', 'WI-EN-010', '', NULL, 3, 5, '2021-08-28', 'OAexoNmfo3QbHU6zdEZ5kl', NULL, '{\"529c103e91b503b3543336208b753ecb.pdf\":\"WI-EN-10_Rev_03[1].pdf\"}', 'null'),
(161, 6, '', 4, '2023-05-26 16:06:36', '2023-05-26 16:06:36', 1, 1, 1, 3, 7, 'การศึกษาอายุการจัดเก็บของผลิตภัณฑ์', 'WI-RD-002', '', NULL, 4, 5, '2016-10-06', 'Cv9irHmfFPnGETl1luVQKZ', NULL, '{\"fddfc709a0f064362affeeef170fe067.pdf\":\"WI-RD-02_Rev_04[1].pdf\"}', 'null'),
(162, 6, '', 4, '2023-05-26 16:07:42', '2023-05-26 16:07:42', 1, 1, 1, 3, 7, 'การตรวจวิเคราะห์ Allergen', 'WI-RD-003', '', NULL, 5, 5, '2022-09-20', 'UCqW7pFdifmH2Jbu4M6hBf', NULL, '{\"2a46c811953fae45852730f0aec055f5.pdf\":\"WI-RD-03_Rev_05[1].pdf\"}', 'null'),
(163, 6, '', 4, '2023-05-26 16:08:22', '2023-05-26 16:08:22', 1, 1, 1, 3, 7, 'การทำความสะอาดห้อง RD', 'WI-RD-004', '', NULL, 0, 5, '2019-08-15', '1Pt7wEJCIMzZA8SMb7cUMH', NULL, '{\"040e773e1c1e39debe30411a27813e53.pdf\":\"WI-RD-04_Rev_00[1].pdf\"}', 'null'),
(164, 6, '', 4, '2023-05-26 16:09:30', '2023-05-26 16:09:30', 1, 1, 1, 3, 7, 'Water Activity รุ่น Labswift', 'WI-RD-005', '', NULL, 0, 5, '2021-08-16', 'wptGhTtu4mefc5SCaGYl9U', NULL, '{\"be84a5b01e0a9bf1ae04f566558740e7.pdf\":\"WI-RD-05_Rev_00[1].pdf\"}', 'null'),
(165, 6, '', 4, '2023-05-26 16:10:37', '2023-05-26 16:10:37', 1, 1, 1, 3, 8, 'การตรวจวิเคราะห์คุณภาพน้ำ', 'WI-AG-001', '', NULL, 0, 5, '2011-08-01', 'KDgEsPEiI54wFK0gyqolpt', NULL, '{\"62f2210125c5c567f554cc29ccf5a96a.pdf\":\"WI-AG-01_Rev_00[1].pdf\"}', 'null'),
(166, 6, '', 4, '2023-05-26 16:11:27', '2023-05-26 16:11:27', 1, 1, 1, 3, 8, 'การตรวจวิเคราะห์คุณภาพพื้นที่ปลูก', 'WI-AG-002', '', NULL, 0, 5, '2011-08-01', 'ShmWLFGBK0bdRL5iUB8-5J', NULL, '{\"4b4854cd791eed5374ff698c43b64fca.pdf\":\"WI-AG-02_Rev_00[1].pdf\"}', 'null'),
(167, 6, '', 4, '2023-05-26 16:12:27', '2023-05-26 16:12:27', 1, 1, 1, 3, 8, 'การใช้วัตถุอันตรายทางการเกษตร', 'WI-AG-003', '', NULL, 0, 5, '2011-08-01', 'nWAg5Kw0GmVRHZjsyeBQ5K', NULL, '{\"6fc627a455dc08a47072e792d1513beb.pdf\":\"WI-AG-03_Rev_00[1].pdf\"}', 'null'),
(168, 6, '', 4, '2023-05-26 16:13:06', '2023-05-26 16:13:06', 1, 1, 1, 3, 8, 'ผลิตผลปลอดจากศัตรูพืช', 'WI-AG-004', '', NULL, 0, 5, '2011-08-01', '-4elF3yVcDqA5IuWnDG2bt', NULL, '{\"8e3f25cc97a3ee6ecc7a58fc938fa34c.pdf\":\"WI-AG-05_Rev_00[1].pdf\"}', 'null'),
(169, 6, '', 4, '2023-05-26 16:13:54', '2023-05-26 16:13:54', 1, 1, 1, 3, 8, 'การจัดการพืชผลทางการเกษตรเพื่อให้ได้ผลิตผลคุณภาพ', 'WI-AG-005', '', NULL, 0, 5, '2011-08-01', '1sOjtW_V2u6ZulGT44tSF6', NULL, '{\"fa76ca9262fb953a52fef110d3c16e04.pdf\":\"WI-AG-06_Rev_00[1].pdf\"}', 'null'),
(170, 6, '', 4, '2023-05-27 08:07:56', '2023-05-27 08:07:56', 1, 1, 1, 3, 9, 'การควบคุมเอกสารและบันทึกที่มาจากภายนอก', 'WI-GR-001', '', NULL, 9, 5, '2019-05-01', 'd3HfAs4rgdd9_AqKxbULIQ', NULL, '{\"920bdf964c65ce231c161c496e2188ef.pdf\":\"WI-GR-01_Rev_09[1].pdf\"}', 'null'),
(171, 6, '', 4, '2023-05-27 08:10:45', '2023-05-27 08:10:45', 1, 1, 1, 3, 9, 'การกำหนดรหัสเอกสาร', 'WI-GR-002', '', NULL, 13, 5, '2018-12-15', '3TSut_oy7OjQ4Ctk6bhYvq', NULL, '{\"cf40488596bc53c86fbfc61cb9735b81.pdf\":\"WI-GR-02_Rev_13[1].pdf\"}', 'null'),
(172, 6, '', 4, '2023-05-27 08:11:29', '2023-05-27 08:11:29', 1, 1, 1, 3, 9, 'การกำหนดรูปแบบเอกสารและบันทึกคุณภาพ', 'WI-GR-003', '', NULL, 13, 5, '2015-12-15', 'KsRF3-xe9RF3VmpK8T8DLB', NULL, '{\"fcc2bdcb71634f90a37b95b5f41e8323.pdf\":\"WI-GR-03_Rev_13[1].pdf\"}', 'null'),
(173, 6, '', 4, '2023-05-27 08:12:27', '2023-05-27 08:12:27', 1, 1, 1, 3, 9, 'การแจกจ่ายเอกสาร', 'WI-GR-004', '', NULL, 10, 5, '2020-06-16', 'OfNHN21tCJ86a0xtWf8-_o', NULL, '{\"39827dbd2a893418bedac1c86798ef21.pdf\":\"WI-GR-04_Rev_10[1].pdf\"}', 'null'),
(175, 6, '', 4, '2023-05-27 08:13:59', '2023-05-27 08:13:59', 1, 1, 1, 3, 9, 'กฎระเบียบสุขลักษณะส่วนบุคคล', 'WI-GR-006', '', NULL, 30, 5, '2019-12-02', '4MB_dbn1jmjqFgZcoMZ1yb', NULL, '{\"4bf87908df6e0e9ce5edd5f9dc67f7ba.pdf\":\"WI-GR-06_Rev_30[1].pdf\"}', 'null'),
(176, 6, '', 4, '2023-05-27 08:16:53', '2023-05-27 08:16:53', 1, 1, 1, 3, 9, 'การควบคุมสัตว์พาหะนำเชื้อ', 'WI-GR-007', '', NULL, 24, 5, '2019-07-30', 'vpx4iqHrMRBGNSFceVrmg3', NULL, '{\"877e0922ca4928e9917bc3ce3dd37537.pdf\":\"WI-GR-07_Rev_24[1].pdf\"}', 'null'),
(177, 6, '', 4, '2023-05-27 08:17:36', '2023-05-27 08:17:36', 1, 1, 1, 3, 9, 'การควบคุมแก้วและพลาสติก', 'WI-GR-008', '', NULL, 6, 5, '2016-10-11', 'ElgC5V59soI-VIREm-qIZ4', NULL, '{\"97ca6e19729357f7a4f51bec469cea7a.pdf\":\"WI-GR-08_Rev_06[1].pdf\"}', 'null'),
(178, 6, '', 4, '2023-05-27 08:18:11', '2023-05-27 08:18:11', 1, 1, 1, 3, 9, 'การกำจัดขยะและของเสีย', 'WI-GR-009', '', NULL, 10, 5, '2017-09-01', 'P2VFTHvwpW0G7UVRlSf46m', NULL, '{\"66db5f52bd9387fd7e797e687e1643ff.pdf\":\"WI-GR-09_Rev_10[1].pdf\"}', 'null'),
(179, 6, '', 4, '2023-05-27 08:18:55', '2023-05-27 08:18:55', 1, 1, 1, 3, 9, 'การควบคุมสารเคมี', 'WI-GR-010', '', NULL, 12, 5, '2021-06-16', 'ODkLejDd-4-sLhIrR-OnQF', NULL, '{\"1f783eedf14ce6030a7a02b4e8a14aef.pdf\":\"WI-GR-10_Rev_12[1].pdf\"}', 'null'),
(180, 6, '', 4, '2023-05-27 08:19:31', '2023-05-27 08:19:31', 1, 1, 1, 3, 9, 'การทำความสะอาด', 'WI-GR-011', '', NULL, 2, 5, '2005-09-22', '47hBJyfMJL2MzHejnn0Chz', NULL, '{\"9758aac2871ca3d5064ee8ddc56aa0e2.pdf\":\"WI-GR-11_Rev_02[1].pdf\"}', 'null'),
(181, 6, '', 4, '2023-05-27 08:20:08', '2023-05-27 08:20:08', 1, 1, 1, 3, 9, 'การถอดถอนและการเรียกคืนผลิตภัณฑ์', 'WI-GR-012', '', NULL, 14, 5, '2021-03-15', 'jslMe4HXwFOsdBFN5_40D-', NULL, '{\"4149ee3cf0b1396f3cda2177ccbea439.pdf\":\"WI-GR-12_Rev_14[1].pdf\"}', 'null'),
(182, 6, '', 4, '2023-05-27 08:21:09', '2023-05-27 08:21:09', 1, 1, 1, 3, 9, 'การทำลายสินค้า', 'WI-GR-013', '', NULL, 2, 5, '2007-09-22', '4gdNckm2lT6fb5whXsvegu', NULL, '{\"becf43104353b20b41e348cc5f358edc.pdf\":\"WI-GR-13_Rev_02[1].pdf\"}', 'null'),
(183, 6, '', 4, '2023-05-27 08:21:49', '2023-05-27 08:21:49', 1, 1, 1, 3, 9, 'การเตรียมน้ำผสมคลอรีน', 'WI-GR-014', '', NULL, 3, 5, '2009-02-24', 'aJw5HM91bGTxHK2hT4Yiwe', NULL, '{\"e539bd86b916ea03ffcaaabe9ae21853.pdf\":\"WI-GR-14_Rev_03[1].pdf\"}', 'null'),
(184, 6, '', 4, '2023-05-27 08:22:38', '2023-05-27 08:22:38', 1, 1, 1, 3, 9, 'การเตรียมพื้นที่ก่อนการพ่นยาฆ่าแมลง', 'WI-GR-015', '', NULL, 4, 5, '2021-10-18', '9WaWZ9mSQauX8N9NkAWh9F', NULL, '{\"4725cc365a5c9928cbe93ab81fbfe66b.pdf\":\"WI-GR-15_Rev_04[1].pdf\"}', 'null'),
(185, 6, '', 4, '2023-05-27 08:28:15', '2023-05-27 08:28:15', 1, 1, 1, 3, 9, 'การควบคุม ณ จุดวิกฤติ', 'WI-GR-016', '', NULL, 2, 5, '2016-10-11', 'ceFhXp0KnnOX-geho63Mbg', NULL, '{\"4e303f84cedd3b71feb6e32d0f8be0b9.pdf\":\"WI-GR-16_Rev_02[1].pdf\"}', 'null'),
(186, 6, '', 4, '2023-05-27 08:29:03', '2023-05-27 08:29:53', 1, 1, 1, 3, 9, 'การยืนยันและทวนสอบกระบวนการ ณ OPRP และจุดวิกฤตของการฆ่าเชื้อPasteurizer', 'WI-GR-017', '', NULL, 9, 5, '2020-06-18', 'mmNFX7Kt86_8LAS4uv6Cau', NULL, '{\"f9b08d4f36105014b3d1d400757228c0.pdf\":\"WI-GR-17_Rev_09[1].pdf\"}', 'null'),
(187, 6, '', 4, '2023-05-27 08:30:42', '2023-05-27 08:30:42', 1, 1, 1, 3, 9, 'การซัก การตากและการรีดเสื้อกราวน์', 'WI-GR-019', '', NULL, 0, 5, '2013-11-16', 'pXojVsf-rqudTiOePmm-4k', NULL, '{\"3aaacb57cdefc1d845580e46aa51cce2.pdf\":\"WI-GR-19_Rev_00[1].pdf\"}', 'null'),
(188, 6, '', 4, '2023-05-27 08:31:57', '2023-05-27 08:31:57', 1, 1, 1, 3, 9, 'การปฏิบัติงาน และควบคุมดูแลงานธุรการ', 'WI-GR-020', '', NULL, 6, 5, '2020-04-30', 'ROVf61Enne_xA6jpMo2PTO', NULL, '{\"a1d62a522a03aea018e5146971e1153d.pdf\":\"WI-GR-20_Rev_06[1].pdf\"}', 'null'),
(189, 6, '', 4, '2023-05-27 08:33:07', '2023-05-27 08:33:07', 1, 1, 1, 3, 9, 'วิธีจัดการการระบาดฉุกเฉินของสัตว์พาหะภายในโรงงาน', 'WI-GR-021', '', NULL, 1, 5, '2017-10-09', 'zzpgech4DTNxtWSlA64j1c', NULL, '{\"8018661499300bc9481f170fab1b92ab.pdf\":\"WI-GR-21_Rev_01[1].pdf\"}', 'null'),
(190, 6, '', 4, '2023-05-27 08:33:52', '2023-05-27 08:33:52', 1, 1, 1, 3, 9, 'การลงโทษทางวินัย', 'WI-GR-022', '', NULL, 0, 5, '2019-04-01', '9j0hfuVJhlxOCi3ebKWe10', NULL, '{\"7222e985249a5e20657019902ea9f169.pdf\":\"WI-GR-22_Rev_00[1].pdf\"}', 'null'),
(191, 6, '', 4, '2023-05-27 08:34:23', '2023-05-27 08:34:23', 1, 1, 1, 3, 9, 'การเตรียมน้ำสบู่ดิน', 'WI-GR-023', '', NULL, 0, 5, '2020-07-07', 'b_HkpSuiMjIoLAzkKRgH5G', NULL, '{\"806de118be3e9e019e2521890e05097d.pdf\":\"WI-GR-23_Rev_00[1].pdf\"}', 'null');
INSERT INTO `requester` (`id`, `types_id`, `type_details`, `status_id`, `created_at`, `updated_at`, `created_by`, `updated_by`, `request_by`, `categories_id`, `departments_id`, `document_title`, `document_number`, `details`, `document_name`, `latest_rev`, `document_age`, `document_public_at`, `ref`, `fullname`, `covenant`, `docs`) VALUES
(192, 6, '', 4, '2023-05-27 08:34:58', '2023-05-27 08:34:58', 1, 1, 1, 3, 9, 'การตรวจสุขภาพตามปัจจัยเสี่ยง', 'WI-GR-024', '', NULL, 0, 5, '2020-08-01', 'LhtRYF15DY5ike1TEP9ZO0', NULL, '{\"57d43eed6201058d673a4f2afa804255.pdf\":\"WI-GR-24_Rev_00[1].pdf\"}', 'null'),
(193, 6, '', 4, '2023-05-27 08:35:56', '2023-05-27 08:35:56', 1, 1, 1, 3, 9, 'แนวปฏิบัติเพื่อป้องกันแก้ไขปัญหาการล่วงละเมิดหรือคุกคามทางเพศในที่ทำงาน', 'WI-GR-025', '', NULL, 0, 5, '2021-07-01', 'PZU2ZjtBdanVJHDmnbOPfW', NULL, '{\"356080b727d70b94a33063bfe1884e38.pdf\":\"WI-GR-25_Rev_00[1].pdf\"}', 'null'),
(194, 6, '', 4, '2023-05-27 08:36:51', '2023-05-27 08:36:51', 1, 1, 1, 3, 9, 'การบันทึกและตรวจสอบกล้องวงจรปิด', 'WI-GR-018', '', NULL, 3, 5, '2020-05-01', 'QF6wTM-j0mJC6JbsPa_c2_', NULL, '{\"3d871e3c97e86442bb9f8d41e18581e4.pdf\":\"WI-GR-18_Rev_03[1].pdf\"}', 'null'),
(195, 6, '', 4, '2023-05-27 08:39:32', '2023-05-27 08:39:32', 1, 1, 1, 4, 10, 'คู่มือการจัดการมาตรฐานแรงงานไทย มรท.8001-2563', 'MM-MM-001', '', NULL, 7, 5, '2020-09-01', 'AtGOMMcM9QDnRbHZlGteaS', NULL, '{\"40531cbdd1163876a9b0cec82ecbc4c9.pdf\":\"MM-MM-01_Rev_07[1].pdf\"}', 'null'),
(196, 6, '', 4, '2023-05-27 08:40:57', '2023-05-27 08:40:57', 1, 1, 1, 5, 2, 'การรับวัตถุดิบเข้าไซโล', 'SP-PD-038', '', NULL, 2, 5, '2014-10-30', 'x66I5fgi_cz8GTDSEaNA5u', NULL, '{\"4fef2ceb31bb21c266e6a451bb0ccab6.pdf\":\"SP-PD-38_Rev_02[1].pdf\"}', 'null'),
(197, 6, '', 4, '2023-05-27 08:48:12', '2023-05-27 08:48:12', 1, 1, 1, 5, 2, 'การชั่งวัตถุดิบ', 'SP-PD-039', '', NULL, 0, 5, '2004-12-13', 'JkW-_OByOTp9zPSnpe0Cy-', NULL, '{\"5247ba39294a7e33f05b48537f6ee113.pdf\":\"SP-PD-39_Rev_00[1].pdf\"}', 'null'),
(198, 6, '', 4, '2023-05-27 08:48:56', '2023-05-27 08:48:56', 1, 1, 1, 5, 2, 'การเตรียมข้าวสาลีหรือข้าวสารคั่วบด', 'SP-PD-040', '', NULL, 5, 5, '2019-08-09', 'UDMfNFdSZ8dWDVgIaogG61', NULL, '{\"d311ee50bdc0e0cb63fa80057686c7c2.pdf\":\"SP-PD-40_Rev_05[1].pdf\"}', 'null'),
(199, 6, '', 4, '2023-05-27 08:49:41', '2023-05-27 08:49:41', 1, 1, 1, 5, 2, 'การนึ่งถั่วเหลือง', 'SP-PD-041', '', NULL, 3, 5, '2017-05-31', '4h8mNkAOyc4jyaRclcchJK', NULL, '{\"55e6723acb9642df8fadd509d59c084e.pdf\":\"SP-PD-41_Rev_03[1].pdf\"}', 'null'),
(200, 6, '', 4, '2023-05-27 08:50:30', '2023-05-27 08:50:30', 1, 1, 1, 5, 2, 'การละลายเกลือ', 'SP-PD-042', '', NULL, 1, 5, '2018-12-10', 'LdEJ8rpVOxZ7wiFtjlEL-S', NULL, '{\"ebc38427b54401acc0aae6caeb2e477d.pdf\":\"SP-PD-42_Rev_01[1].pdf\"}', 'null'),
(201, 6, '', 4, '2023-05-27 08:51:28', '2023-05-27 08:51:28', 1, 1, 1, 5, 2, 'การเตรียมการส่งน้ำเกลือ', 'SP-PD-043', '', NULL, 0, 5, '2004-12-13', 'o4q4tJ4EBAZ7J3NIettLuA', NULL, '{\"6d02dae3e63873fb510359ab7d3fc5dc.pdf\":\"SP-PD-43_Rev_00[1].pdf\"}', 'null'),
(202, 6, '', 4, '2023-05-27 08:52:01', '2023-05-27 08:52:01', 1, 1, 1, 5, 2, 'การ HEAPING', 'SP-PD-044', '', NULL, 0, 5, '2004-12-13', 'c0csdRRftzmUfKhR9JgWxb', NULL, '{\"2f4453a7d9b12baa47358e12a01b4169.pdf\":\"SP-PD-44_Rev_00[1].pdf\"}', 'null'),
(203, 6, '', 4, '2023-05-27 08:52:37', '2023-05-27 08:52:37', 1, 1, 1, 5, 2, 'การจ่ายออกโคจิ', 'SP-PD-045', '', NULL, 0, 5, '2004-12-13', 'W0euPLH7ZGL9gOv9C1G_II', NULL, '{\"deeeb3f35d82dadb8271d3d5622a929e.pdf\":\"SP-PD-45_Rev_00[1].pdf\"}', 'null'),
(204, 6, '', 4, '2023-05-27 08:53:17', '2023-05-27 08:53:17', 1, 1, 1, 5, 2, 'การหมัก', 'SP-PD-046', '', NULL, 5, 5, '2018-12-03', 'tHrynLHtTadRCKa_nflJmD', NULL, '{\"08ee1b39b167d53b44150e745745d855.pdf\":\"SP-PD-46_Rev_05[1].pdf\"}', 'null'),
(205, 6, '', 4, '2023-05-27 08:53:54', '2023-05-27 08:53:54', 1, 1, 1, 5, 2, 'การคั้น', 'SP-PD-047', '', NULL, 1, 5, '2018-12-03', 'B6gnP6BAIpWLmTuJqcDNV1', NULL, '{\"94d591b3d58b53e93ff92c8290bc0894.pdf\":\"SP-PD-47_Rev_01[1].pdf\"}', 'null'),
(206, 6, '', 4, '2023-05-27 08:54:35', '2023-05-27 08:54:35', 1, 1, 1, 5, 2, 'การกรอง', 'SP-PD-048', '', NULL, 3, 5, '2018-11-09', 'u-Mk4w9XUbcph0SaQt9GG8', NULL, '{\"5ab55b1be1cf60fc4e7260770049c83d.pdf\":\"SP-PD-48_Rev_03[1].pdf\"}', 'null'),
(207, 6, '', 4, '2023-05-27 08:55:08', '2023-05-27 08:55:08', 1, 1, 1, 5, 2, 'การฆ่าเชื้อ', 'SP-PD-049', '', NULL, 7, 5, '2020-02-22', 'YXQrMrGS_nplCaI8WbM-w6', NULL, '{\"dd01a4f423e30a1a3f7b8739acd49d36.pdf\":\"SP-PD-49_Rev_07[1].pdf\"}', 'null'),
(208, 6, '', 4, '2023-05-27 08:56:01', '2023-05-27 08:56:01', 1, 1, 1, 5, 2, 'การปั๊มย้ายซีอิ๊วผลิตภัณฑ์', 'SP-PD-051', '', NULL, 1, 5, '2021-09-01', 'ldTMjYu7bvf78zVZDjWvQl', NULL, '{\"78f4dcfbc966ee331e10cebb2b1cab74.pdf\":\"SP-PD-51_Rev_01[1].pdf\"}', 'null'),
(209, 6, '', 4, '2023-05-27 08:56:36', '2023-05-27 08:56:36', 1, 1, 1, 5, 2, 'การซักผ้าคั้น', 'SP-PD-052', '', NULL, 7, 5, '2020-12-04', 'kpKF-yCSHE2VqX7upRVacT', NULL, '{\"8321a9e2a655bcab28fa41369339f93e.pdf\":\"SP-PD-52_Rev_07[1].pdf\"}', 'null'),
(210, 6, '', 4, '2023-05-27 08:57:08', '2023-05-27 08:57:08', 1, 1, 1, 5, 2, 'มาตรฐานกระบวนการผลิต', 'SP-PD-053', '', NULL, 1, 5, '2018-12-08', '-4YzD1Cliai6lIrcshSd-W', NULL, '{\"fcb2bba8c0dce0962cb879f6f439d392.pdf\":\"SP-PD-53_Rev_01[1].pdf\"}', 'null'),
(211, 6, '', 4, '2023-05-27 08:57:51', '2023-05-27 08:57:51', 1, 1, 1, 5, 2, 'ระเบียบปฏิบัติและขั้นตอนการแต่งกายของพนักงานเข้าห้องล้างบรรจุภัณฑ์ ห้องบรรจุและผสมซอส', 'SP-PD-054', '', NULL, 3, 5, '2020-02-22', 'hx8KPBKHUmTvmqela1qPaY', NULL, '{\"b14c587b79822d173bf04fda33dad7c5.pdf\":\"SP-PD-54_Rev_03[1].pdf\"}', 'null'),
(212, 6, '', 4, '2023-05-27 08:58:25', '2023-05-27 08:58:25', 1, 1, 1, 5, 2, 'การยืนยันกระบวนการ CIP', 'SP-PD-055', '', NULL, 1, 5, '2018-09-24', 'aByuJ08o1S2CMt2DntFwD_', NULL, '{\"9d171a34e2b94665b1040cdea90210e4.pdf\":\"SP-PD-55_Rev_01[1].pdf\"}', 'null'),
(213, 6, '', 4, '2023-05-27 08:59:00', '2023-05-27 08:59:00', 1, 1, 1, 5, 2, 'การสีถั่วเหลือง', 'SP-PD-056', '', NULL, 0, 5, '2014-08-15', 'm9mixSmBRg3vani08fWY84', NULL, '{\"6692ef382c4c63a469d1250f139e92b2.pdf\":\"SP-PD-56_Rev_00[1].pdf\"}', 'null'),
(214, 6, '', 4, '2023-05-27 09:00:02', '2023-05-27 09:00:02', 1, 1, 1, 5, 2, 'การใช้รถยก hand pallet truck และการทำความสะอาด', 'SP-PD-062', '', NULL, 0, 5, '2015-06-12', 'aIft5sl3aHEgBgYucceU4P', NULL, '{\"d1167b2467dd5c1ce87d5d68c9f718c3.pdf\":\"SP-PD-62_Rev_00[1].pdf\"}', 'null'),
(215, 6, '', 4, '2023-05-27 09:00:40', '2023-05-27 09:00:40', 1, 1, 1, 5, 2, 'การใช้เครื่อง Separator', 'SP-PD-063', '', NULL, 0, 5, '2015-08-12', 'V-J0RC_yVIriy2DEOP3Gii', NULL, '{\"b2405edbc260949d6c7bdd913da64349.pdf\":\"SP-PD-63_Rev_00[1].pdf\"}', 'null'),
(216, 6, '', 4, '2023-05-27 09:01:16', '2023-05-27 09:01:16', 1, 1, 1, 5, 2, 'การใช้เครื่องนึ่งถั่วจำลอง', 'SP-PD-064', '', NULL, 0, 5, '2015-08-12', '7V0s_M--1uZ3zsGljVIJHT', NULL, '{\"2b563e3f2eb2ecbff07135b2eafc4e64.pdf\":\"SP-PD-64_Rev_00[1].pdf\"}', 'null'),
(217, 6, '', 4, '2023-05-27 09:01:48', '2023-05-27 09:01:48', 1, 1, 1, 5, 2, 'การใช้หม้อJacket kettle', 'SP-PD-065', '', NULL, 0, 5, '2015-08-12', 'O88pJUYaROnfprH91rj_cH', NULL, '{\"e9025606026bbaf3a499b35508380f69.pdf\":\"SP-PD-65_Rev_00[1].pdf\"}', 'null'),
(218, 6, '', 4, '2023-05-27 09:02:27', '2023-05-27 09:02:27', 1, 1, 1, 5, 2, 'การใช้เครื่อง Evaporator', 'SP-PD-066', '', NULL, 0, 5, '2015-08-12', '5kpQefxApZ8MpOFxVaTNgA', NULL, '{\"79f9028e254bbbc480b3bb9650fdc9d8.pdf\":\"SP-PD-66_Rev_00[1].pdf\"}', 'null'),
(219, 6, '', 4, '2023-05-27 09:03:06', '2023-05-27 09:03:06', 1, 1, 1, 5, 2, 'การใช้เครื่องควบคุมห้องโคจิจำลอง', 'SP-PD-067', '', NULL, 0, 5, '2015-08-12', 'XYCOUzlFR8wPyJ60OBqb4H', NULL, '{\"4175d342fd211fd1e44bce405890d4b0.pdf\":\"SP-PD-67_Rev_00[1].pdf\"}', 'null'),
(220, 6, '', 4, '2023-05-27 09:03:37', '2023-05-27 09:03:37', 1, 1, 1, 5, 2, 'การทบทวนเอกสารของฝ่ายปฏิบัติการ', 'SP-PD-068', '', NULL, 0, 5, '2018-10-01', 'ibRiG6tlIUCndy8U9V5F1_', NULL, '{\"2b82379c603442e1b6280ebfca4ed89c.pdf\":\"SP-PD-68_Rev_00[1].pdf\"}', 'null'),
(221, 6, '', 4, '2023-05-27 09:04:32', '2023-05-27 09:04:32', 1, 1, 1, 5, 2, 'คู่มือการใช้งานเครื่อง เครื่องพิมพ์อิงค์เจ็ตสำหรับพิมพ์อักษรขนาดเล็ก VJ1710', 'SP-PD-069', '', NULL, 0, 5, '2019-08-08', 'OFMoxiZiellTGSJ_6YFBBb', NULL, '{\"efedc4ceca7d863a652f37c1fae21dc4.pdf\":\"SP-PD-69_Rev_00[1].pdf\"}', 'null'),
(222, 6, '', 4, '2023-05-27 09:05:02', '2023-05-27 09:05:02', 1, 1, 1, 5, 2, 'คู่มือการใช้งานเครื่องติดเทปกล่อง EC-701 Auto Uniform Carton Sealer', 'SP-PD-070', '', NULL, 0, 5, '2020-07-24', 'yuoaeaoFRS9qoomJqs9vNf', NULL, '{\"2b59435ddb858dce34e1fa79e4fd5c80.pdf\":\"SP-PD-70_Rev_00[1].pdf\"}', 'null'),
(223, 6, '', 4, '2023-05-27 09:05:36', '2023-05-27 09:05:36', 1, 1, 1, 5, 2, 'คู่มือการใช้งานเครื่องชั่งไฟฟ้า ยี่ห้อ DIGI Model. DIX-2001P-B405S', 'SP-PD-071', '', NULL, 0, 5, '2020-07-24', '_jSVoc2jFNJSKdWeEU75Ci', NULL, '{\"b3c0405214b5798cfb5348b089f571dc.pdf\":\"SP-PD-71_Rev_00[1].pdf\"}', 'null'),
(224, 6, '', 4, '2023-05-27 10:19:01', '2023-05-27 10:19:01', 1, 1, 1, 5, 3, 'แผนการตรวจสอบคุณภาพ', 'SP-QC-007', '', NULL, 9, 5, '2021-09-17', 'KwFA8MD1S6DdMu8H7VlICL', NULL, '{\"4e2e9f07cbca69fbba4eee9a0c57d0e2.pdf\":\"SP-QC-07_Rev_09[1].pdf\"}', 'null'),
(225, 6, '', 4, '2023-05-27 10:21:44', '2023-05-27 10:21:44', 1, 1, 1, 5, 3, 'พรบ. อาหาร', 'SP-QC-008', '', NULL, 0, 5, '2000-01-01', 'gGgTD9f5P0SsJltVjuQg2s', NULL, '{\"6c233b4d4b2a8dfe28a0a838adc5d3e9.pdf\":\"SP-QC-08_Rev_00[1].pdf\"}', 'null'),
(226, 6, '', 4, '2023-05-27 10:23:04', '2023-05-27 10:23:04', 1, 1, 1, 5, 3, 'ตัวอย่างฉลาก', 'SP-QC-022', '', NULL, 3, 5, '2012-02-01', '9DsPCRh8msGaTFjQdJBV9A', NULL, NULL, 'null'),
(227, 6, '', 4, '2023-05-27 10:24:37', '2023-05-27 10:24:37', 1, 1, 1, 5, 3, 'คู่มือการวิเคราะห์น้ำและน้ำเสีย', 'SP-QC-030', '', NULL, 0, 5, '2000-01-01', 'Yv_QmZtXVmxFD-GJj8cdYC', NULL, '{\"91cda7a83cc248b8aafe74fae887e018.pdf\":\"SP-QC-30_Rev_00[1].pdf\"}', 'null'),
(228, 6, '', 4, '2023-05-27 10:25:25', '2023-05-27 10:25:25', 1, 1, 1, 5, 3, 'RM SPECIFICATION', 'SP-QC-032', '', NULL, 2, 5, '2013-07-06', 'nrXPjO_An1jhldtnCU67Rw', NULL, '{\"234d9a5d3c48dae263963ce86cbbb754.pdf\":\"SP-QC-32_Rev_02[1].pdf\"}', 'null'),
(229, 6, '', 4, '2023-05-27 10:26:12', '2023-05-27 10:26:12', 1, 1, 1, 5, 3, 'วิเคราะห์น้ำ', 'SP-QC-034', '', NULL, 0, 5, '2000-01-01', 'yzTcPNEvwhAMzlBOgyWjt7', NULL, '{\"931980121f0556bfba258faf02c6ba1f.pdf\":\"SP-QC-34_Rev_00[1].pdf\"}', 'null'),
(230, 6, '', 4, '2023-05-27 10:27:05', '2023-05-27 10:27:05', 1, 1, 1, 5, 3, 'ผลการวิเคราะห์ 2', 'SP-QC-035', '', NULL, 0, 5, '2000-01-01', 'mNsKnW5sHz9GFZ2STuJKGz', NULL, '{\"4a1b7132f2b4c19e7d69d9ea84553b65.pdf\":\"SP-QC-35_Rev_00[1].pdf\"}', 'null'),
(231, 6, '', 4, '2023-05-27 10:28:03', '2023-05-27 10:28:03', 1, 1, 1, 5, 3, 'สมุดปรับตั้งเครื่องมือและอุปกรณ์', 'SP-QC-037', '', NULL, 0, 5, '2000-01-01', 'EUWaJaMaH7I_RTGZkR-okE', NULL, '{\"f38cb2f69e5963a22849024b119a4b33.pdf\":\"SP-QC-37_Rev_00[1].pdf\"}', 'null'),
(232, 6, '', 4, '2023-05-27 10:29:42', '2023-05-27 10:29:42', 1, 1, 1, 5, 3, 'มาตรฐานคุณภาพน้ำทิ้งจากโรงงาน และผลการวิเคราะห์ประจำปี', 'SP-QC-054', '', NULL, 0, 5, '2017-06-07', 'S5U_GiDfvy6cpuwJRc53Lk', NULL, '{\"def59619d9c6bf95d87b12b8fafcb94f.pdf\":\"SP-QC-54_Rev_01[1].pdf\"}', 'null'),
(233, 6, '', 4, '2023-05-27 10:30:28', '2023-05-27 10:30:28', 1, 1, 1, 5, 3, 'jas', 'SP-QC-057', '', NULL, 0, 5, '2000-01-01', 'L3g0BF3WpDlTtXkQcDC3di', NULL, '{\"3db87567143908c472314ea95a6b6a4d.pdf\":\"SP-QC-57_Rev_00[1].pdf\"}', 'null'),
(234, 6, '', 4, '2023-05-27 10:31:17', '2023-05-27 10:31:17', 1, 1, 1, 5, 3, 'analysis of soy sauce', 'SP-QC-058', '', NULL, 0, 5, '2007-07-16', 'Z-ylGhuBEM6emJv7ghhCr6', NULL, '{\"6beca870a697398eb1c5c474bb256482.pdf\":\"SP-QC-58_Rev_00[1].pdf\"}', 'null'),
(235, 6, '', 4, '2023-05-27 10:31:57', '2023-05-27 10:31:57', 1, 1, 1, 5, 3, 'MIL-STD', 'SP-QC-059', '', NULL, 0, 5, '2000-01-01', '7Zm0RvxqjS-vhWdYTuPBQ8', NULL, '{\"4c83f949cc07825e4761dc7cc8e4ae12.pdf\":\"SP-QC-59_Rev_00[1].pdf\"}', 'null'),
(236, 6, '', 4, '2023-05-27 10:37:00', '2023-05-27 10:37:00', 1, 1, 1, 5, 3, 'CAC/RCP', 'SP-QC-060', '', NULL, 0, 5, '2000-01-01', 'ZPodPvM84DP4q6ddqVxiBD', NULL, '{\"2043231aaabdc1762959ca3f986a044a.pdf\":\"SP-QC-60_Rev_00.pdf\"}', 'null'),
(237, 6, '', 4, '2023-05-27 10:38:07', '2023-05-27 10:38:07', 1, 1, 1, 5, 3, 'CAC/RCP 2003', 'SP-QC-061', '', NULL, 0, 5, '2000-01-01', 'uv0-_MHdjwx39bkbaldTWB', NULL, '{\"01db47400e7e57e6f955cf0366faafd9.pdf\":\"SP-QC-61_Rev_00[1].pdf\"}', 'null'),
(238, 6, '', 4, '2023-05-27 10:41:02', '2023-05-27 10:41:02', 1, 1, 1, 5, 3, 'คู่มือความปลอดภัย ห้องปฏิบัติการ', 'SP-QC-063', '', NULL, 1, 5, '2015-02-18', 'FkbxoBPPZQw7nfQbShsVuT', NULL, '{\"eed2724546740cc755c642b93f70f75b.pdf\":\"SP-QC-63_Rev_01.pdf\"}', 'null'),
(239, 6, '', 4, '2023-05-27 10:42:23', '2023-05-27 10:42:23', 1, 1, 1, 5, 3, 'SPQC64', 'SP-QC-064', '', NULL, 0, 5, '2000-01-01', '7Bd0jD8cHhaFEzJm_lffe2', NULL, '{\"59a926e66741e0df6a275a501b8d3da2.pdf\":\"SP-QC-64_Rev_00[1].pdf\"}', 'null'),
(240, 6, '', 4, '2023-05-27 10:43:00', '2023-05-27 10:43:00', 1, 1, 1, 5, 3, 'SPQC66', 'SP-QC-066', '', NULL, 0, 5, '2000-01-01', 'yaMJ7uPSBWaa9ZRlc7i_Tf', NULL, '{\"bc80bcf50c64740e6235e3d1f0315103.pdf\":\"SP-QC-66_Rev_00[1].pdf\"}', 'null'),
(241, 6, '', 4, '2023-05-27 10:44:27', '2023-05-27 10:44:27', 1, 1, 1, 5, 3, 'รวมกฏหมายสินค้าหีบห่อ', 'SP-QC-067', '', NULL, 0, 5, '2000-01-01', 'hmXw5dXOmn0wxL66UelRjh', NULL, '{\"f232eeaf2cdf59ba0b72e96b727752eb.pdf\":\"SP-QC-67_Rev_00[1].pdf\"}', 'null'),
(242, 6, '', 4, '2023-05-27 10:44:57', '2023-05-27 10:44:57', 1, 1, 1, 5, 3, 'SPQC68', 'SP-QC-068', '', NULL, 0, 5, '2000-01-01', '0IYKASPBUGGsKVoeNzGgwg', NULL, '{\"f9eeb6043f6cc2eb30e782e97c694f40.pdf\":\"SP-QC-68_Rev_00[1].pdf\"}', 'null'),
(243, 6, '', 4, '2023-05-27 10:45:46', '2023-05-27 10:45:46', 1, 1, 1, 5, 3, 'แนวทาง น้ำปลา เกลือ', 'SP-QC-069', '', NULL, 0, 5, '2011-09-01', 'KLsamcZq0-GNjQ14QjShiq', NULL, '{\"52ce77b00bc370f92d449365dc15e896.pdf\":\"SP-QC-69_Rev_00[1].pdf\"}', 'null'),
(244, 6, '', 4, '2023-05-27 10:46:45', '2023-05-27 10:46:45', 1, 1, 1, 5, 3, 'แผนการสุ่มตัวอย่าง ', 'SP-QC-070', '', NULL, 1, 5, '2019-08-08', 'VLAZ5JaROy5Rfx5kNd-0NF', NULL, '{\"ccd140dc9902fee86ffffcd4c68bf5aa.pdf\":\"SP-QC-70_Rev_01[1].pdf\"}', 'null'),
(245, 6, '', 4, '2023-05-27 10:47:36', '2023-05-27 10:47:36', 1, 1, 1, 5, 3, 'มอกช 9002', 'SP-QC-072', '', NULL, 0, 5, '2011-09-01', '3tJA3pbfKVVz6vJRwV24ZI', NULL, '{\"a0098265aa79e8f7bf329a215f9bd845.pdf\":\"SP-QC-72_Rev_00[1].pdf\"}', 'null'),
(246, 6, '', 4, '2023-05-27 10:48:16', '2023-05-27 10:48:16', 1, 1, 1, 5, 3, 'DOTH', 'SP-QC-073', '', NULL, 0, 5, '2012-01-11', 'BjTo9I0rbWivgHEXFA_QsL', NULL, '{\"72782b5e9ce78f97be8964453a485c25.pdf\":\"SP-QC-73_Rev_00[1].pdf\"}', 'null'),
(247, 6, '', 4, '2023-05-27 10:48:58', '2023-05-27 10:48:58', 1, 1, 1, 5, 3, 'SPQC74', 'SP-QC-074', '', NULL, 0, 5, '2000-01-01', '4gNJ5q3UF_a6y4ztbkVy5i', NULL, '{\"3579afea65306beeb70aff2de32bc5f8.pdf\":\"SP-QC-74_Rev_00[1].pdf\"}', 'null'),
(248, 6, '', 4, '2023-05-27 10:49:46', '2023-05-27 10:49:46', 1, 1, 1, 5, 3, 'AOAC', 'SP-QC-075', '', NULL, 0, 5, '2000-01-01', 'MKa3o8gYQUwOu6MTKMnrdv', NULL, '{\"a6c66678d24d99352b6cbe84ac01cab7.pdf\":\"SP-QC-75_Rev_00[1].pdf\"}', 'null'),
(249, 6, '', 4, '2023-05-27 10:50:26', '2023-05-27 10:50:26', 1, 1, 1, 5, 3, 'คู่มือวิเคราะห์น้ำเสีย', 'SP-QC-076', '', NULL, 0, 5, '2000-01-01', 'a6oLIO8P2MEyVcdh9kKd45', NULL, '{\"466f4e7ad6060389c71ee57442bb9bf0.pdf\":\"SP-QC-76_Rev_00[1].pdf\"}', 'null'),
(250, 6, '', 4, '2023-05-27 10:51:07', '2023-05-27 10:51:07', 1, 1, 1, 5, 3, 'คุณสมบัติน้ำ', 'SP-QC-077', '', NULL, 0, 5, '2006-12-04', 'EFw-BckDrq-p7aFGG__i8L', NULL, '{\"28424e387e7a3df8e887f56daf8bd8a2.pdf\":\"SP-QC-77_Rev_00[1].pdf\"}', 'null'),
(251, 6, '', 4, '2023-05-27 10:51:51', '2023-05-27 10:51:51', 1, 1, 1, 5, 3, 'เส้นทางลำเลียงขยะของเสีย', 'SP-QC-078', '', NULL, 4, 5, '2022-02-21', 'K-dV8B6fcgfZGRzNFBIGeJ', NULL, '{\"775cfe50e479e25b2a8b9d5eac6b43f7.pdf\":\"SP-QC-78_Rev_04[1].pdf\"}', 'null'),
(252, 6, '', 4, '2023-05-27 10:52:39', '2023-05-27 10:52:39', 1, 1, 1, 5, 3, 'เส้นทางเข้าห้องแล็บและทางเข้าตัวอย่าง', 'SP-QC-079', '', NULL, 1, 5, '2022-02-21', 'mJHPKZuThn9pTL_0yZAhgJ', NULL, '{\"155356df39b0fc48885585b05f9b3467.pdf\":\"SP-QC-79_Rev_01[1].pdf\"}', 'null'),
(253, 6, '', 4, '2023-05-27 10:53:25', '2023-05-27 10:53:25', 1, 1, 1, 5, 3, 'ล้างภาชนะบรรจุ', 'SP-QC-081', '', NULL, 2, 5, '2019-01-25', 'L3KfL-2Me-mnIUvekd6tPc', NULL, '{\"73791fb80a0ae7580232f47883e41108.pdf\":\"SP-QC-81_Rev_02[1].pdf\"}', 'null'),
(254, 6, '', 4, '2023-05-27 10:54:26', '2023-05-27 10:54:26', 1, 1, 1, 5, 3, 'วิธีวิเคราะห์ ด้านจุลินทรีย์', 'SP-QC-083', '', NULL, 0, 5, '2000-01-01', '7yO8J-zuQWCOM8-HWS75R0', NULL, '{\"f3afef65c7834fef244dde3396b36657.pdf\":\"SP-QC-83_Rev_00[1].pdf\"}', 'null'),
(255, 6, '', 4, '2023-05-27 10:55:27', '2023-05-27 10:55:27', 1, 1, 1, 5, 3, 'คู่มือ MRP แผนก QC', 'SP-QC-084', '', NULL, 0, 5, '2020-01-01', 'b3eK83WqxznxlRWuks0eTc', NULL, '{\"c25f83f4da4abc135cde368c89bebd48.pdf\":\"SP-QC-84_Rev_00[1].pdf\"}', 'null'),
(256, 6, '', 4, '2023-05-27 10:56:10', '2023-05-27 10:56:10', 1, 1, 1, 5, 3, 'ระเบียบปฏิบัติการใช้ห้องLab &ขั้นตอนการแต่งกายของพนักงานและอุปกรณ์ PPE', 'SP-QC-085', '', NULL, 1, 5, '2017-04-03', 'SRldEr54Y2I_5BktNWwKLm', NULL, '{\"4267e2325406eea1a81b62a366774c71.pdf\":\"SP-QC-85_Rev_01[1].pdf\"}', 'null'),
(257, 6, '', 4, '2023-05-27 10:56:47', '2023-05-27 10:56:47', 1, 1, 1, 5, 3, 'การทำความสะอาดห้อง LAB', 'SP-QC-086', '', NULL, 1, 5, '2016-08-01', 'YdqQy5SZ9vpJM7nLN0HTIS', NULL, '{\"4417393f786a15368cae976ecb8748e5.pdf\":\"SP-QC-86_Rev_01[1].pdf\"}', 'null'),
(258, 6, '', 4, '2023-05-27 10:57:30', '2023-05-27 10:57:30', 1, 1, 1, 5, 3, 'การวิคราะห์', 'SP-QC-088', '', NULL, 0, 5, '2020-01-01', '49-mcrMmhY6kqLpWNhqJPn', NULL, '{\"9c28c6e2ed619efa816f119a6ceb077a.pdf\":\"SP-QC-88_Rev_00[1].pdf\"}', 'null'),
(259, 6, '', 4, '2023-05-27 10:57:58', '2023-05-27 10:57:58', 1, 1, 1, 5, 3, 'คู่มือการแปลผล Staph Express Count Plate ', 'SP-QC-089', '', NULL, 0, 5, '2016-06-10', 'JaILJzbdri-C423NWpmDkL', NULL, '{\"a242c3840630a9b943c006c7f2385065.pdf\":\"SP-QC-89_Rev_00[1].pdf\"}', 'null'),
(260, 6, '', 4, '2023-05-27 10:58:32', '2023-05-27 10:58:32', 1, 1, 1, 5, 3, 'ชุดตรวจ Reveal 3-D Gliadin R5', 'SP-QC-090', '', NULL, 0, 5, '2016-09-14', 'ubNRwgC5P-LEklKGIcjtIE', NULL, '{\"447f05a3ffa64a2ac4eb6a9a391eeed1.pdf\":\"SP-QC-90_Rev_00[1].pdf\"}', 'null'),
(261, 6, '', 4, '2023-05-27 10:59:04', '2023-05-27 10:59:04', 1, 1, 1, 5, 3, 'เกณฑ์คุณภาพทางจุลชีววิทยาของอาหารและภาชนะสัมผัสอาหาร ฉบับที่ 3', 'SP-QC-091', '', NULL, 0, 5, '2017-06-16', 'sMnItjRYExXey6wPQHLj0z', NULL, '{\"7446ac1ae6cb9e261e8a5d542a5ebd80.pdf\":\"SP-QC-91_Rev_00[1].pdf\"}', 'null'),
(262, 6, '', 4, '2023-05-27 10:59:43', '2023-05-27 10:59:43', 1, 1, 1, 5, 3, 'ทดสอบอ็อกซิเจน', 'SP-QC-093', '', NULL, 0, 5, '2018-09-24', '4tmvbqp_k4qFQ_MusQDyr5', NULL, '{\"f3a7df812b25966056029f1d1659c9d5.pdf\":\"SP-QC-93_Rev_00[1].pdf\"}', 'null'),
(263, 6, '', 4, '2023-05-27 11:00:14', '2023-05-27 11:00:14', 1, 1, 1, 5, 3, 'ชุดตรวจ Reveal 3-D Gliadin R5', 'SP-QC-094', '', NULL, 0, 5, '2018-11-15', 'HADGJMwtVXmU1lmaBzf2Xv', NULL, '{\"e2ec7f4bb4b6956c21939d73fdfbe068.pdf\":\"SP-QC-94_Rev_00[1].pdf\"}', 'null'),
(264, 6, '', 4, '2023-05-27 11:00:58', '2023-05-27 11:00:58', 1, 1, 1, 5, 3, 'ชุดตรวจ 3m', 'SP-QC-095', '', NULL, 0, 5, '2018-11-15', 'E47mzaWShTsYZK5kJH4T53', NULL, '{\"1b6ba85b1522778683fb3b62037dd057.pdf\":\"SP-QC-95_Rev_00[1].pdf\"}', 'null'),
(265, 6, '', 4, '2023-05-27 11:02:28', '2023-05-27 11:02:28', 1, 1, 1, 5, 3, 'มอก 17-2532', 'SP-QC-096', '', NULL, 0, 5, '2019-06-27', '9lnLl9GsvRfP0pBHO3LJ4N', NULL, '{\"c353c9b0eb73b07b8385f70ccb5a4d5c.pdf\":\"SP-QC-96_Rev_00[1]_compressed.pdf\"}', 'null'),
(266, 6, '', 4, '2023-05-27 11:03:27', '2023-05-27 11:03:27', 1, 1, 1, 5, 3, 'PVC', 'SP-QC-097', '', NULL, 0, 5, '2019-06-27', 'WS954VdCK_mdCd-eSEyfcw', NULL, '{\"894ebbc9437d4a5e06594a8e6f9f51bd.pdf\":\"SP-QC-97_Rev_00[1].pdf\"}', 'null'),
(267, 6, '', 4, '2023-05-27 11:04:02', '2023-05-27 11:04:02', 1, 1, 1, 5, 3, 'อาหารเลี้ยงเชื้อ', 'SP-QC-098', '', NULL, 0, 5, '2019-07-26', 'JE5gQnXkMWakyVBI4puOUd', NULL, '{\"cf66d7556887ea4e896f681ca9c0b8ba.pdf\":\"SP-QC-98_Rev_00[1].pdf\"}', 'null'),
(268, 6, '', 4, '2023-05-27 11:04:38', '2023-05-27 11:04:38', 1, 1, 1, 5, 3, 'อาหารเลี้ยงเชื้อ', 'SP-QC-099', '', NULL, 0, 5, '2019-07-26', '8BF2aR63--IaIARDb6g4Xh', NULL, '{\"f0ca972dcae08a4054c0dbb1972651fa.pdf\":\"SP-QC-99_Rev_00[1].pdf\"}', 'null'),
(269, 6, '', 4, '2023-05-27 11:05:41', '2023-05-27 11:05:41', 1, 1, 1, 5, 3, 'คู่มือการใช้อาหารเลี้ยงเชื้อ', 'SP-QC-100', '', NULL, 0, 5, '2019-07-26', '3ZWCmOQVUoD2_RnM-CiAmg', NULL, '{\"1f632d63cabfbf9ce7272603c8a20c19.pdf\":\"SP-QC-100_Rev_00[1].pdf\"}', 'null'),
(270, 6, '', 4, '2023-05-27 11:06:43', '2023-05-27 11:06:43', 1, 1, 1, 5, 3, 'ชุดทดสอบสารก่อภูมิแพ้ในอาหาร', 'SP-QC-101', '', NULL, 0, 5, '2020-03-23', 'r51doJsD3PH5k94fBBFXUA', NULL, '{\"c98f1583a4dfab821529e9777aba77ba.pdf\":\"SP-QC-101_Rev_00[1].pdf\"}', 'null'),
(271, 6, '', 4, '2023-05-27 11:07:28', '2023-05-27 11:07:28', 1, 1, 1, 5, 3, 'แผนการติดตามสภาวะแวดล้อม (Environmental monitoring plan)', 'SP-QC-102', '', NULL, 2, 5, '2022-11-01', 'VUX7EvfilHe0x1K1bvJ0dY', NULL, '{\"cf6d0790615cf8f946b3629d004e9def.pdf\":\"SP-QC-102_Rev_02[1].pdf\"}', 'null'),
(272, 6, '', 4, '2023-05-27 13:10:55', '2023-05-27 13:10:55', 1, 1, 1, 5, 4, 'เครื่องกำเนิดไฟฟ้า', 'SP-EN-001', '', NULL, 0, 5, '2017-07-20', 'pIH665WNJ10sUPG3oxajrP', NULL, '{\"4419f543c27b16d7651eb593ce646117.pdf\":\"SP-EN-01_Rev_01[1].pdf\"}', 'null'),
(273, 6, '', 4, '2023-05-27 13:14:38', '2023-05-27 13:14:38', 1, 1, 1, 5, 4, 'ระบบเครื่องกรองน้ำ', 'SP-EN-002', '', NULL, 0, 5, '2017-07-20', 'l6NJzOY6f4Q1OqtTpVg7-G', NULL, '{\"f827c10cde18c5ec92b9e74e4876db9a.pdf\":\"SP-EN-02_Rev_01[1].pdf\"}', 'null'),
(274, 6, '', 4, '2023-05-27 13:15:15', '2023-05-27 13:15:15', 1, 1, 1, 5, 4, 'เครนยกของ', 'SP-EN-003', '', NULL, 0, 5, '2017-07-20', 'sW_nyMFa27uIRkCo4mPjUK', NULL, '{\"6fdbfe9d0752fc820ef549ddf32ec194.pdf\":\"SP-EN-03_Rev_01[1].pdf\"}', 'null'),
(275, 6, '', 4, '2023-05-27 13:16:08', '2023-05-27 13:16:08', 1, 1, 1, 5, 4, 'จิ๊กซอ', 'SP-EN-005', '', NULL, 0, 5, '2017-07-20', 'Zhd6vhg2Bu71HHRE7IAQ3c', NULL, '{\"5d075b6153d72631efa36689f5d926e2.pdf\":\"SP-EN-05_Rev_01[1].pdf\"}', 'null'),
(276, 6, '', 4, '2023-05-27 13:16:54', '2023-05-27 13:16:54', 1, 1, 1, 5, 4, 'เครื่องฉีดน้ำ', 'SP-EN-006', '', NULL, 0, 5, '2017-07-20', 'xMFbky411RyuXpcKwjTUQL', NULL, '{\"48a884ebd19153069019d74c8c6d8d28.pdf\":\"SP-EN-06_Rev_01[1].pdf\"}', 'null'),
(277, 6, '', 4, '2023-05-27 13:17:27', '2023-05-27 13:17:27', 1, 1, 1, 5, 4, 'เครื่องชั่ง', 'SP-EN-007', '', NULL, 0, 5, '2017-07-20', 'zJf1g53WNptXyJC19FhqJU', NULL, '{\"bfbafdf9dc6062c99940df6f6667ea15.pdf\":\"SP-EN-07_Rev_01[1].pdf\"}', 'null'),
(278, 6, '', 4, '2023-05-27 13:18:03', '2023-05-27 13:18:03', 1, 1, 1, 5, 4, 'เครื่องซักผ้า', 'SP-EN-008', '', NULL, 0, 5, '2017-07-25', 'B9Sn0onYEnGL0V0AcbTnGM', NULL, '{\"9249f2edb9dcc0757a29544bd8a29ed8.pdf\":\"SP-EN-08_Rev_01[1].pdf\"}', 'null'),
(279, 6, '', 4, '2023-05-27 13:18:50', '2023-05-27 13:18:50', 1, 1, 1, 5, 4, 'เครื่องดูดฝุ่น', 'SP-EN-010', '', NULL, 0, 5, '2017-07-25', 'JGJ4wxxbcRgwFz2HRev-WQ', NULL, '{\"dd01395b08e9c9a96963b62080329144.pdf\":\"SP-EN-10_Rev_01[1].pdf\"}', 'null'),
(280, 6, '', 4, '2023-05-27 13:19:27', '2023-05-27 13:19:27', 1, 1, 1, 5, 4, 'เครื่องดูดฝุ่น', 'SP-EN-011', '', NULL, 0, 5, '2017-07-25', 'PXbCjF6cxGN4HD6Z90LTwf', NULL, '{\"63e351e98b647ea20f93ed88cf19f486.pdf\":\"SP-EN-11_Rev_01[1].pdf\"}', 'null'),
(281, 6, '', 4, '2023-05-27 13:20:00', '2023-05-27 13:20:00', 1, 1, 1, 5, 4, 'เครื่องตัดหญ้า', 'SP-EN-012', '', NULL, 0, 5, '2017-07-25', 'UsmczzmN3LyUecrITwzy-O', NULL, '{\"bc279ed001dbb6eb779bfcce3ced6ae8.pdf\":\"SP-EN-12_Rev_01[1].pdf\"}', 'null'),
(282, 6, '', 4, '2023-05-27 13:20:31', '2023-05-27 13:20:31', 1, 1, 1, 5, 4, 'โทรศัพท์', 'SP-EN-013', '', NULL, 0, 5, '2017-07-25', 'j4r2XJh7RrBBXAwlv9CnKf', NULL, '{\"1915749b4bfea45127b2b5ba1f0069b7.pdf\":\"SP-EN-13_Rev_01[1].pdf\"}', 'null'),
(283, 6, '', 4, '2023-05-27 13:21:02', '2023-05-27 13:21:02', 1, 1, 1, 5, 4, 'โบร์เวอร์', 'SP-EN-014', '', NULL, 0, 5, '2017-07-25', '6rjVR0IGq41-ufvrKUyWcs', NULL, '{\"0a26d6501033b720bf1724bccdf79767.pdf\":\"SP-EN-14_Rev_01[1].pdf\"}', 'null'),
(284, 6, '', 4, '2023-05-27 13:21:46', '2023-05-27 13:21:46', 1, 1, 1, 5, 4, 'เพาเวอร์เพคเตอร์', 'SP-EN-016', '', NULL, 0, 5, '2017-07-25', 'fhTThBOGP3OzMKYOV031Zu', NULL, '{\"a49c73d7ef3d8ece93953f31ed279174.pdf\":\"SP-EN-16_Rev_01[1].pdf\"}', 'null'),
(285, 6, '', 4, '2023-05-27 13:22:15', '2023-05-27 13:22:15', 1, 1, 1, 5, 4, 'รถโฟคลิฟ', 'SP-EN-017', '', NULL, 0, 5, '2017-07-25', 'nqiciti9mL7sH6bwJ0fLZu', NULL, '{\"661a1023c70cdc693af33c3a9ccd6dbb.pdf\":\"SP-EN-17_Rev_01[1].pdf\"}', 'null'),
(286, 6, '', 4, '2023-05-27 13:22:50', '2023-05-27 13:22:50', 1, 1, 1, 5, 4, 'มอเตอร์ปั๊ม', 'SP-EN-018', '', NULL, 0, 5, '2017-07-25', 'bKAKN2o4gWB_DEMV3Tolmm', NULL, '{\"edf215116b62880af4399e7b35c4abcc.pdf\":\"SP-EN-18_Rev_01[1].pdf\"}', 'null'),
(287, 6, '', 4, '2023-05-27 13:23:36', '2023-05-27 13:23:36', 1, 1, 1, 5, 4, 'คู่มือข้อแนะนำเพื่อความปลอดภัยในการใช้รถโตโยต้า', 'SP-EN-037', '', NULL, 0, 5, '2017-07-25', 'FZCOngQtY6XukZZdCj5ekF', NULL, '{\"eb81f274b49e82f182716e270a1de24b.pdf\":\"SP-EN-37_Rev_01[1].pdf\"}', 'null'),
(288, 6, '', 4, '2023-05-27 13:24:11', '2023-05-27 13:24:11', 1, 1, 1, 5, 4, 'คู่มือ Plate ฆ่าเชื้อ', 'SP-EN-038', '', NULL, 0, 5, '2017-07-25', 'FtFIAvfuofdxKzNA-ZTVu2', NULL, '{\"2e51cfe58be8a5d5ceed96db63a65f09.pdf\":\"SP-EN-38_Rev_01[1].pdf\"}', 'null'),
(289, 6, '', 4, '2023-05-27 13:24:53', '2023-05-27 13:24:53', 1, 1, 1, 5, 4, 'แผนผังน้ำ Soft และน้ำใช้ทั่วไปและน้ำ Steam Condensed', 'SP-EN-039', '', NULL, 5, 5, '2021-01-07', 'SUbzUWZNSJfkf1AZGgsy5d', NULL, '{\"0887770e714787f6df0a186a0969b7fa.pdf\":\"SP-EN-39_Rev_05[1].pdf\"}', 'null'),
(290, 6, '', 4, '2023-05-27 13:25:40', '2023-05-27 13:25:40', 1, 1, 1, 5, 4, 'แผนผังทางเดินน้ำเสีย', 'SP-EN-040', '', NULL, 4, 5, '2021-06-17', '6O3sD2DMKNIO9U70dfuxK8', NULL, '{\"6773db81aee9f94d37b672bd52b60287.pdf\":\"SP-EN-40_Rev_04[1].pdf\"}', 'null'),
(291, 6, '', 4, '2023-05-27 13:26:34', '2023-05-27 13:26:34', 1, 1, 1, 5, 4, 'เรื่องการประเมินความถี่ของการสอบเทียบ', 'SP-EN-042', '', NULL, 0, 5, '2021-08-28', 'oku9nzmmr0w0w9z5SiDeXq', NULL, '{\"cd0147b2f4817a6e1ad4d511d8b3a2ab.pdf\":\"SP-EN-42_Rev_09[1].pdf\"}', 'null'),
(292, 6, '', 4, '2023-05-27 13:27:48', '2023-05-27 13:27:48', 1, 1, 1, 5, 4, 'ผังการผลิตน้ำใช้ในโรงงาน', 'SP-EN-043', '', NULL, 1, 5, '2020-05-05', 'h1Y2g48GDMmgMvyZpxmm9m', NULL, '{\"8a3f827ff8d573d1c5417579c10ca31f.pdf\":\"SP-EN-43_Rev_01[1].pdf\"}', 'null'),
(293, 6, '', 4, '2023-05-27 13:39:10', '2023-05-27 13:39:10', 1, 1, 1, 5, 4, 'คู่มือการตั้งรหัสเครื่องจักรและสินค้าในคลังวิศวกรรม', 'SP-EN-044', '', NULL, 0, 5, '2019-09-14', 'w31qHE6LOExckqWs3t6E_D', NULL, '{\"8c305214c8768fdc0877ae1792efcd75.pdf\":\"SP-EN-44_Rev_00[1].pdf\"}', 'null'),
(294, 6, '', 4, '2023-05-27 13:39:58', '2023-05-27 13:39:58', 1, 1, 1, 5, 4, 'คู่มือ Electromanetic Flow Meter', 'SP-EN-045', '', NULL, 0, 5, '2017-07-25', 'YLugZBfW4qa2sEIGSeSHBh', NULL, '{\"6cad5a0eaccc0c2c329b4e98b101a156.pdf\":\"SP-EN-45_Rev_00[1].pdf\"}', 'null'),
(295, 6, '', 4, '2023-05-27 13:40:38', '2023-05-27 13:40:38', 1, 1, 1, 5, 4, 'เครื่องปิดกล่อง', 'SP-EN-046', '', NULL, 0, 5, '2020-08-07', 'YU4It-0SDQT43GWrR55a4x', NULL, '{\"f513abb944470ecef110d436971d7d39.pdf\":\"SP-EN-46_Rev_00[1].pdf\"}', 'null'),
(296, 6, '', 4, '2023-05-27 13:41:13', '2023-05-27 13:41:13', 1, 1, 1, 5, 4, 'เครื่องบดละเอียด', 'SP-EN-047', '', NULL, 0, 5, '2020-08-07', 'SVBafrpIlCLREf3tuPEArr', NULL, '{\"b01c2d0a855dee6d823f7d3504b8e04a.pdf\":\"SP-EN-47_Rev_00[1].pdf\"}', 'null'),
(297, 6, '', 4, '2023-05-27 13:42:13', '2023-05-27 13:42:13', 1, 1, 1, 5, 4, 'HYBRID RECORDER', 'SP-EN-048', '', NULL, 0, 5, '2020-08-07', 'XyBRWqevbNWo_CN-VHk3L2', NULL, '{\"a69ec4556bedb1c9cb076ce9668fb152.pdf\":\"SP-EN-48_Rev_00[1].pdf\"}', 'null'),
(298, 6, '', 4, '2023-05-27 13:42:49', '2023-05-27 13:42:49', 1, 1, 1, 5, 4, 'Hot Air System (ระบบผลิตลมร้อน) อาคารถังตกตะกอน 20 คิว', 'SP-EN-049', '', NULL, 0, 5, '2021-02-25', 'GSp6BifqeyHCgO0E354upT', NULL, '{\"851f1e81702ae3b51000d52aac7c7645.pdf\":\"SP-EN-49_Rev_00[1].pdf\"}', 'null'),
(299, 6, '', 4, '2023-05-27 13:43:33', '2023-05-27 13:43:33', 1, 1, 1, 5, 4, 'Multifunctional Vegetable Cutter', 'SP-EN-050', '', NULL, 0, 5, '2021-02-25', 'ndyp0gZPPJVKQ4aj-3yaIB', NULL, '{\"66803cee2a6e81f7e29a1b12d394202d.pdf\":\"SP-EN-50_Rev_00[1].pdf\"}', 'null'),
(300, 6, '', 4, '2023-05-27 13:44:07', '2023-05-27 13:44:07', 1, 1, 1, 5, 4, 'Potato Peeler', 'SP-EN-051', '', NULL, 0, 5, '2021-02-25', 'cLM2ja1rW4xmjp_To_74OU', NULL, '{\"1a0ac81f578560bcfbad6a659491ce56.pdf\":\"SP-EN-51_Rev_00[1].pdf\"}', 'null'),
(301, 6, '', 4, '2023-05-27 13:45:45', '2023-05-27 13:45:45', 1, 1, 1, 5, 5, 'คู่มือการใช้งาน MrpPower ของงานจัดซื้อ', 'SP-PC-001', '', NULL, 0, 5, '2009-09-14', 'we3HmnbhJkoWz1NdSa-bXS', NULL, '{\"5af642f709b95adda89d171ed64c5f5b.pdf\":\"SP-PC-01_Rev_00[1].pdf\"}', 'null'),
(302, 6, '', 4, '2023-05-27 13:46:49', '2023-05-27 13:46:49', 1, 1, 1, 5, 5, 'กฎระเบียบความปลอดภัยในการทำงานสำหรับผู้รับเหมา', 'SP-PC-002', '', NULL, 0, 5, '2020-01-01', 'SC1CrzTlNMwuzIVahifZKN', NULL, '{\"7736760f13e64b81105a27ed546655cb.pdf\":\"SP-PC-02_Rev_00[1].pdf\"}', 'null'),
(303, 6, '', 4, '2023-05-27 13:49:04', '2023-05-27 13:49:04', 1, 1, 1, 5, 9, 'หัวข้อการฝึกอบรม', 'SP-GR-010', '', NULL, 11, 5, '2008-08-15', 'SKy7CPsdFuLV1XInjrOWIV', NULL, '{\"2628ea1f2507e8c4f7657bcad45bbdd2.pdf\":\"SP-GR-10_Rev_11[1].pdf\"}', 'null'),
(304, 6, '', 4, '2023-05-27 13:50:14', '2023-05-27 13:50:14', 1, 1, 1, 5, 9, 'เส้นทางเดินผู้เยี่ยมชม', 'SP-GR-032', '', NULL, 12, 5, '2021-06-17', 'F0Vyjon4XMEgqBT4jn_Bu1', NULL, '{\"9c2d41bd49c9b4a8a48ae6dd8d08bb9c.pdf\":\"SP-GR-32_Rev_12[1].pdf\"}', 'null'),
(305, 6, '', 4, '2023-05-27 13:51:01', '2023-05-27 13:51:01', 1, 1, 1, 5, 9, 'Plant Lay Out จุดวางกระดานกาวหนู และจุดวางกาวดักจิ้งจก', 'SP-GR-033', '', NULL, 23, 5, '2021-09-24', 'RKXZ_vat0CxjAr0v7hQEgd', NULL, '{\"46714093fe734c7bb43ab9af27e91ac5.pdf\":\"SP-GR-33_Rev_23[1].pdf\"}', 'null'),
(306, 6, '', 4, '2023-05-27 13:51:43', '2023-05-27 13:51:43', 1, 1, 1, 5, 9, 'Plant Lay Out จุดวางกล่องเหยื่อพิษหนู', 'SP-GR-034', '', NULL, 17, 5, '2021-09-24', 'BtjY_Ks2JY1n2jLNMMoNw1', NULL, '{\"f73007da83f16b00327c5509862a4158.pdf\":\"SP-GR-34_Rev_17[1].pdf\"}', 'null'),
(307, 6, '', 4, '2023-05-27 13:55:23', '2023-05-27 13:55:23', 1, 1, 1, 5, 9, 'แผนผังตำแหน่งถังขยะ บ่อบำบัดน้ำเสีย โรงเก็บขยะและเส้นทางเคลื่อนย้ายขยะของเสีย', 'SP-GR-040', '', NULL, 18, 5, '2022-09-06', '23gEgf-0_8MlO7UAsfk-Ru', NULL, '{\"4ad14c4082751691276fcf39b74aacd9.pdf\":\"SP-GR-40_Rev_18[1].pdf\"}', 'null'),
(308, 6, '', 4, '2023-05-27 13:56:10', '2023-05-27 13:56:10', 1, 1, 1, 5, 9, 'แผนที่แสดงตำแหน่งที่อยู่ของวัสดุและอุปกรณ์ที่ทำจากแก้วและพลาสติกแข็ง', 'SP-GR-042', '', NULL, 26, 5, '2022-09-17', '3ABrEK8mPfHVtMf3r_fSi8', NULL, '{\"0d9faab16fc4be32393f64e255fe49a0.pdf\":\"SP-GR-42_Rev_26[1].pdf\"}', 'null'),
(309, 6, '', 4, '2023-05-27 13:56:58', '2023-05-27 13:56:58', 1, 1, 1, 5, 9, 'แผนผังเส้นทางกระบวนการผลิต เส้นทาง เข้า-ออกของพนักงาน เส้นทางบรรจุภัณฑ์', 'SP-GR-043', '', NULL, 14, 5, '2022-05-23', 'TrCKGp10OiVT0gv7i06X2Q', NULL, '{\"98f187e920d8a4380cb35864d627d854.pdf\":\"SP-GR-43_Rev_14[1].pdf\"}', 'null'),
(310, 6, '', 4, '2023-05-27 13:57:35', '2023-05-27 13:57:35', 1, 1, 1, 5, 9, 'แผนที่ตำแหน่งป้ายประกาศ', 'SP-GR-072', '', NULL, 10, 5, '2019-07-04', 'XKr7ir2rVVmA8J6PqCZHHZ', NULL, '{\"167e38ca5aa023dd2810184d35b8774e.pdf\":\"SP-GR-72_Rev_10[1].pdf\"}', 'null'),
(311, 6, '', 4, '2023-05-27 13:58:43', '2023-05-27 13:58:43', 1, 1, 1, 5, 4, 'ระบบ HACCP ซีอิ้วญี่ปุ่น', 'SP-EN-082', '', NULL, 33, 5, '2022-10-25', 'U2wVYEm-OBGQuz_ndhKtlK', NULL, '{\"518d911edfea0e23acfdb2b4731e1a34.pdf\":\"SP-GR-82_Rev_33[1].pdf\"}', 'null'),
(312, 6, '', 4, '2023-05-27 14:00:19', '2023-05-27 14:00:19', 1, 1, 1, 5, 9, 'แผนผังอ่างล้างมือ อ่างล้างเท้า', 'SP-GR-089', '', NULL, 7, 5, '2021-03-23', 'FDeEDvGyuw8w4Mg0XYL4nN', NULL, '{\"15ed5cf7e8dff572dddc7c3a141e4c98.pdf\":\"SP-GR-89_Rev_07[1].pdf\"}', 'null'),
(313, 6, '', 4, '2023-05-27 14:01:08', '2023-05-27 14:01:08', 1, 1, 1, 5, 9, 'ความปลอดภัยเกี่ยวกับอุปกรณ์ไฟฟ้า', 'SP-GR-097', '', NULL, 0, 5, '2005-09-07', '2skUCjcW8N9pNC2tYS9_c1', NULL, '{\"3769229dc0b3d8c487e6fdfd97bab778.pdf\":\"SP-GR-97_Rev_00[1].pdf\"}', 'null'),
(314, 6, '', 4, '2023-05-27 14:02:20', '2023-05-27 14:02:20', 1, 1, 1, 5, 9, 'ความปลอดภัยเกี่ยวกับหินเจียร', 'SP-GR-098', '', NULL, 0, 5, '2005-09-07', 'f7J08-466uGG3xTqE65jYp', NULL, '{\"08418b039a12c3df628b6e4a01bdda71.pdf\":\"SP-GR-98_Rev_00[1].pdf\"}', 'null'),
(315, 6, '', 4, '2023-05-27 14:03:06', '2023-05-27 14:03:06', 1, 1, 1, 5, 9, 'ความปลอดภัยเกี่ยวกับหม้อน้ำ', 'SP-GR-099', '', NULL, 0, 5, '2005-09-07', 'EtqykugyxJUSHhTxOQCdWU', NULL, '{\"ec67ac3f6156f69458317962ba106e49.pdf\":\"SP-GR-99_Rev_00[1].pdf\"}', 'null'),
(316, 6, '', 4, '2023-05-27 14:03:45', '2023-05-27 14:03:45', 1, 1, 1, 5, 9, 'ความปลอดภัยเกี่ยวกับเครื่องเชื่อมแก๊ส', 'SP-GR-100', '', NULL, 0, 5, '2005-09-07', 'hiAz9wakYmbaTU8UpqpPf-', NULL, '{\"212dbc601593b72a8bdfb97dd0f40d78.pdf\":\"SP-GR-100_Rev_00[1].pdf\"}', 'null'),
(317, 6, '', 4, '2023-05-27 14:04:14', '2023-05-27 14:04:14', 1, 1, 1, 5, 9, 'ความปลอดภัยเกี่ยวกับการซ่อมบำรุง เครื่องจักร', 'SP-GR-101', '', NULL, 0, 5, '2005-09-07', 'p2n8hGWDUI95tlZNYd0Y6g', NULL, '{\"944b0988140b08900cf3369b983af29b.pdf\":\"SP-GR-101_Rev_00[1].pdf\"}', 'null'),
(318, 6, '', 4, '2023-05-27 14:04:41', '2023-05-27 14:04:41', 1, 1, 1, 5, 9, 'ความปลอดภัยเกี่ยวกับการเชื่อมไฟฟ้า', 'SP-GR-102', '', NULL, 0, 5, '2005-09-07', '0pX-RV2CP-OgXeGQO6-7do', NULL, '{\"d1ae7363a6c926efa42efdc7eb734264.pdf\":\"SP-GR-102_Rev_00[1].pdf\"}', 'null'),
(319, 6, '', 4, '2023-05-27 14:05:12', '2023-05-27 14:05:12', 1, 1, 1, 5, 9, 'ความปลอดภัยเกี่ยวกับการขนย้ายวัสดุ ด้วยมือเปล่า', 'SP-GR-103', '', NULL, 0, 5, '2005-09-07', '0fG1HdBUO000JbM5s4AL69', NULL, '{\"aca7b58f2ecc288edadf28fe2ed82eb3.pdf\":\"SP-GR-103_Rev_00[1].pdf\"}', 'null'),
(320, 6, '', 4, '2023-05-27 14:05:47', '2023-05-27 14:05:47', 1, 1, 1, 5, 9, 'ความปลอดภัยเกี่ยวกับการใช้สายพาน ลำเลียง', 'SP-GR-104', '', NULL, 0, 5, '2005-09-07', '6am9vvYlCIRUMtvS8pmpcs', NULL, '{\"7ef6e0fd945c8e2902255367b1e08634.pdf\":\"SP-GR-104_Rev_00[1].pdf\"}', 'null'),
(321, 6, '', 4, '2023-05-27 14:06:30', '2023-05-27 14:06:30', 1, 1, 1, 5, 9, 'ความปลอดภัยเกี่ยวกับรถเข็น', 'SP-GR-105', '', NULL, 0, 5, '2005-09-07', 'CibctKdBn4HxXtE-4hIBxb', NULL, '{\"3476f781ab7d5686850f8560f7acf893.pdf\":\"SP-GR-105_Rev_00[1].pdf\"}', 'null'),
(322, 6, '', 4, '2023-05-27 14:06:59', '2023-05-27 14:06:59', 1, 1, 1, 5, 9, 'ความปลอดภัยเกี่ยวกับการยกของ', 'SP-GR-106', '', NULL, 0, 5, '2005-09-07', 'WT6vt5NpPwJChWmiTK2_2G', NULL, '{\"49627d05cd50851ff047441bb0b7cc2f.pdf\":\"SP-GR-106_Rev_00[1].pdf\"}', 'null'),
(323, 6, '', 4, '2023-05-27 14:07:43', '2023-05-27 14:07:43', 1, 1, 1, 5, 9, 'ความปลอดภัยเกี่ยวกับเครื่องจักรกล', 'SP-GR-107', '', NULL, 0, 5, '2005-09-07', 'ge7XEoN9Q3UsSFuqpO3uos', NULL, '{\"c3615979f80f9cb5a581dfccf976d469.pdf\":\"SP-GR-107_Rev_00[1].pdf\"}', 'null'),
(324, 6, '', 4, '2023-05-27 14:08:40', '2023-05-27 14:08:40', 1, 1, 1, 5, 9, 'แผนผังอุปกรณ์ดับเพลิงและเส้นทางหนีไฟ', 'SP-GR-108', '', NULL, 8, 5, '2021-10-10', 'xtBtpIKmiAgHfjeyd_xVy3', NULL, '{\"4b432a9ba2bae52e38a2352da6e5524f.pdf\":\"SP-GR-108_Rev_08[1].pdf\"}', 'null'),
(325, 6, '', 4, '2023-05-27 14:09:22', '2023-05-27 14:09:22', 1, 1, 1, 5, 9, 'ระบบ HACCP ซีอิ้วขาว', 'SP-GR-110', '', NULL, 21, 5, '2022-10-25', 'kiBQ0m66qdCZrFBJfNJ6YC', NULL, '{\"515daf1e23087ed7e784473ff8093fc6.pdf\":\"SP-GR-110_Rev_21[1].pdf\"}', 'null'),
(326, 6, '', 4, '2023-05-27 14:10:00', '2023-05-27 14:10:00', 1, 1, 1, 5, 9, 'ระบบ HACCP ซีอิ้วดำและซีอิ้วหวาน', 'SP-GR-111', '', NULL, 19, 5, '2022-10-25', 'wR3VeBaqUhyzLci3HKX1yY', NULL, '{\"2e7a27032edd47ad9d847e94e96b2e8d.pdf\":\"SP-GR-111_Rev_19[1].pdf\"}', 'null'),
(327, 6, '', 4, '2023-05-27 14:11:00', '2023-05-27 14:11:00', 1, 1, 1, 5, 9, 'กำหนดคุณสมบัติและอุปกรณ์ป้องกันส่วนบุคคลในแต่ละลักษณะงาน', 'SP-GR-116', '', NULL, 3, 5, '2019-08-01', 'zhZ_ToJAfHxupF8rVVpt74', NULL, '{\"2a2b86c3f3312a591aec6effed26eb88.pdf\":\"SP-GR-116_Rev_03[1].pdf\"}', 'null'),
(328, 6, '', 4, '2023-05-27 14:11:45', '2023-05-27 14:11:45', 1, 1, 1, 5, 9, 'ระบบ HACCP Hoi Sin Sauce', 'SP-GR-117', '', NULL, 18, 5, '2022-10-25', '6ldHxPUtnpGH0Dz2RfNn-0', NULL, '{\"a389ffb8171da596973c52cb7c95408b.pdf\":\"SP-GR-117_Rev_18[1].pdf\"}', 'null'),
(329, 6, '', 4, '2023-05-27 14:12:49', '2023-05-27 14:12:49', 1, 1, 1, 5, 9, 'ระบบ HACCP ซอสปรุงรสญี่ปุ่น', 'SP-GR-119', '', NULL, 20, 5, '2022-10-25', 'egqS_izMF7kFl5AhbUFwX_', NULL, '{\"3c037455fec9457b312e82aaa6194e50.pdf\":\"SP-GR-119_Rev_20[1].pdf\"}', 'null'),
(330, 6, '', 4, '2023-05-27 14:13:46', '2023-05-27 14:13:46', 1, 1, 1, 5, 9, 'NTERNATIONAL ISO STANDARD 9001', 'SP-GR-120', '', NULL, 1, 5, '2015-09-01', 'kkdUAwyS4oKxqgEtSGiI8D', NULL, '{\"122fd6194f8f6032b8811ec002ca5f2c.pdf\":\"SP-GR-120_Rev_01[1].pdf\"}', 'null'),
(331, 6, '', 4, '2023-05-27 14:15:58', '2023-05-27 14:15:58', 1, 1, 1, 5, 9, 'ข้อกำหนด ISO 9001:2008 อังกฤษ', 'SP-GR-121', '', NULL, 0, 5, '2008-01-01', 'LO7ChniXS_nGk4rLH65kIW', NULL, '{\"ec1d19797e3aed026f670efd97946097.pdf\":\"SP-GR-121_Rev_00[1]_compressed.pdf\"}', 'null'),
(332, 6, '', 4, '2023-05-27 14:16:29', '2023-05-27 14:16:29', 1, 1, 1, 5, 9, 'คู่มือพนักงาน คู่มือความปลอดภัยในการทำงาน', 'SP-GR-122', '', NULL, 3, 5, '2019-09-01', 'T6AZodsvGHEUMAerz3Zhc4', NULL, '{\"460e17c22463a75d87942bb1d05e0865.pdf\":\"SP-GR-122_Rev_03[1].pdf\"}', 'null'),
(333, 6, '', 4, '2023-05-27 14:17:45', '2023-05-27 14:17:45', 1, 1, 1, 5, 9, 'บัญชีรายชื่อวัตถุดิบที่ทำให้เกิดภูมิแพ้', 'SP-GR-124', '', NULL, 17, 5, '2022-02-28', 'pQWhDwjO4pojc87Z8CU-P8', NULL, '{\"8d89b1b5ec6029d3f6665af8019012ab.pdf\":\"SP-GR-124_Rev_17[1].pdf\"}', 'null'),
(334, 6, '', 4, '2023-05-27 14:34:08', '2023-05-27 14:34:08', 1, 1, 1, 5, 9, 'บัญชีรายชื่อผลิตภัณฑ์ที่ผลิตและมีวัตถุดิบที่ทำให้เกิดภูมิแพ้', 'SP-GR-125', '', NULL, 18, 5, '2022-02-28', 'hbwXrH6jZlweG5pvCunqPi', NULL, '{\"1b06a31731260a777d583f5edd4d084b.pdf\":\"SP-GR-125_Rev_18[1].pdf\"}', 'null'),
(335, 6, '', 4, '2023-05-27 14:40:42', '2023-05-27 14:40:42', 1, 1, 1, 5, 9, 'Food Allergen and Food Causing Allergy List', 'SP-GR-126', '', NULL, 13, 5, '2022-02-28', 'DGaE47TPLY3cj2zoIEWdWM', NULL, '{\"c0c66e81c448fe3ef2b11a4c6a41744b.pdf\":\"SP-GR-126_Rev_13[1].pdf\"}', 'null'),
(336, 6, '', 4, '2023-05-27 14:41:36', '2023-05-27 14:41:36', 1, 1, 1, 5, 9, 'แผนเตรียมการและการตอบสนองเมื่อเกิดสถานการณ์ฉุกเฉิน', 'SP-GR-127', '', NULL, 10, 5, '2021-03-15', 'iAM7ZHDLFgY60EfZgQ3R5G', NULL, '{\"7c99e27e2cb8bb36d36f72469994263a.pdf\":\"SP-GR-127_Rev_10[1].pdf\"}', 'null'),
(337, 6, '', 4, '2023-05-27 14:44:12', '2023-05-27 14:44:12', 1, 1, 1, 5, 9, 'แผนการทบทวน PRP', 'SP-GR-128', '', NULL, 0, 5, '2012-09-27', '9eLninhdJNYhFuLvoLQMdD', NULL, '{\"092fa250dbf8b2ec85b06b06142cc41f.pdf\":\"SP-GR-128_Rev_00[1].pdf\"}', 'null'),
(338, 6, '', 4, '2023-05-27 14:45:54', '2023-05-27 14:45:54', 1, 1, 1, 5, 9, 'ข้อกำหนด ISO 22000:2018 อังกฤษ', 'SP-GR-129', '', NULL, 2, 5, '2019-11-25', 'GHfWZs9rIsPtRXce4p3hN_', NULL, '{\"56b35a3caa19d0f75525f5d392c42bff.pdf\":\"SP-GR-129_Rev_02[1]_compressed.pdf\"}', 'null'),
(339, 6, '', 4, '2023-05-27 14:47:29', '2023-05-27 14:47:29', 1, 1, 1, 5, 9, 'รายชื่อสารพิษตกค้าง ในวัตถุดิบ', 'SP-GR-130', '', NULL, 1, 5, '2013-08-06', '5yHUt83_HkDCE2BnIOG0eC', NULL, '{\"e37ffcea6b27845db9c62691b1e323dc.pdf\":\"SP-GR-130_Rev_01[1].pdf\"}', 'null'),
(340, 6, '', 4, '2023-05-27 14:48:09', '2023-05-27 14:48:09', 1, 1, 1, 5, 9, 'ความปลอดภัยในการทำงาน บนที่สูง', 'SP-GR-131', '', NULL, 1, 5, '2013-05-27', 'a-4oS-YeDU6AFAV4P3vDf_', NULL, '{\"dd7f2575e2dbb952df6f1c10c1de4106.pdf\":\"SP-GR-131_Rev_01[1].pdf\"}', 'null'),
(341, 6, '', 4, '2023-05-27 14:48:42', '2023-05-27 14:48:42', 1, 1, 1, 5, 9, 'ความปลอดภัยเกี่ยวกับภาชนะ รับแรงดัน', 'SP-GR-132', '', NULL, 0, 5, '2013-03-15', 'Nd8AYh8JKYnecWXoJ78Au0', NULL, '{\"52e3920e3212072506a4ec7f9f696842.pdf\":\"SP-GR-132_Rev_00[1].pdf\"}', 'null'),
(342, 6, '', 4, '2023-05-27 14:49:48', '2023-05-27 14:49:48', 1, 1, 1, 5, 9, 'ความปลอดภัยสำหรับผู้รับเหมา', 'SP-GR-133', '', NULL, 1, 5, '2013-04-26', 'Bcpso_F4ItihY-Q8FvaM_K', NULL, '{\"27be2026d4b30a0cff87da3c1734fcb8.pdf\":\"SP-GR-133_Rev_01[1].pdf\"}', 'null'),
(343, 6, '', 4, '2023-05-27 14:51:10', '2023-05-27 14:51:10', 1, 1, 1, 5, 9, 'การประเมินความเสี่ยงของแต่ละพื้นที่ ต่อโอกาสในการก่อการร้ายผ่านทางอาหาร ', 'SP-GR-134', '', NULL, 7, 5, '2022-03-25', '9HS487XZDj1YnGWyPAiK6i', NULL, '{\"c3284838527bba2f0d174c4563e67f98.pdf\":\"SP-GR-134_Rev_07[1].pdf\"}', 'null'),
(344, 6, '', 4, '2023-05-27 14:51:46', '2023-05-27 14:51:46', 1, 1, 1, 5, 9, 'ความปลอดภัยในการใช้ลิฟท์ขนส่ง', 'SP-GR-135', '', NULL, 0, 5, '2013-06-15', 'UDuX5BOlz2ltiQQfdl0NRL', NULL, '{\"e7c7dd3e76d63126541395f47b92ff35.pdf\":\"SP-GR-135_Rev_00[1].pdf\"}', 'null'),
(345, 6, '', 4, '2023-05-27 14:52:28', '2023-05-27 14:52:28', 1, 1, 1, 5, 9, 'แผนผังแสดงพื้นที่ทั่วไป, พื้นที่อ่อนไหวและพื้นที่ต้องห้าม', 'SP-GR-136', '', NULL, 4, 5, '2021-06-17', 'mdRJ42zarMTIcx3aGBPaew', NULL, '{\"f7de2d1aa06ca4ab082e4d7e8d640d3f.pdf\":\"SP-GR-136_Rev_04[1].pdf\"}', 'null'),
(346, 6, '', 4, '2023-05-27 14:53:04', '2023-05-27 14:53:04', 1, 1, 1, 5, 9, 'เส้นทางไหลของอากาศ', 'SP-GR-137', '', NULL, 0, 5, '2013-06-04', 'j_qBQhFR5z0Gh5FDQ108Pe', NULL, '{\"bbfcffec0abdc468e22389150aaa2927.pdf\":\"SP-GR-137_Rev_00[1].pdf\"}', 'null'),
(347, 6, '', 4, '2023-05-27 14:53:44', '2023-05-27 14:53:44', 1, 1, 1, 5, 9, 'การยืนยันการใช้ได้ของไส้กรอง', 'SP-GR-138', '', NULL, 1, 5, '2020-03-20', 'FT-Uk_Ud7KD6GPRsGOc8_u', NULL, '{\"8f45db5264365e0054e26ea8c725b043.pdf\":\"SP-GR-138_Rev_01[1].pdf\"}', 'null'),
(348, 6, '', 4, '2023-05-27 14:54:31', '2023-05-27 14:54:31', 1, 1, 1, 5, 9, 'รายชื่อ Product Recall - Government Agencies', 'SP-GR-140', '', NULL, 0, 5, '2013-07-03', 'n_bca6ItejIFIITsX4ZEpq', NULL, '{\"967a18324fba464fefa013033641efcd.pdf\":\"SP-GR-140_Rev_00[1].pdf\"}', 'null'),
(349, 6, '', 4, '2023-05-27 14:55:26', '2023-05-27 14:55:26', 1, 1, 1, 5, 9, 'อุณหภูมิการจัดเก็บ และการจัดเก็บวัตถุดิบ ส่วนผสม ผลิตภัณฑ์ระหว่างกระบวนการผลิต และผลิตภัณฑ์สำเร็จรูป', 'SP-GR-141', '', NULL, 0, 5, '2013-10-18', '_v0ih3YDS_GIn9hmS9HtSd', NULL, '{\"30984d55bac671b201f234f6165d32d9.pdf\":\"SP-GR-141_Rev_00[1].pdf\"}', 'null'),
(350, 6, '', 4, '2023-05-27 14:56:05', '2023-05-27 14:56:05', 1, 1, 1, 5, 9, 'แผนผัง การกำหนดพื้นที่ดูแลบริเวณภายนอกอาคารโรงงาน', 'SP-GR-142', '', NULL, 1, 5, '2016-07-01', 'msf4oyCSCgFPyA2NPMirK5', NULL, '{\"435847ba0131846647d24ee3fc8f488d.pdf\":\"SP-GR-142_Rev_01[1].pdf\"}', 'null'),
(351, 6, '', 4, '2023-05-27 14:59:05', '2023-05-27 14:59:05', 1, 1, 1, 5, 9, 'พระราชบัญญัติอาหาร พ.ศ.2522', 'SP-GR-147', '', NULL, 0, 5, '2000-01-01', 'YH0UwNdh4NaubSnn7vwvdE', NULL, '{\"cdb1c27e08775b167100ff8924e969a0.pdf\":\"SP-GR-147_Rev_00[1].pdf\"}', 'null'),
(352, 6, '', 4, '2023-05-27 15:00:01', '2023-05-27 15:00:01', 1, 1, 1, 5, 9, 'กำหนดหลักเกณฑ์และวิธีการตรวจสุขภาพของลูกจ้าง และส่งผลการตรวจแก่พนักงานตรวจแรงงาน', 'SP-GR-148', '', NULL, 0, 5, '2005-01-13', '7Z-PCql0GIn4G3Tt88GYzF', NULL, '{\"321eb8cac71867ba65de2fae5621876d.pdf\":\"SP-GR-148_Rev_00[1].pdf\"}', 'null'),
(353, 6, '', 4, '2023-05-27 15:00:42', '2023-05-27 15:00:42', 1, 1, 1, 5, 9, 'แผนที่แสดงตำแหน่ง วัสดุ แก้วและพลาสติดแข็ง PD1', 'SP-GR-149', '', NULL, 0, 5, '2019-11-11', '7Fk5aIItNipMzUFKrGcwOv', NULL, '{\"1e57848dc99e0be1472bd49bb7c3066b.pdf\":\"SP-GR-149_Rev_00[1].pdf\"}', 'null'),
(354, 6, '', 4, '2023-05-27 15:02:07', '2023-05-27 15:02:07', 1, 1, 1, 5, 9, 'แผนที่แสดงตำแหน่ง วัสดุ และอุปกรณ์ที่ทำจากแก้วและพลาสติดแข็ง', 'SP-GR-150', '', NULL, 0, 5, '2019-11-11', 'cSJJiLX0p5GtUVgMAkFxzC', NULL, '{\"a39020a017d3d875209ce51d5ad05853.pdf\":\"SP-GR-150_Rev_00[1].pdf\"}', 'null'),
(355, 6, '', 4, '2023-05-27 15:02:44', '2023-05-27 15:02:44', 1, 1, 1, 5, 9, 'แผนผังสถานที่เก็บรักษาก๊าซปิโตรเลียมเหลว', 'SP-GR-151', '', NULL, 1, 5, '2020-02-10', 'C7dttTdUmUfwf-K5Strq0p', NULL, '{\"ab89580b7b48128f0d4b6aaba6603b28.pdf\":\"SP-GR-151_Rev_01[1].pdf\"}', 'null'),
(356, 6, '', 4, '2023-05-27 15:03:27', '2023-05-27 15:03:27', 1, 1, 1, 5, 9, 'แผนที่แสดงตำแหน่ง วัสดุ แก้วและพลาสติดแข็ง PD2', 'SP-GR-152', '', NULL, 5, 5, '2022-03-25', 'sj-JXMY-ZBelL10_UFmU0V', NULL, '{\"bced21a560fa6a578ec6bdbfd8417795.pdf\":\"SP-GR-152_Rev_05[1].pdf\"}', 'null'),
(357, 6, '', 4, '2023-05-27 15:04:05', '2023-05-27 15:04:05', 1, 1, 1, 5, 9, 'แผนที่แสดงตำแหน่ง วัสดุ แก้วและพลาสติดแข็ง R&D', 'SP-GR-153', '', NULL, 1, 5, '2019-12-02', 'b7sE09cAkpj-BkmAtPNuYQ', NULL, '{\"6626aa2d99c62274a3f1d0674dd1e103.pdf\":\"SP-GR-153_Rev_01[1].pdf\"}', 'null'),
(358, 6, '', 4, '2023-05-27 15:04:47', '2023-05-27 15:04:47', 1, 1, 1, 5, 9, 'แผนที่แสดงตำแหน่ง วัสดุ แก้วและพลาสติดแข็ง PD1', 'SP-GR-154', '', NULL, 0, 5, '2019-11-16', '212uARDwEKSw2r_ai3ON6c', NULL, '{\"55b5a0eccc917385d138c75d05d9d0ac.pdf\":\"SP-GR-154_Rev_00[1].pdf\"}', 'null'),
(359, 6, '', 4, '2023-05-27 15:05:36', '2023-05-27 15:05:36', 1, 1, 1, 5, 9, 'แผนที่แสดงตำแหน่ง วัสดุ แก้วและพลาสติดแข็ง PD1', 'SP-GR-155', '', NULL, 0, 5, '2019-11-16', '-2jq2VqMt9nsWboMPDYcql', NULL, '{\"42746acd05f15d52b0c63f531f58eca3.pdf\":\"SP-GR-155_Rev_00[1].pdf\"}', 'null'),
(360, 6, '', 4, '2023-05-27 15:06:33', '2023-05-27 15:06:33', 1, 1, 1, 5, 9, 'แผนที่แสดงตำแหน่ง วัสดุ แก้วและพลาสติดแข็ง PD1', 'SP-GR-156', '', NULL, 1, 5, '2020-04-01', '_YVTdIETUoEIZnobJMhoZL', NULL, '{\"aabedc03a3aa3a503f3d712114bf32d4.pdf\":\"SP-GR-156_Rev_01[1].pdf\"}', 'null'),
(361, 6, '', 4, '2023-05-27 15:07:44', '2023-05-27 15:07:44', 1, 1, 1, 5, 9, 'FSSC 22000', 'SP-GR-157', '', NULL, 1, 5, '2020-12-01', 'VLiJpeV3Gkttl65ZQNQXrF', NULL, '{\"8d97b109468929a1372eda32519f5adf.pdf\":\"SP-GR-157_Rev_01[1].pdf\"}', 'null'),
(362, 6, '', 4, '2023-05-27 15:08:15', '2023-05-27 15:08:15', 1, 1, 1, 5, 9, 'Magnets for Metal fragment Control and food safety', 'SP-GR-159', '', NULL, 0, 5, '2020-03-19', '2pdOfMa7i-ex6vFed5bfrR', NULL, '{\"bb96b48c411956f92598321243d10f02.pdf\":\"SP-GR-159_Rev_00[1].pdf\"}', 'null'),
(363, 6, '', 4, '2023-05-27 15:09:44', '2023-05-27 15:09:44', 1, 1, 1, 5, 9, 'ระบบ HACCP ซอสอื่น ๆ', 'SP-GR-160', '', NULL, 2, 5, '2022-10-25', 'EOyZfMbVINh6Ueigy_ukiS', NULL, '{\"466a9fcb816dada1ca9e765c09efa2ac.pdf\":\"SP-GR-160_Rev_02[1].pdf\"}', 'null'),
(364, 6, '', 4, '2023-05-27 15:10:31', '2023-05-27 15:10:31', 1, 1, 1, 5, 9, 'General principles of food hygiene cxc 1-1969', 'SP-GR-161', '', NULL, 0, 5, '2021-03-16', '3_ZCiFPJR84YNkeWm9GCwX', NULL, '{\"66e68b4651d3d9471aede2d8e8bfb43d.pdf\":\"SP-GR-161_Rev_00[1].pdf\"}', 'null'),
(365, 6, '', 4, '2023-05-27 15:11:11', '2023-05-27 15:11:11', 1, 1, 1, 5, 9, 'Technical specification ISO TS 22002-1 Part 1', 'SP-GR-162', '', NULL, 0, 5, '2019-11-25', 'ntNqLyVgPn72JfBjlIHNp5', NULL, '{\"51f21402628f9ca66c8f599ac4c2664e.pdf\":\"SP-GR-158_Rev_00[1].pdf\"}', 'null'),
(366, 6, '', 4, '2023-05-27 15:12:09', '2023-05-27 15:12:09', 1, 1, 1, 5, 11, 'การจัดทาแผนป้องกันและระงับอัคคีภัย', 'SP-EM-001', '', NULL, 2, 5, '2015-09-12', 'Od6bTdQTDP7JmLz8GCDwnA', NULL, '{\"76408f26a7d35d3a1c9bf4c385d8a730.pdf\":\"SP-EM-01_Rev_02[1].pdf\"}', 'null'),
(367, 6, '', 4, '2023-05-27 15:12:46', '2023-05-27 15:12:46', 1, 1, 1, 5, 11, 'แผนป้องกันสารเคมี/การหกรั่วไหล และแผนป้องกันก๊าชรั่วไหล', 'SP-EM-002', '', NULL, 2, 5, '2018-09-01', 'vyn5ChnkCVk4paDiGLvVBQ', NULL, '{\"aae87cc5f4d9b744ba2e5e263bd15143.pdf\":\"SP-EM-02_Rev_02[1].pdf\"}', 'null'),
(368, 6, '', 4, '2023-05-27 15:13:27', '2023-05-27 15:13:27', 1, 1, 1, 5, 11, 'แผนเตรียมความพร้อมเพื่อระงับเหตุน้ำท่วม', 'SP-EM-003', '', NULL, 1, 5, '2014-03-10', '1kAEE5tfRxO0tS27ae8hiX', NULL, '{\"9d7c4afbe1fb58272b49a02c85e1bd38.pdf\":\"SP-EM-03_Rev_01[1].pdf\"}', 'null'),
(369, 6, '', 4, '2023-05-27 15:14:03', '2023-05-27 15:14:03', 1, 1, 1, 5, 11, 'INTERNATIONAL ISO STANDARD 14001', 'SP-EM-004', '', NULL, 1, 5, '2015-09-01', '05e34AV_qLa-GmZnQ1l_le', NULL, '{\"f356c54b1aba7d29505fbc30fd7e18ac.pdf\":\"SP-EM-04_Rev_01[1].pdf\"}', 'null'),
(370, 6, '', 4, '2023-05-27 15:14:40', '2023-05-27 15:14:40', 1, 1, 1, 5, 11, 'การประหยัดทรัพยากร', 'SP-EM-005', '', NULL, 1, 5, '2018-09-01', 'nlhlOWa1OaCD8BefRSC71F', NULL, '{\"e4ce4c866ea6fb8bac9e186a8bba5584.pdf\":\"SP-EM-05_Rev_01[1].pdf\"}', 'null'),
(371, 6, '', 4, '2023-05-27 15:15:17', '2023-05-27 15:15:17', 1, 1, 1, 5, 11, 'การจัดทำแผนรับมือเหตุแผ่นดินไหวและอาคารถล่ม', 'SP-EM-006', '', NULL, 0, 5, '2015-01-30', 'EWXAGX88TyOi-zk1ifmVfc', NULL, '{\"514b0dc395fefefb205a6433af41a83f.pdf\":\"SP-EM-06_Rev_00[1].pdf\"}', 'null'),
(372, 6, '', 4, '2023-05-27 15:16:00', '2023-05-27 15:16:00', 1, 1, 1, 5, 11, 'แผนที่แสดงที่ตั้งโรงงาน', 'SP-EM-007', '', NULL, 0, 5, '2017-06-01', 'FIIFNteA1bGX-EiZAlVrTr', NULL, '{\"9a98184b936d37ef932f7778cfb5462f.pdf\":\"SP-EM-08_Rev_00[1].pdf\"}', 'null'),
(373, 6, '', 4, '2023-05-27 15:17:43', '2023-05-27 15:17:43', 1, 1, 1, 5, 12, 'ข้อกำหนด OHSAS 18001:2007 ไทย', 'SP-HS-001', '', NULL, 0, 5, '2007-01-01', 'PdVLhcWQnUbXAsjgHqsMne', NULL, '{\"fa719bd32b9a09ccf691aab525e139ed.pdf\":\"SP-HS-01_Rev_00[3]_compressed.pdf\"}', 'null'),
(374, 6, '', 4, '2023-05-27 15:18:31', '2023-05-27 15:18:31', 1, 1, 1, 5, 12, 'กำหนดมาตรฐานอุปกรณ์คุ้มครองความปลอดภัยส่วนบุคคล', 'SP-HS-002', '', NULL, 0, 5, '2011-09-27', 'c51O6tDtqgMNTCCskZZfVU', NULL, '{\"56ec5eaea6ad8dbd42c4efb887ac7b1e.pdf\":\"SP-HS-02_Rev_00[1].pdf\"}', 'null'),
(375, 6, '', 4, '2023-05-27 15:20:33', '2023-05-27 15:20:33', 1, 1, 1, 5, 12, 'การปฐมพยาบาลเบื้องต้น', 'SP-HS-003', '', NULL, 0, 5, '2020-03-18', '7X_HcnR_2_p4R2LpbM8Tt1', NULL, '{\"e07e745fcb9245ba15dcf3398e99af64.pdf\":\"SP-HS-03_Rev_00[1]_compressed.pdf\"}', 'null'),
(376, 6, '', 4, '2023-05-27 15:21:11', '2023-05-27 15:21:11', 1, 1, 1, 5, 12, 'การจัดทำแผนป้องกันและระงับอัคคีภัย', 'SP-HS-004', '', NULL, 1, 5, '2021-09-01', 'zxVGCJYEWobhgmegoo0KCt', NULL, '{\"78510a67afb44de0be67100d6571b041.pdf\":\"SP-HS-04_Rev_01[1].pdf\"}', 'null'),
(377, 6, '', 4, '2023-05-27 15:21:50', '2023-05-27 15:21:50', 1, 1, 1, 5, 12, 'การจัดทำแผนรับมือเหตุแผ่นดินไหวและอาคารถล่ม', 'SP-HS-005', '', NULL, 0, 5, '2020-08-15', 'p00APQCUVjNNUbdf8pkWKE', NULL, '{\"5f95a2065e06445e838bc65172341cff.pdf\":\"SP-HS-05_Rev_00[1].pdf\"}', 'null');
INSERT INTO `requester` (`id`, `types_id`, `type_details`, `status_id`, `created_at`, `updated_at`, `created_by`, `updated_by`, `request_by`, `categories_id`, `departments_id`, `document_title`, `document_number`, `details`, `document_name`, `latest_rev`, `document_age`, `document_public_at`, `ref`, `fullname`, `covenant`, `docs`) VALUES
(378, 6, '', 4, '2023-05-27 15:22:42', '2023-05-27 15:22:42', 1, 1, 1, 5, 12, 'แผนที่เสียง (Noise Contour Map)', 'SP-HS-006', '', NULL, 0, 5, '2021-08-01', 'ucY750Pov0dsI49IDDQ8-A', NULL, '{\"d3ce8cca392b6a85510736b5f61a259a.pdf\":\"SP-HS-06_Rev_00[1].pdf\"}', 'null'),
(379, 6, '', 4, '2023-05-27 15:24:54', '2023-05-27 15:24:54', 1, 1, 1, 6, 2, 'ตารางการผลิตโคจิประจำเดือน', 'FM-PD-004', '', NULL, 2, 5, '2018-12-01', 'ZoJw31rXGhbvU2Pp1RuPcq', NULL, '{\"06d0bd739a4427033aafa48045c74b79.pdf\":\"FM-PD-04_Rev_02[1].pdf\"}', 'null'),
(380, 6, '', 4, '2023-05-27 15:25:57', '2023-05-27 15:25:57', 1, 1, 1, 6, 2, 'แผนการคั้นน้ำซีอิ๊ว', 'FM-PD-006', '', NULL, 2, 5, '2018-12-10', 'h558MgVpKJpd13dtYEIPbR', NULL, '{\"560ea464e3bb188b68291654ed922c83.pdf\":\"FM-PD-06_Rev_02[1].pdf\"}', 'null'),
(381, 6, '', 4, '2023-05-27 15:27:25', '2023-05-27 15:27:25', 1, 1, 1, 6, 2, 'รายงานการคั่วข้าวสาลี / ข้าวสาร', 'FM-PD-008', '', NULL, 5, 5, '2019-08-09', 'zwHRlzsCoX_FZgl4znF3hV', NULL, '{\"2ec55b75d2946c43a88526deb7ce70ef.pdf\":\"FM-PD-08_Rev_05[1].pdf\"}', 'null'),
(382, 6, '', 4, '2023-05-27 15:28:35', '2023-05-27 15:28:35', 1, 1, 1, 6, 2, 'รายงานการนึ่งถั่วเหลือง', 'FM-PD-009', '', NULL, 7, 5, '2016-01-01', 'skVxEbppMhxtBWYABmGfV5', NULL, '{\"fc76bbadd003e22388ada87077983787.pdf\":\"FM-PD-09_Rev_07[1].pdf\"}', 'null'),
(383, 6, '', 4, '2023-05-27 15:29:46', '2023-05-27 15:29:46', 1, 1, 1, 6, 2, 'รายงานการเตรียมน้ำเกลือ', 'FM-PD-010', '', NULL, 3, 5, '2012-08-01', 'PjZAL9D_5UWhSx31cx4DMA', NULL, '{\"135f0fee022d76cb51c66155e5de4906.pdf\":\"FM-PD-10_Rev_03[1].pdf\"}', 'null'),
(384, 6, '', 4, '2023-05-27 15:30:33', '2023-05-27 15:30:33', 1, 1, 1, 6, 2, 'Data of Material Treatment , Koji Making and Shikomi', 'FM-PD-011', '', NULL, 3, 5, '2014-01-16', '-206KiJJAAjjJ0DbwzQDnD', NULL, '{\"02029b4827ac80ffbbd04ff12b977457.pdf\":\"FM-PD-11_Rev_03[1].pdf\"}', 'null');

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
) ENGINE=InnoDB AUTO_INCREMENT=385 DEFAULT CHARSET=utf8mb3;

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
(66, 66, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(67, 67, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(68, 68, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(69, 69, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(70, 70, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(71, 71, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(72, 72, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(73, 73, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(74, 74, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(75, 75, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(76, 76, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(77, 77, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(78, 78, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(79, 79, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(80, 80, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(81, 81, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(82, 82, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(83, 83, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(84, 84, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(88, 88, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(89, 89, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(90, 90, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(91, 91, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(92, 92, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(93, 93, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(94, 94, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(95, 95, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(96, 96, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(97, 97, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(98, 98, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(99, 99, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(100, 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(101, 101, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(102, 102, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(103, 103, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(104, 104, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(105, 105, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(106, 106, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(107, 107, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(108, 108, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(109, 109, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(110, 110, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(111, 111, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(112, 112, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(113, 113, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(114, 114, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(115, 115, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(116, 116, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(117, 117, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(118, 118, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(119, 119, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(120, 120, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(121, 121, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(122, 122, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(123, 123, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(124, 124, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(125, 125, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(126, 126, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(127, 127, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(128, 128, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(129, 129, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(130, 130, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(131, 131, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(132, 132, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(133, 133, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(134, 134, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(135, 135, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(136, 136, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(137, 137, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(138, 138, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(139, 139, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(140, 140, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(141, 141, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(142, 142, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(143, 143, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(144, 144, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(145, 145, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(146, 146, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(147, 147, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(148, 148, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(149, 149, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(150, 150, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(151, 151, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(152, 152, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(153, 153, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(154, 154, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(155, 155, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(156, 156, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(157, 157, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(158, 158, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(159, 159, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(160, 160, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(161, 161, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(162, 162, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(163, 163, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(164, 164, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(165, 165, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(166, 166, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(167, 167, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(168, 168, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(169, 169, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(170, 170, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(171, 171, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(172, 172, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(173, 173, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(175, 175, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(176, 176, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(177, 177, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(178, 178, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(179, 179, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(180, 180, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(181, 181, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(182, 182, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(183, 183, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(184, 184, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(185, 185, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(186, 186, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(187, 187, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(188, 188, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(189, 189, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(190, 190, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(191, 191, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(192, 192, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(193, 193, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(194, 194, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(195, 195, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(196, 196, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(197, 197, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(198, 198, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(199, 199, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(200, 200, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(201, 201, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(202, 202, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(203, 203, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(204, 204, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(205, 205, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(206, 206, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(207, 207, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(208, 208, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(209, 209, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(210, 210, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(211, 211, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(212, 212, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(213, 213, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(214, 214, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(215, 215, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(216, 216, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(217, 217, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(218, 218, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(219, 219, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(220, 220, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(221, 221, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(222, 222, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(223, 223, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(224, 224, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(225, 225, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(226, 226, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(227, 227, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(228, 228, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(229, 229, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(230, 230, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(231, 231, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(232, 232, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(233, 233, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(234, 234, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(235, 235, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(236, 236, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(237, 237, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(238, 238, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(239, 239, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(240, 240, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(241, 241, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(242, 242, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(243, 243, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(244, 244, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(245, 245, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(246, 246, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(247, 247, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(248, 248, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(249, 249, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(250, 250, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(251, 251, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(252, 252, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(253, 253, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(254, 254, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(255, 255, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(256, 256, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(257, 257, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(258, 258, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(259, 259, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(260, 260, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(261, 261, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(262, 262, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(263, 263, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(264, 264, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(265, 265, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(266, 266, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(267, 267, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(268, 268, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(269, 269, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(270, 270, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(271, 271, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(272, 272, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(273, 273, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(274, 274, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(275, 275, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(276, 276, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(277, 277, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(278, 278, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(279, 279, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(280, 280, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(281, 281, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(282, 282, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(283, 283, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(284, 284, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(285, 285, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(286, 286, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(287, 287, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(288, 288, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(289, 289, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(290, 290, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(291, 291, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(292, 292, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(293, 293, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(294, 294, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(295, 295, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(296, 296, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(297, 297, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(298, 298, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(299, 299, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(300, 300, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(301, 301, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(302, 302, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(303, 303, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(304, 304, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(305, 305, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(306, 306, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(307, 307, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(308, 308, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(309, 309, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(310, 310, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(311, 311, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(312, 312, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(313, 313, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(314, 314, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(315, 315, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(316, 316, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(317, 317, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(318, 318, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(319, 319, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(320, 320, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(321, 321, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(322, 322, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(323, 323, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(324, 324, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(325, 325, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(326, 326, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(327, 327, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(328, 328, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(329, 329, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(330, 330, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(331, 331, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(332, 332, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(333, 333, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(334, 334, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(335, 335, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(336, 336, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(337, 337, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(338, 338, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(339, 339, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(340, 340, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(341, 341, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(342, 342, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(343, 343, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(344, 344, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(345, 345, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(346, 346, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(347, 347, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(348, 348, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(349, 349, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(350, 350, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(351, 351, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(352, 352, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(353, 353, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(354, 354, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(355, 355, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(356, 356, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(357, 357, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(358, 358, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(359, 359, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(360, 360, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(361, 361, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(362, 362, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(363, 363, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(364, 364, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(365, 365, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(366, 366, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(367, 367, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(368, 368, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(369, 369, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(370, 370, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(371, 371, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(372, 372, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(373, 373, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(374, 374, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(375, 375, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(376, 376, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(377, 377, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(378, 378, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(379, 379, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(380, 380, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(381, 381, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(382, 382, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(383, 383, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(384, 384, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

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
(1, 'admin', 'admin@admin.com', '$2y$12$M0hFXxztKZxCnaOnGJjrpOmQtnEPHqRbvE7spj4xkCVnT11VBcOaO', 'VPaMQzLRVu6gsDMqaZL9rwHiVdWwVFe3', 1682481192, NULL, NULL, '::1', 1682481077, 1682481077, 0, 1685149403, 10, NULL),
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
