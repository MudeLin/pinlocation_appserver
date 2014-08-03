-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 31, 2014 at 02:26 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `loc`
--

-- --------------------------------------------------------

--
-- Table structure for table `appserver_location`
--

CREATE TABLE IF NOT EXISTS `appserver_location` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `loc_descrip` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `longtitude` double NOT NULL,
  `latitude` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=20 ;

--
-- Dumping data for table `appserver_location`
--

INSERT INTO `appserver_location` (`id`, `loc_descrip`, `longtitude`, `latitude`) VALUES
(1, '海珠区新港西路135号', 11.2, 22.2),
(2, '广州大学城', 11.2, 20),
(3, '员村四横路128号', 11.2, 21),
(4, '中山大学图书馆', 11.2, 21.5),
(5, '北京市海淀区中关村南一街7号平房-4号', 1.28964931277e-313, 1.2896493246e-313),
(8, '中山大学体育馆', 11.2, 222.2),
(9, '北京市海淀区中关村南一街7号平房-4号', 1.28965255067e-313, 1.28965256253e-313),
(10, '北京市海淀区中关村南一街7号平房-4号', -2.00003638750077, 1.28964931593e-313),
(11, '北京市海淀区中关村南一街7号平房-4号', -2.00003635464254, 1.2859937171e-313),
(12, '北京市海淀区中关村南一街7号平房-4号', -2.00003638752987, 1.28965255384e-313),
(13, '北京市海淀区中关村南一街7号平房-4号', -2.00003638732615, 1.28962988927e-313),
(14, '北京市海淀区中关村南一街7号平房-4号', -2.00003638732637, 1.28962991377e-313),
(15, '北京市海淀区中关村南一街7号平房-4号', -2.0000363873266, 1.28962993907e-313),
(16, '北京市海淀区中关村南一街7号平房-4号', -2.00003638846119, 1.2897561669e-313),
(17, '北京市海淀区中关村南一街7号平房-4号', -2.0000363879083, 1.28969465534e-313),
(18, 'default', 0.0000000112, 222.2),
(19, '北京市海淀区中关村南一街7号平房-4号', -2.00003638744256, 1.2896428401e-313);

-- --------------------------------------------------------

--
-- Table structure for table `appserver_locpost`
--

