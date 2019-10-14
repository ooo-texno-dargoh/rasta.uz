-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 12, 2019 at 05:33 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `market`
--

-- --------------------------------------------------------

--
-- Table structure for table `bank`
--

CREATE TABLE `bank` (
  `id` int(11) NOT NULL,
  `mfo` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bank`
--

INSERT INTO `bank` (`id`, `mfo`, `name`, `status`) VALUES
(1, 123, 'bilimman', 1);

-- --------------------------------------------------------

--
-- Table structure for table `barcodes`
--

CREATE TABLE `barcodes` (
  `id` int(11) NOT NULL,
  `barcode` varchar(150) DEFAULT NULL,
  `good_id` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `brends`
--

CREATE TABLE `brends` (
  `id` int(11) NOT NULL,
  `factory_id` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `brend_names`
--

CREATE TABLE `brend_names` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `brend_id` int(11) NOT NULL,
  `lang_id` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `status`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `category_names`
--

CREATE TABLE `category_names` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `lang_id` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `citytowns`
--

CREATE TABLE `citytowns` (
  `id` int(11) NOT NULL,
  `code` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `region_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `citytown_names`
--

CREATE TABLE `citytown_names` (
  `id` int(11) NOT NULL,
  `name` int(11) NOT NULL,
  `lang_id` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `mfo` int(11) NOT NULL,
  `oked` varchar(255) NOT NULL,
  `account_number` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `landmark` varchar(255) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `phone1` varchar(100) NOT NULL,
  `telegram` varchar(255) NOT NULL,
  `director` varchar(255) NOT NULL,
  `client_type_id` int(11) NOT NULL,
  `bank_id` int(11) NOT NULL,
  `notes` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `client_type`
--

CREATE TABLE `client_type` (
  `id` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `client_type_names`
--

CREATE TABLE `client_type_names` (
  `id` int(11) NOT NULL,
  `client_type_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `lang_id` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `currency_rate`
--

CREATE TABLE `currency_rate` (
  `id` int(11) NOT NULL,
  `rate` double NOT NULL,
  `datatime` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `klass` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `factories`
--

CREATE TABLE `factories` (
  `id` int(11) NOT NULL,
  `region_id` int(11) NOT NULL DEFAULT 0,
  `citytown_id` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `factory_names`
--

CREATE TABLE `factory_names` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `lang_id` int(11) NOT NULL DEFAULT 0,
  `adress` varchar(255) NOT NULL,
  `factory_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `goods`
--

CREATE TABLE `goods` (
  `id` int(11) NOT NULL,
  `weight` double NOT NULL DEFAULT 1,
  `unit_type_id` int(11) NOT NULL,
  `count_in_case` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `brend_id` int(11) NOT NULL,
  `factory_id` int(11) NOT NULL,
  `min_count` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `data_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `good_fotos`
--

CREATE TABLE `good_fotos` (
  `id` int(11) NOT NULL,
  `url` varchar(150) NOT NULL,
  `good_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `good_names`
--

CREATE TABLE `good_names` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `shortname` varchar(255) DEFAULT NULL,
  `body` text DEFAULT NULL,
  `lang_id` int(11) NOT NULL DEFAULT 0,
  `good_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `kashes`
--

CREATE TABLE `kashes` (
  `id` int(11) NOT NULL,
  `code` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `kash_names`
--

CREATE TABLE `kash_names` (
  `id` int(11) NOT NULL,
  `kash_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `lang_id` int(11) NOT NULL,
  `adress` varchar(255) NOT NULL,
  `status` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `lang`
--

CREATE TABLE `lang` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `short` varchar(100) NOT NULL,
  `class` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lang`
--

INSERT INTO `lang` (`id`, `name`, `short`, `class`, `icon`, `status`) VALUES
(0, 'O\'zbekcha', 'uz', 'uz', 'url', 1);

-- --------------------------------------------------------

--
-- Table structure for table `my_requisites`
--

CREATE TABLE `my_requisites` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `mfo` int(11) NOT NULL,
  `oked` varchar(255) NOT NULL,
  `account_number` varchar(255) NOT NULL,
  `adress` varchar(255) NOT NULL,
  `landmark` varchar(255) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `directory` varchar(100) NOT NULL,
  `lang_id` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `datetime` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `kash_id` int(11) NOT NULL,
  `total_sum` double NOT NULL,
  `nds` double NOT NULL,
  `discount` double NOT NULL,
  `order_type_id` int(11) NOT NULL,
  `good_types_count` int(11) NOT NULL,
  `goods_count` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `order_types`
--

CREATE TABLE `order_types` (
  `id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `code` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `order_type_names`
--

CREATE TABLE `order_type_names` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `note` varchar(255) NOT NULL,
  `lang_id` int(11) NOT NULL DEFAULT 0,
  `order_type_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `payment_type_id` int(11) NOT NULL,
  `sum` double NOT NULL,
  `datetime` datetime NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `payment_types`
--

CREATE TABLE `payment_types` (
  `id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `payment_type_names`
--

CREATE TABLE `payment_type_names` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `payment_type_id` int(11) NOT NULL,
  `lang_id` int(11) DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `prices`
--

CREATE TABLE `prices` (
  `id` int(11) NOT NULL,
  `good_id` int(11) NOT NULL,
  `price_type_id` int(11) NOT NULL,
  `price` double NOT NULL,
  `datetime` datetime DEFAULT NULL,
  `is_currency` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `price_type`
--

CREATE TABLE `price_type` (
  `id` int(11) NOT NULL,
  `percent` double NOT NULL DEFAULT 0,
  `status` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `price_type_names`
--

CREATE TABLE `price_type_names` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price_type_id` int(11) NOT NULL,
  `lang_id` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `printers`
--

CREATE TABLE `printers` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `port` varchar(100) NOT NULL,
  `host` varchar(255) NOT NULL,
  `note` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `printer_themes`
--

CREATE TABLE `printer_themes` (
  `id` int(11) NOT NULL,
  `printer_id` int(11) NOT NULL,
  `theme` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `regions`
--

CREATE TABLE `regions` (
  `id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `code` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `region_names`
--

CREATE TABLE `region_names` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `lang_id` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `role` int(11) NOT NULL DEFAULT 10,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `role`, `status`) VALUES
(1, 10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `role_names`
--

CREATE TABLE `role_names` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `lang_id` int(11) NOT NULL DEFAULT 0,
  `role_id` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sold_goods`
--

CREATE TABLE `sold_goods` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `good_id` int(11) NOT NULL,
  `count` int(11) NOT NULL,
  `price` double NOT NULL,
  `unit_type_id` int(11) NOT NULL,
  `wherehouse_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `unit_type`
--

CREATE TABLE `unit_type` (
  `id` int(11) NOT NULL,
  `status` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `unit_type_names`
--

CREATE TABLE `unit_type_names` (
  `id` int(11) NOT NULL,
  `lang_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(150) NOT NULL,
  `unit_type_id` int(11) NOT NULL,
  `status` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `fio` varchar(250) NOT NULL,
  `role` int(11) NOT NULL DEFAULT 10,
  `phone` varchar(100) NOT NULL,
  `phone1` varchar(100) NOT NULL,
  `lang_id` int(11) NOT NULL DEFAULT 0,
  `photo` varchar(250) NOT NULL,
  `telegram` varchar(250) NOT NULL,
  `is_active` int(11) NOT NULL,
  `online` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `fio`, `role`, `phone`, `phone1`, `lang_id`, `photo`, `telegram`, `is_active`, `online`, `status`) VALUES
(15, 'admin', '$2y$13$aeYVJe/hykA/rWWVhmRtGe.Bi13R.l54/sayCbyaOAvSYp2gSETrS', 'Furqat', 10, '+998999671042', '+998999671042', 0, 'varchar', '@FurqatMasharipov', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wherehouses`
--

CREATE TABLE `wherehouses` (
  `id` int(11) NOT NULL,
  `good_id` int(11) NOT NULL,
  `seriya` varchar(255) NOT NULL,
  `count` int(11) NOT NULL,
  `wherehouse_group_id` int(11) NOT NULL,
  `expiry_date` date NOT NULL,
  `add_date` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `retail_price` double NOT NULL,
  `base_price` double NOT NULL,
  `wholesale_price` double NOT NULL,
  `retail_dallor` double NOT NULL,
  `base_dallor` double NOT NULL,
  `wholesale_dallor` double NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wherehouse_groups`
--

CREATE TABLE `wherehouse_groups` (
  `id` int(11) NOT NULL,
  `adress` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wherehouse_group_names`
--

CREATE TABLE `wherehouse_group_names` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `wherehouse_group_id` int(11) NOT NULL,
  `lang_id` int(11) NOT NULL DEFAULT 0,
  `note` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bank`
--
ALTER TABLE `bank`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mfo` (`mfo`);

--
-- Indexes for table `barcodes`
--
ALTER TABLE `barcodes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `good_id` (`good_id`);

--
-- Indexes for table `brends`
--
ALTER TABLE `brends`
  ADD PRIMARY KEY (`id`),
  ADD KEY `factory_id` (`factory_id`);

--
-- Indexes for table `brend_names`
--
ALTER TABLE `brend_names`
  ADD PRIMARY KEY (`id`),
  ADD KEY `brend_id` (`brend_id`),
  ADD KEY `lang_id` (`lang_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_names`
--
ALTER TABLE `category_names`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `lang_id` (`lang_id`);

--
-- Indexes for table `citytowns`
--
ALTER TABLE `citytowns`
  ADD PRIMARY KEY (`id`),
  ADD KEY `region_id` (`region_id`),
  ADD KEY `region_id_2` (`region_id`);

--
-- Indexes for table `citytown_names`
--
ALTER TABLE `citytown_names`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lang_id` (`lang_id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mfo` (`mfo`),
  ADD KEY `client_type_id` (`client_type_id`),
  ADD KEY `bank_id` (`bank_id`);

--
-- Indexes for table `client_type`
--
ALTER TABLE `client_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `client_type_names`
--
ALTER TABLE `client_type_names`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lang_id` (`lang_id`),
  ADD KEY `client_type_id` (`client_type_id`);

--
-- Indexes for table `currency_rate`
--
ALTER TABLE `currency_rate`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `factories`
--
ALTER TABLE `factories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `region_id` (`region_id`),
  ADD KEY `citytown_id` (`citytown_id`);

--
-- Indexes for table `factory_names`
--
ALTER TABLE `factory_names`
  ADD PRIMARY KEY (`id`),
  ADD KEY `factory_id` (`factory_id`),
  ADD KEY `factory_id_2` (`factory_id`),
  ADD KEY `lang_id` (`lang_id`);

--
-- Indexes for table `goods`
--
ALTER TABLE `goods`
  ADD PRIMARY KEY (`id`),
  ADD KEY `unit_type_id` (`unit_type_id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `brend_id` (`brend_id`),
  ADD KEY `factory_id` (`factory_id`);

--
-- Indexes for table `good_fotos`
--
ALTER TABLE `good_fotos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `good_id` (`good_id`);

--
-- Indexes for table `good_names`
--
ALTER TABLE `good_names`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lang_id` (`lang_id`),
  ADD KEY `good_id` (`good_id`);

--
-- Indexes for table `kashes`
--
ALTER TABLE `kashes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kash_names`
--
ALTER TABLE `kash_names`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lang`
--
ALTER TABLE `lang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `my_requisites`
--
ALTER TABLE `my_requisites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lang_id` (`lang_id`),
  ADD KEY `mfo` (`mfo`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `client_id` (`client_id`),
  ADD KEY `kash_id` (`kash_id`),
  ADD KEY `order_type_id` (`order_type_id`);

--
-- Indexes for table `order_types`
--
ALTER TABLE `order_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_type_names`
--
ALTER TABLE `order_type_names`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lang_id` (`lang_id`),
  ADD KEY `order_type_id` (`order_type_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `payment_type_id` (`payment_type_id`);

--
-- Indexes for table `payment_types`
--
ALTER TABLE `payment_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_type_names`
--
ALTER TABLE `payment_type_names`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lang_id` (`lang_id`),
  ADD KEY `payment_type_id` (`payment_type_id`);

--
-- Indexes for table `prices`
--
ALTER TABLE `prices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `price_type_id` (`price_type_id`);

--
-- Indexes for table `price_type`
--
ALTER TABLE `price_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `price_type_names`
--
ALTER TABLE `price_type_names`
  ADD PRIMARY KEY (`id`),
  ADD KEY `price_type_id` (`price_type_id`),
  ADD KEY `lang_id` (`lang_id`);

--
-- Indexes for table `printers`
--
ALTER TABLE `printers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `printer_themes`
--
ALTER TABLE `printer_themes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `printer_id` (`printer_id`);

--
-- Indexes for table `regions`
--
ALTER TABLE `regions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `region_names`
--
ALTER TABLE `region_names`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lang_id` (`lang_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role` (`role`);

--
-- Indexes for table `role_names`
--
ALTER TABLE `role_names`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lang_id` (`lang_id`),
  ADD KEY `role_id` (`role_id`),
  ADD KEY `lang_id_2` (`lang_id`),
  ADD KEY `role_id_2` (`role_id`);

--
-- Indexes for table `sold_goods`
--
ALTER TABLE `sold_goods`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `good_id` (`good_id`),
  ADD KEY `unit_type_id` (`unit_type_id`),
  ADD KEY `wherehouse_id` (`wherehouse_id`);

--
-- Indexes for table `unit_type`
--
ALTER TABLE `unit_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `unit_type_names`
--
ALTER TABLE `unit_type_names`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lang_id` (`lang_id`),
  ADD KEY `lang_id_2` (`lang_id`),
  ADD KEY `unit_type_id` (`unit_type_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lang_id` (`lang_id`),
  ADD KEY `role` (`role`);

--
-- Indexes for table `wherehouses`
--
ALTER TABLE `wherehouses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `good_id` (`good_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `client_id` (`client_id`),
  ADD KEY `wherehouse_group_id` (`wherehouse_group_id`);

--
-- Indexes for table `wherehouse_groups`
--
ALTER TABLE `wherehouse_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wherehouse_group_names`
--
ALTER TABLE `wherehouse_group_names`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lang_id` (`lang_id`),
  ADD KEY `wherehouse_group_id` (`wherehouse_group_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bank`
--
ALTER TABLE `bank`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `barcodes`
--
ALTER TABLE `barcodes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `brends`
--
ALTER TABLE `brends`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `brend_names`
--
ALTER TABLE `brend_names`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category_names`
--
ALTER TABLE `category_names`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `citytowns`
--
ALTER TABLE `citytowns`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `citytown_names`
--
ALTER TABLE `citytown_names`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `client_type`
--
ALTER TABLE `client_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `client_type_names`
--
ALTER TABLE `client_type_names`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `currency_rate`
--
ALTER TABLE `currency_rate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `factories`
--
ALTER TABLE `factories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `factory_names`
--
ALTER TABLE `factory_names`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `goods`
--
ALTER TABLE `goods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `good_fotos`
--
ALTER TABLE `good_fotos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `good_names`
--
ALTER TABLE `good_names`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kashes`
--
ALTER TABLE `kashes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kash_names`
--
ALTER TABLE `kash_names`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lang`
--
ALTER TABLE `lang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `my_requisites`
--
ALTER TABLE `my_requisites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_types`
--
ALTER TABLE `order_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_type_names`
--
ALTER TABLE `order_type_names`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_types`
--
ALTER TABLE `payment_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_type_names`
--
ALTER TABLE `payment_type_names`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `prices`
--
ALTER TABLE `prices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `price_type`
--
ALTER TABLE `price_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `price_type_names`
--
ALTER TABLE `price_type_names`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `printers`
--
ALTER TABLE `printers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `printer_themes`
--
ALTER TABLE `printer_themes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `regions`
--
ALTER TABLE `regions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `region_names`
--
ALTER TABLE `region_names`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `role_names`
--
ALTER TABLE `role_names`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sold_goods`
--
ALTER TABLE `sold_goods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `unit_type`
--
ALTER TABLE `unit_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `unit_type_names`
--
ALTER TABLE `unit_type_names`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `wherehouses`
--
ALTER TABLE `wherehouses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wherehouse_groups`
--
ALTER TABLE `wherehouse_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wherehouse_group_names`
--
ALTER TABLE `wherehouse_group_names`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `barcodes`
--
ALTER TABLE `barcodes`
  ADD CONSTRAINT `barcodes_ibfk_1` FOREIGN KEY (`good_id`) REFERENCES `goods` (`id`) ON DELETE NO ACTION;

--
-- Constraints for table `brends`
--
ALTER TABLE `brends`
  ADD CONSTRAINT `brends_ibfk_1` FOREIGN KEY (`factory_id`) REFERENCES `factories` (`id`) ON DELETE NO ACTION;

--
-- Constraints for table `brend_names`
--
ALTER TABLE `brend_names`
  ADD CONSTRAINT `brend_names_ibfk_1` FOREIGN KEY (`brend_id`) REFERENCES `brends` (`id`) ON DELETE NO ACTION,
  ADD CONSTRAINT `brend_names_ibfk_2` FOREIGN KEY (`lang_id`) REFERENCES `lang` (`id`) ON DELETE NO ACTION;

--
-- Constraints for table `category_names`
--
ALTER TABLE `category_names`
  ADD CONSTRAINT `category_names_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE NO ACTION,
  ADD CONSTRAINT `category_names_ibfk_2` FOREIGN KEY (`lang_id`) REFERENCES `lang` (`id`) ON DELETE NO ACTION;

--
-- Constraints for table `citytowns`
--
ALTER TABLE `citytowns`
  ADD CONSTRAINT `citytowns_ibfk_1` FOREIGN KEY (`region_id`) REFERENCES `regions` (`id`) ON DELETE NO ACTION;

--
-- Constraints for table `citytown_names`
--
ALTER TABLE `citytown_names`
  ADD CONSTRAINT `citytown_names_ibfk_1` FOREIGN KEY (`lang_id`) REFERENCES `citytowns` (`id`) ON DELETE NO ACTION;

--
-- Constraints for table `clients`
--
ALTER TABLE `clients`
  ADD CONSTRAINT `clients_ibfk_1` FOREIGN KEY (`mfo`) REFERENCES `bank` (`mfo`) ON DELETE NO ACTION,
  ADD CONSTRAINT `clients_ibfk_2` FOREIGN KEY (`client_type_id`) REFERENCES `client_type` (`id`) ON DELETE NO ACTION,
  ADD CONSTRAINT `clients_ibfk_3` FOREIGN KEY (`bank_id`) REFERENCES `bank` (`id`) ON DELETE NO ACTION;

--
-- Constraints for table `client_type_names`
--
ALTER TABLE `client_type_names`
  ADD CONSTRAINT `client_type_names_ibfk_1` FOREIGN KEY (`client_type_id`) REFERENCES `client_type` (`id`) ON DELETE NO ACTION,
  ADD CONSTRAINT `client_type_names_ibfk_2` FOREIGN KEY (`lang_id`) REFERENCES `lang` (`id`) ON DELETE NO ACTION;

--
-- Constraints for table `currency_rate`
--
ALTER TABLE `currency_rate`
  ADD CONSTRAINT `currency_rate_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION;

--
-- Constraints for table `factories`
--
ALTER TABLE `factories`
  ADD CONSTRAINT `factories_ibfk_1` FOREIGN KEY (`region_id`) REFERENCES `regions` (`id`) ON DELETE NO ACTION,
  ADD CONSTRAINT `factories_ibfk_2` FOREIGN KEY (`citytown_id`) REFERENCES `citytowns` (`id`) ON DELETE NO ACTION;

--
-- Constraints for table `factory_names`
--
ALTER TABLE `factory_names`
  ADD CONSTRAINT `factory_names_ibfk_1` FOREIGN KEY (`lang_id`) REFERENCES `lang` (`id`) ON DELETE NO ACTION,
  ADD CONSTRAINT `factory_names_ibfk_2` FOREIGN KEY (`factory_id`) REFERENCES `factories` (`id`) ON DELETE NO ACTION;

--
-- Constraints for table `goods`
--
ALTER TABLE `goods`
  ADD CONSTRAINT `goods_ibfk_1` FOREIGN KEY (`unit_type_id`) REFERENCES `unit_type` (`id`) ON DELETE NO ACTION,
  ADD CONSTRAINT `goods_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE NO ACTION,
  ADD CONSTRAINT `goods_ibfk_3` FOREIGN KEY (`brend_id`) REFERENCES `brends` (`id`) ON DELETE NO ACTION,
  ADD CONSTRAINT `goods_ibfk_4` FOREIGN KEY (`factory_id`) REFERENCES `factories` (`id`) ON DELETE NO ACTION;

--
-- Constraints for table `good_fotos`
--
ALTER TABLE `good_fotos`
  ADD CONSTRAINT `good_fotos_ibfk_1` FOREIGN KEY (`good_id`) REFERENCES `goods` (`id`) ON DELETE NO ACTION;

--
-- Constraints for table `good_names`
--
ALTER TABLE `good_names`
  ADD CONSTRAINT `good_names_ibfk_1` FOREIGN KEY (`lang_id`) REFERENCES `lang` (`id`) ON DELETE NO ACTION,
  ADD CONSTRAINT `good_names_ibfk_2` FOREIGN KEY (`good_id`) REFERENCES `goods` (`id`) ON DELETE NO ACTION;

--
-- Constraints for table `my_requisites`
--
ALTER TABLE `my_requisites`
  ADD CONSTRAINT `my_requisites_ibfk_1` FOREIGN KEY (`lang_id`) REFERENCES `lang` (`id`) ON DELETE NO ACTION,
  ADD CONSTRAINT `my_requisites_ibfk_2` FOREIGN KEY (`mfo`) REFERENCES `bank` (`id`) ON DELETE NO ACTION;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION,
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON DELETE NO ACTION,
  ADD CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`kash_id`) REFERENCES `kashes` (`id`) ON DELETE NO ACTION,
  ADD CONSTRAINT `orders_ibfk_4` FOREIGN KEY (`order_type_id`) REFERENCES `order_types` (`id`) ON DELETE NO ACTION;

--
-- Constraints for table `order_type_names`
--
ALTER TABLE `order_type_names`
  ADD CONSTRAINT `order_type_names_ibfk_1` FOREIGN KEY (`lang_id`) REFERENCES `lang` (`id`) ON DELETE NO ACTION,
  ADD CONSTRAINT `order_type_names_ibfk_2` FOREIGN KEY (`order_type_id`) REFERENCES `order_types` (`id`) ON DELETE NO ACTION;

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE NO ACTION,
  ADD CONSTRAINT `payments_ibfk_2` FOREIGN KEY (`payment_type_id`) REFERENCES `payments` (`id`) ON DELETE NO ACTION;

--
-- Constraints for table `payment_type_names`
--
ALTER TABLE `payment_type_names`
  ADD CONSTRAINT `payment_type_names_ibfk_1` FOREIGN KEY (`lang_id`) REFERENCES `lang` (`id`) ON DELETE NO ACTION,
  ADD CONSTRAINT `payment_type_names_ibfk_2` FOREIGN KEY (`payment_type_id`) REFERENCES `order_types` (`id`) ON DELETE NO ACTION;

--
-- Constraints for table `prices`
--
ALTER TABLE `prices`
  ADD CONSTRAINT `prices_ibfk_1` FOREIGN KEY (`price_type_id`) REFERENCES `price_type` (`id`) ON DELETE NO ACTION;

--
-- Constraints for table `price_type_names`
--
ALTER TABLE `price_type_names`
  ADD CONSTRAINT `price_type_names_ibfk_1` FOREIGN KEY (`price_type_id`) REFERENCES `price_type` (`id`) ON DELETE NO ACTION,
  ADD CONSTRAINT `price_type_names_ibfk_2` FOREIGN KEY (`lang_id`) REFERENCES `lang` (`id`);

--
-- Constraints for table `printer_themes`
--
ALTER TABLE `printer_themes`
  ADD CONSTRAINT `printer_themes_ibfk_1` FOREIGN KEY (`printer_id`) REFERENCES `printers` (`id`) ON DELETE NO ACTION;

--
-- Constraints for table `region_names`
--
ALTER TABLE `region_names`
  ADD CONSTRAINT `region_names_ibfk_1` FOREIGN KEY (`lang_id`) REFERENCES `lang` (`id`) ON DELETE NO ACTION;

--
-- Constraints for table `role_names`
--
ALTER TABLE `role_names`
  ADD CONSTRAINT `role_names_ibfk_1` FOREIGN KEY (`lang_id`) REFERENCES `lang` (`id`),
  ADD CONSTRAINT `role_names_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `sold_goods`
--
ALTER TABLE `sold_goods`
  ADD CONSTRAINT `sold_goods_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE NO ACTION,
  ADD CONSTRAINT `sold_goods_ibfk_2` FOREIGN KEY (`good_id`) REFERENCES `goods` (`id`) ON DELETE NO ACTION,
  ADD CONSTRAINT `sold_goods_ibfk_3` FOREIGN KEY (`unit_type_id`) REFERENCES `unit_type` (`id`) ON DELETE NO ACTION,
  ADD CONSTRAINT `sold_goods_ibfk_4` FOREIGN KEY (`wherehouse_id`) REFERENCES `wherehouses` (`id`) ON DELETE NO ACTION;

--
-- Constraints for table `unit_type_names`
--
ALTER TABLE `unit_type_names`
  ADD CONSTRAINT `unit_type_names_ibfk_1` FOREIGN KEY (`lang_id`) REFERENCES `lang` (`id`) ON DELETE NO ACTION,
  ADD CONSTRAINT `unit_type_names_ibfk_2` FOREIGN KEY (`unit_type_id`) REFERENCES `unit_type` (`id`) ON DELETE NO ACTION;

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`role`) REFERENCES `roles` (`role`) ON DELETE NO ACTION,
  ADD CONSTRAINT `user_ibfk_2` FOREIGN KEY (`lang_id`) REFERENCES `lang` (`id`);

--
-- Constraints for table `wherehouses`
--
ALTER TABLE `wherehouses`
  ADD CONSTRAINT `wherehouses_ibfk_1` FOREIGN KEY (`good_id`) REFERENCES `goods` (`id`) ON DELETE NO ACTION,
  ADD CONSTRAINT `wherehouses_ibfk_2` FOREIGN KEY (`wherehouse_group_id`) REFERENCES `wherehouse_groups` (`id`) ON DELETE NO ACTION,
  ADD CONSTRAINT `wherehouses_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION,
  ADD CONSTRAINT `wherehouses_ibfk_4` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON DELETE NO ACTION;

--
-- Constraints for table `wherehouse_group_names`
--
ALTER TABLE `wherehouse_group_names`
  ADD CONSTRAINT `wherehouse_group_names_ibfk_1` FOREIGN KEY (`lang_id`) REFERENCES `lang` (`id`) ON DELETE NO ACTION,
  ADD CONSTRAINT `wherehouse_group_names_ibfk_2` FOREIGN KEY (`wherehouse_group_id`) REFERENCES `wherehouse_groups` (`id`) ON DELETE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
