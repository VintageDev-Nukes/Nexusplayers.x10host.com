-- phpMyAdmin SQL Dump
-- version 3.5.5
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 24-08-2013 a las 17:33:50
-- Versión del servidor: 5.1.69
-- Versión de PHP: 5.3.20

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `nexuspla_yers`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios`
--

CREATE TABLE IF NOT EXISTS `comentarios` (
  `id` bigint(7) DEFAULT NULL,
  `id_juego` bigint(7) DEFAULT NULL,
  `nick` char(20) DEFAULT 'Anónimo',
  `comentario` varchar(500) DEFAULT NULL,
  `fecha` varchar(50) NOT NULL DEFAULT '',
  `ip` varchar(20) NOT NULL DEFAULT '',
  `userid` varchar(10) NOT NULL DEFAULT '',
  `avatar` varchar(200) NOT NULL DEFAULT '',
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hits`
--

CREATE TABLE IF NOT EXISTS `hits` (
  `page` char(100) NOT NULL DEFAULT '',
  `count` int(15) DEFAULT '-1',
  PRIMARY KEY (`page`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `info`
--

CREATE TABLE IF NOT EXISTS `info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(30) DEFAULT NULL,
  `user_agent` varchar(50) DEFAULT NULL,
  `datetime` varchar(25) DEFAULT NULL,
  `app` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `juegos`
--

CREATE TABLE IF NOT EXISTS `juegos` (
  `id` bigint(7) NOT NULL AUTO_INCREMENT,
  `miniatura` varchar(250) NOT NULL DEFAULT '',
  `linkjuego` varchar(250) NOT NULL DEFAULT '',
  `nombre` varchar(50) NOT NULL DEFAULT '',
  `descripcion` varchar(500) NOT NULL DEFAULT '',
  `categoria` varchar(50) NOT NULL DEFAULT '',
  `cat2` varchar(50) NOT NULL DEFAULT '',
  `tipo` varchar(10) NOT NULL DEFAULT '',
  `teclas` longtext NOT NULL,
  `acciones` longtext NOT NULL,
  `ancho` varchar(4) NOT NULL DEFAULT '',
  `alto` varchar(4) NOT NULL DEFAULT '',
  `code` varchar(5000) NOT NULL DEFAULT '',
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modpacks`
--

CREATE TABLE IF NOT EXISTS `modpacks` (
  `id` bigint(7) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) NOT NULL DEFAULT '',
  `name` varchar(30) NOT NULL DEFAULT '',
  `descarga` varchar(300) NOT NULL DEFAULT '',
  `version` varchar(4) NOT NULL DEFAULT '1',
  `descripcion` varchar(500) NOT NULL DEFAULT '',
  `vermc` varchar(25) NOT NULL DEFAULT 'Null',
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rabid_ratables`
--

CREATE TABLE IF NOT EXISTS `rabid_ratables` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ratableKey` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ratableKey` (`ratableKey`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Volcado de datos para la tabla `rabid_ratables`
--

INSERT INTO `rabid_ratables` (`id`, `ratableKey`, `created_at`) VALUES
(1, 'myArticle1', '2013-05-09 00:52:23'),
(2, 'myArticle2', '2013-05-09 00:52:23'),
(3, 'myArticle3', '2013-05-09 00:52:23'),
(4, 'myArticle4', '2013-05-09 00:52:23'),
(5, 'anotherGreatArticle', '2013-05-09 12:25:51'),
(6, 'myArticle6', '2013-05-11 20:12:56');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rabid_ratings`
--

CREATE TABLE IF NOT EXISTS `rabid_ratings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ratable_id` int(11) NOT NULL,
  `ip_address` varchar(50) NOT NULL,
  `rating` int(11) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ratable_id` (`ratable_id`,`ip_address`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=27 ;

--
-- Volcado de datos para la tabla `rabid_ratings`
--

INSERT INTO `rabid_ratings` (`id`, `ratable_id`, `ip_address`, `rating`, `timestamp`) VALUES
(1, 1, '2.138.44.201', 100, '2013-05-09 00:52:26'),
(2, 2, '2.138.44.201', 20, '2013-05-09 00:52:33'),
(3, 3, '2.138.44.201', 60, '2013-05-09 00:52:35'),
(4, 4, '2.138.44.201', 80, '2013-05-09 00:52:36'),
(5, 5, '2.138.44.201', 100, '2013-05-09 12:32:48'),
(6, 2, '190.250.101.153', 80, '2013-05-09 19:30:59'),
(7, 5, '190.250.101.153', 100, '2013-05-09 19:31:02'),
(8, 4, '190.250.101.153', 20, '2013-05-09 19:31:05'),
(9, 3, '190.250.101.153', 60, '2013-05-09 19:31:07'),
(10, 2, '190.111.65.4', 80, '2013-05-10 22:01:10'),
(11, 3, '190.111.65.4', 100, '2013-05-10 22:01:16'),
(12, 4, '190.111.65.4', 100, '2013-05-10 22:01:19'),
(13, 1, '190.111.65.4', 100, '2013-05-10 22:01:22'),
(14, 5, '190.111.65.4', 100, '2013-05-10 22:01:24'),
(15, 5, '213.98.86.188', 60, '2013-05-11 20:06:43'),
(16, 4, '213.98.86.188', 100, '2013-05-11 20:06:46'),
(17, 3, '213.98.86.188', 100, '2013-05-11 20:06:47'),
(18, 2, '213.98.86.188', 100, '2013-05-11 20:06:48'),
(19, 1, '213.98.86.188', 100, '2013-05-11 20:06:50'),
(20, 3, '2.138.105.40', 100, '2013-05-11 20:06:57'),
(21, 4, '2.138.105.40', 80, '2013-05-11 20:07:00'),
(22, 5, '2.138.105.40', 100, '2013-05-11 20:07:02'),
(23, 2, '2.138.105.40', 40, '2013-05-11 20:07:03'),
(24, 1, '2.138.105.40', 100, '2013-05-11 20:07:05'),
(25, 2, '199.193.115.145', 80, '2013-05-11 22:21:11'),
(26, 3, '199.193.115.145', 100, '2013-05-11 22:21:14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `smf_ikilladmin_info_files`
--

CREATE TABLE IF NOT EXISTS `smf_ikilladmin_info_files` (
  `id_file` tinyint(4) unsigned NOT NULL AUTO_INCREMENT,
  `filename` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(255) NOT NULL DEFAULT '',
  `parameters` varchar(255) NOT NULL DEFAULT '',
  `data` text NOT NULL,
  `filetype` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id_file`),
  KEY `filename` (`filename`(30))
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Volcado de datos para la tabla `smf_ikilladmin_info_files`
--

INSERT INTO `smf_ikilladmin_info_files` (`id_file`, `filename`, `path`, `parameters`, `data`, `filetype`) VALUES
(1, 'current-version.js', '/smf/', 'version=%3$s', 'window.smfVersion = "SMF 2.0.5";', 'text/javascript'),
(2, 'detailed-version.js', '/smf/', 'language=%1$s&version=%3$s', 'window.smfVersions = {\n	''SMF'': ''SMF 2.0.5'',\n	''SourcesAdmin.php'': ''2.0'',\n	''SourcesBoardIndex.php'': ''2.0'',\n	''SourcesCalendar.php'': ''2.0'',\n	''SourcesClass-Graphics.php'': ''2.0'',\n	''SourcesClass-Package.php'': ''2.0'',\n	''SourcesDbExtra-mysql.php'': ''2.0'',\n	''SourcesDbExtra-postgresql.php'': ''2.0'',\n	''SourcesDbExtra-sqlite.php'': ''2.0'',\n	''SourcesDbPackages-mysql.php'': ''2.0'',\n	''SourcesDbPackages-postgresql.php'': ''2.0'',\n	''SourcesDbPackages-sqlite.php'': ''2.0'',\n	''SourcesDbSearch-mysql.php'': ''2.0'',\n	''SourcesDbSearch-postgresql.php'': ''2.0'',\n	''SourcesDbSearch-sqlite.php'': ''2.0'',\n	''SourcesDisplay.php'': ''2.0'',\n	''SourcesDumpDatabase.php'': ''2.0'',\n	''SourcesErrors.php'': ''2.0.4'',\n	''SourcesGroups.php'': ''2.0'',\n	''SourcesHelp.php'': ''2.0'',\n	''SourcesKarma.php'': ''2.0'',\n	''SourcesLoad.php'': ''2.0.3'',\n	''SourcesLockTopic.php'': ''2.0'',\n	''SourcesLogInOut.php'': ''2.0.4'',\n	''SourcesManageAttachments.php'': ''2.0'',\n	''SourcesManageBans.php'': ''2.0'',\n	''SourcesManageBoards.php'': ''2.0'',\n	''SourcesManageCalendar.php'': ''2.0'',\n	''SourcesManageErrors.php'': ''2.0.4'',\n	''SourcesManageMail.php'': ''2.0'',\n	''SourcesManageMaintenance.php'': ''2.0.1'',\n	''SourcesManageMembergroups.php'': ''2.0'',\n	''SourcesManageMembers.php'': ''2.0'',\n	''SourcesManageNews.php'': ''2.0.5'',\n	''SourcesManagePaid.php'': ''2.0.3'',\n	''SourcesManagePermissions.php'': ''2.0'',\n	''SourcesManagePosts.php'': ''2.0'',\n	''SourcesManageRegistration.php'': ''2.0'',\n	''SourcesManageScheduledTasks.php'': ''2.0'',\n	''SourcesManageSearch.php'': ''2.0'',\n	''SourcesManageSearchEngines.php'': ''2.0'',\n	''SourcesManageServer.php'': ''2.0.5'',\n	''SourcesManageSettings.php'': ''2.0'',\n	''SourcesManageSmileys.php'': ''2.0'',\n	''SourcesMemberlist.php'': ''2.0.2'',\n	''SourcesMessageIndex.php'': ''2.0.2'',\n	''SourcesModerationCenter.php'': ''2.0.1'',\n	''SourcesModlog.php'': ''2.0.3'',\n	''SourcesMoveTopic.php'': ''2.0'',\n	''SourcesNews.php'': ''2.0'',\n	''SourcesNotify.php'': ''2.0'',\n	''SourcesPackageGet.php'': ''2.0'',\n	''SourcesPackages.php'': ''2.0.2'',\n	''SourcesPersonalMessage.php'': ''2.0.5'',\n	''SourcesPoll.php'': ''2.0'',\n	''SourcesPost.php'': ''2.0'',\n	''SourcesPostModeration.php'': ''2.0'',\n	''SourcesPrintpage.php'': ''2.0'',\n	''SourcesProfile.php'': ''2.0'',\n	''SourcesProfile-Actions.php'': ''2.0'',\n	''SourcesProfile-Modify.php'': ''2.0.2'',\n	''SourcesProfile-View.php'': ''2.0.5'',\n	''SourcesQueryString.php'': ''2.0.3'',\n	''SourcesRecent.php'': ''2.0'',\n	''SourcesRegister.php'': ''2.0.4'',\n	''SourcesReminder.php'': ''2.0.4'',\n	''SourcesRemoveTopic.php'': ''2.0'',\n	''SourcesRepairBoards.php'': ''2.0'',\n	''SourcesReports.php'': ''2.0'',\n	''SourcesSSI.php'': ''2.0.4'',\n	''SourcesScheduledTasks.php'': ''2.0'',\n	''SourcesSearch.php'': ''2.0'',\n	''SourcesSearchAPI-Custom.php'': ''2.0'',\n	''SourcesSearchAPI-Fulltext.php'': ''2.0'',\n	''SourcesSearchAPI-Standard.php'': ''2.0'',\n	''SourcesSecurity.php'': ''2.0.3'',\n	''SourcesSendTopic.php'': ''2.0'',\n	''SourcesSplitTopics.php'': ''2.0'',\n	''SourcesStats.php'': ''2.0'',\n	''SourcesSubs.php'': ''2.0'',\n	''SourcesSubs-Admin.php'': ''2.0'',\n	''SourcesSubs-Auth.php'': ''2.0'',\n	''SourcesSubs-BoardIndex.php'': ''2.0'',\n	''SourcesSubs-Boards.php'': ''2.0'',\n	''SourcesSubs-Calendar.php'': ''2.0'',\n	''SourcesSubs-Categories.php'' : ''2.0'',\n	''SourcesSubs-Charset.php'' : ''2.0'',\n	''SourcesSubs-Compat.php'': ''2.0'',\n	''SourcesSubs-Db-mysql.php'': ''2.0.4'',\n	''SourcesSubs-Db-postgresql.php'': ''2.0.4'',\n	''SourcesSubs-Db-sqlite.php'': ''2.0'',\n	''SourcesSubs-Editor.php'': ''2.0'',\n	''SourcesSubs-Graphics.php'': ''2.0'',\n	''SourcesSubs-List.php'': ''2.0'',\n	''SourcesSubs-Membergroups.php'': ''2.0'',\n	''SourcesSubs-Members.php'': ''2.0.1'',\n	''SourcesSubs-MembersOnline.php'': ''2.0'',\n	''SourcesSubs-Menu.php'': ''2.0.1'',\n	''SourcesSubs-MessageIndex.php'': ''2.0'',\n	''SourcesSubs-OpenID.php'': ''2.0'',\n	''SourcesSubs-Package.php'': ''2.0.1'',\n	''SourcesSubs-Post.php'': ''2.0'',\n	''SourcesSubs-Recent.php'': ''2.0'',\n	''SourcesSubscriptions-PayPal.php'': ''2.0.3'',\n	''Sourcessubscriptions.php'': ''2.0.2'',\n	''SourcesSubs-Sound.php'': ''2.0'',\n	''SourcesThemes.php'': ''2.0.4'',\n	''SourcesViewQuery.php'': ''2.0'',\n	''SourcesWho.php'': ''2.0.2'',\n	''SourcesXml.php'': ''2.0'',\n	''DefaultAdmin.template.php'': ''2.0'',\n	''DefaultBoardIndex.template.php'': ''2.0'',\n	''DefaultCalendar.template.php'': ''2.0'',\n	''DefaultCompat.template.php'': ''2.0'',\n	''DefaultDisplay.template.php'': ''2.0'',\n	''DefaultErrors.template.php'': ''2.0'',\n	''DefaultGenericControls.template.php'': ''2.0'',\n	''DefaultGenericList.template.php'': ''2.0'',\n	''DefaultGenericMenu.template.php'': ''2.0'',\n	''DefaultHelp.template.php'': ''2.0'',\n	''DefaultLogin.template.php'': ''2.0'',\n	''DefaultManageAttachments.template.php'': ''2.0'',\n	''DefaultManageBans.template.php'': ''2.0'',\n	''DefaultManageBoards.template.php'': ''2.0'',\n	''DefaultManageCalendar.template.php'': ''2.0'',\n	''DefaultManageMail.template.php'': ''2.0'',\n	''DefaultManageMaintenance.template.php'': ''2.0'',\n	''DefaultManageMembergroups.template.php'': ''2.0'',\n	''DefaultManageMembers.template.php'': ''2.0'',\n	''DefaultManageNews.template.php'': ''2.0'',\n	''DefaultManagePaid.template.php'': ''2.0'',\n	''DefaultManagePermissions.template.php'': ''2.0'',\n	''DefaultManageScheduledTasks.template.php'': ''2.0'',\n	''DefaultManageSearch.template.php'': ''2.0'',\n	''DefaultManageSmileys.template.php'': ''2.0'',\n	''DefaultMemberlist.template.php'': ''2.0'',\n	''DefaultMessageIndex.template.php'': ''2.0'',\n	''DefaultModerationCenter.template.php'': ''2.0'',\n	''DefaultMoveTopic.template.php'': ''2.0'',\n	''DefaultNotify.template.php'': ''2.0'',\n	''DefaultPackages.template.php'': ''2.0'',\n	''DefaultPersonalMessage.template.php'': ''2.0'',\n	''DefaultPoll.template.php'': ''2.0'',\n	''DefaultPost.template.php'': ''2.0'',\n	''DefaultPrintpage.template.php'': ''2.0'',\n	''DefaultProfile.template.php'': ''2.0'',\n	''DefaultRecent.template.php'': ''2.0'',\n	''DefaultRegister.template.php'': ''2.0'',\n	''DefaultReminder.template.php'': ''2.0'',\n	''DefaultReports.template.php'': ''2.0'',\n	''DefaultSearch.template.php'': ''2.0'',\n	''DefaultSendTopic.template.php'': ''2.0'',\n	''DefaultSettings.template.php'': ''2.0'',\n	''DefaultSplitTopics.template.php'': ''2.0'',\n	''DefaultStats.template.php'': ''2.0'',\n	''DefaultThemes.template.php'': ''2.0'',\n	''DefaultWho.template.php'': ''2.0'',\n	''DefaultWireless.template.php'': ''2.0'',\n	''DefaultXml.template.php'': ''2.0'',\n	''Defaultindex.template.php'': ''2.0'',\n	''TemplatesAdmin.template.php'': ''2.0'',\n	''TemplatesBoardIndex.template.php'': ''2.0'',\n	''TemplatesCalendar.template.php'': ''2.0'',\n	''TemplatesDisplay.template.php'': ''2.0'',\n	''TemplatesErrors.template.php'': ''2.0'',\n	''TemplatesGenericControls.template.php'': ''2.0'',\n	''TemplatesGenericList.template.php'': ''2.0'',\n	''TemplatesGenericMenu.template.php'': ''2.0'',\n	''TemplatesHelp.template.php'': ''2.0'',\n	''TemplatesLogin.template.php'': ''2.0'',\n	''TemplatesManageAttachments.template.php'': ''2.0'',\n	''TemplatesManageBans.template.php'': ''2.0'',\n	''TemplatesManageBoards.template.php'': ''2.0'',\n	''TemplatesManageCalendar.template.php'': ''2.0'',\n	''TemplatesManageMail.template.php'': ''2.0'',\n	''TemplatesManageMaintenance.template.php'': ''2.0'',\n	''TemplatesManageMembergroups.template.php'': ''2.0'',\n	''TemplatesManageMembers.template.php'': ''2.0'',\n	''TemplatesManageNews.template.php'': ''2.0'',\n	''TemplatesManagePaid.template.php'': ''2.0'',\n	''TemplatesManagePermissions.template.php'': ''2.0'',\n	''TemplatesManageSearch.template.php'': ''2.0'',\n	''TemplatesManageSmileys.template.php'': ''2.0'',\n	''TemplatesMemberlist.template.php'': ''2.0'',\n	''TemplatesMessageIndex.template.php'': ''2.0'',\n	''TemplatesModerationCenter.template.php'': ''2.0'',\n	''TemplatesModlog.template.php'': ''2.0'',\n	''TemplatesMoveTopic.template.php'': ''2.0'',\n	''TemplatesNotify.template.php'': ''2.0'',\n	''TemplatesPackages.template.php'': ''2.0'',\n	''TemplatesPersonalMessage.template.php'': ''2.0'',\n	''TemplatesPoll.template.php'': ''2.0'',\n	''TemplatesPost.template.php'': ''2.0'',\n	''TemplatesPrintpage.template.php'': ''2.0'',\n	''TemplatesProfile.template.php'': ''2.0'',\n	''TemplatesRecent.template.php'': ''2.0'',\n	''TemplatesRegister.template.php'': ''2.0'',\n	''TemplatesReminder.template.php'': ''2.0'',\n	''TemplatesReports.template.php'': ''2.0'',\n	''TemplatesSearch.template.php'': ''2.0'',\n	''TemplatesSendTopic.template.php'': ''2.0'',\n	''TemplatesSettings.template.php'': ''2.0'',\n	''TemplatesSplitTopics.template.php'': ''2.0'',\n	''TemplatesStats.template.php'': ''2.0'',\n	''TemplatesThemes.template.php'': ''2.0'',\n	''TemplatesWho.template.php'': ''2.0'',\n	''TemplatesWireless.template.php'': ''2.0'',\n	''TemplatesXml.template.php'': ''2.0'',\n	''Templatesindex.template.php'': ''2.0''\n};\n\nwindow.smfLanguageVersions = {\n	''Admin'': ''2.0'',\n	''EmailTemplates'': ''2.0'',\n	''Errors'': ''2.0'',\n	''Help'': ''2.0'',\n	''index'': ''2.0.4'',\n	''Install'': ''2.0'',\n	''Login'': ''2.0'',\n	''ManageBoards'': ''2.0'',\n	''ManageCalendar'': ''2.0'',\n	''ManageMail'': ''2.0'',\n	''ManageMaintenance'': ''2.0'',\n	''ManageMembers'': ''2.0'',\n	''ManagePaid'': ''2.0'',\n	''ManagePermissions'': ''2.0'',\n	''ManageScheduledTasks'': ''2.0'',\n	''ManageSettings'': ''2.0'',\n	''ManageSmileys'': ''2.0'',\n	''Manual'': ''2.0'',\n	''ModerationCenter'': ''2.0'',\n	''Modifications'': ''2.0'',\n	''Modlog'': ''2.0'',\n	''Packages'': ''2.0'',\n	''PersonalMessage'': ''2.0'',\n	''Post'': ''2.0'',\n	''Profile'': ''2.0'',\n	''Reports'': ''2.0'',\n	''Search'': ''2.0'',\n	''Settings'': ''2.0'',\n	''Stats'': ''2.0'',\n	''Themes'': ''2.0'',\n	''Who'': ''2.0'',\n	''Wireless'': ''2.0''\n};\n', 'text/javascript'),
(3, 'latest-news.js', '/smf/', 'language=%1$s&format=%2$s', '\nwindow.smfAnnouncements = [\n	{\n		subject: ''SMF 2.0.5 security patches has been released.'',\n		href: ''http://www.simplemachines.org/community/index.php?topic=509417.0'',\n		time: ''August 12, 2013, 08:34 PM'',\n		author: ''Oldiesmann'',\n		message: ''A critical security patch has been released, addressing a few vulnerabilities in SMF 2.0.x. We urge all administrators to upgrade as soon as possible. Just visit the package manager to install the patch.''\n	},\n	{\n		subject: ''SMF 2.0.4 and 1.1.18 security patches have been released.'',\n		href: ''http://www.simplemachines.org/community/index.php?topic=496403.0'',\n		time: ''February 01, 2013, 05:27 PM'',\n		author: ''emanuele'',\n		message: ''Critical security patches have been released, addressing few vulnerabilities in SMF 2.0.x and SMF 1.1.x. We urge all administrators to upgrade as soon as possible. Just visit the package manager to install the patch.''\n	},\n	{\n		subject: ''SMF 2.0.3, 1.1.17 and 1.0.23 security patches have been released.'',\n		href: ''http://www.simplemachines.org/community/index.php?topic=492786.0'',\n		time: ''December 16, 2012, 11:41 PM'',\n		author: ''emanuele'',\n		message: ''Security patches have been released, addressing a vulnerability in SMF 2.0.x, SMF 1.1.x and SMF 1.0.x. We urge all administrators to upgrade as soon as possible. Just visit the package manager to install the patch.''\n	},\n	{\n		subject: ''SMF 2.0.2 and 1.1.16 security patches have been released.'',\n		href: ''http://www.simplemachines.org/community/index.php?topic=463103.0'',\n		time: ''December 23, 2011, 12:41 AM'',\n		author: ''Norv'',\n		message: ''Critical security patches have been released, addressing vulnerabilities in SMF 2.0.x and SMF 1.1.x. We urge all administrators to upgrade as soon as possible. Just visit the package manager to install the patch.''\n	},\n	{\n		subject: ''SMF 2.0.1 and 1.1.15 security patches have been released.'',\n		href: ''http://www.simplemachines.org/community/index.php?topic=452888.0'',\n		time: ''September 18, 2011, 04:48 PM'',\n		author: ''Norv'',\n		message: ''Critical security patches have been released, addressing vulnerabilities in SMF 2.0 and SMF 1.1.x. We urge all administrators to upgrade as soon as possible. Just visit the package manager to install the patch.''\n	},\n	{\n		subject: ''SMF 2.0 Gold'',\n		href: ''http://www.simplemachines.org/community/index.php?topic=421547.0'',\n		time: ''June 04, 2011, 05:00 PM'',\n		author: ''Norv'',\n		message: ''SMF 2.0 has gone Gold! Please upgrade your forum from older versions, as 2.0 is now the stable version, and mods and themes will be built on it.''\n	},\n	{\n		subject: ''SMF 1.1.13, 2.0 RC4 security patch and SMF 2.0 RC5 released'',\n		href: ''http://www.simplemachines.org/community/index.php?topic=421547.0'',\n		time: ''February 11, 2011, 03:16 PM'',\n		author: ''Norv'',\n		message: ''Simple Machines announces the release of important security patches for SMF 1.1.x and SMF 2.0 RC4, along with the fifth Release Candidate of SMF 2.0. Please visit the Simple Machines site for more information on how you can help test this new release.''\n	},\n	{\n		subject: ''SMF 2.0 RC4 and SMF 1.1.12 released'',\n		href: ''http://www.simplemachines.org/community/index.php?topic=407256.0'',\n		time: ''November 01, 2010, 12:14 PM'',\n		author: ''Norv'',\n		message: ''Simple Machines is pleased to announce the release of the fourth Release Candidate of SMF 2.0, along with an important security patch for SMF 1.1.x. Please visit the Simple Machines site for more information on how you can help test this new release.''\n	},\n	{\n		subject: ''SMF 2.0 RC3 Public released'',\n		href: ''http://www.simplemachines.org/community/index.php?topic=369616.0'',\n		time: ''March 08, 2010, 06:03 PM'',\n		author: ''Aaron'',\n		message: ''Simple Machines is pleased to announce the release of the third Release Candidate of SMF 2.0. Please visit the Simple Machines site for more information on how you can help test this new release.''\n	},\n	{\n		subject: ''SMF 1.1.11 released'',\n		href: ''http://www.simplemachines.org/community/index.php?topic=351341.0'',\n		time: ''December 01, 2009, 05:59 PM'',\n		author: ''SleePy'',\n		message: ''A patch has been released, addressing multiple vulnerabilites.  We urge all forum administrators to upgrade to 1.1.11. Simply visit the package manager to install the patch. Also for those still using the 1.0 branch, version 1.0.19 has been released.''\n	},\n	{\n		subject: ''SMF 2.0 RC2 Public released'',\n		href: ''http://www.simplemachines.org/community/index.php?topic=346813.0'',\n		time: ''November 08, 2009, 07:10 PM'',\n		author: ''Aaron'',\n		message: ''Simple Machines is very pleased to announce the release of the second Release Candidate of SMF 2.0. Please visit the Simple Machines site for more information on how you can help test this new release.''\n	},\n	{\n		subject: ''SMF 1.1.10 and 2.0 RC1.2 released'',\n		href: ''http://www.simplemachines.org/community/index.php?topic=324169.0'',\n		time: ''July 14, 2009, 07:05 PM'',\n		author: ''Compuart'',\n		message: ''A patch has been released, addressing a few security vulnerabilites.  We urge all forum administrators to upgrade to either 1.1.10 or 2.0 RC1.2, depending on the current version. Simply visit the package manager to install the patch.''\n	},\n	{\n		subject: ''SMF 1.1.9 and 2.0 RC1-1 released'',\n		href: ''http://www.simplemachines.org/community/index.php?topic=311899.0'',\n		time: ''May 20, 2009, 08:40 PM'',\n		author: ''Compuart'',\n		message: ''A patch has been released, addressing multiple security vulnerabilites.  We urge all forum administrators to upgrade to either 1.1.9 or 2.0 RC1-1, depending on the current version. Simply visit the package manager to install the patch.''\n	},\n	{\n		subject: ''SMF 2.0 RC1 Public Released'',\n		href: ''http://www.simplemachines.org/community/index.php?topic=290609.0'',\n		time: ''February 04, 2009, 11:10 PM'',\n		author: ''Compuart'',\n		message: ''Simple Machines are very pleased to announce the release of the first Release Candidate of SMF 2.0. Please visit the Simple Machines site for more information on how you can help test this new release.''\n	},\n	{\n		subject: ''SMF 1.1.8'',\n		href: ''http://www.simplemachines.org/community/index.php?topic=290608.0'',\n		time: ''February 04, 2009, 11:08 PM'',\n		author: ''Compuart'',\n		message: ''A patch has been released, addressing multiple security vulnerabilites.  We urge all forum administrators to upgrade to SMF 1.1.8&mdash;simply visit the package manager to install the patch.''\n	},\n	{\n		subject: ''SMF 1.1.7'',\n		href: ''http://www.simplemachines.org/community/index.php?topic=272861.0'',\n		time: ''November 07, 2008, 02:15 PM'',\n		author: ''Compuart'',\n		message: ''A patch has been released, addressing multiple security vulnerabilites.  We urge all forum administrators to upgrade to SMF 1.1.7&mdash;simply visit the package manager to install the patch.''\n	},\n	{\n		subject: ''SMF 1.1.6'',\n		href: ''http://www.simplemachines.org/community/index.php?topic=260145.0'',\n		time: ''September 07, 2008, 04:38 AM'',\n		author: ''Compuart'',\n		message: ''A patch has been released fixing a few bugs and addressing a security vulnerability.  We urge all forum administrators to upgrade to SMF 1.1.6&mdash;simply visit the package manager to install the patch.''\n	},\n	{\n		subject: ''SMF 1.1.5'',\n		href: ''http://www.simplemachines.org/community/index.php?topic=236816.0'',\n		time: ''April 20, 2008, 09:56 PM'',\n		author: ''Compuart'',\n		message: ''A patch has been released fixing a few bugs and addressing some security vulnerabilities.  We urge all forum administrators to upgrade to SMF 1.1.5&mdash;simply visit the package manager to install the patch.''\n	},\n	{\n		subject: ''SMF 2.0 Beta 3 Public Released'',\n		href: ''http://www.simplemachines.org/community/index.php?topic=228921.0'',\n		time: ''March 17, 2008, 03:20 PM'',\n		author: ''Grudge'',\n		message: ''Simple Machines are very pleased to announce the release of the first public beta of SMF 2.0. Please visit the Simple Machines site for more information on how you can help test this new release.''\n	},\n	{\n		subject: ''SMF 1.1.4'',\n		href: ''http://www.simplemachines.org/community/index.php?topic=196380.0'',\n		time: ''September 24, 2007, 09:07 PM'',\n		author: ''Compuart'',\n		message: ''A patch has been released to address some security vulnerabilities discovered in SMF 1.1.3.  We urge all forum administrators to upgrade to SMF 1.1.4&mdash;simply visit the package manager to install the patch.''\n	},\n	{\n		subject: ''SMF 2.0 Beta 1 Released to Charter Members'',\n		href: ''http://www.simplemachines.org/community/index.php?topic=190812.0'',\n		time: ''August 25, 2007, 07:29 AM'',\n		author: ''Grudge'',\n		message: ''Simple Machines are pleased to announce the first beta of SMF 2.0 has been released to our Charter Members. Visit the Simple Machines site for information on what\\''s new''\n	},\n	{\n		subject: ''SMF 1.1.3'',\n		href: ''http://www.simplemachines.org/community/index.php?topic=178757.0'',\n		time: ''June 24, 2007, 09:52 PM'',\n		author: ''Thantos'',\n		message: ''A number of small bugs and a potential security issue have been discovered in SMF 1.1.2.  We urge all forum administrators to upgrade to SMF 1.1.3&mdash;simply visit the package manager to install the patch.''\n	},\n	{\n		subject: ''SMF 1.1.2'',\n		href: ''http://www.simplemachines.org/community/index.php?topic=149553.0'',\n		time: ''February 11, 2007, 08:35 AM'',\n		author: ''Grudge'',\n		message: ''A patch has been released to address a number of outstanding bugs in SMF 1.1.1, including several around UTF-8 language support. In addition this patch offers improved image verification support and fixes a couple of low risk security related bugs. If you need any help upgrading please visit our forum.''\n	},\n	{\n		subject: ''SMF 1.1.1'',\n		href: ''http://www.simplemachines.org/community/index.php?topic=134971.0'',\n		time: ''December 17, 2006, 09:33 AM'',\n		author: ''Grudge'',\n		message: ''A number of small bugs and a potential security issue have been discovered in SMF 1.1. We urge all forum administrators to upgrade to SMF 1.1.1 - simply visit the package manager to install the patch.''\n	},\n	{\n		subject: ''SMF 1.1'',\n		href: ''http://www.simplemachines.org/community/index.php?topic=131008.0'',\n		time: ''December 02, 2006, 02:53 PM'',\n		author: ''Grudge'',\n		message: ''SMF 1.1 has gone gold!  If you are using an older version, please upgrade as soon as possible - many things have been changed and fixed, and mods and packages will expect you to be using 1.1.  If you need any help upgrading custom modifications to the new version, please feel free to ask us at our forum.''\n	},\n	{\n		subject: ''SMF 1.0.9 and patch for SMF 1.1 RC3'',\n		href: ''http://www.simplemachines.org/community/index.php?topic=123285.0'',\n		time: ''October 29, 2006, 05:57 AM'',\n		author: ''Compuart'',\n		message: ''A security issue has been discovered in both SMF 1.0 and SMF 1.1. Therefore a patch has been released that will upgrade SMF 1.0.8 to 1.0.9 and update SMF 1.1 RC3. You are encouraged to update immediately, using the package manager or otherwise.''\n	},\n	{\n		subject: ''SMF 1.1 RC3'',\n		href: ''http://www.simplemachines.org/community/index.php?topic=107112.0'',\n		time: ''August 21, 2006, 07:32 PM'',\n		author: ''Grudge'',\n		message: ''Release Candidate 3 of SMF 1.1 has been released! This is the final update to SMF 1.1 before it goes final - and includes UTF support as well as numerous bug fixes. Please read the announcement for details - and only upgrade if you are comfortable running software yet to go gold.''\n	},\n	{\n		subject: ''SMF 1.0.8'',\n		href: ''http://www.simplemachines.org/community/index.php?topic=107135.0'',\n		time: ''August 21, 2006, 07:32 PM'',\n		author: ''Compuart'',\n		message: ''A security issue has been reported in PHP causing a vulnerability in SMF. A patch has been released to upgrade Simple Machines Forum from 1.0.7 to 1.0.8. You are encouraged to update immediately, using the package manager or otherwise.''\n	},\n	{\n		subject: ''SMF 1.0.7 and patch for SMF 1.1 RC2'',\n		href: ''http://www.simplemachines.org/community/index.php?topic=78841.0'',\n		time: ''March 29, 2006, 05:32 PM'',\n		author: ''Compuart'',\n		message: ''A security issue has been discovered in both SMF 1.0 and SMF 1.1. Therefor a patch has been released that will upgrade SMF 1.0.6 to 1.0.7 and update SMF 1.1 RC2. You are encouraged to update immediately, using the package manager or otherwise.''\n	},\n	{\n		subject: ''SMF 1.0.6'',\n		href: ''http://www.simplemachines.org/community/index.php?topic=68110.0'',\n		time: ''January 28, 2006, 06:36 AM'',\n		author: ''Grudge'',\n		message: ''SMF 1.0.6 has been released.  This release addresses a potential security issue as well as a few minor bugs found since the 1.0.5 release. You are encouraged to update immediately, using the package manager or otherwise. This update does not apply to the 1.1 line!''\n	},\n	{\n		subject: ''Bug in Firefox 1.5'',\n		href: ''http://www.simplemachines.org/community/index.php?topic=66862.0'',\n		time: ''January 24, 2006, 08:09 AM'',\n		author: ''Grudge'',\n		message: ''There is a bug in Firefox 1.5 which can cause server issues for forums running SMF 1.1 (RC1/RC2). There is a simple fix which can be downloaded from the Simple Machines forum.''\n	},\n	{\n		subject: ''SMF 1.1 RC2'',\n		href: ''http://www.simplemachines.org/community/index.php?topic=62731.0'',\n		time: ''December 31, 2005, 02:58 PM'',\n		author: ''Grudge'',\n		message: ''The second (and final) Release Candidate of SMF 1.1 has been released! Please read the announcement for details - and please update only if you are certain you are comfortable with software that hasn\\''t gone gold yet. There is no package manager style update for this version.''\n	}\n];\nif (window.smfVersion < "SMF 1.1")\n{\n	window.smfUpdateNotice = ''SMF 1.1 Final has now been released. To take advantage of the improvements available in SMF 1.1 we recommend upgrading as soon as is practical.'';\n	window.smfUpdateCritical = false;\n}\n\nif (document.getElementById("yourVersion"))\n{\n	var yourVersion = getInnerHTML(document.getElementById("yourVersion"));\n	if (yourVersion == "SMF 1.0.4")\n		window.smfUpdatePackage = "http://custom.simplemachines.org/mods/downloads/smf_1-0-5_package.tar.gz";\n	else if (yourVersion == "SMF 1.0.5" || yourVersion == "SMF 1.0.6")\n	{\n		window.smfUpdatePackage = "http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.7_1.1-RC2-1.tar.gz";\n		window.smfUpdateCritical = false;\n	}\n	else if (yourVersion == "SMF 1.0.7")\n		window.smfUpdatePackage = "http://custom.simplemachines.org/mods/downloads/smf_1-0-8_package.tar.gz";\n	else if (yourVersion == "SMF 1.0.8")\n		window.smfUpdatePackage = "http://custom.simplemachines.org/mods/downloads/smf_patch_1-0-9_1-1-rc3-1.tar.gz";\n	else if (yourVersion == "SMF 1.0.9")\n		window.smfUpdatePackage = "http://custom.simplemachines.org/mods/downloads/smf_1-0-10_patch.tar.gz";\n	else if (yourVersion == "SMF 1.0.10" || yourVersion == "SMF 1.1.2")\n		window.smfUpdatePackage = "http://custom.simplemachines.org/mods/downloads/smf_patch_1.1.3_1.0.11.tar.gz";\n	else if (yourVersion == "SMF 1.0.11" || yourVersion == "SMF 1.1.3" || yourVersion == "SMF 2.0 beta 1")\n	{\n		window.smfUpdatePackage = "http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.12_1.1.4_2.0.b1.1.tar.gz";\n		window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == "SMF 1.0.12" || yourVersion == "SMF 1.1.4" || yourVersion == "SMF 2.0 beta 3 Public")\n		window.smfUpdatePackage = "http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.13_1.1.5_2.0-b3.1.zip";\n	else if (yourVersion == "SMF 1.0.13" || yourVersion == "SMF 1.1.5")\n	{\n		window.smfUpdatePackage = "http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.14_1.1.6.zip";\n		window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == "SMF 1.0.14" || yourVersion == "SMF 1.1.6")\n	{\n		window.smfUpdatePackage = "http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.15_1.1.7.zip";\n		window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == "SMF 1.0.15" || yourVersion == "SMF 1.1.7")\n	{\n		window.smfUpdatePackage = "http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.16_1.1.8.zip";\n		window.smfUpdateCritical = false;\n	}\n	else if (yourVersion == "SMF 1.0.16" || yourVersion == "SMF 1.1.8" || yourVersion == "SMF 2.0 RC1")\n		window.smfUpdatePackage = "http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.17_1.1.9_2.0-RC1-1.zip";\n	else if (yourVersion == "SMF 1.0.17" || yourVersion == "SMF 1.1.9" || yourVersion == "SMF 2.0 RC1-1")\n		window.smfUpdatePackage = "http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.18_1.1.10-2.0-RC1.2.zip";\n	else if (yourVersion == "SMF 1.0.18" || yourVersion == "SMF 1.1.10")\n	{\n		window.smfUpdatePackage = "http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.19_1.1.11.zip";\n		window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == "SMF 1.0.19" || yourVersion == "SMF 1.1.11")\n	{\n		window.smfUpdatePackage = "http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.20_1.1.12.tar.gz";\n	}\n	else if (yourVersion == "SMF 1.0.20" || yourVersion == "SMF 1.1.12")\n	{\n		window.smfUpdatePackage = "http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.21_1.1.13.tar.gz";\n		window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == "SMF 1.1.14")\n	{\n		window.smfUpdatePackage = "http://custom.simplemachines.org/mods/downloads/smf_patch_1.1.15.tar.gz";\n		window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == "SMF 2.0")\n	{\n		window.smfUpdatePackage = "http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.1.tar.gz";\n		window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == "SMF 1.1.15" || yourVersion == "SMF 1.0.21")\n	{\n		window.smfUpdatePackage = "http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.22_1.1.16.tar.gz";\n		window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == "SMF 2.0.1")\n	{\n		window.smfUpdatePackage = "http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.2.tar.gz";\n		window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == "SMF 1.1.16" || yourVersion == "SMF 1.0.22")\n	{\n		window.smfUpdatePackage = "http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.23_1.1.17.tar.gz";\n		window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == "SMF 1.1.17")\n	{\n		window.smfUpdatePackage = "http://custom.simplemachines.org/mods/downloads/smf_patch_1.1.18.tar.gz";\n		window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == "SMF 2.0.2")\n	{\n		window.smfUpdatePackage = "http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.3.tar.gz";\n		window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == "SMF 2.0.3")\n	{\n		window.smfUpdatePackage = "http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.4.tar.gz";\n		window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == "SMF 2.0.4")\n	{\n		window.smfUpdatePackage = "http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.5.tar.gz";\n		window.smfUpdateCritical = true;\n	}\n	else if (yourVersion == "SMF 1.1")\n		window.smfUpdatePackage = "http://custom.simplemachines.org/mods/downloads/smf_1-1-1_patch.tar.gz";\n	else if (yourVersion == "SMF 1.1.1")\n		window.smfUpdatePackage = "http://custom.simplemachines.org/mods/downloads/smf_1-1-2_patch.tar.gz";\n}\n\nif (document.getElementById(''credits''))\n	setInnerHTML(document.getElementById(''credits''), getInnerHTML(document.getElementById(''credits'')).replace(/anyone we may have missed/, ''<span title="And you thought you had escaped the credits, hadn\\''t you, Zef Hemel?">anyone we may have missed</span>''));\n', 'text/javascript');
INSERT INTO `smf_ikilladmin_info_files` (`id_file`, `filename`, `path`, `parameters`, `data`, `filetype`) VALUES
(4, 'latest-packages.js', '/smf/', 'language=%1$s&version=%3$s', 'var actionurl = ''?action=admin;area=packages;sa=download;get;package='';if (typeof(window.smfForum_sessionvar) == "undefined")\n	window.smfForum_sessionvar = ''sesc'';\n\nif (typeof(window.smfVersion) != "undefined" && window.smfVersion == "SMF 1.0")\n	window.smfLatestPackages = ''As was inevitable, a few small mistakes have been found in 1.0.  You can install <a href="'' + window.smfForum_scripturl + actionurl + ''http://custom.simplemachines.org/mods/downloads/smf_1-0-1_update.tar.gz;'' + window.smfForum_sessionvar + ''='' + window.smfForum_sessionid + ''">this patch (click here to install)</a> to easily update yourself to the latest version.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href="http://www.simplemachines.org/community/index.php">forum</a> if you need more help.'';\nelse if (typeof(window.smfVersion) != "undefined" && window.smfVersion == "SMF 1.0.1")\n	window.smfLatestPackages = ''A few problems have been found in the package manager\\''s modification code, among a few other issues.  You can install <a href="'' + window.smfForum_scripturl + actionurl + ''http://custom.simplemachines.org/mods/downloads/smf_1-0-2_update.tar.gz;'' + window.smfForum_sessionvar + ''='' + window.smfForum_sessionid + ''">this patch (click here to install)</a> to easily update yourself to the latest version.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href="http://www.simplemachines.org/community/index.php">forum</a> if you need more help.'';\nelse if (typeof(window.smfVersion) != "undefined" && window.smfVersion == "SMF 1.0.2")\n	window.smfLatestPackages = ''A problem has been found in the system that sends critical database messages.  You can install <a href="'' + window.smfForum_scripturl + actionurl + ''http://custom.simplemachines.org/mods/downloads/smf_1-0-3_package.tar.gz;'' + window.smfForum_sessionvar + ''='' + window.smfForum_sessionid + ''">this patch (click here to install)</a> to easily update yourself to the latest version.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href="http://www.simplemachines.org/community/index.php">forum</a> if you need more help.'';\nelse if (typeof(window.smfVersion) != "undefined" && window.smfVersion == "SMF 1.0.3")\n	window.smfLatestPackages = ''A few bugs have been fixed since SMF 1.0.3, and a problem with parsing nested BBC tags addressed. You can install <a href="'' + window.smfForum_scripturl + actionurl + ''http://custom.simplemachines.org/mods/downloads/smf_1-0-4_package.tar.gz;'' + window.smfForum_sessionvar + ''='' + window.smfForum_sessionid + ''">this patch (click here to install)</a> to easily update yourself to the latest version.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled. Please post on the <a href="http://www.simplemachines.org/community/index.php">forum</a> if you need more help.'';\nelse if (typeof(window.smfVersion) != "undefined" && window.smfVersion == "SMF 1.0.4")\n	window.smfLatestPackages = ''A security issue has been identified in SMF 1.0.4.  You can install <a href="'' + window.smfForum_scripturl + actionurl + ''http://custom.simplemachines.org/mods/downloads/smf_1-0-5_package.tar.gz;'' + window.smfForum_sessionvar + ''='' + window.smfForum_sessionid + ''">this patch (click here to install)</a> to easily update yourself to the latest version.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href="http://www.simplemachines.org/community/index.php">forum</a> if you need more help.'';\nelse if (typeof(window.smfVersion) != "undefined" && window.smfVersion == "SMF 1.0.5")\n	window.smfLatestPackages = ''A bbc security issue has been identified in SMF 1.0.5.  You can install <a href="'' + window.smfForum_scripturl + actionurl + ''http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.7_1.1-RC2-1.tar.gz;'' + window.smfForum_sessionvar + ''='' + window.smfForum_sessionid + ''">this patch (click here to install)</a> to easily update yourself to the latest version.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href="http://www.simplemachines.org/community/index.php">forum</a> if you need more help.'';\nelse if (typeof(window.smfVersion) != "undefined" && window.smfVersion == "SMF 1.0.6")\n	window.smfLatestPackages = ''A security issue has been identified in SMF 1.0.6.  You can install <a href="'' + window.smfForum_scripturl + actionurl + ''http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.7_1.1-RC2-1.tar.gz;'' + window.smfForum_sessionvar + ''='' + window.smfForum_sessionid + ''">this patch (click here to install)</a> to easily update yourself to the latest version.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href="http://www.simplemachines.org/community/index.php">forum</a> if you need more help.'';\nelse if (typeof(window.smfVersion) != "undefined" && window.smfVersion == "SMF 1.0.7")\n	window.smfLatestPackages = ''A security issue has been identified in SMF 1.0.7.  You can install <a href="'' + window.smfForum_scripturl + actionurl + ''http://custom.simplemachines.org/mods/downloads/smf_1-0-8_package.tar.gz;'' + window.smfForum_sessionvar + ''='' + window.smfForum_sessionid + ''">this patch (click here to install)</a> to easily update yourself to the latest version.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href="http://www.simplemachines.org/community/index.php">forum</a> if you need more help.'';\n\nelse if (typeof(window.smfVersion) != "undefined" && window.smfVersion == "SMF 1.0.8")\n	window.smfLatestPackages = ''A security issue has been identified in SMF 1.0.8.  You can install <a href="'' + window.smfForum_scripturl + actionurl + ''http://custom.simplemachines.org/mods/downloads/smf_patch_1-0-9_1-1-rc3-1.tar.gz;'' + window.smfForum_sessionvar + ''='' + window.smfForum_sessionid + ''">this patch (click here to install)</a> to easily update yourself to the latest version.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href="http://www.simplemachines.org/community/index.php">forum</a> if you need more help.'';\nelse if (typeof(window.smfVersion) != "undefined" && window.smfVersion == "SMF 1.0.9")\n	window.smfLatestPackages = ''A security issue has been identified in SMF 1.0.9.  You can install <a href="'' + window.smfForum_scripturl + actionurl + ''http://custom.simplemachines.org/mods/downloads/smf_1-0-10_patch.tar.gz;'' + window.smfForum_sessionvar + ''='' + window.smfForum_sessionid + ''">this patch (click here to install)</a> to easily update yourself to the latest version.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href="http://www.simplemachines.org/community/index.php">forum</a> if you need more help.'';\nelse if (typeof(window.smfVersion) != "undefined" && window.smfVersion == "SMF 1.0.10")\n	window.smfLatestPackages = ''A security issue has been identified in SMF 1.0.10.  You can install <a href="'' + window.smfForum_scripturl + actionurl + ''http://custom.simplemachines.org/mods/downloads/smf_patch_1.1.3_1.0.11.tar.gz;'' + window.smfForum_sessionvar + ''='' + window.smfForum_sessionid + ''">this patch (click here to install)</a> to easily update yourself to the latest version.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href="http://www.simplemachines.org/community/index.php">forum</a> if you need more help.'';\nelse if (typeof(window.smfVersion) != "undefined" && window.smfVersion == "SMF 1.0.11")\n	window.smfLatestPackages = ''A few security vulnerabilities have been identified in SMF 1.0.11 as well as a few small bugs. You can install <a href="'' + window.smfForum_scripturl + actionurl + ''http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.12_1.1.4_2.0.b1.1.tar.gz;'' + window.smfForum_sessionvar + ''='' + window.smfForum_sessionid + ''">this patch (click here to install)</a> to update your version of SMF to 1.0.12.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href="http://www.simplemachines.org/community/index.php">forum</a> if you need more help.'';\nelse if (typeof(window.smfVersion) != "undefined" && window.smfVersion == "SMF 1.0.12")\n	window.smfLatestPackages = ''A few security vulnerabilities have been identified in SMF 1.0.12 as well as a few small bugs. You can install <a href="'' + window.smfForum_scripturl + actionurl + ''http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.13_1.1.5_2.0-b3.1.zip;'' + window.smfForum_sessionvar + ''='' + window.smfForum_sessionid + ''">this patch (click here to install)</a> to update your version of SMF to 1.0.12.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href="http://www.simplemachines.org/community/index.php">forum</a> if you need more help.'';\nelse if (typeof(window.smfVersion) != "undefined" && window.smfVersion == "SMF 1.0.13")\n	window.smfLatestPackages = ''A few security vulnerabilities have been identified in SMF 1.0.13 as well as a few small bugs. You can install <a href="'' + window.smfForum_scripturl + actionurl + ''http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.14_1.1.6.zip;'' + window.smfForum_sessionvar + ''='' + window.smfForum_sessionid + ''">this patch (click here to install)</a> to update your version of SMF to 1.0.14.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href="http://www.simplemachines.org/community/index.php">forum</a> if you need more help.'';\nelse if (typeof(window.smfVersion) != "undefined" && window.smfVersion == "SMF 1.0.14")\n	window.smfLatestPackages = ''A few security vulnerabilities have been identified in SMF 1.0.14. You can install <a href="'' + window.smfForum_scripturl + actionurl + ''http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.15_1.1.7.zip;'' + window.smfForum_sessionvar + ''='' + window.smfForum_sessionid + ''">this patch (click here to install)</a> to update your version of SMF to 1.0.15.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href="http://www.simplemachines.org/community/index.php">forum</a> if you need more help.'';\nelse if (typeof(window.smfVersion) != "undefined" && window.smfVersion == "SMF 1.0.15")\n	window.smfLatestPackages = ''A few security vulnerabilities have been identified in SMF 1.0.15. You can install <a href="'' + window.smfForum_scripturl + actionurl + ''http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.16_1.1.8.zip;'' + window.smfForum_sessionvar + ''='' + window.smfForum_sessionid + ''">this patch (click here to install)</a> to update your version of SMF to 1.0.16.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href="http://www.simplemachines.org/community/index.php">forum</a> if you need more help.'';\nelse if (typeof(window.smfVersion) != "undefined" && window.smfVersion == "SMF 1.0.16")\n	window.smfLatestPackages = ''A few security vulnerabilities have been identified in SMF 1.0.16. You can install <a href="'' + window.smfForum_scripturl + actionurl + ''http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.17_1.1.9_2.0-RC1-1.zip;'' + window.smfForum_sessionvar + ''='' + window.smfForum_sessionid + ''">this patch (click here to install)</a> to update your version of SMF to 1.0.17.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href="http://www.simplemachines.org/community/index.php">forum</a> if you need more help.'';\nelse if (typeof(window.smfVersion) != "undefined" && window.smfVersion == "SMF 1.0.17")\n	window.smfLatestPackages = ''A few security vulnerabilities have been identified in SMF 1.0.17. You can install <a href="'' + window.smfForum_scripturl + actionurl + ''http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.18_1.1.10-2.0-RC1.2;'' + window.smfForum_sessionvar + ''='' + window.smfForum_sessionid + ''">this patch (click here to install)</a> to update your version of SMF to 1.0.18.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href="http://www.simplemachines.org/community/index.php">forum</a> if you need more help.'';\nelse if (typeof(window.smfVersion) != "undefined" && window.smfVersion == "SMF 1.0.18")\n	window.smfLatestPackages = ''A few security vulnerabilities have been identified in SMF 1.0.18. You can install <a href="'' + window.smfForum_scripturl + actionurl + ''http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.19_1.1.11.zip;'' + window.smfForum_sessionvar + ''='' + window.smfForum_sessionid + ''">this patch (click here to install)</a> to update your version of SMF to 1.0.19.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href="http://www.simplemachines.org/community/index.php">forum</a> if you need more help.'';\nelse if (typeof(window.smfVersion) != "undefined" && window.smfVersion == "SMF 1.0.19")\n	window.smfLatestPackages = ''A few security vulnerabilities have been identified in SMF 1.0.19. You can install <a href="'' + window.smfForum_scripturl + actionurl + ''http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.20_1.1.12.tar.gz;'' + window.smfForum_sessionvar + ''='' + window.smfForum_sessionid + ''">this patch (click here to install)</a> to update your version of SMF to 1.0.20.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href="http://www.simplemachines.org/community/index.php">forum</a> if you need more help.'';\nelse if (typeof(window.smfVersion) != "undefined" && window.smfVersion == "SMF 1.0.20")\n	window.smfLatestPackages = ''A few security vulnerabilities have been identified in SMF 1.0.20. You can install <a href="'' + window.smfForum_scripturl + actionurl + ''http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.21_1.1.13.tar.gz;'' + window.smfForum_sessionvar + ''='' + window.smfForum_sessionid + ''">this patch (click here to install)</a> to update your version of SMF to 1.0.21.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href="http://www.simplemachines.org/community/index.php">forum</a> if you need more help.'';\nelse if (typeof(window.smfVersion) != "undefined" && window.smfVersion == "SMF 1.0.21")\n	window.smfLatestPackages = ''A few security vulnerabilities have been identified in SMF 1.0.21. You can install <a href="'' + window.smfForum_scripturl + actionurl + ''http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.22_1.1.16.tar.gz;'' + window.smfForum_sessionvar + ''='' + window.smfForum_sessionid + ''">this patch (click here to install)</a> to update your version of SMF to 1.0.22.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href="http://www.simplemachines.org/community/index.php">forum</a> if you need more help.'';\nelse if (typeof(window.smfVersion) != "undefined" && window.smfVersion == "SMF 1.0.22")\n	window.smfLatestPackages = ''A security vulnerability has been identified in SMF 1.0.22. You can install <a href="'' + window.smfForum_scripturl + actionurl + ''http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.23_1.1.17.tar.gz;'' + window.smfForum_sessionvar + ''='' + window.smfForum_sessionid + ''">this patch (click here to install)</a> to update your version of SMF to 1.0.23.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href="http://www.simplemachines.org/community/index.php">forum</a> if you need more help.'';\nelse if (typeof(window.smfVersion) != "undefined" && window.smfVersion == "SMF 1.0.23")\n	window.smfLatestPackages = ''SMF 1.0 was released to the world in December 2004 and has been supported for more than eight years. Starting from the 1st of January 2013 it will not receive security updates any more. Anyone still using a 1.0 release should investigate migrating to the lates SMF version. Please post on the <a href="http://www.simplemachines.org/community/index.php">forum</a> if you need more help.'';\nelse if (typeof(window.smfVersion) != "undefined" && window.smfVersion == "SMF 1.1 Beta 2" && !in_array("smf:smf_1-1-beta2-fix1", window.smfInstalledPackages))\n	window.smfLatestPackages = ''A few bugs have been fixed since SMF 1.1 Beta 2, and a problem with parsing nested BBC tags addressed.  You can install <a href="'' + window.smfForum_scripturl + actionurl + ''http://custom.simplemachines.org/mods/downloads/smf_1-1-beta2-fix1.tar.gz;'' + window.smfForum_sessionvar + ''='' + window.smfForum_sessionid + ''">this patch (click here to install)</a> to easily fix the problem.<br /><br />Please post on the <a href="http://www.simplemachines.org/community/index.php">forum</a> or in the helpdesk if you need more help.'';\nelse if (typeof(window.smfVersion) != "undefined" && window.smfVersion == "SMF 1.1 RC2" && !in_array("smf:smf-1.0.7", window.smfInstalledPackages))\n	window.smfLatestPackages = ''A security issue has been identified in SMF 1.1 RC2. You can install <a href="'' + window.smfForum_scripturl + actionurl + ''http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.7_1.1-RC2-1.tar.gz;'' + window.smfForum_sessionvar + ''='' + window.smfForum_sessionid + ''">this patch (click here to install)</a> to easily update yourself to the latest version.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href="http://www.simplemachines.org/community/index.php">forum</a> if you need more help.'';\nelse if (typeof(window.smfVersion) != "undefined" && window.smfVersion == "SMF 1.1 RC2" && !in_array("smf:smf_1-1-rc2-2", window.smfInstalledPackages))\n	window.smfLatestPackages = ''A bug in PHP causes a vulnerability in SMF 1.1 RC2-1. You can install <a href="'' + window.smfForum_scripturl + actionurl + ''http://custom.simplemachines.org/mods/downloads/smf_1-1-rc2-2_package.tar.gz;'' + window.smfForum_sessionvar + ''='' + window.smfForum_sessionid + ''">this patch (click here to install)</a> to patch your version of 1.1 RC2 to 1.1 RC2-2.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href="http://www.simplemachines.org/community/index.php">forum</a> if you need more help.'';\nelse if (typeof(window.smfVersion) != "undefined" && window.smfVersion == "SMF 1.1")\n	window.smfLatestPackages = ''A number of small bugs and a security issue have been identified in SMF 1.1 Final. You can install <a href="'' + window.smfForum_scripturl + actionurl + ''http://custom.simplemachines.org/mods/downloads/smf_1-1-1_patch.tar.gz;'' + window.smfForum_sessionvar + ''='' + window.smfForum_sessionid + ''">this patch (click here to install)</a> to update your version of SMF to 1.1.1.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href="http://www.simplemachines.org/community/index.php">forum</a> if you need more help.'';\nelse if (typeof(window.smfVersion) != "undefined" && window.smfVersion == "SMF 1.1.1")\n	window.smfLatestPackages = ''A number of bugs and a couple of low risk security issues have been identified in SMF 1.1.1 - and some improvements have been made to the visual verification images on registration. You can install <a href="'' + window.smfForum_scripturl + actionurl + ''http://custom.simplemachines.org/mods/downloads/smf_1-1-2_patch.tar.gz;'' + window.smfForum_sessionvar + ''='' + window.smfForum_sessionid + ''">this patch (click here to install)</a> to update your version of SMF to 1.1.2.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href="http://www.simplemachines.org/community/index.php">forum</a> if you need more help.'';\nelse if (typeof(window.smfVersion) != "undefined" && window.smfVersion == "SMF 1.1.2")\n	window.smfLatestPackages = ''A number of bugs and a couple of low risk security issues have been identified in SMF 1.1.2 - and some improvements have been made to the package manager. You can install <a href="'' + window.smfForum_scripturl + actionurl + ''http://custom.simplemachines.org/mods/downloads/smf_patch_1.1.3_1.0.11.tar.gz;'' + window.smfForum_sessionvar + ''='' + window.smfForum_sessionid + ''">this patch (click here to install)</a> to update your version of SMF to 1.1.3.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href="http://www.simplemachines.org/community/index.php">forum</a> if you need more help.'';\nelse if (typeof(window.smfVersion) != "undefined" && window.smfVersion == "SMF 1.1.3")\n	window.smfLatestPackages = ''A few security vulnerabilities have been identified in SMF 1.1.3 as well as a few small bugs. You can install <a href="'' + window.smfForum_scripturl + actionurl + ''http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.12_1.1.4_2.0.b1.1.tar.gz;'' + window.smfForum_sessionvar + ''='' + window.smfForum_sessionid + ''">this patch (click here to install)</a> to update your version of SMF to 1.1.4.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href="http://www.simplemachines.org/community/index.php">forum</a> if you need more help.'';\nelse if (typeof(window.smfVersion) != "undefined" && window.smfVersion == "SMF 1.1.4")\n	window.smfLatestPackages = ''A few security vulnerabilities have been identified in SMF 1.1.4 as well as a few small bugs. You can install <a href="'' + window.smfForum_scripturl + actionurl + ''http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.13_1.1.5_2.0-b3.1.zip;'' + window.smfForum_sessionvar + ''='' + window.smfForum_sessionid + ''">this patch (click here to install)</a> to update your version of SMF to 1.1.5.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href="http://www.simplemachines.org/community/index.php">forum</a> if you need more help.'';\nelse if (typeof(window.smfVersion) != "undefined" && window.smfVersion == "SMF 1.1.5")\n	window.smfLatestPackages = ''A few security vulnerabilities have been identified in SMF 1.1.5 as well as a few small bugs. You can install <a href="'' + window.smfForum_scripturl + actionurl + ''http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.14_1.1.6.zip;'' + window.smfForum_sessionvar + ''='' + window.smfForum_sessionid + ''">this patch (click here to install)</a> to update your version of SMF to 1.1.6.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href="http://www.simplemachines.org/community/index.php">forum</a> if you need more help.'';\nelse if (typeof(window.smfVersion) != "undefined" && window.smfVersion == "SMF 1.1.6")\n	window.smfLatestPackages = ''A few security vulnerabilities have been identified in SMF 1.1.6. You can install <a href="'' + window.smfForum_scripturl + actionurl + ''http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.15_1.1.7.zip;'' + window.smfForum_sessionvar + ''='' + window.smfForum_sessionid + ''">this patch (click here to install)</a> to update your version of SMF to 1.1.7.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href="http://www.simplemachines.org/community/index.php">forum</a> if you need more help.'';\nelse if (typeof(window.smfVersion) != "undefined" && window.smfVersion == "SMF 1.1.7")\n	window.smfLatestPackages = ''A few security vulnerabilities have been identified in SMF 1.1.7. You can install <a href="'' + window.smfForum_scripturl + actionurl + ''http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.16_1.1.8.zip;'' + window.smfForum_sessionvar + ''='' + window.smfForum_sessionid + ''">this patch (click here to install)</a> to update your version of SMF to 1.1.8.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href="http://www.simplemachines.org/community/index.php">forum</a> if you need more help.'';\nelse if (typeof(window.smfVersion) != "undefined" && window.smfVersion == "SMF 1.1.8")\n	window.smfLatestPackages = ''A few security vulnerabilities have been identified in SMF 1.1.8. You can install <a href="'' + window.smfForum_scripturl + actionurl + ''http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.17_1.1.9_2.0-RC1-1.zip;'' + window.smfForum_sessionvar + ''='' + window.smfForum_sessionid + ''">this patch (click here to install)</a> to update your version of SMF to 1.1.9.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href="http://www.simplemachines.org/community/index.php">forum</a> if you need more help.'';\nelse if (typeof(window.smfVersion) != "undefined" && window.smfVersion == "SMF 1.1.9")\n	window.smfLatestPackages = ''A few security vulnerabilities have been identified in SMF 1.1.9. You can install <a href="'' + window.smfForum_scripturl + actionurl + ''http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.18_1.1.10-2.0-RC1.2.zip;'' + window.smfForum_sessionvar + ''='' + window.smfForum_sessionid + ''">this patch (click here to install)</a> to update your version of SMF to 1.1.10.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href="http://www.simplemachines.org/community/index.php">forum</a> if you need more help.'';\nelse if (typeof(window.smfVersion) != "undefined" && window.smfVersion == "SMF 1.1.10")\n	window.smfLatestPackages = ''A few security vulnerabilities have been identified in SMF 1.1.10. You can install <a href="'' + window.smfForum_scripturl + actionurl + ''http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.19_1.1.11.zip;'' + window.smfForum_sessionvar + ''='' + window.smfForum_sessionid + ''">this patch (click here to install)</a> to update your version of SMF to 1.1.11.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href="http://www.simplemachines.org/community/index.php">forum</a> if you need more help.'';\nelse if (typeof(window.smfVersion) != "undefined" && window.smfVersion == "SMF 1.1.11")\n	window.smfLatestPackages = ''A few security vulnerabilities have been identified in SMF 1.1.11. You can install <a href="'' + window.smfForum_scripturl + actionurl + ''http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.20_1.1.12.tar.gz;'' + window.smfForum_sessionvar + ''='' + window.smfForum_sessionid + ''">this patch (click here to install)</a> to update your version of SMF to 1.1.12.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href="http://www.simplemachines.org/community/index.php">forum</a> if you need more help.'';\nelse if (typeof(window.smfVersion) != "undefined" && window.smfVersion == "SMF 1.1.12")\n	window.smfLatestPackages = ''A few security vulnerabilities have been identified in SMF 1.1.12. You can install <a href="'' + window.smfForum_scripturl + actionurl + ''http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.21_1.1.13.tar.gz;'' + window.smfForum_sessionvar + ''='' + window.smfForum_sessionid + ''">this patch (click here to install)</a> to update your version of SMF to 1.1.13.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href="http://www.simplemachines.org/community/index.php">forum</a> if you need more help.'';\nelse if (typeof(window.smfVersion) != "undefined" && window.smfVersion == "SMF 1.1.13")\n	window.smfLatestPackages = ''A security vulnerability have been identified in SMF 1.1.13. You can install <a href="'' + window.smfForum_scripturl + actionurl + ''http://custom.simplemachines.org/mods/downloads/smf_patch_1.1.14.tar.gz;'' + window.smfForum_sessionvar + ''='' + window.smfForum_sessionid + ''">this patch (click here to install)</a> to update your version of SMF to 1.1.14.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled if you use the full package.  Please post on the <a href="http://www.simplemachines.org/community/index.php">forum</a> if you need more help.'';\nelse if (typeof(window.smfVersion) != "undefined" && window.smfVersion == "SMF 1.1.14")\n	window.smfLatestPackages = ''A security vulnerability have been identified in SMF 1.1.14. You can install <a href="'' + window.smfForum_scripturl + actionurl + ''http://custom.simplemachines.org/mods/downloads/smf_patch_1.1.15.tar.gz;'' + window.smfForum_sessionvar + ''='' + window.smfForum_sessionid + ''">this patch (click here to install)</a> to update your version of SMF to 1.1.15.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled if you use the full package.  Please post on the <a href="http://www.simplemachines.org/community/index.php">forum</a> if you need more help.'';\nelse if (typeof(window.smfVersion) != "undefined" && window.smfVersion == "SMF 1.1.15")\n	window.smfLatestPackages = ''A couple of security vulnerabilities have been identified in SMF 1.1.15. You can install <a href="'' + window.smfForum_scripturl + actionurl + ''http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.22_1.1.16.tar.gz;'' + window.smfForum_sessionvar + ''='' + window.smfForum_sessionid + ''">this patch (click here to install)</a> to update your version of SMF to 1.1.16.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled if you use the full package.  Please post on the <a href="http://www.simplemachines.org/community/index.php">forum</a> if you need more help.'';\nelse if (typeof(window.smfVersion) != "undefined" && window.smfVersion == "SMF 1.1.16")\n	window.smfLatestPackages = ''A security vulnerability has been identified in SMF 1.1.16. You can install <a href="'' + window.smfForum_scripturl + actionurl + ''http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.23_1.1.17.tar.gz;'' + window.smfForum_sessionvar + ''='' + window.smfForum_sessionid + ''">this patch (click here to install)</a> to update your version of SMF to 1.1.17.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled if you use the full package.  Please post on the <a href="http://www.simplemachines.org/community/index.php">forum</a> if you need more help.'';\nelse if (typeof(window.smfVersion) != "undefined" && window.smfVersion == "SMF 1.1.17")\n	window.smfLatestPackages = ''A few security vulnerabilities have been identified in SMF 1.1.17. You can install <a href="'' + window.smfForum_scripturl + actionurl + ''http://custom.simplemachines.org/mods/downloads/smf_patch_1.1.18.tar.gz;'' + window.smfForum_sessionvar + ''='' + window.smfForum_sessionid + ''">this patch (click here to install)</a> to update your version of SMF to 1.1.18.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled if you use the full package.  Please post on the <a href="http://www.simplemachines.org/community/index.php">forum</a> if you need more help.'';\nelse if (typeof(window.smfVersion) != "undefined" && window.smfVersion == "SMF 2.0 beta 1")\n	window.smfLatestPackages = ''A few security vulnerabilities have been identified in SMF 2.0 beta 1 as well as a few small bugs. You can install <a href="'' + window.smfForum_scripturl + actionurl + ''http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.12_1.1.4_2.0.b1.1.tar.gz;'' + window.smfForum_sessionvar + ''='' + window.smfForum_sessionid + ''">this patch (click here to install)</a> to update your version of SMF to 2.0 beta 1.1.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href="http://www.simplemachines.org/community/index.php">forum</a> if you need more help.'';\nelse if (typeof(window.smfVersion) != "undefined" && window.smfVersion == "SMF 2.0 Beta 3 Public")\n	window.smfLatestPackages = ''A few security vulnerabilities have been identified in SMF 2.0 beta 3 as well as a few small bugs. You can install <a href="'' + window.smfForum_scripturl + actionurl + ''http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.13_1.1.5_2.0-b3.1.zip;'' + window.smfForum_sessionvar + ''='' + window.smfForum_sessionid + ''">this patch (click here to install)</a> to update your version of SMF to 2.0 beta 3.1.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href="http://www.simplemachines.org/community/index.php">forum</a> if you need more help.'';\nelse if (typeof(window.smfVersion) != "undefined" && window.smfVersion == "SMF 2.0 RC1")\n	window.smfLatestPackages = ''A few security vulnerabilities have been identified in SMF 2.0 RC1. You can install <a href="'' + window.smfForum_scripturl + actionurl + ''http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.17_1.1.9_2.0-RC1-1.zip;'' + window.smfForum_sessionvar + ''='' + window.smfForum_sessionid + ''">this patch (click here to install)</a> to update your version of SMF to 2.0-RC1-1.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href="http://www.simplemachines.org/community/index.php">forum</a> if you need more help.'';\nelse if (typeof(window.smfVersion) != "undefined" && window.smfVersion == "SMF 2.0 RC1-1")\n	window.smfLatestPackages = ''A few security vulnerabilities have been identified in SMF 2.0 RC1-1. You can install <a href="'' + window.smfForum_scripturl + actionurl + ''http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.18_1.1.10-2.0-RC1.2.zip;'' + window.smfForum_sessionvar + ''='' + window.smfForum_sessionid + ''">this patch (click here to install)</a> to update your version of SMF to 2.0-RC1.2 .<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href="http://www.simplemachines.org/community/index.php">forum</a> if you need more help.'';\nelse if (typeof(window.smfVersion) != "undefined" && window.smfVersion == "SMF 2.0 RC4"  && typeof(window.smfRC4patch) == "undefined")\n	window.smfLatestPackages = ''A few security vulnerabilities have been identified in SMF 2.0 RC4. You can install <a href="'' + window.smfForum_scripturl + actionurl + ''http://custom.simplemachines.org/mods/downloads/smf_patch_2.0-RC4_security.zip;'' + window.smfForum_sessionvar + ''='' + window.smfForum_sessionid + ''">this patch (click here to install)</a> to install the security patch for SMF 2.0 RC4.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href="http://www.simplemachines.org/community/index.php">forum</a> if you need more help.'';\nelse if (typeof(window.smfVersion) != "undefined" && window.smfVersion == "SMF 2.0")\n	window.smfLatestPackages = ''A few security vulnerabilities have been identified in SMF 2.0. You can install <a href="'' + window.smfForum_scripturl + actionurl + ''http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.1.tar.gz;'' + window.smfForum_sessionvar + ''='' + window.smfForum_sessionid + ''">this patch (click here to install)</a> to update your forum.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href="http://www.simplemachines.org/community/index.php">forum</a> if you need more help.'';\nelse if (typeof(window.smfVersion) != "undefined" && window.smfVersion == "SMF 2.0.1")\n	window.smfLatestPackages = ''A few security vulnerabilities and bugs in SMF 2.0.1 have been fixed. You can install <a href="'' + window.smfForum_scripturl + actionurl + ''http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.2.tar.gz;'' + window.smfForum_sessionvar + ''='' + window.smfForum_sessionid + ''">this patch (click here to install)</a> to fix your forum.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href="http://www.simplemachines.org/community/index.php">forum</a> if you need more help.'';\nelse if (typeof(window.smfVersion) != "undefined" && window.smfVersion == "SMF 2.0.2")\n	window.smfLatestPackages = ''A security vulnerability and few bugs in SMF 2.0.2 have been fixed. You can install <a href="'' + window.smfForum_scripturl + actionurl + ''http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.3.tar.gz;'' + window.smfForum_sessionvar + ''='' + window.smfForum_sessionid + ''">this patch (click here to install)</a> to fix your forum.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href="http://www.simplemachines.org/community/index.php">forum</a> if you need more help.'';\nelse if (typeof(window.smfVersion) != "undefined" && window.smfVersion == "SMF 2.0.3")\n	window.smfLatestPackages = ''A few security vulnerabilities in SMF 2.0.3 have been fixed. You can install <a href="'' + window.smfForum_scripturl + actionurl + ''http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.4.tar.gz;'' + window.smfForum_sessionvar + ''='' + window.smfForum_sessionid + ''">this patch (click here to install)</a> to fix your forum.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href="http://www.simplemachines.org/community/index.php">forum</a> if you need more help.'';\nelse if (typeof(window.smfVersion) != "undefined" && window.smfVersion == "SMF 2.0.4")\n	window.smfLatestPackages = ''A few security vulnerabilities in SMF 2.0.4 have been fixed. You can install <a href="'' + window.smfForum_scripturl + actionurl + ''http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.5.tar.gz;'' + window.smfForum_sessionvar + ''='' + window.smfForum_sessionid + ''">this patch (click here to install)</a> to fix your forum.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href="http://www.simplemachines.org/community/index.php">forum</a> if you need more help.'';\nelse if (typeof(window.smfVersion) == "undefined")\n	window.smfLatestPackages = ''For the package manager to function properly, please upgrade to the latest version of SMF.'';\nelse\n{\nvar smf_modificationInfo = {\n\n	3769: {\n		name: ''Invert Triggers 1.0'',\n		versions: [''73'', ''74''],\n		desc: ''<strong>Invert Triggers</strong><br /><br /><strong>Mod Author:</strong> <a href="http://www.simplemachines.org/community/index.php?action=profile;u=23577" class="bbc_link" target="_blank">Runic</a><br /><strong>Thanks To:</strong> hadesflames<br /><strong>SMF Version:</strong> 2.0.X<br /><strong>Mod Version:</strong> 1.0<br /><br /><strong>Description:<br /><br /></strong>This mod adds some code to ban triggers to give option to select all so you don&#039;t have to check each individual trigger separately.<br /><br />Saving time and nerves.<br /><br />Mod is released under the 2 clause BSD license.'',\n		file: ''Invert Triggers.zip''\n	},\n	3765: {\n		name: ''Men of Star Trek Avatars by BK-Modding 1.0'',\n		versions: [''72'', ''73'', ''74''],\n		desc: ''BK Modding Men of Star Trek Avatars<br /><br />Made by: <a href="http://www.simplemachines.org/community/index.php?action=profile;u=194815" class="bbc_link" target="_blank">BK Modding Team</a> - <a href="http://www.bkmodding.com/" class="bbc_link" target="_blank">BK Modding</a><br /><br />These Star Trek Avatars are perfect for any Star Trek fan.<br /><br />Star Trek®, Star Trek: The Next Generation®, Star Trek: Deep Space Nine®, Star Trek: Voyager®, Star Trek: Enterprise®, and related Star Trek marks are registered trademarks and/or copyrights of Paramount Pictures, CBS, and their respective owners.<br /><br /><div align="center"><a href="http://creativecommons.org/licenses/by-sa/3.0/deed.en_US" class="bbc_link" target="_blank"><img src="http://i.creativecommons.org/l/by-sa/3.0/88x31.png" alt="" class="bbc_img" /></a><br />This work is licensed under a <a href="http://creativecommons.org/licenses/by-sa/3.0/deed.en_US" class="bbc_link" target="_blank">Creative Commons Attribution-ShareAlike 3.0 Unported License</a>.</div>'',\n		file: ''BK-Modding-Star-Trek-Men-Avatars.zip''\n	},\n	3764: {\n		name: ''Women of Star Trek Avatars by BK-Modding 1.0'',\n		versions: [''72'', ''73'', ''74''],\n		desc: ''BK Modding Women of Star Trek Avatars<br /><br />Made by: <a href="http://www.simplemachines.org/community/index.php?action=profile;u=194815" class="bbc_link" target="_blank">BK Modding Team</a> - <a href="http://www.bkmodding.com/" class="bbc_link" target="_blank">BK Modding</a><br /><br />These Star Trek Avatars are perfect for any Star Trek fan.<br /><br />Star Trek®, Star Trek: The Next Generation®, Star Trek: Deep Space Nine®, Star Trek: Voyager®, Star Trek: Enterprise®, and related Star Trek marks are registered trademarks and/or copyrights of Paramount Pictures, CBS, and their respective owners.<br /><br /><div align="center"><a href="http://creativecommons.org/licenses/by-sa/3.0/deed.en_US" class="bbc_link" target="_blank"><img src="http://i.creativecommons.org/l/by-sa/3.0/88x31.png" alt="" class="bbc_img" /></a><br />This work is licensed under a <a href="http://creativecommons.org/licenses/by-sa/3.0/deed.en_US" class="bbc_link" target="_blank">Creative Commons Attribution-ShareAlike 3.0 Unported License</a>.</div>'',\n		file: ''BK-Modding-Star-Trek-Women-Avatars.zip''\n	},\n	3720: {\n		name: ''Tabbed Categories 0.1.2'',\n		versions: [''73''],\n		desc: ''<div align="center"><span style="font-size: 24pt;" class="bbc_size"><span style="color: red;" class="bbc_color">Tabbed Categories</span></span><br />Link to Mod</div><br />This mod changes the way that categories appear on your forum by putting them as tabs.<br />There are no settings for this mod.<br /><br />This mod is licensed under a <a href="http://creativecommons.org/licenses/by-sa/3.0/" class="bbc_link" target="_blank">Creative Commons Attribution-ShareAlike 3.0 Unported</a> license.<br /><br /><strong>How to install:</strong><br />The Package Manager should work in most cases.<br /><br /><span style="font-size: 18pt;" class="bbc_size"><strong>Note regarding theme compatibility</strong></span><br />Some users have reported that the package fails to install for them on certain themes.<br />You can either parse the mod (go to the download page and click &quot;Parse&quot; underneath the package name) and apply the changes yourself, this is the method to try first (there may be a very small bit different from default which causes the failure).<br />Or you can attach your <strong>Themes/{insert theme name}/BoardIndex.template.php</strong> file in this topic and we will try to apply the changes for you.<br /><br /><strong>Languages:</strong><br />This mod does not use languages.<br /><br /><strong>Features:</strong><br />- Shows categories as tabs<br />- Keeps original board layout<br />- This mod tries to be compatible with other mods as much as possible<br />- <strong>This mod removes the capability to hide categories.</strong><br /><br /><strong>Changelog:</strong><br /><em>v0.1.2:</em><br />+ Add a message for users who have JavaScript disabled.<br /><br /><em>v0.1.1:</em><br />! Improvements<br /><br /><em>v0.1:</em><br />- Initial release<br /><br /><strong>This mod uses...</strong><br />- <a href="http://jquery.com" class="bbc_link" target="_blank">jQuery</a><br />- <a href="http://jqueryui.com" class="bbc_link" target="_blank">jQuery UI</a>'',\n		file: ''tc0.1.2.zip''\n	}};\nvar smf_latestModifications = [3769, 3765, 3764];\n\nfunction smf_packagesMoreInfo(id)\n{\n	window.smfLatestPackages_temp = document.getElementById("smfLatestPackagesWindow").innerHTML;\n\n	setInnerHTML(document.getElementById("smfLatestPackagesWindow"),\n	''\\\n		<h3 style="margin: 0; padding: 4px;">'' + smf_modificationInfo[id].name + ''</h3>\\\n		<h4 style="padding: 4px; margin: 0;"><a href="'' + window.smfForum_scripturl + actionurl + ''http://custom.simplemachines.org/mods/downloads/'' + id + ''/'' + smf_modificationInfo[id].file + '';'' + window.smfForum_sessionvar + ''='' + window.smfForum_sessionid + ''">Install Now!</a></h4>\\\n		<div style="margin: 4px;">'' + smf_modificationInfo[id].desc.replace(/<a href/g, ''<a href'') + ''</div>\\\n		<div class="titlebg" style="padding: 4px; margin: 0;"><a href="javascript:smf_packagesBack();void(0);">(go back)</a></div>'');\n}\n\nfunction smf_packagesBack()\n{\n	setInnerHTML(document.getElementById("smfLatestPackagesWindow"), window.smfLatestPackages_temp);\n	window.scrollTo(0, findTop(document.getElementById("smfLatestPackagesWindow")) - 10);\n}\n\nwindow.smfLatestPackages = ''\\\n	<div id="smfLatestPackagesWindow"style="overflow: auto;">\\\n		<h3 style="margin: 0; padding: 4px;">New Packages:</h3>\\\n		<img src="http://www.simplemachines.org/smf/images/package.png" width="102" height="98" style="float: right; margin: 4px;" alt="(package)" />\\\n		<ul style="list-style: none; margin-top: 3px; padding: 0 4px;">'';\n\nfor (var i = 0; i < smf_latestModifications.length; i++)\n{\n	var id_mod = smf_latestModifications[i];\n\n	window.smfLatestPackages += ''<li><a href="javascript:smf_packagesMoreInfo('' + id_mod + '');void(0);">'' + smf_modificationInfo[id_mod].name + ''</a></li>'';\n}\n\nwindow.smfLatestPackages += ''\\\n		</ul>'';\n\nif (typeof(window.smfVersion) != "undefined" && (window.smfVersion < "SMF 1.0.6" || (window.smfVersion == "SMF 1.1 RC2" && !in_array(''smf:smf-1.0.7'', window.smfInstalledPackages))))\n	window.smfLatestPackages += ''\\\n		<h3 class="error" style="margin: 0; padding: 4px;">Updates for SMF:</h3>\\\n		<div style="padding: 0 4px;">\\\n			<a href="'' + window.smfForum_scripturl + actionurl + ''http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.7_1.1-RC2-1.tar.gz;'' + window.smfForum_sessionvar + ''='' + window.smfForum_sessionid + ''">Security update (X-Forwarded-For header vulnerability)</a>\\\n		</div>'';\nelse\n	window.smfLatestPackages += ''\\\n		<h3 style="margin: 0; padding: 4px;">Package of the Moment:</h3>\\\n		<div style="padding: 0 4px;">\\\n			<a href="javascript:smf_packagesMoreInfo(3720);void(0);">Tabbed Categories 0.1.2</a>\\\n		</div>'';\n\nwindow.smfLatestPackages += ''\\\n	</div>'';\n}\n\nfunction findTop(el)\n{\n	if (typeof(el.tagName) == "undefined")\n		return 0;\n\n	var skipMe = in_array(el.tagName.toLowerCase(), el.parentNode ? ["tr", "tbody", "form"] : []);\n	var coordsParent = el.parentNode ? "parentNode" : "offsetParent";\n\n	if (el[coordsParent] == null || typeof(el[coordsParent].offsetTop) == "undefined")\n		return skipMe ? 0 : el.offsetTop;\n	else\n		return (skipMe ? 0 : el.offsetTop) + findTop(el[coordsParent]);\n}\n\nfunction in_array(item, array)\n{\n	for (var i in array)\n	{\n		if (array[i] == item)\n			return true;\n	}\n\n	return false;\n}\n', 'text/javascript');
INSERT INTO `smf_ikilladmin_info_files` (`id_file`, `filename`, `path`, `parameters`, `data`, `filetype`) VALUES
(5, 'latest-smileys.js', '/smf/', 'language=%1$s&version=%3$s', 'var actionurl = ''?action=admin;area=smileys;sa=install;set_gz='';\nif (typeof(window.smfForum_sessionvar) == "undefined")\n	window.smfForum_sessionvar = ''sesc'';\n\nvar smf_smileysInfo = {\n\n	3628: {\n		name: ''BBPh Smileys 1.0'',\n		versions: [''72'', ''73''],\n		desc: ''Made to easily replace default ones.<br /><br /><img src="http://dl.dropbox.com/u/1684364/arc/bbph.gif" alt="" class="bbc_img" /><br /><br />These are just my favorites since the first forum I ever lived on was based on phpBB. Some are animated. package-info.xml included.<br /><br />Original smileys belong to phpBB. Some minor mods by me.'',\n		file: ''bbph.zip''\n	},\n	3290: {\n		name: ''Blue Smiley Animation 2.0'',\n		versions: [''67'', ''72'', ''68'', ''73''],\n		desc: ''<div align="center"><span style="font-size: 1.45em;" class="bbc_size"><span style="color: green;" class="bbc_color"><strong>Blue Smiley Animation</strong></span></span></div><div align="center"><a href="http://www.simplemachines.org/community/index.php?topic=464629.0" class="bbc_link" target="_blank">English Support</a> | <a href="http://smf-portal.hu" class="bbc_link" target="_blank">Hungarian Support</a> | <a href="http://custom.simplemachines.org/mods/index.php?action=profile;u=221448" class="bbc_link" target="_blank">My Mods</a></div><hr /><br /><strong>Autor:</strong><br /><a href="http://www.simplemachines.org/community/index.php?action=profile;u=221448" class="bbc_link" target="_blank">WasdMan</a> and Cserrobi<br /><br /><strong>Description (Hungarian):</strong> <br />Kék mosolygó arcok<br /><br /><strong>Description (English):</strong><br />Blue Smiley package<br /><br /><img src="http://smf-portal.hu/Download/Egyeb/keksmiley.png" alt="" width="600" height="237" class="bbc_img resized" /><br /><br /><strong>Compatibility: </strong><br /><ul class="bbc_list"><li>1.0 - 1.99.99</li><li>2.0 - 2.99.99</li></ul>'',\n		file: ''BlueSmileyAnimation_2.1_UNI.zip''\n	},\n	3269: {\n		name: ''Christmas Smileys 1.1'',\n		versions: [''64'', ''67'', ''70'', ''72'', ''65'', ''68'', ''71'', ''73'', ''74''],\n		desc: ''<div align="center"><span style="font-family: times new roman;" class="bbc_font"><span style="font-size: 24pt;" class="bbc_size"><span style="color: #654321;" class="bbc_color">Christmas Smileys</span></span></span><br /><table class="bbc_table"><tr><td><div style="text-align: right;"><strong>Created By:</strong> </div></td><td><a href="http://www.simplemachines.org/community/index.php?action=profile;u=200419" class="bbc_link" target="_blank">-=[Vyorel]=-</a><br />(<a href="http://custom.simplemachines.org/mods/index.php?action=search;author=200419" class="bbc_link" target="_blank">View my other mods here</a>)</td></tr><tr><td><div style="text-align: right;"><strong>Latest Version:</strong> </div></td><td>1.1</td></tr></table></div><br /><span style="font-family: times new roman;" class="bbc_font"><span style="font-size: 14pt;" class="bbc_size"><span style="color: #654321;" class="bbc_color">Summary</span></span></span><br /><br />This package contains 23 Christmas Smileys.<br /><br />You can install it using the package manager and then use the Smileys and message icons menu (Smileys and Message Icons -&gt; smiley sets new smiley set) to import the smiley&#039;s.<br /><br /><br /><span style="font-family: times new roman;" class="bbc_font"><span style="font-size: 14pt;" class="bbc_size"><span style="color: #654321;" class="bbc_color">Disclaimer</span></span></span><br />This Smileys are copyrighted to <a href="http://www.freeemoticonsandsmileys.com" class="bbc_link" target="_blank">www.freeemoticonsandsmileys.com</a> and all right are reserved.<br /><br /><div align="center"><a href="http://www.xerom-zone.com" class="bbc_link" target="_blank"><img src="http://www.xerom-zone.com/Themes/XeromTheme/images/custom/logo.png" alt="" class="bbc_img" /></a></div>'',\n		file: ''ChristmasSmileys.zip''\n	},\n	944: {\n		name: ''Smiley Pops 1.1.2'',\n		versions: [''29'', ''31'', ''41'', ''53''],\n		desc: ''This Mod adds pop ups on the post form and PM windows where your smileys are stored.&nbsp; Acts just like the [more] pop up.<br /><br />This mod utilizes the hidden category in the SQL database for your smileys.&nbsp; When installed you will create groups and set an order for them (very important!) With your new groups you can then use the &quot;set smiley order&quot; tab to move smileys into your newly created group(s).&nbsp; For best visual response, remove all smileys from the &quot;pop up&quot; or [more] category, as this will make the [more] disappear.&nbsp; Smileys in the database are not affected, and new additions are added the same way.<br /><br />Installation works through package manager with SMF 1.1.1 - 1.1.4 and has been tested successful on many forums before release, including new installs, upgraded installs installs with no other mods and installs with up to 53 mods.<br /><br />Some themes use one or more of the 5 files this mod edits, if you are using a theme that uses a file listed on the install page of package manager, you will need to manually add those edits to your theme files after install.&nbsp; Most themes do not use these files, and you should have little to no problems installing this mod.<br /><br />**PLEASE MAKE BACKUPS TO ALL FORUM FILES AND SQL DATABASES PRIOR TO INSTALLING THIS MOD**<br /><br />For a complete un-install you will need to follow the un-install instructions in the readme.txt included in the package.&nbsp; All you have to do is run un-install through package manager as normal, and edit your SQL tables slightly, with 2 lines of code.<br /><br />##Known issues:<br /><br />#No real issues known (and verified) at this time.<br />#Possible conflicts with forums that also have SMF Shop installed, Specifically those with Member Awards and other Post Count based icons and edits.&nbsp; This issue is being fully tested and should be addressed fully in the next release.<br /><br />##Future releases:<br /><br />#Working on integration with SMF Shoutbox<br />#Working on adding the SQL edits to the un-install process so no manual SQL edit will be needed.<br />#Working on multiple smiley upload<br /><br />Questions, comments, problems see the readme file for contact info and instructions.&nbsp; For more details see the SMF forum thread, including screen shots and posted issues and updates.'',\n		file: ''smileyPops1.1.2.zip''\n	},};\nvar smf_latestSmileys = [3628, 3290, 3269];\n\nfunction smf_packagesMoreInfo(id)\n{\n	window.smfLatestSmileys_temp = document.getElementById("smfLatestSmileysWindow").innerHTML;\n\n	setInnerHTML(document.getElementById("smfLatestSmileysWindow"),\n	''\\\n		<h3 style="margin: 0; padding: 4px;">'' + smf_smileysInfo[id].name + ''</h3>\\\n		<h4 style="padding: 4px; margin: 0;"><a href="'' + window.smfForum_scripturl + actionurl + ''http://custom.simplemachines.org/mods/downloads/'' + id + ''/'' + smf_smileysInfo[id].file + '';'' + window.smfForum_sessionvar + ''='' + window.smfForum_sessionid + ''">Install Now!</a></h4>\\\n		<div style="margin: 4px;">'' + smf_smileysInfo[id].desc.replace(/<a href/g, ''<a href'') + ''</div>\\\n		<div class="titlebg" style="padding: 4px; margin: 0;"><a href="javascript:smf_packagesBack();void(0);">(go back)</a></div>'');\n}\n\nfunction smf_packagesBack()\n{\n	setInnerHTML(document.getElementById("smfLatestSmileysWindow"), window.smfLatestSmileys_temp);\n	window.scrollTo(0, findTop(document.getElementById("smfLatestSmileysWindow")) - 10);\n}\n\nwindow.smfLatestSmileys = ''\\\n	<div id="smfLatestSmileysWindow" style="overflow: auto;">\\\n		<img src="http://www.simplemachines.org/smf/images/smileys.png" width="102" height="98" style="float: right; margin: 4px;" alt="(package)" />\\\n		<h3 style="margin: 0; padding: 4px;">Smiley of the Moment:</h3>\\\n		<div style="padding: 0 4px;">\\\n			<a href="javascript:smf_packagesMoreInfo(944);void(0);">Smiley Pops 1.1.2</a>\\\n		</div>'';\n\nwindow.smfLatestSmileys += ''\\\n		<h3 style="margin: 0; padding: 4px;">New Smileys:</h3>\\\n		<ul style="list-style: none; margin-top: 3px; padding: 0 4px;">'';\n\nfor (var i = 0; i < smf_latestSmileys.length; i++)\n{\n	var id_mod = smf_latestSmileys[i];\n\n	window.smfLatestSmileys += ''<li><a href="javascript:smf_packagesMoreInfo('' + id_mod + '');void(0);">'' + smf_smileysInfo[id_mod].name + ''</a></li>'';\n}\n\nwindow.smfLatestSmileys += ''\\\n		</ul>'';\n\nwindow.smfLatestSmileys += ''\\\n	</div>'';\n\nfunction findTop(el)\n{\n	if (typeof(el.tagName) == "undefined")\n		return 0;\n\n	var skipMe = in_array(el.tagName.toLowerCase(), el.parentNode ? ["tr", "tbody", "form"] : []);\n	var coordsParent = el.parentNode ? "parentNode" : "offsetParent";\n\n	if (el[coordsParent] == null || typeof(el[coordsParent].offsetTop) == "undefined")\n		return skipMe ? 0 : el.offsetTop;\n	else\n		return (skipMe ? 0 : el.offsetTop) + findTop(el[coordsParent]);\n}\n\nfunction in_array(item, array)\n{\n	for (var i in array)\n	{\n		if (array[i] == item)\n			return true;\n	}\n\n	return false;\n}', 'text/javascript'),
(6, 'latest-support.js', '/smf/', 'language=%1$s&version=%3$s', 'window.smfLatestSupport = ''<div style="font-size: 0.85em;"><div style="font-weight: bold;">SMF 2.0.5</div>Few vulnerabilities have been fixed in this new release.  Please <a href="http://www.simplemachines.org/download.php">try it</a> before requesting support.</div>'';\n\nif (document.getElementById(''credits''))\n	setInnerHTML(document.getElementById(''credits''), getInnerHTML(document.getElementById(''credits'')).replace(/thank you!/, ''<span onclick="alert(\\''Kupo!\\'');">thank you!</span>''));\n', 'text/javascript'),
(7, 'latest-themes.js', '/smf/', 'language=%1$s&version=%3$s', '\r\nvar smf_themeInfo = {\r\n	2332: {\r\n		name: ''Epic'',\r\n		desc: ''Very clean and modern <abbr title="Simple Machines Forums">SMF</abbr> theme with orange colors and gradients.<br /><br />&nbsp; <strong>==&gt;</strong> <a href="http://www.jpr62.com/demos/index.php?theme=43" class="bbc_link" target="_blank"><strong>D e m o</strong></a> <br />&amp;<br />&nbsp; <strong>==&gt;</strong> <a href="http://www.jpr62.com/theme/index.php" class="bbc_link" target="_blank">Alternative Theme Support</a> ..if needed ...'',\r\n		file: ''epic_2_0.zip'',\r\n		author: ''Crip''\r\n	},\r\n	2724: {\r\n		name: ''Golove'',\r\n		desc: ''This theme may not work properly in old and non CSS3 supported browsers.<br /><br />License - Read included text file.<br /><br />License in brief, you can make any changes to this theme to fit your needs, however under no circumstance are you allowed to make any changes to the copyright link.<br /><br /><a href="http://theme.teknoromi.com/index.php?theme=5" class="bbc_link" target="_blank">Demo</a>'',\r\n		file: ''Golove.zip'',\r\n		author: ''snrj''\r\n	},\r\n	2723: {\r\n		name: ''Sinister'',\r\n		desc: ''Dark styled theme in Gray, Black and Red for SMF 2.0.x<br /><br />Features social icons in user bar that can be activated/deactivated and links edited from within current theme options.<br /><br />License - Read included text file.<br /><br />License in brief, you can make any changes to this theme to fit your needs, however under no circumstance are you allowed to make any changes to the copyright link.<br /><br /><img src="http://i.imgur.com/JBaQ77f.png" alt="" width="600" height="384" class="bbc_img resized" /><br /><br /><span style="color: teal;" class="bbc_color">This theme uses css3, therefor may not work correctly in older type browsers.</span><br /><br /><span style="color: teal;" class="bbc_color"><span style="font-size: 14pt;" class="bbc_size">Not recommended for RTL languages.</span></span><br /><br /><a href="http://www.hostxme.com/" class="bbc_link" target="_blank"><span style="color: orange;" class="bbc_color">For More Free Themes</span></a><br /><br />Demo can be seen - <a href="http://smf.hostxme.com" class="bbc_link" target="_blank">http://smf.hostxme.com</a>&nbsp; '',\r\n		file: ''Sinister 2.0.x.zip'',\r\n		author: ''&#039;Trax&#039;''\r\n	},\r\n	2722: {\r\n		name: ''Teknomaxi'',\r\n		desc: ''This theme may not work properly in old and non CSS3 supported browsers.<br /><br />License - Read included text file.<br /><br />License in brief, you can make any changes to this theme to fit your needs, however under no circumstance are you allowed to make any changes to the copyright link.<br /><br /><a href="http://theme.teknoromi.com/index.php?theme=4" class="bbc_link" target="_blank">Demo</a><br /><a href="http://teknoromi.com/index.php" class="bbc_link" target="_blank">Demo2</a>'',\r\n		file: ''Teknomaxi.zip'',\r\n		author: ''snrj''\r\n	},\r\n	2475: {\r\n		name: ''BG-Saga'',\r\n		desc: ''<span style="color: green;" class="bbc_color"><span style="font-size: 14pt;" class="bbc_size">BlueGreen Saga</span></span><br /><hr /><strong> By : Ricky. |&nbsp; <a href="http://ifandbut.com/talk/index.php?topic=103.0" class="bbc_link" target="_blank">Theme Support</a>&nbsp; | <a href="http://custom.simplemachines.org/themes/index.php?action=profile;u=34192" class="bbc_link" target="_blank">My More Themes</a> <br />For SMF 2.0 , SMF 2.0.1<br /></strong><br />A dark theme with brightness of Blue and Green together. A fixed width theme with Modern professional look and clean layout. <br />Theme using CSS3 supported by all Modern browsers.<br /><br /><span style="color: green;" class="bbc_color"><span style="font-size: 14pt;" class="bbc_size">Features</span></span><br /><hr /><ul class="bbc_list"><li>Light and fast theme</li><li>Modern look </li><li>Fixed width </li><li>Theme Menubar on Top</li><li>Translucent Drop down menu for modern look.</li><li>Set your custom footer copyright Anchor text from Theme Settings</li></ul><br /><span style="color: green;" class="bbc_color"><span style="font-size: 14pt;" class="bbc_size">Changes</span></span><br /><hr /><ul class="bbc_list"><li>27/8/2011-Fixed some color issue with sticky topics</li><li>23/8/2011-Fixed small issue related to forum path</li></ul>'',\r\n		file: ''bg-saga.zip'',\r\n		author: ''Ricky.''\r\n	}\r\n};\r\nvar smf_featured = 2332;\r\nvar smf_random = 2475;\r\nvar smf_latestThemes = [2724, 2723, 2722];\r\nfunction smf_themesMoreInfo(id)\r\n{\r\n	window.smfLatestThemes_temp = document.getElementById("smfLatestThemesWindow").innerHTML;\n\n	// !!! Why not just always auto?\n	document.getElementById("smfLatestThemesWindow").style.overflow = "auto";\n	setInnerHTML(document.getElementById("smfLatestThemesWindow"),\n	''\\\n		<h3 style="margin: 0; padding: 4px;">'' + smf_themeInfo[id].name + ''</h3>\\\r\n		<h4 style="margin: 0;padding: 4px;"><a href="http://custom.simplemachines.org/themes/index.php?lemma='' + id + ''">View Theme Now!</a></h4>\\\r\n		<div style="overflow: auto;">\\\r\n			<img src="http://custom.simplemachines.org/themes/index.php?action=download;lemma=''+id+'';image=thumb" alt="" style="float: right; margin: 10px;" />\\\r\n			<div style="padding:8px;">'' + smf_themeInfo[id].desc.replace(/<a href/g, ''<a href'') + ''</div>\\\r\n		</div>\\\r\n		<div style="padding: 4px;" class="smalltext"><a href="javascript:smf_themesBack();void(0);">(go back)</a></div>'');\n}\r\n\r\nfunction smf_themesBack()\r\n{\r\n	document.getElementById("smfLatestThemesWindow").style.overflow = "";\n	setInnerHTML(document.getElementById("smfLatestThemesWindow"), window.smfLatestThemes_temp);\n	window.scrollTo(0, findTop(document.getElementById("smfLatestThemesWindow")) - 10);\r\n}\r\n\r\nwindow.smfLatestThemes = ''\\\r\n	<div id="smfLatestThemesWindow">\\\r\n		<div>\\\r\n			<img src="http://www.simplemachines.org/smf/images/themes.png" width="102" height="98" style="float: right; margin: 0 0 10px 10px;" alt="(package)" />\\\r\n			<ul style="list-style: none; padding: 0; margin: 0 0 0 5px;">'';\r\nfor(var i=0; i < smf_latestThemes.length; i++)\r\n{\r\n	var id_theme = smf_latestThemes[i];\r\n	window.smfLatestThemes += ''\\\r\n				<li style="list-style: none;"><a href="javascript:smf_themesMoreInfo('' + id_theme + '');void(0);">'' + smf_themeInfo[id_theme].name + '' by '' + smf_themeInfo[id_theme].author + ''</a></li>'';\r\n}\r\n\r\nwindow.smfLatestThemes += ''\\\r\n			</ul>'';\r\nif ( smf_featured !=0 || smf_random != 0 )\r\n{\r\n\r\n	if ( smf_featured != 0 )\r\n		window.smfLatestThemes += ''\\\r\n				<h4 style="padding: 4px 4px 0 4px; margin: 0;">Featured Theme</h4>\\\r\n				<p style="padding: 0 4px; margin: 0;">\\\r\n					<a href="javascript:smf_themesMoreInfo(''+smf_featured+'');void(0);">''+smf_themeInfo[smf_featured].name + '' by '' + smf_themeInfo[smf_featured].author+''</a>\\\r\n				</p>'';\r\n	if ( smf_random != 0 )\r\n		window.smfLatestThemes += ''\\\r\n				<h4 style="padding: 4px 4px 0 4px;margin: 0;">Theme of the Moment</h4>\\\r\n				<p style="padding: 0 4px; margin: 0;">\\\r\n					<a href="javascript:smf_themesMoreInfo(''+smf_random+'');void(0);">''+smf_themeInfo[smf_random].name + '' by '' + smf_themeInfo[smf_random].author+''</a>\\\r\n				</p>'';\r\n}\r\nwindow.smfLatestThemes += ''\\\r\n		</div>\\\r\n	</div>'';\r\n\r\nfunction findTop(el)\r\n{\r\n	if (typeof(el.tagName) == "undefined")\r\n		return 0;\r\n\r\n	var skipMe = in_array(el.tagName.toLowerCase(), el.parentNode ? ["tr", "tbody", "form"] : []);\r\n	var coordsParent = el.parentNode ? "parentNode" : "offsetParent";\r\n\r\n	if (el[coordsParent] == null || typeof(el[coordsParent].offsetTop) == "undefined")\r\n		return skipMe ? 0 : el.offsetTop;\r\n	else\r\n		return (skipMe ? 0 : el.offsetTop) + findTop(el[coordsParent]);\r\n}\r\n\r\nfunction in_array(item, array)\r\n{\r\n	for (var i in array)\r\n	{\r\n		if (array[i] == item)\r\n			return true;\r\n	}\r\n\r\n	return false;\r\n}', 'text/javascript');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `smf_ikillapproval_queue`
--

CREATE TABLE IF NOT EXISTS `smf_ikillapproval_queue` (
  `id_msg` int(10) unsigned NOT NULL DEFAULT '0',
  `id_attach` int(10) unsigned NOT NULL DEFAULT '0',
  `id_event` smallint(5) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `smf_ikillattachments`
--

CREATE TABLE IF NOT EXISTS `smf_ikillattachments` (
  `id_attach` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_thumb` int(10) unsigned NOT NULL DEFAULT '0',
  `id_msg` int(10) unsigned NOT NULL DEFAULT '0',
  `id_member` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_folder` tinyint(3) NOT NULL DEFAULT '1',
  `attachment_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `filename` varchar(255) NOT NULL DEFAULT '',
  `file_hash` varchar(40) NOT NULL DEFAULT '',
  `fileext` varchar(8) NOT NULL DEFAULT '',
  `size` int(10) unsigned NOT NULL DEFAULT '0',
  `downloads` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `width` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `height` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `mime_type` varchar(20) NOT NULL DEFAULT '',
  `approved` tinyint(3) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_attach`),
  UNIQUE KEY `id_member` (`id_member`,`id_attach`),
  KEY `id_msg` (`id_msg`),
  KEY `attachment_type` (`attachment_type`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Volcado de datos para la tabla `smf_ikillattachments`
--

INSERT INTO `smf_ikillattachments` (`id_attach`, `id_thumb`, `id_msg`, `id_member`, `id_folder`, `attachment_type`, `filename`, `file_hash`, `fileext`, `size`, `downloads`, `width`, `height`, `mime_type`, `approved`) VALUES
(6, 0, 0, 2, 1, 0, 'avatar_2_1377164871.png', 'edac8e7ec9f94ea25e3702a04898c50d8e69c0b5', 'png', 7033, 45, 65, 65, 'image/png', 1),
(2, 0, 0, 3, 1, 0, 'avatar_3_1376920058.png', 'ec78b49edd26b84571fb3aefc1b75cc0d0727df3', 'png', 10229, 9, 65, 65, 'image/png', 1),
(3, 0, 0, 9, 1, 0, 'avatar_9_1377086889.png', 'f0444bee1fbf595e87e8f00c902ae2908fc6af10', 'png', 9519, 3, 65, 53, 'image/png', 1),
(4, 0, 0, 11, 1, 0, 'avatar_11_1377088043.png', '42b67c5fed9ac650ccbb1d4724394ef6d1b0c585', 'png', 7379, 3, 65, 65, 'image/png', 1),
(5, 0, 0, 1, 1, 0, 'avatar_1_1377095231.png', 'c5a224902cac86023232df698f6433c5df78d06d', 'png', 6152, 1003, 65, 48, 'image/png', 1),
(7, 0, 0, 42, 1, 0, 'avatar_42_1377217707.png', 'f766ecda1cbb7fe392776767d1bede0cffc8c740', 'png', 4197, 3, 65, 45, 'image/png', 1),
(8, 0, 0, 51, 1, 0, 'avatar_51_1377284859.png', '927222e21e7c588448596fe01d316944b26194b2', 'png', 3701, 37, 43, 65, 'image/png', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `smf_ikillban_groups`
--

CREATE TABLE IF NOT EXISTS `smf_ikillban_groups` (
  `id_ban_group` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '',
  `ban_time` int(10) unsigned NOT NULL DEFAULT '0',
  `expire_time` int(10) unsigned DEFAULT NULL,
  `cannot_access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `cannot_register` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `cannot_post` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `cannot_login` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `reason` varchar(255) NOT NULL DEFAULT '',
  `notes` text NOT NULL,
  PRIMARY KEY (`id_ban_group`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `smf_ikillban_groups`
--

INSERT INTO `smf_ikillban_groups` (`id_ban_group`, `name`, `ban_time`, `expire_time`, `cannot_access`, `cannot_register`, `cannot_post`, `cannot_login`, `reason`, `notes`) VALUES
(1, 'spamx', 1377375619, NULL, 1, 0, 0, 0, 'SPAM?', ''),
(2, 'Jair25', 1377376201, NULL, 1, 0, 0, 0, 'SPAM?', ''),
(3, 'BotMeBanMe', 1377376435, NULL, 1, 0, 0, 0, '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `smf_ikillban_items`
--

CREATE TABLE IF NOT EXISTS `smf_ikillban_items` (
  `id_ban` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `id_ban_group` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ip_low1` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ip_high1` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ip_low2` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ip_high2` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ip_low3` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ip_high3` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ip_low4` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ip_high4` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `hostname` varchar(255) NOT NULL DEFAULT '',
  `email_address` varchar(255) NOT NULL DEFAULT '',
  `id_member` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hits` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_ban`),
  KEY `id_ban_group` (`id_ban_group`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Volcado de datos para la tabla `smf_ikillban_items`
--

INSERT INTO `smf_ikillban_items` (`id_ban`, `id_ban_group`, `ip_low1`, `ip_high1`, `ip_low2`, `ip_high2`, `ip_low3`, `ip_high3`, `ip_low4`, `ip_high4`, `hostname`, `email_address`, `id_member`, `hits`) VALUES
(1, 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 'helloimspam@hotmail.com', 0, 1),
(3, 2, 0, 0, 0, 0, 0, 0, 0, 0, '', 'pendejosspammeros@hotmail.com', 0, 3),
(5, 3, 0, 0, 0, 0, 0, 0, 0, 0, '', 'suseguridadapesta@hotmail.com', 0, 2),
(6, 3, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 56, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `smf_ikillboards`
--

CREATE TABLE IF NOT EXISTS `smf_ikillboards` (
  `id_board` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `id_cat` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `child_level` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `id_parent` smallint(5) unsigned NOT NULL DEFAULT '0',
  `board_order` smallint(5) NOT NULL DEFAULT '0',
  `id_last_msg` int(10) unsigned NOT NULL DEFAULT '0',
  `id_msg_updated` int(10) unsigned NOT NULL DEFAULT '0',
  `member_groups` varchar(255) NOT NULL DEFAULT '-1,0',
  `id_profile` smallint(5) unsigned NOT NULL DEFAULT '1',
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `num_topics` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `num_posts` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `count_posts` tinyint(4) NOT NULL DEFAULT '0',
  `id_theme` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `override_theme` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `unapproved_posts` smallint(5) NOT NULL DEFAULT '0',
  `unapproved_topics` smallint(5) NOT NULL DEFAULT '0',
  `redirect` varchar(255) NOT NULL DEFAULT '',
  `img_link` tinytext NOT NULL,
  `img_filename` tinytext NOT NULL,
  PRIMARY KEY (`id_board`),
  UNIQUE KEY `categories` (`id_cat`,`id_board`),
  KEY `id_parent` (`id_parent`),
  KEY `id_msg_updated` (`id_msg_updated`),
  KEY `member_groups` (`member_groups`(48))
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=86 ;

--
-- Volcado de datos para la tabla `smf_ikillboards`
--

INSERT INTO `smf_ikillboards` (`id_board`, `id_cat`, `child_level`, `id_parent`, `board_order`, `id_last_msg`, `id_msg_updated`, `member_groups`, `id_profile`, `name`, `description`, `num_topics`, `num_posts`, `count_posts`, `id_theme`, `override_theme`, `unapproved_posts`, `unapproved_topics`, `redirect`, `img_link`, `img_filename`) VALUES
(5, 1, 0, 0, 1, 14, 14, '-1,0,2,9,4,5,6,8,10,11,12,13', 1, 'Bienvenidas/Despedidas y Cumpleaños', '<b>¿Eres nuevo aquí?</b> ven a presentarte aquí.<br>\r\n<b>¿Te vas del Foro?</b>, no te olvides de despedirte...<br>\r\n<b>¿Es tu cumple?</b> ven a celebrarlo. :D', 2, 6, 1, 0, 0, 0, 0, '', '', 'https://cdn0.iconfinder.com/data/icons/ie_yummy/48/cake_13.png'),
(1, 1, 0, 0, 2, 30, 30, '-1,0,2,9,12,10,11,13,4,5,6,8', 1, 'Eventos y noticias sobre el foro', 'Aquí estarán redactados todas las noticias y eventos del Foro.', 3, 17, 0, 0, 0, 0, 0, '', '', 'https://cdn3.iconfinder.com/data/icons/humano2/48x48/apps/internet-news-reader.png'),
(2, 1, 0, 0, 3, 0, 0, '-1,0,2,9,12,10,11,4,5,6,8,13', 1, 'Dudas y sugerencias sobre el Foro', '<b>¿Tienes alguna pregunta o idea para el Foro?</b> Posteala aquí sin miedo.', 0, 0, 0, 0, 0, 0, 0, '', '', 'https://cdn2.iconfinder.com/data/icons/oxygen/48x48/actions/help-contents.png'),
(50, 1, 0, 0, 4, 0, 0, '-1,0,2,9,10,11,12,13', 1, 'Dudas Generales', '<b>¿Una duda te asalta y no sabes donde ponerla?</b> Ponla aquí!', 0, 0, 0, 0, 0, 0, 0, '', '', 'https://cdn1.iconfinder.com/data/icons/CrystalClear/48x48/apps/Community%20Help.png'),
(3, 1, 0, 0, 5, 0, 0, '-1,0,2,9,4,5,6,8,10,11,12,13', 1, 'Foro Libre (Off-Topic)', 'Siéntete libre de hablar aquí de todo con el mundo.', 0, 0, 1, 0, 0, 0, 0, '', '', 'https://cdn1.iconfinder.com/data/icons/nuvola2/48x48/apps/edu_languages.png'),
(4, 2, 0, 0, 6, 0, 0, '-1,0,2,9,4,5,6,8,10,11,12,13', 1, 'Música', 'Comparte tu música favorita, información, recitales, conciertos y demás.', 0, 0, 0, 0, 0, 0, 0, '', '', 'https://cdn4.iconfinder.com/data/icons/STROKE/networking/png/48/headphone.png'),
(6, 2, 0, 0, 7, 31, 31, '-1,0,2,9,4,5,6,8,10,11,12,13', 1, 'Películas, series y vídeos', '<b>Películas y series:</b> toda la información sobre estrenos, trailers, series y televisión.<br>\r\n<b>Vídeos:</b> muéstranos aquellos vídeos que creas necesario compartir con todos en la comunidad.', 2, 5, 0, 0, 0, 0, 0, '', '', 'https://cdn2.iconfinder.com/data/icons/minicons/Png/Video.png'),
(8, 2, 0, 0, 8, 0, 0, '-1,0,2,9,4,5,6,8,10,11,12,13', 1, 'Anime y Manga', 'Aquí podrás compartir tus animes y mangas favoritos!', 0, 0, 0, 0, 0, 0, 0, '', '', 'https://cdn3.iconfinder.com/data/icons/mixed-3d-icons/512/Anime-48.png'),
(7, 2, 0, 0, 9, 0, 0, '-1,0,2,9,12,10,11,13,4,5,6,8', 1, 'Juegos y demás', 'Comparte tus juegos favoritos con todos los usuarios.', 0, 0, 0, 0, 0, 0, 0, '', '', 'https://cdn3.iconfinder.com/data/icons/humano2/48x48/emblems/emblem-games.png'),
(80, 2, 1, 7, 10, 0, 0, '-1,0,2,9,12,10,11,13', 1, 'Juegos Flash', '', 0, 0, 0, 0, 0, 0, 0, '', '', ''),
(15, 2, 0, 0, 11, 0, 0, '-1,0,2,9,4,5,6,8,10,11,12,13', 1, 'Literatura y cómics', 'Punto de encuentro de los fans del papel, letras y viñetas.', 0, 0, 0, 0, 0, 0, 0, '', '', 'https://cdn0.iconfinder.com/data/icons/48_px_web_icons/48/Book.png'),
(62, 6, 0, 0, 12, 0, 0, '-1,0,2,9,12,10,11,13', 1, 'Otros juegos', '', 0, 0, 0, 0, 0, 0, 0, '', '', ''),
(63, 6, 0, 0, 13, 17, 17, '-1,0,2,9,12,10,11,13', 1, 'Minecraft', '', 1, 1, 0, 0, 0, 0, 0, '', '', ''),
(74, 6, 0, 0, 14, 0, 0, '-1,0,2,9,12,10,11,13', 1, 'Grand Thelf Auto (GTA)', '', 0, 0, 0, 0, 0, 0, 0, '', '', ''),
(73, 6, 0, 0, 15, 0, 0, '-1,0,2,9,12,10,11,13', 1, 'Counter Strike', '', 0, 0, 0, 0, 0, 0, 0, '', '', ''),
(64, 6, 0, 0, 16, 0, 0, '-1,0,2,9,12,10,11,13', 1, 'Call Of Duty', '', 0, 0, 0, 0, 0, 0, 0, '', '', ''),
(65, 6, 0, 0, 17, 0, 0, '-1,0,2,9,12,10,11,13', 1, 'League of Legends', '', 0, 0, 0, 0, 0, 0, 0, '', '', ''),
(66, 6, 0, 0, 18, 0, 0, '-1,0,2,9,12,10,11,13', 1, 'FIFA', '', 0, 0, 0, 0, 0, 0, 0, '', '', ''),
(67, 6, 0, 0, 19, 0, 0, '-1,0,2,9,12,10,11,13', 1, 'BattleField', '', 0, 0, 0, 0, 0, 0, 0, '', '', ''),
(68, 7, 0, 0, 20, 0, 0, '-1,0,2,9,12,10,11,13', 1, 'Pedidos', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'https://cdn0.iconfinder.com/data/icons/Free-Icons-Shimmer-01-Creative-Freedom/48/brush.png'),
(75, 7, 0, 0, 21, 0, 0, '-1,0,2,9,12,10,11,13', 1, 'Galerías y Talleres', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'https://cdn0.iconfinder.com/data/icons/Free-Icons-Shimmer-01-Creative-Freedom/48/brush.png'),
(69, 7, 0, 0, 22, 0, 0, '-1,0,2,9,12,10,11,13', 1, 'Muestras y Regalos', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'https://cdn0.iconfinder.com/data/icons/Free-Icons-Shimmer-01-Creative-Freedom/48/brush.png'),
(71, 7, 0, 0, 23, 0, 0, '-1,0,2,9,12,10,11,13', 1, 'Tutoriales', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'https://cdn0.iconfinder.com/data/icons/Free-Icons-Shimmer-01-Creative-Freedom/48/brush.png'),
(70, 7, 0, 0, 24, 0, 0, '-1,0,2,9,12,10,11,13', 1, 'Recursos', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'https://cdn0.iconfinder.com/data/icons/Free-Icons-Shimmer-01-Creative-Freedom/48/brush.png'),
(72, 7, 0, 0, 25, 0, 0, '-1,0,2,9,12,10,11,13', 1, 'Eventos y Torneos', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'https://cdn0.iconfinder.com/data/icons/Free-Icons-Shimmer-01-Creative-Freedom/48/brush.png'),
(76, 8, 0, 0, 26, 0, 0, '-1,0,2,9,12,10,11,13', 1, 'Network', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'https://cdn0.iconfinder.com/data/icons/WPZOOM_Social_Networking_Icon_Set/48/youtube.png'),
(77, 8, 1, 76, 27, 0, 0, '-1,0,2,9,12,10,11,13', 1, 'Partners', '', 0, 0, 0, 0, 0, 0, 0, '', '', ''),
(78, 8, 0, 0, 28, 0, 0, '-1,0,2,9,12,10,11,13', 1, 'Vídeos', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'https://cdn0.iconfinder.com/data/icons/WPZOOM_Social_Networking_Icon_Set/48/youtube.png'),
(79, 8, 1, 78, 29, 0, 0, '-1,0,2,9,12,10,11,13', 1, 'Creaciones &amp; Proyectos &amp; Montajes', '', 0, 0, 0, 0, 0, 0, 0, '', '', ''),
(81, 8, 1, 78, 30, 0, 0, '-1,0,2,9,12,10,11,13', 1, 'Tutoriales', '', 0, 0, 0, 0, 0, 0, 0, '', '', ''),
(82, 8, 1, 78, 31, 0, 0, '-1,0,2,9,12,10,11,13', 1, 'Gameplays', '', 0, 0, 0, 0, 0, 0, 0, '', '', ''),
(83, 8, 1, 78, 32, 0, 0, '-1,0,2,9,12,10,11,13', 1, 'Directos', '', 0, 0, 0, 0, 0, 0, 0, '', '', ''),
(84, 8, 0, 0, 33, 0, 0, '-1,0,2,9,12,10,11,13', 1, 'Canales', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'https://cdn0.iconfinder.com/data/icons/WPZOOM_Social_Networking_Icon_Set/48/youtube.png'),
(85, 8, 1, 84, 34, 0, 0, '-1,0,2,9,12,10,11,13', 1, 'Diseños &amp; Banners', '', 0, 0, 0, 0, 0, 0, 0, '', '', 'https://cdn0.iconfinder.com/data/icons/WPZOOM_Social_Networking_Icon_Set/48/youtube.png'),
(11, 3, 0, 0, 35, 0, 0, '-1,0,2,9,4,5,6,8,10,11,12,13', 1, 'Noticias', 'Toda la actualidad, debates, y opiniones aquí.', 0, 0, 0, 0, 0, 0, 0, '', '', 'https://cdn2.iconfinder.com/data/icons/gnomeicontheme/48x48/stock/generic/stock_news.png'),
(9, 3, 0, 0, 36, 0, 0, '-1,0,2,9,4,5,6,8,10,11,12,13', 1, 'Humor', 'Pon aquí todos tus chistes, historias y paranoias divertidas.', 0, 0, 0, 0, 0, 0, 0, '', '', 'https://cdn3.iconfinder.com/data/icons/humano2/48x48/emotes/face-laugh.png'),
(12, 3, 0, 0, 37, 0, 0, '-1,0,2,9,4,5,6,8,10,11,12,13', 1, 'Cine y TV', 'El mundo del celuloide y la caja tonta, al descubierto.', 0, 0, 0, 0, 0, 0, 0, '', '', 'https://cdn1.iconfinder.com/data/icons/CrystalClear/48x48/devices/tv.png'),
(10, 3, 0, 0, 38, 0, 0, '-1,0,2,9,4,5,6,8,10,11,12,13', 1, 'Deportes y motor', '<b>Deporte:</b> actualidad deportiva sobre fútbol, baloncesto, tenis, etc.<br>\r\n<b>Motor:</b> subforo para los apasionados del motor y competición sobre ruedas.', 0, 0, 0, 0, 0, 0, 0, '', '', 'https://cdn4.iconfinder.com/data/icons/SOPHISTIQUE/education_icons/png/48/recreation.png'),
(14, 3, 0, 0, 39, 0, 0, '-1,0,2,9,4,5,6,8,10,11,12,13', 1, 'Ciencia y ecología', 'Hablemos sobre la vertiente más natural y sostenible de la vida.', 0, 0, 0, 0, 0, 0, 0, '', '', 'https://cdn0.iconfinder.com/data/icons/Free-Icons-Shimmer-01-Creative-Freedom/48/recycle.png'),
(16, 3, 0, 0, 40, 0, 0, '-1,0,2,9,4,5,6,8,10,11,12,13', 1, 'Arte', 'Si tienes una vena artística, aquí te sentirás como en casa.', 0, 0, 0, 0, 0, 0, 0, '', '', 'https://cdn4.iconfinder.com/data/icons/SUPERVISTA/graphics/png/48/palette.png'),
(17, 4, 0, 0, 41, 0, 0, '-1,0,2,9,4,5,6,8,10,11,12,13', 1, 'Hardware &amp; Software', '<b>Hardware:</b> procesadores, tarjetas, monitores, accesorios, componentes...<br>\r\n<b>Software:</b> utilidades, drivers y mucho más.', 0, 0, 0, 0, 0, 0, 0, '', '', 'https://cdn4.iconfinder.com/data/icons/VISTA/computer_gadgets/png/48/desktop_computer.png'),
(25, 4, 1, 17, 42, 0, 0, '-1,0,2,9,4,5,6,8,10,11,12,13', 1, 'Hardware', '', 0, 0, 0, 0, 0, 0, 0, '', '', ''),
(29, 4, 1, 17, 43, 0, 0, '-1,0,2,9,10,11,12,13', 1, 'Software', '', 0, 0, 0, 0, 0, 0, 0, '', '', ''),
(21, 4, 0, 0, 44, 0, 0, '-1,0,2,9,4,5,6,8,10,11,12,13', 1, 'Sistemas Operativos', 'Windows, GNU/Linux, Mac Os, Android, y demás...', 0, 0, 0, 0, 0, 0, 0, '', '', 'https://cdn0.iconfinder.com/data/icons/yooicons_set01_socialbookmarks/48/social_windows_button.png'),
(46, 4, 1, 21, 45, 0, 0, '-1,0,2,9,10,11,12,13', 1, 'Windows', '', 0, 0, 0, 0, 0, 0, 0, '', '', ''),
(47, 4, 1, 21, 46, 0, 0, '-1,0,2,9,10,11,12,13', 1, 'GNU/Linux', '', 0, 0, 0, 0, 0, 0, 0, '', '', ''),
(48, 4, 1, 21, 47, 0, 0, '-1,0,2,9,10,11,12,13', 1, 'Mac Os', '', 0, 0, 0, 0, 0, 0, 0, '', '', ''),
(49, 4, 1, 21, 48, 0, 0, '-1,0,2,9,10,11,12,13', 1, 'Android', '', 0, 0, 0, 0, 0, 0, 0, '', '', ''),
(24, 4, 0, 0, 49, 0, 0, '-1,0,2,9,4,5,6,8,10,11,12,13', 1, 'Diseño Gráfico', '<b>¿Eres GFX o tienes afición por el Photoshop?</b> Postea aquí todas tus creaciones.', 0, 0, 0, 0, 0, 0, 0, '', '', 'https://cdn4.iconfinder.com/data/icons/X-Mac/web_design/png/48/graphic_design.png'),
(45, 4, 0, 0, 50, 0, 0, '-1,0,2,9,10,11,12,13', 1, 'Consolas', 'Todo sobre los creadores de Microsoft, Nintendo y Sony. Más algunos no tan conocidos como son los <b>emuladores</b>.', 0, 0, 0, 0, 0, 0, 0, '', '', 'https://cdn3.iconfinder.com/data/icons/iconshock_vista_consoles/png/48/console4.png'),
(57, 4, 1, 45, 51, 0, 0, '-1,0,2,9,10,11,12,13', 1, 'PC', '', 0, 0, 0, 0, 0, 0, 0, '', '', ''),
(53, 4, 1, 45, 52, 0, 0, '-1,0,2,9,10,11,12,13', 1, 'Xbox: One, 360', '', 0, 0, 0, 0, 0, 0, 0, '', '', ''),
(54, 4, 1, 45, 53, 0, 0, '-1,0,2,9,10,11,12,13', 1, 'PS X: 1, 2, 3, 4, Vita', '', 0, 0, 0, 0, 0, 0, 0, '', '', ''),
(55, 4, 1, 45, 54, 0, 0, '-1,0,2,9,10,11,12,13', 1, 'Wii U', '', 0, 0, 0, 0, 0, 0, 0, '', '', ''),
(58, 4, 1, 45, 55, 0, 0, '-1,0,2,9,10,11,12,13', 1, 'Nintendo: 64, DS Lite, DSi, 3DS', '', 0, 0, 0, 0, 0, 0, 0, '', '', ''),
(56, 4, 1, 45, 56, 0, 0, '-1,0,2,9,10,11,12,13', 1, 'Retro Gaming', '', 0, 0, 0, 0, 0, 0, 0, '', '', ''),
(60, 4, 1, 45, 57, 0, 0, '-1,0,2,9,10,11,12,13', 1, 'Emuladores', '', 0, 0, 0, 0, 0, 0, 0, '', '', ''),
(20, 4, 0, 0, 58, 0, 0, '-1,0,2,9,4,5,6,8,10,11,12,13', 1, 'Móviles &amp; Telefonía', 'Consultas sobre móviles y telefonía.', 0, 0, 0, 0, 0, 0, 0, '', '', 'https://cdn3.iconfinder.com/data/icons/prettyoffice/48/contact.png'),
(18, 4, 0, 0, 59, 0, 0, '-1,0,2,9,4,5,6,8,10,11,12,13', 1, 'Redes e Internet', 'Preguntas y respuestas sobre conexiones, información técnica y locuras de la red. Todo lo que necesitas saber sobre la red.', 0, 0, 0, 0, 0, 0, 0, '', '', 'https://cdn1.iconfinder.com/data/icons/glaze/48x48/filesystems/network.png'),
(22, 4, 0, 0, 60, 0, 0, '-1,0,2,9,4,5,6,8,10,11,12,13', 1, 'Programación', 'Todos los lenguajes desde cmd hasta c++, pasando por php, html, js, .net, asp, actionscript, java, mysql , etc.', 0, 0, 0, 0, 0, 0, 0, '', '', 'http://cdn.assets.sites.launchrocketship.com/9d77b262-f903-4dd1-81a8-ff5909387a0c/files/a36edd2e-1437-4645-87db-a80e09904f1b/code-icon.png'),
(34, 4, 1, 22, 61, 0, 0, '-1,0,2,9,10,11,12,13', 1, 'Desarrollo Web', '', 0, 0, 0, 0, 0, 0, 0, '', '', ''),
(35, 4, 2, 34, 62, 0, 0, '-1,0,2,9,10,11,12,13', 1, 'PHP', '', 0, 0, 0, 0, 0, 0, 0, '', '', ''),
(36, 4, 2, 34, 63, 0, 0, '-1,0,2,9,10,11,12,13', 1, 'Bases de Datos', '', 0, 0, 0, 0, 0, 0, 0, '', '', ''),
(37, 4, 1, 22, 64, 0, 0, '-1,0,2,9,10,11,12,13', 1, 'Programación general', '', 0, 0, 0, 0, 0, 0, 0, '', '', ''),
(38, 4, 2, 37, 65, 0, 0, '-1,0,2,9,10,11,12,13', 1, 'Java', '', 0, 0, 0, 0, 0, 0, 0, '', '', ''),
(39, 4, 2, 37, 66, 0, 0, '-1,0,2,9,10,11,12,13', 1, 'ASM', '', 0, 0, 0, 0, 0, 0, 0, '', '', ''),
(40, 4, 2, 37, 67, 0, 0, '-1,0,2,9,10,11,12,13', 1, 'Delphi', '', 0, 0, 0, 0, 0, 0, 0, '', '', ''),
(59, 4, 1, 22, 68, 0, 0, '-1,0,2,9,10,11,12,13', 1, 'Scripting', '', 0, 0, 0, 0, 0, 0, 0, '', '', ''),
(42, 4, 1, 22, 69, 0, 0, '-1,0,2,9,10,11,12,13', 1, '.NET', '', 0, 0, 0, 0, 0, 0, 0, '', '', ''),
(43, 4, 1, 22, 70, 0, 0, '-1,0,2,9,10,11,12,13', 1, 'Visual Basic', '', 0, 0, 0, 0, 0, 0, 0, '', '', ''),
(44, 4, 1, 22, 71, 6, 6, '-1,0,2,9,10,11,12,13', 1, 'Programación C / C++', '', 1, 1, 0, 0, 0, 0, 0, '', '', ''),
(41, 4, 1, 22, 72, 0, 0, '-1,0,2,9,10,11,12,13', 1, 'Ejercicios', '', 0, 0, 0, 0, 0, 0, 0, '', '', ''),
(19, 4, 0, 0, 73, 0, 0, '-1,0,2,9,4,5,6,8,10,11,12,13', 1, 'Hacking, Seguridad, Bugs, Diseño de Malware', 'Dudas y tutoriales sobre Hacking, Seguridad, Bugs, Diseño de Malware, y más.', 0, 0, 0, 0, 0, 0, 0, '', '', 'https://cdn3.iconfinder.com/data/icons/humano2/48x48/apps/guake.png'),
(30, 4, 1, 19, 74, 0, 0, '-1,0,2,9,10,11,12,13', 1, 'Hacking', '', 0, 0, 0, 0, 0, 0, 0, '', '', ''),
(31, 4, 1, 19, 75, 0, 0, '-1,0,2,9,10,11,12,13', 1, 'Seguridad', '', 0, 0, 0, 0, 0, 0, 0, '', '', ''),
(32, 4, 1, 19, 76, 0, 0, '-1,0,2,9,10,11,12,13', 1, 'Bugs &amp; Exploits', '', 0, 0, 0, 0, 0, 0, 0, '', '', ''),
(33, 4, 1, 19, 77, 0, 0, '-1,0,2,9,10,11,12,13', 1, 'Análisis y diseño de Malware', '', 0, 0, 0, 0, 0, 0, 0, '', '', ''),
(61, 4, 0, 0, 78, 0, 0, '-1,0,2,9,10,11,12,13', 1, 'Electrónica', 'Guías y dudas sobre electrónica.', 0, 0, 0, 0, 0, 0, 0, '', '', 'https://cdn1.iconfinder.com/data/icons/nuvola2/48x48/actions/laptop_power.png'),
(26, 5, 0, 0, 79, 0, 0, '', 1, 'Foro Administradores', '', 0, 0, 0, 0, 0, 0, 0, '', '', ''),
(27, 5, 0, 0, 80, 0, 0, '2', 1, 'Foro Moderadores', '', 0, 0, 0, 0, 0, 0, 0, '', '', ''),
(28, 5, 0, 0, 81, 0, 0, '2,9,13,12,11', 1, 'Foro Colaboradores', '', 0, 0, 0, 0, 0, 0, 0, '', '', ''),
(23, 5, 0, 0, 82, 40, 40, '2,9,12,13,11', 1, 'Papelera del foro', 'Papelera', 4, 4, 0, 0, 0, 0, 0, '', '', 'https://cdn1.iconfinder.com/data/icons/humility-icons-MERGE/48x48/filesystems/gnome-fs-trash-empty.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `smf_ikillboard_permissions`
--

CREATE TABLE IF NOT EXISTS `smf_ikillboard_permissions` (
  `id_group` smallint(5) NOT NULL DEFAULT '0',
  `id_profile` smallint(5) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(30) NOT NULL DEFAULT '',
  `add_deny` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_group`,`id_profile`,`permission`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `smf_ikillboard_permissions`
--

INSERT INTO `smf_ikillboard_permissions` (`id_group`, `id_profile`, `permission`, `add_deny`) VALUES
(9, 2, 'mark_notify', 1),
(9, 2, 'mark_any_notify', 1),
(9, 2, 'lock_own', 1),
(9, 2, 'delete_own', 1),
(9, 1, 'lock_own', 1),
(9, 1, 'remove_own', 1),
(9, 1, 'delete_own', 1),
(9, 1, 'modify_own', 1),
(9, 1, 'report_any', 1),
(0, 1, 'post_reply_any', 1),
(0, 1, 'post_new', 1),
(2, 1, 'moderate_board', 1),
(2, 1, 'post_new', 1),
(2, 1, 'post_reply_own', 1),
(2, 1, 'post_reply_any', 1),
(2, 1, 'post_unapproved_topics', 1),
(2, 1, 'post_unapproved_replies_any', 1),
(2, 1, 'post_unapproved_replies_own', 1),
(2, 1, 'post_unapproved_attachments', 1),
(2, 1, 'poll_post', 1),
(2, 1, 'poll_add_any', 1),
(2, 1, 'poll_remove_any', 1),
(2, 1, 'poll_view', 1),
(2, 1, 'poll_vote', 1),
(2, 1, 'poll_lock_any', 1),
(2, 1, 'poll_edit_any', 1),
(2, 1, 'report_any', 1),
(2, 1, 'lock_own', 1),
(2, 1, 'send_topic', 1),
(2, 1, 'mark_any_notify', 1),
(2, 1, 'mark_notify', 1),
(2, 1, 'delete_own', 1),
(2, 1, 'modify_own', 1),
(2, 1, 'make_sticky', 1),
(2, 1, 'lock_any', 1),
(2, 1, 'remove_any', 1),
(2, 1, 'move_any', 1),
(2, 1, 'merge_any', 1),
(2, 1, 'split_any', 1),
(2, 1, 'delete_any', 1),
(2, 1, 'modify_any', 1),
(2, 1, 'approve_posts', 1),
(2, 1, 'post_attachment', 1),
(2, 1, 'view_attachments', 1),
(3, 1, 'delete_any', 1),
(3, 1, 'remove_any', 1),
(3, 1, 'remove_own', 1),
(3, 1, 'post_reply_any', 1),
(3, 1, 'merge_any', 1),
(3, 1, 'split_any', 1),
(3, 1, 'send_topic', 1),
(3, 1, 'make_sticky', 1),
(3, 1, 'move_own', 1),
(3, 1, 'move_any', 1),
(3, 1, 'lock_own', 1),
(3, 1, 'lock_any', 1),
(3, 1, 'post_unapproved_replies_any', 1),
(3, 1, 'post_unapproved_replies_own', 1),
(3, 1, 'modify_own', 1),
(3, 1, 'delete_replies', 1),
(3, 1, 'post_reply_own', 1),
(3, 1, 'post_unapproved_topics', 1),
(3, 1, 'delete_own', 1),
(3, 1, 'modify_replies', 1),
(3, 1, 'post_new', 1),
(-1, 2, 'poll_view', 1),
(0, 2, 'remove_own', 1),
(0, 2, 'lock_own', 1),
(0, 2, 'mark_any_notify', 1),
(0, 2, 'mark_notify', 1),
(0, 2, 'modify_own', 1),
(0, 2, 'poll_view', 1),
(0, 2, 'poll_vote', 1),
(0, 2, 'post_attachment', 1),
(0, 2, 'post_new', 1),
(0, 2, 'post_reply_any', 1),
(0, 2, 'post_reply_own', 1),
(0, 2, 'post_unapproved_topics', 1),
(0, 2, 'post_unapproved_replies_any', 1),
(0, 2, 'post_unapproved_replies_own', 1),
(0, 2, 'post_unapproved_attachments', 1),
(0, 2, 'delete_own', 1),
(0, 2, 'report_any', 1),
(0, 2, 'send_topic', 1),
(0, 2, 'view_attachments', 1),
(2, 2, 'moderate_board', 1),
(2, 2, 'post_new', 1),
(2, 2, 'post_reply_own', 1),
(2, 2, 'post_reply_any', 1),
(2, 2, 'post_unapproved_topics', 1),
(2, 2, 'post_unapproved_replies_any', 1),
(2, 2, 'post_unapproved_replies_own', 1),
(2, 2, 'post_unapproved_attachments', 1),
(2, 2, 'poll_post', 1),
(2, 2, 'poll_add_any', 1),
(2, 2, 'poll_remove_any', 1),
(2, 2, 'poll_view', 1),
(2, 2, 'poll_vote', 1),
(2, 2, 'poll_lock_any', 1),
(2, 2, 'poll_edit_any', 1),
(2, 2, 'report_any', 1),
(2, 2, 'lock_own', 1),
(2, 2, 'send_topic', 1),
(2, 2, 'mark_any_notify', 1),
(2, 2, 'mark_notify', 1),
(2, 2, 'delete_own', 1),
(2, 2, 'modify_own', 1),
(2, 2, 'make_sticky', 1),
(2, 2, 'lock_any', 1),
(2, 2, 'remove_any', 1),
(2, 2, 'move_any', 1),
(2, 2, 'merge_any', 1),
(2, 2, 'split_any', 1),
(2, 2, 'delete_any', 1),
(2, 2, 'modify_any', 1),
(2, 2, 'approve_posts', 1),
(2, 2, 'post_attachment', 1),
(2, 2, 'view_attachments', 1),
(3, 2, 'moderate_board', 1),
(3, 2, 'post_new', 1),
(3, 2, 'post_reply_own', 1),
(3, 2, 'post_reply_any', 1),
(3, 2, 'post_unapproved_topics', 1),
(3, 2, 'post_unapproved_replies_any', 1),
(3, 2, 'post_unapproved_replies_own', 1),
(3, 2, 'post_unapproved_attachments', 1),
(3, 2, 'poll_post', 1),
(3, 2, 'poll_add_any', 1),
(3, 2, 'poll_remove_any', 1),
(3, 2, 'poll_view', 1),
(3, 2, 'poll_vote', 1),
(3, 2, 'poll_lock_any', 1),
(3, 2, 'poll_edit_any', 1),
(3, 2, 'report_any', 1),
(3, 2, 'lock_own', 1),
(3, 2, 'send_topic', 1),
(3, 2, 'mark_any_notify', 1),
(3, 2, 'mark_notify', 1),
(3, 2, 'delete_own', 1),
(3, 2, 'modify_own', 1),
(3, 2, 'make_sticky', 1),
(3, 2, 'lock_any', 1),
(3, 2, 'remove_any', 1),
(3, 2, 'move_any', 1),
(3, 2, 'merge_any', 1),
(3, 2, 'split_any', 1),
(3, 2, 'delete_any', 1),
(3, 2, 'modify_any', 1),
(3, 2, 'approve_posts', 1),
(3, 2, 'post_attachment', 1),
(3, 2, 'view_attachments', 1),
(-1, 3, 'poll_view', 1),
(0, 3, 'remove_own', 1),
(0, 3, 'lock_own', 1),
(0, 3, 'mark_any_notify', 1),
(0, 3, 'mark_notify', 1),
(0, 3, 'modify_own', 1),
(0, 3, 'poll_view', 1),
(0, 3, 'poll_vote', 1),
(0, 3, 'post_attachment', 1),
(0, 3, 'post_reply_any', 1),
(0, 3, 'post_reply_own', 1),
(0, 3, 'post_unapproved_replies_any', 1),
(0, 3, 'post_unapproved_replies_own', 1),
(0, 3, 'post_unapproved_attachments', 1),
(0, 3, 'delete_own', 1),
(0, 3, 'report_any', 1),
(0, 3, 'send_topic', 1),
(0, 3, 'view_attachments', 1),
(2, 3, 'moderate_board', 1),
(2, 3, 'post_new', 1),
(2, 3, 'post_reply_own', 1),
(2, 3, 'post_reply_any', 1),
(2, 3, 'post_unapproved_topics', 1),
(2, 3, 'post_unapproved_replies_any', 1),
(2, 3, 'post_unapproved_replies_own', 1),
(2, 3, 'post_unapproved_attachments', 1),
(2, 3, 'poll_post', 1),
(2, 3, 'poll_add_any', 1),
(2, 3, 'poll_remove_any', 1),
(2, 3, 'poll_view', 1),
(2, 3, 'poll_vote', 1),
(2, 3, 'poll_lock_any', 1),
(2, 3, 'poll_edit_any', 1),
(2, 3, 'report_any', 1),
(2, 3, 'lock_own', 1),
(2, 3, 'send_topic', 1),
(2, 3, 'mark_any_notify', 1),
(2, 3, 'mark_notify', 1),
(2, 3, 'delete_own', 1),
(2, 3, 'modify_own', 1),
(2, 3, 'make_sticky', 1),
(2, 3, 'lock_any', 1),
(2, 3, 'remove_any', 1),
(2, 3, 'move_any', 1),
(2, 3, 'merge_any', 1),
(2, 3, 'split_any', 1),
(2, 3, 'delete_any', 1),
(2, 3, 'modify_any', 1),
(2, 3, 'approve_posts', 1),
(2, 3, 'post_attachment', 1),
(2, 3, 'view_attachments', 1),
(3, 3, 'moderate_board', 1),
(3, 3, 'post_new', 1),
(3, 3, 'post_reply_own', 1),
(3, 3, 'post_reply_any', 1),
(3, 3, 'post_unapproved_topics', 1),
(3, 3, 'post_unapproved_replies_any', 1),
(3, 3, 'post_unapproved_replies_own', 1),
(3, 3, 'post_unapproved_attachments', 1),
(3, 3, 'poll_post', 1),
(3, 3, 'poll_add_any', 1),
(3, 3, 'poll_remove_any', 1),
(3, 3, 'poll_view', 1),
(3, 3, 'poll_vote', 1),
(3, 3, 'poll_lock_any', 1),
(3, 3, 'poll_edit_any', 1),
(3, 3, 'report_any', 1),
(3, 3, 'lock_own', 1),
(3, 3, 'send_topic', 1),
(3, 3, 'mark_any_notify', 1),
(3, 3, 'mark_notify', 1),
(3, 3, 'delete_own', 1),
(3, 3, 'modify_own', 1),
(3, 3, 'make_sticky', 1),
(3, 3, 'lock_any', 1),
(3, 3, 'remove_any', 1),
(3, 3, 'move_any', 1),
(3, 3, 'merge_any', 1),
(3, 3, 'split_any', 1),
(3, 3, 'delete_any', 1),
(3, 3, 'modify_any', 1),
(3, 3, 'approve_posts', 1),
(3, 3, 'post_attachment', 1),
(3, 3, 'view_attachments', 1),
(-1, 4, 'poll_view', 1),
(0, 4, 'mark_any_notify', 1),
(0, 4, 'mark_notify', 1),
(0, 4, 'poll_view', 1),
(0, 4, 'poll_vote', 1),
(0, 4, 'report_any', 1),
(0, 4, 'send_topic', 1),
(0, 4, 'view_attachments', 1),
(2, 4, 'moderate_board', 1),
(2, 4, 'post_new', 1),
(2, 4, 'post_reply_own', 1),
(2, 4, 'post_reply_any', 1),
(2, 4, 'post_unapproved_topics', 1),
(2, 4, 'post_unapproved_replies_any', 1),
(2, 4, 'post_unapproved_replies_own', 1),
(2, 4, 'post_unapproved_attachments', 1),
(2, 4, 'poll_post', 1),
(2, 4, 'poll_add_any', 1),
(2, 4, 'poll_remove_any', 1),
(2, 4, 'poll_view', 1),
(2, 4, 'poll_vote', 1),
(2, 4, 'poll_lock_any', 1),
(2, 4, 'poll_edit_any', 1),
(2, 4, 'report_any', 1),
(2, 4, 'lock_own', 1),
(2, 4, 'send_topic', 1),
(2, 4, 'mark_any_notify', 1),
(2, 4, 'mark_notify', 1),
(2, 4, 'delete_own', 1),
(2, 4, 'modify_own', 1),
(2, 4, 'make_sticky', 1),
(2, 4, 'lock_any', 1),
(2, 4, 'remove_any', 1),
(2, 4, 'move_any', 1),
(2, 4, 'merge_any', 1),
(2, 4, 'split_any', 1),
(2, 4, 'delete_any', 1),
(2, 4, 'modify_any', 1),
(2, 4, 'approve_posts', 1),
(2, 4, 'post_attachment', 1),
(2, 4, 'view_attachments', 1),
(3, 4, 'moderate_board', 1),
(3, 4, 'post_new', 1),
(3, 4, 'post_reply_own', 1),
(3, 4, 'post_reply_any', 1),
(3, 4, 'post_unapproved_topics', 1),
(3, 4, 'post_unapproved_replies_any', 1),
(3, 4, 'post_unapproved_replies_own', 1),
(3, 4, 'post_unapproved_attachments', 1),
(3, 4, 'poll_post', 1),
(3, 4, 'poll_add_any', 1),
(3, 4, 'poll_remove_any', 1),
(3, 4, 'poll_view', 1),
(3, 4, 'poll_vote', 1),
(3, 4, 'poll_lock_any', 1),
(3, 4, 'poll_edit_any', 1),
(3, 4, 'report_any', 1),
(3, 4, 'lock_own', 1),
(3, 4, 'send_topic', 1),
(3, 4, 'mark_any_notify', 1),
(3, 4, 'mark_notify', 1),
(3, 4, 'delete_own', 1),
(3, 4, 'modify_own', 1),
(3, 4, 'make_sticky', 1),
(3, 4, 'lock_any', 1),
(3, 4, 'remove_any', 1),
(3, 4, 'move_any', 1),
(3, 4, 'merge_any', 1),
(3, 4, 'split_any', 1),
(3, 4, 'delete_any', 1),
(3, 4, 'modify_any', 1),
(3, 4, 'approve_posts', 1),
(3, 4, 'post_attachment', 1),
(3, 4, 'view_attachments', 1),
(9, 2, 'modify_own', 1),
(9, 2, 'poll_view', 1),
(9, 2, 'poll_vote', 1),
(9, 2, 'post_attachment', 1),
(9, 2, 'post_new', 1),
(9, 2, 'post_reply_any', 1),
(9, 2, 'post_reply_own', 1),
(9, 2, 'post_unapproved_attachments', 1),
(9, 2, 'post_unapproved_replies_any', 1),
(9, 2, 'post_unapproved_replies_own', 1),
(9, 2, 'post_unapproved_topics', 1),
(9, 2, 'remove_own', 1),
(9, 2, 'report_any', 1),
(9, 2, 'send_topic', 1),
(9, 2, 'view_attachments', 1),
(9, 3, 'delete_own', 1),
(9, 3, 'lock_own', 1),
(9, 3, 'mark_any_notify', 1),
(9, 3, 'mark_notify', 1),
(9, 3, 'modify_own', 1),
(9, 3, 'poll_view', 1),
(9, 3, 'poll_vote', 1),
(9, 3, 'post_attachment', 1),
(9, 3, 'post_reply_any', 1),
(9, 3, 'post_reply_own', 1),
(9, 3, 'post_unapproved_attachments', 1),
(9, 3, 'post_unapproved_replies_any', 1),
(9, 3, 'post_unapproved_replies_own', 1),
(9, 3, 'remove_own', 1),
(9, 3, 'report_any', 1),
(9, 3, 'send_topic', 1),
(9, 3, 'view_attachments', 1),
(9, 4, 'mark_any_notify', 1),
(9, 4, 'mark_notify', 1),
(9, 4, 'poll_view', 1),
(9, 4, 'poll_vote', 1),
(9, 4, 'report_any', 1),
(9, 4, 'send_topic', 1),
(9, 4, 'view_attachments', 1),
(0, 1, 'send_topic', 1),
(9, 1, 'mark_any_notify', 1),
(9, 1, 'poll_remove_own', 1),
(9, 1, 'poll_view', 1),
(9, 1, 'poll_vote', 1),
(9, 1, 'poll_post', 1),
(9, 1, 'move_own', 1),
(9, 1, 'poll_add_own', 1),
(9, 1, 'poll_edit_own', 1),
(9, 1, 'poll_lock_own', 1),
(0, 1, 'modify_own', 1),
(3, 1, 'modify_any', 1),
(3, 1, 'report_any', 1),
(3, 1, 'moderate_board', 1),
(3, 1, 'approve_posts', 1),
(3, 1, 'poll_view', 1),
(3, 1, 'poll_vote', 1),
(3, 1, 'poll_post', 1),
(3, 1, 'poll_add_own', 1),
(3, 1, 'poll_add_any', 1),
(3, 1, 'poll_edit_own', 1),
(3, 1, 'poll_edit_any', 1),
(3, 1, 'poll_lock_own', 1),
(3, 1, 'poll_lock_any', 1),
(3, 1, 'poll_remove_own', 1),
(3, 1, 'poll_remove_any', 1),
(3, 1, 'mark_any_notify', 1),
(3, 1, 'mark_notify', 1),
(3, 1, 'view_attachments', 1),
(3, 1, 'post_unapproved_attachments', 1),
(3, 1, 'post_attachment', 1),
(9, 1, 'view_attachments', 1),
(9, 1, 'mark_notify', 1),
(9, 1, 'post_unapproved_topics', 1),
(9, 1, 'post_reply_own', 1),
(9, 1, 'post_reply_any', 1),
(12, 3, 'post_unapproved_attachments', 1),
(0, 1, 'post_reply_own', 1),
(10, 1, 'poll_view', 1),
(10, 1, 'post_unapproved_replies_any', 1),
(10, 1, 'post_unapproved_replies_own', 1),
(10, 1, 'post_unapproved_topics', 1),
(10, 2, 'delete_own', 1),
(10, 2, 'lock_own', 1),
(10, 2, 'mark_any_notify', 1),
(10, 2, 'mark_notify', 1),
(10, 2, 'modify_own', 1),
(10, 2, 'poll_view', 1),
(10, 2, 'poll_vote', 1),
(10, 2, 'post_attachment', 1),
(10, 2, 'post_new', 1),
(10, 2, 'post_reply_any', 1),
(10, 2, 'post_reply_own', 1),
(10, 2, 'post_unapproved_attachments', 1),
(10, 2, 'post_unapproved_replies_any', 1),
(10, 2, 'post_unapproved_replies_own', 1),
(10, 2, 'post_unapproved_topics', 1),
(10, 2, 'remove_own', 1),
(10, 2, 'report_any', 1),
(10, 2, 'send_topic', 1),
(10, 2, 'view_attachments', 1),
(10, 3, 'delete_own', 1),
(10, 3, 'lock_own', 1),
(10, 3, 'mark_any_notify', 1),
(10, 3, 'mark_notify', 1),
(10, 3, 'modify_own', 1),
(10, 3, 'poll_view', 1),
(10, 3, 'poll_vote', 1),
(10, 3, 'post_attachment', 1),
(10, 3, 'post_reply_any', 1),
(10, 3, 'post_reply_own', 1),
(10, 3, 'post_unapproved_attachments', 1),
(10, 3, 'post_unapproved_replies_any', 1),
(10, 3, 'post_unapproved_replies_own', 1),
(10, 3, 'remove_own', 1),
(10, 3, 'report_any', 1),
(10, 3, 'send_topic', 1),
(10, 3, 'view_attachments', 1),
(10, 4, 'mark_any_notify', 1),
(10, 4, 'mark_notify', 1),
(10, 4, 'poll_view', 1),
(10, 4, 'poll_vote', 1),
(10, 4, 'report_any', 1),
(10, 4, 'send_topic', 1),
(10, 4, 'view_attachments', 1),
(11, 3, 'post_unapproved_attachments', 1),
(12, 3, 'post_reply_own', 1),
(11, 3, 'post_reply_own', 1),
(12, 3, 'post_reply_any', 1),
(11, 3, 'post_reply_any', 1),
(11, 3, 'post_attachment', 1),
(12, 3, 'post_attachment', 1),
(12, 3, 'poll_vote', 1),
(11, 3, 'poll_vote', 1),
(12, 3, 'poll_view', 1),
(11, 3, 'poll_view', 1),
(12, 3, 'modify_own', 1),
(11, 3, 'modify_own', 1),
(12, 3, 'mark_notify', 1),
(11, 3, 'mark_notify', 1),
(12, 3, 'mark_any_notify', 1),
(11, 3, 'mark_any_notify', 1),
(12, 3, 'lock_own', 1),
(11, 3, 'lock_own', 1),
(12, 3, 'delete_own', 1),
(11, 3, 'delete_own', 1),
(12, 2, 'view_attachments', 1),
(11, 2, 'view_attachments', 1),
(12, 2, 'send_topic', 1),
(11, 2, 'send_topic', 1),
(12, 2, 'report_any', 1),
(11, 2, 'report_any', 1),
(12, 2, 'remove_own', 1),
(11, 2, 'remove_own', 1),
(12, 2, 'post_unapproved_topics', 1),
(11, 2, 'post_unapproved_topics', 1),
(12, 2, 'post_unapproved_replies_own', 1),
(11, 2, 'post_unapproved_replies_own', 1),
(12, 2, 'post_unapproved_replies_any', 1),
(11, 2, 'post_unapproved_replies_any', 1),
(12, 2, 'post_unapproved_attachments', 1),
(11, 2, 'post_unapproved_attachments', 1),
(12, 2, 'post_reply_own', 1),
(11, 2, 'post_reply_own', 1),
(12, 2, 'post_reply_any', 1),
(11, 2, 'post_reply_any', 1),
(12, 2, 'post_new', 1),
(11, 2, 'post_new', 1),
(12, 2, 'post_attachment', 1),
(11, 2, 'post_attachment', 1),
(12, 2, 'poll_vote', 1),
(11, 2, 'poll_vote', 1),
(12, 2, 'poll_view', 1),
(11, 2, 'poll_view', 1),
(11, 2, 'modify_own', 1),
(12, 2, 'modify_own', 1),
(12, 2, 'mark_notify', 1),
(11, 2, 'mark_notify', 1),
(12, 2, 'mark_any_notify', 1),
(11, 2, 'mark_any_notify', 1),
(12, 2, 'lock_own', 1),
(11, 2, 'lock_own', 1),
(12, 2, 'delete_own', 1),
(11, 2, 'delete_own', 1),
(11, 1, 'delete_own', 1),
(12, 1, 'delete_own', 1),
(11, 1, 'lock_own', 1),
(12, 1, 'lock_own', 1),
(13, 1, 'view_attachments', 1),
(13, 1, 'mark_notify', 1),
(13, 1, 'mark_any_notify', 1),
(13, 1, 'poll_remove_own', 1),
(13, 1, 'poll_lock_own', 1),
(13, 1, 'poll_edit_own', 1),
(13, 1, 'poll_add_own', 1),
(13, 1, 'poll_post', 1),
(13, 1, 'poll_vote', 1),
(13, 1, 'poll_view', 1),
(13, 1, 'report_any', 1),
(13, 1, 'modify_own', 1),
(13, 1, 'delete_own', 1),
(13, 1, 'announce_topic', 1),
(11, 1, 'mark_any_notify', 1),
(13, 1, 'delete_replies', 1),
(13, 1, 'modify_replies', 1),
(13, 1, 'remove_own', 1),
(13, 1, 'lock_own', 1),
(13, 1, 'move_own', 1),
(13, 1, 'send_topic', 1),
(13, 1, 'post_reply_any', 1),
(13, 1, 'post_reply_own', 1),
(13, 1, 'post_unapproved_replies_any', 1),
(13, 1, 'post_unapproved_replies_own', 1),
(13, 1, 'post_new', 1),
(13, 2, 'delete_own', 1),
(13, 2, 'lock_own', 1),
(13, 2, 'mark_any_notify', 1),
(13, 2, 'mark_notify', 1),
(13, 2, 'modify_own', 1),
(13, 2, 'poll_view', 1),
(13, 2, 'poll_vote', 1),
(13, 2, 'post_attachment', 1),
(13, 2, 'post_new', 1),
(13, 2, 'post_reply_any', 1),
(13, 2, 'post_reply_own', 1),
(13, 2, 'post_unapproved_attachments', 1),
(13, 2, 'post_unapproved_replies_any', 1),
(13, 2, 'post_unapproved_replies_own', 1),
(13, 2, 'post_unapproved_topics', 1),
(13, 2, 'remove_own', 1),
(13, 2, 'report_any', 1),
(13, 2, 'send_topic', 1),
(13, 2, 'view_attachments', 1),
(13, 3, 'delete_own', 1),
(13, 3, 'lock_own', 1),
(13, 3, 'mark_any_notify', 1),
(13, 3, 'mark_notify', 1),
(13, 3, 'modify_own', 1),
(13, 3, 'poll_view', 1),
(13, 3, 'poll_vote', 1),
(13, 3, 'post_attachment', 1),
(13, 3, 'post_reply_any', 1),
(13, 3, 'post_reply_own', 1),
(13, 3, 'post_unapproved_attachments', 1),
(13, 3, 'post_unapproved_replies_any', 1),
(13, 3, 'post_unapproved_replies_own', 1),
(13, 3, 'remove_own', 1),
(13, 3, 'report_any', 1),
(13, 3, 'send_topic', 1),
(13, 3, 'view_attachments', 1),
(13, 4, 'mark_any_notify', 1),
(13, 4, 'mark_notify', 1),
(13, 4, 'poll_view', 1),
(13, 4, 'poll_vote', 1),
(13, 4, 'report_any', 1),
(13, 4, 'send_topic', 1),
(13, 4, 'view_attachments', 1),
(12, 1, 'mark_any_notify', 1),
(11, 1, 'mark_notify', 1),
(12, 1, 'mark_notify', 1),
(11, 1, 'modify_own', 1),
(12, 1, 'modify_own', 1),
(11, 1, 'move_own', 1),
(12, 1, 'move_own', 1),
(11, 1, 'poll_add_own', 1),
(12, 1, 'poll_add_own', 1),
(11, 1, 'poll_edit_own', 1),
(12, 1, 'poll_edit_own', 1),
(11, 1, 'poll_lock_own', 1),
(12, 1, 'poll_lock_own', 1),
(11, 1, 'poll_post', 1),
(12, 1, 'poll_post', 1),
(11, 1, 'poll_remove_own', 1),
(12, 1, 'poll_remove_own', 1),
(11, 1, 'poll_view', 1),
(12, 1, 'poll_view', 1),
(11, 1, 'poll_vote', 1),
(12, 1, 'poll_vote', 1),
(11, 1, 'post_reply_any', 1),
(12, 1, 'post_reply_any', 1),
(11, 1, 'post_reply_own', 1),
(12, 1, 'post_reply_own', 1),
(11, 1, 'post_unapproved_topics', 1),
(12, 1, 'post_unapproved_topics', 1),
(11, 1, 'remove_own', 1),
(12, 1, 'remove_own', 1),
(11, 1, 'report_any', 1),
(12, 1, 'report_any', 1),
(11, 1, 'view_attachments', 1),
(12, 1, 'view_attachments', 1),
(11, 3, 'post_unapproved_replies_any', 1),
(12, 3, 'post_unapproved_replies_any', 1),
(11, 3, 'post_unapproved_replies_own', 1),
(12, 3, 'post_unapproved_replies_own', 1),
(11, 3, 'remove_own', 1),
(12, 3, 'remove_own', 1),
(11, 3, 'report_any', 1),
(12, 3, 'report_any', 1),
(11, 3, 'send_topic', 1),
(12, 3, 'send_topic', 1),
(11, 3, 'view_attachments', 1),
(12, 3, 'view_attachments', 1),
(11, 4, 'mark_any_notify', 1),
(12, 4, 'mark_any_notify', 1),
(11, 4, 'mark_notify', 1),
(12, 4, 'mark_notify', 1),
(11, 4, 'poll_view', 1),
(12, 4, 'poll_view', 1),
(11, 4, 'poll_vote', 1),
(12, 4, 'poll_vote', 1),
(11, 4, 'report_any', 1),
(12, 4, 'report_any', 1),
(11, 4, 'send_topic', 1),
(12, 4, 'send_topic', 1),
(11, 4, 'view_attachments', 1),
(12, 4, 'view_attachments', 1),
(0, 1, 'report_any', 1),
(0, 1, 'poll_view', 1),
(0, 1, 'poll_vote', 1),
(0, 1, 'mark_any_notify', 1),
(0, 1, 'mark_notify', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `smf_ikillcalendar`
--

CREATE TABLE IF NOT EXISTS `smf_ikillcalendar` (
  `id_event` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `start_date` date NOT NULL DEFAULT '0001-01-01',
  `end_date` date NOT NULL DEFAULT '0001-01-01',
  `id_board` smallint(5) unsigned NOT NULL DEFAULT '0',
  `id_topic` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `id_member` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_event`),
  KEY `start_date` (`start_date`),
  KEY `end_date` (`end_date`),
  KEY `topic` (`id_topic`,`id_member`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `smf_ikillcalendar_holidays`
--

CREATE TABLE IF NOT EXISTS `smf_ikillcalendar_holidays` (
  `id_holiday` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `event_date` date NOT NULL DEFAULT '0001-01-01',
  `title` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id_holiday`),
  KEY `event_date` (`event_date`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=116 ;

--
-- Volcado de datos para la tabla `smf_ikillcalendar_holidays`
--

INSERT INTO `smf_ikillcalendar_holidays` (`id_holiday`, `event_date`, `title`) VALUES
(1, '0004-01-01', 'New Year''s'),
(2, '0004-12-25', 'Christmas'),
(3, '0004-02-14', 'Valentine''s Day'),
(4, '0004-03-17', 'St. Patrick''s Day'),
(5, '0004-04-01', 'April Fools'),
(6, '0004-04-22', 'Earth Day'),
(7, '0004-10-24', 'United Nations Day'),
(8, '0004-10-31', 'Halloween'),
(9, '2010-05-09', 'Mother''s Day'),
(10, '2011-05-08', 'Mother''s Day'),
(11, '2012-05-13', 'Mother''s Day'),
(12, '2013-05-12', 'Mother''s Day'),
(13, '2014-05-11', 'Mother''s Day'),
(14, '2015-05-10', 'Mother''s Day'),
(15, '2016-05-08', 'Mother''s Day'),
(16, '2017-05-14', 'Mother''s Day'),
(17, '2018-05-13', 'Mother''s Day'),
(18, '2019-05-12', 'Mother''s Day'),
(19, '2020-05-10', 'Mother''s Day'),
(20, '2008-06-15', 'Father''s Day'),
(21, '2009-06-21', 'Father''s Day'),
(22, '2010-06-20', 'Father''s Day'),
(23, '2011-06-19', 'Father''s Day'),
(24, '2012-06-17', 'Father''s Day'),
(25, '2013-06-16', 'Father''s Day'),
(26, '2014-06-15', 'Father''s Day'),
(27, '2015-06-21', 'Father''s Day'),
(28, '2016-06-19', 'Father''s Day'),
(29, '2017-06-18', 'Father''s Day'),
(30, '2018-06-17', 'Father''s Day'),
(31, '2019-06-16', 'Father''s Day'),
(32, '2020-06-21', 'Father''s Day'),
(33, '2010-06-21', 'Summer Solstice'),
(34, '2011-06-21', 'Summer Solstice'),
(35, '2012-06-20', 'Summer Solstice'),
(36, '2013-06-21', 'Summer Solstice'),
(37, '2014-06-21', 'Summer Solstice'),
(38, '2015-06-21', 'Summer Solstice'),
(39, '2016-06-20', 'Summer Solstice'),
(40, '2017-06-20', 'Summer Solstice'),
(41, '2018-06-21', 'Summer Solstice'),
(42, '2019-06-21', 'Summer Solstice'),
(43, '2020-06-20', 'Summer Solstice'),
(44, '2010-03-20', 'Vernal Equinox'),
(45, '2011-03-20', 'Vernal Equinox'),
(46, '2012-03-20', 'Vernal Equinox'),
(47, '2013-03-20', 'Vernal Equinox'),
(48, '2014-03-20', 'Vernal Equinox'),
(49, '2015-03-20', 'Vernal Equinox'),
(50, '2016-03-19', 'Vernal Equinox'),
(51, '2017-03-20', 'Vernal Equinox'),
(52, '2018-03-20', 'Vernal Equinox'),
(53, '2019-03-20', 'Vernal Equinox'),
(54, '2020-03-19', 'Vernal Equinox'),
(55, '2010-12-21', 'Winter Solstice'),
(56, '2011-12-22', 'Winter Solstice'),
(57, '2012-12-21', 'Winter Solstice'),
(58, '2013-12-21', 'Winter Solstice'),
(59, '2014-12-21', 'Winter Solstice'),
(60, '2015-12-21', 'Winter Solstice'),
(61, '2016-12-21', 'Winter Solstice'),
(62, '2017-12-21', 'Winter Solstice'),
(63, '2018-12-21', 'Winter Solstice'),
(64, '2019-12-21', 'Winter Solstice'),
(65, '2020-12-21', 'Winter Solstice'),
(66, '2010-09-22', 'Autumnal Equinox'),
(67, '2011-09-23', 'Autumnal Equinox'),
(68, '2012-09-22', 'Autumnal Equinox'),
(69, '2013-09-22', 'Autumnal Equinox'),
(70, '2014-09-22', 'Autumnal Equinox'),
(71, '2015-09-23', 'Autumnal Equinox'),
(72, '2016-09-22', 'Autumnal Equinox'),
(73, '2017-09-22', 'Autumnal Equinox'),
(74, '2018-09-22', 'Autumnal Equinox'),
(75, '2019-09-23', 'Autumnal Equinox'),
(76, '2020-09-22', 'Autumnal Equinox'),
(77, '0004-07-04', 'Independence Day'),
(78, '0004-05-05', 'Cinco de Mayo'),
(79, '0004-06-14', 'Flag Day'),
(80, '0004-11-11', 'Veterans Day'),
(81, '0004-02-02', 'Groundhog Day'),
(82, '2010-11-25', 'Thanksgiving'),
(83, '2011-11-24', 'Thanksgiving'),
(84, '2012-11-22', 'Thanksgiving'),
(85, '2013-11-21', 'Thanksgiving'),
(86, '2014-11-20', 'Thanksgiving'),
(87, '2015-11-26', 'Thanksgiving'),
(88, '2016-11-24', 'Thanksgiving'),
(89, '2017-11-23', 'Thanksgiving'),
(90, '2018-11-22', 'Thanksgiving'),
(91, '2019-11-21', 'Thanksgiving'),
(92, '2020-11-26', 'Thanksgiving'),
(93, '2010-05-31', 'Memorial Day'),
(94, '2011-05-30', 'Memorial Day'),
(95, '2012-05-28', 'Memorial Day'),
(96, '2013-05-27', 'Memorial Day'),
(97, '2014-05-26', 'Memorial Day'),
(98, '2015-05-25', 'Memorial Day'),
(99, '2016-05-30', 'Memorial Day'),
(100, '2017-05-29', 'Memorial Day'),
(101, '2018-05-28', 'Memorial Day'),
(102, '2019-05-27', 'Memorial Day'),
(103, '2020-05-25', 'Memorial Day'),
(104, '2010-09-06', 'Labor Day'),
(105, '2011-09-05', 'Labor Day'),
(106, '2012-09-03', 'Labor Day'),
(107, '2013-09-09', 'Labor Day'),
(108, '2014-09-08', 'Labor Day'),
(109, '2015-09-07', 'Labor Day'),
(110, '2016-09-05', 'Labor Day'),
(111, '2017-09-04', 'Labor Day'),
(112, '2018-09-03', 'Labor Day'),
(113, '2019-09-09', 'Labor Day'),
(114, '2020-09-07', 'Labor Day'),
(115, '0004-06-06', 'D-Day');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `smf_ikillcategories`
--

CREATE TABLE IF NOT EXISTS `smf_ikillcategories` (
  `id_cat` tinyint(4) unsigned NOT NULL AUTO_INCREMENT,
  `cat_order` tinyint(4) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `can_collapse` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_cat`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Volcado de datos para la tabla `smf_ikillcategories`
--

INSERT INTO `smf_ikillcategories` (`id_cat`, `cat_order`, `name`, `can_collapse`) VALUES
(1, 0, 'Foro NexusPlayers!', 1),
(2, 1, 'Entretenimiento', 1),
(3, 5, 'Temas generales', 1),
(4, 6, 'Tecnología', 1),
(5, 7, 'Foro privado', 1),
(6, 2, 'Zona Gamer', 1),
(7, 3, 'GFX &amp; VFX', 1),
(8, 4, 'Zona Yotubera', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `smf_ikillcollapsed_categories`
--

CREATE TABLE IF NOT EXISTS `smf_ikillcollapsed_categories` (
  `id_cat` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `id_member` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_cat`,`id_member`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `smf_ikillcustom_fields`
--

CREATE TABLE IF NOT EXISTS `smf_ikillcustom_fields` (
  `id_field` smallint(5) NOT NULL AUTO_INCREMENT,
  `col_name` varchar(12) NOT NULL DEFAULT '',
  `field_name` varchar(40) NOT NULL DEFAULT '',
  `field_desc` varchar(255) NOT NULL DEFAULT '',
  `field_type` varchar(8) NOT NULL DEFAULT 'text',
  `field_length` smallint(5) NOT NULL DEFAULT '255',
  `field_options` text NOT NULL,
  `mask` varchar(255) NOT NULL DEFAULT '',
  `show_reg` tinyint(3) NOT NULL DEFAULT '0',
  `show_display` tinyint(3) NOT NULL DEFAULT '0',
  `show_profile` varchar(20) NOT NULL DEFAULT 'forumprofile',
  `private` tinyint(3) NOT NULL DEFAULT '0',
  `active` tinyint(3) NOT NULL DEFAULT '1',
  `bbc` tinyint(3) NOT NULL DEFAULT '0',
  `can_search` tinyint(3) NOT NULL DEFAULT '0',
  `default_value` varchar(255) NOT NULL DEFAULT '',
  `enclose` text NOT NULL,
  `placement` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_field`),
  UNIQUE KEY `col_name` (`col_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `smf_ikillcustom_fields`
--

INSERT INTO `smf_ikillcustom_fields` (`id_field`, `col_name`, `field_name`, `field_desc`, `field_type`, `field_length`, `field_options`, `mask`, `show_reg`, `show_display`, `show_profile`, `private`, `active`, `bbc`, `can_search`, `default_value`, `enclose`, `placement`) VALUES
(1, 'cust_refere', 'Referente', 'Pon aquí el nick del usuario que te ha hecho conocer el Foro. Ej: Ikillnukes&lt;br&gt;\r\nEn caso de que no lo sepas, deja esta casilla en blanco.', 'text', 255, '', 'nohtml', 1, 0, 'none', 1, 0, 0, 1, '', '', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `smf_ikillgroup_moderators`
--

CREATE TABLE IF NOT EXISTS `smf_ikillgroup_moderators` (
  `id_group` smallint(5) unsigned NOT NULL DEFAULT '0',
  `id_member` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_group`,`id_member`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `smf_ikilllog_actions`
--

CREATE TABLE IF NOT EXISTS `smf_ikilllog_actions` (
  `id_action` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_log` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `log_time` int(10) unsigned NOT NULL DEFAULT '0',
  `id_member` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ip` char(16) NOT NULL DEFAULT '',
  `action` varchar(30) NOT NULL DEFAULT '',
  `id_board` smallint(5) unsigned NOT NULL DEFAULT '0',
  `id_topic` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_msg` int(10) unsigned NOT NULL DEFAULT '0',
  `extra` text NOT NULL,
  PRIMARY KEY (`id_action`),
  KEY `id_log` (`id_log`),
  KEY `log_time` (`log_time`),
  KEY `id_member` (`id_member`),
  KEY `id_board` (`id_board`),
  KEY `id_msg` (`id_msg`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=114 ;

--
-- Volcado de datos para la tabla `smf_ikilllog_actions`
--

INSERT INTO `smf_ikilllog_actions` (`id_action`, `id_log`, `log_time`, `id_member`, `ip`, `action`, `id_board`, `id_topic`, `id_msg`, `extra`) VALUES
(1, 1, 1376919776, 1, '2.138.62.77', 'approve_topic', 3, 2, 0, 'a:2:{s:7:"subject";s:44:"Cómo cerrar una puerta cuando está abierta";s:6:"member";s:1:"2";}'),
(2, 1, 1376919970, 1, '2.138.62.77', 'move', 6, 2, 0, 'a:1:{s:10:"board_from";s:1:"3";}'),
(3, 1, 1376920775, 1, '2.138.62.77', 'remove', 3, 3, 0, 'a:2:{s:7:"subject";s:6:"sdfsdf";s:6:"member";s:1:"2";}'),
(4, 1, 1376921085, 1, '2.138.62.77', 'delete', 3, 4, 0, 'a:2:{s:7:"subject";s:7:"sdfgsdf";s:6:"member";s:1:"2";}'),
(5, 1, 1376922304, 1, '2.138.62.77', 'remove', 23, 0, 0, 'a:3:{s:12:"old_topic_id";i:4;s:7:"subject";s:7:"sdfgsdf";s:6:"member";s:1:"2";}'),
(6, 1, 1376922335, 1, '2.138.62.77', 'delete', 23, 3, 0, 'a:2:{s:7:"subject";s:6:"sdfsdf";s:6:"member";s:1:"2";}'),
(7, 3, 1376922532, 1, '2.138.62.77', 'edited_group', 0, 0, 0, 'a:1:{s:5:"group";s:13:"Colaboradores";}'),
(8, 3, 1376922671, 1, '2.138.62.77', 'add_group', 0, 0, 0, 'a:1:{s:5:"group";s:5:"Troll";}'),
(9, 3, 1376922744, 1, '2.138.62.77', 'edited_group', 0, 0, 0, 'a:1:{s:5:"group";s:5:"Troll";}'),
(10, 3, 1376922883, 1, '2.138.62.77', 'install_package', 0, 0, 0, 'a:2:{s:7:"package";s:18:"Karma based groups";s:7:"version";s:3:"1.0";}'),
(11, 3, 1376923215, 1, '2.138.62.77', 'uninstall_package', 0, 0, 0, 'a:2:{s:7:"package";s:18:"Karma based groups";s:7:"version";s:3:"1.0";}'),
(12, 3, 1376923405, 1, '2.138.62.77', 'edited_group', 0, 0, 0, 'a:1:{s:5:"group";s:5:"Troll";}'),
(13, 3, 1376923432, 1, '2.138.62.77', 'edited_group', 0, 0, 0, 'a:1:{s:5:"group";s:5:"Troll";}'),
(14, 3, 1376925701, 1, '2.138.62.77', 'edited_group', 0, 0, 0, 'a:1:{s:5:"group";s:13:"Colaboradores";}'),
(15, 3, 1376925769, 1, '2.138.62.77', 'edited_group', 0, 0, 0, 'a:1:{s:5:"group";s:16:"Global Moderator";}'),
(16, 3, 1376925831, 1, '2.138.62.77', 'edited_group', 0, 0, 0, 'a:1:{s:5:"group";s:6:"Newbie";}'),
(17, 3, 1376925841, 1, '2.138.62.77', 'edited_group', 0, 0, 0, 'a:1:{s:5:"group";s:10:"Jr. Member";}'),
(18, 3, 1376925849, 1, '2.138.62.77', 'edited_group', 0, 0, 0, 'a:1:{s:5:"group";s:11:"Full Member";}'),
(19, 3, 1376925856, 1, '2.138.62.77', 'edited_group', 0, 0, 0, 'a:1:{s:5:"group";s:10:"Sr. Member";}'),
(20, 3, 1376925900, 1, '2.138.62.77', 'edited_group', 0, 0, 0, 'a:1:{s:5:"group";s:11:"Hero Member";}'),
(21, 3, 1376926751, 1, '2.138.62.77', 'install_package', 0, 0, 0, 'a:2:{s:7:"package";s:14:"YouTube BBCode";s:7:"version";s:3:"2.6";}'),
(22, 3, 1376926793, 1, '2.138.62.77', 'edited_group', 0, 0, 0, 'a:1:{s:5:"group";s:13:"Colaboradores";}'),
(23, 3, 1376926838, 1, '2.138.62.77', 'edited_group', 0, 0, 0, 'a:1:{s:5:"group";s:13:"Colaboradores";}'),
(24, 3, 1376927028, 1, '2.138.62.77', 'add_group', 0, 0, 0, 'a:1:{s:5:"group";s:4:"VIPS";}'),
(25, 3, 1376927175, 1, '2.138.62.77', 'edited_group', 0, 0, 0, 'a:1:{s:5:"group";s:4:"VIPS";}'),
(26, 3, 1376927200, 1, '2.138.62.77', 'edited_group', 0, 0, 0, 'a:1:{s:5:"group";s:4:"VIPS";}'),
(27, 3, 1376927264, 1, '2.138.62.77', 'add_group', 0, 0, 0, 'a:1:{s:5:"group";s:10:"Recruiters";}'),
(28, 3, 1376927315, 1, '2.138.62.77', 'edited_group', 0, 0, 0, 'a:1:{s:5:"group";s:10:"Recruiters";}'),
(29, 3, 1376927327, 1, '2.138.62.77', 'edited_group', 0, 0, 0, 'a:1:{s:5:"group";s:4:"VIPS";}'),
(30, 3, 1376927350, 1, '2.138.62.77', 'edited_group', 0, 0, 0, 'a:1:{s:5:"group";s:13:"Colaboradores";}'),
(31, 3, 1376927494, 1, '2.138.62.77', 'edit_board', 2, 0, 0, 'a:0:{}'),
(32, 3, 1376928772, 1, '2.138.62.77', 'add_group', 0, 0, 0, 'a:1:{s:5:"group";s:4:"Wiki";}'),
(33, 3, 1376928797, 1, '2.138.62.77', 'edited_group', 0, 0, 0, 'a:1:{s:5:"group";s:4:"Wiki";}'),
(34, 3, 1376928810, 1, '2.138.62.77', 'edited_group', 0, 0, 0, 'a:1:{s:5:"group";s:10:"Recruiters";}'),
(35, 3, 1376928822, 1, '2.138.62.77', 'edited_group', 0, 0, 0, 'a:1:{s:5:"group";s:10:"Recruiters";}'),
(36, 3, 1376928830, 1, '2.138.62.77', 'edited_group', 0, 0, 0, 'a:1:{s:5:"group";s:4:"Wiki";}'),
(37, 3, 1376928838, 1, '2.138.62.77', 'edited_group', 0, 0, 0, 'a:1:{s:5:"group";s:4:"VIPS";}'),
(38, 2, 1376929016, 2, '2.138.62.77', 'id_group', 0, 0, 0, 'a:3:{s:8:"previous";s:0:"";s:3:"new";s:4:"Wiki";s:10:"applicator";s:1:"1";}'),
(39, 3, 1376929319, 1, '2.138.62.77', 'edited_group', 0, 0, 0, 'a:1:{s:5:"group";s:10:"Recruiters";}'),
(40, 3, 1376929326, 1, '2.138.62.77', 'edited_group', 0, 0, 0, 'a:1:{s:5:"group";s:4:"VIPS";}'),
(41, 3, 1376929347, 1, '2.138.62.77', 'edited_group', 0, 0, 0, 'a:1:{s:5:"group";s:4:"Wiki";}'),
(42, 3, 1376929735, 1, '2.138.62.77', 'edited_group', 0, 0, 0, 'a:1:{s:5:"group";s:10:"Recruiters";}'),
(43, 3, 1376929772, 1, '2.138.62.77', 'edited_group', 0, 0, 0, 'a:1:{s:5:"group";s:10:"Recruiters";}'),
(44, 3, 1376929783, 1, '2.138.62.77', 'edited_group', 0, 0, 0, 'a:1:{s:5:"group";s:4:"VIPS";}'),
(45, 3, 1376929836, 1, '2.138.62.77', 'edit_board', 1, 0, 0, 'a:0:{}'),
(46, 2, 1377086889, 9, '217.217.5.214', 'personal_text', 0, 0, 0, 'a:3:{s:8:"previous";s:0:"";s:3:"new";s:37:"Vamosss!!! Transformación!!! SSY3 :D";s:10:"applicator";s:1:"9";}'),
(47, 1, 1377095024, 1, '79.151.232.143', 'lock', 1, 3, 0, 'a:0:{}'),
(48, 3, 1377097507, 1, '79.151.232.143', 'install_package', 0, 0, 0, 'a:2:{s:7:"package";s:16:"Referrals System";s:7:"version";s:3:"3.1";}'),
(49, 1, 1377099485, 1, '79.151.232.143', 'sticky', 1, 4, 0, 'a:0:{}'),
(50, 3, 1377100339, 0, '79.151.232.143', 'delete_member', 0, 0, 0, 'a:3:{s:6:"member";s:2:"20";s:4:"name";s:4:"test";s:12:"member_acted";s:4:"test";}'),
(51, 3, 1377100781, 0, '79.151.232.143', 'delete_member', 0, 0, 0, 'a:3:{s:6:"member";s:2:"21";s:4:"name";s:4:"test";s:12:"member_acted";s:4:"test";}'),
(52, 3, 1377101964, 1, '79.151.232.143', 'install_package', 0, 0, 0, 'a:2:{s:7:"package";s:32:"Group Color in Posts and Profile";s:7:"version";s:3:"1.4";}'),
(53, 3, 1377183237, 1, '79.151.232.143', 'add_cat', 0, 0, 0, 'a:1:{s:7:"catname";s:10:"Zona Gamer";}'),
(54, 3, 1377183276, 1, '79.151.232.143', 'add_board', 62, 0, 0, 'a:0:{}'),
(55, 3, 1377183318, 1, '79.151.232.143', 'add_board', 63, 0, 0, 'a:0:{}'),
(56, 3, 1377183394, 1, '79.151.232.143', 'add_board', 64, 0, 0, 'a:0:{}'),
(57, 3, 1377183409, 1, '79.151.232.143', 'edit_board', 64, 0, 0, 'a:0:{}'),
(58, 3, 1377183518, 1, '79.151.232.143', 'add_board', 65, 0, 0, 'a:0:{}'),
(59, 3, 1377183558, 1, '79.151.232.143', 'add_board', 66, 0, 0, 'a:0:{}'),
(60, 3, 1377183581, 1, '79.151.232.143', 'add_board', 67, 0, 0, 'a:0:{}'),
(61, 3, 1377183619, 1, '79.151.232.143', 'edit_board', 65, 0, 0, 'a:0:{}'),
(62, 3, 1377183720, 1, '79.151.232.143', 'add_cat', 0, 0, 0, 'a:1:{s:7:"catname";s:13:"GFX &amp; VFX";}'),
(63, 3, 1377183967, 1, '79.151.232.143', 'add_board', 68, 0, 0, 'a:0:{}'),
(64, 3, 1377183996, 1, '79.151.232.143', 'add_board', 69, 0, 0, 'a:0:{}'),
(65, 3, 1377184043, 1, '79.151.232.143', 'add_board', 70, 0, 0, 'a:0:{}'),
(66, 3, 1377184060, 1, '79.151.232.143', 'add_board', 71, 0, 0, 'a:0:{}'),
(67, 3, 1377184076, 1, '79.151.232.143', 'add_board', 72, 0, 0, 'a:0:{}'),
(68, 3, 1377184099, 1, '79.151.232.143', 'add_board', 73, 0, 0, 'a:0:{}'),
(69, 3, 1377184121, 1, '79.151.232.143', 'add_board', 74, 0, 0, 'a:0:{}'),
(70, 3, 1377184246, 1, '79.151.232.143', 'edit_board', 74, 0, 0, 'a:0:{}'),
(71, 3, 1377184331, 1, '79.151.232.143', 'edit_board', 70, 0, 0, 'a:0:{}'),
(72, 3, 1377184372, 1, '79.151.232.143', 'edit_board', 72, 0, 0, 'a:0:{}'),
(73, 3, 1377184406, 1, '79.151.232.143', 'add_board', 75, 0, 0, 'a:0:{}'),
(74, 3, 1377184439, 1, '79.151.232.143', 'add_cat', 0, 0, 0, 'a:1:{s:7:"catname";s:13:"Zona Yotubera";}'),
(75, 3, 1377184472, 1, '79.151.232.143', 'edit_cat', 0, 0, 0, 'a:1:{s:7:"catname";s:13:"Zona Yotubera";}'),
(76, 3, 1377184610, 1, '79.151.232.143', 'add_board', 76, 0, 0, 'a:0:{}'),
(77, 3, 1377184629, 1, '79.151.232.143', 'add_board', 77, 0, 0, 'a:0:{}'),
(78, 3, 1377184660, 1, '79.151.232.143', 'add_board', 78, 0, 0, 'a:0:{}'),
(79, 3, 1377184694, 1, '79.151.232.143', 'add_board', 79, 0, 0, 'a:0:{}'),
(80, 3, 1377184773, 1, '79.151.232.143', 'add_board', 80, 0, 0, 'a:0:{}'),
(81, 3, 1377184804, 1, '79.151.232.143', 'edit_board', 7, 0, 0, 'a:0:{}'),
(82, 3, 1377184823, 1, '79.151.232.143', 'edit_board', 79, 0, 0, 'a:0:{}'),
(83, 3, 1377184893, 1, '79.151.232.143', 'add_board', 81, 0, 0, 'a:0:{}'),
(84, 3, 1377184912, 1, '79.151.232.143', 'add_board', 82, 0, 0, 'a:0:{}'),
(85, 3, 1377184934, 1, '79.151.232.143', 'add_board', 83, 0, 0, 'a:0:{}'),
(86, 3, 1377184955, 1, '79.151.232.143', 'add_board', 84, 0, 0, 'a:0:{}'),
(87, 3, 1377184975, 1, '79.151.232.143', 'add_board', 85, 0, 0, 'a:0:{}'),
(88, 3, 1377185070, 1, '79.151.232.143', 'edit_board', 76, 0, 0, 'a:0:{}'),
(89, 3, 1377185093, 1, '79.151.232.143', 'edit_board', 78, 0, 0, 'a:0:{}'),
(90, 3, 1377185111, 1, '79.151.232.143', 'edit_board', 85, 0, 0, 'a:0:{}'),
(91, 3, 1377185219, 1, '79.151.232.143', 'edit_board', 68, 0, 0, 'a:0:{}'),
(92, 3, 1377185288, 1, '79.151.232.143', 'edit_board', 75, 0, 0, 'a:0:{}'),
(93, 3, 1377185307, 1, '79.151.232.143', 'edit_board', 69, 0, 0, 'a:0:{}'),
(94, 3, 1377185332, 1, '79.151.232.143', 'edit_board', 71, 0, 0, 'a:0:{}'),
(95, 3, 1377185345, 1, '79.151.232.143', 'edit_board', 70, 0, 0, 'a:0:{}'),
(96, 3, 1377185361, 1, '79.151.232.143', 'edit_board', 72, 0, 0, 'a:0:{}'),
(97, 3, 1377185403, 1, '79.151.232.143', 'edit_board', 84, 0, 0, 'a:0:{}'),
(98, 1, 1377185538, 1, '79.151.232.143', 'move', 63, 8, 0, 'a:1:{s:10:"board_from";s:1:"7";}'),
(99, 1, 1377187217, 1, '79.151.232.143', 'sticky', 1, 9, 0, 'a:0:{}'),
(100, 1, 1377375619, 1, '79.151.232.143', 'ban', 0, 0, 0, 'a:2:{s:5:"email";s:23:"helloimspam@hotmail.com";s:3:"new";i:1;}'),
(101, 1, 1377375619, 1, '79.151.232.143', 'ban', 0, 0, 0, 'a:2:{s:6:"member";s:2:"54";s:3:"new";i:1;}'),
(102, 1, 1377375657, 1, '79.151.232.143', 'delete', 5, 15, 0, 'a:2:{s:7:"subject";s:4:"SPAM";s:6:"member";s:2:"54";}'),
(103, 1, 1377375667, 1, '79.151.232.143', 'delete', 5, 11, 0, 'a:2:{s:7:"subject";s:4:"SPAM";s:6:"member";s:2:"54";}'),
(104, 3, 1377375704, 1, '79.151.232.143', 'delete_member', 0, 0, 0, 'a:3:{s:6:"member";s:2:"54";s:4:"name";s:5:"spamx";s:12:"member_acted";s:10:"Ikillnukes";}'),
(105, 1, 1377375746, 1, '79.151.232.143', 'delete', 23, 12, 0, 'a:2:{s:7:"subject";s:4:"SPAM";s:6:"member";s:1:"0";}'),
(106, 1, 1377375755, 1, '79.151.232.143', 'delete', 23, 14, 0, 'a:2:{s:7:"subject";s:4:"SPAM";s:6:"member";s:1:"0";}'),
(107, 1, 1377375762, 1, '79.151.232.143', 'delete', 23, 13, 0, 'a:2:{s:7:"subject";s:4:"SPAM";s:6:"member";s:1:"0";}'),
(108, 1, 1377376201, 1, '79.151.232.143', 'ban', 0, 0, 0, 'a:2:{s:5:"email";s:29:"pendejosspammeros@hotmail.com";s:3:"new";i:1;}'),
(109, 1, 1377376201, 1, '79.151.232.143', 'ban', 0, 0, 0, 'a:2:{s:6:"member";s:2:"55";s:3:"new";i:1;}'),
(110, 3, 1377376286, 1, '79.151.232.143', 'delete_member', 0, 0, 0, 'a:3:{s:6:"member";s:2:"55";s:4:"name";s:6:"Jair25";s:12:"member_acted";s:10:"Ikillnukes";}'),
(111, 1, 1377376435, 1, '79.151.232.143', 'ban', 0, 0, 0, 'a:2:{s:5:"email";s:29:"suseguridadapesta@hotmail.com";s:3:"new";i:1;}'),
(112, 1, 1377376435, 1, '79.151.232.143', 'ban', 0, 0, 0, 'a:2:{s:6:"member";s:2:"56";s:3:"new";i:1;}'),
(113, 1, 1377376590, 1, '79.151.232.143', 'delete', 5, 19, 0, 'a:2:{s:7:"subject";s:3:"LEL";s:6:"member";s:2:"56";}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `smf_ikilllog_activity`
--

CREATE TABLE IF NOT EXISTS `smf_ikilllog_activity` (
  `date` date NOT NULL DEFAULT '0001-01-01',
  `hits` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topics` smallint(5) unsigned NOT NULL DEFAULT '0',
  `posts` smallint(5) unsigned NOT NULL DEFAULT '0',
  `registers` smallint(5) unsigned NOT NULL DEFAULT '0',
  `most_on` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`date`),
  KEY `most_on` (`most_on`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `smf_ikilllog_activity`
--

INSERT INTO `smf_ikilllog_activity` (`date`, `hits`, `topics`, `posts`, `registers`, `most_on`) VALUES
('2013-08-18', 0, 1, 1, 1, 3),
('2013-08-19', 0, 3, 3, 6, 10),
('2013-08-20', 0, 0, 0, 0, 1),
('2013-08-21', 0, 4, 5, 17, 39),
('2013-08-22', 0, 3, 18, 17, 25),
('2013-08-23', 0, 0, 4, 10, 13),
('2013-08-24', 0, 10, 11, 9, 22),
('2013-08-25', 0, 0, 0, 0, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `smf_ikilllog_banned`
--

CREATE TABLE IF NOT EXISTS `smf_ikilllog_banned` (
  `id_ban_log` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `id_member` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ip` char(16) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `log_time` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_ban_log`),
  KEY `log_time` (`log_time`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Volcado de datos para la tabla `smf_ikilllog_banned`
--

INSERT INTO `smf_ikilllog_banned` (`id_ban_log`, `id_member`, `ip`, `email`, `log_time`) VALUES
(1, 0, '201.165.80.217', 'helloimspam@hotmail.com', 1377375621),
(2, 0, '31.172.30.3', 'pendejosspammeros@hotmail.com', 1377376211),
(3, 0, '178.18.16.218', 'pendejosspammeros@hotmail.com', 1377376239),
(4, 0, '173.254.216.67', 'pendejosspammeros@hotmail.com', 1377376250),
(5, 56, '37.139.24.230', 'suseguridadapesta@hotmail.com', 1377376442),
(6, 56, '37.130.227.133', 'suseguridadapesta@hotmail.com', 1377376532);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `smf_ikilllog_boards`
--

CREATE TABLE IF NOT EXISTS `smf_ikilllog_boards` (
  `id_member` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_board` smallint(5) unsigned NOT NULL DEFAULT '0',
  `id_msg` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_member`,`id_board`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `smf_ikilllog_boards`
--

INSERT INTO `smf_ikilllog_boards` (`id_member`, `id_board`, `id_msg`) VALUES
(1, 1, 31),
(1, 5, 31),
(1, 25, 0),
(1, 34, 0),
(1, 35, 0),
(1, 22, 13),
(2, 2, 0),
(2, 3, 4),
(2, 21, 0),
(2, 46, 0),
(2, 61, 0),
(2, 1, 31),
(1, 2, 0),
(1, 3, 2),
(1, 6, 31),
(2, 6, 31),
(3, 5, 3),
(1, 23, 40),
(12, 19, 2),
(12, 30, 2),
(12, 24, 2),
(15, 3, 2),
(17, 24, 4),
(17, 6, 4),
(1, 24, 4),
(22, 22, 15),
(22, 44, 15),
(22, 5, 14),
(22, 1, 15),
(22, 50, 7),
(2, 5, 14),
(2, 22, 8),
(2, 44, 8),
(1, 44, 13),
(22, 7, 14),
(22, 6, 15),
(28, 7, 17),
(1, 4, 16),
(1, 7, 17),
(1, 63, 17),
(33, 1, 19),
(33, 6, 19),
(34, 1, 20),
(35, 1, 21),
(35, 63, 21),
(38, 1, 22),
(17, 1, 23),
(39, 1, 24),
(31, 3, 24),
(41, 1, 25),
(14, 1, 25),
(2, 63, 25),
(2, 23, 25),
(42, 63, 25),
(43, 1, 26),
(28, 1, 27),
(47, 63, 27),
(47, 1, 30),
(47, 62, 27),
(47, 7, 27),
(47, 22, 27),
(47, 44, 27),
(47, 59, 27),
(48, 1, 28),
(51, 1, 29),
(51, 63, 28),
(47, 5, 31),
(47, 6, 31),
(47, 15, 31),
(56, 5, 40);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `smf_ikilllog_comments`
--

CREATE TABLE IF NOT EXISTS `smf_ikilllog_comments` (
  `id_comment` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `id_member` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `member_name` varchar(80) NOT NULL DEFAULT '',
  `comment_type` varchar(8) NOT NULL DEFAULT 'warning',
  `id_recipient` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `recipient_name` varchar(255) NOT NULL DEFAULT '',
  `log_time` int(10) NOT NULL DEFAULT '0',
  `id_notice` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `counter` tinyint(3) NOT NULL DEFAULT '0',
  `body` text NOT NULL,
  PRIMARY KEY (`id_comment`),
  KEY `id_recipient` (`id_recipient`),
  KEY `log_time` (`log_time`),
  KEY `comment_type` (`comment_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `smf_ikilllog_digest`
--

CREATE TABLE IF NOT EXISTS `smf_ikilllog_digest` (
  `id_topic` mediumint(8) unsigned NOT NULL,
  `id_msg` int(10) unsigned NOT NULL,
  `note_type` varchar(10) NOT NULL DEFAULT 'post',
  `daily` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `exclude` mediumint(8) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `smf_ikilllog_digest`
--

INSERT INTO `smf_ikilllog_digest` (`id_topic`, `id_msg`, `note_type`, `daily`, `exclude`) VALUES
(2, 2, 'topic', 0, 1),
(2, 2, 'move', 0, 0),
(4, 4, 'topic', 0, 2),
(4, 4, 'remove', 0, 0),
(3, 3, 'topic', 0, 1),
(3, 3, 'lock', 0, 0),
(2, 4, 'reply', 0, 0),
(4, 5, 'topic', 0, 1),
(4, 5, 'sticky', 0, 0),
(5, 6, 'topic', 0, 22),
(6, 7, 'topic', 0, 22),
(7, 8, 'topic', 0, 2),
(6, 9, 'reply', 0, 0),
(6, 10, 'reply', 0, 0),
(7, 11, 'reply', 0, 0),
(4, 12, 'reply', 0, 0),
(4, 13, 'reply', 0, 0),
(6, 14, 'reply', 0, 0),
(2, 15, 'reply', 0, 0),
(2, 16, 'reply', 0, 0),
(8, 17, 'topic', 0, 28),
(8, 17, 'move', 0, 0),
(9, 18, 'topic', 0, 1),
(9, 18, 'sticky', 0, 0),
(9, 19, 'reply', 0, 0),
(9, 20, 'reply', 0, 0),
(9, 21, 'reply', 0, 0),
(9, 22, 'reply', 0, 0),
(9, 23, 'reply', 0, 0),
(9, 24, 'reply', 0, 0),
(9, 25, 'reply', 0, 0),
(9, 26, 'reply', 0, 0),
(9, 27, 'reply', 0, 0),
(9, 28, 'reply', 0, 0),
(9, 29, 'reply', 0, 0),
(9, 30, 'reply', 0, 0),
(10, 31, 'topic', 0, 47),
(11, 32, 'topic', 0, 54),
(12, 33, 'topic', 0, 54),
(13, 34, 'topic', 0, 54),
(14, 35, 'topic', 0, 54),
(15, 36, 'topic', 0, 54),
(16, 37, 'topic', 0, 55),
(17, 38, 'topic', 0, 55),
(18, 39, 'topic', 0, 55),
(19, 40, 'topic', 0, 56);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `smf_ikilllog_errors`
--

CREATE TABLE IF NOT EXISTS `smf_ikilllog_errors` (
  `id_error` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `log_time` int(10) unsigned NOT NULL DEFAULT '0',
  `id_member` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ip` char(16) NOT NULL DEFAULT '',
  `url` text NOT NULL,
  `message` text NOT NULL,
  `session` char(32) NOT NULL DEFAULT '',
  `error_type` char(15) NOT NULL DEFAULT 'general',
  `file` varchar(255) NOT NULL DEFAULT '',
  `line` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_error`),
  KEY `log_time` (`log_time`),
  KEY `id_member` (`id_member`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=747 ;

--
-- Volcado de datos para la tabla `smf_ikilllog_errors`
--

INSERT INTO `smf_ikilllog_errors` (`id_error`, `log_time`, `id_member`, `ip`, `url`, `message`, `session`, `error_type`, `file`, `line`) VALUES
(1, 1377039591, 2, '212.145.90.172', '?', '8: Undefined variable: user_info', 'd87e6f84b01194453f77311acbd4a673', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/inicio.template.php (body_above sub template - eval?)', 372),
(2, 1377039594, 2, '212.145.90.172', '?action=forum', '8: Undefined variable: user_info', 'd87e6f84b01194453f77311acbd4a673', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(3, 1377039607, 2, '212.145.90.172', '?', '8: Undefined variable: user_info', 'd87e6f84b01194453f77311acbd4a673', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/inicio.template.php (body_above sub template - eval?)', 372),
(4, 1377076878, 1, '79.151.232.143', '?', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/inicio.template.php (body_above sub template - eval?)', 372),
(5, 1377076882, 1, '79.151.232.143', '?action=forum', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(6, 1377077684, 1, '79.151.232.143', '?', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/inicio.template.php (body_above sub template - eval?)', 372),
(7, 1377079434, 8, '81.202.240.57', '?', '8: Undefined variable: user_info', '687c3d758b72cdee0b621f11d82f1484', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/inicio.template.php (body_above sub template - eval?)', 372),
(8, 1377079725, 8, '81.202.240.57', '?action=forum', '8: Undefined variable: user_info', '687c3d758b72cdee0b621f11d82f1484', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(9, 1377079793, 1, '79.151.232.143', '?action=forum', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(10, 1377079803, 1, '79.151.232.143', '?action=profile;u=8', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/languages/Who.spanish_es-utf8.php (body_above sub template - eval?)', 372),
(11, 1377079809, 1, '79.151.232.143', '?action=forum', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(12, 1377079986, 1, '79.151.232.143', '?action=forum', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(13, 1377081295, 1, '79.151.232.143', '?action=forum', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(14, 1377081300, 1, '79.151.232.143', '?action=who', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/languages/Who.spanish_es-utf8.php (body_above sub template - eval?)', 372),
(15, 1377081727, 1, '79.151.232.143', '?action=forum', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(16, 1377081752, 1, '79.151.232.143', '?action=admin;area=featuresettings', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/Login.template.php (body_above sub template - eval?)', 372),
(17, 1377081761, 1, '79.151.232.143', '?action=admin;area=featuresettings', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/languages/Help.spanish_es-utf8.php (body_above sub template - eval?)', 372),
(18, 1377081773, 1, '79.151.232.143', '?action=admin;area=featuresettings;sa=basic', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/languages/Help.spanish_es-utf8.php (body_above sub template - eval?)', 372),
(19, 1377081778, 1, '79.151.232.143', '?action=forum', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(20, 1377081782, 1, '79.151.232.143', '?action=who', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/languages/Who.spanish_es-utf8.php (body_above sub template - eval?)', 372),
(21, 1377081793, 1, '79.151.232.143', '?action=forum', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(22, 1377081855, 1, '79.151.232.143', '?action=forum', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(23, 1377081863, 1, '79.151.232.143', '?action=who', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/languages/Who.spanish_es-utf8.php (body_above sub template - eval?)', 372),
(24, 1377082597, 1, '79.151.232.143', '?', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/inicio.template.php (body_above sub template - eval?)', 372),
(25, 1377082613, 1, '79.151.232.143', '?', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/inicio.template.php (body_above sub template - eval?)', 372),
(26, 1377082622, 1, '79.151.232.143', '?action=forum', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(27, 1377082630, 1, '79.151.232.143', '?action=who', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/languages/Who.spanish_es-utf8.php (body_above sub template - eval?)', 372),
(28, 1377082635, 1, '79.151.232.143', '?action=forum', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(29, 1377083349, 1, '79.151.232.143', '?', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/inicio.template.php (body_above sub template - eval?)', 372),
(30, 1377084414, 1, '79.151.232.143', '?', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/inicio.template.php (body_above sub template - eval?)', 372),
(31, 1377084586, 1, '79.151.232.143', '?action=forum', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(32, 1377084814, 1, '79.151.232.143', '?action=forum', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(33, 1377085562, 1, '79.151.232.143', '?', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/inicio.template.php (body_above sub template - eval?)', 372),
(34, 1377085740, 1, '79.151.232.143', '?action=forum', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(35, 1377085742, 1, '79.151.232.143', '?action=pm', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/GenericMenu.template.php (body_above sub template - eval?)', 372),
(36, 1377085769, 1, '79.151.232.143', '?action=forum', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(37, 1377085904, 1, '79.151.232.143', '?', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/inicio.template.php (body_above sub template - eval?)', 372),
(38, 1377086313, 1, '79.151.232.143', '?', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/inicio.template.php (body_above sub template - eval?)', 372),
(39, 1377086381, 9, '217.217.5.214', '?', '8: Undefined variable: user_info', 'fe5433ac2b76bfa3242c24fd5da1cafd', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/inicio.template.php (body_above sub template - eval?)', 372),
(40, 1377086391, 9, '217.217.5.214', '?action=profile;area=forumprofile', '8: Undefined variable: user_info', 'fe5433ac2b76bfa3242c24fd5da1cafd', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/GenericMenu.template.php (body_above sub template - eval?)', 372),
(41, 1377086657, 1, '79.151.232.143', '?action=forum', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(42, 1377086786, 1, '79.151.232.143', '?action=forum', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(43, 1377086790, 1, '79.151.232.143', '?action=who', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/languages/Who.spanish_es-utf8.php (body_above sub template - eval?)', 372),
(44, 1377086800, 10, '85.86.125.231', '?', '8: Undefined variable: user_info', '95f2a9b471f00d387ee86e4a7950fb95', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/inicio.template.php (body_above sub template - eval?)', 372),
(45, 1377086803, 1, '79.151.232.143', '?action=who;sort=time;show=all;start=30', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/languages/Who.spanish_es-utf8.php (body_above sub template - eval?)', 372),
(46, 1377086808, 1, '79.151.232.143', '?action=forum', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(47, 1377086851, 1, '79.151.232.143', '?action=forum', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(48, 1377086868, 10, '85.86.125.231', '?action=forum', '8: Undefined variable: user_info', '95f2a9b471f00d387ee86e4a7950fb95', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(49, 1377086884, 1, '79.151.232.143', '?', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/inicio.template.php (body_above sub template - eval?)', 372),
(50, 1377086891, 9, '217.217.5.214', '?action=profile;area=forumprofile;updated', '8: Undefined variable: user_info', 'fe5433ac2b76bfa3242c24fd5da1cafd', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/GenericMenu.template.php (body_above sub template - eval?)', 372),
(51, 1377086958, 9, '217.217.5.214', '?', '8: Undefined variable: user_info', 'fe5433ac2b76bfa3242c24fd5da1cafd', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/inicio.template.php (body_above sub template - eval?)', 372),
(52, 1377087123, 9, '217.217.5.214', '?', '8: Undefined variable: user_info', 'fe5433ac2b76bfa3242c24fd5da1cafd', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/inicio.template.php (body_above sub template - eval?)', 372),
(53, 1377087437, 1, '79.151.232.143', '?action=forum', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(54, 1377087527, 1, '79.151.232.143', '?action=stats', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/Stats.template.php (body_above sub template - eval?)', 372),
(55, 1377087538, 1, '79.151.232.143', '?action=forum', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(56, 1377087634, 1, '79.151.232.143', '?action=who', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/languages/Who.spanish_es-utf8.php (body_above sub template - eval?)', 372),
(57, 1377087649, 1, '79.151.232.143', '?action=who;sort=time;show=all;start=30', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/languages/Who.spanish_es-utf8.php (body_above sub template - eval?)', 372),
(58, 1377087697, 1, '79.151.232.143', '?action=forum', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(59, 1377087868, 1, '79.151.232.143', '?action=forum', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(60, 1377087885, 1, '79.151.232.143', '?action=forum', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(61, 1377087931, 1, '79.151.232.143', '?action=forum', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(62, 1377087962, 11, '85.57.29.253', '?', '8: Undefined variable: user_info', 'd970be122ee2bbd5d4e117ea7b6d2020', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/inicio.template.php (body_above sub template - eval?)', 372),
(63, 1377087963, 11, '85.57.29.253', '?', '8: Undefined variable: user_info', 'd970be122ee2bbd5d4e117ea7b6d2020', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/inicio.template.php (body_above sub template - eval?)', 372),
(64, 1377088015, 11, '85.57.29.253', '?action=profile;area=forumprofile', '8: Undefined variable: user_info', 'd970be122ee2bbd5d4e117ea7b6d2020', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/GenericMenu.template.php (body_above sub template - eval?)', 372),
(65, 1377088044, 1, '79.151.232.143', '?', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/inicio.template.php (body_above sub template - eval?)', 372),
(66, 1377088044, 11, '85.57.29.253', '?action=profile;area=forumprofile;updated', '8: Undefined variable: user_info', 'd970be122ee2bbd5d4e117ea7b6d2020', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/GenericMenu.template.php (body_above sub template - eval?)', 372),
(67, 1377088049, 11, '85.57.29.253', '?', '8: Undefined variable: user_info', 'd970be122ee2bbd5d4e117ea7b6d2020', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/inicio.template.php (body_above sub template - eval?)', 372),
(68, 1377088070, 12, '79.109.200.94', '?', '8: Undefined variable: user_info', '32242123df19f598949172dbe571ba52', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/inicio.template.php (body_above sub template - eval?)', 372),
(69, 1377088076, 1, '79.151.232.143', '?action=forum', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(70, 1377088100, 1, '79.151.232.143', '?action=forum', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(71, 1377088123, 11, '85.57.29.253', '?action=profile;area=forumprofile', '8: Undefined variable: user_info', 'd970be122ee2bbd5d4e117ea7b6d2020', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/GenericMenu.template.php (body_above sub template - eval?)', 372),
(72, 1377088162, 11, '85.57.29.253', '?action=profile;area=account', '8: Undefined variable: user_info', 'd970be122ee2bbd5d4e117ea7b6d2020', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/GenericMenu.template.php (body_above sub template - eval?)', 372),
(73, 1377088173, 11, '85.57.29.253', '?', '8: Undefined variable: user_info', 'd970be122ee2bbd5d4e117ea7b6d2020', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/inicio.template.php (body_above sub template - eval?)', 372),
(74, 1377088233, 1, '79.151.232.143', '?action=forum', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(75, 1377088448, 1, '79.151.232.143', '?action=who', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/languages/Who.spanish_es-utf8.php (body_above sub template - eval?)', 372),
(76, 1377088459, 1, '79.151.232.143', '?action=forum', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(77, 1377088571, 11, '85.57.29.253', '?', '8: Undefined variable: user_info', '71b4d2fcd486ca622f62660ed3c625c5', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/inicio.template.php (body_above sub template - eval?)', 372),
(78, 1377088903, 1, '79.151.232.143', '?action=forum', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(79, 1377088924, 1, '79.151.232.143', '?', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/inicio.template.php (body_above sub template - eval?)', 372),
(80, 1377089158, 1, '79.151.232.143', '?action=forum', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(81, 1377089223, 3, '87.111.9.146', '?', '8: Undefined variable: user_info', '88975c30fb8a1f0c28ec967bc4b55f67', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/inicio.template.php (body_above sub template - eval?)', 372),
(82, 1377089425, 1, '79.151.232.143', '?action=forum', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(83, 1377089632, 12, '79.109.200.94', '?action=forum', '8: Undefined variable: user_info', '32242123df19f598949172dbe571ba52', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(84, 1377089679, 12, '79.109.200.94', '?action=unread;board=50.0;children', '8: Undefined variable: user_info', '32242123df19f598949172dbe571ba52', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/Recent.template.php (body_above sub template - eval?)', 372),
(85, 1377089758, 12, '79.109.200.94', '?action=forum', '8: Undefined variable: user_info', '32242123df19f598949172dbe571ba52', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(86, 1377089774, 12, '79.109.200.94', '?board=19.0', '8: Undefined variable: user_info', '32242123df19f598949172dbe571ba52', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/MessageIndex.template.php (body_above sub template - eval?)', 372),
(87, 1377089777, 12, '79.109.200.94', '?board=30.0', '8: Undefined variable: user_info', '32242123df19f598949172dbe571ba52', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/MessageIndex.template.php (body_above sub template - eval?)', 372),
(88, 1377089834, 12, '79.109.200.94', '?board=24.0', '8: Undefined variable: user_info', '32242123df19f598949172dbe571ba52', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/MessageIndex.template.php (body_above sub template - eval?)', 372),
(89, 1377090004, 1, '79.151.232.143', '?action=forum', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(90, 1377090083, 1, '79.151.232.143', '?action=forum', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(91, 1377090128, 13, '89.29.149.73', '?', '8: Undefined variable: user_info', '1234995480b6fa51907df4b8d6fcfe74', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/inicio.template.php (body_above sub template - eval?)', 372),
(92, 1377090170, 14, '193.153.63.86', '?', '8: Undefined variable: user_info', '16f450fd02ba34f92098d3c0403f5cca', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/inicio.template.php (body_above sub template - eval?)', 372),
(93, 1377090186, 3, '87.111.9.146', '?', '8: Undefined variable: user_info', 'fb9c8287421653faba7fc1e59d031416', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/inicio.template.php (body_above sub template - eval?)', 372),
(94, 1377090363, 1, '79.151.232.143', '?action=forum', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(95, 1377090463, 1, '79.151.232.143', '?action=forum', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(96, 1377090468, 1, '79.151.232.143', '?action=profile;u=14', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/languages/Who.spanish_es-utf8.php (body_above sub template - eval?)', 372),
(97, 1377090471, 1, '79.151.232.143', '?action=profile;u=13', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/languages/Who.spanish_es-utf8.php (body_above sub template - eval?)', 372),
(98, 1377090475, 1, '79.151.232.143', '?action=forum', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(99, 1377090503, 15, '80.58.250.74', '?', '8: Undefined variable: user_info', '4c926c3e3da563bcbcccb88b5c2fd29f', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/inicio.template.php (body_above sub template - eval?)', 372),
(100, 1377090855, 1, '79.151.232.143', '?action=forum', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(101, 1377090999, 1, '79.151.232.143', '?action=who', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/languages/Who.spanish_es-utf8.php (body_above sub template - eval?)', 372),
(102, 1377091171, 1, '79.151.232.143', '?action=forum', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(103, 1377091307, 15, '80.58.250.74', '?action=forum', '8: Undefined variable: user_info', '4c926c3e3da563bcbcccb88b5c2fd29f', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(104, 1377091338, 15, '80.58.250.74', '?board=3.0', '8: Undefined variable: user_info', '4c926c3e3da563bcbcccb88b5c2fd29f', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/MessageIndex.template.php (body_above sub template - eval?)', 372),
(105, 1377091362, 15, '80.58.250.74', '?action=pm;sa=send', '8: Undefined variable: user_info', '4c926c3e3da563bcbcccb88b5c2fd29f', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/GenericControls.template.php (body_above sub template - eval?)', 372),
(106, 1377091527, 15, '80.58.250.74', '?', '8: Undefined variable: user_info', '802758f66b5d9809510190e8629fc9d1', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/inicio.template.php (body_above sub template - eval?)', 372),
(107, 1377091576, 1, '79.151.232.143', '?action=forum', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(108, 1377091605, 1, '79.151.232.143', '?action=who', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/languages/Who.spanish_es-utf8.php (body_above sub template - eval?)', 372),
(109, 1377091683, 1, '79.151.232.143', '?action=trackip;searchip=176.31.255.89', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/GenericList.template.php (body_above sub template - eval?)', 372),
(110, 1377091688, 1, '79.151.232.143', '?action=forum', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(111, 1377091774, 1, '79.151.232.143', '?action=pm', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/GenericMenu.template.php (body_above sub template - eval?)', 372),
(112, 1377092002, 16, '212.225.139.93', '?', '8: Undefined variable: user_info', '30649b55c185ea6d10293536c724f83e', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/inicio.template.php (body_above sub template - eval?)', 372),
(113, 1377092010, 16, '212.225.139.93', '?language=spanish_es', '8: Undefined variable: user_info', '30649b55c185ea6d10293536c724f83e', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/inicio.template.php (body_above sub template - eval?)', 372),
(114, 1377092107, 16, '212.225.139.93', '?action=forum', '8: Undefined variable: user_info', '30649b55c185ea6d10293536c724f83e', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(115, 1377092121, 16, '212.225.139.93', '?', '8: Undefined variable: user_info', '30649b55c185ea6d10293536c724f83e', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/inicio.template.php (body_above sub template - eval?)', 372),
(116, 1377092404, 1, '79.151.232.143', '?action=forum', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(117, 1377092499, 1, '79.151.232.143', '?action=forum', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(118, 1377092750, 1, '79.151.232.143', '?action=forum', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(119, 1377092758, 1, '79.151.232.143', '?action=who', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/languages/Who.spanish_es-utf8.php (body_above sub template - eval?)', 372),
(120, 1377092763, 1, '79.151.232.143', '?action=forum', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(121, 1377093832, 1, '79.151.232.143', '?action=forum', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(122, 1377094111, 1, '79.151.232.143', '?action=forum', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(123, 1377094272, 1, '79.151.232.143', '?action=who', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/languages/Who.spanish_es-utf8.php (body_above sub template - eval?)', 372),
(124, 1377094282, 1, '79.151.232.143', '?action=forum', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(125, 1377094348, 1, '79.151.232.143', '?board=1.0', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/MessageIndex.template.php (body_above sub template - eval?)', 372),
(126, 1377094351, 1, '79.151.232.143', '?action=post;board=1.0', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/Post.template.php (body_above sub template - eval?)', 372),
(127, 1377094620, 1, '79.151.232.143', '?board=1.0', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/MessageIndex.template.php (body_above sub template - eval?)', 372),
(128, 1377094923, 1, '79.151.232.143', '?action=post;board=1.0', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/Post.template.php (body_above sub template - eval?)', 372),
(129, 1377094948, 1, '79.151.232.143', '?topic=3.0', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/Display.template.php (body_above sub template - eval?)', 372),
(130, 1377095024, 1, '79.151.232.143', '?topic=3.0', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/Display.template.php (body_above sub template - eval?)', 372),
(131, 1377095052, 1, '79.151.232.143', '?action=profile;area=account', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/GenericMenu.template.php (body_above sub template - eval?)', 372),
(132, 1377095129, 1, '79.151.232.143', '?action=profile;area=forumprofile;u=1', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/GenericMenu.template.php (body_above sub template - eval?)', 372),
(133, 1377095232, 1, '79.151.232.143', '?action=profile;area=forumprofile;updated', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/GenericMenu.template.php (body_above sub template - eval?)', 372),
(134, 1377095241, 1, '79.151.232.143', '?action=forum', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(135, 1377095245, 1, '79.151.232.143', '?topic=3.msg4', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/Display.template.php (body_above sub template - eval?)', 372),
(136, 1377095417, 1, '79.151.232.143', '?action=forum', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(137, 1377095420, 1, '79.151.232.143', '?action=forum', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(138, 1377095791, 1, '79.151.232.143', '?action=forum', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(139, 1377096356, 17, '87.219.89.194', '?', '8: Undefined variable: user_info', 'efc2a505ba48057f18ee1b72bc644e7c', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/inicio.template.php (body_above sub template - eval?)', 372),
(140, 1377096567, 1, '79.151.232.143', '?action=forum', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(141, 1377096574, 1, '79.151.232.143', '?action=admin;area=featuresettings', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/Login.template.php (body_above sub template - eval?)', 372),
(142, 1377096579, 1, '79.151.232.143', '?action=admin;area=featuresettings', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/languages/Help.spanish_es-utf8.php (body_above sub template - eval?)', 372),
(143, 1377096588, 1, '79.151.232.143', '?action=admin;area=featuresettings;sa=basic;d1cb485dcf=c424046adaf8cb3dc1a3e49a13406140', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/languages/Help.spanish_es-utf8.php (body_above sub template - eval?)', 372),
(144, 1377096611, 1, '79.151.232.143', '?action=admin;area=permissions;d1cb485dcf=c424046adaf8cb3dc1a3e49a13406140', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/ManagePermissions.template.php (body_above sub template - eval?)', 372),
(145, 1377096842, 1, '79.151.232.143', '?action=admin', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/languages/Admin.spanish_es-utf8.php (body_above sub template - eval?)', 372),
(146, 1377096867, 1, '79.151.232.143', '?action=admin;area=corefeatures;d1cb485dcf=c424046adaf8cb3dc1a3e49a13406140', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/languages/ManageSettings.spanish_es-utf8.php (body_above sub template - eval?)', 372),
(147, 1377096886, 1, '79.151.232.143', '?action=admin;area=corefeatures;d1cb485dcf=c424046adaf8cb3dc1a3e49a13406140', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/languages/ManageSettings.spanish_es-utf8.php (body_above sub template - eval?)', 372),
(148, 1377096947, 18, '24.154.58.224', '?', '8: Undefined variable: user_info', '6ce3fac7eb8b9381e24e4dcec50e828e', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/inicio.template.php (body_above sub template - eval?)', 372),
(149, 1377097008, 1, '79.151.232.143', '?action=admin;area=featuresettings;sa=profile;d1cb485dcf=c424046adaf8cb3dc1a3e49a13406140', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/GenericList.template.php (body_above sub template - eval?)', 372),
(150, 1377097017, 1, '79.151.232.143', '?action=admin;area=featuresettings;sa=basic;d1cb485dcf=c424046adaf8cb3dc1a3e49a13406140', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/languages/Help.spanish_es-utf8.php (body_above sub template - eval?)', 372),
(151, 1377097022, 1, '79.151.232.143', '?action=admin;area=featuresettings;sa=profile;d1cb485dcf=c424046adaf8cb3dc1a3e49a13406140', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/GenericList.template.php (body_above sub template - eval?)', 372),
(152, 1377097036, 1, '79.151.232.143', '?action=admin;area=featuresettings;sa=profileedit', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/languages/Profile.spanish_es-utf8.php (body_above sub template - eval?)', 372),
(153, 1377097131, 19, '79.148.131.201', '?', '8: Undefined variable: user_info', '3234de2eaf45e282cbb1d9a48ebb3de2', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/inicio.template.php (body_above sub template - eval?)', 372),
(154, 1377097356, 1, '79.151.232.143', '?action=admin;area=featuresettings;sa=profile', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/GenericList.template.php (body_above sub template - eval?)', 372),
(155, 1377097364, 1, '79.151.232.143', '?action=admin;area=featuresettings;sa=profileedit;fid=1', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/languages/Profile.spanish_es-utf8.php (body_above sub template - eval?)', 372),
(156, 1377097390, 1, '79.151.232.143', '?action=admin;area=featuresettings;sa=profile;d1cb485dcf=c424046adaf8cb3dc1a3e49a13406140', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/GenericList.template.php (body_above sub template - eval?)', 372),
(157, 1377097394, 1, '79.151.232.143', '?action=admin;area=featuresettings;sa=profileedit;fid=1', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/languages/Profile.spanish_es-utf8.php (body_above sub template - eval?)', 372),
(158, 1377097401, 1, '79.151.232.143', '?action=admin;area=featuresettings;sa=profile', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/GenericList.template.php (body_above sub template - eval?)', 372),
(159, 1377097404, 1, '79.151.232.143', '?action=admin;area=featuresettings;sa=profileedit;fid=1', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/languages/Profile.spanish_es-utf8.php (body_above sub template - eval?)', 372),
(160, 1377097420, 1, '79.151.232.143', '?action=admin;area=featuresettings;sa=profile', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/GenericList.template.php (body_above sub template - eval?)', 372),
(161, 1377097431, 1, '79.151.232.143', '?action=admin;area=packages', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/languages/Packages.spanish_es-utf8.php (body_above sub template - eval?)', 372),
(162, 1377097470, 1, '79.151.232.143', '?action=admin;area=packages;sa=packageget;get;d1cb485dcf=c424046adaf8cb3dc1a3e49a13406140', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/Packages.template.php (body_above sub template - eval?)', 372),
(163, 1377097484, 1, '79.151.232.143', '?action=admin;area=packages;get;sa=upload', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/languages/Packages.spanish_es-utf8.php (body_above sub template - eval?)', 372),
(164, 1377097488, 1, '79.151.232.143', '?action=admin;area=packages;sa=install;package=ReferralsSystem3.1.zip', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/languages/Packages.spanish_es-utf8.php (body_above sub template - eval?)', 372),
(165, 1377097507, 1, '79.151.232.143', '?action=admin;area=packages;sa=install2;package=ReferralsSystem3.1.zip;pid=0', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/languages/Packages.spanish_es-utf8.php (body_above sub template - eval?)', 372),
(166, 1377097514, 1, '79.151.232.143', '?action=admin;area=refferals;sa=settings', '8: Undefined index: ref_admin', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Sources/Admin.php', 208),
(167, 1377097514, 1, '79.151.232.143', '?action=admin;area=refferals;sa=settings', '8: Undefined index: ref_settings', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Sources/Admin.php', 212),
(168, 1377097514, 1, '79.151.232.143', '?action=admin;area=refferals;sa=settings', '8: Undefined index: ref_settings', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Sources/Admin.php', 219),
(169, 1377097514, 1, '79.151.232.143', '?action=admin;area=refferals;sa=settings', '8: Undefined index: ref_txt_copyrightremoval', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Sources/Admin.php', 220),
(170, 1377097514, 1, '79.151.232.143', '?action=admin;area=refferals;sa=settings', '8: Undefined index: ref_admin', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Sources/refferals2.php', 142),
(171, 1377097514, 1, '79.151.232.143', '?action=admin;area=refferals;sa=settings', '8: Undefined index: ref_admin', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Sources/refferals2.php', 146),
(172, 1377097514, 1, '79.151.232.143', '?action=admin;area=refferals;sa=settings', '8: Undefined index: ref_settings', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Sources/refferals2.php', 150),
(173, 1377097514, 1, '79.151.232.143', '?action=admin;area=refferals;sa=settings', '8: Undefined index: ref_txt_copyrightremoval', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Sources/refferals2.php', 153),
(174, 1377097514, 1, '79.151.232.143', '?action=admin;area=refferals;sa=settings', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/refferals2.template.php (body_above sub template - eval?)', 372),
(175, 1377097514, 1, '79.151.232.143', '?action=admin;area=refferals;sa=settings', '8: Undefined index: ref_admin', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/refferals2.template.php (ref_settings sub template - eval?)', 15),
(176, 1377097514, 1, '79.151.232.143', '?action=admin;area=refferals;sa=settings', '8: Undefined index: ref_showreflink', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/refferals2.template.php (ref_settings sub template - eval?)', 22),
(177, 1377097514, 1, '79.151.232.143', '?action=admin;area=refferals;sa=settings', '8: Undefined index: ref_showonpost', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/refferals2.template.php (ref_settings sub template - eval?)', 27),
(178, 1377097514, 1, '79.151.232.143', '?action=admin;area=refferals;sa=settings', '8: Undefined index: ref_trackcookiehits', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/refferals2.template.php (ref_settings sub template - eval?)', 31),
(179, 1377097514, 1, '79.151.232.143', '?action=admin;area=refferals;sa=settings', '8: Undefined index: ref_cookietrackdays', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/refferals2.template.php (ref_settings sub template - eval?)', 36),
(180, 1377097514, 1, '79.151.232.143', '?action=admin;area=refferals;sa=settings', '8: Undefined index: ref_save_settings', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/refferals2.template.php (ref_settings sub template - eval?)', 45),
(181, 1377097560, 1, '79.151.232.143', '?action=forum', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(182, 1377097578, 1, '79.151.232.143', '?action=profile;u=19', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/languages/Who.spanish_es-utf8.php (body_above sub template - eval?)', 372),
(183, 1377097578, 1, '79.151.232.143', '?action=profile;u=19', '8: Undefined index: ref_refferals', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/languages/Who.spanish_es-utf8.php (summary sub template - eval?)', 160),
(184, 1377097578, 1, '79.151.232.143', '?action=profile;u=19', '8: Undefined index: ref_refferal_link', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/languages/Who.spanish_es-utf8.php (summary sub template - eval?)', 168),
(185, 1377097582, 1, '79.151.232.143', '?action=profile;u=18', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/languages/Who.spanish_es-utf8.php (body_above sub template - eval?)', 372),
(186, 1377097582, 1, '79.151.232.143', '?action=profile;u=18', '8: Undefined index: ref_refferals', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/languages/Who.spanish_es-utf8.php (summary sub template - eval?)', 160),
(187, 1377097582, 1, '79.151.232.143', '?action=profile;u=18', '8: Undefined index: ref_refferal_link', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/languages/Who.spanish_es-utf8.php (summary sub template - eval?)', 168),
(188, 1377097588, 1, '79.151.232.143', '?action=profile;u=17', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/languages/Who.spanish_es-utf8.php (body_above sub template - eval?)', 372),
(189, 1377097588, 1, '79.151.232.143', '?action=profile;u=17', '8: Undefined index: ref_refferals', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/languages/Who.spanish_es-utf8.php (summary sub template - eval?)', 160),
(190, 1377097588, 1, '79.151.232.143', '?action=profile;u=17', '8: Undefined index: ref_refferal_link', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/languages/Who.spanish_es-utf8.php (summary sub template - eval?)', 168);
INSERT INTO `smf_ikilllog_errors` (`id_error`, `log_time`, `id_member`, `ip`, `url`, `message`, `session`, `error_type`, `file`, `line`) VALUES
(191, 1377097597, 1, '79.151.232.143', '?action=forum', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(192, 1377097794, 1, '79.151.232.143', '?action=who', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/languages/Who.spanish_es-utf8.php (body_above sub template - eval?)', 372),
(193, 1377097803, 1, '79.151.232.143', '?action=forum', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(194, 1377097924, 17, '87.219.89.194', '?action=forum', '8: Undefined variable: user_info', 'efc2a505ba48057f18ee1b72bc644e7c', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(195, 1377097930, 17, '87.219.89.194', '?language=spanish_es', '8: Undefined variable: user_info', 'efc2a505ba48057f18ee1b72bc644e7c', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/inicio.template.php (body_above sub template - eval?)', 372),
(196, 1377097935, 17, '87.219.89.194', '?action=forum', '8: Undefined variable: user_info', 'efc2a505ba48057f18ee1b72bc644e7c', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(197, 1377097966, 17, '87.219.89.194', '?board=24.0', '8: Undefined variable: user_info', 'efc2a505ba48057f18ee1b72bc644e7c', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/MessageIndex.template.php (body_above sub template - eval?)', 372),
(198, 1377098000, 17, '87.219.89.194', '?action=forum', '8: Undefined variable: user_info', 'efc2a505ba48057f18ee1b72bc644e7c', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(199, 1377098007, 17, '87.219.89.194', '?topic=2.msg0;boardseen', '8: Undefined variable: user_info', 'efc2a505ba48057f18ee1b72bc644e7c', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/Display.template.php (body_above sub template - eval?)', 372),
(200, 1377098012, 17, '87.219.89.194', '?action=post;topic=2.0;last_msg=2', '8: Undefined variable: user_info', 'efc2a505ba48057f18ee1b72bc644e7c', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/Post.template.php (body_above sub template - eval?)', 372),
(201, 1377098072, 17, '87.219.89.194', '?board=6.0', '8: Undefined variable: user_info', 'efc2a505ba48057f18ee1b72bc644e7c', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/MessageIndex.template.php (body_above sub template - eval?)', 372),
(202, 1377098075, 17, '87.219.89.194', '?topic=2.0', '8: Undefined variable: user_info', 'efc2a505ba48057f18ee1b72bc644e7c', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/Display.template.php (body_above sub template - eval?)', 372),
(203, 1377098081, 17, '87.219.89.194', '?action=forum', '8: Undefined variable: user_info', 'efc2a505ba48057f18ee1b72bc644e7c', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(204, 1377098087, 17, '87.219.89.194', '?board=24.0', '8: Undefined variable: user_info', 'efc2a505ba48057f18ee1b72bc644e7c', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/MessageIndex.template.php (body_above sub template - eval?)', 372),
(205, 1377098094, 17, '87.219.89.194', '?language=spanish_es', '8: Undefined variable: user_info', 'efc2a505ba48057f18ee1b72bc644e7c', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/inicio.template.php (body_above sub template - eval?)', 372),
(206, 1377098406, 1, '79.151.232.143', '?action=forum', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(207, 1377098413, 17, '87.219.89.194', '?', '8: Undefined variable: user_info', 'efc2a505ba48057f18ee1b72bc644e7c', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/inicio.template.php (body_above sub template - eval?)', 372),
(208, 1377098417, 17, '87.219.89.194', '?action=forum', '8: Undefined variable: user_info', 'efc2a505ba48057f18ee1b72bc644e7c', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(209, 1377098423, 17, '87.219.89.194', '?board=24.0', '8: Undefined variable: user_info', 'efc2a505ba48057f18ee1b72bc644e7c', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/MessageIndex.template.php (body_above sub template - eval?)', 372),
(210, 1377098427, 1, '79.151.232.143', '?board=24.0', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/MessageIndex.template.php (body_above sub template - eval?)', 372),
(211, 1377098433, 1, '79.151.232.143', '?action=post;board=24.0', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/Post.template.php (body_above sub template - eval?)', 372),
(212, 1377098466, 1, '79.151.232.143', '?action=forum', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(213, 1377098472, 1, '79.151.232.143', '?topic=2.msg3;boardseen', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/Display.template.php (body_above sub template - eval?)', 372),
(214, 1377098494, 1, '79.151.232.143', '?action=forum', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(215, 1377098515, 1, '79.151.232.143', '?action=who', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/languages/Who.spanish_es-utf8.php (body_above sub template - eval?)', 372),
(216, 1377098519, 1, '79.151.232.143', '?action=forum', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(217, 1377098539, 1, '79.151.232.143', '?board=24.0', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/MessageIndex.template.php (body_above sub template - eval?)', 372),
(218, 1377098568, 1, '79.151.232.143', '?action=admin', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/languages/Admin.spanish_es-utf8.php (body_above sub template - eval?)', 372),
(219, 1377098578, 1, '79.151.232.143', '?action=admin;area=permissions;sa=board;d1cb485dcf=c424046adaf8cb3dc1a3e49a13406140', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/ManagePermissions.template.php (body_above sub template - eval?)', 372),
(220, 1377098605, 1, '79.151.232.143', '?action=admin;area=permissions;sa=index;pid=1;d1cb485dcf=c424046adaf8cb3dc1a3e49a13406140', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/ManagePermissions.template.php (body_above sub template - eval?)', 372),
(221, 1377098609, 1, '79.151.232.143', '?action=admin;area=permissions;sa=modify;group=0;pid=1', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/ManagePermissions.template.php (body_above sub template - eval?)', 372),
(222, 1377098621, 1, '79.151.232.143', '?action=admin;area=permissions;sa=profiles;d1cb485dcf=c424046adaf8cb3dc1a3e49a13406140', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/ManagePermissions.template.php (body_above sub template - eval?)', 372),
(223, 1377098679, 1, '79.151.232.143', '?action=admin;area=permissions;pid=1', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/ManagePermissions.template.php (body_above sub template - eval?)', 372),
(224, 1377098692, 1, '79.151.232.143', '?action=forum', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(225, 1377098694, 17, '87.219.89.194', '?board=24.0', '8: Undefined variable: user_info', 'efc2a505ba48057f18ee1b72bc644e7c', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/MessageIndex.template.php (body_above sub template - eval?)', 372),
(226, 1377098715, 17, '87.219.89.194', '?action=post;board=24.0', '8: Undefined variable: user_info', 'efc2a505ba48057f18ee1b72bc644e7c', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/Post.template.php (body_above sub template - eval?)', 372),
(227, 1377099253, 1, '79.151.232.143', '?action=admin;area=featuresettings', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/languages/Help.spanish_es-utf8.php (body_above sub template - eval?)', 372),
(228, 1377099267, 1, '79.151.232.143', '?action=admin;area=refferals;sa=settings;sesc;d1cb485dcf=c424046adaf8cb3dc1a3e49a13406140', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/refferals2.template.php (body_above sub template - eval?)', 372),
(229, 1377099385, 1, '79.151.232.143', '?action=admin;area=regcenter;sa=register', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/Register.template.php (body_above sub template - eval?)', 372),
(230, 1377099396, 1, '79.151.232.143', '?action=admin;area=regcenter;sa=register', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/Register.template.php (body_above sub template - eval?)', 372),
(231, 1377099454, 1, '79.151.232.143', '?board=1.0', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/MessageIndex.template.php (body_above sub template - eval?)', 372),
(232, 1377099465, 1, '79.151.232.143', '?topic=4.0', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/Display.template.php (body_above sub template - eval?)', 372),
(233, 1377099485, 1, '79.151.232.143', '?topic=4.0', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/Display.template.php (body_above sub template - eval?)', 372),
(234, 1377099495, 1, '79.151.232.143', '?board=1.0', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/MessageIndex.template.php (body_above sub template - eval?)', 372),
(235, 1377099561, 1, '79.151.232.143', '?action=forum', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(236, 1377099573, 1, '79.151.232.143', '?action=who', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/languages/Who.spanish_es-utf8.php (body_above sub template - eval?)', 372),
(237, 1377099584, 1, '79.151.232.143', '?action=forum', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(238, 1377099628, 1, '79.151.232.143', '?', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/inicio.template.php (body_above sub template - eval?)', 372),
(239, 1377099640, 1, '79.151.232.143', '?action=forum', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(240, 1377099644, 1, '79.151.232.143', '?action=admin;area=featuresettings', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/languages/Help.spanish_es-utf8.php (body_above sub template - eval?)', 372),
(241, 1377099648, 1, '79.151.232.143', '?action=admin;area=refferals;sa=settings;sesc;d1cb485dcf=c424046adaf8cb3dc1a3e49a13406140', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/refferals2.template.php (body_above sub template - eval?)', 372),
(242, 1377099654, 1, '79.151.232.143', '?action=admin;area=refferals;sa=copyright;d1cb485dcf=c424046adaf8cb3dc1a3e49a13406140', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/refferals2.template.php (body_above sub template - eval?)', 372),
(243, 1377099797, 1, '79.151.232.143', '?action=admin;area=refferals;sa=settings;d1cb485dcf=c424046adaf8cb3dc1a3e49a13406140', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/refferals2.template.php (body_above sub template - eval?)', 374),
(244, 1377099839, 1, '79.151.232.143', '?action=admin;area=refferals;sa=settings;d1cb485dcf=c424046adaf8cb3dc1a3e49a13406140', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/refferals2.template.php (body_above sub template - eval?)', 374),
(245, 1377099915, 1, '79.151.232.143', '?action=admin;area=refferals;sa=settings;d1cb485dcf=c424046adaf8cb3dc1a3e49a13406140', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/refferals2.template.php (body_above sub template - eval?)', 372),
(246, 1377099938, 1, '79.151.232.143', '?action=forum', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(247, 1377100154, 1, '79.151.232.143', '?action=forum', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(248, 1377100305, 0, '79.151.232.143', '?', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/inicio.template.php (body_above sub template - eval?)', 372),
(249, 1377100317, 0, '79.151.232.143', '?action=profile;area=account', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/GenericMenu.template.php (body_above sub template - eval?)', 372),
(250, 1377100332, 0, '79.151.232.143', '?action=profile;area=deleteaccount;u=20', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/GenericMenu.template.php (body_above sub template - eval?)', 372),
(251, 1377100350, 1, '79.151.232.143', '?', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/inicio.template.php (body_above sub template - eval?)', 372),
(252, 1377100357, 1, '79.151.232.143', '?action=forum', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(253, 1377100426, 1, '79.151.232.143', '?action=admin;area=featuresettings', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/languages/Help.spanish_es-utf8.php (body_above sub template - eval?)', 372),
(254, 1377100433, 1, '79.151.232.143', '?action=admin;area=refferals;sa=settings;sesc;d1cb485dcf=c424046adaf8cb3dc1a3e49a13406140', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/refferals2.template.php (body_above sub template - eval?)', 372),
(255, 1377100445, 1, '79.151.232.143', '?action=admin;area=refferals;sa=settings', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/refferals2.template.php (body_above sub template - eval?)', 372),
(256, 1377100626, 1, '79.151.232.143', '?action=profile', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/languages/Who.spanish_es-utf8.php (body_above sub template - eval?)', 372),
(257, 1377100683, 1, '79.151.232.143', '?action=profile', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/languages/Who.spanish_es-utf8.php (body_above sub template - eval?)', 372),
(258, 1377100725, 0, '79.151.232.143', '?', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/inicio.template.php (body_above sub template - eval?)', 372),
(259, 1377100732, 0, '79.151.232.143', '?action=forum', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(260, 1377100743, 0, '79.151.232.143', '?action=profile;u=1', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/languages/Who.spanish_es-utf8.php (body_above sub template - eval?)', 372),
(261, 1377100765, 0, '79.151.232.143', '?', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/inicio.template.php (body_above sub template - eval?)', 372),
(262, 1377100770, 0, '79.151.232.143', '?action=profile;area=account', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/GenericMenu.template.php (body_above sub template - eval?)', 372),
(263, 1377100774, 0, '79.151.232.143', '?action=profile;area=deleteaccount;u=21', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/GenericMenu.template.php (body_above sub template - eval?)', 372),
(264, 1377100790, 1, '79.151.232.143', '?', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/inicio.template.php (body_above sub template - eval?)', 372),
(265, 1377100800, 1, '79.151.232.143', '?action=forum', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(266, 1377100805, 1, '79.151.232.143', '?topic=4.msg6', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/Display.template.php (body_above sub template - eval?)', 372),
(267, 1377100814, 1, '79.151.232.143', '?action=profile;u=1', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/languages/Who.spanish_es-utf8.php (body_above sub template - eval?)', 372),
(268, 1377100837, 1, '79.151.232.143', '?action=post;msg=5;topic=4.0', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/Post.template.php (body_above sub template - eval?)', 372),
(269, 1377100852, 1, '79.151.232.143', '?action=post;msg=5;topic=4.0', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/Post.template.php (body_above sub template - eval?)', 372),
(270, 1377101159, 1, '79.151.232.143', '?topic=4.msg5', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/Display.template.php (body_above sub template - eval?)', 372),
(271, 1377101247, 1, '79.151.232.143', '?action=forum', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(272, 1377101253, 1, '79.151.232.143', '?action=who', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/languages/Who.spanish_es-utf8.php (body_above sub template - eval?)', 372),
(273, 1377101268, 1, '79.151.232.143', '?action=forum', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(274, 1377101296, 1, '79.151.232.143', '?board=1.0', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/MessageIndex.template.php (body_above sub template - eval?)', 372),
(275, 1377101306, 1, '79.151.232.143', '?topic=4.0', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/Display.template.php (body_above sub template - eval?)', 372),
(276, 1377101318, 1, '79.151.232.143', '?action=post;msg=5;topic=4.0', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/Post.template.php (body_above sub template - eval?)', 372),
(277, 1377101362, 1, '79.151.232.143', '?topic=4.msg5', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/Display.template.php (body_above sub template - eval?)', 372),
(278, 1377101408, 1, '79.151.232.143', '?action=forum', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(279, 1377101412, 1, '79.151.232.143', '?action=admin;area=featuresettings', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/languages/Help.spanish_es-utf8.php (body_above sub template - eval?)', 372),
(280, 1377101427, 1, '79.151.232.143', '?action=admin;area=packages', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/languages/Packages.spanish_es-utf8.php (body_above sub template - eval?)', 372),
(281, 1377101435, 1, '79.151.232.143', '?action=admin;area=packages;sa=packageget;get;d1cb485dcf=c424046adaf8cb3dc1a3e49a13406140', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/Packages.template.php (body_above sub template - eval?)', 372),
(282, 1377101448, 1, '79.151.232.143', '?action=admin;area=packages;get;sa=upload', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/languages/Packages.spanish_es-utf8.php (body_above sub template - eval?)', 372),
(283, 1377101454, 1, '79.151.232.143', '?action=admin;area=packages;sa=install;package=Group-Color-in-Posts-and-Profile-1.4.zip', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/languages/Packages.spanish_es-utf8.php (body_above sub template - eval?)', 372),
(284, 1377101503, 1, '79.151.232.143', '?action=admin;area=packages;sa=browse;d1cb485dcf=c424046adaf8cb3dc1a3e49a13406140', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/languages/Packages.spanish_es-utf8.php (body_above sub template - eval?)', 372),
(285, 1377101509, 1, '79.151.232.143', '?action=admin;area=packages;sa=browse', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/languages/Packages.spanish_es-utf8.php (body_above sub template - eval?)', 372),
(286, 1377101641, 1, '79.151.232.143', '?action=admin;area=packages;sa=packageget;get;d1cb485dcf=c424046adaf8cb3dc1a3e49a13406140', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/Packages.template.php (body_above sub template - eval?)', 372),
(287, 1377101657, 1, '79.151.232.143', '?action=admin;area=packages;get;sa=upload', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/languages/Packages.spanish_es-utf8.php (body_above sub template - eval?)', 372),
(288, 1377101660, 1, '79.151.232.143', '?action=admin;area=packages;sa=install;package=Group-Color-in-Posts-and-Profile-1.4.zip', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/languages/Packages.spanish_es-utf8.php (body_above sub template - eval?)', 372),
(289, 1377101753, 1, '79.151.232.143', '?action=admin;area=packages;sa=browse;d1cb485dcf=c424046adaf8cb3dc1a3e49a13406140', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/languages/Packages.spanish_es-utf8.php (body_above sub template - eval?)', 372),
(290, 1377101764, 1, '79.151.232.143', '?action=admin;area=packages;sa=browse', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/languages/Packages.spanish_es-utf8.php (body_above sub template - eval?)', 372),
(291, 1377101769, 1, '79.151.232.143', '?action=forum', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(292, 1377101774, 1, '79.151.232.143', '?action=who', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/languages/Who.spanish_es-utf8.php (body_above sub template - eval?)', 372),
(293, 1377101779, 1, '79.151.232.143', '?action=forum', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(294, 1377101791, 1, '79.151.232.143', '?action=forum', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(295, 1377101797, 1, '79.151.232.143', '?', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/inicio.template.php (body_above sub template - eval?)', 372),
(296, 1377101811, 1, '79.151.232.143', '?action=forum', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(297, 1377101862, 1, '79.151.232.143', '?action=admin;area=featuresettings', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/languages/Help.spanish_es-utf8.php (body_above sub template - eval?)', 372),
(298, 1377101868, 1, '79.151.232.143', '?action=admin;area=packages', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/languages/Packages.spanish_es-utf8.php (body_above sub template - eval?)', 372),
(299, 1377101877, 1, '79.151.232.143', '?action=admin;area=packages;sa=packageget;get;d1cb485dcf=c424046adaf8cb3dc1a3e49a13406140', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/Packages.template.php (body_above sub template - eval?)', 372),
(300, 1377101893, 1, '79.151.232.143', '?action=admin;area=packages;get;sa=upload', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/languages/Packages.spanish_es-utf8.php (body_above sub template - eval?)', 372),
(301, 1377101897, 1, '79.151.232.143', '?action=admin;area=packages;sa=install;package=Group-Color-in-Posts-and-Profile-1.4.zip', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/languages/Packages.spanish_es-utf8.php (body_above sub template - eval?)', 372),
(302, 1377101911, 1, '79.151.232.143', '?action=forum', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(303, 1377101924, 1, '79.151.232.143', '?action=admin;area=packages', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/languages/Packages.spanish_es-utf8.php (body_above sub template - eval?)', 372),
(304, 1377101932, 1, '79.151.232.143', '?action=admin;area=packages;sa=browse', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/languages/Packages.spanish_es-utf8.php (body_above sub template - eval?)', 372),
(305, 1377101935, 1, '79.151.232.143', '?action=admin;area=packages;sa=packageget;get;d1cb485dcf=c424046adaf8cb3dc1a3e49a13406140', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/Packages.template.php (body_above sub template - eval?)', 372),
(306, 1377101950, 1, '79.151.232.143', '?action=admin;area=packages;get;sa=upload', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/languages/Packages.spanish_es-utf8.php (body_above sub template - eval?)', 372),
(307, 1377101955, 1, '79.151.232.143', '?action=admin;area=packages;sa=install;package=Group-Color-in-Posts-and-Profile-1.4.zip', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/languages/Packages.spanish_es-utf8.php (body_above sub template - eval?)', 372),
(308, 1377101964, 1, '79.151.232.143', '?action=admin;area=packages;sa=install2;package=Group-Color-in-Posts-and-Profile-1.4.zip;pid=0', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/languages/Packages.spanish_es-utf8.php (body_above sub template - eval?)', 372),
(309, 1377101967, 1, '79.151.232.143', '?action=forum', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(310, 1377102005, 1, '79.151.232.143', '?action=profile;u=1', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/languages/Who.spanish_es-utf8.php (body_above sub template - eval?)', 372),
(311, 1377102024, 1, '79.151.232.143', '?action=forum', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(312, 1377102027, 1, '79.151.232.143', '?topic=4.msg6', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/Display.template.php (body_above sub template - eval?)', 372),
(313, 1377102048, 1, '79.151.232.143', '?action=profile;u=1', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/languages/Who.spanish_es-utf8.php (body_above sub template - eval?)', 372),
(314, 1377102243, 1, '79.151.232.143', '?action=profile;u=1', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/languages/Who.spanish_es-utf8.php (body_above sub template - eval?)', 372),
(315, 1377102249, 1, '79.151.232.143', '?action=forum', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(316, 1377102477, 1, '79.151.232.143', '?action=forum', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(317, 1377102864, 1, '79.151.232.143', '?', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/inicio.template.php (body_above sub template - eval?)', 372),
(318, 1377102884, 1, '79.151.232.143', '?action=forum', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(319, 1377103453, 1, '79.151.232.143', '?action=forum', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(320, 1377103846, 1, '79.151.232.143', '?action=forum', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(321, 1377103856, 1, '79.151.232.143', '?action=who', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/languages/Who.spanish_es-utf8.php (body_above sub template - eval?)', 372),
(322, 1377103860, 1, '79.151.232.143', '?', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/inicio.template.php (body_above sub template - eval?)', 372),
(323, 1377103993, 22, '88.0.92.40', '?', '8: Undefined variable: user_info', '42594722557a36405e78e6532a4d4267', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/inicio.template.php (body_above sub template - eval?)', 372),
(324, 1377104069, 22, '88.0.92.40', '?action=forum', '8: Undefined variable: user_info', '42594722557a36405e78e6532a4d4267', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(325, 1377104353, 1, '79.151.232.143', '?action=forum', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(326, 1377104373, 1, '79.151.232.143', '?action=profile;u=22', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/languages/Who.spanish_es-utf8.php (body_above sub template - eval?)', 372),
(327, 1377104385, 1, '79.151.232.143', '?action=forum', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(328, 1377104422, 1, '79.151.232.143', '?action=who', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/languages/Who.spanish_es-utf8.php (body_above sub template - eval?)', 372),
(329, 1377104476, 1, '79.151.232.143', '?action=who', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/languages/Who.spanish_es-utf8.php (body_above sub template - eval?)', 372),
(330, 1377104501, 1, '79.151.232.143', '?action=forum', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(331, 1377104556, 1, '79.151.232.143', '?topic=4.msg6', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/Display.template.php (body_above sub template - eval?)', 372),
(332, 1377104581, 1, '79.151.232.143', '?action=admin;area=featuresettings', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/Login.template.php (body_above sub template - eval?)', 372),
(333, 1377104591, 1, '79.151.232.143', '?action=admin;area=featuresettings', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/languages/Help.spanish_es-utf8.php (body_above sub template - eval?)', 372),
(334, 1377104638, 1, '79.151.232.143', '?action=admin;area=theme;sa=settings;th=3;d1cb485dcf=c424046adaf8cb3dc1a3e49a13406140', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/Themes.template.php (body_above sub template - eval?)', 372),
(335, 1377104688, 1, '79.151.232.143', '?action=admin;area=theme;sa=settings;th=3;d1cb485dcf=c424046adaf8cb3dc1a3e49a13406140', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/Themes.template.php (body_above sub template - eval?)', 372),
(336, 1377104693, 1, '79.151.232.143', '?action=forum', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(337, 1377104697, 1, '79.151.232.143', '?topic=4.msg6', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/Display.template.php (body_above sub template - eval?)', 372),
(338, 1377104743, 1, '79.151.232.143', '?board=1.0', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/MessageIndex.template.php (body_above sub template - eval?)', 372),
(339, 1377104960, 23, '186.106.104.224', '?', '8: Undefined variable: user_info', 'e40b3a861c4be8f12ddd00c52a96f1dd', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/inicio.template.php (body_above sub template - eval?)', 372),
(340, 1377105339, 1, '79.151.232.143', '?', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/inicio.template.php (body_above sub template - eval?)', 372),
(341, 1377105461, 1, '79.151.232.143', '?action=forum', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(342, 1377105485, 1, '79.151.232.143', '?action=who', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/languages/Who.spanish_es-utf8.php (body_above sub template - eval?)', 372),
(343, 1377111651, 1, '79.151.232.143', '?http://nexusplayers.x10host.com/', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/inicio.template.php (body_above sub template - eval?)', 372),
(344, 1377111762, 1, '79.151.232.143', '?http://nexusplayers.x10host.com/', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/inicio.template.php (body_above sub template - eval?)', 372),
(345, 1377111815, 1, '79.151.232.143', '?action=forum', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(346, 1377111843, 1, '79.151.232.143', '?action=stats', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/Stats.template.php (body_above sub template - eval?)', 372),
(347, 1377111914, 1, '79.151.232.143', '?action=forum', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(348, 1377111965, 1, '79.151.232.143', '?board=5.0', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/MessageIndex.template.php (body_above sub template - eval?)', 372),
(349, 1377112397, 1, '79.151.232.143', '?action=forum', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(350, 1377112402, 1, '79.151.232.143', '?topic=4.msg6', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/Display.template.php (body_above sub template - eval?)', 372),
(351, 1377112655, 24, '200.116.83.71', '?', '8: Undefined variable: user_info', 'b039cd848e27f1fcfb98eaed20e8cae3', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/inicio.template.php (body_above sub template - eval?)', 372),
(352, 1377112687, 1, '79.151.232.143', '?topic=4.msg6', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/Display.template.php (body_above sub template - eval?)', 372),
(353, 1377112687, 1, '79.151.232.143', '?topic=4.msg6', '8: Undefined variable: txt', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/Display.template.php (body_above sub template - eval?)', 596),
(354, 1377112687, 1, '79.151.232.143', '?topic=4.msg6', '8: Undefined variable: txt', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/Display.template.php (main sub template - eval?)', 596),
(355, 1377112698, 1, '79.151.232.143', '?topic=4.msg6', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/Display.template.php (body_above sub template - eval?)', 372),
(356, 1377112698, 1, '79.151.232.143', '?topic=4.msg6', '8: Undefined variable: txt', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/Display.template.php (body_above sub template - eval?)', 596),
(357, 1377112698, 1, '79.151.232.143', '?topic=4.msg6', '8: Undefined variable: txt', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/Display.template.php (main sub template - eval?)', 596),
(358, 1377112770, 1, '79.151.232.143', '?topic=4.msg6', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/Display.template.php (body_above sub template - eval?)', 372),
(359, 1377112770, 1, '79.151.232.143', '?topic=4.msg6', '8: Undefined variable: txt', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/Display.template.php (body_above sub template - eval?)', 596),
(360, 1377112770, 1, '79.151.232.143', '?topic=4.msg6', '8: Undefined variable: txt', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/Display.template.php (main sub template - eval?)', 596),
(361, 1377113753, 0, '84.79.157.228', '?', '8: Undefined variable: txt', '23ffbf4ec60f5ea3929cbdc62b964710', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/inicio.template.php (body_above sub template - eval?)', 593),
(362, 1377113753, 0, '84.79.157.228', '?', '8: Undefined variable: txt', '23ffbf4ec60f5ea3929cbdc62b964710', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/inicio.template.php (body_above sub template - eval?)', 596),
(363, 1377113753, 0, '84.79.157.228', '?', '8: Undefined index: view_num_guests', '23ffbf4ec60f5ea3929cbdc62b964710', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/inicio.template.php (body_above sub template - eval?)', 596),
(364, 1377113753, 0, '84.79.157.228', '?', '8: Undefined variable: txt', '23ffbf4ec60f5ea3929cbdc62b964710', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/inicio.template.php (body_above sub template - eval?)', 596),
(365, 1377114084, 1, '79.151.232.143', '?http://nexusplayers.x10host.com/', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/inicio.template.php (body_above sub template - eval?)', 372),
(366, 1377114084, 1, '79.151.232.143', '?http://nexusplayers.x10host.com/', '8: Undefined variable: txt', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/inicio.template.php (body_above sub template - eval?)', 596),
(367, 1377114084, 1, '79.151.232.143', '?http://nexusplayers.x10host.com/', '8: Undefined variable: txt', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/inicio.template.php (body_above sub template - eval?)', 599),
(368, 1377114084, 1, '79.151.232.143', '?http://nexusplayers.x10host.com/', '8: Undefined index: view_num_guests', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/inicio.template.php (body_above sub template - eval?)', 599),
(369, 1377114084, 1, '79.151.232.143', '?http://nexusplayers.x10host.com/', '8: Undefined variable: txt', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/inicio.template.php (body_above sub template - eval?)', 599),
(370, 1377114155, 1, '79.151.232.143', '?action=forum', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(371, 1377114155, 1, '79.151.232.143', '?action=forum', '8: Undefined variable: txt', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 596),
(372, 1377114155, 1, '79.151.232.143', '?action=forum', '8: Undefined variable: txt', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 599),
(373, 1377114155, 1, '79.151.232.143', '?action=forum', '8: Undefined index: view_num_guests', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 599),
(374, 1377114155, 1, '79.151.232.143', '?action=forum', '8: Undefined variable: txt', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 599),
(375, 1377114165, 1, '79.151.232.143', '?action=who', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/languages/Who.spanish_es-utf8.php (body_above sub template - eval?)', 372),
(376, 1377114165, 1, '79.151.232.143', '?action=who', '8: Undefined variable: txt', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/languages/Who.spanish_es-utf8.php (body_above sub template - eval?)', 596);
INSERT INTO `smf_ikilllog_errors` (`id_error`, `log_time`, `id_member`, `ip`, `url`, `message`, `session`, `error_type`, `file`, `line`) VALUES
(377, 1377114165, 1, '79.151.232.143', '?action=who', '8: Undefined variable: txt', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/languages/Who.spanish_es-utf8.php (body_above sub template - eval?)', 599),
(378, 1377114165, 1, '79.151.232.143', '?action=who', '8: Undefined index: view_num_guests', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/languages/Who.spanish_es-utf8.php (body_above sub template - eval?)', 599),
(379, 1377114165, 1, '79.151.232.143', '?action=who', '8: Undefined variable: txt', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/languages/Who.spanish_es-utf8.php (body_above sub template - eval?)', 599),
(380, 1377114211, 1, '79.151.232.143', '?action=who', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/languages/Who.spanish_es-utf8.php (body_above sub template - eval?)', 372),
(381, 1377114211, 1, '79.151.232.143', '?action=who', '8: Undefined variable: txt', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/languages/Who.spanish_es-utf8.php (body_above sub template - eval?)', 596),
(382, 1377114211, 1, '79.151.232.143', '?action=who', '8: Undefined variable: txt', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/languages/Who.spanish_es-utf8.php (body_above sub template - eval?)', 599),
(383, 1377114211, 1, '79.151.232.143', '?action=who', '8: Undefined index: view_num_guests', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/languages/Who.spanish_es-utf8.php (body_above sub template - eval?)', 599),
(384, 1377114211, 1, '79.151.232.143', '?action=who', '8: Undefined variable: txt', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/languages/Who.spanish_es-utf8.php (body_above sub template - eval?)', 599),
(385, 1377114215, 1, '79.151.232.143', '?action=forum', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(386, 1377114253, 1, '79.151.232.143', '?action=forum', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(387, 1377114272, 1, '79.151.232.143', '?action=profile', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/languages/Who.spanish_es-utf8.php (body_above sub template - eval?)', 372),
(388, 1377114373, 1, '79.151.232.143', '?action=profile', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/languages/Who.spanish_es-utf8.php (body_above sub template - eval?)', 372),
(389, 1377114377, 1, '79.151.232.143', '?action=forum', '8: Undefined variable: user_info', 'c424046adaf8cb3dc1a3e49a13406140', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(390, 1377119257, 2, '212.145.90.172', '?', '8: Undefined variable: user_info', '6bb59862cbc9f7c67aefba0602d0e735', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/inicio.template.php (body_above sub template - eval?)', 372),
(391, 1377119261, 2, '212.145.90.172', '?action=forum', '8: Undefined variable: user_info', '6bb59862cbc9f7c67aefba0602d0e735', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(392, 1377119264, 2, '212.145.90.172', '?board=1.0', '8: Undefined variable: user_info', '6bb59862cbc9f7c67aefba0602d0e735', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/MessageIndex.template.php (body_above sub template - eval?)', 372),
(393, 1377119273, 2, '212.145.90.172', '?topic=4.0', '8: Undefined variable: user_info', '6bb59862cbc9f7c67aefba0602d0e735', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/Display.template.php (body_above sub template - eval?)', 372),
(394, 1377120419, 22, '88.0.92.40', '?', '8: Undefined variable: user_info', 'a115d96d0edaefd3ba50e357dbde84fc', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/inicio.template.php (body_above sub template - eval?)', 372),
(395, 1377120428, 22, '88.0.92.40', '?', '8: Undefined variable: user_info', 'a115d96d0edaefd3ba50e357dbde84fc', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/inicio.template.php (body_above sub template - eval?)', 372),
(396, 1377120440, 22, '88.0.92.40', '?', '8: Undefined variable: user_info', 'a115d96d0edaefd3ba50e357dbde84fc', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/inicio.template.php (body_above sub template - eval?)', 372),
(397, 1377120445, 22, '88.0.92.40', '?action=forum', '8: Undefined variable: user_info', 'a115d96d0edaefd3ba50e357dbde84fc', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(398, 1377120462, 22, '88.0.92.40', '?topic=4.msg6', '8: Undefined variable: user_info', 'a115d96d0edaefd3ba50e357dbde84fc', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/Display.template.php (body_above sub template - eval?)', 372),
(399, 1377120556, 22, '88.0.92.40', '?', '8: Undefined variable: user_info', 'a115d96d0edaefd3ba50e357dbde84fc', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/inicio.template.php (body_above sub template - eval?)', 372),
(400, 1377120650, 22, '88.0.92.40', '?action=profile', '8: Undefined variable: user_info', 'a115d96d0edaefd3ba50e357dbde84fc', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/languages/Who.spanish_es-utf8.php (body_above sub template - eval?)', 372),
(401, 1377120664, 22, '88.0.92.40', '?', '8: Undefined variable: user_info', 'a115d96d0edaefd3ba50e357dbde84fc', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/inicio.template.php (body_above sub template - eval?)', 372),
(402, 1377120847, 22, '88.0.92.40', '?board=22.0', '8: Undefined variable: user_info', 'a115d96d0edaefd3ba50e357dbde84fc', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/MessageIndex.template.php (body_above sub template - eval?)', 372),
(403, 1377120852, 22, '88.0.92.40', '?board=44.0', '8: Undefined variable: user_info', 'a115d96d0edaefd3ba50e357dbde84fc', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/MessageIndex.template.php (body_above sub template - eval?)', 372),
(404, 1377120855, 22, '88.0.92.40', '?action=post;board=44.0', '8: Undefined variable: user_info', 'a115d96d0edaefd3ba50e357dbde84fc', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/Post.template.php (body_above sub template - eval?)', 372),
(405, 1377121185, 22, '88.0.92.40', '?board=44.0', '8: Undefined variable: user_info', 'a115d96d0edaefd3ba50e357dbde84fc', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/MessageIndex.template.php (body_above sub template - eval?)', 372),
(406, 1377121189, 22, '88.0.92.40', '?topic=5.0', '8: Undefined variable: user_info', 'a115d96d0edaefd3ba50e357dbde84fc', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/Display.template.php (body_above sub template - eval?)', 372),
(407, 1377121228, 22, '88.0.92.40', '?action=forum', '8: Undefined variable: user_info', 'a115d96d0edaefd3ba50e357dbde84fc', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(408, 1377121269, 22, '88.0.92.40', '?board=5.0', '8: Undefined variable: user_info', 'a115d96d0edaefd3ba50e357dbde84fc', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/MessageIndex.template.php (body_above sub template - eval?)', 372),
(409, 1377121272, 22, '88.0.92.40', '?action=post;board=5.0', '8: Undefined variable: user_info', 'a115d96d0edaefd3ba50e357dbde84fc', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/Post.template.php (body_above sub template - eval?)', 372),
(410, 1377121403, 22, '88.0.92.40', '?board=5.0', '8: Undefined variable: user_info', 'a115d96d0edaefd3ba50e357dbde84fc', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/MessageIndex.template.php (body_above sub template - eval?)', 372),
(411, 1377121406, 22, '88.0.92.40', '?action=forum', '8: Undefined variable: user_info', 'a115d96d0edaefd3ba50e357dbde84fc', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(412, 1377121412, 22, '88.0.92.40', '?board=1.0', '8: Undefined variable: user_info', 'a115d96d0edaefd3ba50e357dbde84fc', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/MessageIndex.template.php (body_above sub template - eval?)', 372),
(413, 1377121436, 22, '88.0.92.40', '?action=profile;u=1', '8: Undefined variable: user_info', 'a115d96d0edaefd3ba50e357dbde84fc', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/languages/Who.spanish_es-utf8.php (body_above sub template - eval?)', 372),
(414, 1377121443, 22, '88.0.92.40', '?action=emailuser;sa=email;uid=1', '8: Undefined variable: user_info', 'a115d96d0edaefd3ba50e357dbde84fc', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/SendTopic.template.php (body_above sub template - eval?)', 372),
(415, 1377121463, 22, '88.0.92.40', '?action=forum', '8: Undefined variable: user_info', 'a115d96d0edaefd3ba50e357dbde84fc', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(416, 1377121577, 22, '88.0.92.40', '?action=pm', '8: Undefined variable: user_info', 'a115d96d0edaefd3ba50e357dbde84fc', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/GenericMenu.template.php (body_above sub template - eval?)', 372),
(417, 1377121607, 22, '88.0.92.40', '?', '8: Undefined variable: user_info', 'ec1b2614d8b78cf9d5f2f111f6e00d2c', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/inicio.template.php (body_above sub template - eval?)', 372),
(418, 1377121611, 22, '88.0.92.40', '?action=forum', '8: Undefined variable: user_info', 'ec1b2614d8b78cf9d5f2f111f6e00d2c', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(419, 1377121628, 22, '88.0.92.40', '?board=50.0', '8: Undefined variable: user_info', 'ec1b2614d8b78cf9d5f2f111f6e00d2c', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/MessageIndex.template.php (body_above sub template - eval?)', 372),
(420, 1377123273, 25, '187.178.89.231', '?', '8: Undefined variable: user_info', '877ed04fa5e32d48ce7fe0b89aea48eb', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/inicio.template.php (body_above sub template - eval?)', 372),
(421, 1377162620, 2, '212.145.90.172', '?', '8: Undefined variable: user_info', '3b652080fba7618793fc1e36b9d38bfd', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/inicio.template.php (body_above sub template - eval?)', 372),
(422, 1377162645, 2, '212.145.90.172', '?action=forum', '8: Undefined variable: user_info', '3b652080fba7618793fc1e36b9d38bfd', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(423, 1377162652, 2, '212.145.90.172', '?board=5.0', '8: Undefined variable: user_info', '3b652080fba7618793fc1e36b9d38bfd', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/MessageIndex.template.php (body_above sub template - eval?)', 372),
(424, 1377162654, 2, '212.145.90.172', '?board=6.0', '8: Undefined variable: user_info', '3b652080fba7618793fc1e36b9d38bfd', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/MessageIndex.template.php (body_above sub template - eval?)', 372),
(425, 1377162661, 2, '212.145.90.172', '?topic=6.msg0', '8: Undefined variable: user_info', '3b652080fba7618793fc1e36b9d38bfd', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/Display.template.php (body_above sub template - eval?)', 372),
(426, 1377162671, 2, '212.145.90.172', '?topic=2.0', '8: Undefined variable: user_info', '3b652080fba7618793fc1e36b9d38bfd', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/Display.template.php (body_above sub template - eval?)', 372),
(427, 1377162679, 2, '212.145.90.172', '?board=5.0', '8: Undefined variable: user_info', '3b652080fba7618793fc1e36b9d38bfd', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/MessageIndex.template.php (body_above sub template - eval?)', 372),
(428, 1377162682, 2, '212.145.90.172', '?action=post;board=5.0', '8: Undefined variable: user_info', '3b652080fba7618793fc1e36b9d38bfd', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/Post.template.php (body_above sub template - eval?)', 372),
(429, 1377162690, 2, '212.145.90.172', '?action=profile;u=2', '8: Undefined variable: user_info', '3b652080fba7618793fc1e36b9d38bfd', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/languages/Who.spanish_es-utf8.php (body_above sub template - eval?)', 372),
(430, 1377162717, 2, '212.145.90.172', '?action=profile;area=forumprofile;u=2', '8: Undefined variable: user_info', '3b652080fba7618793fc1e36b9d38bfd', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/GenericMenu.template.php (body_above sub template - eval?)', 372),
(431, 1377162727, 2, '212.145.90.172', '?action=profile;area=forumprofile;updated', '8: Undefined variable: user_info', '3b652080fba7618793fc1e36b9d38bfd', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/GenericMenu.template.php (body_above sub template - eval?)', 372),
(432, 1377162750, 2, '212.145.90.172', '?action=forum', '8: Undefined variable: user_info', '3b652080fba7618793fc1e36b9d38bfd', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(433, 1377162763, 2, '212.145.90.172', '?board=5.0', '8: Undefined variable: user_info', '3b652080fba7618793fc1e36b9d38bfd', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/MessageIndex.template.php (body_above sub template - eval?)', 372),
(434, 1377162767, 2, '212.145.90.172', '?topic=6.0', '8: Undefined variable: user_info', '3b652080fba7618793fc1e36b9d38bfd', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/Display.template.php (body_above sub template - eval?)', 372),
(435, 1377163169, 2, '212.145.90.172', '?', '8: Undefined variable: user_info', '3b652080fba7618793fc1e36b9d38bfd', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/inicio.template.php (body_above sub template - eval?)', 372),
(436, 1377163172, 2, '212.145.90.172', '?action=forum', '8: Undefined variable: user_info', '3b652080fba7618793fc1e36b9d38bfd', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(437, 1377163459, 2, '212.145.90.172', '?board=5.0', '8: Undefined variable: user_info', '3b652080fba7618793fc1e36b9d38bfd', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/MessageIndex.template.php (body_above sub template - eval?)', 372),
(438, 1377163464, 2, '212.145.90.172', '?topic=7.0', '8: Undefined variable: user_info', '3b652080fba7618793fc1e36b9d38bfd', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/Display.template.php (body_above sub template - eval?)', 372),
(439, 1377163467, 2, '212.145.90.172', '?action=post;msg=8;topic=7.0', '8: Undefined variable: user_info', '3b652080fba7618793fc1e36b9d38bfd', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/Post.template.php (body_above sub template - eval?)', 372),
(440, 1377163575, 2, '212.145.90.172', '?topic=7.msg8', '8: Undefined variable: user_info', '3b652080fba7618793fc1e36b9d38bfd', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/Display.template.php (body_above sub template - eval?)', 372),
(441, 1377163589, 2, '212.145.90.172', '?action=profile;area=account', '8: Undefined variable: user_info', '3b652080fba7618793fc1e36b9d38bfd', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/GenericMenu.template.php (body_above sub template - eval?)', 372),
(442, 1377163594, 2, '212.145.90.172', '?action=profile;area=forumprofile;u=2', '8: Undefined variable: user_info', '3b652080fba7618793fc1e36b9d38bfd', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/GenericMenu.template.php (body_above sub template - eval?)', 372),
(443, 1377163603, 2, '212.145.90.172', '?action=forum', '8: Undefined variable: user_info', '3b652080fba7618793fc1e36b9d38bfd', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(444, 1377163608, 2, '212.145.90.172', '?board=22.0', '8: Undefined variable: user_info', '3b652080fba7618793fc1e36b9d38bfd', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/MessageIndex.template.php (body_above sub template - eval?)', 372),
(445, 1377163611, 2, '212.145.90.172', '?board=44.0', '8: Undefined variable: user_info', '3b652080fba7618793fc1e36b9d38bfd', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/MessageIndex.template.php (body_above sub template - eval?)', 372),
(446, 1377163616, 2, '212.145.90.172', '?topic=5.0', '8: Undefined variable: user_info', '3b652080fba7618793fc1e36b9d38bfd', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/Display.template.php (body_above sub template - eval?)', 372),
(447, 1377163618, 2, '212.145.90.172', '?action=forum', '8: Undefined variable: user_info', '3b652080fba7618793fc1e36b9d38bfd', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(448, 1377163635, 2, '212.145.90.172', '?board=5.0', '8: Undefined variable: user_info', '3b652080fba7618793fc1e36b9d38bfd', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/MessageIndex.template.php (body_above sub template - eval?)', 372),
(449, 1377163638, 2, '212.145.90.172', '?topic=6.0', '8: Undefined variable: user_info', '3b652080fba7618793fc1e36b9d38bfd', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/Display.template.php (body_above sub template - eval?)', 372),
(450, 1377163641, 2, '212.145.90.172', '?action=post;topic=6.0;last_msg=7', '8: Undefined variable: user_info', '3b652080fba7618793fc1e36b9d38bfd', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/Post.template.php (body_above sub template - eval?)', 372),
(451, 1377164177, 2, '212.145.90.172', '?board=5.0', '8: Undefined variable: user_info', '3b652080fba7618793fc1e36b9d38bfd', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/MessageIndex.template.php (body_above sub template - eval?)', 372),
(452, 1377164223, 1, '79.151.232.143', '?', '8: Undefined variable: user_info', 'b5c7e28ec1172d44629b4fa8bc6e636e', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/inicio.template.php (body_above sub template - eval?)', 372),
(453, 1377164228, 2, '212.145.90.172', '?action=forum', '8: Undefined variable: user_info', '3b652080fba7618793fc1e36b9d38bfd', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(454, 1377164257, 2, '212.145.90.172', '?action=who', '8: Undefined variable: user_info', '3b652080fba7618793fc1e36b9d38bfd', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/languages/Who.spanish_es-utf8.php (body_above sub template - eval?)', 372),
(455, 1377164264, 2, '212.145.90.172', '?action=mlist', '8: Undefined variable: user_info', '3b652080fba7618793fc1e36b9d38bfd', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 372),
(456, 1377164273, 2, '212.145.90.172', '?action=mlist;sort=registered;start=0', '8: Undefined variable: user_info', '3b652080fba7618793fc1e36b9d38bfd', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/Memberlist.template.php (body_above sub template - eval?)', 372),
(457, 1377164290, 2, '212.145.90.172', '?action=profile;u=2', '8: Undefined variable: user_info', '3b652080fba7618793fc1e36b9d38bfd', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/languages/Who.spanish_es-utf8.php (body_above sub template - eval?)', 372),
(458, 1377164293, 2, '212.145.90.172', '?action=profile;area=showposts;u=2', '8: Undefined variable: user_info', '3b652080fba7618793fc1e36b9d38bfd', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/GenericMenu.template.php (body_above sub template - eval?)', 372),
(459, 1377164305, 2, '212.145.90.172', '?action=profile;area=account;u=2', '8: Undefined variable: user_info', '3b652080fba7618793fc1e36b9d38bfd', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/GenericMenu.template.php (body_above sub template - eval?)', 372),
(460, 1377164312, 2, '212.145.90.172', '?action=profile;area=forumprofile;u=2', '8: Undefined variable: user_info', '3b652080fba7618793fc1e36b9d38bfd', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/GenericMenu.template.php (body_above sub template - eval?)', 372),
(461, 1377164316, 1, '79.151.232.143', '?action=forum', '8: Undefined variable: user_info', 'b5c7e28ec1172d44629b4fa8bc6e636e', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(462, 1377164325, 1, '79.151.232.143', '?topic=6.msg6;boardseen', '8: Undefined variable: user_info', 'b5c7e28ec1172d44629b4fa8bc6e636e', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/Display.template.php (body_above sub template - eval?)', 372),
(463, 1377164337, 1, '79.151.232.143', '?action=post;topic=6.0;last_msg=9', '8: Undefined variable: user_info', 'b5c7e28ec1172d44629b4fa8bc6e636e', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/Post.template.php (body_above sub template - eval?)', 372),
(464, 1377164360, 2, '212.145.90.172', '?action=profile;area=forumprofile;updated', '8: Undefined variable: user_info', '3b652080fba7618793fc1e36b9d38bfd', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/GenericMenu.template.php (body_above sub template - eval?)', 372),
(465, 1377164363, 2, '212.145.90.172', '?', '8: Undefined variable: user_info', '3b652080fba7618793fc1e36b9d38bfd', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/inicio.template.php (body_above sub template - eval?)', 372),
(466, 1377164373, 2, '212.145.90.172', '?action=forum', '8: Undefined variable: user_info', '3b652080fba7618793fc1e36b9d38bfd', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(467, 1377164381, 1, '79.151.232.143', '?board=5.0', '8: Undefined variable: user_info', 'b5c7e28ec1172d44629b4fa8bc6e636e', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/MessageIndex.template.php (body_above sub template - eval?)', 372),
(468, 1377164386, 2, '212.145.90.172', '?topic=5.msg9', '8: Undefined variable: user_info', '3b652080fba7618793fc1e36b9d38bfd', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/Display.template.php (body_above sub template - eval?)', 372),
(469, 1377164388, 1, '79.151.232.143', '?topic=7.0', '8: Undefined variable: user_info', 'b5c7e28ec1172d44629b4fa8bc6e636e', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/Display.template.php (body_above sub template - eval?)', 372),
(470, 1377164422, 2, '212.145.90.172', '?action=profile;u=25', '8: Undefined variable: user_info', '3b652080fba7618793fc1e36b9d38bfd', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/languages/Who.spanish_es-utf8.php (body_above sub template - eval?)', 372),
(471, 1377164444, 2, '212.145.90.172', '?board=1.0', '8: Undefined variable: user_info', '3b652080fba7618793fc1e36b9d38bfd', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/MessageIndex.template.php (body_above sub template - eval?)', 372),
(472, 1377164449, 2, '212.145.90.172', '?topic=3.0', '8: Undefined variable: user_info', '3b652080fba7618793fc1e36b9d38bfd', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/Display.template.php (body_above sub template - eval?)', 372),
(473, 1377164449, 2, '212.145.90.172', '?topic=4.0', '8: Undefined variable: user_info', '3b652080fba7618793fc1e36b9d38bfd', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/Display.template.php (body_above sub template - eval?)', 372),
(474, 1377164500, 2, '212.145.90.172', '?action=profile;u=6', '8: Undefined variable: user_info', '3b652080fba7618793fc1e36b9d38bfd', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/languages/Who.spanish_es-utf8.php (body_above sub template - eval?)', 372),
(475, 1377164504, 2, '212.145.90.172', '?action=profile;u=0', '8: Undefined variable: user_info', '3b652080fba7618793fc1e36b9d38bfd', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/languages/Who.spanish_es-utf8.php (body_above sub template - eval?)', 372),
(476, 1377164509, 1, '79.151.232.143', '?board=1.0', '8: Undefined variable: user_info', 'b5c7e28ec1172d44629b4fa8bc6e636e', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/MessageIndex.template.php (body_above sub template - eval?)', 372),
(477, 1377164509, 2, '212.145.90.172', '?action=post;topic=4.0;last_msg=5', '8: Undefined variable: user_info', '3b652080fba7618793fc1e36b9d38bfd', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/Post.template.php (body_above sub template - eval?)', 372),
(478, 1377164517, 1, '79.151.232.143', '?topic=4.0', '8: Undefined variable: user_info', 'b5c7e28ec1172d44629b4fa8bc6e636e', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/Display.template.php (body_above sub template - eval?)', 372),
(479, 1377164550, 1, '79.151.232.143', '?action=post;topic=7.0;last_msg=8', '8: Undefined variable: user_info', 'b5c7e28ec1172d44629b4fa8bc6e636e', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/Post.template.php (body_above sub template - eval?)', 372),
(480, 1377164656, 1, '79.151.232.143', '?board=5.0', '8: Undefined variable: user_info', 'b5c7e28ec1172d44629b4fa8bc6e636e', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/MessageIndex.template.php (body_above sub template - eval?)', 372),
(481, 1377164664, 1, '79.151.232.143', '?action=forum', '8: Undefined variable: user_info', 'b5c7e28ec1172d44629b4fa8bc6e636e', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(482, 1377164669, 1, '79.151.232.143', '?action=who', '8: Undefined variable: user_info', 'b5c7e28ec1172d44629b4fa8bc6e636e', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/languages/Who.spanish_es-utf8.php (body_above sub template - eval?)', 372),
(483, 1377164677, 1, '79.151.232.143', '?action=forum', '8: Undefined variable: user_info', 'b5c7e28ec1172d44629b4fa8bc6e636e', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(484, 1377164682, 1, '79.151.232.143', '?board=1.0', '8: Undefined variable: user_info', 'b5c7e28ec1172d44629b4fa8bc6e636e', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/MessageIndex.template.php (body_above sub template - eval?)', 372),
(485, 1377164696, 1, '79.151.232.143', '?topic=4.0', '8: Undefined variable: user_info', 'b5c7e28ec1172d44629b4fa8bc6e636e', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/Display.template.php (body_above sub template - eval?)', 372),
(486, 1377164739, 2, '212.145.90.172', '?board=1.0', '8: Undefined variable: user_info', '3b652080fba7618793fc1e36b9d38bfd', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/MessageIndex.template.php (body_above sub template - eval?)', 372),
(487, 1377164745, 2, '212.145.90.172', '?topic=4.msg12', '8: Undefined variable: user_info', '3b652080fba7618793fc1e36b9d38bfd', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/Display.template.php (body_above sub template - eval?)', 372),
(488, 1377164751, 2, '212.145.90.172', '?action=forum', '8: Undefined variable: user_info', '3b652080fba7618793fc1e36b9d38bfd', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(489, 1377164754, 2, '212.145.90.172', '?action=profile;u=0', '8: Undefined variable: user_info', '3b652080fba7618793fc1e36b9d38bfd', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/languages/Who.spanish_es-utf8.php (body_above sub template - eval?)', 372),
(490, 1377164767, 1, '79.151.232.143', '?', '8: Undefined variable: user_info', 'b5c7e28ec1172d44629b4fa8bc6e636e', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/inicio.template.php (body_above sub template - eval?)', 372),
(491, 1377164782, 2, '212.145.90.172', '?action=profile;u=0', '8: Undefined variable: user_info', '3b652080fba7618793fc1e36b9d38bfd', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/languages/Who.spanish_es-utf8.php (body_above sub template - eval?)', 372),
(492, 1377164795, 2, '212.145.90.172', '?', '8: Undefined variable: user_info', '3b652080fba7618793fc1e36b9d38bfd', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/inicio.template.php (body_above sub template - eval?)', 372),
(493, 1377164810, 2, '212.145.90.172', '?action=forum', '8: Undefined variable: user_info', '3b652080fba7618793fc1e36b9d38bfd', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(494, 1377164813, 2, '212.145.90.172', '?board=5.0', '8: Undefined variable: user_info', '3b652080fba7618793fc1e36b9d38bfd', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/MessageIndex.template.php (body_above sub template - eval?)', 372),
(495, 1377164819, 2, '212.145.90.172', '?topic=6.msg10', '8: Undefined variable: user_info', '3b652080fba7618793fc1e36b9d38bfd', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/Display.template.php (body_above sub template - eval?)', 372),
(496, 1377164820, 2, '212.145.90.172', '?topic=7.msg11', '8: Undefined variable: user_info', '3b652080fba7618793fc1e36b9d38bfd', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/Display.template.php (body_above sub template - eval?)', 372),
(497, 1377164842, 2, '212.145.90.172', '?action=profile;u=2', '8: Undefined variable: user_info', '3b652080fba7618793fc1e36b9d38bfd', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/languages/Who.spanish_es-utf8.php (body_above sub template - eval?)', 372),
(498, 1377164845, 2, '212.145.90.172', '?action=profile;area=forumprofile;u=2', '8: Undefined variable: user_info', '3b652080fba7618793fc1e36b9d38bfd', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/GenericMenu.template.php (body_above sub template - eval?)', 372),
(499, 1377164871, 2, '212.145.90.172', '?action=profile;area=forumprofile;updated', '8: Undefined variable: user_info', '3b652080fba7618793fc1e36b9d38bfd', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/GenericMenu.template.php (body_above sub template - eval?)', 372),
(500, 1377164874, 2, '212.145.90.172', '?action=forum', '8: Undefined variable: user_info', '3b652080fba7618793fc1e36b9d38bfd', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(501, 1377164894, 2, '212.145.90.172', '?action=forum', '8: Undefined variable: user_info', '3b652080fba7618793fc1e36b9d38bfd', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(502, 1377164945, 2, '212.145.90.172', '?action=who', '8: Undefined variable: user_info', '3b652080fba7618793fc1e36b9d38bfd', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/languages/Who.spanish_es-utf8.php (body_above sub template - eval?)', 372),
(503, 1377164950, 2, '212.145.90.172', '?action=forum', '8: Undefined variable: user_info', '3b652080fba7618793fc1e36b9d38bfd', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(504, 1377164964, 2, '212.145.90.172', '?', '8: Undefined variable: user_info', '3b652080fba7618793fc1e36b9d38bfd', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/inicio.template.php (body_above sub template - eval?)', 372),
(505, 1377164970, 2, '212.145.90.172', '?action=forum', '8: Undefined variable: user_info', '3b652080fba7618793fc1e36b9d38bfd', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(506, 1377164974, 2, '212.145.90.172', '?topic=7.msg13', '8: Undefined variable: user_info', '3b652080fba7618793fc1e36b9d38bfd', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/Display.template.php (body_above sub template - eval?)', 372),
(507, 1377165012, 2, '212.145.90.172', '?board=5.0', '8: Undefined variable: user_info', '3b652080fba7618793fc1e36b9d38bfd', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/MessageIndex.template.php (body_above sub template - eval?)', 372),
(508, 1377165023, 2, '212.145.90.172', '?', '8: Undefined variable: user_info', '3b652080fba7618793fc1e36b9d38bfd', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/inicio.template.php (body_above sub template - eval?)', 372),
(509, 1377165147, 2, '212.145.90.172', '?action=forum', '8: Undefined variable: user_info', '3b652080fba7618793fc1e36b9d38bfd', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(510, 1377165168, 1, '79.151.232.143', '?topic=4.0', '8: Undefined variable: user_info', 'b5c7e28ec1172d44629b4fa8bc6e636e', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/Display.template.php (body_above sub template - eval?)', 372),
(511, 1377165212, 1, '79.151.232.143', '?action=post;topic=4.0;last_msg=12', '8: Undefined variable: user_info', 'b5c7e28ec1172d44629b4fa8bc6e636e', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/Post.template.php (body_above sub template - eval?)', 372),
(512, 1377165219, 1, '79.151.232.143', '?action=post;quote=12;topic=4.0', '8: Undefined variable: user_info', 'b5c7e28ec1172d44629b4fa8bc6e636e', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/Post.template.php (body_above sub template - eval?)', 372),
(513, 1377165236, 1, '79.151.232.143', '?board=1.0', '8: Undefined variable: user_info', 'b5c7e28ec1172d44629b4fa8bc6e636e', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/MessageIndex.template.php (body_above sub template - eval?)', 372),
(514, 1377165248, 1, '79.151.232.143', '?action=unreadreplies', '8: Undefined variable: user_info', 'b5c7e28ec1172d44629b4fa8bc6e636e', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/Recent.template.php (body_above sub template - eval?)', 372),
(515, 1377165258, 1, '79.151.232.143', '?action=forum', '8: Undefined variable: user_info', 'b5c7e28ec1172d44629b4fa8bc6e636e', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(516, 1377165279, 1, '79.151.232.143', '?action=profile;u=25', '8: Undefined variable: user_info', 'b5c7e28ec1172d44629b4fa8bc6e636e', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/languages/Who.spanish_es-utf8.php (body_above sub template - eval?)', 372),
(517, 1377165303, 1, '79.151.232.143', '?action=profile;u=24', '8: Undefined variable: user_info', 'b5c7e28ec1172d44629b4fa8bc6e636e', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/languages/Who.spanish_es-utf8.php (body_above sub template - eval?)', 372),
(518, 1377165319, 1, '79.151.232.143', '?action=profile;u=23', '8: Undefined variable: user_info', 'b5c7e28ec1172d44629b4fa8bc6e636e', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/languages/Who.spanish_es-utf8.php (body_above sub template - eval?)', 372),
(519, 1377165323, 1, '79.151.232.143', '?action=forum', '8: Undefined variable: user_info', 'b5c7e28ec1172d44629b4fa8bc6e636e', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(520, 1377165373, 1, '79.151.232.143', '?action=forum', '8: Undefined variable: user_info', 'b5c7e28ec1172d44629b4fa8bc6e636e', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(521, 1377165380, 1, '79.151.232.143', '?action=who', '8: Undefined variable: user_info', 'b5c7e28ec1172d44629b4fa8bc6e636e', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/languages/Who.spanish_es-utf8.php (body_above sub template - eval?)', 372),
(522, 1377165389, 1, '79.151.232.143', '?action=forum', '8: Undefined variable: user_info', 'b5c7e28ec1172d44629b4fa8bc6e636e', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(523, 1377165433, 1, '79.151.232.143', '?action=stats', '8: Undefined variable: user_info', 'b5c7e28ec1172d44629b4fa8bc6e636e', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/Stats.template.php (body_above sub template - eval?)', 372),
(524, 1377165515, 1, '79.151.232.143', '?action=profile;u=22', '8: Undefined variable: user_info', 'b5c7e28ec1172d44629b4fa8bc6e636e', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/languages/Who.spanish_es-utf8.php (body_above sub template - eval?)', 372),
(525, 1377165540, 1, '79.151.232.143', '?', '8: Undefined variable: user_info', 'b5c7e28ec1172d44629b4fa8bc6e636e', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/inicio.template.php (body_above sub template - eval?)', 372),
(526, 1377165579, 1, '79.151.232.143', '?board=6.0', '8: Undefined variable: user_info', 'b5c7e28ec1172d44629b4fa8bc6e636e', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/MessageIndex.template.php (body_above sub template - eval?)', 372),
(527, 1377165583, 1, '79.151.232.143', '?board=44.0', '8: Undefined variable: user_info', 'b5c7e28ec1172d44629b4fa8bc6e636e', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/MessageIndex.template.php (body_above sub template - eval?)', 372),
(528, 1377165587, 1, '79.151.232.143', '?topic=5.0', '8: Undefined variable: user_info', 'b5c7e28ec1172d44629b4fa8bc6e636e', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/Display.template.php (body_above sub template - eval?)', 372),
(529, 1377165595, 1, '79.151.232.143', '?board=6.0', '8: Undefined variable: user_info', 'b5c7e28ec1172d44629b4fa8bc6e636e', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/MessageIndex.template.php (body_above sub template - eval?)', 372),
(530, 1377165710, 2, '212.145.90.172', '?action=forum', '8: Undefined variable: user_info', '3b652080fba7618793fc1e36b9d38bfd', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(531, 1377165714, 2, '212.145.90.172', '?board=1.0', '8: Undefined variable: user_info', '3b652080fba7618793fc1e36b9d38bfd', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/MessageIndex.template.php (body_above sub template - eval?)', 372),
(532, 1377165724, 2, '212.145.90.172', '?topic=4.msg13', '8: Undefined variable: user_info', '3b652080fba7618793fc1e36b9d38bfd', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/Display.template.php (body_above sub template - eval?)', 372),
(533, 1377165732, 2, '212.145.90.172', '?', '8: Undefined variable: user_info', '3b652080fba7618793fc1e36b9d38bfd', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/inicio.template.php (body_above sub template - eval?)', 372),
(534, 1377165943, 1, '79.151.232.143', '?action=forum', '8: Undefined variable: user_info', 'b5c7e28ec1172d44629b4fa8bc6e636e', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(535, 1377166271, 1, '79.151.232.143', '?action=who', '8: Undefined variable: user_info', 'b5c7e28ec1172d44629b4fa8bc6e636e', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/languages/Who.spanish_es-utf8.php (body_above sub template - eval?)', 372),
(536, 1377166282, 1, '79.151.232.143', '?action=forum', '8: Undefined variable: user_info', 'b5c7e28ec1172d44629b4fa8bc6e636e', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(537, 1377166457, 2, '212.145.90.172', '?action=forum', '8: Undefined variable: user_info', '3b652080fba7618793fc1e36b9d38bfd', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(538, 1377166475, 2, '212.145.90.172', '?action=profile;u=2', '8: Undefined variable: user_info', '3b652080fba7618793fc1e36b9d38bfd', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/languages/Who.spanish_es-utf8.php (body_above sub template - eval?)', 372),
(539, 1377166526, 1, '79.151.232.143', '?action=pm', '8: Undefined variable: user_info', 'b5c7e28ec1172d44629b4fa8bc6e636e', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/GenericMenu.template.php (body_above sub template - eval?)', 372),
(540, 1377166528, 2, '212.145.90.172', '?action=profile;area=theme;u=2', '8: Undefined variable: user_info', '3b652080fba7618793fc1e36b9d38bfd', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/languages/Settings.spanish_es-utf8.php (body_above sub template - eval?)', 372),
(541, 1377166533, 2, '212.145.90.172', '?action=theme;sa=pick;u=2;affd243=3b652080fba7618793fc1e36b9d38bfd', '8: Undefined variable: user_info', '3b652080fba7618793fc1e36b9d38bfd', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/Themes.template.php (body_above sub template - eval?)', 372),
(542, 1377166715, 2, '212.145.90.172', '?action=forum', '8: Undefined variable: user_info', '3b652080fba7618793fc1e36b9d38bfd', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(543, 1377166873, 2, '212.145.90.172', '?action=pm', '8: Undefined variable: user_info', '3b652080fba7618793fc1e36b9d38bfd', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/GenericMenu.template.php (body_above sub template - eval?)', 372),
(544, 1377166883, 2, '212.145.90.172', '?action=pm;f=sent', '8: Undefined variable: user_info', '3b652080fba7618793fc1e36b9d38bfd', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/GenericMenu.template.php (body_above sub template - eval?)', 372),
(545, 1377167082, 2, '212.145.90.172', '?action=forum', '8: Undefined variable: user_info', '3b652080fba7618793fc1e36b9d38bfd', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(546, 1377167138, 1, '79.151.232.143', '?action=admin;area=theme', '8: Undefined variable: user_info', 'b5c7e28ec1172d44629b4fa8bc6e636e', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/Login.template.php (body_above sub template - eval?)', 372),
(547, 1377167340, 1, '79.151.232.143', '?action=admin;area=theme', '8: Undefined variable: user_info', 'b5c7e28ec1172d44629b4fa8bc6e636e', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/Themes.template.php (body_above sub template - eval?)', 372),
(548, 1377167388, 1, '79.151.232.143', '?action=admin;area=theme;e66ccca27794=b5c7e28ec1172d44629b4fa8bc6e636e;sa=admin', '8: Undefined variable: user_info', 'b5c7e28ec1172d44629b4fa8bc6e636e', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/Themes.template.php (body_above sub template - eval?)', 372),
(549, 1377167436, 2, '212.145.90.172', '?action=forum', '8: Undefined variable: user_info', '3b652080fba7618793fc1e36b9d38bfd', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(550, 1377167447, 2, '212.145.90.172', '?', '8: Undefined variable: user_info', '3b652080fba7618793fc1e36b9d38bfd', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/inicio.template.php (body_above sub template - eval?)', 372),
(551, 1377167453, 2, '212.145.90.172', '?action=forum', '8: Undefined variable: user_info', '3b652080fba7618793fc1e36b9d38bfd', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(552, 1377167565, 1, '79.151.232.143', '?', '8: Undefined variable: user_info', 'b5c7e28ec1172d44629b4fa8bc6e636e', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/inicio.template.php (body_above sub template - eval?)', 372),
(553, 1377167582, 1, '79.151.232.143', '?action=forum', '8: Undefined variable: user_info', 'b5c7e28ec1172d44629b4fa8bc6e636e', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(554, 1377167597, 1, '79.151.232.143', '?action=who', '8: Undefined variable: user_info', 'b5c7e28ec1172d44629b4fa8bc6e636e', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/languages/Who.spanish_es-utf8.php (body_above sub template - eval?)', 372),
(555, 1377167746, 1, '79.151.232.143', '?action=forum', '8: Undefined variable: user_info', 'b5c7e28ec1172d44629b4fa8bc6e636e', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(556, 1377167746, 2, '212.145.90.172', '?action=forum', '8: Undefined variable: user_info', '3b652080fba7618793fc1e36b9d38bfd', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(557, 1377167765, 2, '212.145.90.172', '?action=who', '8: Undefined variable: user_info', '3b652080fba7618793fc1e36b9d38bfd', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/languages/Who.spanish_es-utf8.php (body_above sub template - eval?)', 372),
(558, 1377167776, 2, '212.145.90.172', '?', '8: Undefined variable: user_info', '3b652080fba7618793fc1e36b9d38bfd', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/inicio.template.php (body_above sub template - eval?)', 372),
(559, 1377168024, 2, '212.145.90.172', '?action=forum', '8: Undefined variable: user_info', '3b652080fba7618793fc1e36b9d38bfd', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(560, 1377168037, 1, '79.151.232.143', '?action=forum', '8: Undefined variable: user_info', 'b5c7e28ec1172d44629b4fa8bc6e636e', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(561, 1377168060, 2, '212.145.90.172', '?topic=2.msg8', '8: Undefined variable: user_info', '3b652080fba7618793fc1e36b9d38bfd', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/Display.template.php (body_above sub template - eval?)', 372),
(562, 1377168091, 2, '212.145.90.172', '?action=pm;sa=send', '8: Undefined variable: user_info', '3b652080fba7618793fc1e36b9d38bfd', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/GenericControls.template.php (body_above sub template - eval?)', 372),
(563, 1377168094, 2, '212.145.90.172', '?action=forum', '8: Undefined variable: user_info', '3b652080fba7618793fc1e36b9d38bfd', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(564, 1377168098, 2, '212.145.90.172', '?action=profile;u=1', '8: Undefined variable: user_info', '3b652080fba7618793fc1e36b9d38bfd', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/languages/Who.spanish_es-utf8.php (body_above sub template - eval?)', 372),
(565, 1377168108, 1, '79.151.232.143', '?action=forum', '8: Undefined variable: user_info', 'b5c7e28ec1172d44629b4fa8bc6e636e', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(566, 1377168115, 2, '212.145.90.172', '?action=pm;sa=send;u=1', '8: Undefined variable: user_info', '3b652080fba7618793fc1e36b9d38bfd', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/GenericControls.template.php (body_above sub template - eval?)', 372),
(567, 1377168135, 2, '212.145.90.172', '?action=pm;f=inbox;l=-1;done=sent', '8: Undefined variable: user_info', '3b652080fba7618793fc1e36b9d38bfd', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/GenericMenu.template.php (body_above sub template - eval?)', 372),
(568, 1377168155, 2, '212.145.90.172', '?action=profile;area=account', '8: Undefined variable: user_info', '3b652080fba7618793fc1e36b9d38bfd', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/GenericMenu.template.php (body_above sub template - eval?)', 372),
(569, 1377168160, 2, '212.145.90.172', '?action=profile;area=pmprefs;u=2', '8: Undefined variable: user_info', '3b652080fba7618793fc1e36b9d38bfd', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/GenericMenu.template.php (body_above sub template - eval?)', 372),
(570, 1377168165, 1, '79.151.232.143', '?board=5.0', '8: Undefined variable: user_info', 'b5c7e28ec1172d44629b4fa8bc6e636e', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/MessageIndex.template.php (body_above sub template - eval?)', 372);
INSERT INTO `smf_ikilllog_errors` (`id_error`, `log_time`, `id_member`, `ip`, `url`, `message`, `session`, `error_type`, `file`, `line`) VALUES
(571, 1377168171, 1, '79.151.232.143', '?board=1.0', '8: Undefined variable: user_info', 'b5c7e28ec1172d44629b4fa8bc6e636e', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/MessageIndex.template.php (body_above sub template - eval?)', 372),
(572, 1377168178, 2, '212.145.90.172', '?action=profile;area=pmprefs;updated', '8: Undefined variable: user_info', '3b652080fba7618793fc1e36b9d38bfd', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/GenericMenu.template.php (body_above sub template - eval?)', 372),
(573, 1377168188, 2, '212.145.90.172', '?action=forum', '8: Undefined variable: user_info', '3b652080fba7618793fc1e36b9d38bfd', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(574, 1377168340, 2, '212.145.90.172', '?action=forum', '8: Undefined variable: user_info', '3b652080fba7618793fc1e36b9d38bfd', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(575, 1377168346, 1, '79.151.232.143', '?board=1.0', '8: Undefined variable: user_info', 'b5c7e28ec1172d44629b4fa8bc6e636e', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/MessageIndex.template.php (body_above sub template - eval?)', 372),
(576, 1377168351, 1, '79.151.232.143', '?action=pm', '8: Undefined variable: user_info', 'b5c7e28ec1172d44629b4fa8bc6e636e', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/GenericMenu.template.php (body_above sub template - eval?)', 372),
(577, 1377168382, 1, '79.151.232.143', '?action=forum', '8: Undefined variable: user_info', 'b5c7e28ec1172d44629b4fa8bc6e636e', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 372),
(578, 1377168408, 22, '88.0.92.40', '?', '8: Undefined variable: user_info', '3ac3abb4d7207a43f0117ee7e7becc24', 'undefined_vars', '/home/nexuspla/public_html/Themes/ikillcraft/inicio.template.php (body_above sub template - eval?)', 372),
(579, 1377168886, 2, '212.145.90.172', '?action=admin', '¡Intento de ingreso a administración!<br />Referidor: http://nexusplayers.x10host.com/index.php?action=admin<br />Agente de usuario: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:23.0) Gecko/20100101 Firefox/23.0<br />IP: 212.145.90.172', '3b652080fba7618793fc1e36b9d38bfd', 'critical', '', 0),
(580, 1377169932, 2, '212.145.90.172', '?action=post;msg=2;topic=2.0', '8: Undefined variable: user_info', '3b652080fba7618793fc1e36b9d38bfd', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/Post.template.php (main sub template - eval?)', 696),
(581, 1377169945, 2, '212.145.90.172', '?action=post2;start=0;msg=2;affd243=3b652080fba7618793fc1e36b9d38bfd;board=6', '8: Array to string conversion', '3b652080fba7618793fc1e36b9d38bfd', 'general', '/home/nexuspla/public_html/Sources/Subs.php', 2382),
(582, 1377169946, 2, '212.145.90.172', '?topic=2.msg2', '8: Array to string conversion', '3b652080fba7618793fc1e36b9d38bfd', 'general', '/home/nexuspla/public_html/Sources/Subs.php', 2382),
(583, 1377170406, 2, '212.145.90.172', '?action=post;topic=4.0;last_msg=13', '8: Undefined variable: user_info', '3b652080fba7618793fc1e36b9d38bfd', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/Post.template.php (main sub template - eval?)', 696),
(584, 1377171239, 1, '79.151.232.143', '?topic=2.msg14;boardseen', '8: Array to string conversion', 'b5c7e28ec1172d44629b4fa8bc6e636e', 'general', '/home/nexuspla/public_html/Sources/Subs.php', 2382),
(585, 1377171257, 1, '79.151.232.143', '?action=post;quote=15;topic=2.0', '8: Array to string conversion', 'b5c7e28ec1172d44629b4fa8bc6e636e', 'general', '/home/nexuspla/public_html/Sources/Subs.php', 2382),
(586, 1377171257, 1, '79.151.232.143', '?action=post;quote=15;topic=2.0', '8: Undefined variable: user_info', 'b5c7e28ec1172d44629b4fa8bc6e636e', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/Post.template.php (main sub template - eval?)', 696),
(587, 1377171535, 2, '212.145.90.172', '?topic=2.0', '8: Array to string conversion', '3b652080fba7618793fc1e36b9d38bfd', 'general', '/home/nexuspla/public_html/Sources/Subs.php', 2382),
(588, 1377171584, 28, '83.61.102.5', '?action=forum', '8: Undefined variable: user_info', '4ac83919f3a015557685e3024d26b057', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (main sub template - eval?)', 217),
(589, 1377174040, 28, '83.61.102.5', '?action=forum', '8: Undefined variable: user_info', '4ac83919f3a015557685e3024d26b057', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (main sub template - eval?)', 217),
(590, 1377174053, 28, '83.61.102.5', '?action=post;board=7.0', '8: Undefined variable: user_info', '4ac83919f3a015557685e3024d26b057', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/Post.template.php (main sub template - eval?)', 696),
(591, 1377174135, 1, '79.151.232.143', '?action=unread', '8: Undefined variable: user_info', 'b5c7e28ec1172d44629b4fa8bc6e636e', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/Recent.template.php (unread sub template - eval?)', 183),
(592, 1377174417, 1, '79.151.232.143', '?action=unread', '8: Undefined variable: user_info', 'b5c7e28ec1172d44629b4fa8bc6e636e', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/Recent.template.php (unread sub template - eval?)', 183),
(593, 1377184279, 31, '37.15.101.52', '?action=forum', '8: Undefined variable: user_info', '5934daabeb5f69b3e27018c8efbcd4a0', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (main sub template - eval?)', 217),
(594, 1377184310, 31, '37.15.101.52', '?action=forum', '8: Undefined variable: user_info', '5934daabeb5f69b3e27018c8efbcd4a0', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (main sub template - eval?)', 217),
(595, 1377185028, 31, '37.15.101.52', '?action=forum', '8: Undefined variable: user_info', '5934daabeb5f69b3e27018c8efbcd4a0', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (main sub template - eval?)', 217),
(596, 1377185977, 1, '79.151.232.143', '?action=post;board=1.0', '8: Undefined variable: user_info', 'b5c7e28ec1172d44629b4fa8bc6e636e', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/Post.template.php (main sub template - eval?)', 696),
(597, 1377187229, 1, '79.151.232.143', '?action=post;msg=18;topic=9.0', '8: Undefined variable: user_info', 'b5c7e28ec1172d44629b4fa8bc6e636e', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/Post.template.php (main sub template - eval?)', 696),
(598, 1377187274, 1, '79.151.232.143', '?action=post;msg=18;topic=9.0', '8: Undefined variable: user_info', 'b5c7e28ec1172d44629b4fa8bc6e636e', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/Post.template.php (main sub template - eval?)', 696),
(599, 1377187311, 1, '79.151.232.143', '?action=post;msg=18;topic=9.0', '8: Undefined variable: user_info', 'b5c7e28ec1172d44629b4fa8bc6e636e', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/Post.template.php (main sub template - eval?)', 696),
(600, 1377187431, 1, '79.151.232.143', '?action=post;msg=18;topic=9.0', '8: Undefined variable: user_info', 'b5c7e28ec1172d44629b4fa8bc6e636e', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/Post.template.php (main sub template - eval?)', 696),
(601, 1377187490, 1, '79.151.232.143', '?action=post;msg=18;topic=9.0', '8: Undefined variable: user_info', 'b5c7e28ec1172d44629b4fa8bc6e636e', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/Post.template.php (main sub template - eval?)', 696),
(602, 1377187533, 33, '84.122.114.5', '?action=post;topic=9.0;last_msg=18', '8: Undefined variable: user_info', '7ce235286c77a395456d915d2e8fc2c8', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/Post.template.php (main sub template - eval?)', 696),
(603, 1377187539, 33, '84.122.114.5', '?board=1.0', '8: Undefined variable: user_info', '7ce235286c77a395456d915d2e8fc2c8', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/MessageIndex.template.php (main sub template - eval?)', 273),
(604, 1377187668, 33, '84.122.114.5', '?action=post;msg=19;topic=9.0', '8: Undefined variable: user_info', '7ce235286c77a395456d915d2e8fc2c8', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/Post.template.php (main sub template - eval?)', 696),
(605, 1377187718, 33, '84.122.114.5', '?action=forum', '8: Undefined variable: user_info', '7ce235286c77a395456d915d2e8fc2c8', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (main sub template - eval?)', 217),
(606, 1377187725, 33, '84.122.114.5', '?topic=2.msg0;boardseen', '8: Array to string conversion', '7ce235286c77a395456d915d2e8fc2c8', 'general', '/home/nexuspla/public_html/Sources/Subs.php', 2382),
(607, 1377187845, 1, '79.151.232.143', '?action=post;msg=18;topic=9.0', '8: Undefined variable: user_info', 'b5c7e28ec1172d44629b4fa8bc6e636e', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/Post.template.php (main sub template - eval?)', 696),
(608, 1377188969, 1, '79.151.232.143', '?action=post;msg=18;topic=9.0', '8: Undefined variable: user_info', 'b5c7e28ec1172d44629b4fa8bc6e636e', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/Post.template.php (main sub template - eval?)', 696),
(609, 1377190461, 34, '95.19.106.9', '?board=1.0', '8: Undefined variable: user_info', '26fba1b304ef45aae9e77f0e53c72d45', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/MessageIndex.template.php (main sub template - eval?)', 273),
(610, 1377190475, 35, '190.193.113.78', '?action=post;topic=9.0;last_msg=20', '8: Undefined variable: user_info', '21b09f2fc0d4f8aea7d7375583df7c16', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/Post.template.php (main sub template - eval?)', 696),
(611, 1377190491, 35, '190.193.113.78', '?board=1.0', '8: Undefined variable: user_info', '21b09f2fc0d4f8aea7d7375583df7c16', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/MessageIndex.template.php (main sub template - eval?)', 273),
(612, 1377191123, 35, '190.193.113.78', '?action=forum', '8: Undefined variable: user_info', '21b09f2fc0d4f8aea7d7375583df7c16', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (main sub template - eval?)', 217),
(613, 1377191137, 35, '190.193.113.78', '?board=63.0', '8: Undefined variable: user_info', '21b09f2fc0d4f8aea7d7375583df7c16', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/MessageIndex.template.php (main sub template - eval?)', 273),
(614, 1377191700, 0, '190.176.53.17', '?topic=2.0', '8: Array to string conversion', 'aec703a4379e66a5b4a9c0a71fdb4a79', 'general', '/home/nexuspla/public_html/Sources/Subs.php', 2382),
(615, 1377193496, 38, '87.217.50.207', '?action=post;topic=9.0;last_msg=21', '8: Undefined variable: user_info', '1737d593f3480080e8174da07f0fd7d9', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/Post.template.php (main sub template - eval?)', 696),
(616, 1377193512, 38, '87.217.50.207', '?board=1.0', '8: Undefined variable: user_info', '1737d593f3480080e8174da07f0fd7d9', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/MessageIndex.template.php (main sub template - eval?)', 273),
(617, 1377193530, 38, '87.217.50.207', '?action=post;msg=22;topic=9.0', '8: Undefined variable: user_info', '1737d593f3480080e8174da07f0fd7d9', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/Post.template.php (main sub template - eval?)', 696),
(618, 1377193585, 17, '87.217.50.207', '?action=post;topic=9.0;last_msg=22', '8: Undefined variable: user_info', '1737d593f3480080e8174da07f0fd7d9', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/Post.template.php (main sub template - eval?)', 696),
(619, 1377193607, 17, '87.217.50.207', '?board=1.0', '8: Undefined variable: user_info', '1737d593f3480080e8174da07f0fd7d9', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/MessageIndex.template.php (main sub template - eval?)', 273),
(620, 1377193764, 39, '87.217.50.207', '?action=post;topic=9.0;last_msg=23', '8: Undefined variable: user_info', 'a4161890ff98a148835c92f60ff5b0bd', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/Post.template.php (main sub template - eval?)', 696),
(621, 1377193783, 39, '87.217.50.207', '?board=1.0', '8: Undefined variable: user_info', 'a4161890ff98a148835c92f60ff5b0bd', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/MessageIndex.template.php (main sub template - eval?)', 273),
(622, 1377195974, 0, '198.91.80.15', '?topic=2.0', '8: Array to string conversion', '2f5234574cdbff47a556416b692a55ae', 'general', '/home/nexuspla/public_html/Sources/Subs.php', 2382),
(623, 1377200028, 0, '37.15.101.52', '?action=register2', '2: htmlspecialchars() expects parameter 1 to be string, array given', 'c81f8ab83746446c9f6b14866e8e438f', 'general', '/home/nexuspla/public_html/Sources/Load.php(183) : runtime-created function', 3),
(624, 1377200034, 0, '37.15.101.52', '?action=register2', '2: htmlspecialchars() expects parameter 1 to be string, array given', 'c81f8ab83746446c9f6b14866e8e438f', 'general', '/home/nexuspla/public_html/Sources/Load.php(183) : runtime-created function', 3),
(625, 1377200036, 0, '37.15.101.52', '?action=register2', '2: strtoupper() expects parameter 1 to be string, array given', 'c81f8ab83746446c9f6b14866e8e438f', 'general', '/home/nexuspla/public_html/Sources/Subs-Editor.php', 1987),
(626, 1377200036, 0, '37.15.101.52', '?action=register2', '2: htmlspecialchars() expects parameter 1 to be string, array given', 'c81f8ab83746446c9f6b14866e8e438f', 'general', '/home/nexuspla/public_html/Sources/Load.php(183) : runtime-created function', 3),
(627, 1377200045, 0, '37.15.101.52', '?action=register2', '2: htmlspecialchars() expects parameter 1 to be string, array given', 'c81f8ab83746446c9f6b14866e8e438f', 'general', '/home/nexuspla/public_html/Sources/Load.php(183) : runtime-created function', 3),
(628, 1377200061, 0, '37.15.101.52', '?action=register2', '2: strtoupper() expects parameter 1 to be string, array given', 'c81f8ab83746446c9f6b14866e8e438f', 'general', '/home/nexuspla/public_html/Sources/Subs-Editor.php', 1987),
(629, 1377200061, 0, '37.15.101.52', '?action=register2', '2: htmlspecialchars() expects parameter 1 to be string, array given', 'c81f8ab83746446c9f6b14866e8e438f', 'general', '/home/nexuspla/public_html/Sources/Load.php(183) : runtime-created function', 3),
(630, 1377200096, 0, '37.15.101.52', '?action=register2', '2: htmlspecialchars() expects parameter 1 to be string, array given', 'c81f8ab83746446c9f6b14866e8e438f', 'general', '/home/nexuspla/public_html/Sources/Load.php(183) : runtime-created function', 3),
(631, 1377202862, 41, '179.24.31.40', '?action=post;topic=9.0;last_msg=24', '8: Undefined variable: user_info', 'c9a8a6d102aa782a9e012cb1f7cf3a31', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/Post.template.php (main sub template - eval?)', 696),
(632, 1377202875, 41, '179.24.31.40', '?board=1.0', '8: Undefined variable: user_info', 'c9a8a6d102aa782a9e012cb1f7cf3a31', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/MessageIndex.template.php (main sub template - eval?)', 273),
(633, 1377203157, 41, '179.24.31.40', '?action=forum', '8: Undefined variable: user_info', 'c9a8a6d102aa782a9e012cb1f7cf3a31', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (main sub template - eval?)', 217),
(634, 1377203227, 14, '83.34.170.224', '?action=forum', '8: Undefined variable: user_info', '256782cdb916b83eaca8cc3841c97e3d', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (main sub template - eval?)', 217),
(635, 1377203242, 14, '83.34.170.224', '?board=1.0', '8: Undefined variable: user_info', '256782cdb916b83eaca8cc3841c97e3d', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/MessageIndex.template.php (main sub template - eval?)', 273),
(636, 1377203287, 2, '212.145.90.172', '?board=1.0', '8: Undefined variable: user_info', '6da2ca8490c6232cc83025d84c818928', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/MessageIndex.template.php (main sub template - eval?)', 273),
(637, 1377203294, 2, '212.145.90.172', '?board=63.0', '8: Undefined variable: user_info', '6da2ca8490c6232cc83025d84c818928', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/MessageIndex.template.php (main sub template - eval?)', 273),
(638, 1377217794, 42, '190.151.250.140', '?action=forum', '8: Undefined variable: user_info', '86781f577ff617c722176ee80b9a24b1', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (main sub template - eval?)', 217),
(639, 1377217824, 42, '190.151.250.140', '?board=63.0', '8: Undefined variable: user_info', '86781f577ff617c722176ee80b9a24b1', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/MessageIndex.template.php (main sub template - eval?)', 273),
(640, 1377220193, 43, '190.160.159.65', '?board=1.0', '8: Undefined variable: user_info', 'c690c013818e622376d82fe2072c47e8', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/MessageIndex.template.php (main sub template - eval?)', 273),
(641, 1377246709, 2, '212.145.90.172', '?board=1.0', '8: Undefined variable: user_info', '9822de65958c63e73f5a899b3947ddd6', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/MessageIndex.template.php (main sub template - eval?)', 273),
(642, 1377251469, 28, '81.44.49.30', '?action=post;topic=9.0;last_msg=26', '8: Undefined variable: user_info', '53c67736c1bebb18bf2847d442b95bb5', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/Post.template.php (main sub template - eval?)', 696),
(643, 1377251475, 28, '81.44.49.30', '?board=1.0', '8: Undefined variable: user_info', '53c67736c1bebb18bf2847d442b95bb5', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/MessageIndex.template.php (main sub template - eval?)', 273),
(644, 1377252314, 2, '212.145.90.172', '?board=1.0', '8: Undefined variable: user_info', '9822de65958c63e73f5a899b3947ddd6', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/MessageIndex.template.php (main sub template - eval?)', 273),
(645, 1377271287, 47, '88.3.184.2', '?action=forum', '8: Undefined variable: user_info', '287db8ea6a6018a415caea88ae2f123c', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (main sub template - eval?)', 217),
(646, 1377271294, 47, '88.3.184.2', '?action=forum', '8: Undefined variable: user_info', '287db8ea6a6018a415caea88ae2f123c', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (main sub template - eval?)', 217),
(647, 1377271306, 47, '88.3.184.2', '?board=63.0', '8: Undefined variable: user_info', '287db8ea6a6018a415caea88ae2f123c', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/MessageIndex.template.php (main sub template - eval?)', 273),
(648, 1377271342, 47, '88.3.184.2', '?board=1.0', '8: Undefined variable: user_info', '287db8ea6a6018a415caea88ae2f123c', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/MessageIndex.template.php (main sub template - eval?)', 273),
(649, 1377271370, 47, '88.3.184.2', '?action=forum', '8: Undefined variable: user_info', '287db8ea6a6018a415caea88ae2f123c', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (main sub template - eval?)', 217),
(650, 1377271405, 47, '88.3.184.2', '?action=post;board=62.0', '8: Undefined variable: user_info', '287db8ea6a6018a415caea88ae2f123c', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/Post.template.php (main sub template - eval?)', 696),
(651, 1377271492, 47, '88.3.184.2', '?board=44.0', '8: Undefined variable: user_info', '287db8ea6a6018a415caea88ae2f123c', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/MessageIndex.template.php (main sub template - eval?)', 273),
(652, 1377281973, 48, '200.104.210.5', '?action=post;topic=9.0;last_msg=27', '8: Undefined variable: user_info', 'c5cc5db9d0f0b94a9bdd796464ee997a', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/Post.template.php (main sub template - eval?)', 696),
(653, 1377282038, 48, '200.104.210.5', '?board=1.0', '8: Undefined variable: user_info', 'c5cc5db9d0f0b94a9bdd796464ee997a', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/MessageIndex.template.php (main sub template - eval?)', 273),
(654, 1377284865, 51, '187.134.207.169', '?action=forum', '8: Undefined variable: user_info', 'daf8f84c8f9e5c0aee3c6f0d7a15ed16', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (main sub template - eval?)', 217),
(655, 1377284868, 51, '187.134.207.169', '?board=1.0', '8: Undefined variable: user_info', 'daf8f84c8f9e5c0aee3c6f0d7a15ed16', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/MessageIndex.template.php (main sub template - eval?)', 273),
(656, 1377284980, 51, '187.134.207.169', '?action=forum', '8: Undefined variable: user_info', 'daf8f84c8f9e5c0aee3c6f0d7a15ed16', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (main sub template - eval?)', 217),
(657, 1377285003, 51, '187.134.207.169', '?board=63.0', '8: Undefined variable: user_info', 'daf8f84c8f9e5c0aee3c6f0d7a15ed16', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/MessageIndex.template.php (main sub template - eval?)', 273),
(658, 1377285066, 51, '187.134.207.169', '?action=forum', '8: Undefined variable: user_info', 'daf8f84c8f9e5c0aee3c6f0d7a15ed16', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (main sub template - eval?)', 217),
(659, 1377285071, 51, '187.134.207.169', '?board=1.0', '8: Undefined variable: user_info', 'daf8f84c8f9e5c0aee3c6f0d7a15ed16', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/MessageIndex.template.php (main sub template - eval?)', 273),
(660, 1377285141, 51, '187.134.207.169', '?action=post;topic=9.0;last_msg=28', '8: Undefined variable: user_info', 'daf8f84c8f9e5c0aee3c6f0d7a15ed16', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/Post.template.php (main sub template - eval?)', 696),
(661, 1377285168, 51, '187.134.207.169', '?board=1.0', '8: Undefined variable: user_info', 'daf8f84c8f9e5c0aee3c6f0d7a15ed16', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/MessageIndex.template.php (main sub template - eval?)', 273),
(662, 1377294588, 2, '212.145.90.172', '?board=1.0', '8: Undefined variable: user_info', 'b4dd2b155cf947bc12333acf729b5233', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/MessageIndex.template.php (main sub template - eval?)', 273),
(663, 1377314635, 0, '190.218.12.204', '?topic=2.0', '8: Array to string conversion', 'ec0ba192c41dd87245acd900ea34bc74', 'general', '/home/nexuspla/public_html/Sources/Subs.php', 2382),
(664, 1377342907, 47, '88.3.184.2', '?board=1.0', '8: Undefined variable: user_info', 'a2eae987ab06f518f30c012435f7586a', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/MessageIndex.template.php (main sub template - eval?)', 273),
(665, 1377342908, 47, '88.3.184.2', '?board=5.0', '8: Undefined variable: user_info', 'a2eae987ab06f518f30c012435f7586a', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/MessageIndex.template.php (main sub template - eval?)', 273),
(666, 1377342910, 47, '88.3.184.2', '?board=6.0', '8: Undefined variable: user_info', 'a2eae987ab06f518f30c012435f7586a', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/MessageIndex.template.php (main sub template - eval?)', 273),
(667, 1377342932, 47, '88.3.184.2', '?action=post;topic=9.0;last_msg=29', '8: Undefined variable: user_info', 'a2eae987ab06f518f30c012435f7586a', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/Post.template.php (main sub template - eval?)', 696),
(668, 1377342946, 47, '88.3.184.2', '?board=1.0', '8: Undefined variable: user_info', 'a2eae987ab06f518f30c012435f7586a', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/MessageIndex.template.php (main sub template - eval?)', 273),
(669, 1377343045, 47, '88.3.184.2', '?topic=2.0', '8: Array to string conversion', 'a2eae987ab06f518f30c012435f7586a', 'general', '/home/nexuspla/public_html/Sources/Subs.php', 2382),
(670, 1377343067, 47, '88.3.184.2', '?action=post;board=6.0', '8: Undefined variable: user_info', 'a2eae987ab06f518f30c012435f7586a', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/Post.template.php (main sub template - eval?)', 696),
(671, 1377343228, 47, '88.3.184.2', '?action=post2;board=6;preview;xml', '8: Array to string conversion', 'a2eae987ab06f518f30c012435f7586a', 'general', '/home/nexuspla/public_html/Sources/Subs.php', 2382),
(672, 1377343260, 47, '88.3.184.2', '?action=post2;board=6;preview;xml', '8: Array to string conversion', 'a2eae987ab06f518f30c012435f7586a', 'general', '/home/nexuspla/public_html/Sources/Subs.php', 2382),
(673, 1377343275, 47, '88.3.184.2', '?action=post2;board=6;preview;xml', '8: Array to string conversion', 'a2eae987ab06f518f30c012435f7586a', 'general', '/home/nexuspla/public_html/Sources/Subs.php', 2382),
(674, 1377343285, 47, '88.3.184.2', '?action=post2;board=6;preview;xml', '8: Array to string conversion', 'a2eae987ab06f518f30c012435f7586a', 'general', '/home/nexuspla/public_html/Sources/Subs.php', 2382),
(675, 1377343294, 47, '88.3.184.2', '?action=post2;board=6;preview;xml', '8: Array to string conversion', 'a2eae987ab06f518f30c012435f7586a', 'general', '/home/nexuspla/public_html/Sources/Subs.php', 2382),
(676, 1377343300, 47, '88.3.184.2', '?action=post2;start=0;board=6', '8: Array to string conversion', 'a2eae987ab06f518f30c012435f7586a', 'general', '/home/nexuspla/public_html/Sources/Subs.php', 2382),
(677, 1377343305, 47, '88.3.184.2', '?topic=10.0', '8: Array to string conversion', 'a2eae987ab06f518f30c012435f7586a', 'general', '/home/nexuspla/public_html/Sources/Subs.php', 2382),
(678, 1377344258, 1, '79.151.232.143', '?topic=10.msg17;boardseen', '8: Array to string conversion', '324fe64bea50e93ddeebd54bbea26f73', 'general', '/home/nexuspla/public_html/Sources/Subs.php', 2382),
(679, 1377356845, 2, '212.145.90.172', '?board=1.0', '8: Undefined variable: user_info', '5755ca69102eac73a9c47091477f2902', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/MessageIndex.template.php (main sub template - eval?)', 273),
(680, 1377356846, 2, '212.145.90.172', '?board=6.0', '8: Undefined variable: user_info', '5755ca69102eac73a9c47091477f2902', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/MessageIndex.template.php (main sub template - eval?)', 273),
(681, 1377356893, 2, '212.145.90.172', '?topic=10.msg0', '8: Array to string conversion', '5755ca69102eac73a9c47091477f2902', 'general', '/home/nexuspla/public_html/Sources/Subs.php', 2382),
(682, 1377367587, 47, '88.3.184.2', '?topic=2.0', '8: Array to string conversion', '46bb532cd5e3fc95077e0aca55f71a0d', 'general', '/home/nexuspla/public_html/Sources/Subs.php', 2382),
(683, 1377367588, 47, '88.3.184.2', '?topic=10.0', '8: Array to string conversion', '46bb532cd5e3fc95077e0aca55f71a0d', 'general', '/home/nexuspla/public_html/Sources/Subs.php', 2382),
(684, 1377370762, 1, '79.151.232.143', '?topic=10.msg32', '8: Array to string conversion', 'b48017bc024e30c14374630c19e5f9ea', 'general', '/home/nexuspla/public_html/Sources/Subs.php', 2382),
(685, 1377373798, 47, '88.3.184.2', '?action=post;board=15.0', '8: Undefined variable: user_info', '46bb532cd5e3fc95077e0aca55f71a0d', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/Post.template.php (main sub template - eval?)', 696),
(686, 1377375298, 0, '201.165.80.217', '?action=forum', '8: Undefined variable: user_info', '439858fce7575317676012bf952c8527', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (main sub template - eval?)', 217),
(687, 1377375307, 0, '201.165.80.217', '?board=5.0', '8: Undefined variable: user_info', '439858fce7575317676012bf952c8527', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/MessageIndex.template.php (main sub template - eval?)', 273),
(688, 1377375315, 0, '201.165.80.217', '?action=post;board=5.0', '8: Undefined variable: user_info', '439858fce7575317676012bf952c8527', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/Post.template.php (main sub template - eval?)', 696),
(689, 1377375564, 0, '201.165.80.217', '?board=5.0', '8: Undefined variable: user_info', '439858fce7575317676012bf952c8527', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/MessageIndex.template.php (main sub template - eval?)', 273),
(690, 1377375568, 0, '201.165.80.217', '?action=post;board=5.0', '8: Undefined variable: user_info', '439858fce7575317676012bf952c8527', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/Post.template.php (main sub template - eval?)', 696),
(691, 1377375579, 0, '201.165.80.217', '?board=5.0', '8: Undefined variable: user_info', '439858fce7575317676012bf952c8527', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/MessageIndex.template.php (main sub template - eval?)', 273),
(692, 1377375582, 0, '201.165.80.217', '?action=post;board=5.0', '8: Undefined variable: user_info', '439858fce7575317676012bf952c8527', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/Post.template.php (main sub template - eval?)', 696),
(693, 1377375590, 0, '201.165.80.217', '?board=5.0', '8: Undefined variable: user_info', '439858fce7575317676012bf952c8527', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/MessageIndex.template.php (main sub template - eval?)', 273),
(694, 1377375593, 0, '201.165.80.217', '?action=post;board=5.0', '8: Undefined variable: user_info', '439858fce7575317676012bf952c8527', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/Post.template.php (main sub template - eval?)', 696),
(695, 1377375601, 0, '201.165.80.217', '?board=5.0', '8: Undefined variable: user_info', '439858fce7575317676012bf952c8527', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/MessageIndex.template.php (main sub template - eval?)', 273),
(696, 1377375605, 0, '201.165.80.217', '?action=post;board=5.0', '8: Undefined variable: user_info', '439858fce7575317676012bf952c8527', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/Post.template.php (main sub template - eval?)', 696),
(697, 1377375611, 0, '201.165.80.217', '?board=5.0', '8: Undefined variable: user_info', '439858fce7575317676012bf952c8527', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/MessageIndex.template.php (main sub template - eval?)', 273),
(698, 1377375614, 0, '201.165.80.217', '?action=post;board=5.0', '8: Undefined variable: user_info', '439858fce7575317676012bf952c8527', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/Post.template.php (main sub template - eval?)', 696),
(699, 1377375621, 0, '201.165.80.217', '?action=post2;start=0;board=5', 'Lo siento spamx, tienes el acceso denegado a este foro!<br />Tu bloqueo de acceso es permanente.', '439858fce7575317676012bf952c8527', 'user', '', 0),
(700, 1377375625, 0, '201.165.80.217', '?', 'Lo siento spamx, tienes el acceso denegado a este foro!<br />Tu bloqueo de acceso es permanente.', '439858fce7575317676012bf952c8527', 'user', '', 0),
(701, 1377375628, 0, '201.165.80.217', '?action=forum', 'Lo siento spamx, tienes el acceso denegado a este foro!<br />Tu bloqueo de acceso es permanente.', '439858fce7575317676012bf952c8527', 'user', '', 0),
(702, 1377375638, 0, '201.165.80.217', '?http://nexusplayers.x10host.com/', 'Lo siento spamx, tienes el acceso denegado a este foro!<br />Tu bloqueo de acceso es permanente.', '439858fce7575317676012bf952c8527', 'user', '', 0),
(703, 1377375640, 0, '201.165.80.217', '?action=forum', 'Lo siento spamx, tienes el acceso denegado a este foro!<br />Tu bloqueo de acceso es permanente.', '439858fce7575317676012bf952c8527', 'user', '', 0),
(704, 1377375657, 1, '79.151.232.143', '?board=5.0', '8: Undefined variable: user_info', '8b177440a47844eb0d2fe418e72d99fb', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/MessageIndex.template.php (main sub template - eval?)', 273),
(705, 1377375667, 1, '79.151.232.143', '?board=5.0', '8: Undefined variable: user_info', '8b177440a47844eb0d2fe418e72d99fb', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/MessageIndex.template.php (main sub template - eval?)', 273),
(706, 1377375724, 1, '79.151.232.143', '?board=23.0', '8: Undefined variable: user_info', '8b177440a47844eb0d2fe418e72d99fb', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/MessageIndex.template.php (main sub template - eval?)', 273),
(707, 1377375746, 1, '79.151.232.143', '?board=23.0', '8: Undefined variable: user_info', '8b177440a47844eb0d2fe418e72d99fb', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/MessageIndex.template.php (main sub template - eval?)', 273),
(708, 1377375755, 1, '79.151.232.143', '?board=23.0', '8: Undefined variable: user_info', '8b177440a47844eb0d2fe418e72d99fb', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/MessageIndex.template.php (main sub template - eval?)', 273),
(709, 1377375834, 0, '84.76.106.245', '?topic=10.0', '8: Array to string conversion', '7ed1e6da4f77f8d31d4016244f1dbb8e', 'general', '/home/nexuspla/public_html/Sources/Subs.php', 2382),
(710, 1377376027, 0, '31.172.30.3', '?action=forum', '8: Undefined variable: user_info', '29b488e13cc953524b8ec5271559a25d', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (main sub template - eval?)', 217),
(711, 1377376034, 0, '31.172.30.3', '?board=5.0', '8: Undefined variable: user_info', '29b488e13cc953524b8ec5271559a25d', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/MessageIndex.template.php (main sub template - eval?)', 273),
(712, 1377376036, 0, '31.172.30.3', '?board=5.0', '8: Undefined variable: user_info', '29b488e13cc953524b8ec5271559a25d', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/MessageIndex.template.php (main sub template - eval?)', 273),
(713, 1377376037, 0, '31.172.30.3', '?board=5.0', '8: Undefined variable: user_info', '29b488e13cc953524b8ec5271559a25d', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/MessageIndex.template.php (main sub template - eval?)', 273),
(714, 1377376038, 0, '31.172.30.3', '?board=5.0', '8: Undefined variable: user_info', '29b488e13cc953524b8ec5271559a25d', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/MessageIndex.template.php (main sub template - eval?)', 273),
(715, 1377376047, 0, '31.172.30.3', '?action=post;board=5.0', '8: Undefined variable: user_info', '29b488e13cc953524b8ec5271559a25d', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/Post.template.php (main sub template - eval?)', 696),
(716, 1377376058, 0, '31.172.30.3', '?action=post;board=5.0', '8: Undefined variable: user_info', '29b488e13cc953524b8ec5271559a25d', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/Post.template.php (main sub template - eval?)', 696),
(717, 1377376060, 0, '31.172.30.3', '?action=post;board=5.0', '8: Undefined variable: user_info', '29b488e13cc953524b8ec5271559a25d', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/Post.template.php (main sub template - eval?)', 696),
(718, 1377376062, 0, '31.172.30.3', '?action=post;board=5.0', '8: Undefined variable: user_info', '29b488e13cc953524b8ec5271559a25d', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/Post.template.php (main sub template - eval?)', 696),
(719, 1377376064, 0, '31.172.30.3', '?action=post;board=5.0', '8: Undefined variable: user_info', '29b488e13cc953524b8ec5271559a25d', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/Post.template.php (main sub template - eval?)', 696),
(720, 1377376072, 0, '31.172.30.3', '?action=post;board=5.0', '8: Undefined variable: user_info', '29b488e13cc953524b8ec5271559a25d', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/Post.template.php (main sub template - eval?)', 696),
(721, 1377376140, 0, '31.172.30.3', '?board=5.0', '8: Undefined variable: user_info', '29b488e13cc953524b8ec5271559a25d', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/MessageIndex.template.php (main sub template - eval?)', 273),
(722, 1377376167, 0, '31.172.30.3', '?action=post;board=5.0', '8: Undefined variable: user_info', '29b488e13cc953524b8ec5271559a25d', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/Post.template.php (main sub template - eval?)', 696),
(723, 1377376180, 0, '31.172.30.3', '?board=5.0', '8: Undefined variable: user_info', '29b488e13cc953524b8ec5271559a25d', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/MessageIndex.template.php (main sub template - eval?)', 273),
(724, 1377376185, 0, '31.172.30.3', '?action=post;board=5.0', '8: Undefined variable: user_info', '29b488e13cc953524b8ec5271559a25d', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/Post.template.php (main sub template - eval?)', 696),
(725, 1377376187, 47, '88.3.184.2', '?board=5.0', '8: Undefined variable: user_info', '46bb532cd5e3fc95077e0aca55f71a0d', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/MessageIndex.template.php (main sub template - eval?)', 273),
(726, 1377376196, 0, '31.172.30.3', '?board=5.0', '8: Undefined variable: user_info', '29b488e13cc953524b8ec5271559a25d', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/MessageIndex.template.php (main sub template - eval?)', 273),
(727, 1377376200, 0, '31.172.30.3', '?action=post;board=5.0', '8: Undefined variable: user_info', '29b488e13cc953524b8ec5271559a25d', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/Post.template.php (main sub template - eval?)', 696),
(728, 1377376211, 0, '31.172.30.3', '?action=post2;start=0;board=5', 'Lo siento Jair25, tienes el acceso denegado a este foro!<br />SPAM?<br />Tu bloqueo de acceso es permanente.', '29b488e13cc953524b8ec5271559a25d', 'user', '', 0),
(729, 1377376239, 0, '178.18.16.218', '?action=forum', 'Lo siento Jair25, tienes el acceso denegado a este foro!<br />SPAM?<br />Tu bloqueo de acceso es permanente.', '29b488e13cc953524b8ec5271559a25d', 'user', '', 0),
(730, 1377376250, 0, '173.254.216.67', '?action=forum', 'Lo siento Jair25, tienes el acceso denegado a este foro!<br />SPAM?<br />Tu bloqueo de acceso es permanente.', '29b488e13cc953524b8ec5271559a25d', 'user', '', 0),
(731, 1377376256, 0, '173.254.216.67', '?http://nexusplayers.x10host.com/', 'Lo siento Jair25, tienes el acceso denegado a este foro!<br />SPAM?<br />Tu bloqueo de acceso es permanente.', '29b488e13cc953524b8ec5271559a25d', 'user', '', 0),
(732, 1377376397, 56, '37.139.24.230', '?action=forum', '8: Undefined variable: user_info', '3f219e5be48094ba92705ccdfed4688b', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/BoardIndex.template.php (main sub template - eval?)', 217),
(733, 1377376406, 56, '37.139.24.230', '?board=5.0', '8: Undefined variable: user_info', '3f219e5be48094ba92705ccdfed4688b', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/MessageIndex.template.php (main sub template - eval?)', 273),
(734, 1377376411, 56, '37.139.24.230', '?action=post;board=5.0', '8: Undefined variable: user_info', '3f219e5be48094ba92705ccdfed4688b', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/Post.template.php (main sub template - eval?)', 696),
(735, 1377376430, 56, '37.139.24.230', '?board=5.0', '8: Undefined variable: user_info', '3f219e5be48094ba92705ccdfed4688b', 'undefined_vars', '/home/nexuspla/public_html/Themes/default/MessageIndex.template.php (main sub template - eval?)', 273),
(736, 1377376442, 0, '37.139.24.230', '?action=profile;u=1', 'Lo siento BotMeBanMe, tienes el acceso denegado a este foro!<br />Tu bloqueo de acceso es permanente.', '3f219e5be48094ba92705ccdfed4688b', 'user', '', 0),
(737, 1377376451, 0, '37.139.24.230', '?topic=19.0', 'Lo siento BotMeBanMe, tienes el acceso denegado a este foro!<br />Tu bloqueo de acceso es permanente.', '3f219e5be48094ba92705ccdfed4688b', 'user', '', 0),
(738, 1377376456, 0, '37.139.24.230', '?', 'Lo siento BotMeBanMe, tienes el acceso denegado a este foro!<br />Tu bloqueo de acceso es permanente.', '3f219e5be48094ba92705ccdfed4688b', 'user', '', 0),
(739, 1377376464, 0, '37.139.24.230', '?action=forum', 'Lo siento BotMeBanMe, tienes el acceso denegado a este foro!<br />Tu bloqueo de acceso es permanente.', '3f219e5be48094ba92705ccdfed4688b', 'user', '', 0),
(740, 1377376532, 0, '37.130.227.133', '?http://nexusplayers.x10host.com/', 'Lo siento BotMeBanMe, tienes el acceso denegado a este foro!<br />Tu bloqueo de acceso es permanente.', '3f219e5be48094ba92705ccdfed4688b', 'user', '', 0),
(741, 1377376539, 0, '37.130.227.133', '?action=forum', 'Lo siento BotMeBanMe, tienes el acceso denegado a este foro!<br />Tu bloqueo de acceso es permanente.', '3f219e5be48094ba92705ccdfed4688b', 'user', '', 0),
(742, 1377377239, 0, '190.239.163.105', '?action=login2', 'Tu cuenta de email necesita ser validada antes de que puedas ingresar. - &lt;span class=&quot;remove&quot;&gt;Darkar310&lt;/span&gt;', 'ec1741db7673b30e56db38d7c99e6531', 'general', '', 0),
(743, 1377377268, 0, '37.15.33.156', '?action=login2', 'Contraseña incorrecta - &lt;span class=&quot;remove&quot;&gt;Ikillnukes&lt;/span&gt;', '5305a01776916fb8350541a83ebf65c4', 'user', '', 0),
(744, 1377377278, 0, '37.15.33.156', '?action=login2', 'Contraseña incorrecta - &lt;span class=&quot;remove&quot;&gt;Ikillnukes&lt;/span&gt;', '807768fd984743cc7e29542a1dbac6dd', 'user', '', 0),
(745, 1377377842, 0, '81.2.197.33', '?action=login2', 'Contraseña incorrecta - &lt;span class=&quot;remove&quot;&gt;Ikillnukes&lt;/span&gt;', '0fe96d3db91f55d3cd51ca9b7e98caed', 'user', '', 0),
(746, 1377377877, 0, '81.2.197.33', '?action=login2', 'Contraseña incorrecta - &lt;span class=&quot;remove&quot;&gt;Ikillnukes&lt;/span&gt;', 'e51c7a6aeac158e2ec0813f7723ce0c0', 'user', '', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `smf_ikilllog_floodcontrol`
--

CREATE TABLE IF NOT EXISTS `smf_ikilllog_floodcontrol` (
  `ip` char(16) NOT NULL DEFAULT '',
  `log_time` int(10) unsigned NOT NULL DEFAULT '0',
  `log_type` varchar(8) NOT NULL DEFAULT 'post',
  PRIMARY KEY (`ip`,`log_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `smf_ikilllog_floodcontrol`
--

INSERT INTO `smf_ikilllog_floodcontrol` (`ip`, `log_time`, `log_type`) VALUES
('66.230.230.230', 1377378416, 'login'),
('37.139.24.230', 1377376429, 'post'),
('212.145.90.172', 1377168465, 'pm'),
('178.63.97.34', 1377378233, 'register');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `smf_ikilllog_group_requests`
--

CREATE TABLE IF NOT EXISTS `smf_ikilllog_group_requests` (
  `id_request` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `id_member` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_group` smallint(5) unsigned NOT NULL DEFAULT '0',
  `time_applied` int(10) unsigned NOT NULL DEFAULT '0',
  `reason` text NOT NULL,
  PRIMARY KEY (`id_request`),
  UNIQUE KEY `id_member` (`id_member`,`id_group`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `smf_ikilllog_karma`
--

CREATE TABLE IF NOT EXISTS `smf_ikilllog_karma` (
  `id_target` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_executor` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `log_time` int(10) unsigned NOT NULL DEFAULT '0',
  `action` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_target`,`id_executor`),
  KEY `log_time` (`log_time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `smf_ikilllog_mark_read`
--

CREATE TABLE IF NOT EXISTS `smf_ikilllog_mark_read` (
  `id_member` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_board` smallint(5) unsigned NOT NULL DEFAULT '0',
  `id_msg` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_member`,`id_board`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `smf_ikilllog_member_notices`
--

CREATE TABLE IF NOT EXISTS `smf_ikilllog_member_notices` (
  `id_notice` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `subject` varchar(255) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  PRIMARY KEY (`id_notice`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `smf_ikilllog_notify`
--

CREATE TABLE IF NOT EXISTS `smf_ikilllog_notify` (
  `id_member` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_topic` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_board` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sent` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_member`,`id_topic`,`id_board`),
  KEY `id_topic` (`id_topic`,`id_member`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `smf_ikilllog_online`
--

CREATE TABLE IF NOT EXISTS `smf_ikilllog_online` (
  `session` varchar(32) NOT NULL DEFAULT '',
  `log_time` int(10) NOT NULL DEFAULT '0',
  `id_member` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_spider` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ip` int(10) unsigned NOT NULL DEFAULT '0',
  `url` text NOT NULL,
  PRIMARY KEY (`session`),
  KEY `log_time` (`log_time`),
  KEY `id_member` (`id_member`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `smf_ikilllog_online`
--

INSERT INTO `smf_ikilllog_online` (`session`, `log_time`, `id_member`, `id_spider`, `ip`, `url`) VALUES
('e562855df9e950905172c28cfa4e2a3c', 1377383558, 1, 0, 1335355535, 'a:2:{s:6:"action";s:3:"who";s:10:"USER_AGENT";s:108:"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/28.0.1500.95 Safari/537.36";}'),
('ip87.217.201.96', 1377383183, 0, 0, 1473890656, 'a:3:{s:5:"topic";i:9;s:5:"board";i:1;s:10:"USER_AGENT";s:108:"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/29.0.1547.57 Safari/537.36";}'),
('ip190.188.54.178', 1377383214, 0, 0, 3200005810, 'a:3:{s:5:"topic";i:9;s:5:"board";i:1;s:10:"USER_AGENT";s:108:"Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/29.0.1547.57 Safari/537.36";}'),
('ip85.86.195.119', 1377383457, 0, 0, 1431749495, 'a:3:{s:5:"topic";i:9;s:5:"board";i:1;s:10:"USER_AGENT";s:65:"Mozilla/5.0 (Windows NT 6.2; rv:23.0) Gecko/20100101 Firefox/23.0";}'),
('ip84.123.207.198', 1377383467, 0, 0, 1417400262, 'a:3:{s:5:"topic";i:9;s:5:"board";i:1;s:10:"USER_AGENT";s:108:"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/29.0.1547.57 Safari/537.36";}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `smf_ikilllog_packages`
--

CREATE TABLE IF NOT EXISTS `smf_ikilllog_packages` (
  `id_install` int(10) NOT NULL AUTO_INCREMENT,
  `filename` varchar(255) NOT NULL DEFAULT '',
  `package_id` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `version` varchar(255) NOT NULL DEFAULT '',
  `id_member_installed` mediumint(8) NOT NULL DEFAULT '0',
  `member_installed` varchar(255) NOT NULL DEFAULT '',
  `time_installed` int(10) NOT NULL DEFAULT '0',
  `id_member_removed` mediumint(8) NOT NULL DEFAULT '0',
  `member_removed` varchar(255) NOT NULL DEFAULT '',
  `time_removed` int(10) NOT NULL DEFAULT '0',
  `install_state` tinyint(3) NOT NULL DEFAULT '1',
  `failed_steps` text NOT NULL,
  `themes_installed` varchar(255) NOT NULL DEFAULT '',
  `db_changes` text NOT NULL,
  PRIMARY KEY (`id_install`),
  KEY `filename` (`filename`(15))
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Volcado de datos para la tabla `smf_ikilllog_packages`
--

INSERT INTO `smf_ikilllog_packages` (`id_install`, `filename`, `package_id`, `name`, `version`, `id_member_installed`, `member_installed`, `time_installed`, `id_member_removed`, `member_removed`, `time_removed`, `install_state`, `failed_steps`, `themes_installed`, `db_changes`) VALUES
(1, 'DefaultAvatarForSMF2x.zip', 'sid2varun:default_avatar', 'Default Avatar', '2.2', 1, 'Ikillnukes', 1376830646, 0, '0', 0, 1, 'a:0:{}', '1', ''),
(2, 'ImagesOnBoard2.1.zip', 'JB:IOB', 'Images On Board', '2.1', 1, 'Ikillnukes', 1376843231, 0, '0', 0, 1, 'a:0:{}', '1', ''),
(3, 'karma_groups.zip', 'anthony:karma_groups', 'Karma based groups', '1.0', 1, 'Ikillnukes', 1376922883, 1, 'Ikillnukes', 1376923215, 0, 'a:0:{}', '1', ''),
(4, 'YouTube_BBCode_v2.6.zip', 'karlbenson:youtubebbcode', 'YouTube BBCode', '2.6', 1, 'Ikillnukes', 1376926751, 0, '0', 0, 1, 'a:0:{}', '1', ''),
(5, 'ReferralsSystem3.1.zip', 'S-M-FModdersTeam:refferalsystem', 'Referrals System', '3.1', 1, 'Ikillnukes', 1377097507, 0, '0', 0, 1, 'a:0:{}', '1', ''),
(6, 'Group-Color-in-Posts-and-Profile-1.4.zip', 'AJCollins:group-color-in-posts-and-profile', 'Group Color in Posts and Profile', '1.4', 1, 'Ikillnukes', 1377101964, 0, '0', 0, 1, 'a:0:{}', '1', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `smf_ikilllog_polls`
--

CREATE TABLE IF NOT EXISTS `smf_ikilllog_polls` (
  `id_poll` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_member` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_choice` tinyint(3) unsigned NOT NULL DEFAULT '0',
  KEY `id_poll` (`id_poll`,`id_member`,`id_choice`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `smf_ikilllog_reported`
--

CREATE TABLE IF NOT EXISTS `smf_ikilllog_reported` (
  `id_report` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `id_msg` int(10) unsigned NOT NULL DEFAULT '0',
  `id_topic` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_board` smallint(5) unsigned NOT NULL DEFAULT '0',
  `id_member` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `membername` varchar(255) NOT NULL DEFAULT '',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `time_started` int(10) NOT NULL DEFAULT '0',
  `time_updated` int(10) NOT NULL DEFAULT '0',
  `num_reports` mediumint(6) NOT NULL DEFAULT '0',
  `closed` tinyint(3) NOT NULL DEFAULT '0',
  `ignore_all` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_report`),
  KEY `id_member` (`id_member`),
  KEY `id_topic` (`id_topic`),
  KEY `closed` (`closed`),
  KEY `time_started` (`time_started`),
  KEY `id_msg` (`id_msg`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `smf_ikilllog_reported_comments`
--

CREATE TABLE IF NOT EXISTS `smf_ikilllog_reported_comments` (
  `id_comment` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `id_report` mediumint(8) NOT NULL DEFAULT '0',
  `id_member` mediumint(8) NOT NULL,
  `membername` varchar(255) NOT NULL DEFAULT '',
  `email_address` varchar(255) NOT NULL DEFAULT '',
  `member_ip` varchar(255) NOT NULL DEFAULT '',
  `comment` varchar(255) NOT NULL DEFAULT '',
  `time_sent` int(10) NOT NULL,
  PRIMARY KEY (`id_comment`),
  KEY `id_report` (`id_report`),
  KEY `id_member` (`id_member`),
  KEY `time_sent` (`time_sent`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `smf_ikilllog_scheduled_tasks`
--

CREATE TABLE IF NOT EXISTS `smf_ikilllog_scheduled_tasks` (
  `id_log` mediumint(8) NOT NULL AUTO_INCREMENT,
  `id_task` smallint(5) NOT NULL DEFAULT '0',
  `time_run` int(10) NOT NULL DEFAULT '0',
  `time_taken` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_log`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=67 ;

--
-- Volcado de datos para la tabla `smf_ikilllog_scheduled_tasks`
--

INSERT INTO `smf_ikilllog_scheduled_tasks` (`id_log`, `id_task`, `time_run`, `time_taken`) VALUES
(1, 2, 1376827851, 0),
(2, 3, 1376828280, 0),
(3, 5, 1376828285, 0),
(4, 6, 1376828296, 0),
(5, 9, 1376828331, 0),
(6, 1, 1376834491, 1),
(7, 1, 1376845297, 0),
(8, 1, 1376852417, 0),
(9, 1, 1376899890, 0),
(10, 1, 1376910126, 0),
(11, 1, 1376917247, 0),
(12, 1, 1376924547, 0),
(13, 1, 1376931652, 0),
(14, 1, 1377029539, 0),
(15, 7, 1377030121, 0),
(16, 5, 1377030157, 0),
(17, 3, 1377030160, 0),
(18, 1, 1377039607, 0),
(19, 1, 1377064103, 0),
(20, 1, 1377076752, 0),
(21, 1, 1377083350, 0),
(22, 1, 1377090005, 0),
(23, 1, 1377097295, 0),
(24, 1, 1377104424, 0),
(25, 1, 1377111633, 0),
(26, 7, 1377119259, 0),
(27, 1, 1377119262, 0),
(28, 1, 1377126408, 0),
(29, 5, 1377133483, 0),
(30, 3, 1377133489, 0),
(31, 1, 1377133492, 0),
(32, 1, 1377157428, 0),
(33, 1, 1377162621, 0),
(34, 1, 1377169205, 0),
(35, 1, 1377176445, 0),
(36, 1, 1377183612, 0),
(37, 1, 1377190889, 0),
(38, 1, 1377198311, 0),
(39, 7, 1377204634, 0),
(40, 1, 1377205929, 0),
(41, 1, 1377212927, 0),
(42, 5, 1377213293, 0),
(43, 3, 1377213328, 0),
(44, 1, 1377219921, 0),
(45, 1, 1377246695, 0),
(46, 1, 1377255659, 0),
(47, 1, 1377263022, 0),
(48, 1, 1377270175, 0),
(49, 1, 1377277744, 0),
(50, 1, 1377284445, 0),
(51, 7, 1377291445, 0),
(52, 1, 1377294032, 0),
(53, 1, 1377300385, 0),
(54, 5, 1377306235, 0),
(55, 3, 1377306296, 0),
(56, 1, 1377306299, 0),
(57, 1, 1377314547, 0),
(58, 1, 1377328594, 0),
(59, 1, 1377334952, 0),
(60, 1, 1377342445, 0),
(61, 1, 1377350615, 0),
(62, 1, 1377356666, 0),
(63, 1, 1377365444, 0),
(64, 1, 1377370920, 0),
(65, 7, 1377377174, 1),
(66, 1, 1377378005, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `smf_ikilllog_search_messages`
--

CREATE TABLE IF NOT EXISTS `smf_ikilllog_search_messages` (
  `id_search` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `id_msg` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_search`,`id_msg`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `smf_ikilllog_search_results`
--

CREATE TABLE IF NOT EXISTS `smf_ikilllog_search_results` (
  `id_search` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `id_topic` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_msg` int(10) unsigned NOT NULL DEFAULT '0',
  `relevance` smallint(5) unsigned NOT NULL DEFAULT '0',
  `num_matches` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_search`,`id_topic`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `smf_ikilllog_search_subjects`
--

CREATE TABLE IF NOT EXISTS `smf_ikilllog_search_subjects` (
  `word` varchar(20) NOT NULL DEFAULT '',
  `id_topic` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`word`,`id_topic`),
  KEY `id_topic` (`id_topic`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `smf_ikilllog_search_subjects`
--

INSERT INTO `smf_ikilllog_search_subjects` (`word`, `id_topic`) VALUES
('a', 16),
('abierta', 2),
('algo', 8),
('aquí', 4),
('buenas', 6),
('cerrar', 2),
('cómo', 2),
('como', 10),
('cuando', 2),
('cuenta', 9),
('de', 3),
('de', 8),
('de', 9),
('dominio', 3),
('el', 4),
('el', 5),
('en', 4),
('en', 8),
('en', 10),
('está', 2),
('este', 8),
('evento', 9),
('exitosamente', 3),
('foro', 4),
('gta', 10),
('había', 7),
('hemos', 3),
('hola', 16),
('hola', 17),
('instalar', 10),
('jodan', 18),
('lel', 19),
('más', 7),
('me', 7),
('me', 16),
('minecraft', 8),
('minecraft', 9),
('minuto', 10),
('mudado', 3),
('no', 7),
('no', 18),
('noches', 6),
('nos', 3),
('noticia', 3),
('noticia', 4),
('nunca', 7),
('para', 10),
('pc', 10),
('postealo', 8),
('premium', 9),
('presentado', 7),
('presento', 16),
('primero', 5),
('puerta', 2),
('que', 7),
('rango', 4),
('sabes', 8),
('señores', 18),
('si', 8),
('soy', 5),
('tarde', 7),
('tema', 8),
('tener', 4),
('todos', 16),
('trabajar', 4),
('un', 10),
('una', 2),
('una', 9),
('v', 10),
('vale', 7),
('yo', 5),
('¿quieres', 4),
('¿quieres', 9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `smf_ikilllog_search_topics`
--

CREATE TABLE IF NOT EXISTS `smf_ikilllog_search_topics` (
  `id_search` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `id_topic` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_search`,`id_topic`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `smf_ikilllog_spider_hits`
--

CREATE TABLE IF NOT EXISTS `smf_ikilllog_spider_hits` (
  `id_hit` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_spider` smallint(5) unsigned NOT NULL DEFAULT '0',
  `log_time` int(10) unsigned NOT NULL DEFAULT '0',
  `url` varchar(255) NOT NULL DEFAULT '',
  `processed` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_hit`),
  KEY `id_spider` (`id_spider`),
  KEY `log_time` (`log_time`),
  KEY `processed` (`processed`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `smf_ikilllog_spider_stats`
--

CREATE TABLE IF NOT EXISTS `smf_ikilllog_spider_stats` (
  `id_spider` smallint(5) unsigned NOT NULL DEFAULT '0',
  `page_hits` smallint(5) unsigned NOT NULL DEFAULT '0',
  `last_seen` int(10) unsigned NOT NULL DEFAULT '0',
  `stat_date` date NOT NULL DEFAULT '0001-01-01',
  PRIMARY KEY (`stat_date`,`id_spider`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `smf_ikilllog_spider_stats`
--

INSERT INTO `smf_ikilllog_spider_stats` (`id_spider`, `page_hits`, `last_seen`, `stat_date`) VALUES
(3, 1, 1377098504, '2013-08-21'),
(3, 7, 1377193648, '2013-08-22');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `smf_ikilllog_subscribed`
--

CREATE TABLE IF NOT EXISTS `smf_ikilllog_subscribed` (
  `id_sublog` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_subscribe` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_member` int(10) NOT NULL DEFAULT '0',
  `old_id_group` smallint(5) NOT NULL DEFAULT '0',
  `start_time` int(10) NOT NULL DEFAULT '0',
  `end_time` int(10) NOT NULL DEFAULT '0',
  `status` tinyint(3) NOT NULL DEFAULT '0',
  `payments_pending` tinyint(3) NOT NULL DEFAULT '0',
  `pending_details` text NOT NULL,
  `reminder_sent` tinyint(3) NOT NULL DEFAULT '0',
  `vendor_ref` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id_sublog`),
  UNIQUE KEY `id_subscribe` (`id_subscribe`,`id_member`),
  KEY `end_time` (`end_time`),
  KEY `reminder_sent` (`reminder_sent`),
  KEY `payments_pending` (`payments_pending`),
  KEY `status` (`status`),
  KEY `id_member` (`id_member`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `smf_ikilllog_topics`
--

CREATE TABLE IF NOT EXISTS `smf_ikilllog_topics` (
  `id_member` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_topic` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_msg` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_member`,`id_topic`),
  KEY `id_topic` (`id_topic`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `smf_ikilllog_topics`
--

INSERT INTO `smf_ikilllog_topics` (`id_member`, `id_topic`, `id_msg`) VALUES
(2, 2, 16),
(1, 2, 16),
(1, 3, 3),
(17, 2, 4),
(1, 4, 27),
(2, 4, 15),
(22, 4, 15),
(22, 5, 15),
(22, 6, 14),
(2, 6, 14),
(2, 7, 12),
(2, 5, 10),
(1, 6, 14),
(1, 7, 17),
(2, 3, 10),
(1, 5, 27),
(22, 7, 13),
(22, 2, 15),
(28, 8, 17),
(1, 8, 21),
(1, 9, 31),
(33, 9, 19),
(33, 2, 19),
(34, 9, 20),
(34, 4, 19),
(35, 9, 21),
(35, 4, 21),
(38, 9, 22),
(17, 9, 23),
(17, 4, 23),
(39, 9, 24),
(41, 9, 25),
(41, 4, 25),
(2, 9, 31),
(2, 8, 25),
(43, 9, 26),
(28, 9, 27),
(28, 3, 27),
(44, 9, 27),
(47, 8, 27),
(47, 5, 27),
(48, 9, 28),
(51, 4, 28),
(51, 9, 29),
(47, 4, 29),
(47, 9, 30),
(47, 6, 30),
(47, 7, 30),
(47, 2, 31),
(47, 10, 31),
(1, 10, 31),
(2, 10, 31),
(56, 19, 40),
(1, 16, 38),
(1, 19, 40);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `smf_ikillmail_queue`
--

CREATE TABLE IF NOT EXISTS `smf_ikillmail_queue` (
  `id_mail` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `time_sent` int(10) NOT NULL DEFAULT '0',
  `recipient` varchar(255) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `subject` varchar(255) NOT NULL DEFAULT '',
  `headers` text NOT NULL,
  `send_html` tinyint(3) NOT NULL DEFAULT '0',
  `priority` tinyint(3) NOT NULL DEFAULT '1',
  `private` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_mail`),
  KEY `time_sent` (`time_sent`),
  KEY `mail_priority` (`priority`,`id_mail`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `smf_ikillmembergroups`
--

CREATE TABLE IF NOT EXISTS `smf_ikillmembergroups` (
  `id_group` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `group_name` varchar(80) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `online_color` varchar(20) NOT NULL DEFAULT '',
  `min_posts` mediumint(9) NOT NULL DEFAULT '-1',
  `max_messages` smallint(5) unsigned NOT NULL DEFAULT '0',
  `stars` varchar(255) NOT NULL DEFAULT '',
  `group_type` tinyint(3) NOT NULL DEFAULT '0',
  `hidden` tinyint(3) NOT NULL DEFAULT '0',
  `id_parent` smallint(5) NOT NULL DEFAULT '-2',
  PRIMARY KEY (`id_group`),
  KEY `min_posts` (`min_posts`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- Volcado de datos para la tabla `smf_ikillmembergroups`
--

INSERT INTO `smf_ikillmembergroups` (`id_group`, `group_name`, `description`, `online_color`, `min_posts`, `max_messages`, `stars`, `group_type`, `hidden`, `id_parent`) VALUES
(1, 'Administrator', '', '#FF0000', -1, 0, '5#staradmin.gif', 1, 0, -2),
(2, 'Global Moderator', '', '#0000FF', -1, 500, '5#stargmod.gif', 0, 0, -2),
(3, 'Moderator', '', '', -1, 0, '5#starmod.gif', 0, 0, -2),
(4, 'Newbie', '', '', 0, 350, '1#star.gif', 0, 0, -2),
(5, 'Jr. Member', '', '', 50, 360, '2#star.gif', 0, 0, -2),
(6, 'Full Member', '', '', 100, 370, '3#star.gif', 0, 0, -2),
(7, 'Sr. Member', '', '', 250, 380, '4#star.gif', 0, 0, -2),
(8, 'Hero Member', '', '', 500, 390, '5#star.gif', 0, 0, -2),
(9, 'Colaboradores', '', '#008800', -1, 450, '5#star.gif', 1, 0, -2),
(10, 'Troll', '', '', -1, 25, '', 1, 0, -2),
(11, 'VIPS', '', '#888800', -1, 400, '7#star.gif', 1, 0, 9),
(12, 'Recruiters', '', '#880088', -1, 400, '7#star.gif', 1, 0, 9),
(13, 'Wiki', '', '#000000', -1, 400, '7#star.gif', 0, 0, -2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `smf_ikillmembers`
--

CREATE TABLE IF NOT EXISTS `smf_ikillmembers` (
  `id_member` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `member_name` varchar(80) NOT NULL DEFAULT '',
  `date_registered` int(10) unsigned NOT NULL DEFAULT '0',
  `posts` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_group` smallint(5) unsigned NOT NULL DEFAULT '0',
  `lngfile` varchar(255) NOT NULL DEFAULT '',
  `last_login` int(10) unsigned NOT NULL DEFAULT '0',
  `real_name` varchar(255) NOT NULL DEFAULT '',
  `instant_messages` smallint(5) NOT NULL DEFAULT '0',
  `unread_messages` smallint(5) NOT NULL DEFAULT '0',
  `new_pm` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `buddy_list` text NOT NULL,
  `pm_ignore_list` varchar(255) NOT NULL DEFAULT '',
  `pm_prefs` mediumint(8) NOT NULL DEFAULT '0',
  `mod_prefs` varchar(20) NOT NULL DEFAULT '',
  `message_labels` text NOT NULL,
  `passwd` varchar(64) NOT NULL DEFAULT '',
  `openid_uri` text NOT NULL,
  `email_address` varchar(255) NOT NULL DEFAULT '',
  `personal_text` varchar(255) NOT NULL DEFAULT '',
  `gender` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `birthdate` date NOT NULL DEFAULT '0001-01-01',
  `website_title` varchar(255) NOT NULL DEFAULT '',
  `website_url` varchar(255) NOT NULL DEFAULT '',
  `location` varchar(255) NOT NULL DEFAULT '',
  `icq` varchar(255) NOT NULL DEFAULT '',
  `aim` varchar(255) NOT NULL DEFAULT '',
  `yim` varchar(32) NOT NULL DEFAULT '',
  `msn` varchar(255) NOT NULL DEFAULT '',
  `hide_email` tinyint(4) NOT NULL DEFAULT '0',
  `show_online` tinyint(4) NOT NULL DEFAULT '1',
  `time_format` varchar(80) NOT NULL DEFAULT '',
  `signature` text NOT NULL,
  `time_offset` float NOT NULL DEFAULT '0',
  `avatar` varchar(255) NOT NULL DEFAULT '',
  `pm_email_notify` tinyint(4) NOT NULL DEFAULT '0',
  `karma_bad` smallint(5) unsigned NOT NULL DEFAULT '0',
  `karma_good` smallint(5) unsigned NOT NULL DEFAULT '0',
  `usertitle` varchar(255) NOT NULL DEFAULT '',
  `notify_announcements` tinyint(4) NOT NULL DEFAULT '1',
  `notify_regularity` tinyint(4) NOT NULL DEFAULT '1',
  `notify_send_body` tinyint(4) NOT NULL DEFAULT '0',
  `notify_types` tinyint(4) NOT NULL DEFAULT '2',
  `member_ip` varchar(255) NOT NULL DEFAULT '',
  `member_ip2` varchar(255) NOT NULL DEFAULT '',
  `secret_question` varchar(255) NOT NULL DEFAULT '',
  `secret_answer` varchar(64) NOT NULL DEFAULT '',
  `id_theme` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `is_activated` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `validation_code` varchar(10) NOT NULL DEFAULT '',
  `id_msg_last_visit` int(10) unsigned NOT NULL DEFAULT '0',
  `additional_groups` varchar(255) NOT NULL DEFAULT '',
  `smiley_set` varchar(48) NOT NULL DEFAULT '',
  `id_post_group` smallint(5) unsigned NOT NULL DEFAULT '0',
  `total_time_logged_in` int(10) unsigned NOT NULL DEFAULT '0',
  `password_salt` varchar(255) NOT NULL DEFAULT '',
  `ignore_boards` text NOT NULL,
  `warning` tinyint(4) NOT NULL DEFAULT '0',
  `passwd_flood` varchar(12) NOT NULL DEFAULT '',
  `pm_receive_from` tinyint(4) unsigned NOT NULL DEFAULT '1',
  `referrals_no` mediumint(8) NOT NULL DEFAULT '0',
  `referred_by` mediumint(8) NOT NULL DEFAULT '0',
  `referrals_hits` int(11) NOT NULL DEFAULT '0',
  `referred_date` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_member`),
  KEY `member_name` (`member_name`),
  KEY `real_name` (`real_name`),
  KEY `date_registered` (`date_registered`),
  KEY `id_group` (`id_group`),
  KEY `birthdate` (`birthdate`),
  KEY `posts` (`posts`),
  KEY `last_login` (`last_login`),
  KEY `lngfile` (`lngfile`(30)),
  KEY `id_post_group` (`id_post_group`),
  KEY `warning` (`warning`),
  KEY `total_time_logged_in` (`total_time_logged_in`),
  KEY `id_theme` (`id_theme`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=61 ;

--
-- Volcado de datos para la tabla `smf_ikillmembers`
--

INSERT INTO `smf_ikillmembers` (`id_member`, `member_name`, `date_registered`, `posts`, `id_group`, `lngfile`, `last_login`, `real_name`, `instant_messages`, `unread_messages`, `new_pm`, `buddy_list`, `pm_ignore_list`, `pm_prefs`, `mod_prefs`, `message_labels`, `passwd`, `openid_uri`, `email_address`, `personal_text`, `gender`, `birthdate`, `website_title`, `website_url`, `location`, `icq`, `aim`, `yim`, `msn`, `hide_email`, `show_online`, `time_format`, `signature`, `time_offset`, `avatar`, `pm_email_notify`, `karma_bad`, `karma_good`, `usertitle`, `notify_announcements`, `notify_regularity`, `notify_send_body`, `notify_types`, `member_ip`, `member_ip2`, `secret_question`, `secret_answer`, `id_theme`, `is_activated`, `validation_code`, `id_msg_last_visit`, `additional_groups`, `smiley_set`, `id_post_group`, `total_time_logged_in`, `password_salt`, `ignore_boards`, `warning`, `passwd_flood`, `pm_receive_from`, `referrals_no`, `referred_by`, `referrals_hits`, `referred_date`) VALUES
(1, 'Ikillnukes', 1376827601, 5, 1, '', 1377383558, 'Ikillnukes', 1, 0, 0, '', '', 0, '', '', '23aa1a13191fb940e3e2bd66280670b6f433060a', '', 'ikillnukes1@gmail.com', '', 0, '0001-01-01', '', '', '', '', '', '', '', 0, 1, '', '', 0, '', 0, 0, 0, '', 1, 1, 0, 2, '79.151.232.143', '79.151.232.143', '', '', 0, 1, '', 31, '', '', 4, 117653, '7d1e', '', 0, '1377378093|3', 1, 1, 0, 0, 0),
(2, 'Alex', 1376911660, 2, 13, 'spanish_es-utf8', 1377356845, 'Roster', 0, 0, 0, '', '', 0, '', '', '2c682806b3c25ac9ca6bebef93ee26d9e609eb58', '', 'alexcondite94@hotmail.com', 'Probando esto y tal', 1, '1994-06-16', 'Blog', 'http://elpapelillo.wordpress.com', 'Alicante', '', '', '', '', 0, 1, '%B %d, %Y, %H:%M:%S', 'Así están las cosas por [b]Alicante[/b]...<br />[img]http://banners.wunderground.com/banner/gizmotimetemp_both/global/stations/08360.gif[/img]', 0, '', 1, 0, 0, '', 1, 1, 0, 2, '212.145.90.172', '212.145.90.172', '¿Qué sabes que yo sé que tú no sabes porque sabemos que lo sabías con sabia sabiduría por no saber nada de lo que ya sabías antes de que lo supiera tu primo?', '', 3, 1, '', 31, '', '', 4, 25675, '4fe5', '', 0, '', 1, 0, 0, 0, 0),
(3, 'Cristymc5', 1376915797, 0, 0, '', 1377262063, 'Cristymc5', 0, 0, 0, '', '', 0, '', '', 'febc36e5d6361c206ada71ec3264c1d6ebd2c955', '', 'cristymc5@gmail.com', '', 2, '1998-07-28', '', '', '', '', '', '', '', 0, 1, '', '', 0, '', 1, 0, 0, '', 1, 1, 0, 2, '87.111.9.146', '87.111.9.146', '', '', 0, 1, '', 27, '', '', 4, 2284, '7e01', '', 0, '', 1, 0, 0, 0, 0),
(4, 'miguel93041', 1376922737, 0, 0, '', 1376922738, 'miguel93041', 0, 0, 0, '', '', 0, '', '', '829dbd36b6d03ed9b04ab08c50e631abed41a166', '', 'miguelgrafe001@hotmail.com', '', 0, '0001-01-01', '', '', '', '', '', '', '', 1, 1, '', '', 0, '', 1, 0, 0, '', 1, 1, 0, 2, '88.1.204.51', '88.1.204.51', '', '', 0, 1, '', 2, '', '', 4, 0, 'cc55', '', 0, '', 1, 0, 0, 0, 0),
(5, 'Theprim0', 1376925805, 0, 0, '', 1376925927, 'Theprim0', 0, 0, 0, '', '', 0, '', '', '9d7590bae36307f0104d27dc16a33b7fddc12a6b', '', 'arturo_r_k@hotmail.com', '', 0, '0001-01-01', '', '', '', '', '', '', '', 0, 1, '', '', 0, '', 1, 0, 0, '', 1, 1, 0, 2, '37.14.240.51', '37.14.240.51', '', '', 0, 1, '', 2, '', '', 4, 0, '0f7d', '', 0, '', 1, 0, 0, 0, 0),
(6, 'amchacon', 1376930474, 0, 0, '', 1376930475, 'amchacon', 0, 0, 0, '', '', 0, '', '', 'de5a9167547a18fc4504de77045c9759ea4b9be1', '', 'miachm3@gmail.com', '', 0, '0001-01-01', '', '', '', '', '', '', '', 1, 1, '', '', 0, '', 1, 0, 0, '', 1, 1, 0, 2, '81.202.131.124', '81.202.131.124', '', '', 0, 1, '', 2, '', '', 4, 0, '3a44', '', 0, '', 1, 0, 0, 0, 0),
(7, 'Jonathan', 1376930820, 0, 0, '', 1376930887, 'Jonathan', 0, 0, 0, '', '', 0, '', '', '6cc44fdb0c9902512eb4ba68ca48e3938bc20578', '', 'zapata.6452@hotmail.com', '', 0, '0001-01-01', '', '', '', '', '', '', '', 0, 1, '', '', 0, '', 1, 0, 0, '', 1, 1, 0, 2, '186.159.64.1', '186.159.64.1', '', '', 0, 1, '', 2, '', '', 4, 352, '6192', '', 0, '', 1, 0, 0, 0, 0),
(8, 'Elektro H@cker', 1377079433, 0, 0, '', 1377079725, 'Elektro H@cker', 0, 0, 0, '', '', 0, '', '', '32c591394f409edbe8d422284fe6db73e502e50e', '', 'ElektroStudios@ElHacker.net', '', 0, '0001-01-01', '', '', '', '', '', '', '', 0, 1, '', '', 0, '', 1, 0, 0, '', 1, 1, 0, 2, '81.202.240.57', '81.202.240.57', '', '', 0, 1, '', 2, '', '', 4, 526, 'e43f', '', 0, '', 1, 0, 0, 0, 0),
(9, 'juanito007', 1377086379, 0, 0, '', 1377087123, 'juanito007', 0, 0, 0, '', '', 0, '', '', '86210d7d20fecc12761a35a3ae20442a95b1b056', '', 'juanmarceloesp@hotmail.es', 'Vamosss!!! Transformación!!! SSY3 :D', 1, '0001-01-01', 'http://www.youtube.com/user/minecraftyoda007', 'http://www.youtube.com/user/minecraftyoda007', '', '', '', '', '', 1, 1, '', 'Sexeh', 0, '', 1, 0, 0, '', 1, 1, 0, 2, '217.217.5.214', '217.217.5.214', '', '', 0, 1, '', 2, '', '', 4, 979, '118a', '', 0, '', 1, 0, 0, 0, 0),
(10, 'CheRockefeller', 1377086800, 0, 0, '', 1377086868, 'CheRockefeller', 0, 0, 0, '', '', 0, '', '', 'eb1f180f4d95abf1cc0ef4c04273e751cf7b7bab', '', 'CheRockefeller@gmail.com', '', 0, '0001-01-01', '', '', '', '', '', '', '', 0, 1, '', '', 0, '', 1, 0, 0, '', 1, 1, 0, 2, '85.86.125.231', '85.86.125.231', '', '', 0, 1, '', 2, '', '', 4, 148, 'ccf6', '', 0, '', 1, 0, 0, 0, 0),
(11, 'blackgaruda', 1377087960, 0, 0, '', 1377088571, 'blackgaruda', 0, 0, 0, '', '', 0, '', '', '896535ee127a72969801998d682299d3431c302f', '', 'garuda2009@hotmail.es', '', 0, '0001-01-01', '', '', '', '', '', '', '', 1, 1, '', '', 0, '', 1, 0, 0, '', 1, 1, 0, 2, '85.57.29.253', '85.57.29.253', '', '', 0, 1, '', 2, '', '', 4, 398, '7f80', '', 0, '', 1, 0, 0, 0, 0),
(12, 'Darknnes12', 1377088069, 0, 0, '', 1377089834, 'Darknnes12', 0, 0, 0, '', '', 0, '', '', 'cf6ba65f21d5baa04bf453eb8b871153594359d4', '', 'draknnes12@gmail.com', '', 0, '0001-01-01', '', '', '', '', '', '', '', 1, 1, '', '', 0, '', 1, 0, 0, '', 1, 1, 0, 2, '79.109.200.94', '79.109.200.94', '', '', 0, 1, '', 2, '', '', 4, 202, '7f42', '', 0, '', 1, 0, 0, 0, 0),
(13, 'chevere', 1377090126, 0, 0, '', 1377090127, 'chevere', 0, 0, 0, '', '', 0, '', '', '148f905df6129bc3af18ac025c43462453c874cb', '', 'brahimsalek@hotmail.es', '', 0, '0001-01-01', '', '', '', '', '', '', '', 0, 1, '', '', 0, '', 1, 0, 0, '', 1, 1, 0, 2, '89.29.149.73', '89.29.149.73', '', '', 0, 1, '', 2, '', '', 4, 0, 'ae06', '', 0, '', 1, 0, 0, 0, 0),
(14, 'pipe01', 1377090169, 0, 0, '', 1377203227, 'pipe01', 0, 0, 0, '', '', 0, '', '', '24238dddde7c2ff2704bea95d5668405e442b3ff', '', 'pipernene@gmail.com', '', 0, '0001-01-01', '', '', '', '', '', '', '', 1, 1, '', '', 0, '', 1, 0, 0, '', 1, 1, 0, 2, '83.34.170.224', '83.34.170.224', '', '', 0, 1, '', 25, '', '', 4, 163, '7034', '', 0, '', 1, 0, 0, 0, 0),
(15, 'ferminuno', 1377090502, 0, 0, '', 1377091527, 'ferminuno', 0, 0, 0, '', '', 0, '', '', '1a7d3fe3bdcfc41f6f075649387803b0bc6497ee', '', 'ferminuno@gmail.com', '', 0, '0001-01-01', '', '', '', '', '', '', '', 1, 1, '', '', 0, '', 1, 0, 0, '', 1, 1, 0, 2, '80.58.250.74', '88.4.251.143', '', '', 0, 1, '', 2, '', '', 4, 0, '054a', '', 0, '', 1, 0, 0, 0, 0),
(16, 'arceuse1999', 1377092001, 0, 0, '', 1377092107, 'arceuse1999', 0, 0, 0, '', '', 0, '', '', '15f108f0c15f33080c95c4e12f30a521c7d4b136', '', 'arceuse1999@gmail.com', '', 0, '0001-01-01', '', '', '', '', '', '', '', 0, 1, '', '', 0, '', 1, 0, 0, '', 1, 1, 0, 2, '212.225.139.93', '212.225.139.93', '', '', 0, 1, '', 2, '', '', 4, 311, '51dc', '', 0, '', 1, 0, 0, 0, 0),
(17, 'inek0', 1377096355, 2, 0, '', 1377193644, 'inek0', 0, 0, 0, '', '', 0, '', '', '62cf58d40e90dd7541a0d7ea6533b3a5e3d63191', '', 'alex13j@hotmail.es', '', 0, '0001-01-01', '', '', '', '', '', '', '', 1, 1, '', '', 0, '', 1, 0, 0, '', 1, 1, 0, 2, '87.217.50.207', '87.217.50.207', '', '', 0, 1, '', 3, '', '', 4, 851, '9268', '', 0, '', 1, 0, 0, 0, 0),
(18, 'iLusionzz', 1377096947, 0, 0, '', 1377096947, 'iLusionzz', 0, 0, 0, '', '', 0, '', '', '452e47f0af95a8e16c98fd0ee5bb4d92e9d39c4c', '', 'pokealex23@gmail.com', '', 0, '0001-01-01', '', '', '', '', '', '', '', 0, 1, '', '', 0, '', 1, 0, 0, '', 1, 1, 0, 2, '24.154.58.224', '24.154.58.224', '', '', 0, 1, '', 3, '', '', 4, 0, '2750', '', 0, '', 1, 0, 0, 0, 0),
(19, 'NaChOESP100', 1377097130, 0, 0, '', 1377097130, 'NaChOESP100', 0, 0, 0, '', '', 0, '', '', 'decbb7f3e36fcc2b71658a7c50d13772483cd49b', '', 'nachogonzalomaroto@gmail.com', '', 0, '0001-01-01', '', '', '', '', '', '', '', 0, 1, '', '', 0, '', 1, 0, 0, '', 1, 1, 0, 2, '79.148.131.201', '79.148.131.201', '', '', 0, 1, '', 3, '', '', 4, 0, 'adef', '', 0, '', 1, 0, 0, 0, 0),
(22, 'kener18', 1377103992, 2, 0, '', 1377352540, 'kener18', 0, 0, 0, '', '', 0, '', '', 'da38134a47847447d4c89cf9bafaae9205f6c55e', '', 'biobytes@uma.es', '', 0, '0001-01-01', '', '', '', '', '', '', '', 1, 1, '', '', 0, '', 1, 0, 0, '', 1, 1, 0, 2, '79.153.254.28', '79.153.254.28', '', '', 0, 1, '', 31, '', '', 4, 2610, '1a05', '', 0, '', 1, 0, 0, 0, 0),
(23, 'dJ0enderman', 1377104959, 0, 0, '', 1377104959, 'dJ0enderman', 0, 0, 0, '', '', 0, '', '', '48bd94a1f6ca7bc06c70d37d7d861ae5639439e5', '', 'kincitoo@hotmail.com', '', 0, '0001-01-01', '', '', '', '', '', '', '', 1, 1, '', '', 0, '', 1, 0, 0, '', 1, 1, 0, 2, '186.106.104.224', '186.106.104.224', '', '', 0, 1, '', 5, '', '', 4, 0, '800e', '', 0, '', 1, 0, 0, 0, 0),
(24, 'Gotini', 1377112654, 0, 0, '', 1377112655, 'Gotini', 0, 0, 0, '', '', 0, '', '', 'b83117689ffbd06b91aaac82e8c875c62b2ee1de', '', 'mgotini@gmail.com', '', 0, '0001-01-01', '', '', '', '', '', '', '', 0, 1, '', '', 0, '', 1, 0, 0, '', 1, 1, 0, 2, '200.116.83.71', '200.116.83.71', '', '', 0, 1, '', 5, '', '', 4, 0, '2f46', '', 0, '', 1, 0, 0, 0, 0),
(25, 'thegamertres3', 1377123271, 0, 0, '', 1377123272, 'thegamertres3', 0, 0, 0, '', '', 0, '', '', '79254f02981536ce74adf310f04c276d947aa5cb', '', 'minecraft21@hotmail.es', '', 0, '0001-01-01', '', '', '', '', '', '', '', 1, 1, '', '', 0, '', 1, 0, 0, '', 1, 1, 0, 2, '187.178.89.231', '187.178.89.231', '', '', 0, 1, '', 7, '', '', 4, 0, '0b69', '', 0, '', 1, 0, 0, 0, 0),
(26, 'MrZap5iYtHD', 1377169071, 0, 0, '', 1377169071, 'MrZap5iYtHD', 0, 0, 0, '', '', 0, '', '', '716b65e43c8c2e0ffeff772bdfe4a567acf9bd30', '', 'zapatalossantos@gmail.com', '', 0, '0001-01-01', '', '', '', '', '', '', '', 0, 1, '', '', 0, '', 1, 0, 0, '', 1, 1, 0, 2, '62.117.130.164', '62.117.130.164', '', '', 0, 1, '', 14, '', '', 4, 0, '3dea', '', 0, '', 1, 0, 0, 0, 0),
(27, 'Davidskv8', 1377169773, 0, 0, '', 1377170062, 'Davidskv8', 0, 0, 0, '', '', 0, '', '', '084682c2a8697ed314197ad4f8bf3dd2c55ba13a', '', 'davidminecraft8@gmail.com', '', 0, '0001-01-01', '', '', '', '', '', '', '', 0, 1, '', '', 0, '', 1, 0, 0, '', 1, 1, 0, 2, '46.27.45.82', '46.27.45.82', '', '', 0, 1, '', 15, '', '', 4, 335, '1a12', '', 0, '', 1, 0, 0, 0, 0),
(28, 'Pollofrito', 1377170209, 2, 0, '', 1377251498, 'Pollofrito', 0, 0, 0, '', '', 0, '', '', '1cf9b6af151a28e3bdab05177e5a70503b302a33', '', 'pollofriito@hotmail.es', '', 0, '0001-01-01', '', '', '', '', '', '', '', 1, 1, '', '', 0, '', 1, 0, 0, '', 1, 1, 0, 2, '81.44.49.30', '81.44.49.30', '', '', 0, 1, '', 26, '', '', 4, 2018, '500b', '', 0, '', 1, 0, 0, 0, 0),
(29, 'MrBertitox', 1377171332, 0, 0, '', 1377171332, 'MrBertitox', 0, 0, 0, '', '', 0, '', '', '07457b22fba9f08ce67a5f8483d86cf54de465dc', '', 'mrbertitox@gmail.com', '', 0, '0001-01-01', '', '', '', '', '', '', '', 0, 1, '', '', 0, '', 1, 0, 0, '', 1, 1, 0, 2, '85.58.44.185', '85.58.44.185', '', '', 0, 1, '', 16, '', '', 4, 0, 'cd3f', '', 0, '', 1, 0, 0, 0, 0),
(30, 'AngeloxCraft77', 1377182270, 0, 0, '', 1377182271, 'AngeloxCraft77', 0, 0, 0, '', '', 0, '', '', 'c611909d1e86b391c19a5ba67bf61978ef7c9293', '', 'sergi-num1@hotmail.com', '', 0, '0001-01-01', '', '', '', '', '', '', '', 0, 1, '', '', 0, '', 1, 0, 0, '', 1, 1, 0, 2, '85.155.213.135', '85.155.213.135', '', '', 0, 1, '', 17, '', '', 4, 0, 'a8e4', '', 0, '', 1, 0, 0, 0, 0),
(31, 'stakewinner00', 1377184228, 0, 0, '', 1377200552, 'stakewinner00', 0, 0, 0, '', '', 0, '', '', '8075efcb42de6806e361bc0b9f28e64a075eb32f', '', 'L@l.com', '', 0, '0001-01-01', '', '', '', '', '', '', '', 0, 1, '', '', 0, '', 1, 0, 0, '', 1, 1, 0, 2, '37.15.116.67', '37.15.116.67', '', '', 0, 1, '', 24, '', '', 4, 867, '6025', '', 0, '', 1, 0, 0, 0, 0),
(32, 'Josemi_MK', 1377187420, 0, 0, '', 1377187420, 'Josemi_MK', 0, 0, 0, '', '', 0, '', '', '89bc2339b7349a7c43a326eaa54573488f7b1e45', '', 'josemimk@gmail.com', '', 0, '0001-01-01', '', '', '', '', '', '', '', 0, 1, '', '', 0, '', 1, 0, 0, '', 1, 1, 0, 2, '84.121.235.87', '84.121.235.87', '', '', 0, 1, '', 18, '', '', 4, 0, '6fc8', '', 0, '', 1, 0, 0, 0, 0),
(33, 'cacalondrio', 1377187524, 1, 0, '', 1377189958, 'cacalondrio', 0, 0, 0, '', '', 0, '', '', 'c1a1e5885252479ea52f45544bc16aa8d3a13273', '', 'cacalondrio@gmail.com', '', 0, '0001-01-01', '', '', '', '', '', '', '', 1, 1, '', '', 0, '', 1, 0, 0, '', 1, 1, 0, 2, '84.122.114.5', '84.122.114.5', '', '', 0, 1, '', 18, '', '', 4, 1344, '6691', '', 0, '', 1, 0, 0, 0, 0),
(34, 'byBiMaXx', 1377190315, 1, 0, '', 1377190461, 'byBiMaXx', 0, 0, 0, '', '', 0, '', '', '3ab8c1080cbe5eba8cf0fa567124945e736bf48b', '', 'bybimaxx@gmail.com', '', 0, '0001-01-01', '', '', '', '', '', '', '', 0, 1, '', '', 0, '', 1, 0, 0, '', 1, 1, 0, 2, '95.19.106.9', '95.19.106.9', '', '', 0, 1, '', 19, '', '', 4, 244, 'b919', '', 0, '', 1, 0, 0, 0, 0),
(35, 'DarkFox', 1377190435, 1, 0, '', 1377191123, 'DarkFox', 0, 0, 0, '', '', 0, '', '', 'b3c7968d6c7edde0536329b5475e34a5ad3c7923', '', 'ivanove-kenny@hotmail.com', '', 0, '0001-01-01', '', '', '', '', '', '', '', 0, 1, '', '', 0, '', 1, 0, 0, '', 1, 1, 0, 2, '190.193.113.78', '190.193.113.78', '', '', 0, 1, '', 19, '', '', 4, 761, 'dc3a', '', 0, '', 1, 0, 0, 0, 0),
(36, 'DMcFc', 1377192818, 0, 0, '', 1377192819, 'DMcFc', 0, 0, 0, '', '', 0, '', '', '060e0c9225630c5665c4dc0817d83013eb39f6bd', '', 'orion7999@hotmail.com', '', 0, '0001-01-01', '', '', '', '', '', '', '', 0, 1, '', '', 0, '', 1, 0, 0, '', 1, 1, 0, 2, '190.48.62.174', '190.48.62.174', '', '', 0, 1, '', 21, '', '', 4, 0, 'a4de', '', 0, '', 1, 0, 0, 0, 0),
(37, 'sertija', 1377193224, 0, 0, '', 1377264679, 'sertija', 0, 0, 0, '', '', 0, '', '', '436f89a5bd2679c5c5093d575717f6aefc9bfb4e', '', 'sertija@hotmail.com', '', 0, '0001-01-01', '', '', '', '', '', '', '', 0, 1, '', '', 0, '', 1, 0, 0, '', 1, 1, 0, 2, '83.41.253.91', '83.41.253.91', '', '', 0, 1, '', 27, '', '', 4, 0, '528e', '', 0, '', 1, 0, 0, 0, 0),
(38, 'ExisFire', 1377193482, 1, 0, '', 1377193563, 'ExisFire', 0, 0, 0, '', '', 0, '', '', '7852d761f83be21545bb68b2fdb02aa36e59d726', '', 'alex11j@hotmail.com', '', 0, '0001-01-01', '', '', '', '', '', '', '', 1, 1, '', '', 0, '', 1, 0, 0, '', 1, 1, 0, 2, '87.217.50.207', '87.217.50.207', '', '', 0, 1, '', 21, '', '', 4, 124, '1154', '', 0, '', 1, 0, 0, 0, 0),
(39, 'DeiPro', 1377193722, 1, 0, '', 1377193723, 'DeiPro', 0, 0, 0, '', '', 0, '', '', '9d9f2d3438c84afc9fb545c0e7c6f6e131d2d001', '', 'alex10j@hotmail.es', '', 0, '0001-01-01', '', '', '', '', '', '', '', 1, 1, '', '', 0, '', 1, 0, 0, '', 1, 1, 0, 2, '87.217.50.207', '87.217.50.207', '', '', 0, 1, '', 23, '', '', 4, 0, '0ad3', '', 0, '', 1, 0, 0, 0, 0),
(40, 'aitor1699', 1377199544, 0, 0, '', 1377199545, 'aitor1699', 0, 0, 0, '', '', 0, '', '', '3915d64b9e0a8faa230be44a628d4681cc3eaedc', '', 'aitor.belenguer@yahoo.com', '', 0, '0001-01-01', '', '', '', '', '', '', '', 1, 1, '', '', 0, '', 1, 0, 0, '', 1, 1, 0, 2, '92.58.105.81', '92.58.105.81', '', '', 0, 1, '', 24, '', '', 4, 0, '24f4', '', 0, '', 1, 0, 0, 0, 0),
(41, 'Nikitoooooo', 1377202758, 1, 0, '', 1377203136, 'Nikitoooooo', 0, 0, 0, '', '', 0, '', '', '998c7c2f9536373060e51ff05806678c3aab49ae', '', 'nicogonzalez2000@gmail.com', '', 0, '0001-01-01', '', '', '', '', '', '', '', 1, 1, '', '', 0, '', 1, 0, 0, '', 1, 1, 0, 2, '179.24.31.40', '179.24.31.40', '', '', 0, 1, '', 24, '', '', 4, 442, '60b8', '', 0, '', 1, 0, 0, 0, 0),
(42, 'JoyGamer', 1377217622, 0, 0, '', 1377217975, 'JoyGamer', 0, 0, 0, '', '', 0, '', '', '583ba3eb930a96362a492fd6cceebe4126974fea', '', 'johan_fa11@hotmail.com', '', 1, '1996-02-12', '', '', '', '', '', '', '', 0, 1, '', 'JoHaN', 0, '', 1, 0, 0, '', 1, 1, 0, 2, '190.151.250.140', '190.151.250.140', '', '', 0, 1, '', 25, '', '', 4, 905, '690d', '', 0, '', 1, 0, 0, 0, 0),
(43, 'BenllaPro', 1377220010, 1, 0, '', 1377220192, 'BenllaPro', 0, 0, 0, '', '', 0, '', '', '750ad643338dea123b8d3da3d2a3f2b964d32b24', '', 'benjamin_alvarez2002@hotmail.com', '', 0, '0001-01-01', '', '', '', '', '', '', '', 1, 1, '', '', 0, '', 1, 0, 0, '', 1, 1, 0, 2, '190.160.159.65', '190.160.159.65', '', '', 0, 1, '', 25, '', '', 4, 277, 'f303', '', 0, '', 1, 0, 0, 0, 0),
(44, 'Free_Killer', 1377259432, 0, 0, '', 1377259561, 'Free_Killer', 0, 0, 0, '', '', 0, '', '', '150ef20b2f009232477b5be9123927385fa6dd71', '', 'oscarblancomarin@gmail.com', '', 0, '0001-01-01', '', '', '', '', '', '', '', 1, 1, '', '', 0, '', 1, 0, 0, '', 1, 1, 0, 2, '77.228.245.81', '77.228.245.81', '', '', 0, 1, '', 27, '', '', 4, 266, '96fa', '', 0, '', 1, 0, 0, 0, 0),
(45, 'xRagnarok', 1377263613, 0, 0, '', 1377264125, 'xRagnarok', 0, 0, 0, '', '', 0, '', '', '4142f7cc98c7d947e1ae13cc0ac7a916225c52ed', '', 'supertuba2009@hotmail.com', '', 0, '0001-01-01', '', '', '', '', '', '', '', 1, 1, '', '', 0, '', 1, 0, 0, '', 1, 1, 0, 2, '88.14.61.175', '88.14.61.175', '', '', 0, 1, '', 27, '', '', 4, 0, 'c256', '', 0, '', 1, 0, 0, 0, 0),
(46, 'MeCraniDOS', 1377271133, 0, 0, '', 1377271134, 'MeCraniDOS', 0, 0, 0, '', '', 0, '', '', '419ea5a34e4288bc378e3af67dec906b1c4a5145', '', 'MeCraniDOS@gmail.com', '', 0, '0001-01-01', '', '', '', '', '', '', '', 1, 1, '', '', 0, '', 1, 0, 0, '', 1, 1, 0, 2, '79.159.101.204', '79.159.101.204', '', '', 0, 1, '', 27, '', '', 4, 0, 'e3a3', '', 0, '', 1, 0, 0, 0, 0),
(47, 'adrian253', 1377271244, 2, 0, '', 1377378487, 'adrian253', 0, 0, 0, '', '', 0, '', '', '6d6a720aec036cb109ffad7b81bc37a0f53fab5f', '', 'adrian92539@gmail.com', '', 0, '0001-01-01', '', '', '', '', '', '', '', 0, 1, '', '', 0, '', 1, 0, 0, '', 1, 1, 0, 2, '88.3.184.2', '88.3.184.2', '', '', 0, 1, '', 31, '', '', 4, 3756, 'e5c5', '', 0, '1377378416|1', 1, 1, 0, 0, 0),
(48, 'Pedroh-Kun', 1377281801, 1, 0, '', 1377282035, 'Pedroh-Kun', 0, 0, 0, '', '', 0, '', '', '0a4d53702a8145a2db22545aefb7ae5c0f385099', '', 'pedropabloperezaguirre@live.cl', '', 0, '0001-01-01', '', '', '', '', '', '', '', 0, 1, '', '', 0, '', 1, 0, 0, '', 1, 1, 0, 2, '200.104.210.5', '200.104.210.5', '', '', 0, 1, '', 27, '', '', 4, 351, 'e62f', '', 0, '', 1, 0, 0, 0, 0),
(49, 'MercurioX96', 1377283297, 0, 0, '', 1377283728, 'MercurioX96', 0, 0, 0, '', '', 0, '', '', 'a7b9a9e5baa079e8f209094eb7befa8daa3309d8', '', 'alphablakc@hotmail.es', '', 0, '0001-01-01', '', '', '', '', '', '', '', 0, 1, '', '', 0, '', 1, 0, 0, '', 1, 1, 0, 2, '83.39.240.171', '83.39.240.171', '', '', 0, 1, '', 28, '', '', 4, 214, 'a399', '', 0, '', 1, 0, 0, 0, 0),
(50, 'SNaKbooll', 1377284210, 0, 0, '', 1377284211, 'SNaKbooll', 0, 0, 0, '', '', 0, '', '', 'b89daf6972a1192cfd9289592b747343784b2d21', '', 'puker_3@hotmail.com', '', 0, '0001-01-01', '', '', '', '', '', '', '', 0, 1, '', '', 0, '', 1, 0, 0, '', 1, 1, 0, 2, '216.185.35.181', '216.185.35.181', '', '', 0, 1, '', 28, '', '', 4, 0, '4a04', '', 0, '', 1, 0, 0, 0, 0),
(51, 'jonhzboy', 1377284678, 1, 0, '', 1377285141, 'jonhzboy', 0, 0, 0, '', '', 0, '', '', '7b113714c6cd0594f53bf99010b35872a0ca796f', '', 'jonhzboy@hotmail.com', '', 0, '0001-01-01', '', '', '', '', '', '', '', 0, 1, '', '', 0, '', 1, 0, 0, '', 1, 1, 0, 2, '187.134.207.169', '187.134.207.169', '', '', 0, 1, '', 28, '', '', 4, 826, '61e6', '', 0, '', 1, 0, 0, 0, 0),
(52, 'caracoza', 1377306332, 0, 0, '', 1377306332, 'caracoza', 0, 0, 0, '', '', 0, '', '', 'aeb127fe1a60c708be45e29b54c020464e08eea8', '', 'roxasx@live.com.mx', '', 0, '0001-01-01', '', '', '', '', '', '', '', 0, 1, '', '', 0, '', 1, 0, 0, '', 1, 1, 0, 2, '201.166.39.236', '201.166.39.236', '', '', 0, 1, '', 29, '', '', 4, 0, 'c1f2', '', 0, '', 1, 0, 0, 0, 0),
(53, 'amiel', 1377357257, 0, 0, '', 1377357258, 'amiel', 0, 0, 0, '', '', 0, '', '', '91254ace00a59781152de324e20e936b6c7a50ff', '', 'amiel_genio@hotmail.com', '', 0, '0001-01-01', '', '', '', '', '', '', '', 1, 1, '', '', 0, '', 1, 0, 0, '', 1, 1, 0, 2, '186.137.108.204', '186.137.108.204', '', '', 0, 1, '', 31, '', '', 4, 0, '9eb1', '', 0, '', 1, 0, 0, 0, 0),
(57, 'KarmaVPN', 1377376740, 0, 0, '', 0, 'KarmaVPN', 0, 0, 0, '', '', 0, '', '', '4ff0cc9828e984f33b1913ee847bdd7dd33ff9a5', '', 'karmaisabitch@hotmail.com', '', 0, '0001-01-01', '', '', '', '', '', '', '', 1, 1, '', '', 0, '', 1, 0, 0, '', 1, 1, 0, 2, '141.8.247.44', '141.8.247.44', '', '', 0, 0, '7fa6e92ae4', 0, '', '', 4, 0, '83f2', '', 0, '', 1, 0, 0, 0, 0),
(56, 'BotMeBanMe', 1377376387, 0, 0, '', 1377376388, 'BotMeBanMe', 0, 0, 0, '', '', 0, '', '', 'da5ff234ca16bfd74912af606dc4e901c4ccd2a4', '', 'suseguridadapesta@hotmail.com', '', 0, '0001-01-01', '', '', '', '', '', '', '', 1, 1, '', '', 0, '', 1, 0, 0, '', 1, 1, 0, 2, '37.139.24.230', '37.139.24.230', '', '', 0, 11, '', 31, '', '', 4, 0, '8cc7', '', 0, '', 1, 0, 0, 0, 0),
(58, 'trollololo', 1377376972, 0, 0, '', 0, 'trollololo', 0, 0, 0, '', '', 0, '', '', 'ccd7c69f4acb79c8081fb9d999b051a6cbb86675', '', 'trollolol_cuenta_falsa@yopmail.com', '', 0, '0001-01-01', '', '', '', '', '', '', '', 1, 1, '', '', 0, '', 1, 0, 0, '', 1, 1, 0, 2, '37.15.33.156', '37.15.33.156', '', '', 0, 0, 'a92df003ac', 0, '', '', 4, 0, 'f66a', '', 0, '', 1, 0, 0, 0, 0),
(59, 'Darkar310', 1377377188, 0, 0, '', 0, 'Darkar310', 0, 0, 0, '', '', 0, '', '', '2384c5a6f55cb3450026e8fe1c811ed30d357653', '', 'renzix1234@hotmail.com', '', 0, '0001-01-01', '', '', '', '', '', '', '', 1, 1, '', '', 0, '', 1, 0, 0, '', 1, 1, 0, 2, '190.239.163.105', '190.239.163.105', '', '', 0, 0, '17f4513111', 0, '', '', 4, 0, '5127', '', 0, '', 1, 0, 47, 0, 1377377188),
(60, 'nosoyyo', 1377378233, 0, 0, '', 0, 'nosoyyo', 0, 0, 0, '', '', 0, '', '', 'bb775ab353f148104ddd7ef47813ab7d9d93e2c6', '', 'nosoyyo@yopmail.com', '', 0, '0001-01-01', '', '', '', '', '', '', '', 1, 1, '', '', 0, '', 1, 0, 0, '', 1, 1, 0, 2, '178.63.97.34', '178.63.97.34', '', '', 0, 0, 'f28d21db53', 0, '', '', 4, 0, 'b593', '', 0, '', 1, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `smf_ikillmessages`
--

CREATE TABLE IF NOT EXISTS `smf_ikillmessages` (
  `id_msg` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_topic` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_board` smallint(5) unsigned NOT NULL DEFAULT '0',
  `poster_time` int(10) unsigned NOT NULL DEFAULT '0',
  `id_member` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_msg_modified` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `poster_name` varchar(255) NOT NULL DEFAULT '',
  `poster_email` varchar(255) NOT NULL DEFAULT '',
  `poster_ip` varchar(255) NOT NULL DEFAULT '',
  `smileys_enabled` tinyint(4) NOT NULL DEFAULT '1',
  `modified_time` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_name` varchar(255) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `icon` varchar(16) NOT NULL DEFAULT 'xx',
  `approved` tinyint(3) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_msg`),
  UNIQUE KEY `topic` (`id_topic`,`id_msg`),
  UNIQUE KEY `id_board` (`id_board`,`id_msg`),
  UNIQUE KEY `id_member` (`id_member`,`id_msg`),
  KEY `approved` (`approved`),
  KEY `ip_index` (`poster_ip`(15),`id_topic`),
  KEY `participation` (`id_member`,`id_topic`),
  KEY `show_posts` (`id_member`,`id_board`),
  KEY `id_topic` (`id_topic`),
  KEY `id_member_msg` (`id_member`,`approved`,`id_msg`),
  KEY `current_topic` (`id_topic`,`id_msg`,`id_member`,`approved`),
  KEY `related_ip` (`id_member`,`poster_ip`,`id_msg`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=41 ;

--
-- Volcado de datos para la tabla `smf_ikillmessages`
--

INSERT INTO `smf_ikillmessages` (`id_msg`, `id_topic`, `id_board`, `poster_time`, `id_member`, `id_msg_modified`, `subject`, `poster_name`, `poster_email`, `poster_ip`, `smileys_enabled`, `modified_time`, `modified_name`, `body`, `icon`, `approved`) VALUES
(2, 2, 6, 1376919154, 2, 15, 'Cómo cerrar una puerta cuando está abierta', 'Alex', 'alexcondite94@hotmail.com', '212.145.90.172', 1, 1377169945, 'Roster', '[youtube]http://www.youtube.com/watch?v=n2_LWlKkRYQ[/youtube]<br /> ', 'lamp', 1),
(3, 3, 1, 1377094618, 1, 3, '[Noticia] Nos hemos mudado de dominio exitosamente', 'Ikillnukes', 'ikillnukes1@gmail.com', '79.151.232.143', 1, 0, '', '[b]Hola queridos usuarios de [u]NexusPlayers![/u][/b], pues bueno, como oís la antigua página me daba problemas con el [b]Host[/b], y he decidido mudarla, y bueno, pues aquí está recién creada (con 1 día de antigüedad), para que la disfrutéis al máximo.<br /><br />[b]Un saludo.[/b]', 'xx', 1),
(4, 2, 6, 1377098072, 17, 4, 'Re:Cómo cerrar una puerta cuando está abierta', 'inek0', 'alex13j@hotmail.es', '87.219.89.194', 1, 0, '', '[i]Interesante, xD[/i]', 'xx', 1),
(5, 4, 1, 1377099454, 1, 5, '[Noticia] ¿Quieres tener rango en el Foro? ¿Quieres trabajar aquí?', 'Ikillnukes', 'ikillnukes1@gmail.com', '79.151.232.143', 1, 1377101361, 'Ikillnukes', '[size=12pt][b]Hola queridos usuarios...[/b] Hoy os traigo nuevas noticias, y es que os doy la oportunidad de tener rango [color=purple]Recruiter[/color], con hacer muy poco...<br /><br />[b]¿Que es o ser un [color=purple][u]Recruiter[/u][/color]?[/b]<br />[b]Básicamente,[/b] es un anglicismo que viene de la palabra [b]Reclutar[/b]:<br />[/size]<br />[quote]El [b]reclutamiento[/b] puede definirse como un conjunto de procedimientos utilizados con el fin de atraer a un número suficiente de candidatos idóneos para un puesto específico en una determinada organización.[/quote]<br />[right][i][size=10pt]Fuente: http://es.wikipedia.org/wiki/Reclutamiento[/size][/i][/right]<br /><br />[hr]<br /><br />[size=12pt][b]Requisitos para ser [u][color=purple]Recruiter[/color][/u]:[/b][/size]<br />[list]<br />[li][b]Conseguir hacer que, gracias a tí, 20 usuarios se registren.[/b][/li]<br />[/list]<br /><br />[size=12pt][b]Ventajas de tener [u]Rango [color=purple]Recruiter[/color][/u]:[/b][/size]<br />[list]<br />[li][b]Tener acceso a un subforo privado.[/b][/li]<br />[li][b]Tener un color diferente de [u]Nick[/u].[/b][/li]<br />[li][b]Tener más derechos que un usuario normal.[color=red]*[/color][/b][/li]<br />[/list]<br /><br />[size=12pt][b][color=red]*:[/color] ¿Cuántos permisos más?, aquí lo puedes ver:[/b][/size]<br /><br />[img]http://gyazo.com/c39235f31b03e4e64d3ed33d42745180.png[/img]<br />[b]&nbsp; [/b][img]http://gyazo.com/c3fc3906d084c77ef429568d64935bad.png[/img]<br />[b]&nbsp;  [/b][img]http://gyazo.com/8cbb3c4c92556b851bc8204c10d315ad.png[/img]<br /><br />[size=12pt][b]¿Cómo consigo que la gente quede registrado en nombre mío?, muy sencillo, solo tienes que hacer esto:[/b][/size]<br /><br />[img]http://gyazo.com/87677e3e50e01c755196cd4b36d8318a.png[/img]<br /><br />[img]http://gyazo.com/ff0fafdba41c7e94cd3fad6f45b89d1f.png[/img]<br /><br />En [b]&quot;Account Settings&quot;[/b] &gt; [b]&quot;Referal Link&quot;[/b], mandad ese link a vuestros amigos y así conseguireis subir la cantidad de [b]Referals[/b] por cada registro.<br /><br />Sí queréis hacer [b]spam[/b] de forma culta y sensata siempre podéis recurrir a esto: http://pastebin.com/g4rqvFM4<br /><br />[b]Un saludo.[/b]', 'xx', 1),
(6, 5, 44, 1377121184, 22, 6, 'Yo soy el primero!', 'kener18', 'biobytes@uma.es', '88.0.92.40', 1, 0, '', 'Hola, con algo de suerte este foro se dará a conocer.<br /><br />Como primer post en el subforo de C++, tengo dos plazas para ayudarme a terminar un juego con la librería SFML.<br /><br />El juego no tiene nombre aún. En general, se trata de un jugador que dispone de distintas armas para matar todo tipo de cosas/seres vivos que caen desde el cielo. La dinámica del juego es simple, pero a fin de realizar un buen trabajo, he diseñado sistemas de optimización por si se hace más grande, como un&nbsp; quadtree [url=http://en.wikipedia.org/wiki/Quadtree]http://en.wikipedia.org/wiki/Quadtree[/url], o el teorema de los ejes separados ([url=http://en.wikipedia.org/wiki/Hyperplane_separation_theorem]http://en.wikipedia.org/wiki/Hyperplane_separation_theorem[/url]).<br /><br />También agradezco colaboración con los gráficos del juego, aunque esto no va en esta sección.<br /><br />Un saludo', 'xx', 1),
(7, 6, 5, 1377121402, 22, 7, 'Buenas noches', 'kener18', 'biobytes@uma.es', '88.0.92.40', 1, 0, '', 'Me llamo Fran, tengo 21 años, y soy estudiante de Biología, aunque mi verdadera pasión es la programación y la ingeniería inversa. <br /><br />Un saludo!', 'xx', 1),
(8, 7, 5, 1377163459, 2, 8, 'No me había presentado (más vale tarde que nunca)', 'Alex', 'alexcondite94@hotmail.com', '212.145.90.172', 1, 1377163575, 'Roster', 'Buenos días, buenas tardes o noches y todo eso...<br /><br />Acabo de darme cuenta que este foro es para presentaciones porque pensaba que este foro era de cumpleaños y tal. Así que he decidido presentarme ahora que el foro es joven, aunque ya haya posteado dos mensajes previamente (me pasa en muchos foros eso de presentarme después de haber posteado :-[). Bueno, al grano, como dijo el dermatólogo...<br /><br />Mi nombre es Álex, tengo 19 años y estudio para ingeniería de informática en Alicante y tal. Mi nick en el foro es Roster, una mezcla de mi apellido con un sufijo &quot;guay&quot; por así decirlo, aunque el origen de este nick guarda otra historia más larga que ahora mismo no me apetece contar y tal. Tengo otros hobbies aparte de la informática y programación: música (toco el bajo, guitarra y la batería; nada de ser un pseudo-DJ y componer o pinchar canciones como últimamente veo frecuentemente por internet y tal) y el dibujo por supuesto.<br /><br />En este foro actualmente ocupo el cargo de Wiki, que consiste en redactar noticias, información, artículos, etc. Os animo también a obtener algún cargo también en este mismo foro :) Todas las &quot;vacantes&quot; se van anunciando públicamente [url=http://nexusplayers.x10host.com/index.php?board=1.0]aquí[/url], que lo sepáis.<br /><br />[b]PD:[/b] Como habéis podido ver, tengo un serio problema con el &quot;y tal&quot; hasta por escrito, cosa que a la hora de redactar obviamente intentaré omitir ::)<br />[b]PD2:[/b] No habrán más post-datas.<br />[b]PD3:[/b] La anterior post-data era mentira.', 'xx', 1),
(9, 6, 5, 1377164176, 2, 9, 'Re:Buenas noches', 'Alex', 'alexcondite94@hotmail.com', '212.145.90.172', 1, 0, '', 'Se bienvenido a NexusPlayers, Fran :) <br /><br />Pues esperemos que te guste aportar tu sabiduría al foro, y que ante todo y sobre todo pasemos entre todos buenos ratos por aquí y esas cosas que siempre se dicen ;)<br /><br />Saludos.', 'xx', 1),
(10, 6, 5, 1377164380, 1, 10, 'Re:Buenas noches', 'Ikillnukes', 'ikillnukes1@gmail.com', '79.151.232.143', 1, 0, '', '[b]Bienvenido![/b] :D<br /><br />[b]Una curiosidad,[/b] que lenguajes de programación sabes? :P<br /><br />[b]Un saludo.[/b]', 'xx', 1),
(11, 7, 5, 1377164656, 1, 11, 'Re:No me había presentado (más vale tarde que nunca)', 'Ikillnukes', 'ikillnukes1@gmail.com', '79.151.232.143', 1, 0, '', 'Jajaja, [b]Bienvenido[/b] (?)<br /><br />Lo de los [b]Posdatas[/b] es un engancho y tal xD ;D<br /><br />Yo recuerdo que llegué a escribir cosa de [b][u]10[/u] posdatas[/b] en un topic de otro foro... xD No recuerdo cuantos eran totalmente, pero si, eran bastantes... xD<br /><br />[b]Un saludo.[/b]', 'xx', 1),
(12, 4, 1, 1377164738, 2, 12, 'Re:[Noticia] ¿Quieres tener rango en el Foro? ¿Quieres trabajar aquí?', 'Alex', 'alexcondite94@hotmail.com', '212.145.90.172', 1, 0, '', 'Aporto un pequeño detalle. Nada, es solo comentar que para facilitar el trabajo de los usuarios, para acceder más fácilmente a tu perfil, basta con acceder a este enlace: http://nexusplayers.x10host.com/index.php?action=profile;u=0 y copiar el enlace que ha dicho Ikillnukes (el de Referral link).<br /><br />Solo eso, nada más.<br />[right][img]http://www.court-records.net/animation/edgeworth-bow(a).gif[/img][/right]<br /><br /><br />PD: Está bien la función esa de reclutamiento. Hasta ahora desconocía que eso existía en SMF (me imagino que funciona a través de un MOD o algo por el estilo).<br /><br />Saludos.', 'xx', 1),
(13, 4, 1, 1377165235, 1, 13, 'Re:[Noticia] ¿Quieres tener rango en el Foro? ¿Quieres trabajar aquí?', 'Ikillnukes', 'ikillnukes1@gmail.com', '79.151.232.143', 1, 0, '', '[quote author=Roster link=topic=4.msg12#msg12 date=1377164738]<br />PD: Está bien la función esa de reclutamiento. Hasta ahora desconocía que eso existía en SMF (me imagino que funciona a través de un MOD o algo por el estilo).<br />[/quote]<br /><br />Si que es un mod... :P', 'xx', 1),
(14, 6, 5, 1377168970, 22, 14, 'Re:Buenas noches', 'kener18', 'biobytes@uma.es', '88.0.92.40', 1, 0, '', '[quote author=Ikillnukes link=topic=6.msg10#msg10 date=1377164380]<br />[b]Bienvenido![/b] :D<br /><br />[b]Una curiosidad,[/b] que lenguajes de programación sabes? :P<br /><br />[b]Un saludo.[/b]<br />[/quote]<br /><br />Hola, sé varios, no obstante programo aplicaciones casi exclusivamente con C++, y cuando es necesario, ensamblador. No he empezado con Java nunca porque nunca he visto esa necesidad, pero cuando tenga que programar aplicaciones para otra máquina que un PC con Windows, me pondré con ello. De todas formas, aunque parezca irónico, no sé Java pero sí conozco más o menos bien el código semicompilado de los programas Java, debido a mis experiencias en ingeniería inversa. <br /><br />Páginas web ya no suelo hacer, pero hace tiempo programé un portal con PHP y db MySQL, lo típico. Un saludo.', 'xx', 1),
(15, 2, 6, 1377169598, 22, 15, 'Re:Cómo cerrar una puerta cuando está abierta', 'kener18', 'biobytes@uma.es', '88.0.92.40', 1, 0, '', 'Habría que enseñarle ese vídeo a mi madre, pensará &quot;DIOS!, las puertas se pueden cerrar sin hacer ruido!&quot;', 'xx', 1),
(16, 2, 6, 1377171265, 1, 16, 'Re:Cómo cerrar una puerta cuando está abierta', 'Ikillnukes', 'ikillnukes1@gmail.com', '79.151.232.143', 1, 0, '', '[quote author=kener18 link=topic=2.msg15#msg15 date=1377169598]<br />Habría que enseñarle ese vídeo a mi madre, pensará &quot;DIOS!, las puertas se pueden cerrar sin hacer ruido!&quot;<br />[/quote]<br /><br />Jajajajajaja! xDDD', 'xx', 1),
(17, 8, 63, 1377174111, 28, 17, 'Si sabes algo de minecraft postealo en este tema !', 'Pollofrito', 'pollofriito@hotmail.es', '83.61.102.5', 1, 0, '', 'Este tema es para minecraft y para nada mas :D', 'grin', 1),
(18, 9, 1, 1377187203, 1, 19, '[Evento] ¿Quieres una cuenta premium de Minecraft?', 'Ikillnukes', 'ikillnukes1@gmail.com', '79.151.232.143', 1, 1377188987, 'Ikillnukes', '[font=verdana][size=11pt][b]Buenas Terrícolas,[/b] hoy os traigo un [size=12pt][color=green][b]super Evento[/b][/color][/size] [s]guapo de coj*nes[/s] que trata de conseguir [b][size=12pt][color=purple]cuenta premium en Minecraft[/color][/size][/b], [b]¿cómo funciona esto?[/b]<br />[b]Fácil,[/b] al usuario más activo después de x fecha (ahora dire cuando), ganará una [b][size=12pt][color=purple]cuenta premium en Minecraft[/color][/size][/b].<br /><br />[u][b]¿Qué hay que hacer para participar?[/b][/u][/size][/font]<br />[list]<br />[li][font=verdana][b]Lo primero si eres un visitante, es registrarte:[/b] [url=http://nexusplayers.x10host.com/index.php?action=register]http://nexusplayers.x10host.com/index.php?action=register[/url], [b]si no lo haces, ¿cómo vas a participar?[/b][/font][/li]<br />[li][font=verdana][b]Escribir por aquí, la palabra [u]&quot;Participo&quot;[/u] (sin comillas claramente)[/b], si quieres escribir algo, pon [u][b]&quot;PD:&quot;[/b][/u] gracias.[/font][/li]<br />[/list]<br /><br />[size=11pt][font=verdana][u][b]¿Qué hay que hacer para ser un usuario activo?[/b][/u][/font][/size]<br />[list]<br />[li][font=verdana][b]Crear post, que no contenga [color=red][u]ni Spam[/u][/color], [u][color=red]ni Basura Nuclear[/color][/u], [color=red][u]ni Flood[/u][/color], [u]ni nada por lo cual puedas ser baneado[/u].[color=red]*[/color][/b][/font][/li]<br />[li][font=verdana][b]Comentar por los posts ya existentes.[color=red]*[/color][/b][/font][/li]<br />[li][font=verdana][b]Participar en eventos ya creados[/b], como el de [url=http://nexusplayers.x10host.com/index.php?topic=4.msg5#msg5]Reclutamiento[/url].[/font][/li]<br />[li][font=verdana][b]Estando online,[/b] no sirve de mucho, pero te hará sumar algunos puntillos extra[/font].[/li]<br />[/list]<br /><br />[font=verdana][size=11pt][u][b]¿Cuando acabará el Evento?[/b][/u]<br />[b]El evento terminará dentro de 1 mes,[/b] contando desde ya, es decir, [b]22-09 (22 de Septiembre de 2013)[/b]<br /><br />[b][u]¿Cómo funciona esto?[/u][/b]<br />Cuando el [color=green][b]Evento[/b][/color] acabe [b]este post será cerrado[/b], [b]se miraran los participantes[/b] y [b]la actividad de cada uno[/b], [u](posts creados, comentarios, tiempo online y referels)[/u], todo esto con una [b]ecuación[/b] (regla de 3), se transformará en [b]puntos[/b], y el que más puntos tenga, pues gana. [u][b]¿Sencillo no?[/b][/u]<br /><br />[b][color=red]*[/color][u]Para los navegantes, ¡aviso!:[/u]<br />A todo aquel que se le ocurra incumplir las normas ya dictadas será fuertemente castigado.[/b]<br /><br />[b]Buena suerte a todo el mundo. Gracias por participar.<br />Un saludo.[/b][/size][/font]', 'xx', 1),
(19, 9, 1, 1377187539, 33, 19, 'Re:[Evento] ¿Quieres una cuenta premium de Minecraft?', 'cacalondrio', 'cacalondrio@gmail.com', '84.122.114.5', 1, 0, '', 'POLE!', 'xx', 1),
(20, 9, 1, 1377190461, 34, 20, 'Re:[Evento] ¿Quieres una cuenta premium de Minecraft?', 'byBiMaXx', 'bybimaxx@gmail.com', '95.19.106.9', 1, 0, '', 'Participo<br />PD: Que tengas mucha suerte espero ser el ganador :P', 'xx', 1),
(21, 9, 1, 1377190491, 35, 21, 'Re:[Evento] ¿Quieres una cuenta premium de Minecraft?', 'DarkFox', 'ivanove-kenny@hotmail.com', '190.193.113.78', 1, 0, '', 'Participo<br />PD:Buen Foro&nbsp; ;)', 'xx', 1),
(22, 9, 1, 1377193512, 38, 22, 'Re:[Evento] ¿Quieres una cuenta premium de Minecraft?', 'ExisFire', 'alex11j@hotmail.com', '87.217.50.207', 1, 0, '', 'Participio<br />PD: Muy buen foro y buen post&nbsp; :D<br />', 'xx', 1),
(23, 9, 1, 1377193606, 17, 23, 'Re:[Evento] ¿Quieres una cuenta premium de Minecraft?', 'inek0', 'alex13j@hotmail.es', '87.217.50.207', 1, 0, '', 'Participo&nbsp; :)<br />PD: Todo de 10&nbsp; ;)', 'xx', 1),
(24, 9, 1, 1377193783, 39, 24, 'Re:[Evento] ¿Quieres una cuenta premium de Minecraft?', 'DeiPro', 'alex10j@hotmail.es', '87.217.50.207', 1, 0, '', 'Participooooooo :·<br />PD: Muy buen foro, todo cool.', 'xx', 1),
(25, 9, 1, 1377202875, 41, 25, 'Re:[Evento] ¿Quieres una cuenta premium de Minecraft?', 'Nikitoooooo', 'nicogonzalez2000@gmail.com', '179.24.31.40', 1, 0, '', 'Participo', 'xx', 1),
(26, 9, 1, 1377220192, 43, 26, 'Re:[Evento] ¿Quieres una cuenta premium de Minecraft?', 'BenllaPro', 'benjamin_alvarez2002@hotmail.com', '190.160.159.65', 1, 0, '', 'Participo <br />PD:Les deseo buena suerte a todos :D', 'xx', 1),
(27, 9, 1, 1377251475, 28, 27, 'Re:[Evento] ¿Quieres una cuenta premium de Minecraft?', 'Pollofrito', 'pollofriito@hotmail.es', '81.44.49.30', 1, 0, '', 'Participo', 'xx', 1),
(28, 9, 1, 1377282035, 48, 28, 'Re:[Evento] ¿Quieres una cuenta premium de Minecraft?', 'Pedroh-Kun', 'pedropabloperezaguirre@live.cl', '200.104.210.5', 1, 0, '', '[color=red][/color] Participo PD : Exelente foro uno de los mejores (para mi xdddd) :3', 'xx', 1),
(29, 9, 1, 1377285168, 51, 29, 'Re:[Evento] ¿Quieres una cuenta premium de Minecraft?', 'jonhzboy', 'jonhzboy@hotmail.com', '187.134.207.169', 1, 0, '', 'participo<br />PD: suerte a todos :`3', 'xx', 1),
(30, 9, 1, 1377342945, 47, 30, 'Re:[Evento] ¿Quieres una cuenta premium de Minecraft?', 'adrian253', 'adrian92539@gmail.com', '88.3.184.2', 1, 0, '', 'Participo', 'xx', 1),
(31, 10, 6, 1377343300, 47, 31, 'Como instalar GTA V en un minuto para PC', 'adrian253', 'adrian92539@gmail.com', '88.3.184.2', 1, 0, '', 'Solo en un minuto y dos segundos:<br /><br /><br />[left][youtube]http://www.youtube.com/watch?v=jS3ZxOtTD5A&amp;feature=youtu.be[/youtube][/left]<br /><br />[center][size=36pt]._. WTF[/size][/center]<br />', 'xx', 1),
(40, 19, 23, 1377376429, 56, 40, 'LEL', 'BotMeBanMe', 'suseguridadapesta@hotmail.com', '37.139.24.230', 1, 0, '', '¿MOLESTA VERDAD?<br />Entonces dejen de enviar a sus pelotudos a spamear a los foros por mas de 15 mensajes.<br /><br />[img]http://img46.imageshack.us/img46/9882/hfkt.png[/img]', 'recycled', 1),
(37, 16, 23, 1377376138, 0, 37, 'Hola a Todos Me presento =)', 'Jair25', '', '31.172.30.3', 1, 0, '', '[size=36pt] SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM[/size] <br /><br /><br />¿MOLESTA VERDAD?<br />Entonces dejen de enviar a sus pelotudos a spamear a los foros.<br /><br />[img]http://img46.imageshack.us/img46/9882/hfkt.png[/img]', 'recycled', 1),
(38, 17, 23, 1377376178, 0, 38, 'Hola', 'Jair25', '', '31.172.30.3', 1, 0, '', '[size=36pt] SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM[/size] <br /><br /><br />¿MOLESTA VERDAD?<br />Entonces dejen de enviar a sus pelotudos a spamear a los foros.<br /><br />[img]http://img46.imageshack.us/img46/9882/hfkt.png[/img]', 'recycled', 1),
(39, 18, 23, 1377376195, 0, 39, 'Señores no jodan', 'Jair25', '', '31.172.30.3', 1, 0, '', '[size=36pt] SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; SPAM&nbsp; <br /><br />SPAM[/size] <br /><br /><br />¿MOLESTA VERDAD?<br />Entonces dejen de enviar a sus pelotudos a spamear a los foros.<br /><br />[img]http://img46.imageshack.us/img46/9882/hfkt.png[/img]', 'recycled', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `smf_ikillmessage_icons`
--

CREATE TABLE IF NOT EXISTS `smf_ikillmessage_icons` (
  `id_icon` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(80) NOT NULL DEFAULT '',
  `filename` varchar(80) NOT NULL DEFAULT '',
  `id_board` smallint(5) unsigned NOT NULL DEFAULT '0',
  `icon_order` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_icon`),
  KEY `id_board` (`id_board`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Volcado de datos para la tabla `smf_ikillmessage_icons`
--

INSERT INTO `smf_ikillmessage_icons` (`id_icon`, `title`, `filename`, `id_board`, `icon_order`) VALUES
(1, 'Standard', 'xx', 0, 0),
(2, 'Thumb Up', 'thumbup', 0, 1),
(3, 'Thumb Down', 'thumbdown', 0, 2),
(4, 'Exclamation point', 'exclamation', 0, 3),
(5, 'Question mark', 'question', 0, 4),
(6, 'Lamp', 'lamp', 0, 5),
(7, 'Smiley', 'smiley', 0, 6),
(8, 'Angry', 'angry', 0, 7),
(9, 'Cheesy', 'cheesy', 0, 8),
(10, 'Grin', 'grin', 0, 9),
(11, 'Sad', 'sad', 0, 10),
(12, 'Wink', 'wink', 0, 11);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `smf_ikillmoderators`
--

CREATE TABLE IF NOT EXISTS `smf_ikillmoderators` (
  `id_board` smallint(5) unsigned NOT NULL DEFAULT '0',
  `id_member` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_board`,`id_member`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `smf_ikillmoderators`
--

INSERT INTO `smf_ikillmoderators` (`id_board`, `id_member`) VALUES
(2, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `smf_ikillopenid_assoc`
--

CREATE TABLE IF NOT EXISTS `smf_ikillopenid_assoc` (
  `server_url` text NOT NULL,
  `handle` varchar(255) NOT NULL DEFAULT '',
  `secret` text NOT NULL,
  `issued` int(10) NOT NULL DEFAULT '0',
  `expires` int(10) NOT NULL DEFAULT '0',
  `assoc_type` varchar(64) NOT NULL,
  PRIMARY KEY (`server_url`(125),`handle`(125)),
  KEY `expires` (`expires`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `smf_ikillpackage_servers`
--

CREATE TABLE IF NOT EXISTS `smf_ikillpackage_servers` (
  `id_server` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id_server`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `smf_ikillpackage_servers`
--

INSERT INTO `smf_ikillpackage_servers` (`id_server`, `name`, `url`) VALUES
(1, 'Simple Machines Third-party Mod Site', 'http://custom.simplemachines.org/packages/mods');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `smf_ikillpermissions`
--

CREATE TABLE IF NOT EXISTS `smf_ikillpermissions` (
  `id_group` smallint(5) NOT NULL DEFAULT '0',
  `permission` varchar(30) NOT NULL DEFAULT '',
  `add_deny` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_group`,`permission`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `smf_ikillpermissions`
--

INSERT INTO `smf_ikillpermissions` (`id_group`, `permission`, `add_deny`) VALUES
(-1, 'search_posts', 1),
(-1, 'calendar_view', 1),
(-1, 'view_stats', 1),
(-1, 'profile_view_any', 1),
(12, 'profile_view_any', 1),
(0, 'profile_remote_avatar', 1),
(0, 'profile_upload_avatar', 1),
(0, 'profile_server_avatar', 1),
(0, 'profile_remove_own', 1),
(0, 'profile_extra_own', 1),
(0, 'profile_identity_own', 1),
(0, 'profile_view_any', 1),
(0, 'profile_view_own', 1),
(0, 'pm_send', 1),
(2, 'view_mlist', 1),
(2, 'search_posts', 1),
(2, 'profile_view_own', 1),
(2, 'profile_view_any', 1),
(2, 'pm_read', 1),
(2, 'pm_send', 1),
(2, 'calendar_view', 1),
(2, 'view_stats', 1),
(2, 'who_view', 1),
(2, 'profile_identity_own', 1),
(2, 'profile_extra_own', 1),
(2, 'profile_remove_own', 1),
(2, 'profile_server_avatar', 1),
(2, 'profile_upload_avatar', 1),
(2, 'profile_remote_avatar', 1),
(2, 'profile_title_own', 1),
(2, 'calendar_post', 1),
(2, 'calendar_edit_any', 1),
(2, 'karma_edit', 1),
(2, 'access_mod_center', 1),
(9, 'profile_extra_own', 1),
(9, 'profile_identity_own', 1),
(9, 'profile_view_any', 1),
(9, 'profile_view_own', 1),
(9, 'pm_send', 1),
(9, 'pm_read', 1),
(9, 'calendar_edit_own', 1),
(9, 'calendar_post', 1),
(9, 'calendar_view', 1),
(9, 'karma_edit', 1),
(9, 'search_posts', 1),
(9, 'who_view', 1),
(9, 'view_mlist', 1),
(9, 'view_stats', 1),
(0, 'pm_read', 1),
(0, 'calendar_view', 1),
(0, 'search_posts', 1),
(0, 'who_view', 1),
(0, 'view_mlist', 1),
(9, 'profile_remove_own', 1),
(9, 'profile_server_avatar', 1),
(9, 'profile_upload_avatar', 1),
(9, 'profile_remote_avatar', 1),
(0, 'view_stats', 1),
(12, 'profile_upload_avatar', 1),
(10, 'profile_remote_avatar', 1),
(10, 'profile_remove_own', 1),
(10, 'profile_extra_own', 1),
(10, 'profile_identity_own', 1),
(10, 'profile_view_any', 1),
(10, 'profile_view_own', 1),
(10, 'calendar_view', 1),
(10, 'search_posts', 1),
(10, 'who_view', 1),
(10, 'view_mlist', 1),
(10, 'view_stats', 1),
(11, 'profile_view_any', 1),
(11, 'profile_upload_avatar', 1),
(12, 'profile_server_avatar', 1),
(11, 'profile_server_avatar', 1),
(12, 'profile_remove_own', 1),
(11, 'profile_remove_own', 1),
(12, 'profile_remote_avatar', 1),
(13, 'profile_remote_avatar', 1),
(13, 'profile_upload_avatar', 1),
(13, 'profile_server_avatar', 1),
(13, 'profile_remove_own', 1),
(13, 'profile_extra_own', 1),
(11, 'profile_remote_avatar', 1),
(12, 'profile_identity_own', 1),
(11, 'profile_identity_own', 1),
(13, 'profile_identity_own', 1),
(13, 'profile_view_any', 1),
(13, 'profile_view_own', 1),
(13, 'pm_send', 1),
(13, 'pm_read', 1),
(13, 'send_mail', 1),
(13, 'edit_news', 1),
(13, 'calendar_edit_own', 1),
(13, 'calendar_post', 1),
(13, 'calendar_view', 1),
(13, 'search_posts', 1),
(13, 'who_view', 1),
(13, 'view_mlist', 1),
(13, 'view_stats', 1),
(12, 'profile_extra_own', 1),
(11, 'profile_extra_own', 1),
(12, 'pm_send', 1),
(11, 'pm_send', 1),
(12, 'pm_read', 1),
(11, 'pm_read', 1),
(12, 'karma_edit', 1),
(11, 'karma_edit', 1),
(12, 'calendar_view', 1),
(11, 'calendar_view', 1),
(12, 'calendar_post', 1),
(11, 'calendar_post', 1),
(12, 'calendar_edit_own', 1),
(11, 'calendar_edit_own', 1),
(11, 'profile_view_own', 1),
(12, 'profile_view_own', 1),
(11, 'search_posts', 1),
(12, 'search_posts', 1),
(11, 'view_mlist', 1),
(12, 'view_mlist', 1),
(11, 'view_stats', 1),
(12, 'view_stats', 1),
(11, 'who_view', 1),
(12, 'who_view', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `smf_ikillpermission_profiles`
--

CREATE TABLE IF NOT EXISTS `smf_ikillpermission_profiles` (
  `id_profile` smallint(5) NOT NULL AUTO_INCREMENT,
  `profile_name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id_profile`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `smf_ikillpermission_profiles`
--

INSERT INTO `smf_ikillpermission_profiles` (`id_profile`, `profile_name`) VALUES
(1, 'default'),
(2, 'no_polls'),
(3, 'reply_only'),
(4, 'read_only');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `smf_ikillpersonal_messages`
--

CREATE TABLE IF NOT EXISTS `smf_ikillpersonal_messages` (
  `id_pm` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_pm_head` int(10) unsigned NOT NULL DEFAULT '0',
  `id_member_from` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `deleted_by_sender` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `from_name` varchar(255) NOT NULL DEFAULT '',
  `msgtime` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  PRIMARY KEY (`id_pm`),
  KEY `id_member` (`id_member_from`,`deleted_by_sender`),
  KEY `msgtime` (`msgtime`),
  KEY `id_pm_head` (`id_pm_head`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `smf_ikillpersonal_messages`
--

INSERT INTO `smf_ikillpersonal_messages` (`id_pm`, `id_pm_head`, `id_member_from`, `deleted_by_sender`, `from_name`, `msgtime`, `subject`, `body`) VALUES
(1, 1, 2, 0, 'Alex', 1376930833, 'Borrador de normas', '[b][center][size=22pt][b][u]NORMAS DEL FORO[/u][/b][/size][/center]<br /><br />[size=12pt][b]1. COMPORTAMIENTO Y ACTITUD[/b][/size]<br />[list][li][b]1.1. Foro[/b] El foro y chat de NexusPlayers es el núcleo central de la web, y allí se desarrollarán todas las actividades.<br />[list][li][b]1.2. Respeto.[/b] Los usuarios se comprometen al entrar en la comunidad a escribir y expresar sus opiniones desde el respeto. Está prohibido insultar, amenazar, provocar, enzarzarse en discusiones perjudiciales y, en definitiva, faltar al respeto a otros usuarios en el foro y menos sin motivos.[/li]<br />[li][b]1.3. Denunciar.[/b] Todos los usuarios tienen derecho a denunciar todos los hechos que se consideren incorrectos acaecidos en el foro. Para denunciarlo, basta con reportar el mensaje tal y como se indica en el apartado 2.4. de las normas.[/li]<br />[li][b]1.4. Multicuenta.[/b] Está terminantemente prohibido que una persona física use, cree o dé permiso a crear más de una cuenta de usuario para sí mismo. Igualmente está prohibido que una misma cuenta de usuario esté usada por más de una persona. En caso de que más de un usuario se conecte o se registre desde la misma dirección IP que otro usuario ya registrado, éste último deberá comunicarlo al administrador lo antes posible.[/li]<br />[li][b]1.5. Decisiones.[/b] La administración y moderación de NexusPlayers se reserva el derecho a tener opinión propia para interpretar los sucesos acontecidos del foro para evitar de esta forma posibles vacíos legales.[/li][/list]<br /><br /><br />[size=12pt][b]2. CONTENIDO Y UBICACIÓN DE LOS MENSAJES[/b][/size]<br />[list][li][b]2.1. Temas prohibidos.[/b] Está totalmente prohibido escribir en el foro mensajes con contenido racista, xenófobo, violento, o que haga apología de conductas antiéticas en general. Asimismo, están terminantemente prohibidas las conductas que atenten contra la legislación española vigente, inclusive la publicación de datos privados o personales sin consentimiento y la publicación de imágenes con contenido pornográfico o referente al sexo (por ejemplo, queda prohibido desde publicar mensajes privados en el foro, hasta publicar imágenes discretas o personales de alguien sin su consentimiento).[/li]<br />[li][b]2.2. Lenguaje.[/b] El usuario debe escribir su mensaje en el subforo correspondiente en lengua castellana (salvo que se cree un hilo específico para hablar en otra lengua, o desee comunicarse con miembros extranjeros). No se debe abusar de las mayúsculas y se debe respetar en la mayor medida de lo posible la ortografía del idioma. Se ruega intentar evitar a toda costa todo tipo de errores ortográficos, incluyendo el lenguaje &quot;SMS&quot;.[/li]<br />[li][b]2.3. Prácticas ilegales.[/b] No se permite responder a un tema con más de 120 días sin respuesta salvo que sea para aportar o para intentar resolver algo que no haya sido solucionado. Tampoco se permite hacer publicidad o anunciar cualquier enlace de otras páginas webs con fines publicitarios o autopromocionales (por ejemplo, enlaces a sitios de publicidad o con los que el usuario obtenga beneficios sin antes haber solicitado una autorización a la administración). Asímismo, se prohibe que un usuario escriba múltiples posts con muy escaso contenido (por ejemplo, escribir un emoticono como respuesta a un hilo, o cualquier frase fuera de contexto).[/li]<br />[li][b]2.4. Reportar al moderador.[/b] Si un usuario cree que un mensaje del foro debe ser denunciado, eliminado o modificado, o cree que un hilo (propio o ajeno) debe ser cerrado por un motivo, deberá comunicarlo usando la opción &quot;Reportar al moderador&quot; en la parte inferior derecha del mismo. No se permite abusar de este elemento de manera injustificada o por males menores de manera reiterada.[/li][/list]<br /><br /><br />[size=12pt][b]3. NICKS, AVATARES Y FIRMAS[/b][/size]<br />[list][li][b]3.1. Respeto de las normas.[/b] El nick (nombre de usuario), avatar (imagen que identifica al usuario, debajo de su nombre) y firma (texto o imágenes que se incluye al final de cada mensaje del usuario) deben respetar todas las normas expresadas con anterioridad.[/li]<br />[li][b]3.2. Cambios.[/b] Los usuarios que deseen cambiar su avatar, firma y nick podrán hacerlo en su perfil en cualquier momento. Los cambios de nick solo afectan a la visibilidad en el foro, manteniéndose así el mismo nick de cuenta principal siempre para iniciar sesión en el foro.[/li]<br />[li][b]3.3. Tamaño.[/b] El tamaño máximo para los avatares es de [color=red](inserte aquí medida en píxeles)[/color]. Las firmas pueden contener texto y/o imágenes, y no deben de exceder el tamaño de [color=red](inserte aquí medida en píxeles)[/color].[/list]'),
(2, 2, 2, 0, 'Alex', 1377168135, 'dfgffds', 'sdfsdf'),
(3, 3, 2, 0, 'Alex', 1377168465, 'test', 'sdfsdfsd');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `smf_ikillpm_recipients`
--

CREATE TABLE IF NOT EXISTS `smf_ikillpm_recipients` (
  `id_pm` int(10) unsigned NOT NULL DEFAULT '0',
  `id_member` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `labels` varchar(60) NOT NULL DEFAULT '-1',
  `bcc` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `is_read` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `is_new` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_pm`,`id_member`),
  UNIQUE KEY `id_member` (`id_member`,`deleted`,`id_pm`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `smf_ikillpm_recipients`
--

INSERT INTO `smf_ikillpm_recipients` (`id_pm`, `id_member`, `labels`, `bcc`, `is_read`, `is_new`, `deleted`) VALUES
(1, 1, '-1', 0, 1, 0, 0),
(2, 1, '-1', 0, 1, 0, 1),
(3, 1, '-1', 0, 1, 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `smf_ikillpm_rules`
--

CREATE TABLE IF NOT EXISTS `smf_ikillpm_rules` (
  `id_rule` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_member` int(10) unsigned NOT NULL DEFAULT '0',
  `rule_name` varchar(60) NOT NULL,
  `criteria` text NOT NULL,
  `actions` text NOT NULL,
  `delete_pm` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `is_or` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_rule`),
  KEY `id_member` (`id_member`),
  KEY `delete_pm` (`delete_pm`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `smf_ikillpolls`
--

CREATE TABLE IF NOT EXISTS `smf_ikillpolls` (
  `id_poll` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `question` varchar(255) NOT NULL DEFAULT '',
  `voting_locked` tinyint(1) NOT NULL DEFAULT '0',
  `max_votes` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `expire_time` int(10) unsigned NOT NULL DEFAULT '0',
  `hide_results` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `change_vote` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `guest_vote` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `num_guest_voters` int(10) unsigned NOT NULL DEFAULT '0',
  `reset_poll` int(10) unsigned NOT NULL DEFAULT '0',
  `id_member` mediumint(8) NOT NULL DEFAULT '0',
  `poster_name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id_poll`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `smf_ikillpoll_choices`
--

CREATE TABLE IF NOT EXISTS `smf_ikillpoll_choices` (
  `id_poll` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_choice` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `label` varchar(255) NOT NULL DEFAULT '',
  `votes` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_poll`,`id_choice`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `smf_ikillscheduled_tasks`
--

CREATE TABLE IF NOT EXISTS `smf_ikillscheduled_tasks` (
  `id_task` smallint(5) NOT NULL AUTO_INCREMENT,
  `next_time` int(10) NOT NULL DEFAULT '0',
  `time_offset` int(10) NOT NULL DEFAULT '0',
  `time_regularity` smallint(5) NOT NULL DEFAULT '0',
  `time_unit` varchar(1) NOT NULL DEFAULT 'h',
  `disabled` tinyint(3) NOT NULL DEFAULT '0',
  `task` varchar(24) NOT NULL DEFAULT '',
  PRIMARY KEY (`id_task`),
  UNIQUE KEY `task` (`task`),
  KEY `next_time` (`next_time`),
  KEY `disabled` (`disabled`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Volcado de datos para la tabla `smf_ikillscheduled_tasks`
--

INSERT INTO `smf_ikillscheduled_tasks` (`id_task`, `next_time`, `time_offset`, `time_regularity`, `time_unit`, `disabled`, `task`) VALUES
(1, 1377385200, 0, 2, 'h', 0, 'approval_notification'),
(2, 1377388800, 0, 7, 'd', 0, 'auto_optimize'),
(3, 1377385260, 60, 1, 'd', 0, 'daily_maintenance'),
(5, 1377385200, 0, 1, 'd', 0, 'daily_digest'),
(6, 1377388800, 0, 1, 'w', 0, 'weekly_digest'),
(7, 1377463560, 164804, 1, 'd', 0, 'fetchSMfiles'),
(8, 0, 0, 1, 'd', 1, 'birthdayemails'),
(9, 1377388800, 0, 1, 'w', 0, 'weekly_maintenance'),
(10, 0, 120, 1, 'd', 1, 'paid_subscriptions');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `smf_ikillsessions`
--

CREATE TABLE IF NOT EXISTS `smf_ikillsessions` (
  `session_id` char(32) NOT NULL,
  `last_update` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`session_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `smf_ikillsessions`
--

INSERT INTO `smf_ikillsessions` (`session_id`, `last_update`, `data`) VALUES
('bb6f0efb125bcbc79325a7e55983c80d', 1377383469, 'session_value|s:32:"5ebc63143f3124620b7c2494afc2d803";session_var|s:10:"a26c7fa55e";robot_check|i:1377383466;mc|a:7:{s:4:"time";i:1377383466;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377383466;s:9:"id_member";i:0;s:2:"ip";s:14:"84.123.207.198";s:3:"ip2";s:14:"84.123.207.198";s:5:"email";s:0:"";}last_topic_id|i:9;log_time|i:1377383467;timeOnlineUpdated|i:1377383467;last_read_topic|i:9;forms|a:0:{}old_url|s:49:"http://nexusplayers.x10host.com/index.php?topic=9";USER_AGENT|s:108:"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/29.0.1547.57 Safari/537.36";'),
('0656e7c2ddb4a273833d45dbb8eaed23', 1377383458, 'session_value|s:32:"ff5c17db73f0141d54ba920db708c485";session_var|s:9:"ebc5d70fd";robot_check|i:1377383456;mc|a:7:{s:4:"time";i:1377383456;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377383456;s:9:"id_member";i:0;s:2:"ip";s:13:"85.86.195.119";s:3:"ip2";s:13:"85.86.195.119";s:5:"email";s:0:"";}last_topic_id|i:9;log_time|i:1377383457;timeOnlineUpdated|i:1377383457;last_read_topic|i:9;forms|a:0:{}old_url|s:49:"http://nexusplayers.x10host.com/index.php?topic=9";USER_AGENT|s:65:"Mozilla/5.0 (Windows NT 6.2; rv:23.0) Gecko/20100101 Firefox/23.0";'),
('b3a542afaf6d7ca7d1f51051bb4949a4', 1377383217, 'session_value|s:32:"bd533233bc2d82fb05d3ab08c30f591d";session_var|s:7:"c945260";robot_check|i:1377383214;mc|a:7:{s:4:"time";i:1377383214;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377383214;s:9:"id_member";i:0;s:2:"ip";s:14:"190.188.54.178";s:3:"ip2";s:14:"190.188.54.178";s:5:"email";s:0:"";}last_topic_id|i:9;log_time|i:1377383214;timeOnlineUpdated|i:1377383214;last_read_topic|i:9;forms|a:0:{}old_url|s:49:"http://nexusplayers.x10host.com/index.php?topic=9";USER_AGENT|s:108:"Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/29.0.1547.57 Safari/537.36";'),
('4935a5dcec958c39e78a643d8fc17ce7', 1377383185, 'session_value|s:32:"758aa494db16cdea0b1ea38b25119989";session_var|s:10:"f0a1f47513";robot_check|i:1377383185;mc|a:7:{s:4:"time";i:1377383185;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377383185;s:9:"id_member";i:0;s:2:"ip";s:13:"87.217.201.96";s:3:"ip2";s:13:"87.217.201.96";s:5:"email";s:0:"";}last_topic_id|i:9;log_time|i:1377383185;timeOnlineUpdated|i:1377383185;last_read_topic|i:9;forms|a:0:{}old_url|s:49:"http://nexusplayers.x10host.com/index.php?topic=9";USER_AGENT|s:108:"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/29.0.1547.57 Safari/537.36";'),
('9f62b3a4530aff1fc59f768e05b12040', 1377383184, 'session_value|s:32:"c2177ab3dc4b81a29a0c5ba13e7a0481";session_var|s:9:"ba739d5a5";robot_check|i:1377383184;mc|a:7:{s:4:"time";i:1377383184;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377383184;s:9:"id_member";i:0;s:2:"ip";s:13:"87.217.201.96";s:3:"ip2";s:13:"87.217.201.96";s:5:"email";s:0:"";}last_topic_id|i:9;log_time|i:1377383184;timeOnlineUpdated|i:1377383184;last_read_topic|i:9;forms|a:0:{}old_url|s:49:"http://nexusplayers.x10host.com/index.php?topic=9";USER_AGENT|s:108:"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/29.0.1547.57 Safari/537.36";'),
('f27aab54f2278af59b4e2f440969b088', 1377383183, 'session_value|s:32:"4298d064bf38007eecbb97febe530d10";session_var|s:7:"bbc8aa5";robot_check|i:1377383183;mc|a:7:{s:4:"time";i:1377383183;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377383183;s:9:"id_member";i:0;s:2:"ip";s:13:"87.217.201.96";s:3:"ip2";s:13:"87.217.201.96";s:5:"email";s:0:"";}last_topic_id|i:9;log_time|i:1377383183;timeOnlineUpdated|i:1377383183;last_read_topic|i:9;forms|a:0:{}old_url|s:49:"http://nexusplayers.x10host.com/index.php?topic=9";USER_AGENT|s:108:"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/29.0.1547.57 Safari/537.36";'),
('5ce8114652a5e6a158c44f4833d98986', 1377378760, 'session_value|s:32:"61976e6595fce63398fb807380a30ac0";session_var|s:11:"bfd97d805ae";robot_check|i:1377378760;mc|a:7:{s:4:"time";i:1377378760;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377378760;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}'),
('bfca4e4cae8960c466e7399b5f107a27', 1377378663, 'session_value|s:32:"10a8bf9a4de8a47f46e08052dbd23cbf";session_var|s:9:"d97513dae";robot_check|i:1377378632;mc|a:7:{s:4:"time";i:1377378632;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377378632;s:9:"id_member";i:0;s:2:"ip";s:14:"188.79.201.157";s:3:"ip2";s:14:"188.79.201.157";s:5:"email";s:0:"";}last_topic_id|i:9;log_time|i:1377378663;timeOnlineUpdated|i:1377378637;last_read_topic|i:9;forms|a:0:{}old_url|s:100:"http://nexusplayers.x10host.com/index.php?PHPSESSID=bfca4e4cae8960c466e7399b5f107a27&action=register";USER_AGENT|s:108:"Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/29.0.1547.57 Safari/537.36";register_vv|a:5:{s:5:"count";i:1;s:6:"errors";i:0;s:8:"did_pass";b:0;s:1:"q";a:0:{}s:4:"code";s:6:"FPCPVW";}'),
('a21586dff66e63cbd4af743991aee215', 1377378486, 'session_value|s:32:"ac1c428df77e418b159a606271a541e8";session_var|s:11:"c634557457a";robot_check|i:1377378486;mc|a:7:{s:4:"time";i:1377378486;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377378486;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}'),
('3d3ed9185022d70fe1aa792013bfb134', 1377378487, 'session_value|s:32:"90c4d2cf395f8dd87f3897359d12f27e";session_var|s:7:"b391bd7";id_msg_last_visit|s:2:"29";mc|a:7:{s:4:"time";i:1377378487;s:2:"id";s:2:"47";s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377378487;s:9:"id_member";s:2:"47";s:2:"ip";s:10:"88.3.184.2";s:3:"ip2";s:10:"88.3.184.2";s:5:"email";s:21:"adrian92539@gmail.com";}log_time|i:1377378487;timeOnlineUpdated|i:1377378487;unread_messages|i:0;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:108:"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/29.0.1547.57 Safari/537.36";'),
('732f7f3108696e88410e192f9622e8c2', 1377378716, 'session_value|s:32:"3c3d68495f309eeb0666ec7dcc7130ce";session_var|s:8:"dd05fc2c";robot_check|i:1377378528;mc|a:7:{s:4:"time";i:1377378417;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377378716;s:9:"id_member";i:0;s:2:"ip";s:12:"96.47.226.21";s:3:"ip2";s:12:"96.47.226.21";s:5:"email";s:0:"";}log_time|i:1377378716;timeOnlineUpdated|i:1377377593;old_url|s:54:"http://nexusplayers.x10host.com/index.php?action=forum";USER_AGENT|s:65:"Mozilla/5.0 (Windows NT 6.1; rv:17.0) Gecko/20100101 Firefox/17.0";failed_login|i:5;last_topic_id|i:6;last_read_topic|i:6;forms|a:0:{}register_vv|a:5:{s:5:"count";i:2;s:6:"errors";i:0;s:8:"did_pass";b:0;s:1:"q";a:0:{}s:4:"code";s:6:"KMRDRV";}registration_agreed|b:1;just_registered|i:1;'),
('682d8913db82d66bd3af7d69a529a3ea', 1377378182, 'session_value|s:32:"953c6050e5347c5d710f0ebb33fd71fe";session_var|s:7:"bdcece1";robot_check|i:1377378182;mc|a:7:{s:4:"time";i:1377378182;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377378182;s:9:"id_member";i:0;s:2:"ip";s:12:"200.86.48.69";s:3:"ip2";s:12:"200.86.48.69";s:5:"email";s:0:"";}log_time|i:1377378182;timeOnlineUpdated|i:1377378182;register_vv|a:5:{s:5:"count";i:1;s:6:"errors";i:0;s:8:"did_pass";b:0;s:1:"q";a:0:{}s:4:"code";s:6:"ADBKPG";}old_url|s:57:"http://nexusplayers.x10host.com/index.php?action=register";USER_AGENT|s:133:"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/29.0.1547.57 Safari/537.36 OPR/16.0.1196.55 (Edition Next)";'),
('b237d06dedccbfcf914e76a453221b4c', 1377378472, 'session_value|s:32:"dde1992dafaec7e29106cc06911f022f";session_var|s:8:"ad62b960";robot_check|i:1377378316;mc|a:7:{s:4:"time";i:1377378015;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377378015;s:9:"id_member";i:0;s:2:"ip";s:13:"80.39.194.205";s:3:"ip2";s:13:"80.39.194.205";s:5:"email";s:0:"";}log_time|i:1377378074;timeOnlineUpdated|i:1377378015;old_url|s:57:"http://nexusplayers.x10host.com/index.php?action=register";USER_AGENT|s:65:"Mozilla/5.0 (Windows NT 6.1; rv:23.0) Gecko/20100101 Firefox/23.0";register_vv|a:5:{s:5:"count";i:2;s:6:"errors";i:0;s:8:"did_pass";b:0;s:1:"q";a:0:{}s:4:"code";s:6:"MCDMGY";}registration_agreed|b:1;'),
('fd3fdebd2c308e9830d78cec1895cb4f', 1377377996, 'session_value|s:32:"4ef8fee15fb96055d5b8fa0fe6b66cf9";session_var|s:9:"c3e05b8b9";id_msg_last_visit|s:2:"29";mc|a:7:{s:4:"time";i:1377377809;s:2:"id";s:2:"47";s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377377809;s:9:"id_member";s:2:"47";s:2:"ip";s:10:"88.3.184.2";s:3:"ip2";s:10:"88.3.184.2";s:5:"email";s:21:"adrian92539@gmail.com";}log_time|i:1377377991;timeOnlineUpdated|i:1377377947;old_url|s:56:"http://nexusplayers.x10host.com/index.php?action=profile";USER_AGENT|s:108:"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/29.0.1547.57 Safari/537.36";unread_messages|i:0;'),
('e9ffb6863550d252bcfdb662a207b8bc', 1377377790, 'session_value|s:32:"8d9c2edc7deefb568072b5f3aa5738af";session_var|s:10:"bf69b01365";robot_check|i:1377377790;mc|a:7:{s:4:"time";i:1377377790;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377377790;s:9:"id_member";i:0;s:2:"ip";s:13:"74.80.224.173";s:3:"ip2";s:13:"74.80.224.173";s:5:"email";s:0:"";}log_time|i:1377377790;timeOnlineUpdated|i:1377377790;old_url|s:32:"http://nexusplayers.x10host.com/";USER_AGENT|s:105:"Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.0.16) Gecko/2009121601 Ubuntu/9.04 (jaunty) Firefox/3.0.16";'),
('9f988f8e1edef918adc1e9079ae16f87', 1377379200, 'session_value|s:32:"a7acb9248af0652c3f1ab9bb527d81e8";session_var|s:7:"f38b065";robot_check|i:1377379200;mc|a:7:{s:4:"time";i:1377377360;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376523;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}log_time|i:1377379200;timeOnlineUpdated|i:1377376363;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:63:"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0";last_topic_id|i:19;last_read_topic|i:19;forms|a:0:{}register_vv|a:5:{s:5:"count";i:1;s:6:"errors";i:0;s:8:"did_pass";b:0;s:1:"q";a:0:{}s:4:"code";s:6:"MYRFHE";}registration_agreed|b:1;just_registered|i:1;failed_login|i:4;'),
('b1befb511c9b673f51381d2db4f7f7ca', 1377377238, 'session_value|s:32:"48bdd9e0b78501dbfabc868b86eb7861";session_var|s:10:"f05c41421a";robot_check|i:1377377238;mc|a:7:{s:4:"time";i:1377377238;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377377238;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.163.31";s:3:"ip2";s:12:"37.15.163.31";s:5:"email";s:0:"";}log_time|i:1377377238;timeOnlineUpdated|i:1377377238;refferedby|i:47;old_url|s:100:"http://nexusplayers.x10host.com/index.php?PHPSESSID=b1befb511c9b673f51381d2db4f7f7ca;action=register";USER_AGENT|s:108:"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/29.0.1547.57 Safari/537.36";register_vv|a:5:{s:5:"count";i:1;s:6:"errors";i:0;s:8:"did_pass";b:0;s:1:"q";a:0:{}s:4:"code";s:6:"WTRNVK";}'),
('2c1d8cb9214d5a316c0fbc7a93eeae44', 1377377374, 'session_value|s:32:"f735361a329a1f33204b722eaac2552f";session_var|s:8:"c2d201a4";robot_check|i:1377377148;mc|a:7:{s:4:"time";i:1377377148;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377377148;s:9:"id_member";i:0;s:2:"ip";s:12:"200.86.48.69";s:3:"ip2";s:12:"200.86.48.69";s:5:"email";s:0:"";}log_time|i:1377377368;timeOnlineUpdated|i:1377377149;refferedby|i:47;old_url|s:57:"http://nexusplayers.x10host.com/index.php?action=register";USER_AGENT|s:133:"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/29.0.1547.57 Safari/537.36 OPR/16.0.1196.55 (Edition Next)";register_vv|a:5:{s:5:"count";i:4;s:6:"errors";i:0;s:8:"did_pass";b:0;s:1:"q";a:0:{}s:4:"code";s:6:"FMGEHB";}registration_agreed|b:1;'),
('9356573b482c1878fa7ba0df56f2d397', 1377377239, 'session_value|s:32:"ec1741db7673b30e56db38d7c99e6531";session_var|s:11:"e4290d005f7";robot_check|i:1377377130;mc|a:7:{s:4:"time";i:1377377130;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377377130;s:9:"id_member";i:0;s:2:"ip";s:15:"190.239.163.105";s:3:"ip2";s:15:"190.239.163.105";s:5:"email";s:0:"";}log_time|i:1377377239;timeOnlineUpdated|i:1377377130;refferedby|i:47;old_url|s:55:"http://nexusplayers.x10host.com/index.php?action=login2";USER_AGENT|s:101:"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.94 Safari/537.36";register_vv|a:5:{s:5:"count";i:3;s:6:"errors";i:0;s:8:"did_pass";b:1;s:1:"q";a:0:{}s:4:"code";s:6:"WFXBAV";}registration_agreed|b:1;just_registered|i:1;'),
('556cd94db30acb68c0a724384a805b9f', 1377376892, 'session_value|s:32:"58e1cfc53213a2de69b8c728d892a5e3";session_var|s:11:"f281f96b316";robot_check|i:1377376892;mc|a:7:{s:4:"time";i:1377376892;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376892;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}log_time|i:1377376892;timeOnlineUpdated|i:1377376892;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:63:"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0";'),
('80a6f5c6a3fee10a82973d0235966a46', 1377377099, 'session_value|s:32:"332f655eb6df6abe3b7749f8157786a0";session_var|s:11:"eadbed5959d";robot_check|i:1377377099;mc|a:7:{s:4:"time";i:1377377099;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377377099;s:9:"id_member";i:0;s:2:"ip";s:13:"74.80.224.173";s:3:"ip2";s:13:"74.80.224.173";s:5:"email";s:0:"";}log_time|i:1377377099;timeOnlineUpdated|i:1377377099;old_url|s:32:"http://nexusplayers.x10host.com/";USER_AGENT|s:105:"Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.0.16) Gecko/2009121601 Ubuntu/9.04 (jaunty) Firefox/3.0.16";'),
('cbdb6d081c1a76df900d51f20d11e13a', 1377376891, 'session_value|s:32:"80a43b15984e503547546f9792493e33";session_var|s:7:"e91477b";robot_check|i:1377376891;mc|a:7:{s:4:"time";i:1377376891;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376891;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}log_time|i:1377376891;timeOnlineUpdated|i:1377376891;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:63:"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0";'),
('14d41928540f5cb00883f80b205e9bb1', 1377376890, 'session_value|s:32:"3232e29e7c018347358c7815508ac31f";session_var|s:11:"a90dfc7a4dc";robot_check|i:1377376890;mc|a:7:{s:4:"time";i:1377376890;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376890;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}log_time|i:1377376890;timeOnlineUpdated|i:1377376890;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:63:"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0";'),
('c3191a7ade9fe78147676dff2a189101', 1377376890, 'session_value|s:32:"b57c39ce0d98dd5b432b69c0bc2d79e4";session_var|s:7:"fa35656";robot_check|i:1377376890;mc|a:7:{s:4:"time";i:1377376890;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376890;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}log_time|i:1377376890;timeOnlineUpdated|i:1377376890;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:63:"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0";'),
('bf55e75a84f1f511ff6c5fecd93db524', 1377376890, 'session_value|s:32:"b63c4521d5fc3b949559ce675d094f77";session_var|s:9:"f32f62294";robot_check|i:1377376890;mc|a:7:{s:4:"time";i:1377376890;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376890;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}log_time|i:1377376890;timeOnlineUpdated|i:1377376890;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:63:"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0";'),
('40d2dbe455b2edf3d7d8a4ccca367b8f', 1377376889, 'session_value|s:32:"1adb07a183ddea39d07d2cf270e95428";session_var|s:12:"fe1965cb760c";robot_check|i:1377376889;mc|a:7:{s:4:"time";i:1377376889;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376889;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}log_time|i:1377376889;timeOnlineUpdated|i:1377376889;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:63:"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0";'),
('d877a62c223ea19246b0096bfe2df38d', 1377376889, 'session_value|s:32:"3609aad1e9c6629d0416f5c328528413";session_var|s:11:"f73a2e79208";robot_check|i:1377376889;mc|a:7:{s:4:"time";i:1377376889;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376889;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}log_time|i:1377376889;timeOnlineUpdated|i:1377376889;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:63:"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0";'),
('f53a5fa58af10b3e270141b7f2d1b96a', 1377376888, 'session_value|s:32:"e481280b98c700b2392d27542d566ecc";session_var|s:11:"d6707736966";robot_check|i:1377376887;mc|a:7:{s:4:"time";i:1377376887;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376887;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}log_time|i:1377376888;timeOnlineUpdated|i:1377376888;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:63:"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0";'),
('5c4c1998799a43fd26af323372d94b17', 1377376887, 'session_value|s:32:"b4709fd53ecf7f79d2acac8a99eec888";session_var|s:9:"b35c651c6";robot_check|i:1377376887;mc|a:7:{s:4:"time";i:1377376887;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376887;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}log_time|i:1377376887;timeOnlineUpdated|i:1377376887;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:63:"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0";'),
('1a44fb8a1c52cf56757d242e54dfbd93', 1377376887, 'session_value|s:32:"bd693e9e77b03b85ee6c733d0f45dced";session_var|s:11:"ac8e9756d90";robot_check|i:1377376887;mc|a:7:{s:4:"time";i:1377376887;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376887;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}log_time|i:1377376887;timeOnlineUpdated|i:1377376887;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:63:"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0";'),
('90caff71da6efcea6baf5c2defd80116', 1377376887, 'session_value|s:32:"1196b81ca41b21604099553d555cbfb6";session_var|s:9:"d74db1984";robot_check|i:1377376886;mc|a:7:{s:4:"time";i:1377376886;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376886;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}log_time|i:1377376887;timeOnlineUpdated|i:1377376887;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:63:"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0";'),
('e2297bb262ded8aeaff9797f54075f9b', 1377376886, 'session_value|s:32:"2dde5041d66b60db1d97f90e62168f74";session_var|s:10:"db4ec00fb3";robot_check|i:1377376886;mc|a:7:{s:4:"time";i:1377376886;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376886;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}log_time|i:1377376886;timeOnlineUpdated|i:1377376886;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:63:"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0";'),
('099712a3b49152ecc451dcd14f39619a', 1377376886, 'session_value|s:32:"c00b484909cf58ec1309f4d7f8e63859";session_var|s:7:"e3b13a2";robot_check|i:1377376886;mc|a:7:{s:4:"time";i:1377376886;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376886;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}log_time|i:1377376886;timeOnlineUpdated|i:1377376886;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:63:"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0";'),
('544a5ab24187125e2e6884d33361c59c', 1377376886, 'session_value|s:32:"d604bebbb94802f870b4f9b887e32a71";session_var|s:9:"fc00a33ae";robot_check|i:1377376886;mc|a:7:{s:4:"time";i:1377376886;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376886;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}log_time|i:1377376886;timeOnlineUpdated|i:1377376886;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:63:"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0";'),
('fa2769eb314870b0a1488e16a5e7c546', 1377376885, 'session_value|s:32:"11a831998ace783fa1118955a890b692";session_var|s:12:"ce5db9df777d";robot_check|i:1377376885;mc|a:7:{s:4:"time";i:1377376885;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376885;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}log_time|i:1377376885;timeOnlineUpdated|i:1377376885;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:63:"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0";'),
('5f4d53da17a40b13d92dac7783fad8cf', 1377376885, 'session_value|s:32:"aa15cf3f2b6eb6fd023c9a8fd300a73f";session_var|s:11:"b0c74b3b005";robot_check|i:1377376885;mc|a:7:{s:4:"time";i:1377376885;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376885;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}log_time|i:1377376885;timeOnlineUpdated|i:1377376885;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:63:"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0";'),
('7ff7aa3e28b6758e4945042cdbe3ec21', 1377376885, 'session_value|s:32:"fa6871bcf53be623cb054918859a183a";session_var|s:8:"c3e96e3f";robot_check|i:1377376884;mc|a:7:{s:4:"time";i:1377376884;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376884;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}log_time|i:1377376884;timeOnlineUpdated|i:1377376884;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:63:"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0";'),
('725999a7867ef5935eac3ef6186ecc44', 1377376885, 'session_value|s:32:"2ef029214a3e69af13eb5b2f7ed8a5e1";session_var|s:9:"e42df118d";robot_check|i:1377376885;mc|a:7:{s:4:"time";i:1377376885;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376885;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}log_time|i:1377376885;timeOnlineUpdated|i:1377376885;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:63:"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0";'),
('1ccd62e5e3e59edbcbd32daa597b1bc7', 1377376884, 'session_value|s:32:"7bd4de2750c66465de893581fec97c65";session_var|s:12:"d86ef072c9df";robot_check|i:1377376884;mc|a:7:{s:4:"time";i:1377376884;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376884;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}log_time|i:1377376884;timeOnlineUpdated|i:1377376884;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:63:"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0";'),
('5af71788604de620989a3a050423f45b', 1377376884, 'session_value|s:32:"2155fc78a6af291edae75ba06556fbc8";session_var|s:9:"c1e76b07f";robot_check|i:1377376884;mc|a:7:{s:4:"time";i:1377376884;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376884;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}log_time|i:1377376884;timeOnlineUpdated|i:1377376884;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:63:"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0";'),
('f381aee2d24894cbb3f0f9e3e44ef44b', 1377376884, 'session_value|s:32:"6361886f830e8ab83687ee5c050e8115";session_var|s:9:"ad603a54a";robot_check|i:1377376884;mc|a:7:{s:4:"time";i:1377376884;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376884;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}log_time|i:1377376884;timeOnlineUpdated|i:1377376884;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:63:"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0";'),
('aff1037a9a74963412bd84b8e46f3899', 1377376881, 'session_value|s:32:"0c822f4e15d66fac41d55f62734dfec4";session_var|s:12:"f6779dfd325b";robot_check|i:1377376880;mc|a:7:{s:4:"time";i:1377376880;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376880;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}log_time|i:1377376880;timeOnlineUpdated|i:1377376880;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:63:"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0";'),
('1f1223888a2477598dc257c4c5ef0f09', 1377376879, 'session_value|s:32:"6e001a8103b9777397372ea57cd0a27f";session_var|s:10:"d75752715b";robot_check|i:1377376879;mc|a:7:{s:4:"time";i:1377376879;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376879;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}log_time|i:1377376879;timeOnlineUpdated|i:1377376879;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:63:"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0";'),
('8dbf516f1c8dd19a290155d5f3e3ed50', 1377376877, 'session_value|s:32:"8a7a8bdffa0af96f5483955e9fdfa03c";session_var|s:7:"b7e3741";robot_check|i:1377376877;mc|a:7:{s:4:"time";i:1377376877;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376877;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}log_time|i:1377376877;timeOnlineUpdated|i:1377376877;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:63:"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0";'),
('31c4d7f5fb90c9e3dbc5bd1a8457cfca', 1377376879, 'session_value|s:32:"d813689c06f91ec3fc05667fe866533e";session_var|s:10:"f6d2f7ae96";robot_check|i:1377376879;mc|a:7:{s:4:"time";i:1377376879;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376879;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}log_time|i:1377376879;timeOnlineUpdated|i:1377376879;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:63:"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0";'),
('3cc20243da1e99e8a982f4dc865ff695', 1377376877, 'session_value|s:32:"00d91381c68468b267d4c5d23d3b1d6b";session_var|s:9:"dc3e95804";robot_check|i:1377376877;mc|a:7:{s:4:"time";i:1377376877;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376877;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}log_time|i:1377376877;timeOnlineUpdated|i:1377376877;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:63:"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0";'),
('4188dd7b400399345181686df1f2c398', 1377376876, 'session_value|s:32:"37f65736103e9b0c4a0a39757b36cc44";session_var|s:10:"af30280f23";robot_check|i:1377376876;mc|a:7:{s:4:"time";i:1377376876;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376876;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}log_time|i:1377376876;timeOnlineUpdated|i:1377376876;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:63:"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0";'),
('4803d3e2b9c258f0b1659bb027766c5c', 1377376876, 'session_value|s:32:"bfb8f561a65de78506924ac8e9846dea";session_var|s:12:"e7f895344709";robot_check|i:1377376876;mc|a:7:{s:4:"time";i:1377376876;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376876;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}log_time|i:1377376876;timeOnlineUpdated|i:1377376876;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:63:"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0";'),
('a3eee13f6eeb3fdffb9a93d68112e147', 1377376873, 'session_value|s:32:"4f175ea64bdf9bd1bbe53229d2bbbf73";session_var|s:10:"f2b6b58b49";robot_check|i:1377376873;mc|a:7:{s:4:"time";i:1377376873;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376873;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}log_time|i:1377376873;timeOnlineUpdated|i:1377376873;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:63:"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0";'),
('428abd740c78bb5cb86647478b0fa4a1', 1377376874, 'session_value|s:32:"2f7462f4e779457968034a9076a01d79";session_var|s:12:"bb0d7f9eb941";robot_check|i:1377376874;mc|a:7:{s:4:"time";i:1377376874;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376874;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}log_time|i:1377376874;timeOnlineUpdated|i:1377376874;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:63:"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0";'),
('63065a74947deef777458ad4a8522a9d', 1377376872, 'session_value|s:32:"a41788cd4e25a476b64e1bd100b0641d";session_var|s:8:"be1d9d6f";robot_check|i:1377376872;mc|a:7:{s:4:"time";i:1377376872;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376872;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}log_time|i:1377376872;timeOnlineUpdated|i:1377376872;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:63:"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0";'),
('1a6e0c200d2e2c412d6464db377e9281', 1377376872, 'session_value|s:32:"54ee82de793c47041b606202256dadd7";session_var|s:11:"ec36b71d001";robot_check|i:1377376872;mc|a:7:{s:4:"time";i:1377376872;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376872;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}log_time|i:1377376872;timeOnlineUpdated|i:1377376872;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:63:"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0";'),
('de69194252cd67a6feb27a968541579b', 1377376871, 'session_value|s:32:"bc9ec738ea7e252cf18eac0e3db51154";session_var|s:7:"c110457";robot_check|i:1377376871;mc|a:7:{s:4:"time";i:1377376871;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376871;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}log_time|i:1377376871;timeOnlineUpdated|i:1377376871;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:63:"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0";'),
('3575b3e5f8f61ab3975dae783eb7de85', 1377376871, 'session_value|s:32:"31a812331ed2eb529a85bb5cfb8d30e1";session_var|s:8:"f3f274dd";robot_check|i:1377376871;mc|a:7:{s:4:"time";i:1377376871;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376871;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}log_time|i:1377376871;timeOnlineUpdated|i:1377376871;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:63:"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0";'),
('75a2b97196a9c7643d117869bd2d9803', 1377376871, 'session_value|s:32:"069690158817b5344b11aa9b3375dbcf";session_var|s:7:"cf85d1a";robot_check|i:1377376871;mc|a:7:{s:4:"time";i:1377376871;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376871;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}log_time|i:1377376871;timeOnlineUpdated|i:1377376871;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:63:"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0";'),
('d92d3c835d7b5e958aeb94c2e4e0060c', 1377376870, 'session_value|s:32:"dfc9956ad49ea39342795aa238176b7f";session_var|s:11:"cc285cd326a";robot_check|i:1377376870;mc|a:7:{s:4:"time";i:1377376870;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376870;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}log_time|i:1377376870;timeOnlineUpdated|i:1377376870;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:63:"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0";'),
('25ae065bc2c10b59cc6ed1401fa26e37', 1377376870, 'session_value|s:32:"5c127bbf2880305b0889a6343ee72da0";session_var|s:11:"ff3077e6e64";robot_check|i:1377376870;mc|a:7:{s:4:"time";i:1377376870;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376870;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}log_time|i:1377376870;timeOnlineUpdated|i:1377376870;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:63:"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0";'),
('ebd7556864c3de3bb643813ec9bf6aba', 1377376869, 'session_value|s:32:"990eb39abdf594ddaaa4a192fa75e9dc";session_var|s:7:"a03ab72";robot_check|i:1377376869;mc|a:7:{s:4:"time";i:1377376869;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376869;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}log_time|i:1377376869;timeOnlineUpdated|i:1377376869;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:63:"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0";'),
('5d1a60dad532820c2b5b245bd144384e', 1377376869, 'session_value|s:32:"7709394e0a77b2bcd00e5d49bd147149";session_var|s:9:"fcf73624b";robot_check|i:1377376869;mc|a:7:{s:4:"time";i:1377376869;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376869;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}log_time|i:1377376869;timeOnlineUpdated|i:1377376869;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:63:"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0";'),
('17e5a8252e09dbf1764d1e0de0f59a05', 1377376869, 'session_value|s:32:"d95d8ddf11bb99440085accd7113984e";session_var|s:8:"f775dee7";robot_check|i:1377376869;mc|a:7:{s:4:"time";i:1377376869;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376869;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}log_time|i:1377376869;timeOnlineUpdated|i:1377376869;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:63:"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0";'),
('9d08a0ec3971336d7871168bc2d74d03', 1377376867, 'session_value|s:32:"a173ff531eeeecda38e5ccf5d47a562d";session_var|s:11:"b9c167f4722";robot_check|i:1377376867;mc|a:7:{s:4:"time";i:1377376867;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376867;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}log_time|i:1377376867;timeOnlineUpdated|i:1377376867;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:63:"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0";'),
('23cae671ce9c209f06f9e0005574790e', 1377376867, 'session_value|s:32:"d59015c8e79241cd8478fdf22dfb26da";session_var|s:8:"c4139506";robot_check|i:1377376867;mc|a:7:{s:4:"time";i:1377376867;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376867;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}log_time|i:1377376867;timeOnlineUpdated|i:1377376867;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:63:"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0";'),
('ddc61f062ad80896a88cc988d3709565', 1377376866, 'session_value|s:32:"0ae062cb8a212efb4c278dbd26cb00bf";session_var|s:11:"c63e20a8ae8";robot_check|i:1377376866;mc|a:7:{s:4:"time";i:1377376866;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376866;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}log_time|i:1377376866;timeOnlineUpdated|i:1377376866;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:63:"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0";'),
('5d2bac3d6f9cbc0856214d87a9f12c3f', 1377376866, 'session_value|s:32:"44f1ded789a50da745910bb0a6858d1e";session_var|s:12:"c923457d45e4";robot_check|i:1377376866;mc|a:7:{s:4:"time";i:1377376866;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376866;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}log_time|i:1377376866;timeOnlineUpdated|i:1377376866;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:63:"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0";'),
('0dc2a1d8f76ebea532ea07b269ca2077', 1377376866, 'session_value|s:32:"508d0da2569f80f04a643afc03e0285f";session_var|s:8:"c178ca0b";robot_check|i:1377376866;mc|a:7:{s:4:"time";i:1377376866;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376866;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}log_time|i:1377376866;timeOnlineUpdated|i:1377376866;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:63:"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0";'),
('0563a166e8f4e566d88c027e1a62c1b1', 1377376852, 'session_value|s:32:"6240ce75be7f380917e47b16947196a3";session_var|s:9:"f5b1280c7";robot_check|i:1377376852;mc|a:7:{s:4:"time";i:1377376852;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376852;s:9:"id_member";i:0;s:2:"ip";s:13:"74.80.224.173";s:3:"ip2";s:13:"74.80.224.173";s:5:"email";s:0:"";}log_time|i:1377376852;timeOnlineUpdated|i:1377376852;old_url|s:32:"http://nexusplayers.x10host.com/";USER_AGENT|s:105:"Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.0.16) Gecko/2009121601 Ubuntu/9.04 (jaunty) Firefox/3.0.16";'),
('2c2352ff5c0494cc877ae03e33b52e21', 1377376846, 'session_value|s:32:"870040893d6ea047fe646bd5988bb106";session_var|s:10:"bc38f98813";robot_check|i:1377376846;mc|a:7:{s:4:"time";i:1377376846;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376846;s:9:"id_member";i:0;s:2:"ip";s:13:"74.80.224.173";s:3:"ip2";s:13:"74.80.224.173";s:5:"email";s:0:"";}log_time|i:1377376846;timeOnlineUpdated|i:1377376846;old_url|s:32:"http://nexusplayers.x10host.com/";USER_AGENT|s:105:"Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.0.16) Gecko/2009121601 Ubuntu/9.04 (jaunty) Firefox/3.0.16";'),
('e19d334db03c7b35080d34f5788616b6', 1377376826, 'session_value|s:32:"9070cabefa0d639b6fd4f0d07c0ccd90";session_var|s:9:"b6cfa8f22";robot_check|i:1377376826;mc|a:7:{s:4:"time";i:1377376826;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376826;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}log_time|i:1377376826;timeOnlineUpdated|i:1377376826;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:63:"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0";'),
('0afc31dc029b54b7e5d5ec1bb1ca8c40', 1377376827, 'session_value|s:32:"49ca9b230102a5fc5e971106a3758e93";session_var|s:9:"c94c19bf5";robot_check|i:1377376827;mc|a:7:{s:4:"time";i:1377376827;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376827;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}log_time|i:1377376827;timeOnlineUpdated|i:1377376827;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:63:"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0";'),
('255574160216cf499c76c2838cd16eaa', 1377376826, 'session_value|s:32:"92ee4567dd94f8e66f8e61f42f242814";session_var|s:7:"ebdd01c";robot_check|i:1377376826;mc|a:7:{s:4:"time";i:1377376826;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376826;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}log_time|i:1377376826;timeOnlineUpdated|i:1377376826;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:63:"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0";'),
('7ba9c014aee7a25ee5c8553d3d72e2da', 1377376824, 'session_value|s:32:"64309848ad6372fe04c4877b4b96acf5";session_var|s:8:"a7a736a6";robot_check|i:1377376824;mc|a:7:{s:4:"time";i:1377376824;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376824;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}log_time|i:1377376824;timeOnlineUpdated|i:1377376824;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:63:"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0";'),
('edfee24212eb06649852d0db7ce76e84', 1377376824, 'session_value|s:32:"bbe2e5276692ced7943eb3075e643218";session_var|s:7:"c08d610";robot_check|i:1377376824;mc|a:7:{s:4:"time";i:1377376824;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376824;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}log_time|i:1377376824;timeOnlineUpdated|i:1377376824;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:63:"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0";'),
('2b88767e012e33056a54aa419a1355ca', 1377376823, 'session_value|s:32:"f441f4ce73792d596fe3d2a108747c44";session_var|s:10:"fd180b9971";robot_check|i:1377376823;mc|a:7:{s:4:"time";i:1377376823;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376823;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}log_time|i:1377376823;timeOnlineUpdated|i:1377376823;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:63:"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0";'),
('d716b78906821357f04b2f254033387d', 1377376822, 'session_value|s:32:"f1e87b3d9cff2f8a569b422944abddaa";session_var|s:8:"e5ec8bc7";robot_check|i:1377376822;mc|a:7:{s:4:"time";i:1377376822;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376822;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}log_time|i:1377376822;timeOnlineUpdated|i:1377376822;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:63:"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0";'),
('fd82f3e07cfc65e519fe72d83fccd831', 1377376822, 'session_value|s:32:"574501cee6407b35d813f0c3dcba759f";session_var|s:10:"f511f5fdb4";robot_check|i:1377376822;mc|a:7:{s:4:"time";i:1377376822;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376822;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}log_time|i:1377376822;timeOnlineUpdated|i:1377376822;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:63:"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0";'),
('9cc3e817d008c491e7dccaf761cf386f', 1377376821, 'session_value|s:32:"5fb53eb4b569b136623a0aed1c1cb361";session_var|s:12:"bf9d53129bae";robot_check|i:1377376821;mc|a:7:{s:4:"time";i:1377376821;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376821;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}log_time|i:1377376821;timeOnlineUpdated|i:1377376821;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:63:"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0";');
INSERT INTO `smf_ikillsessions` (`session_id`, `last_update`, `data`) VALUES
('b7c6208db188e912a14cad28d9a24e6a', 1377376819, 'session_value|s:32:"99594973ecc89d47a89084ea7feb4c1b";session_var|s:9:"b82312cd5";robot_check|i:1377376819;mc|a:7:{s:4:"time";i:1377376819;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376819;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}log_time|i:1377376819;timeOnlineUpdated|i:1377376819;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:63:"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0";'),
('e41c19981ec7e47d3c78c19ffc3ce9c5', 1377376818, 'session_value|s:32:"6da4827a930af2793d8e91a929944c0c";session_var|s:9:"b9e234c22";robot_check|i:1377376818;mc|a:7:{s:4:"time";i:1377376818;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376818;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}log_time|i:1377376818;timeOnlineUpdated|i:1377376818;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:63:"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0";'),
('570e3afdb503d88d5675ce918c6818c7', 1377376818, 'session_value|s:32:"b34a9929b5c4490076817210e8c20941";session_var|s:9:"a3d5a87d6";robot_check|i:1377376818;mc|a:7:{s:4:"time";i:1377376818;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376818;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}log_time|i:1377376818;timeOnlineUpdated|i:1377376818;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:63:"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0";'),
('7ea52e96c379a569b73d76b20cf75767', 1377376818, 'session_value|s:32:"2fff19c9ab0148a08853f4d3f7cf9b42";session_var|s:11:"d0bb90c7608";robot_check|i:1377376818;mc|a:7:{s:4:"time";i:1377376818;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376818;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}log_time|i:1377376818;timeOnlineUpdated|i:1377376818;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:63:"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0";'),
('96238e9184c8a659fe6928fa7c38a1e8', 1377376817, 'session_value|s:32:"fe5d136374532c3e84ce9d35c480ae94";session_var|s:8:"c4f00216";robot_check|i:1377376817;mc|a:7:{s:4:"time";i:1377376817;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376817;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}log_time|i:1377376817;timeOnlineUpdated|i:1377376817;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:63:"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0";'),
('1d4d822a9487c0343dc651b44ac95f80', 1377376817, 'session_value|s:32:"2fc47a0df19759d031c0d4c76946657a";session_var|s:12:"acfe083c8df6";robot_check|i:1377376817;mc|a:7:{s:4:"time";i:1377376817;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376817;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}log_time|i:1377376817;timeOnlineUpdated|i:1377376817;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:63:"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0";'),
('0440c36238e9967c52e5555506151cd5', 1377376817, 'session_value|s:32:"4816de257cbe6138c21ee2ac6da407f9";session_var|s:7:"f580d89";robot_check|i:1377376817;mc|a:7:{s:4:"time";i:1377376817;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376817;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}log_time|i:1377376817;timeOnlineUpdated|i:1377376817;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:63:"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0";'),
('497319509223a6b22837bc715fab9c9c', 1377376817, 'session_value|s:32:"8dbb730b3ae672dc2ed91f4b3faa1c9a";session_var|s:10:"c75696369d";robot_check|i:1377376817;mc|a:7:{s:4:"time";i:1377376817;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376817;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}log_time|i:1377376817;timeOnlineUpdated|i:1377376817;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:63:"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0";'),
('a0189e010843924dfcde752d9eb93e47', 1377376816, 'session_value|s:32:"e713bd387a81d915f8840e3589decca0";session_var|s:9:"e2f8b9f89";robot_check|i:1377376816;mc|a:7:{s:4:"time";i:1377376816;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376816;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}log_time|i:1377376816;timeOnlineUpdated|i:1377376816;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:63:"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0";'),
('b701742c1d81f0b447319c167e10a1eb', 1377376816, 'session_value|s:32:"e4389ab21b715d96593f8888224640eb";session_var|s:10:"f810598878";robot_check|i:1377376816;mc|a:7:{s:4:"time";i:1377376816;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376816;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}log_time|i:1377376816;timeOnlineUpdated|i:1377376816;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:63:"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0";'),
('0a04aa84b01677784956f0a6d1bf2db4', 1377376816, 'session_value|s:32:"0a468a55df9959bfd090a6de39a95b05";session_var|s:12:"cc8995b0bbe0";robot_check|i:1377376816;mc|a:7:{s:4:"time";i:1377376816;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376816;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}log_time|i:1377376816;timeOnlineUpdated|i:1377376816;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:63:"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0";'),
('89af4df0e43dd4197a307efe50da6b47', 1377376815, 'session_value|s:32:"223e1d0347adc5bd633dada36dfd8766";session_var|s:11:"a2d539173de";robot_check|i:1377376815;mc|a:7:{s:4:"time";i:1377376815;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376815;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}log_time|i:1377376815;timeOnlineUpdated|i:1377376815;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:63:"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0";'),
('3f8d8af01a624b41cf619a6f3851bc93', 1377376815, 'session_value|s:32:"01eebdf8004304a7d8d76e991fbd4859";session_var|s:8:"df01a02e";robot_check|i:1377376815;mc|a:7:{s:4:"time";i:1377376815;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376815;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}log_time|i:1377376815;timeOnlineUpdated|i:1377376815;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:63:"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0";'),
('f8fa3d924270f20eb59c62b1a7d56f93', 1377376814, 'session_value|s:32:"dfe9966082730717044ce1513d38abbc";session_var|s:7:"bc6e727";robot_check|i:1377376814;mc|a:7:{s:4:"time";i:1377376814;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376814;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}log_time|i:1377376814;timeOnlineUpdated|i:1377376814;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:63:"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0";'),
('87cd76bb882c0118ba0986b512f266f2', 1377376813, 'session_value|s:32:"cf92de562310422054cd855cc89cd250";session_var|s:11:"c0203c0104f";robot_check|i:1377376813;mc|a:7:{s:4:"time";i:1377376813;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376813;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}log_time|i:1377376813;timeOnlineUpdated|i:1377376813;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:63:"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0";'),
('aaeee96275fb6520c00d73d1cc5f3adc', 1377376814, 'session_value|s:32:"d4d1a6845e4b7bac8c47aaec5b2d459d";session_var|s:7:"a1e48b0";robot_check|i:1377376814;mc|a:7:{s:4:"time";i:1377376814;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376814;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}log_time|i:1377376814;timeOnlineUpdated|i:1377376814;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:63:"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0";'),
('c80a8e8fa324833f2c8221ab78521ab8', 1377376813, 'session_value|s:32:"40438d3480be4941268e771453a80057";session_var|s:10:"c90919145e";robot_check|i:1377376813;mc|a:7:{s:4:"time";i:1377376813;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376813;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}log_time|i:1377376813;timeOnlineUpdated|i:1377376813;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:63:"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0";'),
('a700fd99a6d8483676c45f6fc83bbeb9', 1377376812, 'session_value|s:32:"f210e399ea3e8dc7f85b745d90db32d0";session_var|s:8:"bdf9329f";robot_check|i:1377376812;mc|a:7:{s:4:"time";i:1377376812;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376812;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}log_time|i:1377376812;timeOnlineUpdated|i:1377376812;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:63:"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0";'),
('f78df1bc8d25659be1311ad6978e6e18', 1377376812, 'session_value|s:32:"62d32cba9d02f5b69e987bb70380488b";session_var|s:7:"c070229";robot_check|i:1377376812;mc|a:7:{s:4:"time";i:1377376812;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376812;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}log_time|i:1377376812;timeOnlineUpdated|i:1377376812;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:63:"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0";'),
('f2871ab650526e16a294c1332dbdb335', 1377376810, 'session_value|s:32:"90bbc0e0947a63f60c666889c195d8ae";session_var|s:8:"c4dfff7b";robot_check|i:1377376810;mc|a:7:{s:4:"time";i:1377376810;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376810;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}log_time|i:1377376810;timeOnlineUpdated|i:1377376810;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:63:"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0";'),
('eb044f613880aebe3cd0917e02697f16', 1377376810, 'session_value|s:32:"69cdf4296249b46e43630518cf700036";session_var|s:7:"d1a5180";robot_check|i:1377376810;mc|a:7:{s:4:"time";i:1377376810;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376810;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}log_time|i:1377376810;timeOnlineUpdated|i:1377376810;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:63:"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0";'),
('08fbfb1083d4d6f0fa9a3f7d4f11110b', 1377376809, 'session_value|s:32:"5c124dc187cd09dc67ba54bbe7774d0e";session_var|s:11:"a3cceea21db";robot_check|i:1377376809;mc|a:7:{s:4:"time";i:1377376809;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376809;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}log_time|i:1377376809;timeOnlineUpdated|i:1377376809;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:63:"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0";'),
('1c21c0c2217245552ad6f8687f5315b4', 1377376809, 'session_value|s:32:"9ab882a0b772d7d5e5c1486751b83828";session_var|s:7:"ceb468e";robot_check|i:1377376809;mc|a:7:{s:4:"time";i:1377376809;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376809;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}log_time|i:1377376809;timeOnlineUpdated|i:1377376809;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:63:"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0";'),
('d1bed00bd36992b06e930e9b5fc20a20', 1377376807, 'session_value|s:32:"a25542abbcaaf4df7d4e899424507ff5";session_var|s:10:"cbd66d734d";robot_check|i:1377376807;mc|a:7:{s:4:"time";i:1377376807;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376807;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}log_time|i:1377376807;timeOnlineUpdated|i:1377376807;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:63:"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0";'),
('132ceb9a8a4cfa1af03f1ff6b1452f4f', 1377376807, 'session_value|s:32:"2acc25f492d56def4169d26c20078792";session_var|s:10:"db231284f6";robot_check|i:1377376807;mc|a:7:{s:4:"time";i:1377376807;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376807;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}log_time|i:1377376807;timeOnlineUpdated|i:1377376807;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:63:"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0";'),
('1fa3315fce65b7906357e53804a1b885', 1377376775, 'session_value|s:32:"ca024f3994c762d78dd117cb9a12f015";session_var|s:12:"f7df8afb47f7";robot_check|i:1377376774;mc|a:7:{s:4:"time";i:1377376774;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376774;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}log_time|i:1377376775;timeOnlineUpdated|i:1377376775;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:63:"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0";'),
('2c1234a4a240e58ca3e08f760adcbf2a', 1377376774, 'session_value|s:32:"009124042de1d4b105c2dbd5926c20e8";session_var|s:8:"b09e4b59";robot_check|i:1377376774;mc|a:7:{s:4:"time";i:1377376774;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376774;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}log_time|i:1377376774;timeOnlineUpdated|i:1377376774;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:63:"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0";'),
('30801d57b79298ed61cfbbb1873064e9', 1377376774, 'session_value|s:32:"b88a05099291d6f8518f06ce37ace403";session_var|s:8:"cde23fc3";robot_check|i:1377376774;mc|a:7:{s:4:"time";i:1377376774;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376774;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}log_time|i:1377376774;timeOnlineUpdated|i:1377376774;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:63:"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0";'),
('149a88950ee6538bea0089a692105f2b', 1377376774, 'session_value|s:32:"1e96c5f82eb490fe16f5ffa3ac93feb1";session_var|s:12:"a3349dd6d4de";robot_check|i:1377376773;mc|a:7:{s:4:"time";i:1377376773;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376773;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}log_time|i:1377376774;timeOnlineUpdated|i:1377376774;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:63:"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0";'),
('3c76139a7ce828fd44efba2b90d6b203', 1377376773, 'session_value|s:32:"9444fda53e422017a52751900139b323";session_var|s:8:"d92a4664";robot_check|i:1377376773;mc|a:7:{s:4:"time";i:1377376773;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376773;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}log_time|i:1377376773;timeOnlineUpdated|i:1377376773;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:63:"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0";'),
('b9b705f90c11dbb5d776158e5c66fd8f', 1377376773, 'session_value|s:32:"58094d983d3c6bdacbbf774da7f123ad";session_var|s:9:"ba5179909";robot_check|i:1377376773;mc|a:7:{s:4:"time";i:1377376773;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376773;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}log_time|i:1377376773;timeOnlineUpdated|i:1377376773;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:63:"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0";'),
('ddf385e750b6171dd9372eb3cdcbf544', 1377376772, 'session_value|s:32:"e990875637b677c5eb14af598690636a";session_var|s:11:"fbfb4645d76";robot_check|i:1377376772;mc|a:7:{s:4:"time";i:1377376772;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376772;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}log_time|i:1377376772;timeOnlineUpdated|i:1377376772;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:63:"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0";'),
('366c120021f8fe2affd153c015fc9681', 1377376773, 'session_value|s:32:"1734993ce72d052f923843a653516160";session_var|s:10:"dcbb585ada";robot_check|i:1377376773;mc|a:7:{s:4:"time";i:1377376773;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376773;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}log_time|i:1377376773;timeOnlineUpdated|i:1377376773;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:63:"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0";'),
('0e2f04d12d55fc5e737f4a426082a0de', 1377376772, 'session_value|s:32:"ced832ff02317e45a5777f94b4b42549";session_var|s:11:"faa949f22c9";robot_check|i:1377376772;mc|a:7:{s:4:"time";i:1377376772;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376772;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}log_time|i:1377376772;timeOnlineUpdated|i:1377376772;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:63:"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0";'),
('24fb7fc564b9a01e94506bdc9ab4323f', 1377376772, 'session_value|s:32:"7e93cf5ed27e388c2d18d7b7183551bc";session_var|s:7:"f82a521";robot_check|i:1377376772;mc|a:7:{s:4:"time";i:1377376772;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376772;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}log_time|i:1377376772;timeOnlineUpdated|i:1377376772;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:63:"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0";'),
('dd0816d9c2ee0eb386bb8383a588630d', 1377376771, 'session_value|s:32:"143303cd10634611a552dd38fc248e84";session_var|s:8:"e388e1ff";robot_check|i:1377376771;mc|a:7:{s:4:"time";i:1377376771;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376771;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}log_time|i:1377376771;timeOnlineUpdated|i:1377376771;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:63:"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0";'),
('e6088ff07e689427e6e20f28f273f5e4', 1377376771, 'session_value|s:32:"bf2f50acf07ce82ac128c3a0c15d6702";session_var|s:10:"aeb41ad2ed";robot_check|i:1377376771;mc|a:7:{s:4:"time";i:1377376771;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376771;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}log_time|i:1377376771;timeOnlineUpdated|i:1377376771;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:63:"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0";'),
('a76133f91e00ce7d994a54a70d7fb8ee', 1377376770, 'session_value|s:32:"14fa57d278825aee6df8db8459efee94";session_var|s:8:"b6307a6f";robot_check|i:1377376770;mc|a:7:{s:4:"time";i:1377376770;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376770;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}log_time|i:1377376770;timeOnlineUpdated|i:1377376770;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:63:"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0";'),
('5477f8585a8e57d70aec63e8503a4c6f', 1377376768, 'session_value|s:32:"bc54c1d40fa80c608fc58c4815a1f488";session_var|s:9:"c6a1c3705";robot_check|i:1377376768;mc|a:7:{s:4:"time";i:1377376768;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376768;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}log_time|i:1377376768;timeOnlineUpdated|i:1377376768;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:63:"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0";'),
('939ea5e5f0c91bd24b3cc6a68ad9fc5a', 1377376769, 'session_value|s:32:"05042b193a083328674e66cd26f580dd";session_var|s:8:"bef3f594";robot_check|i:1377376769;mc|a:7:{s:4:"time";i:1377376769;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376769;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}log_time|i:1377376769;timeOnlineUpdated|i:1377376769;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:63:"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0";'),
('f773ab6f741d37483994b7a4c8539f8e', 1377376768, 'session_value|s:32:"38f973d3030ae145705009e6086b1820";session_var|s:8:"c89d20bc";robot_check|i:1377376768;mc|a:7:{s:4:"time";i:1377376768;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376768;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}log_time|i:1377376768;timeOnlineUpdated|i:1377376768;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:63:"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0";'),
('f0e50e80268ea7f2ca9d3184f8dd9556', 1377376768, 'session_value|s:32:"97653756647afb5b18c2fed738bd2159";session_var|s:11:"c2a3f2d4dfd";robot_check|i:1377376768;mc|a:7:{s:4:"time";i:1377376768;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376768;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}log_time|i:1377376768;timeOnlineUpdated|i:1377376768;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:63:"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0";'),
('fd325bcd47fab07ff9ac03cd3a3ac7f3', 1377376768, 'session_value|s:32:"cabcf92d116453195da5f311315e1dba";session_var|s:9:"ddd117074";robot_check|i:1377376767;mc|a:7:{s:4:"time";i:1377376767;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376767;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}log_time|i:1377376768;timeOnlineUpdated|i:1377376768;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:63:"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0";'),
('65d8f6a750750d7f91d01757ef4e805d', 1377376767, 'session_value|s:32:"2b2a4e2bdd19aab7d0225fd3c9717db2";session_var|s:8:"d0bf9332";robot_check|i:1377376767;mc|a:7:{s:4:"time";i:1377376767;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376767;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}log_time|i:1377376767;timeOnlineUpdated|i:1377376767;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:63:"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0";'),
('35d1a7adb5382ff678a97618fe4266e8', 1377376767, 'session_value|s:32:"ee64156169dea529523b22d1735f9e2d";session_var|s:9:"cf979e136";robot_check|i:1377376767;mc|a:7:{s:4:"time";i:1377376767;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376767;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}log_time|i:1377376767;timeOnlineUpdated|i:1377376767;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:63:"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0";'),
('8aa3cda11f192d11bb1b1bf5ac713184', 1377376766, 'session_value|s:32:"b6a47003c2dedea223cfa69a4a64b17a";session_var|s:11:"fc0152e730c";robot_check|i:1377376766;mc|a:7:{s:4:"time";i:1377376766;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376766;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}log_time|i:1377376766;timeOnlineUpdated|i:1377376766;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:63:"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0";'),
('f5bc41c9eb5db23942b9f143a4959f33', 1377376766, 'session_value|s:32:"ba2f1ac92cba01c9f14dee3a6ff209ca";session_var|s:8:"a04d494e";robot_check|i:1377376766;mc|a:7:{s:4:"time";i:1377376766;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376766;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}log_time|i:1377376766;timeOnlineUpdated|i:1377376766;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:63:"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0";'),
('b90e2c12e2bab52c11fd9af1380e21d2', 1377376766, 'session_value|s:32:"fc03821d99f22c249f9cf689ac291f15";session_var|s:12:"e1a6065b2a18";robot_check|i:1377376766;mc|a:7:{s:4:"time";i:1377376766;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376766;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}log_time|i:1377376766;timeOnlineUpdated|i:1377376766;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:63:"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0";'),
('4aabcd5610d5031606968324777e1b82', 1377376766, 'session_value|s:32:"41a9a23e575c7370062087debf27ef77";session_var|s:10:"e1beb5b4ff";robot_check|i:1377376766;mc|a:7:{s:4:"time";i:1377376766;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376766;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}log_time|i:1377376766;timeOnlineUpdated|i:1377376766;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:63:"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0";'),
('fab16f0208aeb21912d72dc139e059ac', 1377376765, 'session_value|s:32:"3fb6aa03c5f14aa1a3fde14b8070b888";session_var|s:11:"e915517c77d";robot_check|i:1377376765;mc|a:7:{s:4:"time";i:1377376765;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376765;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}log_time|i:1377376765;timeOnlineUpdated|i:1377376765;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:63:"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0";'),
('1cfb1eb89f7987b5e1bda70110821588', 1377376765, 'session_value|s:32:"952cb16f3adcaad5a191c9b4ec2b0479";session_var|s:10:"e3eea71de1";robot_check|i:1377376765;mc|a:7:{s:4:"time";i:1377376765;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376765;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}log_time|i:1377376765;timeOnlineUpdated|i:1377376765;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:63:"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0";'),
('1f8eff0602dc71338feb32118bc00b27', 1377376765, 'session_value|s:32:"d38ef4824da60771b0f708ecfe8b2a09";session_var|s:7:"c5110a9";robot_check|i:1377376765;mc|a:7:{s:4:"time";i:1377376765;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376765;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}log_time|i:1377376765;timeOnlineUpdated|i:1377376765;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:63:"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0";'),
('b75bc885efa4eac3700f1d60cc19e453', 1377376763, 'session_value|s:32:"2498f5e697f817c8c799ab91cb151022";session_var|s:8:"ca5b1a78";robot_check|i:1377376763;mc|a:7:{s:4:"time";i:1377376763;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376763;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}log_time|i:1377376763;timeOnlineUpdated|i:1377376763;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:63:"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0";'),
('22f1f8d27e28f6f6ea1bd8e343df7ace', 1377376763, 'session_value|s:32:"97bc30f0f4de5ebbd8eda7fc1c005a96";session_var|s:10:"fca785787f";robot_check|i:1377376763;mc|a:7:{s:4:"time";i:1377376763;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376763;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}log_time|i:1377376763;timeOnlineUpdated|i:1377376763;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:63:"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0";'),
('fd0ad043eeb2283d17d233ae03f7b02e', 1377376763, 'session_value|s:32:"14380c6e8aa3465de39814d31e49f4c5";session_var|s:10:"aa66e0ae52";robot_check|i:1377376763;mc|a:7:{s:4:"time";i:1377376763;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376763;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}log_time|i:1377376763;timeOnlineUpdated|i:1377376763;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:63:"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0";'),
('446014a2eb1ee283cc8c832811b9e300', 1377376758, 'session_value|s:32:"3156721902f34075e73f9227ed86f43a";session_var|s:12:"f71617893441";robot_check|i:1377376758;mc|a:7:{s:4:"time";i:1377376758;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376758;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}log_time|i:1377376758;timeOnlineUpdated|i:1377376758;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:63:"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0";'),
('22428e6a543cd0fc17516fb30673c622', 1377376762, 'session_value|s:32:"1ac2e8d30f306b5f9dd6fcfeef55fd3d";session_var|s:11:"f62bd2717b3";robot_check|i:1377376762;mc|a:7:{s:4:"time";i:1377376762;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376762;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}log_time|i:1377376762;timeOnlineUpdated|i:1377376762;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:63:"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0";'),
('9c0c826f069155bf338d5d65773bef77', 1377376758, 'session_value|s:32:"ea62404f7b7ca4815259a77ab33a761b";session_var|s:9:"f33187f5c";robot_check|i:1377376758;mc|a:7:{s:4:"time";i:1377376758;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376758;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}log_time|i:1377376758;timeOnlineUpdated|i:1377376758;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:63:"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0";'),
('6d61e445af02b18ef35ef070d485c18c', 1377376758, 'session_value|s:32:"82897885d6acfdf1504ed6b03237a9a6";session_var|s:10:"f39f3e3e45";robot_check|i:1377376758;mc|a:7:{s:4:"time";i:1377376758;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376758;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}log_time|i:1377376758;timeOnlineUpdated|i:1377376758;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:63:"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0";'),
('a7f8714916618d27cd8d950248be5faf', 1377376757, 'session_value|s:32:"d9a2b4352b509c9816a581fde47acb1d";session_var|s:9:"fea7b4796";robot_check|i:1377376757;mc|a:7:{s:4:"time";i:1377376757;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376757;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}log_time|i:1377376757;timeOnlineUpdated|i:1377376757;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:63:"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0";'),
('814a646d612722721a4ba9f578b3cca7', 1377376728, 'session_value|s:32:"e4d1e4b79f867786f2d4c8c7c64f01fa";session_var|s:7:"a71985f";robot_check|i:1377376728;mc|a:7:{s:4:"time";i:1377376728;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376728;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}log_time|i:1377376728;timeOnlineUpdated|i:1377376728;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:63:"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0";'),
('b0d286fe2653628143a31428bdb37b00', 1377376728, 'session_value|s:32:"32fceb91bbe73c0645902e172f7a3bad";session_var|s:7:"ef70b15";robot_check|i:1377376728;mc|a:7:{s:4:"time";i:1377376728;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376728;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}log_time|i:1377376728;timeOnlineUpdated|i:1377376728;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:63:"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0";'),
('01a2f86face0582b1dd679614f0601fd', 1377376728, 'session_value|s:32:"ecd8b3ee5a05cf6033bd9bdf519db7f9";session_var|s:7:"ce91f20";robot_check|i:1377376728;mc|a:7:{s:4:"time";i:1377376728;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376728;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}log_time|i:1377376728;timeOnlineUpdated|i:1377376728;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:63:"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0";'),
('8a868cea6bd3838635b1a6f430ff4930', 1377376727, 'session_value|s:32:"6ea212223fe6bae22c8900944075bdd5";session_var|s:11:"dc54d5002b8";robot_check|i:1377376727;mc|a:7:{s:4:"time";i:1377376727;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376727;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}log_time|i:1377376727;timeOnlineUpdated|i:1377376727;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:63:"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0";'),
('59c1410e348ddca64d345e2754efa643', 1377376727, 'session_value|s:32:"9e5feab718f6d3a0a6b3ae38c694a13d";session_var|s:10:"f2a0df243f";robot_check|i:1377376727;mc|a:7:{s:4:"time";i:1377376727;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376727;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}log_time|i:1377376727;timeOnlineUpdated|i:1377376727;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:63:"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0";'),
('5b2dd043bb49e8cb0cbdd6ebaeffd0ae', 1377376727, 'session_value|s:32:"c136c59ca199cbb677dfa1e730805127";session_var|s:12:"fb19f658f517";robot_check|i:1377376727;mc|a:7:{s:4:"time";i:1377376727;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376727;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}log_time|i:1377376727;timeOnlineUpdated|i:1377376727;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:63:"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0";'),
('8dd5444cf1797878f7e55c6f5614ee1a', 1377376726, 'session_value|s:32:"ab42a4ae14361d6da043253822faf72b";session_var|s:7:"a990701";robot_check|i:1377376726;mc|a:7:{s:4:"time";i:1377376726;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376726;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}log_time|i:1377376726;timeOnlineUpdated|i:1377376726;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:63:"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0";'),
('91ae9a3d4a61ffabbe26b15bd7500065', 1377376725, 'session_value|s:32:"7d13197114578995467a1a294d2080a9";session_var|s:8:"c09b0759";robot_check|i:1377376725;mc|a:7:{s:4:"time";i:1377376725;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376725;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}log_time|i:1377376725;timeOnlineUpdated|i:1377376725;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:63:"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0";'),
('41d0454c9683271bd5a89047b8e7edbc', 1377376726, 'session_value|s:32:"82bb99d169d0888f15edfd748dc96dba";session_var|s:8:"fc56d051";robot_check|i:1377376726;mc|a:7:{s:4:"time";i:1377376726;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376726;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}log_time|i:1377376726;timeOnlineUpdated|i:1377376726;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:63:"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0";'),
('d9a33ee8298ac17bc71649f6d14bc112', 1377376725, 'session_value|s:32:"73cf7b7d7e8117deca288e738954651b";session_var|s:8:"fcbd6d4f";robot_check|i:1377376725;mc|a:7:{s:4:"time";i:1377376725;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376725;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}log_time|i:1377376725;timeOnlineUpdated|i:1377376725;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:63:"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0";'),
('7cc8616eddd603d18fba5c8c297e65b9', 1377376724, 'session_value|s:32:"4dc1bfe9ff28ddee134163a2526749fb";session_var|s:7:"e565ab7";robot_check|i:1377376724;mc|a:7:{s:4:"time";i:1377376724;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376724;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}log_time|i:1377376724;timeOnlineUpdated|i:1377376724;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:63:"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0";'),
('86f8f948db34860ad82dc5511d5d9bc5', 1377376723, 'session_value|s:32:"d7c424e6e6e9a52aa312c9af23afab65";session_var|s:10:"be200d15c8";robot_check|i:1377376723;mc|a:7:{s:4:"time";i:1377376723;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376723;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}log_time|i:1377376723;timeOnlineUpdated|i:1377376723;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:63:"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0";'),
('0cb2343c9b377d73f1057a04ec32b931', 1377376722, 'session_value|s:32:"48e361d00b1cd147887bbd7fd1d3832f";session_var|s:7:"dd01254";robot_check|i:1377376722;mc|a:7:{s:4:"time";i:1377376722;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376722;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}log_time|i:1377376722;timeOnlineUpdated|i:1377376722;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:63:"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0";'),
('26105f509d4945a20252d42645a3f5ab', 1377376723, 'session_value|s:32:"d4f07678987bafa7a3050af4c2e2ef3f";session_var|s:8:"e25a25a8";robot_check|i:1377376722;mc|a:7:{s:4:"time";i:1377376722;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376722;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}log_time|i:1377376722;timeOnlineUpdated|i:1377376722;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:63:"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0";'),
('2fd036713cf156e31ede025e809483a4', 1377376721, 'session_value|s:32:"49c74706538e0da79c48bb9d557d185e";session_var|s:11:"aec6e7b435f";robot_check|i:1377376721;mc|a:7:{s:4:"time";i:1377376721;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376721;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}log_time|i:1377376721;timeOnlineUpdated|i:1377376721;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:63:"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0";'),
('e354d5cbcdb9493ee6ecdff52fa669b1', 1377376720, 'session_value|s:32:"234e5092a1f13cf2f82be77e8058f0e8";session_var|s:7:"fd7e9b7";robot_check|i:1377376720;mc|a:7:{s:4:"time";i:1377376720;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376720;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}log_time|i:1377376720;timeOnlineUpdated|i:1377376720;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:63:"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0";'),
('fbefa545e1495b1351bfd93132160e7a', 1377376719, 'session_value|s:32:"e19ccf2a72611dd71d8e1d669eaed304";session_var|s:10:"e28844ab23";robot_check|i:1377376719;mc|a:7:{s:4:"time";i:1377376719;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376719;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}log_time|i:1377376719;timeOnlineUpdated|i:1377376719;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:63:"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0";'),
('4c5a2bec2c3f04f33f0c0215e1588d25', 1377376719, 'session_value|s:32:"9885e0be48bdb851d70149c7d8ba0a86";session_var|s:9:"c10920625";robot_check|i:1377376719;mc|a:7:{s:4:"time";i:1377376719;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376719;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}log_time|i:1377376719;timeOnlineUpdated|i:1377376719;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:63:"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0";'),
('326862cf594da6aee1c9a0dd57e41988', 1377376719, 'session_value|s:32:"a9a84e8f025495e61d4bf2b162c12221";session_var|s:10:"e305309092";robot_check|i:1377376718;mc|a:7:{s:4:"time";i:1377376718;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376718;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}log_time|i:1377376719;timeOnlineUpdated|i:1377376719;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:63:"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0";');
INSERT INTO `smf_ikillsessions` (`session_id`, `last_update`, `data`) VALUES
('8bb287151dce365652e443c09eb90fc9', 1377376718, 'session_value|s:32:"f2c2592b7a44e7a706eee6da4dbb3430";session_var|s:8:"a6dae2ce";robot_check|i:1377376717;mc|a:7:{s:4:"time";i:1377376717;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376717;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}log_time|i:1377376718;timeOnlineUpdated|i:1377376718;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:63:"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0";'),
('b2be880677079defafb3021cf9019dbd', 1377376718, 'session_value|s:32:"f299f9e0397a6ab6a769403074a7495e";session_var|s:8:"af09ea76";robot_check|i:1377376718;mc|a:7:{s:4:"time";i:1377376718;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376718;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}log_time|i:1377376718;timeOnlineUpdated|i:1377376718;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:63:"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0";'),
('3aabd54f2017d62bdd5d98c46824eb31', 1377376717, 'session_value|s:32:"09b18654cca0f1847296b56811986250";session_var|s:7:"c7c1269";robot_check|i:1377376717;mc|a:7:{s:4:"time";i:1377376717;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376717;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}log_time|i:1377376717;timeOnlineUpdated|i:1377376717;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:63:"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0";'),
('03d2ebe9b64e8878f7cf9c3f662399ee', 1377376717, 'session_value|s:32:"4a21bb3ab12ed43af5e021501153de31";session_var|s:7:"f5527ce";robot_check|i:1377376717;mc|a:7:{s:4:"time";i:1377376717;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376717;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}log_time|i:1377376717;timeOnlineUpdated|i:1377376717;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:63:"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0";'),
('9a8262c2388fc3f39b1ac9d46e69295c', 1377376716, 'session_value|s:32:"9d742a60f502dc6ef689d33733888654";session_var|s:12:"e75552b45ea7";robot_check|i:1377376716;mc|a:7:{s:4:"time";i:1377376716;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376716;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}log_time|i:1377376716;timeOnlineUpdated|i:1377376716;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:63:"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0";'),
('0a16145fcf556fdaee6fb4aaf50e5f4d', 1377376716, 'session_value|s:32:"0691154a0271e50acfad1a4ed41f5f28";session_var|s:8:"d0bb20f4";robot_check|i:1377376715;mc|a:7:{s:4:"time";i:1377376715;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376715;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}log_time|i:1377376716;timeOnlineUpdated|i:1377376716;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:63:"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0";'),
('e51b100e41cc830ad01884bbc297a946', 1377376714, 'session_value|s:32:"4134a7a852ed200779d15938542129f3";session_var|s:12:"ca670c9d3453";robot_check|i:1377376714;mc|a:7:{s:4:"time";i:1377376714;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376714;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}log_time|i:1377376714;timeOnlineUpdated|i:1377376714;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:63:"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0";'),
('81724d307342daebee8d5f174175f81a', 1377376715, 'session_value|s:32:"25a0c46daefab13ab55aa33673ab77f6";session_var|s:11:"baad6cff23c";robot_check|i:1377376715;mc|a:7:{s:4:"time";i:1377376715;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376715;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}log_time|i:1377376715;timeOnlineUpdated|i:1377376715;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:63:"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0";'),
('9c90a2f55043fdf2d9b84a5f6b3c2ee8', 1377376714, 'session_value|s:32:"2c3f305006c0d0df01c3bba015b25dad";session_var|s:12:"ef7b503fa7fb";robot_check|i:1377376714;mc|a:7:{s:4:"time";i:1377376714;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376714;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}log_time|i:1377376714;timeOnlineUpdated|i:1377376714;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:63:"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0";'),
('c59d9c88be18fed8700600aa03c98953', 1377376713, 'session_value|s:32:"04071a5498be05190953913a44a45ea0";session_var|s:11:"d329cf73ea0";robot_check|i:1377376713;mc|a:7:{s:4:"time";i:1377376713;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376713;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}log_time|i:1377376713;timeOnlineUpdated|i:1377376713;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:63:"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0";'),
('de32f4d697f4ca0c899a19da675cd248', 1377376713, 'session_value|s:32:"2d5e5dc70e11958f4e49918167b26089";session_var|s:10:"f8bc59fd51";robot_check|i:1377376713;mc|a:7:{s:4:"time";i:1377376713;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376713;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}log_time|i:1377376713;timeOnlineUpdated|i:1377376713;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:63:"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0";'),
('b62e6307d66172fe186f7f45fff0aa08', 1377376712, 'session_value|s:32:"4b4453b60da35dcad9bf638f432f08d2";session_var|s:7:"fa6928f";robot_check|i:1377376712;mc|a:7:{s:4:"time";i:1377376712;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376712;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}log_time|i:1377376712;timeOnlineUpdated|i:1377376712;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:63:"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0";'),
('7690c575a9e56aaf1a586d119fc92df6', 1377376712, 'session_value|s:32:"f22f45da6e938b00ada1614bbabc1b17";session_var|s:12:"c6f5791d4a92";robot_check|i:1377376712;mc|a:7:{s:4:"time";i:1377376712;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376712;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}log_time|i:1377376712;timeOnlineUpdated|i:1377376712;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:63:"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0";'),
('2fcef51805d6cb7151ad52af7f8c3073', 1377376712, 'session_value|s:32:"6b652ed8732ca321fe2431fe911f4940";session_var|s:9:"be83ec517";robot_check|i:1377376712;mc|a:7:{s:4:"time";i:1377376712;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376712;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}log_time|i:1377376712;timeOnlineUpdated|i:1377376712;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:63:"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0";'),
('74ab540b70ea969a47a6e0761bd525cd', 1377376712, 'session_value|s:32:"7dcee84190ee339a0be4aa866e3cc9e9";session_var|s:12:"b9f8183d80f6";robot_check|i:1377376712;mc|a:7:{s:4:"time";i:1377376712;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376712;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}log_time|i:1377376712;timeOnlineUpdated|i:1377376712;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:63:"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0";'),
('3aab5ad98bb5f8f735a67f7d99812263', 1377376711, 'session_value|s:32:"9d8dcbb6f3f3b7e83dc3553ec0a12d2b";session_var|s:12:"f31ae343c6ef";robot_check|i:1377376711;mc|a:7:{s:4:"time";i:1377376711;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376711;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}log_time|i:1377376711;timeOnlineUpdated|i:1377376711;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:63:"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0";'),
('7a5c26eac79fd53f76096729150a9c56', 1377376515, 'session_value|s:32:"6d0ab92870bb5a53327d8e81906cbe58";session_var|s:9:"cecce147b";robot_check|i:1377376514;mc|a:7:{s:4:"time";i:1377376515;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376515;s:9:"id_member";i:0;s:2:"ip";s:13:"50.97.161.229";s:3:"ip2";s:13:"50.97.161.229";s:5:"email";s:0:"";}log_time|i:1377376515;timeOnlineUpdated|i:1377376515;old_url|s:32:"http://nexusplayers.x10host.com/";USER_AGENT|s:46:"SiteCheck - http://downforeveryoneorjustme.com";'),
('e1b44a3e3a0493ac659d0030f68c4fe6', 1377376474, 'session_value|s:32:"aa2b7d35291216684199b03aa2b6fb53";session_var|s:8:"de963a92";robot_check|i:1377376474;mc|a:7:{s:4:"time";i:1377376474;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376474;s:9:"id_member";i:0;s:2:"ip";s:13:"50.97.161.229";s:3:"ip2";s:13:"50.97.161.229";s:5:"email";s:0:"";}log_time|i:1377376474;timeOnlineUpdated|i:1377376474;old_url|s:32:"http://nexusplayers.x10host.com/";USER_AGENT|s:46:"SiteCheck - http://downforeveryoneorjustme.com";'),
('ee2653ed1d3ec87d61c53d2b47b2a73c', 1377376514, 'session_value|s:32:"bb8e28bdf229f783a8c7453d11f7d839";session_var|s:10:"e0ae8f8f43";robot_check|i:1377376514;mc|a:7:{s:4:"time";i:1377376514;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376514;s:9:"id_member";i:0;s:2:"ip";s:13:"50.97.161.229";s:3:"ip2";s:13:"50.97.161.229";s:5:"email";s:0:"";}log_time|i:1377376514;timeOnlineUpdated|i:1377376514;old_url|s:32:"http://nexusplayers.x10host.com/";USER_AGENT|s:46:"SiteCheck - http://downforeveryoneorjustme.com";'),
('36a3341262559b6ea9c9b91da54587da', 1377376418, 'session_value|s:32:"332deff36f8bc5ff622409f38f3005ba";session_var|s:8:"c9e78691";robot_check|i:1377376418;mc|a:7:{s:4:"time";i:1377376418;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376418;s:9:"id_member";i:0;s:2:"ip";s:13:"50.97.161.229";s:3:"ip2";s:13:"50.97.161.229";s:5:"email";s:0:"";}log_time|i:1377376418;timeOnlineUpdated|i:1377376418;old_url|s:32:"http://nexusplayers.x10host.com/";USER_AGENT|s:46:"SiteCheck - http://downforeveryoneorjustme.com";'),
('7c0efe2ce9ecf910bbc24c0c337ac3bd', 1377376807, 'session_value|s:32:"130452585c0be5d167fe21ee7ed93f51";session_var|s:9:"ad43abe8e";robot_check|i:1377376807;mc|a:7:{s:4:"time";i:1377376807;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376807;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}log_time|i:1377376807;timeOnlineUpdated|i:1377376807;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:63:"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.0";'),
('5d9884d8cc0ec4558129a08318589f0d', 1377381202, 'session_value|s:32:"bdfe5a0cce868b9029486dfa10f90d03";session_var|s:10:"e2cda1b55b";robot_check|i:1377381202;mc|a:7:{s:4:"time";i:1377381202;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377381202;s:9:"id_member";i:0;s:2:"ip";s:13:"79.146.144.51";s:3:"ip2";s:13:"79.146.144.51";s:5:"email";s:0:"";}'),
('4a997b4d0ecb2e94ee157146e9cb275e', 1377378477, 'session_value|s:32:"0475d862106ee5d7393dd610a41cad4d";session_var|s:9:"fdad59562";robot_check|i:1377378477;mc|a:7:{s:4:"time";i:1377378477;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377378477;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}'),
('49fa32813afe80e4cb999fd9b99f8398', 1377376539, 'session_value|s:32:"3f219e5be48094ba92705ccdfed4688b";session_var|s:8:"c215ed21";robot_check|i:1377376338;mc|a:7:{s:4:"time";i:1377376388;s:2:"id";s:2:"56";s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:7:{s:12:"last_checked";i:1377376532;s:9:"id_member";s:2:"56";s:2:"ip";s:14:"37.130.227.133";s:3:"ip2";s:14:"37.130.227.133";s:5:"email";s:29:"suseguridadapesta@hotmail.com";s:13:"cannot_access";a:2:{s:6:"reason";s:0:"";s:3:"ids";a:2:{i:0;s:1:"5";i:1;s:1:"6";}}s:11:"expire_time";s:1:"0";}log_time|i:1377376539;timeOnlineUpdated|i:1377376539;old_url|s:54:"http://nexusplayers.x10host.com/index.php?action=forum";USER_AGENT|s:65:"Mozilla/5.0 (Windows NT 6.1; rv:17.0) Gecko/20100101 Firefox/17.0";register_vv|a:5:{s:5:"count";i:3;s:6:"errors";i:0;s:8:"did_pass";b:1;s:1:"q";a:0:{}s:4:"code";s:6:"VCTNBE";}registration_agreed|b:1;just_registered|i:1;login_SMFCookie347|s:92:"a:4:{i:0;i:56;i:1;s:40:"385ed76f04491d987647341338ee1bef7c61b401";i:2;i:1377379987;i:3;i:0;}";id_msg_last_visit|s:2:"31";unread_messages|i:0;forms|a:1:{i:0;i:5333153;}last_read_topic|i:0;last_topic_id|i:19;'),
('e40fc7aab0bc70a4b11583b9d334c685', 1377376064, 'session_value|s:32:"57fee82c304808f3c295f5f7b4a212b5";session_var|s:8:"ed3c6a0d";robot_check|i:1377376064;mc|a:7:{s:4:"time";i:1377376064;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376064;s:9:"id_member";i:0;s:2:"ip";s:12:"54.226.94.47";s:3:"ip2";s:12:"54.226.94.47";s:5:"email";s:0:"";}log_time|i:1377376064;timeOnlineUpdated|i:1377376064;register_vv|a:5:{s:5:"count";i:1;s:6:"errors";i:0;s:8:"did_pass";b:0;s:1:"q";a:0:{}s:4:"code";s:6:"KVHCUD";}old_url|s:57:"http://nexusplayers.x10host.com/index.php?action=register";USER_AGENT|s:76:"Mozilla/5.0 (compatible; proximic; +http://www.proximic.com/info/spider.php)";'),
('1116054777229776a1c30038e3efe731', 1377376056, 'session_value|s:32:"4a77ebf1f75c08566151129ab6afa2bd";session_var|s:7:"eb57488";robot_check|i:1377376001;mc|a:7:{s:4:"time";i:1377376001;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376001;s:9:"id_member";i:0;s:2:"ip";s:14:"195.55.236.236";s:3:"ip2";s:14:"195.55.236.236";s:5:"email";s:0:"";}log_time|i:1377376052;timeOnlineUpdated|i:1377376002;refferedby|i:47;old_url|s:57:"http://nexusplayers.x10host.com/index.php?action=register";USER_AGENT|s:101:"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/29.0.1547.57 Safari/537.36";register_vv|a:5:{s:5:"count";i:2;s:6:"errors";i:0;s:8:"did_pass";b:0;s:1:"q";a:0:{}s:4:"code";s:6:"DBCCDB";}registration_agreed|b:1;'),
('f8134943b86240b1a6ff70378b65969d', 1377376014, 'session_value|s:32:"de44b9df51903e1b560a59350403b0f3";session_var|s:9:"eadda9a55";robot_check|i:1377376014;mc|a:7:{s:4:"time";i:1377376014;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376014;s:9:"id_member";i:0;s:2:"ip";s:13:"54.224.55.214";s:3:"ip2";s:13:"54.224.55.214";s:5:"email";s:0:"";}log_time|i:1377376014;timeOnlineUpdated|i:1377376014;register_vv|a:5:{s:5:"count";i:1;s:6:"errors";i:0;s:8:"did_pass";b:0;s:1:"q";a:0:{}s:4:"code";s:6:"PTCBMG";}old_url|s:58:"http://nexusplayers.x10host.com/index.php?;action=register";USER_AGENT|s:76:"Mozilla/5.0 (compatible; proximic; +http://www.proximic.com/info/spider.php)";'),
('81c729cd37639bc4238fb4ea0ad97317', 1377378483, 'session_value|s:32:"6871262fce7158003b77152563d91f39";session_var|s:11:"dd5abef3930";robot_check|i:1377378483;mc|a:7:{s:4:"time";i:1377378483;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377378483;s:9:"id_member";i:0;s:2:"ip";s:13:"80.39.194.205";s:3:"ip2";s:13:"80.39.194.205";s:5:"email";s:0:"";}'),
('0c5e485ca7aff66704a1834f96f37bb3', 1377378489, 'session_value|s:32:"72c76edcbb011e6baefce9ff4a5cbf3a";session_var|s:9:"a67b2097e";robot_check|i:1377378489;mc|a:7:{s:4:"time";i:1377378489;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377378489;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}'),
('348e3fcf4714c725a132eb71fc8f5ed2', 1377375834, 'session_value|s:32:"7ed1e6da4f77f8d31d4016244f1dbb8e";session_var|s:12:"ebb518d46a44";robot_check|i:1377375761;mc|a:7:{s:4:"time";i:1377375761;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377375761;s:9:"id_member";i:0;s:2:"ip";s:13:"84.76.106.245";s:3:"ip2";s:13:"84.76.106.245";s:5:"email";s:0:"";}log_time|i:1377375834;timeOnlineUpdated|i:1377375761;old_url|s:52:"http://nexusplayers.x10host.com/index.php?topic=10.0";USER_AGENT|s:108:"Mozilla/5.0 (Windows NT 6.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/29.0.1547.57 Safari/537.36";last_topic_id|i:10;last_read_topic|i:10;forms|a:0:{}'),
('e562855df9e950905172c28cfa4e2a3c', 1377383559, 'session_value|s:32:"8b177440a47844eb0d2fe418e72d99fb";session_var|s:8:"cfac5763";id_msg_last_visit|s:2:"29";mc|a:7:{s:4:"time";i:1377374432;s:2:"id";s:1:"1";s:2:"gq";s:3:"1=1";s:2:"bq";s:3:"1=1";s:2:"ap";a:1:{i:0;i:0;}s:2:"mb";a:1:{i:0;s:1:"2";}s:2:"mq";s:17:"b.id_board IN (2)";}rc|a:3:{s:2:"id";s:1:"1";s:4:"time";i:1377376591;s:7:"reports";s:1:"0";}log_time|i:1377383558;timeOnlineUpdated|i:1377383558;unread_messages|i:0;old_url|s:52:"http://nexusplayers.x10host.com/index.php?action=who";USER_AGENT|s:108:"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/28.0.1500.95 Safari/537.36";who_online_sort_by|s:4:"time";who_online_filter|s:3:"all";last_topic_id|i:9;last_read_topic|i:9;forms|a:0:{}admin_time|i:1377375609;'),
('5e29b8be3a041734cc933db76e92acc8', 1377377525, 'session_value|s:32:"46bb532cd5e3fc95077e0aca55f71a0d";session_var|s:10:"d11395d2f2";id_msg_last_visit|s:2:"29";mc|a:7:{s:4:"time";i:1377367520;s:2:"id";s:2:"47";s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376667;s:9:"id_member";s:2:"47";s:2:"ip";s:10:"88.3.184.2";s:3:"ip2";s:10:"88.3.184.2";s:5:"email";s:21:"adrian92539@gmail.com";}log_time|i:1377377525;timeOnlineUpdated|i:1377377504;unread_messages|i:0;old_url|s:74:"http://nexusplayers.x10host.com/index.php?action=profile;area=forumprofile";USER_AGENT|s:108:"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/29.0.1547.57 Safari/537.36";last_topic_id|i:10;last_read_topic|i:10;forms|a:0:{}refferedby|i:47;'),
('3d01daf79d34bf2b583ebdcff5025071', 1377378482, 'session_value|s:32:"1ca6f54bcf85247e8eb931a0fb0233dc";session_var|s:12:"da0cf38ff3d7";robot_check|i:1377378482;mc|a:7:{s:4:"time";i:1377378482;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377378482;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}'),
('de7dc0e1848090121a050364291f1b77', 1377378479, 'session_value|s:32:"5312a414cdab0da04331e36b81817e04";session_var|s:8:"a8e3db9e";robot_check|i:1377378479;mc|a:7:{s:4:"time";i:1377378479;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377378479;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}'),
('0c7dddedd412de624b62a25da373c0c4', 1377378481, 'session_value|s:32:"7b5271e3f16f0e0ef5f73303608fe2e7";session_var|s:9:"cd719eac7";robot_check|i:1377378481;mc|a:7:{s:4:"time";i:1377378481;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377378481;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}'),
('2b3a7ddda390f7b07a64b4832bb9a242', 1377375640, 'session_value|s:32:"439858fce7575317676012bf952c8527";session_var|s:9:"d5dbb5411";robot_check|i:1377375231;mc|a:7:{s:4:"time";i:1377375273;s:2:"id";s:2:"54";s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:7:{s:12:"last_checked";i:1377375621;s:9:"id_member";s:2:"54";s:2:"ip";s:14:"201.165.80.217";s:3:"ip2";s:14:"201.165.80.217";s:5:"email";s:23:"helloimspam@hotmail.com";s:13:"cannot_access";a:2:{s:6:"reason";s:0:"";s:3:"ids";a:2:{i:0;s:1:"1";i:1;s:1:"2";}}s:11:"expire_time";s:1:"0";}log_time|i:1377375640;timeOnlineUpdated|i:1377375593;old_url|s:54:"http://nexusplayers.x10host.com/index.php?action=forum";USER_AGENT|s:101:"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/29.0.1547.57 Safari/537.36";register_vv|a:5:{s:5:"count";i:3;s:6:"errors";i:0;s:8:"did_pass";b:1;s:1:"q";a:0:{}s:4:"code";s:6:"RHVCBW";}registration_agreed|b:1;just_registered|i:1;login_SMFCookie347|s:92:"a:4:{i:0;i:54;i:1;s:40:"4e9fa2891214100572888703a334d44efb287aed";i:2;i:1377378873;i:3;i:0;}";id_msg_last_visit|s:2:"31";unread_messages|i:0;forms|a:5:{i:0;i:1728624;i:1;i:5031017;i:2;i:2101654;i:3;i:13142950;i:4;i:4532982;}last_read_topic|i:0;'),
('82b0d0e9a5cd8154ecec78492f1c2ef0', 1377378449, 'session_value|s:32:"6d0eea9b684e61e717f19ac584f29642";session_var|s:8:"cd950404";robot_check|i:1377378449;mc|a:7:{s:4:"time";i:1377378449;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377378449;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}'),
('a4a344fbd03e3bbf9c5eab37602dc1bc', 1377378471, 'session_value|s:32:"f3a9e68f29d8ff8c5be424ed7bee3d6e";session_var|s:7:"b0cc61a";robot_check|i:1377378471;mc|a:7:{s:4:"time";i:1377378471;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377378471;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}'),
('036e0e337ba15a3091ae88f4b378c75a', 1377378497, 'session_value|s:32:"87cdcef838a066c1a857c10849bf5729";session_var|s:8:"dfc00102";robot_check|i:1377378497;mc|a:7:{s:4:"time";i:1377378497;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377378497;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}'),
('b2fce406ea0b2e274206503e01534593', 1377378502, 'session_value|s:32:"15ef9ac8b6933998914ff6c4a85bdb7d";session_var|s:11:"bfef7e9e806";robot_check|i:1377378502;mc|a:7:{s:4:"time";i:1377378502;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377378502;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}'),
('bd8d15c3b23cd9d8d77af0c2bb1d305f', 1377376783, 'session_value|s:32:"16573336479453bb9addfcdac6955aa6";session_var|s:7:"ad78c8d";robot_check|i:1377376653;mc|a:7:{s:4:"time";i:1377376653;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376653;s:9:"id_member";i:0;s:2:"ip";s:12:"141.8.247.44";s:3:"ip2";s:12:"141.8.247.44";s:5:"email";s:0:"";}log_time|i:1377376783;timeOnlineUpdated|i:1377376653;old_url|s:75:"http://nexusplayers.x10host.com/index.php?action=profile;area=showposts;u=1";USER_AGENT|s:65:"Mozilla/5.0 (Windows NT 6.1; rv:17.0) Gecko/20100101 Firefox/17.0";register_vv|a:5:{s:5:"count";i:3;s:6:"errors";i:0;s:8:"did_pass";b:1;s:1:"q";a:0:{}s:4:"code";s:6:"NUMTPN";}registration_agreed|b:1;just_registered|i:1;'),
('805013c84c0861a8bfda12bf63c1aa8b', 1377376256, 'session_value|s:32:"29b488e13cc953524b8ec5271559a25d";session_var|s:9:"ddd5ab2f5";robot_check|i:1377375896;mc|a:7:{s:4:"time";i:1377376016;s:2:"id";s:2:"55";s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:7:{s:12:"last_checked";i:1377376250;s:9:"id_member";s:2:"55";s:2:"ip";s:14:"173.254.216.67";s:3:"ip2";s:14:"173.254.216.67";s:5:"email";s:29:"pendejosspammeros@hotmail.com";s:13:"cannot_access";a:2:{s:6:"reason";s:5:"SPAM?";s:3:"ids";a:2:{i:0;s:1:"3";i:1;s:1:"4";}}s:11:"expire_time";s:1:"0";}log_time|i:1377376256;timeOnlineUpdated|i:1377376200;old_url|s:32:"http://nexusplayers.x10host.com/";USER_AGENT|s:65:"Mozilla/5.0 (Windows NT 6.1; rv:17.0) Gecko/20100101 Firefox/17.0";register_vv|a:5:{s:5:"count";i:3;s:6:"errors";i:0;s:8:"did_pass";b:1;s:1:"q";a:0:{}s:4:"code";s:6:"HGDXKH";}registration_agreed|b:1;just_registered|i:1;login_SMFCookie347|s:92:"a:4:{i:0;i:55;i:1;s:40:"d68778080dbec53a02b5bc1ca227b42f6ebef4e7";i:2;i:1377379614;i:3;i:0;}";id_msg_last_visit|s:2:"31";unread_messages|i:0;forms|a:5:{i:0;i:6220574;i:1;i:9091155;i:2;i:10688644;i:3;i:4299718;i:4;i:546336;}last_read_topic|i:0;'),
('ac7020a1055602e8538db59d6b02aa5f', 1377376610, 'session_value|s:32:"bf6f1e92c69ae2c15674cb5aa12d9209";session_var|s:10:"d6a470765e";robot_check|i:1377376610;mc|a:7:{s:4:"time";i:1377376610;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376610;s:9:"id_member";i:0;s:2:"ip";s:14:"199.16.156.126";s:3:"ip2";s:14:"199.16.156.126";s:5:"email";s:0:"";}log_time|i:1377376610;timeOnlineUpdated|i:1377376610;refferedby|i:47;old_url|s:100:"http://nexusplayers.x10host.com/index.php?PHPSESSID=ac7020a1055602e8538db59d6b02aa5f;action=register";USER_AGENT|s:14:"Twitterbot/1.0";register_vv|a:5:{s:5:"count";i:1;s:6:"errors";i:0;s:8:"did_pass";b:0;s:1:"q";a:0:{}s:4:"code";s:6:"BBEMPN";}'),
('91524881b41409dd9f4e602adde871b3', 1377376473, 'session_value|s:32:"2b0f8262dcf5f9db53cf0974cb31d61f";session_var|s:8:"af6f95b8";robot_check|i:1377376473;mc|a:7:{s:4:"time";i:1377376473;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377376473;s:9:"id_member";i:0;s:2:"ip";s:13:"50.97.161.229";s:3:"ip2";s:13:"50.97.161.229";s:5:"email";s:0:"";}log_time|i:1377376473;timeOnlineUpdated|i:1377376473;old_url|s:32:"http://nexusplayers.x10host.com/";USER_AGENT|s:46:"SiteCheck - http://downforeveryoneorjustme.com";'),
('240a3c8e922893ee74a066da90380b2e', 1377378493, 'session_value|s:32:"383b25dec083f480d41aebcefede6e6a";session_var|s:10:"f82759aa28";robot_check|i:1377378493;mc|a:7:{s:4:"time";i:1377378493;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377378493;s:9:"id_member";i:0;s:2:"ip";s:12:"37.15.33.156";s:3:"ip2";s:12:"37.15.33.156";s:5:"email";s:0:"";}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `smf_ikillsettings`
--

CREATE TABLE IF NOT EXISTS `smf_ikillsettings` (
  `variable` varchar(255) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  PRIMARY KEY (`variable`(30))
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `smf_ikillsettings`
--

INSERT INTO `smf_ikillsettings` (`variable`, `value`) VALUES
('smfVersion', '2.0.5'),
('news', 'SMF - Just Installed!'),
('compactTopicPagesContiguous', '5'),
('compactTopicPagesEnable', '1'),
('enableStickyTopics', '1'),
('todayMod', '2'),
('karmaMode', '2'),
('karmaTimeRestrictAdmins', '1'),
('enablePreviousNext', '1'),
('pollMode', '1'),
('enableVBStyleLogin', '1'),
('enableCompressedOutput', '1'),
('karmaWaitTime', '1'),
('karmaMinPosts', '0'),
('karmaLabel', 'Karma:'),
('karmaSmiteLabel', '[smite]'),
('karmaApplaudLabel', '[applaud]'),
('attachmentSizeLimit', '128'),
('attachmentPostLimit', '192'),
('attachmentNumPerPostLimit', '4'),
('attachmentDirSizeLimit', '10240'),
('attachmentUploadDir', '/home/nexuspla/public_html/attachments'),
('attachmentExtensions', 'doc,gif,jpg,mpg,pdf,png,txt,zip'),
('attachmentCheckExtensions', '0'),
('attachmentShowImages', '1'),
('attachmentEnable', '1'),
('attachmentEncryptFilenames', '1'),
('attachmentThumbnails', '1'),
('attachmentThumbWidth', '150'),
('attachmentThumbHeight', '150'),
('censorIgnoreCase', '1'),
('mostOnline', '39'),
('mostOnlineToday', '5'),
('mostDate', '1377087024'),
('allow_disableAnnounce', '1'),
('trackStats', '1'),
('userLanguage', '1'),
('titlesEnable', '1'),
('topicSummaryPosts', '15'),
('enableErrorLogging', '1'),
('max_image_width', '0'),
('max_image_height', '0'),
('onlineEnable', '0'),
('cal_enabled', '1'),
('cal_maxyear', '2020'),
('cal_minyear', '2008'),
('cal_daysaslink', '0'),
('cal_defaultboard', ''),
('cal_showholidays', '1'),
('cal_showbdays', '1'),
('cal_showevents', '1'),
('cal_showweeknum', '0'),
('cal_maxspan', '7'),
('smtp_host', ''),
('smtp_port', '25'),
('smtp_username', ''),
('smtp_password', ''),
('mail_type', '0'),
('timeLoadPageEnable', '0'),
('totalMembers', '51'),
('totalTopics', '9'),
('totalMessages', '30'),
('simpleSearch', '0'),
('censor_vulgar', ''),
('censor_proper', ''),
('enablePostHTML', '0'),
('theme_allow', '0'),
('theme_default', '1'),
('theme_guests', '3'),
('enableEmbeddedFlash', '0'),
('xmlnews_enable', '1'),
('xmlnews_maxlen', '255'),
('hotTopicPosts', '15'),
('hotTopicVeryPosts', '25'),
('registration_method', '1'),
('send_validation_onChange', '0'),
('send_welcomeEmail', '1'),
('allow_editDisplayName', '1'),
('allow_hideOnline', '1'),
('guest_hideContacts', '1'),
('spamWaitTime', '5'),
('pm_spam_settings', '10,5,20'),
('reserveWord', '0'),
('reserveCase', '1'),
('reserveUser', '1'),
('reserveName', '1'),
('reserveNames', 'Admin\nWebmaster\nGuest\nroot'),
('autoLinkUrls', '1'),
('banLastUpdated', '1377376435'),
('smileys_dir', '/home/nexuspla/public_html/Smileys'),
('smileys_url', 'http://nexusplayers.x10host.com/Smileys'),
('avatar_directory', '/home/nexuspla/public_html/avatars'),
('avatar_url', 'http://nexusplayers.x10host.com/avatars'),
('avatar_max_height_external', '65'),
('avatar_max_width_external', '65'),
('avatar_action_too_large', 'option_html_resize'),
('avatar_max_height_upload', '65'),
('avatar_max_width_upload', '65'),
('avatar_resize_upload', '1'),
('avatar_download_png', '1'),
('failed_login_threshold', '3'),
('oldTopicDays', '120'),
('edit_wait_time', '90'),
('edit_disable_time', '0'),
('autoFixDatabase', '1'),
('allow_guestAccess', '1'),
('time_format', '%B %d, %Y, %I:%M %p'),
('number_format', '1.234,00'),
('enableBBC', '1'),
('max_messageLength', '20000'),
('signature_settings', '1,500,0,0,0,0,0,0:'),
('autoOptMaxOnline', '0'),
('defaultMaxMessages', '15'),
('defaultMaxTopics', '20'),
('defaultMaxMembers', '30'),
('enableParticipation', '1'),
('recycle_enable', '1'),
('recycle_board', '23'),
('maxMsgID', '31'),
('enableAllMessages', '0'),
('fixLongWords', '0'),
('knownThemes', '3'),
('who_enabled', '1'),
('time_offset', '0'),
('cookieTime', '60'),
('lastActive', '20'),
('smiley_sets_known', 'default,aaron,akyhne'),
('smiley_sets_names', 'Alienine''s Set\nAaron''s Set\nAkyhne''s Set'),
('smiley_sets_default', 'default'),
('cal_days_for_index', '7'),
('requireAgreement', '1'),
('unapprovedMembers', '0'),
('default_personal_text', ''),
('package_make_backups', '1'),
('databaseSession_enable', '1'),
('databaseSession_loose', '1'),
('databaseSession_lifetime', '2880'),
('search_cache_size', '50'),
('search_results_per_page', '30'),
('search_weight_frequency', '30'),
('search_weight_age', '25'),
('search_weight_length', '20'),
('search_weight_subject', '15'),
('search_weight_first_message', '10'),
('search_max_results', '1200'),
('search_floodcontrol_time', '5'),
('permission_enable_deny', '0'),
('permission_enable_postgroups', '0'),
('mail_next_send', '0'),
('mail_recent', '0000000000|0'),
('settings_updated', '1377185403'),
('next_task_time', '1377385200'),
('warning_settings', '0,20,0'),
('warning_watch', '0'),
('warning_moderate', '0'),
('warning_mute', '0'),
('admin_features', 'cd,cp,k,ml,pm,sp'),
('last_mod_report_action', '1377376590'),
('pruningOptions', '30,180,180,180,30,0'),
('cache_enable', '1'),
('reg_verification', '1'),
('visual_verification_type', '3'),
('enable_buddylist', '1'),
('birthday_email', 'happy_birthday'),
('dont_repeat_theme_core', '1'),
('dont_repeat_smileys_20', '1'),
('dont_repeat_buddylists', '1'),
('attachment_image_reencode', '1'),
('attachment_image_paranoid', '0'),
('attachment_thumb_png', '1'),
('avatar_reencode', '1'),
('avatar_paranoid', '0'),
('global_character_set', 'UTF-8'),
('default_timezone', 'Europe/Madrid'),
('memberlist_updated', '1377378233'),
('latestMember', '53'),
('latestRealName', 'amiel'),
('rand_seed', '923719012'),
('mostOnlineUpdated', '2013-08-25'),
('enable_default_avatar', '1'),
('default_avatar_url', 'http://nexusplayers.x10host.com/Themes/ikillcraft/images/default_avatar.png'),
('calendar_updated', '1377376590'),
('spider_name_cache', 'a:19:{i:1;s:6:"Google";i:2;s:6:"Yahoo!";i:3;s:3:"MSN";i:4;s:15:"Google (Mobile)";i:5;s:14:"Google (Image)";i:6;s:16:"Google (AdSense)";i:7;s:16:"Google (Adwords)";i:8;s:15:"Yahoo! (Mobile)";i:9;s:14:"Yahoo! (Image)";i:10;s:12:"MSN (Mobile)";i:11;s:11:"MSN (Media)";i:12;s:4:"Cuil";i:13;s:3:"Ask";i:14;s:5:"Baidu";i:15;s:9:"Gigablast";i:16;s:15:"InternetArchive";i:17;s:5:"Alexa";i:18;s:6:"Omgili";i:19;s:9:"EntireWeb";}'),
('modlog_enabled', '1'),
('spider_mode', '1'),
('displayFields', 'a:0:{}'),
('ref_showreflink', '1'),
('ref_showonpost', '1'),
('ref_trackcookiehits', '0'),
('ref_cookietrackdays', '60'),
('ref_copyrightkey', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `smf_ikillsmileys`
--

CREATE TABLE IF NOT EXISTS `smf_ikillsmileys` (
  `id_smiley` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(30) NOT NULL DEFAULT '',
  `filename` varchar(48) NOT NULL DEFAULT '',
  `description` varchar(80) NOT NULL DEFAULT '',
  `smiley_row` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `smiley_order` smallint(5) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(4) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_smiley`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=23 ;

--
-- Volcado de datos para la tabla `smf_ikillsmileys`
--

INSERT INTO `smf_ikillsmileys` (`id_smiley`, `code`, `filename`, `description`, `smiley_row`, `smiley_order`, `hidden`) VALUES
(1, ':)', 'smiley.gif', 'Smiley', 0, 0, 0),
(2, ';)', 'wink.gif', 'Wink', 0, 1, 0),
(3, ':D', 'cheesy.gif', 'Cheesy', 0, 2, 0),
(4, ';D', 'grin.gif', 'Grin', 0, 3, 0),
(5, '>:(', 'angry.gif', 'Angry', 0, 4, 0),
(6, ':(', 'sad.gif', 'Sad', 0, 5, 0),
(7, ':o', 'shocked.gif', 'Shocked', 0, 6, 0),
(8, '8)', 'cool.gif', 'Cool', 0, 7, 0),
(9, '???', 'huh.gif', 'Huh?', 0, 8, 0),
(10, '::)', 'rolleyes.gif', 'Roll Eyes', 0, 9, 0),
(11, ':P', 'tongue.gif', 'Tongue', 0, 10, 0),
(12, ':-[', 'embarrassed.gif', 'Embarrassed', 0, 11, 0),
(13, ':-X', 'lipsrsealed.gif', 'Lips Sealed', 0, 12, 0),
(14, ':-\\', 'undecided.gif', 'Undecided', 0, 13, 0),
(15, ':-*', 'kiss.gif', 'Kiss', 0, 14, 0),
(16, ':''(', 'cry.gif', 'Cry', 0, 15, 0),
(17, '>:D', 'evil.gif', 'Evil', 0, 16, 1),
(18, '^-^', 'azn.gif', 'Azn', 0, 17, 1),
(19, 'O0', 'afro.gif', 'Afro', 0, 18, 1),
(20, ':))', 'laugh.gif', 'Laugh', 0, 19, 1),
(21, 'C:-)', 'police.gif', 'Police', 0, 20, 1),
(22, 'O:-)', 'angel.gif', 'Angel', 0, 21, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `smf_ikillspiders`
--

CREATE TABLE IF NOT EXISTS `smf_ikillspiders` (
  `id_spider` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `spider_name` varchar(255) NOT NULL DEFAULT '',
  `user_agent` varchar(255) NOT NULL DEFAULT '',
  `ip_info` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id_spider`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

--
-- Volcado de datos para la tabla `smf_ikillspiders`
--

INSERT INTO `smf_ikillspiders` (`id_spider`, `spider_name`, `user_agent`, `ip_info`) VALUES
(1, 'Google', 'googlebot', ''),
(2, 'Yahoo!', 'slurp', ''),
(3, 'MSN', 'msnbot', ''),
(4, 'Google (Mobile)', 'Googlebot-Mobile', ''),
(5, 'Google (Image)', 'Googlebot-Image', ''),
(6, 'Google (AdSense)', 'Mediapartners-Google', ''),
(7, 'Google (Adwords)', 'AdsBot-Google', ''),
(8, 'Yahoo! (Mobile)', 'YahooSeeker/M1A1-R2D2', ''),
(9, 'Yahoo! (Image)', 'Yahoo-MMCrawler', ''),
(10, 'MSN (Mobile)', 'MSNBOT_Mobile', ''),
(11, 'MSN (Media)', 'msnbot-media', ''),
(12, 'Cuil', 'twiceler', ''),
(13, 'Ask', 'Teoma', ''),
(14, 'Baidu', 'Baiduspider', ''),
(15, 'Gigablast', 'Gigabot', ''),
(16, 'InternetArchive', 'ia_archiver-web.archive.org', ''),
(17, 'Alexa', 'ia_archiver', ''),
(18, 'Omgili', 'omgilibot', ''),
(19, 'EntireWeb', 'Speedy Spider', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `smf_ikillsubscriptions`
--

CREATE TABLE IF NOT EXISTS `smf_ikillsubscriptions` (
  `id_subscribe` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `cost` text NOT NULL,
  `length` varchar(6) NOT NULL DEFAULT '',
  `id_group` smallint(5) NOT NULL DEFAULT '0',
  `add_groups` varchar(40) NOT NULL DEFAULT '',
  `active` tinyint(3) NOT NULL DEFAULT '1',
  `repeatable` tinyint(3) NOT NULL DEFAULT '0',
  `allow_partial` tinyint(3) NOT NULL DEFAULT '0',
  `reminder` tinyint(3) NOT NULL DEFAULT '0',
  `email_complete` text NOT NULL,
  PRIMARY KEY (`id_subscribe`),
  KEY `active` (`active`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `smf_ikillthemes`
--

CREATE TABLE IF NOT EXISTS `smf_ikillthemes` (
  `id_member` mediumint(8) NOT NULL DEFAULT '0',
  `id_theme` tinyint(4) unsigned NOT NULL DEFAULT '1',
  `variable` varchar(255) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  PRIMARY KEY (`id_theme`,`id_member`,`variable`(30)),
  KEY `id_member` (`id_member`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `smf_ikillthemes`
--

INSERT INTO `smf_ikillthemes` (`id_member`, `id_theme`, `variable`, `value`) VALUES
(0, 1, 'name', 'SMF Default Theme - Curve'),
(0, 1, 'theme_url', 'http://nexusplayers.x10host.com/Themes/default'),
(0, 1, 'images_url', 'http://nexusplayers.x10host.com/Themes/default/images'),
(0, 1, 'theme_dir', '/home/nexuspla/public_html/Themes/default'),
(0, 1, 'show_bbc', '1'),
(0, 1, 'show_latest_member', '1'),
(0, 1, 'show_modify', '1'),
(0, 1, 'show_user_images', '1'),
(0, 1, 'show_blurb', '1'),
(0, 1, 'show_gender', '0'),
(0, 1, 'show_newsfader', '0'),
(0, 1, 'number_recent_posts', '0'),
(0, 1, 'show_member_bar', '1'),
(0, 1, 'linktree_link', '1'),
(0, 1, 'show_profile_buttons', '1'),
(0, 1, 'show_mark_read', '1'),
(0, 1, 'show_stats_index', '1'),
(0, 1, 'linktree_inline', '0'),
(0, 1, 'show_board_desc', '1'),
(0, 1, 'newsfader_time', '5000'),
(0, 1, 'allow_no_censored', '0'),
(0, 1, 'additional_options_collapsable', '1'),
(0, 1, 'use_image_buttons', '1'),
(0, 1, 'enable_news', '1'),
(0, 1, 'forum_width', '90%'),
(0, 2, 'name', 'Core Theme'),
(0, 2, 'theme_url', 'http://nexusplayers.x10host.com/Themes/core'),
(0, 2, 'images_url', 'http://nexusplayers.x10host.com/Themes/core/images'),
(0, 2, 'theme_dir', '/home/nexuspla/public_html/Themes/core'),
(-1, 1, 'display_quick_reply', '1'),
(-1, 1, 'posts_apply_ignore_list', '1'),
(0, 3, 'theme_url', 'http://nexusplayers.x10host.com/Themes/ikillcraft'),
(0, 3, 'images_url', 'http://nexusplayers.x10host.com/Themes/ikillcraft/images'),
(0, 3, 'theme_dir', '/home/nexuspla/public_html/Themes/ikillcraft'),
(0, 3, 'name', 'ikillcraft'),
(0, 3, 'theme_layers', 'html,body'),
(0, 3, 'theme_templates', 'index'),
(1, 1, 'admin_preferences', 'a:1:{s:2:"pv";s:7:"classic";}'),
(2, 1, 'display_quick_reply', '1'),
(1, 3, 'use_sidebar_menu', '0'),
(3, 1, 'display_quick_reply', '1'),
(3, 1, 'show_board_desc', '0'),
(3, 1, 'show_children', '0'),
(3, 1, 'use_sidebar_menu', '0'),
(3, 1, 'show_no_avatars', '0'),
(3, 1, 'show_no_signatures', '0'),
(3, 1, 'return_to_post', '0'),
(3, 1, 'no_new_reply_warning', '0'),
(3, 1, 'posts_apply_ignore_list', '1'),
(3, 1, 'view_newest_first', '0'),
(3, 1, 'disable_iob', '0'),
(3, 1, 'wysiwyg_default', '0'),
(3, 1, 'topics_per_page', '0'),
(3, 1, 'messages_per_page', '0'),
(3, 1, 'calendar_start_day', '1'),
(3, 1, 'display_quick_mod', '0'),
(2, 1, 'show_board_desc', '0'),
(2, 1, 'show_children', '0'),
(2, 1, 'use_sidebar_menu', '0'),
(2, 1, 'show_no_avatars', '0'),
(2, 1, 'show_no_signatures', '0'),
(2, 1, 'return_to_post', '0'),
(2, 1, 'no_new_reply_warning', '0'),
(2, 1, 'posts_apply_ignore_list', '1'),
(2, 1, 'view_newest_first', '0'),
(2, 1, 'disable_iob', '0'),
(2, 1, 'wysiwyg_default', '0'),
(2, 1, 'topics_per_page', '0'),
(2, 1, 'messages_per_page', '0'),
(2, 1, 'calendar_start_day', '0'),
(2, 1, 'display_quick_mod', '0'),
(4, 1, 'display_quick_reply', '1'),
(5, 1, 'display_quick_reply', '1'),
(6, 1, 'display_quick_reply', '1'),
(7, 1, 'display_quick_reply', '1'),
(8, 1, 'display_quick_reply', '1'),
(9, 1, 'display_quick_reply', '1'),
(10, 1, 'display_quick_reply', '1'),
(11, 1, 'display_quick_reply', '1'),
(12, 1, 'display_quick_reply', '1'),
(13, 1, 'display_quick_reply', '1'),
(14, 1, 'display_quick_reply', '1'),
(15, 1, 'display_quick_reply', '1'),
(16, 1, 'display_quick_reply', '1'),
(17, 1, 'display_quick_reply', '1'),
(18, 1, 'display_quick_reply', '1'),
(19, 1, 'display_quick_reply', '1'),
(22, 1, 'display_quick_reply', '1'),
(0, 3, 'header_logo_url', ''),
(0, 3, 'site_slogan', ''),
(0, 3, 'smiley_sets_default', ''),
(0, 3, 'forum_width', '90%'),
(0, 3, 'linktree_link', '1'),
(0, 3, 'show_mark_read', '1'),
(0, 3, 'allow_no_censored', '0'),
(0, 3, 'enable_news', '1'),
(0, 3, 'show_newsfader', '0'),
(0, 3, 'newsfader_time', '5000'),
(0, 3, 'number_recent_posts', '0'),
(0, 3, 'show_stats_index', '1'),
(0, 3, 'show_latest_member', '1'),
(0, 3, 'show_group_key', '0'),
(0, 3, 'display_who_viewing', '2'),
(0, 3, 'show_modify', '1'),
(0, 3, 'show_profile_buttons', '1'),
(0, 3, 'show_user_images', '1'),
(0, 3, 'show_blurb', '1'),
(0, 3, 'show_gender', '0'),
(0, 3, 'hide_post_group', '0'),
(0, 3, 'show_bbc', '1'),
(0, 3, 'additional_options_collapsable', '1'),
(23, 1, 'display_quick_reply', '1'),
(24, 1, 'display_quick_reply', '1'),
(25, 1, 'display_quick_reply', '1'),
(2, 1, 'view_newest_pm_first', '1'),
(2, 1, 'popup_messages', '0'),
(2, 1, 'copy_to_outbox', '1'),
(2, 1, 'pm_remove_inbox_label', '0'),
(26, 1, 'display_quick_reply', '1'),
(27, 1, 'display_quick_reply', '1'),
(28, 1, 'display_quick_reply', '1'),
(29, 1, 'display_quick_reply', '1'),
(30, 1, 'display_quick_reply', '1'),
(31, 1, 'display_quick_reply', '1'),
(32, 1, 'display_quick_reply', '1'),
(33, 1, 'display_quick_reply', '1'),
(34, 1, 'display_quick_reply', '1'),
(35, 1, 'display_quick_reply', '1'),
(36, 1, 'display_quick_reply', '1'),
(37, 1, 'display_quick_reply', '1'),
(38, 1, 'display_quick_reply', '1'),
(39, 1, 'display_quick_reply', '1'),
(40, 1, 'display_quick_reply', '1'),
(41, 1, 'display_quick_reply', '1'),
(42, 1, 'display_quick_reply', '1'),
(43, 1, 'display_quick_reply', '1'),
(44, 1, 'display_quick_reply', '1'),
(45, 1, 'display_quick_reply', '1'),
(46, 1, 'display_quick_reply', '1'),
(47, 1, 'display_quick_reply', '1'),
(48, 1, 'display_quick_reply', '1'),
(49, 1, 'display_quick_reply', '1'),
(50, 1, 'display_quick_reply', '1'),
(51, 1, 'display_quick_reply', '1'),
(52, 1, 'display_quick_reply', '1'),
(53, 1, 'display_quick_reply', '1'),
(56, 1, 'display_quick_reply', '1'),
(57, 1, 'display_quick_reply', '1'),
(58, 1, 'display_quick_reply', '1'),
(59, 1, 'display_quick_reply', '1'),
(60, 1, 'display_quick_reply', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `smf_ikilltopics`
--

CREATE TABLE IF NOT EXISTS `smf_ikilltopics` (
  `id_topic` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `is_sticky` tinyint(4) NOT NULL DEFAULT '0',
  `id_board` smallint(5) unsigned NOT NULL DEFAULT '0',
  `id_first_msg` int(10) unsigned NOT NULL DEFAULT '0',
  `id_last_msg` int(10) unsigned NOT NULL DEFAULT '0',
  `id_member_started` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_member_updated` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_poll` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_previous_board` smallint(5) NOT NULL DEFAULT '0',
  `id_previous_topic` mediumint(8) NOT NULL DEFAULT '0',
  `num_replies` int(10) unsigned NOT NULL DEFAULT '0',
  `num_views` int(10) unsigned NOT NULL DEFAULT '0',
  `locked` tinyint(4) NOT NULL DEFAULT '0',
  `unapproved_posts` smallint(5) NOT NULL DEFAULT '0',
  `approved` tinyint(3) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_topic`),
  UNIQUE KEY `last_message` (`id_last_msg`,`id_board`),
  UNIQUE KEY `first_message` (`id_first_msg`,`id_board`),
  UNIQUE KEY `poll` (`id_poll`,`id_topic`),
  KEY `is_sticky` (`is_sticky`),
  KEY `approved` (`approved`),
  KEY `id_board` (`id_board`),
  KEY `member_started` (`id_member_started`,`id_board`),
  KEY `last_message_sticky` (`id_board`,`is_sticky`,`id_last_msg`),
  KEY `board_news` (`id_board`,`id_first_msg`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

--
-- Volcado de datos para la tabla `smf_ikilltopics`
--

INSERT INTO `smf_ikilltopics` (`id_topic`, `is_sticky`, `id_board`, `id_first_msg`, `id_last_msg`, `id_member_started`, `id_member_updated`, `id_poll`, `id_previous_board`, `id_previous_topic`, `num_replies`, `num_views`, `locked`, `unapproved_posts`, `approved`) VALUES
(2, 0, 6, 2, 16, 2, 1, 0, 0, 0, 3, 22, 0, 0, 1),
(3, 0, 1, 3, 3, 1, 1, 0, 0, 0, 0, 6, 1, 0, 1),
(4, 1, 1, 5, 13, 1, 1, 0, 0, 0, 2, 47, 0, 0, 1),
(5, 0, 44, 6, 6, 22, 22, 0, 0, 0, 0, 9, 0, 0, 1),
(6, 0, 5, 7, 14, 22, 22, 0, 0, 0, 3, 16, 0, 0, 1),
(7, 0, 5, 8, 11, 2, 1, 0, 0, 0, 1, 7, 0, 0, 1),
(8, 0, 63, 17, 17, 28, 28, 0, 0, 0, 0, 9, 0, 0, 1),
(9, 1, 1, 18, 30, 1, 47, 0, 0, 0, 12, 169, 0, 0, 1),
(10, 0, 6, 31, 31, 47, 47, 0, 0, 0, 0, 6, 0, 0, 1),
(18, 0, 23, 39, 39, 0, 0, 0, 5, 0, 0, 0, 0, 0, 1),
(16, 0, 23, 37, 37, 0, 0, 0, 5, 0, 0, 1, 0, 0, 1),
(17, 0, 23, 38, 38, 0, 0, 0, 5, 0, 0, 0, 0, 0, 1),
(19, 0, 23, 40, 40, 56, 56, 0, 5, 0, 0, 2, 0, 0, 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