CREATE TABLE IF NOT EXISTS `appserver_locpost` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `post_text` longtext COLLATE utf8_unicode_ci NOT NULL,
  `post_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=37 ;

--
-- Dumping data for table `appserver_locpost`
--

INSERT INTO `appserver_locpost` (`id`, `image`, `post_text`, `post_time`) VALUES
(1, 'upload_images/2014649_003738737_2_1.jpg', '宏大', '2014-07-31 00:40:31'),
(2, 'upload_images/200951923491399205_1.jpg', '博学，审问，慎思，明辨，笃行', '2014-07-31 00:41:30'),
(3, 'upload_images/2009072122432449_1.jpg', '博学，审问，慎思，明辨，笃行', '2014-07-31 00:41:48'),
(4, 'upload_images/140118_193944251170_2_1.jpg', '大学城之旅', '2014-07-31 00:43:05'),
(5, 'upload_images/2702625_143517022_2.jpg', '大学城之旅', '2014-07-31 00:43:24'),
(6, 'upload_images/icon_ORIGN.png', '我来耶', '2014-07-31 00:49:19'),
(7, 'upload_images/U6908P950DT20120413192610.jpg', '广州创意集散地', '2014-07-31 01:08:29'),
(8, 'upload_images/U6908P950DT20120413192610_1.jpg', '广州创意集散地', '2014-07-31 01:08:47'),
(9, 'upload_images/7113530_1301103413601_1024x1024it.jpg', '缅怀先人，心存感激', '2014-07-31 01:13:39'),
(10, 'upload_images/20090702_46551_2.jpg', '缅怀先人，心存感激', '2014-07-31 01:13:52'),
(11, 'upload_images/guangzhousunzhongshanjiniantang-007.jpg', '缅怀先人，心存感激', '2014-07-31 01:14:04'),
(15, 'no_image', 'helloworld', '2014-07-31 02:48:02'),
(16, 'upload_images/None/guangzhousunzhongshanjiniantang-007.jpg', 'helloworld', '2014-07-31 02:48:33'),
(17, 'upload_images/7444c9ae-77a1-4524-94cf-f200bea59afc', 'helloworld', '2014-07-31 02:59:14'),
(18, 'upload_images617af769-bf23-45fd-975f-8f489c080e1d.jpg', 'helloworld', '2014-07-31 03:16:55'),
(19, 'upload_images/f1b780c9-2548-4c6a-8262-ebd82249ca95.jpg', 'helloworld', '2014-07-31 03:19:17'),
(20, 'upload_images/61668747-b949-411b-8d7a-67b621bd192a.jpg', 'helloworld中文', '2014-07-31 03:27:43'),
(34, 'no_image', 'helloworld', '2014-07-31 17:04:02'),
(35, 'no_image', 'helloworld', '2014-07-31 17:04:12'),
(36, 'no_image', 'write some thing', '2014-07-31 17:24:19');

-- --------------------------------------------------------

--
-- Table structure for table `appserver_locpost_location`
--

CREATE TABLE IF NOT EXISTS `appserver_locpost_location` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `locpost_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `locpost_id` (`locpost_id`,`location_id`),
  KEY `appserver_locpost_location_3890e326` (`locpost_id`),
  KEY `appserver_locpost_location_afbb987d` (`location_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=37 ;

--
-- Dumping data for table `appserver_locpost_location`
--

INSERT INTO `appserver_locpost_location` (`id`, `locpost_id`, `location_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 2),
(5, 5, 2),
(6, 6, 1),
(7, 7, 3),
(8, 8, 3),
(9, 9, 4),
(10, 10, 4),
(11, 11, 4),
(15, 15, 8),
(16, 16, 8),
(17, 17, 8),
(18, 18, 8),
(19, 19, 8),
(20, 20, 8),
(34, 34, 8),
(35, 35, 18),
(36, 36, 19);

-- --------------------------------------------------------

--
-- Table structure for table `appserver_locpost_user`
--

CREATE TABLE IF NOT EXISTS `appserver_locpost_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `locpost_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `locpost_id` (`locpost_id`,`user_id`),
  KEY `appserver_locpost_user_3890e326` (`locpost_id`),
  KEY `appserver_locpost_user_6340c63c` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=37 ;

--
-- Dumping data for table `appserver_locpost_user`
--

INSERT INTO `appserver_locpost_user` (`id`, `locpost_id`, `user_id`) VALUES
(1, 1, 2),
(2, 2, 2),
(3, 3, 2),
(4, 4, 2),
(5, 5, 2),
(6, 6, 3),
(7, 7, 2),
(8, 8, 2),
(9, 9, 2),
(10, 10, 2),
(11, 11, 2),
(15, 15, 2),
(16, 16, 2),
(17, 17, 2),
(18, 18, 2),
(19, 19, 2),
(20, 20, 2),
(34, 34, 1),
(35, 35, 1),
(36, 36, 1);

-- --------------------------------------------------------

--
-- Table structure for table `appserver_postcomment`
--

CREATE TABLE IF NOT EXISTS `appserver_postcomment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comment_post_id` int(11) NOT NULL,
  `comment_text` longtext COLLATE utf8_unicode_ci NOT NULL,
  `comment_time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `appserver_postcomment_d5be1858` (`comment_post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `appserver_postcomment_comment_user`
--

CREATE TABLE IF NOT EXISTS `appserver_postcomment_comment_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `postcomment_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `postcomment_id` (`postcomment_id`,`user_id`),
  KEY `appserver_postcomment_comment_user_523c491e` (`postcomment_id`),
  KEY `appserver_postcomment_comment_user_6340c63c` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_5f412f9a` (`group_id`),
  KEY `auth_group_permissions_83d7f98b` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  KEY `auth_permission_37ef4eb4` (`content_type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=28 ;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can add permission', 2, 'add_permission'),
