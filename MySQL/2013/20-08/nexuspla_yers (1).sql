-- phpMyAdmin SQL Dump
-- version 3.5.5
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 20-08-2013 a las 15:26:51
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
(4, 'latest-packages.js', '/smf/', 'language=%1$s&version=%3$s', 'var actionurl = ''?action=admin;area=packages;sa=download;get;package='';if (typeof(window.smfForum_sessionvar) == "undefined")\n	window.smfForum_sessionvar = ''sesc'';\n\nif (typeof(window.smfVersion) != "undefined" && window.smfVersion == "SMF 1.0")\n	window.smfLatestPackages = ''As was inevitable, a few small mistakes have been found in 1.0.  You can install <a href="'' + window.smfForum_scripturl + actionurl + ''http://custom.simplemachines.org/mods/downloads/smf_1-0-1_update.tar.gz;'' + window.smfForum_sessionvar + ''='' + window.smfForum_sessionid + ''">this patch (click here to install)</a> to easily update yourself to the latest version.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href="http://www.simplemachines.org/community/index.php">forum</a> if you need more help.'';\nelse if (typeof(window.smfVersion) != "undefined" && window.smfVersion == "SMF 1.0.1")\n	window.smfLatestPackages = ''A few problems have been found in the package manager\\''s modification code, among a few other issues.  You can install <a href="'' + window.smfForum_scripturl + actionurl + ''http://custom.simplemachines.org/mods/downloads/smf_1-0-2_update.tar.gz;'' + window.smfForum_sessionvar + ''='' + window.smfForum_sessionid + ''">this patch (click here to install)</a> to easily update yourself to the latest version.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href="http://www.simplemachines.org/community/index.php">forum</a> if you need more help.'';\nelse if (typeof(window.smfVersion) != "undefined" && window.smfVersion == "SMF 1.0.2")\n	window.smfLatestPackages = ''A problem has been found in the system that sends critical database messages.  You can install <a href="'' + window.smfForum_scripturl + actionurl + ''http://custom.simplemachines.org/mods/downloads/smf_1-0-3_package.tar.gz;'' + window.smfForum_sessionvar + ''='' + window.smfForum_sessionid + ''">this patch (click here to install)</a> to easily update yourself to the latest version.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href="http://www.simplemachines.org/community/index.php">forum</a> if you need more help.'';\nelse if (typeof(window.smfVersion) != "undefined" && window.smfVersion == "SMF 1.0.3")\n	window.smfLatestPackages = ''A few bugs have been fixed since SMF 1.0.3, and a problem with parsing nested BBC tags addressed. You can install <a href="'' + window.smfForum_scripturl + actionurl + ''http://custom.simplemachines.org/mods/downloads/smf_1-0-4_package.tar.gz;'' + window.smfForum_sessionvar + ''='' + window.smfForum_sessionid + ''">this patch (click here to install)</a> to easily update yourself to the latest version.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled. Please post on the <a href="http://www.simplemachines.org/community/index.php">forum</a> if you need more help.'';\nelse if (typeof(window.smfVersion) != "undefined" && window.smfVersion == "SMF 1.0.4")\n	window.smfLatestPackages = ''A security issue has been identified in SMF 1.0.4.  You can install <a href="'' + window.smfForum_scripturl + actionurl + ''http://custom.simplemachines.org/mods/downloads/smf_1-0-5_package.tar.gz;'' + window.smfForum_sessionvar + ''='' + window.smfForum_sessionid + ''">this patch (click here to install)</a> to easily update yourself to the latest version.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href="http://www.simplemachines.org/community/index.php">forum</a> if you need more help.'';\nelse if (typeof(window.smfVersion) != "undefined" && window.smfVersion == "SMF 1.0.5")\n	window.smfLatestPackages = ''A bbc security issue has been identified in SMF 1.0.5.  You can install <a href="'' + window.smfForum_scripturl + actionurl + ''http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.7_1.1-RC2-1.tar.gz;'' + window.smfForum_sessionvar + ''='' + window.smfForum_sessionid + ''">this patch (click here to install)</a> to easily update yourself to the latest version.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href="http://www.simplemachines.org/community/index.php">forum</a> if you need more help.'';\nelse if (typeof(window.smfVersion) != "undefined" && window.smfVersion == "SMF 1.0.6")\n	window.smfLatestPackages = ''A security issue has been identified in SMF 1.0.6.  You can install <a href="'' + window.smfForum_scripturl + actionurl + ''http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.7_1.1-RC2-1.tar.gz;'' + window.smfForum_sessionvar + ''='' + window.smfForum_sessionid + ''">this patch (click here to install)</a> to easily update yourself to the latest version.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href="http://www.simplemachines.org/community/index.php">forum</a> if you need more help.'';\nelse if (typeof(window.smfVersion) != "undefined" && window.smfVersion == "SMF 1.0.7")\n	window.smfLatestPackages = ''A security issue has been identified in SMF 1.0.7.  You can install <a href="'' + window.smfForum_scripturl + actionurl + ''http://custom.simplemachines.org/mods/downloads/smf_1-0-8_package.tar.gz;'' + window.smfForum_sessionvar + ''='' + window.smfForum_sessionid + ''">this patch (click here to install)</a> to easily update yourself to the latest version.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href="http://www.simplemachines.org/community/index.php">forum</a> if you need more help.'';\n\nelse if (typeof(window.smfVersion) != "undefined" && window.smfVersion == "SMF 1.0.8")\n	window.smfLatestPackages = ''A security issue has been identified in SMF 1.0.8.  You can install <a href="'' + window.smfForum_scripturl + actionurl + ''http://custom.simplemachines.org/mods/downloads/smf_patch_1-0-9_1-1-rc3-1.tar.gz;'' + window.smfForum_sessionvar + ''='' + window.smfForum_sessionid + ''">this patch (click here to install)</a> to easily update yourself to the latest version.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href="http://www.simplemachines.org/community/index.php">forum</a> if you need more help.'';\nelse if (typeof(window.smfVersion) != "undefined" && window.smfVersion == "SMF 1.0.9")\n	window.smfLatestPackages = ''A security issue has been identified in SMF 1.0.9.  You can install <a href="'' + window.smfForum_scripturl + actionurl + ''http://custom.simplemachines.org/mods/downloads/smf_1-0-10_patch.tar.gz;'' + window.smfForum_sessionvar + ''='' + window.smfForum_sessionid + ''">this patch (click here to install)</a> to easily update yourself to the latest version.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href="http://www.simplemachines.org/community/index.php">forum</a> if you need more help.'';\nelse if (typeof(window.smfVersion) != "undefined" && window.smfVersion == "SMF 1.0.10")\n	window.smfLatestPackages = ''A security issue has been identified in SMF 1.0.10.  You can install <a href="'' + window.smfForum_scripturl + actionurl + ''http://custom.simplemachines.org/mods/downloads/smf_patch_1.1.3_1.0.11.tar.gz;'' + window.smfForum_sessionvar + ''='' + window.smfForum_sessionid + ''">this patch (click here to install)</a> to easily update yourself to the latest version.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href="http://www.simplemachines.org/community/index.php">forum</a> if you need more help.'';\nelse if (typeof(window.smfVersion) != "undefined" && window.smfVersion == "SMF 1.0.11")\n	window.smfLatestPackages = ''A few security vulnerabilities have been identified in SMF 1.0.11 as well as a few small bugs. You can install <a href="'' + window.smfForum_scripturl + actionurl + ''http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.12_1.1.4_2.0.b1.1.tar.gz;'' + window.smfForum_sessionvar + ''='' + window.smfForum_sessionid + ''">this patch (click here to install)</a> to update your version of SMF to 1.0.12.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href="http://www.simplemachines.org/community/index.php">forum</a> if you need more help.'';\nelse if (typeof(window.smfVersion) != "undefined" && window.smfVersion == "SMF 1.0.12")\n	window.smfLatestPackages = ''A few security vulnerabilities have been identified in SMF 1.0.12 as well as a few small bugs. You can install <a href="'' + window.smfForum_scripturl + actionurl + ''http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.13_1.1.5_2.0-b3.1.zip;'' + window.smfForum_sessionvar + ''='' + window.smfForum_sessionid + ''">this patch (click here to install)</a> to update your version of SMF to 1.0.12.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href="http://www.simplemachines.org/community/index.php">forum</a> if you need more help.'';\nelse if (typeof(window.smfVersion) != "undefined" && window.smfVersion == "SMF 1.0.13")\n	window.smfLatestPackages = ''A few security vulnerabilities have been identified in SMF 1.0.13 as well as a few small bugs. You can install <a href="'' + window.smfForum_scripturl + actionurl + ''http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.14_1.1.6.zip;'' + window.smfForum_sessionvar + ''='' + window.smfForum_sessionid + ''">this patch (click here to install)</a> to update your version of SMF to 1.0.14.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href="http://www.simplemachines.org/community/index.php">forum</a> if you need more help.'';\nelse if (typeof(window.smfVersion) != "undefined" && window.smfVersion == "SMF 1.0.14")\n	window.smfLatestPackages = ''A few security vulnerabilities have been identified in SMF 1.0.14. You can install <a href="'' + window.smfForum_scripturl + actionurl + ''http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.15_1.1.7.zip;'' + window.smfForum_sessionvar + ''='' + window.smfForum_sessionid + ''">this patch (click here to install)</a> to update your version of SMF to 1.0.15.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href="http://www.simplemachines.org/community/index.php">forum</a> if you need more help.'';\nelse if (typeof(window.smfVersion) != "undefined" && window.smfVersion == "SMF 1.0.15")\n	window.smfLatestPackages = ''A few security vulnerabilities have been identified in SMF 1.0.15. You can install <a href="'' + window.smfForum_scripturl + actionurl + ''http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.16_1.1.8.zip;'' + window.smfForum_sessionvar + ''='' + window.smfForum_sessionid + ''">this patch (click here to install)</a> to update your version of SMF to 1.0.16.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href="http://www.simplemachines.org/community/index.php">forum</a> if you need more help.'';\nelse if (typeof(window.smfVersion) != "undefined" && window.smfVersion == "SMF 1.0.16")\n	window.smfLatestPackages = ''A few security vulnerabilities have been identified in SMF 1.0.16. You can install <a href="'' + window.smfForum_scripturl + actionurl + ''http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.17_1.1.9_2.0-RC1-1.zip;'' + window.smfForum_sessionvar + ''='' + window.smfForum_sessionid + ''">this patch (click here to install)</a> to update your version of SMF to 1.0.17.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href="http://www.simplemachines.org/community/index.php">forum</a> if you need more help.'';\nelse if (typeof(window.smfVersion) != "undefined" && window.smfVersion == "SMF 1.0.17")\n	window.smfLatestPackages = ''A few security vulnerabilities have been identified in SMF 1.0.17. You can install <a href="'' + window.smfForum_scripturl + actionurl + ''http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.18_1.1.10-2.0-RC1.2;'' + window.smfForum_sessionvar + ''='' + window.smfForum_sessionid + ''">this patch (click here to install)</a> to update your version of SMF to 1.0.18.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href="http://www.simplemachines.org/community/index.php">forum</a> if you need more help.'';\nelse if (typeof(window.smfVersion) != "undefined" && window.smfVersion == "SMF 1.0.18")\n	window.smfLatestPackages = ''A few security vulnerabilities have been identified in SMF 1.0.18. You can install <a href="'' + window.smfForum_scripturl + actionurl + ''http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.19_1.1.11.zip;'' + window.smfForum_sessionvar + ''='' + window.smfForum_sessionid + ''">this patch (click here to install)</a> to update your version of SMF to 1.0.19.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href="http://www.simplemachines.org/community/index.php">forum</a> if you need more help.'';\nelse if (typeof(window.smfVersion) != "undefined" && window.smfVersion == "SMF 1.0.19")\n	window.smfLatestPackages = ''A few security vulnerabilities have been identified in SMF 1.0.19. You can install <a href="'' + window.smfForum_scripturl + actionurl + ''http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.20_1.1.12.tar.gz;'' + window.smfForum_sessionvar + ''='' + window.smfForum_sessionid + ''">this patch (click here to install)</a> to update your version of SMF to 1.0.20.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href="http://www.simplemachines.org/community/index.php">forum</a> if you need more help.'';\nelse if (typeof(window.smfVersion) != "undefined" && window.smfVersion == "SMF 1.0.20")\n	window.smfLatestPackages = ''A few security vulnerabilities have been identified in SMF 1.0.20. You can install <a href="'' + window.smfForum_scripturl + actionurl + ''http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.21_1.1.13.tar.gz;'' + window.smfForum_sessionvar + ''='' + window.smfForum_sessionid + ''">this patch (click here to install)</a> to update your version of SMF to 1.0.21.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href="http://www.simplemachines.org/community/index.php">forum</a> if you need more help.'';\nelse if (typeof(window.smfVersion) != "undefined" && window.smfVersion == "SMF 1.0.21")\n	window.smfLatestPackages = ''A few security vulnerabilities have been identified in SMF 1.0.21. You can install <a href="'' + window.smfForum_scripturl + actionurl + ''http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.22_1.1.16.tar.gz;'' + window.smfForum_sessionvar + ''='' + window.smfForum_sessionid + ''">this patch (click here to install)</a> to update your version of SMF to 1.0.22.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href="http://www.simplemachines.org/community/index.php">forum</a> if you need more help.'';\nelse if (typeof(window.smfVersion) != "undefined" && window.smfVersion == "SMF 1.0.22")\n	window.smfLatestPackages = ''A security vulnerability has been identified in SMF 1.0.22. You can install <a href="'' + window.smfForum_scripturl + actionurl + ''http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.23_1.1.17.tar.gz;'' + window.smfForum_sessionvar + ''='' + window.smfForum_sessionid + ''">this patch (click here to install)</a> to update your version of SMF to 1.0.23.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href="http://www.simplemachines.org/community/index.php">forum</a> if you need more help.'';\nelse if (typeof(window.smfVersion) != "undefined" && window.smfVersion == "SMF 1.0.23")\n	window.smfLatestPackages = ''SMF 1.0 was released to the world in December 2004 and has been supported for more than eight years. Starting from the 1st of January 2013 it will not receive security updates any more. Anyone still using a 1.0 release should investigate migrating to the lates SMF version. Please post on the <a href="http://www.simplemachines.org/community/index.php">forum</a> if you need more help.'';\nelse if (typeof(window.smfVersion) != "undefined" && window.smfVersion == "SMF 1.1 Beta 2" && !in_array("smf:smf_1-1-beta2-fix1", window.smfInstalledPackages))\n	window.smfLatestPackages = ''A few bugs have been fixed since SMF 1.1 Beta 2, and a problem with parsing nested BBC tags addressed.  You can install <a href="'' + window.smfForum_scripturl + actionurl + ''http://custom.simplemachines.org/mods/downloads/smf_1-1-beta2-fix1.tar.gz;'' + window.smfForum_sessionvar + ''='' + window.smfForum_sessionid + ''">this patch (click here to install)</a> to easily fix the problem.<br /><br />Please post on the <a href="http://www.simplemachines.org/community/index.php">forum</a> or in the helpdesk if you need more help.'';\nelse if (typeof(window.smfVersion) != "undefined" && window.smfVersion == "SMF 1.1 RC2" && !in_array("smf:smf-1.0.7", window.smfInstalledPackages))\n	window.smfLatestPackages = ''A security issue has been identified in SMF 1.1 RC2. You can install <a href="'' + window.smfForum_scripturl + actionurl + ''http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.7_1.1-RC2-1.tar.gz;'' + window.smfForum_sessionvar + ''='' + window.smfForum_sessionid + ''">this patch (click here to install)</a> to easily update yourself to the latest version.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href="http://www.simplemachines.org/community/index.php">forum</a> if you need more help.'';\nelse if (typeof(window.smfVersion) != "undefined" && window.smfVersion == "SMF 1.1 RC2" && !in_array("smf:smf_1-1-rc2-2", window.smfInstalledPackages))\n	window.smfLatestPackages = ''A bug in PHP causes a vulnerability in SMF 1.1 RC2-1. You can install <a href="'' + window.smfForum_scripturl + actionurl + ''http://custom.simplemachines.org/mods/downloads/smf_1-1-rc2-2_package.tar.gz;'' + window.smfForum_sessionvar + ''='' + window.smfForum_sessionid + ''">this patch (click here to install)</a> to patch your version of 1.1 RC2 to 1.1 RC2-2.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href="http://www.simplemachines.org/community/index.php">forum</a> if you need more help.'';\nelse if (typeof(window.smfVersion) != "undefined" && window.smfVersion == "SMF 1.1")\n	window.smfLatestPackages = ''A number of small bugs and a security issue have been identified in SMF 1.1 Final. You can install <a href="'' + window.smfForum_scripturl + actionurl + ''http://custom.simplemachines.org/mods/downloads/smf_1-1-1_patch.tar.gz;'' + window.smfForum_sessionvar + ''='' + window.smfForum_sessionid + ''">this patch (click here to install)</a> to update your version of SMF to 1.1.1.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href="http://www.simplemachines.org/community/index.php">forum</a> if you need more help.'';\nelse if (typeof(window.smfVersion) != "undefined" && window.smfVersion == "SMF 1.1.1")\n	window.smfLatestPackages = ''A number of bugs and a couple of low risk security issues have been identified in SMF 1.1.1 - and some improvements have been made to the visual verification images on registration. You can install <a href="'' + window.smfForum_scripturl + actionurl + ''http://custom.simplemachines.org/mods/downloads/smf_1-1-2_patch.tar.gz;'' + window.smfForum_sessionvar + ''='' + window.smfForum_sessionid + ''">this patch (click here to install)</a> to update your version of SMF to 1.1.2.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href="http://www.simplemachines.org/community/index.php">forum</a> if you need more help.'';\nelse if (typeof(window.smfVersion) != "undefined" && window.smfVersion == "SMF 1.1.2")\n	window.smfLatestPackages = ''A number of bugs and a couple of low risk security issues have been identified in SMF 1.1.2 - and some improvements have been made to the package manager. You can install <a href="'' + window.smfForum_scripturl + actionurl + ''http://custom.simplemachines.org/mods/downloads/smf_patch_1.1.3_1.0.11.tar.gz;'' + window.smfForum_sessionvar + ''='' + window.smfForum_sessionid + ''">this patch (click here to install)</a> to update your version of SMF to 1.1.3.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href="http://www.simplemachines.org/community/index.php">forum</a> if you need more help.'';\nelse if (typeof(window.smfVersion) != "undefined" && window.smfVersion == "SMF 1.1.3")\n	window.smfLatestPackages = ''A few security vulnerabilities have been identified in SMF 1.1.3 as well as a few small bugs. You can install <a href="'' + window.smfForum_scripturl + actionurl + ''http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.12_1.1.4_2.0.b1.1.tar.gz;'' + window.smfForum_sessionvar + ''='' + window.smfForum_sessionid + ''">this patch (click here to install)</a> to update your version of SMF to 1.1.4.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href="http://www.simplemachines.org/community/index.php">forum</a> if you need more help.'';\nelse if (typeof(window.smfVersion) != "undefined" && window.smfVersion == "SMF 1.1.4")\n	window.smfLatestPackages = ''A few security vulnerabilities have been identified in SMF 1.1.4 as well as a few small bugs. You can install <a href="'' + window.smfForum_scripturl + actionurl + ''http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.13_1.1.5_2.0-b3.1.zip;'' + window.smfForum_sessionvar + ''='' + window.smfForum_sessionid + ''">this patch (click here to install)</a> to update your version of SMF to 1.1.5.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href="http://www.simplemachines.org/community/index.php">forum</a> if you need more help.'';\nelse if (typeof(window.smfVersion) != "undefined" && window.smfVersion == "SMF 1.1.5")\n	window.smfLatestPackages = ''A few security vulnerabilities have been identified in SMF 1.1.5 as well as a few small bugs. You can install <a href="'' + window.smfForum_scripturl + actionurl + ''http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.14_1.1.6.zip;'' + window.smfForum_sessionvar + ''='' + window.smfForum_sessionid + ''">this patch (click here to install)</a> to update your version of SMF to 1.1.6.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href="http://www.simplemachines.org/community/index.php">forum</a> if you need more help.'';\nelse if (typeof(window.smfVersion) != "undefined" && window.smfVersion == "SMF 1.1.6")\n	window.smfLatestPackages = ''A few security vulnerabilities have been identified in SMF 1.1.6. You can install <a href="'' + window.smfForum_scripturl + actionurl + ''http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.15_1.1.7.zip;'' + window.smfForum_sessionvar + ''='' + window.smfForum_sessionid + ''">this patch (click here to install)</a> to update your version of SMF to 1.1.7.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href="http://www.simplemachines.org/community/index.php">forum</a> if you need more help.'';\nelse if (typeof(window.smfVersion) != "undefined" && window.smfVersion == "SMF 1.1.7")\n	window.smfLatestPackages = ''A few security vulnerabilities have been identified in SMF 1.1.7. You can install <a href="'' + window.smfForum_scripturl + actionurl + ''http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.16_1.1.8.zip;'' + window.smfForum_sessionvar + ''='' + window.smfForum_sessionid + ''">this patch (click here to install)</a> to update your version of SMF to 1.1.8.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href="http://www.simplemachines.org/community/index.php">forum</a> if you need more help.'';\nelse if (typeof(window.smfVersion) != "undefined" && window.smfVersion == "SMF 1.1.8")\n	window.smfLatestPackages = ''A few security vulnerabilities have been identified in SMF 1.1.8. You can install <a href="'' + window.smfForum_scripturl + actionurl + ''http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.17_1.1.9_2.0-RC1-1.zip;'' + window.smfForum_sessionvar + ''='' + window.smfForum_sessionid + ''">this patch (click here to install)</a> to update your version of SMF to 1.1.9.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href="http://www.simplemachines.org/community/index.php">forum</a> if you need more help.'';\nelse if (typeof(window.smfVersion) != "undefined" && window.smfVersion == "SMF 1.1.9")\n	window.smfLatestPackages = ''A few security vulnerabilities have been identified in SMF 1.1.9. You can install <a href="'' + window.smfForum_scripturl + actionurl + ''http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.18_1.1.10-2.0-RC1.2.zip;'' + window.smfForum_sessionvar + ''='' + window.smfForum_sessionid + ''">this patch (click here to install)</a> to update your version of SMF to 1.1.10.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href="http://www.simplemachines.org/community/index.php">forum</a> if you need more help.'';\nelse if (typeof(window.smfVersion) != "undefined" && window.smfVersion == "SMF 1.1.10")\n	window.smfLatestPackages = ''A few security vulnerabilities have been identified in SMF 1.1.10. You can install <a href="'' + window.smfForum_scripturl + actionurl + ''http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.19_1.1.11.zip;'' + window.smfForum_sessionvar + ''='' + window.smfForum_sessionid + ''">this patch (click here to install)</a> to update your version of SMF to 1.1.11.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href="http://www.simplemachines.org/community/index.php">forum</a> if you need more help.'';\nelse if (typeof(window.smfVersion) != "undefined" && window.smfVersion == "SMF 1.1.11")\n	window.smfLatestPackages = ''A few security vulnerabilities have been identified in SMF 1.1.11. You can install <a href="'' + window.smfForum_scripturl + actionurl + ''http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.20_1.1.12.tar.gz;'' + window.smfForum_sessionvar + ''='' + window.smfForum_sessionid + ''">this patch (click here to install)</a> to update your version of SMF to 1.1.12.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href="http://www.simplemachines.org/community/index.php">forum</a> if you need more help.'';\nelse if (typeof(window.smfVersion) != "undefined" && window.smfVersion == "SMF 1.1.12")\n	window.smfLatestPackages = ''A few security vulnerabilities have been identified in SMF 1.1.12. You can install <a href="'' + window.smfForum_scripturl + actionurl + ''http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.21_1.1.13.tar.gz;'' + window.smfForum_sessionvar + ''='' + window.smfForum_sessionid + ''">this patch (click here to install)</a> to update your version of SMF to 1.1.13.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href="http://www.simplemachines.org/community/index.php">forum</a> if you need more help.'';\nelse if (typeof(window.smfVersion) != "undefined" && window.smfVersion == "SMF 1.1.13")\n	window.smfLatestPackages = ''A security vulnerability have been identified in SMF 1.1.13. You can install <a href="'' + window.smfForum_scripturl + actionurl + ''http://custom.simplemachines.org/mods/downloads/smf_patch_1.1.14.tar.gz;'' + window.smfForum_sessionvar + ''='' + window.smfForum_sessionid + ''">this patch (click here to install)</a> to update your version of SMF to 1.1.14.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled if you use the full package.  Please post on the <a href="http://www.simplemachines.org/community/index.php">forum</a> if you need more help.'';\nelse if (typeof(window.smfVersion) != "undefined" && window.smfVersion == "SMF 1.1.14")\n	window.smfLatestPackages = ''A security vulnerability have been identified in SMF 1.1.14. You can install <a href="'' + window.smfForum_scripturl + actionurl + ''http://custom.simplemachines.org/mods/downloads/smf_patch_1.1.15.tar.gz;'' + window.smfForum_sessionvar + ''='' + window.smfForum_sessionid + ''">this patch (click here to install)</a> to update your version of SMF to 1.1.15.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled if you use the full package.  Please post on the <a href="http://www.simplemachines.org/community/index.php">forum</a> if you need more help.'';\nelse if (typeof(window.smfVersion) != "undefined" && window.smfVersion == "SMF 1.1.15")\n	window.smfLatestPackages = ''A couple of security vulnerabilities have been identified in SMF 1.1.15. You can install <a href="'' + window.smfForum_scripturl + actionurl + ''http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.22_1.1.16.tar.gz;'' + window.smfForum_sessionvar + ''='' + window.smfForum_sessionid + ''">this patch (click here to install)</a> to update your version of SMF to 1.1.16.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled if you use the full package.  Please post on the <a href="http://www.simplemachines.org/community/index.php">forum</a> if you need more help.'';\nelse if (typeof(window.smfVersion) != "undefined" && window.smfVersion == "SMF 1.1.16")\n	window.smfLatestPackages = ''A security vulnerability has been identified in SMF 1.1.16. You can install <a href="'' + window.smfForum_scripturl + actionurl + ''http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.23_1.1.17.tar.gz;'' + window.smfForum_sessionvar + ''='' + window.smfForum_sessionid + ''">this patch (click here to install)</a> to update your version of SMF to 1.1.17.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled if you use the full package.  Please post on the <a href="http://www.simplemachines.org/community/index.php">forum</a> if you need more help.'';\nelse if (typeof(window.smfVersion) != "undefined" && window.smfVersion == "SMF 1.1.17")\n	window.smfLatestPackages = ''A few security vulnerabilities have been identified in SMF 1.1.17. You can install <a href="'' + window.smfForum_scripturl + actionurl + ''http://custom.simplemachines.org/mods/downloads/smf_patch_1.1.18.tar.gz;'' + window.smfForum_sessionvar + ''='' + window.smfForum_sessionid + ''">this patch (click here to install)</a> to update your version of SMF to 1.1.18.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled if you use the full package.  Please post on the <a href="http://www.simplemachines.org/community/index.php">forum</a> if you need more help.'';\nelse if (typeof(window.smfVersion) != "undefined" && window.smfVersion == "SMF 2.0 beta 1")\n	window.smfLatestPackages = ''A few security vulnerabilities have been identified in SMF 2.0 beta 1 as well as a few small bugs. You can install <a href="'' + window.smfForum_scripturl + actionurl + ''http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.12_1.1.4_2.0.b1.1.tar.gz;'' + window.smfForum_sessionvar + ''='' + window.smfForum_sessionid + ''">this patch (click here to install)</a> to update your version of SMF to 2.0 beta 1.1.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href="http://www.simplemachines.org/community/index.php">forum</a> if you need more help.'';\nelse if (typeof(window.smfVersion) != "undefined" && window.smfVersion == "SMF 2.0 Beta 3 Public")\n	window.smfLatestPackages = ''A few security vulnerabilities have been identified in SMF 2.0 beta 3 as well as a few small bugs. You can install <a href="'' + window.smfForum_scripturl + actionurl + ''http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.13_1.1.5_2.0-b3.1.zip;'' + window.smfForum_sessionvar + ''='' + window.smfForum_sessionid + ''">this patch (click here to install)</a> to update your version of SMF to 2.0 beta 3.1.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href="http://www.simplemachines.org/community/index.php">forum</a> if you need more help.'';\nelse if (typeof(window.smfVersion) != "undefined" && window.smfVersion == "SMF 2.0 RC1")\n	window.smfLatestPackages = ''A few security vulnerabilities have been identified in SMF 2.0 RC1. You can install <a href="'' + window.smfForum_scripturl + actionurl + ''http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.17_1.1.9_2.0-RC1-1.zip;'' + window.smfForum_sessionvar + ''='' + window.smfForum_sessionid + ''">this patch (click here to install)</a> to update your version of SMF to 2.0-RC1-1.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href="http://www.simplemachines.org/community/index.php">forum</a> if you need more help.'';\nelse if (typeof(window.smfVersion) != "undefined" && window.smfVersion == "SMF 2.0 RC1-1")\n	window.smfLatestPackages = ''A few security vulnerabilities have been identified in SMF 2.0 RC1-1. You can install <a href="'' + window.smfForum_scripturl + actionurl + ''http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.18_1.1.10-2.0-RC1.2.zip;'' + window.smfForum_sessionvar + ''='' + window.smfForum_sessionid + ''">this patch (click here to install)</a> to update your version of SMF to 2.0-RC1.2 .<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href="http://www.simplemachines.org/community/index.php">forum</a> if you need more help.'';\nelse if (typeof(window.smfVersion) != "undefined" && window.smfVersion == "SMF 2.0 RC4"  && typeof(window.smfRC4patch) == "undefined")\n	window.smfLatestPackages = ''A few security vulnerabilities have been identified in SMF 2.0 RC4. You can install <a href="'' + window.smfForum_scripturl + actionurl + ''http://custom.simplemachines.org/mods/downloads/smf_patch_2.0-RC4_security.zip;'' + window.smfForum_sessionvar + ''='' + window.smfForum_sessionid + ''">this patch (click here to install)</a> to install the security patch for SMF 2.0 RC4.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href="http://www.simplemachines.org/community/index.php">forum</a> if you need more help.'';\nelse if (typeof(window.smfVersion) != "undefined" && window.smfVersion == "SMF 2.0")\n	window.smfLatestPackages = ''A few security vulnerabilities have been identified in SMF 2.0. You can install <a href="'' + window.smfForum_scripturl + actionurl + ''http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.1.tar.gz;'' + window.smfForum_sessionvar + ''='' + window.smfForum_sessionid + ''">this patch (click here to install)</a> to update your forum.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href="http://www.simplemachines.org/community/index.php">forum</a> if you need more help.'';\nelse if (typeof(window.smfVersion) != "undefined" && window.smfVersion == "SMF 2.0.1")\n	window.smfLatestPackages = ''A few security vulnerabilities and bugs in SMF 2.0.1 have been fixed. You can install <a href="'' + window.smfForum_scripturl + actionurl + ''http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.2.tar.gz;'' + window.smfForum_sessionvar + ''='' + window.smfForum_sessionid + ''">this patch (click here to install)</a> to fix your forum.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href="http://www.simplemachines.org/community/index.php">forum</a> if you need more help.'';\nelse if (typeof(window.smfVersion) != "undefined" && window.smfVersion == "SMF 2.0.2")\n	window.smfLatestPackages = ''A security vulnerability and few bugs in SMF 2.0.2 have been fixed. You can install <a href="'' + window.smfForum_scripturl + actionurl + ''http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.3.tar.gz;'' + window.smfForum_sessionvar + ''='' + window.smfForum_sessionid + ''">this patch (click here to install)</a> to fix your forum.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href="http://www.simplemachines.org/community/index.php">forum</a> if you need more help.'';\nelse if (typeof(window.smfVersion) != "undefined" && window.smfVersion == "SMF 2.0.3")\n	window.smfLatestPackages = ''A few security vulnerabilities in SMF 2.0.3 have been fixed. You can install <a href="'' + window.smfForum_scripturl + actionurl + ''http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.4.tar.gz;'' + window.smfForum_sessionvar + ''='' + window.smfForum_sessionid + ''">this patch (click here to install)</a> to fix your forum.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href="http://www.simplemachines.org/community/index.php">forum</a> if you need more help.'';\nelse if (typeof(window.smfVersion) != "undefined" && window.smfVersion == "SMF 2.0.4")\n	window.smfLatestPackages = ''A few security vulnerabilities in SMF 2.0.4 have been fixed. You can install <a href="'' + window.smfForum_scripturl + actionurl + ''http://custom.simplemachines.org/mods/downloads/smf_patch_2.0.5.tar.gz;'' + window.smfForum_sessionvar + ''='' + window.smfForum_sessionid + ''">this patch (click here to install)</a> to fix your forum.<br /><br />If you have any problems applying it, you can use the version posted on the downloads page - although, any modifications you have installed will need to be uninstalled.  Please post on the <a href="http://www.simplemachines.org/community/index.php">forum</a> if you need more help.'';\nelse if (typeof(window.smfVersion) == "undefined")\n	window.smfLatestPackages = ''For the package manager to function properly, please upgrade to the latest version of SMF.'';\nelse\n{\nvar smf_modificationInfo = {\n\n	3765: {\n		name: ''Men of Star Trek Avatars by BK-Modding 1.0'',\n		versions: [''72'', ''73'', ''74''],\n		desc: ''BK Modding Men of Star Trek Avatars<br /><br />Made by: <a href="http://www.simplemachines.org/community/index.php?action=profile;u=194815" class="bbc_link" target="_blank">BK Modding Team</a> - <a href="http://www.bkmodding.com/" class="bbc_link" target="_blank">BK Modding</a><br /><br />These Star Trek Avatars are perfect for any Star Trek fan.<br /><br />Star Trek®, Star Trek: The Next Generation®, Star Trek: Deep Space Nine®, Star Trek: Voyager®, Star Trek: Enterprise®, and related Star Trek marks are registered trademarks and/or copyrights of Paramount Pictures, CBS, and their respective owners.<br /><br /><div align="center"><a href="http://creativecommons.org/licenses/by-sa/3.0/deed.en_US" class="bbc_link" target="_blank"><img src="http://i.creativecommons.org/l/by-sa/3.0/88x31.png" alt="" class="bbc_img" /></a><br />This work is licensed under a <a href="http://creativecommons.org/licenses/by-sa/3.0/deed.en_US" class="bbc_link" target="_blank">Creative Commons Attribution-ShareAlike 3.0 Unported License</a>.</div>'',\n		file: ''BK-Modding-Star-Trek-Men-Avatars.zip''\n	},\n	3764: {\n		name: ''Women of Star Trek Avatars by BK-Modding 1.0'',\n		versions: [''72'', ''73'', ''74''],\n		desc: ''BK Modding Women of Star Trek Avatars<br /><br />Made by: <a href="http://www.simplemachines.org/community/index.php?action=profile;u=194815" class="bbc_link" target="_blank">BK Modding Team</a> - <a href="http://www.bkmodding.com/" class="bbc_link" target="_blank">BK Modding</a><br /><br />These Star Trek Avatars are perfect for any Star Trek fan.<br /><br />Star Trek®, Star Trek: The Next Generation®, Star Trek: Deep Space Nine®, Star Trek: Voyager®, Star Trek: Enterprise®, and related Star Trek marks are registered trademarks and/or copyrights of Paramount Pictures, CBS, and their respective owners.<br /><br /><div align="center"><a href="http://creativecommons.org/licenses/by-sa/3.0/deed.en_US" class="bbc_link" target="_blank"><img src="http://i.creativecommons.org/l/by-sa/3.0/88x31.png" alt="" class="bbc_img" /></a><br />This work is licensed under a <a href="http://creativecommons.org/licenses/by-sa/3.0/deed.en_US" class="bbc_link" target="_blank">Creative Commons Attribution-ShareAlike 3.0 Unported License</a>.</div>'',\n		file: ''BK-Modding-Star-Trek-Women-Avatars.zip''\n	},\n	3761: {\n		name: ''Karma Smite Disable 1.0'',\n		versions: [''73'', ''74''],\n		desc: ''<hr /><div align="center"><span style="color: teal;" class="bbc_color"><span style="font-size: 16pt;" class="bbc_size"><strong>Karma Smite Disable</strong></span></span><br /><span class="bbc_u">(For SMF 2.0.x)</span><br />Mod by xPandax | <a href="http://custom.simplemachines.org/mods/index.php?action=profile;u=158159" class="bbc_link" target="_blank">Other Mods</a> by xPandax<br /></div><hr /><div align="center"><a href="http://custom.simplemachines.org/mods/index.php?mod=3761" class="bbc_link" target="_blank">Link to Mod</a> | <a href="http://www.simplemachines.org/community/index.php?topic=508754.0" class="bbc_link" target="_blank">Support Thread for this Mod</a></div><br /><br /><span style="color: purple;" class="bbc_color"><span style="font-size: 12pt;" class="bbc_size"><strong>Features</strong></span></span><br />This mod disables &#039;Karma Smite&#039; option. In other words, users can see &amp; use only the &#039;Applaud Karma&#039; option.<br /><br /><br /><span style="color: purple;" class="bbc_color"><span style="font-size: 12pt;" class="bbc_size"><strong>How-To</strong></span></span><br />NA.<br /><br /><br /><span style="color: purple;" class="bbc_color"><span style="font-size: 12pt;" class="bbc_size"><strong>Supported Themes</strong></span></span><br />Works on all the themes without any custom edits!<br /><br /><br /><span style="color: purple;" class="bbc_color"><span style="font-size: 12pt;" class="bbc_size"><strong>Supported SMF Versions</strong></span></span><br />Tested on fresh installation of 2.0.4.<br /><br /><br /><span style="color: purple;" class="bbc_color"><span style="font-size: 12pt;" class="bbc_size"><strong>Supported Languages</strong></span></span><br />NA.<br /><br /><br /><span style="color: purple;" class="bbc_color"><span style="font-size: 12pt;" class="bbc_size"><strong>Support</strong></span></span><br />If you need support with this mod, please use the <a href="http://www.simplemachines.org/community/index.php?topic=508754.0" class="bbc_link" target="_blank">Support Thread for this Mod</a>.<br /><br />&nbsp;<br /><span style="color: purple;" class="bbc_color"><span style="font-size: 12pt;" class="bbc_size"><strong>Changelog</strong></span></span><br /><strong>v1.0</strong> - Initial release.<br /><br /><br /><hr /><div align="center"><a href="http://creativecommons.org/licenses/by-sa/3.0/deed.en_US" class="bbc_link" target="_blank"><img src="http://i.creativecommons.org/l/by-sa/3.0/88x31.png" alt="" class="bbc_img" /></a><br />This work is licensed under a <a href="http://creativecommons.org/licenses/by-sa/3.0/deed.en_US" class="bbc_link" target="_blank">Creative Commons Attribution-ShareAlike 3.0 Unported License</a>.<br /></div>'',\n		file: ''Karma_Smite_Disable_v1.0.tar.gz''\n	},\n	2966: {\n		name: ''Footer Menu v.1 v.1'',\n		versions: [''73''],\n		desc: ''<div align="center"><span style="color: red;" class="bbc_color"><span style="font-size: 16pt;" class="bbc_size"><strong>Footer Menu v.1</strong></span></span><br />By <strong>Mick G. idesign360.com</strong> <br /><br /><strong>COMPATIBLE WITH SMF 2.0.3</strong><br /></div><br />This mod will make a custom footer menu below the info center for forum owners that have lots of internal and/or external links. <br /><br />Demo: <a href="http://idesign360.com/index.php?action=forum" class="bbc_link" target="_blank">http://idesign360.com/index.php?action=forum</a><br /><br />In admin, go to: <br />1. Configuration---&gt;Modification Settings----&gt;Miscellaneous-----&gt;Footer Menu.<br />2. Activate.<br />3. Make sure all links use http://<br /><br /><strong>Bug Fixes / Updates</strong><br />1.) Created v.1 | February 2011<br />2.) Added 5th column | March 2011<br />3.) Added headings | March 2011<br />4.) Removed centered links per request | March 2011<br />5.) Organized the admin fields | March 2011<br />6.) Added Title Tags | March 2011<br />7.) Colorized the Headings | March 2011 <br />8.) Fixed a bug on headings. Thanx Masterd | June 2011<br />9.) Updated to SMF 2.0 Gold | June 2011<br /><br />Footer menu positioning legend:<br /><div class="codeheader">Code: <a href="javascript:void(0);" onclick="return smfSelectText(this);" class="codeoperation">[Select]</a></div><code class="bbc_code">1 2 3 4 5 <br />6 7 8 9 10<br />11 12 13 14 15<br />16 17 18 19 20<br />21 22 23 24 25</code><br /><br />If you need support or need customize help, please post in the thread at SimpleMachines.org or @ idesign360.com Thanks!<br /><br /><div align="center"><a href="http://idesign360.com/" class="bbc_link" target="_blank"><img src="http://idesign360.com/community/images/ibanner.png" alt="" width="500" height="76" class="bbc_img resized" /></a></div>'',\n		file: ''Footer_Menu_v.1.zip''\n	}};\nvar smf_latestModifications = [3765, 3764, 3761];\n\nfunction smf_packagesMoreInfo(id)\n{\n	window.smfLatestPackages_temp = document.getElementById("smfLatestPackagesWindow").innerHTML;\n\n	setInnerHTML(document.getElementById("smfLatestPackagesWindow"),\n	''\\\n		<h3 style="margin: 0; padding: 4px;">'' + smf_modificationInfo[id].name + ''</h3>\\\n		<h4 style="padding: 4px; margin: 0;"><a href="'' + window.smfForum_scripturl + actionurl + ''http://custom.simplemachines.org/mods/downloads/'' + id + ''/'' + smf_modificationInfo[id].file + '';'' + window.smfForum_sessionvar + ''='' + window.smfForum_sessionid + ''">Install Now!</a></h4>\\\n		<div style="margin: 4px;">'' + smf_modificationInfo[id].desc.replace(/<a href/g, ''<a href'') + ''</div>\\\n		<div class="titlebg" style="padding: 4px; margin: 0;"><a href="javascript:smf_packagesBack();void(0);">(go back)</a></div>'');\n}\n\nfunction smf_packagesBack()\n{\n	setInnerHTML(document.getElementById("smfLatestPackagesWindow"), window.smfLatestPackages_temp);\n	window.scrollTo(0, findTop(document.getElementById("smfLatestPackagesWindow")) - 10);\n}\n\nwindow.smfLatestPackages = ''\\\n	<div id="smfLatestPackagesWindow"style="overflow: auto;">\\\n		<h3 style="margin: 0; padding: 4px;">New Packages:</h3>\\\n		<img src="http://www.simplemachines.org/smf/images/package.png" width="102" height="98" style="float: right; margin: 4px;" alt="(package)" />\\\n		<ul style="list-style: none; margin-top: 3px; padding: 0 4px;">'';\n\nfor (var i = 0; i < smf_latestModifications.length; i++)\n{\n	var id_mod = smf_latestModifications[i];\n\n	window.smfLatestPackages += ''<li><a href="javascript:smf_packagesMoreInfo('' + id_mod + '');void(0);">'' + smf_modificationInfo[id_mod].name + ''</a></li>'';\n}\n\nwindow.smfLatestPackages += ''\\\n		</ul>'';\n\nif (typeof(window.smfVersion) != "undefined" && (window.smfVersion < "SMF 1.0.6" || (window.smfVersion == "SMF 1.1 RC2" && !in_array(''smf:smf-1.0.7'', window.smfInstalledPackages))))\n	window.smfLatestPackages += ''\\\n		<h3 class="error" style="margin: 0; padding: 4px;">Updates for SMF:</h3>\\\n		<div style="padding: 0 4px;">\\\n			<a href="'' + window.smfForum_scripturl + actionurl + ''http://custom.simplemachines.org/mods/downloads/smf_patch_1.0.7_1.1-RC2-1.tar.gz;'' + window.smfForum_sessionvar + ''='' + window.smfForum_sessionid + ''">Security update (X-Forwarded-For header vulnerability)</a>\\\n		</div>'';\nelse\n	window.smfLatestPackages += ''\\\n		<h3 style="margin: 0; padding: 4px;">Package of the Moment:</h3>\\\n		<div style="padding: 0 4px;">\\\n			<a href="javascript:smf_packagesMoreInfo(2966);void(0);">Footer Menu v.1 v.1</a>\\\n		</div>'';\n\nwindow.smfLatestPackages += ''\\\n	</div>'';\n}\n\nfunction findTop(el)\n{\n	if (typeof(el.tagName) == "undefined")\n		return 0;\n\n	var skipMe = in_array(el.tagName.toLowerCase(), el.parentNode ? ["tr", "tbody", "form"] : []);\n	var coordsParent = el.parentNode ? "parentNode" : "offsetParent";\n\n	if (el[coordsParent] == null || typeof(el[coordsParent].offsetTop) == "undefined")\n		return skipMe ? 0 : el.offsetTop;\n	else\n		return (skipMe ? 0 : el.offsetTop) + findTop(el[coordsParent]);\n}\n\nfunction in_array(item, array)\n{\n	for (var i in array)\n	{\n		if (array[i] == item)\n			return true;\n	}\n\n	return false;\n}\n', 'text/javascript');
INSERT INTO `smf_ikilladmin_info_files` (`id_file`, `filename`, `path`, `parameters`, `data`, `filetype`) VALUES
(5, 'latest-smileys.js', '/smf/', 'language=%1$s&version=%3$s', 'var actionurl = ''?action=admin;area=smileys;sa=install;set_gz='';\nif (typeof(window.smfForum_sessionvar) == "undefined")\n	window.smfForum_sessionvar = ''sesc'';\n\nvar smf_smileysInfo = {\n\n	3628: {\n		name: ''BBPh Smileys 1.0'',\n		versions: [''72'', ''73''],\n		desc: ''Made to easily replace default ones.<br /><br /><img src="http://dl.dropbox.com/u/1684364/arc/bbph.gif" alt="" class="bbc_img" /><br /><br />These are just my favorites since the first forum I ever lived on was based on phpBB. Some are animated. package-info.xml included.<br /><br />Original smileys belong to phpBB. Some minor mods by me.'',\n		file: ''bbph.zip''\n	},\n	3290: {\n		name: ''Blue Smiley Animation 2.0'',\n		versions: [''67'', ''72'', ''68'', ''73''],\n		desc: ''<div align="center"><span style="font-size: 1.45em;" class="bbc_size"><span style="color: green;" class="bbc_color"><strong>Blue Smiley Animation</strong></span></span></div><div align="center"><a href="http://www.simplemachines.org/community/index.php?topic=464629.0" class="bbc_link" target="_blank">English Support</a> | <a href="http://smf-portal.hu" class="bbc_link" target="_blank">Hungarian Support</a> | <a href="http://custom.simplemachines.org/mods/index.php?action=profile;u=221448" class="bbc_link" target="_blank">My Mods</a></div><hr /><br /><strong>Autor:</strong><br /><a href="http://www.simplemachines.org/community/index.php?action=profile;u=221448" class="bbc_link" target="_blank">WasdMan</a> and Cserrobi<br /><br /><strong>Description (Hungarian):</strong> <br />Kék mosolygó arcok<br /><br /><strong>Description (English):</strong><br />Blue Smiley package<br /><br /><img src="http://smf-portal.hu/Download/Egyeb/keksmiley.png" alt="" width="600" height="237" class="bbc_img resized" /><br /><br /><strong>Compatibility: </strong><br /><ul class="bbc_list"><li>1.0 - 1.99.99</li><li>2.0 - 2.99.99</li></ul>'',\n		file: ''BlueSmileyAnimation_2.1_UNI.zip''\n	},\n	3269: {\n		name: ''Christmas Smileys 1.1'',\n		versions: [''64'', ''67'', ''70'', ''72'', ''65'', ''68'', ''71'', ''73'', ''74''],\n		desc: ''<div align="center"><span style="font-family: times new roman;" class="bbc_font"><span style="font-size: 24pt;" class="bbc_size"><span style="color: #654321;" class="bbc_color">Christmas Smileys</span></span></span><br /><table class="bbc_table"><tr><td><div style="text-align: right;"><strong>Created By:</strong> </div></td><td><a href="http://www.simplemachines.org/community/index.php?action=profile;u=200419" class="bbc_link" target="_blank">-=[Vyorel]=-</a><br />(<a href="http://custom.simplemachines.org/mods/index.php?action=search;author=200419" class="bbc_link" target="_blank">View my other mods here</a>)</td></tr><tr><td><div style="text-align: right;"><strong>Latest Version:</strong> </div></td><td>1.1</td></tr></table></div><br /><span style="font-family: times new roman;" class="bbc_font"><span style="font-size: 14pt;" class="bbc_size"><span style="color: #654321;" class="bbc_color">Summary</span></span></span><br /><br />This package contains 23 Christmas Smileys.<br /><br />You can install it using the package manager and then use the Smileys and message icons menu (Smileys and Message Icons -&gt; smiley sets new smiley set) to import the smiley&#039;s.<br /><br /><br /><span style="font-family: times new roman;" class="bbc_font"><span style="font-size: 14pt;" class="bbc_size"><span style="color: #654321;" class="bbc_color">Disclaimer</span></span></span><br />This Smileys are copyrighted to <a href="http://www.freeemoticonsandsmileys.com" class="bbc_link" target="_blank">www.freeemoticonsandsmileys.com</a> and all right are reserved.<br /><br /><div align="center"><a href="http://www.xerom-zone.com" class="bbc_link" target="_blank"><img src="http://www.xerom-zone.com/Themes/XeromTheme/images/custom/logo.png" alt="" class="bbc_img" /></a></div>'',\n		file: ''ChristmasSmileys.zip''\n	},\n	1709: {\n		name: ''Cristalab Emoticon Set 1.0'',\n		versions: [''44'', ''42''],\n		desc: ''Great emoticons / smileys from Cristalab.<br /><br />Original emoticons, with a proffesional look.<br /><br />Originally created by <a href="http://www.cristalab.com/blog/emoticones-msn-o-para-foros-gratis-clabicons-c15160l/" class="bbc_link" target="_blank">Cristalab.com</a><br />'',\n		file: ''clabIcon pack.zip''\n	},};\nvar smf_latestSmileys = [3628, 3290, 3269];\n\nfunction smf_packagesMoreInfo(id)\n{\n	window.smfLatestSmileys_temp = document.getElementById("smfLatestSmileysWindow").innerHTML;\n\n	setInnerHTML(document.getElementById("smfLatestSmileysWindow"),\n	''\\\n		<h3 style="margin: 0; padding: 4px;">'' + smf_smileysInfo[id].name + ''</h3>\\\n		<h4 style="padding: 4px; margin: 0;"><a href="'' + window.smfForum_scripturl + actionurl + ''http://custom.simplemachines.org/mods/downloads/'' + id + ''/'' + smf_smileysInfo[id].file + '';'' + window.smfForum_sessionvar + ''='' + window.smfForum_sessionid + ''">Install Now!</a></h4>\\\n		<div style="margin: 4px;">'' + smf_smileysInfo[id].desc.replace(/<a href/g, ''<a href'') + ''</div>\\\n		<div class="titlebg" style="padding: 4px; margin: 0;"><a href="javascript:smf_packagesBack();void(0);">(go back)</a></div>'');\n}\n\nfunction smf_packagesBack()\n{\n	setInnerHTML(document.getElementById("smfLatestSmileysWindow"), window.smfLatestSmileys_temp);\n	window.scrollTo(0, findTop(document.getElementById("smfLatestSmileysWindow")) - 10);\n}\n\nwindow.smfLatestSmileys = ''\\\n	<div id="smfLatestSmileysWindow" style="overflow: auto;">\\\n		<img src="http://www.simplemachines.org/smf/images/smileys.png" width="102" height="98" style="float: right; margin: 4px;" alt="(package)" />\\\n		<h3 style="margin: 0; padding: 4px;">Smiley of the Moment:</h3>\\\n		<div style="padding: 0 4px;">\\\n			<a href="javascript:smf_packagesMoreInfo(1709);void(0);">Cristalab Emoticon Set 1.0</a>\\\n		</div>'';\n\nwindow.smfLatestSmileys += ''\\\n		<h3 style="margin: 0; padding: 4px;">New Smileys:</h3>\\\n		<ul style="list-style: none; margin-top: 3px; padding: 0 4px;">'';\n\nfor (var i = 0; i < smf_latestSmileys.length; i++)\n{\n	var id_mod = smf_latestSmileys[i];\n\n	window.smfLatestSmileys += ''<li><a href="javascript:smf_packagesMoreInfo('' + id_mod + '');void(0);">'' + smf_smileysInfo[id_mod].name + ''</a></li>'';\n}\n\nwindow.smfLatestSmileys += ''\\\n		</ul>'';\n\nwindow.smfLatestSmileys += ''\\\n	</div>'';\n\nfunction findTop(el)\n{\n	if (typeof(el.tagName) == "undefined")\n		return 0;\n\n	var skipMe = in_array(el.tagName.toLowerCase(), el.parentNode ? ["tr", "tbody", "form"] : []);\n	var coordsParent = el.parentNode ? "parentNode" : "offsetParent";\n\n	if (el[coordsParent] == null || typeof(el[coordsParent].offsetTop) == "undefined")\n		return skipMe ? 0 : el.offsetTop;\n	else\n		return (skipMe ? 0 : el.offsetTop) + findTop(el[coordsParent]);\n}\n\nfunction in_array(item, array)\n{\n	for (var i in array)\n	{\n		if (array[i] == item)\n			return true;\n	}\n\n	return false;\n}', 'text/javascript'),
(6, 'latest-support.js', '/smf/', 'language=%1$s&version=%3$s', 'window.smfLatestSupport = ''<div style="font-size: 0.85em;"><div style="font-weight: bold;">SMF 2.0.5</div>Few vulnerabilities have been fixed in this new release.  Please <a href="http://www.simplemachines.org/download.php">try it</a> before requesting support.</div>'';\n\nif (document.getElementById(''credits''))\n	setInnerHTML(document.getElementById(''credits''), getInnerHTML(document.getElementById(''credits'')).replace(/thank you!/, ''<span onclick="alert(\\''Kupo!\\'');">thank you!</span>''));\n', 'text/javascript'),
(7, 'latest-themes.js', '/smf/', 'language=%1$s&version=%3$s', '\r\nvar smf_themeInfo = {\r\n	2707: {\r\n		name: ''Envision2013'',\r\n		desc: ''This is modern theme for SMF 2.0.x, a rewrite of an earlier theme. It has some options added to it:<br /><br />- option to add extra copyright line<br />- option to add Twitter/facebook/LinkedIn icons.<br />- option to add a custom footer, with 3 columns.<br />- option to show said columns on the right of the forum instead.'',\r\n		file: ''envision2013_smf20_rev3.zip'',\r\n		author: ''Bloc''\r\n	},\r\n	2724: {\r\n		name: ''Golove'',\r\n		desc: ''This theme may not work properly in old and non CSS3 supported browsers.<br /><br />License - Read included text file.<br /><br />License in brief, you can make any changes to this theme to fit your needs, however under no circumstance are you allowed to make any changes to the copyright link.<br /><br /><a href="http://theme.teknoromi.com/index.php?theme=5" class="bbc_link" target="_blank">Demo</a>'',\r\n		file: ''Golove.zip'',\r\n		author: ''snrj''\r\n	},\r\n	2723: {\r\n		name: ''Sinister'',\r\n		desc: ''Dark styled theme in Gray, Black and Red for SMF 2.0.x<br /><br />Features social icons in user bar that can be activated/deactivated and links edited from within current theme options.<br /><br />License - Read included text file.<br /><br />License in brief, you can make any changes to this theme to fit your needs, however under no circumstance are you allowed to make any changes to the copyright link.<br /><br /><img src="http://i.imgur.com/JBaQ77f.png" alt="" width="600" height="384" class="bbc_img resized" /><br /><br /><span style="color: teal;" class="bbc_color">This theme uses css3, therefor may not work correctly in older type browsers.</span><br /><br /><span style="color: teal;" class="bbc_color"><span style="font-size: 14pt;" class="bbc_size">Not recommended for RTL languages.</span></span><br /><br /><a href="http://www.hostxme.com/" class="bbc_link" target="_blank"><span style="color: orange;" class="bbc_color">For More Free Themes</span></a><br /><br />Demo can be seen - <a href="http://smf.hostxme.com" class="bbc_link" target="_blank">http://smf.hostxme.com</a>&nbsp; '',\r\n		file: ''Sinister 2.0.x.zip'',\r\n		author: ''&#039;Trax&#039;''\r\n	},\r\n	2722: {\r\n		name: ''Teknomaxi'',\r\n		desc: ''This theme may not work properly in old and non CSS3 supported browsers.<br /><br />License - Read included text file.<br /><br />License in brief, you can make any changes to this theme to fit your needs, however under no circumstance are you allowed to make any changes to the copyright link.<br /><br /><a href="http://theme.teknoromi.com/index.php?theme=4" class="bbc_link" target="_blank">Demo</a><br /><a href="http://teknoromi.com/index.php" class="bbc_link" target="_blank">Demo2</a>'',\r\n		file: ''Teknomaxi.zip'',\r\n		author: ''snrj''\r\n	},\r\n	910: {\r\n		name: ''Green Fs'',\r\n		desc: ''demo : <a href="http://www.smfdesign.net/" class="bbc_link" target="_blank">www.smfdesign.net</a><br />'',\r\n		file: ''GreenFS.zip'',\r\n		author: ''Fussilet''\r\n	}\r\n};\r\nvar smf_featured = 2707;\r\nvar smf_random = 910;\r\nvar smf_latestThemes = [2724, 2723, 2722];\r\nfunction smf_themesMoreInfo(id)\r\n{\r\n	window.smfLatestThemes_temp = document.getElementById("smfLatestThemesWindow").innerHTML;\n\n	// !!! Why not just always auto?\n	document.getElementById("smfLatestThemesWindow").style.overflow = "auto";\n	setInnerHTML(document.getElementById("smfLatestThemesWindow"),\n	''\\\n		<h3 style="margin: 0; padding: 4px;">'' + smf_themeInfo[id].name + ''</h3>\\\r\n		<h4 style="margin: 0;padding: 4px;"><a href="http://custom.simplemachines.org/themes/index.php?lemma='' + id + ''">View Theme Now!</a></h4>\\\r\n		<div style="overflow: auto;">\\\r\n			<img src="http://custom.simplemachines.org/themes/index.php?action=download;lemma=''+id+'';image=thumb" alt="" style="float: right; margin: 10px;" />\\\r\n			<div style="padding:8px;">'' + smf_themeInfo[id].desc.replace(/<a href/g, ''<a href'') + ''</div>\\\r\n		</div>\\\r\n		<div style="padding: 4px;" class="smalltext"><a href="javascript:smf_themesBack();void(0);">(go back)</a></div>'');\n}\r\n\r\nfunction smf_themesBack()\r\n{\r\n	document.getElementById("smfLatestThemesWindow").style.overflow = "";\n	setInnerHTML(document.getElementById("smfLatestThemesWindow"), window.smfLatestThemes_temp);\n	window.scrollTo(0, findTop(document.getElementById("smfLatestThemesWindow")) - 10);\r\n}\r\n\r\nwindow.smfLatestThemes = ''\\\r\n	<div id="smfLatestThemesWindow">\\\r\n		<div>\\\r\n			<img src="http://www.simplemachines.org/smf/images/themes.png" width="102" height="98" style="float: right; margin: 0 0 10px 10px;" alt="(package)" />\\\r\n			<ul style="list-style: none; padding: 0; margin: 0 0 0 5px;">'';\r\nfor(var i=0; i < smf_latestThemes.length; i++)\r\n{\r\n	var id_theme = smf_latestThemes[i];\r\n	window.smfLatestThemes += ''\\\r\n				<li style="list-style: none;"><a href="javascript:smf_themesMoreInfo('' + id_theme + '');void(0);">'' + smf_themeInfo[id_theme].name + '' by '' + smf_themeInfo[id_theme].author + ''</a></li>'';\r\n}\r\n\r\nwindow.smfLatestThemes += ''\\\r\n			</ul>'';\r\nif ( smf_featured !=0 || smf_random != 0 )\r\n{\r\n\r\n	if ( smf_featured != 0 )\r\n		window.smfLatestThemes += ''\\\r\n				<h4 style="padding: 4px 4px 0 4px; margin: 0;">Featured Theme</h4>\\\r\n				<p style="padding: 0 4px; margin: 0;">\\\r\n					<a href="javascript:smf_themesMoreInfo(''+smf_featured+'');void(0);">''+smf_themeInfo[smf_featured].name + '' by '' + smf_themeInfo[smf_featured].author+''</a>\\\r\n				</p>'';\r\n	if ( smf_random != 0 )\r\n		window.smfLatestThemes += ''\\\r\n				<h4 style="padding: 4px 4px 0 4px;margin: 0;">Theme of the Moment</h4>\\\r\n				<p style="padding: 0 4px; margin: 0;">\\\r\n					<a href="javascript:smf_themesMoreInfo(''+smf_random+'');void(0);">''+smf_themeInfo[smf_random].name + '' by '' + smf_themeInfo[smf_random].author+''</a>\\\r\n				</p>'';\r\n}\r\nwindow.smfLatestThemes += ''\\\r\n		</div>\\\r\n	</div>'';\r\n\r\nfunction findTop(el)\r\n{\r\n	if (typeof(el.tagName) == "undefined")\r\n		return 0;\r\n\r\n	var skipMe = in_array(el.tagName.toLowerCase(), el.parentNode ? ["tr", "tbody", "form"] : []);\r\n	var coordsParent = el.parentNode ? "parentNode" : "offsetParent";\r\n\r\n	if (el[coordsParent] == null || typeof(el[coordsParent].offsetTop) == "undefined")\r\n		return skipMe ? 0 : el.offsetTop;\r\n	else\r\n		return (skipMe ? 0 : el.offsetTop) + findTop(el[coordsParent]);\r\n}\r\n\r\nfunction in_array(item, array)\r\n{\r\n	for (var i in array)\r\n	{\r\n		if (array[i] == item)\r\n			return true;\r\n	}\r\n\r\n	return false;\r\n}', 'text/javascript');

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `smf_ikillattachments`
--

