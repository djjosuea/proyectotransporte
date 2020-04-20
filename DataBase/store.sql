-- phpMyAdmin SQL Dump
-- version 4.4.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 21, 2020 at 12:38 AM
-- Server version: 5.6.25
-- PHP Version: 5.6.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `final_kingburger_first`
--

-- --------------------------------------------------------

--
-- Table structure for table `app_user`
--

CREATE TABLE IF NOT EXISTS `app_user` (
  `id` int(11) NOT NULL,
  `create_at` varchar(30) CHARACTER SET latin1 NOT NULL,
  `mob_number` varchar(15) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `food_category`
--

CREATE TABLE IF NOT EXISTS `food_category` (
  `id` int(11) NOT NULL,
  `cat_icon` varchar(70) CHARACTER SET latin1 NOT NULL,
  `cat_name` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `food_city`
--

CREATE TABLE IF NOT EXISTS `food_city` (
  `id` int(11) NOT NULL,
  `city_name` varchar(70) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `food_delivery_boy`
--

CREATE TABLE IF NOT EXISTS `food_delivery_boy` (
  `id` int(11) NOT NULL,
  `action` int(11) NOT NULL,
  `attendance` varchar(10) CHARACTER SET latin1 NOT NULL,
  `create_at` varchar(30) CHARACTER SET latin1 NOT NULL,
  `email` varchar(50) CHARACTER SET latin1 NOT NULL,
  `mobile_no` varchar(15) CHARACTER SET latin1 NOT NULL,
  `name` varchar(30) CHARACTER SET latin1 NOT NULL,
  `password` varchar(15) CHARACTER SET latin1 NOT NULL,
  `vehicle_no` varchar(30) CHARACTER SET latin1 NOT NULL,
  `vehicle_type` varchar(30) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `food_ingredients`
--

CREATE TABLE IF NOT EXISTS `food_ingredients` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `item_name` varchar(50) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `price` varchar(11) NOT NULL,
  `type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `food_menu`
--

CREATE TABLE IF NOT EXISTS `food_menu` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `description` text NOT NULL,
  `menu_image` varchar(70) NOT NULL,
  `menu_name` varchar(70) NOT NULL,
  `price` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `food_notification`
--

CREATE TABLE IF NOT EXISTS `food_notification` (
  `id` int(11) NOT NULL,
  `android_key` varchar(255) CHARACTER SET latin1 NOT NULL,
  `ios_key` varchar(255) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `food_notification`
--

INSERT INTO `food_notification` (`id`, `android_key`, `ios_key`) VALUES
(1, 'AAAAzfOzFf4:APA91bGDYxjaXRFePTRG0AnHW624nG7xaRzgtQWdTf-a_yGw3NZ9X0y8PoInegJUxxxFgTXta_VpbgqWw4yoHaOLsYR_u6xGvptgwYhiBuxqpx4s0XsLVn-AwQKo1wq8CX-Or6bNiIcJ', '122334');

-- --------------------------------------------------------

--
-- Table structure for table `food_order_response`
--

CREATE TABLE IF NOT EXISTS `food_order_response` (
  `id` int(11) NOT NULL,
  `desc` text NOT NULL,
  `order_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `food_send_notification`
--

CREATE TABLE IF NOT EXISTS `food_send_notification` (
  `id` int(11) NOT NULL,
  `message` varchar(255) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `food_tokandata`
--

CREATE TABLE IF NOT EXISTS `food_tokandata` (
  `id` int(11) NOT NULL,
  `token` text NOT NULL,
  `type` varchar(20) CHARACTER SET latin1 NOT NULL,
  `user_id` int(11) NOT NULL,
  `delivery_boyid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `food_user`
--

CREATE TABLE IF NOT EXISTS `food_user` (
  `userid` int(11) NOT NULL,
  `currency` varchar(30) NOT NULL,
  `email` varchar(70) CHARACTER SET latin1 NOT NULL,
  `password` varchar(30) CHARACTER SET latin1 NOT NULL,
  `user_name` varchar(30) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `food_user`
--

INSERT INTO `food_user` (`userid`, `currency`, `email`, `password`, `user_name`) VALUES
(1, 'CRC - ₡', 'admin@gmail.com', '123', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `fooddelivery_food_desc`
--

CREATE TABLE IF NOT EXISTS `fooddelivery_food_desc` (
  `id` int(11) NOT NULL,
  `ingredients_id` varchar(255) NOT NULL,
  `item_amt` varchar(50) NOT NULL,
  `item_id` int(11) NOT NULL,
  `item_qty` int(11) NOT NULL,
  `ItemTotalPrice` varchar(50) NOT NULL,
  `set_order_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `set_order_detail`
--

CREATE TABLE IF NOT EXISTS `set_order_detail` (
  `id` int(11) NOT NULL,
  `assign_date_time` varchar(30) CHARACTER SET latin1 NOT NULL,
  `assign_status` varchar(225) NOT NULL,
  `delivered_date_time` varchar(30) CHARACTER SET latin1 NOT NULL,
  `delivered_status` varchar(11) NOT NULL,
  `dispatched_date_time` varchar(30) CHARACTER SET latin1 NOT NULL,
  `dispatched_status` varchar(11) NOT NULL,
  `is_assigned` varchar(11) NOT NULL,
  `order_placed_date` varchar(30) CHARACTER SET latin1 NOT NULL,
  `cancel_date_time` varchar(50) DEFAULT NULL,
  `order_status` int(11) NOT NULL,
  `preparing_date_time` varchar(30) CHARACTER SET latin1 NOT NULL,
  `preparing_status` varchar(225) NOT NULL,
  `total_price` varchar(225) NOT NULL,
  `latlong` varchar(155) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(225) NOT NULL,
  `address` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL,
  `payment_type` varchar(225) NOT NULL,
  `notes` varchar(225) NOT NULL,
  `city` varchar(225) NOT NULL,
  `notify` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `app_user`
--
ALTER TABLE `app_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `food_category`
--
ALTER TABLE `food_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `food_city`
--
ALTER TABLE `food_city`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `food_delivery_boy`
--
ALTER TABLE `food_delivery_boy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `food_ingredients`
--
ALTER TABLE `food_ingredients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `food_menu`
--
ALTER TABLE `food_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `food_notification`
--
ALTER TABLE `food_notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `food_order_response`
--
ALTER TABLE `food_order_response`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `food_send_notification`
--
ALTER TABLE `food_send_notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `food_tokandata`
--
ALTER TABLE `food_tokandata`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `food_user`
--
ALTER TABLE `food_user`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `fooddelivery_food_desc`
--
ALTER TABLE `fooddelivery_food_desc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `set_order_detail`
--
ALTER TABLE `set_order_detail`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `app_user`
--
ALTER TABLE `app_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `food_category`
--
ALTER TABLE `food_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `food_city`
--
ALTER TABLE `food_city`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `food_delivery_boy`
--
ALTER TABLE `food_delivery_boy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `food_ingredients`
--
ALTER TABLE `food_ingredients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `food_menu`
--
ALTER TABLE `food_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `food_notification`
--
ALTER TABLE `food_notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `food_order_response`
--
ALTER TABLE `food_order_response`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `food_send_notification`
--
ALTER TABLE `food_send_notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `food_tokandata`
--
ALTER TABLE `food_tokandata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `food_user`
--
ALTER TABLE `food_user`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `fooddelivery_food_desc`
--
ALTER TABLE `fooddelivery_food_desc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `set_order_detail`
--
ALTER TABLE `set_order_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;--
-- Database: `foodcart_sell`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE IF NOT EXISTS `tbl_admin` (
  `id` int(11) NOT NULL,
  `sorting` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(200) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `sorting`, `username`, `password`, `email`, `image`) VALUES
(1, 0, 'admin', 'admin', '', '98724_user.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_app_home`
--

CREATE TABLE IF NOT EXISTS `tbl_app_home` (
  `id` int(250) NOT NULL,
  `title` varchar(10000) NOT NULL,
  `position_order` int(250) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cashback`
--

CREATE TABLE IF NOT EXISTS `tbl_cashback` (
  `id` int(11) NOT NULL,
  `u_id` varchar(250) NOT NULL,
  `cashback_amount` varchar(250) NOT NULL,
  `datetime` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category_type`
--

CREATE TABLE IF NOT EXISTS `tbl_category_type` (
  `id` int(250) NOT NULL,
  `name` varchar(10000) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_category_type`
--

INSERT INTO `tbl_category_type` (`id`, `name`) VALUES
(1, 'instock'),
(2, 'advance');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_city`
--

CREATE TABLE IF NOT EXISTS `tbl_city` (
  `id` int(250) NOT NULL,
  `city_name` mediumtext NOT NULL,
  `delivery_amount` int(250) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_city`
--

INSERT INTO `tbl_city` (`id`, `city_name`, `delivery_amount`) VALUES
(1, 'Bhilad', 20),
(2, 'Sanjan', 30),
(3, 'Umbergaon', 40);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_city_list`
--

CREATE TABLE IF NOT EXISTS `tbl_city_list` (
  `id` int(250) NOT NULL,
  `city_id` int(250) NOT NULL,
  `sub_city` varchar(500) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_city_list`
--

INSERT INTO `tbl_city_list` (`id`, `city_id`, `sub_city`) VALUES
(8, 1, 'bhilad railway station'),
(7, 1, 'Sarigham'),
(9, 2, 'sanjan bazar rd'),
(10, 2, 'sanjan bundar'),
(11, 1, 'gulshan nagar'),
(12, 1, 'dhanoli,Zaroli'),
(13, 1, 'daheli'),
(14, 3, 'timbi'),
(15, 3, 'GIDC RD'),
(16, 3, 'Akromaruti'),
(17, 3, 'Umbergaon town'),
(18, 3, 'gandhi wadi'),
(19, 3, 'GIDC colony'),
(20, 3, 'railway station rd'),
(21, 3, 'sapnalok society rd'),
(22, 3, 'india colony'),
(23, 2, 'ghimsa kankariya'),
(24, 2, 'raiwadi'),
(25, 2, 'amgaon rd'),
(26, 2, 'umbergaon sanjan rd'),
(27, 2, 'khattalwada'),
(28, 1, 'LAXMI VIDHYA PITH'),
(29, 1, 'bhilad EAST Bazaar'),
(30, 1, 'bhilad GIDC'),
(31, 1, 'KANADU'),
(32, 1, 'BHILAD CHECK POST,TALVADA'),
(33, 1, 'ACHCHAD'),
(34, 1, 'BHILAD'),
(35, 3, 'UMBERGAON'),
(36, 2, 'SANJAN....');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contact`
--

CREATE TABLE IF NOT EXISTS `tbl_contact` (
  `id` int(250) NOT NULL,
  `name` varchar(500) NOT NULL,
  `email` varchar(500) NOT NULL,
  `phone` varchar(500) NOT NULL,
  `subject` varchar(1000) NOT NULL,
  `message` mediumtext NOT NULL,
  `status` int(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_coupon_code`
--

CREATE TABLE IF NOT EXISTS `tbl_coupon_code` (
  `id` int(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `tandc` varchar(100) NOT NULL,
  `min_order` varchar(100) NOT NULL,
  `exp_date` varchar(20) NOT NULL,
  `no_uses` varchar(100) NOT NULL,
  `coupon_code` varchar(100) NOT NULL,
  `coupon_type` varchar(100) NOT NULL,
  `coupon_value` varchar(100) NOT NULL,
  `visibility` varchar(100) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_coupon_code`
--

INSERT INTO `tbl_coupon_code` (`id`, `title`, `tandc`, `min_order`, `exp_date`, `no_uses`, `coupon_code`, `coupon_type`, `coupon_value`, `visibility`) VALUES
(1, 'Get Free Delivery', 'Use Code DELFREE5 & get free delivery on order of Rs. 100 & above.', '100', '2019-08-14', '2', 'DELFREE5', 'amount', '100', '1'),
(2, 'Get 25% OFF', 'Use Code FOODCART25 & get 25% off on orders above Rs. 300.', '300', '2019-07-31', '1', 'FOODCART25', 'percentage', '25', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_coupon_type`
--

CREATE TABLE IF NOT EXISTS `tbl_coupon_type` (
  `id` int(100) NOT NULL,
  `type` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_coupon_type`
--

INSERT INTO `tbl_coupon_type` (`id`, `type`) VALUES
(1, 'percentage'),
(2, 'amount');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_coupon_users`
--

CREATE TABLE IF NOT EXISTS `tbl_coupon_users` (
  `id` int(10) NOT NULL,
  `coupon_id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `availability` varchar(10) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `pay_amount` varchar(100) NOT NULL,
  `discount` varchar(100) NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_flavour`
--

CREATE TABLE IF NOT EXISTS `tbl_flavour` (
  `f_id` int(11) NOT NULL,
  `flavour_name` varchar(500) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_flavour`
--

INSERT INTO `tbl_flavour` (`f_id`, `flavour_name`) VALUES
(1, 'Black Forest'),
(2, 'Strawberry'),
(3, 'Mango'),
(4, 'Chocolate'),
(5, 'Red Velvet'),
(8, 'Pineapple '),
(7, 'Black Current'),
(9, 'Swiss Choco'),
(10, 'Zebra Torte'),
(11, 'Dutch Marble'),
(12, 'Dutch Choco'),
(13, 'Dutch Brownie'),
(14, 'Blueberry'),
(15, 'Cassata'),
(16, 'pyramid(Choco Chips)');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_home_banner`
--

CREATE TABLE IF NOT EXISTS `tbl_home_banner` (
  `id` int(11) NOT NULL,
  `hotelid` int(11) NOT NULL,
  `banner_name` varchar(255) NOT NULL,
  `banner_image` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_home_banner`
--

INSERT INTO `tbl_home_banner` (`id`, `hotelid`, `banner_name`, `banner_image`) VALUES
(8, 1, '1', '13330_banner.jpeg'),
(9, 1, '2', '38628_banner2.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_menucategory`
--

CREATE TABLE IF NOT EXISTS `tbl_menucategory` (
  `cid` int(11) NOT NULL,
  `cat_type` varchar(100) NOT NULL,
  `hotelid` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_image` varchar(255) NOT NULL,
  `visibility` int(10) NOT NULL DEFAULT '1'
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_menucategory`
--

INSERT INTO `tbl_menucategory` (`cid`, `cat_type`, `hotelid`, `category_name`, `category_image`, `visibility`) VALUES
(1, 'instock', 1, 'Fast Food', '53424_34466_Untitled-1.png', 1),
(2, 'instock', 1, 'Cakes & Pastries', '66385_pastry..png', 1),
(3, 'instock', 1, 'One Dish Meal', '45530_meal.png', 1),
(4, 'advance', 1, 'Grocery', '66418_grocery.png', 1),
(5, 'advance', 1, 'Fruits', '81429_fruits.png', 1),
(6, 'advance', 1, 'Vegetables', '51311_vege.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_menuwallpaper`
--

CREATE TABLE IF NOT EXISTS `tbl_menuwallpaper` (
  `id` int(11) NOT NULL,
  `food_type` int(10) NOT NULL DEFAULT '1',
  `hotelid` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `f_id` varchar(100) NOT NULL,
  `cat_food_type` varchar(250) NOT NULL,
  `food_opening_time` varchar(250) NOT NULL DEFAULT '0',
  `food_closing_time` varchar(250) NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL,
  `des` text NOT NULL,
  `image_date` date NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` varchar(20) NOT NULL,
  `min_kg` varchar(250) NOT NULL,
  `max_kg` varchar(250) NOT NULL,
  `total_views` int(11) NOT NULL DEFAULT '0',
  `visibility` int(10) NOT NULL DEFAULT '1'
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_menuwallpaper`
--

INSERT INTO `tbl_menuwallpaper` (`id`, `food_type`, `hotelid`, `cat_id`, `f_id`, `cat_food_type`, `food_opening_time`, `food_closing_time`, `name`, `des`, `image_date`, `image`, `price`, `min_kg`, `max_kg`, `total_views`, `visibility`) VALUES
(1, 1, 1, 1, '', '', '', '', 'SCHEZWAN MAGGI', '<p>MAGGI WITH SCHEZWAN</p>\r\n', '2019-08-03', '29132_52756_schewan maggie.jpg', '60', '', '', 0, 1),
(2, 1, 1, 1, '', '', '', '', 'FINGER CHIPS', '<p>SALTED POTATO CHIPS</p>\r\n', '2019-08-03', '22669_35024_fingar chips.jpg', '60', '', '', 0, 1),
(3, 1, 1, 1, '', '', '', '', 'KANDA BHAJIYA', '<p>BHAJIYA OF ONION</p>\r\n', '2019-08-03', '7520_32276_kanda bhajiya.jpg', '50', '', '', 0, 1),
(4, 1, 1, 1, '', '', '', '', 'VEG BURGER', '<p>MIX VEGETABLE AND ALOO TIKKI</p>\r\n', '2019-08-03', '90558_7114_barger.jpg', '50', '', '', 0, 1),
(5, 1, 1, 1, '', '', '', '', 'CHEESE PIZZA', '<p>CHEESE AND MEDIUM SPICY SAUCES</p>\r\n', '2019-08-03', '9691_22942_cheez pizza.jpg', '100', '', '', 0, 1),
(6, 1, 1, 2, '', '', '', '', 'Lava Cake', '<p>Chocolate Hot Lava Cake</p>\r\n', '2019-08-03', '84617_lava.jpg', '80', '', '', 0, 1),
(7, 1, 1, 2, '', '', '', '', 'Strawberry Pastry', '<p>TASTE OF REAL STRAWBERRY</p>\r\n', '2019-08-03', '49511_straw.jpg', '40', '', '', 0, 1),
(8, 1, 1, 2, '', '', '', '', 'Rainbow Pastry', '<p>Different fruit taste</p>\r\n', '2019-08-03', '35958_rainbow.jpg', '70', '', '', 0, 1),
(9, 1, 1, 2, '', '', '', '', 'Pyramid Pastry', '<p>Choco Chips Pyramid</p>\r\n', '2019-08-03', '2151_pyramid.jpg', '70', '', '', 0, 1),
(10, 1, 1, 2, '', '', '', '', 'Pineapple Pastry', '<p>Taste of Pineapple</p>\r\n', '2019-08-03', '31099_pine.jpg', '50', '', '', 0, 1),
(11, 1, 1, 3, '', '', '', '', 'Pav Bhaji', '<p>Butter bhaji and pav</p>\r\n', '2019-08-03', '87966_pvbhaji.jpg', '120', '', '', 0, 1),
(12, 1, 1, 3, '', '', '12:00', '18:00', 'Dahiwali Roti', '<p>Dahiwali Roti</p>\r\n', '2019-08-03', '34266_dahiroti.jpg', '150', '', '', 0, 1),
(13, 1, 1, 4, '', '', '', '', 'Tomato Ketchup', '<p>Heinz Tomato Ketchup</p>\r\n', '2019-08-03', '74924_ketchup.jpg', '80', '', '', 0, 1),
(14, 1, 1, 4, '', '', '', '', 'Maggi', '<p>Maggi Special Masala</p>\r\n', '2019-08-03', '58532_maggi.jpg', '15', '', '', 0, 1),
(15, 1, 1, 4, '', '', '', '', 'Mccain Fries', '<p>Mccain French Fries</p>\r\n', '2019-08-03', '50589_mccain.jpg', '150', '', '', 0, 1),
(16, 1, 1, 5, '', '', '', '', 'Apple', '<p>Kashmiri Apple</p>\r\n', '2019-08-03', '45754_apple.jpg', '200', '1', '5', 0, 1),
(17, 1, 1, 5, '', '', '', '', 'Custard Apple', '<p>Sweet &amp; Tasty</p>\r\n', '2019-08-03', '99814_custard.jpg', '150', '1', '3', 0, 1),
(18, 1, 1, 5, '', '', '', '', 'Watermelon', '', '2019-08-03', '86251_watermelon.jpg', '60', '1', '10', 0, 1),
(19, 1, 1, 6, '', '', '', '', 'Brinjal', '', '2019-08-03', '46285_brinjal.jpg', '30', '1', '5', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_normal_notification`
--

CREATE TABLE IF NOT EXISTS `tbl_normal_notification` (
  `id` int(11) NOT NULL,
  `hotelid` int(11) NOT NULL,
  `notification_title` varchar(255) NOT NULL,
  `notification_msg` text NOT NULL,
  `notification_image` varchar(255) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_normal_notification`
--

INSERT INTO `tbl_normal_notification` (`id`, `hotelid`, `notification_title`, `notification_msg`, `notification_image`) VALUES
(1, 1, 'Update your app for exciting new features!', 'Download Now!', '82591_Google-Play-Store-For-PC-3.png'),
(2, 1, 'Get 20% Caskback on All Fastfoods. ', '10% Cashback on Cakes. Order Now !! ', '29575_FBPOST.png'),
(3, 1, 'Get 20% Caskback on All Fastfoods.', '10% Cashback on Cakes. Order Now !!', '74109_hb.png'),
(4, 1, '10% Cashback on Cakes. Order Now !!', 'Get 20% Caskback on All Fastfoods.', '32371_122121.png'),
(5, 1, ' Happy Monsoon ! Rains + Sunday !!!', 'Order and enjoy Food at your doorstep.', '72959_121212.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_reservation`
--

CREATE TABLE IF NOT EXISTS `tbl_reservation` (
  `ID` int(11) NOT NULL,
  `hotelid` int(11) NOT NULL,
  `user_id` int(250) NOT NULL,
  `cat_type` varchar(250) NOT NULL,
  `name` varchar(50) NOT NULL,
  `number_of_people` varchar(50) NOT NULL,
  `date_time` varchar(250) NOT NULL,
  `advance_date` varchar(250) NOT NULL,
  `advance_time` varchar(250) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `order_list` text NOT NULL,
  `json_order_list` mediumtext NOT NULL,
  `status` varchar(1) NOT NULL DEFAULT '0',
  `cancel_status` int(11) NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  `email` varchar(255) NOT NULL,
  `order_type` varchar(20) NOT NULL,
  `address` varchar(500) NOT NULL,
  `mobileid` varchar(100) NOT NULL,
  `city_name` varchar(1000) NOT NULL,
  `sub_city_name` varchar(250) NOT NULL,
  `delivery_time` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sc_users`
--

CREATE TABLE IF NOT EXISTS `tbl_sc_users` (
  `id` int(100) NOT NULL,
  `sc_id` varchar(100) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(100) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_scratch_coupons`
--

CREATE TABLE IF NOT EXISTS `tbl_scratch_coupons` (
  `id` int(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `message` varchar(100) NOT NULL,
  `amount` varchar(200) NOT NULL,
  `coupon_text` varchar(1000) NOT NULL,
  `image` varchar(100) NOT NULL,
  `visibility` varchar(122) NOT NULL DEFAULT '1',
  `type` varchar(250) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_scratch_coupons`
--

INSERT INTO `tbl_scratch_coupons` (`id`, `title`, `message`, `amount`, `coupon_text`, `image`, `visibility`, `type`) VALUES
(1, 'Rs. 20 Scratch coupon', 'Get flat 20 wallet amount', '20', '', 'coupon-85543_wallet.png', '1', ''),
(2, 'test', 'Get flat 50 wallet amount', '0', 'Better Luck next time', '', '1', 'text'),
(3, 'test', 'Get flat 50 wallet amount', '50', '', '62560_97224_josefs-star-line-cookies-600x200.jpg', '1', 'image'),
(4, 'Better luck next time', 'Better luck next time', '0', 'Better luck next time', '', '1', 'text');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_settings`
--

CREATE TABLE IF NOT EXISTS `tbl_settings` (
  `id` int(11) NOT NULL,
  `hotelid` int(20) NOT NULL,
  `sort` int(11) NOT NULL,
  `app_name` varchar(255) NOT NULL,
  `app_logo` varchar(255) NOT NULL,
  `app_email` varchar(255) NOT NULL,
  `app_version` varchar(255) NOT NULL,
  `app_author` varchar(255) NOT NULL,
  `app_contact` varchar(255) NOT NULL,
  `app_website` varchar(255) NOT NULL,
  `app_description` text NOT NULL,
  `app_developed_by` varchar(255) NOT NULL,
  `app_privacy_policy` text NOT NULL,
  `email_id` varchar(100) NOT NULL,
  `email_desc` mediumtext NOT NULL,
  `phone_no` varchar(100) NOT NULL,
  `message_desc` mediumtext NOT NULL,
  `complete_message_desc` mediumtext NOT NULL,
  `min_amount_rs` varchar(250) NOT NULL,
  `min_amount_msg` longtext NOT NULL,
  `fast_food_name` varchar(1000) NOT NULL,
  `sc_master_title` varchar(250) NOT NULL,
  `sc_master_image` varchar(250) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_settings`
--

INSERT INTO `tbl_settings` (`id`, `hotelid`, `sort`, `app_name`, `app_logo`, `app_email`, `app_version`, `app_author`, `app_contact`, `app_website`, `app_description`, `app_developed_by`, `app_privacy_policy`, `email_id`, `email_desc`, `phone_no`, `message_desc`, `complete_message_desc`, `min_amount_rs`, `min_amount_msg`, `fast_food_name`, `sc_master_title`, `sc_master_image`) VALUES
(1, 1, 1, 'Food Cart', 'ic_launcher.png', 'ambientes@solucionescr.online', '1.0.0', 'Food Cart', '+50624635858', 'https://www.rndtechnosoft.com', '', 'SolucionesCr', '', 'rndtechnosoft@gmail.com', '<p>Thank you for order at Food Cart.</p>\r\n', '7304945823', 'Thank you for order at  Food Cart, your order is placed.', 'Thank you for order at Food Cart, your order is delivered.', '100', 'Minimum value of the order must be ₹ 100 !', '20% de descuento en todas las comidas', 'Total Rewards', 'sc1.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_token`
--

CREATE TABLE IF NOT EXISTS `tbl_user_token` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `mobileno` varchar(20) NOT NULL,
  `emailid` varchar(50) NOT NULL,
  `mobileid` varchar(100) NOT NULL,
  `token` text NOT NULL,
  `receive_order_notification` int(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user_token`
--

INSERT INTO `tbl_user_token` (`id`, `name`, `mobileno`, `emailid`, `mobileid`, `token`, `receive_order_notification`) VALUES
(1, 'Bhavika', '9586084876', '', 'b7ca9ff8a26dc152', 'eduLlkb_vtk:APA91bGzqbN08hoB4G_btBj9MC6PnJoNEAPeUb8mpg0v_2G7ATu-ZKlCpBPTQIRZVUv5orRQaFXAt8M0u_6B1IBNVXvyNxDHQToGorQIAux_ZCSWPIOQ7G6Q_OWySBr1MrHMBGi6uslo', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE IF NOT EXISTS `tbl_users` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `password` varchar(1000) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `wallet` int(250) NOT NULL,
  `image` varchar(1000) NOT NULL,
  `dob` varchar(100) NOT NULL,
  `doa` varchar(100) NOT NULL,
  `latitude` varchar(50) NOT NULL,
  `longitude` varchar(50) NOT NULL,
  `address` varchar(1000) NOT NULL,
  `location` mediumtext NOT NULL,
  `zipcode` varchar(10) NOT NULL,
  `receive_order_notification` int(10) NOT NULL DEFAULT '0',
  `removeAt` int(10) NOT NULL DEFAULT '0',
  `versioncode` varchar(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `name`, `email`, `mobile`, `password`, `gender`, `wallet`, `image`, `dob`, `doa`, `latitude`, `longitude`, `address`, `location`, `zipcode`, `receive_order_notification`, `removeAt`, `versioncode`) VALUES
(1, 'Hiren', '', '9898256173', '', '', 0, '', '11/1/2000', '', '', '', '', '', '', 0, 0, ''),
(2, 'Bhavika', '', '9586084876', '', '', 0, '', '3/12/1997', '', '', '', '', '', '', 0, 0, '1.0');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_uses_coupon`
--

CREATE TABLE IF NOT EXISTS `tbl_uses_coupon` (
  `id` int(100) NOT NULL,
  `no_of_uses_coupon` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_uses_coupon`
--

INSERT INTO `tbl_uses_coupon` (`id`, `no_of_uses_coupon`) VALUES
(1, '1'),
(2, '2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_app_home`
--
ALTER TABLE `tbl_app_home`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_cashback`
--
ALTER TABLE `tbl_cashback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_category_type`
--
ALTER TABLE `tbl_category_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_city`
--
ALTER TABLE `tbl_city`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_city_list`
--
ALTER TABLE `tbl_city_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_coupon_code`
--
ALTER TABLE `tbl_coupon_code`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_coupon_type`
--
ALTER TABLE `tbl_coupon_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_coupon_users`
--
ALTER TABLE `tbl_coupon_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_flavour`
--
ALTER TABLE `tbl_flavour`
  ADD PRIMARY KEY (`f_id`);

--
-- Indexes for table `tbl_home_banner`
--
ALTER TABLE `tbl_home_banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_menucategory`
--
ALTER TABLE `tbl_menucategory`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `tbl_menuwallpaper`
--
ALTER TABLE `tbl_menuwallpaper`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_normal_notification`
--
ALTER TABLE `tbl_normal_notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_reservation`
--
ALTER TABLE `tbl_reservation`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_sc_users`
--
ALTER TABLE `tbl_sc_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_scratch_coupons`
--
ALTER TABLE `tbl_scratch_coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_settings`
--
ALTER TABLE `tbl_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user_token`
--
ALTER TABLE `tbl_user_token`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_uses_coupon`
--
ALTER TABLE `tbl_uses_coupon`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_app_home`
--
ALTER TABLE `tbl_app_home`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_cashback`
--
ALTER TABLE `tbl_cashback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_category_type`
--
ALTER TABLE `tbl_category_type`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_city`
--
ALTER TABLE `tbl_city`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `tbl_city_list`
--
ALTER TABLE `tbl_city_list`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_coupon_code`
--
ALTER TABLE `tbl_coupon_code`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_coupon_type`
--
ALTER TABLE `tbl_coupon_type`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_coupon_users`
--
ALTER TABLE `tbl_coupon_users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_flavour`
--
ALTER TABLE `tbl_flavour`
  MODIFY `f_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `tbl_home_banner`
--
ALTER TABLE `tbl_home_banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `tbl_menucategory`
--
ALTER TABLE `tbl_menucategory`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tbl_menuwallpaper`
--
ALTER TABLE `tbl_menuwallpaper`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `tbl_normal_notification`
--
ALTER TABLE `tbl_normal_notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tbl_reservation`
--
ALTER TABLE `tbl_reservation`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_sc_users`
--
ALTER TABLE `tbl_sc_users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_scratch_coupons`
--
ALTER TABLE `tbl_scratch_coupons`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbl_settings`
--
ALTER TABLE `tbl_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_user_token`
--
ALTER TABLE `tbl_user_token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_uses_coupon`
--
ALTER TABLE `tbl_uses_coupon`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;--
-- Database: `phpmyadmin`
--

-- --------------------------------------------------------

--
-- Table structure for table `pma_bookmark`
--

CREATE TABLE IF NOT EXISTS `pma_bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma_column_info`
--

CREATE TABLE IF NOT EXISTS `pma_column_info` (
  `id` int(5) unsigned NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma_designer_coords`
--

CREATE TABLE IF NOT EXISTS `pma_designer_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `x` int(11) DEFAULT NULL,
  `y` int(11) DEFAULT NULL,
  `v` tinyint(4) DEFAULT NULL,
  `h` tinyint(4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma_history`
--

CREATE TABLE IF NOT EXISTS `pma_history` (
  `id` bigint(20) unsigned NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma_navigationhiding`
--

CREATE TABLE IF NOT EXISTS `pma_navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

--
-- Dumping data for table `pma_navigationhiding`
--

INSERT INTO `pma_navigationhiding` (`username`, `item_name`, `item_type`, `db_name`, `table_name`) VALUES
('root', 'lugar', 'table', 'store', '');

-- --------------------------------------------------------

--
-- Table structure for table `pma_pdf_pages`
--

CREATE TABLE IF NOT EXISTS `pma_pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) unsigned NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma_recent`
--

CREATE TABLE IF NOT EXISTS `pma_recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma_recent`
--

INSERT INTO `pma_recent` (`username`, `tables`) VALUES
('root', '[{"db":"store","table":"horario"},{"db":"store","table":"ruta"},{"db":"store","table":"lugar"},{"db":"store","table":"categoria"},{"db":"store","table":"cliente"},{"db":"final_kingburger_first","table":"food_menu"},{"db":"final_kingburger_first","table":"food_city"},{"db":"final_kingburger_first","table":"food_category"},{"db":"final_kingburger_first","table":"food_delivery_boy"},{"db":"final_kingburger_first","table":"food_notification"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma_relation`
--

CREATE TABLE IF NOT EXISTS `pma_relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma_savedsearches`
--

CREATE TABLE IF NOT EXISTS `pma_savedsearches` (
  `id` int(5) unsigned NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma_table_coords`
--

CREATE TABLE IF NOT EXISTS `pma_table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float unsigned NOT NULL DEFAULT '0',
  `y` float unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma_table_info`
--

CREATE TABLE IF NOT EXISTS `pma_table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma_table_uiprefs`
--

CREATE TABLE IF NOT EXISTS `pma_table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma_table_uiprefs`
--

INSERT INTO `pma_table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'radjabangunandb', 'kabkot', '{"sorted_col":"`id_kabkot` ASC"}', '2020-04-05 00:28:11'),
('root', 'store', 'cliente', '[]', '2020-04-06 23:23:12'),
('root', 'store', 'producto', '{"CREATE_TIME":"2020-04-07 17:29:11","col_visib":["1","1","1","1","1","1","1","1","1","1"]}', '2020-04-10 16:35:40'),
('root', 'store', 'persona', '{"sorted_col":"`persona`.`destino_persona` ASC"}', '2020-04-15 20:42:36'),
('root', 'store', 'personal', '[]', '2020-04-15 20:25:28');

-- --------------------------------------------------------

--
-- Table structure for table `pma_tracking`
--

CREATE TABLE IF NOT EXISTS `pma_tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) unsigned NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) unsigned NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma_userconfig`
--

CREATE TABLE IF NOT EXISTS `pma_userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma_userconfig`
--

INSERT INTO `pma_userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2020-04-15 17:06:58', '{"collation_connection":"utf8mb4_unicode_ci"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma_usergroups`
--

CREATE TABLE IF NOT EXISTS `pma_usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma_users`
--

CREATE TABLE IF NOT EXISTS `pma_users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma_bookmark`
--
ALTER TABLE `pma_bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma_column_info`
--
ALTER TABLE `pma_column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma_designer_coords`
--
ALTER TABLE `pma_designer_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma_history`
--
ALTER TABLE `pma_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma_navigationhiding`
--
ALTER TABLE `pma_navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma_pdf_pages`
--
ALTER TABLE `pma_pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma_recent`
--
ALTER TABLE `pma_recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma_relation`
--
ALTER TABLE `pma_relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma_savedsearches`
--
ALTER TABLE `pma_savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma_table_coords`
--
ALTER TABLE `pma_table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma_table_info`
--
ALTER TABLE `pma_table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma_table_uiprefs`
--
ALTER TABLE `pma_table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma_tracking`
--
ALTER TABLE `pma_tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma_userconfig`
--
ALTER TABLE `pma_userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma_usergroups`
--
ALTER TABLE `pma_usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma_users`
--
ALTER TABLE `pma_users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma_bookmark`
--
ALTER TABLE `pma_bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma_column_info`
--
ALTER TABLE `pma_column_info`
  MODIFY `id` int(5) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma_history`
--
ALTER TABLE `pma_history`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma_pdf_pages`
--
ALTER TABLE `pma_pdf_pages`
  MODIFY `page_nr` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma_savedsearches`
--
ALTER TABLE `pma_savedsearches`
  MODIFY `id` int(5) unsigned NOT NULL AUTO_INCREMENT;--
-- Database: `store`
--

-- --------------------------------------------------------

--
-- Table structure for table `administrador`
--

CREATE TABLE IF NOT EXISTS `administrador` (
  `Nombre` varchar(30) NOT NULL,
  `Clave` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `administrador`
--

INSERT INTO `administrador` (`Nombre`, `Clave`) VALUES
('admin', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Table structure for table `categoria`
--

CREATE TABLE IF NOT EXISTS `categoria` (
  `CodigoCat` varchar(30) NOT NULL,
  `Nombre` varchar(30) NOT NULL,
  `Descripcion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categoria`
--

INSERT INTO `categoria` (`CodigoCat`, `Nombre`, `Descripcion`) VALUES
('C1', 'Electrodomésticos', 'Electrodomésticos'),
('C2', 'Multimedia', 'Articulos de entretenimiento y diversión'),
('C3', 'Móbiles', 'Teléfonos celulares smartphones');

-- --------------------------------------------------------

--
-- Table structure for table `cliente`
--

CREATE TABLE IF NOT EXISTS `cliente` (
  `NIT` varchar(30) NOT NULL,
  `Nombre` varchar(30) NOT NULL,
  `NombreCompleto` varchar(70) NOT NULL,
  `Apellido` varchar(70) NOT NULL,
  `Clave` text NOT NULL,
  `Direccion` varchar(200) NOT NULL,
  `Telefono` int(20) NOT NULL,
  `Email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `detalle`
--

CREATE TABLE IF NOT EXISTS `detalle` (
  `NumPedido` int(20) NOT NULL,
  `CodigoProd` varchar(30) NOT NULL,
  `CantidadProductos` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `horario`
--

CREATE TABLE IF NOT EXISTS `horario` (
  `id` int(11) NOT NULL,
  `hora` text NOT NULL,
  `id_ruta` int(11) NOT NULL,
  `cooperativa` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `horario`
--

INSERT INTO `horario` (`id`, `hora`, `id_ruta`, `cooperativa`) VALUES
(1, '01H00 / 02H00 / 03H00 / 05H30 / 09H30 / 11H45 / 12H25', 1, 'Amazonas'),
(2, '08H30 / 09H30', 2, 'Amazonas'),
(4, '04H30 / 12H00', 3, 'Amazonas'),
(5, '01H30 / 04H30 / 06H30 / 07H30 / 15H15 / 17H00', 4, 'Jumandy'),
(6, '04H30 / 08H00 / 11H00 / 12H15 / 14H30 / 16H45 / 18H00', 5, 'Jumandy'),
(7, '10H00 / 11H00 / 13H00 / 13H50 / 24H00 / 00H30', 4, 'TRANSPORTES BAÑOS'),
(8, '06H00 / 13H30 / 14H30 / 01H45 ', 3, 'TRANSPORTES BAÑOS'),
(9, '22H20', 6, 'TRANSPORTES BAÑOS'),
(10, '00H50', 7, 'TRANSPORTES BAÑOS'),
(11, '01H30 / 04H30 / 06H30 / 07H30 / 15H15 / 17H00 ', 4, 'EXPRESS BAÑOS'),
(12, '01H00 / 03H30 / 08H00 / 10H00 / 14H00 / 17H00 / 19H00', 3, 'EXPRESS BAÑOS'),
(13, '07H45 / 10H30 / 15H30 / 15H45 / 19H00 / 22H00 / 24H30 ', 4, 'FLOTA PELILEO'),
(14, '07H00/ 08H30 / 16H00 / 21H00', 3, 'FLOTA PELILEO'),
(15, '09H00', 7, 'FLOTA PELILEO'),
(16, '19H30', 6, 'FLOTA PELILEO'),
(17, '02H00 / 03H00 / 04H00 / 05H30', 12, 'TRANSPORTE RIOBAMBA'),
(18, '09H00 / 10H20 / 15H00 / 15H30 / 18H00', 9, 'TRANSPORTE RIOBAMBA'),
(19, '03H30 / 06H30 / 10H00 ', 13, 'VALLE DE LOS QUIJOS'),
(20, '13H00 / 23H00', 14, 'VALLE DE LOS QUIJOS'),
(21, '08H30 / 17H00', 15, 'VALLE DE LOS QUIJOS'),
(22, '12H45 / 15H00 / 17H45', 16, 'VALLE DE LOS QUIJOS');

-- --------------------------------------------------------

--
-- Table structure for table `lugar`
--

CREATE TABLE IF NOT EXISTS `lugar` (
  `id` int(11) NOT NULL,
  `Comunidad` text NOT NULL,
  `Estado` text NOT NULL,
  `Pais` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lugar`
--

INSERT INTO `lugar` (`id`, `Comunidad`, `Estado`, `Pais`) VALUES
(1, 'Tena', '', 'Ecuador'),
(2, 'Quito', '', 'Ecuador'),
(3, 'Misahualli', '', 'Ecuador'),
(4, 'Baeza', '', 'Ecuador'),
(5, 'Loreto', '', 'Ecuador'),
(6, 'Coca', '', 'Ecuador'),
(7, 'Guayaquil', '', 'Ecuador'),
(8, 'Ambato', '', 'Ecuador'),
(9, 'Puyo', '', 'Ecuador'),
(10, 'Riobamba', '', 'Ecuador'),
(11, 'Sacha', '', 'Ecuador'),
(12, 'Limoncocha', '', 'Ecuador'),
(13, 'Ponpeya', '', 'Ecuador'),
(14, 'Chaco', '', 'Ecuador'),
(15, 'Puerto Murialdo', '', 'Ecuador'),
(16, 'San Luis', '', 'Ecuador');

-- --------------------------------------------------------

--
-- Table structure for table `persona`
--

CREATE TABLE IF NOT EXISTS `persona` (
  `id` int(11) NOT NULL COMMENT 'Llave Primaria',
  `nombre_cooperativa` text NOT NULL COMMENT 'Nombre de Personal',
  `origen_persona` text NOT NULL COMMENT 'Salario personal',
  `ruta_persona` text NOT NULL COMMENT 'Edad Empleado',
  `destino_persona` text NOT NULL,
  `ruta_hora` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='Tabla Personal';

--
-- Dumping data for table `persona`
--

INSERT INTO `persona` (`id`, `nombre_cooperativa`, `origen_persona`, `ruta_persona`, `destino_persona`, `ruta_hora`) VALUES
(1, 'Amazonas', 'MISAHUALLI-TENA', 'MISAHUALLI-TENA-QUITO', 'QUITO', '01H00/-2H00'),
(2, 'Luis Castro', '12000', '43', '', ''),
(3, 'Marcos Cuneo', '6000', '35', '', ''),
(4, 'Kelly Valdivia', '5600', '22', '', ''),
(5, 'Mario Bonneti', '7500', '33', '', ''),
(6, 'William Soto', '3500', '25', '', ''),
(7, 'Hector Carrillo', '6300', '28', '', ''),
(8, 'Luisa Collasos', '4500', '31', '', ''),
(9, 'Michael Yuri', '9200', '39', '', ''),
(10, 'Sofia Frisa', '3800', '26', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `producto`
--

CREATE TABLE IF NOT EXISTS `producto` (
  `CodigoProd` varchar(30) NOT NULL,
  `NombreProd` varchar(30) NOT NULL,
  `CodigoCat` varchar(30) NOT NULL,
  `Precio` decimal(30,2) NOT NULL,
  `Modelo` varchar(30) NOT NULL,
  `Marca` varchar(30) NOT NULL,
  `Stock` int(20) NOT NULL,
  `NITProveedor` varchar(30) NOT NULL,
  `Imagen` varchar(150) NOT NULL,
  `Nombre` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `producto`
--

INSERT INTO `producto` (`CodigoProd`, `NombreProd`, `CodigoCat`, `Precio`, `Modelo`, `Marca`, `Stock`, `NITProveedor`, `Imagen`, `Nombre`) VALUES
('10101010', 'joasude', 'C2', '10.00', '2018', 'hik', 10, '0001783', 'telefonia_ip.jpg', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `proveedor`
--

CREATE TABLE IF NOT EXISTS `proveedor` (
  `NITProveedor` varchar(30) NOT NULL,
  `NombreProveedor` varchar(30) NOT NULL,
  `Direccion` varchar(200) NOT NULL,
  `Telefono` int(20) NOT NULL,
  `PaginaWeb` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `proveedor`
--

INSERT INTO `proveedor` (`NITProveedor`, `NombreProveedor`, `Direccion`, `Telefono`, `PaginaWeb`) VALUES
('0001781', 'Sony', 'Minato, Tokio, Japón', 22596485, 'www.sony.com'),
('0001782', 'HTC', 'Taoyuan, Taiwán, (República de China)', 25987456, 'www.htc.com'),
('0001783', 'TCL', 'Huizhou, Guangdong, China', 25698745, 'tcl.com.ar'),
('0001785', 'Samsung', 'Samsung Town, Seúl, Corea del Sur', 22504787, 'www.samsung.com'),
('0001787', 'LG', 'Seúl,Corea del Sur', 26589874, 'www.lg.com'),
('0001788', 'Compaq', 'Houston, Texas, EE.UU', 24569875, 'www.compaq.com');

-- --------------------------------------------------------

--
-- Table structure for table `ruta`
--

CREATE TABLE IF NOT EXISTS `ruta` (
  `id` int(11) NOT NULL,
  `id_lugar` int(11) NOT NULL,
  `posicion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ruta`
--

INSERT INTO `ruta` (`id`, `id_lugar`, `posicion`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 1),
(4, 1, 1),
(5, 1, 1),
(6, 1, 1),
(7, 1, 1),
(8, 1, 1),
(11, 1, 1),
(12, 1, 1),
(13, 1, 1),
(15, 1, 1),
(16, 1, 1),
(1, 2, 2),
(2, 2, 3),
(4, 2, 3),
(2, 3, 1),
(4, 4, 2),
(11, 4, 2),
(16, 4, 2),
(5, 5, 2),
(5, 6, 3),
(7, 6, 2),
(11, 6, 3),
(13, 6, 2),
(6, 7, 2),
(3, 8, 2),
(9, 8, 1),
(8, 9, 2),
(9, 10, 2),
(12, 10, 2),
(10, 11, 2),
(13, 11, 3),
(14, 12, 1),
(14, 13, 2),
(16, 14, 3),
(10, 15, 1),
(15, 15, 2),
(16, 16, 4);

-- --------------------------------------------------------

--
-- Table structure for table `venta`
--

CREATE TABLE IF NOT EXISTS `venta` (
  `NumPedido` int(20) NOT NULL,
  `Fecha` varchar(150) NOT NULL,
  `NIT` varchar(30) NOT NULL,
  `Descuento` int(20) NOT NULL,
  `TotalPagar` decimal(30,2) NOT NULL,
  `Estado` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `administrador`
--
ALTER TABLE `administrador`
  ADD PRIMARY KEY (`Nombre`);

--
-- Indexes for table `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`CodigoCat`);

--
-- Indexes for table `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`NIT`);

--
-- Indexes for table `detalle`
--
ALTER TABLE `detalle`
  ADD KEY `NumPedido` (`NumPedido`),
  ADD KEY `CodigoProd` (`CodigoProd`);

--
-- Indexes for table `horario`
--
ALTER TABLE `horario`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_ruta` (`id_ruta`);

--
-- Indexes for table `lugar`
--
ALTER TABLE `lugar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`CodigoProd`),
  ADD KEY `CodigoCat` (`CodigoCat`),
  ADD KEY `NITProveedor` (`NITProveedor`),
  ADD KEY `Agregado` (`Nombre`);

--
-- Indexes for table `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`NITProveedor`);

--
-- Indexes for table `ruta`
--
ALTER TABLE `ruta`
  ADD PRIMARY KEY (`id`,`id_lugar`,`posicion`),
  ADD KEY `id_lugar` (`id_lugar`);

--
-- Indexes for table `venta`
--
ALTER TABLE `venta`
  ADD PRIMARY KEY (`NumPedido`),
  ADD KEY `NIT` (`NIT`),
  ADD KEY `NIT_2` (`NIT`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `horario`
--
ALTER TABLE `horario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `lugar`
--
ALTER TABLE `lugar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `persona`
--
ALTER TABLE `persona`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Llave Primaria',AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `venta`
--
ALTER TABLE `venta`
  MODIFY `NumPedido` int(20) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `detalle`
--
ALTER TABLE `detalle`
  ADD CONSTRAINT `detalle_ibfk_8` FOREIGN KEY (`CodigoProd`) REFERENCES `producto` (`CodigoProd`) ON UPDATE CASCADE,
  ADD CONSTRAINT `detalle_ibfk_9` FOREIGN KEY (`NumPedido`) REFERENCES `venta` (`NumPedido`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `horario`
--
ALTER TABLE `horario`
  ADD CONSTRAINT `horario_ibfk_1` FOREIGN KEY (`id_ruta`) REFERENCES `ruta` (`id`);

--
-- Constraints for table `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `producto_ibfk_7` FOREIGN KEY (`CodigoCat`) REFERENCES `categoria` (`CodigoCat`) ON UPDATE CASCADE,
  ADD CONSTRAINT `producto_ibfk_8` FOREIGN KEY (`NITProveedor`) REFERENCES `proveedor` (`NITProveedor`) ON UPDATE CASCADE,
  ADD CONSTRAINT `producto_ibfk_9` FOREIGN KEY (`Nombre`) REFERENCES `administrador` (`Nombre`);

--
-- Constraints for table `ruta`
--
ALTER TABLE `ruta`
  ADD CONSTRAINT `ruta_ibfk_1` FOREIGN KEY (`id_lugar`) REFERENCES `lugar` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `venta`
--
ALTER TABLE `venta`
  ADD CONSTRAINT `venta_ibfk_1` FOREIGN KEY (`NIT`) REFERENCES `cliente` (`NIT`) ON UPDATE CASCADE;
--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `age` int(3) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
