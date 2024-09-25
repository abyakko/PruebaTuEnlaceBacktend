-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-09-2024 a las 07:36:30
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `productostuenlace`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_09_24_213753_create_personal_access_tokens_table', 1),
(5, '2024_09_24_220025_create_products_table', 1),
(6, '2024_09_24_220150_create_searches_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `description` text NOT NULL,
  `category` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `rating_rate` decimal(3,1) NOT NULL,
  `rating_count` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `title`, `price`, `description`, `category`, `image`, `rating_rate`, `rating_count`, `created_at`, `updated_at`) VALUES
(1, 'a', 8.50, 'nada', '4', '', 1.5, 5, NULL, NULL),
(2, 'Graphic T-Shirt', 19.99, 'Comfortable cotton t-shirt with a cool graphic design.', 'clothing', 'https://example.com/tshirt.jpg', 4.7, 200, NULL, NULL),
(3, 'Winter Jacket', 89.99, 'Warm and insulated jacket for cold weather.', 'clothing', 'https://example.com/jacket.jpg', 4.6, 180, NULL, NULL),
(4, 'Diamond Ring', 299.99, 'Elegant diamond ring, perfect for special occasions.', 'jewelry', 'https://example.com/ring.jpg', 4.9, 80, NULL, NULL),
(5, 'Leather Wallet', 49.99, 'Classic leather wallet with multiple card slots.', 'accessories', 'https://example.com/wallet.jpg', 4.5, 120, NULL, NULL),
(6, 'Running Sneakers', 65.99, 'Lightweight sneakers designed for running.', 'footwear', 'https://example.com/sneakers.jpg', 4.8, 220, NULL, NULL),
(7, 'Coffee Maker', 39.99, 'Brew delicious coffee at home with this maker.', 'kitchen', 'https://example.com/coffeemaker.jpg', 4.4, 150, NULL, NULL),
(8, 'Yoga Mat', 25.00, 'Non-slip yoga mat for comfortable workouts.', 'sports', 'https://example.com/yogamat.jpg', 4.7, 190, NULL, NULL),
(9, 'Wireless Headphones', 79.99, 'High-quality wireless headphones for music lovers.', 'electronics', 'https://example.com/headphones.jpg', 4.6, 300, NULL, NULL),
(10, 'Smart Watch', 149.99, 'Track your fitness and stay connected.', 'electronics', 'https://example.com/smartwatch.jpg', 4.5, 250, NULL, NULL),
(11, 'Sunglasses', 29.99, 'Stylish sunglasses with UV protection.', 'accessories', 'https://example.com/sunglasses.jpg', 4.3, 200, NULL, NULL),
(12, 'Gaming Mouse', 39.99, 'Ergonomic gaming mouse for an enhanced experience.', 'electronics', 'https://example.com/gamingmouse.jpg', 4.8, 150, NULL, NULL),
(13, 'Blender', 59.99, 'Blend smoothies and soups with this powerful blender.', 'kitchen', 'https://example.com/blender.jpg', 4.5, 180, NULL, NULL),
(14, 'Electric Kettle', 39.99, 'Boil water quickly and efficiently.', 'kitchen', 'https://example.com/electrickettle.jpg', 4.6, 200, NULL, NULL),
(15, 'Portable Speaker', 49.99, 'Enjoy music on the go with this portable speaker.', 'electronics', 'https://example.com/speaker.jpg', 4.4, 210, NULL, NULL),
(16, 'Camping Tent', 89.99, 'Durable tent for camping trips.', 'outdoor', 'https://example.com/tent.jpg', 4.7, 130, NULL, NULL),
(17, 'Folding Chair', 25.00, 'Convenient folding chair for outdoor activities.', 'outdoor', 'https://example.com/chair.jpg', 4.3, 160, NULL, NULL),
(18, 'Water Bottle', 15.00, 'Stay hydrated with this reusable water bottle.', 'sports', 'https://example.com/waterbottle.jpg', 4.5, 170, NULL, NULL),
(19, 'Backpack Cooler', 45.00, 'Perfect for picnics, keeps your drinks cool.', 'outdoor', 'https://example.com/coolerbackpack.jpg', 4.6, 120, NULL, NULL),
(20, 'Wrist Watch', 99.99, 'Stylish wrist watch for daily wear.', 'jewelry', 'https://example.com/wristwatch.jpg', 4.5, 140, NULL, NULL),
(21, 'Karaoke Machine', 120.00, 'Enjoy karaoke nights with friends and family.', 'electronics', 'https://example.com/karaokemachine.jpg', 4.8, 110, NULL, NULL),
(22, 'Indoor Plant', 25.99, 'Bring life to your home with this indoor plant.', 'home', 'https://example.com/indoorplant.jpg', 4.7, 90, NULL, NULL),
(23, 'Yoga Block', 15.00, 'Support your yoga practice with this block.', 'sports', 'https://example.com/yogablock.jpg', 4.5, 130, NULL, NULL),
(24, 'Pet Carrier', 39.99, 'Travel with your pet comfortably.', 'pets', 'https://example.com/petcarrier.jpg', 4.6, 140, NULL, NULL),
(25, 'Guitar', 199.99, 'Learn to play with this beginner-friendly guitar.', 'music', 'https://example.com/guitar.jpg', 4.5, 80, NULL, NULL),
(26, 'Bike Lock', 25.00, 'Secure your bike with this heavy-duty lock.', 'accessories', 'https://example.com/bikelock.jpg', 4.4, 150, NULL, NULL),
(27, 'Electric Toothbrush', 49.99, 'Keep your teeth clean with this electric toothbrush.', 'health', 'https://example.com/toothbrush.jpg', 4.6, 200, NULL, NULL),
(28, 'Digital Camera', 499.99, 'Capture moments with this high-quality camera.', 'electronics', 'https://example.com/camera.jpg', 4.8, 60, NULL, NULL),
(29, 'Home Exercise Kit', 69.99, 'Complete kit for home workouts.', 'sports', 'https://example.com/exercisekit.jpg', 4.5, 110, NULL, NULL),
(30, 'LED Desk Lamp', 30.00, 'Brighten your workspace with this LED lamp.', 'furniture', 'https://example.com/deskamp.jpg', 4.4, 90, NULL, NULL),
(31, 'Pasta Maker', 60.00, 'Make fresh pasta at home with ease.', 'kitchen', 'https://example.com/pastamaker.jpg', 4.5, 120, NULL, NULL),
(32, 'Portable Charger', 29.99, 'Never run out of battery on the go.', 'electronics', 'https://example.com/portablecharger.jpg', 4.6, 150, NULL, NULL),
(33, 'Multi-Tool', 45.00, 'Versatile multi-tool for outdoor adventures.', 'tools', 'https://example.com/multitool.jpg', 4.7, 110, NULL, NULL),
(34, 'Kids Bicycle', 120.00, 'Fun and safe bicycle for kids.', 'toys', 'https://example.com/kidsbicycle.jpg', 4.5, 100, NULL, NULL),
(35, 'Electric Grill', 99.99, 'Grill indoors with this electric grill.', 'kitchen', 'https://example.com/electricgrill.jpg', 4.6, 150, NULL, NULL),
(36, 'Food Processor', 85.00, 'Chop, slice, and puree with this food processor.', 'kitchen', 'https://example.com/foodprocessor.jpg', 4.4, 120, NULL, NULL),
(37, 'Massage Gun', 99.99, 'Relieve muscle soreness with this massage gun.', 'health', 'https://example.com/massagegun.jpg', 4.8, 90, NULL, NULL),
(38, 'Smart Doorbell', 149.99, 'Keep your home secure with this smart doorbell.', 'electronics', 'https://example.com/smartdoorbell.jpg', 4.7, 80, NULL, NULL),
(39, 'Car Vacuum Cleaner', 49.99, 'Keep your car clean with this vacuum.', 'automotive', 'https://example.com/carvacuum.jpg', 4.5, 100, NULL, NULL),
(40, 'Bluetooth Speaker', 59.99, 'Take your music anywhere with this speaker.', 'electronics', 'https://example.com/bluetoothspeaker.jpg', 4.4, 150, NULL, NULL),
(41, 'Heated Blanket', 70.00, 'Stay warm with this cozy heated blanket.', 'home', 'https://example.com/heatedblanket.jpg', 4.6, 110, NULL, NULL),
(42, 'Air Fryer', 89.99, 'Cook healthier meals with this air fryer.', 'kitchen', 'https://example.com/airfryer.jpg', 4.5, 140, NULL, NULL),
(43, 'Portable Fire Pit', 99.99, 'Enjoy outdoor gatherings with this fire pit.', 'outdoor', 'https://example.com/firepit.jpg', 4.8, 120, NULL, NULL),
(44, 'Fitness Tracker', 45.00, 'Monitor your activity and sleep with this tracker.', 'electronics', 'https://example.com/fitnesstracker.jpg', 4.6, 200, NULL, NULL),
(45, 'Camping Stove', 59.99, 'Cook meals while camping with this portable stove.', 'outdoor', 'https://example.com/campingstove.jpg', 4.5, 100, NULL, NULL),
(46, 'Rain Jacket', 49.99, 'Stay dry with this lightweight rain jacket.', 'clothing', 'https://example.com/rainjacket.jpg', 4.6, 130, NULL, NULL),
(47, 'Desk Organizer', 25.00, 'Keep your workspace tidy with this organizer.', 'furniture', 'https://example.com/deskorganizer.jpg', 4.4, 110, NULL, NULL),
(48, 'Wall Art', 30.00, 'Decorate your walls with this beautiful art piece.', 'home', 'https://example.com/wallart.jpg', 4.5, 90, NULL, NULL),
(49, 'Bluetooth Earbuds', 79.99, 'Experience wireless freedom with these earbuds.', 'electronics', 'https://example.com/earbuds.jpg', 4.7, 250, NULL, NULL),
(50, 'Electric Skateboard', 499.99, 'Fun and fast electric skateboard for outdoor rides.', 'toys', 'https://example.com/electricskateboard.jpg', 4.6, 70, NULL, NULL),
(51, 'Stylish Backpack', 29.99, 'A stylish and spacious backpack for everyday use.', 'accessories', 'https://example.com/backpack.jpg', 4.5, 150, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `searches`
--

CREATE TABLE `searches` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `search_term` varchar(255) NOT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `searches`
--

INSERT INTO `searches` (`id`, `search_term`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 'backpack', 1, NULL, NULL),
(2, 't-shirt', 2, NULL, NULL),
(3, 'jacket', 3, NULL, NULL),
(4, 'diamond ring', 4, NULL, NULL),
(5, 'wallet', 5, NULL, NULL),
(6, 'sneakers', 6, NULL, NULL),
(7, 'coffee maker', 7, NULL, NULL),
(8, 'yoga mat', 8, NULL, NULL),
(9, 'headphones', 9, NULL, NULL),
(10, 'smart watch', 10, NULL, NULL),
(11, 'sunglasses', 11, NULL, NULL),
(12, 'gaming mouse', 12, NULL, NULL),
(13, 'blender', 13, NULL, NULL),
(14, 'electric kettle', 14, NULL, NULL),
(15, 'portable speaker', 15, NULL, NULL),
(16, 'camping tent', 16, NULL, NULL),
(17, 'folding chair', 17, NULL, NULL),
(18, 'water bottle', 18, NULL, NULL),
(19, 'backpack cooler', 19, NULL, NULL),
(20, 'wrist watch', 20, NULL, NULL),
(21, 'karaoke machine', 21, NULL, NULL),
(22, 'indoor plant', 22, NULL, NULL),
(23, 'yoga block', 23, NULL, NULL),
(24, 'pet carrier', 24, NULL, NULL),
(25, 'guitar', 25, NULL, NULL),
(26, 'bike lock', 26, NULL, NULL),
(27, 'electric toothbrush', 27, NULL, NULL),
(28, 'digital camera', 28, NULL, NULL),
(29, 'home exercise kit', 29, NULL, NULL),
(30, 'LED desk lamp', 30, NULL, NULL),
(31, 'pasta maker', 31, NULL, NULL),
(32, 'portable charger', 32, NULL, NULL),
(33, 'multi-tool', 33, NULL, NULL),
(34, 'kids bicycle', 34, NULL, NULL),
(35, 'electric grill', 35, NULL, NULL),
(36, 'food processor', 36, NULL, NULL),
(37, 'massage gun', 37, NULL, NULL),
(38, 'smart doorbell', 38, NULL, NULL),
(39, 'car vacuum cleaner', 39, NULL, NULL),
(40, 'bluetooth speaker', 40, NULL, NULL),
(41, 'heated blanket', 41, NULL, NULL),
(42, 'air fryer', 42, NULL, NULL),
(43, 'portable fire pit', 43, NULL, NULL),
(44, 'fitness tracker', 44, NULL, NULL),
(45, 'camping stove', 45, NULL, NULL),
(46, 'rain jacket', 46, NULL, NULL),
(47, 'desk organizer', 47, NULL, NULL),
(48, 'wall art', 48, NULL, NULL),
(49, 'bluetooth earbuds', 49, NULL, NULL),
(50, 'electric skateboard', 50, NULL, NULL),
(51, 'backpack', 1, NULL, NULL),
(52, 'backpack', 1, NULL, NULL),
(53, 'backpack', 1, NULL, NULL),
(54, 'backpack', 1, NULL, NULL),
(55, 'backpack', 1, NULL, NULL),
(56, 'backpack', 1, NULL, NULL),
(57, 't-shirt', 2, NULL, NULL),
(58, 't-shirt', 2, NULL, NULL),
(59, 't-shirt', 2, NULL, NULL),
(60, 't-shirt', 2, NULL, NULL),
(61, 't-shirt', 2, NULL, NULL),
(62, 't-shirt', 2, NULL, NULL),
(63, 't-shirt', 2, NULL, NULL),
(64, 'jacket', 3, NULL, NULL),
(65, 'jacket', 3, NULL, NULL),
(66, 'jacket', 3, NULL, NULL),
(67, 'jacket', 3, NULL, NULL),
(68, 'jacket', 3, NULL, NULL),
(69, 'diamond ring', 4, NULL, NULL),
(70, 'diamond ring', 4, NULL, NULL),
(71, 'diamond ring', 4, NULL, NULL),
(72, 'diamond ring', 4, NULL, NULL),
(73, 'diamond ring', 4, NULL, NULL),
(74, 'diamond ring', 4, NULL, NULL),
(75, 'diamond ring', 4, NULL, NULL),
(76, 'diamond ring', 4, NULL, NULL),
(77, 'wallet', 5, NULL, NULL),
(78, 'wallet', 5, NULL, NULL),
(79, 'wallet', 5, NULL, NULL),
(80, 'wallet', 5, NULL, NULL),
(81, 'wallet', 5, NULL, NULL),
(82, 'wallet', 5, NULL, NULL),
(83, 'wallet', 5, NULL, NULL),
(84, 'wallet', 5, NULL, NULL),
(85, 'sneakers', 6, NULL, NULL),
(86, 'sneakers', 6, NULL, NULL),
(87, 'sneakers', 6, NULL, NULL),
(88, 'sneakers', 6, NULL, NULL),
(89, 'sneakers', 6, NULL, NULL),
(90, 'sneakers', 6, NULL, NULL),
(91, 'coffee maker', 7, NULL, NULL),
(92, 'coffee maker', 7, NULL, NULL),
(93, 'coffee maker', 7, NULL, NULL),
(94, 'yoga mat', 8, NULL, NULL),
(95, 'yoga mat', 8, NULL, NULL),
(96, 'headphones', 9, NULL, NULL),
(97, 'headphones', 9, NULL, NULL),
(98, 'headphones', 9, NULL, NULL),
(99, 'headphones', 9, NULL, NULL),
(100, 'headphones', 9, NULL, NULL),
(101, 'smart watch', 10, NULL, NULL),
(102, 'smart watch', 10, NULL, NULL),
(103, 'smart watch', 10, NULL, NULL),
(104, 'smart watch', 10, NULL, NULL),
(105, 'smart watch', 10, NULL, NULL),
(106, 'smart watch', 10, NULL, NULL),
(107, 'h', 2, '2024-09-25 06:47:02', '2024-09-25 06:47:02'),
(108, 'ho', 9, '2024-09-25 06:47:03', '2024-09-25 06:47:03'),
(109, 'hol', NULL, '2024-09-25 06:47:03', '2024-09-25 06:47:03'),
(110, 'hola', NULL, '2024-09-25 06:47:03', '2024-09-25 06:47:03'),
(111, 'hol', NULL, '2024-09-25 06:47:16', '2024-09-25 06:47:16'),
(112, 'ho', 9, '2024-09-25 06:47:17', '2024-09-25 06:47:17'),
(113, 'h', 2, '2024-09-25 06:47:17', '2024-09-25 06:47:17'),
(114, 'hl', NULL, '2024-09-25 06:47:19', '2024-09-25 06:47:19'),
(115, 'hle', NULL, '2024-09-25 06:47:20', '2024-09-25 06:47:20'),
(116, 'hl', NULL, '2024-09-25 06:47:21', '2024-09-25 06:47:21'),
(117, 'h', 2, '2024-09-25 06:47:21', '2024-09-25 06:47:21'),
(118, 'l', 5, '2024-09-25 06:47:22', '2024-09-25 06:47:22'),
(119, 'le', 5, '2024-09-25 06:47:22', '2024-09-25 06:47:22'),
(120, 'lea', 5, '2024-09-25 06:47:23', '2024-09-25 06:47:23'),
(121, 'leat', 5, '2024-09-25 06:47:25', '2024-09-25 06:47:25'),
(122, 'leath', 5, '2024-09-25 06:47:25', '2024-09-25 06:47:25'),
(123, 'leathe', 5, '2024-09-25 06:47:25', '2024-09-25 06:47:25'),
(124, 'leath', 5, '2024-09-25 06:47:27', '2024-09-25 06:47:27'),
(125, 'leat', 5, '2024-09-25 06:47:27', '2024-09-25 06:47:27'),
(126, 'lea', 5, '2024-09-25 06:47:27', '2024-09-25 06:47:27'),
(127, 'le', 5, '2024-09-25 06:47:28', '2024-09-25 06:47:28'),
(128, 'l', 5, '2024-09-25 06:47:28', '2024-09-25 06:47:28'),
(129, 'a', 1, '2024-09-25 06:47:29', '2024-09-25 06:47:29'),
(130, 'ap', 2, '2024-09-25 06:47:29', '2024-09-25 06:47:29'),
(131, 'a', 1, '2024-09-25 06:47:32', '2024-09-25 06:47:32'),
(132, 'a', 1, '2024-09-25 06:50:07', '2024-09-25 06:50:07'),
(133, 'ap', 2, '2024-09-25 06:50:09', '2024-09-25 06:50:09'),
(134, 'a', 1, '2024-09-25 06:50:11', '2024-09-25 06:50:11'),
(135, 'a', 1, '2024-09-25 06:50:12', '2024-09-25 06:50:12'),
(136, 'ap', 2, '2024-09-25 06:50:12', '2024-09-25 06:50:12'),
(137, 'a', 1, '2024-09-25 06:50:13', '2024-09-25 06:50:13'),
(138, 'a', 1, '2024-09-25 06:50:14', '2024-09-25 06:50:14'),
(139, 'ap', 2, '2024-09-25 06:50:14', '2024-09-25 06:50:14'),
(140, 'apa', NULL, '2024-09-25 06:50:15', '2024-09-25 06:50:15'),
(141, 'apap', NULL, '2024-09-25 06:50:15', '2024-09-25 06:50:15'),
(142, 'apa', NULL, '2024-09-25 06:50:16', '2024-09-25 06:50:16'),
(143, 'ap', 2, '2024-09-25 06:50:16', '2024-09-25 06:50:16'),
(144, 'a', 1, '2024-09-25 06:50:17', '2024-09-25 06:50:17'),
(145, 'a', 1, '2024-09-25 06:50:17', '2024-09-25 06:50:17'),
(146, 'ap', 2, '2024-09-25 06:50:18', '2024-09-25 06:50:18'),
(147, 'a', 1, '2024-09-25 06:50:19', '2024-09-25 06:50:19'),
(148, 'a', 1, '2024-09-25 06:50:19', '2024-09-25 06:50:19'),
(149, 'ap', 2, '2024-09-25 06:50:20', '2024-09-25 06:50:20'),
(150, 'a', 1, '2024-09-25 06:50:20', '2024-09-25 06:50:20'),
(151, 's', 2, '2024-09-25 06:50:21', '2024-09-25 06:50:21'),
(152, 'sh', 2, '2024-09-25 06:50:22', '2024-09-25 06:50:22'),
(153, 's', 2, '2024-09-25 06:50:22', '2024-09-25 06:50:22'),
(154, 'a', 1, '2024-09-25 06:50:23', '2024-09-25 06:50:23'),
(155, 'ap', 2, '2024-09-25 06:50:23', '2024-09-25 06:50:23'),
(156, 'a', 1, '2024-09-25 06:50:24', '2024-09-25 06:50:24');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('hxKjBY2YdNR6UXZstBuwYKdqmbOpYgaqcExweB2D', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicEVCVXdqdHJyQWtTYUQzRTVsRE5RQm1OdVg4UThlbDlXdWoyOWp0QyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1727216151);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indices de la tabla `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indices de la tabla `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `searches`
--
ALTER TABLE `searches`
  ADD PRIMARY KEY (`id`),
  ADD KEY `searches_product_id_foreign` (`product_id`);

--
-- Indices de la tabla `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT de la tabla `searches`
--
ALTER TABLE `searches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `searches`
--
ALTER TABLE `searches`
  ADD CONSTRAINT `searches_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