INSERT INTO `smf_ikillattachments` (`id_attach`, `id_thumb`, `id_msg`, `id_member`, `id_folder`, `attachment_type`, `filename`, `file_hash`, `fileext`, `size`, `downloads`, `width`, `height`, `mime_type`, `approved`) VALUES
(1, 0, 0, 2, 1, 0, 'avatar_2_1376912430.png', '967a4ba4f7d14c5cd657c6b9b3e4670b57528d1d', 'png', 7033, 118, 65, 65, 'image/png', 1),
(2, 0, 0, 3, 1, 0, 'avatar_3_1376920058.png', 'ec78b49edd26b84571fb3aefc1b75cc0d0727df3', 'png', 10229, 3, 65, 65, 'image/png', 1);

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=62 ;

--
-- Volcado de datos para la tabla `smf_ikillboards`
--

INSERT INTO `smf_ikillboards` (`id_board`, `id_cat`, `child_level`, `id_parent`, `board_order`, `id_last_msg`, `id_msg_updated`, `member_groups`, `id_profile`, `name`, `description`, `num_topics`, `num_posts`, `count_posts`, `id_theme`, `override_theme`, `unapproved_posts`, `unapproved_topics`, `redirect`, `img_link`, `img_filename`) VALUES
(5, 1, 0, 0, 1, 0, 0, '-1,0,2,9,4,5,6,8,10,11,12,13', 1, 'Bienvenidas/Despedidas y Cumpleaños', '<b>¿Eres nuevo aquí?</b> ven a presentarte aquí.<br>\r\n<b>¿Te vas del Foro?</b>, no te olvides de despedirte...<br>\r\n<b>¿Es tu cumple?</b> ven a celebrarlo. :D', 0, 0, 1, 0, 0, 0, 0, '', '', 'https://cdn0.iconfinder.com/data/icons/ie_yummy/48/cake_13.png'),
(1, 1, 0, 0, 2, 0, 0, '-1,0,2,9,12,10,11,13,4,5,6,8', 1, 'Eventos y noticias sobre el foro', 'Aquí estarán redactados todas las noticias y eventos del Foro.', 0, 0, 0, 0, 0, 0, 0, '', '', 'https://cdn3.iconfinder.com/data/icons/humano2/48x48/apps/internet-news-reader.png'),
(2, 1, 0, 0, 3, 0, 0, '-1,0,2,9,12,10,11,4,5,6,8,13', 1, 'Dudas y sugerencias sobre el Foro', '<b>¿Tienes alguna pregunta o idea para el Foro?</b> Posteala aquí sin miedo.', 0, 0, 0, 0, 0, 0, 0, '', '', 'https://cdn2.iconfinder.com/data/icons/oxygen/48x48/actions/help-contents.png'),
(50, 1, 0, 0, 4, 0, 0, '-1,0,2,9,10,11,12,13', 1, 'Dudas Generales', '<b>¿Una duda te asalta y no sabes donde ponerla?</b> Ponla aquí!', 0, 0, 0, 0, 0, 0, 0, '', '', 'https://cdn1.iconfinder.com/data/icons/CrystalClear/48x48/apps/Community%20Help.png'),
(3, 1, 0, 0, 5, 0, 0, '-1,0,2,9,4,5,6,8,10,11,12,13', 1, 'Foro Libre (Off-Topic)', 'Siéntete libre de hablar aquí de todo con el mundo.', 0, 0, 1, 0, 0, 0, 0, '', '', 'https://cdn1.iconfinder.com/data/icons/nuvola2/48x48/apps/edu_languages.png'),
(4, 2, 0, 0, 6, 0, 0, '-1,0,2,9,4,5,6,8,10,11,12,13', 1, 'Música', 'Comparte tu música favorita, información, recitales, conciertos y demás.', 0, 0, 0, 0, 0, 0, 0, '', '', 'https://cdn4.iconfinder.com/data/icons/STROKE/networking/png/48/headphone.png'),
(6, 2, 0, 0, 7, 2, 2, '-1,0,2,9,4,5,6,8,10,11,12,13', 1, 'Películas, series y vídeos', '<b>Películas y series:</b> toda la información sobre estrenos, trailers, series y televisión.<br>\r\n<b>Vídeos:</b> muéstranos aquellos vídeos que creas necesario compartir con todos en la comunidad.', 1, 1, 0, 0, 0, 0, 0, '', '', 'https://cdn2.iconfinder.com/data/icons/minicons/Png/Video.png'),
(8, 2, 0, 0, 8, 0, 0, '-1,0,2,9,4,5,6,8,10,11,12,13', 1, 'Anime y Manga', 'Aquí podrás compartir tus animes y mangas favoritos!', 0, 0, 0, 0, 0, 0, 0, '', '', 'https://cdn3.iconfinder.com/data/icons/mixed-3d-icons/512/Anime-48.png'),
(7, 2, 0, 0, 9, 0, 0, '-1,0,2,9,4,5,6,8,10,11,12,13', 1, 'Juegos y demás (Zona Gamer)', 'Comparte tus juegos favoritos con todos los usuarios.', 0, 0, 0, 0, 0, 0, 0, '', '', 'https://cdn3.iconfinder.com/data/icons/humano2/48x48/emblems/emblem-games.png'),
(15, 2, 0, 0, 10, 0, 0, '-1,0,2,9,4,5,6,8,10,11,12,13', 1, 'Literatura y cómics', 'Punto de encuentro de los fans del papel, letras y viñetas.', 0, 0, 0, 0, 0, 0, 0, '', '', 'https://cdn0.iconfinder.com/data/icons/48_px_web_icons/48/Book.png'),
(11, 3, 0, 0, 11, 0, 0, '-1,0,2,9,4,5,6,8,10,11,12,13', 1, 'Noticias', 'Toda la actualidad, debates, y opiniones aquí.', 0, 0, 0, 0, 0, 0, 0, '', '', 'https://cdn2.iconfinder.com/data/icons/gnomeicontheme/48x48/stock/generic/stock_news.png'),
(9, 3, 0, 0, 12, 0, 0, '-1,0,2,9,4,5,6,8,10,11,12,13', 1, 'Humor', 'Pon aquí todos tus chistes, historias y paranoias divertidas.', 0, 0, 0, 0, 0, 0, 0, '', '', 'https://cdn3.iconfinder.com/data/icons/humano2/48x48/emotes/face-laugh.png'),
(12, 3, 0, 0, 13, 0, 0, '-1,0,2,9,4,5,6,8,10,11,12,13', 1, 'Cine y TV', 'El mundo del celuloide y la caja tonta, al descubierto.', 0, 0, 0, 0, 0, 0, 0, '', '', 'https://cdn1.iconfinder.com/data/icons/CrystalClear/48x48/devices/tv.png'),
(10, 3, 0, 0, 14, 0, 0, '-1,0,2,9,4,5,6,8,10,11,12,13', 1, 'Deportes y motor', '<b>Deporte:</b> actualidad deportiva sobre fútbol, baloncesto, tenis, etc.<br>\r\n<b>Motor:</b> subforo para los apasionados del motor y competición sobre ruedas.', 0, 0, 0, 0, 0, 0, 0, '', '', 'https://cdn4.iconfinder.com/data/icons/SOPHISTIQUE/education_icons/png/48/recreation.png'),
(14, 3, 0, 0, 15, 0, 0, '-1,0,2,9,4,5,6,8,10,11,12,13', 1, 'Ciencia y ecología', 'Hablemos sobre la vertiente más natural y sostenible de la vida.', 0, 0, 0, 0, 0, 0, 0, '', '', 'https://cdn0.iconfinder.com/data/icons/Free-Icons-Shimmer-01-Creative-Freedom/48/recycle.png'),
(16, 3, 0, 0, 16, 0, 0, '-1,0,2,9,4,5,6,8,10,11,12,13', 1, 'Arte', 'Si tienes una vena artística, aquí te sentirás como en casa.', 0, 0, 0, 0, 0, 0, 0, '', '', 'https://cdn4.iconfinder.com/data/icons/SUPERVISTA/graphics/png/48/palette.png'),
(17, 4, 0, 0, 17, 0, 0, '-1,0,2,9,4,5,6,8,10,11,12,13', 1, 'Hardware &amp; Software', '<b>Hardware:</b> procesadores, tarjetas, monitores, accesorios, componentes...<br>\r\n<b>Software:</b> utilidades, drivers y mucho más.', 0, 0, 0, 0, 0, 0, 0, '', '', 'https://cdn4.iconfinder.com/data/icons/VISTA/computer_gadgets/png/48/desktop_computer.png'),
(25, 4, 1, 17, 18, 0, 0, '-1,0,2,9,4,5,6,8,10,11,12,13', 1, 'Hardware', '', 0, 0, 0, 0, 0, 0, 0, '', '', ''),
(29, 4, 1, 17, 19, 0, 0, '-1,0,2,9,10,11,12,13', 1, 'Software', '', 0, 0, 0, 0, 0, 0, 0, '', '', ''),
(21, 4, 0, 0, 20, 0, 0, '-1,0,2,9,4,5,6,8,10,11,12,13', 1, 'Sistemas Operativos', 'Windows, GNU/Linux, Mac Os, Android, y demás...', 0, 0, 0, 0, 0, 0, 0, '', '', 'https://cdn0.iconfinder.com/data/icons/yooicons_set01_socialbookmarks/48/social_windows_button.png'),
(46, 4, 1, 21, 21, 0, 0, '-1,0,2,9,10,11,12,13', 1, 'Windows', '', 0, 0, 0, 0, 0, 0, 0, '', '', ''),
(47, 4, 1, 21, 22, 0, 0, '-1,0,2,9,10,11,12,13', 1, 'GNU/Linux', '', 0, 0, 0, 0, 0, 0, 0, '', '', ''),
(48, 4, 1, 21, 23, 0, 0, '-1,0,2,9,10,11,12,13', 1, 'Mac Os', '', 0, 0, 0, 0, 0, 0, 0, '', '', ''),
(49, 4, 1, 21, 24, 0, 0, '-1,0,2,9,10,11,12,13', 1, 'Android', '', 0, 0, 0, 0, 0, 0, 0, '', '', ''),
(24, 4, 0, 0, 25, 0, 0, '-1,0,2,9,4,5,6,8,10,11,12,13', 1, 'Diseño Gráfico', '<b>¿Eres GFX o tienes afición por el Photoshop?</b> Postea aquí todas tus creaciones.', 0, 0, 0, 0, 0, 0, 0, '', '', 'https://cdn4.iconfinder.com/data/icons/X-Mac/web_design/png/48/graphic_design.png'),
(45, 4, 0, 0, 26, 0, 0, '-1,0,2,9,10,11,12,13', 1, 'Consolas', 'Todo sobre los creadores de Microsoft, Nintendo y Sony. Más algunos no tan conocidos como son los <b>emuladores</b>.', 0, 0, 0, 0, 0, 0, 0, '', '', 'https://cdn3.iconfinder.com/data/icons/iconshock_vista_consoles/png/48/console4.png'),
(57, 4, 1, 45, 27, 0, 0, '-1,0,2,9,10,11,12,13', 1, 'PC', '', 0, 0, 0, 0, 0, 0, 0, '', '', ''),
(53, 4, 1, 45, 28, 0, 0, '-1,0,2,9,10,11,12,13', 1, 'Xbox: One, 360', '', 0, 0, 0, 0, 0, 0, 0, '', '', ''),
(54, 4, 1, 45, 29, 0, 0, '-1,0,2,9,10,11,12,13', 1, 'PS X: 1, 2, 3, 4, Vita', '', 0, 0, 0, 0, 0, 0, 0, '', '', ''),
(55, 4, 1, 45, 30, 0, 0, '-1,0,2,9,10,11,12,13', 1, 'Wii U', '', 0, 0, 0, 0, 0, 0, 0, '', '', ''),
(58, 4, 1, 45, 31, 0, 0, '-1,0,2,9,10,11,12,13', 1, 'Nintendo: 64, DS Lite, DSi, 3DS', '', 0, 0, 0, 0, 0, 0, 0, '', '', ''),
(56, 4, 1, 45, 32, 0, 0, '-1,0,2,9,10,11,12,13', 1, 'Retro Gaming', '', 0, 0, 0, 0, 0, 0, 0, '', '', ''),
(60, 4, 1, 45, 33, 0, 0, '-1,0,2,9,10,11,12,13', 1, 'Emuladores', '', 0, 0, 0, 0, 0, 0, 0, '', '', ''),
(20, 4, 0, 0, 34, 0, 0, '-1,0,2,9,4,5,6,8,10,11,12,13', 1, 'Móviles &amp; Telefonía', 'Consultas sobre móviles y telefonía.', 0, 0, 0, 0, 0, 0, 0, '', '', 'https://cdn3.iconfinder.com/data/icons/prettyoffice/48/contact.png'),
(18, 4, 0, 0, 35, 0, 0, '-1,0,2,9,4,5,6,8,10,11,12,13', 1, 'Redes e Internet', 'Preguntas y respuestas sobre conexiones, información técnica y locuras de la red. Todo lo que necesitas saber sobre la red.', 0, 0, 0, 0, 0, 0, 0, '', '', 'https://cdn1.iconfinder.com/data/icons/glaze/48x48/filesystems/network.png'),
(22, 4, 0, 0, 36, 0, 0, '-1,0,2,9,4,5,6,8,10,11,12,13', 1, 'Programación', 'Todos los lenguajes desde cmd hasta c++, pasando por php, html, js, .net, asp, actionscript, java, mysql , etc.', 0, 0, 0, 0, 0, 0, 0, '', '', 'http://cdn.assets.sites.launchrocketship.com/9d77b262-f903-4dd1-81a8-ff5909387a0c/files/a36edd2e-1437-4645-87db-a80e09904f1b/code-icon.png'),
(34, 4, 1, 22, 37, 0, 0, '-1,0,2,9,10,11,12,13', 1, 'Desarrollo Web', '', 0, 0, 0, 0, 0, 0, 0, '', '', ''),
(35, 4, 2, 34, 38, 0, 0, '-1,0,2,9,10,11,12,13', 1, 'PHP', '', 0, 0, 0, 0, 0, 0, 0, '', '', ''),
(36, 4, 2, 34, 39, 0, 0, '-1,0,2,9,10,11,12,13', 1, 'Bases de Datos', '', 0, 0, 0, 0, 0, 0, 0, '', '', ''),
(37, 4, 1, 22, 40, 0, 0, '-1,0,2,9,10,11,12,13', 1, 'Programación general', '', 0, 0, 0, 0, 0, 0, 0, '', '', ''),
(38, 4, 2, 37, 41, 0, 0, '-1,0,2,9,10,11,12,13', 1, 'Java', '', 0, 0, 0, 0, 0, 0, 0, '', '', ''),
(39, 4, 2, 37, 42, 0, 0, '-1,0,2,9,10,11,12,13', 1, 'ASM', '', 0, 0, 0, 0, 0, 0, 0, '', '', ''),
(40, 4, 2, 37, 43, 0, 0, '-1,0,2,9,10,11,12,13', 1, 'Delphi', '', 0, 0, 0, 0, 0, 0, 0, '', '', ''),
(59, 4, 1, 22, 44, 0, 0, '-1,0,2,9,10,11,12,13', 1, 'Scripting', '', 0, 0, 0, 0, 0, 0, 0, '', '', ''),
(42, 4, 1, 22, 45, 0, 0, '-1,0,2,9,10,11,12,13', 1, '.NET', '', 0, 0, 0, 0, 0, 0, 0, '', '', ''),
(43, 4, 1, 22, 46, 0, 0, '-1,0,2,9,10,11,12,13', 1, 'Visual Basic', '', 0, 0, 0, 0, 0, 0, 0, '', '', ''),
(44, 4, 1, 22, 47, 0, 0, '-1,0,2,9,10,11,12,13', 1, 'Programación C / C++', '', 0, 0, 0, 0, 0, 0, 0, '', '', ''),
(41, 4, 1, 22, 48, 0, 0, '-1,0,2,9,10,11,12,13', 1, 'Ejercicios', '', 0, 0, 0, 0, 0, 0, 0, '', '', ''),
(19, 4, 0, 0, 49, 0, 0, '-1,0,2,9,4,5,6,8,10,11,12,13', 1, 'Hacking, Seguridad, Bugs, Diseño de Malware', 'Dudas y tutoriales sobre Hacking, Seguridad, Bugs, Diseño de Malware, y más.', 0, 0, 0, 0, 0, 0, 0, '', '', 'https://cdn3.iconfinder.com/data/icons/humano2/48x48/apps/guake.png'),
(30, 4, 1, 19, 50, 0, 0, '-1,0,2,9,10,11,12,13', 1, 'Hacking', '', 0, 0, 0, 0, 0, 0, 0, '', '', ''),
(31, 4, 1, 19, 51, 0, 0, '-1,0,2,9,10,11,12,13', 1, 'Seguridad', '', 0, 0, 0, 0, 0, 0, 0, '', '', ''),
(32, 4, 1, 19, 52, 0, 0, '-1,0,2,9,10,11,12,13', 1, 'Bugs &amp; Exploits', '', 0, 0, 0, 0, 0, 0, 0, '', '', ''),
(33, 4, 1, 19, 53, 0, 0, '-1,0,2,9,10,11,12,13', 1, 'Análisis y diseño de Malware', '', 0, 0, 0, 0, 0, 0, 0, '', '', ''),
(61, 4, 0, 0, 54, 0, 0, '-1,0,2,9,10,11,12,13', 1, 'Electrónica', 'Guías y dudas sobre electrónica.', 0, 0, 0, 0, 0, 0, 0, '', '', 'https://cdn1.iconfinder.com/data/icons/nuvola2/48x48/actions/laptop_power.png'),
(26, 5, 0, 0, 55, 0, 0, '', 1, 'Foro Administradores', '', 0, 0, 0, 0, 0, 0, 0, '', '', ''),
(27, 5, 0, 0, 56, 0, 0, '2', 1, 'Foro Moderadores', '', 0, 0, 0, 0, 0, 0, 0, '', '', ''),
(28, 5, 0, 0, 57, 0, 0, '2,9,13,12,11', 1, 'Foro Colaboradores', '', 0, 0, 0, 0, 0, 0, 0, '', '', ''),
(23, 5, 0, 0, 58, 0, 0, '2,9,12,13,11', 1, 'Papelera del foro', 'Papelera', 0, 0, 0, 0, 0, 0, 0, '', '', 'https://cdn1.iconfinder.com/data/icons/humility-icons-MERGE/48x48/filesystems/gnome-fs-trash-empty.png');

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
(0, 1, 'send_topic', 1),
(0, 1, 'report_any', 1),
(0, 1, 'mark_notify', 1),
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
(0, 1, 'poll_vote', 1),
(0, 1, 'mark_any_notify', 1),
(9, 1, 'mark_any_notify', 1),
(9, 1, 'poll_remove_own', 1),
(9, 1, 'poll_view', 1),
(9, 1, 'poll_vote', 1),
(9, 1, 'poll_post', 1),
(9, 1, 'move_own', 1),
(9, 1, 'poll_add_own', 1),
(9, 1, 'poll_edit_own', 1),
(9, 1, 'poll_lock_own', 1),
(0, 1, 'poll_view', 1),
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
(12, 4, 'view_attachments', 1);

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `smf_ikillcategories`
--

