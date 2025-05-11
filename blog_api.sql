-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 11, 2025 at 06:28 PM
-- Server version: 9.1.0
-- PHP Version: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog_api`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
CREATE TABLE IF NOT EXISTS `cache` (
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
CREATE TABLE IF NOT EXISTS `cache_locks` (
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE IF NOT EXISTS `comments` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('pending','approved','rejected') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `comments_post_id_foreign` (`post_id`),
  KEY `comments_user_id_foreign` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=152 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `user_id`, `content`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Bad Boys', 'pending', '2025-05-11 12:29:30', '2025-05-11 12:29:30'),
(2, 2, 8, 'Molestiae dolorem sapiente itaque esse cumque.', 'pending', '2025-05-11 12:58:18', '2025-05-11 12:58:18'),
(3, 2, 8, 'Nesciunt nisi omnis qui ratione alias odit.', 'pending', '2025-05-11 12:58:18', '2025-05-11 12:58:18'),
(4, 2, 8, 'Aut fugit ut autem vitae.', 'pending', '2025-05-11 12:58:18', '2025-05-11 12:58:18'),
(5, 2, 8, 'Sit vel voluptas perspiciatis.', 'pending', '2025-05-11 12:58:18', '2025-05-11 12:58:18'),
(6, 2, 8, 'Laborum sit aut facilis neque.', 'pending', '2025-05-11 12:58:18', '2025-05-11 12:58:18'),
(7, 3, 5, 'Dolor corrupti hic recusandae maiores a non qui error.', 'pending', '2025-05-11 12:58:18', '2025-05-11 12:58:18'),
(8, 3, 5, 'Eveniet numquam voluptas qui quia.', 'pending', '2025-05-11 12:58:18', '2025-05-11 12:58:18'),
(9, 3, 5, 'Enim dolorem dolorem eos omnis est ut velit.', 'pending', '2025-05-11 12:58:18', '2025-05-11 12:58:18'),
(10, 3, 5, 'Porro mollitia nesciunt ipsam perferendis quo voluptas illo architecto.', 'pending', '2025-05-11 12:58:18', '2025-05-11 12:58:18'),
(11, 3, 5, 'Et ratione exercitationem impedit error sapiente quae.', 'pending', '2025-05-11 12:58:18', '2025-05-11 12:58:18'),
(12, 4, 4, 'Laboriosam est repellendus nihil.', 'pending', '2025-05-11 12:58:18', '2025-05-11 12:58:18'),
(13, 4, 4, 'Minus odit in ipsum nostrum modi nisi.', 'pending', '2025-05-11 12:58:18', '2025-05-11 12:58:18'),
(14, 4, 4, 'Aut et sit velit inventore vitae ipsum animi.', 'pending', '2025-05-11 12:58:18', '2025-05-11 12:58:18'),
(15, 4, 4, 'Excepturi qui ut incidunt incidunt.', 'pending', '2025-05-11 12:58:18', '2025-05-11 12:58:18'),
(16, 4, 4, 'Sed est voluptas nisi quae facere.', 'pending', '2025-05-11 12:58:18', '2025-05-11 12:58:18'),
(17, 5, 6, 'Ratione architecto aut consectetur suscipit ea vero repellendus.', 'pending', '2025-05-11 12:58:18', '2025-05-11 12:58:18'),
(18, 5, 6, 'Iste aut reprehenderit illum est.', 'pending', '2025-05-11 12:58:18', '2025-05-11 12:58:18'),
(19, 5, 6, 'Ipsa vero voluptate corrupti et dolorem atque ut quo.', 'pending', '2025-05-11 12:58:18', '2025-05-11 12:58:18'),
(20, 5, 6, 'Cum adipisci dolorem et quod sit deserunt cupiditate.', 'pending', '2025-05-11 12:58:18', '2025-05-11 12:58:18'),
(21, 5, 6, 'Unde non eos voluptatem molestiae quam sunt earum.', 'pending', '2025-05-11 12:58:18', '2025-05-11 12:58:18'),
(22, 6, 3, 'Dolorem deleniti rerum quos ducimus vel debitis.', 'pending', '2025-05-11 12:58:18', '2025-05-11 12:58:18'),
(23, 6, 3, 'Corrupti ex molestiae dolor molestiae soluta adipisci.', 'pending', '2025-05-11 12:58:18', '2025-05-11 12:58:18'),
(24, 6, 3, 'Qui aut fugiat dolorum.', 'pending', '2025-05-11 12:58:18', '2025-05-11 12:58:18'),
(25, 6, 3, 'Tenetur accusantium eos id eum est cum hic.', 'pending', '2025-05-11 12:58:18', '2025-05-11 12:58:18'),
(26, 6, 3, 'Numquam qui rem rerum natus ipsum earum voluptatem.', 'pending', '2025-05-11 12:58:18', '2025-05-11 12:58:18'),
(27, 7, 3, 'Suscipit qui voluptatum nulla nostrum est.', 'pending', '2025-05-11 12:58:18', '2025-05-11 12:58:18'),
(28, 7, 3, 'Voluptates beatae ducimus consequuntur.', 'pending', '2025-05-11 12:58:18', '2025-05-11 12:58:18'),
(29, 7, 3, 'Eum amet saepe molestiae doloribus est et.', 'pending', '2025-05-11 12:58:18', '2025-05-11 12:58:18'),
(30, 7, 3, 'Debitis magni laborum est aut at odio repudiandae.', 'pending', '2025-05-11 12:58:18', '2025-05-11 12:58:18'),
(31, 7, 3, 'Hic ipsam laudantium magnam dolore.', 'pending', '2025-05-11 12:58:18', '2025-05-11 12:58:18'),
(32, 8, 10, 'Veniam perspiciatis voluptatum quasi ipsa excepturi.', 'pending', '2025-05-11 12:58:18', '2025-05-11 12:58:18'),
(33, 8, 10, 'Blanditiis aspernatur ipsum adipisci et vel et ut.', 'pending', '2025-05-11 12:58:18', '2025-05-11 12:58:18'),
(34, 8, 10, 'Soluta ipsum ut vitae excepturi ad.', 'pending', '2025-05-11 12:58:18', '2025-05-11 12:58:18'),
(35, 8, 10, 'Sed dolore aspernatur enim ut molestias blanditiis voluptas.', 'pending', '2025-05-11 12:58:18', '2025-05-11 12:58:18'),
(36, 8, 10, 'Qui qui ut sint aspernatur.', 'pending', '2025-05-11 12:58:18', '2025-05-11 12:58:18'),
(37, 9, 4, 'Sit excepturi et unde quis et.', 'pending', '2025-05-11 12:58:18', '2025-05-11 12:58:18'),
(38, 9, 4, 'Pariatur repellendus reprehenderit adipisci est nesciunt minima et inventore.', 'pending', '2025-05-11 12:58:18', '2025-05-11 12:58:18'),
(39, 9, 4, 'Enim neque ipsa iste et illum.', 'pending', '2025-05-11 12:58:18', '2025-05-11 12:58:18'),
(40, 9, 4, 'Mollitia consequuntur omnis magni quae.', 'pending', '2025-05-11 12:58:18', '2025-05-11 12:58:18'),
(41, 9, 4, 'Sit quod rerum consectetur repellat non ea.', 'pending', '2025-05-11 12:58:18', '2025-05-11 12:58:18'),
(42, 10, 9, 'Magni est voluptas aut cum.', 'pending', '2025-05-11 12:58:18', '2025-05-11 12:58:18'),
(43, 10, 9, 'Exercitationem ratione enim esse necessitatibus.', 'pending', '2025-05-11 12:58:18', '2025-05-11 12:58:18'),
(44, 10, 9, 'Accusantium fugit molestiae veniam voluptas aut.', 'pending', '2025-05-11 12:58:18', '2025-05-11 12:58:18'),
(45, 10, 9, 'Optio a maiores velit quo.', 'pending', '2025-05-11 12:58:18', '2025-05-11 12:58:18'),
(46, 10, 9, 'Ea voluptas et dolor doloremque eveniet sed.', 'pending', '2025-05-11 12:58:18', '2025-05-11 12:58:18'),
(47, 11, 4, 'Totam nam suscipit asperiores.', 'pending', '2025-05-11 12:58:18', '2025-05-11 12:58:18'),
(48, 11, 4, 'Sit debitis aliquid sed ea quia provident molestiae.', 'pending', '2025-05-11 12:58:18', '2025-05-11 12:58:18'),
(49, 11, 4, 'Illum dolore possimus facilis rerum ut sit.', 'pending', '2025-05-11 12:58:18', '2025-05-11 12:58:18'),
(50, 11, 4, 'Aut aut maxime quos iure voluptas nulla.', 'pending', '2025-05-11 12:58:18', '2025-05-11 12:58:18'),
(51, 11, 4, 'Repellat accusamus sit quibusdam cumque iusto voluptatem unde.', 'pending', '2025-05-11 12:58:18', '2025-05-11 12:58:18'),
(52, 12, 7, 'Ea consequuntur commodi magni.', 'pending', '2025-05-11 12:58:18', '2025-05-11 12:58:18'),
(53, 12, 7, 'Dolores quia laborum nesciunt.', 'pending', '2025-05-11 12:58:18', '2025-05-11 12:58:18'),
(54, 12, 7, 'Sed libero ut et amet.', 'pending', '2025-05-11 12:58:18', '2025-05-11 12:58:18'),
(55, 12, 7, 'Iusto cum ut labore.', 'pending', '2025-05-11 12:58:18', '2025-05-11 12:58:18'),
(56, 12, 7, 'Id deleniti reprehenderit similique.', 'pending', '2025-05-11 12:58:18', '2025-05-11 12:58:18'),
(57, 13, 2, 'Repellendus ea quaerat qui qui.', 'pending', '2025-05-11 12:58:18', '2025-05-11 12:58:18'),
(58, 13, 2, 'Doloremque et praesentium animi quae facilis.', 'pending', '2025-05-11 12:58:18', '2025-05-11 12:58:18'),
(59, 13, 2, 'At perspiciatis aut qui dolor possimus doloribus.', 'pending', '2025-05-11 12:58:18', '2025-05-11 12:58:18'),
(60, 13, 2, 'Non consequatur asperiores quia.', 'pending', '2025-05-11 12:58:18', '2025-05-11 12:58:18'),
(61, 13, 2, 'Saepe veniam deleniti praesentium accusamus sit perspiciatis cupiditate mollitia.', 'pending', '2025-05-11 12:58:18', '2025-05-11 12:58:18'),
(62, 14, 1, 'Fuga et voluptatem voluptas ut.', 'pending', '2025-05-11 12:58:18', '2025-05-11 12:58:18'),
(63, 14, 1, 'Maiores unde quaerat suscipit voluptatem perferendis ut soluta.', 'pending', '2025-05-11 12:58:18', '2025-05-11 12:58:18'),
(64, 14, 1, 'Amet doloribus sunt et voluptatibus similique dolor.', 'pending', '2025-05-11 12:58:18', '2025-05-11 12:58:18'),
(65, 14, 1, 'Qui dolorum voluptatem eos corrupti.', 'pending', '2025-05-11 12:58:18', '2025-05-11 12:58:18'),
(66, 14, 1, 'Nam dolor qui et.', 'pending', '2025-05-11 12:58:18', '2025-05-11 12:58:18'),
(67, 15, 3, 'Quo quaerat sunt at vitae quas sit.', 'pending', '2025-05-11 12:58:18', '2025-05-11 12:58:18'),
(68, 15, 3, 'Officiis iure suscipit dignissimos tempora minima consequatur cum.', 'pending', '2025-05-11 12:58:18', '2025-05-11 12:58:18'),
(69, 15, 3, 'Dolores sed architecto modi magnam ut dolorem.', 'pending', '2025-05-11 12:58:18', '2025-05-11 12:58:18'),
(70, 15, 3, 'Eos voluptatem eius fugit blanditiis est omnis quos.', 'pending', '2025-05-11 12:58:18', '2025-05-11 12:58:18'),
(71, 15, 3, 'Facilis necessitatibus id qui quod fugiat doloribus.', 'pending', '2025-05-11 12:58:18', '2025-05-11 12:58:18'),
(72, 16, 1, 'Iusto recusandae delectus necessitatibus debitis doloribus.', 'pending', '2025-05-11 12:58:18', '2025-05-11 12:58:18'),
(73, 16, 1, 'Aut iusto assumenda nemo at et fugit sed.', 'pending', '2025-05-11 12:58:18', '2025-05-11 12:58:18'),
(74, 16, 1, 'Nulla accusantium voluptates est.', 'pending', '2025-05-11 12:58:18', '2025-05-11 12:58:18'),
(75, 16, 1, 'Alias illum et et reprehenderit a delectus.', 'pending', '2025-05-11 12:58:18', '2025-05-11 12:58:18'),
(76, 16, 1, 'Eum et harum sed dolor qui beatae in.', 'pending', '2025-05-11 12:58:18', '2025-05-11 12:58:18'),
(77, 17, 8, 'Ut sit dignissimos eum assumenda culpa veritatis.', 'pending', '2025-05-11 12:58:18', '2025-05-11 12:58:18'),
(78, 17, 8, 'Non est qui et beatae incidunt ratione vitae.', 'pending', '2025-05-11 12:58:18', '2025-05-11 12:58:18'),
(79, 17, 8, 'Sit consequatur et minus et praesentium omnis quia non.', 'pending', '2025-05-11 12:58:18', '2025-05-11 12:58:18'),
(80, 17, 8, 'Sequi qui laudantium vel distinctio recusandae aut qui.', 'pending', '2025-05-11 12:58:18', '2025-05-11 12:58:18'),
(81, 17, 8, 'Qui et libero animi asperiores illo quo facere.', 'pending', '2025-05-11 12:58:18', '2025-05-11 12:58:18'),
(82, 18, 9, 'Omnis consequuntur ea et itaque.', 'pending', '2025-05-11 12:58:18', '2025-05-11 12:58:18'),
(83, 18, 9, 'Vero placeat fugit unde deserunt sit optio id.', 'pending', '2025-05-11 12:58:18', '2025-05-11 12:58:18'),
(84, 18, 9, 'Nulla delectus quia occaecati perferendis qui qui.', 'pending', '2025-05-11 12:58:18', '2025-05-11 12:58:18'),
(85, 18, 9, 'Et expedita saepe odit molestiae expedita repudiandae iure officiis.', 'pending', '2025-05-11 12:58:18', '2025-05-11 12:58:18'),
(86, 18, 9, 'Voluptatem explicabo amet odit commodi.', 'pending', '2025-05-11 12:58:18', '2025-05-11 12:58:18'),
(87, 19, 2, 'Occaecati eveniet culpa repellat eum tenetur.', 'pending', '2025-05-11 12:58:18', '2025-05-11 12:58:18'),
(88, 19, 2, 'Et quis et est fugiat.', 'pending', '2025-05-11 12:58:18', '2025-05-11 12:58:18'),
(89, 19, 2, 'Sequi non ipsum odio cum quam hic id.', 'pending', '2025-05-11 12:58:18', '2025-05-11 12:58:18'),
(90, 19, 2, 'Voluptatibus quos et laborum distinctio ut.', 'pending', '2025-05-11 12:58:18', '2025-05-11 12:58:18'),
(91, 19, 2, 'Neque accusantium vitae porro blanditiis.', 'pending', '2025-05-11 12:58:18', '2025-05-11 12:58:18'),
(92, 20, 1, 'Minus ullam et voluptatem odio consequatur.', 'pending', '2025-05-11 12:58:19', '2025-05-11 12:58:19'),
(93, 20, 1, 'Eos reiciendis deserunt quo ducimus maxime.', 'pending', '2025-05-11 12:58:19', '2025-05-11 12:58:19'),
(94, 20, 1, 'Reiciendis nisi non eos eum.', 'pending', '2025-05-11 12:58:19', '2025-05-11 12:58:19'),
(95, 20, 1, 'Eum quis ea doloremque ratione assumenda.', 'pending', '2025-05-11 12:58:19', '2025-05-11 12:58:19'),
(96, 20, 1, 'Est sint et eum hic minima.', 'pending', '2025-05-11 12:58:19', '2025-05-11 12:58:19'),
(97, 21, 11, 'Voluptatem enim facilis qui quas quisquam blanditiis.', 'pending', '2025-05-11 12:58:19', '2025-05-11 12:58:19'),
(98, 21, 11, 'Vel quis ducimus voluptatum deleniti sed.', 'pending', '2025-05-11 12:58:19', '2025-05-11 12:58:19'),
(99, 21, 11, 'Tempora earum consequatur repellendus dicta fugit.', 'pending', '2025-05-11 12:58:19', '2025-05-11 12:58:19'),
(100, 21, 11, 'Commodi placeat quaerat eaque et beatae.', 'pending', '2025-05-11 12:58:19', '2025-05-11 12:58:19'),
(101, 21, 11, 'Consequuntur doloremque accusamus voluptatum odio.', 'pending', '2025-05-11 12:58:19', '2025-05-11 12:58:19'),
(102, 22, 11, 'Cumque sequi doloribus asperiores eveniet iusto.', 'pending', '2025-05-11 12:58:19', '2025-05-11 12:58:19'),
(103, 22, 11, 'Voluptatem illum illo veniam esse vel ad.', 'pending', '2025-05-11 12:58:19', '2025-05-11 12:58:19'),
(104, 22, 11, 'Rem qui animi omnis aut omnis vitae pariatur officiis.', 'pending', '2025-05-11 12:58:19', '2025-05-11 12:58:19'),
(105, 22, 11, 'Vel ut veritatis consequatur.', 'pending', '2025-05-11 12:58:19', '2025-05-11 12:58:19'),
(106, 22, 11, 'Sit quia id aut.', 'pending', '2025-05-11 12:58:19', '2025-05-11 12:58:19'),
(107, 23, 8, 'Est et autem sint ea quam amet totam.', 'pending', '2025-05-11 12:58:19', '2025-05-11 12:58:19'),
(108, 23, 8, 'Iure vero optio numquam exercitationem.', 'pending', '2025-05-11 12:58:19', '2025-05-11 12:58:19'),
(109, 23, 8, 'Nisi qui eum ullam recusandae ea et.', 'pending', '2025-05-11 12:58:19', '2025-05-11 12:58:19'),
(110, 23, 8, 'Modi ullam aut alias voluptatem autem.', 'pending', '2025-05-11 12:58:19', '2025-05-11 12:58:19'),
(111, 23, 8, 'Consequatur eos sint delectus ut voluptas nobis reiciendis.', 'pending', '2025-05-11 12:58:19', '2025-05-11 12:58:19'),
(112, 24, 7, 'Quisquam consequatur reprehenderit repellendus molestias doloribus eos ut explicabo.', 'pending', '2025-05-11 12:58:19', '2025-05-11 12:58:19'),
(113, 24, 7, 'A enim soluta saepe quos inventore quia.', 'pending', '2025-05-11 12:58:19', '2025-05-11 12:58:19'),
(114, 24, 7, 'Dignissimos iure in adipisci possimus quia explicabo.', 'pending', '2025-05-11 12:58:19', '2025-05-11 12:58:19'),
(115, 24, 7, 'Minus nihil officia ut labore eveniet non ipsam alias.', 'pending', '2025-05-11 12:58:19', '2025-05-11 12:58:19'),
(116, 24, 7, 'Aut sapiente aperiam quia pariatur eos eligendi nulla aut.', 'pending', '2025-05-11 12:58:19', '2025-05-11 12:58:19'),
(117, 25, 5, 'Beatae possimus et corporis deleniti nesciunt deserunt et.', 'pending', '2025-05-11 12:58:19', '2025-05-11 12:58:19'),
(118, 25, 5, 'Quam consequatur molestiae sit voluptatem nam voluptatibus itaque.', 'pending', '2025-05-11 12:58:19', '2025-05-11 12:58:19'),
(119, 25, 5, 'Possimus omnis quos nesciunt aspernatur.', 'pending', '2025-05-11 12:58:19', '2025-05-11 12:58:19'),
(120, 25, 5, 'Ut perferendis perspiciatis nihil at.', 'pending', '2025-05-11 12:58:19', '2025-05-11 12:58:19'),
(121, 25, 5, 'Nam repellat dolorem consequatur unde aut molestias ex alias.', 'pending', '2025-05-11 12:58:19', '2025-05-11 12:58:19'),
(122, 26, 5, 'Quia sit ut impedit quibusdam eveniet.', 'pending', '2025-05-11 12:58:19', '2025-05-11 12:58:19'),
(123, 26, 5, 'Sint enim dolores commodi et vero enim harum.', 'pending', '2025-05-11 12:58:19', '2025-05-11 12:58:19'),
(124, 26, 5, 'Saepe quo quod autem sint nostrum expedita quo.', 'pending', '2025-05-11 12:58:19', '2025-05-11 12:58:19'),
(125, 26, 5, 'Beatae non ullam rerum sit repudiandae inventore hic.', 'pending', '2025-05-11 12:58:19', '2025-05-11 12:58:19'),
(126, 26, 5, 'Reprehenderit cum omnis sunt pariatur aliquam fuga est.', 'pending', '2025-05-11 12:58:19', '2025-05-11 12:58:19'),
(127, 27, 2, 'Harum sit soluta iusto quae ullam.', 'pending', '2025-05-11 12:58:19', '2025-05-11 12:58:19'),
(128, 27, 2, 'Neque beatae distinctio sit sint mollitia.', 'pending', '2025-05-11 12:58:19', '2025-05-11 12:58:19'),
(129, 27, 2, 'Et natus neque quasi beatae dolorem voluptas ut placeat.', 'pending', '2025-05-11 12:58:19', '2025-05-11 12:58:19'),
(130, 27, 2, 'Debitis inventore reiciendis error.', 'pending', '2025-05-11 12:58:19', '2025-05-11 12:58:19'),
(131, 27, 2, 'Inventore eum quidem vero placeat qui modi.', 'pending', '2025-05-11 12:58:19', '2025-05-11 12:58:19'),
(132, 28, 4, 'Qui adipisci ut in id sit.', 'pending', '2025-05-11 12:58:19', '2025-05-11 12:58:19'),
(133, 28, 4, 'Maxime dolorum qui sapiente qui rem qui.', 'pending', '2025-05-11 12:58:19', '2025-05-11 12:58:19'),
(134, 28, 4, 'Dicta id dolore ut.', 'pending', '2025-05-11 12:58:19', '2025-05-11 12:58:19'),
(135, 28, 4, 'Tempore quam commodi aut beatae illo.', 'pending', '2025-05-11 12:58:19', '2025-05-11 12:58:19'),
(136, 28, 4, 'At minima consequatur odit deserunt eos molestias aut.', 'pending', '2025-05-11 12:58:19', '2025-05-11 12:58:19'),
(137, 29, 2, 'Ex officia facere vero libero voluptas non corporis ut.', 'pending', '2025-05-11 12:58:19', '2025-05-11 12:58:19'),
(138, 29, 2, 'Ex praesentium quia maxime omnis eos nisi reiciendis.', 'pending', '2025-05-11 12:58:19', '2025-05-11 12:58:19'),
(139, 29, 2, 'Aut rerum minus id deleniti qui culpa doloribus.', 'pending', '2025-05-11 12:58:19', '2025-05-11 12:58:19'),
(140, 29, 2, 'Est officiis vel harum soluta.', 'pending', '2025-05-11 12:58:19', '2025-05-11 12:58:19'),
(141, 29, 2, 'Minima qui velit consequuntur fugit vitae.', 'pending', '2025-05-11 12:58:19', '2025-05-11 12:58:19'),
(142, 30, 7, 'Id iste eum nisi illo officiis sunt.', 'pending', '2025-05-11 12:58:19', '2025-05-11 12:58:19'),
(143, 30, 7, 'Sed unde voluptates est ut atque.', 'pending', '2025-05-11 12:58:19', '2025-05-11 12:58:19'),
(144, 30, 7, 'Est omnis omnis expedita aut.', 'pending', '2025-05-11 12:58:19', '2025-05-11 12:58:19'),
(145, 30, 7, 'Atque pariatur consequatur voluptas eum expedita eligendi.', 'pending', '2025-05-11 12:58:19', '2025-05-11 12:58:19'),
(146, 30, 7, 'Ab aliquam et molestiae sunt.', 'pending', '2025-05-11 12:58:19', '2025-05-11 12:58:19'),
(147, 31, 4, 'Dolores qui ut labore.', 'pending', '2025-05-11 12:58:19', '2025-05-11 12:58:19'),
(148, 31, 4, 'Numquam ducimus vero a tempore voluptas et commodi.', 'pending', '2025-05-11 12:58:19', '2025-05-11 12:58:19'),
(149, 31, 4, 'Animi et nobis ut earum.', 'pending', '2025-05-11 12:58:19', '2025-05-11 12:58:19'),
(150, 31, 4, 'Sint excepturi perferendis ut maiores.', 'pending', '2025-05-11 12:58:19', '2025-05-11 12:58:19'),
(151, 31, 4, 'Repellendus qui dolorum qui harum magni ut.', 'pending', '2025-05-11 12:58:19', '2025-05-11 12:58:19');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
CREATE TABLE IF NOT EXISTS `jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

