-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 13, 2021 at 07:44 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_311`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `Clients_Email` varchar(100) NOT NULL,
  `Vendors_Email` varchar(100) NOT NULL,
  `Date` date NOT NULL,
  `Starting_time` time NOT NULL,
  `Ending_time` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `caterers`
--

CREATE TABLE `caterers` (
  `Vendors_cat_Email` varchar(100) NOT NULL,
  `Payment_terms` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `caterers`
--

INSERT INTO `caterers` (`Vendors_cat_Email`, `Payment_terms`) VALUES
('ca@mail.com', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `caterer_offers`
--

CREATE TABLE `caterer_offers` (
  `Caterers_Vendors_Email` varchar(100) NOT NULL,
  `Cuisines_Cuisine_name` varchar(40) NOT NULL,
  `Starting Price` decimal(6,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `Email` varchar(100) NOT NULL,
  `First_name` varchar(45) NOT NULL,
  `Last_name` varchar(45) NOT NULL,
  `Contact_Number` varchar(11) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `Address` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`Email`, `First_name`, `Last_name`, `Contact_Number`, `Password`, `Address`) VALUES
('J@mail.com', 'John', 'Doe', '6384738', '81dc9bdb52d04dc20036dbd8313ed055', 'Chittagong'),
('s@gmail.com', 'Sumaiya', 'Sara', '92456789', '81dc9bdb52d04dc20036dbd8313ed055', 'Dhaka');

-- --------------------------------------------------------

--
-- Table structure for table `covers`
--

CREATE TABLE `covers` (
  `Photographers_Vendors_Email` varchar(100) NOT NULL,
  `Event_Event_type` enum('wedding','holud') NOT NULL,
  `Starting_price` decimal(6,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cuisines`
--

