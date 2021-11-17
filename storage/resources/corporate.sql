-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : mer. 17 nov. 2021 à 23:15
-- Version du serveur :  10.4.18-MariaDB
-- Version de PHP : 8.0.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `starter`
--

-- --------------------------------------------------------

--
-- Structure de la table `abouts`
--

CREATE TABLE `abouts` (
  `id` int(11) NOT NULL,
  `iconable_item_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `abouts`
--

INSERT INTO `abouts` (`id`, `iconable_item_id`, `created_at`, `updated_at`) VALUES
(1, 5, '2021-10-11 07:02:25', '2021-10-11 07:02:25'),
(2, 6, '2021-10-11 07:02:25', '2021-10-11 07:02:25');

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Category 1', 'category-1', '2021-10-09 18:40:28', '2021-10-09 18:40:28'),
(2, NULL, 1, 'Category 2', 'category-2', '2021-10-09 18:40:28', '2021-10-09 18:40:28');

-- --------------------------------------------------------

--
-- Structure de la table `clients`
--

CREATE TABLE `clients` (
  `id` int(11) NOT NULL,
  `official_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `clients`
--

INSERT INTO `clients` (`id`, `official_id`, `customer_id`, `item_id`, `avatar`, `message`, `created_at`, `updated_at`) VALUES
(3, 1, 3, 13, 'clients/October2021/3EEHiCiuMA3OQ560VXFa.jpg', 'Client 1 message', '2021-10-17 06:30:00', '2021-10-17 07:09:02'),
(4, 2, 4, 14, 'clients/October2021/RRUXcgp3ErtSUpVLfj7Y.jpg', 'Client 2 message', '2021-10-17 06:30:00', '2021-10-17 07:09:24');

-- --------------------------------------------------------

--
-- Structure de la table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `contact_type_id` int(11) NOT NULL,
  `contactable_id` int(11) NOT NULL,
  `contactable_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `contacts`
--

INSERT INTO `contacts` (`id`, `contact_type_id`, `contactable_id`, `contactable_type`, `value`, `created_at`, `updated_at`) VALUES
(4, 1, 1, 'App\\Models\\Corporation', 'corporate@corporate.com', '2021-10-13 17:16:15', '2021-11-17 21:06:26'),
(5, 2, 1, 'App\\Models\\Corporation', '+9 999-999-99', '2021-10-13 17:16:42', '2021-10-13 17:16:42'),
(6, 3, 1, 'App\\Models\\Corporation', 'NY Street, 222', '2021-10-13 17:16:51', '2021-11-17 21:02:09'),
(10, 1, 18, 'App\\Models\\Human', 'visitor@server.com', '2021-10-15 18:28:16', '2021-10-15 18:28:16'),
(11, 1, 19, 'App\\Models\\Human', 'syjacud@mailinator.com', '2021-10-15 18:36:19', '2021-10-15 18:36:19'),
(12, 1, 20, 'App\\Models\\Human', 'dydupaz@mailinator.com', '2021-10-15 18:38:45', '2021-10-15 18:38:45'),
(13, 1, 21, 'App\\Models\\Human', 'hawuh@mailinator.com', '2021-10-15 18:41:12', '2021-10-15 18:41:12'),
(14, 1, 22, 'App\\Models\\Human', 'hohemedu@mailinator.com', '2021-10-15 18:41:23', '2021-10-15 18:41:23'),
(15, 1, 23, 'App\\Models\\Human', 'liselym@mailinator.com', '2021-10-24 20:29:17', '2021-10-24 20:29:17'),
(16, 1, 24, 'App\\Models\\Human', 'myxoxajone@mailinator.com', '2021-10-24 20:50:55', '2021-10-24 20:50:55'),
(17, 1, 25, 'App\\Models\\Human', 'weti@mailinator.com', '2021-10-24 21:01:29', '2021-10-24 21:01:29'),
(18, 1, 26, 'App\\Models\\Human', 'visitor@server.com', '2021-10-24 21:19:11', '2021-10-24 21:19:11'),
(19, 1, 27, 'App\\Models\\Human', 'nowykak@mailinator.com', '2021-11-02 21:40:37', '2021-11-02 21:40:37'),
(20, 1, 28, 'App\\Models\\Human', 'admin@admin.com', '2021-11-02 21:48:51', '2021-11-02 21:48:51'),
(21, 1, 29, 'App\\Models\\Human', 'nekogo@mailinator.com', '2021-11-03 17:03:55', '2021-11-03 17:03:55'),
(22, 1, 30, 'App\\Models\\Human', 'pazebulib@mailinator.com', '2021-11-03 17:04:06', '2021-11-03 17:04:06'),
(23, 1, 31, 'App\\Models\\Human', 'pazebulib@mailinators.com', '2021-11-03 17:04:14', '2021-11-03 17:04:14'),
(24, 1, 32, 'App\\Models\\Human', 'pazebulib@mailinatorssss.com', '2021-11-03 17:04:17', '2021-11-03 17:04:17'),
(25, 1, 33, 'App\\Models\\Human', 'pazabes@mailinator.com', '2021-11-03 17:05:21', '2021-11-03 17:05:21'),
(26, 1, 34, 'App\\Models\\Human', 'pazabes@milinator.com', '2021-11-03 17:05:28', '2021-11-03 17:05:28'),
(27, 1, 35, 'App\\Models\\Human', 'fowaji@mailinator.com', '2021-11-03 17:06:21', '2021-11-03 17:06:21'),
(28, 1, 36, 'App\\Models\\Human', 'somerohe@mailinator.com', '2021-11-03 17:11:17', '2021-11-03 17:11:17'),
(29, 1, 37, 'App\\Models\\Human', 'admin@admi1n.com', '2021-11-03 17:11:36', '2021-11-03 17:11:36'),
(30, 1, 38, 'App\\Models\\Human', 'xygategi@mailinator.com', '2021-11-03 17:12:30', '2021-11-03 17:12:30'),
(31, 1, 43, 'App\\Models\\Human', 'qozuj@mailinator.com', '2021-11-03 17:30:14', '2021-11-03 17:30:14'),
(32, 1, 44, 'App\\Models\\Human', 'rygyloj@mailinator.com', '2021-11-03 17:30:21', '2021-11-03 17:30:21'),
(33, 1, 45, 'App\\Models\\Human', 'sevivumuq@mailinator.com', '2021-11-03 17:51:51', '2021-11-03 17:51:51'),
(34, 1, 46, 'App\\Models\\Human', 'diquro@mailinator.com', '2021-11-03 17:52:51', '2021-11-03 17:52:51'),
(35, 1, 47, 'App\\Models\\Human', 'bigenimyd@mailinator.com', '2021-11-03 17:58:55', '2021-11-03 17:58:55'),
(36, 1, 48, 'App\\Models\\Human', 'fyradosar@mailinator.com', '2021-11-06 08:30:52', '2021-11-06 08:30:52'),
(37, 2, 1, 'App\\Models\\Test', '666 - 666 - 666', '2021-11-10 09:13:55', '2021-11-10 09:13:55'),
(38, 1, 49, 'App\\Models\\Human', 'fefy@mailinator.com', '2021-11-17 21:02:42', '2021-11-17 21:02:42'),
(39, 1, 50, 'App\\Models\\Human', 'widezimafi@mailinator.com', '2021-11-17 21:29:36', '2021-11-17 21:29:36'),
(40, 1, 51, 'App\\Models\\Human', 'zyjavo@mailinator.com', '2021-11-17 21:49:38', '2021-11-17 21:49:38');

-- --------------------------------------------------------

--
-- Structure de la table `contact_types`
--

CREATE TABLE `contact_types` (
  `id` int(11) NOT NULL,
  `icon_id` int(11) NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `contact_types`
--

INSERT INTO `contact_types` (`id`, `icon_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 1, 'Email', '2021-10-09 20:04:40', '2021-10-09 20:04:40'),
(2, 2, 'Phone', '2021-10-09 20:05:38', '2021-10-09 20:05:38'),
(3, 18, 'Address', '2021-10-13 00:06:43', '2021-10-13 00:06:43'),
(4, 19, 'test', '2021-11-10 09:50:37', '2021-11-10 09:50:37');

-- --------------------------------------------------------

--
-- Structure de la table `corporations`
--