INSERT INTO `smf_ikillcategories` (`id_cat`, `cat_order`, `name`, `can_collapse`) VALUES
(1, 0, 'Foro NexusPlayers!', 1),
(2, 1, 'Entretenimiento', 1),
(3, 2, 'Temas generales', 1),
(4, 3, 'Tecnología', 1),
(5, 4, 'Foro privado', 1);

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=46 ;

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
(45, 3, 1376929836, 1, '2.138.62.77', 'edit_board', 1, 0, 0, 'a:0:{}');

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
('2013-08-20', 0, 0, 0, 0, 1);

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

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
(1, 1, 2),
(1, 5, 1),
(1, 25, 0),
(1, 34, 0),
(1, 35, 0),
(1, 22, 0),
(2, 2, 0),
(2, 3, 4),
(2, 21, 0),
(2, 46, 0),
(2, 61, 0),
(2, 1, 0),
(1, 2, 0),
(1, 3, 2),
(1, 6, 2),
(2, 6, 2),
(3, 5, 3),
(1, 23, 2);

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
(4, 4, 'remove', 0, 0);

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

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
('186.159.64.1', 1376930821, 'register'),
('2.138.62.77', 1376923727, 'login'),
('212.145.90.172', 1376920827, 'post'),
('2.138.62.77', 1376933832, 'pm');

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
('ip46.236.24.50', 1377030374, 0, 0, 787224626, 'a:1:{s:10:"USER_AGENT";s:66:"Mozilla/5.0 (compatible; TweetmemeBot/3.0; +http://tweetmeme.com/)";}'),
('ip66.220.152.114', 1377030315, 0, 0, 1121753202, 'a:1:{s:10:"USER_AGENT";s:73:"facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)";}'),
('ip65.52.241.141', 1377030329, 0, 0, 1093988749, 'a:1:{s:10:"USER_AGENT";s:64:"Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.1; Trident/6.0)";}'),
('ip79.151.232.143', 1377030283, 0, 0, 1335355535, 'a:2:{s:6:"action";s:5:"forum";s:10:"USER_AGENT";s:108:"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/28.0.1500.95 Safari/537.36";}');

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `smf_ikilllog_packages`
--

