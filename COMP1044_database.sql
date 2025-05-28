-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 28, 2024 at 08:49 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `food-order`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id` int(10) UNSIGNED NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `full_name`, `username`, `password`) VALUES
(12, 'Administrator', 'admin', '21232f297a57a5a743894a0e4a801fc3');


-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `featured` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `title`, `image_name`, `featured`, `active`) VALUES
(4, 'Appetizers', 'Food_Category_790.jpg', 'No', 'Yes'),
(5, 'Main Dishes', 'Food_Category_344.jpg', 'No', 'Yes'),
(9, 'Desserts', 'Food_Category_385.jpg', 'No', 'Yes'),
(10, 'Snacks', 'Food_Category_697.jpg', 'Yes', 'Yes'),
(11, 'Sides', 'Food_Category_447.jpg', 'Yes', 'Yes'),
(12, 'Drinks', 'Food_Category_333.jpg', 'Yes', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_food`
--

CREATE TABLE `tbl_food` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `featured` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_food`
--

INSERT INTO `tbl_food` (`id`, `title`, `description`, `price`, `image_name`, `category_id`, `featured`, `active`) VALUES
(4, 'Nasi Lemak', 'Fragrant rice cooked in coconut milk and pandan leaf', 7.00, 'Food-Name-6340.jpg', 5, 'No', 'Yes'),
(5, 'Keropok Lekor', 'Malay fish cracker snack made from fish and sago flour and seasoned with salt and sugar', 5.00, 'Food-Name-8298.jpg', 4, 'No', 'Yes'),
(10, 'Teh Tarik', 'Hot milk tea beverage', 2.00, 'Food-Name-6512.jpg', 9, 'Yes', 'Yes'),
(11, 'Sirap Bandung', 'Evaporated milk or condensed milk flavoured with rose syrup (rose cordial), giving it a pink colour', 3.00, 'Food-Name-306.jpg', 9, 'No', 'Yes'),
(12, 'Iced Tea O', 'Cold tea that can be mixed with flavored like lemon', 2.00, 'Food-Name-7044.jpg', 9, 'No', 'Yes'),
(13, 'Iced Water', 'Plain water with ice', 1.00, 'Food-Name-114.jpg', 9, 'No', 'Yes'),
(15, 'Banana Fritters', 'Deep frying battered banana or plantain in hot oil', 5.00, 'Food-Name-1876.jpg', 4, 'No', 'Yes'),
(16, 'Prawn Fritters', 'Made from a batter of seasoned flour or batter mixed with chopped prawns (or shrimp) ', 5.00, 'Food-Name-5931.jpg', 4, 'No', 'Yes'),
(17, 'Kuih Lapis Sarawak', 'Distinguished by intricate layers, rich flavours', 5.00, 'Food-Name-4667.jpg', 11, 'Yes', 'Yes'),
(18, 'Agar-agar', 'Jelly dessert that is both sweet and creamy', 3.00, 'Food-Name-5970.jpg', 10, 'Yes', 'Yes'),
(19, 'Badak Berendam', 'Glutinous Rice Balls in Coconut Milk', 5.00, 'Food-Name-5958.jpg', 10, 'Yes', 'Yes'),
(20, 'White Rice', 'Plain rice', 1.50, 'Food-Name-2105.jpg', 12, 'Yes', 'Yes'),
(21, 'Kuih Ketayap', 'Coconut-Filled Crepes', 3.00, 'Food-Name-7380.jpg', 11, 'No', 'Yes'),
(22, 'Omelette', 'Made from beaten eggs fried and folded around fillings such as chives, meat or onions', 3.00, 'Food-Name-1329.jpg', 12, 'No', 'Yes'),
(23, 'Denderam', 'A type of traditional sweet cake made by ice flour and brown sugar', 2.00, 'Food-Name-9164.jpg', 11, 'No', 'Yes'),
(24, 'Curry Puff', 'A small pie consisting of curry with chicken and potatoes in a deep-fried or baked pastry shell', 2.00, 'Food-Name-6628.jpg', 11, 'Yes', 'Yes'),
(25, 'Kuih Keria', 'Made from sweet potatoes and covered in a crunchy sand-like sugar coating', 3.00, 'Food-Name-7422.jpg', 11, 'No', 'Yes'),
(26, 'Bitter Bean', 'Long, flat edible beans with bright green seeds the size and shape of plump almonds\r\n\r\n', 1.00, 'Food-Name-3204.jpg', 12, 'No', 'Yes'),
(27, 'Fried Tofu', 'Deep fried tofu', 2.00, 'Food-Name-2376.jpg', 12, 'No', 'Yes'),
(28, 'Fried Tempeh', 'Deep fried tempeh', 2.00, 'Food-Name-9721.jpg', 12, 'No', 'Yes'),
(29, 'Ais kacang', 'Made from machined ice and mixed with ingredients such as red beans, peanuts, cashew nuts, kabung fruit or corn', 3.00, 'Food-Name-1771.jpg', 10, 'No', 'Yes'),
(30, 'Cendol', 'An iced sweet dessert that contains droplets of pandan-flavoured green rice flour jelly, coconut milk and palm sugar syrup', 3.00, 'Food-Name-6250.jpg', 10, 'No', 'Yes'),
(31, 'Roti Canai', 'Indian flatbread dish with dal or other types of curry with different ingredients, such as meat, eggs, or cheese', 2.00, 'Food-Name-7625.jpg', 5, 'No', 'Yes'),
(32, 'Roti Tissue', 'Also known as \"roti helikopter\" (helicopter bread) which is a thinner and crispier version of the traditional roti canai', 5.00, 'Food-Name-3025.jpg', 5, 'No', 'Yes'),
(33, 'Mee Bandung Muar', 'Yellow noodle with egg with a thick broth-gravy made of dried shrimps, spices, shrimp paste', 7.00, 'Food-Name-391.jpg', 5, 'No', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(10) UNSIGNED NOT NULL,
  `food` varchar(150) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `qty` int(11) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `order_date` datetime NOT NULL,
  `status` varchar(50) NOT NULL,
  `u_id` int(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `food`, `price`, `qty`, `total`, `order_date`, `status`, `u_id`) VALUES
(13, 'Biriyani', 200.00, 1, 200.00, '2022-11-12 12:50:24', 'Delivered', 6),
(14, 'Best Burger', 250.00, 1, 250.00, '2022-11-12 12:56:39', 'Delivered', 6),
(15, 'Best Burger', 250.00, 1, 250.00, '2022-11-12 02:20:43', 'Delivered', 7),
(16, 'Smoky BBQ Pizza', 525.00, 1, 525.00, '2022-11-12 02:20:53', 'Delivered', 7),
(17, 'Thalaserry Beef Biryani', 170.00, 1, 170.00, '2022-11-13 07:44:42', 'Ordered', 6),
(18, 'Peri Peri Alfaham Mandhi', 240.00, 1, 240.00, '2022-11-13 01:54:44', 'Delivered', 6),
(19, 'Smoky BBQ Pizza', 525.00, 1, 525.00, '2024-04-28 06:00:12', 'Ordered', 25);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `customer_name` varchar(150) NOT NULL,
  `customer_email` varchar(150) NOT NULL,
  `customer_contact` bigint(25) NOT NULL,
  `customer_address` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `customer_name`, `customer_email`, `customer_contact`, `customer_address`, `created_at`) VALUES
(6, 'jaison_e_mathew', '$2y$10$d//Ey6eukf3xhnFlHUhrwet/xaTQEmhmjyvEF.MTT1a5NgBbMbhke', 'Jaison E Mathew', 'jaisone.bca2023@saintgits.org', 9526519828, 'Enchakattil Chengannur', '2022-11-12 17:20:06'),
(7, 'febin_binoy', '$2y$10$3.3PY8VemjmGEiYcynAB7uoRrBeAok/Sw3rv2Zo1/.P0bNi66gNbe', 'Febin Binoy', 'febin.bca2023@saintgits.org', 9038394034, 'Febin Villa Chenganassery', '2022-11-12 18:48:54'),
(8, 'varghese_babu', '$2y$10$eF5TxEyY1AS/xuJMurhvferx76E1fRe3ABxzBZQMZtJf4p3J32RRO', 'Varghese Babu', 'varghesebabu@gmail.com', 9284049384, 'Varghese Villa Chengannur', '2022-11-12 19:06:00'),
(12, 'jaison_thomas', '$2y$10$emiUy3AQRP6FMXlEb3lY4urt8jwjzHM.FZK2WZShJDLUpquCqKnAW', 'Jaison Thomas', 'jaisonthomas@gmail.com', 9319392053, 'Jaison Villa ,chengannur', '2022-11-14 21:06:09'),
(25, 'user', '$2y$10$igy95AJsDehJ61iO9VB//./ukT94zrw4G3kEJOVDf3EKU0fguTYUm', 'username', 'user@unmc.com', 1234567891, 'No 21, Jalan Ria 3\r\nTaman Skudai Ria', '2024-04-28 23:59:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_food`
--
ALTER TABLE `tbl_food`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_food`
--
ALTER TABLE `tbl_food`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
