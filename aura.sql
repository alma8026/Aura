-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 25-05-2023 a las 18:34:38
-- Versión del servidor: 8.0.33-0ubuntu0.22.04.2
-- Versión de PHP: 8.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `aura`
--
CREATE DATABASE IF NOT EXISTS `aura`;
USE `aura`;

--
-- Volcado de datos para la tabla `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Cars', '2023-05-09 13:49:23', '2023-05-09 13:49:23'),
(2, 'Sports', '2023-05-09 13:49:23', '2023-05-09 13:49:23'),
(3, 'Books', '2023-05-09 13:49:23', '2023-05-09 13:49:23'),
(4, 'Series', '2023-05-09 13:49:23', '2023-05-09 13:49:23'),
(5, 'Games', '2023-05-09 13:49:23', '2023-05-09 13:49:23'),
(7, 'Furniture', NULL, NULL),
(8, 'Others', NULL, NULL);

--
-- Volcado de datos para la tabla `chat_messages`
--

CREATE TABLE IF NOT EXISTS `chat_messages` (
  `id` INT AUTO_INCREMENT,
  `dest_user` INT NOT NULL,
  `sender_user` INT NOT NULL,
  `message` TEXT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `chat_messages` (`id`, `dest_user`, `sender_user`, `message`) VALUES
(1, 3, 10, 'hola pau'),
(2, 10, 3, 'hola alx'),
(3, 10, 3, 'asd'),
(4, 10, 3, 'asd'),
(5, 3, 10, 'funciona?'),
(6, 10, 3, 'si funciona :D'),
(7, 4, 10, 'hola'),
(8, 4, 10, 'dfgkhgfhdfyh'),
(9, 4, 10, 'a'),
(10, 3, 7, 'hola, me gustaria el coche'),
(11, 4, 3, 'hola quiero el libro'),
(12, 3, 10, 'asdsadasd'),
(13, 4, 10, 'asdg'),
(14, 2, 4, 'hola'),
(15, 2, 4, 'fgh'),
(16, 2, 4, 'hola'),
(17, 3, 13, 'Probandooooo'),
(18, 3, 13, 'Hola hola'),
(19, 3, 13, 'Eh ehhhhh'),
(20, 13, 3, 'Holaaaaa'),
(21, 4, 10, 'asd'),
(22, 5, 13, 'Hola. Me interesa reservar este producto.'),
(23, 3, 13, 'Holaaaaaa'),
(24, 7, 13, 'Hola. Quiero reservar este producto.'),
(25, 3, 13, 'a'),
(26, 3, 13, 'asd'),
(27, 15, 14, 'Buenas'),
(28, 15, 14, 'Me interesan tus lechugas'),
(29, 14, 15, 'Oh, Perfecto, me interesan!'),
(30, 3, 13, 'aaaaaaaaaaa'),
(31, 13, 3, 'asd'),
(32, 4, 9, 'hola'),
(33, 4, 13, 'a'),
(34, 4, 14, 'a'),
(35, 3, 13, 'a'),
(36, 3, 13, 'hola'),
(37, 3, 13, 'funciona'),
(38, 3, 13, 'a'),
(39, 3, 13, 'm'),
(40, 15, 14, 'test'),
(41, 3, 13, 'a'),
(42, 10, 13, 'Hi'),
(43, 13, 12, 'wawa webo'),
(44, 5, 16, 'hola jessica'),
(45, 4, 1, 'VAMO A VE'),
(46, 4, 1, 'BUENO DIAh'),
(47, 3, 1, 'uwu'),
(48, 3, 1, 'gqafgaga'),
(49, 4, 10, 'quiero eso'),
(50, 10, 4, 'que tu quiere'),
(51, 10, 4, 'f'),
(52, 5, 10, 'hola'),
(53, 12, 13, 'Estoy interesada.');

--
-- Volcado de datos para la tabla `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `id` INT AUTO_INCREMENT,
  `migration` VARCHAR(255) NOT NULL,
  `batch` INT NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0000_00_00_000000_create_websockets_statistics_entries_table', 1),