INSERT INTO `smf_ikilllog_packages` (`id_install`, `filename`, `package_id`, `name`, `version`, `id_member_installed`, `member_installed`, `time_installed`, `id_member_removed`, `member_removed`, `time_removed`, `install_state`, `failed_steps`, `themes_installed`, `db_changes`) VALUES
(1, 'DefaultAvatarForSMF2x.zip', 'sid2varun:default_avatar', 'Default Avatar', '2.2', 1, 'Ikillnukes', 1376830646, 0, '0', 0, 1, 'a:0:{}', '1', ''),
(2, 'ImagesOnBoard2.1.zip', 'JB:IOB', 'Images On Board', '2.1', 1, 'Ikillnukes', 1376843231, 0, '0', 0, 1, 'a:0:{}', '1', ''),
(3, 'karma_groups.zip', 'anthony:karma_groups', 'Karma based groups', '1.0', 1, 'Ikillnukes', 1376922883, 1, 'Ikillnukes', 1376923215, 0, 'a:0:{}', '1', ''),
(4, 'YouTube_BBCode_v2.6.zip', 'karlbenson:youtubebbcode', 'YouTube BBCode', '2.6', 1, 'Ikillnukes', 1376926751, 0, '0', 0, 1, 'a:0:{}', '1', '');

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=18 ;

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
(17, 3, 1377030160, 0);

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
('abierta', 2),
('cerrar', 2),
('cómo', 2),
('cuando', 2),
('está', 2),
('puerta', 2),
('una', 2);

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
(2, 2, 2),
(1, 2, 2);

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Volcado de datos para la tabla `smf_ikillmembers`
--

