-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le : dim. 22 fév. 2026 à 19:54
-- Version du serveur : 8.0.44
-- Version de PHP : 8.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `Wordpress`
--

-- --------------------------------------------------------

--
-- Structure de la table `wp_wordpresscommentmeta`
--

CREATE TABLE `wp_wordpresscommentmeta` (
  `meta_id` bigint UNSIGNED NOT NULL,
  `comment_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_wordpresscomments`
--

CREATE TABLE `wp_wordpresscomments` (
  `comment_ID` bigint UNSIGNED NOT NULL,
  `comment_post_ID` bigint UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_wordpresscomments`
--

INSERT INTO `wp_wordpresscomments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Un commentateur ou commentatrice WordPress', 'wapuu@wordpress.example', 'https://fr.wordpress.org/', '', '2026-02-11 22:24:06', '2026-02-11 21:24:06', 'Bonjour, ceci est un commentaire.\nPour débuter avec la modération, la modification et la suppression de commentaires, veuillez visiter l’écran des Commentaires dans le Tableau de bord.\nLes avatars des personnes qui commentent arrivent depuis <a href=\"https://fr.gravatar.com/\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_wordpresslinks`
--

CREATE TABLE `wp_wordpresslinks` (
  `link_id` bigint UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_wordpressoptions`
--

CREATE TABLE `wp_wordpressoptions` (
  `option_id` bigint UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_wordpressoptions`
--

INSERT INTO `wp_wordpressoptions` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'cron', 'a:12:{i:1771791731;a:1:{s:24:\"flamingo_hourly_cron_job\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1771791846;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1771795446;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1771795455;a:3:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1771795457;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1771799046;a:1:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1771800846;a:1:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1771802646;a:1:{s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1772054690;a:1:{s:30:\"wp_delete_temp_updater_backups\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1772054751;a:1:{s:27:\"acf_update_site_health_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1772141046;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'on'),
(2, 'siteurl', 'http://localhost:8888/wordpress', 'on'),
(3, 'home', 'http://localhost:8888/wordpress', 'on'),
(4, 'blogname', 'Profusion', 'on'),
(5, 'blogdescription', '', 'on'),
(6, 'users_can_register', '0', 'on'),
(7, 'admin_email', 'habibi-sonia@hotmail.fr', 'on'),
(8, 'start_of_week', '1', 'on'),
(9, 'use_balanceTags', '0', 'on'),
(10, 'use_smilies', '1', 'on'),
(11, 'require_name_email', '1', 'on'),
(12, 'comments_notify', '1', 'on'),
(13, 'posts_per_rss', '10', 'on'),
(14, 'rss_use_excerpt', '0', 'on'),
(15, 'mailserver_url', 'mail.example.com', 'on'),
(16, 'mailserver_login', 'login@example.com', 'on'),
(17, 'mailserver_pass', '', 'on'),
(18, 'mailserver_port', '110', 'on'),
(19, 'default_category', '1', 'on'),
(20, 'default_comment_status', 'open', 'on'),
(21, 'default_ping_status', 'open', 'on'),
(22, 'default_pingback_flag', '0', 'on'),
(23, 'posts_per_page', '10', 'on'),
(24, 'date_format', 'j F Y', 'on'),
(25, 'time_format', 'G\\hi', 'on'),
(26, 'links_updated_date_format', 'd F Y G\\hi', 'on'),
(27, 'comment_moderation', '0', 'on'),
(28, 'moderation_notify', '1', 'on'),
(29, 'permalink_structure', '/%postname%/', 'on'),
(30, 'rewrite_rules', 'a:92:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=32&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'on'),
(31, 'hack_file', '0', 'on'),
(32, 'blog_charset', 'UTF-8', 'on'),
(33, 'moderation_keys', '', 'off'),
(34, 'active_plugins', 'a:4:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:36:\"contact-form-7/wp-contact-form-7.php\";i:2;s:33:\"duplicate-post/duplicate-post.php\";i:3;s:21:\"flamingo/flamingo.php\";}', 'on'),
(35, 'category_base', '', 'on'),
(36, 'ping_sites', 'https://rpc.pingomatic.com/', 'on'),
(37, 'comment_max_links', '2', 'on'),
(38, 'gmt_offset', '', 'on'),
(39, 'default_email_category', '1', 'on'),
(40, 'recently_edited', '', 'off'),
(41, 'template', 'profusion', 'on'),
(42, 'stylesheet', 'profusion', 'on'),
(43, 'comment_registration', '0', 'on'),
(44, 'html_type', 'text/html', 'on'),
(45, 'use_trackback', '0', 'on'),
(46, 'default_role', 'subscriber', 'on'),
(47, 'db_version', '60717', 'on'),
(48, 'uploads_use_yearmonth_folders', '1', 'on'),
(49, 'upload_path', '', 'on'),
(50, 'blog_public', '0', 'on'),
(51, 'default_link_category', '2', 'on'),
(52, 'show_on_front', 'page', 'on'),
(53, 'tag_base', '', 'on'),
(54, 'show_avatars', '1', 'on'),
(55, 'avatar_rating', 'G', 'on'),
(56, 'upload_url_path', '', 'on'),
(57, 'thumbnail_size_w', '150', 'on'),
(58, 'thumbnail_size_h', '150', 'on'),
(59, 'thumbnail_crop', '1', 'on'),
(60, 'medium_size_w', '300', 'on'),
(61, 'medium_size_h', '300', 'on'),
(62, 'avatar_default', 'mystery', 'on'),
(63, 'large_size_w', '1024', 'on'),
(64, 'large_size_h', '1024', 'on'),
(65, 'image_default_link_type', 'none', 'on'),
(66, 'image_default_size', '', 'on'),
(67, 'image_default_align', '', 'on'),
(68, 'close_comments_for_old_posts', '0', 'on'),
(69, 'close_comments_days_old', '14', 'on'),
(70, 'thread_comments', '1', 'on'),
(71, 'thread_comments_depth', '5', 'on'),
(72, 'page_comments', '0', 'on'),
(73, 'comments_per_page', '50', 'on'),
(74, 'default_comments_page', 'newest', 'on'),
(75, 'comment_order', 'asc', 'on'),
(76, 'sticky_posts', 'a:0:{}', 'on'),
(77, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'auto'),
(78, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'auto'),
(79, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'auto'),
(80, 'uninstall_plugins', 'a:0:{}', 'off'),
(81, 'timezone_string', 'Europe/Paris', 'on'),
(82, 'page_for_posts', '0', 'on'),
(83, 'page_on_front', '32', 'on'),
(84, 'default_post_format', '0', 'on'),
(85, 'link_manager_enabled', '0', 'on'),
(86, 'finished_splitting_shared_terms', '1', 'on'),
(87, 'site_icon', '0', 'on'),
(88, 'medium_large_size_w', '768', 'on'),
(89, 'medium_large_size_h', '0', 'on'),
(90, 'wp_page_for_privacy_policy', '3', 'on'),
(91, 'show_comments_cookies_opt_in', '1', 'on'),
(92, 'admin_email_lifespan', '1786397046', 'on'),
(93, 'disallowed_keys', '', 'off'),
(94, 'comment_previously_approved', '1', 'on'),
(95, 'auto_plugin_theme_update_emails', 'a:0:{}', 'off'),
(96, 'auto_update_core_dev', 'enabled', 'on'),
(97, 'auto_update_core_minor', 'enabled', 'on'),
(98, 'auto_update_core_major', 'enabled', 'on'),
(99, 'wp_force_deactivated_plugins', 'a:0:{}', 'on'),
(100, 'wp_attachment_pages_enabled', '0', 'on'),
(101, 'wp_notes_notify', '1', 'on'),
(102, 'initial_db_version', '60717', 'on'),
(103, 'wp_wordpressuser_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:62:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:10:\"copy_posts\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:35:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:10:\"copy_posts\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'on'),
(104, 'fresh_site', '0', 'off'),
(105, 'WPLANG', 'fr_FR', 'auto'),
(106, 'user_count', '1', 'off'),
(107, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:159:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Articles récents</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:233:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Commentaires récents</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:151:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Catégories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'auto'),
(108, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'auto'),
(109, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(110, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(111, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(112, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(113, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(114, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(115, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(116, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(117, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(118, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(119, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(120, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(121, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(122, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(123, '_transient_wp_core_block_css_files', 'a:2:{s:7:\"version\";s:5:\"6.9.1\";s:5:\"files\";a:584:{i:0;s:31:\"accordion-heading/style-rtl.css\";i:1;s:35:\"accordion-heading/style-rtl.min.css\";i:2;s:27:\"accordion-heading/style.css\";i:3;s:31:\"accordion-heading/style.min.css\";i:4;s:28:\"accordion-item/style-rtl.css\";i:5;s:32:\"accordion-item/style-rtl.min.css\";i:6;s:24:\"accordion-item/style.css\";i:7;s:28:\"accordion-item/style.min.css\";i:8;s:29:\"accordion-panel/style-rtl.css\";i:9;s:33:\"accordion-panel/style-rtl.min.css\";i:10;s:25:\"accordion-panel/style.css\";i:11;s:29:\"accordion-panel/style.min.css\";i:12;s:23:\"accordion/style-rtl.css\";i:13;s:27:\"accordion/style-rtl.min.css\";i:14;s:19:\"accordion/style.css\";i:15;s:23:\"accordion/style.min.css\";i:16;s:23:\"archives/editor-rtl.css\";i:17;s:27:\"archives/editor-rtl.min.css\";i:18;s:19:\"archives/editor.css\";i:19;s:23:\"archives/editor.min.css\";i:20;s:22:\"archives/style-rtl.css\";i:21;s:26:\"archives/style-rtl.min.css\";i:22;s:18:\"archives/style.css\";i:23;s:22:\"archives/style.min.css\";i:24;s:20:\"audio/editor-rtl.css\";i:25;s:24:\"audio/editor-rtl.min.css\";i:26;s:16:\"audio/editor.css\";i:27;s:20:\"audio/editor.min.css\";i:28;s:19:\"audio/style-rtl.css\";i:29;s:23:\"audio/style-rtl.min.css\";i:30;s:15:\"audio/style.css\";i:31;s:19:\"audio/style.min.css\";i:32;s:19:\"audio/theme-rtl.css\";i:33;s:23:\"audio/theme-rtl.min.css\";i:34;s:15:\"audio/theme.css\";i:35;s:19:\"audio/theme.min.css\";i:36;s:21:\"avatar/editor-rtl.css\";i:37;s:25:\"avatar/editor-rtl.min.css\";i:38;s:17:\"avatar/editor.css\";i:39;s:21:\"avatar/editor.min.css\";i:40;s:20:\"avatar/style-rtl.css\";i:41;s:24:\"avatar/style-rtl.min.css\";i:42;s:16:\"avatar/style.css\";i:43;s:20:\"avatar/style.min.css\";i:44;s:21:\"button/editor-rtl.css\";i:45;s:25:\"button/editor-rtl.min.css\";i:46;s:17:\"button/editor.css\";i:47;s:21:\"button/editor.min.css\";i:48;s:20:\"button/style-rtl.css\";i:49;s:24:\"button/style-rtl.min.css\";i:50;s:16:\"button/style.css\";i:51;s:20:\"button/style.min.css\";i:52;s:22:\"buttons/editor-rtl.css\";i:53;s:26:\"buttons/editor-rtl.min.css\";i:54;s:18:\"buttons/editor.css\";i:55;s:22:\"buttons/editor.min.css\";i:56;s:21:\"buttons/style-rtl.css\";i:57;s:25:\"buttons/style-rtl.min.css\";i:58;s:17:\"buttons/style.css\";i:59;s:21:\"buttons/style.min.css\";i:60;s:22:\"calendar/style-rtl.css\";i:61;s:26:\"calendar/style-rtl.min.css\";i:62;s:18:\"calendar/style.css\";i:63;s:22:\"calendar/style.min.css\";i:64;s:25:\"categories/editor-rtl.css\";i:65;s:29:\"categories/editor-rtl.min.css\";i:66;s:21:\"categories/editor.css\";i:67;s:25:\"categories/editor.min.css\";i:68;s:24:\"categories/style-rtl.css\";i:69;s:28:\"categories/style-rtl.min.css\";i:70;s:20:\"categories/style.css\";i:71;s:24:\"categories/style.min.css\";i:72;s:19:\"code/editor-rtl.css\";i:73;s:23:\"code/editor-rtl.min.css\";i:74;s:15:\"code/editor.css\";i:75;s:19:\"code/editor.min.css\";i:76;s:18:\"code/style-rtl.css\";i:77;s:22:\"code/style-rtl.min.css\";i:78;s:14:\"code/style.css\";i:79;s:18:\"code/style.min.css\";i:80;s:18:\"code/theme-rtl.css\";i:81;s:22:\"code/theme-rtl.min.css\";i:82;s:14:\"code/theme.css\";i:83;s:18:\"code/theme.min.css\";i:84;s:22:\"columns/editor-rtl.css\";i:85;s:26:\"columns/editor-rtl.min.css\";i:86;s:18:\"columns/editor.css\";i:87;s:22:\"columns/editor.min.css\";i:88;s:21:\"columns/style-rtl.css\";i:89;s:25:\"columns/style-rtl.min.css\";i:90;s:17:\"columns/style.css\";i:91;s:21:\"columns/style.min.css\";i:92;s:33:\"comment-author-name/style-rtl.css\";i:93;s:37:\"comment-author-name/style-rtl.min.css\";i:94;s:29:\"comment-author-name/style.css\";i:95;s:33:\"comment-author-name/style.min.css\";i:96;s:29:\"comment-content/style-rtl.css\";i:97;s:33:\"comment-content/style-rtl.min.css\";i:98;s:25:\"comment-content/style.css\";i:99;s:29:\"comment-content/style.min.css\";i:100;s:26:\"comment-date/style-rtl.css\";i:101;s:30:\"comment-date/style-rtl.min.css\";i:102;s:22:\"comment-date/style.css\";i:103;s:26:\"comment-date/style.min.css\";i:104;s:31:\"comment-edit-link/style-rtl.css\";i:105;s:35:\"comment-edit-link/style-rtl.min.css\";i:106;s:27:\"comment-edit-link/style.css\";i:107;s:31:\"comment-edit-link/style.min.css\";i:108;s:32:\"comment-reply-link/style-rtl.css\";i:109;s:36:\"comment-reply-link/style-rtl.min.css\";i:110;s:28:\"comment-reply-link/style.css\";i:111;s:32:\"comment-reply-link/style.min.css\";i:112;s:30:\"comment-template/style-rtl.css\";i:113;s:34:\"comment-template/style-rtl.min.css\";i:114;s:26:\"comment-template/style.css\";i:115;s:30:\"comment-template/style.min.css\";i:116;s:42:\"comments-pagination-numbers/editor-rtl.css\";i:117;s:46:\"comments-pagination-numbers/editor-rtl.min.css\";i:118;s:38:\"comments-pagination-numbers/editor.css\";i:119;s:42:\"comments-pagination-numbers/editor.min.css\";i:120;s:34:\"comments-pagination/editor-rtl.css\";i:121;s:38:\"comments-pagination/editor-rtl.min.css\";i:122;s:30:\"comments-pagination/editor.css\";i:123;s:34:\"comments-pagination/editor.min.css\";i:124;s:33:\"comments-pagination/style-rtl.css\";i:125;s:37:\"comments-pagination/style-rtl.min.css\";i:126;s:29:\"comments-pagination/style.css\";i:127;s:33:\"comments-pagination/style.min.css\";i:128;s:29:\"comments-title/editor-rtl.css\";i:129;s:33:\"comments-title/editor-rtl.min.css\";i:130;s:25:\"comments-title/editor.css\";i:131;s:29:\"comments-title/editor.min.css\";i:132;s:23:\"comments/editor-rtl.css\";i:133;s:27:\"comments/editor-rtl.min.css\";i:134;s:19:\"comments/editor.css\";i:135;s:23:\"comments/editor.min.css\";i:136;s:22:\"comments/style-rtl.css\";i:137;s:26:\"comments/style-rtl.min.css\";i:138;s:18:\"comments/style.css\";i:139;s:22:\"comments/style.min.css\";i:140;s:20:\"cover/editor-rtl.css\";i:141;s:24:\"cover/editor-rtl.min.css\";i:142;s:16:\"cover/editor.css\";i:143;s:20:\"cover/editor.min.css\";i:144;s:19:\"cover/style-rtl.css\";i:145;s:23:\"cover/style-rtl.min.css\";i:146;s:15:\"cover/style.css\";i:147;s:19:\"cover/style.min.css\";i:148;s:22:\"details/editor-rtl.css\";i:149;s:26:\"details/editor-rtl.min.css\";i:150;s:18:\"details/editor.css\";i:151;s:22:\"details/editor.min.css\";i:152;s:21:\"details/style-rtl.css\";i:153;s:25:\"details/style-rtl.min.css\";i:154;s:17:\"details/style.css\";i:155;s:21:\"details/style.min.css\";i:156;s:20:\"embed/editor-rtl.css\";i:157;s:24:\"embed/editor-rtl.min.css\";i:158;s:16:\"embed/editor.css\";i:159;s:20:\"embed/editor.min.css\";i:160;s:19:\"embed/style-rtl.css\";i:161;s:23:\"embed/style-rtl.min.css\";i:162;s:15:\"embed/style.css\";i:163;s:19:\"embed/style.min.css\";i:164;s:19:\"embed/theme-rtl.css\";i:165;s:23:\"embed/theme-rtl.min.css\";i:166;s:15:\"embed/theme.css\";i:167;s:19:\"embed/theme.min.css\";i:168;s:19:\"file/editor-rtl.css\";i:169;s:23:\"file/editor-rtl.min.css\";i:170;s:15:\"file/editor.css\";i:171;s:19:\"file/editor.min.css\";i:172;s:18:\"file/style-rtl.css\";i:173;s:22:\"file/style-rtl.min.css\";i:174;s:14:\"file/style.css\";i:175;s:18:\"file/style.min.css\";i:176;s:23:\"footnotes/style-rtl.css\";i:177;s:27:\"footnotes/style-rtl.min.css\";i:178;s:19:\"footnotes/style.css\";i:179;s:23:\"footnotes/style.min.css\";i:180;s:23:\"freeform/editor-rtl.css\";i:181;s:27:\"freeform/editor-rtl.min.css\";i:182;s:19:\"freeform/editor.css\";i:183;s:23:\"freeform/editor.min.css\";i:184;s:22:\"gallery/editor-rtl.css\";i:185;s:26:\"gallery/editor-rtl.min.css\";i:186;s:18:\"gallery/editor.css\";i:187;s:22:\"gallery/editor.min.css\";i:188;s:21:\"gallery/style-rtl.css\";i:189;s:25:\"gallery/style-rtl.min.css\";i:190;s:17:\"gallery/style.css\";i:191;s:21:\"gallery/style.min.css\";i:192;s:21:\"gallery/theme-rtl.css\";i:193;s:25:\"gallery/theme-rtl.min.css\";i:194;s:17:\"gallery/theme.css\";i:195;s:21:\"gallery/theme.min.css\";i:196;s:20:\"group/editor-rtl.css\";i:197;s:24:\"group/editor-rtl.min.css\";i:198;s:16:\"group/editor.css\";i:199;s:20:\"group/editor.min.css\";i:200;s:19:\"group/style-rtl.css\";i:201;s:23:\"group/style-rtl.min.css\";i:202;s:15:\"group/style.css\";i:203;s:19:\"group/style.min.css\";i:204;s:19:\"group/theme-rtl.css\";i:205;s:23:\"group/theme-rtl.min.css\";i:206;s:15:\"group/theme.css\";i:207;s:19:\"group/theme.min.css\";i:208;s:21:\"heading/style-rtl.css\";i:209;s:25:\"heading/style-rtl.min.css\";i:210;s:17:\"heading/style.css\";i:211;s:21:\"heading/style.min.css\";i:212;s:19:\"html/editor-rtl.css\";i:213;s:23:\"html/editor-rtl.min.css\";i:214;s:15:\"html/editor.css\";i:215;s:19:\"html/editor.min.css\";i:216;s:20:\"image/editor-rtl.css\";i:217;s:24:\"image/editor-rtl.min.css\";i:218;s:16:\"image/editor.css\";i:219;s:20:\"image/editor.min.css\";i:220;s:19:\"image/style-rtl.css\";i:221;s:23:\"image/style-rtl.min.css\";i:222;s:15:\"image/style.css\";i:223;s:19:\"image/style.min.css\";i:224;s:19:\"image/theme-rtl.css\";i:225;s:23:\"image/theme-rtl.min.css\";i:226;s:15:\"image/theme.css\";i:227;s:19:\"image/theme.min.css\";i:228;s:29:\"latest-comments/style-rtl.css\";i:229;s:33:\"latest-comments/style-rtl.min.css\";i:230;s:25:\"latest-comments/style.css\";i:231;s:29:\"latest-comments/style.min.css\";i:232;s:27:\"latest-posts/editor-rtl.css\";i:233;s:31:\"latest-posts/editor-rtl.min.css\";i:234;s:23:\"latest-posts/editor.css\";i:235;s:27:\"latest-posts/editor.min.css\";i:236;s:26:\"latest-posts/style-rtl.css\";i:237;s:30:\"latest-posts/style-rtl.min.css\";i:238;s:22:\"latest-posts/style.css\";i:239;s:26:\"latest-posts/style.min.css\";i:240;s:18:\"list/style-rtl.css\";i:241;s:22:\"list/style-rtl.min.css\";i:242;s:14:\"list/style.css\";i:243;s:18:\"list/style.min.css\";i:244;s:22:\"loginout/style-rtl.css\";i:245;s:26:\"loginout/style-rtl.min.css\";i:246;s:18:\"loginout/style.css\";i:247;s:22:\"loginout/style.min.css\";i:248;s:19:\"math/editor-rtl.css\";i:249;s:23:\"math/editor-rtl.min.css\";i:250;s:15:\"math/editor.css\";i:251;s:19:\"math/editor.min.css\";i:252;s:18:\"math/style-rtl.css\";i:253;s:22:\"math/style-rtl.min.css\";i:254;s:14:\"math/style.css\";i:255;s:18:\"math/style.min.css\";i:256;s:25:\"media-text/editor-rtl.css\";i:257;s:29:\"media-text/editor-rtl.min.css\";i:258;s:21:\"media-text/editor.css\";i:259;s:25:\"media-text/editor.min.css\";i:260;s:24:\"media-text/style-rtl.css\";i:261;s:28:\"media-text/style-rtl.min.css\";i:262;s:20:\"media-text/style.css\";i:263;s:24:\"media-text/style.min.css\";i:264;s:19:\"more/editor-rtl.css\";i:265;s:23:\"more/editor-rtl.min.css\";i:266;s:15:\"more/editor.css\";i:267;s:19:\"more/editor.min.css\";i:268;s:30:\"navigation-link/editor-rtl.css\";i:269;s:34:\"navigation-link/editor-rtl.min.css\";i:270;s:26:\"navigation-link/editor.css\";i:271;s:30:\"navigation-link/editor.min.css\";i:272;s:29:\"navigation-link/style-rtl.css\";i:273;s:33:\"navigation-link/style-rtl.min.css\";i:274;s:25:\"navigation-link/style.css\";i:275;s:29:\"navigation-link/style.min.css\";i:276;s:33:\"navigation-submenu/editor-rtl.css\";i:277;s:37:\"navigation-submenu/editor-rtl.min.css\";i:278;s:29:\"navigation-submenu/editor.css\";i:279;s:33:\"navigation-submenu/editor.min.css\";i:280;s:25:\"navigation/editor-rtl.css\";i:281;s:29:\"navigation/editor-rtl.min.css\";i:282;s:21:\"navigation/editor.css\";i:283;s:25:\"navigation/editor.min.css\";i:284;s:24:\"navigation/style-rtl.css\";i:285;s:28:\"navigation/style-rtl.min.css\";i:286;s:20:\"navigation/style.css\";i:287;s:24:\"navigation/style.min.css\";i:288;s:23:\"nextpage/editor-rtl.css\";i:289;s:27:\"nextpage/editor-rtl.min.css\";i:290;s:19:\"nextpage/editor.css\";i:291;s:23:\"nextpage/editor.min.css\";i:292;s:24:\"page-list/editor-rtl.css\";i:293;s:28:\"page-list/editor-rtl.min.css\";i:294;s:20:\"page-list/editor.css\";i:295;s:24:\"page-list/editor.min.css\";i:296;s:23:\"page-list/style-rtl.css\";i:297;s:27:\"page-list/style-rtl.min.css\";i:298;s:19:\"page-list/style.css\";i:299;s:23:\"page-list/style.min.css\";i:300;s:24:\"paragraph/editor-rtl.css\";i:301;s:28:\"paragraph/editor-rtl.min.css\";i:302;s:20:\"paragraph/editor.css\";i:303;s:24:\"paragraph/editor.min.css\";i:304;s:23:\"paragraph/style-rtl.css\";i:305;s:27:\"paragraph/style-rtl.min.css\";i:306;s:19:\"paragraph/style.css\";i:307;s:23:\"paragraph/style.min.css\";i:308;s:35:\"post-author-biography/style-rtl.css\";i:309;s:39:\"post-author-biography/style-rtl.min.css\";i:310;s:31:\"post-author-biography/style.css\";i:311;s:35:\"post-author-biography/style.min.css\";i:312;s:30:\"post-author-name/style-rtl.css\";i:313;s:34:\"post-author-name/style-rtl.min.css\";i:314;s:26:\"post-author-name/style.css\";i:315;s:30:\"post-author-name/style.min.css\";i:316;s:25:\"post-author/style-rtl.css\";i:317;s:29:\"post-author/style-rtl.min.css\";i:318;s:21:\"post-author/style.css\";i:319;s:25:\"post-author/style.min.css\";i:320;s:33:\"post-comments-count/style-rtl.css\";i:321;s:37:\"post-comments-count/style-rtl.min.css\";i:322;s:29:\"post-comments-count/style.css\";i:323;s:33:\"post-comments-count/style.min.css\";i:324;s:33:\"post-comments-form/editor-rtl.css\";i:325;s:37:\"post-comments-form/editor-rtl.min.css\";i:326;s:29:\"post-comments-form/editor.css\";i:327;s:33:\"post-comments-form/editor.min.css\";i:328;s:32:\"post-comments-form/style-rtl.css\";i:329;s:36:\"post-comments-form/style-rtl.min.css\";i:330;s:28:\"post-comments-form/style.css\";i:331;s:32:\"post-comments-form/style.min.css\";i:332;s:32:\"post-comments-link/style-rtl.css\";i:333;s:36:\"post-comments-link/style-rtl.min.css\";i:334;s:28:\"post-comments-link/style.css\";i:335;s:32:\"post-comments-link/style.min.css\";i:336;s:26:\"post-content/style-rtl.css\";i:337;s:30:\"post-content/style-rtl.min.css\";i:338;s:22:\"post-content/style.css\";i:339;s:26:\"post-content/style.min.css\";i:340;s:23:\"post-date/style-rtl.css\";i:341;s:27:\"post-date/style-rtl.min.css\";i:342;s:19:\"post-date/style.css\";i:343;s:23:\"post-date/style.min.css\";i:344;s:27:\"post-excerpt/editor-rtl.css\";i:345;s:31:\"post-excerpt/editor-rtl.min.css\";i:346;s:23:\"post-excerpt/editor.css\";i:347;s:27:\"post-excerpt/editor.min.css\";i:348;s:26:\"post-excerpt/style-rtl.css\";i:349;s:30:\"post-excerpt/style-rtl.min.css\";i:350;s:22:\"post-excerpt/style.css\";i:351;s:26:\"post-excerpt/style.min.css\";i:352;s:34:\"post-featured-image/editor-rtl.css\";i:353;s:38:\"post-featured-image/editor-rtl.min.css\";i:354;s:30:\"post-featured-image/editor.css\";i:355;s:34:\"post-featured-image/editor.min.css\";i:356;s:33:\"post-featured-image/style-rtl.css\";i:357;s:37:\"post-featured-image/style-rtl.min.css\";i:358;s:29:\"post-featured-image/style.css\";i:359;s:33:\"post-featured-image/style.min.css\";i:360;s:34:\"post-navigation-link/style-rtl.css\";i:361;s:38:\"post-navigation-link/style-rtl.min.css\";i:362;s:30:\"post-navigation-link/style.css\";i:363;s:34:\"post-navigation-link/style.min.css\";i:364;s:27:\"post-template/style-rtl.css\";i:365;s:31:\"post-template/style-rtl.min.css\";i:366;s:23:\"post-template/style.css\";i:367;s:27:\"post-template/style.min.css\";i:368;s:24:\"post-terms/style-rtl.css\";i:369;s:28:\"post-terms/style-rtl.min.css\";i:370;s:20:\"post-terms/style.css\";i:371;s:24:\"post-terms/style.min.css\";i:372;s:31:\"post-time-to-read/style-rtl.css\";i:373;s:35:\"post-time-to-read/style-rtl.min.css\";i:374;s:27:\"post-time-to-read/style.css\";i:375;s:31:\"post-time-to-read/style.min.css\";i:376;s:24:\"post-title/style-rtl.css\";i:377;s:28:\"post-title/style-rtl.min.css\";i:378;s:20:\"post-title/style.css\";i:379;s:24:\"post-title/style.min.css\";i:380;s:26:\"preformatted/style-rtl.css\";i:381;s:30:\"preformatted/style-rtl.min.css\";i:382;s:22:\"preformatted/style.css\";i:383;s:26:\"preformatted/style.min.css\";i:384;s:24:\"pullquote/editor-rtl.css\";i:385;s:28:\"pullquote/editor-rtl.min.css\";i:386;s:20:\"pullquote/editor.css\";i:387;s:24:\"pullquote/editor.min.css\";i:388;s:23:\"pullquote/style-rtl.css\";i:389;s:27:\"pullquote/style-rtl.min.css\";i:390;s:19:\"pullquote/style.css\";i:391;s:23:\"pullquote/style.min.css\";i:392;s:23:\"pullquote/theme-rtl.css\";i:393;s:27:\"pullquote/theme-rtl.min.css\";i:394;s:19:\"pullquote/theme.css\";i:395;s:23:\"pullquote/theme.min.css\";i:396;s:39:\"query-pagination-numbers/editor-rtl.css\";i:397;s:43:\"query-pagination-numbers/editor-rtl.min.css\";i:398;s:35:\"query-pagination-numbers/editor.css\";i:399;s:39:\"query-pagination-numbers/editor.min.css\";i:400;s:31:\"query-pagination/editor-rtl.css\";i:401;s:35:\"query-pagination/editor-rtl.min.css\";i:402;s:27:\"query-pagination/editor.css\";i:403;s:31:\"query-pagination/editor.min.css\";i:404;s:30:\"query-pagination/style-rtl.css\";i:405;s:34:\"query-pagination/style-rtl.min.css\";i:406;s:26:\"query-pagination/style.css\";i:407;s:30:\"query-pagination/style.min.css\";i:408;s:25:\"query-title/style-rtl.css\";i:409;s:29:\"query-title/style-rtl.min.css\";i:410;s:21:\"query-title/style.css\";i:411;s:25:\"query-title/style.min.css\";i:412;s:25:\"query-total/style-rtl.css\";i:413;s:29:\"query-total/style-rtl.min.css\";i:414;s:21:\"query-total/style.css\";i:415;s:25:\"query-total/style.min.css\";i:416;s:20:\"query/editor-rtl.css\";i:417;s:24:\"query/editor-rtl.min.css\";i:418;s:16:\"query/editor.css\";i:419;s:20:\"query/editor.min.css\";i:420;s:19:\"quote/style-rtl.css\";i:421;s:23:\"quote/style-rtl.min.css\";i:422;s:15:\"quote/style.css\";i:423;s:19:\"quote/style.min.css\";i:424;s:19:\"quote/theme-rtl.css\";i:425;s:23:\"quote/theme-rtl.min.css\";i:426;s:15:\"quote/theme.css\";i:427;s:19:\"quote/theme.min.css\";i:428;s:23:\"read-more/style-rtl.css\";i:429;s:27:\"read-more/style-rtl.min.css\";i:430;s:19:\"read-more/style.css\";i:431;s:23:\"read-more/style.min.css\";i:432;s:18:\"rss/editor-rtl.css\";i:433;s:22:\"rss/editor-rtl.min.css\";i:434;s:14:\"rss/editor.css\";i:435;s:18:\"rss/editor.min.css\";i:436;s:17:\"rss/style-rtl.css\";i:437;s:21:\"rss/style-rtl.min.css\";i:438;s:13:\"rss/style.css\";i:439;s:17:\"rss/style.min.css\";i:440;s:21:\"search/editor-rtl.css\";i:441;s:25:\"search/editor-rtl.min.css\";i:442;s:17:\"search/editor.css\";i:443;s:21:\"search/editor.min.css\";i:444;s:20:\"search/style-rtl.css\";i:445;s:24:\"search/style-rtl.min.css\";i:446;s:16:\"search/style.css\";i:447;s:20:\"search/style.min.css\";i:448;s:20:\"search/theme-rtl.css\";i:449;s:24:\"search/theme-rtl.min.css\";i:450;s:16:\"search/theme.css\";i:451;s:20:\"search/theme.min.css\";i:452;s:24:\"separator/editor-rtl.css\";i:453;s:28:\"separator/editor-rtl.min.css\";i:454;s:20:\"separator/editor.css\";i:455;s:24:\"separator/editor.min.css\";i:456;s:23:\"separator/style-rtl.css\";i:457;s:27:\"separator/style-rtl.min.css\";i:458;s:19:\"separator/style.css\";i:459;s:23:\"separator/style.min.css\";i:460;s:23:\"separator/theme-rtl.css\";i:461;s:27:\"separator/theme-rtl.min.css\";i:462;s:19:\"separator/theme.css\";i:463;s:23:\"separator/theme.min.css\";i:464;s:24:\"shortcode/editor-rtl.css\";i:465;s:28:\"shortcode/editor-rtl.min.css\";i:466;s:20:\"shortcode/editor.css\";i:467;s:24:\"shortcode/editor.min.css\";i:468;s:24:\"site-logo/editor-rtl.css\";i:469;s:28:\"site-logo/editor-rtl.min.css\";i:470;s:20:\"site-logo/editor.css\";i:471;s:24:\"site-logo/editor.min.css\";i:472;s:23:\"site-logo/style-rtl.css\";i:473;s:27:\"site-logo/style-rtl.min.css\";i:474;s:19:\"site-logo/style.css\";i:475;s:23:\"site-logo/style.min.css\";i:476;s:27:\"site-tagline/editor-rtl.css\";i:477;s:31:\"site-tagline/editor-rtl.min.css\";i:478;s:23:\"site-tagline/editor.css\";i:479;s:27:\"site-tagline/editor.min.css\";i:480;s:26:\"site-tagline/style-rtl.css\";i:481;s:30:\"site-tagline/style-rtl.min.css\";i:482;s:22:\"site-tagline/style.css\";i:483;s:26:\"site-tagline/style.min.css\";i:484;s:25:\"site-title/editor-rtl.css\";i:485;s:29:\"site-title/editor-rtl.min.css\";i:486;s:21:\"site-title/editor.css\";i:487;s:25:\"site-title/editor.min.css\";i:488;s:24:\"site-title/style-rtl.css\";i:489;s:28:\"site-title/style-rtl.min.css\";i:490;s:20:\"site-title/style.css\";i:491;s:24:\"site-title/style.min.css\";i:492;s:26:\"social-link/editor-rtl.css\";i:493;s:30:\"social-link/editor-rtl.min.css\";i:494;s:22:\"social-link/editor.css\";i:495;s:26:\"social-link/editor.min.css\";i:496;s:27:\"social-links/editor-rtl.css\";i:497;s:31:\"social-links/editor-rtl.min.css\";i:498;s:23:\"social-links/editor.css\";i:499;s:27:\"social-links/editor.min.css\";i:500;s:26:\"social-links/style-rtl.css\";i:501;s:30:\"social-links/style-rtl.min.css\";i:502;s:22:\"social-links/style.css\";i:503;s:26:\"social-links/style.min.css\";i:504;s:21:\"spacer/editor-rtl.css\";i:505;s:25:\"spacer/editor-rtl.min.css\";i:506;s:17:\"spacer/editor.css\";i:507;s:21:\"spacer/editor.min.css\";i:508;s:20:\"spacer/style-rtl.css\";i:509;s:24:\"spacer/style-rtl.min.css\";i:510;s:16:\"spacer/style.css\";i:511;s:20:\"spacer/style.min.css\";i:512;s:20:\"table/editor-rtl.css\";i:513;s:24:\"table/editor-rtl.min.css\";i:514;s:16:\"table/editor.css\";i:515;s:20:\"table/editor.min.css\";i:516;s:19:\"table/style-rtl.css\";i:517;s:23:\"table/style-rtl.min.css\";i:518;s:15:\"table/style.css\";i:519;s:19:\"table/style.min.css\";i:520;s:19:\"table/theme-rtl.css\";i:521;s:23:\"table/theme-rtl.min.css\";i:522;s:15:\"table/theme.css\";i:523;s:19:\"table/theme.min.css\";i:524;s:24:\"tag-cloud/editor-rtl.css\";i:525;s:28:\"tag-cloud/editor-rtl.min.css\";i:526;s:20:\"tag-cloud/editor.css\";i:527;s:24:\"tag-cloud/editor.min.css\";i:528;s:23:\"tag-cloud/style-rtl.css\";i:529;s:27:\"tag-cloud/style-rtl.min.css\";i:530;s:19:\"tag-cloud/style.css\";i:531;s:23:\"tag-cloud/style.min.css\";i:532;s:28:\"template-part/editor-rtl.css\";i:533;s:32:\"template-part/editor-rtl.min.css\";i:534;s:24:\"template-part/editor.css\";i:535;s:28:\"template-part/editor.min.css\";i:536;s:27:\"template-part/theme-rtl.css\";i:537;s:31:\"template-part/theme-rtl.min.css\";i:538;s:23:\"template-part/theme.css\";i:539;s:27:\"template-part/theme.min.css\";i:540;s:24:\"term-count/style-rtl.css\";i:541;s:28:\"term-count/style-rtl.min.css\";i:542;s:20:\"term-count/style.css\";i:543;s:24:\"term-count/style.min.css\";i:544;s:30:\"term-description/style-rtl.css\";i:545;s:34:\"term-description/style-rtl.min.css\";i:546;s:26:\"term-description/style.css\";i:547;s:30:\"term-description/style.min.css\";i:548;s:23:\"term-name/style-rtl.css\";i:549;s:27:\"term-name/style-rtl.min.css\";i:550;s:19:\"term-name/style.css\";i:551;s:23:\"term-name/style.min.css\";i:552;s:28:\"term-template/editor-rtl.css\";i:553;s:32:\"term-template/editor-rtl.min.css\";i:554;s:24:\"term-template/editor.css\";i:555;s:28:\"term-template/editor.min.css\";i:556;s:27:\"term-template/style-rtl.css\";i:557;s:31:\"term-template/style-rtl.min.css\";i:558;s:23:\"term-template/style.css\";i:559;s:27:\"term-template/style.min.css\";i:560;s:27:\"text-columns/editor-rtl.css\";i:561;s:31:\"text-columns/editor-rtl.min.css\";i:562;s:23:\"text-columns/editor.css\";i:563;s:27:\"text-columns/editor.min.css\";i:564;s:26:\"text-columns/style-rtl.css\";i:565;s:30:\"text-columns/style-rtl.min.css\";i:566;s:22:\"text-columns/style.css\";i:567;s:26:\"text-columns/style.min.css\";i:568;s:19:\"verse/style-rtl.css\";i:569;s:23:\"verse/style-rtl.min.css\";i:570;s:15:\"verse/style.css\";i:571;s:19:\"verse/style.min.css\";i:572;s:20:\"video/editor-rtl.css\";i:573;s:24:\"video/editor-rtl.min.css\";i:574;s:16:\"video/editor.css\";i:575;s:20:\"video/editor.min.css\";i:576;s:19:\"video/style-rtl.css\";i:577;s:23:\"video/style-rtl.min.css\";i:578;s:15:\"video/style.css\";i:579;s:19:\"video/style.min.css\";i:580;s:19:\"video/theme-rtl.css\";i:581;s:23:\"video/theme-rtl.min.css\";i:582;s:15:\"video/theme.css\";i:583;s:19:\"video/theme.min.css\";}}', 'on'),
(126, 'theme_mods_twentytwentyfive', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1770845960;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'off'),
(127, '_transient_wp_styles_for_blocks', 'a:2:{s:4:\"hash\";s:32:\"bb0724c7bd62f3312bedc6ab662b3d3d\";s:6:\"blocks\";a:6:{s:11:\"core/button\";s:0:\"\";s:14:\"core/site-logo\";s:0:\"\";s:18:\"core/post-template\";s:120:\":where(.wp-block-post-template.is-layout-flex){gap: 1.25em;}:where(.wp-block-post-template.is-layout-grid){gap: 1.25em;}\";s:18:\"core/term-template\";s:120:\":where(.wp-block-term-template.is-layout-flex){gap: 1.25em;}:where(.wp-block-term-template.is-layout-grid){gap: 1.25em;}\";s:12:\"core/columns\";s:102:\":where(.wp-block-columns.is-layout-flex){gap: 2em;}:where(.wp-block-columns.is-layout-grid){gap: 2em;}\";s:14:\"core/pullquote\";s:69:\":root :where(.wp-block-pullquote){font-size: 1.5em;line-height: 1.6;}\";}}', 'on'),
(129, 'recovery_keys', 'a:0:{}', 'off'),
(142, 'can_compress_scripts', '1', 'on'),
(156, 'new_admin_email', 'habibi-sonia@hotmail.fr', 'auto'),
(161, 'finished_updating_comment_type', '1', 'auto'),
(162, '_site_transient_wp_plugin_dependencies_plugin_data', 'a:0:{}', 'off'),
(171, 'acf_first_activated_version', '6.7.0', 'on'),
(172, 'acf_site_health', '{\"version\":\"6.7.0\",\"plugin_type\":\"Free\",\"update_source\":\"wordpress.org\",\"wp_version\":\"6.9.1\",\"mysql_version\":\"8.0.44\",\"is_multisite\":false,\"active_theme\":{\"name\":\"Profusion\",\"version\":\"1.0\",\"theme_uri\":\"\",\"stylesheet\":false},\"active_plugins\":{\"advanced-custom-fields\\/acf.php\":{\"name\":\"Advanced Custom Fields\",\"version\":\"6.7.0\",\"plugin_uri\":\"https:\\/\\/www.advancedcustomfields.com\"},\"contact-form-7\\/wp-contact-form-7.php\":{\"name\":\"Contact Form 7\",\"version\":\"6.1.5\",\"plugin_uri\":\"https:\\/\\/contactform7.com\\/\"},\"flamingo\\/flamingo.php\":{\"name\":\"Flamingo\",\"version\":\"2.6.1\",\"plugin_uri\":\"https:\\/\\/contactform7.com\\/save-submitted-messages-with-flamingo\\/\"},\"duplicate-post\\/duplicate-post.php\":{\"name\":\"Yoast Duplicate Post\",\"version\":\"4.5\",\"plugin_uri\":\"https:\\/\\/yoast.com\\/wordpress\\/plugins\\/duplicate-post\\/\"}},\"ui_field_groups\":\"4\",\"php_field_groups\":\"0\",\"json_field_groups\":\"0\",\"rest_field_groups\":\"0\",\"all_location_rules\":[\"page==34\",\"post_category==category:testimonial\",\"page==32\",\"post_category==category:services\"],\"number_of_fields_by_type\":{\"text\":12,\"textarea\":4,\"image\":4,\"url\":2},\"number_of_third_party_fields_by_type\":[],\"post_types_enabled\":true,\"ui_post_types\":\"6\",\"json_post_types\":\"0\",\"ui_taxonomies\":\"5\",\"json_taxonomies\":\"0\",\"rest_api_format\":\"light\",\"admin_ui_enabled\":true,\"field_type-modal_enabled\":true,\"field_settings_tabs_enabled\":false,\"shortcode_enabled\":false,\"registered_acf_forms\":\"0\",\"json_save_paths\":1,\"json_load_paths\":1,\"event_first_activated\":1770845151,\"event_first_created_field_group\":1771079158,\"last_updated\":1771705403}', 'off'),
(173, 'recently_activated', 'a:0:{}', 'off'),
(175, 'acf_version', '6.7.0', 'auto'),
(182, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"6.1.5\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1770845197;s:7:\"version\";s:5:\"6.1.5\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'auto'),
(183, 'current_theme', '', 'auto'),
(184, 'theme_mods_profusion', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:14:\"menu-principal\";i:7;}s:18:\"custom_css_post_id\";i:-1;s:11:\"custom_logo\";i:148;}', 'on'),
(185, 'theme_switched', '', 'auto'),
(218, 'secret_key', 'Gq[foH9H/{=T=&(i?:`7Fe$Y#&$R]~]WJ|+Ck`CDh><L|=s] ;glhn#U18:2]]Ft', 'off'),
(220, 'flamingo_inbound_channel_children', 'a:1:{i:3;a:1:{i:0;i:4;}}', 'auto'),
(283, '_transient_health-check-site-status-result', '{\"good\":\"21\",\"recommended\":\"5\",\"critical\":\"0\"}', 'on'),
(430, 'wp_calendar_block_has_published_posts', '1', 'auto'),
(440, 'category_children', 'a:0:{}', 'auto'),
(515, '_site_transient_timeout_php_check_478252eea4acfca65f7d24ee29253bbe', '1772185339', 'off'),
(516, '_site_transient_php_check_478252eea4acfca65f7d24ee29253bbe', 'a:5:{s:19:\"recommended_version\";s:3:\"8.3\";s:15:\"minimum_version\";s:6:\"7.2.24\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'off'),
(613, 'duplicate_post_show_notice', '1', 'auto'),
(614, 'duplicate_post_copytitle', '1', 'auto'),
(615, 'duplicate_post_copydate', '0', 'auto'),
(616, 'duplicate_post_copystatus', '0', 'auto'),
(617, 'duplicate_post_copyslug', '0', 'auto'),
(618, 'duplicate_post_copyexcerpt', '1', 'auto'),
(619, 'duplicate_post_copycontent', '1', 'auto'),
(620, 'duplicate_post_copythumbnail', '1', 'auto'),
(621, 'duplicate_post_copytemplate', '1', 'auto'),
(622, 'duplicate_post_copyformat', '1', 'auto'),
(623, 'duplicate_post_copyauthor', '0', 'auto'),
(624, 'duplicate_post_copypassword', '0', 'auto'),
(625, 'duplicate_post_copyattachments', '0', 'auto'),
(626, 'duplicate_post_copychildren', '0', 'auto'),
(627, 'duplicate_post_copycomments', '0', 'auto'),
(628, 'duplicate_post_copymenuorder', '1', 'auto');
INSERT INTO `wp_wordpressoptions` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(629, 'duplicate_post_taxonomies_blacklist', 'a:0:{}', 'auto'),
(630, 'duplicate_post_blacklist', '', 'auto'),
(631, 'duplicate_post_types_enabled', 'a:2:{i:0;s:4:\"post\";i:1;s:4:\"page\";}', 'auto'),
(632, 'duplicate_post_show_original_column', '0', 'auto'),
(633, 'duplicate_post_show_original_in_post_states', '0', 'auto'),
(634, 'duplicate_post_show_original_meta_box', '0', 'auto'),
(635, 'duplicate_post_show_link', 'a:3:{s:9:\"new_draft\";s:1:\"1\";s:5:\"clone\";s:1:\"1\";s:17:\"rewrite_republish\";s:1:\"1\";}', 'auto'),
(636, 'duplicate_post_show_link_in', 'a:4:{s:3:\"row\";s:1:\"1\";s:8:\"adminbar\";s:1:\"1\";s:9:\"submitbox\";s:1:\"1\";s:11:\"bulkactions\";s:1:\"1\";}', 'auto'),
(637, 'duplicate_post_version', '4.5', 'auto'),
(649, 'nav_menu_options', 'a:1:{s:8:\"auto_add\";a:0:{}}', 'auto'),
(661, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-6.9.1.zip\";s:6:\"locale\";s:5:\"fr_FR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-6.9.1.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.9.1\";s:7:\"version\";s:5:\"6.9.1\";s:11:\"php_version\";s:6:\"7.2.24\";s:13:\"mysql_version\";s:5:\"5.5.5\";s:11:\"new_bundled\";s:3:\"6.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1771789954;s:15:\"version_checked\";s:5:\"6.9.1\";s:12:\"translations\";a:0:{}}', 'off'),
(664, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1771789955;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:4:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"6.7.0\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.6.7.0.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:67:\"https://ps.w.org/advanced-custom-fields/assets/icon.svg?rev=3207824\";s:3:\"svg\";s:67:\"https://ps.w.org/advanced-custom-fields/assets/icon.svg?rev=3207824\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=3374528\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=3374528\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.2\";}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"6.1.5\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.6.1.5.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";s:3:\"svg\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.7\";}s:21:\"flamingo/flamingo.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:22:\"w.org/plugins/flamingo\";s:4:\"slug\";s:8:\"flamingo\";s:6:\"plugin\";s:21:\"flamingo/flamingo.php\";s:11:\"new_version\";s:5:\"2.6.1\";s:3:\"url\";s:39:\"https://wordpress.org/plugins/flamingo/\";s:7:\"package\";s:57:\"https://downloads.wordpress.org/plugin/flamingo.2.6.1.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/flamingo/assets/icon-128x128.png?rev=1540977\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:62:\"https://ps.w.org/flamingo/assets/banner-772x250.png?rev=544829\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.7\";}s:33:\"duplicate-post/duplicate-post.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/duplicate-post\";s:4:\"slug\";s:14:\"duplicate-post\";s:6:\"plugin\";s:33:\"duplicate-post/duplicate-post.php\";s:11:\"new_version\";s:3:\"4.5\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/duplicate-post/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/duplicate-post.4.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/duplicate-post/assets/icon-256x256.png?rev=2336666\";s:2:\"1x\";s:67:\"https://ps.w.org/duplicate-post/assets/icon-128x128.png?rev=2336666\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/duplicate-post/assets/banner-1544x500.png?rev=2336666\";s:2:\"1x\";s:69:\"https://ps.w.org/duplicate-post/assets/banner-772x250.png?rev=2336666\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.6\";}}s:7:\"checked\";a:4:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"6.7.0\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"6.1.5\";s:21:\"flamingo/flamingo.php\";s:5:\"2.6.1\";s:33:\"duplicate-post/duplicate-post.php\";s:3:\"4.5\";}}', 'off'),
(665, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1771789955;s:7:\"checked\";a:1:{s:9:\"profusion\";s:3:\"1.0\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}', 'off'),
(673, 'site_logo', '148', 'auto'),
(679, '_site_transient_timeout_browser_a92b740edb16c6ed571f7937f59206cd', '1772310159', 'off'),
(680, '_site_transient_browser_a92b740edb16c6ed571f7937f59206cd', 'a:10:{s:4:\"name\";s:6:\"Safari\";s:7:\"version\";s:4:\"26.3\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.apple.com/safari/\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/safari.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/safari.png?1\";s:15:\"current_version\";s:2:\"11\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'off'),
(695, '_transient_timeout_dirsize_cache', '2087065403', 'off'),
(696, '_transient_dirsize_cache', 'a:413:{s:61:\"/Applications/MAMP/htdocs/wordpress/wp-admin/css/colors/ocean\";i:80579;s:64:\"/Applications/MAMP/htdocs/wordpress/wp-admin/css/colors/midnight\";i:85783;s:60:\"/Applications/MAMP/htdocs/wordpress/wp-admin/css/colors/blue\";i:83561;s:63:\"/Applications/MAMP/htdocs/wordpress/wp-admin/css/colors/sunrise\";i:87233;s:62:\"/Applications/MAMP/htdocs/wordpress/wp-admin/css/colors/coffee\";i:81473;s:65:\"/Applications/MAMP/htdocs/wordpress/wp-admin/css/colors/ectoplasm\";i:85004;s:61:\"/Applications/MAMP/htdocs/wordpress/wp-admin/css/colors/light\";i:84387;s:62:\"/Applications/MAMP/htdocs/wordpress/wp-admin/css/colors/modern\";i:84632;s:55:\"/Applications/MAMP/htdocs/wordpress/wp-admin/css/colors\";i:699194;s:48:\"/Applications/MAMP/htdocs/wordpress/wp-admin/css\";i:2706253;s:51:\"/Applications/MAMP/htdocs/wordpress/wp-admin/images\";i:428376;s:55:\"/Applications/MAMP/htdocs/wordpress/wp-admin/js/widgets\";i:139432;s:47:\"/Applications/MAMP/htdocs/wordpress/wp-admin/js\";i:2006266;s:52:\"/Applications/MAMP/htdocs/wordpress/wp-admin/network\";i:127749;s:53:\"/Applications/MAMP/htdocs/wordpress/wp-admin/includes\";i:3102798;s:49:\"/Applications/MAMP/htdocs/wordpress/wp-admin/user\";i:3758;s:50:\"/Applications/MAMP/htdocs/wordpress/wp-admin/maint\";i:7628;s:44:\"/Applications/MAMP/htdocs/wordpress/wp-admin\";i:9335247;s:64:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/read-more\";i:2450;s:63:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/comments\";i:29695;s:64:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/site-logo\";i:15830;s:66:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/post-author\";i:3388;s:60:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/video\";i:8626;s:73:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/post-comments-link\";i:1525;s:70:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/navigation-link\";i:11460;s:74:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/comments-pagination\";i:6147;s:72:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/accordion-heading\";i:5383;s:64:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/tag-cloud\";i:3996;s:63:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/calendar\";i:3821;s:62:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/buttons\";i:11567;s:64:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/post-date\";i:1623;s:60:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/embed\";i:11420;s:67:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/post-excerpt\";i:3307;s:72:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/post-time-to-read\";i:1625;s:59:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/file\";i:11203;s:64:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/paragraph\";i:7441;s:60:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/quote\";i:7191;s:60:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/group\";i:8413;s:67:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/site-tagline\";i:2148;s:64:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/accordion\";i:2137;s:64:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/shortcode\";i:2940;s:72:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/comment-edit-link\";i:1654;s:64:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/separator\";i:5126;s:62:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/gallery\";i:78286;s:62:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/heading\";i:6486;s:71:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/comment-template\";i:3037;s:70:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/comment-content\";i:1838;s:71:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/term-description\";i:2112;s:68:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/term-template\";i:3560;s:58:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/rss\";i:5025;s:71:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/post-author-name\";i:1673;s:79:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/comments-pagination-next\";i:1011;s:79:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/query-pagination-numbers\";i:1942;s:59:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/code\";i:2850;s:65:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/navigation\";i:133575;s:60:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/verse\";i:2144;s:74:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/post-comments-count\";i:1372;s:62:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/details\";i:2249;s:64:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/pullquote\";i:8775;s:68:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/legacy-widget\";i:556;s:76:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/post-author-biography\";i:1507;s:66:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/query-title\";i:1750;s:59:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/html\";i:4064;s:61:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/column\";i:1616;s:68:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/template-part\";i:6686;s:63:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/archives\";i:2057;s:67:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/social-links\";i:54929;s:64:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/term-name\";i:1577;s:62:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/missing\";i:678;s:61:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/spacer\";i:4737;s:66:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/social-link\";i:3510;s:75:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/post-navigation-link\";i:4032;s:59:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/math\";i:1115;s:60:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/image\";i:59767;s:59:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/more\";i:3270;s:61:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/search\";i:19425;s:63:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/nextpage\";i:3039;s:67:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/text-columns\";i:3054;s:71:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/query-no-results\";i:901;s:67:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/comment-date\";i:1562;s:64:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/list-item\";i:1471;s:60:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/audio\";i:3675;s:69:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/accordion-item\";i:2896;s:73:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/post-comments-form\";i:10061;s:76:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/query-pagination-next\";i:1039;s:61:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/button\";i:14327;s:63:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/loginout\";i:1474;s:60:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/table\";i:27622;s:68:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/post-template\";i:7967;s:59:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/list\";i:2285;s:67:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/preformatted\";i:1907;s:65:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/term-count\";i:1462;s:61:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/avatar\";i:2355;s:71:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/query-pagination\";i:5775;s:64:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/footnotes\";i:2642;s:63:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/freeform\";i:41685;s:65:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/post-terms\";i:2025;s:80:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/query-pagination-previous\";i:1051;s:69:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/page-list-item\";i:1109;s:69:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/comments-title\";i:1745;s:64:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/home-link\";i:1152;s:74:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/post-featured-image\";i:30219;s:66:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/query-total\";i:1520;s:64:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/page-list\";i:7860;s:83:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/comments-pagination-previous\";i:1023;s:70:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/accordion-panel\";i:2096;s:74:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/comment-author-name\";i:1677;s:62:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/columns\";i:9271;s:70:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/latest-comments\";i:6816;s:67:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/latest-posts\";i:11447;s:62:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/pattern\";i:434;s:65:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/media-text\";i:16884;s:67:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/post-content\";i:1913;s:65:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/post-title\";i:2849;s:60:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/query\";i:13922;s:65:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/site-title\";i:3051;s:67:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/widget-group\";i:400;s:73:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/comment-reply-link\";i:1447;s:73:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/navigation-submenu\";i:6226;s:82:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/comments-pagination-numbers\";i:1833;s:66:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/terms-query\";i:905;s:65:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/categories\";i:4020;s:60:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/block\";i:587;s:60:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks/cover\";i:87939;s:54:\"/Applications/MAMP/htdocs/wordpress/wp-includes/blocks\";i:1612218;s:52:\"/Applications/MAMP/htdocs/wordpress/wp-includes/l10n\";i:31243;s:51:\"/Applications/MAMP/htdocs/wordpress/wp-includes/ID3\";i:1165755;s:57:\"/Applications/MAMP/htdocs/wordpress/wp-includes/PHPMailer\";i:269336;s:79:\"/Applications/MAMP/htdocs/wordpress/wp-includes/SimplePie/library/SimplePie/Net\";i:553;s:81:\"/Applications/MAMP/htdocs/wordpress/wp-includes/SimplePie/library/SimplePie/Cache\";i:4035;s:81:\"/Applications/MAMP/htdocs/wordpress/wp-includes/SimplePie/library/SimplePie/Parse\";i:565;s:88:\"/Applications/MAMP/htdocs/wordpress/wp-includes/SimplePie/library/SimplePie/Content/Type\";i:628;s:83:\"/Applications/MAMP/htdocs/wordpress/wp-includes/SimplePie/library/SimplePie/Content\";i:628;s:91:\"/Applications/MAMP/htdocs/wordpress/wp-includes/SimplePie/library/SimplePie/XML/Declaration\";i:639;s:79:\"/Applications/MAMP/htdocs/wordpress/wp-includes/SimplePie/library/SimplePie/XML\";i:639;s:87:\"/Applications/MAMP/htdocs/wordpress/wp-includes/SimplePie/library/SimplePie/Decode/HTML\";i:22661;s:82:\"/Applications/MAMP/htdocs/wordpress/wp-includes/SimplePie/library/SimplePie/Decode\";i:22661;s:80:\"/Applications/MAMP/htdocs/wordpress/wp-includes/SimplePie/library/SimplePie/HTTP\";i:664;s:75:\"/Applications/MAMP/htdocs/wordpress/wp-includes/SimplePie/library/SimplePie\";i:41042;s:65:\"/Applications/MAMP/htdocs/wordpress/wp-includes/SimplePie/library\";i:56395;s:65:\"/Applications/MAMP/htdocs/wordpress/wp-includes/SimplePie/src/Net\";i:7380;s:67:\"/Applications/MAMP/htdocs/wordpress/wp-includes/SimplePie/src/Cache\";i:46444;s:67:\"/Applications/MAMP/htdocs/wordpress/wp-includes/SimplePie/src/Parse\";i:25734;s:74:\"/Applications/MAMP/htdocs/wordpress/wp-includes/SimplePie/src/Content/Type\";i:7646;s:69:\"/Applications/MAMP/htdocs/wordpress/wp-includes/SimplePie/src/Content\";i:7646;s:77:\"/Applications/MAMP/htdocs/wordpress/wp-includes/SimplePie/src/XML/Declaration\";i:7744;s:65:\"/Applications/MAMP/htdocs/wordpress/wp-includes/SimplePie/src/XML\";i:7744;s:66:\"/Applications/MAMP/htdocs/wordpress/wp-includes/SimplePie/src/HTTP\";i:34052;s:61:\"/Applications/MAMP/htdocs/wordpress/wp-includes/SimplePie/src\";i:686427;s:57:\"/Applications/MAMP/htdocs/wordpress/wp-includes/SimplePie\";i:744875;s:71:\"/Applications/MAMP/htdocs/wordpress/wp-includes/css/dist/format-library\";i:3214;s:70:\"/Applications/MAMP/htdocs/wordpress/wp-includes/css/dist/block-library\";i:822510;s:68:\"/Applications/MAMP/htdocs/wordpress/wp-includes/css/dist/preferences\";i:4356;s:65:\"/Applications/MAMP/htdocs/wordpress/wp-includes/css/dist/patterns\";i:7596;s:69:\"/Applications/MAMP/htdocs/wordpress/wp-includes/css/dist/edit-widgets\";i:98410;s:66:\"/Applications/MAMP/htdocs/wordpress/wp-includes/css/dist/edit-site\";i:783976;s:60:\"/Applications/MAMP/htdocs/wordpress/wp-includes/css/dist/nux\";i:9830;s:72:\"/Applications/MAMP/htdocs/wordpress/wp-includes/css/dist/block-directory\";i:15808;s:67:\"/Applications/MAMP/htdocs/wordpress/wp-includes/css/dist/components\";i:418369;s:68:\"/Applications/MAMP/htdocs/wordpress/wp-includes/css/dist/base-styles\";i:15340;s:77:\"/Applications/MAMP/htdocs/wordpress/wp-includes/css/dist/list-reusable-blocks\";i:17728;s:69:\"/Applications/MAMP/htdocs/wordpress/wp-includes/css/dist/block-editor\";i:623141;s:74:\"/Applications/MAMP/htdocs/wordpress/wp-includes/css/dist/customize-widgets\";i:25450;s:65:\"/Applications/MAMP/htdocs/wordpress/wp-includes/css/dist/admin-ui\";i:5114;s:65:\"/Applications/MAMP/htdocs/wordpress/wp-includes/css/dist/commands\";i:29246;s:66:\"/Applications/MAMP/htdocs/wordpress/wp-includes/css/dist/edit-post\";i:66228;s:72:\"/Applications/MAMP/htdocs/wordpress/wp-includes/css/dist/reusable-blocks\";i:2444;s:63:\"/Applications/MAMP/htdocs/wordpress/wp-includes/css/dist/editor\";i:250472;s:64:\"/Applications/MAMP/htdocs/wordpress/wp-includes/css/dist/widgets\";i:23894;s:56:\"/Applications/MAMP/htdocs/wordpress/wp-includes/css/dist\";i:3223126;s:51:\"/Applications/MAMP/htdocs/wordpress/wp-includes/css\";i:3871769;s:62:\"/Applications/MAMP/htdocs/wordpress/wp-includes/images/smilies\";i:10082;s:62:\"/Applications/MAMP/htdocs/wordpress/wp-includes/images/crystal\";i:15541;s:60:\"/Applications/MAMP/htdocs/wordpress/wp-includes/images/media\";i:5263;s:54:\"/Applications/MAMP/htdocs/wordpress/wp-includes/images\";i:102178;s:61:\"/Applications/MAMP/htdocs/wordpress/wp-includes/js/codemirror\";i:1287141;s:73:\"/Applications/MAMP/htdocs/wordpress/wp-includes/js/tinymce/plugins/wpview\";i:8985;s:74:\"/Applications/MAMP/htdocs/wordpress/wp-includes/js/tinymce/plugins/wpemoji\";i:5099;s:81:\"/Applications/MAMP/htdocs/wordpress/wp-includes/js/tinymce/plugins/directionality\";i:2749;s:73:\"/Applications/MAMP/htdocs/wordpress/wp-includes/js/tinymce/plugins/wplink\";i:26786;s:76:\"/Applications/MAMP/htdocs/wordpress/wp-includes/js/tinymce/plugins/wordpress\";i:50553;s:76:\"/Applications/MAMP/htdocs/wordpress/wp-includes/js/tinymce/plugins/wpdialogs\";i:3761;s:72:\"/Applications/MAMP/htdocs/wordpress/wp-includes/js/tinymce/plugins/lists\";i:97383;s:76:\"/Applications/MAMP/htdocs/wordpress/wp-includes/js/tinymce/plugins/textcolor\";i:16237;s:80:\"/Applications/MAMP/htdocs/wordpress/wp-includes/js/tinymce/plugins/wptextpattern\";i:11923;s:72:\"/Applications/MAMP/htdocs/wordpress/wp-includes/js/tinymce/plugins/image\";i:55874;s:79:\"/Applications/MAMP/htdocs/wordpress/wp-includes/js/tinymce/plugins/compat3x/css\";i:8179;s:75:\"/Applications/MAMP/htdocs/wordpress/wp-includes/js/tinymce/plugins/compat3x\";i:21758;s:75:\"/Applications/MAMP/htdocs/wordpress/wp-includes/js/tinymce/plugins/tabfocus\";i:5336;s:79:\"/Applications/MAMP/htdocs/wordpress/wp-includes/js/tinymce/plugins/wpautoresize\";i:8332;s:71:\"/Applications/MAMP/htdocs/wordpress/wp-includes/js/tinymce/plugins/link\";i:32949;s:78:\"/Applications/MAMP/htdocs/wordpress/wp-includes/js/tinymce/plugins/wpeditimage\";i:37709;s:74:\"/Applications/MAMP/htdocs/wordpress/wp-includes/js/tinymce/plugins/charmap\";i:31811;s:78:\"/Applications/MAMP/htdocs/wordpress/wp-includes/js/tinymce/plugins/colorpicker\";i:4910;s:69:\"/Applications/MAMP/htdocs/wordpress/wp-includes/js/tinymce/plugins/hr\";i:1347;s:77:\"/Applications/MAMP/htdocs/wordpress/wp-includes/js/tinymce/plugins/fullscreen\";i:7779;s:76:\"/Applications/MAMP/htdocs/wordpress/wp-includes/js/tinymce/plugins/wpgallery\";i:4806;s:72:\"/Applications/MAMP/htdocs/wordpress/wp-includes/js/tinymce/plugins/paste\";i:113193;s:72:\"/Applications/MAMP/htdocs/wordpress/wp-includes/js/tinymce/plugins/media\";i:57914;s:66:\"/Applications/MAMP/htdocs/wordpress/wp-includes/js/tinymce/plugins\";i:607194;s:81:\"/Applications/MAMP/htdocs/wordpress/wp-includes/js/tinymce/skins/wordpress/images\";i:16653;s:74:\"/Applications/MAMP/htdocs/wordpress/wp-includes/js/tinymce/skins/wordpress\";i:25413;s:78:\"/Applications/MAMP/htdocs/wordpress/wp-includes/js/tinymce/skins/lightgray/img\";i:2856;s:80:\"/Applications/MAMP/htdocs/wordpress/wp-includes/js/tinymce/skins/lightgray/fonts\";i:155760;s:74:\"/Applications/MAMP/htdocs/wordpress/wp-includes/js/tinymce/skins/lightgray\";i:210254;s:64:\"/Applications/MAMP/htdocs/wordpress/wp-includes/js/tinymce/skins\";i:235667;s:64:\"/Applications/MAMP/htdocs/wordpress/wp-includes/js/tinymce/utils\";i:18826;s:64:\"/Applications/MAMP/htdocs/wordpress/wp-includes/js/tinymce/langs\";i:15529;s:72:\"/Applications/MAMP/htdocs/wordpress/wp-includes/js/tinymce/themes/inlite\";i:452642;s:72:\"/Applications/MAMP/htdocs/wordpress/wp-includes/js/tinymce/themes/modern\";i:446221;s:65:\"/Applications/MAMP/htdocs/wordpress/wp-includes/js/tinymce/themes\";i:898863;s:58:\"/Applications/MAMP/htdocs/wordpress/wp-includes/js/tinymce\";i:2856553;s:56:\"/Applications/MAMP/htdocs/wordpress/wp-includes/js/jcrop\";i:24976;s:67:\"/Applications/MAMP/htdocs/wordpress/wp-includes/js/dist/development\";i:179856;s:89:\"/Applications/MAMP/htdocs/wordpress/wp-includes/js/dist/script-modules/block-library/form\";i:2255;s:89:\"/Applications/MAMP/htdocs/wordpress/wp-includes/js/dist/script-modules/block-library/file\";i:3161;s:94:\"/Applications/MAMP/htdocs/wordpress/wp-includes/js/dist/script-modules/block-library/accordion\";i:7101;s:95:\"/Applications/MAMP/htdocs/wordpress/wp-includes/js/dist/script-modules/block-library/navigation\";i:10984;s:90:\"/Applications/MAMP/htdocs/wordpress/wp-includes/js/dist/script-modules/block-library/image\";i:17181;s:91:\"/Applications/MAMP/htdocs/wordpress/wp-includes/js/dist/script-modules/block-library/search\";i:5263;s:90:\"/Applications/MAMP/htdocs/wordpress/wp-includes/js/dist/script-modules/block-library/query\";i:6173;s:84:\"/Applications/MAMP/htdocs/wordpress/wp-includes/js/dist/script-modules/block-library\";i:52118;s:91:\"/Applications/MAMP/htdocs/wordpress/wp-includes/js/dist/script-modules/interactivity-router\";i:74688;s:84:\"/Applications/MAMP/htdocs/wordpress/wp-includes/js/dist/script-modules/interactivity\";i:281823;s:89:\"/Applications/MAMP/htdocs/wordpress/wp-includes/js/dist/script-modules/block-editor/utils\";i:6057;s:83:\"/Applications/MAMP/htdocs/wordpress/wp-includes/js/dist/script-modules/block-editor\";i:6057;s:75:\"/Applications/MAMP/htdocs/wordpress/wp-includes/js/dist/script-modules/a11y\";i:3461;s:70:\"/Applications/MAMP/htdocs/wordpress/wp-includes/js/dist/script-modules\";i:418147;s:62:\"/Applications/MAMP/htdocs/wordpress/wp-includes/js/dist/vendor\";i:2665433;s:55:\"/Applications/MAMP/htdocs/wordpress/wp-includes/js/dist\";i:22632074;s:60:\"/Applications/MAMP/htdocs/wordpress/wp-includes/js/jquery/ui\";i:787634;s:57:\"/Applications/MAMP/htdocs/wordpress/wp-includes/js/jquery\";i:1304968;s:55:\"/Applications/MAMP/htdocs/wordpress/wp-includes/js/crop\";i:20004;s:73:\"/Applications/MAMP/htdocs/wordpress/wp-includes/js/mediaelement/renderers\";i:18880;s:63:\"/Applications/MAMP/htdocs/wordpress/wp-includes/js/mediaelement\";i:721307;s:60:\"/Applications/MAMP/htdocs/wordpress/wp-includes/js/swfupload\";i:0;s:59:\"/Applications/MAMP/htdocs/wordpress/wp-includes/js/plupload\";i:490958;s:59:\"/Applications/MAMP/htdocs/wordpress/wp-includes/js/thickbox\";i:31332;s:64:\"/Applications/MAMP/htdocs/wordpress/wp-includes/js/imgareaselect\";i:49553;s:50:\"/Applications/MAMP/htdocs/wordpress/wp-includes/js\";i:31820841;s:62:\"/Applications/MAMP/htdocs/wordpress/wp-includes/block-patterns\";i:8951;s:61:\"/Applications/MAMP/htdocs/wordpress/wp-includes/abilities-api\";i:47953;s:60:\"/Applications/MAMP/htdocs/wordpress/wp-includes/certificates\";i:234150;s:62:\"/Applications/MAMP/htdocs/wordpress/wp-includes/block-supports\";i:134988;s:60:\"/Applications/MAMP/htdocs/wordpress/wp-includes/theme-compat\";i:15656;s:64:\"/Applications/MAMP/htdocs/wordpress/wp-includes/Requests/library\";i:261;s:70:\"/Applications/MAMP/htdocs/wordpress/wp-includes/Requests/src/Transport\";i:35470;s:69:\"/Applications/MAMP/htdocs/wordpress/wp-includes/Requests/src/Response\";i:3101;s:66:\"/Applications/MAMP/htdocs/wordpress/wp-includes/Requests/src/Proxy\";i:4217;s:65:\"/Applications/MAMP/htdocs/wordpress/wp-includes/Requests/src/Auth\";i:2541;s:67:\"/Applications/MAMP/htdocs/wordpress/wp-includes/Requests/src/Cookie\";i:4363;s:80:\"/Applications/MAMP/htdocs/wordpress/wp-includes/Requests/src/Exception/Transport\";i:1397;s:75:\"/Applications/MAMP/htdocs/wordpress/wp-includes/Requests/src/Exception/Http\";i:16715;s:70:\"/Applications/MAMP/htdocs/wordpress/wp-includes/Requests/src/Exception\";i:22464;s:68:\"/Applications/MAMP/htdocs/wordpress/wp-includes/Requests/src/Utility\";i:7176;s:60:\"/Applications/MAMP/htdocs/wordpress/wp-includes/Requests/src\";i:214849;s:56:\"/Applications/MAMP/htdocs/wordpress/wp-includes/Requests\";i:215110;s:56:\"/Applications/MAMP/htdocs/wordpress/wp-includes/html-api\";i:541819;s:52:\"/Applications/MAMP/htdocs/wordpress/wp-includes/pomo\";i:57146;s:66:\"/Applications/MAMP/htdocs/wordpress/wp-includes/sitemaps/providers\";i:17599;s:56:\"/Applications/MAMP/htdocs/wordpress/wp-includes/sitemaps\";i:47547;s:62:\"/Applications/MAMP/htdocs/wordpress/wp-includes/block-bindings\";i:9582;s:86:\"/Applications/MAMP/htdocs/wordpress/wp-includes/sodium_compat/namespaced/Core/ChaCha20\";i:224;s:86:\"/Applications/MAMP/htdocs/wordpress/wp-includes/sodium_compat/namespaced/Core/Poly1305\";i:112;s:91:\"/Applications/MAMP/htdocs/wordpress/wp-includes/sodium_compat/namespaced/Core/Curve25519/Ge\";i:602;s:88:\"/Applications/MAMP/htdocs/wordpress/wp-includes/sodium_compat/namespaced/Core/Curve25519\";i:820;s:77:\"/Applications/MAMP/htdocs/wordpress/wp-includes/sodium_compat/namespaced/Core\";i:2444;s:72:\"/Applications/MAMP/htdocs/wordpress/wp-includes/sodium_compat/namespaced\";i:2698;s:65:\"/Applications/MAMP/htdocs/wordpress/wp-includes/sodium_compat/lib\";i:99005;s:85:\"/Applications/MAMP/htdocs/wordpress/wp-includes/sodium_compat/src/Core32/SecretStream\";i:3656;s:81:\"/Applications/MAMP/htdocs/wordpress/wp-includes/sodium_compat/src/Core32/ChaCha20\";i:6407;s:81:\"/Applications/MAMP/htdocs/wordpress/wp-includes/sodium_compat/src/Core32/Poly1305\";i:15965;s:86:\"/Applications/MAMP/htdocs/wordpress/wp-includes/sodium_compat/src/Core32/Curve25519/Ge\";i:8177;s:83:\"/Applications/MAMP/htdocs/wordpress/wp-includes/sodium_compat/src/Core32/Curve25519\";i:122690;s:72:\"/Applications/MAMP/htdocs/wordpress/wp-includes/sodium_compat/src/Core32\";i:437041;s:76:\"/Applications/MAMP/htdocs/wordpress/wp-includes/sodium_compat/src/Core/AEGIS\";i:14759;s:83:\"/Applications/MAMP/htdocs/wordpress/wp-includes/sodium_compat/src/Core/SecretStream\";i:3624;s:77:\"/Applications/MAMP/htdocs/wordpress/wp-includes/sodium_compat/src/Core/Base64\";i:16959;s:79:\"/Applications/MAMP/htdocs/wordpress/wp-includes/sodium_compat/src/Core/ChaCha20\";i:5739;s:79:\"/Applications/MAMP/htdocs/wordpress/wp-includes/sodium_compat/src/Core/Poly1305\";i:12912;s:84:\"/Applications/MAMP/htdocs/wordpress/wp-includes/sodium_compat/src/Core/Curve25519/Ge\";i:10572;s:81:\"/Applications/MAMP/htdocs/wordpress/wp-includes/sodium_compat/src/Core/Curve25519\";i:127599;s:74:\"/Applications/MAMP/htdocs/wordpress/wp-includes/sodium_compat/src/Core/AES\";i:12651;s:70:\"/Applications/MAMP/htdocs/wordpress/wp-includes/sodium_compat/src/Core\";i:506345;s:71:\"/Applications/MAMP/htdocs/wordpress/wp-includes/sodium_compat/src/PHP52\";i:4910;s:65:\"/Applications/MAMP/htdocs/wordpress/wp-includes/sodium_compat/src\";i:1278041;s:61:\"/Applications/MAMP/htdocs/wordpress/wp-includes/sodium_compat\";i:1386219;s:66:\"/Applications/MAMP/htdocs/wordpress/wp-includes/Text/Diff/Renderer\";i:5528;s:64:\"/Applications/MAMP/htdocs/wordpress/wp-includes/Text/Diff/Engine\";i:31802;s:57:\"/Applications/MAMP/htdocs/wordpress/wp-includes/Text/Diff\";i:44136;s:52:\"/Applications/MAMP/htdocs/wordpress/wp-includes/Text\";i:56335;s:58:\"/Applications/MAMP/htdocs/wordpress/wp-includes/php-compat\";i:1253;s:51:\"/Applications/MAMP/htdocs/wordpress/wp-includes/IXR\";i:34269;s:53:\"/Applications/MAMP/htdocs/wordpress/wp-includes/fonts\";i:327011;s:54:\"/Applications/MAMP/htdocs/wordpress/wp-includes/assets\";i:29678;s:55:\"/Applications/MAMP/htdocs/wordpress/wp-includes/widgets\";i:160197;s:66:\"/Applications/MAMP/htdocs/wordpress/wp-includes/rest-api/endpoints\";i:907136;s:63:\"/Applications/MAMP/htdocs/wordpress/wp-includes/rest-api/search\";i:16917;s:63:\"/Applications/MAMP/htdocs/wordpress/wp-includes/rest-api/fields\";i:22750;s:56:\"/Applications/MAMP/htdocs/wordpress/wp-includes/rest-api\";i:1038730;s:60:\"/Applications/MAMP/htdocs/wordpress/wp-includes/style-engine\";i:48218;s:65:\"/Applications/MAMP/htdocs/wordpress/wp-includes/interactivity-api\";i:62890;s:57:\"/Applications/MAMP/htdocs/wordpress/wp-includes/customize\";i:178682;s:47:\"/Applications/MAMP/htdocs/wordpress/wp-includes\";i:52009569;s:54:\"/Applications/MAMP/htdocs/wordpress/wp-content/upgrade\";i:0;s:64:\"/Applications/MAMP/htdocs/wordpress/wp-content/languages/plugins\";i:691260;s:63:\"/Applications/MAMP/htdocs/wordpress/wp-content/languages/themes\";i:0;s:56:\"/Applications/MAMP/htdocs/wordpress/wp-content/languages\";i:5000357;s:46:\"/Applications/MAMP/htdocs/wordpress/wp-content\";i:5008581;s:35:\"/Applications/MAMP/htdocs/wordpress\";i:66555169;s:67:\"/Applications/MAMP/htdocs/wordpress/wp-content/themes/profusion/css\";i:1876134;s:70:\"/Applications/MAMP/htdocs/wordpress/wp-content/themes/profusion/images\";i:5170167;s:66:\"/Applications/MAMP/htdocs/wordpress/wp-content/themes/profusion/js\";i:2792220;s:63:\"/Applications/MAMP/htdocs/wordpress/wp-content/themes/profusion\";i:10743813;s:53:\"/Applications/MAMP/htdocs/wordpress/wp-content/themes\";i:10754085;s:92:\"/Applications/MAMP/htdocs/wordpress/wp-content/plugins/advanced-custom-fields/includes/forms\";i:80730;s:98:\"/Applications/MAMP/htdocs/wordpress/wp-content/plugins/advanced-custom-fields/includes/admin/tools\";i:25482;s:103:\"/Applications/MAMP/htdocs/wordpress/wp-content/plugins/advanced-custom-fields/includes/admin/post-types\";i:74726;s:106:\"/Applications/MAMP/htdocs/wordpress/wp-content/plugins/advanced-custom-fields/includes/admin/views/upgrade\";i:10486;s:104:\"/Applications/MAMP/htdocs/wordpress/wp-content/plugins/advanced-custom-fields/includes/admin/views/tools\";i:935;s:114:\"/Applications/MAMP/htdocs/wordpress/wp-content/plugins/advanced-custom-fields/includes/admin/views/acf-field-group\";i:43287;s:111:\"/Applications/MAMP/htdocs/wordpress/wp-content/plugins/advanced-custom-fields/includes/admin/views/acf-taxonomy\";i:50121;s:112:\"/Applications/MAMP/htdocs/wordpress/wp-content/plugins/advanced-custom-fields/includes/admin/views/acf-post-type\";i:52214;s:105:\"/Applications/MAMP/htdocs/wordpress/wp-content/plugins/advanced-custom-fields/includes/admin/views/global\";i:16616;s:98:\"/Applications/MAMP/htdocs/wordpress/wp-content/plugins/advanced-custom-fields/includes/admin/views\";i:184625;s:92:\"/Applications/MAMP/htdocs/wordpress/wp-content/plugins/advanced-custom-fields/includes/admin\";i:359046;s:93:\"/Applications/MAMP/htdocs/wordpress/wp-content/plugins/advanced-custom-fields/includes/legacy\";i:2082;s:94:\"/Applications/MAMP/htdocs/wordpress/wp-content/plugins/advanced-custom-fields/includes/walkers\";i:3804;s:96:\"/Applications/MAMP/htdocs/wordpress/wp-content/plugins/advanced-custom-fields/includes/locations\";i:55503;s:90:\"/Applications/MAMP/htdocs/wordpress/wp-content/plugins/advanced-custom-fields/includes/api\";i:144466;s:93:\"/Applications/MAMP/htdocs/wordpress/wp-content/plugins/advanced-custom-fields/includes/fields\";i:401311;s:97:\"/Applications/MAMP/htdocs/wordpress/wp-content/plugins/advanced-custom-fields/includes/post-types\";i:75231;s:95:\"/Applications/MAMP/htdocs/wordpress/wp-content/plugins/advanced-custom-fields/includes/rest-api\";i:33272;s:91:\"/Applications/MAMP/htdocs/wordpress/wp-content/plugins/advanced-custom-fields/includes/ajax\";i:27422;s:86:\"/Applications/MAMP/htdocs/wordpress/wp-content/plugins/advanced-custom-fields/includes\";i:1546586;s:82:\"/Applications/MAMP/htdocs/wordpress/wp-content/plugins/advanced-custom-fields/lang\";i:18204731;s:99:\"/Applications/MAMP/htdocs/wordpress/wp-content/plugins/advanced-custom-fields/assets/inc/timepicker\";i:130999;s:106:\"/Applications/MAMP/htdocs/wordpress/wp-content/plugins/advanced-custom-fields/assets/inc/datepicker/images\";i:11440;s:99:\"/Applications/MAMP/htdocs/wordpress/wp-content/plugins/advanced-custom-fields/assets/inc/datepicker\";i:61417;s:98:\"/Applications/MAMP/htdocs/wordpress/wp-content/plugins/advanced-custom-fields/assets/inc/select2/4\";i:582485;s:98:\"/Applications/MAMP/htdocs/wordpress/wp-content/plugins/advanced-custom-fields/assets/inc/select2/3\";i:268808;s:96:\"/Applications/MAMP/htdocs/wordpress/wp-content/plugins/advanced-custom-fields/assets/inc/select2\";i:851336;s:107:\"/Applications/MAMP/htdocs/wordpress/wp-content/plugins/advanced-custom-fields/assets/inc/color-picker-alpha\";i:24330;s:88:\"/Applications/MAMP/htdocs/wordpress/wp-content/plugins/advanced-custom-fields/assets/inc\";i:1068125;s:111:\"/Applications/MAMP/htdocs/wordpress/wp-content/plugins/advanced-custom-fields/assets/images/field-type-previews\";i:676097;s:104:\"/Applications/MAMP/htdocs/wordpress/wp-content/plugins/advanced-custom-fields/assets/images/field-states\";i:671;s:108:\"/Applications/MAMP/htdocs/wordpress/wp-content/plugins/advanced-custom-fields/assets/images/field-type-icons\";i:28512;s:97:\"/Applications/MAMP/htdocs/wordpress/wp-content/plugins/advanced-custom-fields/assets/images/icons\";i:48379;s:91:\"/Applications/MAMP/htdocs/wordpress/wp-content/plugins/advanced-custom-fields/assets/images\";i:1174114;s:94:\"/Applications/MAMP/htdocs/wordpress/wp-content/plugins/advanced-custom-fields/assets/build/css\";i:356065;s:93:\"/Applications/MAMP/htdocs/wordpress/wp-content/plugins/advanced-custom-fields/assets/build/js\";i:231655;s:90:\"/Applications/MAMP/htdocs/wordpress/wp-content/plugins/advanced-custom-fields/assets/build\";i:587763;s:84:\"/Applications/MAMP/htdocs/wordpress/wp-content/plugins/advanced-custom-fields/assets\";i:2830002;s:93:\"/Applications/MAMP/htdocs/wordpress/wp-content/plugins/advanced-custom-fields/vendor/composer\";i:21238;s:84:\"/Applications/MAMP/htdocs/wordpress/wp-content/plugins/advanced-custom-fields/vendor\";i:21986;s:88:\"/Applications/MAMP/htdocs/wordpress/wp-content/plugins/advanced-custom-fields/src/Blocks\";i:2935;s:86:\"/Applications/MAMP/htdocs/wordpress/wp-content/plugins/advanced-custom-fields/src/Meta\";i:11821;s:93:\"/Applications/MAMP/htdocs/wordpress/wp-content/plugins/advanced-custom-fields/src/Site_Health\";i:22598;s:84:\"/Applications/MAMP/htdocs/wordpress/wp-content/plugins/advanced-custom-fields/src/AI\";i:0;s:81:\"/Applications/MAMP/htdocs/wordpress/wp-content/plugins/advanced-custom-fields/src\";i:37354;s:77:\"/Applications/MAMP/htdocs/wordpress/wp-content/plugins/advanced-custom-fields\";i:22712254;s:76:\"/Applications/MAMP/htdocs/wordpress/wp-content/plugins/duplicate-post/compat\";i:5564;s:73:\"/Applications/MAMP/htdocs/wordpress/wp-content/plugins/duplicate-post/css\";i:4672;s:77:\"/Applications/MAMP/htdocs/wordpress/wp-content/plugins/duplicate-post/js/dist\";i:16553;s:72:\"/Applications/MAMP/htdocs/wordpress/wp-content/plugins/duplicate-post/js\";i:16553;s:85:\"/Applications/MAMP/htdocs/wordpress/wp-content/plugins/duplicate-post/vendor/composer\";i:72255;s:76:\"/Applications/MAMP/htdocs/wordpress/wp-content/plugins/duplicate-post/vendor\";i:72433;s:76:\"/Applications/MAMP/htdocs/wordpress/wp-content/plugins/duplicate-post/src/ui\";i:55227;s:85:\"/Applications/MAMP/htdocs/wordpress/wp-content/plugins/duplicate-post/src/admin/views\";i:8736;s:79:\"/Applications/MAMP/htdocs/wordpress/wp-content/plugins/duplicate-post/src/admin\";i:35190;s:82:\"/Applications/MAMP/htdocs/wordpress/wp-content/plugins/duplicate-post/src/handlers\";i:20326;s:82:\"/Applications/MAMP/htdocs/wordpress/wp-content/plugins/duplicate-post/src/watchers\";i:15870;s:73:\"/Applications/MAMP/htdocs/wordpress/wp-content/plugins/duplicate-post/src\";i:169540;s:69:\"/Applications/MAMP/htdocs/wordpress/wp-content/plugins/duplicate-post\";i:342616;s:82:\"/Applications/MAMP/htdocs/wordpress/wp-content/plugins/contact-form-7/includes/css\";i:3099;s:116:\"/Applications/MAMP/htdocs/wordpress/wp-content/plugins/contact-form-7/includes/js/jquery-ui/themes/smoothness/images\";i:32598;s:109:\"/Applications/MAMP/htdocs/wordpress/wp-content/plugins/contact-form-7/includes/js/jquery-ui/themes/smoothness\";i:118302;s:98:\"/Applications/MAMP/htdocs/wordpress/wp-content/plugins/contact-form-7/includes/js/jquery-ui/themes\";i:118302;s:91:\"/Applications/MAMP/htdocs/wordpress/wp-content/plugins/contact-form-7/includes/js/jquery-ui\";i:118302;s:81:\"/Applications/MAMP/htdocs/wordpress/wp-content/plugins/contact-form-7/includes/js\";i:132493;s:85:\"/Applications/MAMP/htdocs/wordpress/wp-content/plugins/contact-form-7/includes/swv/js\";i:12593;s:92:\"/Applications/MAMP/htdocs/wordpress/wp-content/plugins/contact-form-7/includes/swv/php/rules\";i:17834;s:86:\"/Applications/MAMP/htdocs/wordpress/wp-content/plugins/contact-form-7/includes/swv/php\";i:21490;s:82:\"/Applications/MAMP/htdocs/wordpress/wp-content/plugins/contact-form-7/includes/swv\";i:39838;s:91:\"/Applications/MAMP/htdocs/wordpress/wp-content/plugins/contact-form-7/includes/block-editor\";i:6274;s:95:\"/Applications/MAMP/htdocs/wordpress/wp-content/plugins/contact-form-7/includes/config-validator\";i:33313;s:78:\"/Applications/MAMP/htdocs/wordpress/wp-content/plugins/contact-form-7/includes\";i:455104;s:88:\"/Applications/MAMP/htdocs/wordpress/wp-content/plugins/contact-form-7/admin/includes/css\";i:11209;s:87:\"/Applications/MAMP/htdocs/wordpress/wp-content/plugins/contact-form-7/admin/includes/js\";i:12875;s:84:\"/Applications/MAMP/htdocs/wordpress/wp-content/plugins/contact-form-7/admin/includes\";i:79497;s:75:\"/Applications/MAMP/htdocs/wordpress/wp-content/plugins/contact-form-7/admin\";i:110965;s:79:\"/Applications/MAMP/htdocs/wordpress/wp-content/plugins/contact-form-7/languages\";i:128;s:85:\"/Applications/MAMP/htdocs/wordpress/wp-content/plugins/contact-form-7/modules/akismet\";i:8452;s:88:\"/Applications/MAMP/htdocs/wordpress/wp-content/plugins/contact-form-7/modules/sendinblue\";i:27975;s:87:\"/Applications/MAMP/htdocs/wordpress/wp-content/plugins/contact-form-7/modules/turnstile\";i:12966;s:87:\"/Applications/MAMP/htdocs/wordpress/wp-content/plugins/contact-form-7/modules/recaptcha\";i:15596;s:94:\"/Applications/MAMP/htdocs/wordpress/wp-content/plugins/contact-form-7/modules/constant-contact\";i:4610;s:84:\"/Applications/MAMP/htdocs/wordpress/wp-content/plugins/contact-form-7/modules/stripe\";i:23319;s:77:\"/Applications/MAMP/htdocs/wordpress/wp-content/plugins/contact-form-7/modules\";i:191918;s:76:\"/Applications/MAMP/htdocs/wordpress/wp-content/plugins/contact-form-7/assets\";i:31340;s:69:\"/Applications/MAMP/htdocs/wordpress/wp-content/plugins/contact-form-7\";i:821726;s:72:\"/Applications/MAMP/htdocs/wordpress/wp-content/plugins/flamingo/includes\";i:28271;s:82:\"/Applications/MAMP/htdocs/wordpress/wp-content/plugins/flamingo/admin/includes/css\";i:1310;s:81:\"/Applications/MAMP/htdocs/wordpress/wp-content/plugins/flamingo/admin/includes/js\";i:476;s:78:\"/Applications/MAMP/htdocs/wordpress/wp-content/plugins/flamingo/admin/includes\";i:33400;s:69:\"/Applications/MAMP/htdocs/wordpress/wp-content/plugins/flamingo/admin\";i:56062;s:73:\"/Applications/MAMP/htdocs/wordpress/wp-content/plugins/flamingo/languages\";i:122;s:63:\"/Applications/MAMP/htdocs/wordpress/wp-content/plugins/flamingo\";i:108050;s:54:\"/Applications/MAMP/htdocs/wordpress/wp-content/plugins\";i:23984674;s:68:\"/Applications/MAMP/htdocs/wordpress/wp-content/uploads/wpcf7_uploads\";i:152;s:62:\"/Applications/MAMP/htdocs/wordpress/wp-content/uploads/2026/02\";i:10303652;s:59:\"/Applications/MAMP/htdocs/wordpress/wp-content/uploads/2026\";i:10303652;s:54:\"/Applications/MAMP/htdocs/wordpress/wp-content/uploads\";i:10303804;}', 'off'),
(698, '_site_transient_timeout_wp_theme_files_patterns-e0fc5320edcdf16d22564e9bef9c9493', '1771791754', 'off'),
(699, '_site_transient_wp_theme_files_patterns-e0fc5320edcdf16d22564e9bef9c9493', 'a:2:{s:7:\"version\";s:3:\"1.0\";s:8:\"patterns\";a:0:{}}', 'off'),
(702, '_site_transient_timeout_theme_roots', '1771791755', 'off'),
(703, '_site_transient_theme_roots', 'a:1:{s:9:\"profusion\";s:7:\"/themes\";}', 'off'),
(704, '_site_transient_timeout_available_translations', '1771800768', 'off');
INSERT INTO `wp_wordpressoptions` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(705, '_site_transient_available_translations', 'a:131:{s:2:\"af\";a:8:{s:8:\"language\";s:2:\"af\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-05-13 15:59:22\";s:12:\"english_name\";s:9:\"Afrikaans\";s:11:\"native_name\";s:9:\"Afrikaans\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8-beta/af.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"af\";i:2;s:3:\"afr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Gaan voort\";}}s:2:\"am\";a:8:{s:8:\"language\";s:2:\"am\";s:7:\"version\";s:6:\"6.0.11\";s:7:\"updated\";s:19:\"2022-09-29 20:43:49\";s:12:\"english_name\";s:7:\"Amharic\";s:11:\"native_name\";s:12:\"አማርኛ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.0.11/am.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"am\";i:2;s:3:\"amh\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"ቀጥል\";}}s:3:\"arg\";a:8:{s:8:\"language\";s:3:\"arg\";s:7:\"version\";s:8:\"6.2-beta\";s:7:\"updated\";s:19:\"2022-09-22 16:46:56\";s:12:\"english_name\";s:9:\"Aragonese\";s:11:\"native_name\";s:9:\"Aragonés\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/6.2-beta/arg.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"an\";i:2;s:3:\"arg\";i:3;s:3:\"arg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continar\";}}s:2:\"ar\";a:8:{s:8:\"language\";s:2:\"ar\";s:7:\"version\";s:5:\"6.4.7\";s:7:\"updated\";s:19:\"2024-02-13 12:49:38\";s:12:\"english_name\";s:6:\"Arabic\";s:11:\"native_name\";s:14:\"العربية\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.4.7/ar.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:2;s:3:\"ara\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"متابعة\";}}s:3:\"ary\";a:8:{s:8:\"language\";s:3:\"ary\";s:7:\"version\";s:6:\"4.8.27\";s:7:\"updated\";s:19:\"2017-01-26 15:42:35\";s:12:\"english_name\";s:15:\"Moroccan Arabic\";s:11:\"native_name\";s:31:\"العربية المغربية\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.8.27/ary.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:3;s:3:\"ary\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:2:\"as\";a:8:{s:8:\"language\";s:2:\"as\";s:7:\"version\";s:5:\"6.9.1\";s:7:\"updated\";s:19:\"2025-07-10 08:09:09\";s:12:\"english_name\";s:8:\"Assamese\";s:11:\"native_name\";s:21:\"অসমীয়া\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.9.1/as.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"as\";i:2;s:3:\"asm\";i:3;s:3:\"asm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:3:\"azb\";a:8:{s:8:\"language\";s:3:\"azb\";s:7:\"version\";s:5:\"6.4.7\";s:7:\"updated\";s:19:\"2024-01-19 08:58:31\";s:12:\"english_name\";s:17:\"South Azerbaijani\";s:11:\"native_name\";s:29:\"گؤنئی آذربایجان\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.4.7/azb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:3;s:3:\"azb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"az\";a:8:{s:8:\"language\";s:2:\"az\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-06 00:09:27\";s:12:\"english_name\";s:11:\"Azerbaijani\";s:11:\"native_name\";s:16:\"Azərbaycan dili\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/az.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:2;s:3:\"aze\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Davam\";}}s:3:\"bel\";a:8:{s:8:\"language\";s:3:\"bel\";s:7:\"version\";s:6:\"4.9.28\";s:7:\"updated\";s:19:\"2024-12-26 00:37:42\";s:12:\"english_name\";s:10:\"Belarusian\";s:11:\"native_name\";s:29:\"Беларуская мова\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.9.28/bel.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"be\";i:2;s:3:\"bel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Працягнуць\";}}s:5:\"bg_BG\";a:8:{s:8:\"language\";s:5:\"bg_BG\";s:7:\"version\";s:5:\"6.9.1\";s:7:\"updated\";s:19:\"2025-12-01 10:38:20\";s:12:\"english_name\";s:9:\"Bulgarian\";s:11:\"native_name\";s:18:\"Български\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.9.1/bg_BG.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bg\";i:2;s:3:\"bul\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Напред\";}}s:5:\"bn_BD\";a:8:{s:8:\"language\";s:5:\"bn_BD\";s:7:\"version\";s:5:\"6.9.1\";s:7:\"updated\";s:19:\"2026-02-07 06:54:04\";s:12:\"english_name\";s:20:\"Bengali (Bangladesh)\";s:11:\"native_name\";s:15:\"বাংলা\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.9.1/bn_BD.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"bn\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:28:\"চালিয়ে যান\";}}s:2:\"bo\";a:8:{s:8:\"language\";s:2:\"bo\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2020-10-30 03:24:38\";s:12:\"english_name\";s:7:\"Tibetan\";s:11:\"native_name\";s:21:\"བོད་ཡིག\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8-beta/bo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bo\";i:2;s:3:\"tib\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:33:\"མུ་མཐུད་དུ།\";}}s:5:\"bs_BA\";a:8:{s:8:\"language\";s:5:\"bs_BA\";s:7:\"version\";s:5:\"6.2.8\";s:7:\"updated\";s:19:\"2023-02-22 20:45:53\";s:12:\"english_name\";s:7:\"Bosnian\";s:11:\"native_name\";s:8:\"Bosanski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.8/bs_BA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bs\";i:2;s:3:\"bos\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:2:\"ca\";a:8:{s:8:\"language\";s:2:\"ca\";s:7:\"version\";s:5:\"6.9.1\";s:7:\"updated\";s:19:\"2026-02-10 07:30:35\";s:12:\"english_name\";s:7:\"Catalan\";s:11:\"native_name\";s:7:\"Català\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.9.1/ca.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ca\";i:2;s:3:\"cat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:3:\"ceb\";a:8:{s:8:\"language\";s:3:\"ceb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-02 17:25:51\";s:12:\"english_name\";s:7:\"Cebuano\";s:11:\"native_name\";s:7:\"Cebuano\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/ceb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"ceb\";i:3;s:3:\"ceb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Padayun\";}}s:5:\"cs_CZ\";a:8:{s:8:\"language\";s:5:\"cs_CZ\";s:7:\"version\";s:5:\"6.9.1\";s:7:\"updated\";s:19:\"2026-02-20 12:06:48\";s:12:\"english_name\";s:5:\"Czech\";s:11:\"native_name\";s:9:\"Čeština\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.9.1/cs_CZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cs\";i:2;s:3:\"ces\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Pokračovat\";}}s:2:\"cy\";a:8:{s:8:\"language\";s:2:\"cy\";s:7:\"version\";s:5:\"6.9.1\";s:7:\"updated\";s:19:\"2026-02-20 11:38:29\";s:12:\"english_name\";s:5:\"Welsh\";s:11:\"native_name\";s:7:\"Cymraeg\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.9.1/cy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cy\";i:2;s:3:\"cym\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Parhau\";}}s:5:\"da_DK\";a:8:{s:8:\"language\";s:5:\"da_DK\";s:7:\"version\";s:5:\"6.9.1\";s:7:\"updated\";s:19:\"2026-01-29 07:47:58\";s:12:\"english_name\";s:6:\"Danish\";s:11:\"native_name\";s:5:\"Dansk\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.9.1/da_DK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"da\";i:2;s:3:\"dan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsæt\";}}s:5:\"de_AT\";a:8:{s:8:\"language\";s:5:\"de_AT\";s:7:\"version\";s:5:\"6.9.1\";s:7:\"updated\";s:19:\"2025-10-23 12:01:47\";s:12:\"english_name\";s:16:\"German (Austria)\";s:11:\"native_name\";s:21:\"Deutsch (Österreich)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.9.1/de_AT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_DE\";a:8:{s:8:\"language\";s:5:\"de_DE\";s:7:\"version\";s:5:\"6.9.1\";s:7:\"updated\";s:19:\"2026-02-22 05:26:24\";s:12:\"english_name\";s:6:\"German\";s:11:\"native_name\";s:7:\"Deutsch\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.9.1/de_DE.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:12:\"de_DE_formal\";a:8:{s:8:\"language\";s:12:\"de_DE_formal\";s:7:\"version\";s:5:\"6.9.1\";s:7:\"updated\";s:19:\"2026-02-22 05:25:59\";s:12:\"english_name\";s:15:\"German (Formal)\";s:11:\"native_name\";s:13:\"Deutsch (Sie)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/6.9.1/de_DE_formal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_CH\";a:8:{s:8:\"language\";s:5:\"de_CH\";s:7:\"version\";s:5:\"6.9.1\";s:7:\"updated\";s:19:\"2025-11-28 08:11:27\";s:12:\"english_name\";s:20:\"German (Switzerland)\";s:11:\"native_name\";s:17:\"Deutsch (Schweiz)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.9.1/de_CH.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:14:\"de_CH_informal\";a:8:{s:8:\"language\";s:14:\"de_CH_informal\";s:7:\"version\";s:5:\"6.9.1\";s:7:\"updated\";s:19:\"2025-11-28 08:08:17\";s:12:\"english_name\";s:30:\"German (Switzerland, Informal)\";s:11:\"native_name\";s:21:\"Deutsch (Schweiz, Du)\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/translation/core/6.9.1/de_CH_informal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:3:\"dsb\";a:8:{s:8:\"language\";s:3:\"dsb\";s:7:\"version\";s:5:\"6.2.8\";s:7:\"updated\";s:19:\"2022-07-16 12:13:09\";s:12:\"english_name\";s:13:\"Lower Sorbian\";s:11:\"native_name\";s:16:\"Dolnoserbšćina\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2.8/dsb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"dsb\";i:3;s:3:\"dsb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Dalej\";}}s:3:\"dzo\";a:8:{s:8:\"language\";s:3:\"dzo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-06-29 08:59:03\";s:12:\"english_name\";s:8:\"Dzongkha\";s:11:\"native_name\";s:18:\"རྫོང་ཁ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/dzo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"dz\";i:2;s:3:\"dzo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"el\";a:8:{s:8:\"language\";s:2:\"el\";s:7:\"version\";s:5:\"6.9.1\";s:7:\"updated\";s:19:\"2026-02-02 11:19:29\";s:12:\"english_name\";s:5:\"Greek\";s:11:\"native_name\";s:16:\"Ελληνικά\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.9.1/el.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"el\";i:2;s:3:\"ell\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Συνέχεια\";}}s:5:\"en_CA\";a:8:{s:8:\"language\";s:5:\"en_CA\";s:7:\"version\";s:5:\"6.9.1\";s:7:\"updated\";s:19:\"2025-11-25 13:30:15\";s:12:\"english_name\";s:16:\"English (Canada)\";s:11:\"native_name\";s:16:\"English (Canada)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.9.1/en_CA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_GB\";a:8:{s:8:\"language\";s:5:\"en_GB\";s:7:\"version\";s:5:\"6.9.1\";s:7:\"updated\";s:19:\"2025-12-30 11:47:57\";s:12:\"english_name\";s:12:\"English (UK)\";s:11:\"native_name\";s:12:\"English (UK)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.9.1/en_GB.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_NZ\";a:8:{s:8:\"language\";s:5:\"en_NZ\";s:7:\"version\";s:5:\"6.9.1\";s:7:\"updated\";s:19:\"2025-12-24 12:51:19\";s:12:\"english_name\";s:21:\"English (New Zealand)\";s:11:\"native_name\";s:21:\"English (New Zealand)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.9.1/en_NZ.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_AU\";a:8:{s:8:\"language\";s:5:\"en_AU\";s:7:\"version\";s:5:\"6.9.1\";s:7:\"updated\";s:19:\"2026-02-18 19:42:42\";s:12:\"english_name\";s:19:\"English (Australia)\";s:11:\"native_name\";s:19:\"English (Australia)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.9.1/en_AU.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_ZA\";a:8:{s:8:\"language\";s:5:\"en_ZA\";s:7:\"version\";s:5:\"6.9.1\";s:7:\"updated\";s:19:\"2026-02-19 14:29:55\";s:12:\"english_name\";s:22:\"English (South Africa)\";s:11:\"native_name\";s:22:\"English (South Africa)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.9.1/en_ZA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"eo\";a:8:{s:8:\"language\";s:2:\"eo\";s:7:\"version\";s:5:\"6.9.1\";s:7:\"updated\";s:19:\"2026-01-27 10:24:57\";s:12:\"english_name\";s:9:\"Esperanto\";s:11:\"native_name\";s:9:\"Esperanto\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.9.1/eo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eo\";i:2;s:3:\"epo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Daŭrigi\";}}s:5:\"es_MX\";a:8:{s:8:\"language\";s:5:\"es_MX\";s:7:\"version\";s:5:\"6.9.1\";s:7:\"updated\";s:19:\"2026-02-03 16:11:04\";s:12:\"english_name\";s:16:\"Spanish (Mexico)\";s:11:\"native_name\";s:19:\"Español de México\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.9.1/es_MX.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CL\";a:8:{s:8:\"language\";s:5:\"es_CL\";s:7:\"version\";s:5:\"6.9.1\";s:7:\"updated\";s:19:\"2026-02-11 00:33:09\";s:12:\"english_name\";s:15:\"Spanish (Chile)\";s:11:\"native_name\";s:17:\"Español de Chile\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.9.1/es_CL.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CO\";a:8:{s:8:\"language\";s:5:\"es_CO\";s:7:\"version\";s:5:\"6.9.1\";s:7:\"updated\";s:19:\"2026-02-18 00:34:47\";s:12:\"english_name\";s:18:\"Spanish (Colombia)\";s:11:\"native_name\";s:20:\"Español de Colombia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.9.1/es_CO.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CR\";a:8:{s:8:\"language\";s:5:\"es_CR\";s:7:\"version\";s:3:\"6.9\";s:7:\"updated\";s:19:\"2025-10-01 22:54:47\";s:12:\"english_name\";s:20:\"Spanish (Costa Rica)\";s:11:\"native_name\";s:22:\"Español de Costa Rica\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.9/es_CR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PE\";a:8:{s:8:\"language\";s:5:\"es_PE\";s:7:\"version\";s:6:\"6.9-RC\";s:7:\"updated\";s:19:\"2024-10-16 21:04:12\";s:12:\"english_name\";s:14:\"Spanish (Peru)\";s:11:\"native_name\";s:17:\"Español de Perú\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/6.9-RC/es_PE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_VE\";a:8:{s:8:\"language\";s:5:\"es_VE\";s:7:\"version\";s:5:\"6.4.7\";s:7:\"updated\";s:19:\"2023-10-16 16:00:04\";s:12:\"english_name\";s:19:\"Spanish (Venezuela)\";s:11:\"native_name\";s:21:\"Español de Venezuela\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.4.7/es_VE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_EC\";a:8:{s:8:\"language\";s:5:\"es_EC\";s:7:\"version\";s:5:\"6.2.8\";s:7:\"updated\";s:19:\"2023-04-21 13:32:10\";s:12:\"english_name\";s:17:\"Spanish (Ecuador)\";s:11:\"native_name\";s:19:\"Español de Ecuador\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.8/es_EC.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_DO\";a:8:{s:8:\"language\";s:5:\"es_DO\";s:7:\"version\";s:6:\"5.8.12\";s:7:\"updated\";s:19:\"2021-10-08 14:32:50\";s:12:\"english_name\";s:28:\"Spanish (Dominican Republic)\";s:11:\"native_name\";s:33:\"Español de República Dominicana\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.8.12/es_DO.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_UY\";a:8:{s:8:\"language\";s:5:\"es_UY\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-03-31 18:33:26\";s:12:\"english_name\";s:17:\"Spanish (Uruguay)\";s:11:\"native_name\";s:19:\"Español de Uruguay\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/es_UY.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PR\";a:8:{s:8:\"language\";s:5:\"es_PR\";s:7:\"version\";s:6:\"5.4.18\";s:7:\"updated\";s:19:\"2020-04-29 15:36:59\";s:12:\"english_name\";s:21:\"Spanish (Puerto Rico)\";s:11:\"native_name\";s:23:\"Español de Puerto Rico\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.4.18/es_PR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_GT\";a:8:{s:8:\"language\";s:5:\"es_GT\";s:7:\"version\";s:6:\"5.2.23\";s:7:\"updated\";s:19:\"2019-03-02 06:35:01\";s:12:\"english_name\";s:19:\"Spanish (Guatemala)\";s:11:\"native_name\";s:21:\"Español de Guatemala\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.2.23/es_GT.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_ES\";a:8:{s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:5:\"6.9.1\";s:7:\"updated\";s:19:\"2026-01-30 19:24:13\";s:12:\"english_name\";s:15:\"Spanish (Spain)\";s:11:\"native_name\";s:8:\"Español\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.9.1/es_ES.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_AR\";a:8:{s:8:\"language\";s:5:\"es_AR\";s:7:\"version\";s:5:\"6.9.1\";s:7:\"updated\";s:19:\"2026-02-10 15:51:08\";s:12:\"english_name\";s:19:\"Spanish (Argentina)\";s:11:\"native_name\";s:21:\"Español de Argentina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.9.1/es_AR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"et\";a:8:{s:8:\"language\";s:2:\"et\";s:7:\"version\";s:5:\"6.5.7\";s:7:\"updated\";s:19:\"2024-06-06 09:50:37\";s:12:\"english_name\";s:8:\"Estonian\";s:11:\"native_name\";s:5:\"Eesti\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.5.7/et.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"et\";i:2;s:3:\"est\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Jätka\";}}s:2:\"eu\";a:8:{s:8:\"language\";s:2:\"eu\";s:7:\"version\";s:6:\"6.9-RC\";s:7:\"updated\";s:19:\"2025-11-05 21:53:17\";s:12:\"english_name\";s:6:\"Basque\";s:11:\"native_name\";s:7:\"Euskara\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.9-RC/eu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eu\";i:2;s:3:\"eus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Jarraitu\";}}s:5:\"fa_IR\";a:8:{s:8:\"language\";s:5:\"fa_IR\";s:7:\"version\";s:5:\"6.9.1\";s:7:\"updated\";s:19:\"2025-12-25 18:17:43\";s:12:\"english_name\";s:7:\"Persian\";s:11:\"native_name\";s:10:\"فارسی\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.9.1/fa_IR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:5:\"fa_AF\";a:8:{s:8:\"language\";s:5:\"fa_AF\";s:7:\"version\";s:6:\"6.9-RC\";s:7:\"updated\";s:19:\"2025-02-14 17:29:08\";s:12:\"english_name\";s:21:\"Persian (Afghanistan)\";s:11:\"native_name\";s:31:\"(فارسی (افغانستان\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/6.9-RC/fa_AF.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:2:\"fi\";a:8:{s:8:\"language\";s:2:\"fi\";s:7:\"version\";s:5:\"6.9.1\";s:7:\"updated\";s:19:\"2026-02-03 18:15:59\";s:12:\"english_name\";s:7:\"Finnish\";s:11:\"native_name\";s:5:\"Suomi\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.9.1/fi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fi\";i:2;s:3:\"fin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Jatka\";}}s:5:\"fr_CA\";a:8:{s:8:\"language\";s:5:\"fr_CA\";s:7:\"version\";s:5:\"6.9.1\";s:7:\"updated\";s:19:\"2025-10-03 04:54:28\";s:12:\"english_name\";s:15:\"French (Canada)\";s:11:\"native_name\";s:19:\"Français du Canada\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.9.1/fr_CA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_FR\";a:8:{s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:5:\"6.9.1\";s:7:\"updated\";s:19:\"2026-02-21 07:08:11\";s:12:\"english_name\";s:15:\"French (France)\";s:11:\"native_name\";s:9:\"Français\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.9.1/fr_FR.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"fr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_BE\";a:8:{s:8:\"language\";s:5:\"fr_BE\";s:7:\"version\";s:5:\"6.5.7\";s:7:\"updated\";s:19:\"2024-02-01 23:56:53\";s:12:\"english_name\";s:16:\"French (Belgium)\";s:11:\"native_name\";s:21:\"Français de Belgique\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.5.7/fr_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:3:\"fur\";a:8:{s:8:\"language\";s:3:\"fur\";s:7:\"version\";s:6:\"4.8.27\";s:7:\"updated\";s:19:\"2025-12-20 19:08:53\";s:12:\"english_name\";s:8:\"Friulian\";s:11:\"native_name\";s:8:\"Friulian\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.8.27/fur.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"fur\";i:3;s:3:\"fur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"fy\";a:8:{s:8:\"language\";s:2:\"fy\";s:7:\"version\";s:5:\"6.2.8\";s:7:\"updated\";s:19:\"2025-10-21 16:35:04\";s:12:\"english_name\";s:7:\"Frisian\";s:11:\"native_name\";s:5:\"Frysk\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.2.8/fy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fy\";i:2;s:3:\"fry\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Trochgean\";}}s:2:\"gd\";a:8:{s:8:\"language\";s:2:\"gd\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-08-23 17:41:37\";s:12:\"english_name\";s:15:\"Scottish Gaelic\";s:11:\"native_name\";s:9:\"Gàidhlig\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/gd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"gd\";i:2;s:3:\"gla\";i:3;s:3:\"gla\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"Lean air adhart\";}}s:5:\"gl_ES\";a:8:{s:8:\"language\";s:5:\"gl_ES\";s:7:\"version\";s:5:\"6.9.1\";s:7:\"updated\";s:19:\"2026-02-01 13:15:26\";s:12:\"english_name\";s:8:\"Galician\";s:11:\"native_name\";s:6:\"Galego\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.9.1/gl_ES.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gl\";i:2;s:3:\"glg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"gu\";a:8:{s:8:\"language\";s:2:\"gu\";s:7:\"version\";s:5:\"6.9.1\";s:7:\"updated\";s:19:\"2025-12-09 11:14:55\";s:12:\"english_name\";s:8:\"Gujarati\";s:11:\"native_name\";s:21:\"ગુજરાતી\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.9.1/gu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gu\";i:2;s:3:\"guj\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"ચાલુ રાખો\";}}s:3:\"haz\";a:8:{s:8:\"language\";s:3:\"haz\";s:7:\"version\";s:6:\"4.4.34\";s:7:\"updated\";s:19:\"2015-12-05 00:59:09\";s:12:\"english_name\";s:8:\"Hazaragi\";s:11:\"native_name\";s:15:\"هزاره گی\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.4.34/haz.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"haz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:5:\"he_IL\";a:8:{s:8:\"language\";s:5:\"he_IL\";s:7:\"version\";s:5:\"6.2.8\";s:7:\"updated\";s:19:\"2024-05-04 18:39:24\";s:12:\"english_name\";s:6:\"Hebrew\";s:11:\"native_name\";s:16:\"עִבְרִית\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.8/he_IL.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"he\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"המשך\";}}s:5:\"hi_IN\";a:8:{s:8:\"language\";s:5:\"hi_IN\";s:7:\"version\";s:5:\"6.4.7\";s:7:\"updated\";s:19:\"2025-02-06 05:17:11\";s:12:\"english_name\";s:5:\"Hindi\";s:11:\"native_name\";s:18:\"हिन्दी\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.4.7/hi_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hi\";i:2;s:3:\"hin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"जारी रखें\";}}s:2:\"hr\";a:8:{s:8:\"language\";s:2:\"hr\";s:7:\"version\";s:5:\"6.9.1\";s:7:\"updated\";s:19:\"2026-01-31 09:13:17\";s:12:\"english_name\";s:8:\"Croatian\";s:11:\"native_name\";s:8:\"Hrvatski\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.9.1/hr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hr\";i:2;s:3:\"hrv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:3:\"hsb\";a:8:{s:8:\"language\";s:3:\"hsb\";s:7:\"version\";s:5:\"6.2.8\";s:7:\"updated\";s:19:\"2023-02-22 17:37:32\";s:12:\"english_name\";s:13:\"Upper Sorbian\";s:11:\"native_name\";s:17:\"Hornjoserbšćina\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2.8/hsb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"hsb\";i:3;s:3:\"hsb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:4:\"Dale\";}}s:5:\"hu_HU\";a:8:{s:8:\"language\";s:5:\"hu_HU\";s:7:\"version\";s:5:\"6.9.1\";s:7:\"updated\";s:19:\"2026-01-26 09:03:23\";s:12:\"english_name\";s:9:\"Hungarian\";s:11:\"native_name\";s:6:\"Magyar\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.9.1/hu_HU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hu\";i:2;s:3:\"hun\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Folytatás\";}}s:2:\"hy\";a:8:{s:8:\"language\";s:2:\"hy\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-03 16:21:10\";s:12:\"english_name\";s:8:\"Armenian\";s:11:\"native_name\";s:14:\"Հայերեն\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/hy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hy\";i:2;s:3:\"hye\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Շարունակել\";}}s:5:\"id_ID\";a:8:{s:8:\"language\";s:5:\"id_ID\";s:7:\"version\";s:5:\"6.9.1\";s:7:\"updated\";s:19:\"2026-01-16 11:21:47\";s:12:\"english_name\";s:10:\"Indonesian\";s:11:\"native_name\";s:16:\"Bahasa Indonesia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.9.1/id_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"id\";i:2;s:3:\"ind\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Lanjutkan\";}}s:5:\"is_IS\";a:8:{s:8:\"language\";s:5:\"is_IS\";s:7:\"version\";s:6:\"4.9.28\";s:7:\"updated\";s:19:\"2018-12-11 10:40:02\";s:12:\"english_name\";s:9:\"Icelandic\";s:11:\"native_name\";s:9:\"Íslenska\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.28/is_IS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"is\";i:2;s:3:\"isl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Áfram\";}}s:5:\"it_IT\";a:8:{s:8:\"language\";s:5:\"it_IT\";s:7:\"version\";s:5:\"6.9.1\";s:7:\"updated\";s:19:\"2026-02-01 12:46:02\";s:12:\"english_name\";s:7:\"Italian\";s:11:\"native_name\";s:8:\"Italiano\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.9.1/it_IT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"it\";i:2;s:3:\"ita\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:2:\"ja\";a:8:{s:8:\"language\";s:2:\"ja\";s:7:\"version\";s:5:\"6.9.1\";s:7:\"updated\";s:19:\"2026-01-30 13:49:01\";s:12:\"english_name\";s:8:\"Japanese\";s:11:\"native_name\";s:9:\"日本語\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.9.1/ja.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"ja\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"次へ\";}}s:5:\"jv_ID\";a:8:{s:8:\"language\";s:5:\"jv_ID\";s:7:\"version\";s:6:\"4.9.28\";s:7:\"updated\";s:19:\"2019-02-16 23:58:56\";s:12:\"english_name\";s:8:\"Javanese\";s:11:\"native_name\";s:9:\"Basa Jawa\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.28/jv_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"jv\";i:2;s:3:\"jav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Nerusaké\";}}s:5:\"ka_GE\";a:8:{s:8:\"language\";s:5:\"ka_GE\";s:7:\"version\";s:5:\"6.9.1\";s:7:\"updated\";s:19:\"2026-01-26 09:51:27\";s:12:\"english_name\";s:8:\"Georgian\";s:11:\"native_name\";s:21:\"ქართული\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.9.1/ka_GE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ka\";i:2;s:3:\"kat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"გაგრძელება\";}}s:3:\"kab\";a:8:{s:8:\"language\";s:3:\"kab\";s:7:\"version\";s:5:\"6.2.8\";s:7:\"updated\";s:19:\"2023-07-05 11:40:39\";s:12:\"english_name\";s:6:\"Kabyle\";s:11:\"native_name\";s:9:\"Taqbaylit\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2.8/kab.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"kab\";i:3;s:3:\"kab\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Kemmel\";}}s:2:\"kk\";a:8:{s:8:\"language\";s:2:\"kk\";s:7:\"version\";s:6:\"6.9-RC\";s:7:\"updated\";s:19:\"2024-07-18 02:49:24\";s:12:\"english_name\";s:6:\"Kazakh\";s:11:\"native_name\";s:19:\"Қазақ тілі\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.9-RC/kk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kk\";i:2;s:3:\"kaz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Жалғастыру\";}}s:2:\"km\";a:8:{s:8:\"language\";s:2:\"km\";s:7:\"version\";s:6:\"5.2.23\";s:7:\"updated\";s:19:\"2019-06-10 16:18:28\";s:12:\"english_name\";s:5:\"Khmer\";s:11:\"native_name\";s:27:\"ភាសាខ្មែរ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.2.23/km.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"km\";i:2;s:3:\"khm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"បន្ត\";}}s:2:\"kn\";a:8:{s:8:\"language\";s:2:\"kn\";s:7:\"version\";s:5:\"6.9.1\";s:7:\"updated\";s:19:\"2026-02-02 11:49:59\";s:12:\"english_name\";s:7:\"Kannada\";s:11:\"native_name\";s:15:\"ಕನ್ನಡ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.9.1/kn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kn\";i:2;s:3:\"kan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"ಮುಂದುವರಿಸು\";}}s:5:\"ko_KR\";a:8:{s:8:\"language\";s:5:\"ko_KR\";s:7:\"version\";s:5:\"6.9.1\";s:7:\"updated\";s:19:\"2026-02-12 09:06:26\";s:12:\"english_name\";s:6:\"Korean\";s:11:\"native_name\";s:9:\"한국어\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.9.1/ko_KR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ko\";i:2;s:3:\"kor\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"계속\";}}s:3:\"ckb\";a:8:{s:8:\"language\";s:3:\"ckb\";s:7:\"version\";s:5:\"6.9.1\";s:7:\"updated\";s:19:\"2026-01-29 23:40:05\";s:12:\"english_name\";s:16:\"Kurdish (Sorani)\";s:11:\"native_name\";s:13:\"كوردی‎\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.9.1/ckb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ku\";i:3;s:3:\"ckb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"به‌رده‌وام به‌\";}}s:3:\"kir\";a:8:{s:8:\"language\";s:3:\"kir\";s:7:\"version\";s:5:\"6.9.1\";s:7:\"updated\";s:19:\"2026-01-01 21:45:29\";s:12:\"english_name\";s:6:\"Kyrgyz\";s:11:\"native_name\";s:16:\"Кыргызча\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.9.1/kir.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"ky\";i:2;s:3:\"kir\";i:3;s:3:\"kir\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:14:\"Улантуу\";}}s:2:\"lo\";a:8:{s:8:\"language\";s:2:\"lo\";s:7:\"version\";s:5:\"6.9.1\";s:7:\"updated\";s:19:\"2026-01-13 06:21:23\";s:12:\"english_name\";s:3:\"Lao\";s:11:\"native_name\";s:21:\"ພາສາລາວ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.9.1/lo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lo\";i:2;s:3:\"lao\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"ຕໍ່​ໄປ\";}}s:5:\"lt_LT\";a:8:{s:8:\"language\";s:5:\"lt_LT\";s:7:\"version\";s:6:\"6.9-RC\";s:7:\"updated\";s:19:\"2025-09-27 20:51:17\";s:12:\"english_name\";s:10:\"Lithuanian\";s:11:\"native_name\";s:15:\"Lietuvių kalba\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/6.9-RC/lt_LT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lt\";i:2;s:3:\"lit\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Tęsti\";}}s:2:\"lv\";a:8:{s:8:\"language\";s:2:\"lv\";s:7:\"version\";s:5:\"6.9.1\";s:7:\"updated\";s:19:\"2026-02-20 20:55:46\";s:12:\"english_name\";s:7:\"Latvian\";s:11:\"native_name\";s:16:\"Latviešu valoda\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.9.1/lv.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lv\";i:2;s:3:\"lav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Turpināt\";}}s:5:\"mk_MK\";a:8:{s:8:\"language\";s:5:\"mk_MK\";s:7:\"version\";s:6:\"6.0.11\";s:7:\"updated\";s:19:\"2022-10-01 09:23:52\";s:12:\"english_name\";s:10:\"Macedonian\";s:11:\"native_name\";s:31:\"Македонски јазик\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/6.0.11/mk_MK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mk\";i:2;s:3:\"mkd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Продолжи\";}}s:5:\"ml_IN\";a:8:{s:8:\"language\";s:5:\"ml_IN\";s:7:\"version\";s:5:\"6.9.1\";s:7:\"updated\";s:19:\"2026-02-21 18:42:37\";s:12:\"english_name\";s:9:\"Malayalam\";s:11:\"native_name\";s:18:\"മലയാളം\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.9.1/ml_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ml\";i:2;s:3:\"mal\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"തുടരുക\";}}s:2:\"mn\";a:8:{s:8:\"language\";s:2:\"mn\";s:7:\"version\";s:5:\"6.5.7\";s:7:\"updated\";s:19:\"2024-06-20 17:22:06\";s:12:\"english_name\";s:9:\"Mongolian\";s:11:\"native_name\";s:12:\"Монгол\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.5.7/mn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mn\";i:2;s:3:\"mon\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"mr\";a:8:{s:8:\"language\";s:2:\"mr\";s:7:\"version\";s:5:\"6.9.1\";s:7:\"updated\";s:19:\"2026-01-07 14:17:20\";s:12:\"english_name\";s:7:\"Marathi\";s:11:\"native_name\";s:15:\"मराठी\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.9.1/mr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mr\";i:2;s:3:\"mar\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"सुरु ठेवा\";}}s:5:\"ms_MY\";a:8:{s:8:\"language\";s:5:\"ms_MY\";s:7:\"version\";s:6:\"5.5.17\";s:7:\"updated\";s:19:\"2022-03-11 13:52:22\";s:12:\"english_name\";s:5:\"Malay\";s:11:\"native_name\";s:13:\"Bahasa Melayu\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.5.17/ms_MY.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ms\";i:2;s:3:\"msa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Teruskan\";}}s:5:\"my_MM\";a:8:{s:8:\"language\";s:5:\"my_MM\";s:7:\"version\";s:6:\"4.2.39\";s:7:\"updated\";s:19:\"2017-12-26 11:57:10\";s:12:\"english_name\";s:17:\"Myanmar (Burmese)\";s:11:\"native_name\";s:15:\"ဗမာစာ\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.2.39/my_MM.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"my\";i:2;s:3:\"mya\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:54:\"ဆက်လက်လုပ်ဆောင်ပါ။\";}}s:5:\"nb_NO\";a:8:{s:8:\"language\";s:5:\"nb_NO\";s:7:\"version\";s:5:\"6.9.1\";s:7:\"updated\";s:19:\"2026-02-04 18:33:46\";s:12:\"english_name\";s:19:\"Norwegian (Bokmål)\";s:11:\"native_name\";s:13:\"Norsk bokmål\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.9.1/nb_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nb\";i:2;s:3:\"nob\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsett\";}}s:5:\"ne_NP\";a:8:{s:8:\"language\";s:5:\"ne_NP\";s:7:\"version\";s:6:\"6.9-RC\";s:7:\"updated\";s:19:\"2025-11-07 08:26:32\";s:12:\"english_name\";s:6:\"Nepali\";s:11:\"native_name\";s:18:\"नेपाली\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/6.9-RC/ne_NP.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ne\";i:2;s:3:\"nep\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:43:\"जारी राख्नुहोस्\";}}s:5:\"nl_BE\";a:8:{s:8:\"language\";s:5:\"nl_BE\";s:7:\"version\";s:5:\"6.9.1\";s:7:\"updated\";s:19:\"2026-02-02 08:54:38\";s:12:\"english_name\";s:15:\"Dutch (Belgium)\";s:11:\"native_name\";s:20:\"Nederlands (België)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.9.1/nl_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nl_NL\";a:8:{s:8:\"language\";s:5:\"nl_NL\";s:7:\"version\";s:5:\"6.9.1\";s:7:\"updated\";s:19:\"2026-02-20 11:18:50\";s:12:\"english_name\";s:5:\"Dutch\";s:11:\"native_name\";s:10:\"Nederlands\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.9.1/nl_NL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:12:\"nl_NL_formal\";a:8:{s:8:\"language\";s:12:\"nl_NL_formal\";s:7:\"version\";s:5:\"6.9.1\";s:7:\"updated\";s:19:\"2026-01-29 08:00:04\";s:12:\"english_name\";s:14:\"Dutch (Formal)\";s:11:\"native_name\";s:20:\"Nederlands (Formeel)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/6.9.1/nl_NL_formal.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nn_NO\";a:8:{s:8:\"language\";s:5:\"nn_NO\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-03-18 10:59:16\";s:12:\"english_name\";s:19:\"Norwegian (Nynorsk)\";s:11:\"native_name\";s:13:\"Norsk nynorsk\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/nn_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nn\";i:2;s:3:\"nno\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Hald fram\";}}s:3:\"oci\";a:8:{s:8:\"language\";s:3:\"oci\";s:7:\"version\";s:6:\"4.8.27\";s:7:\"updated\";s:19:\"2017-08-25 10:03:08\";s:12:\"english_name\";s:7:\"Occitan\";s:11:\"native_name\";s:7:\"Occitan\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.8.27/oci.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"oc\";i:2;s:3:\"oci\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Contunhar\";}}s:5:\"pa_IN\";a:8:{s:8:\"language\";s:5:\"pa_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-16 05:19:43\";s:12:\"english_name\";s:15:\"Panjabi (India)\";s:11:\"native_name\";s:18:\"ਪੰਜਾਬੀ\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/pa_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pa\";i:2;s:3:\"pan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"ਜਾਰੀ ਰੱਖੋ\";}}s:5:\"pl_PL\";a:8:{s:8:\"language\";s:5:\"pl_PL\";s:7:\"version\";s:5:\"6.9.1\";s:7:\"updated\";s:19:\"2026-02-04 13:44:32\";s:12:\"english_name\";s:6:\"Polish\";s:11:\"native_name\";s:6:\"Polski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.9.1/pl_PL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pl\";i:2;s:3:\"pol\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Kontynuuj\";}}s:2:\"ps\";a:8:{s:8:\"language\";s:2:\"ps\";s:7:\"version\";s:6:\"4.3.35\";s:7:\"updated\";s:19:\"2015-12-02 21:41:29\";s:12:\"english_name\";s:6:\"Pashto\";s:11:\"native_name\";s:8:\"پښتو\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.3.35/ps.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ps\";i:2;s:3:\"pus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"دوام ورکړه\";}}s:5:\"pt_BR\";a:8:{s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:5:\"6.9.1\";s:7:\"updated\";s:19:\"2025-12-02 18:21:27\";s:12:\"english_name\";s:19:\"Portuguese (Brazil)\";s:11:\"native_name\";s:20:\"Português do Brasil\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.9.1/pt_BR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pt\";i:2;s:3:\"por\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_AO\";a:8:{s:8:\"language\";s:5:\"pt_AO\";s:7:\"version\";s:5:\"6.4.7\";s:7:\"updated\";s:19:\"2023-08-21 12:15:00\";s:12:\"english_name\";s:19:\"Portuguese (Angola)\";s:11:\"native_name\";s:20:\"Português de Angola\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.4.7/pt_AO.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_PT\";a:8:{s:8:\"language\";s:5:\"pt_PT\";s:7:\"version\";s:5:\"6.9.1\";s:7:\"updated\";s:19:\"2026-02-04 09:12:12\";s:12:\"english_name\";s:21:\"Portuguese (Portugal)\";s:11:\"native_name\";s:10:\"Português\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.9.1/pt_PT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:10:\"pt_PT_ao90\";a:8:{s:8:\"language\";s:10:\"pt_PT_ao90\";s:7:\"version\";s:5:\"6.9.1\";s:7:\"updated\";s:19:\"2026-02-04 09:13:24\";s:12:\"english_name\";s:27:\"Portuguese (Portugal, AO90)\";s:11:\"native_name\";s:17:\"Português (AO90)\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/translation/core/6.9.1/pt_PT_ao90.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:3:\"rhg\";a:8:{s:8:\"language\";s:3:\"rhg\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-16 13:03:18\";s:12:\"english_name\";s:8:\"Rohingya\";s:11:\"native_name\";s:8:\"Ruáinga\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/rhg.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"rhg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"ro_RO\";a:8:{s:8:\"language\";s:5:\"ro_RO\";s:7:\"version\";s:5:\"6.9.1\";s:7:\"updated\";s:19:\"2026-01-29 12:52:48\";s:12:\"english_name\";s:8:\"Romanian\";s:11:\"native_name\";s:8:\"Română\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.9.1/ro_RO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ro\";i:2;s:3:\"ron\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuă\";}}s:5:\"ru_RU\";a:8:{s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:5:\"6.9.1\";s:7:\"updated\";s:19:\"2026-01-29 03:22:33\";s:12:\"english_name\";s:7:\"Russian\";s:11:\"native_name\";s:14:\"Русский\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.9.1/ru_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ru\";i:2;s:3:\"rus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продолжить\";}}s:3:\"sah\";a:8:{s:8:\"language\";s:3:\"sah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-21 02:06:41\";s:12:\"english_name\";s:5:\"Sakha\";s:11:\"native_name\";s:14:\"Сахалыы\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/sah.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"sah\";i:3;s:3:\"sah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Салҕаа\";}}s:3:\"snd\";a:8:{s:8:\"language\";s:3:\"snd\";s:7:\"version\";s:6:\"5.4.18\";s:7:\"updated\";s:19:\"2020-07-07 01:53:37\";s:12:\"english_name\";s:6:\"Sindhi\";s:11:\"native_name\";s:8:\"سنڌي\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/5.4.18/snd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"sd\";i:2;s:3:\"snd\";i:3;s:3:\"snd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"اڳتي هلو\";}}s:5:\"si_LK\";a:8:{s:8:\"language\";s:5:\"si_LK\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 06:00:52\";s:12:\"english_name\";s:7:\"Sinhala\";s:11:\"native_name\";s:15:\"සිංහල\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/si_LK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"si\";i:2;s:3:\"sin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:44:\"දිගටම කරගෙන යන්න\";}}s:5:\"sk_SK\";a:8:{s:8:\"language\";s:5:\"sk_SK\";s:7:\"version\";s:5:\"6.9.1\";s:7:\"updated\";s:19:\"2025-12-01 04:57:17\";s:12:\"english_name\";s:6:\"Slovak\";s:11:\"native_name\";s:11:\"Slovenčina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.9.1/sk_SK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sk\";i:2;s:3:\"slk\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Pokračovať\";}}s:3:\"skr\";a:8:{s:8:\"language\";s:3:\"skr\";s:7:\"version\";s:6:\"6.9-RC\";s:7:\"updated\";s:19:\"2025-04-24 16:58:02\";s:12:\"english_name\";s:7:\"Saraiki\";s:11:\"native_name\";s:14:\"سرائیکی\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/6.9-RC/skr.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"skr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"جاری رکھو\";}}s:5:\"sl_SI\";a:8:{s:8:\"language\";s:5:\"sl_SI\";s:7:\"version\";s:5:\"6.9.1\";s:7:\"updated\";s:19:\"2025-10-29 11:19:02\";s:12:\"english_name\";s:9:\"Slovenian\";s:11:\"native_name\";s:13:\"Slovenščina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.9.1/sl_SI.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sl\";i:2;s:3:\"slv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Nadaljuj\";}}s:2:\"sq\";a:8:{s:8:\"language\";s:2:\"sq\";s:7:\"version\";s:5:\"6.9.1\";s:7:\"updated\";s:19:\"2026-02-14 20:39:21\";s:12:\"english_name\";s:8:\"Albanian\";s:11:\"native_name\";s:5:\"Shqip\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.9.1/sq.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sq\";i:2;s:3:\"sqi\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Vazhdo\";}}s:5:\"sr_RS\";a:8:{s:8:\"language\";s:5:\"sr_RS\";s:7:\"version\";s:5:\"6.9.1\";s:7:\"updated\";s:19:\"2025-12-03 15:37:44\";s:12:\"english_name\";s:7:\"Serbian\";s:11:\"native_name\";s:23:\"Српски језик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.9.1/sr_RS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sr\";i:2;s:3:\"srp\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:14:\"Настави\";}}s:5:\"sv_SE\";a:8:{s:8:\"language\";s:5:\"sv_SE\";s:7:\"version\";s:5:\"6.9.1\";s:7:\"updated\";s:19:\"2026-01-29 08:15:39\";s:12:\"english_name\";s:7:\"Swedish\";s:11:\"native_name\";s:7:\"Svenska\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.9.1/sv_SE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sv\";i:2;s:3:\"swe\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Fortsätt\";}}s:2:\"sw\";a:8:{s:8:\"language\";s:2:\"sw\";s:7:\"version\";s:5:\"6.9.1\";s:7:\"updated\";s:19:\"2026-02-21 11:17:30\";s:12:\"english_name\";s:7:\"Swahili\";s:11:\"native_name\";s:9:\"Kiswahili\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.9.1/sw.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sw\";i:2;s:3:\"swa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Endelea\";}}s:3:\"szl\";a:8:{s:8:\"language\";s:3:\"szl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-24 19:58:14\";s:12:\"english_name\";s:8:\"Silesian\";s:11:\"native_name\";s:17:\"Ślōnskŏ gŏdka\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/szl.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"szl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:13:\"Kōntynuować\";}}s:5:\"ta_IN\";a:8:{s:8:\"language\";s:5:\"ta_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:22:47\";s:12:\"english_name\";s:5:\"Tamil\";s:11:\"native_name\";s:15:\"தமிழ்\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ta_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ta\";i:2;s:3:\"tam\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"தொடரவும்\";}}s:5:\"ta_LK\";a:8:{s:8:\"language\";s:5:\"ta_LK\";s:7:\"version\";s:6:\"4.2.39\";s:7:\"updated\";s:19:\"2015-12-03 01:07:44\";s:12:\"english_name\";s:17:\"Tamil (Sri Lanka)\";s:11:\"native_name\";s:15:\"தமிழ்\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.2.39/ta_LK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ta\";i:2;s:3:\"tam\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"தொடர்க\";}}s:2:\"te\";a:8:{s:8:\"language\";s:2:\"te\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-26 15:47:39\";s:12:\"english_name\";s:6:\"Telugu\";s:11:\"native_name\";s:18:\"తెలుగు\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/te.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"te\";i:2;s:3:\"tel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"కొనసాగించు\";}}s:2:\"th\";a:8:{s:8:\"language\";s:2:\"th\";s:7:\"version\";s:6:\"5.8.12\";s:7:\"updated\";s:19:\"2022-06-08 04:30:30\";s:12:\"english_name\";s:4:\"Thai\";s:11:\"native_name\";s:9:\"ไทย\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.8.12/th.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"th\";i:2;s:3:\"tha\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"ต่อไป\";}}s:2:\"tl\";a:8:{s:8:\"language\";s:2:\"tl\";s:7:\"version\";s:5:\"6.9.1\";s:7:\"updated\";s:19:\"2025-12-13 08:39:22\";s:12:\"english_name\";s:7:\"Tagalog\";s:11:\"native_name\";s:7:\"Tagalog\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.9.1/tl.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tl\";i:2;s:3:\"tgl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Magpatuloy\";}}s:5:\"tr_TR\";a:8:{s:8:\"language\";s:5:\"tr_TR\";s:7:\"version\";s:5:\"6.9.1\";s:7:\"updated\";s:19:\"2026-02-06 07:07:54\";s:12:\"english_name\";s:7:\"Turkish\";s:11:\"native_name\";s:8:\"Türkçe\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.9.1/tr_TR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tr\";i:2;s:3:\"tur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Devam\";}}s:5:\"tt_RU\";a:8:{s:8:\"language\";s:5:\"tt_RU\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-20 20:20:50\";s:12:\"english_name\";s:5:\"Tatar\";s:11:\"native_name\";s:19:\"Татар теле\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/tt_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tt\";i:2;s:3:\"tat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"дәвам итү\";}}s:3:\"tah\";a:8:{s:8:\"language\";s:3:\"tah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-06 18:39:39\";s:12:\"english_name\";s:8:\"Tahitian\";s:11:\"native_name\";s:10:\"Reo Tahiti\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/tah.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"ty\";i:2;s:3:\"tah\";i:3;s:3:\"tah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"ug_CN\";a:8:{s:8:\"language\";s:5:\"ug_CN\";s:7:\"version\";s:5:\"6.9.1\";s:7:\"updated\";s:19:\"2026-01-29 23:09:01\";s:12:\"english_name\";s:6:\"Uighur\";s:11:\"native_name\";s:16:\"ئۇيغۇرچە\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.9.1/ug_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ug\";i:2;s:3:\"uig\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:26:\"داۋاملاشتۇرۇش\";}}s:2:\"uk\";a:8:{s:8:\"language\";s:2:\"uk\";s:7:\"version\";s:3:\"6.8\";s:7:\"updated\";s:19:\"2025-04-18 21:10:00\";s:12:\"english_name\";s:9:\"Ukrainian\";s:11:\"native_name\";s:20:\"Українська\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/6.8/uk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uk\";i:2;s:3:\"ukr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продовжити\";}}s:2:\"ur\";a:8:{s:8:\"language\";s:2:\"ur\";s:7:\"version\";s:6:\"5.4.18\";s:7:\"updated\";s:19:\"2020-04-09 11:17:33\";s:12:\"english_name\";s:4:\"Urdu\";s:11:\"native_name\";s:8:\"اردو\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.4.18/ur.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ur\";i:2;s:3:\"urd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"جاری رکھیں\";}}s:5:\"uz_UZ\";a:8:{s:8:\"language\";s:5:\"uz_UZ\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-02-28 12:02:22\";s:12:\"english_name\";s:5:\"Uzbek\";s:11:\"native_name\";s:11:\"O‘zbekcha\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/uz_UZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uz\";i:2;s:3:\"uzb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Davom etish\";}}s:2:\"vi\";a:8:{s:8:\"language\";s:2:\"vi\";s:7:\"version\";s:5:\"6.9.1\";s:7:\"updated\";s:19:\"2025-09-01 09:12:13\";s:12:\"english_name\";s:10:\"Vietnamese\";s:11:\"native_name\";s:14:\"Tiếng Việt\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.9.1/vi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"vi\";i:2;s:3:\"vie\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Tiếp tục\";}}s:5:\"zh_CN\";a:8:{s:8:\"language\";s:5:\"zh_CN\";s:7:\"version\";s:5:\"6.9.1\";s:7:\"updated\";s:19:\"2026-01-06 20:16:48\";s:12:\"english_name\";s:15:\"Chinese (China)\";s:11:\"native_name\";s:12:\"简体中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.9.1/zh_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"继续\";}}s:5:\"zh_TW\";a:8:{s:8:\"language\";s:5:\"zh_TW\";s:7:\"version\";s:5:\"6.9.1\";s:7:\"updated\";s:19:\"2026-02-11 16:22:59\";s:12:\"english_name\";s:16:\"Chinese (Taiwan)\";s:11:\"native_name\";s:12:\"繁體中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.9.1/zh_TW.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}s:5:\"zh_HK\";a:8:{s:8:\"language\";s:5:\"zh_HK\";s:7:\"version\";s:5:\"6.2.8\";s:7:\"updated\";s:19:\"2022-07-15 15:25:03\";s:12:\"english_name\";s:19:\"Chinese (Hong Kong)\";s:11:\"native_name\";s:12:\"香港中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.8/zh_HK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}}', 'off');

-- --------------------------------------------------------

--
-- Structure de la table `wp_wordpresspostmeta`
--

CREATE TABLE `wp_wordpresspostmeta` (
  `meta_id` bigint UNSIGNED NOT NULL,
  `post_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_wordpresspostmeta`
--

INSERT INTO `wp_wordpresspostmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 6, '_form', '<div class=\"form-group\">\n   [text* your-name class:email-bt placeholder \"Name\"]\n</div>\n<div class=\"form-group\">\n   [tel* your-phone class:email-bt placeholder \"Phone Number\"]\n</div>\n<div class=\"form-group\">\n   [email* your-email class:email-bt placeholder \"Email\"]\n</div>\n<div class=\"form-group check-services\">\n   <label class=\"contact-services\">Choisissez vos services :</label>\n   [checkbox your-services \"Rock Dance\" \"Hip Hop Dance\" \"Style Dance\"]\n</div>\n<div class=\"form-group\">\n   [textarea your-message class:massage-bt placeholder \"Message\"]\n</div>\n<div class=\"form-group rgpd-check\">\n   [acceptance your-rgpd] J\'accepte que mes données soient traitées conformément à la <a href=\"#\">politique de confidentialité</a> (RGPD). [/acceptance]\n</div>\n<div class=\"send_bt\">\n   [submit \"Send Now\"]\n</div>'),
(4, 6, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:39:\"[_site_title] <habibi-sonia@hotmail.fr>\";s:9:\"recipient\";s:19:\"[_site_admin_email]\";s:4:\"body\";s:246:\"De : [your-name]  [your-phone] [your-email]  [your-services]\nObjet : [your-subject]\n\nCorps du message :\n[your-message]\n\n-- \nCeci est une notification qu’un formulaire de contact a été envoyé sur votre site web ([_site_title] [_site_url]).\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:1;s:13:\"exclude_blank\";b:1;}'),
(5, 6, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:39:\"[_site_title] <habibi-sonia@hotmail.fr>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:281:\"Corps du message :\n[your-message]\n\n-- \nCet e-mail est un accusé de réception du formulaire de contact que vous avez envoyé sur notre site web ([_site_title] [_site_url]) et dans lequel votre adresse e-mail a été utilisée. Si ce n’est pas vous, veuillez ignorer ce message.\";s:18:\"additional_headers\";s:29:\"Reply-To: [_site_admin_email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:1;s:13:\"exclude_blank\";b:1;}'),
(6, 6, '_messages', 'a:22:{s:12:\"mail_sent_ok\";s:45:\"Merci pour votre message. Il a été envoyé.\";s:12:\"mail_sent_ng\";s:102:\"Une erreur s’est produite lors de l’envoi de votre message. Veuillez essayer à nouveau plus tard.\";s:16:\"validation_error\";s:88:\"Un ou plusieurs champs contiennent une erreur. Veuillez vérifier et essayer à nouveau.\";s:4:\"spam\";s:102:\"Une erreur s’est produite lors de l’envoi de votre message. Veuillez essayer à nouveau plus tard.\";s:12:\"accept_terms\";s:77:\"Vous devez accepter les termes et conditions avant d’envoyer votre message.\";s:16:\"invalid_required\";s:29:\"Veuillez renseigner ce champ.\";s:16:\"invalid_too_long\";s:34:\"Ce champ a une saisie trop longue.\";s:17:\"invalid_too_short\";s:34:\"Ce champ a une saisie trop courte.\";s:13:\"upload_failed\";s:72:\"Une erreur inconnue s’est produite lors du téléversement du fichier.\";s:24:\"upload_file_type_invalid\";s:79:\"Vous n’avez pas les droits nécessaires pour téléverser ce type de fichier.\";s:21:\"upload_file_too_large\";s:44:\"Le fichier téléversé est trop volumineux.\";s:23:\"upload_failed_php_error\";s:63:\"Une erreur s’est produite lors du téléversement du fichier.\";s:12:\"invalid_date\";s:46:\"Veuillez saisir une date au format AAAA-MM-JJ.\";s:14:\"date_too_early\";s:34:\"La date de ce champ est trop tôt.\";s:13:\"date_too_late\";s:37:\"La date de ce champ est trop tardive.\";s:14:\"invalid_number\";s:27:\"Veuillez saisir un numéro.\";s:16:\"number_too_small\";s:38:\"Le chiffre de ce champ est trop petit.\";s:16:\"number_too_large\";s:32:\"Ce champ a un numéro trop long.\";s:23:\"quiz_answer_not_correct\";s:42:\"La réponse à la question est incorrecte.\";s:13:\"invalid_email\";s:37:\"Veuillez saisir votre adresse e-mail.\";s:11:\"invalid_url\";s:24:\"Veuillez saisisr une URL\";s:11:\"invalid_tel\";s:42:\"Veuillez saisir un numéro de téléphone.\";}'),
(7, 6, '_additional_settings', ''),
(8, 6, '_locale', 'fr_FR'),
(9, 6, '_hash', '623ef61e8fd3229b91480ec73354b53f61bf79169ad8888abae58a4f5284ccc4'),
(10, 8, '_wp_attached_file', '2026/02/banner-bg.png'),
(11, 8, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:1009;s:4:\"file\";s:21:\"2026/02/banner-bg.png\";s:8:\"filesize\";i:3079084;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"banner-bg-300x158.png\";s:5:\"width\";i:300;s:6:\"height\";i:158;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:63222;}s:5:\"large\";a:5:{s:4:\"file\";s:22:\"banner-bg-1024x538.png\";s:5:\"width\";i:1024;s:6:\"height\";i:538;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:843642;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"banner-bg-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:30581;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:21:\"banner-bg-768x404.png\";s:5:\"width\";i:768;s:6:\"height\";i:404;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:461446;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:22:\"banner-bg-1536x807.png\";s:5:\"width\";i:1536;s:6:\"height\";i:807;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:1915522;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(12, 9, '_wp_attached_file', '2026/02/banner-img.png'),
(13, 9, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:633;s:6:\"height\";i:501;s:4:\"file\";s:22:\"2026/02/banner-img.png\";s:8:\"filesize\";i:303989;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:22:\"banner-img-300x237.png\";s:5:\"width\";i:300;s:6:\"height\";i:237;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:68408;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:22:\"banner-img-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:28818;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(14, 10, '_wp_attached_file', '2026/02/client-img.png'),
(15, 10, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:217;s:6:\"height\";i:217;s:4:\"file\";s:22:\"2026/02/client-img.png\";s:8:\"filesize\";i:44014;s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:22:\"client-img-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:25608;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(16, 11, '_wp_attached_file', '2026/02/customer-img.png'),
(17, 11, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:130;s:6:\"height\";i:130;s:4:\"file\";s:24:\"2026/02/customer-img.png\";s:8:\"filesize\";i:29176;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(18, 12, '_wp_attached_file', '2026/02/instagram-icon.png'),
(19, 12, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:33;s:6:\"height\";i:33;s:4:\"file\";s:26:\"2026/02/instagram-icon.png\";s:8:\"filesize\";i:1719;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(20, 13, '_wp_attached_file', '2026/02/linkedin-icon.png'),
(21, 13, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:65;s:6:\"height\";i:64;s:4:\"file\";s:25:\"2026/02/linkedin-icon.png\";s:8:\"filesize\";i:2246;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(22, 14, '_wp_attached_file', '2026/02/logo.png'),
(23, 14, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:214;s:6:\"height\";i:66;s:4:\"file\";s:16:\"2026/02/logo.png\";s:8:\"filesize\";i:4097;s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:15:\"logo-150x66.png\";s:5:\"width\";i:150;s:6:\"height\";i:66;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:2440;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(24, 15, '_wp_attached_file', '2026/02/map-icon.png'),
(25, 15, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:36;s:6:\"height\";i:32;s:4:\"file\";s:20:\"2026/02/map-icon.png\";s:8:\"filesize\";i:1603;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(26, 16, '_wp_attached_file', '2026/02/quick-icon.png'),
(27, 16, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:19;s:6:\"height\";i:16;s:4:\"file\";s:22:\"2026/02/quick-icon.png\";s:8:\"filesize\";i:1152;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(28, 17, '_wp_attached_file', '2026/02/search-icon.png'),
(29, 17, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:19;s:6:\"height\";i:18;s:4:\"file\";s:23:\"2026/02/search-icon.png\";s:8:\"filesize\";i:1162;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(30, 18, '_wp_attached_file', '2026/02/services-img.png'),
(31, 18, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:586;s:6:\"height\";i:391;s:4:\"file\";s:24:\"2026/02/services-img.png\";s:8:\"filesize\";i:358489;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:24:\"services-img-300x200.png\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:101950;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:24:\"services-img-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:42436;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(32, 19, '_wp_attached_file', '2026/02/twitter-icon.png'),
(33, 19, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:65;s:6:\"height\";i:64;s:4:\"file\";s:24:\"2026/02/twitter-icon.png\";s:8:\"filesize\";i:2255;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(34, 20, '_wp_attached_file', '2026/02/about-img.png'),
(35, 20, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:612;s:6:\"height\";i:489;s:4:\"file\";s:21:\"2026/02/about-img.png\";s:8:\"filesize\";i:148321;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"about-img-300x240.png\";s:5:\"width\";i:300;s:6:\"height\";i:240;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:44294;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"about-img-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:19624;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(36, 21, '_wp_attached_file', '2026/02/call-icon-1.png'),
(37, 21, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:28;s:6:\"height\";i:28;s:4:\"file\";s:23:\"2026/02/call-icon-1.png\";s:8:\"filesize\";i:1186;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(38, 22, '_wp_attached_file', '2026/02/call-icon.png'),
(39, 22, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:36;s:6:\"height\";i:30;s:4:\"file\";s:21:\"2026/02/call-icon.png\";s:8:\"filesize\";i:1528;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(40, 23, '_wp_attached_file', '2026/02/client-bg.png'),
(41, 23, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:810;s:4:\"file\";s:21:\"2026/02/client-bg.png\";s:8:\"filesize\";i:1074171;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"client-bg-300x127.png\";s:5:\"width\";i:300;s:6:\"height\";i:127;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:33114;}s:5:\"large\";a:5:{s:4:\"file\";s:22:\"client-bg-1024x432.png\";s:5:\"width\";i:1024;s:6:\"height\";i:432;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:371398;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"client-bg-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:19625;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:21:\"client-bg-768x324.png\";s:5:\"width\";i:768;s:6:\"height\";i:324;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:207448;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:22:\"client-bg-1536x648.png\";s:5:\"width\";i:1536;s:6:\"height\";i:648;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:808586;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(42, 24, '_wp_attached_file', '2026/02/customer-img-2.png'),
(43, 24, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:130;s:6:\"height\";i:130;s:4:\"file\";s:26:\"2026/02/customer-img-2.png\";s:8:\"filesize\";i:30946;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(44, 25, '_wp_attached_file', '2026/02/fb-icon.png'),
(45, 25, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:65;s:6:\"height\";i:64;s:4:\"file\";s:19:\"2026/02/fb-icon.png\";s:8:\"filesize\";i:2175;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(46, 26, '_wp_attached_file', '2026/02/img-1.png'),
(47, 26, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:130;s:6:\"height\";i:166;s:4:\"file\";s:17:\"2026/02/img-1.png\";s:8:\"filesize\";i:33043;s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:17:\"img-1-130x150.png\";s:5:\"width\";i:130;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:23876;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(48, 27, '_wp_attached_file', '2026/02/img-2.png'),
(49, 27, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:130;s:6:\"height\";i:166;s:4:\"file\";s:17:\"2026/02/img-2.png\";s:8:\"filesize\";i:21910;s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:17:\"img-2-130x150.png\";s:5:\"width\";i:130;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:15405;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(50, 28, '_wp_attached_file', '2026/02/img-3.png'),
(51, 28, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:106;s:6:\"height\";i:145;s:4:\"file\";s:17:\"2026/02/img-3.png\";s:8:\"filesize\";i:23902;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(52, 29, '_wp_attached_file', '2026/02/mail-icon-1.png'),
(53, 29, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:28;s:6:\"height\";i:28;s:4:\"file\";s:23:\"2026/02/mail-icon-1.png\";s:8:\"filesize\";i:1182;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(54, 30, '_wp_attached_file', '2026/02/mail-icon.png'),
(55, 30, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:36;s:6:\"height\";i:24;s:4:\"file\";s:21:\"2026/02/mail-icon.png\";s:8:\"filesize\";i:1715;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(56, 31, '_wp_attached_file', '2026/02/user-icon.png'),
(57, 31, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:19;s:6:\"height\";i:18;s:4:\"file\";s:21:\"2026/02/user-icon.png\";s:8:\"filesize\";i:1102;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(58, 2, '_edit_lock', '1770888702:1'),
(59, 32, '_edit_lock', '1771704095:1'),
(60, 34, '_edit_lock', '1771703094:1'),
(61, 36, '_edit_lock', '1771583539:1'),
(62, 38, '_edit_lock', '1771599252:1'),
(63, 40, '_edit_lock', '1771583551:1'),
(64, 34, '_wp_page_template', 'about.php'),
(65, 38, '_wp_page_template', 'client.php'),
(66, 40, '_wp_page_template', 'contact.php'),
(67, 32, '_wp_page_template', 'default'),
(68, 36, '_wp_page_template', 'services.php'),
(69, 42, '_email', 'habibi-sonia@hotmail.fr'),
(70, 42, '_name', 'habibi'),
(71, 42, '_props', 'a:3:{s:4:\"name\";s:6:\"habibi\";s:10:\"first_name\";s:5:\"sonia\";s:9:\"last_name\";s:0:\"\";}'),
(72, 42, '_last_contacted', '2026-02-21 20:44:28'),
(73, 43, '_email', 'wapuu@wordpress.example'),
(74, 43, '_name', 'Un commentateur ou commentatrice WordPress'),
(75, 43, '_props', 'a:0:{}'),
(76, 43, '_last_contacted', '2026-02-12 11:22:11'),
(77, 6, '_flamingo', 'a:1:{s:7:\"channel\";i:4;}'),
(78, 44, '_submission_status', 'mail_sent'),
(79, 44, '_subject', '[your-subject]'),
(80, 44, '_from', 'sonia <habibi-sonia@hotmail.fr>'),
(81, 44, '_from_name', 'sonia'),
(82, 44, '_from_email', 'habibi-sonia@hotmail.fr'),
(83, 44, '_field_your-name', 'sonia'),
(84, 44, '_field_your-phone', '06 67 22 22 47'),
(85, 44, '_field_your-email', 'habibi-sonia@hotmail.fr'),
(86, 44, '_field_your-services', 'a:1:{i:0;s:11:\"Style Dance\";}'),
(87, 44, '_field_your-message', 'Je fais un test pour voir si le mail se met bien dans la base de donnée'),
(88, 44, '_field_your-rgpd', 'a:1:{i:0;s:1:\"1\";}'),
(89, 44, '_fields', 'a:6:{s:9:\"your-name\";N;s:10:\"your-phone\";N;s:10:\"your-email\";N;s:13:\"your-services\";N;s:12:\"your-message\";N;s:9:\"your-rgpd\";N;}'),
(90, 44, '_meta', 'a:19:{s:13:\"serial_number\";s:1:\"1\";s:9:\"remote_ip\";s:3:\"::1\";s:10:\"user_agent\";s:117:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.2 Safari/605.1.15\";s:3:\"url\";s:53:\"http://localhost:8888/wordpress/index.php/contact-us/\";s:4:\"date\";s:16:\"12 février 2026\";s:4:\"time\";s:5:\"11h24\";s:7:\"post_id\";s:0:\"\";s:9:\"post_name\";s:0:\"\";s:10:\"post_title\";s:0:\"\";s:8:\"post_url\";s:0:\"\";s:11:\"post_author\";s:0:\"\";s:17:\"post_author_email\";s:0:\"\";s:10:\"site_title\";s:9:\"Profusion\";s:16:\"site_description\";s:0:\"\";s:8:\"site_url\";s:31:\"http://localhost:8888/wordpress\";s:16:\"site_admin_email\";s:23:\"habibi-sonia@hotmail.fr\";s:10:\"user_login\";s:0:\"\";s:10:\"user_email\";s:0:\"\";s:17:\"user_display_name\";s:0:\"\";}'),
(91, 44, '_akismet', NULL),
(92, 44, '_recaptcha', NULL),
(93, 44, '_spam_log', 'a:0:{}'),
(94, 44, '_consent', 'a:1:{s:9:\"your-rgpd\";s:117:\"J\'accepte que mes données soient traitées conformément à la <a href=\"#\">politique de confidentialité</a> (RGPD).\";}'),
(95, 44, '_hash', 'fffe68bff45fe5b39bd98cf100571702'),
(96, 45, '_edit_last', '1'),
(97, 45, '_edit_lock', '1771789993:1'),
(98, 52, '_edit_last', '1'),
(99, 52, '_edit_lock', '1771192889:1'),
(100, 60, '_edit_last', '1'),
(101, 60, '_edit_lock', '1771600781:1'),
(102, 63, '_edit_lock', '1771188256:1'),
(103, 64, '_edit_lock', '1771190710:1'),
(104, 42, '_wp_old_date', '2026-02-12'),
(106, 64, '_edit_last', '1'),
(108, 64, 'about_title', ''),
(109, 64, '_about_title', 'field_699085eaef80d'),
(110, 64, 'about_description', ''),
(111, 64, '_about_description', 'field_6990868048f33'),
(112, 64, 'about_image', ''),
(113, 64, '_about_image', 'field_699086bdea563'),
(114, 64, 'about_content', ''),
(115, 64, '_about_content', 'field_699086e67761c'),
(116, 64, 'about_button_link', ''),
(117, 64, '_about_button_link', 'field_699089b05a2d6'),
(118, 64, 'client_image', ''),
(119, 64, '_client_image', 'field_69922f46a95ff'),
(120, 64, 'client_subtitle', ''),
(121, 64, '_client_subtitle', 'field_69922f76de8c5'),
(122, 64, 'service_image', '26'),
(123, 64, '_service_image', 'field_6990bc1360a82'),
(124, 65, 'about_title', ''),
(125, 65, '_about_title', 'field_699085eaef80d'),
(126, 65, 'about_description', ''),
(127, 65, '_about_description', 'field_6990868048f33'),
(128, 65, 'about_image', ''),
(129, 65, '_about_image', 'field_699086bdea563'),
(130, 65, 'about_content', ''),
(131, 65, '_about_content', 'field_699086e67761c'),
(132, 65, 'about_button_link', ''),
(133, 65, '_about_button_link', 'field_699089b05a2d6'),
(134, 65, 'client_image', ''),
(135, 65, '_client_image', 'field_69922f46a95ff'),
(136, 65, 'client_subtitle', ''),
(137, 65, '_client_subtitle', 'field_69922f76de8c5'),
(138, 65, 'service_image', ''),
(139, 65, '_service_image', 'field_6990bc1360a82'),
(140, 66, '_edit_lock', '1771587195:1'),
(142, 66, '_edit_last', '1'),
(144, 66, 'about_title', ''),
(145, 66, '_about_title', 'field_699085eaef80d'),
(146, 66, 'about_description', ''),
(147, 66, '_about_description', 'field_6990868048f33'),
(148, 66, 'about_image', ''),
(149, 66, '_about_image', 'field_699086bdea563'),
(150, 66, 'about_content', ''),
(151, 66, '_about_content', 'field_699086e67761c'),
(152, 66, 'about_button_link', ''),
(153, 66, '_about_button_link', 'field_699089b05a2d6'),
(154, 66, 'client_image', ''),
(155, 66, '_client_image', 'field_69922f46a95ff'),
(156, 66, 'client_subtitle', ''),
(157, 66, '_client_subtitle', 'field_69922f76de8c5'),
(158, 66, 'service_image', '27'),
(159, 66, '_service_image', 'field_6990bc1360a82'),
(160, 67, 'about_title', ''),
(161, 67, '_about_title', 'field_699085eaef80d'),
(162, 67, 'about_description', ''),
(163, 67, '_about_description', 'field_6990868048f33'),
(164, 67, 'about_image', ''),
(165, 67, '_about_image', 'field_699086bdea563'),
(166, 67, 'about_content', ''),
(167, 67, '_about_content', 'field_699086e67761c'),
(168, 67, 'about_button_link', ''),
(169, 67, '_about_button_link', 'field_699089b05a2d6'),
(170, 67, 'client_image', ''),
(171, 67, '_client_image', 'field_69922f46a95ff'),
(172, 67, 'client_subtitle', ''),
(173, 67, '_client_subtitle', 'field_69922f76de8c5'),
(174, 67, 'service_image', ''),
(175, 67, '_service_image', 'field_6990bc1360a82'),
(176, 68, '_edit_lock', '1771190695:1'),
(178, 68, '_edit_last', '1'),
(180, 68, 'about_title', ''),
(181, 68, '_about_title', 'field_699085eaef80d'),
(182, 68, 'about_description', ''),
(183, 68, '_about_description', 'field_6990868048f33'),
(184, 68, 'about_image', ''),
(185, 68, '_about_image', 'field_699086bdea563'),
(186, 68, 'about_content', ''),
(187, 68, '_about_content', 'field_699086e67761c'),
(188, 68, 'about_button_link', ''),
(189, 68, '_about_button_link', 'field_699089b05a2d6'),
(190, 68, 'client_image', ''),
(191, 68, '_client_image', 'field_69922f46a95ff'),
(192, 68, 'client_subtitle', ''),
(193, 68, '_client_subtitle', 'field_69922f76de8c5'),
(194, 68, 'service_image', '26'),
(195, 68, '_service_image', 'field_6990bc1360a82'),
(196, 69, 'about_title', ''),
(197, 69, '_about_title', 'field_699085eaef80d'),
(198, 69, 'about_description', ''),
(199, 69, '_about_description', 'field_6990868048f33'),
(200, 69, 'about_image', ''),
(201, 69, '_about_image', 'field_699086bdea563'),
(202, 69, 'about_content', ''),
(203, 69, '_about_content', 'field_699086e67761c'),
(204, 69, 'about_button_link', ''),
(205, 69, '_about_button_link', 'field_699089b05a2d6'),
(206, 69, 'client_image', ''),
(207, 69, '_client_image', 'field_69922f46a95ff'),
(208, 69, 'client_subtitle', ''),
(209, 69, '_client_subtitle', 'field_69922f76de8c5'),
(210, 69, 'service_image', ''),
(211, 69, '_service_image', 'field_6990bc1360a82'),
(213, 71, '_edit_last', '1'),
(214, 71, '_edit_lock', '1771192760:1'),
(215, 85, '_edit_lock', '1771601697:1'),
(217, 85, '_edit_last', '1'),
(219, 85, 'client_image', '10'),
(220, 85, '_client_image', 'field_69922f46a95ff'),
(221, 85, 'client_subtitle', 'Voluptate'),
(222, 85, '_client_subtitle', 'field_69922f76de8c5'),
(223, 86, 'client_image', ''),
(224, 86, '_client_image', 'field_69922f46a95ff'),
(225, 86, 'client_subtitle', ''),
(226, 86, '_client_subtitle', 'field_69922f76de8c5'),
(227, 87, '_edit_lock', '1771601481:1'),
(229, 87, '_edit_last', '1'),
(231, 87, 'client_image', '10'),
(232, 87, '_client_image', 'field_69922f46a95ff'),
(233, 87, 'client_subtitle', 'Voluptate'),
(234, 87, '_client_subtitle', 'field_69922f76de8c5'),
(235, 88, 'client_image', ''),
(236, 88, '_client_image', 'field_69922f46a95ff'),
(237, 88, 'client_subtitle', ''),
(238, 88, '_client_subtitle', 'field_69922f76de8c5'),
(239, 89, '_edit_lock', '1771601545:1'),
(241, 89, '_edit_last', '1'),
(243, 89, 'client_image', '10'),
(244, 89, '_client_image', 'field_69922f46a95ff'),
(245, 89, 'client_subtitle', 'Voluptate'),
(246, 89, '_client_subtitle', 'field_69922f76de8c5'),
(247, 90, 'client_image', ''),
(248, 90, '_client_image', 'field_69922f46a95ff'),
(249, 90, 'client_subtitle', ''),
(250, 90, '_client_subtitle', 'field_69922f76de8c5'),
(251, 91, '_edit_lock', '1771601455:1'),
(253, 91, '_edit_last', '1'),
(255, 91, 'client_image', '10'),
(256, 91, '_client_image', 'field_69922f46a95ff'),
(257, 91, 'client_subtitle', 'Voluptate'),
(258, 91, '_client_subtitle', 'field_69922f76de8c5'),
(259, 92, 'client_image', ''),
(260, 92, '_client_image', 'field_69922f46a95ff'),
(261, 92, 'client_subtitle', ''),
(262, 92, '_client_subtitle', 'field_69922f76de8c5'),
(265, 91, 'footnotes', ''),
(267, 93, 'footnotes', ''),
(270, 93, 'client_image', '10'),
(271, 93, '_client_image', 'field_69922f46a95ff'),
(272, 93, 'client_subtitle', 'Voluptate'),
(273, 93, '_client_subtitle', 'field_69922f76de8c5'),
(278, 89, 'footnotes', ''),
(280, 94, 'footnotes', ''),
(283, 94, 'client_image', '10'),
(284, 94, '_client_image', 'field_69922f46a95ff'),
(285, 94, 'client_subtitle', 'Voluptate'),
(286, 94, '_client_subtitle', 'field_69922f76de8c5'),
(291, 87, 'footnotes', ''),
(293, 95, 'footnotes', ''),
(296, 95, 'client_image', '10'),
(297, 95, '_client_image', 'field_69922f46a95ff'),
(298, 95, 'client_subtitle', 'Voluptate'),
(299, 95, '_client_subtitle', 'field_69922f76de8c5'),
(304, 85, 'footnotes', ''),
(306, 96, 'footnotes', ''),
(309, 96, 'client_image', '10'),
(310, 96, '_client_image', 'field_69922f46a95ff'),
(311, 96, 'client_subtitle', 'Voluptate'),
(312, 96, '_client_subtitle', 'field_69922f76de8c5'),
(317, 68, 'footnotes', ''),
(319, 97, 'footnotes', ''),
(322, 97, 'about_title', ''),
(323, 97, '_about_title', 'field_699085eaef80d'),
(324, 97, 'about_description', ''),
(325, 97, '_about_description', 'field_6990868048f33'),
(326, 97, 'about_image', ''),
(327, 97, '_about_image', 'field_699086bdea563'),
(328, 97, 'about_content', ''),
(329, 97, '_about_content', 'field_699086e67761c'),
(330, 97, 'about_button_link', ''),
(331, 97, '_about_button_link', 'field_699089b05a2d6'),
(332, 97, 'client_image', ''),
(333, 97, '_client_image', 'field_69922f46a95ff'),
(334, 97, 'client_subtitle', ''),
(335, 97, '_client_subtitle', 'field_69922f76de8c5'),
(336, 97, 'service_image', '26'),
(337, 97, '_service_image', 'field_6990bc1360a82'),
(342, 64, 'footnotes', ''),
(344, 98, 'footnotes', ''),
(347, 98, 'about_title', ''),
(348, 98, '_about_title', 'field_699085eaef80d'),
(349, 98, 'about_description', ''),
(350, 98, '_about_description', 'field_6990868048f33'),
(351, 98, 'about_image', ''),
(352, 98, '_about_image', 'field_699086bdea563'),
(353, 98, 'about_content', ''),
(354, 98, '_about_content', 'field_699086e67761c'),
(355, 98, 'about_button_link', ''),
(356, 98, '_about_button_link', 'field_699089b05a2d6'),
(357, 98, 'client_image', ''),
(358, 98, '_client_image', 'field_69922f46a95ff'),
(359, 98, 'client_subtitle', ''),
(360, 98, '_client_subtitle', 'field_69922f76de8c5'),
(361, 98, 'service_image', '26'),
(362, 98, '_service_image', 'field_6990bc1360a82'),
(365, 66, 'footnotes', ''),
(367, 99, 'footnotes', ''),
(370, 99, 'about_title', ''),
(371, 99, '_about_title', 'field_699085eaef80d'),
(372, 99, 'about_description', ''),
(373, 99, '_about_description', 'field_6990868048f33'),
(374, 99, 'about_image', ''),
(375, 99, '_about_image', 'field_699086bdea563'),
(376, 99, 'about_content', ''),
(377, 99, '_about_content', 'field_699086e67761c'),
(378, 99, 'about_button_link', ''),
(379, 99, '_about_button_link', 'field_699089b05a2d6'),
(380, 99, 'client_image', ''),
(381, 99, '_client_image', 'field_69922f46a95ff'),
(382, 99, 'client_subtitle', ''),
(383, 99, '_client_subtitle', 'field_69922f76de8c5'),
(384, 99, 'service_image', '27'),
(385, 99, '_service_image', 'field_6990bc1360a82'),
(393, 32, 'footnotes', ''),
(395, 101, 'footnotes', ''),
(397, 32, '_edit_last', '1'),
(398, 32, 'banner_image', '9'),
(399, 32, '_banner_image', 'field_6992326eefed1'),
(400, 32, 'banner_title', 'START DANCE'),
(401, 32, '_banner_title', 'field_699233188be29'),
(402, 32, 'banner_bouton_text', 'READ MORE '),
(403, 32, '_banner_bouton_text', 'field_69923336a23d6'),
(404, 32, 'banner_button_link', ''),
(405, 32, '_banner_button_link', 'field_699233dad305c'),
(406, 32, 'price_title', 'OUR PRICE'),
(407, 32, '_price_title', 'field_699233fa2de9c'),
(408, 32, 'price_1_name', 'FIRST PRICE'),
(409, 32, '_price_1_name', 'field_6992341d27685'),
(410, 32, 'price_1_amount', '500'),
(411, 32, '_price_1_amount', 'field_6992343b77f76'),
(412, 32, 'price_1_period', '/one month'),
(413, 32, '_price_1_period', 'field_6992345d6dc56'),
(414, 32, 'price_1_description', 'Passages of Lorem Ipsum available, but the majority have suffered alteration\r\n'),
(415, 32, '_price_1_description', 'field_6992347c8b780'),
(416, 32, 'price_2_name', 'SECOUND PRICE'),
(417, 32, '_price_2_name', 'field_699234c1c5f0c'),
(418, 32, 'price_2_amount', '1000'),
(419, 32, '_price_2_amount', 'field_699234dfb5cf5'),
(420, 32, 'price_2_period', '/one month'),
(421, 32, '_price_2_period', 'field_699235157cae9'),
(422, 32, 'price_2_description', 'Passages of Lorem Ipsum available, but the majority have suffered alteration'),
(423, 32, '_price_2_description', 'field_699235366b06a'),
(424, 101, 'banner_image', '9'),
(425, 101, '_banner_image', 'field_6992326eefed1'),
(426, 101, 'banner_title', 'START DANCE'),
(427, 101, '_banner_title', 'field_699233188be29'),
(428, 101, 'banner_bouton_text', 'READ MORE '),
(429, 101, '_banner_bouton_text', 'field_69923336a23d6'),
(430, 101, 'banner_button_link', ''),
(431, 101, '_banner_button_link', 'field_699233dad305c'),
(432, 101, 'price_title', 'OUR PRICE'),
(433, 101, '_price_title', 'field_699233fa2de9c'),
(434, 101, 'price_1_name', 'FIRST PRICE'),
(435, 101, '_price_1_name', 'field_6992341d27685'),
(436, 101, 'price_1_amount', '$500 '),
(437, 101, '_price_1_amount', 'field_6992343b77f76'),
(438, 101, 'price_1_period', '/one month'),
(439, 101, '_price_1_period', 'field_6992345d6dc56'),
(440, 101, 'price_1_description', ''),
(441, 101, '_price_1_description', 'field_6992347c8b780'),
(442, 101, 'price_2_name', ''),
(443, 101, '_price_2_name', 'field_699234c1c5f0c'),
(444, 101, 'price_2_amount', ''),
(445, 101, '_price_2_amount', 'field_699234dfb5cf5'),
(446, 101, 'price_2_period', ''),
(447, 101, '_price_2_period', 'field_699235157cae9'),
(448, 101, 'price_2_description', ''),
(449, 101, '_price_2_description', 'field_699235366b06a'),
(454, 103, 'footnotes', ''),
(456, 103, 'banner_image', '9'),
(457, 103, '_banner_image', 'field_6992326eefed1'),
(458, 103, 'banner_title', 'START DANCE'),
(459, 103, '_banner_title', 'field_699233188be29'),
(460, 103, 'banner_bouton_text', 'READ MORE '),
(461, 103, '_banner_bouton_text', 'field_69923336a23d6'),
(462, 103, 'banner_button_link', ''),
(463, 103, '_banner_button_link', 'field_699233dad305c'),
(464, 103, 'price_title', 'OUR PRICE'),
(465, 103, '_price_title', 'field_699233fa2de9c'),
(466, 103, 'price_1_name', 'FIRST PRICE'),
(467, 103, '_price_1_name', 'field_6992341d27685'),
(468, 103, 'price_1_amount', '$500 '),
(469, 103, '_price_1_amount', 'field_6992343b77f76'),
(470, 103, 'price_1_period', '/one month'),
(471, 103, '_price_1_period', 'field_6992345d6dc56'),
(472, 103, 'price_1_description', 'Passages of Lorem Ipsum available, but the majority have suffered alteration\r\n'),
(473, 103, '_price_1_description', 'field_6992347c8b780'),
(474, 103, 'price_2_name', 'SECOUND PRICE'),
(475, 103, '_price_2_name', 'field_699234c1c5f0c'),
(476, 103, 'price_2_amount', '$1000'),
(477, 103, '_price_2_amount', 'field_699234dfb5cf5'),
(478, 103, 'price_2_period', ' /one month'),
(479, 103, '_price_2_period', 'field_699235157cae9'),
(480, 103, 'price_2_description', 'Passages of Lorem Ipsum available, but the majority have suffered alteration'),
(481, 103, '_price_2_description', 'field_699235366b06a'),
(482, 2, '_wp_trash_meta_status', 'publish'),
(483, 2, '_wp_trash_meta_time', '1771193041'),
(484, 2, '_wp_desired_post_slug', 'page-d-exemple'),
(485, 34, '_edit_last', '1'),
(486, 34, 'about_title', 'ABOUT OUR DANCE STUDIO'),
(487, 34, '_about_title', 'field_699085eaef80d'),
(488, 34, 'about_description', 'English. Many desktop publishing\r\npackages and web page editors now use Lorem Ipsum as their default model text, and a search'),
(489, 34, '_about_description', 'field_6990868048f33'),
(490, 34, 'about_image', '20'),
(491, 34, '_about_image', 'field_699086bdea563'),
(492, 34, 'about_content', 'using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy.'),
(493, 34, '_about_content', 'field_699086e67761c'),
(494, 34, 'about_button_link', 'http://localhost:8888/wordpress/about/'),
(495, 34, '_about_button_link', 'field_699089b05a2d6'),
(496, 35, 'about_title', ''),
(497, 35, '_about_title', 'field_699085eaef80d'),
(498, 35, 'about_description', ''),
(499, 35, '_about_description', 'field_6990868048f33'),
(500, 35, 'about_image', ''),
(501, 35, '_about_image', 'field_699086bdea563'),
(502, 35, 'about_content', ''),
(503, 35, '_about_content', 'field_699086e67761c'),
(504, 35, 'about_button_link', ''),
(505, 35, '_about_button_link', 'field_699089b05a2d6'),
(508, 105, 'footnotes', ''),
(510, 105, 'banner_image', '9'),
(511, 105, '_banner_image', 'field_6992326eefed1'),
(512, 105, 'banner_title', 'START DANCE'),
(513, 105, '_banner_title', 'field_699233188be29'),
(514, 105, 'banner_bouton_text', 'READ MORE '),
(515, 105, '_banner_bouton_text', 'field_69923336a23d6'),
(516, 105, 'banner_button_link', ''),
(517, 105, '_banner_button_link', 'field_699233dad305c'),
(518, 105, 'price_title', 'OUR PRICE'),
(519, 105, '_price_title', 'field_699233fa2de9c'),
(520, 105, 'price_1_name', 'FIRST PRICE'),
(521, 105, '_price_1_name', 'field_6992341d27685'),
(522, 105, 'price_1_amount', '500 '),
(523, 105, '_price_1_amount', 'field_6992343b77f76'),
(524, 105, 'price_1_period', '/one month'),
(525, 105, '_price_1_period', 'field_6992345d6dc56'),
(526, 105, 'price_1_description', 'Passages of Lorem Ipsum available, but the majority have suffered alteration\r\n'),
(527, 105, '_price_1_description', 'field_6992347c8b780'),
(528, 105, 'price_2_name', 'SECOUND PRICE'),
(529, 105, '_price_2_name', 'field_699234c1c5f0c'),
(530, 105, 'price_2_amount', '1000'),
(531, 105, '_price_2_amount', 'field_699234dfb5cf5'),
(532, 105, 'price_2_period', ' /one month'),
(533, 105, '_price_2_period', 'field_699235157cae9'),
(534, 105, 'price_2_description', 'Passages of Lorem Ipsum available, but the majority have suffered alteration'),
(535, 105, '_price_2_description', 'field_699235366b06a'),
(538, 106, 'footnotes', ''),
(540, 106, 'banner_image', '9'),
(541, 106, '_banner_image', 'field_6992326eefed1'),
(542, 106, 'banner_title', 'START DANCE'),
(543, 106, '_banner_title', 'field_699233188be29'),
(544, 106, 'banner_bouton_text', 'READ MORE '),
(545, 106, '_banner_bouton_text', 'field_69923336a23d6'),
(546, 106, 'banner_button_link', ''),
(547, 106, '_banner_button_link', 'field_699233dad305c'),
(548, 106, 'price_title', 'OUR PRICE'),
(549, 106, '_price_title', 'field_699233fa2de9c'),
(550, 106, 'price_1_name', 'FIRST PRICE'),
(551, 106, '_price_1_name', 'field_6992341d27685'),
(552, 106, 'price_1_amount', '500 '),
(553, 106, '_price_1_amount', 'field_6992343b77f76'),
(554, 106, 'price_1_period', '/one month'),
(555, 106, '_price_1_period', 'field_6992345d6dc56'),
(556, 106, 'price_1_description', 'Passages of Lorem Ipsum available, but the majority have suffered alteration\r\n'),
(557, 106, '_price_1_description', 'field_6992347c8b780'),
(558, 106, 'price_2_name', 'SECOUND PRICE'),
(559, 106, '_price_2_name', 'field_699234c1c5f0c'),
(560, 106, 'price_2_amount', '1000'),
(561, 106, '_price_2_amount', 'field_699234dfb5cf5'),
(562, 106, 'price_2_period', '/one month'),
(563, 106, '_price_2_period', 'field_699235157cae9'),
(564, 106, 'price_2_description', 'Passages of Lorem Ipsum available, but the majority have suffered alteration'),
(565, 106, '_price_2_description', 'field_699235366b06a'),
(569, 34, 'footnotes', ''),
(571, 108, 'footnotes', ''),
(573, 108, 'about_title', 'ABOUT OUR DANCE STUDIO'),
(574, 108, '_about_title', 'field_699085eaef80d'),
(575, 108, 'about_description', 'English. Many desktop publishing\r\npackages and web page editors now use Lorem Ipsum as their default model text, and a search'),
(576, 108, '_about_description', 'field_6990868048f33'),
(577, 108, 'about_image', '20'),
(578, 108, '_about_image', 'field_699086bdea563'),
(579, 108, 'about_content', 'using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy.'),
(580, 108, '_about_content', 'field_699086e67761c'),
(581, 108, 'about_button_link', ''),
(582, 108, '_about_button_link', 'field_699089b05a2d6'),
(585, 109, 'footnotes', ''),
(587, 109, 'about_title', 'ABOUT OUR DANCE STUDIO'),
(588, 109, '_about_title', 'field_699085eaef80d'),
(589, 109, 'about_description', 'English. Many desktop publishing\r\npackages and web page editors now use Lorem Ipsum as their default model text, and a search'),
(590, 109, '_about_description', 'field_6990868048f33'),
(591, 109, 'about_image', '20'),
(592, 109, '_about_image', 'field_699086bdea563'),
(593, 109, 'about_content', 'using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy.'),
(594, 109, '_about_content', 'field_699086e67761c'),
(595, 109, 'about_button_link', 'http://localhost:8888/wordpress/about/'),
(596, 109, '_about_button_link', 'field_699089b05a2d6'),
(601, 111, 'footnotes', ''),
(603, 111, 'about_title', 'ABOUT OUR DANCE STUDIO'),
(604, 111, '_about_title', 'field_699085eaef80d'),
(605, 111, 'about_description', 'English. Many desktop publishing\r\npackages and web page editors now use Lorem Ipsum as their default model text, and a search'),
(606, 111, '_about_description', 'field_6990868048f33'),
(607, 111, 'about_image', '20'),
(608, 111, '_about_image', 'field_699086bdea563'),
(609, 111, 'about_content', 'using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy.'),
(610, 111, '_about_content', 'field_699086e67761c'),
(611, 111, 'about_button_link', 'http://localhost:8888/wordpress/about/'),
(612, 111, '_about_button_link', 'field_699089b05a2d6'),
(615, 112, 'footnotes', ''),
(617, 34, 'about_button_text', 'READ ME'),
(618, 34, '_about_button_text', 'field_699086fc09e9c'),
(619, 112, 'about_title', 'ABOUT OUR DANCE STUDIO'),
(620, 112, '_about_title', 'field_699085eaef80d'),
(621, 112, 'about_description', 'English. Many desktop publishing\r\npackages and web page editors now use Lorem Ipsum as their default model text, and a search'),
(622, 112, '_about_description', 'field_6990868048f33'),
(623, 112, 'about_image', '20'),
(624, 112, '_about_image', 'field_699086bdea563'),
(625, 112, 'about_content', 'using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy.'),
(626, 112, '_about_content', 'field_699086e67761c'),
(627, 112, 'about_button_link', 'http://localhost:8888/wordpress/about/'),
(628, 112, '_about_button_link', 'field_699089b05a2d6'),
(629, 112, 'about_button_text', 'READ ME'),
(630, 112, '_about_button_text', 'field_699086fc09e9c'),
(631, 113, '_edit_lock', '1771587241:1'),
(634, 113, 'footnotes', ''),
(636, 114, 'footnotes', ''),
(638, 113, '_edit_last', '1'),
(640, 113, 'service_image', '27'),
(641, 113, '_service_image', 'field_6990bc1360a82'),
(642, 114, 'service_image', '27'),
(643, 114, '_service_image', 'field_6990bc1360a82'),
(644, 115, '_edit_lock', '1771587278:1'),
(647, 115, 'footnotes', ''),
(649, 116, 'footnotes', ''),
(651, 115, '_edit_last', '1'),
(653, 115, 'service_image', '26'),
(654, 115, '_service_image', 'field_6990bc1360a82'),
(655, 116, 'service_image', '26'),
(656, 116, '_service_image', 'field_6990bc1360a82'),
(657, 117, '_edit_lock', '1771587315:1'),
(660, 117, 'footnotes', ''),
(662, 118, 'footnotes', ''),
(664, 117, '_edit_last', '1'),
(666, 117, 'service_image', '26'),
(667, 117, '_service_image', 'field_6990bc1360a82'),
(668, 118, 'service_image', '26'),
(669, 118, '_service_image', 'field_6990bc1360a82'),
(670, 119, '_edit_lock', '1771587352:1'),
(673, 119, 'footnotes', ''),
(675, 120, 'footnotes', ''),
(677, 119, '_edit_last', '1'),
(679, 119, 'service_image', '27'),
(680, 119, '_service_image', 'field_6990bc1360a82'),
(681, 120, 'service_image', '27'),
(682, 120, '_service_image', 'field_6990bc1360a82'),
(683, 42, '_wp_old_date', '2026-02-15'),
(687, 122, 'footnotes', ''),
(689, 122, 'client_image', '10'),
(690, 122, '_client_image', 'field_69922f46a95ff'),
(691, 122, 'client_subtitle', 'Voluptate'),
(692, 122, '_client_subtitle', 'field_69922f76de8c5'),
(694, 123, 'footnotes', ''),
(696, 123, 'client_image', '10'),
(697, 123, '_client_image', 'field_69922f46a95ff'),
(698, 123, 'client_subtitle', 'Voluptate'),
(699, 123, '_client_subtitle', 'field_69922f76de8c5'),
(705, 124, 'footnotes', ''),
(707, 124, 'client_image', '10'),
(708, 124, '_client_image', 'field_69922f46a95ff'),
(709, 124, 'client_subtitle', 'Voluptate'),
(710, 124, '_client_subtitle', 'field_69922f76de8c5'),
(712, 125, 'footnotes', ''),
(714, 125, 'client_image', '10'),
(715, 125, '_client_image', 'field_69922f46a95ff'),
(716, 125, 'client_subtitle', 'Voluptate'),
(717, 125, '_client_subtitle', 'field_69922f76de8c5'),
(719, 126, 'footnotes', ''),
(721, 126, 'client_image', '10'),
(722, 126, '_client_image', 'field_69922f46a95ff'),
(723, 126, 'client_subtitle', 'Voluptate'),
(724, 126, '_client_subtitle', 'field_69922f76de8c5'),
(726, 127, 'footnotes', ''),
(728, 127, 'client_image', '10'),
(729, 127, '_client_image', 'field_69922f46a95ff'),
(730, 127, 'client_subtitle', 'Voluptate'),
(731, 127, '_client_subtitle', 'field_69922f76de8c5'),
(733, 128, 'footnotes', ''),
(735, 128, 'client_image', '10'),
(736, 128, '_client_image', 'field_69922f46a95ff'),
(737, 128, 'client_subtitle', 'Voluptate'),
(738, 128, '_client_subtitle', 'field_69922f76de8c5'),
(740, 129, 'footnotes', ''),
(742, 129, 'client_image', '10'),
(743, 129, '_client_image', 'field_69922f46a95ff'),
(744, 129, 'client_subtitle', 'Voluptate'),
(745, 129, '_client_subtitle', 'field_69922f76de8c5'),
(749, 130, 'footnotes', ''),
(751, 130, 'client_image', '10'),
(752, 130, '_client_image', 'field_69922f46a95ff'),
(753, 130, 'client_subtitle', 'Voluptate'),
(754, 130, '_client_subtitle', 'field_69922f76de8c5'),
(756, 131, 'footnotes', ''),
(758, 131, 'client_image', '10'),
(759, 131, '_client_image', 'field_69922f46a95ff'),
(760, 131, 'client_subtitle', 'Voluptate'),
(761, 131, '_client_subtitle', 'field_69922f76de8c5'),
(762, 132, 'client_image', '10'),
(763, 132, '_client_image', 'field_69922f46a95ff'),
(764, 132, 'client_subtitle', 'Voluptate'),
(765, 132, '_client_subtitle', 'field_69922f76de8c5'),
(766, 132, 'footnotes', ''),
(767, 132, '_dp_original', '87'),
(768, 133, 'client_image', '10'),
(769, 133, '_client_image', 'field_69922f46a95ff'),
(770, 133, 'client_subtitle', 'Voluptate'),
(771, 133, '_client_subtitle', 'field_69922f76de8c5'),
(772, 133, 'footnotes', ''),
(773, 133, '_dp_original', '89'),
(774, 134, 'client_image', '10'),
(775, 134, '_client_image', 'field_69922f46a95ff'),
(776, 134, 'client_subtitle', 'Voluptate'),
(777, 134, '_client_subtitle', 'field_69922f76de8c5'),
(778, 134, 'footnotes', ''),
(779, 134, '_dp_original', '85'),
(780, 135, 'client_image', '10'),
(781, 135, '_client_image', 'field_69922f46a95ff'),
(782, 135, 'client_subtitle', 'Voluptate'),
(783, 135, '_client_subtitle', 'field_69922f76de8c5'),
(784, 135, 'footnotes', ''),
(785, 135, '_dp_original', '87'),
(786, 135, '_edit_lock', '1771602074:1'),
(788, 136, 'footnotes', ''),
(789, 135, '_edit_last', '1'),
(791, 136, 'client_image', '10'),
(792, 136, '_client_image', 'field_69922f46a95ff'),
(793, 136, 'client_subtitle', 'Voluptate'),
(794, 136, '_client_subtitle', 'field_69922f76de8c5');
INSERT INTO `wp_wordpresspostmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(795, 134, '_edit_lock', '1771602082:1'),
(797, 137, 'footnotes', ''),
(798, 134, '_edit_last', '1'),
(800, 137, 'client_image', '10'),
(801, 137, '_client_image', 'field_69922f46a95ff'),
(802, 137, 'client_subtitle', 'Voluptate'),
(803, 137, '_client_subtitle', 'field_69922f76de8c5'),
(804, 133, '_edit_lock', '1771602087:1'),
(806, 138, 'footnotes', ''),
(807, 133, '_edit_last', '1'),
(809, 138, 'client_image', '10'),
(810, 138, '_client_image', 'field_69922f46a95ff'),
(811, 138, 'client_subtitle', 'Voluptate'),
(812, 138, '_client_subtitle', 'field_69922f76de8c5'),
(813, 132, '_edit_lock', '1771602092:1'),
(815, 139, 'footnotes', ''),
(816, 132, '_edit_last', '1'),
(818, 139, 'client_image', '10'),
(819, 139, '_client_image', 'field_69922f46a95ff'),
(820, 139, 'client_subtitle', 'Voluptate'),
(821, 139, '_client_subtitle', 'field_69922f76de8c5'),
(822, 140, '_edit_lock', '1771603067:1'),
(823, 141, '_menu_item_type', 'post_type'),
(824, 141, '_menu_item_menu_item_parent', '0'),
(825, 141, '_menu_item_object_id', '32'),
(826, 141, '_menu_item_object', 'page'),
(827, 141, '_menu_item_target', ''),
(828, 141, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(829, 141, '_menu_item_xfn', ''),
(830, 141, '_menu_item_url', ''),
(831, 142, '_menu_item_type', 'post_type'),
(832, 142, '_menu_item_menu_item_parent', '0'),
(833, 142, '_menu_item_object_id', '40'),
(834, 142, '_menu_item_object', 'page'),
(835, 142, '_menu_item_target', ''),
(836, 142, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(837, 142, '_menu_item_xfn', ''),
(838, 142, '_menu_item_url', ''),
(839, 143, '_menu_item_type', 'post_type'),
(840, 143, '_menu_item_menu_item_parent', '0'),
(841, 143, '_menu_item_object_id', '38'),
(842, 143, '_menu_item_object', 'page'),
(843, 143, '_menu_item_target', ''),
(844, 143, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(845, 143, '_menu_item_xfn', ''),
(846, 143, '_menu_item_url', ''),
(847, 144, '_menu_item_type', 'post_type'),
(848, 144, '_menu_item_menu_item_parent', '0'),
(849, 144, '_menu_item_object_id', '36'),
(850, 144, '_menu_item_object', 'page'),
(851, 144, '_menu_item_target', ''),
(852, 144, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(853, 144, '_menu_item_xfn', ''),
(854, 144, '_menu_item_url', ''),
(855, 145, '_menu_item_type', 'post_type'),
(856, 145, '_menu_item_menu_item_parent', '0'),
(857, 145, '_menu_item_object_id', '34'),
(858, 145, '_menu_item_object', 'page'),
(859, 145, '_menu_item_target', ''),
(860, 145, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(861, 145, '_menu_item_xfn', ''),
(862, 145, '_menu_item_url', ''),
(863, 140, '_wp_trash_meta_status', 'publish'),
(864, 140, '_wp_trash_meta_time', '1771603105'),
(865, 42, '_wp_old_date', '2026-02-20'),
(866, 146, 'footnotes', ''),
(867, 146, 'about_title', 'ABOUT OUR DANCE STUDIO'),
(868, 146, '_about_title', 'field_699085eaef80d'),
(869, 146, 'about_description', 'English. Many desktop publishing\r\npackages and web page editors now use Lorem Ipsum as their default model text, and a search'),
(870, 146, '_about_description', 'field_6990868048f33'),
(871, 146, 'about_image', '20'),
(872, 146, '_about_image', 'field_699086bdea563'),
(873, 146, 'about_content', 'using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy.'),
(874, 146, '_about_content', 'field_699086e67761c'),
(875, 146, 'about_button_link', 'http://localhost:8888/wordpress/about/'),
(876, 146, '_about_button_link', 'field_699089b05a2d6'),
(877, 146, 'about_button_text', 'READ ME'),
(878, 146, '_about_button_text', 'field_699086fc09e9c'),
(881, 147, 'footnotes', ''),
(883, 147, 'banner_image', '9'),
(884, 147, '_banner_image', 'field_6992326eefed1'),
(885, 147, 'banner_title', 'START DANCE'),
(886, 147, '_banner_title', 'field_699233188be29'),
(887, 147, 'banner_bouton_text', 'READ MORE '),
(888, 147, '_banner_bouton_text', 'field_69923336a23d6'),
(889, 147, 'banner_button_link', ''),
(890, 147, '_banner_button_link', 'field_699233dad305c'),
(891, 147, 'price_title', 'OUR PRICE'),
(892, 147, '_price_title', 'field_699233fa2de9c'),
(893, 147, 'price_1_name', 'FIRST PRICE'),
(894, 147, '_price_1_name', 'field_6992341d27685'),
(895, 147, 'price_1_amount', '500'),
(896, 147, '_price_1_amount', 'field_6992343b77f76'),
(897, 147, 'price_1_period', '/one month'),
(898, 147, '_price_1_period', 'field_6992345d6dc56'),
(899, 147, 'price_1_description', 'Passages of Lorem Ipsum available, but the majority have suffered alteration\r\n'),
(900, 147, '_price_1_description', 'field_6992347c8b780'),
(901, 147, 'price_2_name', 'SECOUND PRICE'),
(902, 147, '_price_2_name', 'field_699234c1c5f0c'),
(903, 147, 'price_2_amount', '1000'),
(904, 147, '_price_2_amount', 'field_699234dfb5cf5'),
(905, 147, 'price_2_period', '/one month'),
(906, 147, '_price_2_period', 'field_699235157cae9'),
(907, 147, 'price_2_description', 'Passages of Lorem Ipsum available, but the majority have suffered alteration'),
(908, 147, '_price_2_description', 'field_699235366b06a'),
(909, 148, '_wp_attached_file', '2026/02/cropped-logo.png'),
(910, 148, '_wp_attachment_context', 'custom-logo'),
(911, 148, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:214;s:6:\"height\";i:65;s:4:\"file\";s:24:\"2026/02/cropped-logo.png\";s:8:\"filesize\";i:3602;s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:23:\"cropped-logo-150x65.png\";s:5:\"width\";i:150;s:6:\"height\";i:65;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:2440;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(912, 149, '_wp_trash_meta_status', 'publish'),
(913, 149, '_wp_trash_meta_time', '1771704158');

-- --------------------------------------------------------

--
-- Structure de la table `wp_wordpressposts`
--

CREATE TABLE `wp_wordpressposts` (
  `ID` bigint UNSIGNED NOT NULL,
  `post_author` bigint UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_wordpressposts`
--

INSERT INTO `wp_wordpressposts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2026-02-11 22:24:06', '2026-02-11 21:24:06', '<!-- wp:paragraph -->\n<p>Bienvenue sur WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis commencez à écrire !</p>\n<!-- /wp:paragraph -->', 'Bonjour tout le monde !', '', 'publish', 'open', 'open', '', 'bonjour-tout-le-monde', '', '', '2026-02-11 22:24:06', '2026-02-11 21:24:06', '', 0, 'http://localhost:8888/wordpress/?p=1', 0, 'post', '', 1),
(2, 1, '2026-02-11 22:24:06', '2026-02-11 21:24:06', '<!-- wp:paragraph -->\n<p>Ceci est une page d’exemple. C’est différent d’un article de blog parce qu’elle restera au même endroit et apparaîtra dans la navigation de votre site (dans la plupart des thèmes). La plupart des gens commencent par une page « À propos » qui les présente aux personnes visitant le site. Cela pourrait ressembler à quelque chose comme cela :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\">\n<!-- wp:paragraph -->\n<p>Bonjour ! Je suis un mécanicien qui aspire à devenir acteur, et voici mon site. J’habite à Bordeaux, j’ai un super chien baptisé Russell, et j’aime la vodka (ainsi qu’être surpris par la pluie soudaine lors de longues balades sur la plage au coucher du soleil).</p>\n<!-- /wp:paragraph -->\n</blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>…ou quelque chose comme cela :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\">\n<!-- wp:paragraph -->\n<p>La société 123 Machin Truc a été créée en 1971, et n’a cessé de proposer au public des machins-trucs de qualité depuis lors. Située à Saint-Remy-en-Bouzemont-Saint-Genest-et-Isson, 123 Machin Truc emploie 2 000 personnes, et fabrique toutes sortes de bidules supers pour la communauté bouzemontoise.</p>\n<!-- /wp:paragraph -->\n</blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>En tant que nouvel utilisateur ou utilisatrice de WordPress, vous devriez vous rendre sur <a href=\"http://localhost:8888/wordpress/wp-admin/\">votre tableau de bord</a> pour supprimer cette page et créer de nouvelles pages pour votre contenu. Amusez-vous bien !</p>\n<!-- /wp:paragraph -->', 'Page d’exemple', '', 'trash', 'closed', 'open', '', 'page-d-exemple__trashed', '', '', '2026-02-15 23:04:01', '2026-02-15 22:04:01', '', 0, 'http://localhost:8888/wordpress/?page_id=2', 0, 'page', '', 0),
(3, 1, '2026-02-11 22:24:06', '2026-02-11 21:24:06', '<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Qui sommes-nous ?</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>L’adresse de notre site est : http://localhost:8888/wordpress.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Commentaires</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Quand vous laissez un commentaire sur notre site, les données inscrites dans le formulaire de commentaire, ainsi que votre adresse IP et l’agent utilisateur de votre navigateur sont collectés pour nous aider à la détection des commentaires indésirables.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Une chaîne anonymisée créée à partir de votre adresse e-mail (également appelée hash) peut être envoyée au service Gravatar pour vérifier si vous utilisez ce dernier. Les clauses de confidentialité du service Gravatar sont disponibles ici : https://automattic.com/privacy/. Après validation de votre commentaire, votre photo de profil sera visible publiquement à coté de votre commentaire.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Médias</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Si vous téléversez des images sur le site, nous vous conseillons d’éviter de téléverser des images contenant des données EXIF de coordonnées GPS. Les personnes visitant votre site peuvent télécharger et extraire des données de localisation depuis ces images.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Cookies</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Si vous déposez un commentaire sur notre site, il vous sera proposé d’enregistrer votre nom, adresse e-mail et site dans des cookies. C’est uniquement pour votre confort afin de ne pas avoir à saisir ces informations si vous déposez un autre commentaire plus tard. Ces cookies expirent au bout d’un an.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Si vous vous rendez sur la page de connexion, un cookie temporaire sera créé afin de déterminer si votre navigateur accepte les cookies. Il ne contient pas de données personnelles et sera supprimé automatiquement à la fermeture de votre navigateur.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Lorsque vous vous connecterez, nous mettrons en place un certain nombre de cookies pour enregistrer vos informations de connexion et vos préférences d’écran. La durée de vie d’un cookie de connexion est de deux jours, celle d’un cookie d’option d’écran est d’un an. Si vous cochez « Se souvenir de moi », votre cookie de connexion sera conservé pendant deux semaines. Si vous vous déconnectez de votre compte, le cookie de connexion sera effacé.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>En modifiant ou en publiant une publication, un cookie supplémentaire sera enregistré dans votre navigateur. Ce cookie ne comprend aucune donnée personnelle. Il indique simplement l’ID de la publication que vous venez de modifier. Il expire au bout d’un jour.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Contenu embarqué depuis d’autres sites</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Les articles de ce site peuvent inclure des contenus intégrés (par exemple des vidéos, images, articles…). Le contenu intégré depuis d’autres sites se comporte de la même manière que si le visiteur se rendait sur cet autre site.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Ces sites web pourraient collecter des données sur vous, utiliser des cookies, embarquer des outils de suivis tiers, suivre vos interactions avec ces contenus embarqués si vous disposez d’un compte connecté sur leur site web.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Utilisation et transmission de vos données personnelles</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Si vous demandez une réinitialisation de votre mot de passe, votre adresse IP sera incluse dans l’e-mail de réinitialisation.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Durées de stockage de vos données</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Si vous laissez un commentaire, le commentaire et ses métadonnées sont conservés indéfiniment. Cela permet de reconnaître et approuver automatiquement les commentaires suivants au lieu de les laisser dans la file de modération.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Pour les comptes qui s’inscrivent sur notre site (le cas échéant), nous stockons également les données personnelles indiquées dans leur profil. Tous les comptes peuvent voir, modifier ou supprimer leurs informations personnelles à tout moment (à l’exception de leur identifiant). Les gestionnaires du site peuvent aussi voir et modifier ces informations.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Les droits que vous avez sur vos données</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Si vous avez un compte ou si vous avez laissé des commentaires sur le site, vous pouvez demander à recevoir un fichier contenant toutes les données personnelles que nous possédons à votre sujet, incluant celles que vous nous avez fournies. Vous pouvez également demander la suppression des données personnelles vous concernant. Cela ne prend pas en compte les données stockées à des fins administratives, légales ou pour des raisons de sécurité.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Où vos données sont envoyées</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Les commentaires des visiteurs peuvent être vérifiés à l’aide d’un service automatisé de détection des commentaires indésirables.</p>\n<!-- /wp:paragraph -->\n', 'Politique de confidentialité', '', 'draft', 'closed', 'open', '', 'politique-de-confidentialite', '', '', '2026-02-11 22:24:06', '2026-02-11 21:24:06', '', 0, 'http://localhost:8888/wordpress/?page_id=3', 0, 'page', '', 0),
(4, 0, '2026-02-11 22:24:06', '2026-02-11 21:24:06', '<!-- wp:page-list /-->', 'Navigation', '', 'publish', 'closed', 'closed', '', 'navigation', '', '', '2026-02-11 22:24:06', '2026-02-11 21:24:06', '', 0, 'http://localhost:8888/wordpress/index.php/2026/02/11/navigation/', 0, 'wp_navigation', '', 0),
(6, 1, '2026-02-11 22:26:37', '2026-02-11 21:26:37', '<div class=\"form-group\">\r\n   [text* your-name class:email-bt placeholder \"Name\"]\r\n</div>\r\n<div class=\"form-group\">\r\n   [tel* your-phone class:email-bt placeholder \"Phone Number\"]\r\n</div>\r\n<div class=\"form-group\">\r\n   [email* your-email class:email-bt placeholder \"Email\"]\r\n</div>\r\n<div class=\"form-group check-services\">\r\n   <label class=\"contact-services\">Choisissez vos services :</label>\r\n   [checkbox your-services \"Rock Dance\" \"Hip Hop Dance\" \"Style Dance\"]\r\n</div>\r\n<div class=\"form-group\">\r\n   [textarea your-message class:massage-bt placeholder \"Message\"]\r\n</div>\r\n<div class=\"form-group rgpd-check\">\r\n   [acceptance your-rgpd] J\'accepte que mes données soient traitées conformément à la <a href=\"#\">politique de confidentialité</a> (RGPD). [/acceptance]\r\n</div>\r\n<div class=\"send_bt\">\r\n   [submit \"Send Now\"]\r\n</div>\n1\n[_site_title] \"[your-subject]\"\n[_site_title] <habibi-sonia@hotmail.fr>\n[_site_admin_email]\nDe : [your-name]  [your-phone] [your-email]  [your-services]\r\nObjet : [your-subject]\r\n\r\nCorps du message :\r\n[your-message]\r\n\r\n-- \r\nCeci est une notification qu’un formulaire de contact a été envoyé sur votre site web ([_site_title] [_site_url]).\nReply-To: [your-email]\n\n1\n1\n\n[_site_title] \"[your-subject]\"\n[_site_title] <habibi-sonia@hotmail.fr>\n[your-email]\nCorps du message :\r\n[your-message]\r\n\r\n-- \r\nCet e-mail est un accusé de réception du formulaire de contact que vous avez envoyé sur notre site web ([_site_title] [_site_url]) et dans lequel votre adresse e-mail a été utilisée. Si ce n’est pas vous, veuillez ignorer ce message.\nReply-To: [_site_admin_email]\n\n1\n1\nMerci pour votre message. Il a été envoyé.\nUne erreur s’est produite lors de l’envoi de votre message. Veuillez essayer à nouveau plus tard.\nUn ou plusieurs champs contiennent une erreur. Veuillez vérifier et essayer à nouveau.\nUne erreur s’est produite lors de l’envoi de votre message. Veuillez essayer à nouveau plus tard.\nVous devez accepter les termes et conditions avant d’envoyer votre message.\nVeuillez renseigner ce champ.\nCe champ a une saisie trop longue.\nCe champ a une saisie trop courte.\nUne erreur inconnue s’est produite lors du téléversement du fichier.\nVous n’avez pas les droits nécessaires pour téléverser ce type de fichier.\nLe fichier téléversé est trop volumineux.\nUne erreur s’est produite lors du téléversement du fichier.\nVeuillez saisir une date au format AAAA-MM-JJ.\nLa date de ce champ est trop tôt.\nLa date de ce champ est trop tardive.\nVeuillez saisir un numéro.\nLe chiffre de ce champ est trop petit.\nCe champ a un numéro trop long.\nLa réponse à la question est incorrecte.\nVeuillez saisir votre adresse e-mail.\nVeuillez saisisr une URL\nVeuillez saisir un numéro de téléphone.', 'GET IN TOUCH', '', 'publish', 'closed', 'closed', '', 'formulaire-de-contact-1', '', '', '2026-02-14 15:16:40', '2026-02-14 14:16:40', '', 0, 'http://localhost:8888/wordpress/?post_type=wpcf7_contact_form&#038;p=6', 0, 'wpcf7_contact_form', '', 0),
(7, 1, '2026-02-11 22:33:48', '2026-02-11 21:33:48', '{\"version\": 3, \"isGlobalStylesUserThemeJSON\": true }', 'Custom Styles', '', 'publish', 'closed', 'closed', '', 'wp-global-styles-twentytwentyfive', '', '', '2026-02-11 22:33:48', '2026-02-11 21:33:48', '', 0, 'http://localhost:8888/wordpress/index.php/2026/02/11/wp-global-styles-twentytwentyfive/', 0, 'wp_global_styles', '', 0),
(8, 1, '2026-02-11 23:06:59', '2026-02-11 22:06:59', '', 'banner-bg', '', 'inherit', 'open', 'closed', '', 'banner-bg', '', '', '2026-02-11 23:06:59', '2026-02-11 22:06:59', '', 0, 'http://localhost:8888/wordpress/wp-content/uploads/2026/02/banner-bg.png', 0, 'attachment', 'image/png', 0),
(9, 1, '2026-02-11 23:07:00', '2026-02-11 22:07:00', '', 'banner-img', '', 'inherit', 'open', 'closed', '', 'banner-img', '', '', '2026-02-15 22:50:09', '2026-02-15 21:50:09', '', 32, 'http://localhost:8888/wordpress/wp-content/uploads/2026/02/banner-img.png', 0, 'attachment', 'image/png', 0),
(10, 1, '2026-02-11 23:07:00', '2026-02-11 22:07:00', '', 'client-img', '', 'inherit', 'open', 'closed', '', 'client-img', '', '', '2026-02-15 22:22:29', '2026-02-15 21:22:29', '', 91, 'http://localhost:8888/wordpress/wp-content/uploads/2026/02/client-img.png', 0, 'attachment', 'image/png', 0),
(11, 1, '2026-02-11 23:07:00', '2026-02-11 22:07:00', '', 'customer-img', '', 'inherit', 'open', 'closed', '', 'customer-img', '', '', '2026-02-11 23:07:00', '2026-02-11 22:07:00', '', 0, 'http://localhost:8888/wordpress/wp-content/uploads/2026/02/customer-img.png', 0, 'attachment', 'image/png', 0),
(12, 1, '2026-02-11 23:07:00', '2026-02-11 22:07:00', '', 'instagram-icon', '', 'inherit', 'open', 'closed', '', 'instagram-icon', '', '', '2026-02-11 23:07:00', '2026-02-11 22:07:00', '', 0, 'http://localhost:8888/wordpress/wp-content/uploads/2026/02/instagram-icon.png', 0, 'attachment', 'image/png', 0),
(13, 1, '2026-02-11 23:07:00', '2026-02-11 22:07:00', '', 'linkedin-icon', '', 'inherit', 'open', 'closed', '', 'linkedin-icon', '', '', '2026-02-11 23:07:00', '2026-02-11 22:07:00', '', 0, 'http://localhost:8888/wordpress/wp-content/uploads/2026/02/linkedin-icon.png', 0, 'attachment', 'image/png', 0),
(14, 1, '2026-02-11 23:07:00', '2026-02-11 22:07:00', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2026-02-11 23:07:00', '2026-02-11 22:07:00', '', 0, 'http://localhost:8888/wordpress/wp-content/uploads/2026/02/logo.png', 0, 'attachment', 'image/png', 0),
(15, 1, '2026-02-11 23:07:00', '2026-02-11 22:07:00', '', 'map-icon', '', 'inherit', 'open', 'closed', '', 'map-icon', '', '', '2026-02-11 23:07:00', '2026-02-11 22:07:00', '', 0, 'http://localhost:8888/wordpress/wp-content/uploads/2026/02/map-icon.png', 0, 'attachment', 'image/png', 0),
(16, 1, '2026-02-11 23:07:00', '2026-02-11 22:07:00', '', 'quick-icon', '', 'inherit', 'open', 'closed', '', 'quick-icon', '', '', '2026-02-11 23:07:00', '2026-02-11 22:07:00', '', 0, 'http://localhost:8888/wordpress/wp-content/uploads/2026/02/quick-icon.png', 0, 'attachment', 'image/png', 0),
(17, 1, '2026-02-11 23:07:00', '2026-02-11 22:07:00', '', 'search-icon', '', 'inherit', 'open', 'closed', '', 'search-icon', '', '', '2026-02-11 23:07:00', '2026-02-11 22:07:00', '', 0, 'http://localhost:8888/wordpress/wp-content/uploads/2026/02/search-icon.png', 0, 'attachment', 'image/png', 0),
(18, 1, '2026-02-11 23:07:01', '2026-02-11 22:07:01', '', 'services-img', '', 'inherit', 'open', 'closed', '', 'services-img', '', '', '2026-02-11 23:07:01', '2026-02-11 22:07:01', '', 0, 'http://localhost:8888/wordpress/wp-content/uploads/2026/02/services-img.png', 0, 'attachment', 'image/png', 0),
(19, 1, '2026-02-11 23:07:01', '2026-02-11 22:07:01', '', 'twitter-icon', '', 'inherit', 'open', 'closed', '', 'twitter-icon', '', '', '2026-02-11 23:07:01', '2026-02-11 22:07:01', '', 0, 'http://localhost:8888/wordpress/wp-content/uploads/2026/02/twitter-icon.png', 0, 'attachment', 'image/png', 0),
(20, 1, '2026-02-11 23:07:01', '2026-02-11 22:07:01', '', 'about-img', '', 'inherit', 'open', 'closed', '', 'about-img', '', '', '2026-02-20 11:42:39', '2026-02-20 10:42:39', '', 34, 'http://localhost:8888/wordpress/wp-content/uploads/2026/02/about-img.png', 0, 'attachment', 'image/png', 0),
(21, 1, '2026-02-11 23:07:01', '2026-02-11 22:07:01', '', 'call-icon-1', '', 'inherit', 'open', 'closed', '', 'call-icon-1', '', '', '2026-02-11 23:07:01', '2026-02-11 22:07:01', '', 0, 'http://localhost:8888/wordpress/wp-content/uploads/2026/02/call-icon-1.png', 0, 'attachment', 'image/png', 0),
(22, 1, '2026-02-11 23:07:01', '2026-02-11 22:07:01', '', 'call-icon', '', 'inherit', 'open', 'closed', '', 'call-icon', '', '', '2026-02-11 23:07:01', '2026-02-11 22:07:01', '', 0, 'http://localhost:8888/wordpress/wp-content/uploads/2026/02/call-icon.png', 0, 'attachment', 'image/png', 0),
(23, 1, '2026-02-11 23:07:01', '2026-02-11 22:07:01', '', 'client-bg', '', 'inherit', 'open', 'closed', '', 'client-bg', '', '', '2026-02-11 23:07:01', '2026-02-11 22:07:01', '', 0, 'http://localhost:8888/wordpress/wp-content/uploads/2026/02/client-bg.png', 0, 'attachment', 'image/png', 0),
(24, 1, '2026-02-11 23:07:02', '2026-02-11 22:07:02', '', 'customer-img-2', '', 'inherit', 'open', 'closed', '', 'customer-img-2', '', '', '2026-02-11 23:07:02', '2026-02-11 22:07:02', '', 0, 'http://localhost:8888/wordpress/wp-content/uploads/2026/02/customer-img-2.png', 0, 'attachment', 'image/png', 0),
(25, 1, '2026-02-11 23:07:02', '2026-02-11 22:07:02', '', 'fb-icon', '', 'inherit', 'open', 'closed', '', 'fb-icon', '', '', '2026-02-11 23:07:02', '2026-02-11 22:07:02', '', 0, 'http://localhost:8888/wordpress/wp-content/uploads/2026/02/fb-icon.png', 0, 'attachment', 'image/png', 0),
(26, 1, '2026-02-11 23:07:02', '2026-02-11 22:07:02', '', 'img-1', '', 'inherit', 'open', 'closed', '', 'img-1', '', '', '2026-02-15 22:24:53', '2026-02-15 21:24:53', '', 68, 'http://localhost:8888/wordpress/wp-content/uploads/2026/02/img-1.png', 0, 'attachment', 'image/png', 0),
(27, 1, '2026-02-11 23:07:02', '2026-02-11 22:07:02', '', 'img-2', '', 'inherit', 'open', 'closed', '', 'img-2', '', '', '2026-02-15 22:25:23', '2026-02-15 21:25:23', '', 66, 'http://localhost:8888/wordpress/wp-content/uploads/2026/02/img-2.png', 0, 'attachment', 'image/png', 0),
(28, 1, '2026-02-11 23:07:02', '2026-02-11 22:07:02', '', 'img-3', '', 'inherit', 'open', 'closed', '', 'img-3', '', '', '2026-02-11 23:07:02', '2026-02-11 22:07:02', '', 0, 'http://localhost:8888/wordpress/wp-content/uploads/2026/02/img-3.png', 0, 'attachment', 'image/png', 0),
(29, 1, '2026-02-11 23:07:02', '2026-02-11 22:07:02', '', 'mail-icon-1', '', 'inherit', 'open', 'closed', '', 'mail-icon-1', '', '', '2026-02-11 23:07:02', '2026-02-11 22:07:02', '', 0, 'http://localhost:8888/wordpress/wp-content/uploads/2026/02/mail-icon-1.png', 0, 'attachment', 'image/png', 0),
(30, 1, '2026-02-11 23:07:02', '2026-02-11 22:07:02', '', 'mail-icon', '', 'inherit', 'open', 'closed', '', 'mail-icon', '', '', '2026-02-11 23:07:02', '2026-02-11 22:07:02', '', 0, 'http://localhost:8888/wordpress/wp-content/uploads/2026/02/mail-icon.png', 0, 'attachment', 'image/png', 0),
(31, 1, '2026-02-11 23:07:02', '2026-02-11 22:07:02', '', 'user-icon', '', 'inherit', 'open', 'closed', '', 'user-icon', '', '', '2026-02-11 23:07:02', '2026-02-11 22:07:02', '', 0, 'http://localhost:8888/wordpress/wp-content/uploads/2026/02/user-icon.png', 0, 'attachment', 'image/png', 0),
(32, 1, '2026-02-12 10:33:50', '2026-02-12 09:33:50', '', 'HOME', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2026-02-21 20:45:31', '2026-02-21 19:45:31', '', 0, 'http://localhost:8888/wordpress/?page_id=32', 0, 'page', '', 0),
(33, 1, '2026-02-12 10:33:50', '2026-02-12 09:33:50', '', 'HOME', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2026-02-12 10:33:50', '2026-02-12 09:33:50', '', 32, 'http://localhost:8888/wordpress/?p=33', 0, 'revision', '', 0),
(34, 1, '2026-02-12 10:34:03', '2026-02-12 09:34:03', '<!-- wp:spacer -->\n<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'ABOUT', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2026-02-21 20:44:40', '2026-02-21 19:44:40', '', 0, 'http://localhost:8888/wordpress/?page_id=34', 0, 'page', '', 0),
(35, 1, '2026-02-12 10:34:03', '2026-02-12 09:34:03', '', 'ABOUT', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2026-02-12 10:34:03', '2026-02-12 09:34:03', '', 34, 'http://localhost:8888/wordpress/?p=35', 0, 'revision', '', 0),
(36, 1, '2026-02-12 10:34:22', '2026-02-12 09:34:22', '', 'SERVICES', '', 'publish', 'closed', 'closed', '', 'services', '', '', '2026-02-12 10:39:15', '2026-02-12 09:39:15', '', 0, 'http://localhost:8888/wordpress/?page_id=36', 0, 'page', '', 0),
(37, 1, '2026-02-12 10:34:22', '2026-02-12 09:34:22', '', 'SERVICES', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2026-02-12 10:34:22', '2026-02-12 09:34:22', '', 36, 'http://localhost:8888/wordpress/?p=37', 0, 'revision', '', 0),
(38, 1, '2026-02-12 10:34:37', '2026-02-12 09:34:37', '', 'CLIENT', '', 'publish', 'closed', 'closed', '', 'client', '', '', '2026-02-12 10:38:48', '2026-02-12 09:38:48', '', 0, 'http://localhost:8888/wordpress/?page_id=38', 0, 'page', '', 0),
(39, 1, '2026-02-12 10:34:37', '2026-02-12 09:34:37', '', 'CLIENT', '', 'inherit', 'closed', 'closed', '', '38-revision-v1', '', '', '2026-02-12 10:34:37', '2026-02-12 09:34:37', '', 38, 'http://localhost:8888/wordpress/?p=39', 0, 'revision', '', 0),
(40, 1, '2026-02-12 10:34:47', '2026-02-12 09:34:47', '', 'CONTACT US', '', 'publish', 'closed', 'closed', '', 'contact-us', '', '', '2026-02-12 10:38:57', '2026-02-12 09:38:57', '', 0, 'http://localhost:8888/wordpress/?page_id=40', 0, 'page', '', 0),
(41, 1, '2026-02-12 10:34:47', '2026-02-12 09:34:47', '', 'CONTACT US', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2026-02-12 10:34:47', '2026-02-12 09:34:47', '', 40, 'http://localhost:8888/wordpress/?p=41', 0, 'revision', '', 0),
(42, 1, '2026-02-21 20:44:28', '2026-02-21 19:44:28', 'habibi\nsonia\nhabibi-sonia@hotmail.fr', 'habibi-sonia@hotmail.fr', '', 'publish', 'closed', 'closed', '', 'habibi-sonia-hotmail-fr', '', '', '2026-02-21 20:44:28', '2026-02-21 19:44:28', '', 0, 'http://localhost:8888/wordpress/?p=42', 0, 'flamingo_contact', '', 0),
(43, 1, '2026-02-12 11:22:11', '2026-02-12 10:22:11', 'wapuu@wordpress.example\nUn commentateur ou commentatrice WordPress', 'wapuu@wordpress.example', '', 'publish', 'closed', 'closed', '', 'wapuu-wordpress-example', '', '', '2026-02-12 11:22:11', '2026-02-12 10:22:11', '', 0, 'http://localhost:8888/wordpress/?p=43', 0, 'flamingo_contact', '', 0),
(44, 0, '2026-02-12 11:24:50', '2026-02-12 10:24:50', 'sonia\n06 67 22 22 47\nhabibi-sonia@hotmail.fr\nStyle Dance\nJe fais un test pour voir si le mail se met bien dans la base de donnée\nJ\'accepte que mes données soient traitées conformément à la <a href=\"#\">politique de confidentialité</a> (RGPD).\n1\n::1\nMozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.2 Safari/605.1.15\nhttp://localhost:8888/wordpress/index.php/contact-us/\n12 février 2026\n11h24\nProfusion\nhttp://localhost:8888/wordpress\nhabibi-sonia@hotmail.fr', '[your-subject]', '', 'publish', 'closed', 'closed', '', 'your-subject', '', '', '2026-02-12 11:24:50', '2026-02-12 10:24:50', '', 0, 'http://localhost:8888/wordpress/?post_type=flamingo_inbound&p=44', 0, 'flamingo_inbound', '', 0),
(45, 1, '2026-02-14 15:25:58', '2026-02-14 14:25:58', 'a:9:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"34\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;s:13:\"display_title\";s:0:\"\";}', 'ABOUT', 'about', 'publish', 'closed', 'closed', '', 'group_699085e9d00a5', '', '', '2026-02-20 11:49:03', '2026-02-20 10:49:03', '', 0, 'http://localhost:8888/wordpress/?post_type=acf-field-group&#038;p=45', 0, 'acf-field-group', '', 0),
(46, 1, '2026-02-14 15:25:58', '2026-02-14 14:25:58', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Titre de la page ABOUT', 'about_title', 'publish', 'closed', 'closed', '', 'field_699085eaef80d', '', '', '2026-02-14 15:40:34', '2026-02-14 14:40:34', '', 45, 'http://localhost:8888/wordpress/?post_type=acf-field&#038;p=46', 0, 'acf-field', '', 0),
(47, 1, '2026-02-14 15:29:00', '2026-02-14 14:29:00', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:4:\"rows\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Description courte', 'about_description', 'publish', 'closed', 'closed', '', 'field_6990868048f33', '', '', '2026-02-14 15:40:23', '2026-02-14 14:40:23', '', 45, 'http://localhost:8888/wordpress/?post_type=acf-field&#038;p=47', 1, 'acf-field', '', 0),
(48, 1, '2026-02-14 15:29:56', '2026-02-14 14:29:56', 'a:17:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:12:\"preview_size\";s:6:\"medium\";}', 'Image principale', 'about_image', 'publish', 'closed', 'closed', '', 'field_699086bdea563', '', '', '2026-02-15 23:01:12', '2026-02-15 22:01:12', '', 45, 'http://localhost:8888/wordpress/?post_type=acf-field&#038;p=48', 2, 'acf-field', '', 0),
(49, 1, '2026-02-14 15:30:13', '2026-02-14 14:30:13', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:4:\"rows\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Contenu détaillé', 'about_content', 'publish', 'closed', 'closed', '', 'field_699086e67761c', '', '', '2026-02-14 15:41:08', '2026-02-14 14:41:08', '', 45, 'http://localhost:8888/wordpress/?post_type=acf-field&#038;p=49', 3, 'acf-field', '', 0),
(50, 1, '2026-02-14 15:31:46', '2026-02-14 14:31:46', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Texte du bouton', 'about_button_text', 'publish', 'closed', 'closed', '', 'field_699086fc09e9c', '', '', '2026-02-20 11:49:03', '2026-02-20 10:49:03', '', 45, 'http://localhost:8888/wordpress/?post_type=acf-field&#038;p=50', 4, 'acf-field', '', 0),
(51, 1, '2026-02-14 15:42:19', '2026-02-14 14:42:19', 'a:9:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";}', 'Lien du bouton', 'about_button_link', 'publish', 'closed', 'closed', '', 'field_699089b05a2d6', '', '', '2026-02-14 15:42:19', '2026-02-14 14:42:19', '', 45, 'http://localhost:8888/wordpress/?post_type=acf-field&p=51', 5, 'acf-field', '', 0),
(52, 1, '2026-02-14 15:44:21', '2026-02-14 14:44:21', 'a:9:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"post_category\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:17:\"category:services\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;s:13:\"display_title\";s:0:\"\";}', 'SERVICES', 'services', 'publish', 'closed', 'closed', '', 'group_69908a3b12375', '', '', '2026-02-15 23:01:52', '2026-02-15 22:01:52', '', 0, 'http://localhost:8888/wordpress/?post_type=acf-field-group&#038;p=52', 0, 'acf-field-group', '', 0),
(54, 1, '2026-02-14 19:17:40', '2026-02-14 18:17:40', 'a:17:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:12:\"preview_size\";s:6:\"medium\";}', 'Image du service', 'service_image', 'publish', 'closed', 'closed', '', 'field_6990bc1360a82', '', '', '2026-02-15 23:01:52', '2026-02-15 22:01:52', '', 52, 'http://localhost:8888/wordpress/?post_type=acf-field&#038;p=54', 0, 'acf-field', '', 0),
(60, 1, '2026-02-15 21:40:49', '2026-02-15 20:40:49', 'a:9:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"post_category\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:20:\"category:testimonial\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;s:13:\"display_title\";s:0:\"\";}', 'CLIENT', 'client', 'publish', 'closed', 'closed', '', 'group_69922f468db08', '', '', '2026-02-15 23:01:24', '2026-02-15 22:01:24', '', 0, 'http://localhost:8888/wordpress/?post_type=acf-field-group&#038;p=60', 0, 'acf-field-group', '', 0),
(61, 1, '2026-02-15 21:40:49', '2026-02-15 20:40:49', 'a:17:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:12:\"preview_size\";s:6:\"medium\";}', 'Photo du client', 'client_image', 'publish', 'closed', 'closed', '', 'field_69922f46a95ff', '', '', '2026-02-15 23:01:24', '2026-02-15 22:01:24', '', 60, 'http://localhost:8888/wordpress/?post_type=acf-field&#038;p=61', 0, 'acf-field', '', 0),
(62, 1, '2026-02-15 21:42:09', '2026-02-15 20:42:09', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Sous titre', 'client_subtitle', 'publish', 'closed', 'closed', '', 'field_69922f76de8c5', '', '', '2026-02-15 21:42:09', '2026-02-15 20:42:09', '', 60, 'http://localhost:8888/wordpress/?post_type=acf-field&p=62', 1, 'acf-field', '', 0),
(63, 1, '2026-02-15 21:46:38', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2026-02-15 21:46:38', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/wordpress/?p=63', 0, 'post', '', 0),
(64, 1, '2026-02-15 21:47:24', '2026-02-15 20:47:24', '', 'Rock Dance', '', 'publish', 'open', 'open', '', 'rock-dance', '', '', '2026-02-15 22:25:10', '2026-02-15 21:25:10', '', 0, 'http://localhost:8888/wordpress/?p=64', 0, 'post', '', 0),
(65, 1, '2026-02-15 21:47:24', '2026-02-15 20:47:24', '', 'Rock Dance', '', 'inherit', 'closed', 'closed', '', '64-revision-v1', '', '', '2026-02-15 21:47:24', '2026-02-15 20:47:24', '', 64, 'http://localhost:8888/wordpress/?p=65', 0, 'revision', '', 0),
(66, 1, '2026-02-15 21:48:03', '2026-02-15 20:48:03', '', 'Hip Hop Dance', '', 'publish', 'open', 'open', '', 'hip-hop', '', '', '2026-02-15 22:25:23', '2026-02-15 21:25:23', '', 0, 'http://localhost:8888/wordpress/?p=66', 0, 'post', '', 0),
(67, 1, '2026-02-15 21:48:03', '2026-02-15 20:48:03', '', 'Hip Hop', '', 'inherit', 'closed', 'closed', '', '66-revision-v1', '', '', '2026-02-15 21:48:03', '2026-02-15 20:48:03', '', 66, 'http://localhost:8888/wordpress/?p=67', 0, 'revision', '', 0),
(68, 1, '2026-02-15 21:48:26', '2026-02-15 20:48:26', '', 'Style Dance', '', 'publish', 'open', 'open', '', 'style-dance', '', '', '2026-02-15 22:24:54', '2026-02-15 21:24:54', '', 0, 'http://localhost:8888/wordpress/?p=68', 0, 'post', '', 0),
(69, 1, '2026-02-15 21:48:26', '2026-02-15 20:48:26', '', 'Style Dance', '', 'inherit', 'closed', 'closed', '', '68-revision-v1', '', '', '2026-02-15 21:48:26', '2026-02-15 20:48:26', '', 68, 'http://localhost:8888/wordpress/?p=69', 0, 'revision', '', 0),
(70, 1, '2026-02-15 21:48:35', '2026-02-15 20:48:35', '', 'Hip Hop Dance', '', 'inherit', 'closed', 'closed', '', '66-revision-v1', '', '', '2026-02-15 21:48:35', '2026-02-15 20:48:35', '', 66, 'http://localhost:8888/wordpress/?p=70', 0, 'revision', '', 0),
(71, 1, '2026-02-15 21:54:15', '2026-02-15 20:54:15', 'a:9:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"32\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;s:13:\"display_title\";s:0:\"\";}', 'HOME', 'home', 'publish', 'closed', 'closed', '', 'group_6992326ebc7b5', '', '', '2026-02-15 23:01:43', '2026-02-15 22:01:43', '', 0, 'http://localhost:8888/wordpress/?post_type=acf-field-group&#038;p=71', 0, 'acf-field-group', '', 0),
(72, 1, '2026-02-15 21:54:15', '2026-02-15 20:54:15', 'a:17:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:12:\"preview_size\";s:6:\"medium\";}', 'Image du banner', 'banner_image', 'publish', 'closed', 'closed', '', 'field_6992326eefed1', '', '', '2026-02-15 23:01:35', '2026-02-15 22:01:35', '', 71, 'http://localhost:8888/wordpress/?post_type=acf-field&#038;p=72', 0, 'acf-field', '', 0),
(73, 1, '2026-02-15 21:57:24', '2026-02-15 20:57:24', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Titre du banner', 'banner_title', 'publish', 'closed', 'closed', '', 'field_699233188be29', '', '', '2026-02-15 21:57:24', '2026-02-15 20:57:24', '', 71, 'http://localhost:8888/wordpress/?post_type=acf-field&p=73', 1, 'acf-field', '', 0),
(74, 1, '2026-02-15 21:58:03', '2026-02-15 20:58:03', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Texte du bouton banner', 'banner_bouton_text', 'publish', 'closed', 'closed', '', 'field_69923336a23d6', '', '', '2026-02-15 21:58:03', '2026-02-15 20:58:03', '', 71, 'http://localhost:8888/wordpress/?post_type=acf-field&p=74', 2, 'acf-field', '', 0),
(75, 1, '2026-02-15 22:00:35', '2026-02-15 21:00:35', 'a:9:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";}', 'Lien du bouton banner', 'banner_button_link', 'publish', 'closed', 'closed', '', 'field_699233dad305c', '', '', '2026-02-15 22:00:35', '2026-02-15 21:00:35', '', 71, 'http://localhost:8888/wordpress/?post_type=acf-field&p=75', 3, 'acf-field', '', 0),
(76, 1, '2026-02-15 22:01:16', '2026-02-15 21:01:16', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Titre section prix', 'price_title', 'publish', 'closed', 'closed', '', 'field_699233fa2de9c', '', '', '2026-02-15 22:01:16', '2026-02-15 21:01:16', '', 71, 'http://localhost:8888/wordpress/?post_type=acf-field&p=76', 4, 'acf-field', '', 0),
(77, 1, '2026-02-15 22:01:39', '2026-02-15 21:01:39', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Nom tarif 1', 'price_1_name', 'publish', 'closed', 'closed', '', 'field_6992341d27685', '', '', '2026-02-15 22:01:39', '2026-02-15 21:01:39', '', 71, 'http://localhost:8888/wordpress/?post_type=acf-field&p=77', 5, 'acf-field', '', 0),
(78, 1, '2026-02-15 22:02:20', '2026-02-15 21:02:20', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Montant tarif 1', 'price_1_amount', 'publish', 'closed', 'closed', '', 'field_6992343b77f76', '', '', '2026-02-15 22:04:27', '2026-02-15 21:04:27', '', 71, 'http://localhost:8888/wordpress/?post_type=acf-field&#038;p=78', 6, 'acf-field', '', 0),
(79, 1, '2026-02-15 22:02:51', '2026-02-15 21:02:51', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Période tarif 1', 'price_1_period', 'publish', 'closed', 'closed', '', 'field_6992345d6dc56', '', '', '2026-02-15 22:05:00', '2026-02-15 21:05:00', '', 71, 'http://localhost:8888/wordpress/?post_type=acf-field&#038;p=79', 7, 'acf-field', '', 0),
(80, 1, '2026-02-15 22:03:29', '2026-02-15 21:03:29', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:4:\"rows\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Description tarif 1', 'price_1_description', 'publish', 'closed', 'closed', '', 'field_6992347c8b780', '', '', '2026-02-15 22:50:31', '2026-02-15 21:50:31', '', 71, 'http://localhost:8888/wordpress/?post_type=acf-field&#038;p=80', 8, 'acf-field', '', 0),
(81, 1, '2026-02-15 22:04:27', '2026-02-15 21:04:27', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Nom tarif 2', 'price_2_name', 'publish', 'closed', 'closed', '', 'field_699234c1c5f0c', '', '', '2026-02-15 22:06:22', '2026-02-15 21:06:22', '', 71, 'http://localhost:8888/wordpress/?post_type=acf-field&#038;p=81', 9, 'acf-field', '', 0),
(82, 1, '2026-02-15 22:05:00', '2026-02-15 21:05:00', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Montant tarif 2', 'price_2_amount', 'publish', 'closed', 'closed', '', 'field_699234dfb5cf5', '', '', '2026-02-15 22:06:22', '2026-02-15 21:06:22', '', 71, 'http://localhost:8888/wordpress/?post_type=acf-field&#038;p=82', 10, 'acf-field', '', 0),
(83, 1, '2026-02-15 22:05:52', '2026-02-15 21:05:52', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Période tarif 2', 'price_2_period', 'publish', 'closed', 'closed', '', 'field_699235157cae9', '', '', '2026-02-15 22:06:22', '2026-02-15 21:06:22', '', 71, 'http://localhost:8888/wordpress/?post_type=acf-field&#038;p=83', 11, 'acf-field', '', 0),
(84, 1, '2026-02-15 22:06:22', '2026-02-15 21:06:22', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:4:\"rows\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Description tarif 2', 'price_2_description', 'publish', 'closed', 'closed', '', 'field_699235366b06a', '', '', '2026-02-15 22:50:38', '2026-02-15 21:50:38', '', 71, 'http://localhost:8888/wordpress/?post_type=acf-field&#038;p=84', 12, 'acf-field', '', 0),
(85, 1, '2026-02-15 22:15:33', '2026-02-15 21:15:33', '<!-- wp:paragraph -->\n<p>consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quisnostrud exercitation eu<br></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Jonyro', '', 'publish', 'open', 'open', '', 'jonyro', '', '', '2026-02-20 16:32:46', '2026-02-20 15:32:46', '', 0, 'http://localhost:8888/wordpress/?p=85', 0, 'post', '', 0),
(86, 1, '2026-02-15 22:15:33', '2026-02-15 21:15:33', '<!-- wp:paragraph -->\n<p>onsectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation eu</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Jonyro', '', 'inherit', 'closed', 'closed', '', '85-revision-v1', '', '', '2026-02-15 22:15:33', '2026-02-15 21:15:33', '', 85, 'http://localhost:8888/wordpress/?p=86', 0, 'revision', '', 0),
(87, 1, '2026-02-15 22:16:24', '2026-02-15 21:16:24', '<!-- wp:paragraph -->\n<p>consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation eu<br></p>\n<!-- /wp:paragraph -->', 'Jonyro', '', 'publish', 'open', 'open', '', 'jonyro-2', '', '', '2026-02-20 16:31:21', '2026-02-20 15:31:21', '', 0, 'http://localhost:8888/wordpress/?p=87', 0, 'post', '', 0),
(88, 1, '2026-02-15 22:16:24', '2026-02-15 21:16:24', '<!-- wp:paragraph -->\n<p><code>consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation eu</code><br></p>\n<!-- /wp:paragraph -->', 'Jonyro', '', 'inherit', 'closed', 'closed', '', '87-revision-v1', '', '', '2026-02-15 22:16:24', '2026-02-15 21:16:24', '', 87, 'http://localhost:8888/wordpress/?p=88', 0, 'revision', '', 0),
(89, 1, '2026-02-15 22:16:43', '2026-02-15 21:16:43', '<!-- wp:paragraph -->\n<p>consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation eu<br></p>\n<!-- /wp:paragraph -->', 'Jonyro', '', 'publish', 'open', 'open', '', 'jonyro-3', '', '', '2026-02-20 16:32:19', '2026-02-20 15:32:19', '', 0, 'http://localhost:8888/wordpress/?p=89', 0, 'post', '', 0),
(90, 1, '2026-02-15 22:16:43', '2026-02-15 21:16:43', '<!-- wp:paragraph -->\n<p><code>consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation eu</code><br></p>\n<!-- /wp:paragraph -->', 'Jonyro', '', 'inherit', 'closed', 'closed', '', '89-revision-v1', '', '', '2026-02-15 22:16:43', '2026-02-15 21:16:43', '', 89, 'http://localhost:8888/wordpress/?p=90', 0, 'revision', '', 0),
(91, 1, '2026-02-15 22:17:00', '2026-02-15 21:17:00', '<!-- wp:paragraph -->\n<p>consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation eu</p>\n<!-- /wp:paragraph -->', 'Jonyro', '', 'publish', 'open', 'open', '', 'jonyro-4', '', '', '2026-02-20 16:30:55', '2026-02-20 15:30:55', '', 0, 'http://localhost:8888/wordpress/?p=91', 0, 'post', '', 0),
(92, 1, '2026-02-15 22:17:00', '2026-02-15 21:17:00', '<!-- wp:paragraph -->\n<p><code>consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation eu</code><br></p>\n<!-- /wp:paragraph -->', 'Jonyro', '', 'inherit', 'closed', 'closed', '', '91-revision-v1', '', '', '2026-02-15 22:17:00', '2026-02-15 21:17:00', '', 91, 'http://localhost:8888/wordpress/?p=92', 0, 'revision', '', 0),
(93, 1, '2026-02-15 22:22:28', '2026-02-15 21:22:28', '<!-- wp:paragraph -->\n<p><code>consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation eu</code><br></p>\n<!-- /wp:paragraph -->', 'Jonyro', '', 'inherit', 'closed', 'closed', '', '91-revision-v1', '', '', '2026-02-15 22:22:28', '2026-02-15 21:22:28', '', 91, 'http://localhost:8888/wordpress/?p=93', 0, 'revision', '', 0),
(94, 1, '2026-02-15 22:22:52', '2026-02-15 21:22:52', '<!-- wp:paragraph -->\n<p><code>consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation eu</code><br></p>\n<!-- /wp:paragraph -->', 'Jonyro', '', 'inherit', 'closed', 'closed', '', '89-revision-v1', '', '', '2026-02-15 22:22:52', '2026-02-15 21:22:52', '', 89, 'http://localhost:8888/wordpress/?p=94', 0, 'revision', '', 0);
INSERT INTO `wp_wordpressposts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(95, 1, '2026-02-15 22:23:09', '2026-02-15 21:23:09', '<!-- wp:paragraph -->\n<p><code>consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation eu</code><br></p>\n<!-- /wp:paragraph -->', 'Jonyro', '', 'inherit', 'closed', 'closed', '', '87-revision-v1', '', '', '2026-02-15 22:23:09', '2026-02-15 21:23:09', '', 87, 'http://localhost:8888/wordpress/?p=95', 0, 'revision', '', 0),
(96, 1, '2026-02-15 22:23:26', '2026-02-15 21:23:26', '<!-- wp:paragraph -->\n<p>onsectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation eu</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Jonyro', '', 'inherit', 'closed', 'closed', '', '85-revision-v1', '', '', '2026-02-15 22:23:26', '2026-02-15 21:23:26', '', 85, 'http://localhost:8888/wordpress/?p=96', 0, 'revision', '', 0),
(97, 1, '2026-02-15 22:24:53', '2026-02-15 21:24:53', '', 'Style Dance', '', 'inherit', 'closed', 'closed', '', '68-revision-v1', '', '', '2026-02-15 22:24:53', '2026-02-15 21:24:53', '', 68, 'http://localhost:8888/wordpress/?p=97', 0, 'revision', '', 0),
(98, 1, '2026-02-15 22:25:10', '2026-02-15 21:25:10', '', 'Rock Dance', '', 'inherit', 'closed', 'closed', '', '64-revision-v1', '', '', '2026-02-15 22:25:10', '2026-02-15 21:25:10', '', 64, 'http://localhost:8888/wordpress/?p=98', 0, 'revision', '', 0),
(99, 1, '2026-02-15 22:25:22', '2026-02-15 21:25:22', '', 'Hip Hop Dance', '', 'inherit', 'closed', 'closed', '', '66-revision-v1', '', '', '2026-02-15 22:25:22', '2026-02-15 21:25:22', '', 66, 'http://localhost:8888/wordpress/?p=99', 0, 'revision', '', 0),
(101, 1, '2026-02-15 22:50:09', '2026-02-15 21:50:09', '', 'HOME', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2026-02-15 22:50:09', '2026-02-15 21:50:09', '', 32, 'http://localhost:8888/wordpress/?p=101', 0, 'revision', '', 0),
(103, 1, '2026-02-15 22:51:44', '2026-02-15 21:51:44', '', 'HOME', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2026-02-15 22:51:44', '2026-02-15 21:51:44', '', 32, 'http://localhost:8888/wordpress/?p=103', 0, 'revision', '', 0),
(104, 1, '2026-02-15 23:04:01', '2026-02-15 22:04:01', '<!-- wp:paragraph -->\n<p>Ceci est une page d’exemple. C’est différent d’un article de blog parce qu’elle restera au même endroit et apparaîtra dans la navigation de votre site (dans la plupart des thèmes). La plupart des gens commencent par une page « À propos » qui les présente aux personnes visitant le site. Cela pourrait ressembler à quelque chose comme cela :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\">\n<!-- wp:paragraph -->\n<p>Bonjour ! Je suis un mécanicien qui aspire à devenir acteur, et voici mon site. J’habite à Bordeaux, j’ai un super chien baptisé Russell, et j’aime la vodka (ainsi qu’être surpris par la pluie soudaine lors de longues balades sur la plage au coucher du soleil).</p>\n<!-- /wp:paragraph -->\n</blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>…ou quelque chose comme cela :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\">\n<!-- wp:paragraph -->\n<p>La société 123 Machin Truc a été créée en 1971, et n’a cessé de proposer au public des machins-trucs de qualité depuis lors. Située à Saint-Remy-en-Bouzemont-Saint-Genest-et-Isson, 123 Machin Truc emploie 2 000 personnes, et fabrique toutes sortes de bidules supers pour la communauté bouzemontoise.</p>\n<!-- /wp:paragraph -->\n</blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>En tant que nouvel utilisateur ou utilisatrice de WordPress, vous devriez vous rendre sur <a href=\"http://localhost:8888/wordpress/wp-admin/\">votre tableau de bord</a> pour supprimer cette page et créer de nouvelles pages pour votre contenu. Amusez-vous bien !</p>\n<!-- /wp:paragraph -->', 'Page d’exemple', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2026-02-15 23:04:01', '2026-02-15 22:04:01', '', 2, 'http://localhost:8888/wordpress/?p=104', 0, 'revision', '', 0),
(105, 1, '2026-02-20 11:40:46', '2026-02-20 10:40:46', '', 'HOME', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2026-02-20 11:40:46', '2026-02-20 10:40:46', '', 32, 'http://localhost:8888/wordpress/?p=105', 0, 'revision', '', 0),
(106, 1, '2026-02-20 11:41:07', '2026-02-20 10:41:07', '', 'HOME', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2026-02-20 11:41:07', '2026-02-20 10:41:07', '', 32, 'http://localhost:8888/wordpress/?p=106', 0, 'revision', '', 0),
(108, 1, '2026-02-20 11:42:39', '2026-02-20 10:42:39', '', 'ABOUT', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2026-02-20 11:42:39', '2026-02-20 10:42:39', '', 34, 'http://localhost:8888/wordpress/?p=108', 0, 'revision', '', 0),
(109, 1, '2026-02-20 11:43:54', '2026-02-20 10:43:54', '', 'ABOUT', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2026-02-20 11:43:54', '2026-02-20 10:43:54', '', 34, 'http://localhost:8888/wordpress/?p=109', 0, 'revision', '', 0),
(111, 1, '2026-02-20 11:47:31', '2026-02-20 10:47:31', '', 'ABOUT', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2026-02-20 11:47:31', '2026-02-20 10:47:31', '', 34, 'http://localhost:8888/wordpress/?p=111', 0, 'revision', '', 0),
(112, 1, '2026-02-20 11:49:33', '2026-02-20 10:49:33', '', 'ABOUT', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2026-02-20 11:49:33', '2026-02-20 10:49:33', '', 34, 'http://localhost:8888/wordpress/?p=112', 0, 'revision', '', 0),
(113, 1, '2026-02-20 12:34:00', '2026-02-20 11:34:00', '', 'HIP HOP DANCE', '', 'publish', 'open', 'open', '', 'hip-hop-dance', '', '', '2026-02-20 12:34:00', '2026-02-20 11:34:00', '', 0, 'http://localhost:8888/wordpress/?p=113', 0, 'post', '', 0),
(114, 1, '2026-02-20 12:34:00', '2026-02-20 11:34:00', '', 'HIP HOP DANCE', '', 'inherit', 'closed', 'closed', '', '113-revision-v1', '', '', '2026-02-20 12:34:00', '2026-02-20 11:34:00', '', 113, 'http://localhost:8888/wordpress/?p=114', 0, 'revision', '', 0),
(115, 1, '2026-02-20 12:34:38', '2026-02-20 11:34:38', '', 'STYLE DANCE', '', 'publish', 'open', 'open', '', 'style-dance-2', '', '', '2026-02-20 12:34:38', '2026-02-20 11:34:38', '', 0, 'http://localhost:8888/wordpress/?p=115', 0, 'post', '', 0),
(116, 1, '2026-02-20 12:34:38', '2026-02-20 11:34:38', '', 'STYLE DANCE', '', 'inherit', 'closed', 'closed', '', '115-revision-v1', '', '', '2026-02-20 12:34:38', '2026-02-20 11:34:38', '', 115, 'http://localhost:8888/wordpress/?p=116', 0, 'revision', '', 0),
(117, 1, '2026-02-20 12:35:10', '2026-02-20 11:35:10', '', 'ROCK DANCE', '', 'publish', 'open', 'open', '', 'rock-dance-2', '', '', '2026-02-20 12:35:10', '2026-02-20 11:35:10', '', 0, 'http://localhost:8888/wordpress/?p=117', 0, 'post', '', 0),
(118, 1, '2026-02-20 12:35:10', '2026-02-20 11:35:10', '', 'ROCK DANCE', '', 'inherit', 'closed', 'closed', '', '117-revision-v1', '', '', '2026-02-20 12:35:10', '2026-02-20 11:35:10', '', 117, 'http://localhost:8888/wordpress/?p=118', 0, 'revision', '', 0),
(119, 1, '2026-02-20 12:35:32', '2026-02-20 11:35:32', '', 'HIP HOP DANCE', '', 'publish', 'open', 'open', '', 'hip-hop-dance-2', '', '', '2026-02-20 12:35:33', '2026-02-20 11:35:33', '', 0, 'http://localhost:8888/wordpress/?p=119', 0, 'post', '', 0),
(120, 1, '2026-02-20 12:35:32', '2026-02-20 11:35:32', '', 'HIP HOP DANCE', '', 'inherit', 'closed', 'closed', '', '119-revision-v1', '', '', '2026-02-20 12:35:32', '2026-02-20 11:35:32', '', 119, 'http://localhost:8888/wordpress/?p=120', 0, 'revision', '', 0),
(122, 1, '2026-02-20 16:28:56', '2026-02-20 15:28:56', '<!-- wp:paragraph {\"style\":{\"elements\":{\"link\":{\"color\":{\"text\":\"var:preset|color|black\"}}}},\"textColor\":\"black\"} -->\n<p class=\"has-black-color has-text-color has-link-color\"><code>consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation eu</code></p>\n<!-- /wp:paragraph -->', 'Jonyro', '', 'inherit', 'closed', 'closed', '', '91-revision-v1', '', '', '2026-02-20 16:28:56', '2026-02-20 15:28:56', '', 91, 'http://localhost:8888/wordpress/?p=122', 0, 'revision', '', 0),
(123, 1, '2026-02-20 16:29:17', '2026-02-20 15:29:17', '<!-- wp:paragraph -->\n<p><code>consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation eu</code></p>\n<!-- /wp:paragraph -->', 'Jonyro', '', 'inherit', 'closed', 'closed', '', '91-revision-v1', '', '', '2026-02-20 16:29:17', '2026-02-20 15:29:17', '', 91, 'http://localhost:8888/wordpress/?p=123', 0, 'revision', '', 0),
(124, 1, '2026-02-20 16:30:26', '2026-02-20 15:30:26', '<!-- wp:paragraph -->\n<p><code>consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation eu</code><br></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Jonyro', '', 'inherit', 'closed', 'closed', '', '85-revision-v1', '', '', '2026-02-20 16:30:26', '2026-02-20 15:30:26', '', 85, 'http://localhost:8888/wordpress/?p=124', 0, 'revision', '', 0),
(125, 1, '2026-02-20 16:30:55', '2026-02-20 15:30:55', '<!-- wp:paragraph -->\n<p>consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation eu</p>\n<!-- /wp:paragraph -->', 'Jonyro', '', 'inherit', 'closed', 'closed', '', '91-revision-v1', '', '', '2026-02-20 16:30:55', '2026-02-20 15:30:55', '', 91, 'http://localhost:8888/wordpress/?p=125', 0, 'revision', '', 0),
(126, 1, '2026-02-20 16:31:10', '2026-02-20 15:31:10', '<!-- wp:paragraph -->\n<p><code>consectetur adipiscing elit, sed do eiusmod tempor</code> <code>incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation eu</code><br></p>\n<!-- /wp:paragraph -->', 'Jonyro', '', 'inherit', 'closed', 'closed', '', '89-revision-v1', '', '', '2026-02-20 16:31:10', '2026-02-20 15:31:10', '', 89, 'http://localhost:8888/wordpress/?p=126', 0, 'revision', '', 0),
(127, 1, '2026-02-20 16:31:21', '2026-02-20 15:31:21', '<!-- wp:paragraph -->\n<p>consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation eu<br></p>\n<!-- /wp:paragraph -->', 'Jonyro', '', 'inherit', 'closed', 'closed', '', '87-revision-v1', '', '', '2026-02-20 16:31:21', '2026-02-20 15:31:21', '', 87, 'http://localhost:8888/wordpress/?p=127', 0, 'revision', '', 0),
(128, 1, '2026-02-20 16:31:33', '2026-02-20 15:31:33', '<!-- wp:paragraph -->\n<p><code>consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, qui</code>s<code> nostrud exercitation eu</code><br></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Jonyro', '', 'inherit', 'closed', 'closed', '', '85-revision-v1', '', '', '2026-02-20 16:31:33', '2026-02-20 15:31:33', '', 85, 'http://localhost:8888/wordpress/?p=128', 0, 'revision', '', 0),
(129, 1, '2026-02-20 16:31:57', '2026-02-20 15:31:57', '<!-- wp:paragraph -->\n<p>consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis<code>nostrud exercitation eu</code><br></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Jonyro', '', 'inherit', 'closed', 'closed', '', '85-revision-v1', '', '', '2026-02-20 16:31:57', '2026-02-20 15:31:57', '', 85, 'http://localhost:8888/wordpress/?p=129', 0, 'revision', '', 0),
(130, 1, '2026-02-20 16:32:19', '2026-02-20 15:32:19', '<!-- wp:paragraph -->\n<p>consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation eu<br></p>\n<!-- /wp:paragraph -->', 'Jonyro', '', 'inherit', 'closed', 'closed', '', '89-revision-v1', '', '', '2026-02-20 16:32:19', '2026-02-20 15:32:19', '', 89, 'http://localhost:8888/wordpress/?p=130', 0, 'revision', '', 0),
(131, 1, '2026-02-20 16:32:46', '2026-02-20 15:32:46', '<!-- wp:paragraph -->\n<p>consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quisnostrud exercitation eu<br></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Jonyro', '', 'inherit', 'closed', 'closed', '', '85-revision-v1', '', '', '2026-02-20 16:32:46', '2026-02-20 15:32:46', '', 85, 'http://localhost:8888/wordpress/?p=131', 0, 'revision', '', 0),
(132, 1, '2026-02-20 16:41:32', '2026-02-20 15:41:32', '<!-- wp:paragraph -->\n<p>consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation eu<br></p>\n<!-- /wp:paragraph -->', 'Jonyro', '', 'publish', 'open', 'open', '', 'jonyro-8', '', '', '2026-02-20 16:41:32', '2026-02-20 15:41:32', '', 0, 'http://localhost:8888/wordpress/?p=132', 0, 'post', '', 0),
(133, 1, '2026-02-20 16:41:27', '2026-02-20 15:41:27', '<!-- wp:paragraph -->\n<p>consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation eu<br></p>\n<!-- /wp:paragraph -->', 'Jonyro', '', 'publish', 'open', 'open', '', 'jonyro-7', '', '', '2026-02-20 16:41:27', '2026-02-20 15:41:27', '', 0, 'http://localhost:8888/wordpress/?p=133', 0, 'post', '', 0),
(134, 1, '2026-02-20 16:41:21', '2026-02-20 15:41:21', '<!-- wp:paragraph -->\n<p>consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quisnostrud exercitation eu<br></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Jonyro', '', 'publish', 'open', 'open', '', 'jonyro-6', '', '', '2026-02-20 16:41:22', '2026-02-20 15:41:22', '', 0, 'http://localhost:8888/wordpress/?p=134', 0, 'post', '', 0),
(135, 1, '2026-02-20 16:41:14', '2026-02-20 15:41:14', '<!-- wp:paragraph -->\n<p>consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation eu<br></p>\n<!-- /wp:paragraph -->', 'Jonyro', '', 'publish', 'open', 'open', '', 'jonyro-5', '', '', '2026-02-20 16:41:14', '2026-02-20 15:41:14', '', 0, 'http://localhost:8888/wordpress/?p=135', 0, 'post', '', 0),
(136, 1, '2026-02-20 16:41:14', '2026-02-20 15:41:14', '<!-- wp:paragraph -->\n<p>consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation eu<br></p>\n<!-- /wp:paragraph -->', 'Jonyro', '', 'inherit', 'closed', 'closed', '', '135-revision-v1', '', '', '2026-02-20 16:41:14', '2026-02-20 15:41:14', '', 135, 'http://localhost:8888/wordpress/?p=136', 0, 'revision', '', 0),
(137, 1, '2026-02-20 16:41:21', '2026-02-20 15:41:21', '<!-- wp:paragraph -->\n<p>consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quisnostrud exercitation eu<br></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Jonyro', '', 'inherit', 'closed', 'closed', '', '134-revision-v1', '', '', '2026-02-20 16:41:21', '2026-02-20 15:41:21', '', 134, 'http://localhost:8888/wordpress/?p=137', 0, 'revision', '', 0),
(138, 1, '2026-02-20 16:41:27', '2026-02-20 15:41:27', '<!-- wp:paragraph -->\n<p>consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation eu<br></p>\n<!-- /wp:paragraph -->', 'Jonyro', '', 'inherit', 'closed', 'closed', '', '133-revision-v1', '', '', '2026-02-20 16:41:27', '2026-02-20 15:41:27', '', 133, 'http://localhost:8888/wordpress/?p=138', 0, 'revision', '', 0),
(139, 1, '2026-02-20 16:41:32', '2026-02-20 15:41:32', '<!-- wp:paragraph -->\n<p>consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation eu<br></p>\n<!-- /wp:paragraph -->', 'Jonyro', '', 'inherit', 'closed', 'closed', '', '132-revision-v1', '', '', '2026-02-20 16:41:32', '2026-02-20 15:41:32', '', 132, 'http://localhost:8888/wordpress/?p=139', 0, 'revision', '', 0),
(140, 1, '2026-02-20 16:58:25', '2026-02-20 15:58:25', '{\n    \"profusion::nav_menu_locations[menu-principal]\": {\n        \"value\": -7208668163753598000,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2026-02-20 15:57:40\"\n    },\n    \"nav_menu[-7208668163753598000]\": {\n        \"value\": {\n            \"name\": \"Menu-principal\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2026-02-20 15:57:40\"\n    },\n    \"nav_menu_item[-7100212103970342000]\": {\n        \"value\": {\n            \"object_id\": 32,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"post_type\",\n            \"title\": \"\",\n            \"url\": \"http://localhost:8888/wordpress/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"nav_menu_term_id\": -7208668163753598000,\n            \"_invalid\": false,\n            \"original_title\": \"HOME\",\n            \"type_label\": \"Page d\\u2019accueil\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2026-02-20 15:57:40\"\n    },\n    \"nav_menu_item[-4442390733626949600]\": {\n        \"value\": {\n            \"object_id\": 40,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 5,\n            \"type\": \"post_type\",\n            \"title\": \"\",\n            \"url\": \"http://localhost:8888/wordpress/contact-us/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"nav_menu_term_id\": -7208668163753598000,\n            \"_invalid\": false,\n            \"original_title\": \"CONTACT US\",\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2026-02-20 15:57:40\"\n    },\n    \"nav_menu_item[-4429134546892450000]\": {\n        \"value\": {\n            \"object_id\": 38,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 3,\n            \"type\": \"post_type\",\n            \"title\": \"\",\n            \"url\": \"http://localhost:8888/wordpress/client/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"nav_menu_term_id\": -7208668163753598000,\n            \"_invalid\": false,\n            \"original_title\": \"CLIENT\",\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2026-02-20 15:57:40\"\n    },\n    \"nav_menu_item[-699967635019787300]\": {\n        \"value\": {\n            \"object_id\": 36,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 4,\n            \"type\": \"post_type\",\n            \"title\": \"\",\n            \"url\": \"http://localhost:8888/wordpress/services/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"nav_menu_term_id\": -7208668163753598000,\n            \"_invalid\": false,\n            \"original_title\": \"SERVICES\",\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2026-02-20 15:57:40\"\n    },\n    \"nav_menu_item[-623841303954101200]\": {\n        \"value\": {\n            \"object_id\": 34,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"post_type\",\n            \"title\": \"\",\n            \"url\": \"http://localhost:8888/wordpress/about/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"nav_menu_term_id\": -7208668163753598000,\n            \"_invalid\": false,\n            \"original_title\": \"ABOUT\",\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2026-02-20 15:57:40\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'f4570186-0015-412c-a1be-f7efe9dbcb8f', '', '', '2026-02-20 16:58:25', '2026-02-20 15:58:25', '', 0, 'http://localhost:8888/wordpress/?p=140', 0, 'customize_changeset', '', 0),
(141, 1, '2026-02-20 16:58:25', '2026-02-20 15:58:25', ' ', '', '', 'publish', 'closed', 'closed', '', '141', '', '', '2026-02-20 16:58:25', '2026-02-20 15:58:25', '', 0, 'http://localhost:8888/wordpress/141/', 1, 'nav_menu_item', '', 0),
(142, 1, '2026-02-20 16:58:25', '2026-02-20 15:58:25', ' ', '', '', 'publish', 'closed', 'closed', '', '142', '', '', '2026-02-20 16:58:25', '2026-02-20 15:58:25', '', 0, 'http://localhost:8888/wordpress/142/', 5, 'nav_menu_item', '', 0),
(143, 1, '2026-02-20 16:58:25', '2026-02-20 15:58:25', ' ', '', '', 'publish', 'closed', 'closed', '', '143', '', '', '2026-02-20 16:58:25', '2026-02-20 15:58:25', '', 0, 'http://localhost:8888/wordpress/143/', 3, 'nav_menu_item', '', 0),
(144, 1, '2026-02-20 16:58:25', '2026-02-20 15:58:25', ' ', '', '', 'publish', 'closed', 'closed', '', '144', '', '', '2026-02-20 16:58:25', '2026-02-20 15:58:25', '', 0, 'http://localhost:8888/wordpress/144/', 4, 'nav_menu_item', '', 0),
(145, 1, '2026-02-20 16:58:25', '2026-02-20 15:58:25', ' ', '', '', 'publish', 'closed', 'closed', '', '145', '', '', '2026-02-20 16:58:25', '2026-02-20 15:58:25', '', 0, 'http://localhost:8888/wordpress/145/', 2, 'nav_menu_item', '', 0),
(146, 1, '2026-02-21 20:44:40', '2026-02-21 19:44:40', '<!-- wp:spacer -->\n<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'ABOUT', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2026-02-21 20:44:40', '2026-02-21 19:44:40', '', 34, 'http://localhost:8888/wordpress/?p=146', 0, 'revision', '', 0),
(147, 1, '2026-02-21 20:45:31', '2026-02-21 19:45:31', '', 'HOME', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2026-02-21 20:45:31', '2026-02-21 19:45:31', '', 32, 'http://localhost:8888/wordpress/?p=147', 0, 'revision', '', 0),
(148, 1, '2026-02-21 21:02:21', '2026-02-21 20:02:21', 'http://localhost:8888/wordpress/wp-content/uploads/2026/02/cropped-logo.png', 'cropped-logo.png', '', 'inherit', 'open', 'closed', '', 'cropped-logo-png', '', '', '2026-02-21 21:02:21', '2026-02-21 20:02:21', '', 14, 'http://localhost:8888/wordpress/wp-content/uploads/2026/02/cropped-logo.png', 0, 'attachment', 'image/png', 0),
(149, 1, '2026-02-21 21:02:38', '2026-02-21 20:02:38', '{\n    \"profusion::custom_logo\": {\n        \"value\": 148,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2026-02-21 20:02:38\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '414aeb47-e7d8-45ba-8cdc-eac1e92274da', '', '', '2026-02-21 21:02:38', '2026-02-21 20:02:38', '', 0, 'http://localhost:8888/wordpress/414aeb47-e7d8-45ba-8cdc-eac1e92274da/', 0, 'customize_changeset', '', 0),
(150, 1, '2026-02-21 21:22:39', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2026-02-21 21:22:39', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/wordpress/?p=150', 0, 'post', '', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_wordpresstermmeta`
--

CREATE TABLE `wp_wordpresstermmeta` (
  `meta_id` bigint UNSIGNED NOT NULL,
  `term_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_wordpressterms`
--

CREATE TABLE `wp_wordpressterms` (
  `term_id` bigint UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_wordpressterms`
--

INSERT INTO `wp_wordpressterms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Non classé', 'non-classe', 0),
(2, 'twentytwentyfive', 'twentytwentyfive', 0),
(3, 'Contact Form 7', 'contact-form-7', 0),
(4, 'GET IN TOUCH', 'formulaire-de-contact-1', 0),
(5, 'services', 'services', 0),
(6, 'testimonial', 'testimonial', 0),
(7, 'Menu-principal', 'menu-principal', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_wordpressterm_relationships`
--

CREATE TABLE `wp_wordpressterm_relationships` (
  `object_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_wordpressterm_relationships`
--

INSERT INTO `wp_wordpressterm_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(7, 2, 0),
(44, 4, 0),
(64, 5, 0),
(66, 5, 0),
(68, 5, 0),
(85, 6, 0),
(87, 6, 0),
(89, 6, 0),
(91, 6, 0),
(113, 5, 0),
(115, 5, 0),
(117, 5, 0),
(119, 5, 0),
(132, 6, 0),
(133, 6, 0),
(134, 6, 0),
(135, 6, 0),
(141, 7, 0),
(142, 7, 0),
(143, 7, 0),
(144, 7, 0),
(145, 7, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_wordpressterm_taxonomy`
--

CREATE TABLE `wp_wordpressterm_taxonomy` (
  `term_taxonomy_id` bigint UNSIGNED NOT NULL,
  `term_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_wordpressterm_taxonomy`
--

INSERT INTO `wp_wordpressterm_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'wp_theme', '', 0, 1),
(3, 3, 'flamingo_inbound_channel', '', 0, 0),
(4, 4, 'flamingo_inbound_channel', '', 3, 1),
(5, 5, 'category', '', 0, 7),
(6, 6, 'category', '', 0, 8),
(7, 7, 'nav_menu', '', 0, 5);

-- --------------------------------------------------------

--
-- Structure de la table `wp_wordpressusermeta`
--

CREATE TABLE `wp_wordpressusermeta` (
  `umeta_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_wordpressusermeta`
--

INSERT INTO `wp_wordpressusermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'habibisonia'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_wordpresscapabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_wordpressuser_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"8255ff73f0f6ee0a4f43d76ed4e40d0fe0583f030f346c7db355b1388ecd5a18\";a:4:{s:10:\"expiration\";i:1771962793;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:117:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.3 Safari/605.1.15\";s:5:\"login\";i:1771789993;}}'),
(17, 1, 'wp_wordpressdashboard_quick_press_last_post_id', '150'),
(18, 1, 'wp_wordpresspersisted_preferences', 'a:3:{s:4:\"core\";a:2:{s:26:\"isComplementaryAreaVisible\";b:1;s:10:\"openPanels\";a:2:{i:0;s:11:\"post-status\";i:1;s:23:\"taxonomy-panel-category\";}}s:9:\"_modified\";s:24:\"2026-02-21T19:44:25.733Z\";s:14:\"core/edit-post\";a:3:{s:12:\"welcomeGuide\";b:0;s:19:\"metaBoxesMainIsOpen\";b:1;s:23:\"metaBoxesMainOpenHeight\";i:534;}}'),
(19, 1, 'closedpostboxes_post', 'a:0:{}'),
(20, 1, 'metaboxhidden_post', 'a:0:{}'),
(21, 1, 'wp_wordpressuser-settings', 'libraryContent=browse'),
(22, 1, 'wp_wordpressuser-settings-time', '1771190544'),
(23, 1, 'meta-box-order_page', 'a:4:{s:6:\"normal\";s:0:\"\";s:8:\"advanced\";s:0:\"\";s:4:\"side\";s:23:\"acf-group_699085e9d00a5\";s:15:\"acf_after_title\";s:0:\"\";}'),
(24, 1, 'nav_menu_recently_edited', '7'),
(25, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(26, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}');

-- --------------------------------------------------------

--
-- Structure de la table `wp_wordpressusers`
--

CREATE TABLE `wp_wordpressusers` (
  `ID` bigint UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_wordpressusers`
--

INSERT INTO `wp_wordpressusers` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'habibisonia', '$wp$2y$10$dao5zdPJkBkJTcSGNV33OOBb5kRx6rWyVwfGnQWuHFFWH96qKz12m', 'habibisonia', 'habibi-sonia@hotmail.fr', 'http://localhost:8888/wordpress', '2026-02-11 21:24:06', '', 0, 'habibisonia');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `wp_wordpresscommentmeta`
--
ALTER TABLE `wp_wordpresscommentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_wordpresscomments`
--
ALTER TABLE `wp_wordpresscomments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Index pour la table `wp_wordpresslinks`
--
ALTER TABLE `wp_wordpresslinks`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Index pour la table `wp_wordpressoptions`
--
ALTER TABLE `wp_wordpressoptions`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Index pour la table `wp_wordpresspostmeta`
--
ALTER TABLE `wp_wordpresspostmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_wordpressposts`
--
ALTER TABLE `wp_wordpressposts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`),
  ADD KEY `type_status_author` (`post_type`,`post_status`,`post_author`);

--
-- Index pour la table `wp_wordpresstermmeta`
--
ALTER TABLE `wp_wordpresstermmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_wordpressterms`
--
ALTER TABLE `wp_wordpressterms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Index pour la table `wp_wordpressterm_relationships`
--
ALTER TABLE `wp_wordpressterm_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Index pour la table `wp_wordpressterm_taxonomy`
--
ALTER TABLE `wp_wordpressterm_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Index pour la table `wp_wordpressusermeta`
--
ALTER TABLE `wp_wordpressusermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_wordpressusers`
--
ALTER TABLE `wp_wordpressusers`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `wp_wordpresscommentmeta`
--
ALTER TABLE `wp_wordpresscommentmeta`
  MODIFY `meta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_wordpresscomments`
--
ALTER TABLE `wp_wordpresscomments`
  MODIFY `comment_ID` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `wp_wordpresslinks`
--
ALTER TABLE `wp_wordpresslinks`
  MODIFY `link_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_wordpressoptions`
--
ALTER TABLE `wp_wordpressoptions`
  MODIFY `option_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=706;

--
-- AUTO_INCREMENT pour la table `wp_wordpresspostmeta`
--
ALTER TABLE `wp_wordpresspostmeta`
  MODIFY `meta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=914;

--
-- AUTO_INCREMENT pour la table `wp_wordpressposts`
--
ALTER TABLE `wp_wordpressposts`
  MODIFY `ID` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT pour la table `wp_wordpresstermmeta`
--
ALTER TABLE `wp_wordpresstermmeta`
  MODIFY `meta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_wordpressterms`
--
ALTER TABLE `wp_wordpressterms`
  MODIFY `term_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `wp_wordpressterm_taxonomy`
--
ALTER TABLE `wp_wordpressterm_taxonomy`
  MODIFY `term_taxonomy_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `wp_wordpressusermeta`
--
ALTER TABLE `wp_wordpressusermeta`
  MODIFY `umeta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT pour la table `wp_wordpressusers`
--
ALTER TABLE `wp_wordpressusers`
  MODIFY `ID` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