(2, '2014_10_12_000000_create_users_table', 1),
(3, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_03_24_121002_create_permission_tables', 1),
(7, '2023_03_24_121256_create_products_table', 1),
(8, '2023_03_24_122146_create_frequent_questions_table', 1),
(9, '2023_03_24_122231_create_categories_table', 1),
(10, '2023_03_24_122320_create_product_reviews_table', 1),
(11, '2023_03_24_122537_users_has_products', 1),
(12, '2023_03_24_122701_users_like_products', 1),
(13, '2023_03_24_122743_users_like_users', 1);

--
-- Volcado de datos para la tabla `model_has_roles`
--

CREATE TABLE IF NOT EXISTS `model_has_roles` (
  `role_id` INT NOT NULL,
  `model_type` VARCHAR(255) NOT NULL,
  `model_id` INT NOT NULL,
  PRIMARY KEY (`role_id`, `model_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 3),
(2, 'App\\Models\\User', 4),
(2, 'App\\Models\\User', 5),
(2, 'App\\Models\\User', 6),
(2, 'App\\Models\\User', 8),
(2, 'App\\Models\\User', 9),
(2, 'App\\Models\\User', 10),
(2, 'App\\Models\\User', 11),
(2, 'App\\Models\\User', 12),
(2, 'App\\Models\\User', 13),
(2, 'App\\Models\\User', 14),
(2, 'App\\Models\\User', 15),
(2, 'App\\Models\\User', 16);

--
-- Volcado de datos para la tabla `products`
--
CREATE TABLE IF NOT EXISTS `products` (
  `id` INT AUTO_INCREMENT,
  `title` VARCHAR(255) NOT NULL,
  `img` VARCHAR(255) NOT NULL,
  `price` DECIMAL(10,2) NOT NULL,
  `description` TEXT NOT NULL,
  `category` VARCHAR(255) NOT NULL,
  `lat` DOUBLE NOT NULL,
  `lng` DOUBLE NOT NULL,
  `user_id` INT NOT NULL,
  `created_at` DATETIME NOT NULL,
  `updated_at` DATETIME NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `products` (`id`, `title`, `img`, `price`, `description`, `category`, `lat`, `lng`, `user_id`, `created_at`, `updated_at`) VALUES
(6, 'bloodborn', 'http://localhost:8000/api/image/3_6.png', 33, 'juego estilo souls, en condiciones  y usado pocas veces', 'Games', 51.68383814650335, -0.6118011474609376, '3', '2023-05-09 15:44:24', '2023-05-09 15:44:24'),
(7, 'por trece razones', 'http://localhost:8000/api/image/3_7.png', 30, 'libro de intriga y misterio, en buen estado', 'Books', 17.392579271057766, -1.1425781250000002, '3', '2023-05-09 15:46:49', '2023-05-09 15:46:49'),
(8, 'coche de bodas', 'http://localhost:8000/api/image/3_8.png', 500, 'Coches de alquiler para bodas durante 24h. en buene stado y lo entregamos con  gasolina llena', 'Cars', 36.681636065615216, -6.134490966796876, '3', '2023-05-09 15:50:55', '2023-05-09 15:50:55'),
(10, 'TerraFormas temp1', 'http://localhost:8000/api/image/3_9.png', 40, 'primera temporada de la serie terraformas. sin usar y en estado decente', 'Series', 36.72457610850298, 2.9924011230468754, '3', '2023-05-09 15:58:29', '2023-05-09 15:58:29'),
(12, 'futbol', 'http://localhost:8000/api/image/3_11.png', 5, 'pelota de futbol para jugar gasta pero funciona', 'Sports', 39.53793974517628, -0.5273437500000001, '3', '2023-05-09 16:04:13', '2023-05-09 16:04:13'),
(13, 'piso para dos', 'http://localhost:8000/api/image/4_13.png', 23, 'libro de comedia y romance entre la protagonista y su compañero de piso. el libro esta en buen estado', 'Books', 43.004647127794435, -7.525634765625001, '4', '2023-05-09 16:07:57', '2023-05-09 16:07:57'),
(14, 'the last of us', 'http://localhost:8000/api/image/4_14.png', 20, 'juego de tension. seminuevo y en buen estado', 'Games', 42.73087427928485, -8.569335937500002, '4', '2023-05-09 16:09:10', '2023-05-09 16:09:10'),
(15, 'prision break season2', 'http://localhost:8000/api/image/4_15.png', 14, 'temporada dos de la serie preason break', 'Series', 42.84475822992461, -2.6696777343750004, '4', '2023-05-09 16:11:31', '2023-05-09 16:11:31'),
(16, 'coche antiguo', 'http://localhost:8000/api/image/4_16.png', 2350, 'coche antiguo en funcionamiento. semi nuevo y en buen estado', 'Cars', 41.65649719441145, -0.8789062500000001, '4', '2023-05-09 16:12:46', '2023-05-09 16:12:46'),
(17, 'palas de ping pong', 'http://localhost:8000/api/image/4_17.png', 12, 'palas de ping pong en buen estado y poco usadas', 'Sports', 41.65470159090441, -0.8565902709960938, '4', '2023-05-09 16:14:45', '2023-05-09 16:14:45'),
(18, 'consola switch', 'http://localhost:8000/api/image/5_18.png', 250, 'nintemdo switch en buen estado y sin usar', 'Games', 41.989991251768814, 1.5179157257080078, '5', '2023-05-09 16:21:05', '2023-05-09 16:21:05'),
(19, 'pack de pesas para casa', 'http://localhost:8000/api/image/5_19.png', 60, 'pack de pesas en buen estado, poco usadas', 'Sports', 41.51474739095224, 2.1217346191406254, '5', '2023-05-09 16:22:16', '2023-05-09 16:22:16'),
(20, 'one piece cap 87 al 89', 'http://localhost:8000/api/image/5_20.png', 10, 'managas 87, 88, 89 one piece, en buen estado', 'Books', 41.35207214451295, 2.1203613281250004, '5', '2023-05-09 16:23:19', '2023-05-09 16:23:19'),
(21, 'kill a kill temp1', 'http://localhost:8000/api/image/5_21.png', 12, 'temporada1 de la serie kill a kill', 'Series', 41.367404680198604, 2.1275711059570317, '5', '2023-05-09 16:24:33', '2023-05-09 16:24:33'),
(22, 'Voisin C-25 Aérodyne', 'http://localhost:8000/api/image/5_22.png', 4780, 'coche voisin, reparado hace poco', 'Cars', 41.29638081886435, 2.079849243164063, '5', '2023-05-09 16:27:35', '2023-05-09 16:27:35'),
(28, 'Silksong', 'http://localhost:8000/api/image/3_23.png', 59, 'Hollow Knight: Silksong is the epic sequel to Hollow Knight, the award winning action-adventure.', 'Games', 35.889050079360935, 138.51562500000003, '3', '2023-05-24 16:58:04', '2023-05-24 16:58:04'),
(29, 'SEAT Ibiza 1.9 TDI', 'http://localhost:8000/api/image/10_29.png', 1500, 'SEAT Ibiza 1.9 TDI a good car.', 'Cars', 51.67255514839676, -0.3515625, '10', '2023-05-24 17:00:57', '2023-05-24 17:00:57'),
(30, 'Berserk Volume 1', 'http://localhost:8000/api/image/10_30.png', 12, 'The volume 1 of a manga created by Kentaro Miura.', 'Books', 41.45301999377133, 2.2521972656250004, '10', '2023-05-24 17:03:11', '2023-05-24 17:03:11'),
(31, 'Volleyball ball', 'http://localhost:8000/api/image/10_31.png', 14, 'A volleyball ball in good state', 'Sports', 40.34654412118006, -3.6914062500000004, '10', '2023-05-24 17:06:01', '2023-05-24 17:06:01'),
(33, 'Impresora Canon', 'http://localhost:8000/api/image/13_33.png', 90, 'Impresora wireless, color rosa', 'Furniture', 41.36293574789545, 2.114803791046143, '13', '2023-05-24 17:29:58', '2023-05-24 17:29:58'),
(34, 'Lechugas', 'http://localhost:8000/api/image/15_34.png', 100, 'Lechugas frescas', 'Games', 41.36688935951691, 2.1232795715332036, '15', '2023-05-24 17:55:32', '2023-05-24 17:55:32'),
(36, 'Chopper', 'http://localhost:8000/api/image/12_35.png', 41, 'Un peluche de Chopper en buen estado y con su librito de medicina (es cabezón)', 'Furniture', -20.305888692138858, 57.51700537731683, '12', '2023-05-24 20:35:28', '2023-05-25 16:46:48'),
(37, 'agario', 'http://localhost:8000/api/image/16_37.png', 5000, '1 hora de practicas conmigo', 'Sports', 41.36293574789545, 2.114803791046143, '16', '2023-05-24 21:03:17', '2023-05-24 21:03:17'),
(38, 'Hamster', 'http://localhost:8000/api/image/12_38.png', 864, 'Hamster con patas (un bebé)', 'Cars', -3.661344576515965, -72.06563830009726, '12', '2023-05-25 17:11:55', '2023-05-25 17:13:22');

--
-- Volcado de datos para la tabla `roles`
--

CREATE TABLE IF NOT EXISTS `roles` (
  `id` INT AUTO_INCREMENT,
  `name` VARCHAR(255) NOT NULL,
  `guard_name` VARCHAR(255) NOT NULL,
  `created_at` DATETIME NOT NULL,
  `updated_at` DATETIME NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'web', '2023-05-09 13:49:23', '2023-05-09 13:49:23'),
(2, 'user', 'web', '2023-05-09 13:49:23', '2023-05-09 13:49:23');

--
-- Volcado de datos para la tabla `started_chats`
--

CREATE TABLE IF NOT EXISTS `started_chats` (
  `id` INT AUTO_INCREMENT,
  `user1` INT NOT NULL,
  `user2` INT NOT NULL,
  `updated_at` DATE NOT NULL,
  `created_at` DATE NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `started_chats` (`id`, `user1`, `user2`, `updated_at`, `created_at`) VALUES
(1, 10, 3, '2023-05-23', '2023-05-23'),
(2, 13, 5, '2023-05-24', '2023-05-24'),
(3, 14, 15, '2023-05-24', '2023-05-24'),
(4, 9, 4, '2023-05-24', '2023-05-24'),
(7, 13, 3, '2023-05-24', '2023-05-24'),
(8, 13, 10, '2023-05-24', '2023-05-24'),
(9, 12, 13, '2023-05-24', '2023-05-24'),
(10, 16, 5, '2023-05-24', '2023-05-24'),
(11, 1, 4, '2023-05-25', '2023-05-25'),
(12, 1, 3, '2023-05-25', '2023-05-25'),
(14, 4, 10, '2023-05-25', '2023-05-25'),
(15, 10, 5, '2023-05-25', '2023-05-25');

--
-- Volcado de datos para la tabla `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` INT AUTO_INCREMENT,
  `name` VARCHAR(255) NOT NULL,
  `lastname` VARCHAR(255) NOT NULL,
  `email` VARCHAR(255) NOT NULL,
  `password` VARCHAR(255) NOT NULL,
  `birthdate` DATE NOT NULL,
  `icon` VARCHAR(255),
  `role` VARCHAR(50) NOT NULL,
  `created_at` DATETIME NOT NULL,
  `updated_at` DATETIME NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `users` (`id`, `name`, `lastname`, `email`, `password`, `birthdate`, `icon`, `role`, `created_at`, `updated_at`) VALUES
(1, 'Alejandro', 'Martinez', 'alejandro@gmail.com', 'admin777', '2003-08-07', 'http://localhost:8000/api/image/1_iconv=34.png', 'admin', '2023-05-09 13:49:23', '2023-05-23 17:19:27'),
(3, 'pau', 'lopez', 'pau@gmail.com', 'ssecreet', '2000-01-01', 'http://localhost:8000/api/image/1_iconv=34.png', 'user', '2023-05-09 13:49:24', '2023-05-09 13:49:24'),
(4, 'laura', 'mendiga', 'laura@gmail.com', 'lmendi1234', '2000-01-01', 'http://localhost:8000/api/image/1_iconv=34.png', 'user', '2023-05-09 13:49:24', '2023-05-09 13:49:24'),
(5, 'jessica', 'torres', 'jess@gmail.com', 'jtorre4567', '2000-01-01', 'http://localhost:8000/api/image/6_icon.png', 'user', '2023-05-09 13:49:24', '2023-05-10 09:50:08'),
(8, 'Inés María', 'González Íñigo', 'ines@gmail.com', '12345678', '1000-01-01', 'http://localhost:8000/api/image/8_icon.png', 'user', '2023-05-19 09:18:24', '2023-05-19 09:20:57'),
(9, 'Josefa', 'uwuwuwu', 'test@gmail.com', 'aaaaaaaa', '2003-10-22', 'http://localhost:8000/api/image/9_icon.png', 'user', '2023-05-19 14:29:36', '2023-05-19 14:29:36'),
(10, 'alx', 'gold', 'alx@gmail.com', 'asdasdasd', '0001-11-11', 'http://localhost:8000/api/image/10_iconv=35.png', 'user', '2023-05-22 10:59:49', '2023-05-23 14:04:20'),
(12, 'Jovani', 'Vázquez', 'waaaaa.1.aaaaaa@gmail.com', 'pitoflautas', '2000-09-05', 'http://localhost:8000/api/image/11_icon.png', 'user', '2023-05-23 21:11:12', '2023-05-25 16:50:47'),
(13, 'Maru', 'AS', 'mas@hotmail.com', '12345678', '1967-02-19', 'http://localhost:8000/api/image/13_icon.png', 'user', '2023-05-24 17:19:11', '2023-05-24 17:19:11'),
(14, 'Juanmiguel', 'Albertojuan', 'libelula1@gmail.com', 'aaaaaaaa', '1994-06-15', 'http://localhost:8000/api/image/14_icon.png', 'user', '2023-05-24 17:51:31', '2023-05-24 17:51:31'),
(15, 'lubina', 'ugunt', 'libelula2@gmail.com', 'aaaaaaaa', '2000-09-04', 'http://localhost:8000/api/image/15_icon.png', 'user', '2023-05-24 17:54:08', '2023-05-24 17:54:08'),
(16, 'pepe', 'pepito', 'to@gmail.com', 'tttttttt', '1981-12-01', 'http://localhost:8000/api/image/16_icon.png', 'user', '2023-05-24 20:55:35', '2023-05-24 21:05:12');

--
-- Volcado de datos para la tabla `users_like_products`
--

CREATE TABLE IF NOT EXISTS `users_like_products` (
  `id` INT AUTO_INCREMENT,
  `id_user` INT NOT NULL,
  `id_product` INT NOT NULL,
  `created_at` DATETIME NOT NULL,
  `updated_at` DATETIME NOT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`id_user`) REFERENCES `users`(`id`),
  FOREIGN KEY (`id_product`) REFERENCES `products`(`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `users_like_products` (`id`, `id_user`, `id_product`, `created_at`, `updated_at`) VALUES
(13, 3, 10, '2023-05-18 15:15:30', '2023-05-18 15:15:30'),
(15, 3, 7, '2023-05-18 15:20:00', '2023-05-18 15:20:00'),
(18, 8, 6, '2023-05-19 11:04:31', '2023-05-19 11:04:31'),
(19, 8, 8, '2023-05-19 11:05:15', '2023-05-19 11:05:15'),
(21, 8, 20, '2023-05-19 11:07:07', '2023-05-19 11:07:07'),
(23, 9, 7, '2023-05-20 15:44:42', '2023-05-20 15:44:42'),
(24, 9, 20, '2023-05-20 15:44:44', '2023-05-20 15:44:44'),
(37, 10, 8, '2023-05-24 18:45:31', '2023-05-24 18:45:31'),
(38, 10, 7, '2023-05-24 18:47:58', '2023-05-24 18:47:58'),
(39, 1, 10, '2023-05-24 20:57:54', '2023-05-24 20:57:54'),
(56, 3, 10, '2023-05-25 12:15:06', '2023-05-25 12:15:06'),
(72, 10, 20, '2023-05-25 16:51:44', '2023-05-25 16:51:44'),
(73, 9, 7, '2023-05-25 17:15:04', '2023-05-25 17:15:04');

--
-- Volcado de datos para la tabla `users_like_users`
--

CREATE TABLE IF NOT EXISTS `users_like_users` (
  `id` INT AUTO_INCREMENT,
  `user_clicks` INT NOT NULL,
  `user_saved` INT NOT NULL,
  `created_at` DATETIME NOT NULL,
  `updated_at` DATETIME NOT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`user_clicks`) REFERENCES `users`(`id`),
  FOREIGN KEY (`user_saved`) REFERENCES `users`(`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `users_like_users` (`id`, `user_clicks`, `user_saved`, `created_at`, `updated_at`) VALUES
(7, 5, 3, '2023-05-20 15:46:42', '2023-05-20 15:46:42'),
(9, 5, 8, '2023-05-20 15:56:17', '2023-05-20 15:56:17'),
(15, 1, 3, '2023-05-25 08:57:02', '2023-05-25 08:57:02'),
(17, 1, 12, '2023-05-25 14:26:44', '2023-05-25 14:26:44'),
(18, 10, 12, '2023-05-25 16:40:13', '2023-05-25 16:40:13');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;