INSERT INTO `smf_ikillmembers` (`id_member`, `member_name`, `date_registered`, `posts`, `id_group`, `lngfile`, `last_login`, `real_name`, `instant_messages`, `unread_messages`, `new_pm`, `buddy_list`, `pm_ignore_list`, `pm_prefs`, `mod_prefs`, `message_labels`, `passwd`, `openid_uri`, `email_address`, `personal_text`, `gender`, `birthdate`, `website_title`, `website_url`, `location`, `icq`, `aim`, `yim`, `msn`, `hide_email`, `show_online`, `time_format`, `signature`, `time_offset`, `avatar`, `pm_email_notify`, `karma_bad`, `karma_good`, `usertitle`, `notify_announcements`, `notify_regularity`, `notify_send_body`, `notify_types`, `member_ip`, `member_ip2`, `secret_question`, `secret_answer`, `id_theme`, `is_activated`, `validation_code`, `id_msg_last_visit`, `additional_groups`, `smiley_set`, `id_post_group`, `total_time_logged_in`, `password_salt`, `ignore_boards`, `warning`, `passwd_flood`, `pm_receive_from`) VALUES
(1, 'Ikillnukes', 1376827601, 0, 1, '', 1376934580, 'Ikillnukes', 1, 0, 0, '', '', 0, '', '', '23aa1a13191fb940e3e2bd66280670b6f433060a', '', 'ikillnukes1@gmail.com', '', 0, '0001-01-01', '', '', '', '', '', '', '', 0, 1, '', '', 0, '', 0, 0, 0, '', 1, 1, 0, 2, '2.138.62.77', '2.138.62.77', '', '', 0, 1, '', 2, '', '', 4, 51304, '7d1e', '', 0, '1377029537|1', 1),
(2, 'Alex', 1376911660, 1, 13, 'spanish_es-utf8', 1376933812, 'Roster', 0, 0, 0, '', '', 0, '', '', '2c682806b3c25ac9ca6bebef93ee26d9e609eb58', '', 'alexcondite94@hotmail.com', 'Probando esto y tal', 1, '1994-06-16', 'http://elpapelillo.wordpress.com', 'http://Blog', 'Alicante', '', '', '', '', 0, 1, '%B %d, %Y, %H:%M:%S', '', 0, '', 1, 0, 0, '', 1, 1, 0, 2, '212.145.90.172', '212.145.90.172', '¿Qué sabes que yo sé que tú no sabes porque sabemos que lo sabías con sabia sabiduría por no saber nada de lo que ya sabías antes de que lo supiera tu primo?', '', 3, 1, '', 2, '', '', 4, 8455, '4fe5', '', 0, '', 1),
(3, 'Cristymc5', 1376915797, 0, 0, '', 1376920674, 'Cristymc5', 0, 0, 0, '', '', 0, '', '', 'febc36e5d6361c206ada71ec3264c1d6ebd2c955', '', 'cristymc5@gmail.com', '', 2, '1998-07-28', '', '', '', '', '', '', '', 0, 1, '', '', 0, '', 1, 0, 0, '', 1, 1, 0, 2, '87.111.9.146', '87.111.9.146', '', '', 0, 1, '', 0, '', '', 4, 2284, '7e01', '', 0, '', 1),
(4, 'miguel93041', 1376922737, 0, 0, '', 1376922738, 'miguel93041', 0, 0, 0, '', '', 0, '', '', '829dbd36b6d03ed9b04ab08c50e631abed41a166', '', 'miguelgrafe001@hotmail.com', '', 0, '0001-01-01', '', '', '', '', '', '', '', 1, 1, '', '', 0, '', 1, 0, 0, '', 1, 1, 0, 2, '88.1.204.51', '88.1.204.51', '', '', 0, 1, '', 2, '', '', 4, 0, 'cc55', '', 0, '', 1),
(5, 'Theprim0', 1376925805, 0, 0, '', 1376925927, 'Theprim0', 0, 0, 0, '', '', 0, '', '', '9d7590bae36307f0104d27dc16a33b7fddc12a6b', '', 'arturo_r_k@hotmail.com', '', 0, '0001-01-01', '', '', '', '', '', '', '', 0, 1, '', '', 0, '', 1, 0, 0, '', 1, 1, 0, 2, '37.14.240.51', '37.14.240.51', '', '', 0, 1, '', 2, '', '', 4, 0, '0f7d', '', 0, '', 1),
(6, 'amchacon', 1376930474, 0, 0, '', 1376930475, 'amchacon', 0, 0, 0, '', '', 0, '', '', 'de5a9167547a18fc4504de77045c9759ea4b9be1', '', 'miachm3@gmail.com', '', 0, '0001-01-01', '', '', '', '', '', '', '', 1, 1, '', '', 0, '', 1, 0, 0, '', 1, 1, 0, 2, '81.202.131.124', '81.202.131.124', '', '', 0, 1, '', 2, '', '', 4, 0, '3a44', '', 0, '', 1),
(7, 'Jonathan', 1376930820, 0, 0, '', 1376930887, 'Jonathan', 0, 0, 0, '', '', 0, '', '', '6cc44fdb0c9902512eb4ba68ca48e3938bc20578', '', 'zapata.6452@hotmail.com', '', 0, '0001-01-01', '', '', '', '', '', '', '', 0, 1, '', '', 0, '', 1, 0, 0, '', 1, 1, 0, 2, '186.159.64.1', '186.159.64.1', '', '', 0, 1, '', 2, '', '', 4, 352, '6192', '', 0, '', 1);

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `smf_ikillmessages`
--

