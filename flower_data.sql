-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 07, 2023 lúc 05:29 PM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `flower_data`
--
CREATE DATABASE IF NOT EXISTS `flower_data` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `flower_data`;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `flowers`
--

CREATE TABLE IF NOT EXISTS `flowers` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `imgae_url` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `flowers`
--

INSERT INTO `flowers` (`id`, `name`, `description`, `imgae_url`, `created_at`, `updated_at`) VALUES
(1, 'Vincenza Kreiger Jr.', 'Ut doloribus omnis et magni itaque. Soluta accusantium eos cum maiores sunt.', '1699373994.jpg', '2023-11-07 09:08:19', '2023-11-07 09:19:54'),
(2, 'Dr. Frankie McKenzie Jr.', 'Quia nesciunt corrupti praesentium. Neque amet ab consectetur aliquam. Nobis ut quae id enim cupiditate. Nisi consequuntur est et et et possimus beatae. Corrupti natus unde iure dolor.', 'https://via.placeholder.com/640x480.png/00cc88?text=nam', '2023-11-07 09:08:19', '2023-11-07 09:08:19'),
(3, 'Diego Macejkovic', 'Expedita ut quidem velit. Enim ut veritatis saepe non incidunt. Molestiae quo ut vitae perferendis debitis. Minima aliquid qui rerum quam.', 'https://via.placeholder.com/640x480.png/00ddff?text=pariatur', '2023-11-07 09:08:19', '2023-11-07 09:08:19'),
(4, 'Arely Lebsack', 'Omnis distinctio minima inventore. Dolor aspernatur eius reprehenderit dolorum id. Ipsum maxime error non incidunt. Est ipsum corporis laborum. Fugiat eum inventore in in itaque sit.', 'https://via.placeholder.com/640x480.png/00cc66?text=quia', '2023-11-07 09:08:19', '2023-11-07 09:08:19'),
(5, 'Rickey Ferry', 'Sed quia dolor eveniet quia. Doloribus labore labore est. Autem nostrum ab ea. Sint voluptatem assumenda ipsum veritatis et non. Reprehenderit in ut assumenda explicabo dolor placeat sunt.', 'https://via.placeholder.com/640x480.png/007799?text=unde', '2023-11-07 09:08:19', '2023-11-07 09:08:19'),
(6, 'Kimberly Williamson', 'Sit sint repudiandae aut saepe perspiciatis aut aut. Delectus ipsam qui iure officia quasi eos corrupti. Qui fugiat est distinctio earum.', 'https://via.placeholder.com/640x480.png/002244?text=soluta', '2023-11-07 09:08:19', '2023-11-07 09:08:19'),
(7, 'Lenna Hyatt', 'Repellendus reiciendis distinctio earum dolor magnam maxime. Sit ipsa consequatur eaque eius eveniet corporis velit natus. Ut voluptatem libero voluptatum sed iure dolorum perferendis.', 'https://via.placeholder.com/640x480.png/00bbaa?text=debitis', '2023-11-07 09:08:19', '2023-11-07 09:08:19'),
(8, 'Abbigail Klein', 'Fugiat quae non quod dicta saepe facere. Placeat enim qui atque qui nesciunt. Optio repellat sit est suscipit eos et. In ducimus nulla illum eos iusto sequi ab adipisci.', 'https://via.placeholder.com/640x480.png/00eeee?text=et', '2023-11-07 09:08:19', '2023-11-07 09:08:19'),
(9, 'Brenden Hickle', 'Nisi laudantium omnis quia eos eligendi. Maiores sint et possimus atque. Impedit aut magni eum explicabo. Magnam laborum optio dolorem qui at. Cumque sed rem sed quae non.', 'https://via.placeholder.com/640x480.png/009900?text=quas', '2023-11-07 09:08:19', '2023-11-07 09:08:19'),
(10, 'Jamil Kautzer', 'At est vel qui exercitationem enim doloremque reprehenderit. Quia non cupiditate amet aut ab sit nulla. Perspiciatis consequatur consectetur et ex harum voluptate.', 'https://via.placeholder.com/640x480.png/006633?text=et', '2023-11-07 09:08:19', '2023-11-07 09:08:19'),
(11, 'Gwendolyn Hintz PhD', 'Eligendi magnam et architecto aut. Laborum maxime dolorum est reiciendis. Consequatur voluptate delectus explicabo est.', 'https://via.placeholder.com/640x480.png/0066bb?text=iure', '2023-11-07 09:08:19', '2023-11-07 09:08:19'),
(12, 'Dr. Nyah Miller I', 'Consequatur tenetur accusantium sequi odit. Dicta recusandae et dolor eaque eveniet et doloribus. Ipsam assumenda sed quia ex ea hic. Atque illum nisi quo id aperiam reprehenderit quaerat.', 'https://via.placeholder.com/640x480.png/0099bb?text=aut', '2023-11-07 09:08:19', '2023-11-07 09:08:19'),
(13, 'Mr. Ellsworth McKenzie', 'Explicabo quia qui enim sint qui accusamus voluptas. Dolore officiis aut quo repudiandae reprehenderit omnis. Nihil rem illo explicabo dolorum et dolorem eveniet.', 'https://via.placeholder.com/640x480.png/00cc99?text=beatae', '2023-11-07 09:08:19', '2023-11-07 09:08:19'),
(14, 'Thalia Herzog', 'Quod omnis quam quibusdam modi aut. Omnis non sed ut odio delectus sequi. Labore enim quaerat deleniti qui odio ex consectetur.', 'https://via.placeholder.com/640x480.png/003377?text=et', '2023-11-07 09:08:19', '2023-11-07 09:08:19'),
(15, 'Sim Cummerata', 'Perspiciatis deserunt et tempore sit officiis nulla. Eum mollitia aut omnis at cumque.', 'https://via.placeholder.com/640x480.png/00cc00?text=et', '2023-11-07 09:08:19', '2023-11-07 09:08:19'),
(16, 'Prof. Dillon Leuschke Sr.', 'Velit illo et labore blanditiis quis totam assumenda. Commodi dolores quasi excepturi nesciunt enim a sunt. Provident nemo debitis qui dolores ut. Voluptate nesciunt est soluta quia dolore iure.', 'https://via.placeholder.com/640x480.png/005511?text=minima', '2023-11-07 09:08:19', '2023-11-07 09:08:19'),
(17, 'Hilda Kuhn', 'Voluptates quos sed exercitationem eaque id aut consectetur. Eius animi iusto porro maxime magnam. Consectetur magnam ducimus occaecati distinctio.', 'https://via.placeholder.com/640x480.png/006633?text=quibusdam', '2023-11-07 09:08:19', '2023-11-07 09:08:19'),
(18, 'Dr. Milford McClure V', 'Ex labore doloremque eos dolorem voluptas et non. Quia repudiandae esse voluptatem nobis. Qui qui asperiores et dignissimos porro. At voluptate voluptatem et officiis expedita aut.', 'https://via.placeholder.com/640x480.png/0000bb?text=corrupti', '2023-11-07 09:08:19', '2023-11-07 09:08:19'),
(19, 'Bernice Rau III', 'Accusantium facilis perferendis illum sunt velit delectus. Dolorem similique facere aspernatur voluptatem velit sunt natus vero. Fugit et impedit non error est.', 'https://via.placeholder.com/640x480.png/0033cc?text=sed', '2023-11-07 09:08:19', '2023-11-07 09:08:19'),
(20, 'Dr. Keenan Zemlak Jr.', 'Fuga voluptatem illum ipsum quo. Expedita cumque vero similique et occaecati. Ipsam et voluptates fugit aperiam autem quae.', 'https://via.placeholder.com/640x480.png/00ee66?text=rerum', '2023-11-07 09:08:19', '2023-11-07 09:08:19'),
(21, 'Clementine Zieme II', 'Consequatur corrupti et quaerat. Et eos expedita repellendus minima minus aliquam beatae.', 'https://via.placeholder.com/640x480.png/002200?text=nulla', '2023-11-07 09:08:19', '2023-11-07 09:08:19'),
(22, 'Sydni Parker', 'Officia eum maiores voluptatem non molestiae cumque. Accusamus aut aut eum. Veniam animi explicabo culpa officia aut voluptas. Cum atque voluptas est saepe vel.', 'https://via.placeholder.com/640x480.png/0066ff?text=repellendus', '2023-11-07 09:08:19', '2023-11-07 09:08:19'),
(23, 'Cristopher Torphy', 'Non reiciendis id ut beatae. Nam nam rerum perferendis nihil est nemo quam. Laudantium et enim qui. Consectetur ullam nulla magnam omnis.', 'https://via.placeholder.com/640x480.png/004444?text=cum', '2023-11-07 09:08:19', '2023-11-07 09:08:19'),
(24, 'Samanta Schuppe', 'Quibusdam suscipit et accusantium est. Repellendus placeat magnam et aut. Maxime et at at blanditiis vel et vero.', 'https://via.placeholder.com/640x480.png/009933?text=dignissimos', '2023-11-07 09:08:19', '2023-11-07 09:08:19'),
(25, 'Hilda Hackett DVM', 'At omnis culpa et modi accusantium odio quaerat. Qui doloribus suscipit qui ut consequatur voluptas. Eos quod illo illum corrupti sequi asperiores.', 'https://via.placeholder.com/640x480.png/009911?text=hic', '2023-11-07 09:08:19', '2023-11-07 09:08:19'),
(26, 'Prof. Mariam Yost PhD', 'Iusto voluptatem quo nihil in quis at cumque corporis. Non aliquam eos ipsam vel aut dolorem facilis vel. Debitis beatae odit ut occaecati et eum corporis dolorem.', 'https://via.placeholder.com/640x480.png/00eeaa?text=voluptate', '2023-11-07 09:08:19', '2023-11-07 09:08:19'),
(27, 'Miss Dulce Littel IV', 'Esse illum a soluta aliquam voluptatem odit quo temporibus. Adipisci officia sunt nobis vero. Perspiciatis sed labore earum. Pariatur soluta suscipit aut labore atque dolorum.', 'https://via.placeholder.com/640x480.png/007777?text=laboriosam', '2023-11-07 09:08:19', '2023-11-07 09:08:19'),
(28, 'Eliezer Sauer', 'Ut atque accusantium ut tempore eveniet. Sed enim quia ut ad nam voluptatem facilis. Eaque et nulla voluptatem quis.', 'https://via.placeholder.com/640x480.png/0033cc?text=libero', '2023-11-07 09:08:19', '2023-11-07 09:08:19'),
(29, 'Jennifer Waters', 'Exercitationem qui ipsum magni maxime. Dolorem quo ad at numquam itaque odio optio. Placeat alias necessitatibus vero odio suscipit eaque sed sunt. Fuga voluptas qui est vel ducimus neque labore.', 'https://via.placeholder.com/640x480.png/008844?text=asperiores', '2023-11-07 09:08:19', '2023-11-07 09:08:19'),
(30, 'Darren Barrows III', 'Autem et repellendus molestiae sed. Commodi omnis vitae animi maiores repudiandae quod ducimus. Voluptatem nihil et in pariatur. Et qui autem quo maiores ut voluptas voluptatibus.', 'https://via.placeholder.com/640x480.png/00ffcc?text=facere', '2023-11-07 09:08:19', '2023-11-07 09:08:19'),
(31, 'Una Braun', 'Nisi voluptatibus voluptatem harum corrupti nobis sunt perferendis odio. Fuga ut quas cumque optio nemo qui. Et id eius repudiandae eum itaque necessitatibus. Ea occaecati est cumque commodi.', 'https://via.placeholder.com/640x480.png/004444?text=consequatur', '2023-11-07 09:08:19', '2023-11-07 09:08:19'),
(32, 'Mrs. Heather Stark', 'Tempore facilis dolore unde placeat vel praesentium et. Est minus beatae possimus veniam non. Sed ut expedita sunt et distinctio. Quia laboriosam ullam est id illo.', 'https://via.placeholder.com/640x480.png/003366?text=non', '2023-11-07 09:08:19', '2023-11-07 09:08:19'),
(33, 'Prof. Jordon Sauer PhD', 'Saepe aliquam voluptatibus recusandae. Labore deleniti reiciendis quia ut quia sit. Repellat placeat in laboriosam quaerat dolores. Voluptatibus dolor ut nam tempore.', 'https://via.placeholder.com/640x480.png/004488?text=neque', '2023-11-07 09:08:19', '2023-11-07 09:08:19'),
(34, 'Ms. Loren Dietrich', 'Voluptates provident animi a tempora eaque error hic. Dolore saepe doloribus quidem vel. Dolores et aut ut fugiat excepturi aut excepturi. Blanditiis ea nesciunt velit et ut voluptatem dolor nam.', 'https://via.placeholder.com/640x480.png/003344?text=temporibus', '2023-11-07 09:08:19', '2023-11-07 09:08:19'),
(35, 'Augusta McKenzie', 'Sed beatae earum dolorem nisi ipsum. Omnis illum tempora et et quia voluptates et dicta. Aperiam dignissimos quis iure id.', 'https://via.placeholder.com/640x480.png/004400?text=omnis', '2023-11-07 09:08:19', '2023-11-07 09:08:19'),
(36, 'Edythe Lemke', 'Sed consequatur sint enim earum aspernatur et. Et quasi assumenda unde provident. Tempora qui rem voluptatibus omnis reiciendis quis magni.', 'https://via.placeholder.com/640x480.png/009933?text=itaque', '2023-11-07 09:08:19', '2023-11-07 09:08:19'),
(37, 'Dr. Dominic Trantow PhD', 'Necessitatibus libero ducimus ipsa autem iste laboriosam. Eum sint quo sequi saepe officiis modi. Cupiditate illo fugit dolorem aperiam.', 'https://via.placeholder.com/640x480.png/00cc99?text=repudiandae', '2023-11-07 09:08:19', '2023-11-07 09:08:19'),
(38, 'Noel Flatley III', 'Omnis velit est ea non quia error accusamus. Qui magnam beatae velit.', 'https://via.placeholder.com/640x480.png/00aa88?text=nemo', '2023-11-07 09:08:19', '2023-11-07 09:08:19'),
(39, 'Theo Wiza', 'Sint deleniti nam enim aut. Molestias minima nobis ullam consequatur cum voluptatem. Enim consequuntur culpa officia ducimus consectetur dicta id architecto.', 'https://via.placeholder.com/640x480.png/0077aa?text=quia', '2023-11-07 09:08:19', '2023-11-07 09:08:19'),
(40, 'Prof. Dorian Weber', 'Sit nesciunt ut nemo unde assumenda et molestiae. Unde rerum voluptas occaecati vel fugit. Sed cumque cumque itaque voluptates voluptas omnis.', 'https://via.placeholder.com/640x480.png/00eedd?text=non', '2023-11-07 09:08:19', '2023-11-07 09:08:19'),
(41, 'Olga Kovacek III', 'Est non fugit qui enim aliquam aliquid in. Voluptatem omnis architecto delectus. Officiis quae quia quo voluptas aliquam ipsam id. Velit aperiam fugiat rerum.', 'https://via.placeholder.com/640x480.png/001100?text=facere', '2023-11-07 09:08:19', '2023-11-07 09:08:19'),
(42, 'Idell Quitzon', 'Eius quas quibusdam quia culpa ut. Reprehenderit adipisci minima at expedita. Unde cum repellat esse est autem.', 'https://via.placeholder.com/640x480.png/00cc66?text=maiores', '2023-11-07 09:08:19', '2023-11-07 09:08:19'),
(43, 'Ms. Maudie Thompson', 'Earum quia consectetur amet vero sequi totam. Animi doloremque quia id.', 'https://via.placeholder.com/640x480.png/00dd44?text=magnam', '2023-11-07 09:08:19', '2023-11-07 09:08:19'),
(44, 'Mr. Cade Effertz DVM', 'Quibusdam aut exercitationem deleniti dolore et vitae est. Quasi nobis laboriosam perferendis suscipit aut. Omnis non minus voluptas id.', 'https://via.placeholder.com/640x480.png/0088aa?text=eos', '2023-11-07 09:08:19', '2023-11-07 09:08:19'),
(45, 'Mrs. Delfina Mueller', 'Est in et voluptas sint. Est ut sapiente commodi sit nisi quidem ea necessitatibus. Cum iste expedita quidem et molestias nostrum. Dolores non omnis ab.', 'https://via.placeholder.com/640x480.png/001188?text=vel', '2023-11-07 09:08:19', '2023-11-07 09:08:19'),
(46, 'Dr. Carroll Dickinson V', 'Iste aliquam voluptatem iste quo rerum et aspernatur corporis. Aut sequi aliquam ex velit est magni est.', 'https://via.placeholder.com/640x480.png/00cc88?text=sed', '2023-11-07 09:08:19', '2023-11-07 09:08:19'),
(47, 'Dr. Merle Kautzer II', 'Distinctio minus ut dolorem pariatur quidem. Illo nesciunt voluptates laudantium aut beatae autem. Recusandae sunt dolore voluptates magnam voluptate vitae.', 'https://via.placeholder.com/640x480.png/00ff77?text=officiis', '2023-11-07 09:08:19', '2023-11-07 09:08:19'),
(48, 'Clemens Miller', 'Quia officia suscipit doloribus. Et rerum aperiam itaque sint asperiores saepe nemo. Necessitatibus maiores eos quasi.', 'https://via.placeholder.com/640x480.png/0077ee?text=quod', '2023-11-07 09:08:19', '2023-11-07 09:08:19'),
(49, 'Mr. Gayle Macejkovic V', 'Unde qui nobis id commodi maiores. Dolor cupiditate est fuga ipsum ipsa. Id molestiae magnam cupiditate provident.', 'https://via.placeholder.com/640x480.png/00ddbb?text=pariatur', '2023-11-07 09:08:19', '2023-11-07 09:08:19'),
(50, 'Kaylie Schroeder PhD', 'Animi tempore enim rerum id omnis expedita. Voluptas doloribus accusantium qui et dolor et reprehenderit. Dolores at repudiandae quasi.', 'https://via.placeholder.com/640x480.png/006699?text=voluptas', '2023-11-07 09:08:19', '2023-11-07 09:08:19'),
(51, 'lan', 'aaaa', '1699373532.jpg', '2023-11-07 09:12:12', '2023-11-07 09:12:12');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `flower_regions`
--