CREATE TABLE `corporations` (
  `id` int(11) NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slogan` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `corporations`
--

INSERT INTO `corporations` (`id`, `name`, `description`, `slogan`, `created_at`, `updated_at`) VALUES
(1, 'Corporate', 'Simply corporate', '100 % dynamic content with Laravel 8 + Voyager', '2021-10-09 20:07:13', '2021-11-17 22:10:09');

-- --------------------------------------------------------

--
-- Structure de la table `counts`
--

CREATE TABLE `counts` (
  `id` int(11) NOT NULL,
  `iconable_item_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `counts`
--

INSERT INTO `counts` (`id`, `iconable_item_id`, `created_at`, `updated_at`) VALUES
(1, 7, '2021-10-11 16:06:17', '2021-10-11 16:06:17'),
(2, 8, '2021-10-11 16:06:17', '2021-10-11 16:06:17');

-- --------------------------------------------------------

--
-- Structure de la table `currencies`
--

CREATE TABLE `currencies` (
  `id` int(11) NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, '$', '2021-10-12 21:29:42', '2021-10-12 21:29:42'),
(2, 'XOF', '2021-10-12 21:29:42', '2021-10-12 21:29:42');

-- --------------------------------------------------------

--
-- Structure de la table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `corporation_id` int(11) NOT NULL,
  `customer_type_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `customers`
--

INSERT INTO `customers` (`id`, `corporation_id`, `customer_type_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2021-10-11 16:47:18', '2021-10-11 16:47:18'),
(2, 1, 1, '2021-10-11 16:47:18', '2021-10-11 16:47:18'),
(3, 1, 2, '2021-10-11 18:38:10', '2021-10-11 18:38:10'),
(4, 1, 2, '2021-10-11 18:38:10', '2021-10-11 18:38:10');

-- --------------------------------------------------------

--
-- Structure de la table `customer_types`
--

CREATE TABLE `customer_types` (
  `id` int(11) NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `customer_types`
--

INSERT INTO `customer_types` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Enterprise', '2021-10-11 16:30:02', '2021-10-11 16:30:02'),
(2, 'Human customer', '2021-10-11 16:30:02', '2021-10-11 16:30:02'),
(3, 'test', '2021-11-10 10:00:27', '2021-11-10 10:00:27');

-- --------------------------------------------------------

--
-- Structure de la table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'voyager::seeders.data_rows.roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(22, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(23, 4, 'parent_id', 'select_dropdown', 'Parent', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(24, 4, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(25, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 4),
(26, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(27, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, NULL, 6),
(28, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(29, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(30, 5, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, NULL, 2),
(31, 5, 'category_id', 'text', 'Category', 1, 0, 1, 1, 1, 0, NULL, 3),
(32, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 4),
(33, 5, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 5),
(34, 5, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 6),
(35, 5, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(36, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8),
(37, 5, 'meta_description', 'text_area', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 9),
(38, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 10),
(39, 5, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(40, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 12),
(41, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 13),
(42, 5, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, NULL, 14),
(43, 5, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, NULL, 15),
(44, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(45, 6, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, NULL, 2),
(46, 6, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 3),
(47, 6, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 4),
(48, 6, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 5),
(49, 6, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 6),
(50, 6, 'meta_description', 'text', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 7),
(51, 6, 'meta_keywords', 'text', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 8),
(52, 6, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(53, 6, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, NULL, 10),
(54, 6, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, NULL, 11),
(55, 6, 'image', 'image', 'Page Image', 0, 1, 1, 1, 1, 1, NULL, 12),
(56, 7, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(57, 7, 'class', 'text', 'Class', 1, 1, 1, 1, 1, 1, '{}', 2),
(58, 7, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, '{}', 3),
(59, 7, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, '{}', 4),
(60, 8, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(62, 8, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|max:30\"}}', 3),
(63, 8, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, '{}', 4),
(64, 8, 'updated_at', 'timestamp', 'Updated At', 1, 1, 1, 0, 0, 0, '{}', 5),
(65, 9, 'id', 'text', 'Id', 1, 1, 0, 0, 0, 0, '{}', 1),
(66, 9, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(67, 9, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, '{}', 3),
(68, 9, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, '{}', 4),
(69, 10, 'id', 'text', 'Id', 1, 1, 0, 0, 0, 0, '{}', 1),
(70, 10, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|max:30\"}}', 2),
(71, 10, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, '{}', 3),
(72, 10, 'updated_at', 'timestamp', 'Updated At', 1, 1, 1, 0, 0, 0, '{}', 4),
(73, 11, 'id', 'text', 'Id', 1, 1, 0, 0, 0, 0, '{}', 1),
(74, 11, 'media_type_id', 'text', 'Media Type Id', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|numeric\"}}', 2),
(75, 11, 'media_category_id', 'text', 'Media Category Id', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|numeric\"}}', 3),
(76, 11, 'mediaable_id', 'text', 'Mediaable Id', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|numeric\"}}', 4),
(77, 11, 'mediaable_type', 'text', 'Mediaable Type', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|max:30\"}}', 5),
(78, 11, 'link', 'image', 'Link', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"max:255\"}}', 6),
(79, 11, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, '{}', 7),
(80, 11, 'updated_at', 'timestamp', 'Updated At', 1, 1, 1, 0, 0, 0, '{}', 8),
(83, 12, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(84, 12, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|max:30\"}}', 2),
(85, 12, 'description', 'text', 'Description', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|max:128\"}}', 3),
(86, 12, 'slogan', 'text', 'Slogan', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|max:128\"}}', 4),
(87, 12, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, '{}', 5),
(88, 12, 'updated_at', 'timestamp', 'Updated At', 1, 1, 1, 0, 0, 0, '{}', 6),
(89, 13, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(91, 13, 'logoable_id', 'text', 'Logoable Id', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|numeric\"}}', 3),
(92, 13, 'logoable_type', 'text', 'Logoable Type', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|max:30\"}}', 4),
(93, 13, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, '{}', 5),
(94, 13, 'updated_at', 'timestamp', 'Updated At', 1, 1, 1, 0, 0, 0, '{}', 6),
(95, 13, 'link', 'image', 'Link', 1, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"400\",\"height\":null},\"quality\":\"70%\",\"upsize\":true,\"validation\":{\"rule\":\"required|max:255\"}}', 5),
(96, 14, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(97, 14, 'human_id', 'text', 'Human Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(98, 14, 'customer_id', 'text', 'Customer Id', 1, 1, 1, 1, 1, 1, '{}', 3),
(99, 14, 'item_id', 'text', 'Item Id', 1, 1, 1, 1, 1, 1, '{}', 4),
(100, 14, 'avatar', 'image', 'Avatar', 1, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"400\",\"height\":400},\"quality\":\"70%\",\"upsize\":true}', 5),
(101, 14, 'message', 'text', 'Message', 1, 1, 1, 1, 1, 1, '{}', 6),
(102, 14, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, '{}', 7),
(103, 14, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, '{}', 8),
(104, 15, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(105, 15, 'item_id', 'text', 'Item Id', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|numeric\"}}', 2),
(107, 15, 'team_id', 'text', 'Team Id', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|numeric\"}}', 4),
(108, 15, 'profile', 'image', 'Profile', 1, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"600\",\"height\":600},\"quality\":\"70%\",\"upsize\":true,\"validation\":{\"rule\":\"required|max:255\"}}', 5),
(109, 15, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, '{}', 6),
(110, 15, 'updated_at', 'timestamp', 'Updated At', 1, 1, 1, 0, 0, 0, '{}', 7),
(111, 16, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(112, 16, 'official_id', 'text', 'Official Id', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|numeric\"}}', 2),
(113, 16, 'customer_id', 'text', 'Customer Id', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|numeric\"}}', 3),
(114, 16, 'item_id', 'text', 'Item Id', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|numeric\"}}', 4),
(115, 16, 'avatar', 'image', 'Avatar', 1, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"400\",\"height\":400},\"quality\":\"70%\",\"upsize\":true,\"validation\":{\"rule\":\"required|max:255\"}}', 5),
(116, 16, 'message', 'text', 'Message', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|max:255\"}}', 6),
(117, 16, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, '{}', 7),
(118, 16, 'updated_at', 'timestamp', 'Updated At', 1, 1, 1, 0, 0, 0, '{}', 8),
(119, 17, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(120, 17, 'class', 'text', 'Class', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|max:30\"}}', 2),
(121, 17, 'is_extended', 'text', 'Is Extended', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|boolean\"}}', 3),
(122, 17, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, '{}', 4),
(123, 17, 'updated_at', 'timestamp', 'Updated At', 1, 1, 1, 0, 0, 0, '{}', 5),
(124, 18, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(125, 18, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|max:30\"}}', 2),
(126, 18, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, '{}', 3),
(127, 18, 'updated_at', 'timestamp', 'Updated At', 1, 1, 1, 0, 0, 0, '{}', 4),
(128, 19, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(129, 19, 'corporation_id', 'text', 'Corporation Id', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|numeric\"}}', 2),
(130, 19, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|max:30\"}}', 3),
(131, 19, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, '{}', 4),
(132, 19, 'updated_at', 'timestamp', 'Updated At', 1, 1, 1, 0, 0, 0, '{}', 5),
(133, 20, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(134, 20, 'site_page_id', 'text', 'Site Page Id', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|numeric\"}}', 2),
(135, 20, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|max:30\"}}', 3),
(136, 20, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|max:40\"}}', 4),
(137, 20, 'description', 'text', 'Description', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|max:255\"}}', 5),
(138, 20, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, '{}', 6),
(139, 20, 'updated_at', 'timestamp', 'Updated At', 1, 1, 1, 0, 0, 0, '{}', 7),
(140, 21, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(141, 21, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|max:30\"}}', 2),
(142, 21, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 1, 0, 1, '{}', 3),
(143, 21, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, '{}', 4),
(144, 22, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(145, 22, 'pricing_id', 'text', 'Pricing Id', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\"}}', 2),
(146, 22, 'feature_id', 'text', 'Feature Id', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\"}}', 3),
(147, 22, 'is_active', 'text', 'Is Active', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|boolean\"}}', 4),
(148, 22, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 1, 0, 1, '{}', 5),
(149, 22, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, '{}', 6),
(150, 23, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(151, 23, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|max:30\"}}', 2),
(152, 23, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 1, 0, 1, '{}', 3),
(153, 23, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, '{}', 4),
(154, 24, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(155, 24, 'item_id', 'text', 'Item Id', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|numeric\"}}', 2),
(156, 24, 'currency_id', 'text', 'Currency Id', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|numeric\"}}', 3),
(157, 24, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|max:40\"}}', 4),
(158, 24, 'month_price', 'text', 'Month Price', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|numeric|max:10\"}}', 5),
(159, 24, 'is_featured', 'text', 'Is Featured', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|boolean\"}}', 6),
(160, 24, 'is_advanced', 'text', 'Is Advanced', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|boolean\"}}', 7),
(161, 24, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 1, 0, 1, '{}', 8),
(162, 24, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, '{}', 9),
(163, 25, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(164, 25, 'item_id', 'text', 'Item Id', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|numeric\"}}', 2),
(165, 25, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|max:30\"}}', 3),
(166, 25, 'value', 'text', 'Value', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|numeric|max:100\"}}', 4),
(167, 25, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, '{}', 5),
(168, 25, 'updated_at', 'timestamp', 'Updated At', 1, 1, 1, 0, 0, 0, '{}', 6),
(169, 26, 'id', 'text', 'Id', 1, 1, 1, 0, 0, 0, '{}', 1),
(170, 26, 'iconable_item_id', 'text', 'Iconable Item Id', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|numeric\"}}', 2),
(171, 26, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, '{}', 3),
(172, 26, 'updated_at', 'timestamp', 'Updated At', 1, 1, 1, 0, 0, 0, '{}', 4),
(173, 27, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(174, 27, 'iconable_item_id', 'text', 'Iconable Item Id', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|numeric\"}}', 2),
(175, 27, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, '{}', 3),
(176, 27, 'updated_at', 'timestamp', 'Updated At', 1, 1, 1, 0, 0, 0, '{}', 4),
(177, 28, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(178, 28, 'item_id', 'text', 'Item Id', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|numeric\"}}', 2),
(179, 28, 'icon_id', 'text', 'Icon Id', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|numeric\"}}', 3),
(180, 28, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|max:50\"}}', 4),
(181, 28, 'value', 'text', 'Value', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|max:255\"}}', 5),
(182, 28, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, '{}', 6),
(183, 28, 'updated_at', 'timestamp', 'Updated At', 1, 1, 1, 0, 0, 0, '{}', 7),
(184, 29, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(185, 29, 'iconable_item_id', 'text', 'Iconable Item Id', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|numeric\"}}', 2),
(186, 29, 'is_featured', 'text', 'Is Featured', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|boolean\"}}', 3),
(187, 29, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, '{}', 4),
(188, 29, 'updated_at', 'timestamp', 'Updated At', 1, 1, 1, 0, 0, 0, '{}', 5),
(189, 30, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(190, 30, 'item_type_id', 'text', 'Item Type Id', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|numeric\"}}', 2),
(191, 30, 'section_id', 'text', 'Section Id', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|numeric\"}}', 3),
(192, 30, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, '{}', 4),
(193, 30, 'updated_at', 'timestamp', 'Updated At', 1, 1, 1, 0, 0, 0, '{}', 5),
(194, 13, 'logo_category_id', 'text', 'Logo Category Id', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|numeric\"}}', 2),
(195, 31, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(196, 31, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|max:30\"}}', 2),
(197, 31, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, '{}', 3),
(198, 31, 'updated_at', 'timestamp', 'Updated At', 1, 1, 1, 0, 0, 0, '{}', 4),
(199, 32, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(200, 32, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|max:30\"}}', 2),
(201, 32, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, '{}', 3),
(202, 32, 'updated_at', 'timestamp', 'Updated At', 1, 1, 1, 0, 0, 0, '{}', 4),
(203, 15, 'official_id', 'text', 'Official Id', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|numeric\"}}', 2),
(204, 33, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(205, 33, 'customer_id', 'text', 'Customer Id', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|numeric\"}}', 2),
(206, 33, 'item_id', 'text', 'Item Id', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|numeric\"}}', 3),
(207, 33, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|max:30\"}}', 4),
(208, 33, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, '{}', 5),
(209, 33, 'updated_at', 'timestamp', 'Updated At', 1, 1, 1, 0, 0, 0, '{}', 6),
(210, 34, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(211, 34, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|max:30\"}}', 2),
(212, 34, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, '{}', 3),
(213, 34, 'updated_at', 'timestamp', 'Updated At', 1, 1, 1, 0, 0, 0, '{}', 4),
(214, 35, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(215, 35, 'human_id', 'text', 'Human Id', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|numeric\"}}', 2),
(216, 35, 'work_id', 'text', 'Work Id', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|numeric\"}}', 3),
(217, 35, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, '{}', 4),
(218, 35, 'updated_at', 'timestamp', 'Updated At', 1, 1, 1, 0, 0, 0, '{}', 5),
(219, 36, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(220, 36, 'corporation_id', 'text', 'Corporation Id', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|numeric\"}}', 2),
(221, 36, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, '{}', 3),
(222, 36, 'updated_at', 'timestamp', 'Updated At', 1, 1, 1, 0, 0, 0, '{}', 4),
(223, 37, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(224, 37, 'corporation_id', 'text', 'Corporation Id', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|numeric\"}}', 2),
(225, 37, 'customer_type_id', 'text', 'Customer Type Id', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|numeric\"}}', 3),
(226, 37, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, '{}', 4),
(227, 37, 'updated_at', 'timestamp', 'Updated At', 1, 1, 1, 0, 0, 0, '{}', 5),
(228, 38, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(229, 38, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|max:30\"}}', 2),
(230, 38, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, '{}', 3),
(231, 38, 'updated_at', 'timestamp', 'Updated At', 1, 1, 1, 0, 0, 0, '{}', 4),
(232, 39, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(233, 39, 'human_type_id', 'text', 'Human Type Id', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|numeric\"}}', 2),
(234, 39, 'corporation_id', 'text', 'Corporation Id', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|numeric\"}}', 3),
(235, 39, 'first_name', 'text', 'First Name', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|max:50\"}}', 4),
(236, 39, 'last_name', 'text', 'Last Name', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|max:50\"}}', 5),
(237, 39, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, '{}', 6),
(238, 39, 'updated_at', 'timestamp', 'Updated At', 1, 1, 1, 0, 0, 0, '{}', 7),
(239, 40, 'id', 'text', 'Id', 1, 1, 0, 0, 0, 0, '{}', 1),
(240, 40, 'project_category_id', 'text', 'Project Category Id', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|numeric\"}}', 2),
(241, 40, 'customer_id', 'text', 'Customer Id', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|numeric\"}}', 3),
(242, 40, 'item_id', 'text', 'Item Id', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|numeric\"}}', 4),
(243, 40, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|max:30\"}}', 5),
(244, 40, 'realization_date', 'date', 'Realization Date', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|date\"}}', 6),
(245, 40, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, '{}', 7),
(246, 40, 'updated_at', 'timestamp', 'Updated At', 1, 1, 1, 0, 0, 0, '{}', 8),
(247, 41, 'id', 'text', 'Id', 1, 1, 0, 0, 0, 0, '{}', 1),
(248, 41, 'icon_id', 'text', 'Icon Id', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|numeric\"}}', 2),
(249, 41, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|max:30\"}}', 3),
(250, 41, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, '{}', 4),
(251, 41, 'updated_at', 'timestamp', 'Updated At', 1, 1, 1, 0, 0, 0, '{}', 5),
(252, 42, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(253, 42, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|max:30\"}}', 2),
(254, 42, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, '{}', 3),
(255, 42, 'updated_at', 'timestamp', 'Updated At', 1, 1, 1, 0, 0, 0, '{}', 4),
(256, 43, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(257, 43, 'link_type_id', 'text', 'Link Type Id', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|numeric\"}}', 2),
(258, 43, 'linkable_id', 'text', 'Linkable Id', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|numeric\"}}', 3),
(259, 43, 'linkable_type', 'text', 'Linkable Type', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|max:30\"}}', 4),
(260, 43, 'url', 'text', 'Url', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|max:255\"}}', 5),
(261, 43, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, '{}', 6),
(262, 43, 'updated_at', 'timestamp', 'Updated At', 1, 1, 1, 0, 0, 0, '{}', 7),
(263, 44, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(264, 44, 'item_id', 'text', 'Item Id', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|numeric\"}}', 2),
(265, 44, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, '{}', 3),
(266, 44, 'updated_at', 'timestamp', 'Updated At', 1, 1, 1, 0, 0, 0, '{}', 4),
(267, 45, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(268, 45, 'corporation_id', 'text', 'Corporation Id', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|numeric\"}}', 2),
(269, 45, 'intro', 'text', 'Intro', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|min:3|max:1000\"}}', 3),
(270, 45, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, '{}', 4),
(271, 45, 'updated_at', 'timestamp', 'Updated At', 1, 1, 1, 0, 0, 0, '{}', 5),
(272, 8, 'icon_id', 'text', 'Icon Id', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|numeric\"}}', 2),
(273, 46, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(274, 46, 'corporation_id', 'text', 'Corporation Id', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|numeric\"}}', 2),
(275, 46, 'intro', 'text', 'Intro', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|min:3|max:1000\"}}', 3),
(276, 46, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, '{}', 4),
(277, 46, 'updated_at', 'timestamp', 'Updated At', 1, 1, 1, 0, 0, 0, '{}', 5),
(278, 47, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(279, 47, 'descriptionable_id', 'text', 'Descriptionable Id', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|numeric\"}}', 2),
(280, 47, 'descriptionable_type', 'text', 'Descriptionable Type', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|max:30\"}}', 3),
(281, 47, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"nullable|max:60\"}}', 4),
(282, 47, 'subtitle', 'text', 'Subtitle', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"nullable|max:80\"}}', 5),
(283, 47, 'content', 'text', 'Content', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"nullable|max:255\"}}', 6),
(284, 47, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, '{}', 7),
(285, 47, 'updated_at', 'timestamp', 'Updated At', 1, 1, 1, 0, 0, 0, '{}', 8),
(286, 49, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(287, 49, 'contact_type_id', 'text', 'Contact Type Id', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|numeric\"}}', 2),
(288, 49, 'contactable_id', 'text', 'Contactable Id', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|numeric\"}}', 3),
(289, 49, 'contactable_type', 'text', 'Contactable Type', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|max:30\"}}', 4),
(290, 49, 'value', 'text', 'Value', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|max:255\"}}', 5),
(291, 49, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, '{}', 6),
(292, 49, 'updated_at', 'timestamp', 'Updated At', 1, 1, 1, 0, 0, 0, '{}', 7),
(293, 50, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(294, 50, 'human_id', 'text', 'Human Id', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|numeric\"}}', 2),
(295, 50, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, '{}', 3),
(296, 50, 'updated_at', 'timestamp', 'Updated At', 1, 1, 1, 0, 0, 0, '{}', 4),
(297, 51, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(298, 51, 'visitor_id', 'text', 'Visitor Id', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|numeric\"}}', 2),
(299, 51, 'subject', 'text', 'Subject', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|max:80\"}}', 3),
(300, 51, 'message', 'text', 'Message', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|max:255\"}}', 4),
(301, 51, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, '{}', 5),
(302, 51, 'updated_at', 'timestamp', 'Updated At', 1, 1, 1, 0, 0, 0, '{}', 6),
(303, 52, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(304, 52, 'corporation_id', 'text', 'Corporation Id', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|numeric\"}}', 2),
(305, 52, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|email|max:255\"}}', 3),
(306, 52, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, '{}', 4),
(307, 52, 'updated_at', 'timestamp', 'Updated At', 1, 1, 1, 0, 0, 0, '{}', 5),
(308, 26, 'count_hasone_iconable_item_relationship', 'relationship', 'iconable_items', 1, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\IconableItem\",\"table\":\"iconable_items\",\"type\":\"belongsTo\",\"column\":\"iconable_item_id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"abouts\",\"pivot\":\"0\",\"taggable\":\"0\"}', 5),
(310, 27, 'about_belongsto_iconable_item_relationship', 'relationship', 'iconable_items', 1, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\IconableItem\",\"table\":\"iconable_items\",\"type\":\"belongsTo\",\"column\":\"iconable_item_id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"abouts\",\"pivot\":\"0\",\"taggable\":\"0\"}', 5),
(312, 41, 'link_type_belongsto_icon_relationship', 'relationship', 'icons', 1, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Icon\",\"table\":\"icons\",\"type\":\"belongsTo\",\"column\":\"icon_id\",\"key\":\"id\",\"label\":\"class\",\"pivot_table\":\"abouts\",\"pivot\":\"0\",\"taggable\":\"0\"}', 6),
(313, 43, 'link_belongsto_link_type_relationship', 'relationship', 'link_types', 1, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\LinkType\",\"table\":\"link_types\",\"type\":\"belongsTo\",\"column\":\"link_type_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"abouts\",\"pivot\":\"0\",\"taggable\":\"0\"}', 8),
(326, 40, 'project_belongsto_project_category_relationship', 'relationship', 'project_categories', 1, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\ProjectCategory\",\"table\":\"project_categories\",\"type\":\"belongsTo\",\"column\":\"project_category_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"abouts\",\"pivot\":\"0\",\"taggable\":\"0\"}', 9),
(329, 20, 'section_belongsto_site_page_relationship', 'relationship', 'site_pages', 1, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\SitePage\",\"table\":\"site_pages\",\"type\":\"belongsTo\",\"column\":\"site_page_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"abouts\",\"pivot\":\"0\",\"taggable\":\"0\"}', 10),
(336, 52, 'newsletter_belongsto_corporation_relationship', 'relationship', 'corporations', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Corporation\",\"table\":\"corporations\",\"type\":\"belongsTo\",\"column\":\"corporation_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"abouts\",\"pivot\":\"0\",\"taggable\":\"0\"}', 6),
(337, 19, 'site_page_belongsto_corporation_relationship', 'relationship', 'corporations', 1, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Corporation\",\"table\":\"corporations\",\"type\":\"belongsTo\",\"column\":\"corporation_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"abouts\",\"pivot\":\"0\",\"taggable\":\"0\"}', 6),
(338, 11, 'media_belongsto_media_category_relationship', 'relationship', 'media_categories', 1, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\MediaCategory\",\"table\":\"media_categories\",\"type\":\"belongsTo\",\"column\":\"media_category_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"abouts\",\"pivot\":\"0\",\"taggable\":\"0\"}', 9),
(339, 11, 'media_belongsto_media_type_relationship', 'relationship', 'media_types', 1, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\MediaType\",\"table\":\"media_types\",\"type\":\"belongsTo\",\"column\":\"media_type_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"abouts\",\"pivot\":\"0\",\"taggable\":\"0\"}', 10),
(340, 45, 'privacy_policy_belongsto_corporation_relationship', 'relationship', 'corporations', 1, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Corporation\",\"table\":\"corporations\",\"type\":\"belongsTo\",\"column\":\"corporation_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"abouts\",\"pivot\":\"0\",\"taggable\":\"0\"}', 6),
(341, 49, 'contact_belongsto_contact_type_relationship', 'relationship', 'contact_types', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\ContactType\",\"table\":\"contact_types\",\"type\":\"belongsTo\",\"column\":\"contact_type_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"abouts\",\"pivot\":\"0\",\"taggable\":null}', 8),
(342, 8, 'contact_type_belongsto_icon_relationship', 'relationship', 'icons', 1, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Icon\",\"table\":\"icons\",\"type\":\"belongsTo\",\"column\":\"icon_id\",\"key\":\"id\",\"label\":\"class\",\"pivot_table\":\"abouts\",\"pivot\":\"0\",\"taggable\":\"0\"}', 6),
(343, 37, 'customer_belongsto_customer_type_relationship', 'relationship', 'customer_types', 1, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\CustomerType\",\"table\":\"customer_types\",\"type\":\"belongsTo\",\"column\":\"customer_type_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"abouts\",\"pivot\":\"0\",\"taggable\":\"0\"}', 6),
(344, 37, 'customer_belongsto_corporation_relationship', 'relationship', 'corporations', 1, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Corporation\",\"table\":\"corporations\",\"type\":\"belongsTo\",\"column\":\"corporation_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"abouts\",\"pivot\":\"0\",\"taggable\":\"0\"}', 7),
(345, 40, 'project_belongsto_customer_relationship', 'relationship', 'customers', 1, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Customer\",\"table\":\"customers\",\"type\":\"belongsTo\",\"column\":\"customer_id\",\"key\":\"id\",\"label\":\"id\",\"pivot_table\":\"abouts\",\"pivot\":\"0\",\"taggable\":\"0\"}', 10),
(346, 40, 'project_belongsto_item_relationship', 'relationship', 'items', 1, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Item\",\"table\":\"items\",\"type\":\"belongsTo\",\"column\":\"item_id\",\"key\":\"id\",\"label\":\"id\",\"pivot_table\":\"abouts\",\"pivot\":\"0\",\"taggable\":\"0\"}', 11),
(347, 13, 'logo_belongsto_logo_category_relationship', 'relationship', 'logo_categories', 1, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\LogoCategory\",\"table\":\"logo_categories\",\"type\":\"belongsTo\",\"column\":\"logo_category_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"abouts\",\"pivot\":\"0\",\"taggable\":\"0\"}', 7),
(348, 28, 'iconable_item_belongsto_item_relationship', 'relationship', 'items', 1, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Item\",\"table\":\"items\",\"type\":\"belongsTo\",\"column\":\"item_id\",\"key\":\"id\",\"label\":\"id\",\"pivot_table\":\"abouts\",\"pivot\":\"0\",\"taggable\":\"0\"}', 8),
(349, 28, 'iconable_item_belongsto_icon_relationship', 'relationship', 'icons', 1, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Icon\",\"table\":\"icons\",\"type\":\"belongsTo\",\"column\":\"icon_id\",\"key\":\"id\",\"label\":\"class\",\"pivot_table\":\"abouts\",\"pivot\":\"0\",\"taggable\":\"0\"}', 9),
(350, 29, 'service_belongsto_iconable_item_relationship', 'relationship', 'iconable_items', 1, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\IconableItem\",\"table\":\"iconable_items\",\"type\":\"belongsTo\",\"column\":\"iconable_item_id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"abouts\",\"pivot\":\"0\",\"taggable\":\"0\"}', 6),
(351, 33, 'enterprise_belongsto_item_relationship', 'relationship', 'items', 1, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Item\",\"table\":\"items\",\"type\":\"belongsTo\",\"column\":\"item_id\",\"key\":\"id\",\"label\":\"id\",\"pivot_table\":\"abouts\",\"pivot\":\"0\",\"taggable\":\"0\"}', 7),
(352, 33, 'enterprise_belongsto_customer_relationship', 'relationship', 'customers', 1, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Customer\",\"table\":\"customers\",\"type\":\"belongsTo\",\"column\":\"customer_id\",\"key\":\"id\",\"label\":\"id\",\"pivot_table\":\"abouts\",\"pivot\":\"0\",\"taggable\":\"0\"}', 8),
(353, 39, 'human_belongsto_corporation_relationship', 'relationship', 'corporations', 1, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Corporation\",\"table\":\"corporations\",\"type\":\"belongsTo\",\"column\":\"corporation_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"abouts\",\"pivot\":\"0\",\"taggable\":\"0\"}', 8),
(354, 39, 'human_belongsto_human_type_relationship', 'relationship', 'human_types', 1, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\HumanType\",\"table\":\"human_types\",\"type\":\"belongsTo\",\"column\":\"human_type_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"abouts\",\"pivot\":\"0\",\"taggable\":\"0\"}', 9),
(355, 50, 'visitor_belongsto_human_relationship', 'relationship', 'humans', 1, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Human\",\"table\":\"humans\",\"type\":\"belongsTo\",\"column\":\"human_id\",\"key\":\"id\",\"label\":\"first_name\",\"pivot_table\":\"abouts\",\"pivot\":\"0\",\"taggable\":\"0\"}', 5),
(356, 16, 'client_belongsto_customer_relationship', 'relationship', 'customers', 1, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Customer\",\"table\":\"customers\",\"type\":\"belongsTo\",\"column\":\"customer_id\",\"key\":\"id\",\"label\":\"id\",\"pivot_table\":\"abouts\",\"pivot\":\"0\",\"taggable\":\"0\"}', 9),
(357, 16, 'client_belongsto_official_relationship', 'relationship', 'officials', 1, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Official\",\"table\":\"officials\",\"type\":\"belongsTo\",\"column\":\"official_id\",\"key\":\"id\",\"label\":\"id\",\"pivot_table\":\"abouts\",\"pivot\":\"0\",\"taggable\":\"0\"}', 10),
(358, 16, 'client_belongsto_item_relationship', 'relationship', 'items', 1, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Item\",\"table\":\"items\",\"type\":\"belongsTo\",\"column\":\"item_id\",\"key\":\"id\",\"label\":\"id\",\"pivot_table\":\"abouts\",\"pivot\":\"0\",\"taggable\":\"0\"}', 11),
(359, 36, 'team_belongsto_corporation_relationship', 'relationship', 'corporations', 1, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Corporation\",\"table\":\"corporations\",\"type\":\"belongsTo\",\"column\":\"corporation_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"abouts\",\"pivot\":\"0\",\"taggable\":\"0\"}', 5),
(360, 44, 'faq_belongsto_item_relationship', 'relationship', 'items', 1, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Item\",\"table\":\"items\",\"type\":\"belongsTo\",\"column\":\"item_id\",\"key\":\"id\",\"label\":\"id\",\"pivot_table\":\"abouts\",\"pivot\":\"0\",\"taggable\":\"0\"}', 5),
(361, 22, 'feature_pricing_belongsto_feature_relationship', 'relationship', 'features', 1, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Feature\",\"table\":\"features\",\"type\":\"belongsTo\",\"column\":\"feature_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"abouts\",\"pivot\":\"0\",\"taggable\":\"0\"}', 7),
(362, 22, 'feature_pricing_belongsto_pricing_relationship', 'relationship', 'pricings', 1, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Pricing\",\"table\":\"pricings\",\"type\":\"belongsTo\",\"column\":\"pricing_id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"abouts\",\"pivot\":\"0\",\"taggable\":\"0\"}', 8),
(363, 24, 'pricing_belongsto_item_relationship', 'relationship', 'items', 1, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Item\",\"table\":\"items\",\"type\":\"belongsTo\",\"column\":\"item_id\",\"key\":\"id\",\"label\":\"id\",\"pivot_table\":\"abouts\",\"pivot\":\"0\",\"taggable\":\"0\"}', 10),
(364, 30, 'item_belongsto_item_type_relationship', 'relationship', 'item_types', 1, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\ItemType\",\"table\":\"item_types\",\"type\":\"belongsTo\",\"column\":\"item_type_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"abouts\",\"pivot\":\"0\",\"taggable\":\"0\"}', 6),
(365, 30, 'item_belongsto_section_relationship', 'relationship', 'sections', 1, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Section\",\"table\":\"sections\",\"type\":\"belongsTo\",\"column\":\"section_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"abouts\",\"pivot\":\"0\",\"taggable\":\"0\"}', 7),
(366, 15, 'employee_belongsto_official_relationship', 'relationship', 'officials', 1, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Official\",\"table\":\"officials\",\"type\":\"belongsTo\",\"column\":\"official_id\",\"key\":\"id\",\"label\":\"id\",\"pivot_table\":\"abouts\",\"pivot\":\"0\",\"taggable\":\"0\"}', 8),
(367, 15, 'employee_belongsto_team_relationship', 'relationship', 'teams', 1, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Team\",\"table\":\"teams\",\"type\":\"belongsTo\",\"column\":\"team_id\",\"key\":\"id\",\"label\":\"id\",\"pivot_table\":\"abouts\",\"pivot\":\"0\",\"taggable\":\"0\"}', 9),
(368, 15, 'employee_belongsto_item_relationship', 'relationship', 'items', 1, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Item\",\"table\":\"items\",\"type\":\"belongsTo\",\"column\":\"item_id\",\"key\":\"id\",\"label\":\"id\",\"pivot_table\":\"abouts\",\"pivot\":\"0\",\"taggable\":\"0\"}', 10),
(369, 35, 'official_belongsto_human_relationship', 'relationship', 'humans', 1, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Human\",\"table\":\"humans\",\"type\":\"belongsTo\",\"column\":\"human_id\",\"key\":\"id\",\"label\":\"first_name\",\"pivot_table\":\"abouts\",\"pivot\":\"0\",\"taggable\":\"0\"}', 6),
(370, 35, 'official_belongsto_work_relationship', 'relationship', 'works', 1, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Work\",\"table\":\"works\",\"type\":\"belongsTo\",\"column\":\"work_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"abouts\",\"pivot\":\"0\",\"taggable\":\"0\"}', 7),
(371, 51, 'questioning_belongsto_visitor_relationship', 'relationship', 'visitors', 1, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Visitor\",\"table\":\"visitors\",\"type\":\"belongsTo\",\"column\":\"visitor_id\",\"key\":\"id\",\"label\":\"id\",\"pivot_table\":\"abouts\",\"pivot\":\"0\",\"taggable\":\"0\"}', 7),
(372, 25, 'skill_belongsto_item_relationship', 'relationship', 'items', 1, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Item\",\"table\":\"items\",\"type\":\"belongsTo\",\"column\":\"item_id\",\"key\":\"id\",\"label\":\"id\",\"pivot_table\":\"abouts\",\"pivot\":\"0\",\"taggable\":\"0\"}', 7);

-- --------------------------------------------------------

--
-- Structure de la table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2021-10-09 18:40:26', '2021-10-09 18:40:26'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2021-10-09 18:40:26', '2021-10-09 18:40:26'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2021-10-09 18:40:26', '2021-10-09 18:40:26'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, NULL, '2021-10-09 18:40:28', '2021-10-09 18:40:28'),
(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, NULL, '2021-10-09 18:40:28', '2021-10-09 18:40:28'),
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, NULL, '2021-10-09 18:40:29', '2021-10-09 18:40:29'),
(7, 'social_icons', 'social-icons', 'Social Icon', 'Social Icons', 'voyager-paw', 'App\\Models\\SocialIcon', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2021-10-09 19:59:40', '2021-10-09 20:02:21'),
(8, 'contact_types', 'contact-types', 'Contact Type', 'Contact Types', NULL, 'App\\Models\\ContactType', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2021-10-09 20:03:47', '2021-11-10 09:50:05'),
(9, 'media_types', 'media-types', 'Media Type', 'Media Types', NULL, 'App\\Models\\MediaType', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2021-10-10 13:19:07', '2021-10-10 13:20:14'),
(10, 'media_categories', 'media-categories', 'Media Category', 'Media Categories', NULL, 'App\\Models\\MediaCategory', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2021-10-10 13:20:52', '2021-11-09 16:20:50'),
(11, 'medias', 'medias', 'Media', 'Media', NULL, 'App\\Models\\Media', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2021-10-10 13:23:23', '2021-11-10 09:01:20'),
(12, 'corporations', 'corporations', 'Corporation', 'Corporations', NULL, 'App\\Models\\Corporation', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2021-10-10 15:43:53', '2021-11-10 09:10:33'),
(13, 'logos', 'logos', 'Logo', 'Logos', NULL, 'App\\Models\\Logo', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2021-10-11 16:55:22', '2021-11-10 10:14:22'),
(14, 'buyers', 'buyers', 'Buyer', 'Buyers', NULL, 'App\\Models\\Buyer', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null}', '2021-10-11 18:48:54', '2021-10-11 18:48:54'),
(15, 'employees', 'employees', 'Employee', 'Employees', NULL, 'App\\Models\\Employee', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2021-10-12 15:05:21', '2021-11-10 12:42:45'),
(16, 'clients', 'clients', 'Client', 'Clients', NULL, 'App\\Models\\Client', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2021-10-17 07:08:31', '2021-11-10 11:32:58'),
(17, 'icons', 'icons', 'Icon', 'Icons', 'voyager-helm', 'App\\Models\\Icon', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-11-08 19:52:29', '2021-11-10 09:54:48'),
(18, 'item_types', 'item-types', 'Item Type', 'Item Types', NULL, 'App\\Models\\ItemType', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-11-08 19:59:52', '2021-11-09 07:50:40'),
(19, 'site_pages', 'site-pages', 'Site Page', 'Site Pages', NULL, 'App\\Models\\SitePage', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-11-08 20:24:48', '2021-11-10 08:57:58'),
(20, 'sections', 'sections', 'Section', 'Sections', NULL, 'App\\Models\\Section', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-11-08 20:26:32', '2021-11-10 08:57:20'),
(21, 'features', 'features', 'Feature', 'Features', NULL, 'App\\Models\\Feature', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2021-11-08 20:28:10', '2021-11-08 20:28:10'),
(22, 'feature_pricing', 'feature-pricing', 'Feature Pricing', 'Feature Pricings', NULL, 'App\\Models\\FeaturePricing', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-11-08 20:29:21', '2021-11-10 11:41:33'),
(23, 'currencies', 'currencies', 'Currency', 'Currencies', NULL, 'App\\Models\\Currency', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2021-11-08 20:30:08', '2021-11-08 20:30:08'),
(24, 'pricings', 'pricings', 'Pricing', 'Pricings', NULL, 'App\\Models\\Pricing', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-11-08 20:37:17', '2021-11-10 12:35:07'),
(25, 'skills', 'skills', 'Skill', 'Skills', NULL, 'App\\Models\\Skill', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-11-09 07:43:34', '2021-11-17 21:15:17'),
(26, 'counts', 'counts', 'Count', 'Counts', NULL, 'App\\Models\\Count', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-11-09 07:45:57', '2021-11-10 08:43:22'),
(27, 'abouts', 'abouts', 'About', 'Abouts', NULL, 'App\\Models\\About', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-11-09 07:46:45', '2021-11-09 15:53:44'),
(28, 'iconable_items', 'iconable-items', 'Iconable Item', 'Iconable Items', NULL, 'App\\Models\\IconableItem', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-11-09 07:48:08', '2021-11-10 11:13:29'),
(29, 'services', 'services', 'Service', 'Services', NULL, 'App\\Models\\Service', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-11-09 07:49:31', '2021-11-10 11:15:47'),
(30, 'items', 'items', 'Item', 'Items', NULL, 'App\\Models\\Item', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-11-09 07:51:33', '2021-11-10 12:37:41'),
(31, 'logo_categories', 'logo-categories', 'Logo Category', 'Logo Categories', NULL, 'App\\Models\\LogoCategory', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2021-11-09 07:57:41', '2021-11-09 07:57:41'),
(32, 'works', 'works', 'Work', 'Works', NULL, 'App\\Models\\Work', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2021-11-09 07:58:27', '2021-11-09 07:58:27'),
(33, 'enterprises', 'enterprises', 'Enterprise', 'Enterprises', NULL, 'App\\Models\\Enterprise', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-11-09 08:02:26', '2021-11-10 11:21:54'),
(34, 'customer_types', 'customer-types', 'Customer Type', 'Customer Types', NULL, 'App\\Models\\CustomerType', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-11-09 08:03:21', '2021-11-10 10:00:13'),
(35, 'officials', 'officials', 'Official', 'Officials', NULL, 'App\\Models\\Official', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-11-09 08:04:15', '2021-11-10 12:45:54'),
(36, 'teams', 'teams', 'Team', 'Teams', NULL, 'App\\Models\\Team', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-11-09 08:05:04', '2021-11-10 11:37:48'),
(37, 'customers', 'customers', 'Customer', 'Customers', NULL, 'App\\Models\\Customer', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-11-09 08:06:46', '2021-11-10 10:05:26'),
(38, 'project_categories', 'project-categories', 'Project Category', 'Project Categories', NULL, 'App\\Models\\ProjectCategory', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-11-09 08:07:49', '2021-11-09 16:10:40'),
(39, 'humans', 'humans', 'Human', 'Humans', NULL, 'App\\Models\\Human', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-11-09 08:09:15', '2021-11-10 11:28:00'),
(40, 'projects', 'projects', 'Project', 'Projects', NULL, 'App\\Models\\Project', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-11-09 08:14:30', '2021-11-10 10:10:20'),
(41, 'link_types', 'link-types', 'Link Type', 'Link Types', NULL, 'App\\Models\\LinkType', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-11-09 08:17:27', '2021-11-10 10:16:08'),
(42, 'human_types', 'human-types', 'Human Type', 'Human Types', NULL, 'App\\Models\\HumanType', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-11-09 08:18:25', '2021-11-10 10:01:36'),
(43, 'links', 'links', 'Link', 'Links', NULL, 'App\\Models\\Link', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-11-09 08:21:24', '2021-11-09 16:02:51'),
(44, 'faqs', 'faqs', 'Faq', 'Faqs', NULL, 'App\\Models\\Faq', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-11-09 08:23:32', '2021-11-10 11:39:10'),
(45, 'privacy_policies', 'privacy-policies', 'Privacy Policy', 'Privacy Policies', NULL, 'App\\Models\\PrivacyPolicy', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-11-09 08:30:53', '2021-11-10 09:05:12'),
(46, 'terms_of_services', 'terms-of-services', 'Terms Of Service', 'Terms Of Services', NULL, 'App\\Models\\TermsOfService', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2021-11-09 08:33:36', '2021-11-09 08:33:36'),
(47, 'descriptions', 'descriptions', 'Description', 'Descriptions', NULL, 'App\\Models\\Description', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-11-09 08:37:08', '2021-11-10 08:35:29'),
(49, 'contacts', 'contacts', 'Contact', 'Contacts', NULL, 'App\\Models\\Contact', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-11-09 08:38:53', '2021-11-09 08:39:30'),
(50, 'visitors', 'visitors', 'Visitor', 'Visitors', NULL, 'App\\Models\\Visitor', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-11-09 09:03:37', '2021-11-10 11:29:34'),
(51, 'questionings', 'questionings', 'Questioning', 'Questionings', NULL, 'App\\Models\\Questioning', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-11-09 09:06:11', '2021-11-10 12:47:21'),
(52, 'newsletters', 'newsletters', 'Newsletter', 'Newsletters', NULL, 'App\\Models\\Newsletter', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-11-09 09:07:45', '2021-11-10 08:53:11');

-- --------------------------------------------------------

--
-- Structure de la table `descriptions`
--

CREATE TABLE `descriptions` (
  `id` int(11) NOT NULL,
  `descriptionable_id` int(11) NOT NULL,
  `descriptionable_type` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `descriptions`
--

INSERT INTO `descriptions` (`id`, `descriptionable_id`, `descriptionable_type`, `title`, `subtitle`, `content`, `created_at`, `updated_at`) VALUES
(1, 2, 'App\\Models\\Section', 'About Descriptionable title', 'About Descriptionable subtitle', 'About Descriptionable content', '2021-10-11 06:46:17', '2021-10-11 06:46:17'),
(2, 1, 'App\\Models\\Project', 'Project  1 descriptionable title', '', 'Project 1 descriptionable content', '2021-10-11 06:46:17', '2021-10-11 06:46:17'),
(3, 2, 'App\\Models\\Project', 'Project  2 descriptionable title', '', 'Project 2 descriptionable content', '2021-10-11 06:46:17', '2021-10-11 06:46:17'),
(4, 1, 'App\\Models\\Faq', 'Faq  1 descriptionable title', '', 'Faq 1 descriptionable content', '2021-10-11 06:46:17', '2021-10-11 06:46:17'),
(5, 2, 'App\\Models\\Faq', 'Faq  2  descriptionable title', '', 'Faq 2 descriptionable content', '2021-10-11 06:46:17', '2021-10-11 06:46:17'),
(6, 4, 'App\\Models\\Contact', 'Email Us', '', '', '2021-10-14 11:20:47', '2021-10-14 11:20:47'),
(7, 5, 'App\\Models\\Contact', 'Call Us', '', '', '2021-10-14 11:20:47', '2021-10-14 11:20:47'),
(8, 6, 'App\\Models\\Contact', 'Our Address', '', '', '2021-10-14 11:20:47', '2021-10-14 11:20:47'),
(9, 3, 'App\\Models\\PrivacyPolicy', 'Privacy policy title 1', '', 'Privacy policy item 1', '2021-10-21 19:46:32', '2021-10-21 19:46:32'),
(10, 3, 'App\\Models\\PrivacyPolicy', 'Privacy policy title 2', '', 'Privacy policy item 2', '2021-10-21 19:46:32', '2021-10-21 19:46:32'),
(11, 1, 'App\\Models\\TermsOfService', 'Tos title 1', '', 'tos content 1', '2021-10-28 22:58:27', '2021-10-28 22:58:27'),
(12, 1, 'App\\Models\\TermsOfService', 'Tos title 2', '', 'tos content 2', '2021-10-28 22:58:27', '2021-10-28 22:58:27'),
(13, 1, 'App\\Models\\Test', 'test', 'test', 'test', '2021-11-10 09:58:35', '2021-11-10 09:58:35');

-- --------------------------------------------------------

--
-- Structure de la table `employees`
--

CREATE TABLE `employees` (
  `id` int(11) NOT NULL,
  `official_id` int(11) NOT NULL,
  `team_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `profile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `employees`
--

INSERT INTO `employees` (`id`, `official_id`, `team_id`, `item_id`, `profile`, `created_at`, `updated_at`) VALUES
(1, 3, 1, 17, 'employees/October2021/z9pt2gvbcQ9rbvDbnulU.jpg', '2021-10-12 11:53:57', '2021-10-12 15:07:50'),
(2, 4, 1, 18, 'employees/October2021/lqhqV6nQXJUXXh82FVVE.jpg', '2021-10-12 11:53:57', '2021-10-12 15:08:11');

-- --------------------------------------------------------

--
-- Structure de la table `enterprises`
--

CREATE TABLE `enterprises` (
  `id` int(11) NOT NULL COMMENT 'HasOne polymorphic relation with logo',
  `customer_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `enterprises`
--

INSERT INTO `enterprises` (`id`, `customer_id`, `item_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 1, 11, 'Enterprise 1', '2021-10-11 16:48:23', '2021-10-11 16:48:23'),
(2, 2, 12, 'Enterprise 2', '2021-10-11 16:48:23', '2021-10-11 16:48:23');

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `faqs`
--

CREATE TABLE `faqs` (
  `id` int(11) NOT NULL COMMENT 'Has polimorphic relation with description',
  `item_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `faqs`
--

INSERT INTO `faqs` (`id`, `item_id`, `created_at`, `updated_at`) VALUES
(1, 21, '2021-10-12 22:37:28', '2021-10-12 22:37:28'),
(2, 22, '2021-10-12 22:37:28', '2021-10-12 22:37:28');

-- --------------------------------------------------------

--
-- Structure de la table `features`
--

CREATE TABLE `features` (
  `id` int(11) NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `features`
--

INSERT INTO `features` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Feature 1', '2021-10-12 21:14:09', '2021-10-12 21:14:09'),
(2, 'Feature 2', '2021-10-12 21:14:09', '2021-10-12 21:14:09'),
(3, 'Feature 3', '2021-10-12 21:14:09', '2021-10-12 21:14:09'),
(4, 'Feature 4', '2021-10-12 21:14:09', '2021-10-12 21:14:09'),
(5, 'test', '2021-11-10 11:16:32', '2021-11-10 11:16:32');

-- --------------------------------------------------------

--
-- Structure de la table `feature_pricing`
--

CREATE TABLE `feature_pricing` (
  `id` int(11) NOT NULL,
  `pricing_id` int(11) NOT NULL,
  `feature_id` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `feature_pricing`
--

INSERT INTO `feature_pricing` (`id`, `pricing_id`, `feature_id`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, '2021-10-12 21:22:13', '2021-10-12 21:22:13'),
(2, 1, 2, 1, '2021-10-12 21:22:13', '2021-10-12 21:22:13'),
(3, 1, 3, 1, '2021-10-12 21:22:13', '2021-10-12 21:22:13'),
(5, 2, 1, 1, '2021-10-12 21:23:18', '2021-10-12 21:23:18'),
(6, 2, 2, 1, '2021-10-12 21:23:18', '2021-10-12 21:23:18'),
(7, 2, 3, 1, '2021-10-12 21:23:18', '2021-10-12 21:23:18'),
(8, 2, 4, 1, '2021-10-12 21:23:18', '2021-10-12 21:23:18'),
(9, 1, 4, 0, '2021-10-12 21:23:54', '2021-10-12 21:23:54');

-- --------------------------------------------------------

--
-- Structure de la table `humans`
--

CREATE TABLE `humans` (
  `id` int(11) NOT NULL,
  `human_type_id` int(11) NOT NULL,
  `corporation_id` int(11) NOT NULL,
  `first_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `humans`
--

INSERT INTO `humans` (`id`, `human_type_id`, `corporation_id`, `first_name`, `last_name`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Client 1', 'Client 1', '2021-10-11 18:41:32', '2021-10-11 18:41:32'),
(2, 1, 1, 'Client 2', 'Client 2', '2021-10-11 18:41:32', '2021-10-11 18:41:32'),
(3, 2, 1, 'Employee 1 ', 'Employee 1', '2021-10-12 11:52:01', '2021-10-12 11:52:01'),
(4, 2, 1, 'Employee 2', 'Employee 2', '2021-10-12 11:52:01', '2021-10-12 11:52:01'),
(5, 3, 1, 'Visitor 1', 'Visitor 1', '2021-10-15 17:25:32', '2021-10-15 17:25:32'),
(19, 3, 1, 'Glenna', 'Hudson', '2021-10-15 18:36:18', '2021-10-15 18:36:18'),
(20, 3, 1, 'Nicholas', 'Levy', '2021-10-15 18:38:45', '2021-10-15 18:38:45'),
(21, 3, 1, 'Driscoll', 'Schwartz', '2021-10-15 18:41:12', '2021-10-15 18:41:12'),
(22, 3, 1, 'Ashton', 'Russell', '2021-10-15 18:41:23', '2021-10-15 18:41:23'),
(23, 3, 1, 'Ann', 'Nixon', '2021-10-24 20:29:17', '2021-10-24 20:29:17'),
(24, 3, 1, 'Eaton', 'Fuentes', '2021-10-24 20:50:55', '2021-10-24 20:50:55'),
(25, 3, 1, 'Brennan', 'Mullen', '2021-10-24 21:01:29', '2021-10-24 21:01:29'),
(26, 3, 1, 'Chase', 'Cannon', '2021-10-24 21:19:11', '2021-10-24 21:19:11'),
(27, 3, 1, 'Mikayla', 'Gamble', '2021-11-02 21:40:37', '2021-11-02 21:40:37'),
(28, 3, 1, 'c', 'c', '2021-11-02 21:48:51', '2021-11-02 21:48:51'),
(29, 3, 1, 'Jane', 'Hickman', '2021-11-03 17:03:55', '2021-11-03 17:03:55'),
(30, 3, 1, 'Jane', 'Hickman', '2021-11-03 17:04:06', '2021-11-03 17:04:06'),
(31, 3, 1, 'Jane', 'Hickman', '2021-11-03 17:04:14', '2021-11-03 17:04:14'),
(32, 3, 1, 'Jane', 'Hickman', '2021-11-03 17:04:17', '2021-11-03 17:04:17'),
(33, 3, 1, 'Nicole', 'Wooten', '2021-11-03 17:05:21', '2021-11-03 17:05:21'),
(34, 3, 1, 'Nicole', 'Wooten', '2021-11-03 17:05:28', '2021-11-03 17:05:28'),
(35, 3, 1, 'Declan', 'Madden', '2021-11-03 17:06:21', '2021-11-03 17:06:21'),
(36, 3, 1, 'Kareem', 'Cummings', '2021-11-03 17:11:17', '2021-11-03 17:11:17'),
(37, 3, 1, 'Kareem', 'Cummings', '2021-11-03 17:11:36', '2021-11-03 17:11:36'),
(38, 3, 1, 'Scarlet', 'May', '2021-11-03 17:12:29', '2021-11-03 17:12:29'),
(43, 3, 1, 'Phoebe', 'Guerrero', '2021-11-03 17:30:14', '2021-11-03 17:30:14'),
(44, 3, 1, 'Justina', 'Watson', '2021-11-03 17:30:21', '2021-11-03 17:30:21'),
(45, 3, 1, 'Mariko', 'Wallace', '2021-11-03 17:51:51', '2021-11-03 17:51:51'),
(46, 3, 1, 'Madeline', 'Burgess', '2021-11-03 17:52:50', '2021-11-03 17:52:50'),
(47, 3, 1, 'Jessamine', 'Randall', '2021-11-03 17:58:55', '2021-11-03 17:58:55'),
(48, 3, 1, 'Barclay', 'Mills', '2021-11-06 08:30:52', '2021-11-06 08:30:52'),
(49, 3, 1, 'Troy', 'May', '2021-11-17 21:02:42', '2021-11-17 21:02:42'),
(50, 3, 1, 'Hollee', 'Levine', '2021-11-17 21:29:36', '2021-11-17 21:29:36'),
(51, 3, 1, 'Serina', 'Alston', '2021-11-17 21:49:38', '2021-11-17 21:49:38');

-- --------------------------------------------------------

--
-- Structure de la table `human_types`
--

CREATE TABLE `human_types` (
  `id` int(11) NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `human_types`
--

INSERT INTO `human_types` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Human customer', '2021-10-11 18:39:23', '2021-10-11 18:39:23'),
(2, 'Employee', '2021-10-11 18:39:23', '2021-10-11 18:39:23'),
(3, 'Visitor', '2021-10-11 18:39:23', '2021-10-11 18:39:23'),
(4, 'test', '2021-11-10 10:01:53', '2021-11-10 10:01:53');

-- --------------------------------------------------------

--
-- Structure de la table `iconable_items`
--

CREATE TABLE `iconable_items` (
  `id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `icon_id` int(11) NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `iconable_items`
--

INSERT INTO `iconable_items` (`id`, `item_id`, `icon_id`, `title`, `value`, `created_at`, `updated_at`) VALUES
(1, 1, 8, 'Featured service item 1', 'Featured service item content 1', '2021-10-10 20:51:54', '2021-10-10 20:51:54'),
(2, 2, 11, 'Featured service item 2', 'Featured service item content 2', '2021-10-10 20:51:54', '2021-10-10 20:51:54'),
(3, 3, 10, 'Service lorem ip item 2', 'Service item content 2', '2021-10-10 20:51:54', '2021-10-10 20:51:54'),
(4, 4, 11, 'Service item 1', 'Service item content 1', '2021-10-10 20:51:54', '2021-10-10 20:51:54'),
(5, 5, 12, 'About item 1 title', 'About item 1 description ', '2021-10-11 06:58:37', '2021-10-11 06:58:37'),
(6, 6, 13, 'About item 2 title', 'About item 2 description', '2021-10-11 06:58:37', '2021-10-11 06:58:37'),
(7, 9, 14, 'Count item 1 title', '231', '2021-10-11 06:58:37', '2021-10-11 06:58:37'),
(8, 10, 15, 'Count item 2 title', '522', '2021-10-11 06:58:37', '2021-10-11 06:58:37'),
(12, 33, 9, 'Featured service item 3', 'Featured service item 3', '2021-11-17 21:10:35', '2021-11-17 21:10:35'),
(13, 35, 17, 'Count item 3 title', '500', '2021-11-17 21:17:26', '2021-11-17 21:19:34'),
(14, 36, 8, 'Featured service item 4', 'Featured service item 4', '2021-11-17 21:54:15', '2021-11-17 21:54:15');

-- --------------------------------------------------------

--
-- Structure de la table `icons`
--

CREATE TABLE `icons` (
  `id` int(11) NOT NULL,
  `class` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_extended` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `icons`
--

INSERT INTO `icons` (`id`, `class`, `is_extended`, `created_at`, `updated_at`) VALUES
(1, 'envelope', 0, '2021-10-09 20:00:42', '2021-10-09 20:00:42'),
(2, 'phone', 0, '2021-10-09 20:00:49', '2021-10-09 20:00:49'),
(3, 'facebook', 1, '2021-10-09 20:00:49', '2021-10-09 20:00:49'),
(4, 'linkedin', 1, '2021-10-09 20:00:49', '2021-10-09 20:00:49'),
(5, 'twitter', 1, '2021-10-09 20:00:49', '2021-10-09 20:00:49'),
(6, 'instagram', 1, '2021-10-09 20:00:49', '2021-10-09 20:00:49'),
(7, 'youtube', 1, '2021-10-09 20:00:49', '2021-10-09 20:00:49'),
(8, 'dribbble', 1, '2021-10-09 20:00:49', '2021-10-09 20:00:49'),
(9, 'file', 0, '2021-10-09 20:00:49', '2021-10-09 20:00:49'),
(10, 'tachometer', 0, '2021-10-09 20:00:49', '2021-10-09 20:00:49'),
(11, 'world', 0, '2021-10-09 20:00:49', '2021-10-09 20:00:49'),
(12, 'store-alt', 0, '2021-10-11 06:55:15', '2021-10-11 06:55:15'),
(13, 'images', 0, '2021-10-11 06:55:15', '2021-10-11 06:55:15'),
(14, 'emoji-smile', 0, '2021-10-11 16:01:38', '2021-10-11 16:01:38'),
(15, 'journal-richtext', 0, '2021-10-11 16:01:38', '2021-10-11 16:01:38'),
(16, 'headset', 0, '2021-10-11 16:01:38', '2021-10-11 16:01:38'),
(17, 'people', 0, '2021-10-11 16:01:38', '2021-10-11 16:01:38'),
(18, 'map', 0, '2021-10-12 23:57:20', '2021-10-12 23:57:20'),
(19, 'test', 1, '2021-11-08 19:56:35', '2021-11-08 19:56:35'),
(20, 'vflvfl', 1, '2021-11-08 20:20:32', '2021-11-08 20:20:32');

-- --------------------------------------------------------

--
-- Structure de la table `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `item_type_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `items`
--

INSERT INTO `items` (`id`, `item_type_id`, `section_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2021-10-10 20:47:56', '2021-10-10 20:47:56'),
(2, 1, 1, '2021-10-10 20:47:56', '2021-10-10 20:47:56'),
(3, 1, 1, '2021-10-10 20:47:56', '2021-10-10 20:47:56'),
(4, 1, 1, '2021-10-10 20:47:56', '2021-10-10 20:47:56'),
(5, 2, 2, '2021-10-11 06:56:07', '2021-10-11 06:56:07'),
(6, 2, 2, '2021-10-11 06:56:07', '2021-10-11 06:56:07'),
(7, 3, 3, '2021-10-11 09:42:31', '2021-10-11 09:42:31'),
(8, 3, 3, '2021-10-11 09:42:31', '2021-10-11 09:42:31'),
(9, 4, 4, '2021-10-11 15:59:03', '2021-10-11 15:59:03'),
(10, 4, 4, '2021-10-11 15:59:03', '2021-10-11 15:59:03'),
(11, 5, 5, '2021-10-11 16:46:25', '2021-10-11 16:46:25'),
(12, 5, 5, '2021-10-11 16:46:25', '2021-10-11 16:46:25'),
(13, 6, 6, '2021-10-11 18:37:14', '2021-10-11 18:37:14'),
(14, 6, 6, '2021-10-11 18:37:14', '2021-10-11 18:37:14'),
(15, 7, 7, '2021-10-11 21:50:45', '2021-10-11 21:50:45'),
(16, 7, 7, '2021-10-11 21:50:45', '2021-10-11 21:50:45'),
(17, 8, 8, '2021-10-12 11:56:23', '2021-10-12 11:56:23'),
(18, 8, 8, '2021-10-12 11:56:23', '2021-10-12 11:56:23'),
(19, 9, 9, '2021-10-12 21:17:41', '2021-10-12 21:17:41'),
(20, 9, 9, '2021-10-12 21:17:41', '2021-10-12 21:17:41'),
(21, 10, 10, '2021-10-12 22:36:08', '2021-10-12 22:36:08'),
(22, 10, 10, '2021-10-12 22:36:08', '2021-10-12 22:36:08'),
(33, 1, 1, '2021-11-17 21:08:51', '2021-11-17 21:08:51'),
(34, 3, 3, '2021-11-17 21:13:01', '2021-11-17 21:13:01'),
(35, 4, 4, '2021-11-17 21:16:34', '2021-11-17 21:16:34'),
(36, 1, 1, '2021-11-17 21:53:11', '2021-11-17 21:53:11'),
(37, 3, 3, '2021-11-17 21:56:03', '2021-11-17 21:56:03');

-- --------------------------------------------------------

--
-- Structure de la table `item_types`
--

CREATE TABLE `item_types` (
  `id` int(11) NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `item_types`
--

INSERT INTO `item_types` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Service', '2021-10-10 20:45:42', '2021-10-10 20:45:42'),
(2, 'About us', '2021-10-11 06:48:02', '2021-10-11 06:48:02'),
(3, 'Skill', '2021-10-11 09:41:54', '2021-10-11 09:41:54'),
(4, 'Count', '2021-10-11 15:58:38', '2021-10-11 15:58:38'),
(5, 'Enterprise', '2021-10-11 16:45:54', '2021-10-11 16:45:54'),
(6, 'Testimonials', '2021-10-11 17:57:00', '2021-10-11 17:57:00'),
(7, 'Portfolio', '2021-10-11 20:59:43', '2021-10-11 20:59:43'),
(8, 'Team', '2021-10-12 11:55:59', '2021-10-12 11:55:59'),
(9, 'Pricing', '2021-10-12 21:16:46', '2021-10-12 21:16:46'),
(10, 'Faq', '2021-10-12 22:35:39', '2021-10-12 22:35:39'),
(11, 'Contact', '2021-10-12 23:53:38', '2021-10-12 23:53:38'),
(12, 'Privacy Policy', '2021-10-21 18:55:29', '2021-10-21 18:55:29');

-- --------------------------------------------------------

--
-- Structure de la table `links`
--

CREATE TABLE `links` (
  `id` int(11) NOT NULL,
  `link_type_id` int(11) NOT NULL,
  `linkable_id` int(11) NOT NULL,
  `linkable_type` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `links`
--

INSERT INTO `links` (`id`, `link_type_id`, `linkable_id`, `linkable_type`, `url`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'App\\Models\\Corporation', 'https://www.facebook.com', '2021-10-10 00:59:34', '2021-10-10 00:59:34'),
(2, 2, 1, 'App\\Models\\Corporation', 'https://www.linkedin.com', '2021-10-10 00:59:34', '2021-10-10 00:59:34'),
(3, 3, 1, 'App\\Models\\Corporation', 'https://www.twitter.com', '2021-10-10 00:59:34', '2021-10-10 00:59:34'),
(4, 4, 1, 'App\\Models\\Corporation', 'https://www.instagram.com', '2021-10-10 00:59:34', '2021-10-10 00:59:34'),
(5, 5, 1, 'App\\Models\\Corporation', 'https://www.youtube.com', '2021-10-10 00:59:34', '2021-10-10 00:59:34'),
(6, 6, 1, 'App\\Models\\Project', 'https://www.project1.com', '2021-10-11 22:01:01', '2021-10-11 22:01:01'),
(7, 6, 2, 'App\\Models\\Project', 'https://www.project2.com', '2021-10-11 22:01:01', '2021-10-11 22:01:01'),
(8, 1, 3, 'App\\Models\\Human', 'https://www.facebook.com', '2021-10-12 12:01:51', '2021-10-12 12:01:51'),
(9, 3, 3, 'App\\Models\\Human', 'https://www.twitter.com', '2021-10-12 12:01:51', '2021-10-12 12:01:51'),
(10, 4, 4, 'App\\Models\\Human', 'https://www.instagram.com', '2021-10-12 12:02:41', '2021-10-12 12:02:41'),
(11, 2, 4, 'App\\Models\\Human', 'https://www.linkedin.com', '2021-10-12 12:03:01', '2021-10-12 12:03:01'),
(12, 1, 4, 'App\\Models\\Human', 'https://www.facebook.com', '2021-10-12 12:03:16', '2021-10-12 12:03:16'),
(13, 7, 1, 'App\\Models\\Corporation', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3966.708394756227!2d1.230252450114596!3d6.169787328864438!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x1023e3607f815fb1%3A0x14dbd6491a5e5af9!2sChez%20asia!5e0!3m2!1sfr!2stg!4v1636185578830!5m2!1sfr!2stg', '2021-10-13 01:05:03', '2021-10-13 01:05:03');

-- --------------------------------------------------------

--
-- Structure de la table `link_types`
--

CREATE TABLE `link_types` (
  `id` int(11) NOT NULL,
  `icon_id` int(11) NOT NULL,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `link_types`
--

INSERT INTO `link_types` (`id`, `icon_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 3, 'Facebook', '2021-10-10 00:57:14', '2021-10-10 00:57:14'),
(2, 4, 'Linkedin', '2021-10-10 00:57:14', '2021-10-10 00:57:14'),
(3, 5, 'Twitter', '2021-10-10 00:57:14', '2021-10-10 00:57:14'),
(4, 6, 'Instagram', '2021-10-10 00:57:14', '2021-10-10 00:57:14'),
(5, 7, 'youtube', '2021-10-10 00:57:14', '2021-10-10 00:57:14'),
(6, 11, 'Website', '2021-10-11 21:59:13', '2021-10-11 21:59:13'),
(7, 18, 'Geolocalization url', '2021-10-13 01:04:10', '2021-10-13 01:04:10'),
(8, 20, 'test', '2021-11-10 10:16:31', '2021-11-10 10:16:31');

-- --------------------------------------------------------

--
-- Structure de la table `logos`
--

CREATE TABLE `logos` (
  `id` int(11) NOT NULL,
  `logo_category_id` int(11) NOT NULL,
  `logoable_id` int(11) NOT NULL,
  `logoable_type` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `logos`
--

INSERT INTO `logos` (`id`, `logo_category_id`, `logoable_id`, `logoable_type`, `link`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 'App\\Models\\Enterprise', 'logos/October2021/CV0q89O6lLZu3Iqrj5Ju.jpg', '2021-10-11 16:50:09', '2021-10-11 17:06:06'),
(2, 2, 2, 'App\\Models\\Enterprise', 'logos/October2021/GgnZR9juxC3EWYHOgopR.png', '2021-10-11 16:50:09', '2021-10-11 17:07:48'),
(3, 1, 1, 'App\\Models\\Corporation', 'logos/October2021/URt4StV0rsumh4LI4mxR.png', '2021-10-16 13:08:54', '2021-10-16 13:11:05'),
(4, 2, 1, 'App\\Models\\Test', 'logos/November2021/FycjqjLV1usvaKi8dCnJ.png', '2021-11-10 10:15:19', '2021-11-10 10:15:19');

-- --------------------------------------------------------

--
-- Structure de la table `logo_categories`
--

CREATE TABLE `logo_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `logo_categories`
--

INSERT INTO `logo_categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Corporation', '2021-10-11 16:40:14', '2021-10-11 16:40:14'),
(2, 'Enterprise', '2021-10-11 16:40:14', '2021-10-11 16:40:14'),
(3, 'test', '2021-11-10 11:18:04', '2021-11-10 11:18:04');

-- --------------------------------------------------------

--
-- Structure de la table `medias`
--

CREATE TABLE `medias` (
  `id` int(11) NOT NULL,
  `media_type_id` int(11) NOT NULL,
  `media_category_id` int(11) NOT NULL,
  `mediaable_id` int(11) NOT NULL,
  `mediaable_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `medias`
--

INSERT INTO `medias` (`id`, `media_type_id`, `media_category_id`, `mediaable_id`, `mediaable_type`, `link`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 'App\\Models\\Corporation', 'medias/October2021/uK43mWzGjTeedsABpWlu.jpg', '2021-10-10 13:15:08', '2021-10-10 13:30:40'),
(2, 1, 2, 2, 'App\\Models\\Section', 'medias/October2021/IJIflaUQZlJgTcxSlIPo.jpg', '2021-10-10 23:32:05', '2021-10-12 00:18:56'),
(4, 1, 4, 1, 'App\\Models\\Project', 'medias/October2021/QUKhwaTR0j9WfjqJNjdd.jpg', '2021-10-11 21:54:13', '2021-10-12 00:17:49'),
(5, 1, 4, 2, 'App\\Models\\Project', 'medias/October2021/4xtKhop1ShRQ0jDn4r6F.jpg', '2021-10-11 21:54:13', '2021-10-12 02:33:16'),
(6, 1, 4, 1, 'App\\Models\\Project', 'medias/October2021/7wPPCMdj2XDKYNtb0QrO.jpg', '2021-10-11 21:54:13', '2021-10-12 00:16:58'),
(7, 1, 4, 2, 'App\\Models\\Project', 'medias/October2021/sIWRg5RYe0DuGewUOZ3Y.jpg', '2021-10-11 21:54:13', '2021-10-12 02:33:57'),
(8, 1, 4, 1, 'App\\Models\\Project', 'medias/October2021/rELiIOdcKV1nejyFlhv7.jpg', '2021-10-12 02:31:58', '2021-10-12 02:31:58'),
(9, 1, 4, 2, 'App\\Models\\Project', 'medias/October2021/yapVKWwdMxVHmFkCuyYw.jpg', '2021-10-12 02:35:33', '2021-10-19 20:14:47'),
(10, 1, 3, 6, 'App\\Models\\Section', 'medias/October2021/J01sFSN9mxZ4EP8KTnKV.jpg', '2021-10-17 07:22:44', '2021-10-17 07:24:24');

-- --------------------------------------------------------

--
-- Structure de la table `media_categories`
--

CREATE TABLE `media_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `media_categories`
--

INSERT INTO `media_categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Hero', '2021-10-10 13:14:39', '2021-10-10 13:14:39'),
(2, 'About us', '2021-10-10 23:31:29', '2021-10-10 23:31:29'),
(3, 'Testimonial', '2021-10-11 17:52:50', '2021-10-11 17:52:50'),
(4, 'Portfolio', '2021-10-11 21:53:06', '2021-10-11 21:53:06');

-- --------------------------------------------------------

--
-- Structure de la table `media_types`
--

CREATE TABLE `media_types` (
  `id` int(11) NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `media_types`
--

INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Image', '2021-10-10 13:14:18', '2021-10-10 13:14:18'),
(2, 'Video', '2021-10-10 13:14:18', '2021-10-10 13:14:18'),
(3, 'Document', '2021-10-10 13:14:18', '2021-10-10 13:14:18'),
(4, 'Other', '2021-10-10 13:19:37', '2021-10-10 13:19:37');

-- --------------------------------------------------------

--
-- Structure de la table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2021-10-09 18:40:27', '2021-10-09 18:40:27');

-- --------------------------------------------------------

--
-- Structure de la table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2021-10-09 18:40:27', '2021-10-09 18:40:27', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, 61, 1, '2021-10-09 18:40:27', '2021-11-11 08:58:43', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, 60, 2, '2021-10-09 18:40:27', '2021-11-11 08:52:27', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, 60, 1, '2021-10-09 18:40:27', '2021-11-11 08:52:22', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 4, '2021-10-09 18:40:27', '2021-11-11 09:05:04', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 4, '2021-10-09 18:40:27', '2021-11-11 09:06:20', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 3, '2021-10-09 18:40:27', '2021-11-11 09:06:20', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 2, '2021-10-09 18:40:27', '2021-11-11 09:06:16', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 1, '2021-10-09 18:40:27', '2021-11-11 09:06:16', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, 61, 2, '2021-10-09 18:40:27', '2021-11-11 08:58:43', 'voyager.settings.index', NULL),
(11, 1, 'Categories', '', '_self', 'voyager-categories', NULL, 61, 3, '2021-10-09 18:40:28', '2021-11-11 08:58:43', 'voyager.categories.index', NULL),
(12, 1, 'Posts', '', '_self', 'voyager-news', NULL, 61, 4, '2021-10-09 18:40:29', '2021-11-11 08:55:08', 'voyager.posts.index', NULL),
(13, 1, 'Pages', '', '_self', 'voyager-file-text', NULL, 61, 5, '2021-10-09 18:40:29', '2021-11-11 08:58:43', 'voyager.pages.index', NULL),
(15, 1, 'Contact Types', '', '_self', 'voyager-data', '#000000', 59, 4, '2021-10-09 20:03:47', '2021-11-11 09:10:39', 'voyager.contact-types.index', 'null'),
(16, 1, 'Media Types', '', '_self', 'voyager-data', '#000000', 59, 28, '2021-10-10 13:19:07', '2021-11-11 09:14:57', 'voyager.media-types.index', 'null'),
(17, 1, 'Media Categories', '', '_self', 'voyager-data', '#000000', 59, 27, '2021-10-10 13:20:53', '2021-11-11 09:14:48', 'voyager.media-categories.index', 'null'),
(18, 1, 'Media', '', '_self', 'voyager-data', '#000000', 59, 26, '2021-10-10 13:23:24', '2021-11-11 09:14:36', 'voyager.medias.index', 'null'),
(19, 1, 'Corporations', '', '_self', 'voyager-data', '#000000', 59, 5, '2021-10-10 15:43:54', '2021-11-11 09:10:47', 'voyager.corporations.index', 'null'),
(20, 1, 'Logos', '', '_self', 'voyager-data', '#000000', 59, 24, '2021-10-11 16:55:22', '2021-11-11 09:14:20', 'voyager.logos.index', 'null'),
(22, 1, 'Employees', '', '_self', 'voyager-data', '#000000', 59, 11, '2021-10-12 15:05:21', '2021-11-11 09:12:10', 'voyager.employees.index', 'null'),
(23, 1, 'Clients', '', '_self', 'voyager-data', '#000000', 59, 2, '2021-10-17 07:08:31', '2021-11-11 09:10:24', 'voyager.clients.index', 'null'),
(24, 1, 'Icons', '', '_self', 'voyager-data', '#000000', 59, 18, '2021-11-08 19:52:29', '2021-11-11 09:13:18', 'voyager.icons.index', 'null'),
(25, 1, 'Item Types', '', '_self', 'voyager-data', '#000000', 59, 21, '2021-11-08 19:59:52', '2021-11-11 09:13:51', 'voyager.item-types.index', 'null'),
(26, 1, 'Site Pages', '', '_self', 'voyager-data', '#000000', 59, 36, '2021-11-08 20:24:48', '2021-11-11 09:16:16', 'voyager.site-pages.index', 'null'),
(27, 1, 'Sections', '', '_self', 'voyager-data', '#000000', 59, 37, '2021-11-08 20:26:32', '2021-11-11 09:16:23', 'voyager.sections.index', 'null'),
(28, 1, 'Features', '', '_self', 'voyager-data', '#000000', 59, 14, '2021-11-08 20:28:10', '2021-11-11 09:12:32', 'voyager.features.index', 'null'),
(29, 1, 'Feature Pricings', '', '_self', 'voyager-data', '#000000', 59, 15, '2021-11-08 20:29:21', '2021-11-11 09:17:28', 'voyager.feature-pricing.index', 'null'),
(30, 1, 'Currencies', '', '_self', 'voyager-data', '#000000', 59, 7, '2021-11-08 20:30:08', '2021-11-11 09:11:18', 'voyager.currencies.index', 'null'),
(31, 1, 'Pricings', '', '_self', 'voyager-data', '#000000', 59, 31, '2021-11-08 20:37:17', '2021-11-11 09:17:42', 'voyager.pricings.index', 'null'),
(32, 1, 'Skills', '', '_self', 'voyager-data', '#000000', 59, 38, '2021-11-09 07:43:34', '2021-11-11 09:16:30', 'voyager.skills.index', 'null'),
(33, 1, 'Counts', '', '_self', 'voyager-data', '#000000', 59, 6, '2021-11-09 07:45:58', '2021-11-11 09:10:53', 'voyager.counts.index', 'null'),
(34, 1, 'Abouts', '', '_self', 'voyager-data', '#000000', 59, 1, '2021-11-09 07:46:45', '2021-11-11 09:10:17', 'voyager.abouts.index', 'null'),
(35, 1, 'Iconable Items', '', '_self', 'voyager-data', '#000000', 59, 19, '2021-11-09 07:48:08', '2021-11-11 09:13:31', 'voyager.iconable-items.index', 'null'),
(36, 1, 'Services', '', '_self', 'voyager-data', '#000000', 59, 39, '2021-11-09 07:49:31', '2021-11-11 09:16:39', 'voyager.services.index', 'null'),
(37, 1, 'Items', '', '_self', 'voyager-data', '#000000', 59, 20, '2021-11-09 07:51:33', '2021-11-11 09:13:42', 'voyager.items.index', 'null'),
(38, 1, 'Logo Categories', '', '_self', 'voyager-data', '#000000', 59, 25, '2021-11-09 07:57:41', '2021-11-11 09:14:28', 'voyager.logo-categories.index', 'null'),
(39, 1, 'Works', '', '_self', 'voyager-data', '#000000', 59, 43, '2021-11-09 07:58:27', '2021-11-11 09:17:10', 'voyager.works.index', 'null'),
(40, 1, 'Enterprises', '', '_self', 'voyager-data', '#000000', 59, 12, '2021-11-09 08:02:26', '2021-11-11 09:12:17', 'voyager.enterprises.index', 'null'),
(41, 1, 'Customer Types', '', '_self', 'voyager-data', '#000000', 59, 9, '2021-11-09 08:03:21', '2021-11-11 09:11:49', 'voyager.customer-types.index', 'null'),
(42, 1, 'Officials', '', '_self', 'voyager-data', '#000000', 59, 30, '2021-11-09 08:04:15', '2021-11-11 09:15:13', 'voyager.officials.index', 'null'),
(43, 1, 'Teams', '', '_self', 'voyager-data', '#000000', 59, 40, '2021-11-09 08:05:04', '2021-11-11 09:16:48', 'voyager.teams.index', 'null'),
(44, 1, 'Customers', '', '_self', 'voyager-data', '#000000', 59, 8, '2021-11-09 08:06:46', '2021-11-11 09:11:42', 'voyager.customers.index', 'null'),
(45, 1, 'Project Categories', '', '_self', 'voyager-data', '#000000', 59, 34, '2021-11-09 08:07:49', '2021-11-11 09:15:58', 'voyager.project-categories.index', 'null'),
(46, 1, 'Humans', '', '_self', 'voyager-data', '#000000', 59, 16, '2021-11-09 08:09:16', '2021-11-11 09:12:48', 'voyager.humans.index', 'null'),
(47, 1, 'Projects', '', '_self', 'voyager-data', '#000000', 59, 33, '2021-11-09 08:14:30', '2021-11-11 09:15:49', 'voyager.projects.index', 'null'),
(48, 1, 'Link Types', '', '_self', 'voyager-data', '#000000', 59, 23, '2021-11-09 08:17:27', '2021-11-11 09:14:12', 'voyager.link-types.index', 'null'),
(49, 1, 'Human Types', '', '_self', 'voyager-data', '#000000', 59, 17, '2021-11-09 08:18:26', '2021-11-11 09:13:05', 'voyager.human-types.index', 'null'),
(50, 1, 'Links', '', '_self', 'voyager-data', '#000000', 59, 22, '2021-11-09 08:21:24', '2021-11-11 09:13:59', 'voyager.links.index', 'null'),
(51, 1, 'Faqs', '', '_self', 'voyager-data', '#000000', 59, 13, '2021-11-09 08:23:32', '2021-11-11 09:12:25', 'voyager.faqs.index', 'null'),
(52, 1, 'Privacy Policies', '', '_self', 'voyager-data', '#000000', 59, 32, '2021-11-09 08:30:53', '2021-11-11 09:15:24', 'voyager.privacy-policies.index', 'null'),
(53, 1, 'Terms Of Services', '', '_self', 'voyager-data', '#000000', 59, 41, '2021-11-09 08:33:36', '2021-11-11 09:16:55', 'voyager.terms-of-services.index', 'null'),
(54, 1, 'Descriptions', '', '_self', 'voyager-data', '#000000', 59, 10, '2021-11-09 08:37:09', '2021-11-11 09:11:56', 'voyager.descriptions.index', 'null'),
(55, 1, 'Contacts', '', '_self', 'voyager-data', '#000000', 59, 3, '2021-11-09 08:38:53', '2021-11-11 09:10:30', 'voyager.contacts.index', 'null'),
(56, 1, 'Visitors', '', '_self', 'voyager-data', '#000000', 59, 42, '2021-11-09 09:03:37', '2021-11-11 09:17:02', 'voyager.visitors.index', 'null'),
(57, 1, 'Questionings', '', '_self', 'voyager-data', '#000000', 59, 35, '2021-11-09 09:06:11', '2021-11-11 09:16:06', 'voyager.questionings.index', 'null'),
(58, 1, 'Newsletters', '', '_self', 'voyager-data', '#000000', 59, 29, '2021-11-09 09:07:45', '2021-11-11 09:15:04', 'voyager.newsletters.index', 'null'),
(59, 1, 'Tables', '', '_self', 'voyager-window-list', '#000000', NULL, 3, '2021-11-11 08:40:31', '2021-11-11 09:08:32', NULL, ''),
(60, 1, 'Authentication', '', '_self', 'voyager-lock', '#000000', NULL, 2, '2021-11-11 08:51:55', '2021-11-11 09:08:15', NULL, ''),
(61, 1, 'Other', '', '_self', 'voyager-play', '#000000', NULL, 5, '2021-11-11 08:54:04', '2021-11-11 09:09:16', NULL, '');

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_01_01_000000_create_pages_table', 1),
(6, '2016_01_01_000000_create_posts_table', 1),
(7, '2016_02_15_204651_create_categories_table', 1),
(8, '2016_05_19_173453_create_menu_table', 1),
(9, '2016_10_21_190000_create_roles_table', 1),
(10, '2016_10_21_190000_create_settings_table', 1),
(11, '2016_11_30_135954_create_permission_table', 1),
(12, '2016_11_30_141208_create_permission_role_table', 1),
(13, '2016_12_26_201236_data_types__add__server_side', 1),
(14, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(15, '2017_01_14_005015_create_translations_table', 1),
(16, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(17, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(18, '2017_04_11_000000_alter_post_nullable_fields_table', 1),
(19, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(20, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(21, '2017_08_05_000000_add_group_to_settings_table', 1),
(22, '2017_11_26_013050_add_user_role_relationship', 1),
(23, '2017_11_26_015000_create_user_roles_table', 1),
(24, '2018_03_11_000000_add_user_settings', 1),
(25, '2018_03_14_000000_add_details_to_data_types_table', 1),
(26, '2018_03_16_000000_make_settings_value_nullable', 1),
(27, '2019_08_19_000000_create_failed_jobs_table', 1),
(28, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Structure de la table `newsletters`
--

CREATE TABLE `newsletters` (
  `id` int(11) NOT NULL,
  `corporation_id` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `newsletters`
--

INSERT INTO `newsletters` (`id`, `corporation_id`, `email`, `created_at`, `updated_at`) VALUES
(1, 1, 'dd@ddd.test', '2021-10-15 20:19:55', '2021-10-15 20:19:55'),
(2, 1, 'mama@mama.com', '2021-10-15 20:21:26', '2021-10-15 20:21:26'),
(3, 1, 'papa@pa.com', '2021-10-15 20:21:40', '2021-10-15 20:21:40'),
(4, 1, 'tibang.kolani@gmail.com', '2021-10-15 20:23:40', '2021-10-15 20:23:40'),
(5, 1, 'tibang.kolani@gmmail.com', '2021-10-15 20:29:55', '2021-10-15 20:29:55'),
(6, 1, 'f@e.cpo', '2021-10-15 21:33:51', '2021-10-15 21:33:51'),
(7, 1, 'tibang.kolffani@gmail.com', '2021-10-15 22:02:42', '2021-10-15 22:02:42'),
(8, 1, 'qanejit@mailinator.com', '2021-11-02 21:38:21', '2021-11-02 21:38:21'),
(9, 1, 'qanejit@mmamaailinator.com', '2021-11-02 21:38:35', '2021-11-02 21:38:35'),
(10, 1, 'vudugofy@mailinator.com', '2021-11-02 21:49:02', '2021-11-02 21:49:02'),
(11, 1, 'dd@ddd.cco', '2021-11-03 16:40:27', '2021-11-03 16:40:27'),
(12, 1, 'jihawakiji@mailinator.com', '2021-11-03 17:52:58', '2021-11-03 17:52:58'),
(13, 1, 'dizirexivo@mailinator.com', '2021-11-03 17:58:59', '2021-11-03 17:58:59'),
(14, 1, 'gibag@mailinator.com', '2021-11-05 21:27:00', '2021-11-05 21:27:00'),
(15, 1, 'fyvog@mailinator.com', '2021-11-06 08:31:04', '2021-11-06 08:31:04'),
(16, 1, 'vihuzewiho@mailinator.com', '2021-11-09 08:58:29', '2021-11-09 08:58:29'),
(17, 1, 'zukexeno@mailinator.com', '2021-11-10 08:53:35', '2021-11-10 08:53:35'),
(18, 1, 'toqi@mailinator.com', '2021-11-17 21:02:55', '2021-11-17 21:02:55'),
(19, 1, 'cesejawaso@mailinator.com', '2021-11-17 21:26:05', '2021-11-17 21:26:05'),
(20, 1, 'dobyno@mailinator.com', '2021-11-17 21:49:52', '2021-11-17 21:49:52');

-- --------------------------------------------------------

--
-- Structure de la table `officials`
--

CREATE TABLE `officials` (
  `id` int(11) NOT NULL,
  `human_id` int(11) NOT NULL,
  `work_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `officials`
--

INSERT INTO `officials` (`id`, `human_id`, `work_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2021-10-17 06:24:46', '2021-10-17 06:24:46'),
(2, 2, 2, '2021-10-17 06:24:46', '2021-10-17 06:24:46'),
(3, 3, 4, '2021-10-17 14:53:29', '2021-10-17 14:53:29'),
(4, 4, 1, '2021-10-17 14:53:29', '2021-10-17 14:53:29');

-- --------------------------------------------------------

--
-- Structure de la table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2021-10-09 18:40:29', '2021-10-09 18:40:29');

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2021-10-09 18:40:27', '2021-10-09 18:40:27'),
(2, 'browse_bread', NULL, '2021-10-09 18:40:27', '2021-10-09 18:40:27'),
(3, 'browse_database', NULL, '2021-10-09 18:40:27', '2021-10-09 18:40:27'),
(4, 'browse_media', NULL, '2021-10-09 18:40:27', '2021-10-09 18:40:27'),
(5, 'browse_compass', NULL, '2021-10-09 18:40:27', '2021-10-09 18:40:27'),
(6, 'browse_menus', 'menus', '2021-10-09 18:40:27', '2021-10-09 18:40:27'),
(7, 'read_menus', 'menus', '2021-10-09 18:40:27', '2021-10-09 18:40:27'),
(8, 'edit_menus', 'menus', '2021-10-09 18:40:27', '2021-10-09 18:40:27'),
(9, 'add_menus', 'menus', '2021-10-09 18:40:27', '2021-10-09 18:40:27'),
(10, 'delete_menus', 'menus', '2021-10-09 18:40:27', '2021-10-09 18:40:27'),
(11, 'browse_roles', 'roles', '2021-10-09 18:40:27', '2021-10-09 18:40:27'),
(12, 'read_roles', 'roles', '2021-10-09 18:40:27', '2021-10-09 18:40:27'),
(13, 'edit_roles', 'roles', '2021-10-09 18:40:27', '2021-10-09 18:40:27'),
(14, 'add_roles', 'roles', '2021-10-09 18:40:27', '2021-10-09 18:40:27'),
(15, 'delete_roles', 'roles', '2021-10-09 18:40:27', '2021-10-09 18:40:27'),
(16, 'browse_users', 'users', '2021-10-09 18:40:27', '2021-10-09 18:40:27'),
(17, 'read_users', 'users', '2021-10-09 18:40:27', '2021-10-09 18:40:27'),
(18, 'edit_users', 'users', '2021-10-09 18:40:27', '2021-10-09 18:40:27'),
(19, 'add_users', 'users', '2021-10-09 18:40:27', '2021-10-09 18:40:27'),
(20, 'delete_users', 'users', '2021-10-09 18:40:27', '2021-10-09 18:40:27'),
(21, 'browse_settings', 'settings', '2021-10-09 18:40:27', '2021-10-09 18:40:27'),
(22, 'read_settings', 'settings', '2021-10-09 18:40:27', '2021-10-09 18:40:27'),
(23, 'edit_settings', 'settings', '2021-10-09 18:40:27', '2021-10-09 18:40:27'),
(24, 'add_settings', 'settings', '2021-10-09 18:40:27', '2021-10-09 18:40:27'),
(25, 'delete_settings', 'settings', '2021-10-09 18:40:27', '2021-10-09 18:40:27'),
(26, 'browse_categories', 'categories', '2021-10-09 18:40:28', '2021-10-09 18:40:28'),
(27, 'read_categories', 'categories', '2021-10-09 18:40:28', '2021-10-09 18:40:28'),
(28, 'edit_categories', 'categories', '2021-10-09 18:40:28', '2021-10-09 18:40:28'),
(29, 'add_categories', 'categories', '2021-10-09 18:40:28', '2021-10-09 18:40:28'),
(30, 'delete_categories', 'categories', '2021-10-09 18:40:28', '2021-10-09 18:40:28'),
(31, 'browse_posts', 'posts', '2021-10-09 18:40:29', '2021-10-09 18:40:29'),
(32, 'read_posts', 'posts', '2021-10-09 18:40:29', '2021-10-09 18:40:29'),
(33, 'edit_posts', 'posts', '2021-10-09 18:40:29', '2021-10-09 18:40:29'),
(34, 'add_posts', 'posts', '2021-10-09 18:40:29', '2021-10-09 18:40:29'),
(35, 'delete_posts', 'posts', '2021-10-09 18:40:29', '2021-10-09 18:40:29'),
(36, 'browse_pages', 'pages', '2021-10-09 18:40:29', '2021-10-09 18:40:29'),
(37, 'read_pages', 'pages', '2021-10-09 18:40:29', '2021-10-09 18:40:29'),
(38, 'edit_pages', 'pages', '2021-10-09 18:40:29', '2021-10-09 18:40:29'),
(39, 'add_pages', 'pages', '2021-10-09 18:40:29', '2021-10-09 18:40:29'),
(40, 'delete_pages', 'pages', '2021-10-09 18:40:29', '2021-10-09 18:40:29'),
(41, 'browse_social_icons', 'social_icons', '2021-10-09 19:59:40', '2021-10-09 19:59:40'),
(42, 'read_social_icons', 'social_icons', '2021-10-09 19:59:40', '2021-10-09 19:59:40'),
(43, 'edit_social_icons', 'social_icons', '2021-10-09 19:59:40', '2021-10-09 19:59:40'),
(44, 'add_social_icons', 'social_icons', '2021-10-09 19:59:40', '2021-10-09 19:59:40'),
(45, 'delete_social_icons', 'social_icons', '2021-10-09 19:59:40', '2021-10-09 19:59:40'),
(46, 'browse_contact_types', 'contact_types', '2021-10-09 20:03:47', '2021-10-09 20:03:47'),
(47, 'read_contact_types', 'contact_types', '2021-10-09 20:03:47', '2021-10-09 20:03:47'),
(48, 'edit_contact_types', 'contact_types', '2021-10-09 20:03:47', '2021-10-09 20:03:47'),
(49, 'add_contact_types', 'contact_types', '2021-10-09 20:03:47', '2021-10-09 20:03:47'),
(50, 'delete_contact_types', 'contact_types', '2021-10-09 20:03:47', '2021-10-09 20:03:47'),
(51, 'browse_media_types', 'media_types', '2021-10-10 13:19:07', '2021-10-10 13:19:07'),
(52, 'read_media_types', 'media_types', '2021-10-10 13:19:07', '2021-10-10 13:19:07'),
(53, 'edit_media_types', 'media_types', '2021-10-10 13:19:07', '2021-10-10 13:19:07'),
(54, 'add_media_types', 'media_types', '2021-10-10 13:19:07', '2021-10-10 13:19:07'),
(55, 'delete_media_types', 'media_types', '2021-10-10 13:19:07', '2021-10-10 13:19:07'),
(56, 'browse_media_categories', 'media_categories', '2021-10-10 13:20:53', '2021-10-10 13:20:53'),
(57, 'read_media_categories', 'media_categories', '2021-10-10 13:20:53', '2021-10-10 13:20:53'),
(58, 'edit_media_categories', 'media_categories', '2021-10-10 13:20:53', '2021-10-10 13:20:53'),
(59, 'add_media_categories', 'media_categories', '2021-10-10 13:20:53', '2021-10-10 13:20:53'),
(60, 'delete_media_categories', 'media_categories', '2021-10-10 13:20:53', '2021-10-10 13:20:53'),
(61, 'browse_medias', 'medias', '2021-10-10 13:23:24', '2021-10-10 13:23:24'),
(62, 'read_medias', 'medias', '2021-10-10 13:23:24', '2021-10-10 13:23:24'),
(63, 'edit_medias', 'medias', '2021-10-10 13:23:24', '2021-10-10 13:23:24'),
(64, 'add_medias', 'medias', '2021-10-10 13:23:24', '2021-10-10 13:23:24'),
(65, 'delete_medias', 'medias', '2021-10-10 13:23:24', '2021-10-10 13:23:24'),
(66, 'browse_corporations', 'corporations', '2021-10-10 15:43:54', '2021-10-10 15:43:54'),
(67, 'read_corporations', 'corporations', '2021-10-10 15:43:54', '2021-10-10 15:43:54'),
(68, 'edit_corporations', 'corporations', '2021-10-10 15:43:54', '2021-10-10 15:43:54'),
(69, 'add_corporations', 'corporations', '2021-10-10 15:43:54', '2021-10-10 15:43:54'),
(70, 'delete_corporations', 'corporations', '2021-10-10 15:43:54', '2021-10-10 15:43:54'),
(71, 'browse_logos', 'logos', '2021-10-11 16:55:22', '2021-10-11 16:55:22'),
(72, 'read_logos', 'logos', '2021-10-11 16:55:22', '2021-10-11 16:55:22'),
(73, 'edit_logos', 'logos', '2021-10-11 16:55:22', '2021-10-11 16:55:22'),
(74, 'add_logos', 'logos', '2021-10-11 16:55:22', '2021-10-11 16:55:22'),
(75, 'delete_logos', 'logos', '2021-10-11 16:55:22', '2021-10-11 16:55:22'),
(76, 'browse_buyers', 'buyers', '2021-10-11 18:48:54', '2021-10-11 18:48:54'),
(77, 'read_buyers', 'buyers', '2021-10-11 18:48:54', '2021-10-11 18:48:54'),
(78, 'edit_buyers', 'buyers', '2021-10-11 18:48:54', '2021-10-11 18:48:54'),
(79, 'add_buyers', 'buyers', '2021-10-11 18:48:54', '2021-10-11 18:48:54'),
(80, 'delete_buyers', 'buyers', '2021-10-11 18:48:54', '2021-10-11 18:48:54'),
(81, 'browse_employees', 'employees', '2021-10-12 15:05:21', '2021-10-12 15:05:21'),
(82, 'read_employees', 'employees', '2021-10-12 15:05:21', '2021-10-12 15:05:21'),
(83, 'edit_employees', 'employees', '2021-10-12 15:05:21', '2021-10-12 15:05:21'),
(84, 'add_employees', 'employees', '2021-10-12 15:05:21', '2021-10-12 15:05:21'),
(85, 'delete_employees', 'employees', '2021-10-12 15:05:21', '2021-10-12 15:05:21'),
(86, 'browse_clients', 'clients', '2021-10-17 07:08:31', '2021-10-17 07:08:31'),
(87, 'read_clients', 'clients', '2021-10-17 07:08:31', '2021-10-17 07:08:31'),
(88, 'edit_clients', 'clients', '2021-10-17 07:08:31', '2021-10-17 07:08:31'),
(89, 'add_clients', 'clients', '2021-10-17 07:08:31', '2021-10-17 07:08:31'),
(90, 'delete_clients', 'clients', '2021-10-17 07:08:31', '2021-10-17 07:08:31'),
(91, 'browse_icons', 'icons', '2021-11-08 19:52:29', '2021-11-08 19:52:29'),
(92, 'read_icons', 'icons', '2021-11-08 19:52:29', '2021-11-08 19:52:29'),
(93, 'edit_icons', 'icons', '2021-11-08 19:52:29', '2021-11-08 19:52:29'),
(94, 'add_icons', 'icons', '2021-11-08 19:52:29', '2021-11-08 19:52:29'),
(95, 'delete_icons', 'icons', '2021-11-08 19:52:29', '2021-11-08 19:52:29'),
(96, 'browse_item_types', 'item_types', '2021-11-08 19:59:52', '2021-11-08 19:59:52'),
(97, 'read_item_types', 'item_types', '2021-11-08 19:59:52', '2021-11-08 19:59:52'),
(98, 'edit_item_types', 'item_types', '2021-11-08 19:59:52', '2021-11-08 19:59:52'),
(99, 'add_item_types', 'item_types', '2021-11-08 19:59:52', '2021-11-08 19:59:52'),
(100, 'delete_item_types', 'item_types', '2021-11-08 19:59:52', '2021-11-08 19:59:52'),
(101, 'browse_site_pages', 'site_pages', '2021-11-08 20:24:48', '2021-11-08 20:24:48'),
(102, 'read_site_pages', 'site_pages', '2021-11-08 20:24:48', '2021-11-08 20:24:48'),
(103, 'edit_site_pages', 'site_pages', '2021-11-08 20:24:48', '2021-11-08 20:24:48'),
(104, 'add_site_pages', 'site_pages', '2021-11-08 20:24:48', '2021-11-08 20:24:48'),
(105, 'delete_site_pages', 'site_pages', '2021-11-08 20:24:48', '2021-11-08 20:24:48'),
(106, 'browse_sections', 'sections', '2021-11-08 20:26:32', '2021-11-08 20:26:32'),
(107, 'read_sections', 'sections', '2021-11-08 20:26:32', '2021-11-08 20:26:32'),
(108, 'edit_sections', 'sections', '2021-11-08 20:26:32', '2021-11-08 20:26:32'),
(109, 'add_sections', 'sections', '2021-11-08 20:26:32', '2021-11-08 20:26:32'),
(110, 'delete_sections', 'sections', '2021-11-08 20:26:32', '2021-11-08 20:26:32'),
(111, 'browse_features', 'features', '2021-11-08 20:28:10', '2021-11-08 20:28:10'),
(112, 'read_features', 'features', '2021-11-08 20:28:10', '2021-11-08 20:28:10'),
(113, 'edit_features', 'features', '2021-11-08 20:28:10', '2021-11-08 20:28:10'),
(114, 'add_features', 'features', '2021-11-08 20:28:10', '2021-11-08 20:28:10'),
(115, 'delete_features', 'features', '2021-11-08 20:28:10', '2021-11-08 20:28:10'),
(116, 'browse_feature_pricing', 'feature_pricing', '2021-11-08 20:29:21', '2021-11-08 20:29:21'),
(117, 'read_feature_pricing', 'feature_pricing', '2021-11-08 20:29:21', '2021-11-08 20:29:21'),
(118, 'edit_feature_pricing', 'feature_pricing', '2021-11-08 20:29:21', '2021-11-08 20:29:21'),
(119, 'add_feature_pricing', 'feature_pricing', '2021-11-08 20:29:21', '2021-11-08 20:29:21'),
(120, 'delete_feature_pricing', 'feature_pricing', '2021-11-08 20:29:21', '2021-11-08 20:29:21'),
(121, 'browse_currencies', 'currencies', '2021-11-08 20:30:08', '2021-11-08 20:30:08'),
(122, 'read_currencies', 'currencies', '2021-11-08 20:30:08', '2021-11-08 20:30:08'),
(123, 'edit_currencies', 'currencies', '2021-11-08 20:30:08', '2021-11-08 20:30:08'),
(124, 'add_currencies', 'currencies', '2021-11-08 20:30:08', '2021-11-08 20:30:08'),
(125, 'delete_currencies', 'currencies', '2021-11-08 20:30:08', '2021-11-08 20:30:08'),
(126, 'browse_pricings', 'pricings', '2021-11-08 20:37:17', '2021-11-08 20:37:17'),
(127, 'read_pricings', 'pricings', '2021-11-08 20:37:17', '2021-11-08 20:37:17'),
(128, 'edit_pricings', 'pricings', '2021-11-08 20:37:17', '2021-11-08 20:37:17'),
(129, 'add_pricings', 'pricings', '2021-11-08 20:37:17', '2021-11-08 20:37:17'),
(130, 'delete_pricings', 'pricings', '2021-11-08 20:37:17', '2021-11-08 20:37:17'),
(131, 'browse_skills', 'skills', '2021-11-09 07:43:34', '2021-11-09 07:43:34'),
(132, 'read_skills', 'skills', '2021-11-09 07:43:34', '2021-11-09 07:43:34'),
(133, 'edit_skills', 'skills', '2021-11-09 07:43:34', '2021-11-09 07:43:34'),
(134, 'add_skills', 'skills', '2021-11-09 07:43:34', '2021-11-09 07:43:34'),
(135, 'delete_skills', 'skills', '2021-11-09 07:43:34', '2021-11-09 07:43:34'),
(136, 'browse_counts', 'counts', '2021-11-09 07:45:57', '2021-11-09 07:45:57'),
(137, 'read_counts', 'counts', '2021-11-09 07:45:57', '2021-11-09 07:45:57'),
(138, 'edit_counts', 'counts', '2021-11-09 07:45:57', '2021-11-09 07:45:57'),
(139, 'add_counts', 'counts', '2021-11-09 07:45:57', '2021-11-09 07:45:57'),
(140, 'delete_counts', 'counts', '2021-11-09 07:45:57', '2021-11-09 07:45:57'),
(141, 'browse_abouts', 'abouts', '2021-11-09 07:46:45', '2021-11-09 07:46:45'),
(142, 'read_abouts', 'abouts', '2021-11-09 07:46:45', '2021-11-09 07:46:45'),
(143, 'edit_abouts', 'abouts', '2021-11-09 07:46:45', '2021-11-09 07:46:45'),
(144, 'add_abouts', 'abouts', '2021-11-09 07:46:45', '2021-11-09 07:46:45'),
(145, 'delete_abouts', 'abouts', '2021-11-09 07:46:45', '2021-11-09 07:46:45'),
(146, 'browse_iconable_items', 'iconable_items', '2021-11-09 07:48:08', '2021-11-09 07:48:08'),
(147, 'read_iconable_items', 'iconable_items', '2021-11-09 07:48:08', '2021-11-09 07:48:08'),
(148, 'edit_iconable_items', 'iconable_items', '2021-11-09 07:48:08', '2021-11-09 07:48:08'),
(149, 'add_iconable_items', 'iconable_items', '2021-11-09 07:48:08', '2021-11-09 07:48:08'),
(150, 'delete_iconable_items', 'iconable_items', '2021-11-09 07:48:08', '2021-11-09 07:48:08'),
(151, 'browse_services', 'services', '2021-11-09 07:49:31', '2021-11-09 07:49:31'),
(152, 'read_services', 'services', '2021-11-09 07:49:31', '2021-11-09 07:49:31'),
(153, 'edit_services', 'services', '2021-11-09 07:49:31', '2021-11-09 07:49:31'),
(154, 'add_services', 'services', '2021-11-09 07:49:31', '2021-11-09 07:49:31'),
(155, 'delete_services', 'services', '2021-11-09 07:49:31', '2021-11-09 07:49:31'),
(156, 'browse_items', 'items', '2021-11-09 07:51:33', '2021-11-09 07:51:33'),
(157, 'read_items', 'items', '2021-11-09 07:51:33', '2021-11-09 07:51:33'),
(158, 'edit_items', 'items', '2021-11-09 07:51:33', '2021-11-09 07:51:33'),
(159, 'add_items', 'items', '2021-11-09 07:51:33', '2021-11-09 07:51:33'),
(160, 'delete_items', 'items', '2021-11-09 07:51:33', '2021-11-09 07:51:33'),
(161, 'browse_logo_categories', 'logo_categories', '2021-11-09 07:57:41', '2021-11-09 07:57:41'),
(162, 'read_logo_categories', 'logo_categories', '2021-11-09 07:57:41', '2021-11-09 07:57:41'),
(163, 'edit_logo_categories', 'logo_categories', '2021-11-09 07:57:41', '2021-11-09 07:57:41'),
(164, 'add_logo_categories', 'logo_categories', '2021-11-09 07:57:41', '2021-11-09 07:57:41'),
(165, 'delete_logo_categories', 'logo_categories', '2021-11-09 07:57:41', '2021-11-09 07:57:41'),
(166, 'browse_works', 'works', '2021-11-09 07:58:27', '2021-11-09 07:58:27'),
(167, 'read_works', 'works', '2021-11-09 07:58:27', '2021-11-09 07:58:27'),
(168, 'edit_works', 'works', '2021-11-09 07:58:27', '2021-11-09 07:58:27'),
(169, 'add_works', 'works', '2021-11-09 07:58:27', '2021-11-09 07:58:27'),
(170, 'delete_works', 'works', '2021-11-09 07:58:27', '2021-11-09 07:58:27'),
(171, 'browse_enterprises', 'enterprises', '2021-11-09 08:02:26', '2021-11-09 08:02:26'),
(172, 'read_enterprises', 'enterprises', '2021-11-09 08:02:26', '2021-11-09 08:02:26'),
(173, 'edit_enterprises', 'enterprises', '2021-11-09 08:02:26', '2021-11-09 08:02:26'),
(174, 'add_enterprises', 'enterprises', '2021-11-09 08:02:26', '2021-11-09 08:02:26'),
(175, 'delete_enterprises', 'enterprises', '2021-11-09 08:02:26', '2021-11-09 08:02:26'),
(176, 'browse_customer_types', 'customer_types', '2021-11-09 08:03:21', '2021-11-09 08:03:21'),
(177, 'read_customer_types', 'customer_types', '2021-11-09 08:03:21', '2021-11-09 08:03:21'),
(178, 'edit_customer_types', 'customer_types', '2021-11-09 08:03:21', '2021-11-09 08:03:21'),
(179, 'add_customer_types', 'customer_types', '2021-11-09 08:03:21', '2021-11-09 08:03:21'),
(180, 'delete_customer_types', 'customer_types', '2021-11-09 08:03:21', '2021-11-09 08:03:21'),
(181, 'browse_officials', 'officials', '2021-11-09 08:04:15', '2021-11-09 08:04:15'),
(182, 'read_officials', 'officials', '2021-11-09 08:04:15', '2021-11-09 08:04:15'),
(183, 'edit_officials', 'officials', '2021-11-09 08:04:15', '2021-11-09 08:04:15'),
(184, 'add_officials', 'officials', '2021-11-09 08:04:15', '2021-11-09 08:04:15'),
(185, 'delete_officials', 'officials', '2021-11-09 08:04:15', '2021-11-09 08:04:15'),
(186, 'browse_teams', 'teams', '2021-11-09 08:05:04', '2021-11-09 08:05:04'),
(187, 'read_teams', 'teams', '2021-11-09 08:05:04', '2021-11-09 08:05:04'),
(188, 'edit_teams', 'teams', '2021-11-09 08:05:04', '2021-11-09 08:05:04'),
(189, 'add_teams', 'teams', '2021-11-09 08:05:04', '2021-11-09 08:05:04'),
(190, 'delete_teams', 'teams', '2021-11-09 08:05:04', '2021-11-09 08:05:04'),
(191, 'browse_customers', 'customers', '2021-11-09 08:06:46', '2021-11-09 08:06:46'),
(192, 'read_customers', 'customers', '2021-11-09 08:06:46', '2021-11-09 08:06:46'),
(193, 'edit_customers', 'customers', '2021-11-09 08:06:46', '2021-11-09 08:06:46'),
(194, 'add_customers', 'customers', '2021-11-09 08:06:46', '2021-11-09 08:06:46'),
(195, 'delete_customers', 'customers', '2021-11-09 08:06:46', '2021-11-09 08:06:46'),
(196, 'browse_project_categories', 'project_categories', '2021-11-09 08:07:49', '2021-11-09 08:07:49'),
(197, 'read_project_categories', 'project_categories', '2021-11-09 08:07:49', '2021-11-09 08:07:49'),
(198, 'edit_project_categories', 'project_categories', '2021-11-09 08:07:49', '2021-11-09 08:07:49'),
(199, 'add_project_categories', 'project_categories', '2021-11-09 08:07:49', '2021-11-09 08:07:49'),
(200, 'delete_project_categories', 'project_categories', '2021-11-09 08:07:49', '2021-11-09 08:07:49'),
(201, 'browse_humans', 'humans', '2021-11-09 08:09:15', '2021-11-09 08:09:15'),
(202, 'read_humans', 'humans', '2021-11-09 08:09:15', '2021-11-09 08:09:15'),
(203, 'edit_humans', 'humans', '2021-11-09 08:09:15', '2021-11-09 08:09:15'),
(204, 'add_humans', 'humans', '2021-11-09 08:09:15', '2021-11-09 08:09:15'),
(205, 'delete_humans', 'humans', '2021-11-09 08:09:15', '2021-11-09 08:09:15'),
(206, 'browse_projects', 'projects', '2021-11-09 08:14:30', '2021-11-09 08:14:30'),
(207, 'read_projects', 'projects', '2021-11-09 08:14:30', '2021-11-09 08:14:30'),
(208, 'edit_projects', 'projects', '2021-11-09 08:14:30', '2021-11-09 08:14:30'),
(209, 'add_projects', 'projects', '2021-11-09 08:14:30', '2021-11-09 08:14:30'),
(210, 'delete_projects', 'projects', '2021-11-09 08:14:30', '2021-11-09 08:14:30'),
(211, 'browse_link_types', 'link_types', '2021-11-09 08:17:27', '2021-11-09 08:17:27'),
(212, 'read_link_types', 'link_types', '2021-11-09 08:17:27', '2021-11-09 08:17:27'),
(213, 'edit_link_types', 'link_types', '2021-11-09 08:17:27', '2021-11-09 08:17:27'),
(214, 'add_link_types', 'link_types', '2021-11-09 08:17:27', '2021-11-09 08:17:27'),
(215, 'delete_link_types', 'link_types', '2021-11-09 08:17:27', '2021-11-09 08:17:27'),
(216, 'browse_human_types', 'human_types', '2021-11-09 08:18:25', '2021-11-09 08:18:25'),
(217, 'read_human_types', 'human_types', '2021-11-09 08:18:25', '2021-11-09 08:18:25'),
(218, 'edit_human_types', 'human_types', '2021-11-09 08:18:25', '2021-11-09 08:18:25'),
(219, 'add_human_types', 'human_types', '2021-11-09 08:18:25', '2021-11-09 08:18:25'),
(220, 'delete_human_types', 'human_types', '2021-11-09 08:18:25', '2021-11-09 08:18:25'),
(221, 'browse_links', 'links', '2021-11-09 08:21:24', '2021-11-09 08:21:24'),
(222, 'read_links', 'links', '2021-11-09 08:21:24', '2021-11-09 08:21:24'),
(223, 'edit_links', 'links', '2021-11-09 08:21:24', '2021-11-09 08:21:24'),
(224, 'add_links', 'links', '2021-11-09 08:21:24', '2021-11-09 08:21:24'),
(225, 'delete_links', 'links', '2021-11-09 08:21:24', '2021-11-09 08:21:24'),
(226, 'browse_faqs', 'faqs', '2021-11-09 08:23:32', '2021-11-09 08:23:32'),
(227, 'read_faqs', 'faqs', '2021-11-09 08:23:32', '2021-11-09 08:23:32'),
(228, 'edit_faqs', 'faqs', '2021-11-09 08:23:32', '2021-11-09 08:23:32'),
(229, 'add_faqs', 'faqs', '2021-11-09 08:23:32', '2021-11-09 08:23:32'),
(230, 'delete_faqs', 'faqs', '2021-11-09 08:23:32', '2021-11-09 08:23:32'),
(231, 'browse_privacy_policies', 'privacy_policies', '2021-11-09 08:30:53', '2021-11-09 08:30:53'),
(232, 'read_privacy_policies', 'privacy_policies', '2021-11-09 08:30:53', '2021-11-09 08:30:53'),
(233, 'edit_privacy_policies', 'privacy_policies', '2021-11-09 08:30:53', '2021-11-09 08:30:53'),
(234, 'add_privacy_policies', 'privacy_policies', '2021-11-09 08:30:53', '2021-11-09 08:30:53'),
(235, 'delete_privacy_policies', 'privacy_policies', '2021-11-09 08:30:53', '2021-11-09 08:30:53'),
(236, 'browse_terms_of_services', 'terms_of_services', '2021-11-09 08:33:36', '2021-11-09 08:33:36'),
(237, 'read_terms_of_services', 'terms_of_services', '2021-11-09 08:33:36', '2021-11-09 08:33:36'),
(238, 'edit_terms_of_services', 'terms_of_services', '2021-11-09 08:33:36', '2021-11-09 08:33:36'),
(239, 'add_terms_of_services', 'terms_of_services', '2021-11-09 08:33:36', '2021-11-09 08:33:36'),
(240, 'delete_terms_of_services', 'terms_of_services', '2021-11-09 08:33:36', '2021-11-09 08:33:36'),
(241, 'browse_descriptions', 'descriptions', '2021-11-09 08:37:09', '2021-11-09 08:37:09'),
(242, 'read_descriptions', 'descriptions', '2021-11-09 08:37:09', '2021-11-09 08:37:09'),
(243, 'edit_descriptions', 'descriptions', '2021-11-09 08:37:09', '2021-11-09 08:37:09'),
(244, 'add_descriptions', 'descriptions', '2021-11-09 08:37:09', '2021-11-09 08:37:09'),
(245, 'delete_descriptions', 'descriptions', '2021-11-09 08:37:09', '2021-11-09 08:37:09'),
(246, 'browse_contacts', 'contacts', '2021-11-09 08:38:53', '2021-11-09 08:38:53'),
(247, 'read_contacts', 'contacts', '2021-11-09 08:38:53', '2021-11-09 08:38:53'),
(248, 'edit_contacts', 'contacts', '2021-11-09 08:38:53', '2021-11-09 08:38:53'),
(249, 'add_contacts', 'contacts', '2021-11-09 08:38:53', '2021-11-09 08:38:53'),
(250, 'delete_contacts', 'contacts', '2021-11-09 08:38:53', '2021-11-09 08:38:53'),
(251, 'browse_visitors', 'visitors', '2021-11-09 09:03:37', '2021-11-09 09:03:37'),
(252, 'read_visitors', 'visitors', '2021-11-09 09:03:37', '2021-11-09 09:03:37'),
(253, 'edit_visitors', 'visitors', '2021-11-09 09:03:37', '2021-11-09 09:03:37'),
(254, 'add_visitors', 'visitors', '2021-11-09 09:03:37', '2021-11-09 09:03:37'),
(255, 'delete_visitors', 'visitors', '2021-11-09 09:03:37', '2021-11-09 09:03:37'),
(256, 'browse_questionings', 'questionings', '2021-11-09 09:06:11', '2021-11-09 09:06:11'),
(257, 'read_questionings', 'questionings', '2021-11-09 09:06:11', '2021-11-09 09:06:11'),
(258, 'edit_questionings', 'questionings', '2021-11-09 09:06:11', '2021-11-09 09:06:11'),
(259, 'add_questionings', 'questionings', '2021-11-09 09:06:11', '2021-11-09 09:06:11'),
(260, 'delete_questionings', 'questionings', '2021-11-09 09:06:11', '2021-11-09 09:06:11'),
(261, 'browse_newsletters', 'newsletters', '2021-11-09 09:07:45', '2021-11-09 09:07:45'),
(262, 'read_newsletters', 'newsletters', '2021-11-09 09:07:45', '2021-11-09 09:07:45'),
(263, 'edit_newsletters', 'newsletters', '2021-11-09 09:07:45', '2021-11-09 09:07:45'),
(264, 'add_newsletters', 'newsletters', '2021-11-09 09:07:45', '2021-11-09 09:07:45'),
(265, 'delete_newsletters', 'newsletters', '2021-11-09 09:07:45', '2021-11-09 09:07:45');

-- --------------------------------------------------------

--
-- Structure de la table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 1),
(89, 1),
(90, 1),
(91, 1),
(92, 1),
(93, 1),
(94, 1),
(95, 1),
(96, 1),
(97, 1),
(98, 1),
(99, 1),
(100, 1),
(101, 1),
(102, 1),
(103, 1),
(104, 1),
(105, 1),
(106, 1),
(107, 1),
(108, 1),
(109, 1),
(110, 1),
(111, 1),
(112, 1),
(113, 1),
(114, 1),
(115, 1),
(116, 1),
(117, 1),
(118, 1),
(119, 1),
(120, 1),
(121, 1),
(122, 1),
(123, 1),
(124, 1),
(125, 1),
(126, 1),
(127, 1),
(128, 1),
(129, 1),
(130, 1),
(131, 1),
(132, 1),
(133, 1),
(134, 1),
(135, 1),
(136, 1),
(137, 1),
(138, 1),
(139, 1),
(140, 1),
(141, 1),
(142, 1),
(143, 1),
(144, 1),
(145, 1),
(146, 1),
(147, 1),
(148, 1),
(149, 1),
(150, 1),
(151, 1),
(152, 1),
(153, 1),
(154, 1),
(155, 1),
(156, 1),
(157, 1),
(158, 1),
(159, 1),
(160, 1),
(161, 1),
(162, 1),
(163, 1),
(164, 1),
(165, 1),
(166, 1),
(167, 1),
(168, 1),
(169, 1),
(170, 1),
(171, 1),
(172, 1),
(173, 1),
(174, 1),
(175, 1),
(176, 1),
(177, 1),
(178, 1),
(179, 1),
(180, 1),
(181, 1),
(182, 1),
(183, 1),
(184, 1),
(185, 1),
(186, 1),
(187, 1),
(188, 1),
(189, 1),
(190, 1),
(191, 1),
(192, 1),
(193, 1),
(194, 1),
(195, 1),
(196, 1),
(197, 1),
(198, 1),
(199, 1),
(200, 1),
(201, 1),
(202, 1),
(203, 1),
(204, 1),
(205, 1),
(206, 1),
(207, 1),
(208, 1),
(209, 1),
(210, 1),
(211, 1),
(212, 1),
(213, 1),
(214, 1),
(215, 1),
(216, 1),
(217, 1),
(218, 1),
(219, 1),
(220, 1),
(221, 1),
(222, 1),
(223, 1),
(224, 1),
(225, 1),
(226, 1),
(227, 1),
(228, 1),
(229, 1),
(230, 1),
(231, 1),
(232, 1),
(233, 1),
(234, 1),
(235, 1),
(236, 1),
(237, 1),
(238, 1),
(239, 1),
(240, 1),
(241, 1),
(242, 1),
(243, 1),
(244, 1),
(245, 1),
(246, 1),
(247, 1),
(248, 1),
(249, 1),
(250, 1),
(251, 1),
(252, 1),
(253, 1),
(254, 1),
(255, 1),
(256, 1),
(257, 1),
(258, 1),
(259, 1),
(260, 1),
(261, 1),
(262, 1),
(263, 1),
(264, 1),
(265, 1);

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Lorem Ipsum Post', NULL, 'This is the excerpt for the Lorem Ipsum Post', '<p>This is the body of the lorem ipsum post</p>', 'posts/post1.jpg', 'lorem-ipsum-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2021-10-09 18:40:29', '2021-10-30 15:12:57'),
(2, 0, NULL, 'My Sample Post', NULL, 'This is the excerpt for the sample Post', '<p>This is the body for the sample post, which includes the body.</p>\n                <h2>We can use all kinds of format!</h2>\n                <p>And include a bunch of other stuff.</p>', 'posts/post2.jpg', 'my-sample-post', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2021-10-09 18:40:29', '2021-10-09 18:40:29'),
(3, 0, NULL, 'Latest Post', NULL, 'This is the excerpt for the latest post', '<p>This is the body for the latest post</p>', 'posts/post3.jpg', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2021-10-09 18:40:29', '2021-10-09 18:40:29'),
(4, 0, NULL, 'Yarr Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts/post4.jpg', 'yarr-post', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2021-10-09 18:40:29', '2021-10-09 18:40:29');

-- --------------------------------------------------------

--
-- Structure de la table `pricings`
--

CREATE TABLE `pricings` (
  `id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `title` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `month_price` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_featured` tinyint(1) NOT NULL DEFAULT 0,
  `is_advanced` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `pricings`
--

INSERT INTO `pricings` (`id`, `item_id`, `currency_id`, `title`, `month_price`, `is_featured`, `is_advanced`, `created_at`, `updated_at`) VALUES
(1, 19, 1, 'Title 1', '0', 1, 0, '2021-10-12 21:18:51', '2021-10-12 21:18:51'),
(2, 20, 1, 'Title 2', '19', 0, 1, '2021-10-12 21:18:51', '2021-10-12 21:18:51');

-- --------------------------------------------------------

--
-- Structure de la table `privacy_policies`
--

CREATE TABLE `privacy_policies` (
  `id` int(11) NOT NULL COMMENT 'Has morphMany with descriptions',
  `corporation_id` int(11) NOT NULL,
  `intro` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `privacy_policies`
--

INSERT INTO `privacy_policies` (`id`, `corporation_id`, `intro`, `created_at`, `updated_at`) VALUES
(3, 1, 'Privacy policy intro text.', '2021-10-28 23:59:49', '2021-10-28 23:59:49');

-- --------------------------------------------------------

--
-- Structure de la table `projects`
--

CREATE TABLE `projects` (
  `id` int(11) NOT NULL COMMENT 'Has polimorphic relation with medias, links and descriptions',
  `project_category_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `realization_date` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `projects`
--

INSERT INTO `projects` (`id`, `project_category_id`, `customer_id`, `item_id`, `name`, `realization_date`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 15, 'Project 1', '2021-10-11', '2021-10-11 21:52:31', '2021-10-11 21:52:31'),
(2, 3, 3, 16, 'Project 2', '2021-09-07', '2021-10-11 21:52:31', '2021-10-11 21:52:31');

-- --------------------------------------------------------

--
-- Structure de la table `project_categories`
--

CREATE TABLE `project_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `project_categories`
--

INSERT INTO `project_categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'APP', '2021-10-11 21:34:35', '2021-10-11 21:34:35'),
(2, 'CARD', '2021-10-11 21:34:35', '2021-10-11 21:34:35'),
(3, 'WEB', '2021-10-11 21:34:35', '2021-10-11 21:34:35');

-- --------------------------------------------------------

--
-- Structure de la table `questionings`
--

CREATE TABLE `questionings` (
  `id` int(11) NOT NULL,
  `visitor_id` int(11) NOT NULL,
  `subject` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `questionings`
--

INSERT INTO `questionings` (`id`, `visitor_id`, `subject`, `message`, `created_at`, `updated_at`) VALUES
(1, 1, 'Questionning 1', 'Questionning 1', '2021-10-15 17:29:13', '2021-10-15 17:29:13'),
(8, 10, 'Sint quisquam labor', 'Velit duis nihil min', '2021-10-15 18:36:19', '2021-10-15 18:36:19'),
(9, 11, 'Dolorem architecto d', 'Eaque eos voluptatem', '2021-10-15 18:38:45', '2021-10-15 18:38:45'),
(10, 12, 'Nostrum tempore cum', 'Quia quisquam conseq', '2021-10-15 18:41:12', '2021-10-15 18:41:12'),
(11, 13, 'Id quis quis libero', 'Ullam quis dolor eaq', '2021-10-15 18:41:23', '2021-10-15 18:41:23'),
(12, 14, 'Sit consectetur fug', 'Totam voluptatum mag', '2021-10-24 20:29:17', '2021-10-24 20:29:17'),
(13, 15, 'Vitae et soluta repu', 'Sequi aspernatur vol', '2021-10-24 20:50:55', '2021-10-24 20:50:55'),
(14, 16, 'Qui aliqua Similiqu', 'Mollitia excepteur n', '2021-10-24 21:01:29', '2021-10-24 21:01:29'),
(15, 17, 'Enim ut dolor duis e', 'Sapiente minus rerum', '2021-10-24 21:19:11', '2021-10-24 21:19:11'),
(16, 18, 'Esse excepteur vero', 'At eum et corporis u', '2021-11-02 21:40:37', '2021-11-02 21:40:37'),
(17, 19, 'tiban@folfl.com', 'd', '2021-11-02 21:48:51', '2021-11-02 21:48:51'),
(18, 20, 'Possimus anim volup', 'Excepteur eum aperia', '2021-11-03 17:03:55', '2021-11-03 17:03:55'),
(19, 21, 'Possimus anim volup', 'Excepteur eum aperia', '2021-11-03 17:04:06', '2021-11-03 17:04:06'),
(20, 22, 'Possimus anim volup', 'Excepteur eum aperia', '2021-11-03 17:04:14', '2021-11-03 17:04:14'),
(21, 23, 'Possimus anim volup', 'Excepteur eum aperia', '2021-11-03 17:04:17', '2021-11-03 17:04:17'),
(22, 24, 'Ex cum adipisci dict', 'Tenetur nulla dolor', '2021-11-03 17:05:21', '2021-11-03 17:05:21'),
(23, 25, 'Ex cum adipisci dict', 'Tenetur nulla dolor', '2021-11-03 17:05:28', '2021-11-03 17:05:28'),
(24, 26, 'Sed eveniet rem ass', 'Unde rerum excepteur', '2021-11-03 17:06:21', '2021-11-03 17:06:21'),
(25, 27, 'Irure eveniet sint', 'Perferendis aut maxi', '2021-11-03 17:11:17', '2021-11-03 17:11:17'),
(26, 28, 'Irure eveniet sint', 'Perferendis aut maxi', '2021-11-03 17:11:36', '2021-11-03 17:11:36'),
(27, 29, 'Eos magni perferend', 'In suscipit qui eu a', '2021-11-03 17:12:29', '2021-11-03 17:12:29'),
(28, 30, 'Fuga Officiis amet', 'Quae tempor distinct', '2021-11-03 17:30:14', '2021-11-03 17:30:14'),
(29, 31, 'Voluptatibus commodi', 'Cumque consequatur', '2021-11-03 17:30:21', '2021-11-03 17:30:21'),
(30, 32, 'Nobis excepteur labo', 'Impedit natus ad co', '2021-11-03 17:51:51', '2021-11-03 17:51:51'),
(31, 33, 'Quisquam corporis qu', 'Voluptate perferendi', '2021-11-03 17:52:50', '2021-11-03 17:52:50'),
(32, 34, 'Nostrud pariatur An', 'Esse recusandae Vol', '2021-11-03 17:58:55', '2021-11-03 17:58:55'),
(33, 35, 'Elit rem duis porro', 'Laudantium repellen', '2021-11-06 08:30:52', '2021-11-06 08:30:52'),
(34, 36, 'Sunt dolore facere', 'Anim voluptate iste', '2021-11-17 21:02:42', '2021-11-17 21:02:42'),
(35, 37, 'Totam ratione quia p', 'Tempore et ea eaque', '2021-11-17 21:29:36', '2021-11-17 21:29:36'),
(36, 38, 'Iure in voluptates c', 'Labore laborum Sit', '2021-11-17 21:49:38', '2021-11-17 21:49:38');

-- --------------------------------------------------------

--
-- Structure de la table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2021-10-09 18:40:27', '2021-10-09 18:40:27');

-- --------------------------------------------------------

--
-- Structure de la table `sections`
--

CREATE TABLE `sections` (
  `id` int(11) NOT NULL COMMENT 'Has polymorphic relation with medias',
  `site_page_id` int(11) NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sections`
--

INSERT INTO `sections` (`id`, `site_page_id`, `name`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 3, 'Service', 'Services', 'Service description', '2021-10-10 20:46:48', '2021-10-10 20:46:48'),
(2, 2, 'About', 'About Us', 'About us description', '2021-10-10 23:29:54', '2021-10-10 23:29:54'),
(3, 9, 'Skill', 'Skills', 'Skill description', '2021-10-11 09:37:54', '2021-10-11 09:37:54'),
(4, 10, 'Count', 'Count', 'Count description', '2021-10-11 15:58:05', '2021-10-11 15:58:05'),
(5, 11, 'Enterprise', 'Enterprise', 'Enterprise description', '2021-10-11 16:45:16', '2021-10-11 16:45:16'),
(6, 12, 'Testimonial', 'Testimonial', 'Testimonial description', '2021-10-11 17:52:07', '2021-10-11 17:52:07'),
(7, 4, 'Portfolio', 'Porfolio', 'Portfolio description', '2021-10-11 20:58:20', '2021-10-11 20:58:20'),
(8, 5, 'Team', 'Team', 'Team description', '2021-10-12 11:45:10', '2021-10-12 11:45:10'),
(9, 13, 'Pricing', 'Pricing', 'Pricing description', '2021-10-12 21:16:14', '2021-10-12 21:16:14'),
(10, 7, 'F.A.Q', 'Questions', 'Faq description', '2021-10-12 22:34:54', '2021-10-12 22:34:54'),
(12, 14, 'Contact', 'Contact Us', 'Contact us description', '2021-10-14 14:09:50', '2021-10-14 14:09:50'),
(13, 15, 'Newsletter', 'Join our Newsletter', 'Newsletter description', '2021-10-15 19:43:46', '2021-10-15 19:43:46'),
(14, 11, 'Enterprse', 'Enterprise', 'Enterprise description', '2021-10-16 19:16:50', '2021-10-16 19:16:50'),
(17, 16, 'Test', 'test', 'test', '2021-11-10 08:58:46', '2021-11-10 08:58:46');

-- --------------------------------------------------------

--
-- Structure de la table `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `iconable_item_id` int(11) NOT NULL,
  `is_featured` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `services`
--

INSERT INTO `services` (`id`, `iconable_item_id`, `is_featured`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2021-10-10 20:53:12', '2021-10-10 20:53:12'),
(2, 2, 1, '2021-10-10 20:53:12', '2021-10-10 20:53:12'),
(3, 3, 0, '2021-10-10 20:53:12', '2021-10-10 20:53:12'),
(4, 4, 0, '2021-10-10 20:53:12', '2021-10-10 20:53:12'),
(5, 12, 1, '2021-11-17 21:11:31', '2021-11-17 21:11:31'),
(6, 14, 1, '2021-11-17 21:54:40', '2021-11-17 21:54:40');

-- --------------------------------------------------------

--
-- Structure de la table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', 'settings/November2021/uIelRVd1WTBWxW1argKP.png', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Corporate', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Corporate Admin', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', 'settings/November2021/Io4mPkpVnK08tuyhCPQA.png', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Structure de la table `site_pages`
--

CREATE TABLE `site_pages` (
  `id` int(11) NOT NULL,
  `corporation_id` int(11) NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `site_pages`
--

INSERT INTO `site_pages` (`id`, `corporation_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 1, 'Home', '2021-10-10 19:28:07', '2021-10-10 19:28:07'),
(2, 1, 'About', '2021-10-10 19:28:36', '2021-10-10 19:28:36'),
(3, 1, 'Services', '2021-10-10 19:28:55', '2021-10-10 19:28:55'),
(4, 1, 'Portfolio', '2021-10-10 19:29:13', '2021-10-10 19:29:13'),
(5, 1, 'Team', '2021-10-10 19:29:25', '2021-10-10 19:29:25'),
(7, 1, 'Faq', '2021-10-10 19:30:08', '2021-10-10 19:30:08'),
(9, 1, 'Skill', '2021-10-11 09:36:36', '2021-10-11 09:36:36'),
(10, 1, 'Count', '2021-10-11 15:56:56', '2021-10-11 15:56:56'),
(11, 1, 'Enterprise', '2021-10-11 16:44:15', '2021-10-11 16:44:15'),
(12, 1, 'Testimonial', '2021-10-11 17:51:21', '2021-10-11 17:51:21'),
(13, 1, 'Pricing', '2021-10-12 21:15:16', '2021-10-12 21:15:16'),
(14, 1, 'Contact', '2021-10-14 14:09:12', '2021-10-14 14:09:12'),
(15, 1, 'Newsletter', '2021-10-15 19:42:03', '2021-10-15 19:42:03'),
(16, 1, 'Test', '2021-11-10 08:56:13', '2021-11-10 08:56:13');

-- --------------------------------------------------------

--
-- Structure de la table `skills`
--

CREATE TABLE `skills` (
  `id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `title` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `skills`
--

INSERT INTO `skills` (`id`, `item_id`, `title`, `value`, `created_at`, `updated_at`) VALUES
(1, 7, 'HTML', '100', '2021-10-11 09:43:31', '2021-10-11 09:43:31'),
(2, 8, 'PHP', '80', '2021-10-11 09:44:21', '2021-10-11 09:44:21'),
(3, 34, 'Laravel', '95', '2021-11-17 21:14:18', '2021-11-17 21:15:40'),
(4, 37, 'C++', '80', '2021-11-17 21:56:59', '2021-11-17 21:56:59');

-- --------------------------------------------------------

--
-- Structure de la table `teams`
--

CREATE TABLE `teams` (
  `id` int(11) NOT NULL,
  `corporation_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `teams`
--

INSERT INTO `teams` (`id`, `corporation_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2021-10-12 14:57:49', '2021-10-12 14:57:49');

-- --------------------------------------------------------

--
-- Structure de la table `terms_of_services`
--

CREATE TABLE `terms_of_services` (
  `id` int(11) NOT NULL,
  `corporation_id` int(11) NOT NULL,
  `intro` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `terms_of_services`
--

INSERT INTO `terms_of_services` (`id`, `corporation_id`, `intro`, `created_at`, `updated_at`) VALUES
(1, 1, 'Terms of service 1 introduction text.', '2021-10-28 22:56:52', '2021-10-28 22:56:52');

-- --------------------------------------------------------

--
-- Structure de la table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2021-10-09 18:40:29', '2021-10-09 18:40:29'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2021-10-09 18:40:29', '2021-10-09 18:40:29'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2021-10-09 18:40:29', '2021-10-09 18:40:29'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2021-10-09 18:40:29', '2021-10-09 18:40:29'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2021-10-09 18:40:29', '2021-10-09 18:40:29'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2021-10-09 18:40:29', '2021-10-09 18:40:29'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2021-10-09 18:40:29', '2021-10-09 18:40:29'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2021-10-09 18:40:29', '2021-10-09 18:40:29'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2021-10-09 18:40:30', '2021-10-09 18:40:30'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2021-10-09 18:40:30', '2021-10-09 18:40:30'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2021-10-09 18:40:30', '2021-10-09 18:40:30'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2021-10-09 18:40:30', '2021-10-09 18:40:30'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2021-10-09 18:40:30', '2021-10-09 18:40:30'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2021-10-09 18:40:30', '2021-10-09 18:40:30'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2021-10-09 18:40:30', '2021-10-09 18:40:30'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2021-10-09 18:40:30', '2021-10-09 18:40:30'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2021-10-09 18:40:30', '2021-10-09 18:40:30'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2021-10-09 18:40:30', '2021-10-09 18:40:30'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2021-10-09 18:40:30', '2021-10-09 18:40:30'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2021-10-09 18:40:30', '2021-10-09 18:40:30'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2021-10-09 18:40:30', '2021-10-09 18:40:30'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2021-10-09 18:40:30', '2021-10-09 18:40:30'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2021-10-09 18:40:30', '2021-10-09 18:40:30'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2021-10-09 18:40:30', '2021-10-09 18:40:30'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2021-10-09 18:40:30', '2021-10-09 18:40:30'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2021-10-09 18:40:30', '2021-10-09 18:40:30'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2021-10-09 18:40:30', '2021-10-09 18:40:30'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2021-10-09 18:40:30', '2021-10-09 18:40:30'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2021-10-09 18:40:30', '2021-10-09 18:40:30'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2021-10-09 18:40:30', '2021-10-09 18:40:30');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'admin@admin.com', 'users/default.png', NULL, '$2y$10$rAJBZZZFruP7FPf1gv/fHu5rbTNC6JlSEZ99BYhgAumdoHgNmTofe', 'oa8OddxwkTg3SPtaRfYQuSXbTSwStNDKPq3MqW8RRJ08eYqWZIU6c1nYwYsU', '{\"locale\":\"en\"}', '2021-10-09 18:40:28', '2021-11-15 22:05:00');

-- --------------------------------------------------------

--
-- Structure de la table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `visitors`
--

CREATE TABLE `visitors` (
  `id` int(11) NOT NULL,
  `human_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `visitors`
--

INSERT INTO `visitors` (`id`, `human_id`, `created_at`, `updated_at`) VALUES
(1, 5, '2021-10-15 17:28:20', '2021-10-15 17:28:20'),
(10, 19, '2021-10-15 18:36:18', '2021-10-15 18:36:18'),
(11, 20, '2021-10-15 18:38:45', '2021-10-15 18:38:45'),
(12, 21, '2021-10-15 18:41:12', '2021-10-15 18:41:12'),
(13, 22, '2021-10-15 18:41:23', '2021-10-15 18:41:23'),
(14, 23, '2021-10-24 20:29:17', '2021-10-24 20:29:17'),
(15, 24, '2021-10-24 20:50:55', '2021-10-24 20:50:55'),
(16, 25, '2021-10-24 21:01:29', '2021-10-24 21:01:29'),
(17, 26, '2021-10-24 21:19:11', '2021-10-24 21:19:11'),
(18, 27, '2021-11-02 21:40:37', '2021-11-02 21:40:37'),
(19, 28, '2021-11-02 21:48:51', '2021-11-02 21:48:51'),
(20, 29, '2021-11-03 17:03:55', '2021-11-03 17:03:55'),
(21, 30, '2021-11-03 17:04:06', '2021-11-03 17:04:06'),
(22, 31, '2021-11-03 17:04:14', '2021-11-03 17:04:14'),
(23, 32, '2021-11-03 17:04:17', '2021-11-03 17:04:17'),
(24, 33, '2021-11-03 17:05:21', '2021-11-03 17:05:21'),
(25, 34, '2021-11-03 17:05:28', '2021-11-03 17:05:28'),
(26, 35, '2021-11-03 17:06:21', '2021-11-03 17:06:21'),
(27, 36, '2021-11-03 17:11:17', '2021-11-03 17:11:17'),
(28, 37, '2021-11-03 17:11:36', '2021-11-03 17:11:36'),
(29, 38, '2021-11-03 17:12:29', '2021-11-03 17:12:29'),
(30, 43, '2021-11-03 17:30:14', '2021-11-03 17:30:14'),
(31, 44, '2021-11-03 17:30:21', '2021-11-03 17:30:21'),
(32, 45, '2021-11-03 17:51:51', '2021-11-03 17:51:51'),
(33, 46, '2021-11-03 17:52:50', '2021-11-03 17:52:50'),
(34, 47, '2021-11-03 17:58:55', '2021-11-03 17:58:55'),
(35, 48, '2021-11-06 08:30:52', '2021-11-06 08:30:52'),
(36, 49, '2021-11-17 21:02:42', '2021-11-17 21:02:42'),
(37, 50, '2021-11-17 21:29:36', '2021-11-17 21:29:36'),
(38, 51, '2021-11-17 21:49:38', '2021-11-17 21:49:38');

-- --------------------------------------------------------

--
-- Structure de la table `works`
--

CREATE TABLE `works` (
  `id` int(11) NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `works`
--

INSERT INTO `works` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Designer', '2021-10-11 18:40:31', '2021-10-11 18:40:31'),
(2, 'Freelancer', '2021-10-11 18:40:31', '2021-10-11 18:40:31'),
(3, 'Co & Founder', '2021-10-11 18:40:31', '2021-10-11 18:40:31'),
(4, 'Store owner', '2021-10-11 18:40:31', '2021-10-11 18:40:31'),
(5, 'Cachier', '2021-11-10 12:52:45', '2021-11-10 12:52:45');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `iconable_item_id` (`iconable_item_id`);

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Index pour la table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `official_id` (`official_id`);

--
-- Index pour la table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contact_type_id` (`contact_type_id`) USING BTREE;

--
-- Index pour la table `contact_types`
--
ALTER TABLE `contact_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `icon_id` (`icon_id`);

--
-- Index pour la table `corporations`
--
ALTER TABLE `corporations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `counts`
--
ALTER TABLE `counts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `iconable_item_id` (`iconable_item_id`);

--
-- Index pour la table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `corporation_id` (`corporation_id`),
  ADD KEY `customer_type_id` (`customer_type_id`);

--
-- Index pour la table `customer_types`
--
ALTER TABLE `customer_types`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Index pour la table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Index pour la table `descriptions`
--
ALTER TABLE `descriptions`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `team_id` (`team_id`),
  ADD KEY `official_id` (`official_id`);

--
-- Index pour la table `enterprises`
--
ALTER TABLE `enterprises`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `item_id` (`item_id`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_id` (`item_id`);

--
-- Index pour la table `features`
--
ALTER TABLE `features`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `feature_pricing`
--
ALTER TABLE `feature_pricing`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `feature_id` (`feature_id`,`pricing_id`),
  ADD KEY `pricing_id` (`pricing_id`);

--
-- Index pour la table `humans`
--
ALTER TABLE `humans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `human_type_id` (`human_type_id`),
  ADD KEY `corporation_id` (`corporation_id`);

--
-- Index pour la table `human_types`
--
ALTER TABLE `human_types`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `iconable_items`
--
ALTER TABLE `iconable_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `icon_id` (`icon_id`),
  ADD KEY `item_id` (`item_id`);

--
-- Index pour la table `icons`
--
ALTER TABLE `icons`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `section_id` (`section_id`),
  ADD KEY `item_type_id` (`item_type_id`);

--
-- Index pour la table `item_types`
--
ALTER TABLE `item_types`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `links`
--
ALTER TABLE `links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `link_type_id` (`link_type_id`,`linkable_id`,`linkable_type`);

--
-- Index pour la table `link_types`
--
ALTER TABLE `link_types`
  ADD PRIMARY KEY (`id`),
  ADD KEY `icon_id` (`icon_id`);

--
-- Index pour la table `logos`
--
ALTER TABLE `logos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `logo_category_id` (`logo_category_id`);

--
-- Index pour la table `logo_categories`
--
ALTER TABLE `logo_categories`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `medias`
--
ALTER TABLE `medias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_type_id` (`media_type_id`),
  ADD KEY `media_category_id` (`media_category_id`);

--
-- Index pour la table `media_categories`
--
ALTER TABLE `media_categories`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `media_types`
--
ALTER TABLE `media_types`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Index pour la table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `newsletters`
--
ALTER TABLE `newsletters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `corporation_id` (`corporation_id`);

--
-- Index pour la table `officials`
--
ALTER TABLE `officials`
  ADD PRIMARY KEY (`id`),
  ADD KEY `human_id` (`human_id`),
  ADD KEY `work_id` (`work_id`);

--
-- Index pour la table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Index pour la table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Index pour la table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Index pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Index pour la table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Index pour la table `pricings`
--
ALTER TABLE `pricings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `currency_id` (`currency_id`);

--
-- Index pour la table `privacy_policies`
--
ALTER TABLE `privacy_policies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `corporation_id` (`corporation_id`);

--
-- Index pour la table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_category_id` (`project_category_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `item_id` (`item_id`);

--
-- Index pour la table `project_categories`
--
ALTER TABLE `project_categories`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `questionings`
--
ALTER TABLE `questionings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `visitor_id` (`visitor_id`);

--
-- Index pour la table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Index pour la table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `site_page_id` (`site_page_id`);

--
-- Index pour la table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`),
  ADD KEY `iconable_item_id` (`iconable_item_id`);

--
-- Index pour la table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Index pour la table `site_pages`
--
ALTER TABLE `site_pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `corporation_id` (`corporation_id`);

--
-- Index pour la table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_id` (`item_id`);

--
-- Index pour la table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `corporation_id` (`corporation_id`);

--
-- Index pour la table `terms_of_services`
--
ALTER TABLE `terms_of_services`
  ADD PRIMARY KEY (`id`),
  ADD KEY `corporation_id` (`corporation_id`);

--
-- Index pour la table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Index pour la table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- Index pour la table `visitors`
--
ALTER TABLE `visitors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `human_id` (`human_id`);

--
-- Index pour la table `works`
--
ALTER TABLE `works`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT pour la table `contact_types`
--
ALTER TABLE `contact_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `corporations`
--
ALTER TABLE `corporations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `counts`
--
ALTER TABLE `counts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `customer_types`
--
ALTER TABLE `customer_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=373;

--
-- AUTO_INCREMENT pour la table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT pour la table `descriptions`
--
ALTER TABLE `descriptions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT pour la table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `enterprises`
--
ALTER TABLE `enterprises`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'HasOne polymorphic relation with logo', AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Has polimorphic relation with description', AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `features`
--
ALTER TABLE `features`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `feature_pricing`
--
ALTER TABLE `feature_pricing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `humans`
--
ALTER TABLE `humans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT pour la table `human_types`
--
ALTER TABLE `human_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `iconable_items`
--
ALTER TABLE `iconable_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pour la table `icons`
--
ALTER TABLE `icons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT pour la table `item_types`
--
ALTER TABLE `item_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pour la table `links`
--
ALTER TABLE `links`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pour la table `link_types`
--
ALTER TABLE `link_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `logos`
--
ALTER TABLE `logos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `logo_categories`
--
ALTER TABLE `logo_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `medias`
--
ALTER TABLE `medias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `media_categories`
--
ALTER TABLE `media_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `media_types`
--
ALTER TABLE `media_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT pour la table `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `officials`
--
ALTER TABLE `officials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=266;

--
-- AUTO_INCREMENT pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `pricings`
--
ALTER TABLE `pricings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `privacy_policies`
--
ALTER TABLE `privacy_policies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Has morphMany with descriptions', AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Has polimorphic relation with medias, links and descriptions', AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `project_categories`
--
ALTER TABLE `project_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `questionings`
--
ALTER TABLE `questionings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT pour la table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Has polymorphic relation with medias', AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT pour la table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `site_pages`
--
ALTER TABLE `site_pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT pour la table `skills`
--
ALTER TABLE `skills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `terms_of_services`
--
ALTER TABLE `terms_of_services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `visitors`
--
ALTER TABLE `visitors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT pour la table `works`
--
ALTER TABLE `works`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `abouts`
--
ALTER TABLE `abouts`
  ADD CONSTRAINT `abouts_ibfk_1` FOREIGN KEY (`iconable_item_id`) REFERENCES `iconable_items` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Contraintes pour la table `clients`
--
ALTER TABLE `clients`
  ADD CONSTRAINT `clients_ibfk_2` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `clients_ibfk_3` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `clients_ibfk_4` FOREIGN KEY (`official_id`) REFERENCES `officials` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `contacts`
--
ALTER TABLE `contacts`
  ADD CONSTRAINT `contacts_ibfk_1` FOREIGN KEY (`contact_type_id`) REFERENCES `contact_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `contact_types`
--
ALTER TABLE `contact_types`
  ADD CONSTRAINT `contact_types_ibfk_1` FOREIGN KEY (`icon_id`) REFERENCES `icons` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `counts`
--
ALTER TABLE `counts`
  ADD CONSTRAINT `counts_ibfk_1` FOREIGN KEY (`iconable_item_id`) REFERENCES `iconable_items` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `customers`
--
ALTER TABLE `customers`
  ADD CONSTRAINT `customers_ibfk_1` FOREIGN KEY (`corporation_id`) REFERENCES `corporations` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `customers_ibfk_2` FOREIGN KEY (`customer_type_id`) REFERENCES `customer_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_ibfk_2` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `employees_ibfk_3` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `employees_ibfk_4` FOREIGN KEY (`official_id`) REFERENCES `officials` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `enterprises`
--
ALTER TABLE `enterprises`
  ADD CONSTRAINT `enterprises_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `enterprises_ibfk_2` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `faqs`
--
ALTER TABLE `faqs`
  ADD CONSTRAINT `faqs_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `feature_pricing`
--
ALTER TABLE `feature_pricing`
  ADD CONSTRAINT `feature_pricing_ibfk_1` FOREIGN KEY (`feature_id`) REFERENCES `features` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `feature_pricing_ibfk_2` FOREIGN KEY (`pricing_id`) REFERENCES `pricings` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `humans`
--
ALTER TABLE `humans`
  ADD CONSTRAINT `humans_ibfk_1` FOREIGN KEY (`human_type_id`) REFERENCES `human_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `humans_ibfk_2` FOREIGN KEY (`corporation_id`) REFERENCES `corporations` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `iconable_items`
--
ALTER TABLE `iconable_items`
  ADD CONSTRAINT `iconable_items_ibfk_1` FOREIGN KEY (`icon_id`) REFERENCES `icons` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `iconable_items_ibfk_2` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `items_ibfk_1` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `items_ibfk_2` FOREIGN KEY (`item_type_id`) REFERENCES `item_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `links`
--
ALTER TABLE `links`
  ADD CONSTRAINT `links_ibfk_1` FOREIGN KEY (`link_type_id`) REFERENCES `link_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `link_types`
--
ALTER TABLE `link_types`
  ADD CONSTRAINT `link_types_ibfk_1` FOREIGN KEY (`icon_id`) REFERENCES `icons` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `logos`
--
ALTER TABLE `logos`
  ADD CONSTRAINT `logos_ibfk_1` FOREIGN KEY (`logo_category_id`) REFERENCES `logo_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `medias`
--
ALTER TABLE `medias`
  ADD CONSTRAINT `medias_ibfk_1` FOREIGN KEY (`media_type_id`) REFERENCES `media_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `medias_ibfk_2` FOREIGN KEY (`media_category_id`) REFERENCES `media_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `newsletters`
--
ALTER TABLE `newsletters`
  ADD CONSTRAINT `newsletters_ibfk_1` FOREIGN KEY (`corporation_id`) REFERENCES `corporations` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `officials`
--
ALTER TABLE `officials`
  ADD CONSTRAINT `officials_ibfk_1` FOREIGN KEY (`human_id`) REFERENCES `humans` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `officials_ibfk_2` FOREIGN KEY (`work_id`) REFERENCES `works` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `pricings`
--
ALTER TABLE `pricings`
  ADD CONSTRAINT `pricings_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pricings_ibfk_2` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `privacy_policies`
--
ALTER TABLE `privacy_policies`
  ADD CONSTRAINT `privacy_policies_ibfk_1` FOREIGN KEY (`corporation_id`) REFERENCES `corporations` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `projects`
--
ALTER TABLE `projects`
  ADD CONSTRAINT `projects_ibfk_1` FOREIGN KEY (`project_category_id`) REFERENCES `project_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `projects_ibfk_2` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `projects_ibfk_3` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `questionings`
--
ALTER TABLE `questionings`
  ADD CONSTRAINT `questionings_ibfk_1` FOREIGN KEY (`visitor_id`) REFERENCES `visitors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `sections`
--
ALTER TABLE `sections`
  ADD CONSTRAINT `sections_ibfk_1` FOREIGN KEY (`site_page_id`) REFERENCES `site_pages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `services`
--
ALTER TABLE `services`
  ADD CONSTRAINT `services_ibfk_1` FOREIGN KEY (`iconable_item_id`) REFERENCES `iconable_items` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `site_pages`
--
ALTER TABLE `site_pages`
  ADD CONSTRAINT `site_pages_ibfk_1` FOREIGN KEY (`corporation_id`) REFERENCES `corporations` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `skills`
--
ALTER TABLE `skills`
  ADD CONSTRAINT `skills_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `teams`
--
ALTER TABLE `teams`
  ADD CONSTRAINT `teams_ibfk_1` FOREIGN KEY (`corporation_id`) REFERENCES `corporations` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `terms_of_services`
--
ALTER TABLE `terms_of_services`
  ADD CONSTRAINT `terms_of_services_ibfk_1` FOREIGN KEY (`corporation_id`) REFERENCES `corporations` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Contraintes pour la table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `visitors`
--
ALTER TABLE `visitors`
  ADD CONSTRAINT `visitors_ibfk_1` FOREIGN KEY (`human_id`) REFERENCES `humans` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