DROP TABLE IF EXISTS `job_batches`;
CREATE TABLE IF NOT EXISTS `job_batches` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_05_11_153345_create_posts_table', 1),
(5, '2025_05_11_153356_create_comments_table', 1),
(6, '2025_05_11_153406_create_tags_table', 1),
(7, '2025_05_11_155537_create_oauth_auth_codes_table', 1),
(8, '2025_05_11_155538_create_oauth_access_tokens_table', 1),
(9, '2025_05_11_155539_create_oauth_refresh_tokens_table', 1),
(10, '2025_05_11_155540_create_oauth_clients_table', 1),
(11, '2025_05_11_155541_create_oauth_device_codes_table', 1),
(12, '2025_05_11_165553_add_roles_field_into_users', 1),
(13, '2025_05_11_171658_create_post_tag_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

DROP TABLE IF EXISTS `oauth_access_tokens`;
CREATE TABLE IF NOT EXISTS `oauth_access_tokens` (
  `id` char(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `client_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('e2eb76774871b8fbfa103ebb3d7a6b98db1a1cdd6c44737bf958353f7576b5c9281b1da29cfa6a32', 1, '0196c05b-b7d3-73b8-b4a7-32ec2ab8fa26', 'authToken', '[]', 0, '2025-05-11 11:49:40', '2025-05-11 11:49:40', '2025-11-11 17:19:40'),
('3b972fe7ad18b6126b0b12f1c9dca0ac425778c1b3a6380666c73ad0303e80b6ab2e53f47a9d183f', 1, '0196c05b-b7d3-73b8-b4a7-32ec2ab8fa26', 'authToken', '[]', 0, '2025-05-11 11:49:44', '2025-05-11 11:49:44', '2025-11-11 17:19:44');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

DROP TABLE IF EXISTS `oauth_auth_codes`;
CREATE TABLE IF NOT EXISTS `oauth_auth_codes` (
  `id` char(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `client_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_auth_codes_user_id_index` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

DROP TABLE IF EXISTS `oauth_clients`;
CREATE TABLE IF NOT EXISTS `oauth_clients` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner_id` bigint UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect_uris` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `grant_types` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_owner_type_owner_id_index` (`owner_type`,`owner_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `owner_type`, `owner_id`, `name`, `secret`, `provider`, `redirect_uris`, `grant_types`, `revoked`, `created_at`, `updated_at`) VALUES
('0196c05b-b7d3-73b8-b4a7-32ec2ab8fa26', NULL, NULL, 'Blog API', '$2y$12$uK7gKYN1Je0obZiNNCr2H.Tc2BJfMV.oj5BQ/g8CLKbM84VfMrOfC', 'users', '[]', '[\"personal_access\"]', 0, '2025-05-11 11:49:18', '2025-05-11 11:49:18');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_device_codes`
--

DROP TABLE IF EXISTS `oauth_device_codes`;
CREATE TABLE IF NOT EXISTS `oauth_device_codes` (
  `id` char(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `client_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_code` char(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `user_approved_at` datetime DEFAULT NULL,
  `last_polled_at` datetime DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `oauth_device_codes_user_code_unique` (`user_code`),
  KEY `oauth_device_codes_user_id_index` (`user_id`),
  KEY `oauth_device_codes_client_id_index` (`client_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

DROP TABLE IF EXISTS `oauth_refresh_tokens`;
CREATE TABLE IF NOT EXISTS `oauth_refresh_tokens` (
  `id` char(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` char(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE IF NOT EXISTS `posts` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('draft','published','archived') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'draft',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `posts_user_id_foreign` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `title`, `content`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Laravel Service Pattern', 'Using services instead of fat controllers...', NULL, 'draft', '2025-05-11 12:17:09', '2025-05-11 12:17:09'),
(2, 2, 'Et repudiandae id commodi sed soluta sunt.', 'Et est facilis asperiores velit reiciendis non hic. Non ea molestiae rem.\n\nPraesentium ut vel repellat sunt molestias. Quos suscipit et quae atque tenetur et rem quibusdam. Laudantium aliquam facilis cupiditate porro consequatur atque.\n\nQuaerat sit modi et natus minima numquam expedita. Tenetur odio quam autem voluptatem porro.', NULL, 'draft', '2025-05-11 12:58:18', '2025-05-11 12:58:18'),
(3, 2, 'Sed occaecati deserunt quia molestiae praesentium.', 'Labore consectetur corporis eos quidem nam ullam. Omnis qui debitis quibusdam. Ab adipisci optio quia reiciendis. Iure voluptate facere sed et.\n\nVoluptas et iusto reprehenderit aut rerum exercitationem et. Et optio sed cumque quo magni velit accusantium. Sunt quos quam et et error reprehenderit illo. Culpa ut quas repellat ut suscipit reiciendis.\n\nExpedita temporibus est eum iure laudantium non. Itaque aperiam quasi ea quod. Porro quisquam deserunt cumque et aut doloribus cumque. Cum est aut eaque qui beatae. Aut quia accusamus sapiente molestiae porro dolorem.', NULL, 'draft', '2025-05-11 12:58:18', '2025-05-11 12:58:18'),
(4, 2, 'Quia beatae aliquid id fugiat esse qui.', 'Earum natus ex mollitia quis cum. Molestias ab aut expedita quos. Fugit voluptatem maiores et blanditiis temporibus eligendi consequatur.\n\nQuia accusamus earum repudiandae qui possimus. Voluptate tempora eos harum.\n\nAspernatur laborum est rerum maiores voluptates quod dolorem. Magni illum libero qui debitis saepe illum. Id ea quae et. Quia mollitia et aspernatur officiis.', NULL, 'draft', '2025-05-11 12:58:18', '2025-05-11 12:58:18'),
(5, 3, 'Ut voluptatum rem voluptatem dolorem assumenda.', 'Eum omnis totam est iusto quidem ipsam earum est. Voluptate cumque eaque sint dolorem sit totam. Voluptatem quaerat aut quod et. Facilis et voluptas nulla quo sunt. Repellendus repellendus eveniet mollitia possimus.\n\nBeatae et cupiditate eum deserunt voluptate. Eaque quo rem reprehenderit sed aut et eos. Quos omnis et est velit error. Autem deserunt id porro placeat qui quae in placeat. Pariatur odio ut voluptatem aliquid ipsam.\n\nNon alias non quia nostrum ipsa. Aliquam maiores assumenda commodi debitis saepe ullam. Dicta omnis ullam recusandae temporibus.', NULL, 'draft', '2025-05-11 12:58:18', '2025-05-11 12:58:18'),
(6, 3, 'Eius et eum sequi.', 'Omnis recusandae minus odit mollitia voluptas rerum dolor. Est maxime ut totam quod. Ut vel qui reiciendis quis.\n\nQuibusdam mollitia nam voluptas consequuntur numquam ea id laborum. Voluptas est odit necessitatibus facilis. Ut rerum quae qui ducimus eos labore sint qui.\n\nVoluptates enim quis et vel blanditiis dolores harum. Similique quo et at tempora nulla. Aut itaque est harum ab. Atque dolorum voluptatem eligendi enim maiores rerum omnis.', NULL, 'draft', '2025-05-11 12:58:18', '2025-05-11 12:58:18'),
(7, 3, 'Qui ut laborum eos sed iusto culpa odio.', 'Qui et quia a et voluptas tenetur expedita. Facere corrupti sed et totam sit natus aut laudantium. Temporibus labore nihil et et sunt iusto ratione.\n\nSequi magni deserunt eaque aperiam eos. Cum fuga et id et unde earum temporibus. Quae perferendis rem natus quasi distinctio.\n\nEt aut assumenda nihil labore corrupti neque. Numquam dolorem sed ducimus minus autem voluptas dolor. Voluptatem ab sed excepturi iusto esse aut sit.', NULL, 'draft', '2025-05-11 12:58:18', '2025-05-11 12:58:18'),
(8, 4, 'Vitae veniam error et deleniti dolore cupiditate.', 'Voluptatum non sapiente pariatur consequatur. Id atque consequatur eum sunt vero. Veniam sequi laborum illum doloremque et incidunt. Iure corporis unde amet vel distinctio error dolorum. Amet voluptatem sit corporis.\n\nQuo nam quis labore velit. Aperiam maiores omnis eum quibusdam. Voluptatem tempora sed quae explicabo et veniam. Dignissimos voluptatibus repellendus molestiae earum culpa quis sunt. Qui eligendi perspiciatis aliquam natus nisi.\n\nAsperiores perferendis odit ut tenetur et ullam. Sunt ea aut magni aut optio qui. Sit inventore voluptatum hic odio non sit facilis in. Quas quae vel cum sapiente consequatur soluta.', NULL, 'draft', '2025-05-11 12:58:18', '2025-05-11 12:58:18'),
(9, 4, 'Qui blanditiis deserunt est aut sit rerum.', 'Modi laborum quam qui aliquid. Sit eum unde porro eos rerum minus dolor delectus. Ipsa non eum ullam officia. Aspernatur quia porro ipsum aliquid.\n\nNecessitatibus aut beatae eum enim modi hic distinctio. Quaerat velit sit quis nobis dolores. Veritatis non vero consequatur voluptatem. Necessitatibus harum a non reprehenderit.\n\nLaboriosam molestias rem eius quae quis eligendi ab. Nesciunt aliquid illum enim iste et nam. Veritatis rerum magni quam in velit aut ullam quam. In non et consequatur officia.', NULL, 'draft', '2025-05-11 12:58:18', '2025-05-11 12:58:18'),
(10, 4, 'Officiis amet numquam itaque quia sed sed saepe.', 'Nesciunt qui nihil perferendis qui odit consequuntur qui. Eveniet eum recusandae aut ratione repellendus magni. Illum voluptas ut illum. Tempore totam tempora et.\n\nLibero laudantium labore labore omnis incidunt. Rem et magnam natus expedita necessitatibus ad et dolorem. Eaque reiciendis illum ad esse quo.\n\nMollitia magni in omnis nam est expedita nemo. Aut est nemo id dolorem quia saepe quis. Totam unde placeat non porro voluptas quo atque. Distinctio doloremque aut fugiat exercitationem expedita ab.', NULL, 'draft', '2025-05-11 12:58:18', '2025-05-11 12:58:18'),
(11, 5, 'Debitis in sed ut eveniet dolorem dolorum.', 'Et eligendi commodi odit ab nisi et corrupti omnis. A magnam porro voluptas.\n\nVoluptatem et quidem at consequatur vel. Expedita voluptates tempore harum saepe dolor modi eveniet. Qui aspernatur sunt neque similique. Assumenda sed distinctio sapiente et quia consequatur.\n\nMaxime eligendi consequuntur dignissimos quo. Eaque odio facilis saepe voluptate commodi laborum consequatur non. Quisquam placeat optio sit eligendi.', NULL, 'draft', '2025-05-11 12:58:18', '2025-05-11 12:58:18'),
(12, 5, 'Aliquam dolorem occaecati alias repellat et sint maiores.', 'Veritatis voluptatem quaerat eos rerum. Non nihil vel quisquam at velit. Repudiandae reiciendis voluptas laborum facilis.\n\nVoluptatem qui eos quam necessitatibus mollitia libero possimus saepe. Odio ratione maxime aliquid qui et nisi perspiciatis. Modi optio et quia quo iure.\n\nDolorem fuga non ea incidunt. A placeat non non omnis nihil ex praesentium. Sapiente hic repellat ut necessitatibus. Delectus ex rerum ad eos natus aliquid.', NULL, 'draft', '2025-05-11 12:58:18', '2025-05-11 12:58:18'),
(13, 5, 'A aliquam totam facilis repellat eligendi.', 'Laborum accusamus aut omnis sit. Pariatur id maiores possimus ducimus temporibus itaque rerum.\n\nMaiores accusantium reprehenderit aut ut. Beatae neque qui culpa non eveniet. Reprehenderit atque voluptatibus omnis autem. In aut quo deleniti.\n\nHic consequatur quis laboriosam est et deserunt natus. Architecto modi voluptas et non numquam. Quis blanditiis sunt architecto fugiat. Quia omnis laborum omnis dignissimos.', NULL, 'draft', '2025-05-11 12:58:18', '2025-05-11 12:58:18'),
(14, 6, 'Ut architecto ducimus labore.', 'Accusantium mollitia et nesciunt aperiam dignissimos error. Iste commodi ea non est molestiae laboriosam illum. Totam dicta veritatis at ea quis. Velit tempore cupiditate enim.\n\nAnimi veniam earum incidunt. Rem autem et quam nobis reprehenderit.\n\nQui et qui placeat et harum soluta. Labore omnis tempora molestiae exercitationem sequi. Officiis praesentium iusto magni nemo ut qui. Quo quis ut et enim at adipisci quod quibusdam.', NULL, 'draft', '2025-05-11 12:58:18', '2025-05-11 12:58:18'),
(15, 6, 'Officia recusandae mollitia facere id delectus.', 'Id aut illum debitis voluptatum. Nulla et delectus enim rerum. Saepe maxime maxime ea consequatur. Sit error molestias quisquam odio eveniet consectetur unde.\n\nExercitationem omnis eum velit nemo voluptatibus. Qui officiis adipisci veritatis blanditiis alias quibusdam corrupti vel. Iusto iure placeat repudiandae facilis expedita vel alias. Pariatur et aut repellat aspernatur nostrum consequuntur.\n\nQuis atque et magni aliquam quos ut aliquid. Et culpa dignissimos adipisci repellat atque. Non ut nisi voluptatibus commodi quidem.', NULL, 'draft', '2025-05-11 12:58:18', '2025-05-11 12:58:18'),
(16, 6, 'Ut dolorum tempore ea laborum.', 'Ut odit autem omnis vel et consectetur fuga dolor. Quibusdam recusandae voluptatum quidem perferendis minus. Quidem qui sed nostrum autem praesentium sed et.\n\nPossimus porro ut hic praesentium. Minima eaque est omnis quos modi assumenda. Voluptas eos harum recusandae voluptatem. Facilis accusantium iste cupiditate ad officiis.\n\nOptio quasi velit quia nam quo eaque. Laudantium aut quis nesciunt incidunt dolor dolorum fuga. Aliquam est molestias amet et harum quae. Iusto aliquid exercitationem temporibus suscipit.', NULL, 'draft', '2025-05-11 12:58:18', '2025-05-11 12:58:18'),
(17, 7, 'Perferendis totam dolorum et iste.', 'A asperiores explicabo non beatae. Nihil voluptatem voluptatem cum laboriosam praesentium tempora quia laboriosam. Recusandae doloribus praesentium magnam quis suscipit.\n\nAperiam et cumque hic blanditiis sunt doloribus deserunt sapiente. Velit nulla reiciendis temporibus quam enim error praesentium rerum. Quos et necessitatibus fugit delectus voluptatem nemo et consequatur. Et sit iure officiis voluptas aperiam eligendi reprehenderit.\n\nEx pariatur rerum delectus eveniet aspernatur dolor quam. Doloremque voluptatem in nihil corporis autem delectus architecto. Quo mollitia ut adipisci eos dolorum sint officia. Repellendus fuga maiores autem et beatae.', NULL, 'draft', '2025-05-11 12:58:18', '2025-05-11 12:58:18'),
(18, 7, 'Praesentium iusto et repellat quaerat omnis aut sequi.', 'Exercitationem voluptate consequatur optio. Et excepturi nesciunt et architecto itaque nisi sit. Est expedita modi voluptas molestiae optio adipisci. Error aliquam odit dolorum fuga consequatur hic.\n\nId et laboriosam sit et harum aspernatur voluptatem. Vel maxime eius et saepe et praesentium numquam. Quaerat qui minus veniam id illum.\n\nDoloremque et vitae dolores consectetur tenetur velit vero ipsa. Sit enim enim sunt sit. Sit et voluptas iste id inventore libero. Est non et libero aut rerum molestiae quo.', NULL, 'draft', '2025-05-11 12:58:18', '2025-05-11 12:58:18'),
(19, 7, 'Eos repellat accusamus rem impedit praesentium commodi veniam.', 'Minus possimus consectetur explicabo. Maiores provident tempore quaerat qui fugiat sint. Velit ipsa dolor fuga. Quo iusto amet optio tempore.\n\nIncidunt ut omnis alias expedita doloremque temporibus numquam. Vel eligendi sed ut. Expedita quaerat corporis molestias exercitationem possimus.\n\nMinus ut fuga sit voluptas voluptatem et non in. Reprehenderit sit iusto accusantium fuga ipsum perferendis. Quaerat voluptatem doloremque molestiae alias labore eveniet. Qui inventore aut ut. Molestiae porro et culpa quod impedit facilis.', NULL, 'draft', '2025-05-11 12:58:18', '2025-05-11 12:58:18'),
(20, 8, 'Esse atque quam explicabo natus.', 'Ad labore omnis dolorem in earum soluta eos et. Provident itaque velit dolor et dolorem. Et quia corrupti sit dolores autem. Officiis ut nesciunt tempore aspernatur.\n\nFuga quis mollitia dolor similique natus rerum maiores. Quia doloremque alias sint tempore. Mollitia beatae debitis ea sit earum. Quod nesciunt quaerat quod architecto.\n\nReprehenderit et non magnam provident mollitia sed qui. Totam eius non distinctio rerum praesentium tenetur. Voluptas corporis soluta laborum quaerat non.', NULL, 'draft', '2025-05-11 12:58:18', '2025-05-11 12:58:18'),
(21, 8, 'Minima et et reiciendis enim suscipit perferendis.', 'Consequatur vitae voluptas consequatur accusantium quia. Dolores dolor sunt saepe ut. Et ducimus enim quas rerum molestias. Expedita consequatur labore laudantium architecto id quibusdam.\n\nDebitis repellat est aliquam cum voluptas. Autem id iste aliquid ut. Ut voluptas est nihil rerum qui. Repellendus necessitatibus eum velit dolor.\n\nIllo sit ut odio laborum et. Corporis eius illum aut dignissimos possimus nam corrupti.', NULL, 'draft', '2025-05-11 12:58:18', '2025-05-11 12:58:18'),
(22, 8, 'Commodi ut est incidunt molestiae saepe pariatur architecto.', 'Non reprehenderit a non. Ut animi asperiores magni ipsa.\n\nDoloremque dolores praesentium id voluptatem. Eius in placeat incidunt vel laudantium aspernatur.\n\nMagnam suscipit tempore beatae maiores distinctio distinctio. Tempora in aliquid qui similique error veniam. Expedita nihil culpa voluptates iusto sunt. Sed earum dolorem aut necessitatibus praesentium in aut.', NULL, 'draft', '2025-05-11 12:58:18', '2025-05-11 12:58:18'),
(23, 9, 'Non pariatur molestias esse recusandae quidem eveniet.', 'At sequi similique minus autem consequuntur sint laudantium rem. Nesciunt temporibus rem officiis quis. Id dolorem voluptate autem alias molestiae cupiditate deleniti. Qui necessitatibus similique sit repellendus sit. Accusantium ad ducimus quia non maiores adipisci.\n\nVoluptatem sunt sint et quam iure accusantium. Eligendi dignissimos aut soluta laboriosam. Eos et quidem dolorum est a qui dolores. Natus optio porro officiis dolore quos porro.\n\nMolestiae ratione velit corporis totam et enim consequatur. Eius aut non nisi magnam cumque reiciendis molestias. Sit sequi voluptatem odio dolorem culpa.', NULL, 'draft', '2025-05-11 12:58:19', '2025-05-11 12:58:19'),
(24, 9, 'Est ducimus non est error porro ut.', 'Quam id ipsum cum dolore et. Illum illo tempora quaerat facilis magni explicabo. Qui molestiae tenetur et soluta.\n\nQui quo velit et quidem et recusandae. Maiores alias magnam sint quod porro. Esse sed aliquid quae. Sit qui id eos fugit veniam.\n\nIure voluptatem reprehenderit voluptatem facilis qui sed ut. Exercitationem aliquid et iure sint. Voluptate eos voluptatem praesentium possimus.', NULL, 'draft', '2025-05-11 12:58:19', '2025-05-11 12:58:19'),
(25, 9, 'Sunt est voluptate placeat.', 'Neque neque atque et quae. Tempora alias error praesentium dolor necessitatibus odit. Dolorum possimus asperiores in velit et sed. Voluptas id eaque corrupti quasi aut eligendi placeat quo. Harum enim est quis esse ut rerum et.\n\nQuod iusto repellendus cupiditate tempora aut qui. Doloremque aliquam molestiae fugiat ut cupiditate reiciendis. Quam et explicabo animi quis recusandae aperiam.\n\nQui dolor eaque explicabo rerum iusto. Sequi aut est necessitatibus rerum dicta fuga quidem dolores. Esse qui nostrum in odio architecto.', NULL, 'draft', '2025-05-11 12:58:19', '2025-05-11 12:58:19'),
(26, 10, 'Ut nihil repellendus magnam voluptatem.', 'Natus qui adipisci ad assumenda fugiat. Autem exercitationem molestiae omnis sequi laborum sunt. Ab omnis non soluta amet quo. Cum quia qui architecto cum consectetur modi maiores.\n\nDucimus cumque dolorem non animi nobis a. Veritatis voluptatem accusantium consequatur ab sint non officia. Consequatur qui odit labore temporibus qui possimus sed maiores.\n\nDucimus repudiandae quibusdam placeat asperiores tempora dolor sapiente. Quod enim ex quasi natus consequatur officiis quia. Reprehenderit quo reiciendis numquam qui. Eaque sed mollitia voluptatem est ducimus.', NULL, 'draft', '2025-05-11 12:58:19', '2025-05-11 12:58:19'),
(27, 10, 'Molestias consequatur ab quos.', 'Occaecati libero aliquam numquam vero voluptate error illo. Praesentium reprehenderit temporibus natus. Non dolorum aut cumque at sit temporibus et. Perspiciatis sit quo deserunt qui rerum quis commodi voluptas.\n\nEos quia qui et voluptates ut ut. Est minima nihil ea enim. Nihil modi quia voluptas sit qui.\n\nInventore id est minima soluta architecto deleniti. Autem est eius quo quia eum et quos voluptatem.', NULL, 'draft', '2025-05-11 12:58:19', '2025-05-11 12:58:19'),
(28, 10, 'Rerum sint alias accusamus libero aut corrupti.', 'Incidunt magni temporibus fugit est vel. Molestias ex et facere dolor blanditiis autem. Ducimus laboriosam ipsa facilis non consectetur eos.\n\nDoloremque sapiente nihil repellendus ab vel. Quas culpa a aliquam voluptatem est.\n\nOmnis nesciunt blanditiis consequatur tenetur. Rerum praesentium ea ad explicabo quia corporis. Dolorem earum ullam nihil aspernatur nemo et. Qui occaecati quasi nisi est.', NULL, 'draft', '2025-05-11 12:58:19', '2025-05-11 12:58:19'),
(29, 11, 'Vel non commodi est quia.', 'Voluptatem ut molestias molestias nihil facere velit illum enim. In aut temporibus quis nihil ducimus officiis nam.\n\nEt et cumque et ut ut. Excepturi id a perferendis quo. Voluptatem ex ut numquam et officia odit libero.\n\nNihil quia modi rerum laboriosam ut inventore. Sit voluptatem quo quibusdam sapiente voluptates deleniti pariatur. Ut officiis consequatur facere ea sunt dolorum ut rerum.', NULL, 'draft', '2025-05-11 12:58:19', '2025-05-11 12:58:19'),
(30, 11, 'Voluptates sed id esse.', 'Dolores recusandae illo ut animi iste ea. Voluptatibus delectus id repellat perferendis. Voluptas et excepturi sit quisquam.\n\nPossimus nisi libero aut exercitationem quo. Nemo est ullam maxime perspiciatis molestiae modi eaque similique. Dolores sint eius qui ab commodi dignissimos.\n\nQuo amet aliquid ut. Ipsa consequatur odit amet laborum vitae ut suscipit asperiores. Est beatae debitis qui officia vitae vero id.', NULL, 'draft', '2025-05-11 12:58:19', '2025-05-11 12:58:19'),
(31, 11, 'Animi debitis suscipit qui et veritatis nisi voluptas.', 'Aperiam animi culpa distinctio molestias eum omnis. Repellendus atque praesentium in mollitia ab et praesentium. Ex beatae ipsam reprehenderit accusantium voluptate.\n\nSunt sed dicta et. Fugiat eum facere non nemo et aut. Doloribus cumque cum quod commodi voluptatem.\n\nNulla quia iste maxime. Facere illum nobis ab quo voluptate ducimus. Voluptatum culpa dolorem temporibus nobis qui fuga dolorem.', NULL, 'draft', '2025-05-11 12:58:19', '2025-05-11 12:58:19');

-- --------------------------------------------------------

--
-- Table structure for table `post_tag`
--

DROP TABLE IF EXISTS `post_tag`;
CREATE TABLE IF NOT EXISTS `post_tag` (
  `post_id` bigint UNSIGNED NOT NULL,
  `tag_id` bigint UNSIGNED NOT NULL,
  PRIMARY KEY (`post_id`,`tag_id`),
  KEY `post_tag_tag_id_foreign` (`tag_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_tag`
--

INSERT INTO `post_tag` (`post_id`, `tag_id`) VALUES
(1, 1),
(1, 2),
(2, 9),
(3, 7),
(3, 11),
(4, 6),
(5, 10),
(6, 11),
(6, 12),
(7, 4),
(7, 5),
(8, 7),
(9, 5),
(9, 8),
(9, 10),
(9, 13),
(10, 5),
(10, 12),
(11, 8),
(12, 5),
(12, 13),
(13, 13),
(14, 8),
(14, 9),
(14, 10),
(14, 13),
(15, 5),
(15, 6),
(15, 10),
(15, 13),
(16, 6),
(16, 13),
(17, 9),
(18, 5),
(18, 12),
(19, 9),
(19, 13),
(20, 5),
(20, 8),
(20, 9),
(21, 5),
(21, 11),
(21, 12),
(22, 6),
(22, 13),
(23, 4),
(23, 7),
(23, 10),
(23, 11),
(24, 8),
(25, 4),
(25, 6),
(25, 11),
(25, 13),
(26, 6),
(27, 6),
(27, 7),
(28, 6),
(28, 7),
(29, 11),
(30, 6),
(30, 8),
(31, 7),
(31, 8),
(31, 11),
(31, 13);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
CREATE TABLE IF NOT EXISTS `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('D0eUkxxjJJDVLDsL7qAhh11o5AabP76p7HdNk7yh', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSFg0RXJRMUc3OEc5YVZEd21xWFdTYlFUb0Rpb2xtSHZmMHYzUEpnSyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1746988093);

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
CREATE TABLE IF NOT EXISTS `tags` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tags_name_unique` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Laravel', '2025-05-11 12:12:43', '2025-05-11 12:12:43'),
(2, 'API', '2025-05-11 12:12:51', '2025-05-11 12:12:51'),
(3, 'Teacher', '2025-05-11 12:12:58', '2025-05-11 12:12:58'),
(4, 'ipsa', '2025-05-11 12:58:18', '2025-05-11 12:58:18'),
(5, 'architecto', '2025-05-11 12:58:18', '2025-05-11 12:58:18'),
(6, 'sapiente', '2025-05-11 12:58:18', '2025-05-11 12:58:18'),
(7, 'reprehenderit', '2025-05-11 12:58:18', '2025-05-11 12:58:18'),
(8, 'dolorem', '2025-05-11 12:58:18', '2025-05-11 12:58:18'),
(9, 'dolor', '2025-05-11 12:58:18', '2025-05-11 12:58:18'),
(10, 'natus', '2025-05-11 12:58:18', '2025-05-11 12:58:18'),
(11, 'voluptas', '2025-05-11 12:58:18', '2025-05-11 12:58:18'),
(12, 'amet', '2025-05-11 12:58:18', '2025-05-11 12:58:18'),
(13, 'occaecati', '2025-05-11 12:58:18', '2025-05-11 12:58:18');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role` enum('admin','user') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `role`, `status`) VALUES
(1, 'Faisal P', 'faizel@gmail.com', NULL, '$2y$12$JqL7nRH7XOnEYFw0KdDGO.MuhmxsmIAk2.U3qn0wITT/5eiTRrK1W', NULL, '2025-05-11 11:49:40', '2025-05-11 11:49:40', 'user', 'active'),
(2, 'Wiley Koepp', 'arnoldo94@example.net', '2025-05-11 12:58:18', '$2y$12$qL3iPxeVbAdqTfnOD1PAUexxTDnQBqUBJAYzZpjB9yyJG10FMSAWK', 'nRWP4T2RIc', '2025-05-11 12:58:18', '2025-05-11 12:58:18', 'user', 'active'),
(3, 'Dr. Camylle Cronin Sr.', 'hoyt.mitchell@example.net', '2025-05-11 12:58:18', '$2y$12$qL3iPxeVbAdqTfnOD1PAUexxTDnQBqUBJAYzZpjB9yyJG10FMSAWK', 'qXqO9D3ttf', '2025-05-11 12:58:18', '2025-05-11 12:58:18', 'user', 'active'),
(4, 'Augustus Goldner', 'elisha84@example.com', '2025-05-11 12:58:18', '$2y$12$qL3iPxeVbAdqTfnOD1PAUexxTDnQBqUBJAYzZpjB9yyJG10FMSAWK', 'oDwnqHyQLH', '2025-05-11 12:58:18', '2025-05-11 12:58:18', 'user', 'active'),
(5, 'Mrs. Billie Ratke II', 'shields.jade@example.org', '2025-05-11 12:58:18', '$2y$12$qL3iPxeVbAdqTfnOD1PAUexxTDnQBqUBJAYzZpjB9yyJG10FMSAWK', 'YYlvfijkB2', '2025-05-11 12:58:18', '2025-05-11 12:58:18', 'user', 'active'),
(6, 'Mr. Porter Bogan PhD', 'szieme@example.org', '2025-05-11 12:58:18', '$2y$12$qL3iPxeVbAdqTfnOD1PAUexxTDnQBqUBJAYzZpjB9yyJG10FMSAWK', '1p7CLoEZqA', '2025-05-11 12:58:18', '2025-05-11 12:58:18', 'user', 'active'),
(7, 'Julianne Cummings', 'treutel.lucio@example.net', '2025-05-11 12:58:18', '$2y$12$qL3iPxeVbAdqTfnOD1PAUexxTDnQBqUBJAYzZpjB9yyJG10FMSAWK', 'JCFtwPRjXL', '2025-05-11 12:58:18', '2025-05-11 12:58:18', 'user', 'active'),
(8, 'Georgianna Mitchell DDS', 'maverick07@example.com', '2025-05-11 12:58:18', '$2y$12$qL3iPxeVbAdqTfnOD1PAUexxTDnQBqUBJAYzZpjB9yyJG10FMSAWK', 'dsUqXO7Fug', '2025-05-11 12:58:18', '2025-05-11 12:58:18', 'user', 'active'),
(9, 'Mrs. Cydney Ziemann', 'gjast@example.net', '2025-05-11 12:58:18', '$2y$12$qL3iPxeVbAdqTfnOD1PAUexxTDnQBqUBJAYzZpjB9yyJG10FMSAWK', 'MbCst0vs8Z', '2025-05-11 12:58:18', '2025-05-11 12:58:18', 'user', 'active'),
(10, 'Dennis Bins', 'emory.jast@example.com', '2025-05-11 12:58:18', '$2y$12$qL3iPxeVbAdqTfnOD1PAUexxTDnQBqUBJAYzZpjB9yyJG10FMSAWK', 'AmKW3HO9qt', '2025-05-11 12:58:18', '2025-05-11 12:58:18', 'user', 'active'),
(11, 'Prof. Jake Champlin', 'kellie.mckenzie@example.net', '2025-05-11 12:58:18', '$2y$12$qL3iPxeVbAdqTfnOD1PAUexxTDnQBqUBJAYzZpjB9yyJG10FMSAWK', 'mDfEMKWjhe', '2025-05-11 12:58:18', '2025-05-11 12:58:18', 'user', 'active');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