CREATE TABLE IF NOT EXISTS `flower_regions` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `flower_id` bigint(20) UNSIGNED NOT NULL,
  `region_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `flower_regions_flower_id_foreign` (`flower_id`),
  KEY `flower_regions_region_id_foreign` (`region_id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `flower_regions`
--

INSERT INTO `flower_regions` (`id`, `flower_id`, `region_id`, `created_at`, `updated_at`) VALUES
(1, 3, 50, '2023-11-07 09:08:19', '2023-11-07 09:08:19'),
(2, 20, 29, '2023-11-07 09:08:19', '2023-11-07 09:08:19'),
(3, 23, 19, '2023-11-07 09:08:19', '2023-11-07 09:08:19'),
(4, 20, 21, '2023-11-07 09:08:19', '2023-11-07 09:08:19'),
(5, 11, 14, '2023-11-07 09:08:19', '2023-11-07 09:08:19'),
(6, 22, 25, '2023-11-07 09:08:19', '2023-11-07 09:08:19'),
(7, 39, 31, '2023-11-07 09:08:19', '2023-11-07 09:08:19'),
(8, 32, 20, '2023-11-07 09:08:19', '2023-11-07 09:08:19'),
(9, 21, 42, '2023-11-07 09:08:19', '2023-11-07 09:08:19'),
(10, 17, 4, '2023-11-07 09:08:19', '2023-11-07 09:08:19'),
(11, 27, 26, '2023-11-07 09:08:19', '2023-11-07 09:08:19'),
(12, 11, 41, '2023-11-07 09:08:19', '2023-11-07 09:08:19'),
(13, 9, 7, '2023-11-07 09:08:19', '2023-11-07 09:08:19'),
(14, 35, 18, '2023-11-07 09:08:19', '2023-11-07 09:08:19'),
(15, 20, 46, '2023-11-07 09:08:19', '2023-11-07 09:08:19'),
(16, 50, 41, '2023-11-07 09:08:19', '2023-11-07 09:08:19'),
(17, 27, 24, '2023-11-07 09:08:19', '2023-11-07 09:08:19'),
(18, 47, 48, '2023-11-07 09:08:19', '2023-11-07 09:08:19'),
(19, 25, 48, '2023-11-07 09:08:19', '2023-11-07 09:08:19'),
(20, 46, 47, '2023-11-07 09:08:19', '2023-11-07 09:08:19'),
(21, 31, 25, '2023-11-07 09:08:19', '2023-11-07 09:08:19'),
(22, 44, 26, '2023-11-07 09:08:19', '2023-11-07 09:08:19'),
(23, 22, 22, '2023-11-07 09:08:19', '2023-11-07 09:08:19'),
(24, 16, 50, '2023-11-07 09:08:19', '2023-11-07 09:08:19'),
(25, 42, 31, '2023-11-07 09:08:19', '2023-11-07 09:08:19'),
(26, 15, 6, '2023-11-07 09:08:19', '2023-11-07 09:08:19'),
(27, 3, 5, '2023-11-07 09:08:19', '2023-11-07 09:08:19'),
(28, 21, 40, '2023-11-07 09:08:19', '2023-11-07 09:08:19'),
(29, 19, 10, '2023-11-07 09:08:19', '2023-11-07 09:08:19'),
(30, 24, 18, '2023-11-07 09:08:19', '2023-11-07 09:08:19'),
(31, 8, 7, '2023-11-07 09:08:19', '2023-11-07 09:08:19'),
(32, 33, 29, '2023-11-07 09:08:19', '2023-11-07 09:08:19'),
(33, 5, 30, '2023-11-07 09:08:19', '2023-11-07 09:08:19'),
(34, 10, 42, '2023-11-07 09:08:19', '2023-11-07 09:08:19'),
(35, 2, 5, '2023-11-07 09:08:19', '2023-11-07 09:08:19'),
(36, 13, 21, '2023-11-07 09:08:19', '2023-11-07 09:08:19'),
(37, 5, 15, '2023-11-07 09:08:19', '2023-11-07 09:08:19'),
(38, 13, 49, '2023-11-07 09:08:19', '2023-11-07 09:08:19'),
(39, 24, 33, '2023-11-07 09:08:19', '2023-11-07 09:08:19'),
(40, 2, 21, '2023-11-07 09:08:19', '2023-11-07 09:08:19'),
(41, 28, 38, '2023-11-07 09:08:19', '2023-11-07 09:08:19'),
(42, 28, 4, '2023-11-07 09:08:19', '2023-11-07 09:08:19'),
(43, 4, 32, '2023-11-07 09:08:19', '2023-11-07 09:08:19'),
(44, 14, 18, '2023-11-07 09:08:19', '2023-11-07 09:08:19'),
(45, 40, 49, '2023-11-07 09:08:19', '2023-11-07 09:08:19'),
(46, 34, 10, '2023-11-07 09:08:19', '2023-11-07 09:08:19'),
(47, 35, 1, '2023-11-07 09:08:19', '2023-11-07 09:08:19'),
(48, 43, 29, '2023-11-07 09:08:19', '2023-11-07 09:08:19'),
(49, 24, 46, '2023-11-07 09:08:19', '2023-11-07 09:08:19'),
(50, 2, 30, '2023-11-07 09:08:19', '2023-11-07 09:08:19'),
(51, 51, 48, NULL, NULL),
(52, 51, 49, NULL, NULL),
(53, 51, 50, NULL, NULL),
(54, 1, 30, NULL, NULL),
(55, 2, 3, NULL, NULL),
(56, 2, 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_11_07_130109_create_flowers_table', 1),
(6, '2023_11_07_130132_create_regions_table', 1),
(7, '2023_11_07_153022_create_flower_regions_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_reset_tokens`
--

CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `regions`
--

CREATE TABLE IF NOT EXISTS `regions` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `flower_id` bigint(20) UNSIGNED NOT NULL,
  `region_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `regions_flower_id_foreign` (`flower_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `regions`
--

INSERT INTO `regions` (`id`, `flower_id`, `region_name`, `created_at`, `updated_at`) VALUES
(1, 47, 'North Katlynn', '2023-11-07 09:08:19', '2023-11-07 09:08:19'),
(2, 18, 'Herzogburgh', '2023-11-07 09:08:19', '2023-11-07 09:08:19'),
(3, 45, 'South Elainatown', '2023-11-07 09:08:19', '2023-11-07 09:08:19'),
(4, 42, 'Hammesview', '2023-11-07 09:08:19', '2023-11-07 09:08:19'),
(5, 24, 'West Josefa', '2023-11-07 09:08:19', '2023-11-07 09:08:19'),
(6, 6, 'Nathenport', '2023-11-07 09:08:19', '2023-11-07 09:08:19'),
(7, 44, 'Sigurdland', '2023-11-07 09:08:19', '2023-11-07 09:08:19'),
(8, 2, 'Port Alexandro', '2023-11-07 09:08:19', '2023-11-07 09:08:19'),
(9, 9, 'South Hettieview', '2023-11-07 09:08:19', '2023-11-07 09:08:19'),
(10, 1, 'South Santosfurt', '2023-11-07 09:08:19', '2023-11-07 09:08:19'),
(11, 35, 'Bartolettiport', '2023-11-07 09:08:19', '2023-11-07 09:08:19'),
(12, 11, 'Port Dorthy', '2023-11-07 09:08:19', '2023-11-07 09:08:19'),
(13, 1, 'Marksfurt', '2023-11-07 09:08:19', '2023-11-07 09:08:19'),
(14, 37, 'Kutchshire', '2023-11-07 09:08:19', '2023-11-07 09:08:19'),
(15, 5, 'Port Cloydton', '2023-11-07 09:08:19', '2023-11-07 09:08:19'),
(16, 40, 'Kohlerstad', '2023-11-07 09:08:19', '2023-11-07 09:08:19'),
(17, 2, 'Devonhaven', '2023-11-07 09:08:19', '2023-11-07 09:08:19'),
(18, 22, 'East Kennedi', '2023-11-07 09:08:19', '2023-11-07 09:08:19'),
(19, 5, 'North Carliemouth', '2023-11-07 09:08:19', '2023-11-07 09:08:19'),
(20, 11, 'New Frederic', '2023-11-07 09:08:19', '2023-11-07 09:08:19'),
(21, 33, 'South Alexanne', '2023-11-07 09:08:19', '2023-11-07 09:08:19'),
(22, 32, 'Konopelskiport', '2023-11-07 09:08:19', '2023-11-07 09:08:19'),
(23, 26, 'Johnstonside', '2023-11-07 09:08:19', '2023-11-07 09:08:19'),
(24, 28, 'New Joey', '2023-11-07 09:08:19', '2023-11-07 09:08:19'),
(25, 48, 'Blancaburgh', '2023-11-07 09:08:19', '2023-11-07 09:08:19'),
(26, 6, 'Lake Arnulfo', '2023-11-07 09:08:19', '2023-11-07 09:08:19'),
(27, 25, 'Treutelburgh', '2023-11-07 09:08:19', '2023-11-07 09:08:19'),
(28, 47, 'Dulcemouth', '2023-11-07 09:08:19', '2023-11-07 09:08:19'),
(29, 26, 'Connellybury', '2023-11-07 09:08:19', '2023-11-07 09:08:19'),
(30, 39, 'Emmanuelfort', '2023-11-07 09:08:19', '2023-11-07 09:08:19'),
(31, 14, 'West Rahsaan', '2023-11-07 09:08:19', '2023-11-07 09:08:19'),
(32, 49, 'New Hayliemouth', '2023-11-07 09:08:19', '2023-11-07 09:08:19'),
(33, 23, 'Wildermanbury', '2023-11-07 09:08:19', '2023-11-07 09:08:19'),
(34, 43, 'Swaniawskiview', '2023-11-07 09:08:19', '2023-11-07 09:08:19'),
(35, 47, 'East Nicole', '2023-11-07 09:08:19', '2023-11-07 09:08:19'),
(36, 39, 'East Jewell', '2023-11-07 09:08:19', '2023-11-07 09:08:19'),
(37, 47, 'Kshlerinbury', '2023-11-07 09:08:19', '2023-11-07 09:08:19'),
(38, 38, 'Hettingerland', '2023-11-07 09:08:19', '2023-11-07 09:08:19'),
(39, 12, 'Roweton', '2023-11-07 09:08:19', '2023-11-07 09:08:19'),
(40, 17, 'Lexiside', '2023-11-07 09:08:19', '2023-11-07 09:08:19'),
(41, 7, 'Lewisburgh', '2023-11-07 09:08:19', '2023-11-07 09:08:19'),
(42, 27, 'Jaskolskiton', '2023-11-07 09:08:19', '2023-11-07 09:08:19'),
(43, 7, 'Marcellusfort', '2023-11-07 09:08:19', '2023-11-07 09:08:19'),
(44, 19, 'Clayview', '2023-11-07 09:08:19', '2023-11-07 09:08:19'),
(45, 2, 'Jastfort', '2023-11-07 09:08:19', '2023-11-07 09:08:19'),
(46, 46, 'Port Ernestinestad', '2023-11-07 09:08:19', '2023-11-07 09:08:19'),
(47, 24, 'Gradyfort', '2023-11-07 09:08:19', '2023-11-07 09:08:19'),
(48, 32, 'Lake Domenicaside', '2023-11-07 09:08:19', '2023-11-07 09:08:19'),
(49, 44, 'Sheaburgh', '2023-11-07 09:08:19', '2023-11-07 09:08:19'),
(50, 34, 'Kodyland', '2023-11-07 09:08:19', '2023-11-07 09:08:19');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `flower_regions`
--
ALTER TABLE `flower_regions`
  ADD CONSTRAINT `flower_regions_flower_id_foreign` FOREIGN KEY (`flower_id`) REFERENCES `flowers` (`id`),
  ADD CONSTRAINT `flower_regions_region_id_foreign` FOREIGN KEY (`region_id`) REFERENCES `regions` (`id`);

--
-- Các ràng buộc cho bảng `regions`
--
ALTER TABLE `regions`
  ADD CONSTRAINT `regions_flower_id_foreign` FOREIGN KEY (`flower_id`) REFERENCES `flowers` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