CREATE TABLE `cuisines` (
  `Cuisine_name` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `decorators`
--

CREATE TABLE `decorators` (
  `Vendors_dec_Email` varchar(100) NOT NULL,
  `Payment_terms` varchar(50) DEFAULT NULL,
  `Starting_price` decimal(6,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `decorators`
--

INSERT INTO `decorators` (`Vendors_dec_Email`, `Payment_terms`, `Starting_price`) VALUES
('dec@mail.com', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `discussion_meeting`
--

CREATE TABLE `discussion_meeting` (
  `Clients_Email` varchar(100) NOT NULL,
  `Vendors_Email` varchar(100) NOT NULL,
  `Date` date NOT NULL,
  `Starting_Time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `Event_type` enum('wedding','holud','engagement') NOT NULL,
  `Starting_time` time NOT NULL,
  `Ending_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `Clients_Email` varchar(100) NOT NULL,
  `Vendors_Email` varchar(100) NOT NULL,
  `Comment` varchar(1000) DEFAULT NULL,
  `Timestamp` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `makeover`
--

CREATE TABLE `makeover` (
  `Makeover_type` enum('holud makeup','weeding makeover','Reception Makeover') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `makeup_artists`
--

CREATE TABLE `makeup_artists` (
  `Vendors_mA_Email` varchar(100) NOT NULL,
  `Payment_terms_mA` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `mua_offers`
--

CREATE TABLE `mua_offers` (
  `Makeup_Artists_Vendors_Email` varchar(100) NOT NULL,
  `Makeover_Makeover_type` enum('holud makeup','weeding makeover') NOT NULL,
  `Starting_price` decimal(6,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `photographers`
--

CREATE TABLE `photographers` (
  `Vendors_ph_Email` varchar(100) NOT NULL,
  `Payment_terms` varchar(50) DEFAULT NULL,
  `Delivery_time` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `photographers`
--

INSERT INTO `photographers` (`Vendors_ph_Email`, `Payment_terms`, `Delivery_time`) VALUES
('G@mail.com', NULL, ''),
('snap@gmail.com', NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `vendors`
--

CREATE TABLE `vendors` (
  `Email` varchar(100) NOT NULL,
  `Business_Name` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `Contact_Number` int(11) NOT NULL,
  `Office_Address` varchar(100) NOT NULL,
  `Category` enum('Photographer','Caterer','Venues','Makeup Artists','Decorators') NOT NULL,
  `Payment_terms` varchar(50) DEFAULT NULL,
  `about_us` varchar(1000) DEFAULT NULL,
  `profile_picture` blob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vendors`
--

INSERT INTO `vendors` (`Email`, `Business_Name`, `Password`, `Contact_Number`, `Office_Address`, `Category`, `Payment_terms`, `about_us`, `profile_picture`) VALUES
('ca@mail.com', 'Cateror A', '81dc9bdb52d04dc20036dbd8313ed055', 196856432, 'Puran Dhaka', 'Caterer', '20 percent advance is needed', 'We provide 5 types of cuisines: Shahi, Bengali,Chinese,Indian,Mugali. Starting price 400 per plate each', NULL),
('dec@mail.com', 'DecD', '81dc9bdb52d04dc20036dbd8313ed055', 1786594302, 'Dhanmondi', 'Decorators', '20 percent advance is needed', 'WE provide wedding, holud decoration. Starting price is 20,000BDT.', NULL),
('G@mail.com', 'Grapher', '81dc9bdb52d04dc20036dbd8313ed055', 1722946227, 'Uttara', 'Photographer', '20 percent advance is needed', 'WE provide wedding, holud photography. Per day price 20,0000.', NULL),
('snap@gmail.com', 'Snapshot', '81dc9bdb52d04dc20036dbd8313ed055', 178945331, 'Gulshan', 'Photographer', '20 percent advance is needed', 'WE provide wedding, holud photography. Per day price 30,0000.', NULL);

--
-- Triggers `vendors`
--
DELIMITER $$
CREATE TRIGGER `before_vendors_delete` BEFORE DELETE ON `vendors` FOR EACH ROW BEGIN
    delete from books where Vendors_Email = old.email;
    delete from caterers where Vendors_cat_Email = old.email;
    delete from decorators where vendors_dec_email = old.email;
    delete from photographers where Vendors_ph_Email = old.email;
    delete from makeup_artists where Vendors_mA_Email = old.email;
    delete from venues where Vendors_ven_Email = old.email;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `venues`
--

CREATE TABLE `venues` (
  `Vendors_ven_Email` varchar(100) NOT NULL,
  `rent` decimal(7,2) DEFAULT NULL,
  `capacity` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`Clients_Email`,`Vendors_Email`),
  ADD KEY `fk_Clients_has_Vendors_Vendors1_Emailx` (`Vendors_Email`),
  ADD KEY `fk_Clients_has_Vendors_Clients1_Emailx` (`Clients_Email`);

--
-- Indexes for table `caterers`
--
ALTER TABLE `caterers`
  ADD PRIMARY KEY (`Vendors_cat_Email`);

--
-- Indexes for table `caterer_offers`
--
ALTER TABLE `caterer_offers`
  ADD PRIMARY KEY (`Caterers_Vendors_Email`,`Cuisines_Cuisine_name`),
  ADD KEY `fk_Caterers_has_Cuisines_Cuisines1_emailx` (`Cuisines_Cuisine_name`),
  ADD KEY `fk_Caterers_has_Cuisines_Caterers1_emailx` (`Caterers_Vendors_Email`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`Email`);

--
-- Indexes for table `covers`
--
ALTER TABLE `covers`
  ADD PRIMARY KEY (`Photographers_Vendors_Email`,`Event_Event_type`),
  ADD KEY `fk_Photographers_has_Event_Event1_emailx` (`Event_Event_type`),
  ADD KEY `fk_Photographers_has_Event_Photographers1_emailx` (`Photographers_Vendors_Email`);

--
-- Indexes for table `cuisines`
--
ALTER TABLE `cuisines`
  ADD PRIMARY KEY (`Cuisine_name`);

--
-- Indexes for table `decorators`
--
ALTER TABLE `decorators`
  ADD PRIMARY KEY (`Vendors_dec_Email`);

--
-- Indexes for table `discussion_meeting`
--
ALTER TABLE `discussion_meeting`
  ADD PRIMARY KEY (`Clients_Email`,`Vendors_Email`),
  ADD KEY `fk_Clients_has_Vendors1_Vendors1_emailx` (`Vendors_Email`),
  ADD KEY `fk_Clients_has_Vendors1_Client1_emailx` (`Clients_Email`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`Event_type`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`Clients_Email`,`Vendors_Email`),
  ADD KEY `fk_Clients_has_Vendors2_Vendors1_idx` (`Vendors_Email`),
  ADD KEY `fk_Clients_has_Vendors2_Client1_idx` (`Clients_Email`);

--
-- Indexes for table `makeover`
--
ALTER TABLE `makeover`
  ADD PRIMARY KEY (`Makeover_type`);

--
-- Indexes for table `makeup_artists`
--
ALTER TABLE `makeup_artists`
  ADD PRIMARY KEY (`Vendors_mA_Email`);

--
-- Indexes for table `mua_offers`
--
ALTER TABLE `mua_offers`
  ADD PRIMARY KEY (`Makeup_Artists_Vendors_Email`,`Makeover_Makeover_type`),
  ADD KEY `fk_Makeup_Artists_has_Makeover_Makeover1_emailx` (`Makeover_Makeover_type`),
  ADD KEY `fk_Makeup_Artists_has_Makeover_Makeup Artists1_emailx` (`Makeup_Artists_Vendors_Email`);

--
-- Indexes for table `photographers`
--
ALTER TABLE `photographers`
  ADD PRIMARY KEY (`Vendors_ph_Email`);

--
-- Indexes for table `vendors`
--
ALTER TABLE `vendors`
  ADD PRIMARY KEY (`Email`);

--
-- Indexes for table `venues`
--
ALTER TABLE `venues`
  ADD PRIMARY KEY (`Vendors_ven_Email`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `fk_Clients_has_Vendors_Clients1` FOREIGN KEY (`Clients_Email`) REFERENCES `clients` (`Email`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Clients_has_Vendors_Vendors1` FOREIGN KEY (`Vendors_Email`) REFERENCES `vendors` (`Email`);

--
-- Constraints for table `caterers`
--
ALTER TABLE `caterers`
  ADD CONSTRAINT `fk_Caterers_Vendors` FOREIGN KEY (`Vendors_cat_Email`) REFERENCES `vendors` (`Email`);

--
-- Constraints for table `caterer_offers`
--
ALTER TABLE `caterer_offers`
  ADD CONSTRAINT `fk_Caterers_has_Cuisines_Caterers1` FOREIGN KEY (`Caterers_Vendors_Email`) REFERENCES `caterers` (`Vendors_cat_Email`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Caterers_has_Cuisines_Cuisines1` FOREIGN KEY (`Cuisines_Cuisine_name`) REFERENCES `cuisines` (`Cuisine_name`);

--
-- Constraints for table `covers`
--
ALTER TABLE `covers`
  ADD CONSTRAINT `fk_Photographers_has_Event_Event1` FOREIGN KEY (`Event_Event_type`) REFERENCES `event` (`Event_type`),
  ADD CONSTRAINT `fk_Photographers_has_Event_Photographers1` FOREIGN KEY (`Photographers_Vendors_Email`) REFERENCES `photographers` (`Vendors_ph_Email`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `decorators`
--
ALTER TABLE `decorators`
  ADD CONSTRAINT `fk_Decorators_Vendors1` FOREIGN KEY (`Vendors_dec_Email`) REFERENCES `vendors` (`Email`);

--
-- Constraints for table `discussion_meeting`
--
ALTER TABLE `discussion_meeting`
  ADD CONSTRAINT `fk_Clients_has_Vendors1_Clients1` FOREIGN KEY (`Clients_Email`) REFERENCES `clients` (`Email`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Clients_has_Vendors1_Vendors1` FOREIGN KEY (`Vendors_Email`) REFERENCES `vendors` (`Email`);

--
-- Constraints for table `feedback`
--
ALTER TABLE `feedback`
  ADD CONSTRAINT `fk_Clients_has_Vendors2_Client1` FOREIGN KEY (`Clients_Email`) REFERENCES `clients` (`Email`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Clients_has_Vendors2_Vendors1` FOREIGN KEY (`Vendors_Email`) REFERENCES `vendors` (`Email`);

--
-- Constraints for table `makeup_artists`
--
ALTER TABLE `makeup_artists`
  ADD CONSTRAINT `fk_Makeup Artists_Vendors1` FOREIGN KEY (`Vendors_mA_Email`) REFERENCES `vendors` (`Email`);

--
-- Constraints for table `mua_offers`
--
ALTER TABLE `mua_offers`
  ADD CONSTRAINT `fk_Makeup_Artists_has_Makeover_Makeover1` FOREIGN KEY (`Makeover_Makeover_type`) REFERENCES `makeover` (`Makeover_type`),
  ADD CONSTRAINT `fk_Makeup_Artists_has_Makeover_Makeup Artists1` FOREIGN KEY (`Makeup_Artists_Vendors_Email`) REFERENCES `makeup_artists` (`Vendors_mA_Email`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `photographers`
--
ALTER TABLE `photographers`
  ADD CONSTRAINT `fk_Photographers_Vendors1` FOREIGN KEY (`Vendors_ph_Email`) REFERENCES `vendors` (`Email`);

--
-- Constraints for table `venues`
--
ALTER TABLE `venues`
  ADD CONSTRAINT `fk_Venues_Vendors1` FOREIGN KEY (`Vendors_ven_Email`) REFERENCES `vendors` (`Email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
