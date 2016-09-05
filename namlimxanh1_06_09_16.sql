-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 06, 2016 at 01:31 AM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `namlimxanh1`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Mr Wordpress', '', 'https://wordpress.org/', '', '2016-08-25 01:23:38', '2016-08-25 01:23:38', 'Chào, đây là một bình luận.\nĐể xóa một bình luận, chỉ cần đăng nhập và xem các bình luận của bài viết. Tại đó bạn sẽ có thể lựa chọn biên tập lại hoặc xóa bình luận.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_ngg_album`
--

CREATE TABLE IF NOT EXISTS `wp_ngg_album` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `previewpic` bigint(20) NOT NULL DEFAULT '0',
  `albumdesc` mediumtext COLLATE utf8mb4_unicode_ci,
  `sortorder` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `pageid` bigint(20) NOT NULL DEFAULT '0',
  `extras_post_id` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_ngg_gallery`
--

CREATE TABLE IF NOT EXISTS `wp_ngg_gallery` (
  `gid` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` mediumtext COLLATE utf8mb4_unicode_ci,
  `title` mediumtext COLLATE utf8mb4_unicode_ci,
  `galdesc` mediumtext COLLATE utf8mb4_unicode_ci,
  `pageid` bigint(20) NOT NULL DEFAULT '0',
  `previewpic` bigint(20) NOT NULL DEFAULT '0',
  `author` bigint(20) NOT NULL DEFAULT '0',
  `extras_post_id` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_ngg_gallery`
--

INSERT INTO `wp_ngg_gallery` (`gid`, `name`, `slug`, `path`, `title`, `galdesc`, `pageid`, `previewpic`, `author`, `extras_post_id`) VALUES
(1, 'k', 'k', '\\wp-content\\gallery\\k', 'k', NULL, 0, 1, 1, 143);

-- --------------------------------------------------------

--
-- Table structure for table `wp_ngg_pictures`
--

CREATE TABLE IF NOT EXISTS `wp_ngg_pictures` (
  `pid` bigint(20) NOT NULL,
  `image_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_id` bigint(20) NOT NULL DEFAULT '0',
  `galleryid` bigint(20) NOT NULL DEFAULT '0',
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `alttext` mediumtext COLLATE utf8mb4_unicode_ci,
  `imagedate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `exclude` tinyint(4) DEFAULT '0',
  `sortorder` bigint(20) NOT NULL DEFAULT '0',
  `meta_data` longtext COLLATE utf8mb4_unicode_ci,
  `extras_post_id` bigint(20) NOT NULL DEFAULT '0',
  `updated_at` bigint(20) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_ngg_pictures`
--

INSERT INTO `wp_ngg_pictures` (`pid`, `image_slug`, `post_id`, `galleryid`, `filename`, `description`, `alttext`, `imagedate`, `exclude`, `sortorder`, `meta_data`, `extras_post_id`, `updated_at`) VALUES
(1, 'article3', 0, 1, 'article3.png', '', 'article3', '2016-09-05 15:30:38', 0, 0, 'eyJiYWNrdXAiOnsiZmlsZW5hbWUiOiJhcnRpY2xlMy5wbmciLCJ3aWR0aCI6MTMwLCJoZWlnaHQiOjg5LCJnZW5lcmF0ZWQiOiIwLjYxOTI2NTAwIDE0NzMwODk0MzgifSwid2lkdGgiOjEzMCwiaGVpZ2h0Ijo4OSwiZnVsbCI6eyJ3aWR0aCI6MTMwLCJoZWlnaHQiOjg5fSwidGh1bWJuYWlsIjp7IndpZHRoIjoxMzAsImhlaWdodCI6ODksImZpbGVuYW1lIjoidGh1bWJzX2FydGljbGUzLnBuZyIsImdlbmVyYXRlZCI6IjAuMDgxMjkyMDAgMTQ3MzA4OTQzOSJ9LCJhcGVydHVyZSI6ZmFsc2UsImNyZWRpdCI6ZmFsc2UsImNhbWVyYSI6ZmFsc2UsImNhcHRpb24iOmZhbHNlLCJjcmVhdGVkX3RpbWVzdGFtcCI6ZmFsc2UsImNvcHlyaWdodCI6ZmFsc2UsImZvY2FsX2xlbmd0aCI6ZmFsc2UsImlzbyI6ZmFsc2UsInNodXR0ZXJfc3BlZWQiOmZhbHNlLCJmbGFzaCI6ZmFsc2UsInRpdGxlIjpmYWxzZSwia2V5d29yZHMiOmZhbHNlLCJzYXZlZCI6dHJ1ZX0=', 142, NULL),
(2, 'article2', 0, 1, 'article2.png', '', 'article2', '2016-09-05 15:30:42', 0, 0, 'eyJiYWNrdXAiOnsiZmlsZW5hbWUiOiJhcnRpY2xlMi5wbmciLCJ3aWR0aCI6MTMwLCJoZWlnaHQiOjg5LCJnZW5lcmF0ZWQiOiIwLjM0MzQ3ODAwIDE0NzMwODk0NDIifSwid2lkdGgiOjEzMCwiaGVpZ2h0Ijo4OSwiZnVsbCI6eyJ3aWR0aCI6MTMwLCJoZWlnaHQiOjg5fSwidGh1bWJuYWlsIjp7IndpZHRoIjoxMzAsImhlaWdodCI6ODksImZpbGVuYW1lIjoidGh1bWJzX2FydGljbGUyLnBuZyIsImdlbmVyYXRlZCI6IjAuNzI1NTAwMDAgMTQ3MzA4OTQ0MiJ9LCJhcGVydHVyZSI6ZmFsc2UsImNyZWRpdCI6ZmFsc2UsImNhbWVyYSI6ZmFsc2UsImNhcHRpb24iOmZhbHNlLCJjcmVhdGVkX3RpbWVzdGFtcCI6ZmFsc2UsImNvcHlyaWdodCI6ZmFsc2UsImZvY2FsX2xlbmd0aCI6ZmFsc2UsImlzbyI6ZmFsc2UsInNodXR0ZXJfc3BlZWQiOmZhbHNlLCJmbGFzaCI6ZmFsc2UsInRpdGxlIjpmYWxzZSwia2V5d29yZHMiOmZhbHNlLCJzYXZlZCI6dHJ1ZX0=', 145, 1473089443),
(3, 'article1', 0, 1, 'article1.png', '', 'article1', '2016-09-05 15:30:46', 0, 0, 'eyJiYWNrdXAiOnsiZmlsZW5hbWUiOiJhcnRpY2xlMS5wbmciLCJ3aWR0aCI6MTMwLCJoZWlnaHQiOjg5LCJnZW5lcmF0ZWQiOiIwLjM4MjcwOTAwIDE0NzMwODk0NDYifSwid2lkdGgiOjEzMCwiaGVpZ2h0Ijo4OSwiZnVsbCI6eyJ3aWR0aCI6MTMwLCJoZWlnaHQiOjg5fSwidGh1bWJuYWlsIjp7IndpZHRoIjoxMzAsImhlaWdodCI6ODksImZpbGVuYW1lIjoidGh1bWJzX2FydGljbGUxLnBuZyIsImdlbmVyYXRlZCI6IjAuNzgwNzMyMDAgMTQ3MzA4OTQ0NiJ9LCJhcGVydHVyZSI6ZmFsc2UsImNyZWRpdCI6ZmFsc2UsImNhbWVyYSI6ZmFsc2UsImNhcHRpb24iOmZhbHNlLCJjcmVhdGVkX3RpbWVzdGFtcCI6ZmFsc2UsImNvcHlyaWdodCI6ZmFsc2UsImZvY2FsX2xlbmd0aCI6ZmFsc2UsImlzbyI6ZmFsc2UsInNodXR0ZXJfc3BlZWQiOmZhbHNlLCJmbGFzaCI6ZmFsc2UsInRpdGxlIjpmYWxzZSwia2V5d29yZHMiOmZhbHNlLCJzYXZlZCI6dHJ1ZX0=', 147, 1473089447);

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB AUTO_INCREMENT=829 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/namlimxanh1', 'yes'),
(2, 'home', 'http://localhost/namlimxanh1', 'yes'),
(3, 'blogname', 'Nấm lim xanh', 'yes'),
(4, 'blogdescription', 'Nấm lim xanh', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'uocth.qthl@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '1', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'j F, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:84:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:"[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"([^/]+)/embed/?$";s:37:"index.php?name=$matches[1]&embed=true";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:24:"([^/]+)(?:/([0-9]+))?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:22:"[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:3:{i:0;s:23:"tubepress/tubepress.php";i:1;s:42:"wonderplugin-slider/wonderpluginslider.php";i:2;s:51:"youtube-channel-gallery/youtube-channel-gallery.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:2:{i:0;s:98:"D:\\xampp\\htdocs\\namlimxanh1/wp-content/plugins/youtube-channel-gallery/youtube-channel-gallery.php";i:1;s:0:"";}', 'no'),
(40, 'template', 'twentyfourteen', 'yes'),
(41, 'stylesheet', 'twentyfourteen', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '36686', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:3:{s:47:"wonderplugin-slider-lite/wonderpluginslider.php";s:34:"wonderplugin_slider_lite_uninstall";s:42:"wonderplugin-slider/wonderpluginslider.php";s:29:"wonderplugin_slider_uninstall";s:29:"nextgen-gallery/nggallery.php";a:2:{i:0;s:8:"Freemius";i:1;s:22:"_uninstall_plugin_hook";}}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '36686', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:71:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:24:"NextGEN Gallery overview";b:1;s:19:"NextGEN Use TinyMCE";b:1;s:21:"NextGEN Upload images";b:1;s:22:"NextGEN Manage gallery";b:1;s:19:"NextGEN Manage tags";b:1;s:29:"NextGEN Manage others gallery";b:1;s:18:"NextGEN Edit album";b:1;s:20:"NextGEN Change style";b:1;s:22:"NextGEN Change options";b:1;s:24:"NextGEN Attach Interface";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(93, 'WPLANG', 'vi', 'yes'),
(94, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'sidebars_widgets', 'a:5:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}s:13:"array_version";i:3;}', 'yes'),
(100, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'cron', 'a:5:{i:1473125018;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1473125039;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1473126897;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1473142290;a:1:{s:30:"check_plugin_updates-tubepress";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}s:7:"version";i:2;}', 'yes'),
(115, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:2:{i:0;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:57:"https://downloads.wordpress.org/release/wordpress-4.6.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:57:"https://downloads.wordpress.org/release/wordpress-4.6.zip";s:10:"no_content";s:68:"https://downloads.wordpress.org/release/wordpress-4.6-no-content.zip";s:11:"new_bundled";s:69:"https://downloads.wordpress.org/release/wordpress-4.6-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:3:"4.6";s:7:"version";s:3:"4.6";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.4";s:15:"partial_version";s:0:"";}i:1;O:8:"stdClass":11:{s:8:"response";s:10:"autoupdate";s:8:"download";s:57:"https://downloads.wordpress.org/release/wordpress-4.6.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:57:"https://downloads.wordpress.org/release/wordpress-4.6.zip";s:10:"no_content";s:68:"https://downloads.wordpress.org/release/wordpress-4.6-no-content.zip";s:11:"new_bundled";s:69:"https://downloads.wordpress.org/release/wordpress-4.6-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:3:"4.6";s:7:"version";s:3:"4.6";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.4";s:15:"partial_version";s:0:"";s:9:"new_files";s:1:"1";}}s:12:"last_checked";i:1473099058;s:15:"version_checked";s:5:"4.5.3";s:12:"translations";a:0:{}}', 'yes'),
(118, '_site_transient_timeout_browser_551db59e6025301116bdd9bdea784024', '1472693033', 'yes'),
(119, '_site_transient_browser_551db59e6025301116bdd9bdea784024', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:7:"Firefox";s:7:"version";s:4:"47.0";s:10:"update_url";s:23:"http://www.firefox.com/";s:7:"img_src";s:50:"http://s.wordpress.org/images/browsers/firefox.png";s:11:"img_src_ssl";s:49:"https://wordpress.org/images/browsers/firefox.png";s:15:"current_version";s:2:"16";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(120, 'can_compress_scripts', '1', 'yes'),
(130, 'theme_mods_twentysixteen', 'a:2:{s:18:"nav_menu_locations";a:2:{s:7:"primary";i:3;s:9:"secondary";i:0;}s:16:"sidebars_widgets";a:2:{s:4:"time";i:1472195018;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(132, 'current_theme', 'Twenty Fourteen', 'yes'),
(133, 'theme_mods_twentyfourteen', 'a:2:{i:0;b:0;s:18:"nav_menu_locations";a:2:{s:7:"primary";i:3;s:9:"secondary";i:0;}}', 'yes'),
(134, 'theme_switched', '', 'yes'),
(142, 'widget_widget_twentyfourteen_ephemera', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(154, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(160, 'theme_mods_twentyfifteen', 'a:3:{i:0;b:0;s:18:"nav_menu_locations";a:2:{s:7:"primary";i:3;s:9:"secondary";i:0;}s:16:"sidebars_widgets";a:2:{s:4:"time";i:1472107546;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(181, '_site_transient_timeout_wporg_theme_feature_list', '1472118852', 'yes'),
(182, '_site_transient_wporg_theme_feature_list', 'a:4:{s:6:"Colors";a:15:{i:0;s:5:"black";i:1;s:4:"blue";i:2;s:5:"brown";i:3;s:4:"gray";i:4;s:5:"green";i:5;s:6:"orange";i:6;s:4:"pink";i:7;s:6:"purple";i:8;s:3:"red";i:9;s:6:"silver";i:10;s:3:"tan";i:11;s:5:"white";i:12;s:6:"yellow";i:13;s:4:"dark";i:14;s:5:"light";}s:6:"Layout";a:9:{i:0;s:12:"fixed-layout";i:1;s:12:"fluid-layout";i:2;s:17:"responsive-layout";i:3;s:10:"one-column";i:4;s:11:"two-columns";i:5;s:13:"three-columns";i:6;s:12:"four-columns";i:7;s:12:"left-sidebar";i:8;s:13:"right-sidebar";}s:8:"Features";a:20:{i:0;s:19:"accessibility-ready";i:1;s:8:"blavatar";i:2;s:10:"buddypress";i:3;s:17:"custom-background";i:4;s:13:"custom-colors";i:5;s:13:"custom-header";i:6;s:11:"custom-menu";i:7;s:12:"editor-style";i:8;s:21:"featured-image-header";i:9;s:15:"featured-images";i:10;s:15:"flexible-header";i:11;s:20:"front-page-post-form";i:12;s:19:"full-width-template";i:13;s:12:"microformats";i:14;s:12:"post-formats";i:15;s:20:"rtl-language-support";i:16;s:11:"sticky-post";i:17;s:13:"theme-options";i:18;s:17:"threaded-comments";i:19;s:17:"translation-ready";}s:7:"Subject";a:3:{i:0;s:7:"holiday";i:1;s:13:"photoblogging";i:2;s:8:"seasonal";}}', 'yes'),
(184, 'widget_poseidon-magazine-posts-boxed', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(185, 'widget_poseidon-magazine-posts-columns', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(186, 'widget_poseidon-magazine-posts-grid', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(199, 'theme_mods_poseidon', 'a:3:{i:0;b:0;s:18:"nav_menu_locations";a:2:{s:7:"primary";i:3;s:9:"secondary";i:0;}s:16:"sidebars_widgets";a:2:{s:4:"time";i:1472194308;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";N;s:9:"sidebar-3";N;}}}', 'yes'),
(200, 'theme_switched_via_customizer', '', 'yes'),
(215, 'wonderplugin-slider-engine', 'Responsive WordPress Slideshow', 'yes'),
(216, 'recently_activated', 'a:1:{s:29:"nextgen-gallery/nggallery.php";i:1473093853;}', 'yes'),
(217, 'wonderplugin_slider_userrole', 'manage_options', 'yes'),
(255, 'wonderplugin_slider_information', 's:7273:"O:8:"stdClass":15:{s:6:"author";s:19:"Magic Hills Pty Ltd";s:8:"homepage";s:46:"https://www.wonderplugin.com/wordpress-slider/";s:4:"name";s:19:"WonderPlugin Slider";s:8:"requires";s:3:"3.6";s:6:"tested";s:3:"4.6";s:7:"version";s:3:"8.2";s:11:"new_version";s:3:"8.2";s:12:"last_updated";s:10:"2016-08-25";s:8:"sections";a:1:{s:10:"change log";s:6715:"<h4>Version 8.2</h4>\n<ul>\n<li>Fix the problem of the menu Manage Sliders not working in version 7.9 on some WordPress installations</li>\n</ul>\n<h4>Version 7.9</h4>\n<ul>\n<li>Add a class name to the slider to specify the current slide</li>\n</ul>\n<h4>Version 7.8</h4>\n<ul>\n<li>Specify different text effect for each slide</li>\n<li>Save a pre-made text effect as a new custom effect</li>\n<li>Fix the bug of resizing images</li>\n</ul>\n<h4>Version 7.7</h4>\n<ul>\n<li>Support social media share buttons on the slideshow: Facebook, Twitter and Pinterest</li>\n<li>Fix the bug of icon class name conflict</li>\n</ul>\n<h4>Version 7.6</h4>\n<ul>\n<li>Support social media share buttons in lightbox popup: Facebook, Twitter and Pinterest</li>\n<li>Rearrange lightbox options to tabs</li>\n</ul>\n<h4>Version 7.5</h4>\n<ul>\n<li>Add a new text effect: Left Box</li>\n</ul>\n<h4>Version 7.4</h4>\n<ul>\n<li>Add an option to open the web link in lightbox when clicking on the slider</li>\n</ul>\n<h4>Version 7.3</h4>\n<ul>\n<li>Add a new Image resize mode "Same width, flexible height". When the images have different aspect ratio, the option will create a <a href="https://www.wonderplugin.com/wordpress-slider/examples/wordpress-slideshow-of-same-width-and-flexible-height-id51/" target="_blank">WordPress slideshow of same width and flexible height</a>.</li>\n</ul>\n<h4>Version 7.2</h4>\n<ul>\n<li>Support displaying a different slider on mobile and tablet devices. For example, the following shortcode will display slider ID 1 on desktop and display slider ID 2 on mobile and tablet devides: <span style="color:#ff0000;">[wonderplugin_slider id=1 mobileid=2]</span></li>\n</ul>\n<h4>Version 7.1</h4>\n<ul>\n<li>Add an option to save sliders with Post method</li>\n<li>Support specifying advanced options data-navbuttonbgimage, data-navarrowimage and data-navplaypauseimage with absolute URLs</li>\n</ul>\n<h4>Version 7.0</h4>\n<ul>\n<li>Make <a href="https://www.wonderplugin.com/wordpress-slider/examples/wordpress-ken-burns-slider-id43/" target="_blank">WordPress Ken Burns slideshow</a> fully responsive during transitioning</li>\n</ul>\n<h4>Version 6.9</h4>\n<ul>\n<li>Add an option to pause the slideshow on mouse over</li>\n<li>Only display videos in the Media Library Selection Dialog when selecting a video file</li>\n</ul>\n<h4>Version 6.8</h4>\n<ul>\n<li>Add a new skin: Bottom Carousel</li>\n<li>Enter data tag <span style="color:#ff0000;">data-navplayvideoimage="play-24-24-0.png"</span> to the Advanced Options to specify a smaller video play icon on thumbnails</li>\n<li>Use data tag <span style="color:#ff0000;">data-navthumbnavigationarrowimage</span> to specify your own custom-made thumbnail carousel arrows</li>\n</ul>\n<h4>Version 6.7</h4>\n<ul>\n<li>Fix a bug in the skin Header</li>\n</ul>\n<h4>Version 6.6</h4>\n<ul>\n<li>Allow HTML5 source tags in title and description</li>\n</ul>\n<h4>Version 6.5</h4>\n<ul>\n<li>Fix a bug of playing HTML5 videos on Google Chrome when there are more than 6 videos in a slider</li>\n</ul>\n<h4>Version 6.4</h4>\n<ul>\n<li>Fix the bug when there are uppercase letters in WordPress database prefix</li>\n</ul>\n<h4>Version 6.3</h4>\n<ul>\n<li>Add an advanced option to trigger window resize event</li>\n</ul>\n<h4>Version 6.2</h4>\n<ul>\n<li>Display the plugin version type in the WordPress backend Plugins -> Installed Plugins page</li>\n</ul>\n<h4>Version 6.1</h4>\n<ul>\n<li>WordPress Posts Slider: add an option to link title to the post page</li>\n<li>WordPress Posts Slider: add an option to open the featured image in lightbox</li>\n</ul>\n<h4>Version 6.0</h4>\n<ul>\n<li>Fix a bug in plugin update</li>\n</ul>\n<h4>Version 5.9</h4>\n<ul>\n<li>Fix a bug in ken-burns effect</li>\n</ul>\n<h4>Version 5.8</h4>\n<ul>\n<li>Support trash in slider management. The deleted slider will be moved to the trash in which you can restore or permanently delete it.</li>\n</ul>\n<h4>Version 5.7</h4>\n<ul>\n<li>Support lightbox auto slideshow</li>\n<li>Add an option to always show the previous and next navigation arrows on lightbox</li>\n<li>Display error notice on the WordPress Updates page if the free upgrade period is expired.</li>\n</ul>\n<h4>Version 5.6</h4>\n<ul>\n<li>Add an option to support adding the new item to the beginning of the list\n</li>\n<li>Add a function to reverse the media list</li>\n</ul>\n<h4>Version 5.5</h4>\n<ul>\n<li>Fix the bug of resuming slideshow autoplay when lightbox is closed</li>\n<li>Add an option to hide MP4/WebM video play control bar on lightbox</li>\n<li>Add an option to display text on bottom, inside, left or right of the lightbox</li>\n<li>Add an option to display lightbox in fullscreen mode. In fullscreen mode, the close button will be displayed on the top right corner of the web browser</li>\n<li>Add an option to add prefix to title when the lightbox is displayed in gallery mode</li>\n<li>Add an option to enable or disable closing lightbox when clicking on the overlay background</li>\n<li>Move the left and right navigation arrows to the side of lightbox on touch screen. This will fix the issue of double clicking when playing video on iPhone, iPad and Android.</li>\n</ul>\n<h4>Version 5.4</h4>\n<ul>\n<li>Fix the bug of playing MP4 video on iPad iOS 9.1\n</li>\n</ul>\n<h4>Version 5.3</h4>\n<ul>\n<li>Fix the bug of video lightbox in iPad 2\n</li>\n</ul>\n<h4>Version 5.2</h4>\n<ul>\n<li>Support WordPress posts slider: create slider from recent posts or posts in specified categories\n</li>\n</ul>\n<h4>Version 5.1</h4>\n<ul>\n<li>Fix a minor bug of version 5.0\n</li>\n</ul>\n<h4>Version 5.0</h4>\n<ul>\n<li>Fix a bug of playing mp4 video in the lightbox popup under Firefox\n</li>\n</ul>\n<h4>Version 4.9</h4>\n<ul>\n<li>Fix bugs\n</li>\n</ul>\n<h4>Version 4.7</h4>\n<ul>\n<li>Fix a bug in responsive design\n</li>\n</ul>\n<h4>Version 4.6</h4>\n<ul>\n<li>Support adding alt text for slider images\n</li>\n</ul>\n<h4>Version 4.5</h4>\n<ul>\n<li>Fix bugs\n</li>\n</ul>\n<h4>Version 4.4</h4>\n<ul>\n<li>Add options to change the aspect ratio of sliders on small screen devices\n</li>\n</ul>\n<h4>Version 4.3</h4>\n<ul>\n<li>Add effects Tiles, Ken Burns, Flip, Flip with zoom\n</li>\n<li>Create <a href="/wordpress-slider/examples/wordpress-ken-burns-slider-id43/" target="_blank">WordPress Ken Burns Slider</a>\n</li>\n<li>Add 3D effects 3D with zoom, 3D horizontal with zoom, 3D flip, 3D flip with zoom, 3D tiles\n</li>\n<li>Create <a href="/wordpress-slider/examples/wordpress-3d-slider-id44/" target="_blank">WordPress 3D Slider</a>\n</li>\n<li>Add options to define thumbnail width and height\n</li>\n<li>Add an option to add slider js files to the footer\n</li>\n<li>Add an option to display sliders in text widgets\n</li>\n<li>Add options to define responsive CSS for texts on small screens\n</li>\n</ul>\n<h4>Version 4.2</h4>\n<ul>\n<li>Support version check and update\n</li>\n</ul>";}s:3:"key";s:0:"";s:10:"key_status";s:5:"empty";s:10:"key_expire";i:0;s:4:"slug";s:19:"wonderplugin-slider";s:6:"plugin";s:42:"wonderplugin-slider/wonderpluginslider.php";s:12:"last_checked";i:1473086846;}";', 'yes'),
(361, '_site_transient_timeout_browser_701c87b2fc378776c92f609a633eee5f', '1473466225', 'yes'),
(362, '_site_transient_browser_701c87b2fc378776c92f609a633eee5f', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:12:"51.0.2704.63";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(366, '_site_transient_timeout_browser_d39d7bf13b1a52d937e7ba3a4c99e04f', '1473469021', 'yes'),
(367, '_site_transient_browser_d39d7bf13b1a52d937e7ba3a4c99e04f', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:7:"Firefox";s:7:"version";s:4:"48.0";s:10:"update_url";s:23:"http://www.firefox.com/";s:7:"img_src";s:50:"http://s.wordpress.org/images/browsers/firefox.png";s:11:"img_src_ssl";s:49:"https://wordpress.org/images/browsers/firefox.png";s:15:"current_version";s:2:"16";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(368, '_site_transient_timeout_available_translations', '1472875244', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(369, '_site_transient_available_translations', 'a:81:{s:2:"ar";a:8:{s:8:"language";s:2:"ar";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-07-14 10:53:34";s:12:"english_name";s:6:"Arabic";s:11:"native_name";s:14:"العربية";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.5.3/ar.zip";s:3:"iso";a:2:{i:1;s:2:"ar";i:2;s:3:"ara";}s:7:"strings";a:1:{s:8:"continue";s:16:"المتابعة";}}s:3:"ary";a:8:{s:8:"language";s:3:"ary";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-13 14:44:00";s:12:"english_name";s:15:"Moroccan Arabic";s:11:"native_name";s:31:"العربية المغربية";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.5.2/ary.zip";s:3:"iso";a:2:{i:1;s:2:"ar";i:3;s:3:"ary";}s:7:"strings";a:1:{s:8:"continue";s:16:"المتابعة";}}s:2:"az";a:8:{s:8:"language";s:2:"az";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-06-18 20:18:13";s:12:"english_name";s:11:"Azerbaijani";s:11:"native_name";s:16:"Azərbaycan dili";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.5.2/az.zip";s:3:"iso";a:2:{i:1;s:2:"az";i:2;s:3:"aze";}s:7:"strings";a:1:{s:8:"continue";s:5:"Davam";}}s:3:"azb";a:8:{s:8:"language";s:3:"azb";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-11 22:42:10";s:12:"english_name";s:17:"South Azerbaijani";s:11:"native_name";s:29:"گؤنئی آذربایجان";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.4.2/azb.zip";s:3:"iso";a:2:{i:1;s:2:"az";i:3;s:3:"azb";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"bg_BG";a:8:{s:8:"language";s:5:"bg_BG";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-06-27 08:19:49";s:12:"english_name";s:9:"Bulgarian";s:11:"native_name";s:18:"Български";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.3/bg_BG.zip";s:3:"iso";a:2:{i:1;s:2:"bg";i:2;s:3:"bul";}s:7:"strings";a:1:{s:8:"continue";s:12:"Напред";}}s:5:"bn_BD";a:8:{s:8:"language";s:5:"bn_BD";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-08-14 05:03:35";s:12:"english_name";s:7:"Bengali";s:11:"native_name";s:15:"বাংলা";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.3/bn_BD.zip";s:3:"iso";a:1:{i:1;s:2:"bn";}s:7:"strings";a:1:{s:8:"continue";s:23:"এগিয়ে চল.";}}s:5:"bs_BA";a:8:{s:8:"language";s:5:"bs_BA";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-19 23:16:37";s:12:"english_name";s:7:"Bosnian";s:11:"native_name";s:8:"Bosanski";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/bs_BA.zip";s:3:"iso";a:2:{i:1;s:2:"bs";i:2;s:3:"bos";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:2:"ca";a:8:{s:8:"language";s:2:"ca";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-08-11 20:22:42";s:12:"english_name";s:7:"Catalan";s:11:"native_name";s:7:"Català";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.5.3/ca.zip";s:3:"iso";a:2:{i:1;s:2:"ca";i:2;s:3:"cat";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:3:"ceb";a:8:{s:8:"language";s:3:"ceb";s:7:"version";s:5:"4.4.3";s:7:"updated";s:19:"2016-02-16 15:34:57";s:12:"english_name";s:7:"Cebuano";s:11:"native_name";s:7:"Cebuano";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.4.3/ceb.zip";s:3:"iso";a:2:{i:2;s:3:"ceb";i:3;s:3:"ceb";}s:7:"strings";a:1:{s:8:"continue";s:7:"Padayun";}}s:5:"cs_CZ";a:8:{s:8:"language";s:5:"cs_CZ";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-02-11 18:32:36";s:12:"english_name";s:5:"Czech";s:11:"native_name";s:12:"Čeština‎";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/cs_CZ.zip";s:3:"iso";a:2:{i:1;s:2:"cs";i:2;s:3:"ces";}s:7:"strings";a:1:{s:8:"continue";s:11:"Pokračovat";}}s:2:"cy";a:8:{s:8:"language";s:2:"cy";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-07-01 14:29:56";s:12:"english_name";s:5:"Welsh";s:11:"native_name";s:7:"Cymraeg";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.5.3/cy.zip";s:3:"iso";a:2:{i:1;s:2:"cy";i:2;s:3:"cym";}s:7:"strings";a:1:{s:8:"continue";s:6:"Parhau";}}s:5:"da_DK";a:8:{s:8:"language";s:5:"da_DK";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-06-28 11:16:44";s:12:"english_name";s:6:"Danish";s:11:"native_name";s:5:"Dansk";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.3/da_DK.zip";s:3:"iso";a:2:{i:1;s:2:"da";i:2;s:3:"dan";}s:7:"strings";a:1:{s:8:"continue";s:12:"Forts&#230;t";}}s:5:"de_CH";a:8:{s:8:"language";s:5:"de_CH";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-06-26 10:08:23";s:12:"english_name";s:20:"German (Switzerland)";s:11:"native_name";s:17:"Deutsch (Schweiz)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.3/de_CH.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:14:"de_CH_informal";a:8:{s:8:"language";s:14:"de_CH_informal";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-12 20:03:25";s:12:"english_name";s:23:"(Switzerland, Informal)";s:11:"native_name";s:21:"Deutsch (Schweiz, Du)";s:7:"package";s:73:"https://downloads.wordpress.org/translation/core/4.5.2/de_CH_informal.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:12:"de_DE_formal";a:8:{s:8:"language";s:12:"de_DE_formal";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-06-30 18:59:13";s:12:"english_name";s:15:"German (Formal)";s:11:"native_name";s:13:"Deutsch (Sie)";s:7:"package";s:71:"https://downloads.wordpress.org/translation/core/4.5.3/de_DE_formal.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:5:"de_DE";a:8:{s:8:"language";s:5:"de_DE";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-07-30 21:42:25";s:12:"english_name";s:6:"German";s:11:"native_name";s:7:"Deutsch";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.3/de_DE.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:2:"el";a:8:{s:8:"language";s:2:"el";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-07-26 19:02:02";s:12:"english_name";s:5:"Greek";s:11:"native_name";s:16:"Ελληνικά";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.5.3/el.zip";s:3:"iso";a:2:{i:1;s:2:"el";i:2;s:3:"ell";}s:7:"strings";a:1:{s:8:"continue";s:16:"Συνέχεια";}}s:5:"en_AU";a:8:{s:8:"language";s:5:"en_AU";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-06-21 21:28:52";s:12:"english_name";s:19:"English (Australia)";s:11:"native_name";s:19:"English (Australia)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.3/en_AU.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_NZ";a:8:{s:8:"language";s:5:"en_NZ";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-06-21 22:55:40";s:12:"english_name";s:21:"English (New Zealand)";s:11:"native_name";s:21:"English (New Zealand)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.3/en_NZ.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_ZA";a:8:{s:8:"language";s:5:"en_ZA";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-28 11:29:02";s:12:"english_name";s:22:"English (South Africa)";s:11:"native_name";s:22:"English (South Africa)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/en_ZA.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_CA";a:8:{s:8:"language";s:5:"en_CA";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-06-26 19:24:51";s:12:"english_name";s:16:"English (Canada)";s:11:"native_name";s:16:"English (Canada)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.3/en_CA.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_GB";a:8:{s:8:"language";s:5:"en_GB";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-06-21 22:23:41";s:12:"english_name";s:12:"English (UK)";s:11:"native_name";s:12:"English (UK)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.3/en_GB.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:2:"eo";a:8:{s:8:"language";s:2:"eo";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-06-29 13:59:02";s:12:"english_name";s:9:"Esperanto";s:11:"native_name";s:9:"Esperanto";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.5.3/eo.zip";s:3:"iso";a:2:{i:1;s:2:"eo";i:2;s:3:"epo";}s:7:"strings";a:1:{s:8:"continue";s:8:"Daŭrigi";}}s:5:"es_VE";a:8:{s:8:"language";s:5:"es_VE";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-06-23 19:36:14";s:12:"english_name";s:19:"Spanish (Venezuela)";s:11:"native_name";s:21:"Español de Venezuela";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.3/es_VE.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_MX";a:8:{s:8:"language";s:5:"es_MX";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-08-29 15:10:17";s:12:"english_name";s:16:"Spanish (Mexico)";s:11:"native_name";s:19:"Español de México";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.3/es_MX.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_GT";a:8:{s:8:"language";s:5:"es_GT";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-08-05 22:16:54";s:12:"english_name";s:19:"Spanish (Guatemala)";s:11:"native_name";s:21:"Español de Guatemala";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.3/es_GT.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_PE";a:8:{s:8:"language";s:5:"es_PE";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-16 17:35:43";s:12:"english_name";s:14:"Spanish (Peru)";s:11:"native_name";s:17:"Español de Perú";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/es_PE.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_CL";a:8:{s:8:"language";s:5:"es_CL";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-07-01 14:32:46";s:12:"english_name";s:15:"Spanish (Chile)";s:11:"native_name";s:17:"Español de Chile";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.3/es_CL.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_CO";a:8:{s:8:"language";s:5:"es_CO";s:7:"version";s:6:"4.3-RC";s:7:"updated";s:19:"2015-08-04 06:10:33";s:12:"english_name";s:18:"Spanish (Colombia)";s:11:"native_name";s:20:"Español de Colombia";s:7:"package";s:65:"https://downloads.wordpress.org/translation/core/4.3-RC/es_CO.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_ES";a:8:{s:8:"language";s:5:"es_ES";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-06-21 19:09:44";s:12:"english_name";s:15:"Spanish (Spain)";s:11:"native_name";s:8:"Español";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.3/es_ES.zip";s:3:"iso";a:1:{i:1;s:2:"es";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_AR";a:8:{s:8:"language";s:5:"es_AR";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-07-15 15:42:15";s:12:"english_name";s:19:"Spanish (Argentina)";s:11:"native_name";s:21:"Español de Argentina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.3/es_AR.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:2:"et";a:8:{s:8:"language";s:2:"et";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-08-07 15:28:20";s:12:"english_name";s:8:"Estonian";s:11:"native_name";s:5:"Eesti";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.5.3/et.zip";s:3:"iso";a:2:{i:1;s:2:"et";i:2;s:3:"est";}s:7:"strings";a:1:{s:8:"continue";s:6:"Jätka";}}s:2:"eu";a:8:{s:8:"language";s:2:"eu";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-06-30 11:41:42";s:12:"english_name";s:6:"Basque";s:11:"native_name";s:7:"Euskara";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.5.3/eu.zip";s:3:"iso";a:2:{i:1;s:2:"eu";i:2;s:3:"eus";}s:7:"strings";a:1:{s:8:"continue";s:8:"Jarraitu";}}s:5:"fa_IR";a:8:{s:8:"language";s:5:"fa_IR";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-06-20 14:58:27";s:12:"english_name";s:7:"Persian";s:11:"native_name";s:10:"فارسی";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/fa_IR.zip";s:3:"iso";a:2:{i:1;s:2:"fa";i:2;s:3:"fas";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:2:"fi";a:8:{s:8:"language";s:2:"fi";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-06-26 09:08:24";s:12:"english_name";s:7:"Finnish";s:11:"native_name";s:5:"Suomi";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.5.3/fi.zip";s:3:"iso";a:2:{i:1;s:2:"fi";i:2;s:3:"fin";}s:7:"strings";a:1:{s:8:"continue";s:5:"Jatka";}}s:5:"fr_BE";a:8:{s:8:"language";s:5:"fr_BE";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-06-22 06:33:34";s:12:"english_name";s:16:"French (Belgium)";s:11:"native_name";s:21:"Français de Belgique";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.3/fr_BE.zip";s:3:"iso";a:2:{i:1;s:2:"fr";i:2;s:3:"fra";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:5:"fr_CA";a:8:{s:8:"language";s:5:"fr_CA";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-07-13 12:55:08";s:12:"english_name";s:15:"French (Canada)";s:11:"native_name";s:19:"Français du Canada";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.3/fr_CA.zip";s:3:"iso";a:2:{i:1;s:2:"fr";i:2;s:3:"fra";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:5:"fr_FR";a:8:{s:8:"language";s:5:"fr_FR";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-07-29 13:30:07";s:12:"english_name";s:15:"French (France)";s:11:"native_name";s:9:"Français";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.3/fr_FR.zip";s:3:"iso";a:1:{i:1;s:2:"fr";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:2:"gd";a:8:{s:8:"language";s:2:"gd";s:7:"version";s:5:"4.3.4";s:7:"updated";s:19:"2015-09-24 15:25:30";s:12:"english_name";s:15:"Scottish Gaelic";s:11:"native_name";s:9:"Gàidhlig";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.3.4/gd.zip";s:3:"iso";a:3:{i:1;s:2:"gd";i:2;s:3:"gla";i:3;s:3:"gla";}s:7:"strings";a:1:{s:8:"continue";s:15:"Lean air adhart";}}s:5:"gl_ES";a:8:{s:8:"language";s:5:"gl_ES";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-06-28 21:28:18";s:12:"english_name";s:8:"Galician";s:11:"native_name";s:6:"Galego";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.3/gl_ES.zip";s:3:"iso";a:2:{i:1;s:2:"gl";i:2;s:3:"glg";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:3:"haz";a:8:{s:8:"language";s:3:"haz";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-05 00:59:09";s:12:"english_name";s:8:"Hazaragi";s:11:"native_name";s:15:"هزاره گی";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.4.2/haz.zip";s:3:"iso";a:1:{i:3;s:3:"haz";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:5:"he_IL";a:8:{s:8:"language";s:5:"he_IL";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-06-26 15:19:37";s:12:"english_name";s:6:"Hebrew";s:11:"native_name";s:16:"עִבְרִית";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.3/he_IL.zip";s:3:"iso";a:1:{i:1;s:2:"he";}s:7:"strings";a:1:{s:8:"continue";s:8:"המשך";}}s:5:"hi_IN";a:8:{s:8:"language";s:5:"hi_IN";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-06-22 11:01:09";s:12:"english_name";s:5:"Hindi";s:11:"native_name";s:18:"हिन्दी";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.3/hi_IN.zip";s:3:"iso";a:2:{i:1;s:2:"hi";i:2;s:3:"hin";}s:7:"strings";a:1:{s:8:"continue";s:12:"जारी";}}s:2:"hr";a:8:{s:8:"language";s:2:"hr";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-08-11 16:18:13";s:12:"english_name";s:8:"Croatian";s:11:"native_name";s:8:"Hrvatski";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.5.3/hr.zip";s:3:"iso";a:2:{i:1;s:2:"hr";i:2;s:3:"hrv";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:5:"hu_HU";a:8:{s:8:"language";s:5:"hu_HU";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-06-21 18:58:51";s:12:"english_name";s:9:"Hungarian";s:11:"native_name";s:6:"Magyar";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.3/hu_HU.zip";s:3:"iso";a:2:{i:1;s:2:"hu";i:2;s:3:"hun";}s:7:"strings";a:1:{s:8:"continue";s:10:"Folytatás";}}s:2:"hy";a:8:{s:8:"language";s:2:"hy";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-02-04 07:13:54";s:12:"english_name";s:8:"Armenian";s:11:"native_name";s:14:"Հայերեն";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.4.2/hy.zip";s:3:"iso";a:2:{i:1;s:2:"hy";i:2;s:3:"hye";}s:7:"strings";a:1:{s:8:"continue";s:20:"Շարունակել";}}s:5:"id_ID";a:8:{s:8:"language";s:5:"id_ID";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-06-29 09:14:16";s:12:"english_name";s:10:"Indonesian";s:11:"native_name";s:16:"Bahasa Indonesia";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.3/id_ID.zip";s:3:"iso";a:2:{i:1;s:2:"id";i:2;s:3:"ind";}s:7:"strings";a:1:{s:8:"continue";s:9:"Lanjutkan";}}s:5:"is_IS";a:8:{s:8:"language";s:5:"is_IS";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-08-19 01:01:44";s:12:"english_name";s:9:"Icelandic";s:11:"native_name";s:9:"Íslenska";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.3/is_IS.zip";s:3:"iso";a:2:{i:1;s:2:"is";i:2;s:3:"isl";}s:7:"strings";a:1:{s:8:"continue";s:6:"Áfram";}}s:5:"it_IT";a:8:{s:8:"language";s:5:"it_IT";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-08-16 10:17:50";s:12:"english_name";s:7:"Italian";s:11:"native_name";s:8:"Italiano";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.3/it_IT.zip";s:3:"iso";a:2:{i:1;s:2:"it";i:2;s:3:"ita";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:2:"ja";a:8:{s:8:"language";s:2:"ja";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-08-17 17:39:43";s:12:"english_name";s:8:"Japanese";s:11:"native_name";s:9:"日本語";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.5.3/ja.zip";s:3:"iso";a:1:{i:1;s:2:"ja";}s:7:"strings";a:1:{s:8:"continue";s:9:"続ける";}}s:5:"ka_GE";a:8:{s:8:"language";s:5:"ka_GE";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-07-15 07:32:48";s:12:"english_name";s:8:"Georgian";s:11:"native_name";s:21:"ქართული";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.3/ka_GE.zip";s:3:"iso";a:2:{i:1;s:2:"ka";i:2;s:3:"kat";}s:7:"strings";a:1:{s:8:"continue";s:30:"გაგრძელება";}}s:5:"ko_KR";a:8:{s:8:"language";s:5:"ko_KR";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-07-23 09:09:28";s:12:"english_name";s:6:"Korean";s:11:"native_name";s:9:"한국어";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.3/ko_KR.zip";s:3:"iso";a:2:{i:1;s:2:"ko";i:2;s:3:"kor";}s:7:"strings";a:1:{s:8:"continue";s:6:"계속";}}s:5:"lt_LT";a:8:{s:8:"language";s:5:"lt_LT";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-07-03 22:34:27";s:12:"english_name";s:10:"Lithuanian";s:11:"native_name";s:15:"Lietuvių kalba";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.3/lt_LT.zip";s:3:"iso";a:2:{i:1;s:2:"lt";i:2;s:3:"lit";}s:7:"strings";a:1:{s:8:"continue";s:6:"Tęsti";}}s:5:"mk_MK";a:8:{s:8:"language";s:5:"mk_MK";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-05-12 13:55:28";s:12:"english_name";s:10:"Macedonian";s:11:"native_name";s:31:"Македонски јазик";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/mk_MK.zip";s:3:"iso";a:2:{i:1;s:2:"mk";i:2;s:3:"mkd";}s:7:"strings";a:1:{s:8:"continue";s:16:"Продолжи";}}s:2:"mr";a:8:{s:8:"language";s:2:"mr";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-08-26 13:19:17";s:12:"english_name";s:7:"Marathi";s:11:"native_name";s:15:"मराठी";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.5.3/mr.zip";s:3:"iso";a:2:{i:1;s:2:"mr";i:2;s:3:"mar";}s:7:"strings";a:1:{s:8:"continue";s:25:"सुरु ठेवा";}}s:5:"ms_MY";a:8:{s:8:"language";s:5:"ms_MY";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-06-28 05:36:22";s:12:"english_name";s:5:"Malay";s:11:"native_name";s:13:"Bahasa Melayu";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.3/ms_MY.zip";s:3:"iso";a:2:{i:1;s:2:"ms";i:2;s:3:"msa";}s:7:"strings";a:1:{s:8:"continue";s:8:"Teruskan";}}s:5:"my_MM";a:8:{s:8:"language";s:5:"my_MM";s:7:"version";s:6:"4.1.12";s:7:"updated";s:19:"2015-03-26 15:57:42";s:12:"english_name";s:17:"Myanmar (Burmese)";s:11:"native_name";s:15:"ဗမာစာ";s:7:"package";s:65:"https://downloads.wordpress.org/translation/core/4.1.12/my_MM.zip";s:3:"iso";a:2:{i:1;s:2:"my";i:2;s:3:"mya";}s:7:"strings";a:1:{s:8:"continue";s:54:"ဆက်လက်လုပ်ဆောင်ပါ။";}}s:5:"nb_NO";a:8:{s:8:"language";s:5:"nb_NO";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-08-09 14:35:35";s:12:"english_name";s:19:"Norwegian (Bokmål)";s:11:"native_name";s:13:"Norsk bokmål";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.3/nb_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nb";i:2;s:3:"nob";}s:7:"strings";a:1:{s:8:"continue";s:8:"Fortsett";}}s:5:"nl_NL";a:8:{s:8:"language";s:5:"nl_NL";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-07-15 10:43:48";s:12:"english_name";s:5:"Dutch";s:11:"native_name";s:10:"Nederlands";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.3/nl_NL.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:12:"nl_NL_formal";a:8:{s:8:"language";s:12:"nl_NL_formal";s:7:"version";s:5:"4.4.3";s:7:"updated";s:19:"2016-01-20 13:35:50";s:12:"english_name";s:14:"Dutch (Formal)";s:11:"native_name";s:20:"Nederlands (Formeel)";s:7:"package";s:71:"https://downloads.wordpress.org/translation/core/4.4.3/nl_NL_formal.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:5:"nn_NO";a:8:{s:8:"language";s:5:"nn_NO";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-06-23 11:56:46";s:12:"english_name";s:19:"Norwegian (Nynorsk)";s:11:"native_name";s:13:"Norsk nynorsk";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.3/nn_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nn";i:2;s:3:"nno";}s:7:"strings";a:1:{s:8:"continue";s:9:"Hald fram";}}s:3:"oci";a:8:{s:8:"language";s:3:"oci";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-07-25 15:00:30";s:12:"english_name";s:7:"Occitan";s:11:"native_name";s:7:"Occitan";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.5.3/oci.zip";s:3:"iso";a:2:{i:1;s:2:"oc";i:2;s:3:"oci";}s:7:"strings";a:1:{s:8:"continue";s:9:"Contunhar";}}s:5:"pl_PL";a:8:{s:8:"language";s:5:"pl_PL";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-06-23 08:13:15";s:12:"english_name";s:6:"Polish";s:11:"native_name";s:6:"Polski";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.3/pl_PL.zip";s:3:"iso";a:2:{i:1;s:2:"pl";i:2;s:3:"pol";}s:7:"strings";a:1:{s:8:"continue";s:9:"Kontynuuj";}}s:2:"ps";a:8:{s:8:"language";s:2:"ps";s:7:"version";s:6:"4.1.12";s:7:"updated";s:19:"2015-03-29 22:19:48";s:12:"english_name";s:6:"Pashto";s:11:"native_name";s:8:"پښتو";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.1.12/ps.zip";s:3:"iso";a:2:{i:1;s:2:"ps";i:2;s:3:"pus";}s:7:"strings";a:1:{s:8:"continue";s:19:"دوام ورکړه";}}s:5:"pt_BR";a:8:{s:8:"language";s:5:"pt_BR";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-06-30 23:41:16";s:12:"english_name";s:19:"Portuguese (Brazil)";s:11:"native_name";s:20:"Português do Brasil";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.3/pt_BR.zip";s:3:"iso";a:2:{i:1;s:2:"pt";i:2;s:3:"por";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"pt_PT";a:8:{s:8:"language";s:5:"pt_PT";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-08-17 15:23:17";s:12:"english_name";s:21:"Portuguese (Portugal)";s:11:"native_name";s:10:"Português";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.3/pt_PT.zip";s:3:"iso";a:1:{i:1;s:2:"pt";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"ro_RO";a:8:{s:8:"language";s:5:"ro_RO";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-06-28 05:26:21";s:12:"english_name";s:8:"Romanian";s:11:"native_name";s:8:"Română";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.3/ro_RO.zip";s:3:"iso";a:2:{i:1;s:2:"ro";i:2;s:3:"ron";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuă";}}s:5:"ru_RU";a:8:{s:8:"language";s:5:"ru_RU";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-06-26 13:55:57";s:12:"english_name";s:7:"Russian";s:11:"native_name";s:14:"Русский";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.3/ru_RU.zip";s:3:"iso";a:2:{i:1;s:2:"ru";i:2;s:3:"rus";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продолжить";}}s:5:"sk_SK";a:8:{s:8:"language";s:5:"sk_SK";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-08-15 21:05:03";s:12:"english_name";s:6:"Slovak";s:11:"native_name";s:11:"Slovenčina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.3/sk_SK.zip";s:3:"iso";a:2:{i:1;s:2:"sk";i:2;s:3:"slk";}s:7:"strings";a:1:{s:8:"continue";s:12:"Pokračovať";}}s:5:"sl_SI";a:8:{s:8:"language";s:5:"sl_SI";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-07-29 21:37:59";s:12:"english_name";s:9:"Slovenian";s:11:"native_name";s:13:"Slovenščina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.3/sl_SI.zip";s:3:"iso";a:2:{i:1;s:2:"sl";i:2;s:3:"slv";}s:7:"strings";a:1:{s:8:"continue";s:8:"Nadaljuj";}}s:2:"sq";a:8:{s:8:"language";s:2:"sq";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-06-23 09:08:48";s:12:"english_name";s:8:"Albanian";s:11:"native_name";s:5:"Shqip";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.5.3/sq.zip";s:3:"iso";a:2:{i:1;s:2:"sq";i:2;s:3:"sqi";}s:7:"strings";a:1:{s:8:"continue";s:6:"Vazhdo";}}s:5:"sr_RS";a:8:{s:8:"language";s:5:"sr_RS";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-07-28 05:05:25";s:12:"english_name";s:7:"Serbian";s:11:"native_name";s:23:"Српски језик";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.3/sr_RS.zip";s:3:"iso";a:2:{i:1;s:2:"sr";i:2;s:3:"srp";}s:7:"strings";a:1:{s:8:"continue";s:14:"Настави";}}s:5:"sv_SE";a:8:{s:8:"language";s:5:"sv_SE";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-06-23 10:13:40";s:12:"english_name";s:7:"Swedish";s:11:"native_name";s:7:"Svenska";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.3/sv_SE.zip";s:3:"iso";a:2:{i:1;s:2:"sv";i:2;s:3:"swe";}s:7:"strings";a:1:{s:8:"continue";s:9:"Fortsätt";}}s:2:"th";a:8:{s:8:"language";s:2:"th";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-06-30 10:22:26";s:12:"english_name";s:4:"Thai";s:11:"native_name";s:9:"ไทย";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.5.3/th.zip";s:3:"iso";a:2:{i:1;s:2:"th";i:2;s:3:"tha";}s:7:"strings";a:1:{s:8:"continue";s:15:"ต่อไป";}}s:2:"tl";a:8:{s:8:"language";s:2:"tl";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-11-27 15:51:36";s:12:"english_name";s:7:"Tagalog";s:11:"native_name";s:7:"Tagalog";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.4.2/tl.zip";s:3:"iso";a:2:{i:1;s:2:"tl";i:2;s:3:"tgl";}s:7:"strings";a:1:{s:8:"continue";s:10:"Magpatuloy";}}s:5:"tr_TR";a:8:{s:8:"language";s:5:"tr_TR";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-06-26 08:25:58";s:12:"english_name";s:7:"Turkish";s:11:"native_name";s:8:"Türkçe";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.3/tr_TR.zip";s:3:"iso";a:2:{i:1;s:2:"tr";i:2;s:3:"tur";}s:7:"strings";a:1:{s:8:"continue";s:5:"Devam";}}s:5:"ug_CN";a:8:{s:8:"language";s:5:"ug_CN";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-06-22 12:27:05";s:12:"english_name";s:6:"Uighur";s:11:"native_name";s:9:"Uyƣurqə";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.3/ug_CN.zip";s:3:"iso";a:2:{i:1;s:2:"ug";i:2;s:3:"uig";}s:7:"strings";a:1:{s:8:"continue";s:26:"داۋاملاشتۇرۇش";}}s:2:"uk";a:8:{s:8:"language";s:2:"uk";s:7:"version";s:5:"4.5.3";s:7:"updated";s:19:"2016-07-20 19:27:06";s:12:"english_name";s:9:"Ukrainian";s:11:"native_name";s:20:"Українська";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.5.3/uk.zip";s:3:"iso";a:2:{i:1;s:2:"uk";i:2;s:3:"ukr";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продовжити";}}s:2:"vi";a:8:{s:8:"language";s:2:"vi";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-09 01:01:25";s:12:"english_name";s:10:"Vietnamese";s:11:"native_name";s:14:"Tiếng Việt";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.4.2/vi.zip";s:3:"iso";a:2:{i:1;s:2:"vi";i:2;s:3:"vie";}s:7:"strings";a:1:{s:8:"continue";s:12:"Tiếp tục";}}s:5:"zh_TW";a:8:{s:8:"language";s:5:"zh_TW";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-12 09:08:07";s:12:"english_name";s:16:"Chinese (Taiwan)";s:11:"native_name";s:12:"繁體中文";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/zh_TW.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"繼續";}}s:5:"zh_CN";a:8:{s:8:"language";s:5:"zh_CN";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-17 03:29:01";s:12:"english_name";s:15:"Chinese (China)";s:11:"native_name";s:12:"简体中文";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/zh_CN.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"继续";}}}', 'yes'),
(420, '_site_transient_timeout_browser_beef5b45b94c7d3e4dc5d8e6679fad16', '1473642656', 'yes'),
(421, '_site_transient_browser_beef5b45b94c7d3e4dc5d8e6679fad16', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"52.0.2743.116";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(488, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1473099060;s:7:"checked";a:4:{s:8:"poseidon";s:5:"1.1.1";s:13:"twentyfifteen";s:3:"1.5";s:14:"twentyfourteen";s:3:"1.8";s:13:"twentysixteen";s:3:"1.2";}s:8:"response";a:2:{s:13:"twentyfifteen";a:4:{s:5:"theme";s:13:"twentyfifteen";s:11:"new_version";s:3:"1.6";s:3:"url";s:43:"https://wordpress.org/themes/twentyfifteen/";s:7:"package";s:59:"https://downloads.wordpress.org/theme/twentyfifteen.1.6.zip";}s:13:"twentysixteen";a:4:{s:5:"theme";s:13:"twentysixteen";s:11:"new_version";s:3:"1.3";s:3:"url";s:43:"https://wordpress.org/themes/twentysixteen/";s:7:"package";s:59:"https://downloads.wordpress.org/theme/twentysixteen.1.3.zip";}}s:12:"translations";a:0:{}}', 'yes'),
(502, 'category_children', 'a:6:{i:4;a:3:{i:0;i:12;i:1;i:13;i:2;i:14;}i:5;a:2:{i:0;i:15;i:1;i:16;}i:6;a:2:{i:0;i:17;i:1;i:18;}i:7;a:2:{i:0;i:19;i:1;i:20;}i:8;a:2:{i:0;i:21;i:1;i:22;}i:23;a:3:{i:0;i:24;i:1;i:25;i:2;i:26;}}', 'yes'),
(507, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1473099913', 'yes'),
(508, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'a:100:{s:6:"widget";a:3:{s:4:"name";s:6:"widget";s:4:"slug";s:6:"widget";s:5:"count";s:4:"5981";}s:4:"post";a:3:{s:4:"name";s:4:"Post";s:4:"slug";s:4:"post";s:5:"count";s:4:"3695";}s:6:"plugin";a:3:{s:4:"name";s:6:"plugin";s:4:"slug";s:6:"plugin";s:5:"count";s:4:"3648";}s:5:"admin";a:3:{s:4:"name";s:5:"admin";s:4:"slug";s:5:"admin";s:5:"count";s:4:"3163";}s:5:"posts";a:3:{s:4:"name";s:5:"posts";s:4:"slug";s:5:"posts";s:5:"count";s:4:"2824";}s:9:"shortcode";a:3:{s:4:"name";s:9:"shortcode";s:4:"slug";s:9:"shortcode";s:5:"count";s:4:"2439";}s:7:"sidebar";a:3:{s:4:"name";s:7:"sidebar";s:4:"slug";s:7:"sidebar";s:5:"count";s:4:"2240";}s:6:"google";a:3:{s:4:"name";s:6:"google";s:4:"slug";s:6:"google";s:5:"count";s:4:"2110";}s:7:"twitter";a:3:{s:4:"name";s:7:"twitter";s:4:"slug";s:7:"twitter";s:5:"count";s:4:"2070";}s:4:"page";a:3:{s:4:"name";s:4:"page";s:4:"slug";s:4:"page";s:5:"count";s:4:"2060";}s:6:"images";a:3:{s:4:"name";s:6:"images";s:4:"slug";s:6:"images";s:5:"count";s:4:"2009";}s:8:"comments";a:3:{s:4:"name";s:8:"comments";s:4:"slug";s:8:"comments";s:5:"count";s:4:"1949";}s:5:"image";a:3:{s:4:"name";s:5:"image";s:4:"slug";s:5:"image";s:5:"count";s:4:"1883";}s:11:"woocommerce";a:3:{s:4:"name";s:11:"woocommerce";s:4:"slug";s:11:"woocommerce";s:5:"count";s:4:"1814";}s:8:"facebook";a:3:{s:4:"name";s:8:"Facebook";s:4:"slug";s:8:"facebook";s:5:"count";s:4:"1717";}s:3:"seo";a:3:{s:4:"name";s:3:"seo";s:4:"slug";s:3:"seo";s:5:"count";s:4:"1600";}s:9:"wordpress";a:3:{s:4:"name";s:9:"wordpress";s:4:"slug";s:9:"wordpress";s:5:"count";s:4:"1559";}s:6:"social";a:3:{s:4:"name";s:6:"social";s:4:"slug";s:6:"social";s:5:"count";s:4:"1428";}s:7:"gallery";a:3:{s:4:"name";s:7:"gallery";s:4:"slug";s:7:"gallery";s:5:"count";s:4:"1337";}s:5:"links";a:3:{s:4:"name";s:5:"links";s:4:"slug";s:5:"links";s:5:"count";s:4:"1293";}s:5:"email";a:3:{s:4:"name";s:5:"email";s:4:"slug";s:5:"email";s:5:"count";s:4:"1252";}s:7:"widgets";a:3:{s:4:"name";s:7:"widgets";s:4:"slug";s:7:"widgets";s:5:"count";s:4:"1123";}s:5:"pages";a:3:{s:4:"name";s:5:"pages";s:4:"slug";s:5:"pages";s:5:"count";s:4:"1110";}s:6:"jquery";a:3:{s:4:"name";s:6:"jquery";s:4:"slug";s:6:"jquery";s:5:"count";s:4:"1014";}s:9:"ecommerce";a:3:{s:4:"name";s:9:"ecommerce";s:4:"slug";s:9:"ecommerce";s:5:"count";s:4:"1009";}s:5:"media";a:3:{s:4:"name";s:5:"media";s:4:"slug";s:5:"media";s:5:"count";s:4:"1008";}s:5:"video";a:3:{s:4:"name";s:5:"video";s:4:"slug";s:5:"video";s:5:"count";s:3:"942";}s:5:"login";a:3:{s:4:"name";s:5:"login";s:4:"slug";s:5:"login";s:5:"count";s:3:"932";}s:7:"content";a:3:{s:4:"name";s:7:"content";s:4:"slug";s:7:"content";s:5:"count";s:3:"926";}s:3:"rss";a:3:{s:4:"name";s:3:"rss";s:4:"slug";s:3:"rss";s:5:"count";s:3:"919";}s:4:"ajax";a:3:{s:4:"name";s:4:"AJAX";s:4:"slug";s:4:"ajax";s:5:"count";s:3:"919";}s:10:"responsive";a:3:{s:4:"name";s:10:"responsive";s:4:"slug";s:10:"responsive";s:5:"count";s:3:"862";}s:10:"javascript";a:3:{s:4:"name";s:10:"javascript";s:4:"slug";s:10:"javascript";s:5:"count";s:3:"849";}s:10:"buddypress";a:3:{s:4:"name";s:10:"buddypress";s:4:"slug";s:10:"buddypress";s:5:"count";s:3:"807";}s:8:"security";a:3:{s:4:"name";s:8:"security";s:4:"slug";s:8:"security";s:5:"count";s:3:"800";}s:10:"e-commerce";a:3:{s:4:"name";s:10:"e-commerce";s:4:"slug";s:10:"e-commerce";s:5:"count";s:3:"794";}s:7:"youtube";a:3:{s:4:"name";s:7:"youtube";s:4:"slug";s:7:"youtube";s:5:"count";s:3:"777";}s:5:"share";a:3:{s:4:"name";s:5:"Share";s:4:"slug";s:5:"share";s:5:"count";s:3:"771";}s:5:"photo";a:3:{s:4:"name";s:5:"photo";s:4:"slug";s:5:"photo";s:5:"count";s:3:"767";}s:4:"spam";a:3:{s:4:"name";s:4:"spam";s:4:"slug";s:4:"spam";s:5:"count";s:3:"766";}s:4:"feed";a:3:{s:4:"name";s:4:"feed";s:4:"slug";s:4:"feed";s:5:"count";s:3:"755";}s:4:"link";a:3:{s:4:"name";s:4:"link";s:4:"slug";s:4:"link";s:5:"count";s:3:"749";}s:8:"category";a:3:{s:4:"name";s:8:"category";s:4:"slug";s:8:"category";s:5:"count";s:3:"721";}s:9:"analytics";a:3:{s:4:"name";s:9:"analytics";s:4:"slug";s:9:"analytics";s:5:"count";s:3:"716";}s:5:"embed";a:3:{s:4:"name";s:5:"embed";s:4:"slug";s:5:"embed";s:5:"count";s:3:"702";}s:3:"css";a:3:{s:4:"name";s:3:"CSS";s:4:"slug";s:3:"css";s:5:"count";s:3:"699";}s:6:"photos";a:3:{s:4:"name";s:6:"photos";s:4:"slug";s:6:"photos";s:5:"count";s:3:"697";}s:4:"form";a:3:{s:4:"name";s:4:"form";s:4:"slug";s:4:"form";s:5:"count";s:3:"697";}s:6:"slider";a:3:{s:4:"name";s:6:"slider";s:4:"slug";s:6:"slider";s:5:"count";s:3:"693";}s:6:"search";a:3:{s:4:"name";s:6:"search";s:4:"slug";s:6:"search";s:5:"count";s:3:"679";}s:6:"custom";a:3:{s:4:"name";s:6:"custom";s:4:"slug";s:6:"custom";s:5:"count";s:3:"667";}s:9:"slideshow";a:3:{s:4:"name";s:9:"slideshow";s:4:"slug";s:9:"slideshow";s:5:"count";s:3:"648";}s:5:"stats";a:3:{s:4:"name";s:5:"stats";s:4:"slug";s:5:"stats";s:5:"count";s:3:"625";}s:6:"button";a:3:{s:4:"name";s:6:"button";s:4:"slug";s:6:"button";s:5:"count";s:3:"625";}s:4:"menu";a:3:{s:4:"name";s:4:"menu";s:4:"slug";s:4:"menu";s:5:"count";s:3:"616";}s:5:"theme";a:3:{s:4:"name";s:5:"theme";s:4:"slug";s:5:"theme";s:5:"count";s:3:"606";}s:9:"dashboard";a:3:{s:4:"name";s:9:"dashboard";s:4:"slug";s:9:"dashboard";s:5:"count";s:3:"603";}s:7:"comment";a:3:{s:4:"name";s:7:"comment";s:4:"slug";s:7:"comment";s:5:"count";s:3:"601";}s:4:"tags";a:3:{s:4:"name";s:4:"tags";s:4:"slug";s:4:"tags";s:5:"count";s:3:"598";}s:10:"categories";a:3:{s:4:"name";s:10:"categories";s:4:"slug";s:10:"categories";s:5:"count";s:3:"590";}s:6:"mobile";a:3:{s:4:"name";s:6:"mobile";s:4:"slug";s:6:"mobile";s:5:"count";s:3:"586";}s:10:"statistics";a:3:{s:4:"name";s:10:"statistics";s:4:"slug";s:10:"statistics";s:5:"count";s:3:"575";}s:3:"ads";a:3:{s:4:"name";s:3:"ads";s:4:"slug";s:3:"ads";s:5:"count";s:3:"573";}s:6:"editor";a:3:{s:4:"name";s:6:"editor";s:4:"slug";s:6:"editor";s:5:"count";s:3:"562";}s:4:"user";a:3:{s:4:"name";s:4:"user";s:4:"slug";s:4:"user";s:5:"count";s:3:"562";}s:5:"users";a:3:{s:4:"name";s:5:"users";s:4:"slug";s:5:"users";s:5:"count";s:3:"546";}s:4:"list";a:3:{s:4:"name";s:4:"list";s:4:"slug";s:4:"list";s:5:"count";s:3:"543";}s:12:"social-media";a:3:{s:4:"name";s:12:"social media";s:4:"slug";s:12:"social-media";s:5:"count";s:3:"540";}s:7:"plugins";a:3:{s:4:"name";s:7:"plugins";s:4:"slug";s:7:"plugins";s:5:"count";s:3:"526";}s:12:"contact-form";a:3:{s:4:"name";s:12:"contact form";s:4:"slug";s:12:"contact-form";s:5:"count";s:3:"525";}s:6:"simple";a:3:{s:4:"name";s:6:"simple";s:4:"slug";s:6:"simple";s:5:"count";s:3:"520";}s:9:"affiliate";a:3:{s:4:"name";s:9:"affiliate";s:4:"slug";s:9:"affiliate";s:5:"count";s:3:"518";}s:9:"multisite";a:3:{s:4:"name";s:9:"multisite";s:4:"slug";s:9:"multisite";s:5:"count";s:3:"518";}s:7:"picture";a:3:{s:4:"name";s:7:"picture";s:4:"slug";s:7:"picture";s:5:"count";s:3:"516";}s:7:"contact";a:3:{s:4:"name";s:7:"contact";s:4:"slug";s:7:"contact";s:5:"count";s:3:"489";}s:3:"api";a:3:{s:4:"name";s:3:"api";s:4:"slug";s:3:"api";s:5:"count";s:3:"479";}s:9:"marketing";a:3:{s:4:"name";s:9:"marketing";s:4:"slug";s:9:"marketing";s:5:"count";s:3:"472";}s:4:"shop";a:3:{s:4:"name";s:4:"shop";s:4:"slug";s:4:"shop";s:5:"count";s:3:"472";}s:8:"pictures";a:3:{s:4:"name";s:8:"pictures";s:4:"slug";s:8:"pictures";s:5:"count";s:3:"464";}s:3:"url";a:3:{s:4:"name";s:3:"url";s:4:"slug";s:3:"url";s:5:"count";s:3:"461";}s:10:"navigation";a:3:{s:4:"name";s:10:"navigation";s:4:"slug";s:10:"navigation";s:5:"count";s:3:"453";}s:4:"html";a:3:{s:4:"name";s:4:"html";s:4:"slug";s:4:"html";s:5:"count";s:3:"446";}s:6:"events";a:3:{s:4:"name";s:6:"events";s:4:"slug";s:6:"events";s:5:"count";s:3:"441";}s:10:"newsletter";a:3:{s:4:"name";s:10:"newsletter";s:4:"slug";s:10:"newsletter";s:5:"count";s:3:"435";}s:8:"tracking";a:3:{s:4:"name";s:8:"tracking";s:4:"slug";s:8:"tracking";s:5:"count";s:3:"428";}s:8:"calendar";a:3:{s:4:"name";s:8:"calendar";s:4:"slug";s:8:"calendar";s:5:"count";s:3:"428";}s:4:"meta";a:3:{s:4:"name";s:4:"meta";s:4:"slug";s:4:"meta";s:5:"count";s:3:"426";}s:10:"shortcodes";a:3:{s:4:"name";s:10:"shortcodes";s:4:"slug";s:10:"shortcodes";s:5:"count";s:3:"425";}s:5:"flash";a:3:{s:4:"name";s:5:"flash";s:4:"slug";s:5:"flash";s:5:"count";s:3:"422";}s:4:"news";a:3:{s:4:"name";s:4:"News";s:4:"slug";s:4:"news";s:5:"count";s:3:"415";}s:3:"tag";a:3:{s:4:"name";s:3:"tag";s:4:"slug";s:3:"tag";s:5:"count";s:3:"415";}s:11:"advertising";a:3:{s:4:"name";s:11:"advertising";s:4:"slug";s:11:"advertising";s:5:"count";s:3:"411";}s:6:"upload";a:3:{s:4:"name";s:6:"upload";s:4:"slug";s:6:"upload";s:5:"count";s:3:"408";}s:9:"thumbnail";a:3:{s:4:"name";s:9:"thumbnail";s:4:"slug";s:9:"thumbnail";s:5:"count";s:3:"407";}s:7:"sharing";a:3:{s:4:"name";s:7:"sharing";s:4:"slug";s:7:"sharing";s:5:"count";s:3:"406";}s:6:"paypal";a:3:{s:4:"name";s:6:"paypal";s:4:"slug";s:6:"paypal";s:5:"count";s:3:"406";}s:8:"lightbox";a:3:{s:4:"name";s:8:"lightbox";s:4:"slug";s:8:"lightbox";s:5:"count";s:3:"405";}s:7:"profile";a:3:{s:4:"name";s:7:"profile";s:4:"slug";s:7:"profile";s:5:"count";s:3:"404";}s:8:"linkedin";a:3:{s:4:"name";s:8:"linkedin";s:4:"slug";s:8:"linkedin";s:5:"count";s:3:"401";}s:12:"notification";a:3:{s:4:"name";s:12:"notification";s:4:"slug";s:12:"notification";s:5:"count";s:3:"401";}}', 'yes'),
(513, 'ngg_run_freemius', '1', 'yes'),
(514, 'fs_active_plugins', 'O:8:"stdClass":0:{}', 'yes'),
(515, 'fs_debug_mode', '', 'yes'),
(516, 'fs_accounts', 'a:11:{s:11:"plugin_data";a:1:{s:15:"nextgen-gallery";a:16:{s:16:"plugin_main_file";O:8:"stdClass":1:{s:4:"path";s:76:"D:/xampp/htdocs/namlimxanh1/wp-content/plugins/nextgen-gallery/nggallery.php";}s:17:"install_timestamp";i:1473089283;s:16:"sdk_last_version";N;s:11:"sdk_version";s:7:"1.1.8.1";s:16:"sdk_upgrade_mode";b:1;s:18:"sdk_downgrade_mode";b:0;s:19:"plugin_last_version";N;s:14:"plugin_version";s:6:"2.1.50";s:19:"plugin_upgrade_mode";b:1;s:21:"plugin_downgrade_mode";b:0;s:17:"connectivity_test";a:6:{s:12:"is_connected";b:1;s:4:"host";s:9:"localhost";s:9:"server_ip";s:3:"::1";s:9:"is_active";b:1;s:9:"timestamp";i:1473089283;s:7:"version";s:6:"2.1.50";}s:21:"is_plugin_new_install";b:1;s:14:"has_trial_plan";b:1;s:22:"install_sync_timestamp";i:1473093852;s:20:"activation_timestamp";i:1473089319;s:15:"prev_is_premium";b:0;}}s:13:"file_slug_map";a:1:{s:29:"nextgen-gallery/nggallery.php";s:15:"nextgen-gallery";}s:7:"plugins";a:1:{s:15:"nextgen-gallery";O:9:"FS_Plugin":15:{s:16:"parent_plugin_id";N;s:5:"title";s:15:"NextGEN Gallery";s:4:"slug";s:15:"nextgen-gallery";s:4:"file";s:29:"nextgen-gallery/nggallery.php";s:7:"version";s:6:"2.1.50";s:11:"auto_update";N;s:4:"info";N;s:10:"is_premium";b:0;s:7:"is_live";b:1;s:10:"public_key";s:32:"pk_009356711cd548837f074e1ef60a4";s:10:"secret_key";N;s:2:"id";s:3:"266";s:7:"updated";N;s:7:"created";N;s:22:"\0FS_Entity\0_is_updated";b:0;}}s:9:"unique_id";s:32:"4e06745f0845b42bbc9690a3b409f55f";s:5:"plans";a:1:{s:15:"nextgen-gallery";a:1:{i:0;O:14:"FS_Plugin_Plan":21:{s:9:"plugin_id";s:4:"MjY2";s:4:"name";s:8:"ZnJlZQ==";s:5:"title";s:8:"RnJlZQ==";s:11:"description";N;s:17:"is_free_localhost";s:4:"MQ==";s:17:"is_block_features";s:4:"MQ==";s:12:"license_type";s:4:"MA==";s:16:"is_https_support";s:0:"";s:12:"trial_period";N;s:23:"is_require_subscription";s:0:"";s:10:"support_kb";N;s:13:"support_forum";N;s:13:"support_email";N;s:13:"support_phone";N;s:13:"support_skype";N;s:18:"is_success_manager";s:0:"";s:11:"is_featured";s:0:"";s:2:"id";s:4:"Mzc0";s:7:"updated";N;s:7:"created";s:28:"MjAxNi0wNC0yNCAxNToyNzo0Nw==";s:22:"\0FS_Entity\0_is_updated";b:0;}}}s:5:"sites";a:1:{s:15:"nextgen-gallery";O:7:"FS_Site":22:{s:4:"slug";s:15:"nextgen-gallery";s:7:"site_id";s:6:"935011";s:9:"plugin_id";s:3:"266";s:7:"user_id";s:6:"157519";s:5:"title";s:0:"";s:3:"url";s:28:"http://localhost/namlimxanh1";s:7:"version";s:6:"2.1.50";s:8:"language";s:2:"vi";s:7:"charset";s:5:"UTF-8";s:16:"platform_version";s:5:"4.5.3";s:28:"programming_language_version";s:5:"5.6.8";s:4:"plan";O:14:"FS_Plugin_Plan":21:{s:9:"plugin_id";s:4:"MjY2";s:4:"name";s:8:"ZnJlZQ==";s:5:"title";s:8:"RnJlZQ==";s:11:"description";N;s:17:"is_free_localhost";s:4:"MQ==";s:17:"is_block_features";s:4:"MQ==";s:12:"license_type";s:4:"MA==";s:16:"is_https_support";s:0:"";s:12:"trial_period";N;s:23:"is_require_subscription";s:0:"";s:10:"support_kb";N;s:13:"support_forum";N;s:13:"support_email";N;s:13:"support_phone";N;s:13:"support_skype";N;s:18:"is_success_manager";s:0:"";s:11:"is_featured";s:0:"";s:2:"id";s:4:"Mzc0";s:7:"updated";N;s:7:"created";s:28:"MjAxNi0wNC0yNCAxNToyNzo0Nw==";s:22:"\0FS_Entity\0_is_updated";b:0;}s:10:"license_id";N;s:13:"trial_plan_id";N;s:10:"trial_ends";N;s:10:"is_premium";b:0;s:10:"public_key";s:32:"pk_c18eb6b7271d1a1d873a43c33f380";s:10:"secret_key";s:32:"sk_nh79]7>Gp^PEZq9-:&LG*$%&xZ_c*";s:2:"id";s:6:"182186";s:7:"updated";N;s:7:"created";s:19:"2016-09-05 15:28:36";s:22:"\0FS_Entity\0_is_updated";b:0;}}s:11:"all_plugins";O:8:"stdClass":3:{s:9:"timestamp";i:1473093852;s:3:"md5";s:32:"14c4a36db88dfe3f3f240d7ad7aa7123";s:7:"plugins";a:6:{s:19:"akismet/akismet.php";a:5:{s:4:"slug";s:7:"akismet";s:7:"version";s:6:"3.1.11";s:5:"title";s:7:"Akismet";s:9:"is_active";b:0;s:14:"is_uninstalled";b:0;}s:9:"hello.php";a:5:{s:4:"slug";s:11:"hello-dolly";s:7:"version";s:3:"1.6";s:5:"title";s:11:"Hello Dolly";s:9:"is_active";b:0;s:14:"is_uninstalled";b:0;}s:16:"hello_widget.php";a:5:{s:4:"slug";s:1:".";s:7:"version";s:3:"1.0";s:5:"title";s:11:"Test Widget";s:9:"is_active";b:0;s:14:"is_uninstalled";b:0;}s:29:"nextgen-gallery/nggallery.php";a:5:{s:4:"slug";s:15:"nextgen-gallery";s:7:"version";s:6:"2.1.50";s:5:"title";s:15:"NextGEN Gallery";s:9:"is_active";b:1;s:14:"is_uninstalled";b:0;}s:42:"wonderplugin-slider/wonderpluginslider.php";a:5:{s:4:"slug";s:19:"wonderplugin-slider";s:7:"version";s:3:"7.7";s:5:"title";s:24:"WonderPlugin Slider Free";s:9:"is_active";b:1;s:14:"is_uninstalled";b:0;}s:51:"youtube-channel-gallery/youtube-channel-gallery.php";a:5:{s:4:"slug";s:23:"youtube-channel-gallery";s:7:"version";s:3:"2.4";s:5:"title";s:23:"Youtube Channel Gallery";s:9:"is_active";b:1;s:14:"is_uninstalled";b:0;}}}s:10:"all_themes";O:8:"stdClass":3:{s:9:"timestamp";i:1473093852;s:3:"md5";s:32:"33464c4ff445e33456efabe35dbd0dc8";s:6:"themes";a:4:{s:8:"poseidon";a:5:{s:4:"slug";s:8:"poseidon";s:7:"version";s:5:"1.1.1";s:5:"title";s:8:"Poseidon";s:9:"is_active";b:0;s:14:"is_uninstalled";b:0;}s:13:"twentyfifteen";a:5:{s:4:"slug";s:13:"twentyfifteen";s:7:"version";s:3:"1.5";s:5:"title";s:14:"Twenty Fifteen";s:9:"is_active";b:0;s:14:"is_uninstalled";b:0;}s:14:"twentyfourteen";a:5:{s:4:"slug";s:14:"twentyfourteen";s:7:"version";s:3:"1.8";s:5:"title";s:15:"Twenty Fourteen";s:9:"is_active";b:1;s:14:"is_uninstalled";b:0;}s:13:"twentysixteen";a:5:{s:4:"slug";s:13:"twentysixteen";s:7:"version";s:3:"1.2";s:5:"title";s:14:"Twenty Sixteen";s:9:"is_active";b:0;s:14:"is_uninstalled";b:0;}}}s:5:"users";a:1:{i:157519;O:7:"FS_User":12:{s:5:"email";s:20:"uocth.qthl@gmail.com";s:5:"first";s:5:"admin";s:4:"last";s:0:"";s:11:"is_verified";b:0;s:11:"customer_id";N;s:5:"gross";i:0;s:10:"public_key";s:32:"pk_83cc3743ebf789e8cb08578d3ec3b";s:10:"secret_key";s:32:"sk_hQg%{iH[+QZkreDuBjAyJbZ&AehXZ";s:2:"id";s:6:"157519";s:7:"updated";N;s:7:"created";s:19:"2016-09-05 15:28:36";s:22:"\0FS_Entity\0_is_updated";b:0;}}s:8:"licenses";a:1:{s:15:"nextgen-gallery";a:1:{i:157519;b:0;}}s:13:"admin_notices";a:1:{s:15:"nextgen-gallery";a:0:{}}}', 'yes'),
(517, 'fs_options', 'a:1:{s:14:"api_force_http";b:1;}', 'yes'),
(518, 'fs_api_cache', 'a:0:{}', 'yes'),
(520, 'widget_ngg-images', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(521, 'widget_ngg-mrssw', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(522, 'widget_slideshow', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(523, 'ngg_transient_groups', 'a:6:{s:9:"__counter";i:6;s:3:"MVC";a:2:{s:2:"id";i:2;s:7:"enabled";b:1;}s:15:"col_in_wp_posts";a:2:{s:2:"id";i:3;s:7:"enabled";b:1;}s:21:"col_in_wp_ngg_gallery";a:2:{s:2:"id";i:4;s:7:"enabled";b:1;}s:22:"col_in_wp_ngg_pictures";a:2:{s:2:"id";i:5;s:7:"enabled";b:1;}s:27:"displayed_gallery_rendering";a:2:{s:2:"id";i:6;s:7:"enabled";b:1;}}', 'yes'),
(524, 'ngg_options', 'a:70:{s:11:"gallerypath";s:19:"wp-content\\gallery\\";s:11:"wpmuCSSfile";s:13:"nggallery.css";s:9:"wpmuStyle";b:0;s:9:"wpmuRoles";b:0;s:16:"wpmuImportFolder";b:0;s:13:"wpmuZipUpload";b:0;s:14:"wpmuQuotaCheck";b:0;s:17:"datamapper_driver";s:22:"custom_post_datamapper";s:21:"gallerystorage_driver";s:25:"ngglegacy_gallery_storage";s:20:"maximum_entity_count";i:500;s:17:"router_param_slug";s:9:"nggallery";s:22:"router_param_separator";s:2:"--";s:19:"router_param_prefix";s:0:"";s:9:"deleteImg";b:1;s:9:"swfUpload";b:1;s:13:"usePermalinks";b:0;s:13:"permalinkSlug";s:9:"nggallery";s:14:"graphicLibrary";s:2:"gd";s:14:"imageMagickDir";s:15:"/usr/local/bin/";s:11:"useMediaRSS";b:0;s:18:"galleries_in_feeds";b:0;s:12:"activateTags";i:0;s:10:"appendType";s:4:"tags";s:9:"maxImages";i:7;s:14:"relatedHeading";s:24:"<h3>Related Images:</h3>";s:10:"thumbwidth";i:240;s:11:"thumbheight";i:160;s:8:"thumbfix";b:1;s:12:"thumbquality";i:100;s:8:"imgWidth";i:800;s:9:"imgHeight";i:600;s:10:"imgQuality";i:100;s:9:"imgBackup";b:1;s:13:"imgAutoResize";b:0;s:9:"galImages";s:2:"20";s:17:"galPagedGalleries";i:0;s:10:"galColumns";i:0;s:12:"galShowSlide";b:1;s:12:"galTextSlide";s:16:"[Show slideshow]";s:14:"galTextGallery";s:17:"[Show thumbnails]";s:12:"galShowOrder";s:7:"gallery";s:7:"galSort";s:9:"sortorder";s:10:"galSortDir";s:3:"ASC";s:10:"galNoPages";b:1;s:13:"galImgBrowser";i:0;s:12:"galHiddenImg";i:0;s:10:"galAjaxNav";i:0;s:11:"thumbEffect";s:8:"fancybox";s:9:"thumbCode";s:41:"class="ngg-fancybox" rel="%GALLERY_NAME%"";s:18:"thumbEffectContext";s:14:"nextgen_images";s:5:"wmPos";s:8:"botRight";s:6:"wmXpos";i:5;s:6:"wmYpos";i:5;s:6:"wmType";s:5:"image";s:6:"wmPath";s:0:"";s:6:"wmFont";s:9:"arial.ttf";s:6:"wmSize";i:10;s:6:"wmText";s:14:"Nấm lim xanh";s:7:"wmColor";s:6:"000000";s:8:"wmOpaque";s:3:"100";s:7:"slideFX";s:4:"fade";s:7:"irWidth";i:600;s:8:"irHeight";i:400;s:12:"irRotatetime";i:10;s:11:"activateCSS";i:1;s:7:"CSSfile";s:13:"nggallery.css";s:28:"always_enable_frontend_logic";b:0;s:22:"dynamic_thumbnail_slug";s:13:"nextgen-image";s:23:"dynamic_stylesheet_slug";s:12:"nextgen-dcss";s:11:"installDate";i:1473089324;}', 'yes'),
(526, 'photocrati_auto_update_admin_update_list', '', 'yes'),
(527, 'photocrati_auto_update_admin_check_date', '', 'yes'),
(528, 'ngg_db_version', '1.8.1', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(531, 'pope_module_list', 'a:34:{i:0;s:17:"photocrati-fs|0.5";i:1;s:19:"photocrati-i18n|0.1";i:2;s:25:"photocrati-validation|0.1";i:3;s:21:"photocrati-router|0.7";i:4;s:32:"photocrati-wordpress_routing|0.7";i:5;s:23:"photocrati-security|0.2";i:6;s:31:"photocrati-nextgen_settings|0.9";i:7;s:18:"photocrati-mvc|0.7";i:8;s:19:"photocrati-ajax|0.9";i:9;s:26:"photocrati-datamapper|0.10";i:10;s:30:"photocrati-nextgen-legacy|0.16";i:11;s:28:"photocrati-nextgen-data|0.12";i:12;s:33:"photocrati-dynamic_thumbnails|0.6";i:13;s:29:"photocrati-nextgen_admin|0.10";i:14;s:39:"photocrati-nextgen_gallery_display|0.14";i:15;s:34:"photocrati-frame_communication|0.4";i:16;s:30:"photocrati-attach_to_post|0.14";i:17;s:38:"photocrati-nextgen_addgallery_page|0.7";i:18;s:36:"photocrati-nextgen_other_options|0.8";i:19;s:33:"photocrati-nextgen_pagination|0.3";i:20;s:33:"photocrati-dynamic_stylesheet|0.3";i:21;s:34:"photocrati-nextgen_pro_upgrade|0.5";i:22;s:20:"photocrati-cache|0.2";i:23;s:24:"photocrati-lightbox|0.16";i:24;s:38:"photocrati-nextgen_basic_templates|0.6";i:25;s:37:"photocrati-nextgen_basic_gallery|0.15";i:26;s:42:"photocrati-nextgen_basic_imagebrowser|0.11";i:27;s:39:"photocrati-nextgen_basic_singlepic|0.12";i:28;s:38:"photocrati-nextgen_basic_tagcloud|0.11";i:29;s:35:"photocrati-nextgen_basic_album|0.13";i:30;s:21:"photocrati-widget|0.5";i:31;s:33:"photocrati-third_party_compat|0.4";i:32;s:29:"photocrati-nextgen_xmlrpc|0.5";i:33;s:20:"photocrati-wpcli|0.1";}', 'yes'),
(618, '_transient_timeout_2__974818834', '1473095653', 'no'),
(619, '_transient_2__974818834', '{"photocrati-ajax#ajax.min.js||http:\\/\\/localhost\\/namlimxanh1\\/wp-content\\/plugins|http:\\/\\/localhost\\/namlimxanh1\\/wp-content\\/mu-plugins|http:\\/\\/localhost\\/namlimxanh1\\/wp-content\\/themes\\/twentyfourteen|http:\\/\\/localhost\\/namlimxanh1\\/wp-content\\/themes\\/twentyfourteen":"http:\\/\\/localhost\\/namlimxanh1\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/ajax\\/static\\/ajax.min.js","photocrati-nextgen_admin#gritter\\/gritter.min.js||http:\\/\\/localhost\\/namlimxanh1\\/wp-content\\/plugins|http:\\/\\/localhost\\/namlimxanh1\\/wp-content\\/mu-plugins|http:\\/\\/localhost\\/namlimxanh1\\/wp-content\\/themes\\/twentyfourteen|http:\\/\\/localhost\\/namlimxanh1\\/wp-content\\/themes\\/twentyfourteen":"http:\\/\\/localhost\\/namlimxanh1\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_admin\\/static\\/gritter\\/gritter.min.js","photocrati-nextgen_admin#gritter\\/css\\/gritter.css||http:\\/\\/localhost\\/namlimxanh1\\/wp-content\\/plugins|http:\\/\\/localhost\\/namlimxanh1\\/wp-content\\/mu-plugins|http:\\/\\/localhost\\/namlimxanh1\\/wp-content\\/themes\\/twentyfourteen|http:\\/\\/localhost\\/namlimxanh1\\/wp-content\\/themes\\/twentyfourteen":"http:\\/\\/localhost\\/namlimxanh1\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_admin\\/static\\/gritter\\/css\\/gritter.min.css","photocrati-nextgen_admin#ngg_progressbar.js||http:\\/\\/localhost\\/namlimxanh1\\/wp-content\\/plugins|http:\\/\\/localhost\\/namlimxanh1\\/wp-content\\/mu-plugins|http:\\/\\/localhost\\/namlimxanh1\\/wp-content\\/themes\\/twentyfourteen|http:\\/\\/localhost\\/namlimxanh1\\/wp-content\\/themes\\/twentyfourteen":"http:\\/\\/localhost\\/namlimxanh1\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_admin\\/static\\/ngg_progressbar.min.js","photocrati-nextgen_admin#ngg_progressbar.css||http:\\/\\/localhost\\/namlimxanh1\\/wp-content\\/plugins|http:\\/\\/localhost\\/namlimxanh1\\/wp-content\\/mu-plugins|http:\\/\\/localhost\\/namlimxanh1\\/wp-content\\/themes\\/twentyfourteen|http:\\/\\/localhost\\/namlimxanh1\\/wp-content\\/themes\\/twentyfourteen":"http:\\/\\/localhost\\/namlimxanh1\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_admin\\/static\\/ngg_progressbar.min.css","photocrati-nextgen_admin#select2\\/select2.css||http:\\/\\/localhost\\/namlimxanh1\\/wp-content\\/plugins|http:\\/\\/localhost\\/namlimxanh1\\/wp-content\\/mu-plugins|http:\\/\\/localhost\\/namlimxanh1\\/wp-content\\/themes\\/twentyfourteen|http:\\/\\/localhost\\/namlimxanh1\\/wp-content\\/themes\\/twentyfourteen":"http:\\/\\/localhost\\/namlimxanh1\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_admin\\/static\\/select2\\/select2.min.css","photocrati-nextgen_admin#select2\\/select2.modded.js||http:\\/\\/localhost\\/namlimxanh1\\/wp-content\\/plugins|http:\\/\\/localhost\\/namlimxanh1\\/wp-content\\/mu-plugins|http:\\/\\/localhost\\/namlimxanh1\\/wp-content\\/themes\\/twentyfourteen|http:\\/\\/localhost\\/namlimxanh1\\/wp-content\\/themes\\/twentyfourteen":"http:\\/\\/localhost\\/namlimxanh1\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_admin\\/static\\/select2\\/select2.modded.min.js","photocrati-nextgen_admin#jquery.nextgen_radio_toggle.js||http:\\/\\/localhost\\/namlimxanh1\\/wp-content\\/plugins|http:\\/\\/localhost\\/namlimxanh1\\/wp-content\\/mu-plugins|http:\\/\\/localhost\\/namlimxanh1\\/wp-content\\/themes\\/twentyfourteen|http:\\/\\/localhost\\/namlimxanh1\\/wp-content\\/themes\\/twentyfourteen":"http:\\/\\/localhost\\/namlimxanh1\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_admin\\/static\\/jquery.nextgen_radio_toggle.min.js","photocrati-nextgen_admin#jquery-ui\\/jquery-ui-1.10.4.custom.css||http:\\/\\/localhost\\/namlimxanh1\\/wp-content\\/plugins|http:\\/\\/localhost\\/namlimxanh1\\/wp-content\\/mu-plugins|http:\\/\\/localhost\\/namlimxanh1\\/wp-content\\/themes\\/twentyfourteen|http:\\/\\/localhost\\/namlimxanh1\\/wp-content\\/themes\\/twentyfourteen":"http:\\/\\/localhost\\/namlimxanh1\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_admin\\/static\\/jquery-ui\\/jquery-ui-1.10.4.custom.min.css","photocrati-frame_communication#frame_event_publisher.js||http:\\/\\/localhost\\/namlimxanh1\\/wp-content\\/plugins|http:\\/\\/localhost\\/namlimxanh1\\/wp-content\\/mu-plugins|http:\\/\\/localhost\\/namlimxanh1\\/wp-content\\/themes\\/twentyfourteen|http:\\/\\/localhost\\/namlimxanh1\\/wp-content\\/themes\\/twentyfourteen":"http:\\/\\/localhost\\/namlimxanh1\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/frame_communication\\/static\\/frame_event_publisher.min.js","photocrati-nextgen_gallery_display#nextgen_gallery_display_settings.js||http:\\/\\/localhost\\/namlimxanh1\\/wp-content\\/plugins|http:\\/\\/localhost\\/namlimxanh1\\/wp-content\\/mu-plugins|http:\\/\\/localhost\\/namlimxanh1\\/wp-content\\/themes\\/twentyfourteen|http:\\/\\/localhost\\/namlimxanh1\\/wp-content\\/themes\\/twentyfourteen":"http:\\/\\/localhost\\/namlimxanh1\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_gallery_display\\/static\\/nextgen_gallery_display_settings.min.js","photocrati-nextgen_gallery_display#nextgen_gallery_display_settings.css||http:\\/\\/localhost\\/namlimxanh1\\/wp-content\\/plugins|http:\\/\\/localhost\\/namlimxanh1\\/wp-content\\/mu-plugins|http:\\/\\/localhost\\/namlimxanh1\\/wp-content\\/themes\\/twentyfourteen|http:\\/\\/localhost\\/namlimxanh1\\/wp-content\\/themes\\/twentyfourteen":"http:\\/\\/localhost\\/namlimxanh1\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_gallery_display\\/static\\/nextgen_gallery_display_settings.min.css","photocrati-nextgen_addgallery_page#browserplus-2.4.21.min.js||http:\\/\\/localhost\\/namlimxanh1\\/wp-content\\/plugins|http:\\/\\/localhost\\/namlimxanh1\\/wp-content\\/mu-plugins|http:\\/\\/localhost\\/namlimxanh1\\/wp-content\\/themes\\/twentyfourteen|http:\\/\\/localhost\\/namlimxanh1\\/wp-content\\/themes\\/twentyfourteen":"http:\\/\\/localhost\\/namlimxanh1\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_addgallery_page\\/static\\/browserplus-2.4.21.min.js","photocrati-nextgen_addgallery_page#plupload-2.1.1\\/moxie.min.js||http:\\/\\/localhost\\/namlimxanh1\\/wp-content\\/plugins|http:\\/\\/localhost\\/namlimxanh1\\/wp-content\\/mu-plugins|http:\\/\\/localhost\\/namlimxanh1\\/wp-content\\/themes\\/twentyfourteen|http:\\/\\/localhost\\/namlimxanh1\\/wp-content\\/themes\\/twentyfourteen":"http:\\/\\/localhost\\/namlimxanh1\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_addgallery_page\\/static\\/plupload-2.1.1\\/moxie.min.js","photocrati-nextgen_addgallery_page#plupload-2.1.1\\/plupload.dev.js||http:\\/\\/localhost\\/namlimxanh1\\/wp-content\\/plugins|http:\\/\\/localhost\\/namlimxanh1\\/wp-content\\/mu-plugins|http:\\/\\/localhost\\/namlimxanh1\\/wp-content\\/themes\\/twentyfourteen|http:\\/\\/localhost\\/namlimxanh1\\/wp-content\\/themes\\/twentyfourteen":"http:\\/\\/localhost\\/namlimxanh1\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_addgallery_page\\/static\\/plupload-2.1.1\\/plupload.dev.min.js","photocrati-nextgen_addgallery_page#plupload-2.1.1\\/jquery.plupload.queue\\/jquery.plupload.queue.min.js||http:\\/\\/localhost\\/namlimxanh1\\/wp-content\\/plugins|http:\\/\\/localhost\\/namlimxanh1\\/wp-content\\/mu-plugins|http:\\/\\/localhost\\/namlimxanh1\\/wp-content\\/themes\\/twentyfourteen|http:\\/\\/localhost\\/namlimxanh1\\/wp-content\\/themes\\/twentyfourteen":"http:\\/\\/localhost\\/namlimxanh1\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_addgallery_page\\/static\\/plupload-2.1.1\\/jquery.plupload.queue\\/jquery.plupload.queue.min.js","photocrati-nextgen_addgallery_page#plupload-2.1.1\\/jquery.plupload.queue\\/css\\/jquery.plupload.queue.css||http:\\/\\/localhost\\/namlimxanh1\\/wp-content\\/plugins|http:\\/\\/localhost\\/namlimxanh1\\/wp-content\\/mu-plugins|http:\\/\\/localhost\\/namlimxanh1\\/wp-content\\/themes\\/twentyfourteen|http:\\/\\/localhost\\/namlimxanh1\\/wp-content\\/themes\\/twentyfourteen":"http:\\/\\/localhost\\/namlimxanh1\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_addgallery_page\\/static\\/plupload-2.1.1\\/jquery.plupload.queue\\/css\\/jquery.plupload.queue.min.css","photocrati-nextgen_addgallery_page#styles.css||http:\\/\\/localhost\\/namlimxanh1\\/wp-content\\/plugins|http:\\/\\/localhost\\/namlimxanh1\\/wp-content\\/mu-plugins|http:\\/\\/localhost\\/namlimxanh1\\/wp-content\\/themes\\/twentyfourteen|http:\\/\\/localhost\\/namlimxanh1\\/wp-content\\/themes\\/twentyfourteen":"http:\\/\\/localhost\\/namlimxanh1\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_addgallery_page\\/static\\/styles.min.css","photocrati-nextgen_addgallery_page#jquery.filetree\\/jquery.filetree.js||http:\\/\\/localhost\\/namlimxanh1\\/wp-content\\/plugins|http:\\/\\/localhost\\/namlimxanh1\\/wp-content\\/mu-plugins|http:\\/\\/localhost\\/namlimxanh1\\/wp-content\\/themes\\/twentyfourteen|http:\\/\\/localhost\\/namlimxanh1\\/wp-content\\/themes\\/twentyfourteen":"http:\\/\\/localhost\\/namlimxanh1\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_addgallery_page\\/static\\/jquery.filetree\\/jquery.filetree.min.js","photocrati-nextgen_addgallery_page#jquery.filetree\\/jquery.filetree.css||http:\\/\\/localhost\\/namlimxanh1\\/wp-content\\/plugins|http:\\/\\/localhost\\/namlimxanh1\\/wp-content\\/mu-plugins|http:\\/\\/localhost\\/namlimxanh1\\/wp-content\\/themes\\/twentyfourteen|http:\\/\\/localhost\\/namlimxanh1\\/wp-content\\/themes\\/twentyfourteen":"http:\\/\\/localhost\\/namlimxanh1\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_addgallery_page\\/static\\/jquery.filetree\\/jquery.filetree.min.css","photocrati-nextgen_addgallery_page#media-library-import.js||http:\\/\\/localhost\\/namlimxanh1\\/wp-content\\/plugins|http:\\/\\/localhost\\/namlimxanh1\\/wp-content\\/mu-plugins|http:\\/\\/localhost\\/namlimxanh1\\/wp-content\\/themes\\/twentyfourteen|http:\\/\\/localhost\\/namlimxanh1\\/wp-content\\/themes\\/twentyfourteen":"http:\\/\\/localhost\\/namlimxanh1\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_addgallery_page\\/static\\/media-library-import.min.js","photocrati-nextgen_addgallery_page#media-library-import.css||http:\\/\\/localhost\\/namlimxanh1\\/wp-content\\/plugins|http:\\/\\/localhost\\/namlimxanh1\\/wp-content\\/mu-plugins|http:\\/\\/localhost\\/namlimxanh1\\/wp-content\\/themes\\/twentyfourteen|http:\\/\\/localhost\\/namlimxanh1\\/wp-content\\/themes\\/twentyfourteen":"http:\\/\\/localhost\\/namlimxanh1\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_addgallery_page\\/static\\/media-library-import.min.css","photocrati-nextgen_gallery_display#nextgen_gallery_related_images.css||http:\\/\\/localhost\\/namlimxanh1\\/wp-content\\/plugins|http:\\/\\/localhost\\/namlimxanh1\\/wp-content\\/mu-plugins|http:\\/\\/localhost\\/namlimxanh1\\/wp-content\\/themes\\/twentyfourteen|http:\\/\\/localhost\\/namlimxanh1\\/wp-content\\/themes\\/twentyfourteen":"http:\\/\\/localhost\\/namlimxanh1\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_gallery_display\\/static\\/nextgen_gallery_related_images.min.css","photocrati-nextgen_gallery_display#common.js||http:\\/\\/localhost\\/namlimxanh1\\/wp-content\\/plugins|http:\\/\\/localhost\\/namlimxanh1\\/wp-content\\/mu-plugins|http:\\/\\/localhost\\/namlimxanh1\\/wp-content\\/themes\\/twentyfourteen|http:\\/\\/localhost\\/namlimxanh1\\/wp-content\\/themes\\/twentyfourteen":"http:\\/\\/localhost\\/namlimxanh1\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_gallery_display\\/static\\/common.min.js","photocrati-nextgen_gallery_display#trigger_buttons.css||http:\\/\\/localhost\\/namlimxanh1\\/wp-content\\/plugins|http:\\/\\/localhost\\/namlimxanh1\\/wp-content\\/mu-plugins|http:\\/\\/localhost\\/namlimxanh1\\/wp-content\\/themes\\/twentyfourteen|http:\\/\\/localhost\\/namlimxanh1\\/wp-content\\/themes\\/twentyfourteen":"http:\\/\\/localhost\\/namlimxanh1\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_gallery_display\\/static\\/trigger_buttons.min.css"}', 'no'),
(620, '_transient_timeout_2__536483053', '1473095560', 'no'),
(621, '_transient_2__536483053', '{"photocrati-nextgen_gallery_display#nextgen_gallery_related_images.css|0":"D:\\\\xampp\\\\htdocs\\\\namlimxanh1\\\\wp-content\\\\plugins\\\\nextgen-gallery\\\\products\\\\photocrati_nextgen\\\\modules\\\\nextgen_gallery_display\\\\static\\\\nextgen_gallery_related_images.min.css","photocrati-nextgen_gallery_display#common.js|0":"D:\\\\xampp\\\\htdocs\\\\namlimxanh1\\\\wp-content\\\\plugins\\\\nextgen-gallery\\\\products\\\\photocrati_nextgen\\\\modules\\\\nextgen_gallery_display\\\\static\\\\common.min.js","photocrati-nextgen_gallery_display#trigger_buttons.css|0":"D:\\\\xampp\\\\htdocs\\\\namlimxanh1\\\\wp-content\\\\plugins\\\\nextgen-gallery\\\\products\\\\photocrati_nextgen\\\\modules\\\\nextgen_gallery_display\\\\static\\\\trigger_buttons.min.css"}', 'no'),
(625, 'widget_youtubechannelgallery_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(627, '_transient_timeout_plugin_slugs', '1473185538', 'no'),
(628, '_transient_plugin_slugs', 'a:7:{i:0;s:19:"akismet/akismet.php";i:1;s:9:"hello.php";i:2;s:29:"nextgen-gallery/nggallery.php";i:3;s:16:"hello_widget.php";i:4;s:23:"tubepress/tubepress.php";i:5;s:42:"wonderplugin-slider/wonderpluginslider.php";i:6;s:51:"youtube-channel-gallery/youtube-channel-gallery.php";}', 'no'),
(631, 'ytc-', 'a:64:{s:10:"ytchag_key";s:0:"";s:11:"ytchag_feed";s:8:"playlist";s:18:"ytchag_identify_by";s:8:"username";s:11:"ytchag_user";s:24:"UUhA624rCabHAmd6lpkLOw7A";s:17:"ytchag_feed_order";s:4:"date";s:17:"ytchag_cache_time";s:2:"24";s:12:"ytchag_cache";s:0:"";s:13:"ytchag_player";s:1:"1";s:18:"ytchag_width_value";s:3:"100";s:17:"ytchag_width_type";s:1:"%";s:12:"ytchag_ratio";s:4:"16x9";s:12:"ytchag_theme";s:4:"dark";s:12:"ytchag_color";s:3:"red";s:14:"ytchag_quality";s:7:"default";s:15:"ytchag_autoplay";s:0:"";s:21:"ytchag_modestbranding";s:0:"";s:10:"ytchag_rel";s:0:"";s:15:"ytchag_showinfo";s:0:"";s:19:"ytchag_player_title";s:0:"";s:25:"ytchag_player_publishedAt";s:0:"";s:25:"ytchag_player_description";s:0:"";s:23:"ytchag_player_title_tag";s:2:"h3";s:38:"ytchag_player_description_words_number";s:0:"";s:19:"ytchag_player_order";s:1:"1";s:24:"ytchag_search_input_text";s:0:"";s:28:"ytchag_search_select_options";s:0:"";s:28:"ytchag_search_select_default";s:0:"";s:24:"ytchag_search_input_show";s:0:"";s:25:"ytchag_search_select_show";s:0:"";s:19:"ytchag_search_order";s:1:"2";s:15:"ytchag_maxitems";s:1:"8";s:18:"ytchag_thumb_width";s:3:"320";s:18:"ytchag_thumb_ratio";s:4:"16x9";s:27:"ytchag_thumb_columns_phones";s:1:"2";s:28:"ytchag_thumb_columns_tablets";s:0:"";s:23:"ytchag_thumb_columns_md";s:0:"";s:23:"ytchag_thumb_columns_ld";s:0:"";s:15:"ytchag_nofollow";s:0:"";s:19:"ytchag_thumb_window";s:0:"";s:23:"ytchag_thumb_pagination";s:1:"1";s:16:"ytchag_prev_text";s:0:"";s:16:"ytchag_next_text";s:0:"";s:24:"ytchag_thumb_order_thumb";s:1:"1";s:24:"ytchag_thumb_order_title";s:1:"2";s:30:"ytchag_thumb_order_publishedAt";s:1:"3";s:23:"ytchag_thumb_order_desc";s:1:"4";s:18:"ytchag_thumb_order";s:1:"3";s:12:"ytchag_title";s:0:"";s:18:"ytchag_publishedAt";s:0:"";s:18:"ytchag_description";s:0:"";s:15:"ytchag_duration";s:0:"";s:26:"ytchag_thumbnail_alignment";s:4:"none";s:32:"ytchag_thumbnail_alignment_width";s:4:"half";s:33:"ytchag_thumbnail_alignment_device";s:6:"tablet";s:16:"ytchag_title_tag";s:2:"h5";s:31:"ytchag_description_words_number";s:0:"";s:11:"ytchag_link";s:1:"1";s:14:"ytchag_link_tx";s:0:"";s:18:"ytchag_link_window";s:0:"";s:17:"ytchag_link_order";s:1:"4";s:16:"ytchag_promotion";s:1:"1";s:9:"ytchag_id";N;s:19:"ytchag_user_uploads";N;s:21:"ytchag_user_favorites";N;}', 'yes'),
(637, 'tubepress-debugging_enabled', '1', 'yes'),
(638, 'tubepress-https', '', 'yes'),
(639, 'tubepress-keyword', 'tubepress', 'yes'),
(640, 'tubepress-httpMethod', 'GET', 'yes'),
(641, 'tubepress-cacheCleaningFactor', '20', 'yes'),
(642, 'tubepress-cacheDirectory', '', 'yes'),
(643, 'tubepress-cacheEnabled', '', 'yes'),
(644, 'tubepress-cacheLifetimeSeconds', '3600', 'yes'),
(645, 'tubepress-autoNext', '1', 'yes'),
(646, 'tubepress-autoplay', '', 'yes'),
(647, 'tubepress-embeddedHeight', '350', 'yes'),
(648, 'tubepress-embeddedWidth', '425', 'yes'),
(649, 'tubepress-enableJsApi', '1', 'yes'),
(650, 'tubepress-lazyPlay', '1', 'yes'),
(651, 'tubepress-loop', '', 'yes'),
(652, 'tubepress-playerImplementation', 'provider_based', 'yes'),
(653, 'tubepress-playerLocation', 'normal', 'yes'),
(654, 'tubepress-showInfo', '', 'yes'),
(655, 'tubepress-orderBy', 'title', 'yes'),
(656, 'tubepress-perPageSort', 'none', 'yes'),
(657, 'tubepress-resultCountCap', '300', 'yes'),
(658, 'tubepress-searchResultsRestrictedToUser', '', 'yes'),
(659, 'tubepress-videoBlacklist', '', 'yes'),
(660, 'tubepress-searchProvider', '', 'yes'),
(661, 'tubepress-searchResultsOnly', '', 'yes'),
(662, 'tubepress-searchResultsUrl', '', 'yes'),
(663, 'tubepress-author', '', 'yes'),
(664, 'tubepress-category', '', 'yes'),
(665, 'tubepress-description', '', 'yes'),
(666, 'tubepress-id', '', 'yes'),
(667, 'tubepress-tags', '', 'yes'),
(668, 'tubepress-length', '1', 'yes'),
(669, 'tubepress-title', '1', 'yes'),
(670, 'tubepress-uploaded', '', 'yes'),
(671, 'tubepress-url', '', 'yes'),
(672, 'tubepress-views', '1', 'yes'),
(673, 'tubepress-dateFormat', 'M j, Y', 'yes'),
(674, 'tubepress-descriptionLimit', '80', 'yes'),
(675, 'tubepress-relativeDates', '', 'yes'),
(676, 'tubepress-disabledOptionsPageParticipants', '', 'yes'),
(677, 'tubepress-mode', 'tag', 'yes'),
(678, 'tubepress-ajaxPagination', '', 'yes'),
(679, 'tubepress-fluidThumbs', '1', 'yes'),
(680, 'tubepress-hqThumbs', '', 'yes'),
(681, 'tubepress-paginationAbove', '1', 'yes'),
(682, 'tubepress-paginationBelow', '1', 'yes'),
(683, 'tubepress-randomize_thumbnails', '1', 'yes'),
(684, 'tubepress-resultsPerPage', '20', 'yes'),
(685, 'tubepress-theme', 'default', 'yes'),
(686, 'tubepress-thumbHeight', '90', 'yes'),
(687, 'tubepress-thumbWidth', '120', 'yes'),
(688, 'tubepress-autoHide', 'fadeOnlyProgressBar', 'yes'),
(689, 'tubepress-youtubeClosedCaptions', '', 'yes'),
(690, 'tubepress-youtubeDisableKeyboardControls', '', 'yes'),
(691, 'tubepress-fullscreen', '1', 'yes'),
(692, 'tubepress-modestBranding', '1', 'yes'),
(693, 'tubepress-youtubeShowAnnotations', '', 'yes'),
(694, 'tubepress-youtubeShowPlayerControls', 'showImmediate', 'yes'),
(695, 'tubepress-showRelated', '1', 'yes'),
(696, 'tubepress-youtubePlayerTheme', 'dark', 'yes'),
(697, 'tubepress-developerKey', 'AI39si5uUzupiQW9bpzGqZRrhvqF3vBgRqL-I_28G1zWozmdNJlskzMDQEhpZ-l2RqGf_6CNWooL96oJZRrqKo-eJ9QO_QppMg', 'yes'),
(698, 'tubepress-embeddableOnly', '1', 'yes'),
(699, 'tubepress-filter_racy', 'strict', 'yes'),
(700, 'tubepress-youtubeMostPopularValue', 'today', 'yes'),
(701, 'tubepress-youtubeRelatedValue', 'P9M__yYbsZ4', 'yes'),
(702, 'tubepress-playlistValue', '48A83AD3506C9D36', 'yes'),
(703, 'tubepress-favoritesValue', 'FPSRussia', 'yes'),
(704, 'tubepress-tagValue', 'namlimxanh.vn', 'yes'),
(705, 'tubepress-userValue', '3hough', 'yes'),
(706, 'tubepress-rating', '', 'yes'),
(707, 'tubepress-ratings', '', 'yes'),
(708, 'tubepress-widget-title', 'TubePress', 'yes'),
(709, 'tubepress-widget-tagstring', '[tubepress thumbHeight=''105'' thumbWidth=''135'']', 'yes'),
(710, 'tubepress-jwPlayerBackColor', 'FFFFFF', 'yes'),
(711, 'tubepress-jwPlayerFrontColor', '000000', 'yes'),
(712, 'tubepress-jwPlayerLightColor', '000000', 'yes'),
(713, 'tubepress-jwPlayerScreenColor', '000000', 'yes'),
(714, 'tubepress-playerColor', '999999', 'yes'),
(715, 'tubepress-vimeoKey', '', 'yes'),
(716, 'tubepress-vimeoSecret', '', 'yes'),
(717, 'tubepress-vimeoAlbumValue', '140484', 'yes'),
(718, 'tubepress-vimeoAppearsInValue', 'royksopp', 'yes'),
(719, 'tubepress-vimeoChannelValue', 'UCFIDd6HoHgWHBiOEJQcOrCQ', 'yes'),
(720, 'tubepress-vimeoCreditedToValue', 'patricklawler', 'yes'),
(721, 'tubepress-vimeoGroupValue', 'hdxs', 'yes'),
(722, 'tubepress-vimeoLikesValue', 'coiffier', 'yes'),
(723, 'tubepress-vimeoSearchValue', 'glacier national park', 'yes'),
(724, 'tubepress-vimeoUploadedByValue', 'AvantGardeDiaries', 'yes'),
(725, 'tubepress-likes', '', 'yes'),
(738, '_site_transient_timeout_theme_roots', '1473100796', 'yes'),
(739, '_site_transient_theme_roots', 'a:4:{s:8:"poseidon";s:7:"/themes";s:13:"twentyfifteen";s:7:"/themes";s:14:"twentyfourteen";s:7:"/themes";s:13:"twentysixteen";s:7:"/themes";}', 'yes'),
(741, '_site_transient_update_plugins', 'O:8:"stdClass":5:{s:12:"last_checked";i:1473099081;s:7:"checked";a:7:{s:19:"akismet/akismet.php";s:6:"3.1.11";s:9:"hello.php";s:3:"1.6";s:29:"nextgen-gallery/nggallery.php";s:6:"2.1.50";s:16:"hello_widget.php";s:3:"1.0";s:23:"tubepress/tubepress.php";s:5:"5.1.2";s:42:"wonderplugin-slider/wonderpluginslider.php";s:3:"7.7";s:51:"youtube-channel-gallery/youtube-channel-gallery.php";s:3:"2.4";}s:8:"response";a:1:{s:42:"wonderplugin-slider/wonderpluginslider.php";O:8:"stdClass":15:{s:6:"author";s:19:"Magic Hills Pty Ltd";s:8:"homepage";s:46:"https://www.wonderplugin.com/wordpress-slider/";s:4:"name";s:19:"WonderPlugin Slider";s:8:"requires";s:3:"3.6";s:6:"tested";s:3:"4.6";s:7:"version";s:3:"8.2";s:11:"new_version";s:3:"8.2";s:12:"last_updated";s:10:"2016-08-25";s:8:"sections";a:1:{s:10:"change log";s:6715:"<h4>Version 8.2</h4>\n<ul>\n<li>Fix the problem of the menu Manage Sliders not working in version 7.9 on some WordPress installations</li>\n</ul>\n<h4>Version 7.9</h4>\n<ul>\n<li>Add a class name to the slider to specify the current slide</li>\n</ul>\n<h4>Version 7.8</h4>\n<ul>\n<li>Specify different text effect for each slide</li>\n<li>Save a pre-made text effect as a new custom effect</li>\n<li>Fix the bug of resizing images</li>\n</ul>\n<h4>Version 7.7</h4>\n<ul>\n<li>Support social media share buttons on the slideshow: Facebook, Twitter and Pinterest</li>\n<li>Fix the bug of icon class name conflict</li>\n</ul>\n<h4>Version 7.6</h4>\n<ul>\n<li>Support social media share buttons in lightbox popup: Facebook, Twitter and Pinterest</li>\n<li>Rearrange lightbox options to tabs</li>\n</ul>\n<h4>Version 7.5</h4>\n<ul>\n<li>Add a new text effect: Left Box</li>\n</ul>\n<h4>Version 7.4</h4>\n<ul>\n<li>Add an option to open the web link in lightbox when clicking on the slider</li>\n</ul>\n<h4>Version 7.3</h4>\n<ul>\n<li>Add a new Image resize mode "Same width, flexible height". When the images have different aspect ratio, the option will create a <a href="https://www.wonderplugin.com/wordpress-slider/examples/wordpress-slideshow-of-same-width-and-flexible-height-id51/" target="_blank">WordPress slideshow of same width and flexible height</a>.</li>\n</ul>\n<h4>Version 7.2</h4>\n<ul>\n<li>Support displaying a different slider on mobile and tablet devices. For example, the following shortcode will display slider ID 1 on desktop and display slider ID 2 on mobile and tablet devides: <span style="color:#ff0000;">[wonderplugin_slider id=1 mobileid=2]</span></li>\n</ul>\n<h4>Version 7.1</h4>\n<ul>\n<li>Add an option to save sliders with Post method</li>\n<li>Support specifying advanced options data-navbuttonbgimage, data-navarrowimage and data-navplaypauseimage with absolute URLs</li>\n</ul>\n<h4>Version 7.0</h4>\n<ul>\n<li>Make <a href="https://www.wonderplugin.com/wordpress-slider/examples/wordpress-ken-burns-slider-id43/" target="_blank">WordPress Ken Burns slideshow</a> fully responsive during transitioning</li>\n</ul>\n<h4>Version 6.9</h4>\n<ul>\n<li>Add an option to pause the slideshow on mouse over</li>\n<li>Only display videos in the Media Library Selection Dialog when selecting a video file</li>\n</ul>\n<h4>Version 6.8</h4>\n<ul>\n<li>Add a new skin: Bottom Carousel</li>\n<li>Enter data tag <span style="color:#ff0000;">data-navplayvideoimage="play-24-24-0.png"</span> to the Advanced Options to specify a smaller video play icon on thumbnails</li>\n<li>Use data tag <span style="color:#ff0000;">data-navthumbnavigationarrowimage</span> to specify your own custom-made thumbnail carousel arrows</li>\n</ul>\n<h4>Version 6.7</h4>\n<ul>\n<li>Fix a bug in the skin Header</li>\n</ul>\n<h4>Version 6.6</h4>\n<ul>\n<li>Allow HTML5 source tags in title and description</li>\n</ul>\n<h4>Version 6.5</h4>\n<ul>\n<li>Fix a bug of playing HTML5 videos on Google Chrome when there are more than 6 videos in a slider</li>\n</ul>\n<h4>Version 6.4</h4>\n<ul>\n<li>Fix the bug when there are uppercase letters in WordPress database prefix</li>\n</ul>\n<h4>Version 6.3</h4>\n<ul>\n<li>Add an advanced option to trigger window resize event</li>\n</ul>\n<h4>Version 6.2</h4>\n<ul>\n<li>Display the plugin version type in the WordPress backend Plugins -> Installed Plugins page</li>\n</ul>\n<h4>Version 6.1</h4>\n<ul>\n<li>WordPress Posts Slider: add an option to link title to the post page</li>\n<li>WordPress Posts Slider: add an option to open the featured image in lightbox</li>\n</ul>\n<h4>Version 6.0</h4>\n<ul>\n<li>Fix a bug in plugin update</li>\n</ul>\n<h4>Version 5.9</h4>\n<ul>\n<li>Fix a bug in ken-burns effect</li>\n</ul>\n<h4>Version 5.8</h4>\n<ul>\n<li>Support trash in slider management. The deleted slider will be moved to the trash in which you can restore or permanently delete it.</li>\n</ul>\n<h4>Version 5.7</h4>\n<ul>\n<li>Support lightbox auto slideshow</li>\n<li>Add an option to always show the previous and next navigation arrows on lightbox</li>\n<li>Display error notice on the WordPress Updates page if the free upgrade period is expired.</li>\n</ul>\n<h4>Version 5.6</h4>\n<ul>\n<li>Add an option to support adding the new item to the beginning of the list\n</li>\n<li>Add a function to reverse the media list</li>\n</ul>\n<h4>Version 5.5</h4>\n<ul>\n<li>Fix the bug of resuming slideshow autoplay when lightbox is closed</li>\n<li>Add an option to hide MP4/WebM video play control bar on lightbox</li>\n<li>Add an option to display text on bottom, inside, left or right of the lightbox</li>\n<li>Add an option to display lightbox in fullscreen mode. In fullscreen mode, the close button will be displayed on the top right corner of the web browser</li>\n<li>Add an option to add prefix to title when the lightbox is displayed in gallery mode</li>\n<li>Add an option to enable or disable closing lightbox when clicking on the overlay background</li>\n<li>Move the left and right navigation arrows to the side of lightbox on touch screen. This will fix the issue of double clicking when playing video on iPhone, iPad and Android.</li>\n</ul>\n<h4>Version 5.4</h4>\n<ul>\n<li>Fix the bug of playing MP4 video on iPad iOS 9.1\n</li>\n</ul>\n<h4>Version 5.3</h4>\n<ul>\n<li>Fix the bug of video lightbox in iPad 2\n</li>\n</ul>\n<h4>Version 5.2</h4>\n<ul>\n<li>Support WordPress posts slider: create slider from recent posts or posts in specified categories\n</li>\n</ul>\n<h4>Version 5.1</h4>\n<ul>\n<li>Fix a minor bug of version 5.0\n</li>\n</ul>\n<h4>Version 5.0</h4>\n<ul>\n<li>Fix a bug of playing mp4 video in the lightbox popup under Firefox\n</li>\n</ul>\n<h4>Version 4.9</h4>\n<ul>\n<li>Fix bugs\n</li>\n</ul>\n<h4>Version 4.7</h4>\n<ul>\n<li>Fix a bug in responsive design\n</li>\n</ul>\n<h4>Version 4.6</h4>\n<ul>\n<li>Support adding alt text for slider images\n</li>\n</ul>\n<h4>Version 4.5</h4>\n<ul>\n<li>Fix bugs\n</li>\n</ul>\n<h4>Version 4.4</h4>\n<ul>\n<li>Add options to change the aspect ratio of sliders on small screen devices\n</li>\n</ul>\n<h4>Version 4.3</h4>\n<ul>\n<li>Add effects Tiles, Ken Burns, Flip, Flip with zoom\n</li>\n<li>Create <a href="/wordpress-slider/examples/wordpress-ken-burns-slider-id43/" target="_blank">WordPress Ken Burns Slider</a>\n</li>\n<li>Add 3D effects 3D with zoom, 3D horizontal with zoom, 3D flip, 3D flip with zoom, 3D tiles\n</li>\n<li>Create <a href="/wordpress-slider/examples/wordpress-3d-slider-id44/" target="_blank">WordPress 3D Slider</a>\n</li>\n<li>Add options to define thumbnail width and height\n</li>\n<li>Add an option to add slider js files to the footer\n</li>\n<li>Add an option to display sliders in text widgets\n</li>\n<li>Add options to define responsive CSS for texts on small screens\n</li>\n</ul>\n<h4>Version 4.2</h4>\n<ul>\n<li>Support version check and update\n</li>\n</ul>";}s:3:"key";s:0:"";s:10:"key_status";s:5:"empty";s:10:"key_expire";i:0;s:4:"slug";s:19:"wonderplugin-slider";s:6:"plugin";s:42:"wonderplugin-slider/wonderpluginslider.php";s:12:"last_checked";i:1473086846;}}s:12:"translations";a:0:{}s:9:"no_update";a:5:{s:19:"akismet/akismet.php";O:8:"stdClass":6:{s:2:"id";s:2:"15";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:6:"3.1.11";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:57:"https://downloads.wordpress.org/plugin/akismet.3.1.11.zip";}s:9:"hello.php";O:8:"stdClass":6:{s:2:"id";s:4:"3564";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";}s:29:"nextgen-gallery/nggallery.php";O:8:"stdClass":6:{s:2:"id";s:3:"592";s:4:"slug";s:15:"nextgen-gallery";s:6:"plugin";s:29:"nextgen-gallery/nggallery.php";s:11:"new_version";s:6:"2.1.50";s:3:"url";s:46:"https://wordpress.org/plugins/nextgen-gallery/";s:7:"package";s:65:"https://downloads.wordpress.org/plugin/nextgen-gallery.2.1.50.zip";}s:23:"tubepress/tubepress.php";O:8:"stdClass":6:{s:2:"id";s:3:"312";s:4:"slug";s:9:"tubepress";s:6:"plugin";s:23:"tubepress/tubepress.php";s:11:"new_version";s:5:"3.1.8";s:3:"url";s:40:"https://wordpress.org/plugins/tubepress/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/tubepress.3.1.8.zip";}s:51:"youtube-channel-gallery/youtube-channel-gallery.php";O:8:"stdClass":6:{s:2:"id";s:5:"32977";s:4:"slug";s:23:"youtube-channel-gallery";s:6:"plugin";s:51:"youtube-channel-gallery/youtube-channel-gallery.php";s:11:"new_version";s:3:"2.4";s:3:"url";s:54:"https://wordpress.org/plugins/youtube-channel-gallery/";s:7:"package";s:70:"https://downloads.wordpress.org/plugin/youtube-channel-gallery.2.4.zip";}}}', 'yes'),
(742, 'tubepress-htmlCacheCleaningFactor', '100', 'yes'),
(743, 'tubepress-htmlCacheCleaningKey', 'tubepress_clear_html_cache', 'yes'),
(744, 'tubepress-htmlCacheDirectory', '', 'yes'),
(745, 'tubepress-htmlCacheEnabled', '', 'yes'),
(746, 'tubepress-htmlCacheLifetimeSeconds', '21600', 'yes'),
(747, 'tubepress-responsiveEmbeds', '1', 'yes'),
(748, 'tubepress-sources', '', 'yes'),
(749, 'tubepress-authorizeAs', '', 'yes'),
(750, 'tubepress-oauth2Tokens', '{}', 'yes'),
(751, 'tubepress-oauth2ClientDetails', '{}', 'yes'),
(752, 'tubepress-disabledFieldProviderNames', '', 'yes'),
(753, 'tubepress-embeddedScrollOn', '1', 'yes'),
(754, 'tubepress-embeddedScrollDuration', '0', 'yes'),
(755, 'tubepress-embeddedScrollOffset', '0', 'yes'),
(756, 'tubepress-dailymotionPlayerColorHighlight', 'ffcc33', 'yes'),
(757, 'tubepress-dailymotionPlayerQuality', 'auto', 'yes'),
(758, 'tubepress-dailymotionPlayerShowControls', '1', 'yes'),
(759, 'tubepress-dailymotionPlayerShowEndScreen', '1', 'yes'),
(760, 'tubepress-dailymotionPlayerShowLogo', '', 'yes'),
(761, 'tubepress-dailymotionPlayerShowSharing', '', 'yes'),
(762, 'tubepress-dailymotionPlayerTheme', 'dark', 'yes'),
(763, 'tubepress-dailymotionPlayerOriginDomain', '', 'yes'),
(764, 'tubepress-dailymotionPlayerId', '', 'yes'),
(765, 'tubepress-dailymotionFavoritesValue', 'Mashable', 'yes'),
(766, 'tubepress-dailymotionFeaturedValue', 'RedBull', 'yes'),
(767, 'tubepress-dailymotionListValue', 'x2qahyh,x14t97b,x2kja1x', 'yes'),
(768, 'tubepress-dailymotionPlaylistValue', 'x438te', 'yes'),
(769, 'tubepress-dailymotionRelatedValue', 'x38g0kr', 'yes'),
(770, 'tubepress-dailymotionSearchValue', 'san diego beer week', 'yes'),
(771, 'tubepress-dailymotionSubscriptionsValue', 'AssociatedPress', 'yes'),
(772, 'tubepress-dailymotionTagValue', 'wedding', 'yes'),
(773, 'tubepress-dailymotionUserValue', 'IGN', 'yes'),
(774, 'tubepress-dailymotionFamilyFilter', '1', 'yes'),
(775, 'tubepress-dailymotionLocale', 'none', 'yes'),
(776, 'tubepress-dailymotionCountry', '', 'yes'),
(777, 'tubepress-dailymotionLanguageDetected', 'none', 'yes'),
(778, 'tubepress-dailymotionLanguagesDeclared', '', 'yes'),
(779, 'tubepress-dailymotionFeaturedOnly', '', 'yes'),
(780, 'tubepress-dailymotionGenre', '', 'yes'),
(781, 'tubepress-dailymotionExcludeGenre', '', 'yes'),
(782, 'tubepress-dailymotionHdOnly', '', 'yes'),
(783, 'tubepress-dailymotionLiveFilter', 'all', 'yes'),
(784, 'tubepress-dailymotionPremiumFilter', 'all', 'yes'),
(785, 'tubepress-dailymotionPartnerFilter', 'all', 'yes'),
(786, 'tubepress-dailymotionOnlyShorterThan', '0', 'yes'),
(787, 'tubepress-dailymotionOnlyLongerThan', '0', 'yes'),
(788, 'tubepress-dailymotionOnlyStrongTag', '', 'yes'),
(789, 'tubepress-dailymotionOnlyTags', '', 'yes'),
(790, 'tubepress-dailymotionOnlyOwners', '', 'yes'),
(791, 'tubepress-dailymotionOnlySearch', '', 'yes'),
(792, 'tubepress-dailymotionThumbnailRatio', 'original', 'yes'),
(793, 'tubepress-dailymotionThumbnailPreferredSize', '240px', 'yes'),
(794, 'tubepress-vimeoCategoryValue', 'documentary', 'yes'),
(795, 'tubepress-vimeoTagValue', 'weddings', 'yes'),
(796, 'tubepress-googleApiKey', '', 'yes'),
(797, 'tubepress-youtubeListValue', '9bZkp7q19f0, txqiwrbYGrs', 'yes'),
(798, 'tubepress-showCountComments', '', 'yes'),
(799, 'tubepress-showCountDislikes', '', 'yes'),
(800, 'tubepress-showCountFavorites', '', 'yes'),
(801, 'tubepress-templateCacheAutoreload', '', 'yes'),
(802, 'tubepress-templateCacheDirectory', '', 'yes'),
(803, 'tubepress-templateCacheEnabled', '1', 'yes'),
(804, 'tubepress-adminTheme', 'tubepress/wordpress', 'yes'),
(805, 'tubepress-tubepressApiKey', '', 'yes'),
(806, 'tubepress-wpAutoPostEnable', '', 'yes'),
(807, 'tubepress-wpAutoPostAuthor', '', 'yes'),
(808, 'tubepress-wpAutoPostDateSource', 'upload', 'yes'),
(809, 'tubepress-wpAutoPostTitleTemplate', '{{ item.title }}', 'yes'),
(810, 'tubepress-wpAutoPostStatus', 'pending', 'yes'),
(811, 'tubepress-wpAutoPostType', 'post', 'yes'),
(812, 'tubepress-wpAutoPostAllowComments', '1', 'yes'),
(813, 'tubepress-wpAutoPostAllowPings', '1', 'yes'),
(814, 'tubepress-wpAutoPostPassword', '', 'yes'),
(815, 'tubepress-wpAutoPostTags', '', 'yes'),
(816, 'tubepress-wpAutoPostCategories', '', 'yes'),
(817, 'tubepress-wpAutoPostPageTemplate', '', 'yes'),
(818, 'tubepress-wpAutoPostMetaTemplate', '{}', 'yes'),
(819, 'tubepress-wpAutoPostContentTemplate', '[tubepress video="{{ item.id }}" title="false" length="true" description="true" descriptionLimit="0"]', 'yes'),
(820, 'widget_tubepress_widget_gattaca', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(822, 'external_updates-tubepress', 'O:8:"stdClass":3:{s:9:"lastCheck";i:1473099095;s:14:"checkedVersion";s:5:"5.1.2";s:6:"update";O:8:"stdClass":7:{s:2:"id";i:0;s:4:"slug";s:9:"tubepress";s:7:"version";s:5:"5.1.2";s:8:"homepage";s:21:"http://tubepress.com/";s:12:"download_url";s:58:"http://free.releases.tubepress-cdn.com/tubepress_5_1_2.zip";s:14:"upgrade_notice";N;s:8:"filename";s:23:"tubepress/tubepress.php";}}', 'yes'),
(827, '_transient_featured_content_ids', 'a:0:{}', 'yes'),
(828, '_transient_is_multi_author', '0', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=713 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 4, '_edit_last', '1'),
(3, 4, '_edit_lock', '1472107166:1'),
(6, 2, '_edit_lock', '1472090055:1'),
(7, 2, '_edit_last', '1'),
(10, 7, '_menu_item_type', 'custom'),
(11, 7, '_menu_item_menu_item_parent', '0'),
(12, 7, '_menu_item_object_id', '7'),
(13, 7, '_menu_item_object', 'custom'),
(14, 7, '_menu_item_target', ''),
(15, 7, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(16, 7, '_menu_item_xfn', ''),
(17, 7, '_menu_item_url', 'http://localhost/namlimxanh1/'),
(39, 11, '_edit_last', '1'),
(42, 11, '_edit_lock', '1472107613:1'),
(54, 15, '_wp_attached_file', '2016/08/1024-x-1024.png'),
(55, 15, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1024;s:6:"height";i:1024;s:4:"file";s:23:"2016/08/1024-x-1024.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"1024-x-1024-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:23:"1024-x-1024-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:23:"1024-x-1024-768x768.png";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(56, 11, '_thumbnail_id', '15'),
(57, 16, '_wp_attached_file', '2016/08/namlimxanh1.jpg'),
(58, 16, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:600;s:6:"height";i:400;s:4:"file";s:23:"2016/08/namlimxanh1.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"namlimxanh1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:23:"namlimxanh1-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:23:"namlimxanh1-600x372.jpg";s:5:"width";i:600;s:6:"height";i:372;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(59, 17, '_wp_attached_file', '2016/08/namlimxanh2.jpg'),
(60, 17, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:295;s:6:"height";i:171;s:4:"file";s:23:"2016/08/namlimxanh2.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"namlimxanh2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(61, 18, '_wp_attached_file', '2016/08/namlimxanh3.jpg'),
(62, 18, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:259;s:6:"height";i:194;s:4:"file";s:23:"2016/08/namlimxanh3.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"namlimxanh3-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(63, 19, '_edit_last', '1'),
(64, 19, '_edit_lock', '1473048040:1'),
(65, 19, 'type_products', 'Thanh thiết bảo sinh'),
(67, 19, 'price_products', '2000000'),
(70, 21, '_edit_last', '1'),
(71, 21, '_edit_lock', '1473012308:1'),
(74, 23, '_edit_last', '1'),
(75, 23, '_edit_lock', '1473044415:1'),
(76, 23, 'type_products', 'Loại nguyên cây'),
(77, 23, 'price_products', '1100000'),
(148, 32, '_edit_last', '1'),
(149, 32, '_edit_lock', '1472548034:1'),
(150, 34, '_edit_last', '1'),
(151, 34, '_edit_lock', '1472525513:1'),
(156, 34, '_thumbnail_id', '17'),
(159, 36, '_edit_last', '1'),
(160, 36, '_edit_lock', '1473108789:1'),
(161, 36, '_thumbnail_id', '16'),
(171, 41, '_edit_last', '1'),
(172, 41, '_edit_lock', '1473087705:1'),
(173, 41, '_thumbnail_id', '18'),
(176, 32, '_thumbnail_id', '17'),
(179, 44, '_edit_last', '1'),
(180, 44, '_edit_lock', '1473087259:1'),
(181, 44, '_thumbnail_id', '17'),
(184, 48, '_edit_last', '1'),
(185, 48, '_edit_lock', '1472608044:1'),
(188, 50, '_edit_last', '1'),
(189, 50, '_edit_lock', '1472607887:1'),
(194, 52, '_edit_last', '1'),
(195, 52, '_edit_lock', '1472608535:1'),
(198, 54, '_edit_last', '1'),
(199, 54, '_edit_lock', '1472608573:1'),
(202, 56, '_edit_last', '1'),
(203, 56, '_edit_lock', '1472608620:1'),
(206, 58, '_edit_last', '1'),
(207, 58, '_edit_lock', '1472610054:1'),
(210, 60, '_edit_last', '1'),
(211, 60, '_edit_lock', '1472626645:1'),
(214, 62, '_edit_last', '1'),
(215, 62, '_edit_lock', '1472610376:1'),
(230, 68, '_wp_attached_file', '2016/08/sp1.png'),
(231, 68, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:92;s:6:"height";i:105;s:4:"file";s:15:"2016/08/sp1.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(232, 69, '_wp_attached_file', '2016/08/sp2.png'),
(233, 69, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:89;s:6:"height";i:99;s:4:"file";s:15:"2016/08/sp2.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(234, 70, '_wp_attached_file', '2016/08/sp3.png'),
(235, 70, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:79;s:6:"height";i:109;s:4:"file";s:15:"2016/08/sp3.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(240, 73, '_menu_item_type', 'taxonomy'),
(241, 73, '_menu_item_menu_item_parent', '0'),
(242, 73, '_menu_item_object_id', '6'),
(243, 73, '_menu_item_object', 'category'),
(244, 73, '_menu_item_target', ''),
(245, 73, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(246, 73, '_menu_item_xfn', ''),
(247, 73, '_menu_item_url', ''),
(249, 74, '_menu_item_type', 'taxonomy'),
(250, 74, '_menu_item_menu_item_parent', '73'),
(251, 74, '_menu_item_object_id', '18'),
(252, 74, '_menu_item_object', 'category'),
(253, 74, '_menu_item_target', ''),
(254, 74, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(255, 74, '_menu_item_xfn', ''),
(256, 74, '_menu_item_url', ''),
(258, 75, '_menu_item_type', 'taxonomy'),
(259, 75, '_menu_item_menu_item_parent', '73'),
(260, 75, '_menu_item_object_id', '17'),
(261, 75, '_menu_item_object', 'category'),
(262, 75, '_menu_item_target', ''),
(263, 75, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(264, 75, '_menu_item_xfn', ''),
(265, 75, '_menu_item_url', ''),
(267, 76, '_menu_item_type', 'taxonomy'),
(268, 76, '_menu_item_menu_item_parent', '0'),
(269, 76, '_menu_item_object_id', '5'),
(270, 76, '_menu_item_object', 'category'),
(271, 76, '_menu_item_target', ''),
(272, 76, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(273, 76, '_menu_item_xfn', ''),
(274, 76, '_menu_item_url', ''),
(276, 77, '_menu_item_type', 'taxonomy'),
(277, 77, '_menu_item_menu_item_parent', '76'),
(278, 77, '_menu_item_object_id', '16'),
(279, 77, '_menu_item_object', 'category'),
(280, 77, '_menu_item_target', ''),
(281, 77, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(282, 77, '_menu_item_xfn', ''),
(283, 77, '_menu_item_url', ''),
(285, 78, '_menu_item_type', 'taxonomy'),
(286, 78, '_menu_item_menu_item_parent', '76'),
(287, 78, '_menu_item_object_id', '15'),
(288, 78, '_menu_item_object', 'category'),
(289, 78, '_menu_item_target', ''),
(290, 78, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(291, 78, '_menu_item_xfn', ''),
(292, 78, '_menu_item_url', ''),
(294, 79, '_menu_item_type', 'taxonomy'),
(295, 79, '_menu_item_menu_item_parent', '0'),
(296, 79, '_menu_item_object_id', '7'),
(297, 79, '_menu_item_object', 'category'),
(298, 79, '_menu_item_target', ''),
(299, 79, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(300, 79, '_menu_item_xfn', ''),
(301, 79, '_menu_item_url', ''),
(303, 80, '_menu_item_type', 'taxonomy'),
(304, 80, '_menu_item_menu_item_parent', '79'),
(305, 80, '_menu_item_object_id', '19'),
(306, 80, '_menu_item_object', 'category'),
(307, 80, '_menu_item_target', ''),
(308, 80, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(309, 80, '_menu_item_xfn', ''),
(310, 80, '_menu_item_url', ''),
(312, 81, '_menu_item_type', 'taxonomy'),
(313, 81, '_menu_item_menu_item_parent', '79'),
(314, 81, '_menu_item_object_id', '20'),
(315, 81, '_menu_item_object', 'category'),
(316, 81, '_menu_item_target', ''),
(317, 81, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(318, 81, '_menu_item_xfn', ''),
(319, 81, '_menu_item_url', ''),
(321, 82, '_menu_item_type', 'taxonomy'),
(322, 82, '_menu_item_menu_item_parent', '0'),
(323, 82, '_menu_item_object_id', '4'),
(324, 82, '_menu_item_object', 'category'),
(325, 82, '_menu_item_target', ''),
(326, 82, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(327, 82, '_menu_item_xfn', ''),
(328, 82, '_menu_item_url', ''),
(330, 83, '_menu_item_type', 'taxonomy'),
(331, 83, '_menu_item_menu_item_parent', '82'),
(332, 83, '_menu_item_object_id', '13'),
(333, 83, '_menu_item_object', 'category'),
(334, 83, '_menu_item_target', ''),
(335, 83, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(336, 83, '_menu_item_xfn', ''),
(337, 83, '_menu_item_url', ''),
(339, 84, '_menu_item_type', 'taxonomy'),
(340, 84, '_menu_item_menu_item_parent', '82'),
(341, 84, '_menu_item_object_id', '14'),
(342, 84, '_menu_item_object', 'category'),
(343, 84, '_menu_item_target', ''),
(344, 84, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(345, 84, '_menu_item_xfn', ''),
(346, 84, '_menu_item_url', ''),
(348, 85, '_menu_item_type', 'taxonomy'),
(349, 85, '_menu_item_menu_item_parent', '82'),
(350, 85, '_menu_item_object_id', '12'),
(351, 85, '_menu_item_object', 'category'),
(352, 85, '_menu_item_target', ''),
(353, 85, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(354, 85, '_menu_item_xfn', ''),
(355, 85, '_menu_item_url', ''),
(357, 86, '_menu_item_type', 'taxonomy'),
(358, 86, '_menu_item_menu_item_parent', '0'),
(359, 86, '_menu_item_object_id', '23'),
(360, 86, '_menu_item_object', 'category'),
(361, 86, '_menu_item_target', ''),
(362, 86, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(363, 86, '_menu_item_xfn', ''),
(364, 86, '_menu_item_url', ''),
(366, 87, '_menu_item_type', 'taxonomy'),
(367, 87, '_menu_item_menu_item_parent', '86'),
(368, 87, '_menu_item_object_id', '25'),
(369, 87, '_menu_item_object', 'category'),
(370, 87, '_menu_item_target', ''),
(371, 87, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(372, 87, '_menu_item_xfn', ''),
(373, 87, '_menu_item_url', ''),
(375, 88, '_menu_item_type', 'taxonomy'),
(376, 88, '_menu_item_menu_item_parent', '86'),
(377, 88, '_menu_item_object_id', '24'),
(378, 88, '_menu_item_object', 'category'),
(379, 88, '_menu_item_target', ''),
(380, 88, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(381, 88, '_menu_item_xfn', ''),
(382, 88, '_menu_item_url', ''),
(384, 89, '_menu_item_type', 'taxonomy'),
(385, 89, '_menu_item_menu_item_parent', '86'),
(386, 89, '_menu_item_object_id', '26'),
(387, 89, '_menu_item_object', 'category'),
(388, 89, '_menu_item_target', ''),
(389, 89, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(390, 89, '_menu_item_xfn', ''),
(391, 89, '_menu_item_url', ''),
(393, 90, '_menu_item_type', 'taxonomy'),
(394, 90, '_menu_item_menu_item_parent', '0'),
(395, 90, '_menu_item_object_id', '8'),
(396, 90, '_menu_item_object', 'category'),
(397, 90, '_menu_item_target', ''),
(398, 90, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(399, 90, '_menu_item_xfn', ''),
(400, 90, '_menu_item_url', ''),
(402, 91, '_menu_item_type', 'taxonomy'),
(403, 91, '_menu_item_menu_item_parent', '90'),
(404, 91, '_menu_item_object_id', '21'),
(405, 91, '_menu_item_object', 'category'),
(406, 91, '_menu_item_target', ''),
(407, 91, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(408, 91, '_menu_item_xfn', ''),
(409, 91, '_menu_item_url', ''),
(411, 92, '_menu_item_type', 'taxonomy'),
(412, 92, '_menu_item_menu_item_parent', '90'),
(413, 92, '_menu_item_object_id', '22'),
(414, 92, '_menu_item_object', 'category'),
(415, 92, '_menu_item_target', ''),
(416, 92, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(417, 92, '_menu_item_xfn', ''),
(418, 92, '_menu_item_url', ''),
(421, 23, '_thumbnail_id', '68'),
(424, 19, '_thumbnail_id', '70'),
(427, 93, '_edit_last', '1'),
(428, 93, '_edit_lock', '1472887009:1'),
(429, 93, 'type_products', 'Loại tốt, Thái lát'),
(430, 93, '_thumbnail_id', '69'),
(431, 93, 'price_products', '1650000'),
(436, 93, '_wp_old_slug', 'nam-linh-xanh-tu-nhien-2'),
(439, 23, '_wp_old_slug', 'nam-linh-xanh-tu-nhien'),
(440, 98, '_wp_attached_file', '2016/09/daily1.png'),
(441, 98, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:298;s:6:"height";i:264;s:4:"file";s:18:"2016/09/daily1.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"daily1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(442, 99, '_wp_attached_file', '2016/09/daily2.png'),
(443, 99, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:298;s:6:"height";i:264;s:4:"file";s:18:"2016/09/daily2.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"daily2-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(444, 100, '_wp_attached_file', '2016/09/daily3.png'),
(445, 100, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:298;s:6:"height";i:264;s:4:"file";s:18:"2016/09/daily3.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"daily3-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(446, 101, '_wp_attached_file', '2016/09/slide-news.png'),
(447, 101, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:350;s:4:"file";s:22:"2016/09/slide-news.png";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"slide-news-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:22:"slide-news-300x105.png";s:5:"width";i:300;s:6:"height";i:105;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:22:"slide-news-768x269.png";s:5:"width";i:768;s:6:"height";i:269;s:9:"mime-type";s:9:"image/png";}s:14:"post-thumbnail";a:4:{s:4:"file";s:22:"slide-news-672x350.png";s:5:"width";i:672;s:6:"height";i:350;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(449, 102, '_wp_attached_file', '2016/09/logo-new.png'),
(450, 102, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:176;s:6:"height";i:346;s:4:"file";s:20:"2016/09/logo-new.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"logo-new-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:20:"logo-new-153x300.png";s:5:"width";i:153;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(453, 36, '_wp_old_slug', 'cong-dung-2'),
(454, 105, '_wp_attached_file', '2016/08/article3.png'),
(455, 105, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:130;s:6:"height";i:89;s:4:"file";s:20:"2016/08/article3.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(456, 106, '_wp_attached_file', '2016/08/article1.png'),
(457, 106, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:130;s:6:"height";i:89;s:4:"file";s:20:"2016/08/article1.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(458, 107, '_wp_attached_file', '2016/08/article2.png'),
(459, 107, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:130;s:6:"height";i:89;s:4:"file";s:20:"2016/08/article2.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(460, 21, '_thumbnail_id', '106'),
(463, 21, '_wp_old_slug', 'cong-dung'),
(464, 109, '_edit_last', '1'),
(465, 109, '_edit_lock', '1473038254:1'),
(467, 109, '_thumbnail_id', '107'),
(470, 111, '_edit_last', '1'),
(471, 111, '_edit_lock', '1473039879:1'),
(472, 111, '_thumbnail_id', '106'),
(485, 113, '_edit_last', '1'),
(486, 113, '_edit_lock', '1473045943:1'),
(487, 113, 'type_products', 'Thanh thiết bảo sinh'),
(488, 113, 'price_products', '2000000'),
(491, 113, '_thumbnail_id', '70'),
(494, 117, '_edit_last', '1'),
(495, 117, '_edit_lock', '1473048001:1'),
(498, 119, '_edit_last', '1'),
(499, 119, '_edit_lock', '1473057055:1'),
(502, 121, '_wp_attached_file', '2016/09/article2.png'),
(503, 121, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:150;s:6:"height";i:103;s:4:"file";s:20:"2016/09/article2.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"article2-150x103.png";s:5:"width";i:150;s:6:"height";i:103;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(507, 117, '_thumbnail_id', '16'),
(510, 19, '_wp_trash_meta_status', 'publish'),
(511, 19, '_wp_trash_meta_time', '1473048192'),
(512, 19, '_wp_desired_post_slug', 'nam-linh-xanh-gia-truyen'),
(513, 119, '_thumbnail_id', '121'),
(516, 122, '_edit_last', '1'),
(517, 122, '_edit_lock', '1473067421:1'),
(520, 122, '_thumbnail_id', '16'),
(523, 124, '_edit_last', '1'),
(524, 124, '_edit_lock', '1473067774:1'),
(527, 126, '_edit_last', '1'),
(528, 126, '_edit_lock', '1473067624:1'),
(531, 126, '_thumbnail_id', '106'),
(540, 41, '_wp_old_slug', 'khong-giong-cac-loai-thao-duoc-khac-chi-chua-duoc-mot-vai-benh-ung-thu-tieu-bieu-tac-dung-nam-lim-xanh-da-duoc-kiem-chung-la-chua-duoc-hau-het-tat-ca-cac-benh-ung-thu'),
(541, 131, '_edit_last', '1'),
(542, 131, '_edit_lock', '1473088967:1'),
(547, 133, 'title', 'NextGEN Basic Thumbnails'),
(548, 133, 'preview_image_relpath', '\\nextgen-gallery\\products\\photocrati_nextgen\\modules\\nextgen_basic_gallery\\static\\thumb_preview.jpg'),
(549, 133, 'default_source', 'galleries'),
(550, 133, 'view_order', '10000'),
(551, 133, 'name', 'photocrati-nextgen_basic_thumbnails'),
(552, 133, 'installed_at_version', '2.1.50'),
(553, 133, 'hidden_from_ui', ''),
(554, 133, '__defaults_set', '1'),
(555, 133, 'filter', 'raw'),
(556, 133, 'entity_types', 'WyJpbWFnZSJd'),
(557, 133, 'id_field', 'ID'),
(558, 133, 'settings', 'eyJ1c2VfbGlnaHRib3hfZWZmZWN0Ijp0cnVlLCJpbWFnZXNfcGVyX3BhZ2UiOiIyMCIsIm51bWJlcl9vZl9jb2x1bW5zIjowLCJ0aHVtYm5haWxfd2lkdGgiOjI0MCwidGh1bWJuYWlsX2hlaWdodCI6MTYwLCJzaG93X2FsbF9pbl9saWdodGJveCI6MCwiYWpheF9wYWdpbmF0aW9uIjowLCJ1c2VfaW1hZ2Vicm93c2VyX2VmZmVjdCI6MCwidGVtcGxhdGUiOiIiLCJkaXNwbGF5X25vX2ltYWdlc19lcnJvciI6MSwiZGlzYWJsZV9wYWdpbmF0aW9uIjowLCJzaG93X3NsaWRlc2hvd19saW5rIjoxLCJzbGlkZXNob3dfbGlua190ZXh0IjoiW1Nob3cgc2xpZGVzaG93XSIsIm92ZXJyaWRlX3RodW1ibmFpbF9zZXR0aW5ncyI6MCwidGh1bWJuYWlsX3F1YWxpdHkiOiIxMDAiLCJ0aHVtYm5haWxfY3JvcCI6MSwidGh1bWJuYWlsX3dhdGVybWFyayI6MCwibmdnX3RyaWdnZXJzX2Rpc3BsYXkiOiJuZXZlciJ9'),
(559, 134, 'title', 'NextGEN Basic Slideshow'),
(560, 134, 'preview_image_relpath', '\\nextgen-gallery\\products\\photocrati_nextgen\\modules\\nextgen_basic_gallery\\static\\slideshow_preview.jpg'),
(561, 134, 'default_source', 'galleries'),
(562, 134, 'view_order', '10010'),
(563, 134, 'name', 'photocrati-nextgen_basic_slideshow'),
(564, 134, 'installed_at_version', '2.1.50'),
(565, 134, 'hidden_from_ui', ''),
(566, 134, '__defaults_set', '1'),
(567, 134, 'filter', 'raw'),
(568, 134, 'entity_types', 'WyJpbWFnZSJd'),
(569, 134, 'id_field', 'ID'),
(570, 134, 'settings', 'eyJ1c2VfbGlnaHRib3hfZWZmZWN0Ijp0cnVlLCJnYWxsZXJ5X3dpZHRoIjo2MDAsImdhbGxlcnlfaGVpZ2h0Ijo0MDAsInRodW1ibmFpbF93aWR0aCI6MjQwLCJ0aHVtYm5haWxfaGVpZ2h0IjoxNjAsImN5Y2xlX2ludGVydmFsIjoxMCwiY3ljbGVfZWZmZWN0IjpudWxsLCJlZmZlY3RfY29kZSI6ImNsYXNzPVwibmdnLWZhbmN5Ym94XCIgcmVsPVwiJUdBTExFUllfTkFNRSVcIiIsInNob3dfdGh1bWJuYWlsX2xpbmsiOjEsInRodW1ibmFpbF9saW5rX3RleHQiOiJbU2hvdyB0aHVtYm5haWxzXSIsInRlbXBsYXRlIjoiIiwibmdnX3RyaWdnZXJzX2Rpc3BsYXkiOiJuZXZlciJ9'),
(571, 135, 'title', 'NextGEN Basic ImageBrowser'),
(572, 135, 'preview_image_relpath', '\\nextgen-gallery\\products\\photocrati_nextgen\\modules\\nextgen_basic_imagebrowser\\static\\preview.jpg'),
(573, 135, 'default_source', 'galleries'),
(574, 135, 'view_order', '10020'),
(575, 135, 'name', 'photocrati-nextgen_basic_imagebrowser'),
(576, 135, 'installed_at_version', '2.1.50'),
(577, 135, 'hidden_from_ui', ''),
(578, 135, '__defaults_set', '1'),
(579, 135, 'filter', 'raw'),
(580, 135, 'entity_types', 'WyJpbWFnZSJd'),
(581, 135, 'id_field', 'ID'),
(582, 135, 'settings', 'eyJ1c2VfbGlnaHRib3hfZWZmZWN0Ijp0cnVlLCJ0ZW1wbGF0ZSI6IiIsIm5nZ190cmlnZ2Vyc19kaXNwbGF5IjoibmV2ZXIifQ=='),
(583, 136, 'title', 'NextGEN Basic SinglePic'),
(584, 136, 'preview_image_relpath', '\\nextgen-gallery\\products\\photocrati_nextgen\\modules\\nextgen_basic_singlepic\\static\\preview.gif'),
(585, 136, 'default_source', 'galleries'),
(586, 136, 'view_order', '10060'),
(587, 136, 'hidden_from_ui', '1'),
(588, 136, 'name', 'photocrati-nextgen_basic_singlepic'),
(589, 136, 'installed_at_version', '2.1.50'),
(590, 136, '__defaults_set', '1'),
(591, 136, 'filter', 'raw'),
(592, 136, 'entity_types', 'WyJpbWFnZSJd'),
(593, 136, 'id_field', 'ID'),
(594, 136, 'settings', 'eyJ1c2VfbGlnaHRib3hfZWZmZWN0Ijp0cnVlLCJ3aWR0aCI6IiIsImhlaWdodCI6IiIsIm1vZGUiOiIiLCJkaXNwbGF5X3dhdGVybWFyayI6MCwiZGlzcGxheV9yZWZsZWN0aW9uIjowLCJmbG9hdCI6IiIsImxpbmsiOiIiLCJsaW5rX3RhcmdldCI6Il9ibGFuayIsInF1YWxpdHkiOjEwMCwiY3JvcCI6MCwidGVtcGxhdGUiOiIiLCJuZ2dfdHJpZ2dlcnNfZGlzcGxheSI6Im5ldmVyIn0='),
(595, 137, 'title', 'NextGEN Basic TagCloud'),
(596, 137, 'preview_image_relpath', '\\nextgen-gallery\\products\\photocrati_nextgen\\modules\\nextgen_basic_tagcloud\\static\\preview.gif'),
(597, 137, 'default_source', 'tags'),
(598, 137, 'view_order', '10100'),
(599, 137, 'name', 'photocrati-nextgen_basic_tagcloud'),
(600, 137, 'installed_at_version', '2.1.50'),
(601, 137, 'hidden_from_ui', ''),
(602, 137, '__defaults_set', '1'),
(603, 137, 'filter', 'raw'),
(604, 137, 'entity_types', 'WyJpbWFnZSJd'),
(605, 137, 'id_field', 'ID'),
(606, 137, 'settings', 'eyJ1c2VfbGlnaHRib3hfZWZmZWN0Ijp0cnVlLCJkaXNwbGF5X3R5cGUiOiJwaG90b2NyYXRpLW5leHRnZW5fYmFzaWNfdGh1bWJuYWlscyIsIm51bWJlciI6NDUsIm5nZ190cmlnZ2Vyc19kaXNwbGF5IjoibmV2ZXIifQ=='),
(607, 138, 'title', 'NextGEN Basic Compact Album'),
(608, 138, 'preview_image_relpath', '\\nextgen-gallery\\products\\photocrati_nextgen\\modules\\nextgen_basic_album\\static\\compact_preview.jpg'),
(609, 138, 'default_source', 'albums'),
(610, 138, 'view_order', '10200'),
(611, 138, 'name', 'photocrati-nextgen_basic_compact_album'),
(612, 138, 'installed_at_version', '2.1.50'),
(613, 138, 'hidden_from_ui', ''),
(614, 138, '__defaults_set', '1'),
(615, 138, 'filter', 'raw'),
(616, 138, 'entity_types', 'WyJhbGJ1bSIsImdhbGxlcnkiXQ=='),
(617, 138, 'id_field', 'ID'),
(618, 138, 'settings', 'eyJ1c2VfbGlnaHRib3hfZWZmZWN0Ijp0cnVlLCJnYWxsZXJpZXNfcGVyX3BhZ2UiOjAsImVuYWJsZV9icmVhZGNydW1icyI6MSwiZGlzYWJsZV9wYWdpbmF0aW9uIjowLCJlbmFibGVfZGVzY3JpcHRpb25zIjowLCJ0ZW1wbGF0ZSI6IiIsIm9wZW5fZ2FsbGVyeV9pbl9saWdodGJveCI6MCwiZ2FsbGVyeV9kaXNwbGF5X3R5cGUiOiJwaG90b2NyYXRpLW5leHRnZW5fYmFzaWNfdGh1bWJuYWlscyIsImdhbGxlcnlfZGlzcGxheV90ZW1wbGF0ZSI6IiIsIm5nZ190cmlnZ2Vyc19kaXNwbGF5IjoibmV2ZXIifQ=='),
(619, 139, 'title', 'NextGEN Basic Extended Album'),
(620, 139, 'preview_image_relpath', '\\nextgen-gallery\\products\\photocrati_nextgen\\modules\\nextgen_basic_album\\static\\extended_preview.jpg'),
(621, 139, 'default_source', 'albums'),
(622, 139, 'view_order', '10210'),
(623, 139, 'name', 'photocrati-nextgen_basic_extended_album'),
(624, 139, 'installed_at_version', '2.1.50'),
(625, 139, 'hidden_from_ui', ''),
(626, 139, '__defaults_set', '1'),
(627, 139, 'filter', 'raw'),
(628, 139, 'entity_types', 'WyJhbGJ1bSIsImdhbGxlcnkiXQ=='),
(629, 139, 'id_field', 'ID'),
(630, 139, 'settings', 'eyJ1c2VfbGlnaHRib3hfZWZmZWN0Ijp0cnVlLCJnYWxsZXJpZXNfcGVyX3BhZ2UiOjAsImVuYWJsZV9icmVhZGNydW1icyI6MSwiZGlzYWJsZV9wYWdpbmF0aW9uIjowLCJlbmFibGVfZGVzY3JpcHRpb25zIjowLCJ0ZW1wbGF0ZSI6IiIsIm9wZW5fZ2FsbGVyeV9pbl9saWdodGJveCI6MCwib3ZlcnJpZGVfdGh1bWJuYWlsX3NldHRpbmdzIjowLCJ0aHVtYm5haWxfd2lkdGgiOjI0MCwidGh1bWJuYWlsX2hlaWdodCI6MTYwLCJ0aHVtYm5haWxfcXVhbGl0eSI6MTAwLCJ0aHVtYm5haWxfY3JvcCI6dHJ1ZSwidGh1bWJuYWlsX3dhdGVybWFyayI6MCwiZ2FsbGVyeV9kaXNwbGF5X3R5cGUiOiJwaG90b2NyYXRpLW5leHRnZW5fYmFzaWNfdGh1bWJuYWlscyIsImdhbGxlcnlfZGlzcGxheV90ZW1wbGF0ZSI6IiIsIm5nZ190cmlnZ2Vyc19kaXNwbGF5IjoibmV2ZXIifQ=='),
(631, 140, '__defaults_set', '1'),
(632, 140, 'filter', 'raw'),
(633, 140, 'id_field', 'ID'),
(634, 141, 'updated_at', '1473089438'),
(635, 141, '__defaults_set', '1'),
(636, 141, 'filter', 'raw'),
(637, 141, 'id_field', 'ID'),
(646, 143, '__defaults_set', '1'),
(647, 143, 'filter', 'raw'),
(648, 143, 'id_field', 'ID'),
(649, 142, 'updated_at', '1473089439'),
(650, 142, '__defaults_set', '1'),
(651, 142, 'filter', 'raw'),
(652, 142, 'id_field', 'ID'),
(653, 144, '__defaults_set', '1'),
(654, 144, 'filter', 'raw'),
(655, 144, 'id_field', 'ID'),
(662, 145, '__defaults_set', '1'),
(663, 145, 'filter', 'raw'),
(664, 145, 'id_field', 'ID'),
(665, 146, '__defaults_set', '1'),
(666, 146, 'filter', 'raw'),
(667, 146, 'id_field', 'ID'),
(674, 147, '__defaults_set', '1'),
(675, 147, 'filter', 'raw'),
(676, 147, 'id_field', 'ID'),
(677, 148, '_edit_last', '1'),
(678, 148, '_edit_lock', '1473090730:1'),
(681, 148, '_thumbnail_id', '105'),
(684, 150, '_edit_last', '1'),
(685, 150, '_edit_lock', '1473090785:1'),
(688, 152, '_edit_last', '1'),
(689, 152, '_edit_lock', '1473096957:1'),
(690, 152, '_thumbnail_id', '121'),
(693, 154, '_edit_last', '1'),
(694, 154, '_edit_lock', '1473094023:1'),
(695, 154, '_thumbnail_id', '121'),
(700, 157, '_edit_last', '1'),
(701, 157, '_edit_lock', '1473098657:1'),
(712, 36, '_wp_old_slug', 'nam-lim-xanh-giai-phap-vang-cho-benh-nhan-ung-thu');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=164 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2016-08-25 01:23:38', '2016-08-25 01:23:38', 'Chúc mừng đến với WordPress. Đây là bài viết đầu tiên của bạn. Hãy chỉnh sửa hay xóa bài viết này, và bắt đầu viết blog!', 'Chào tất cả mọi người!', '', 'publish', 'open', 'open', '', 'chao-moi-nguoi', '', '', '2016-08-25 01:23:38', '2016-08-25 01:23:38', '', 0, 'http://localhost/namlimxanh1/?p=1', 0, 'post', '', 1),
(2, 1, '2016-08-25 01:23:38', '2016-08-25 01:23:38', 'Đây là một trang tĩnh mẫu. Nó khác với một bài viết ở chỗ nó sẽ luôn ở một vị trí và sẽ được hiển thị tại thực đơn điều hướng trên trang mạng của bạn (với hầu hết các giao diện). Hầu hết mọi người bắt đầu với trang Giới Thiệu kể về họ với người đọc. Nó có thể được viết như sau:\r\n<blockquote>Xin chào! tôi là người chuyển hàng bằng xe đạp vào ban ngày, diễn viên luôn nỗ lực tiến bộ vào buổi tối, và đây là trang nhật ký trực tuyến của tôi. Tôi sống ở Los Angeles, tôi nuôi một con chó tuyệt vời tên là Jack, và tôi thích piña coladas. (Và có thể gặp trong mưa.)</blockquote>\r\n...hoặc tương tự như:\r\n<blockquote>Công ty Đồ dùng XYZ được thành lập năm 1971, và đã cung cấp đồ dùng chất lượng cho cộng đồng từ thời điểm đó. Tại thành phố Gotham, XYZ tạo ra việc làm cho hơn 2,000 người và làm ra những đồ dùng tuyệt vời phục vụ mọi nhu cầu cho người dân Gotham.</blockquote>\r\nLà một người sử dụng WordPress mới, bạn nên truy cập <a href="http://localhost/namlimxanh1/wp-admin/">bảng thống kê</a> để xóa trang tĩnh này và tạo trang tĩnh mới cho nội dung của bạn. Hãy tận hưởng!', 'Trang Mẫu', '', 'publish', 'closed', 'open', '', 'trang-mau', '', '', '2016-08-25 01:56:34', '2016-08-25 01:56:34', '', 0, 'http://localhost/namlimxanh1/?page_id=2', 0, 'page', '', 0),
(4, 1, '2016-08-25 01:55:07', '2016-08-25 01:55:07', 'Bài viết này có lẽ hơi dài, nhưng đó là những gì quan trọng nhất về WP Query mà mình muốn nhắn đến bạn. Bằng việc nắm vững cách sử dụng WP Query và hiểu query trong WordPress, bạn có thể làm được rất nhiều việc vì hầu như trong WordPress chúng ta sử dụng WP Query rất nhiều.\r\n\r\nSức mạnh của WP_Query là nằm ở các tham số. Với số lượng tham số đa dạng và phong phú, bạn có thể lấy bất cứ kiểu bài viết nào trong bất kỳ chỗ nào trên website. Các tham số mình đã gom lại thành một ghi chú, bạn có thể tham khảo tại', 'Sử dụng vps', '', 'publish', 'open', 'open', '', 'ccc', '', '', '2016-08-25 06:41:27', '2016-08-25 06:41:27', '', 0, 'http://localhost/namlimxanh1/?p=4', 0, 'post', '', 0),
(5, 1, '2016-08-25 01:55:07', '2016-08-25 01:55:07', 'dsdd', 'ccc', '', 'inherit', 'closed', 'closed', '', '4-revision-v1', '', '', '2016-08-25 01:55:07', '2016-08-25 01:55:07', '', 4, 'http://localhost/namlimxanh1/2016/08/25/4-revision-v1/', 0, 'revision', '', 0),
(6, 1, '2016-08-25 01:56:34', '2016-08-25 01:56:34', 'Đây là một trang tĩnh mẫu. Nó khác với một bài viết ở chỗ nó sẽ luôn ở một vị trí và sẽ được hiển thị tại thực đơn điều hướng trên trang mạng của bạn (với hầu hết các giao diện). Hầu hết mọi người bắt đầu với trang Giới Thiệu kể về họ với người đọc. Nó có thể được viết như sau:\r\n<blockquote>Xin chào! tôi là người chuyển hàng bằng xe đạp vào ban ngày, diễn viên luôn nỗ lực tiến bộ vào buổi tối, và đây là trang nhật ký trực tuyến của tôi. Tôi sống ở Los Angeles, tôi nuôi một con chó tuyệt vời tên là Jack, và tôi thích piña coladas. (Và có thể gặp trong mưa.)</blockquote>\r\n...hoặc tương tự như:\r\n<blockquote>Công ty Đồ dùng XYZ được thành lập năm 1971, và đã cung cấp đồ dùng chất lượng cho cộng đồng từ thời điểm đó. Tại thành phố Gotham, XYZ tạo ra việc làm cho hơn 2,000 người và làm ra những đồ dùng tuyệt vời phục vụ mọi nhu cầu cho người dân Gotham.</blockquote>\r\nLà một người sử dụng WordPress mới, bạn nên truy cập <a href="http://localhost/namlimxanh1/wp-admin/">bảng thống kê</a> để xóa trang tĩnh này và tạo trang tĩnh mới cho nội dung của bạn. Hãy tận hưởng!', 'Trang Mẫu', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2016-08-25 01:56:34', '2016-08-25 01:56:34', '', 2, 'http://localhost/namlimxanh1/2-revision-v1/', 0, 'revision', '', 0),
(7, 1, '2016-08-25 01:57:54', '2016-08-25 01:57:54', '', 'Trang chủ', '', 'publish', 'closed', 'closed', '', 'trang-chu', '', '', '2016-09-01 04:38:59', '2016-09-01 04:38:59', '', 0, 'http://localhost/namlimxanh1/?p=7', 1, 'nav_menu_item', '', 0),
(10, 1, '2016-08-25 06:41:27', '2016-08-25 06:41:27', 'Bài viết này có lẽ hơi dài, nhưng đó là những gì quan trọng nhất về WP Query mà mình muốn nhắn đến bạn. Bằng việc nắm vững cách sử dụng WP Query và hiểu query trong WordPress, bạn có thể làm được rất nhiều việc vì hầu như trong WordPress chúng ta sử dụng WP Query rất nhiều.\r\n\r\nSức mạnh của WP_Query là nằm ở các tham số. Với số lượng tham số đa dạng và phong phú, bạn có thể lấy bất cứ kiểu bài viết nào trong bất kỳ chỗ nào trên website. Các tham số mình đã gom lại thành một ghi chú, bạn có thể tham khảo tại', 'Sử dụng vps', '', 'inherit', 'closed', 'closed', '', '4-revision-v1', '', '', '2016-08-25 06:41:27', '2016-08-25 06:41:27', '', 4, 'http://localhost/namlimxanh1/4-revision-v1/', 0, 'revision', '', 0),
(11, 1, '2016-08-25 06:42:53', '2016-08-25 06:42:53', 'Sau khi xem phần trên thì bạn đã biết WordPress có một truy vấn mặc định trên mỗi trang được lưu trong đối tượng $wp_query. Nhưng đáng mừng thay, bạn có thể tạo ra nhiều đối tượng query khác với các tham số tuỳ <!--more-->chỉnh lấy bài viết theo ý bạn muốn, đó là chúng ta sẽ sử dụng class WP_Query\r\n\r\nPhương thức này nghĩa là nó sẽ đánh chỉ mục thứ tự cho bài viết trong vòng lặp và chức năng cụ thể là sẽ thiết lập thuộc tính in_the_loop sang true vì mặc định là false, mà nếu nó là true thì phương thức next_post() có thể thực thi nhằm lấy bài viết tiếp theo.\r\n\r\nVậy kết luận, phương thức này sẽ có chức năng <strong>đếm chỉ mục để gọi bài kế tiếp trong vòng lặp</strong>, nếu bạn không khai báo phương thức này trong vòng lặp thì bài viết đầu tiên sẽ bị lặp đi lặp lại hoài mà không có điểm dừng.', 'Dùng wp Query', '', 'publish', 'open', 'open', '', 'dung-wp-query', '', '', '2016-08-25 06:48:39', '2016-08-25 06:48:39', '', 0, 'http://localhost/namlimxanh1/?p=11', 0, 'post', '', 0),
(12, 1, '2016-08-25 06:42:53', '2016-08-25 06:42:53', 'Sau khi xem phần trên thì bạn đã biết WordPress có một truy vấn mặc định trên mỗi trang được lưu trong đối tượng $wp_query. Nhưng đáng mừng thay, bạn có thể tạo ra nhiều đối tượng query khác với các tham số tuỳ chỉnh lấy bài viết theo ý bạn muốn, đó là chúng ta sẽ sử dụng class WP_Query\r\n\r\nPhương thức này nghĩa là nó sẽ đánh chỉ mục thứ tự cho bài viết trong vòng lặp và chức năng cụ thể là sẽ thiết lập thuộc tính in_the_loop sang true vì mặc định là false, mà nếu nó là true thì phương thức next_post() có thể thực thi nhằm lấy bài viết tiếp theo.\r\n\r\nVậy kết luận, phương thức này sẽ có chức năng <strong>đếm chỉ mục để gọi bài kế tiếp trong vòng lặp</strong>, nếu bạn không khai báo phương thức này trong vòng lặp thì bài viết đầu tiên sẽ bị lặp đi lặp lại hoài mà không có điểm dừng.', 'Dùng wp Query', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2016-08-25 06:42:53', '2016-08-25 06:42:53', '', 11, 'http://localhost/namlimxanh1/11-revision-v1/', 0, 'revision', '', 0),
(14, 1, '2016-08-25 06:46:51', '2016-08-25 06:46:51', 'Sau khi xem phần trên thì bạn đã biết WordPress có một truy vấn mặc định trên mỗi trang được lưu trong đối tượng $wp_query. Nhưng đáng mừng thay, bạn có thể tạo ra nhiều đối tượng query khác với các tham số tuỳ <!--more-->chỉnh lấy bài viết theo ý bạn muốn, đó là chúng ta sẽ sử dụng class WP_Query\r\n\r\nPhương thức này nghĩa là nó sẽ đánh chỉ mục thứ tự cho bài viết trong vòng lặp và chức năng cụ thể là sẽ thiết lập thuộc tính in_the_loop sang true vì mặc định là false, mà nếu nó là true thì phương thức next_post() có thể thực thi nhằm lấy bài viết tiếp theo.\r\n\r\nVậy kết luận, phương thức này sẽ có chức năng <strong>đếm chỉ mục để gọi bài kế tiếp trong vòng lặp</strong>, nếu bạn không khai báo phương thức này trong vòng lặp thì bài viết đầu tiên sẽ bị lặp đi lặp lại hoài mà không có điểm dừng.', 'Dùng wp Query', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2016-08-25 06:46:51', '2016-08-25 06:46:51', '', 11, 'http://localhost/namlimxanh1/11-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2016-08-25 06:48:26', '2016-08-25 06:48:26', '', '1024-x-1024', '', 'inherit', 'open', 'closed', '', '1024-x-1024', '', '', '2016-08-25 06:48:26', '2016-08-25 06:48:26', '', 11, 'http://localhost/namlimxanh1/wp-content/uploads/2016/08/1024-x-1024.png', 0, 'attachment', 'image/png', 0),
(16, 1, '2016-08-29 01:56:47', '2016-08-29 01:56:47', '', 'namlimxanh1', '', 'inherit', 'open', 'closed', '', 'namlimxanh1', '', '', '2016-08-29 01:56:47', '2016-08-29 01:56:47', '', 0, 'http://localhost/namlimxanh1/wp-content/uploads/2016/08/namlimxanh1.jpg', 0, 'attachment', 'image/jpeg', 0),
(17, 1, '2016-08-29 01:57:06', '2016-08-29 01:57:06', '', 'namlimxanh2', '', 'inherit', 'open', 'closed', '', 'namlimxanh2', '', '', '2016-08-29 01:57:06', '2016-08-29 01:57:06', '', 0, 'http://localhost/namlimxanh1/wp-content/uploads/2016/08/namlimxanh2.jpg', 0, 'attachment', 'image/jpeg', 0),
(18, 1, '2016-08-29 01:57:07', '2016-08-29 01:57:07', '', 'namlimxanh3', '', 'inherit', 'open', 'closed', '', 'namlimxanh3', '', '', '2016-08-30 09:51:25', '2016-08-30 09:51:25', '', 44, 'http://localhost/namlimxanh1/wp-content/uploads/2016/08/namlimxanh3.jpg', 0, 'attachment', 'image/jpeg', 0),
(19, 1, '2016-08-29 02:51:33', '2016-08-29 02:51:33', '<p style="text-align: center;">Nấm lim xanh thường thấy trên các thân cây/ thân cây lim xanh đã chết trong các khu rừng nguyên sinh thuộc vùng núi cao, được tìm hái tại rừng nguyên sinh khu vực Trường Sơn – Quảng Nam, Tây Nguyên và Nam Lào.</p>', 'Nấm linh xanh gia truyền', '', 'trash', 'open', 'open', '', 'nam-linh-xanh-gia-truyen__trashed', '', '', '2016-09-05 04:03:12', '2016-09-05 04:03:12', '', 0, 'http://localhost/namlimxanh1/?p=19', 0, 'post', '', 0),
(20, 1, '2016-08-29 02:51:33', '2016-08-29 02:51:33', '<p style="text-align: center;">Nấm lim xanh thường thấy trên các thân cây/ thân cây lim xanh đã chết trong các khu rừng nguyên sinh thuộc vùng núi cao, được tìm hái tại rừng nguyên sinh khu vực Trường Sơn – Quảng Nam, Tây Nguyên và Nam Lào.</p>', 'Nấm linh xanh gia truyền', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2016-08-29 02:51:33', '2016-08-29 02:51:33', '', 19, 'http://localhost/namlimxanh1/19-revision-v1/', 0, 'revision', '', 0),
(21, 1, '2016-08-29 03:10:53', '2016-08-29 03:10:53', 'Không giống các loại thảo dược khác chỉ chữa được một vài bệnh ung thư tiêu biểu, tác dụng nấm lim xanh đã được kiểm chứng là chữa được hầu hết tất cả các bệnh ung thư. Ngoài ra, loại nấm này còn phát huy công dụng chữa nhiều loại bệnh khác như: Bệnh về gan, Gout, tai biến mạch máu não, tiểu đường, phì đại tiền liệt tuyến, đau dạ dày, tá tràng, giảm cân, ổn định huyết áp, giảm mỡ máu, giải độc gan, giải độc phóng xạ sau xạ trị,…\r\n\r\nVới những công dụng quý báu, các chuyên gia khuyên dùng nấm lim xanh chữa bệnh ngay khi phát hiện có bệnh trong người. Nếu dùng nấm mỗi ngày còn giúp phòng ngừa mọi loại bệnh', 'Dứt cơn đau, mau khỏi gout nhờ nấm lim xanh', '', 'publish', 'open', 'open', '', 'dut-con-dau-mau-khoi-gout-nho-nam-lim-xanh', '', '', '2016-09-04 18:06:44', '2016-09-04 18:06:44', '', 0, 'http://localhost/namlimxanh1/?p=21', 0, 'post', '', 0),
(22, 1, '2016-08-29 03:10:53', '2016-08-29 03:10:53', 'công dụng', 'Công dụng', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2016-08-29 03:10:53', '2016-08-29 03:10:53', '', 21, 'http://localhost/namlimxanh1/21-revision-v1/', 0, 'revision', '', 0),
(23, 1, '2016-08-29 03:45:48', '2016-08-29 03:45:48', 'abcde', 'Nấm lim xanh tự nhiên', '', 'publish', 'open', 'open', '', 'nam-lim-xanh-tu-nhien-loai-nguyen-cay', '', '', '2016-09-03 07:19:37', '2016-09-03 07:19:37', '', 0, 'http://localhost/namlimxanh1/?p=23', 0, 'post', '', 0),
(24, 1, '2016-08-29 03:45:48', '2016-08-29 03:45:48', 'abcde', 'Nấm linh xanh tự nhiên', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2016-08-29 03:45:48', '2016-08-29 03:45:48', '', 23, 'http://localhost/namlimxanh1/23-revision-v1/', 0, 'revision', '', 0),
(32, 1, '2016-08-29 09:32:17', '2016-08-29 09:32:17', 'các bài viết cần thiết cho newbie, thì có khá nhiều bạn hỏi làm sao để làm được widget chạy cố định như vậy dễ dàng mà không cần phải làm việc với quá nhiều code, vì khi tìm trên Google mọi người có thể thấy toàn gặp những bài tutorials làm widget cố định như vậy với Javascript hay CSS khá phức tạp. Hãy tạm quên đi các code phức tạp đó vì không phải cứ dùng plugin là chậm blog, mà đôi khi dùng plugin có thể giúp bạn tiết kiệm thời gian cũng như dễ dàng quản lý các script được thêm vào giao diện vì khi xóa plugin là nó sẽ tự xóa hết.', 'cách dùng', '', 'publish', 'open', 'open', '', 'cach-dung', '', '', '2016-08-30 09:09:31', '2016-08-30 09:09:31', '', 0, 'http://localhost/namlimxanh1/?p=32', 0, 'post', '', 0),
(33, 1, '2016-08-29 09:32:17', '2016-08-29 09:32:17', 'cách dùng', 'cách dùng', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2016-08-29 09:32:17', '2016-08-29 09:32:17', '', 32, 'http://localhost/namlimxanh1/32-revision-v1/', 0, 'revision', '', 0),
(34, 1, '2016-08-30 01:17:36', '2016-08-30 01:17:36', 'Thị trường bán nấm linh xanh', 'Thị trường nấm linh xanh', '', 'publish', 'open', 'open', '', 'thi-truong-nam-linh-xanh', '', '', '2016-08-30 01:24:40', '2016-08-30 01:24:40', '', 0, 'http://localhost/namlimxanh1/?p=34', 0, 'post', '', 0),
(35, 1, '2016-08-30 01:17:36', '2016-08-30 01:17:36', 'Thị trường bán nấm linh xanh', 'Thị trường nấm linh xanh', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2016-08-30 01:17:36', '2016-08-30 01:17:36', '', 34, 'http://localhost/namlimxanh1/34-revision-v1/', 0, 'revision', '', 0),
(36, 1, '2016-08-30 07:29:36', '2016-08-30 07:29:36', 'Không chỉ có tác dụng bồi bổ sứ khỏe, nâng cao thể trạng, nấm lim xanh còn được biết đến với khả năng hỗ trợ điều trị bệnh ung thư vô cùng hiệu quả và có rất nhiều người đã và đang sử dụng nó.', 'Nấm lim xanh - Giải pháp "vàng" cho bệnh nhân ung thư nó rất tốt cho cúng ta đó', 'Không chỉ có tác dụng bồi bổ sứ khỏe, nâng cao thể trạng, nấm lim xanh còn được biết đến với khả năng hỗ trợ điều trị bệnh ung thư vô cùng hiệu quả', 'publish', 'open', 'open', '', 'nam-lim-xanh-giai-phap-vang-cho-benh-nhan-ung-thu-no-rat-tot-cho-cung-ta-do', '', '', '2016-09-05 20:53:05', '2016-09-05 20:53:05', '', 0, 'http://localhost/namlimxanh1/?p=36', 0, 'post', '', 0),
(37, 1, '2016-08-30 07:29:36', '2016-08-30 07:29:36', 'Công dùng 2', 'Công dụng 2', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2016-08-30 07:29:36', '2016-08-30 07:29:36', '', 36, 'http://localhost/namlimxanh1/36-revision-v1/', 0, 'revision', '', 0),
(38, 1, '2016-09-04 18:05:40', '2016-09-04 18:05:40', 'Không giống các loại thảo dược khác chỉ chữa được một vài bệnh ung thư tiêu biểu, tác dụng nấm lim xanh đã được kiểm chứng là chữa được hầu hết tất cả các bệnh ung thư. Ngoài ra, loại nấm này còn phát huy công dụng chữa nhiều loại bệnh khác như: Bệnh về gan, Gout, tai biến mạch máu não, tiểu đường, phì đại tiền liệt tuyến, đau dạ dày, tá tràng, giảm cân, ổn định huyết áp, giảm mỡ máu, giải độc gan, giải độc phóng xạ sau xạ trị,…\n\nVới những công dụng quý báu, các chuyên gia khuyên dùng nấm lim xanh chữa bệnh ngay khi phát hiện có bệnh trong người. Nếu dùng nấm mỗi ngày còn giúp phòng ngừa mọi loại bệnh', 'Dứt cơn đau, mau khỏi gout nhờ nấm lim xanh', '', 'inherit', 'closed', 'closed', '', '21-autosave-v1', '', '', '2016-09-04 18:05:40', '2016-09-04 18:05:40', '', 21, 'http://localhost/namlimxanh1/21-autosave-v1/', 0, 'revision', '', 0),
(39, 1, '2016-08-30 08:59:03', '2016-08-30 08:59:03', 'Không giống các loại thảo dược khác chỉ chữa được một vài bệnh ung thư tiêu biểu, tác dụng nấm lim xanh đã được kiểm chứng là chữa được hầu hết tất cả các bệnh ung thư. Ngoài ra, loại nấm này còn phát huy công dụng chữa nhiều loại bệnh khác như: Bệnh về gan, Gout, tai biến mạch máu não, tiểu đường, phì đại tiền liệt tuyến, đau dạ dày, tá tràng, giảm cân, ổn định huyết áp, giảm mỡ máu, giải độc gan, giải độc phóng xạ sau xạ trị,…\r\n\r\nVới những công dụng quý báu, các chuyên gia khuyên dùng nấm lim xanh chữa bệnh ngay khi phát hiện có bệnh trong người. Nếu dùng nấm mỗi ngày còn giúp phòng ngừa mọi loại bệnh', 'Công dụng', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2016-08-30 08:59:03', '2016-08-30 08:59:03', '', 21, 'http://localhost/namlimxanh1/21-revision-v1/', 0, 'revision', '', 0),
(40, 1, '2016-08-30 08:59:40', '2016-08-30 08:59:40', 'Không giống các loại thảo dược khác chỉ chữa được một vài bệnh ung thư tiêu biểu, tác dụng nấm lim xanh đã được kiểm chứng là chữa được hầu hết tất cả các bệnh ung thư. Ngoài ra, loại nấm này còn phát huy công dụng chữa nhiều loại bệnh khác như: Bệnh về gan, Gout, tai biến mạch máu não, tiểu đường, phì đại tiền liệt tuyến, đau dạ dày, tá tràng, giảm cân, ổn định huyết áp, giảm mỡ máu, giải độc gan, giải độc phóng xạ sau xạ trị,…\r\n\r\nVới những công dụng quý báu, các chuyên gia khuyên dùng nấm lim xanh chữa bệnh ngay khi phát hiện có bệnh trong người. Nếu dùng nấm mỗi ngày còn giúp phòng ngừa mọi loại bệnh', 'Không giống các loại thảo dược khác chỉ chữa được một vài bệnh ung thư tiêu biểu, tác dụng nấm lim xanh', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2016-08-30 08:59:40', '2016-08-30 08:59:40', '', 21, 'http://localhost/namlimxanh1/21-revision-v1/', 0, 'revision', '', 0),
(41, 1, '2016-08-30 09:08:19', '2016-08-30 09:08:19', '<div id="main-content">\r\n<div id="content">\r\n\r\nKhông giống các loại thảo dược khác chỉ chữa được một vài bệnh ung thư tiêu biểu, tác dụng nấm lim xanh đã được kiểm chứng là chữa được hầu hết tất cả các bệnh ung thư. Ngoài ra, loại nấm này còn phát huy công dụng chữa nhiều loại bệnh khác như: Bệnh về gan, Gout, tai biến mạch máu não, tiểu đường, phì đại tiền liệt tuyến, đau dạ dày, tá tràng, giảm cân, ổn định huyết áp, giảm mỡ máu, giải độc gan, giải độc phóng xạ sau xạ trị,…\r\n\r\nVới những công dụng quý báu, các chuyên gia khuyên dùng nấm lim xanh chữa bệnh ngay khi phát hiện có bệnh trong người. Nếu dùng nấm mỗi ngày còn giúp phòng ngừa mọi loại bệnh.\r\n\r\n</div>\r\n</div>', 'Không giống các loại thảo dược khác chỉ chữa được một vài bệnh ung thư tiêu biểu', 'Không giống các loại thảo dược khác chỉ chữa được một vài bệnh ung thư tiêu biểu, tác dụng nấm lim xanh đã được kiểm chứng là chữa được hầu hết tất cả các bệnh ung thư', 'publish', 'open', 'open', '', 'khong-giong-cac-loai-thao-duoc-khac-chi-chua-duoc-mot-vai-benh-ung-thu-tieu-bieu', '', '', '2016-09-05 14:57:49', '2016-09-05 14:57:49', '', 0, 'http://localhost/namlimxanh1/?p=41', 0, 'post', '', 0),
(42, 1, '2016-08-30 09:08:19', '2016-08-30 09:08:19', '<div id="main-content">\r\n<div id="content">\r\n\r\nKhông giống các loại thảo dược khác chỉ chữa được một vài bệnh ung thư tiêu biểu, tác dụng nấm lim xanh đã được kiểm chứng là chữa được hầu hết tất cả các bệnh ung thư. Ngoài ra, loại nấm này còn phát huy công dụng chữa nhiều loại bệnh khác như: Bệnh về gan, Gout, tai biến mạch máu não, tiểu đường, phì đại tiền liệt tuyến, đau dạ dày, tá tràng, giảm cân, ổn định huyết áp, giảm mỡ máu, giải độc gan, giải độc phóng xạ sau xạ trị,…\r\n\r\nVới những công dụng quý báu, các chuyên gia khuyên dùng nấm lim xanh chữa bệnh ngay khi phát hiện có bệnh trong người. Nếu dùng nấm mỗi ngày còn giúp phòng ngừa mọi loại bệnh.\r\n\r\n</div>\r\n</div>', 'Không giống các loại thảo dược khác chỉ chữa được một vài bệnh ung thư tiêu biểu, tác dụng nấm lim xanh đã được kiểm chứng là chữa được hầu hết tất cả các bệnh ung thư', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2016-08-30 09:08:19', '2016-08-30 09:08:19', '', 41, 'http://localhost/namlimxanh1/41-revision-v1/', 0, 'revision', '', 0),
(43, 1, '2016-08-30 09:09:31', '2016-08-30 09:09:31', 'các bài viết cần thiết cho newbie, thì có khá nhiều bạn hỏi làm sao để làm được widget chạy cố định như vậy dễ dàng mà không cần phải làm việc với quá nhiều code, vì khi tìm trên Google mọi người có thể thấy toàn gặp những bài tutorials làm widget cố định như vậy với Javascript hay CSS khá phức tạp. Hãy tạm quên đi các code phức tạp đó vì không phải cứ dùng plugin là chậm blog, mà đôi khi dùng plugin có thể giúp bạn tiết kiệm thời gian cũng như dễ dàng quản lý các script được thêm vào giao diện vì khi xóa plugin là nó sẽ tự xóa hết.', 'cách dùng', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2016-08-30 09:09:31', '2016-08-30 09:09:31', '', 32, 'http://localhost/namlimxanh1/32-revision-v1/', 0, 'revision', '', 0),
(44, 1, '2016-08-30 09:10:49', '2016-08-30 09:10:49', 'Ung thư là căn bệnh có nguyên nhân gây tử vong hàng đầu trên thế giới. Khối u thường là các khối u bất thường, có thể là lành tính, có thế ác tính cũng có thể không ung thư. Chỉ có những khối u ác tính mới có lể lây lan sang các mô khác và gây di căn. Sự chuyển từ một tế bào bình thường sang một tế bào ung thư qua nhiều giai đoạn, từ một tổn thương tiền ung thư đến ung thư ác tính. Những thay đổi này là do các yếu tố sau đây', 'Ung thư là căn bệnh có nguyên nhân gây tử vong hàng đầu trên thế giới', 'Ung thư là căn bệnh có nguyên nhân gây tử vong hàng đầu trên thế giới. Khối u thường là các khối u bất thường, có thể là lành tính, có thế ác tính cũng có thể không ung thư', 'publish', 'open', 'open', '', 'ung-thu-la-can-benh-co-nguyen-nhan-gay-tu-vong-hang-dau-tren-the-gioi-khoi-u-thuong', '', '', '2016-09-05 14:56:21', '2016-09-05 14:56:21', '', 0, 'http://localhost/namlimxanh1/?p=44', 0, 'post', '', 0),
(45, 1, '2016-08-30 09:10:49', '2016-08-30 09:10:49', 'Ung thư là căn bệnh có nguyên nhân gây tử vong hàng đầu trên thế giới. Khối u thường là các khối u bất thường, có thể là lành tính, có thế ác tính cũng có thể không ung thư. Chỉ có những khối u ác tính mới có lể lây lan sang các mô khác và gây di căn. Sự chuyển từ một tế bào bình thường sang một tế bào ung thư qua nhiều giai đoạn, từ một tổn thương tiền ung thư đến ung thư ác tính. Những thay đổi này là do các yếu tố sau đây', 'Ung thư là căn bệnh có nguyên nhân gây tử vong hàng đầu trên thế giới. Khối u thường', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2016-08-30 09:10:49', '2016-08-30 09:10:49', '', 44, 'http://localhost/namlimxanh1/44-revision-v1/', 0, 'revision', '', 0),
(46, 1, '2016-08-30 09:51:30', '2016-08-30 09:51:30', '<img class="alignnone size-full wp-image-18" src="http://localhost/namlimxanh1/wp-content/uploads/2016/08/namlimxanh3.jpg" alt="namlimxanh3" width="259" height="194" />Ung thư là căn bệnh có nguyên nhân gây tử vong hàng đầu trên thế giới. Khối u thường là các khối u bất thường, có thể là lành tính, có thế ác tính cũng có thể không ung thư. Chỉ có những khối u ác tính mới có lể lây lan sang các mô khác và gây di căn. Sự chuyển từ một tế bào bình thường sang một tế bào ung thư qua nhiều giai đoạn, từ một tổn thương tiền ung thư đến ung thư ác tính. Những thay đổi này là do các yếu tố sau đây', 'Ung thư là căn bệnh có nguyên nhân gây tử vong hàng đầu trên thế giới. Khối u thường', '', 'inherit', 'closed', 'closed', '', '44-autosave-v1', '', '', '2016-08-30 09:51:30', '2016-08-30 09:51:30', '', 44, 'http://localhost/namlimxanh1/44-autosave-v1/', 0, 'revision', '', 0),
(48, 1, '2016-08-31 01:46:27', '2016-08-31 01:46:27', 'các đại lý ở Hà Nội', 'Hà Nội', '', 'publish', 'open', 'open', '', 'ha-noi', '', '', '2016-08-31 01:47:25', '2016-08-31 01:47:25', '', 0, 'http://localhost/namlimxanh1/?p=48', 0, 'post', '', 0),
(49, 1, '2016-08-31 01:46:27', '2016-08-31 01:46:27', 'các đại lý ở Hà Nội', 'Hà Nội', '', 'inherit', 'closed', 'closed', '', '48-revision-v1', '', '', '2016-08-31 01:46:27', '2016-08-31 01:46:27', '', 48, 'http://localhost/namlimxanh1/48-revision-v1/', 0, 'revision', '', 0),
(50, 1, '2016-08-31 01:47:05', '2016-08-31 01:47:05', 'Các Đại lý ở Hải Phòng', 'Hải Phòng', '', 'publish', 'open', 'open', '', 'hai-phong', '', '', '2016-08-31 01:47:05', '2016-08-31 01:47:05', '', 0, 'http://localhost/namlimxanh1/?p=50', 0, 'post', '', 0),
(51, 1, '2016-08-31 01:47:05', '2016-08-31 01:47:05', 'Các Đại lý ở Hải Phòng', 'Hải Phòng', '', 'inherit', 'closed', 'closed', '', '50-revision-v1', '', '', '2016-08-31 01:47:05', '2016-08-31 01:47:05', '', 50, 'http://localhost/namlimxanh1/50-revision-v1/', 0, 'revision', '', 0),
(52, 1, '2016-08-31 01:57:52', '2016-08-31 01:57:52', 'Các đại lý ở Nghệ An', 'Nghệ An', '', 'publish', 'open', 'open', '', 'nghe-an', '', '', '2016-08-31 01:57:52', '2016-08-31 01:57:52', '', 0, 'http://localhost/namlimxanh1/?p=52', 0, 'post', '', 0),
(53, 1, '2016-08-31 01:57:52', '2016-08-31 01:57:52', 'Các đại lý ở Nghệ An', 'Nghệ An', '', 'inherit', 'closed', 'closed', '', '52-revision-v1', '', '', '2016-08-31 01:57:52', '2016-08-31 01:57:52', '', 52, 'http://localhost/namlimxanh1/52-revision-v1/', 0, 'revision', '', 0),
(54, 1, '2016-08-31 01:58:31', '2016-08-31 01:58:31', 'các đại lý ở Quảng Bình', 'Quảng Bình', '', 'publish', 'open', 'open', '', 'quang-binh', '', '', '2016-08-31 01:58:31', '2016-08-31 01:58:31', '', 0, 'http://localhost/namlimxanh1/?p=54', 0, 'post', '', 0),
(55, 1, '2016-08-31 01:58:31', '2016-08-31 01:58:31', 'các đại lý ở Quảng Bình', 'Quảng Bình', '', 'inherit', 'closed', 'closed', '', '54-revision-v1', '', '', '2016-08-31 01:58:31', '2016-08-31 01:58:31', '', 54, 'http://localhost/namlimxanh1/54-revision-v1/', 0, 'revision', '', 0),
(56, 1, '2016-08-31 01:59:17', '2016-08-31 01:59:17', 'Các đại lý trong HCM', 'Hồ Chí Minh', '', 'publish', 'open', 'open', '', 'ho-chi-minh', '', '', '2016-08-31 01:59:17', '2016-08-31 01:59:17', '', 0, 'http://localhost/namlimxanh1/?p=56', 0, 'post', '', 0),
(57, 1, '2016-08-31 01:59:17', '2016-08-31 01:59:17', 'Các đại lý trong HCM', 'Hồ Chí Minh', '', 'inherit', 'closed', 'closed', '', '56-revision-v1', '', '', '2016-08-31 01:59:17', '2016-08-31 01:59:17', '', 56, 'http://localhost/namlimxanh1/56-revision-v1/', 0, 'revision', '', 0),
(58, 1, '2016-08-31 01:59:53', '2016-08-31 01:59:53', 'Các đại lý Bình Dương', 'Bình Dương', '', 'publish', 'open', 'open', '', 'binh-duong', '', '', '2016-08-31 01:59:53', '2016-08-31 01:59:53', '', 0, 'http://localhost/namlimxanh1/?p=58', 0, 'post', '', 0),
(59, 1, '2016-08-31 01:59:53', '2016-08-31 01:59:53', 'Các đại lý Bình Dương', 'Bình Dương', '', 'inherit', 'closed', 'closed', '', '58-revision-v1', '', '', '2016-08-31 01:59:53', '2016-08-31 01:59:53', '', 58, 'http://localhost/namlimxanh1/58-revision-v1/', 0, 'revision', '', 0),
(60, 1, '2016-08-31 02:28:01', '2016-08-31 02:28:01', 'hà nam', 'Hà Nam', '', 'publish', 'open', 'open', '', 'ha-nam', '', '', '2016-08-31 02:28:57', '2016-08-31 02:28:57', '', 0, 'http://localhost/namlimxanh1/?p=60', 0, 'post', '', 0),
(61, 1, '2016-08-31 02:28:01', '2016-08-31 02:28:01', 'hà nam', 'Hà Nam', '', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2016-08-31 02:28:01', '2016-08-31 02:28:01', '', 60, 'http://localhost/namlimxanh1/60-revision-v1/', 0, 'revision', '', 0),
(62, 1, '2016-08-31 02:28:22', '2016-08-31 02:28:22', 'VP', 'Vĩnh Phúc', '', 'publish', 'open', 'open', '', 'vinh-phuc', '', '', '2016-08-31 02:28:34', '2016-08-31 02:28:34', '', 0, 'http://localhost/namlimxanh1/?p=62', 0, 'post', '', 0),
(63, 1, '2016-08-31 02:28:22', '2016-08-31 02:28:22', 'VP', 'Vĩnh Phúc', '', 'inherit', 'closed', 'closed', '', '62-revision-v1', '', '', '2016-08-31 02:28:22', '2016-08-31 02:28:22', '', 62, 'http://localhost/namlimxanh1/62-revision-v1/', 0, 'revision', '', 0),
(68, 1, '2016-08-31 09:15:49', '2016-08-31 09:15:49', '', 'sp1', '', 'inherit', 'open', 'closed', '', 'sp1', '', '', '2016-08-31 09:15:49', '2016-08-31 09:15:49', '', 0, 'http://localhost/namlimxanh1/wp-content/uploads/2016/08/sp1.png', 0, 'attachment', 'image/png', 0),
(69, 1, '2016-08-31 09:15:49', '2016-08-31 09:15:49', '', 'sp2', '', 'inherit', 'open', 'closed', '', 'sp2', '', '', '2016-08-31 09:15:49', '2016-08-31 09:15:49', '', 0, 'http://localhost/namlimxanh1/wp-content/uploads/2016/08/sp2.png', 0, 'attachment', 'image/png', 0),
(70, 1, '2016-08-31 09:15:50', '2016-08-31 09:15:50', '', 'sp3', '', 'inherit', 'open', 'closed', '', 'sp3', '', '', '2016-08-31 09:15:50', '2016-08-31 09:15:50', '', 0, 'http://localhost/namlimxanh1/wp-content/uploads/2016/08/sp3.png', 0, 'attachment', 'image/png', 0),
(73, 1, '2016-09-01 04:39:00', '2016-09-01 04:39:00', ' ', '', '', 'publish', 'closed', 'closed', '', '73', '', '', '2016-09-01 04:39:00', '2016-09-01 04:39:00', '', 0, 'http://localhost/namlimxanh1/?p=73', 9, 'nav_menu_item', '', 0),
(74, 1, '2016-09-01 04:39:01', '2016-09-01 04:39:01', ' ', '', '', 'publish', 'closed', 'closed', '', '74', '', '', '2016-09-01 04:39:01', '2016-09-01 04:39:01', '', 6, 'http://localhost/namlimxanh1/?p=74', 11, 'nav_menu_item', '', 0),
(75, 1, '2016-09-01 04:39:00', '2016-09-01 04:39:00', ' ', '', '', 'publish', 'closed', 'closed', '', '75', '', '', '2016-09-01 04:39:00', '2016-09-01 04:39:00', '', 6, 'http://localhost/namlimxanh1/?p=75', 10, 'nav_menu_item', '', 0),
(76, 1, '2016-09-01 04:39:00', '2016-09-01 04:39:00', ' ', '', '', 'publish', 'closed', 'closed', '', '76', '', '', '2016-09-01 04:39:00', '2016-09-01 04:39:00', '', 0, 'http://localhost/namlimxanh1/?p=76', 6, 'nav_menu_item', '', 0),
(77, 1, '2016-09-01 04:39:00', '2016-09-01 04:39:00', ' ', '', '', 'publish', 'closed', 'closed', '', '77', '', '', '2016-09-01 04:39:00', '2016-09-01 04:39:00', '', 5, 'http://localhost/namlimxanh1/?p=77', 8, 'nav_menu_item', '', 0),
(78, 1, '2016-09-01 04:39:00', '2016-09-01 04:39:00', ' ', '', '', 'publish', 'closed', 'closed', '', '78', '', '', '2016-09-01 04:39:00', '2016-09-01 04:39:00', '', 5, 'http://localhost/namlimxanh1/?p=78', 7, 'nav_menu_item', '', 0),
(79, 1, '2016-09-01 04:39:01', '2016-09-01 04:39:01', ' ', '', '', 'publish', 'closed', 'closed', '', '79', '', '', '2016-09-01 04:39:01', '2016-09-01 04:39:01', '', 0, 'http://localhost/namlimxanh1/?p=79', 12, 'nav_menu_item', '', 0),
(80, 1, '2016-09-01 04:39:01', '2016-09-01 04:39:01', ' ', '', '', 'publish', 'closed', 'closed', '', '80', '', '', '2016-09-01 04:39:01', '2016-09-01 04:39:01', '', 7, 'http://localhost/namlimxanh1/?p=80', 13, 'nav_menu_item', '', 0),
(81, 1, '2016-09-01 04:39:01', '2016-09-01 04:39:01', ' ', '', '', 'publish', 'closed', 'closed', '', '81', '', '', '2016-09-01 04:39:01', '2016-09-01 04:39:01', '', 7, 'http://localhost/namlimxanh1/?p=81', 14, 'nav_menu_item', '', 0),
(82, 1, '2016-09-01 04:38:59', '2016-09-01 04:38:59', ' ', '', '', 'publish', 'closed', 'closed', '', '82', '', '', '2016-09-01 04:38:59', '2016-09-01 04:38:59', '', 0, 'http://localhost/namlimxanh1/?p=82', 2, 'nav_menu_item', '', 0),
(83, 1, '2016-09-01 04:38:59', '2016-09-01 04:38:59', ' ', '', '', 'publish', 'closed', 'closed', '', '83', '', '', '2016-09-01 04:38:59', '2016-09-01 04:38:59', '', 4, 'http://localhost/namlimxanh1/?p=83', 4, 'nav_menu_item', '', 0),
(84, 1, '2016-09-01 04:39:00', '2016-09-01 04:39:00', ' ', '', '', 'publish', 'closed', 'closed', '', '84', '', '', '2016-09-01 04:39:00', '2016-09-01 04:39:00', '', 4, 'http://localhost/namlimxanh1/?p=84', 5, 'nav_menu_item', '', 0),
(85, 1, '2016-09-01 04:38:59', '2016-09-01 04:38:59', ' ', '', '', 'publish', 'closed', 'closed', '', '85', '', '', '2016-09-01 04:38:59', '2016-09-01 04:38:59', '', 4, 'http://localhost/namlimxanh1/?p=85', 3, 'nav_menu_item', '', 0),
(86, 1, '2016-09-01 04:39:02', '2016-09-01 04:39:02', ' ', '', '', 'publish', 'closed', 'closed', '', '86', '', '', '2016-09-01 04:39:02', '2016-09-01 04:39:02', '', 0, 'http://localhost/namlimxanh1/?p=86', 18, 'nav_menu_item', '', 0),
(87, 1, '2016-09-01 04:39:02', '2016-09-01 04:39:02', ' ', '', '', 'publish', 'closed', 'closed', '', '87', '', '', '2016-09-01 04:39:02', '2016-09-01 04:39:02', '', 23, 'http://localhost/namlimxanh1/?p=87', 20, 'nav_menu_item', '', 0),
(88, 1, '2016-09-01 04:39:02', '2016-09-01 04:39:02', ' ', '', '', 'publish', 'closed', 'closed', '', '88', '', '', '2016-09-01 04:39:02', '2016-09-01 04:39:02', '', 23, 'http://localhost/namlimxanh1/?p=88', 19, 'nav_menu_item', '', 0),
(89, 1, '2016-09-01 04:39:02', '2016-09-01 04:39:02', ' ', '', '', 'publish', 'closed', 'closed', '', '89', '', '', '2016-09-01 04:39:02', '2016-09-01 04:39:02', '', 23, 'http://localhost/namlimxanh1/?p=89', 21, 'nav_menu_item', '', 0),
(90, 1, '2016-09-01 04:39:01', '2016-09-01 04:39:01', ' ', '', '', 'publish', 'closed', 'closed', '', '90', '', '', '2016-09-01 04:39:01', '2016-09-01 04:39:01', '', 0, 'http://localhost/namlimxanh1/?p=90', 15, 'nav_menu_item', '', 0),
(91, 1, '2016-09-01 04:39:02', '2016-09-01 04:39:02', ' ', '', '', 'publish', 'closed', 'closed', '', '91', '', '', '2016-09-01 04:39:02', '2016-09-01 04:39:02', '', 8, 'http://localhost/namlimxanh1/?p=91', 16, 'nav_menu_item', '', 0),
(92, 1, '2016-09-01 04:39:02', '2016-09-01 04:39:02', ' ', '', '', 'publish', 'closed', 'closed', '', '92', '', '', '2016-09-01 04:39:02', '2016-09-01 04:39:02', '', 8, 'http://localhost/namlimxanh1/?p=92', 17, 'nav_menu_item', '', 0),
(93, 1, '2016-09-01 06:54:11', '2016-09-01 06:54:11', 'dsdfsd', 'Nấm lim xanh tự nhiên', '', 'publish', 'open', 'open', '', 'nam-lim-xanh-tu-nhien', '', '', '2016-09-03 07:16:48', '2016-09-03 07:16:48', '', 0, 'http://localhost/namlimxanh1/?p=93', 0, 'post', '', 0),
(94, 1, '2016-09-01 06:54:11', '2016-09-01 06:54:11', 'dsdfsd', 'Nấm linh xanh tự nhiên', '', 'inherit', 'closed', 'closed', '', '93-revision-v1', '', '', '2016-09-01 06:54:11', '2016-09-01 06:54:11', '', 93, 'http://localhost/namlimxanh1/93-revision-v1/', 0, 'revision', '', 0),
(95, 1, '2016-09-03 00:10:26', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'open', 'open', '', '', '', '', '2016-09-03 00:10:26', '0000-00-00 00:00:00', '', 0, 'http://localhost/namlimxanh1/?p=95', 0, 'post', '', 0),
(96, 1, '2016-09-03 07:16:48', '2016-09-03 07:16:48', 'dsdfsd', 'Nấm lim xanh tự nhiên', '', 'inherit', 'closed', 'closed', '', '93-revision-v1', '', '', '2016-09-03 07:16:48', '2016-09-03 07:16:48', '', 93, 'http://localhost/namlimxanh1/93-revision-v1/', 0, 'revision', '', 0),
(97, 1, '2016-09-03 07:19:37', '2016-09-03 07:19:37', 'abcde', 'Nấm lim xanh tự nhiên', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2016-09-03 07:19:37', '2016-09-03 07:19:37', '', 23, 'http://localhost/namlimxanh1/23-revision-v1/', 0, 'revision', '', 0),
(98, 1, '2016-09-03 08:28:41', '2016-09-03 08:28:41', '', 'daily1', '', 'inherit', 'open', 'closed', '', 'daily1', '', '', '2016-09-03 08:28:41', '2016-09-03 08:28:41', '', 0, 'http://localhost/namlimxanh1/wp-content/uploads/2016/09/daily1.png', 0, 'attachment', 'image/png', 0),
(99, 1, '2016-09-03 08:28:43', '2016-09-03 08:28:43', '', 'daily2', '', 'inherit', 'open', 'closed', '', 'daily2', '', '', '2016-09-03 08:28:43', '2016-09-03 08:28:43', '', 0, 'http://localhost/namlimxanh1/wp-content/uploads/2016/09/daily2.png', 0, 'attachment', 'image/png', 0),
(100, 1, '2016-09-03 08:28:45', '2016-09-03 08:28:45', '', 'daily3', '', 'inherit', 'open', 'closed', '', 'daily3', '', '', '2016-09-03 08:28:45', '2016-09-03 08:28:45', '', 0, 'http://localhost/namlimxanh1/wp-content/uploads/2016/09/daily3.png', 0, 'attachment', 'image/png', 0),
(101, 1, '2016-09-04 17:13:22', '2016-09-04 17:13:22', '', 'slide-news', '', 'inherit', 'open', 'closed', '', 'slide-news', '', '', '2016-09-04 17:13:22', '2016-09-04 17:13:22', '', 0, 'http://localhost/namlimxanh1/wp-content/uploads/2016/09/slide-news.png', 0, 'attachment', 'image/png', 0),
(102, 1, '2016-09-04 17:20:43', '2016-09-04 17:20:43', '', 'logo-new', '', 'inherit', 'open', 'closed', '', 'logo-new', '', '', '2016-09-04 17:20:43', '2016-09-04 17:20:43', '', 0, 'http://localhost/namlimxanh1/wp-content/uploads/2016/09/logo-new.png', 0, 'attachment', 'image/png', 0),
(103, 1, '2016-09-04 17:48:39', '2016-09-04 17:48:39', 'Không chỉ có tác dụng bồi bổ sứ khỏe, nâng cao thể trạng, nấm lim xanh còn được biết đến với kha', 'Nấm lim xanh - Giải pháp "vàng" cho bệnh nhân ung thư', '', 'inherit', 'closed', 'closed', '', '36-autosave-v1', '', '', '2016-09-04 17:48:39', '2016-09-04 17:48:39', '', 36, 'http://localhost/namlimxanh1/36-autosave-v1/', 0, 'revision', '', 0),
(104, 1, '2016-09-04 17:50:08', '2016-09-04 17:50:08', 'Không chỉ có tác dụng bồi bổ sứ khỏe, nâng cao thể trạng, nấm lim xanh còn được biết đến với khả năng hỗ trợ điều trị bệnh ung thư vô cùng hiệu quả và có rất nhiều người đã và đang sử dụng nó.', 'Nấm lim xanh - Giải pháp "vàng" cho bệnh nhân ung thư', 'Không chỉ có tác dụng bồi bổ sứ khỏe, nâng cao thể trạng, nấm lim xanh còn được biết đến với khả năng hỗ trợ điều trị bệnh ung thư vô cùng hiệu quả', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2016-09-04 17:50:08', '2016-09-04 17:50:08', '', 36, 'http://localhost/namlimxanh1/36-revision-v1/', 0, 'revision', '', 0),
(105, 1, '2016-09-04 18:05:51', '2016-09-04 18:05:51', '', 'article3', '', 'inherit', 'open', 'closed', '', 'article3', '', '', '2016-09-04 18:05:51', '2016-09-04 18:05:51', '', 21, 'http://localhost/namlimxanh1/wp-content/uploads/2016/08/article3.png', 0, 'attachment', 'image/png', 0),
(106, 1, '2016-09-04 18:06:18', '2016-09-04 18:06:18', '', 'article1', '', 'inherit', 'open', 'closed', '', 'article1', '', '', '2016-09-04 18:06:18', '2016-09-04 18:06:18', '', 21, 'http://localhost/namlimxanh1/wp-content/uploads/2016/08/article1.png', 0, 'attachment', 'image/png', 0),
(107, 1, '2016-09-04 18:06:20', '2016-09-04 18:06:20', '', 'article2', '', 'inherit', 'open', 'closed', '', 'article2', '', '', '2016-09-04 18:06:20', '2016-09-04 18:06:20', '', 21, 'http://localhost/namlimxanh1/wp-content/uploads/2016/08/article2.png', 0, 'attachment', 'image/png', 0),
(108, 1, '2016-09-04 18:06:44', '2016-09-04 18:06:44', 'Không giống các loại thảo dược khác chỉ chữa được một vài bệnh ung thư tiêu biểu, tác dụng nấm lim xanh đã được kiểm chứng là chữa được hầu hết tất cả các bệnh ung thư. Ngoài ra, loại nấm này còn phát huy công dụng chữa nhiều loại bệnh khác như: Bệnh về gan, Gout, tai biến mạch máu não, tiểu đường, phì đại tiền liệt tuyến, đau dạ dày, tá tràng, giảm cân, ổn định huyết áp, giảm mỡ máu, giải độc gan, giải độc phóng xạ sau xạ trị,…\r\n\r\nVới những công dụng quý báu, các chuyên gia khuyên dùng nấm lim xanh chữa bệnh ngay khi phát hiện có bệnh trong người. Nếu dùng nấm mỗi ngày còn giúp phòng ngừa mọi loại bệnh', 'Dứt cơn đau, mau khỏi gout nhờ nấm lim xanh', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2016-09-04 18:06:44', '2016-09-04 18:06:44', '', 21, 'http://localhost/namlimxanh1/21-revision-v1/', 0, 'revision', '', 0),
(109, 1, '2016-09-05 01:19:48', '2016-09-05 01:19:48', 'Uống nấm lim xanh có tác dụng gì?', 'Uống nấm lim xanh có tác dụng gì?', '', 'publish', 'open', 'open', '', 'uong-nam-lim-xanh-co-tac-dung-gi', '', '', '2016-09-05 01:19:48', '2016-09-05 01:19:48', '', 0, 'http://localhost/namlimxanh1/?p=109', 0, 'post', '', 0),
(110, 1, '2016-09-05 01:19:48', '2016-09-05 01:19:48', 'Uống nấm lim xanh có tác dụng gì?', 'Uống nấm lim xanh có tác dụng gì?', '', 'inherit', 'closed', 'closed', '', '109-revision-v1', '', '', '2016-09-05 01:19:48', '2016-09-05 01:19:48', '', 109, 'http://localhost/namlimxanh1/109-revision-v1/', 0, 'revision', '', 0),
(111, 1, '2016-09-05 01:20:53', '2016-09-05 01:20:53', 'ccccccccccc', 'Công dụng của nấm lim xanh Tiên Phước với bệnh gan', '', 'publish', 'open', 'open', '', 'cong-dung-cua-nam-lim-xanh-tien-phuoc-voi-benh-gan', '', '', '2016-09-05 01:20:53', '2016-09-05 01:20:53', '', 0, 'http://localhost/namlimxanh1/?p=111', 0, 'post', '', 0),
(112, 1, '2016-09-05 01:20:53', '2016-09-05 01:20:53', 'ccccccccccc', 'Công dụng của nấm lim xanh Tiên Phước với bệnh gan', '', 'inherit', 'closed', 'closed', '', '111-revision-v1', '', '', '2016-09-05 01:20:53', '2016-09-05 01:20:53', '', 111, 'http://localhost/namlimxanh1/111-revision-v1/', 0, 'revision', '', 0),
(113, 1, '2016-09-05 03:23:27', '2016-09-05 03:23:27', 'sdfdf', 'Nấm lim xanh gia truyền', '', 'publish', 'open', 'open', '', 'cc', '', '', '2016-09-05 03:25:26', '2016-09-05 03:25:26', '', 0, 'http://localhost/namlimxanh1/?p=113', 0, 'post', '', 0),
(114, 1, '2016-09-05 03:23:27', '2016-09-05 03:23:27', 'sdfdf', 'cc', '', 'inherit', 'closed', 'closed', '', '113-revision-v1', '', '', '2016-09-05 03:23:27', '2016-09-05 03:23:27', '', 113, 'http://localhost/namlimxanh1/113-revision-v1/', 0, 'revision', '', 0),
(115, 1, '2016-09-05 03:24:32', '2016-09-05 03:24:32', 'sdfdf', 'Nấm lim xanh gia truyền', '', 'inherit', 'closed', 'closed', '', '113-autosave-v1', '', '', '2016-09-05 03:24:32', '2016-09-05 03:24:32', '', 113, 'http://localhost/namlimxanh1/113-autosave-v1/', 0, 'revision', '', 0),
(116, 1, '2016-09-05 03:25:26', '2016-09-05 03:25:26', 'sdfdf', 'Nấm lim xanh gia truyền', '', 'inherit', 'closed', 'closed', '', '113-revision-v1', '', '', '2016-09-05 03:25:26', '2016-09-05 03:25:26', '', 113, 'http://localhost/namlimxanh1/113-revision-v1/', 0, 'revision', '', 0),
(117, 1, '2016-09-05 03:37:47', '2016-09-05 03:37:47', 'sdfsdfdf', 'Đẩy lùi ung thư cổ tử cung nhờ thảo dược nấm lim xanh', '', 'publish', 'open', 'open', '', 'day-lui-ung-thu-co-tu-cung-nho-thao-duoc-nam-lim-xanh', '', '', '2016-09-05 03:46:57', '2016-09-05 03:46:57', '', 0, 'http://localhost/namlimxanh1/?p=117', 0, 'post', '', 0),
(118, 1, '2016-09-05 03:37:47', '2016-09-05 03:37:47', 'sdfsdfdf', 'Đẩy lùi ung thư cổ tử cung nhờ thảo dược nấm lim xanh', '', 'inherit', 'closed', 'closed', '', '117-revision-v1', '', '', '2016-09-05 03:37:47', '2016-09-05 03:37:47', '', 117, 'http://localhost/namlimxanh1/117-revision-v1/', 0, 'revision', '', 0),
(119, 1, '2016-09-05 03:38:29', '2016-09-05 03:38:29', 'cccc', 'Nấm lim xanh tái sinh sức khỏe', '', 'publish', 'open', 'open', '', 'nam-lim-xanh-tai-sinh-suc-khoe', '', '', '2016-09-05 04:18:48', '2016-09-05 04:18:48', '', 0, 'http://localhost/namlimxanh1/?p=119', 0, 'post', '', 0),
(120, 1, '2016-09-05 03:38:29', '2016-09-05 03:38:29', 'cccc', 'Nấm lim xanh tái sinh sức khỏe', '', 'inherit', 'closed', 'closed', '', '119-revision-v1', '', '', '2016-09-05 03:38:29', '2016-09-05 03:38:29', '', 119, 'http://localhost/namlimxanh1/119-revision-v1/', 0, 'revision', '', 0),
(121, 1, '2016-09-05 03:46:05', '2016-09-05 03:46:05', '', 'article2', '', 'inherit', 'open', 'closed', '', 'article2-2', '', '', '2016-09-05 03:46:05', '2016-09-05 03:46:05', '', 119, 'http://localhost/namlimxanh1/wp-content/uploads/2016/09/article2.png', 0, 'attachment', 'image/png', 0),
(122, 1, '2016-09-05 07:58:04', '2016-09-05 07:58:04', 'csdsdf', 'Cách phòng chống đột quỵ hiểu quả nhờ dược thảo nấm lim xanh', '', 'publish', 'open', 'open', '', 'cach-phong-chong-dot-quy-hieu-qua-nho-duoc-thao-nam-lim-xanh', '', '', '2016-09-05 08:50:40', '2016-09-05 08:50:40', '', 0, 'http://localhost/namlimxanh1/?p=122', 0, 'post', '', 0),
(123, 1, '2016-09-05 07:58:04', '2016-09-05 07:58:04', 'csdsdf', 'Cách phòng chống đột quỵ hiểu quả nhờ dược thảo nấm lim xanh', '', 'inherit', 'closed', 'closed', '', '122-revision-v1', '', '', '2016-09-05 07:58:04', '2016-09-05 07:58:04', '', 122, 'http://localhost/namlimxanh1/122-revision-v1/', 0, 'revision', '', 0),
(124, 1, '2016-09-05 09:27:02', '2016-09-05 09:27:02', 'ccccccccc', 'Đừng để ân hận vì giải độc gan không kịp thời!', '', 'publish', 'open', 'open', '', 'dung-de-an-han-vi-giai-doc-gan-khong-kip-thoi', '', '', '2016-09-05 09:27:02', '2016-09-05 09:27:02', '', 0, 'http://localhost/namlimxanh1/?p=124', 0, 'post', '', 0),
(125, 1, '2016-09-05 09:27:02', '2016-09-05 09:27:02', 'ccccccccc', 'Đừng để ân hận vì giải độc gan không kịp thời!', '', 'inherit', 'closed', 'closed', '', '124-revision-v1', '', '', '2016-09-05 09:27:02', '2016-09-05 09:27:02', '', 124, 'http://localhost/namlimxanh1/124-revision-v1/', 0, 'revision', '', 0),
(126, 1, '2016-09-05 09:27:37', '2016-09-05 09:27:37', 'cc', 'Loại bỏ ung thư gan trong thời gian ngắn', '', 'publish', 'open', 'open', '', 'loai-bo-ung-thu-gan-trong-thoi-gian-ngan', '', '', '2016-09-05 09:27:56', '2016-09-05 09:27:56', '', 0, 'http://localhost/namlimxanh1/?p=126', 0, 'post', '', 0),
(127, 1, '2016-09-05 09:27:37', '2016-09-05 09:27:37', 'cc', 'Loại bỏ ung thư gan trong thời gian ngắn', '', 'inherit', 'closed', 'closed', '', '126-revision-v1', '', '', '2016-09-05 09:27:37', '2016-09-05 09:27:37', '', 126, 'http://localhost/namlimxanh1/126-revision-v1/', 0, 'revision', '', 0),
(128, 1, '2016-09-05 14:55:28', '2016-09-05 14:55:28', 'Ung thư là căn bệnh có nguyên nhân gây tử vong hàng đầu trên thế giới. Khối u thường là các khối u bất thường, có thể là lành tính, có thế ác tính cũng có thể không ung thư. Chỉ có những khối u ác tính mới có lể lây lan sang các mô khác và gây di căn. Sự chuyển từ một tế bào bình thường sang một tế bào ung thư qua nhiều giai đoạn, từ một tổn thương tiền ung thư đến ung thư ác tính. Những thay đổi này là do các yếu tố sau đây', 'Ung thư là căn bệnh có nguyên nhân gây tử vong hàng đầu trên thế giới. Khối u thường', 'Ung thư là căn bệnh có nguyên nhân gây tử vong hàng đầu trên thế giới. Khối u thường là các khối u bất thường, có thể là lành tính, có thế ác tính cũng có thể không ung thư', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2016-09-05 14:55:28', '2016-09-05 14:55:28', '', 44, 'http://localhost/namlimxanh1/44-revision-v1/', 0, 'revision', '', 0),
(129, 1, '2016-09-05 14:56:21', '2016-09-05 14:56:21', 'Ung thư là căn bệnh có nguyên nhân gây tử vong hàng đầu trên thế giới. Khối u thường là các khối u bất thường, có thể là lành tính, có thế ác tính cũng có thể không ung thư. Chỉ có những khối u ác tính mới có lể lây lan sang các mô khác và gây di căn. Sự chuyển từ một tế bào bình thường sang một tế bào ung thư qua nhiều giai đoạn, từ một tổn thương tiền ung thư đến ung thư ác tính. Những thay đổi này là do các yếu tố sau đây', 'Ung thư là căn bệnh có nguyên nhân gây tử vong hàng đầu trên thế giới', 'Ung thư là căn bệnh có nguyên nhân gây tử vong hàng đầu trên thế giới. Khối u thường là các khối u bất thường, có thể là lành tính, có thế ác tính cũng có thể không ung thư', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2016-09-05 14:56:21', '2016-09-05 14:56:21', '', 44, 'http://localhost/namlimxanh1/44-revision-v1/', 0, 'revision', '', 0),
(130, 1, '2016-09-05 14:57:49', '2016-09-05 14:57:49', '<div id="main-content">\r\n<div id="content">\r\n\r\nKhông giống các loại thảo dược khác chỉ chữa được một vài bệnh ung thư tiêu biểu, tác dụng nấm lim xanh đã được kiểm chứng là chữa được hầu hết tất cả các bệnh ung thư. Ngoài ra, loại nấm này còn phát huy công dụng chữa nhiều loại bệnh khác như: Bệnh về gan, Gout, tai biến mạch máu não, tiểu đường, phì đại tiền liệt tuyến, đau dạ dày, tá tràng, giảm cân, ổn định huyết áp, giảm mỡ máu, giải độc gan, giải độc phóng xạ sau xạ trị,…\r\n\r\nVới những công dụng quý báu, các chuyên gia khuyên dùng nấm lim xanh chữa bệnh ngay khi phát hiện có bệnh trong người. Nếu dùng nấm mỗi ngày còn giúp phòng ngừa mọi loại bệnh.\r\n\r\n</div>\r\n</div>', 'Không giống các loại thảo dược khác chỉ chữa được một vài bệnh ung thư tiêu biểu', 'Không giống các loại thảo dược khác chỉ chữa được một vài bệnh ung thư tiêu biểu, tác dụng nấm lim xanh đã được kiểm chứng là chữa được hầu hết tất cả các bệnh ung thư', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2016-09-05 14:57:49', '2016-09-05 14:57:49', '', 41, 'http://localhost/namlimxanh1/41-revision-v1/', 0, 'revision', '', 0),
(131, 1, '2016-09-05 15:16:53', '2016-09-05 15:16:53', '<img class="alignnone size-full wp-image-121" src="http://localhost/namlimxanh1/wp-content/uploads/2016/09/article2.png" alt="article2" width="150" height="103" /> <img class="alignnone size-full wp-image-107" src="http://localhost/namlimxanh1/wp-content/uploads/2016/08/article2.png" alt="article2" width="130" height="89" />\r\n\r\n<img class="alignnone size-full wp-image-106" src="http://localhost/namlimxanh1/wp-content/uploads/2016/08/article1.png" alt="article1" width="130" height="89" /> <img class="alignnone size-full wp-image-105" src="http://localhost/namlimxanh1/wp-content/uploads/2016/08/article3.png" alt="article3" width="130" height="89" />', 'gallery', '', 'publish', 'open', 'open', '', 'gallery', '', '', '2016-09-05 15:17:37', '2016-09-05 15:17:37', '', 0, 'http://localhost/namlimxanh1/?p=131', 0, 'post', '', 0),
(132, 1, '2016-09-05 15:16:53', '2016-09-05 15:16:53', '<img class="alignnone size-full wp-image-121" src="http://localhost/namlimxanh1/wp-content/uploads/2016/09/article2.png" alt="article2" width="150" height="103" /> <img class="alignnone size-full wp-image-107" src="http://localhost/namlimxanh1/wp-content/uploads/2016/08/article2.png" alt="article2" width="130" height="89" />\r\n\r\n<img class="alignnone size-full wp-image-106" src="http://localhost/namlimxanh1/wp-content/uploads/2016/08/article1.png" alt="article1" width="130" height="89" /> <img class="alignnone size-full wp-image-105" src="http://localhost/namlimxanh1/wp-content/uploads/2016/08/article3.png" alt="article3" width="130" height="89" />', 'gallery', '', 'inherit', 'closed', 'closed', '', '131-revision-v1', '', '', '2016-09-05 15:16:53', '2016-09-05 15:16:53', '', 131, 'http://localhost/namlimxanh1/131-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(133, 1, '2016-09-05 15:28:12', '0000-00-00 00:00:00', 'eyJ0aXRsZSI6Ik5leHRHRU4gQmFzaWMgVGh1bWJuYWlscyIsImVudGl0eV90eXBlcyI6WyJpbWFnZSJdLCJwcmV2aWV3X2ltYWdlX3JlbHBhdGgiOiJcXG5leHRnZW4tZ2FsbGVyeVxccHJvZHVjdHNcXHBob3RvY3JhdGlfbmV4dGdlblxcbW9kdWxlc1xcbmV4dGdlbl9iYXNpY19nYWxsZXJ5XFxzdGF0aWNcXHRodW1iX3ByZXZpZXcuanBnIiwiZGVmYXVsdF9zb3VyY2UiOiJnYWxsZXJpZXMiLCJ2aWV3X29yZGVyIjoxMDAwMCwibmFtZSI6InBob3RvY3JhdGktbmV4dGdlbl9iYXNpY190aHVtYm5haWxzIiwiaW5zdGFsbGVkX2F0X3ZlcnNpb24iOiIyLjEuNTAiLCJpZF9maWVsZCI6IklEIiwic2V0dGluZ3MiOnsidXNlX2xpZ2h0Ym94X2VmZmVjdCI6dHJ1ZSwiaW1hZ2VzX3Blcl9wYWdlIjoiMjAiLCJudW1iZXJfb2ZfY29sdW1ucyI6MCwidGh1bWJuYWlsX3dpZHRoIjoyNDAsInRodW1ibmFpbF9oZWlnaHQiOjE2MCwic2hvd19hbGxfaW5fbGlnaHRib3giOjAsImFqYXhfcGFnaW5hdGlvbiI6MCwidXNlX2ltYWdlYnJvd3Nlcl9lZmZlY3QiOjAsInRlbXBsYXRlIjoiIiwiZGlzcGxheV9ub19pbWFnZXNfZXJyb3IiOjEsImRpc2FibGVfcGFnaW5hdGlvbiI6MCwic2hvd19zbGlkZXNob3dfbGluayI6MSwic2xpZGVzaG93X2xpbmtfdGV4dCI6IltTaG93IHNsaWRlc2hvd10iLCJvdmVycmlkZV90aHVtYm5haWxfc2V0dGluZ3MiOjAsInRodW1ibmFpbF9xdWFsaXR5IjoiMTAwIiwidGh1bWJuYWlsX2Nyb3AiOjEsInRodW1ibmFpbF93YXRlcm1hcmsiOjAsIm5nZ190cmlnZ2Vyc19kaXNwbGF5IjoibmV2ZXIifSwiaGlkZGVuX2Zyb21fdWkiOmZhbHNlLCJfX2RlZmF1bHRzX3NldCI6dHJ1ZX0=', 'NextGEN Basic Thumbnails', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-09-05 15:28:12', '0000-00-00 00:00:00', 'eyJ0aXRsZSI6Ik5leHRHRU4gQmFzaWMgVGh1bWJuYWlscyIsImVudGl0eV90eXBlcyI6WyJpbWFnZSJdLCJwcmV2aWV3X2ltYWdlX3JlbHBhdGgiOiJcXG5leHRnZW4tZ2FsbGVyeVxccHJvZHVjdHNcXHBob3RvY3JhdGlfbmV4dGdlblxcbW9kdWxlc1xcbmV4dGdlbl9iYXNpY19nYWxsZXJ5XFxzdGF0aWNcXHRodW1iX3ByZXZpZXcuanBnIiwiZGVmYXVsdF9zb3VyY2UiOiJnYWxsZXJpZXMiLCJ2aWV3X29yZGVyIjoxMDAwMCwibmFtZSI6InBob3RvY3JhdGktbmV4dGdlbl9iYXNpY190aHVtYm5haWxzIiwiaW5zdGFsbGVkX2F0X3ZlcnNpb24iOiIyLjEuNTAiLCJpZF9maWVsZCI6IklEIiwic2V0dGluZ3MiOnsidXNlX2xpZ2h0Ym94X2VmZmVjdCI6dHJ1ZSwiaW1hZ2VzX3Blcl9wYWdlIjoiMjAiLCJudW1iZXJfb2ZfY29sdW1ucyI6MCwidGh1bWJuYWlsX3dpZHRoIjoyNDAsInRodW1ibmFpbF9oZWlnaHQiOjE2MCwic2hvd19hbGxfaW5fbGlnaHRib3giOjAsImFqYXhfcGFnaW5hdGlvbiI6MCwidXNlX2ltYWdlYnJvd3Nlcl9lZmZlY3QiOjAsInRlbXBsYXRlIjoiIiwiZGlzcGxheV9ub19pbWFnZXNfZXJyb3IiOjEsImRpc2FibGVfcGFnaW5hdGlvbiI6MCwic2hvd19zbGlkZXNob3dfbGluayI6MSwic2xpZGVzaG93X2xpbmtfdGV4dCI6IltTaG93IHNsaWRlc2hvd10iLCJvdmVycmlkZV90aHVtYm5haWxfc2V0dGluZ3MiOjAsInRodW1ibmFpbF9xdWFsaXR5IjoiMTAwIiwidGh1bWJuYWlsX2Nyb3AiOjEsInRodW1ibmFpbF93YXRlcm1hcmsiOjAsIm5nZ190cmlnZ2Vyc19kaXNwbGF5IjoibmV2ZXIifSwiaGlkZGVuX2Zyb21fdWkiOmZhbHNlLCJfX2RlZmF1bHRzX3NldCI6dHJ1ZX0=', 0, 'http://localhost/namlimxanh1/?post_type=display_type&p=133', 0, 'display_type', '', 0),
(134, 1, '2016-09-05 15:28:13', '0000-00-00 00:00:00', 'eyJ0aXRsZSI6Ik5leHRHRU4gQmFzaWMgU2xpZGVzaG93IiwiZW50aXR5X3R5cGVzIjpbImltYWdlIl0sInByZXZpZXdfaW1hZ2VfcmVscGF0aCI6IlxcbmV4dGdlbi1nYWxsZXJ5XFxwcm9kdWN0c1xccGhvdG9jcmF0aV9uZXh0Z2VuXFxtb2R1bGVzXFxuZXh0Z2VuX2Jhc2ljX2dhbGxlcnlcXHN0YXRpY1xcc2xpZGVzaG93X3ByZXZpZXcuanBnIiwiZGVmYXVsdF9zb3VyY2UiOiJnYWxsZXJpZXMiLCJ2aWV3X29yZGVyIjoxMDAxMCwibmFtZSI6InBob3RvY3JhdGktbmV4dGdlbl9iYXNpY19zbGlkZXNob3ciLCJpbnN0YWxsZWRfYXRfdmVyc2lvbiI6IjIuMS41MCIsImlkX2ZpZWxkIjoiSUQiLCJzZXR0aW5ncyI6eyJ1c2VfbGlnaHRib3hfZWZmZWN0Ijp0cnVlLCJnYWxsZXJ5X3dpZHRoIjo2MDAsImdhbGxlcnlfaGVpZ2h0Ijo0MDAsInRodW1ibmFpbF93aWR0aCI6MjQwLCJ0aHVtYm5haWxfaGVpZ2h0IjoxNjAsImN5Y2xlX2ludGVydmFsIjoxMCwiY3ljbGVfZWZmZWN0IjpudWxsLCJlZmZlY3RfY29kZSI6ImNsYXNzPVwibmdnLWZhbmN5Ym94XCIgcmVsPVwiJUdBTExFUllfTkFNRSVcIiIsInNob3dfdGh1bWJuYWlsX2xpbmsiOjEsInRodW1ibmFpbF9saW5rX3RleHQiOiJbU2hvdyB0aHVtYm5haWxzXSIsInRlbXBsYXRlIjoiIiwibmdnX3RyaWdnZXJzX2Rpc3BsYXkiOiJuZXZlciJ9LCJoaWRkZW5fZnJvbV91aSI6ZmFsc2UsIl9fZGVmYXVsdHNfc2V0Ijp0cnVlfQ==', 'NextGEN Basic Slideshow', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-09-05 15:28:13', '0000-00-00 00:00:00', 'eyJ0aXRsZSI6Ik5leHRHRU4gQmFzaWMgU2xpZGVzaG93IiwiZW50aXR5X3R5cGVzIjpbImltYWdlIl0sInByZXZpZXdfaW1hZ2VfcmVscGF0aCI6IlxcbmV4dGdlbi1nYWxsZXJ5XFxwcm9kdWN0c1xccGhvdG9jcmF0aV9uZXh0Z2VuXFxtb2R1bGVzXFxuZXh0Z2VuX2Jhc2ljX2dhbGxlcnlcXHN0YXRpY1xcc2xpZGVzaG93X3ByZXZpZXcuanBnIiwiZGVmYXVsdF9zb3VyY2UiOiJnYWxsZXJpZXMiLCJ2aWV3X29yZGVyIjoxMDAxMCwibmFtZSI6InBob3RvY3JhdGktbmV4dGdlbl9iYXNpY19zbGlkZXNob3ciLCJpbnN0YWxsZWRfYXRfdmVyc2lvbiI6IjIuMS41MCIsImlkX2ZpZWxkIjoiSUQiLCJzZXR0aW5ncyI6eyJ1c2VfbGlnaHRib3hfZWZmZWN0Ijp0cnVlLCJnYWxsZXJ5X3dpZHRoIjo2MDAsImdhbGxlcnlfaGVpZ2h0Ijo0MDAsInRodW1ibmFpbF93aWR0aCI6MjQwLCJ0aHVtYm5haWxfaGVpZ2h0IjoxNjAsImN5Y2xlX2ludGVydmFsIjoxMCwiY3ljbGVfZWZmZWN0IjpudWxsLCJlZmZlY3RfY29kZSI6ImNsYXNzPVwibmdnLWZhbmN5Ym94XCIgcmVsPVwiJUdBTExFUllfTkFNRSVcIiIsInNob3dfdGh1bWJuYWlsX2xpbmsiOjEsInRodW1ibmFpbF9saW5rX3RleHQiOiJbU2hvdyB0aHVtYm5haWxzXSIsInRlbXBsYXRlIjoiIiwibmdnX3RyaWdnZXJzX2Rpc3BsYXkiOiJuZXZlciJ9LCJoaWRkZW5fZnJvbV91aSI6ZmFsc2UsIl9fZGVmYXVsdHNfc2V0Ijp0cnVlfQ==', 0, 'http://localhost/namlimxanh1/?post_type=display_type&p=134', 0, 'display_type', '', 0),
(135, 1, '2016-09-05 15:28:13', '0000-00-00 00:00:00', 'eyJ0aXRsZSI6Ik5leHRHRU4gQmFzaWMgSW1hZ2VCcm93c2VyIiwiZW50aXR5X3R5cGVzIjpbImltYWdlIl0sInByZXZpZXdfaW1hZ2VfcmVscGF0aCI6IlxcbmV4dGdlbi1nYWxsZXJ5XFxwcm9kdWN0c1xccGhvdG9jcmF0aV9uZXh0Z2VuXFxtb2R1bGVzXFxuZXh0Z2VuX2Jhc2ljX2ltYWdlYnJvd3Nlclxcc3RhdGljXFxwcmV2aWV3LmpwZyIsImRlZmF1bHRfc291cmNlIjoiZ2FsbGVyaWVzIiwidmlld19vcmRlciI6MTAwMjAsIm5hbWUiOiJwaG90b2NyYXRpLW5leHRnZW5fYmFzaWNfaW1hZ2Vicm93c2VyIiwiaW5zdGFsbGVkX2F0X3ZlcnNpb24iOiIyLjEuNTAiLCJpZF9maWVsZCI6IklEIiwic2V0dGluZ3MiOnsidXNlX2xpZ2h0Ym94X2VmZmVjdCI6dHJ1ZSwidGVtcGxhdGUiOiIiLCJuZ2dfdHJpZ2dlcnNfZGlzcGxheSI6Im5ldmVyIn0sImhpZGRlbl9mcm9tX3VpIjpmYWxzZSwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'NextGEN Basic ImageBrowser', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-09-05 15:28:13', '0000-00-00 00:00:00', 'eyJ0aXRsZSI6Ik5leHRHRU4gQmFzaWMgSW1hZ2VCcm93c2VyIiwiZW50aXR5X3R5cGVzIjpbImltYWdlIl0sInByZXZpZXdfaW1hZ2VfcmVscGF0aCI6IlxcbmV4dGdlbi1nYWxsZXJ5XFxwcm9kdWN0c1xccGhvdG9jcmF0aV9uZXh0Z2VuXFxtb2R1bGVzXFxuZXh0Z2VuX2Jhc2ljX2ltYWdlYnJvd3Nlclxcc3RhdGljXFxwcmV2aWV3LmpwZyIsImRlZmF1bHRfc291cmNlIjoiZ2FsbGVyaWVzIiwidmlld19vcmRlciI6MTAwMjAsIm5hbWUiOiJwaG90b2NyYXRpLW5leHRnZW5fYmFzaWNfaW1hZ2Vicm93c2VyIiwiaW5zdGFsbGVkX2F0X3ZlcnNpb24iOiIyLjEuNTAiLCJpZF9maWVsZCI6IklEIiwic2V0dGluZ3MiOnsidXNlX2xpZ2h0Ym94X2VmZmVjdCI6dHJ1ZSwidGVtcGxhdGUiOiIiLCJuZ2dfdHJpZ2dlcnNfZGlzcGxheSI6Im5ldmVyIn0sImhpZGRlbl9mcm9tX3VpIjpmYWxzZSwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/namlimxanh1/?post_type=display_type&p=135', 0, 'display_type', '', 0),
(136, 1, '2016-09-05 15:28:13', '0000-00-00 00:00:00', 'eyJ0aXRsZSI6Ik5leHRHRU4gQmFzaWMgU2luZ2xlUGljIiwiZW50aXR5X3R5cGVzIjpbImltYWdlIl0sInByZXZpZXdfaW1hZ2VfcmVscGF0aCI6IlxcbmV4dGdlbi1nYWxsZXJ5XFxwcm9kdWN0c1xccGhvdG9jcmF0aV9uZXh0Z2VuXFxtb2R1bGVzXFxuZXh0Z2VuX2Jhc2ljX3NpbmdsZXBpY1xcc3RhdGljXFxwcmV2aWV3LmdpZiIsImRlZmF1bHRfc291cmNlIjoiZ2FsbGVyaWVzIiwidmlld19vcmRlciI6MTAwNjAsImhpZGRlbl9mcm9tX3VpIjp0cnVlLCJuYW1lIjoicGhvdG9jcmF0aS1uZXh0Z2VuX2Jhc2ljX3NpbmdsZXBpYyIsImluc3RhbGxlZF9hdF92ZXJzaW9uIjoiMi4xLjUwIiwiaWRfZmllbGQiOiJJRCIsInNldHRpbmdzIjp7InVzZV9saWdodGJveF9lZmZlY3QiOnRydWUsIndpZHRoIjoiIiwiaGVpZ2h0IjoiIiwibW9kZSI6IiIsImRpc3BsYXlfd2F0ZXJtYXJrIjowLCJkaXNwbGF5X3JlZmxlY3Rpb24iOjAsImZsb2F0IjoiIiwibGluayI6IiIsImxpbmtfdGFyZ2V0IjoiX2JsYW5rIiwicXVhbGl0eSI6MTAwLCJjcm9wIjowLCJ0ZW1wbGF0ZSI6IiIsIm5nZ190cmlnZ2Vyc19kaXNwbGF5IjoibmV2ZXIifSwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'NextGEN Basic SinglePic', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-09-05 15:28:13', '0000-00-00 00:00:00', 'eyJ0aXRsZSI6Ik5leHRHRU4gQmFzaWMgU2luZ2xlUGljIiwiZW50aXR5X3R5cGVzIjpbImltYWdlIl0sInByZXZpZXdfaW1hZ2VfcmVscGF0aCI6IlxcbmV4dGdlbi1nYWxsZXJ5XFxwcm9kdWN0c1xccGhvdG9jcmF0aV9uZXh0Z2VuXFxtb2R1bGVzXFxuZXh0Z2VuX2Jhc2ljX3NpbmdsZXBpY1xcc3RhdGljXFxwcmV2aWV3LmdpZiIsImRlZmF1bHRfc291cmNlIjoiZ2FsbGVyaWVzIiwidmlld19vcmRlciI6MTAwNjAsImhpZGRlbl9mcm9tX3VpIjp0cnVlLCJuYW1lIjoicGhvdG9jcmF0aS1uZXh0Z2VuX2Jhc2ljX3NpbmdsZXBpYyIsImluc3RhbGxlZF9hdF92ZXJzaW9uIjoiMi4xLjUwIiwiaWRfZmllbGQiOiJJRCIsInNldHRpbmdzIjp7InVzZV9saWdodGJveF9lZmZlY3QiOnRydWUsIndpZHRoIjoiIiwiaGVpZ2h0IjoiIiwibW9kZSI6IiIsImRpc3BsYXlfd2F0ZXJtYXJrIjowLCJkaXNwbGF5X3JlZmxlY3Rpb24iOjAsImZsb2F0IjoiIiwibGluayI6IiIsImxpbmtfdGFyZ2V0IjoiX2JsYW5rIiwicXVhbGl0eSI6MTAwLCJjcm9wIjowLCJ0ZW1wbGF0ZSI6IiIsIm5nZ190cmlnZ2Vyc19kaXNwbGF5IjoibmV2ZXIifSwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/namlimxanh1/?post_type=display_type&p=136', 0, 'display_type', '', 0),
(137, 1, '2016-09-05 15:28:14', '0000-00-00 00:00:00', 'eyJ0aXRsZSI6Ik5leHRHRU4gQmFzaWMgVGFnQ2xvdWQiLCJlbnRpdHlfdHlwZXMiOlsiaW1hZ2UiXSwicHJldmlld19pbWFnZV9yZWxwYXRoIjoiXFxuZXh0Z2VuLWdhbGxlcnlcXHByb2R1Y3RzXFxwaG90b2NyYXRpX25leHRnZW5cXG1vZHVsZXNcXG5leHRnZW5fYmFzaWNfdGFnY2xvdWRcXHN0YXRpY1xccHJldmlldy5naWYiLCJkZWZhdWx0X3NvdXJjZSI6InRhZ3MiLCJ2aWV3X29yZGVyIjoxMDEwMCwibmFtZSI6InBob3RvY3JhdGktbmV4dGdlbl9iYXNpY190YWdjbG91ZCIsImluc3RhbGxlZF9hdF92ZXJzaW9uIjoiMi4xLjUwIiwiaWRfZmllbGQiOiJJRCIsInNldHRpbmdzIjp7InVzZV9saWdodGJveF9lZmZlY3QiOnRydWUsImRpc3BsYXlfdHlwZSI6InBob3RvY3JhdGktbmV4dGdlbl9iYXNpY190aHVtYm5haWxzIiwibnVtYmVyIjo0NSwibmdnX3RyaWdnZXJzX2Rpc3BsYXkiOiJuZXZlciJ9LCJoaWRkZW5fZnJvbV91aSI6ZmFsc2UsIl9fZGVmYXVsdHNfc2V0Ijp0cnVlfQ==', 'NextGEN Basic TagCloud', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-09-05 15:28:14', '0000-00-00 00:00:00', 'eyJ0aXRsZSI6Ik5leHRHRU4gQmFzaWMgVGFnQ2xvdWQiLCJlbnRpdHlfdHlwZXMiOlsiaW1hZ2UiXSwicHJldmlld19pbWFnZV9yZWxwYXRoIjoiXFxuZXh0Z2VuLWdhbGxlcnlcXHByb2R1Y3RzXFxwaG90b2NyYXRpX25leHRnZW5cXG1vZHVsZXNcXG5leHRnZW5fYmFzaWNfdGFnY2xvdWRcXHN0YXRpY1xccHJldmlldy5naWYiLCJkZWZhdWx0X3NvdXJjZSI6InRhZ3MiLCJ2aWV3X29yZGVyIjoxMDEwMCwibmFtZSI6InBob3RvY3JhdGktbmV4dGdlbl9iYXNpY190YWdjbG91ZCIsImluc3RhbGxlZF9hdF92ZXJzaW9uIjoiMi4xLjUwIiwiaWRfZmllbGQiOiJJRCIsInNldHRpbmdzIjp7InVzZV9saWdodGJveF9lZmZlY3QiOnRydWUsImRpc3BsYXlfdHlwZSI6InBob3RvY3JhdGktbmV4dGdlbl9iYXNpY190aHVtYm5haWxzIiwibnVtYmVyIjo0NSwibmdnX3RyaWdnZXJzX2Rpc3BsYXkiOiJuZXZlciJ9LCJoaWRkZW5fZnJvbV91aSI6ZmFsc2UsIl9fZGVmYXVsdHNfc2V0Ijp0cnVlfQ==', 0, 'http://localhost/namlimxanh1/?post_type=display_type&p=137', 0, 'display_type', '', 0),
(138, 1, '2016-09-05 15:28:14', '0000-00-00 00:00:00', 'eyJ0aXRsZSI6Ik5leHRHRU4gQmFzaWMgQ29tcGFjdCBBbGJ1bSIsImVudGl0eV90eXBlcyI6WyJhbGJ1bSIsImdhbGxlcnkiXSwicHJldmlld19pbWFnZV9yZWxwYXRoIjoiXFxuZXh0Z2VuLWdhbGxlcnlcXHByb2R1Y3RzXFxwaG90b2NyYXRpX25leHRnZW5cXG1vZHVsZXNcXG5leHRnZW5fYmFzaWNfYWxidW1cXHN0YXRpY1xcY29tcGFjdF9wcmV2aWV3LmpwZyIsImRlZmF1bHRfc291cmNlIjoiYWxidW1zIiwidmlld19vcmRlciI6MTAyMDAsIm5hbWUiOiJwaG90b2NyYXRpLW5leHRnZW5fYmFzaWNfY29tcGFjdF9hbGJ1bSIsImluc3RhbGxlZF9hdF92ZXJzaW9uIjoiMi4xLjUwIiwiaWRfZmllbGQiOiJJRCIsInNldHRpbmdzIjp7InVzZV9saWdodGJveF9lZmZlY3QiOnRydWUsImdhbGxlcmllc19wZXJfcGFnZSI6MCwiZW5hYmxlX2JyZWFkY3J1bWJzIjoxLCJkaXNhYmxlX3BhZ2luYXRpb24iOjAsImVuYWJsZV9kZXNjcmlwdGlvbnMiOjAsInRlbXBsYXRlIjoiIiwib3Blbl9nYWxsZXJ5X2luX2xpZ2h0Ym94IjowLCJnYWxsZXJ5X2Rpc3BsYXlfdHlwZSI6InBob3RvY3JhdGktbmV4dGdlbl9iYXNpY190aHVtYm5haWxzIiwiZ2FsbGVyeV9kaXNwbGF5X3RlbXBsYXRlIjoiIiwibmdnX3RyaWdnZXJzX2Rpc3BsYXkiOiJuZXZlciJ9LCJoaWRkZW5fZnJvbV91aSI6ZmFsc2UsIl9fZGVmYXVsdHNfc2V0Ijp0cnVlfQ==', 'NextGEN Basic Compact Album', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-09-05 15:28:14', '0000-00-00 00:00:00', 'eyJ0aXRsZSI6Ik5leHRHRU4gQmFzaWMgQ29tcGFjdCBBbGJ1bSIsImVudGl0eV90eXBlcyI6WyJhbGJ1bSIsImdhbGxlcnkiXSwicHJldmlld19pbWFnZV9yZWxwYXRoIjoiXFxuZXh0Z2VuLWdhbGxlcnlcXHByb2R1Y3RzXFxwaG90b2NyYXRpX25leHRnZW5cXG1vZHVsZXNcXG5leHRnZW5fYmFzaWNfYWxidW1cXHN0YXRpY1xcY29tcGFjdF9wcmV2aWV3LmpwZyIsImRlZmF1bHRfc291cmNlIjoiYWxidW1zIiwidmlld19vcmRlciI6MTAyMDAsIm5hbWUiOiJwaG90b2NyYXRpLW5leHRnZW5fYmFzaWNfY29tcGFjdF9hbGJ1bSIsImluc3RhbGxlZF9hdF92ZXJzaW9uIjoiMi4xLjUwIiwiaWRfZmllbGQiOiJJRCIsInNldHRpbmdzIjp7InVzZV9saWdodGJveF9lZmZlY3QiOnRydWUsImdhbGxlcmllc19wZXJfcGFnZSI6MCwiZW5hYmxlX2JyZWFkY3J1bWJzIjoxLCJkaXNhYmxlX3BhZ2luYXRpb24iOjAsImVuYWJsZV9kZXNjcmlwdGlvbnMiOjAsInRlbXBsYXRlIjoiIiwib3Blbl9nYWxsZXJ5X2luX2xpZ2h0Ym94IjowLCJnYWxsZXJ5X2Rpc3BsYXlfdHlwZSI6InBob3RvY3JhdGktbmV4dGdlbl9iYXNpY190aHVtYm5haWxzIiwiZ2FsbGVyeV9kaXNwbGF5X3RlbXBsYXRlIjoiIiwibmdnX3RyaWdnZXJzX2Rpc3BsYXkiOiJuZXZlciJ9LCJoaWRkZW5fZnJvbV91aSI6ZmFsc2UsIl9fZGVmYXVsdHNfc2V0Ijp0cnVlfQ==', 0, 'http://localhost/namlimxanh1/?post_type=display_type&p=138', 0, 'display_type', '', 0),
(139, 1, '2016-09-05 15:28:15', '0000-00-00 00:00:00', 'eyJ0aXRsZSI6Ik5leHRHRU4gQmFzaWMgRXh0ZW5kZWQgQWxidW0iLCJlbnRpdHlfdHlwZXMiOlsiYWxidW0iLCJnYWxsZXJ5Il0sInByZXZpZXdfaW1hZ2VfcmVscGF0aCI6IlxcbmV4dGdlbi1nYWxsZXJ5XFxwcm9kdWN0c1xccGhvdG9jcmF0aV9uZXh0Z2VuXFxtb2R1bGVzXFxuZXh0Z2VuX2Jhc2ljX2FsYnVtXFxzdGF0aWNcXGV4dGVuZGVkX3ByZXZpZXcuanBnIiwiZGVmYXVsdF9zb3VyY2UiOiJhbGJ1bXMiLCJ2aWV3X29yZGVyIjoxMDIxMCwibmFtZSI6InBob3RvY3JhdGktbmV4dGdlbl9iYXNpY19leHRlbmRlZF9hbGJ1bSIsImluc3RhbGxlZF9hdF92ZXJzaW9uIjoiMi4xLjUwIiwiaWRfZmllbGQiOiJJRCIsInNldHRpbmdzIjp7InVzZV9saWdodGJveF9lZmZlY3QiOnRydWUsImdhbGxlcmllc19wZXJfcGFnZSI6MCwiZW5hYmxlX2JyZWFkY3J1bWJzIjoxLCJkaXNhYmxlX3BhZ2luYXRpb24iOjAsImVuYWJsZV9kZXNjcmlwdGlvbnMiOjAsInRlbXBsYXRlIjoiIiwib3Blbl9nYWxsZXJ5X2luX2xpZ2h0Ym94IjowLCJvdmVycmlkZV90aHVtYm5haWxfc2V0dGluZ3MiOjAsInRodW1ibmFpbF93aWR0aCI6MjQwLCJ0aHVtYm5haWxfaGVpZ2h0IjoxNjAsInRodW1ibmFpbF9xdWFsaXR5IjoxMDAsInRodW1ibmFpbF9jcm9wIjp0cnVlLCJ0aHVtYm5haWxfd2F0ZXJtYXJrIjowLCJnYWxsZXJ5X2Rpc3BsYXlfdHlwZSI6InBob3RvY3JhdGktbmV4dGdlbl9iYXNpY190aHVtYm5haWxzIiwiZ2FsbGVyeV9kaXNwbGF5X3RlbXBsYXRlIjoiIiwibmdnX3RyaWdnZXJzX2Rpc3BsYXkiOiJuZXZlciJ9LCJoaWRkZW5fZnJvbV91aSI6ZmFsc2UsIl9fZGVmYXVsdHNfc2V0Ijp0cnVlfQ==', 'NextGEN Basic Extended Album', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-09-05 15:28:15', '0000-00-00 00:00:00', 'eyJ0aXRsZSI6Ik5leHRHRU4gQmFzaWMgRXh0ZW5kZWQgQWxidW0iLCJlbnRpdHlfdHlwZXMiOlsiYWxidW0iLCJnYWxsZXJ5Il0sInByZXZpZXdfaW1hZ2VfcmVscGF0aCI6IlxcbmV4dGdlbi1nYWxsZXJ5XFxwcm9kdWN0c1xccGhvdG9jcmF0aV9uZXh0Z2VuXFxtb2R1bGVzXFxuZXh0Z2VuX2Jhc2ljX2FsYnVtXFxzdGF0aWNcXGV4dGVuZGVkX3ByZXZpZXcuanBnIiwiZGVmYXVsdF9zb3VyY2UiOiJhbGJ1bXMiLCJ2aWV3X29yZGVyIjoxMDIxMCwibmFtZSI6InBob3RvY3JhdGktbmV4dGdlbl9iYXNpY19leHRlbmRlZF9hbGJ1bSIsImluc3RhbGxlZF9hdF92ZXJzaW9uIjoiMi4xLjUwIiwiaWRfZmllbGQiOiJJRCIsInNldHRpbmdzIjp7InVzZV9saWdodGJveF9lZmZlY3QiOnRydWUsImdhbGxlcmllc19wZXJfcGFnZSI6MCwiZW5hYmxlX2JyZWFkY3J1bWJzIjoxLCJkaXNhYmxlX3BhZ2luYXRpb24iOjAsImVuYWJsZV9kZXNjcmlwdGlvbnMiOjAsInRlbXBsYXRlIjoiIiwib3Blbl9nYWxsZXJ5X2luX2xpZ2h0Ym94IjowLCJvdmVycmlkZV90aHVtYm5haWxfc2V0dGluZ3MiOjAsInRodW1ibmFpbF93aWR0aCI6MjQwLCJ0aHVtYm5haWxfaGVpZ2h0IjoxNjAsInRodW1ibmFpbF9xdWFsaXR5IjoxMDAsInRodW1ibmFpbF9jcm9wIjp0cnVlLCJ0aHVtYm5haWxfd2F0ZXJtYXJrIjowLCJnYWxsZXJ5X2Rpc3BsYXlfdHlwZSI6InBob3RvY3JhdGktbmV4dGdlbl9iYXNpY190aHVtYm5haWxzIiwiZ2FsbGVyeV9kaXNwbGF5X3RlbXBsYXRlIjoiIiwibmdnX3RyaWdnZXJzX2Rpc3BsYXkiOiJuZXZlciJ9LCJoaWRkZW5fZnJvbV91aSI6ZmFsc2UsIl9fZGVmYXVsdHNfc2V0Ijp0cnVlfQ==', 0, 'http://localhost/namlimxanh1/?post_type=display_type&p=139', 0, 'display_type', '', 0),
(140, 1, '2016-09-05 15:30:37', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_gallery', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-09-05 15:30:37', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/namlimxanh1/?p=140', 0, 'ngg_gallery', '', 0),
(141, 1, '2016-09-05 15:30:38', '0000-00-00 00:00:00', 'eyJ1cGRhdGVkX2F0IjoxNDczMDg5NDM4LCJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-09-05 15:30:38', '0000-00-00 00:00:00', 'eyJ1cGRhdGVkX2F0IjoxNDczMDg5NDM4LCJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/namlimxanh1/?p=141', 0, 'ngg_pictures', '', 0),
(142, 1, '2016-09-05 15:30:39', '0000-00-00 00:00:00', 'eyJ1cGRhdGVkX2F0IjoxNDczMDg5NDM5LCJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-09-05 15:30:39', '2016-09-05 15:30:39', 'eyJ1cGRhdGVkX2F0IjoxNDczMDg5NDM5LCJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/namlimxanh1/?p=142', 0, 'ngg_pictures', '', 0),
(143, 1, '2016-09-05 15:30:39', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_gallery', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-09-05 15:30:39', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/namlimxanh1/?p=143', 0, 'ngg_gallery', '', 0),
(144, 1, '2016-09-05 15:30:41', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-09-05 15:30:41', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/namlimxanh1/?p=144', 0, 'ngg_pictures', '', 0),
(145, 1, '2016-09-05 15:30:43', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-09-05 15:30:43', '2016-09-05 15:30:43', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/namlimxanh1/?p=145', 0, 'ngg_pictures', '', 0),
(146, 1, '2016-09-05 15:30:45', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-09-05 15:30:45', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/namlimxanh1/?p=146', 0, 'ngg_pictures', '', 0),
(147, 1, '2016-09-05 15:30:47', '0000-00-00 00:00:00', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'Untitled ngg_pictures', '', 'draft', 'closed', 'closed', '', 'mixin_nextgen_table_extras', '', '', '2016-09-05 15:30:47', '2016-09-05 15:30:47', 'eyJpZF9maWVsZCI6IklEIiwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://localhost/namlimxanh1/?p=147', 0, 'ngg_pictures', '', 0),
(148, 1, '2016-09-05 15:34:51', '2016-09-05 15:34:51', '[ngg_images gallery_ids="1" display_type="photocrati-nextgen_basic_thumbnails"]', 'thư viện ảnh', '', 'publish', 'open', 'open', '', 'thu-vien-anh', '', '', '2016-09-05 15:45:30', '2016-09-05 15:45:30', '', 0, 'http://localhost/namlimxanh1/?p=148', 0, 'post', '', 0),
(149, 1, '2016-09-05 15:34:51', '2016-09-05 15:34:51', '[ngg_images gallery_ids="1" display_type="photocrati-nextgen_basic_thumbnails"]', 'thư viện ảnh', '', 'inherit', 'closed', 'closed', '', '148-revision-v1', '', '', '2016-09-05 15:34:51', '2016-09-05 15:34:51', '', 148, 'http://localhost/namlimxanh1/148-revision-v1/', 0, 'revision', '', 0),
(150, 1, '2016-09-05 15:55:19', '2016-09-05 15:55:19', 'thư viện ảnh', 'thư viện ảnh đẹp', '', 'publish', 'open', 'open', '', 'thu-vien-anh-dep', '', '', '2016-09-05 15:55:19', '2016-09-05 15:55:19', '', 0, 'http://localhost/namlimxanh1/?p=150', 0, 'post', '', 0),
(151, 1, '2016-09-05 15:55:19', '2016-09-05 15:55:19', 'thư viện ảnh', 'thư viện ảnh đẹp', '', 'inherit', 'closed', 'closed', '', '150-revision-v1', '', '', '2016-09-05 15:55:19', '2016-09-05 15:55:19', '', 150, 'http://localhost/namlimxanh1/150-revision-v1/', 0, 'revision', '', 0),
(152, 1, '2016-09-05 15:56:08', '2016-09-05 15:56:08', 'dfsdf', 'thư viện ảnh nấm lim xanh', '', 'publish', 'open', 'open', '', 'thu-vien-anh-nam-lim-xanh', '', '', '2016-09-05 15:56:08', '2016-09-05 15:56:08', '', 0, 'http://localhost/namlimxanh1/?p=152', 0, 'post', '', 0),
(153, 1, '2016-09-05 15:56:08', '2016-09-05 15:56:08', 'dfsdf', 'thư viện ảnh nấm lim xanh', '', 'inherit', 'closed', 'closed', '', '152-revision-v1', '', '', '2016-09-05 15:56:08', '2016-09-05 15:56:08', '', 152, 'http://localhost/namlimxanh1/152-revision-v1/', 0, 'revision', '', 0),
(154, 1, '2016-09-05 15:57:29', '2016-09-05 15:57:29', 'csdfdf', 'thư viện ảnh các bệnh có thể chữa bằng nấm lim xanh', '', 'publish', 'open', 'open', '', 'thu-vien-anh-cac-benh-co-the-chua-bang-nam-lim-xanh', '', '', '2016-09-05 15:57:29', '2016-09-05 15:57:29', '', 0, 'http://localhost/namlimxanh1/?p=154', 0, 'post', '', 0),
(155, 1, '2016-09-05 15:57:29', '2016-09-05 15:57:29', 'csdfdf', 'thư viện ảnh các bệnh có thể chữa bằng nấm lim xanh', '', 'inherit', 'closed', 'closed', '', '154-revision-v1', '', '', '2016-09-05 15:57:29', '2016-09-05 15:57:29', '', 154, 'http://localhost/namlimxanh1/154-revision-v1/', 0, 'revision', '', 0),
(157, 1, '2016-09-05 17:46:38', '2016-09-05 17:46:38', '[tubepress]', 'tubepress', '', 'publish', 'open', 'open', '', 'tubepress', '', '', '2016-09-05 18:03:13', '2016-09-05 18:03:13', '', 0, 'http://localhost/namlimxanh1/?p=157', 0, 'post', '', 0),
(158, 1, '2016-09-05 17:46:38', '2016-09-05 17:46:38', '[tubepress]', 'tubepress', '', 'inherit', 'closed', 'closed', '', '157-revision-v1', '', '', '2016-09-05 17:46:38', '2016-09-05 17:46:38', '', 157, 'http://localhost/namlimxanh1/157-revision-v1/', 0, 'revision', '', 0),
(159, 1, '2016-09-05 17:47:29', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'open', 'open', '', '', '', '', '2016-09-05 17:47:29', '0000-00-00 00:00:00', '', 0, 'http://localhost/namlimxanh1/?p=159', 0, 'post', '', 0),
(160, 1, '2016-09-05 18:02:39', '2016-09-05 18:02:39', '["tubepress"]', 'tubepress', '', 'inherit', 'closed', 'closed', '', '157-revision-v1', '', '', '2016-09-05 18:02:39', '2016-09-05 18:02:39', '', 157, 'http://localhost/namlimxanh1/157-revision-v1/', 0, 'revision', '', 0),
(161, 1, '2016-09-05 18:03:13', '2016-09-05 18:03:13', '[tubepress]', 'tubepress', '', 'inherit', 'closed', 'closed', '', '157-revision-v1', '', '', '2016-09-05 18:03:13', '2016-09-05 18:03:13', '', 157, 'http://localhost/namlimxanh1/157-revision-v1/', 0, 'revision', '', 0),
(163, 1, '2016-09-05 20:53:05', '2016-09-05 20:53:05', 'Không chỉ có tác dụng bồi bổ sứ khỏe, nâng cao thể trạng, nấm lim xanh còn được biết đến với khả năng hỗ trợ điều trị bệnh ung thư vô cùng hiệu quả và có rất nhiều người đã và đang sử dụng nó.', 'Nấm lim xanh - Giải pháp "vàng" cho bệnh nhân ung thư nó rất tốt cho cúng ta đó', 'Không chỉ có tác dụng bồi bổ sứ khỏe, nâng cao thể trạng, nấm lim xanh còn được biết đến với khả năng hỗ trợ điều trị bệnh ung thư vô cùng hiệu quả', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2016-09-05 20:53:05', '2016-09-05 20:53:05', '', 36, 'http://localhost/namlimxanh1/36-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE IF NOT EXISTS `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Chưa được phân loại', 'khong-phan-loai', 0),
(3, 'main menu', 'main-menu', 0),
(4, 'Nấm linh xanh', 'nam-linh-xanh', 0),
(5, 'Công dụng của nấm linh xanh', 'cong-dung-cua-nam-linh-xanh', 0),
(6, 'Cách dùng nấm linh xanh', 'cach-dung-nam-linh-xanh', 0),
(7, 'Mua bán nấm linh xanh', 'mua-ban-nam-linh-xanh', 0),
(8, 'Tư vấn', 'tu-van', 0),
(9, 'Đại lý Miền Bắc', 'dai-ly-mien-bac', 0),
(10, 'Đại lý Miền Trung', 'dai-ly-mien-trung', 0),
(11, 'Đại lý Miền Nam', 'dai-ly-mien-nam', 0),
(12, 'Nấm lim xanh tự nhiên', 'nam-lim-xanh-tu-nhien', 0),
(13, 'Nấm lim xanh Quảng Nam', 'nam-lim-xanh-quang-nam', 0),
(14, 'Nấm lim xanh Tiên Phước', 'nam-lim-xanh-tien-phuoc', 0),
(15, 'Nấm lim xanh có tác dụng gì', 'nam-lim-xanh-co-tac-dung-gi', 0),
(16, 'Nấm lim xanh chữa bệnh gì', 'nam-lim-xanh-chua-benh-gi', 0),
(17, 'Cách sử dụng nấm lim xanh', 'cach-su-dung-nam-lim-xanh', 0),
(18, 'Cách nấu nấm lim xanh', 'cach-nau-nam-lim-xanh', 0),
(19, 'Nấm lim xanh giá bao nhiêu', 'nam-lim-xanh-gia-bao-nhieu', 0),
(20, 'Nấm lim xanh mua ở đâu', 'nam-lim-xanh-mua-o-dau', 0),
(21, 'Cách nhận biết nấm lim xanh thật giả', 'cach-nhan-biet-nam-lim-xanh-that-gia', 0),
(22, 'Phản hồi khách hàng', 'phan-hoi-khach-hang', 0),
(23, 'Nguồn gốc', 'nguon-goc', 0),
(24, 'Nấm lim xanh mọc ở đâu', 'nam-lim-xanh-moc-o-dau', 0),
(25, 'Bài thuốc gia truyền', 'bai-thuoc-gia-truyen', 0),
(26, 'Về công ty', 've-cong-ty', 0),
(27, 'Báo chí nói gì về chúng tôi', 'bao-chi-noi-gi-ve-chung-toi', 0),
(28, 'post-format-gallery', 'post-format-gallery', 0),
(29, 'Thư viện ảnh', 'thu-vien-anh', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(4, 1, 0),
(7, 3, 0),
(11, 1, 0),
(19, 4, 0),
(21, 5, 0),
(23, 4, 0),
(32, 6, 0),
(34, 7, 0),
(36, 5, 0),
(41, 7, 0),
(44, 6, 0),
(48, 9, 0),
(50, 9, 0),
(52, 10, 0),
(54, 10, 0),
(56, 11, 0),
(58, 11, 0),
(60, 9, 0),
(62, 9, 0),
(73, 3, 0),
(74, 3, 0),
(75, 3, 0),
(76, 3, 0),
(77, 3, 0),
(78, 3, 0),
(79, 3, 0),
(80, 3, 0),
(81, 3, 0),
(82, 3, 0),
(83, 3, 0),
(84, 3, 0),
(85, 3, 0),
(86, 3, 0),
(87, 3, 0),
(88, 3, 0),
(89, 3, 0),
(90, 3, 0),
(91, 3, 0),
(92, 3, 0),
(93, 4, 0),
(109, 5, 0),
(111, 5, 0),
(113, 4, 0),
(117, 27, 0),
(119, 27, 0),
(122, 27, 0),
(124, 27, 0),
(126, 27, 0),
(131, 28, 0),
(131, 29, 0),
(148, 29, 0),
(150, 29, 0),
(152, 29, 0),
(154, 29, 0),
(157, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 4),
(3, 3, 'nav_menu', '', 0, 21),
(4, 4, 'category', '', 0, 3),
(5, 5, 'category', '', 0, 4),
(6, 6, 'category', '', 0, 2),
(7, 7, 'category', '', 0, 2),
(8, 8, 'category', '', 0, 0),
(9, 9, 'category', '', 0, 4),
(10, 10, 'category', '', 0, 2),
(11, 11, 'category', '', 0, 2),
(12, 12, 'category', '', 4, 0),
(13, 13, 'category', '', 4, 0),
(14, 14, 'category', '', 4, 0),
(15, 15, 'category', '', 5, 0),
(16, 16, 'category', '', 5, 0),
(17, 17, 'category', '', 6, 0),
(18, 18, 'category', '', 6, 0),
(19, 19, 'category', '', 7, 0),
(20, 20, 'category', '', 7, 0),
(21, 21, 'category', '', 8, 0),
(22, 22, 'category', '', 8, 0),
(23, 23, 'category', '', 0, 0),
(24, 24, 'category', '', 23, 0),
(25, 25, 'category', '', 23, 0),
(26, 26, 'category', '', 23, 0),
(27, 27, 'category', '', 0, 5),
(28, 28, 'post_format', '', 0, 1),
(29, 29, 'category', '', 0, 5);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'wp_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', ''),
(13, 1, 'show_welcome_panel', '1'),
(14, 1, 'session_tokens', 'a:5:{s:64:"9af958f40dbf35e5892c5dd3620468d42b9139018333fcf5d902bd6a3850d134";a:4:{s:10:"expiration";i:1473145967;s:2:"ip";s:3:"::1";s:2:"ua";s:108:"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.63 Safari/537.36";s:5:"login";i:1472973167;}s:64:"09997976cfc086c1209116f0ee7cc3887799223533cad91df996dc2c7a3d53bf";a:4:{s:10:"expiration";i:1473212732;s:2:"ip";s:3:"::1";s:2:"ua";s:114:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36";s:5:"login";i:1473039932;}s:64:"5f9beea0c101b6579e5cf763abbaff838f08f8262bf0dfdee231934b1e79a792";a:4:{s:10:"expiration";i:1473216839;s:2:"ip";s:3:"::1";s:2:"ua";s:72:"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:48.0) Gecko/20100101 Firefox/48.0";s:5:"login";i:1473044039;}s:64:"f532e365e409d9f98c0778329d9482549195287cee66dc17815469d3c445b630";a:4:{s:10:"expiration";i:1473259986;s:2:"ip";s:3:"::1";s:2:"ua";s:108:"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.63 Safari/537.36";s:5:"login";i:1473087186;}s:64:"ee98f1246a527330434bec493e77e1477aff5b112661d7dcb1b70d0700c063a7";a:4:{s:10:"expiration";i:1473266574;s:2:"ip";s:3:"::1";s:2:"ua";s:72:"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:48.0) Gecko/20100101 Firefox/48.0";s:5:"login";i:1473093774;}}'),
(15, 1, 'wp_dashboard_quick_press_last_post_id', '95'),
(16, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(17, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:"add-post_tag";i:1;s:15:"add-post_format";}'),
(18, 1, 'nav_menu_recently_edited', '3'),
(19, 1, 'closedpostboxes_post', 'a:3:{i:0;s:9:"formatdiv";i:1;s:16:"tagsdiv-post_tag";i:2;s:10:"postcustom";}'),
(20, 1, 'metaboxhidden_post', 'a:4:{i:0;s:13:"trackbacksdiv";i:1;s:16:"commentstatusdiv";i:2;s:7:"slugdiv";i:3;s:9:"authordiv";}'),
(21, 1, 'wp_user-settings', 'libraryContent=browse&editor=html'),
(22, 1, 'wp_user-settings-time', '1473089690'),
(23, 1, 'closedpostboxes_dashboard', 'a:4:{i:0;s:19:"dashboard_right_now";i:1;s:18:"dashboard_activity";i:2;s:21:"dashboard_quick_press";i:3;s:17:"dashboard_primary";}'),
(24, 1, 'metaboxhidden_dashboard', 'a:0:{}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) unsigned NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BousUF64GT4gTJY8J.fqgI23jajvQN1', 'admin', 'uocth.qthl@gmail.com', '', '2016-08-25 01:23:37', '', 0, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wonderplugin_slider`
--

CREATE TABLE IF NOT EXISTS `wp_wonderplugin_slider` (
  `id` int(11) NOT NULL,
  `name` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `authorid` tinytext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_wonderplugin_slider`
--

INSERT INTO `wp_wonderplugin_slider` (`id`, `name`, `data`, `time`, `authorid`) VALUES
(1, 'My Slider', '{"newestfirst":"false","name":"My Slider","width":1000,"height":350,"slides":[{"type":0,"image":"http:\\/\\/localhost\\/namlimxanh1\\/wp-content\\/uploads\\/2016\\/09\\/slide-news.png","thumbnail":"http:\\/\\/localhost\\/namlimxanh1\\/wp-content\\/uploads\\/2016\\/09\\/slide-news-150x150.png","video":"","mp4":"","webm":"","title":"","description":"","altusetitle":"false","alt":"N\\u1ea5m lim xanh","button":"","buttoncss":"as-btn-blue-medium","buttonlink":"","buttonlinktarget":"","weblink":"","weblinklightbox":"false","linktarget":"","lightbox":"false","lightboxsize":"false","lightboxwidth":960,"lightboxheight":540},{"type":0,"image":"http:\\/\\/localhost\\/namlimxanh1\\/wp-content\\/uploads\\/2016\\/09\\/slide-news.png","thumbnail":"http:\\/\\/localhost\\/namlimxanh1\\/wp-content\\/uploads\\/2016\\/09\\/slide-news-150x150.png","video":"","mp4":"","webm":"","title":"","description":"","altusetitle":"false","alt":"n\\u1ea5m lim xanh","button":"","buttoncss":"as-btn-blue-medium","buttonlink":"","buttonlinktarget":"","weblink":"","weblinklightbox":"false","linktarget":"","lightbox":"false","lightboxsize":"false","lightboxwidth":960,"lightboxheight":540},{"type":0,"image":"http:\\/\\/localhost\\/namlimxanh1\\/wp-content\\/uploads\\/2016\\/09\\/slide-news.png","thumbnail":"http:\\/\\/localhost\\/namlimxanh1\\/wp-content\\/uploads\\/2016\\/09\\/slide-news-150x150.png","video":"","mp4":"","webm":"","title":"","description":"","altusetitle":"false","alt":"n\\u1ea5m lim xanh","button":"","buttoncss":"as-btn-blue-medium","buttonlink":"","buttonlinktarget":"","weblink":"","weblinklightbox":"false","linktarget":"","lightbox":"false","lightboxsize":"false","lightboxwidth":960,"lightboxheight":540}],"transition":"slice","skin":"lightbox","showtext":"true","textformat":"Light box","paddingleft":0,"paddingright":0,"paddingtop":0,"paddingbottom":0,"titleusealt":"false","fadeduration":1000,"crossfadeduration":1000,"slideduration":1000,"elasticduration":1000,"sliceduration":1500,"blindsduration":1500,"blocksduration":1500,"shuffleduration":1500,"tilesduration":2000,"kenburnsduration":5000,"flipduration":1500,"flipwithzoomduration":2000,"threedduration":1500,"threedhorizontalduration":1500,"threedwithzoomduration":2500,"threedhorizontalwithzoomduration":2200,"threedflipduration":1500,"threedflipwithzoomduration":2000,"threedtilesduration":2000,"threedfallback":"flip","threedhorizontalfallback":"flip","threedwithzoomfallback":"flipwithzoom","threedhorizontalwithzoomfallback":"flipwithzoom","threedflipfallback":"flip","threedflipwithzoomfallback":"flipwithzoom","threedtilesfallback":"tiles","lightboxnogroup":"false","lightboxresponsive":"true","lightboxshownavigation":"false","lightboxshowtitle":"true","lightboxshowdescription":"false","lightboxthumbwidth":90,"lightboxthumbheight":60,"lightboxthumbtopmargin":12,"lightboxthumbbottommargin":4,"lightboxbarheight":64,"lightboxtitlebottomcss":"color:#333; font-size:14px; font-family:Armata,sans-serif,Arial; overflow:hidden; text-align:left;","lightboxdescriptionbottomcss":"color:#333; font-size:12px; font-family:Arial,Helvetica,sans-serif; overflow:hidden; text-align:left; margin:4px 0px 0px; padding: 0px;","lightboxadvancedoptions":"","lightboxfullscreenmode":"false","lightboxcloseonoverlay":"true","lightboxvideohidecontrols":"false","lightboxtitlestyle":"bottom","lightboximagepercentage":75,"lightboxdefaultvideovolume":1,"lightboxoverlaybgcolor":"#000","lightboxoverlayopacity":0.9,"lightboxbgcolor":"#fff","lightboxtitleprefix":"%NUM \\/ %TOTAL","lightboxtitleinsidecss":"color:#fff; font-size:16px; font-family:Arial,Helvetica,sans-serif; overflow:hidden; text-align:left;","lightboxdescriptioninsidecss":"color:#fff; font-size:12px; font-family:Arial,Helvetica,sans-serif; overflow:hidden; text-align:left; margin:4px 0px 0px; padding: 0px;","lightboxautoslide":"false","lightboxslideinterval":5000,"lightboxshowtimer":"true","lightboxtimerposition":"bottom","lightboxtimerheight":2,"lightboxtimercolor":"#dc572e","lightboxtimeropacity":1,"lightboxshowplaybutton":"true","lightboxalwaysshownavarrows":"false","lightboxbordersize":8,"lightboxshowtitleprefix":"true","lightboxborderradius":0,"lightboxshowsocial":"false","lightboxsocialposition":"position:absolute;top:100%;right:0;","lightboxsocialpositionsmallscreen":"position:absolute;top:100%;right:0;left:0;","lightboxsocialdirection":"horizontal","lightboxsocialbuttonsize":32,"lightboxsocialbuttonfontsize":18,"lightboxsocialrotateeffect":"true","lightboxshowfacebook":"true","lightboxshowtwitter":"true","lightboxshowpinterest":"true","showsocial":"false","socialmode":"mouseover","socialposition":"position:absolute;top:8px;right:8px;","socialpositionsmallscreen":"position:absolute;top:8px;right:8px;","socialdirection":"horizontal","socialbuttonsize":32,"socialbuttonfontsize":18,"socialrotateeffect":"true","showfacebook":"true","showtwitter":"true","showpinterest":"true","pauseonmouseover":"false","donotinit":"false","addinitscript":"false","triggerresize":"false","triggerresizedelay":100,"customcss":"","dataoptions":"","showbottomshadow":"true","navshowpreview":"true","border":6,"autoplay":"false","randomplay":"false","loadimageondemand":"false","transitiononfirstslide":"false","autoplayvideo":"false","isresponsive":"true","arrowstyle":"none","showtimer":"true","loop":0,"slideinterval":8000,"arrowimage":"arrows-32-32-3.png","arrowwidth":32,"arrowheight":32,"arrowtop":50,"arrowmargin":0,"navstyle":"bullets","navimage":"bullet-12-12-0.png","navwidth":12,"navheight":12,"navspacing":8,"navmarginx":-32,"navmarginy":-32,"navposition":"bottom","playvideoimage":"playvideo-64-64-0.png","playvideoimagewidth":64,"playvideoimageheight":64,"scalemode":"fill","arrowimagemode":"defined","navimagemode":"defined","fullwidth":"false","isfullscreen":"false","textcss":"display:block; padding:8px 16px; text-align:left;","textbgcss":"display:block; position:absolute; top:0px; left:0px; width:100%; height:100%; background-color:#fff; opacity:0.7; filter:alpha(opacity=70);","titlecss":"display:block; position:relative; font:bold 14px \\"Lucida Sans Unicode\\",\\"Lucida Grande\\",sans-serif,Arial; color:#333; white-space:nowrap;","descriptioncss":"display:block; position:relative; font:12px \\"Lucida Sans Unicode\\",\\"Lucida Grande\\",sans-serif,Arial; color:#333; margin-top:8px;","buttoncss":"display:block; position:relative; margin-top:8px;","texteffectresponsive":"true","texteffectresponsivesize":640,"titlecssresponsive":"font-size:12px;","descriptioncssresponsive":"display:none !important;","buttoncssresponsive":"","textpositionstatic":"bottom","textpositiondynamic":"bottomleft","textautohide":"true","textleftrightpercentforstatic":40,"ratioresponsive":"false","ratiomediumscreen":800,"ratiomediumheight":1.2,"ratiosmallscreen":480,"ratiosmallheight":1.6}', '2016-09-05 15:07:15', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`), ADD KEY `comment_id` (`comment_id`), ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`), ADD KEY `comment_post_ID` (`comment_post_ID`), ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`), ADD KEY `comment_date_gmt` (`comment_date_gmt`), ADD KEY `comment_parent` (`comment_parent`), ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`), ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_ngg_album`
--
ALTER TABLE `wp_ngg_album`
  ADD PRIMARY KEY (`id`), ADD KEY `extras_post_id_key` (`extras_post_id`);

--
-- Indexes for table `wp_ngg_gallery`
--
ALTER TABLE `wp_ngg_gallery`
  ADD PRIMARY KEY (`gid`), ADD KEY `extras_post_id_key` (`extras_post_id`);

--
-- Indexes for table `wp_ngg_pictures`
--
ALTER TABLE `wp_ngg_pictures`
  ADD PRIMARY KEY (`pid`), ADD KEY `extras_post_id_key` (`extras_post_id`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`), ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`), ADD KEY `post_id` (`post_id`), ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`), ADD KEY `post_name` (`post_name`(191)), ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`), ADD KEY `post_parent` (`post_parent`), ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`), ADD KEY `term_id` (`term_id`), ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`), ADD KEY `slug` (`slug`(191)), ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`), ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`), ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`), ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`), ADD KEY `user_id` (`user_id`), ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`), ADD KEY `user_login_key` (`user_login`), ADD KEY `user_nicename` (`user_nicename`), ADD KEY `user_email` (`user_email`);

--
-- Indexes for table `wp_wonderplugin_slider`
--
ALTER TABLE `wp_wonderplugin_slider`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_ngg_album`
--
ALTER TABLE `wp_ngg_album`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_ngg_gallery`
--
ALTER TABLE `wp_ngg_gallery`
  MODIFY `gid` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_ngg_pictures`
--
ALTER TABLE `wp_ngg_pictures`
  MODIFY `pid` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=829;
--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=713;
--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=164;
--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_wonderplugin_slider`
--
ALTER TABLE `wp_wonderplugin_slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