INSERT INTO `smf_ikillmessages` (`id_msg`, `id_topic`, `id_board`, `poster_time`, `id_member`, `id_msg_modified`, `subject`, `poster_name`, `poster_email`, `poster_ip`, `smileys_enabled`, `modified_time`, `modified_name`, `body`, `icon`, `approved`) VALUES
(2, 2, 6, 1376919154, 2, 2, 'Cómo cerrar una puerta cuando está abierta', 'Alex', 'alexcondite94@hotmail.com', '212.145.90.172', 1, 0, '', 'http://www.youtube.com/watch?v=n2_LWlKkRYQ', 'lamp', 1);

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `smf_ikillpersonal_messages`
--

INSERT INTO `smf_ikillpersonal_messages` (`id_pm`, `id_pm_head`, `id_member_from`, `deleted_by_sender`, `from_name`, `msgtime`, `subject`, `body`) VALUES
(1, 1, 2, 0, 'Alex', 1376930833, 'Borrador de normas', '[b][center][size=22pt][b][u]NORMAS DEL FORO[/u][/b][/size][/center]<br /><br />[size=12pt][b]1. COMPORTAMIENTO Y ACTITUD[/b][/size]<br />[list][li][b]1.1. Foro[/b] El foro y chat de NexusPlayers es el núcleo central de la web, y allí se desarrollarán todas las actividades.<br />[list][li][b]1.2. Respeto.[/b] Los usuarios se comprometen al entrar en la comunidad a escribir y expresar sus opiniones desde el respeto. Está prohibido insultar, amenazar, provocar, enzarzarse en discusiones perjudiciales y, en definitiva, faltar al respeto a otros usuarios en el foro y menos sin motivos.[/li]<br />[li][b]1.3. Denunciar.[/b] Todos los usuarios tienen derecho a denunciar todos los hechos que se consideren incorrectos acaecidos en el foro. Para denunciarlo, basta con reportar el mensaje tal y como se indica en el apartado 2.4. de las normas.[/li]<br />[li][b]1.4. Multicuenta.[/b] Está terminantemente prohibido que una persona física use, cree o dé permiso a crear más de una cuenta de usuario para sí mismo. Igualmente está prohibido que una misma cuenta de usuario esté usada por más de una persona. En caso de que más de un usuario se conecte o se registre desde la misma dirección IP que otro usuario ya registrado, éste último deberá comunicarlo al administrador lo antes posible.[/li]<br />[li][b]1.5. Decisiones.[/b] La administración y moderación de NexusPlayers se reserva el derecho a tener opinión propia para interpretar los sucesos acontecidos del foro para evitar de esta forma posibles vacíos legales.[/li][/list]<br /><br /><br />[size=12pt][b]2. CONTENIDO Y UBICACIÓN DE LOS MENSAJES[/b][/size]<br />[list][li][b]2.1. Temas prohibidos.[/b] Está totalmente prohibido escribir en el foro mensajes con contenido racista, xenófobo, violento, o que haga apología de conductas antiéticas en general. Asimismo, están terminantemente prohibidas las conductas que atenten contra la legislación española vigente, inclusive la publicación de datos privados o personales sin consentimiento y la publicación de imágenes con contenido pornográfico o referente al sexo (por ejemplo, queda prohibido desde publicar mensajes privados en el foro, hasta publicar imágenes discretas o personales de alguien sin su consentimiento).[/li]<br />[li][b]2.2. Lenguaje.[/b] El usuario debe escribir su mensaje en el subforo correspondiente en lengua castellana (salvo que se cree un hilo específico para hablar en otra lengua, o desee comunicarse con miembros extranjeros). No se debe abusar de las mayúsculas y se debe respetar en la mayor medida de lo posible la ortografía del idioma. Se ruega intentar evitar a toda costa todo tipo de errores ortográficos, incluyendo el lenguaje &quot;SMS&quot;.[/li]<br />[li][b]2.3. Prácticas ilegales.[/b] No se permite responder a un tema con más de 120 días sin respuesta salvo que sea para aportar o para intentar resolver algo que no haya sido solucionado. Tampoco se permite hacer publicidad o anunciar cualquier enlace de otras páginas webs con fines publicitarios o autopromocionales (por ejemplo, enlaces a sitios de publicidad o con los que el usuario obtenga beneficios sin antes haber solicitado una autorización a la administración). Asímismo, se prohibe que un usuario escriba múltiples posts con muy escaso contenido (por ejemplo, escribir un emoticono como respuesta a un hilo, o cualquier frase fuera de contexto).[/li]<br />[li][b]2.4. Reportar al moderador.[/b] Si un usuario cree que un mensaje del foro debe ser denunciado, eliminado o modificado, o cree que un hilo (propio o ajeno) debe ser cerrado por un motivo, deberá comunicarlo usando la opción &quot;Reportar al moderador&quot; en la parte inferior derecha del mismo. No se permite abusar de este elemento de manera injustificada o por males menores de manera reiterada.[/li][/list]<br /><br /><br />[size=12pt][b]3. NICKS, AVATARES Y FIRMAS[/b][/size]<br />[list][li][b]3.1. Respeto de las normas.[/b] El nick (nombre de usuario), avatar (imagen que identifica al usuario, debajo de su nombre) y firma (texto o imágenes que se incluye al final de cada mensaje del usuario) deben respetar todas las normas expresadas con anterioridad.[/li]<br />[li][b]3.2. Cambios.[/b] Los usuarios que deseen cambiar su avatar, firma y nick podrán hacerlo en su perfil en cualquier momento. Los cambios de nick solo afectan a la visibilidad en el foro, manteniéndose así el mismo nick de cuenta principal siempre para iniciar sesión en el foro.[/li]<br />[li][b]3.3. Tamaño.[/b] El tamaño máximo para los avatares es de [color=red](inserte aquí medida en píxeles)[/color]. Las firmas pueden contener texto y/o imágenes, y no deben de exceder el tamaño de [color=red](inserte aquí medida en píxeles)[/color].[/list]');

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
(1, 1, '-1', 0, 1, 0, 0);

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
(1, 1377039600, 0, 2, 'h', 0, 'approval_notification'),
(2, 1377388800, 0, 7, 'd', 0, 'auto_optimize'),
(3, 1377126060, 60, 1, 'd', 0, 'daily_maintenance'),
(5, 1377126000, 0, 1, 'd', 0, 'daily_digest'),
(6, 1377388800, 0, 1, 'w', 0, 'weekly_digest'),
(7, 1377117960, 164804, 1, 'd', 0, 'fetchSMfiles'),
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
('5f4fcc48c0d0f77ad3eee40fb5e92ba6', 1377030374, 'session_value|s:32:"999d92cf6a746d7340ed40e0daeab7d8";session_var|s:11:"b5e3021e9a9";robot_check|i:1377030374;mc|a:7:{s:4:"time";i:1377030374;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377030374;s:9:"id_member";i:0;s:2:"ip";s:12:"46.236.24.50";s:3:"ip2";s:12:"46.236.24.50";s:5:"email";s:0:"";}log_time|i:1377030374;timeOnlineUpdated|i:1377030374;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:66:"Mozilla/5.0 (compatible; TweetmemeBot/3.0; +http://tweetmeme.com/)";'),
('62759d98f157fca5cae5588be0863a60', 1377030329, 'session_value|s:32:"3ff9eab2a079357723f1f664c03bb5af";session_var|s:9:"dcc048e75";robot_check|i:1377030329;mc|a:7:{s:4:"time";i:1377030329;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377030329;s:9:"id_member";i:0;s:2:"ip";s:13:"65.52.241.141";s:3:"ip2";s:13:"65.52.241.141";s:5:"email";s:0:"";}log_time|i:1377030329;timeOnlineUpdated|i:1377030329;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:64:"Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.1; Trident/6.0)";'),
('a131149c149a52b6ad367e5c446910c2', 1377030283, 'session_value|s:32:"b5d155a49bdb4b73c84236af18d72a6b";session_var|s:7:"e8ea1ec";mc|a:7:{s:4:"time";i:1377029537;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}robot_check|i:1377030116;ban|a:5:{s:12:"last_checked";i:1377030283;s:9:"id_member";i:0;s:2:"ip";s:14:"79.151.232.143";s:3:"ip2";s:14:"79.151.232.143";s:5:"email";s:0:"";}log_time|i:1377030283;timeOnlineUpdated|i:1377029537;old_url|s:54:"http://nexusplayers.x10host.com/index.php?action=forum";USER_AGENT|s:108:"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/28.0.1500.95 Safari/537.36";last_read_topic|i:2;forms|a:0:{}'),
('f7760efef43d2b91acf909241a7116a5', 1377030315, 'session_value|s:32:"21fa40183fe972902265843d03825f78";session_var|s:11:"ecbd88ba6c3";robot_check|i:1377030315;mc|a:7:{s:4:"time";i:1377030315;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1377030315;s:9:"id_member";i:0;s:2:"ip";s:14:"66.220.152.114";s:3:"ip2";s:14:"66.220.152.114";s:5:"email";s:0:"";}log_time|i:1377030315;timeOnlineUpdated|i:1377030315;old_url|s:41:"http://nexusplayers.x10host.com/index.php";USER_AGENT|s:73:"facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)";');

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
('mostOnline', '10'),
('mostOnlineToday', '1'),
('mostDate', '1376921148'),
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
('totalMembers', '7'),
('totalTopics', '1'),
('totalMessages', '1'),
('simpleSearch', '0'),
('censor_vulgar', ''),
('censor_proper', ''),
('enablePostHTML', '0'),
('theme_allow', '1'),
('theme_default', '1'),
('theme_guests', '3'),
('enableEmbeddedFlash', '0'),
('xmlnews_enable', '1'),
('xmlnews_maxlen', '255'),
('hotTopicPosts', '15'),
('hotTopicVeryPosts', '25'),
('registration_method', '0'),
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
('banLastUpdated', '0'),
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
('maxMsgID', '2'),
('enableAllMessages', '0'),
('fixLongWords', '0'),
('knownThemes', '1,2,3'),
('who_enabled', '1'),
('time_offset', '0'),
('cookieTime', '60'),
('lastActive', '60'),
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
('settings_updated', '1376930011'),
('next_task_time', '1377039600'),
('warning_settings', '0,20,0'),
('warning_watch', '0'),
('warning_moderate', '0'),
('warning_mute', '0'),
('admin_features', 'cd,k,ml,pm,sp'),
('last_mod_report_action', '1376921085'),
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
('memberlist_updated', '1376930820'),
('latestMember', '7'),
('latestRealName', 'Jonathan'),
('rand_seed', '1884509880'),
('mostOnlineUpdated', '2013-08-20'),
('enable_default_avatar', '1'),
('default_avatar_url', 'http://nexusplayers.x10host.com/Themes/ikillcraft/images/default_avatar.png'),
('calendar_updated', '1376922335'),
('spider_name_cache', 'a:19:{i:1;s:6:"Google";i:2;s:6:"Yahoo!";i:3;s:3:"MSN";i:4;s:15:"Google (Mobile)";i:5;s:14:"Google (Image)";i:6;s:16:"Google (AdSense)";i:7;s:16:"Google (Adwords)";i:8;s:15:"Yahoo! (Mobile)";i:9;s:14:"Yahoo! (Image)";i:10;s:12:"MSN (Mobile)";i:11;s:11:"MSN (Media)";i:12;s:4:"Cuil";i:13;s:3:"Ask";i:14;s:5:"Baidu";i:15;s:9:"Gigablast";i:16;s:15:"InternetArchive";i:17;s:5:"Alexa";i:18;s:6:"Omgili";i:19;s:9:"EntireWeb";}'),
('modlog_enabled', '1'),
('spider_mode', '1');

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
(1, 3, 'use_sidebar_menu', '1'),
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
(7, 1, 'display_quick_reply', '1');

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `smf_ikilltopics`
--

INSERT INTO `smf_ikilltopics` (`id_topic`, `is_sticky`, `id_board`, `id_first_msg`, `id_last_msg`, `id_member_started`, `id_member_updated`, `id_poll`, `id_previous_board`, `id_previous_topic`, `num_replies`, `num_views`, `locked`, `unapproved_posts`, `approved`) VALUES
(2, 0, 6, 2, 2, 2, 2, 0, 0, 0, 0, 4, 0, 0, 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