(5, 'Can change permission', 2, 'change_permission'),
(6, 'Can delete permission', 2, 'delete_permission'),
(7, 'Can add group', 3, 'add_group'),
(8, 'Can change group', 3, 'change_group'),
(9, 'Can delete group', 3, 'delete_group'),
(10, 'Can add user', 4, 'add_user'),
(11, 'Can change user', 4, 'change_user'),
(12, 'Can delete user', 4, 'delete_user'),
(13, 'Can add content type', 5, 'add_contenttype'),
(14, 'Can change content type', 5, 'change_contenttype'),
(15, 'Can delete content type', 5, 'delete_contenttype'),
(16, 'Can add session', 6, 'add_session'),
(17, 'Can change session', 6, 'change_session'),
(18, 'Can delete session', 6, 'delete_session'),
(19, 'Can add location', 7, 'add_location'),
(20, 'Can change location', 7, 'change_location'),
(21, 'Can delete location', 7, 'delete_location'),
(22, 'Can add loc post', 8, 'add_locpost'),
(23, 'Can change loc post', 8, 'change_locpost'),
(24, 'Can delete loc post', 8, 'delete_locpost'),
(25, 'Can add post comment', 9, 'add_postcomment'),
(26, 'Can change post comment', 9, 'change_postcomment'),
(27, 'Can delete post comment', 9, 'delete_postcomment');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(75) COLLATE utf8_unicode_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$12000$2jhqVEVhCgOI$rZh9IUuY7EYv8ikyUS9RpP3oS3+UobhGLmJI3ui7qXk=', '2014-07-31 17:32:20', 1, 'apple', '', '', '791283555@qq.com', 1, 1, '2014-07-31 00:39:24'),
(2, 'pbkdf2_sha256$12000$KrJOBEUpugwh$hh3YOqWbj26ubOr1rE4yZ1m7HzCAsIJt2jk4Q2LabVk=', '2014-07-31 20:23:55', 0, 'cc', '', '', '123@loc.com', 0, 1, '2014-07-31 00:39:56'),
(3, 'pbkdf2_sha256$12000$fhMGlYFf0LHf$toanzxwTZiUVrBL7ynKp+YtnOTsoE9R1xZSeNpGs8Zc=', '2014-07-31 00:48:09', 0, 'md', '', '', '123@loc.com', 0, 1, '2014-07-31 00:48:00');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_6340c63c` (`user_id`),
  KEY `auth_user_groups_5f412f9a` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_6340c63c` (`user_id`),
  KEY `auth_user_user_permissions_83d7f98b` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `object_id` longtext COLLATE utf8_unicode_ci,
  `object_repr` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_6340c63c` (`user_id`),
  KEY `django_admin_log_37ef4eb4` (`content_type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=21 ;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `user_id`, `content_type_id`, `object_id`, `object_repr`, `action_flag`, `change_message`) VALUES
(1, '2014-07-31 13:51:42', 1, 7, '4', '中山大学图书馆', 2, '已修改 loc_descrip 。'),
(2, '2014-07-31 13:52:08', 1, 7, '8', '中山大学体育馆', 2, '已修改 loc_descrip 。'),
(3, '2014-07-31 13:52:33', 1, 7, '7', '北京市海淀区中关村南一街7号平房-4号', 3, ''),
(4, '2014-07-31 13:52:33', 1, 7, '6', '北京市海淀区中关村南一街7号平房-4号', 3, ''),
(5, '2014-07-31 17:19:23', 1, 8, '12', 'write some thing', 3, ''),
(6, '2014-07-31 17:19:23', 1, 8, '13', 'write some thing', 3, ''),
(7, '2014-07-31 17:19:23', 1, 8, '14', 'write some thing', 3, ''),
(8, '2014-07-31 17:19:23', 1, 8, '21', 'write some thing', 3, ''),
(9, '2014-07-31 17:19:23', 1, 8, '22', 'write some thing', 3, ''),
(10, '2014-07-31 17:19:23', 1, 8, '23', 'write some thing', 3, ''),
(11, '2014-07-31 17:19:23', 1, 8, '24', 'write some thing', 3, ''),
(12, '2014-07-31 17:19:23', 1, 8, '25', 'write some thing', 3, ''),
(13, '2014-07-31 17:19:23', 1, 8, '26', 'write some thing', 3, ''),
(14, '2014-07-31 17:19:23', 1, 8, '27', 'write some thing', 3, ''),
(15, '2014-07-31 17:19:23', 1, 8, '28', 'write some thing', 3, ''),
(16, '2014-07-31 17:19:23', 1, 8, '29', 'write some thing', 3, ''),
(17, '2014-07-31 17:19:23', 1, 8, '30', 'write some thing', 3, ''),
(18, '2014-07-31 17:19:23', 1, 8, '31', 'write some thing', 3, ''),
(19, '2014-07-31 17:19:23', 1, 8, '32', 'write some thing', 3, ''),
(20, '2014-07-31 17:19:23', 1, 8, '33', 'write some thing', 3, '');

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `app_label` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `model` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_label` (`app_label`,`model`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=10 ;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `name`, `app_label`, `model`) VALUES
(1, 'log entry', 'admin', 'logentry'),
(2, 'permission', 'auth', 'permission'),
(3, 'group', 'auth', 'group'),
(4, 'user', 'auth', 'user'),
(5, 'content type', 'contenttypes', 'contenttype'),
(6, 'session', 'sessions', 'session'),
(7, 'location', 'appserver', 'location'),
(8, 'loc post', 'appserver', 'locpost'),
(9, 'post comment', 'appserver', 'postcomment');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `session_data` longtext COLLATE utf8_unicode_ci NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_b7b81f0c` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('04ke9y3j0besa19ftbu0i8vbj5vcpi0u', 'ZjQyNmM4MDIwNjBmMzEwNTY2YWY0NmViNjIyODhiODkyNGU4MzhjNDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6Mn0=', '2014-08-14 14:01:30'),
('05sq6seanenrrpm8f72ph2f2sxfec696', 'ZjQyNmM4MDIwNjBmMzEwNTY2YWY0NmViNjIyODhiODkyNGU4MzhjNDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6Mn0=', '2014-08-14 13:47:09'),
('0u0llxjsjxusc8rft58e9w0ynrdwr7nv', 'ZjQyNmM4MDIwNjBmMzEwNTY2YWY0NmViNjIyODhiODkyNGU4MzhjNDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6Mn0=', '2014-08-14 09:35:03'),
('28ad9vbinubvj6dw12i03t1tf4dygy3l', 'ZjQyNmM4MDIwNjBmMzEwNTY2YWY0NmViNjIyODhiODkyNGU4MzhjNDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6Mn0=', '2014-08-14 11:29:36'),
('4bi1uz8y1dt5dvlhg3bpqex7t7ylapfm', 'ZjQyNmM4MDIwNjBmMzEwNTY2YWY0NmViNjIyODhiODkyNGU4MzhjNDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6Mn0=', '2014-08-14 13:38:31'),
('4kf78nw7srok7z5bs38vwr5r5jmn95w0', 'MDVjZmQwZmI0Y2FiYjIwNzkzMzdkNWNkZDZlMTA0Y2U1YzRlZGIxODp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=', '2014-08-14 15:21:23'),
('5vuhfdzae5u6d2ipxd2thqxtwu1s2lw3', 'ZjQyNmM4MDIwNjBmMzEwNTY2YWY0NmViNjIyODhiODkyNGU4MzhjNDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6Mn0=', '2014-08-14 13:41:23'),
('5w584pupr7nls1uzic1nyduje9s8zld0', 'ZjQyNmM4MDIwNjBmMzEwNTY2YWY0NmViNjIyODhiODkyNGU4MzhjNDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6Mn0=', '2014-08-14 20:23:09'),
('6ati5045su8zzrek8xyb2hxgj5tjespb', 'ZjQyNmM4MDIwNjBmMzEwNTY2YWY0NmViNjIyODhiODkyNGU4MzhjNDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6Mn0=', '2014-08-14 14:59:11'),
('6sspqgz4i4i5gvjv5qviyntkncui377w', 'ZjQyNmM4MDIwNjBmMzEwNTY2YWY0NmViNjIyODhiODkyNGU4MzhjNDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6Mn0=', '2014-08-14 13:22:50'),
('7lh59zwyjybhdzhbgorn52wmt3upw614', 'YmMwNzhmOWEyNDk4YzE4OTk4Y2M5MDUxMWJjOGJkZTk2OGYyMDAwZjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6M30=', '2014-08-14 00:48:09'),
('7n39mzfszvqvxd7xwb9ssqd8mzhx157t', 'ZjQyNmM4MDIwNjBmMzEwNTY2YWY0NmViNjIyODhiODkyNGU4MzhjNDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6Mn0=', '2014-08-14 18:39:45'),
('7y2vtqcx0lurbav3zllkym7wo013st02', 'ZjQyNmM4MDIwNjBmMzEwNTY2YWY0NmViNjIyODhiODkyNGU4MzhjNDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6Mn0=', '2014-08-14 02:09:44'),
('983872fxlw8xvigcmvs2lra925oxh2v9', 'ZjQyNmM4MDIwNjBmMzEwNTY2YWY0NmViNjIyODhiODkyNGU4MzhjNDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6Mn0=', '2014-08-14 11:21:39'),
('a7bp5r70s4iru29gqxr6emot0slaq005', 'ZjQyNmM4MDIwNjBmMzEwNTY2YWY0NmViNjIyODhiODkyNGU4MzhjNDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6Mn0=', '2014-08-14 13:47:33'),
('acmn5qvatx5ex6eylkjye3axv4nuiqg7', 'ZjQyNmM4MDIwNjBmMzEwNTY2YWY0NmViNjIyODhiODkyNGU4MzhjNDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6Mn0=', '2014-08-14 11:01:39'),
('bgdmf4x2j8mmqck1hnftm00nltn48ye4', 'ZjQyNmM4MDIwNjBmMzEwNTY2YWY0NmViNjIyODhiODkyNGU4MzhjNDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6Mn0=', '2014-08-14 14:50:56'),
('cgtpucf79fjob3i17fofjql7vcjwfqnp', 'MDVjZmQwZmI0Y2FiYjIwNzkzMzdkNWNkZDZlMTA0Y2U1YzRlZGIxODp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=', '2014-08-14 17:19:58'),
('cpu731gl0buzntkj93symcdfxh67sw40', 'ZjQyNmM4MDIwNjBmMzEwNTY2YWY0NmViNjIyODhiODkyNGU4MzhjNDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6Mn0=', '2014-08-14 11:24:09'),
('dj0cnkm5wswmiaz7jfr62uqtg8972tx6', 'ZjQyNmM4MDIwNjBmMzEwNTY2YWY0NmViNjIyODhiODkyNGU4MzhjNDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6Mn0=', '2014-08-14 11:20:00'),
('dp6e8jhv49wpyiucka2ah7denfouwc29', 'ZjQyNmM4MDIwNjBmMzEwNTY2YWY0NmViNjIyODhiODkyNGU4MzhjNDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6Mn0=', '2014-08-14 10:50:16'),
('eiy17ijngyrnedgvtyg9ea7d2s4qeskw', 'ZjQyNmM4MDIwNjBmMzEwNTY2YWY0NmViNjIyODhiODkyNGU4MzhjNDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6Mn0=', '2014-08-14 11:28:40'),
('fvitz35iadrnjmifobtfi72najne8bq0', 'ZjQyNmM4MDIwNjBmMzEwNTY2YWY0NmViNjIyODhiODkyNGU4MzhjNDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6Mn0=', '2014-08-14 09:54:27'),
('hx9vizkqy64mgvap0hh9nlu1pw4j19hp', 'ZjQyNmM4MDIwNjBmMzEwNTY2YWY0NmViNjIyODhiODkyNGU4MzhjNDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6Mn0=', '2014-08-14 13:34:33'),
('iw99gj9umozaipzvth4rpobk2e6de913', 'ZjQyNmM4MDIwNjBmMzEwNTY2YWY0NmViNjIyODhiODkyNGU4MzhjNDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6Mn0=', '2014-08-14 10:47:36'),
('k7ymuv68mrm6k84xeobka8qnrua9t4mk', 'ZjQyNmM4MDIwNjBmMzEwNTY2YWY0NmViNjIyODhiODkyNGU4MzhjNDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6Mn0=', '2014-08-14 11:25:59'),
('kbcyy3pua17om0kp204cia31s6acvwj5', 'ZjQyNmM4MDIwNjBmMzEwNTY2YWY0NmViNjIyODhiODkyNGU4MzhjNDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6Mn0=', '2014-08-14 11:15:19'),
('kndqvpps1jd6w7xjdqmaprdrhe8pnc81', 'ZjQyNmM4MDIwNjBmMzEwNTY2YWY0NmViNjIyODhiODkyNGU4MzhjNDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6Mn0=', '2014-08-14 11:12:11'),
('ks2xrd31nxa0dtcgcgbyxcvb8931hv4p', 'ZjQyNmM4MDIwNjBmMzEwNTY2YWY0NmViNjIyODhiODkyNGU4MzhjNDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6Mn0=', '2014-08-14 11:30:46'),
('li8hk97wosq9kc86rfyq1irgvjfbb7i1', 'ZjQyNmM4MDIwNjBmMzEwNTY2YWY0NmViNjIyODhiODkyNGU4MzhjNDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6Mn0=', '2014-08-14 09:33:40'),
('mksqaoxzxhuv5ifqco7tczgtnnr0itm2', 'ZjQyNmM4MDIwNjBmMzEwNTY2YWY0NmViNjIyODhiODkyNGU4MzhjNDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6Mn0=', '2014-08-14 13:24:18'),
('nh9xaktxfco4rujupp7qq73vghbrug51', 'ZjQyNmM4MDIwNjBmMzEwNTY2YWY0NmViNjIyODhiODkyNGU4MzhjNDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6Mn0=', '2014-08-14 13:30:09'),
('nu84xuroem6l5th3vk7paym1rmbhcnc0', 'ZjQyNmM4MDIwNjBmMzEwNTY2YWY0NmViNjIyODhiODkyNGU4MzhjNDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6Mn0=', '2014-08-14 13:38:50'),
('o1sj7owyzxb0mlwvqhjv00r93rxsmqmq', 'ZjQyNmM4MDIwNjBmMzEwNTY2YWY0NmViNjIyODhiODkyNGU4MzhjNDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6Mn0=', '2014-08-14 09:32:53'),
('oca24dx23ylw9io0gevwbbkvi1lwyt0x', 'MDVjZmQwZmI0Y2FiYjIwNzkzMzdkNWNkZDZlMTA0Y2U1YzRlZGIxODp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=', '2014-08-14 17:32:20'),
('okk81g4c12fl4g0bvz0qes4hzzxxf0li', 'ZjQyNmM4MDIwNjBmMzEwNTY2YWY0NmViNjIyODhiODkyNGU4MzhjNDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6Mn0=', '2014-08-14 14:55:52'),
('oy8wo3wdgepzvktiod5n8tn94cz7d7qu', 'ZjQyNmM4MDIwNjBmMzEwNTY2YWY0NmViNjIyODhiODkyNGU4MzhjNDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6Mn0=', '2014-08-14 13:45:42'),
('pfdi4y7m775t2t9kc8i5u07nh5zypwfv', 'ZjQyNmM4MDIwNjBmMzEwNTY2YWY0NmViNjIyODhiODkyNGU4MzhjNDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6Mn0=', '2014-08-14 09:31:33'),
('pnfovl2lx8p2j6xfcki30q1c8wm1loa7', 'ZjQyNmM4MDIwNjBmMzEwNTY2YWY0NmViNjIyODhiODkyNGU4MzhjNDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6Mn0=', '2014-08-14 15:05:48'),
('rcro8mhoe7pccq41q46pdjaksnojtsle', 'ZjQyNmM4MDIwNjBmMzEwNTY2YWY0NmViNjIyODhiODkyNGU4MzhjNDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6Mn0=', '2014-08-14 11:06:13'),
('rgavyaik1rzql04a3y5hyuuynv92d9c3', 'ZjQyNmM4MDIwNjBmMzEwNTY2YWY0NmViNjIyODhiODkyNGU4MzhjNDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6Mn0=', '2014-08-14 20:23:55'),
('uc6f0a1194fshsjczwuvomky4ezktq7j', 'ZjQyNmM4MDIwNjBmMzEwNTY2YWY0NmViNjIyODhiODkyNGU4MzhjNDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6Mn0=', '2014-08-14 13:18:08'),
('velr98nv0qjy5gftd2dkyk8ja7752yy9', 'N2M4MTFmNjI2MWUwYmZkNGExYzM0NmZmM2MwNmNiMmMzNjIyYTYzZDp7Il9hdXRoX3VzZXJfaWQiOjIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=', '2014-08-14 09:35:39'),
('vhkv1uccwhmqy36by0gr5sui7hs95q7a', 'ZjQyNmM4MDIwNjBmMzEwNTY2YWY0NmViNjIyODhiODkyNGU4MzhjNDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6Mn0=', '2014-08-14 10:24:02'),
('wc2603x3fipaogelshux6yrpncea7kel', 'ZjQyNmM4MDIwNjBmMzEwNTY2YWY0NmViNjIyODhiODkyNGU4MzhjNDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6Mn0=', '2014-08-14 02:50:19'),
('wz5rgtrvtatz8alrulcpiorcc92z3qpq', 'ZjQyNmM4MDIwNjBmMzEwNTY2YWY0NmViNjIyODhiODkyNGU4MzhjNDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6Mn0=', '2014-08-14 11:10:22'),
('x6t3rm2ecqj2tu4277fjolia9ln1vvaf', 'ZjQyNmM4MDIwNjBmMzEwNTY2YWY0NmViNjIyODhiODkyNGU4MzhjNDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6Mn0=', '2014-08-14 11:27:53'),
('xryzo6xszmpgto3bx0jb9ughu27m9k2a', 'ZjQyNmM4MDIwNjBmMzEwNTY2YWY0NmViNjIyODhiODkyNGU4MzhjNDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6Mn0=', '2014-08-14 14:51:24'),
('z9ugy5h6mdemhafdxvo5rmep1wydt3h6', 'N2M4MTFmNjI2MWUwYmZkNGExYzM0NmZmM2MwNmNiMmMzNjIyYTYzZDp7Il9hdXRoX3VzZXJfaWQiOjIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=', '2014-08-14 13:20:05'),
('zjnbknhbl4z1rk9fo2ieq5lr2hpxmir6', 'ZjQyNmM4MDIwNjBmMzEwNTY2YWY0NmViNjIyODhiODkyNGU4MzhjNDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6Mn0=', '2014-08-14 13:39:05');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appserver_locpost_location`
--
ALTER TABLE `appserver_locpost_location`
  ADD CONSTRAINT `location_id_refs_id_b23938a2` FOREIGN KEY (`location_id`) REFERENCES `appserver_location` (`id`),
  ADD CONSTRAINT `locpost_id_refs_id_260a2df1` FOREIGN KEY (`locpost_id`) REFERENCES `appserver_locpost` (`id`);

--
-- Constraints for table `appserver_locpost_user`
--
ALTER TABLE `appserver_locpost_user`
  ADD CONSTRAINT `locpost_id_refs_id_1d96c20c` FOREIGN KEY (`locpost_id`) REFERENCES `appserver_locpost` (`id`),
  ADD CONSTRAINT `user_id_refs_id_d7546fb7` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `appserver_postcomment`
--
ALTER TABLE `appserver_postcomment`
  ADD CONSTRAINT `comment_post_id_refs_id_0318d673` FOREIGN KEY (`comment_post_id`) REFERENCES `appserver_locpost` (`id`);

--
-- Constraints for table `appserver_postcomment_comment_user`
--
ALTER TABLE `appserver_postcomment_comment_user`
  ADD CONSTRAINT `postcomment_id_refs_id_797213b6` FOREIGN KEY (`postcomment_id`) REFERENCES `appserver_postcomment` (`id`),
  ADD CONSTRAINT `user_id_refs_id_9f1b3879` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `group_id_refs_id_f4b32aac` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `permission_id_refs_id_6ba0f519` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `content_type_id_refs_id_d043b34a` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `group_id_refs_id_274b862c` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `user_id_refs_id_40c41112` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `permission_id_refs_id_35d9ac25` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `user_id_refs_id_4dc23c39` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `content_type_id_refs_id_93d2d1f8` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `user_id_refs_id_c0d12874` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
