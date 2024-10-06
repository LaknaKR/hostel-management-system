-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 06, 2024 at 06:33 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hmwebsite`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_cred`
--

CREATE TABLE `admin_cred` (
  `sr_no` int(11) NOT NULL,
  `admin_name` varchar(150) NOT NULL,
  `admin_pass` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_cred`
--

INSERT INTO `admin_cred` (`sr_no`, `admin_name`, `admin_pass`) VALUES
(1, 'tjwebdev', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `carousel`
--

CREATE TABLE `carousel` (
  `sr_no` int(11) NOT NULL,
  `image` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `carousel`
--

INSERT INTO `carousel` (`sr_no`, `image`) VALUES
(3, '2.jpg'),
(4, 'main4.jpg'),
(8, 'pexels-gautam-2407455.jpg'),
(10, '1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `contact_details`
--

CREATE TABLE `contact_details` (
  `sr_no` int(11) NOT NULL,
  `address` varchar(50) NOT NULL,
  `gmap` varchar(100) NOT NULL,
  `pn1` bigint(20) NOT NULL,
  `pn2` bigint(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `fb` varchar(100) NOT NULL,
  `insta` varchar(100) NOT NULL,
  `tw` varchar(100) NOT NULL,
  `iframe` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact_details`
--

INSERT INTO `contact_details` (`sr_no`, `address`, `gmap`, `pn1`, `pn2`, `email`, `fb`, `insta`, `tw`, `iframe`) VALUES
(1, 'South Eastern University , Oluvil', 'https://maps.app.goo.gl/JMWbyuiqBJ3sMMvj7', 9467225506294, 946722550444, 'seu.ac@gmail.lk', 'https://www.facebook.com/', 'https://www.facebook.com/', 'https://www.facebook.com/', 'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d7915.0108822067305!2d81.850033!3d7.296968!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3ae514c808d5bd3f:0x5bec23683f71d705!2sSouth Eastern University!5e0!3m2!1sen!2slk!4v1725806039352!5m2!1sen!2slk');

-- --------------------------------------------------------

--
-- Table structure for table `facilities`
--

CREATE TABLE `facilities` (
  `id` int(11) NOT NULL,
  `icon` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `facilities`
--

INSERT INTO `facilities` (`id`, `icon`, `name`, `description`) VALUES
(1, '1727617308_food.png', 'test 1', 'test test test test test test tets tets tstse ssts'),
(2, '1727617485_health.png', 'test 2', '	test test test test test test tets tets tstse ssts'),
(3, '1727617503_library.png', 'test 3', '	test test test test test test tets tets tstse ssts'),
(4, '1727617521_wifi.png', 'test 4', '	test test test test test test tets tets tstse ssts'),
(8, '1727618706_common are.png', 'test 5', 'test test tetststsysiusndkna');

-- --------------------------------------------------------

--
-- Table structure for table `features`
--

CREATE TABLE `features` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `features`
--

INSERT INTO `features` (`id`, `name`) VALUES
(24, 'Test 1'),
(25, 'Test 2'),
(26, 'Test 3'),
(27, 'Test 4');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `area` varchar(50) NOT NULL,
  `fees` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `students` int(11) NOT NULL,
  `picture` varchar(100) NOT NULL,
  `facilities` varchar(100) NOT NULL,
  `features` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `name`, `area`, `fees`, `quantity`, `students`, `picture`, `facilities`, `features`, `description`) VALUES
(13, 'Rooms for Two', 'Villa 1', 1000, 30, 2, 'main-qimg-6f16fe8e063bfbbedf69d8fdc368dc2a.webp', 'test 2, test 3', 'Test 1, Test 2', 'Villa 1 rooms for two students'),
(14, 'Rooms for Four', 'Villa 2', 3000, 20, 4, '5a7458c54f34370001330055__MG_8845.jpg', 'test 2, test 5', 'Test 1', 'Villa 2 rooms for four students'),
(15, 'Rooms for Two', 'Villa 2', 1500, 40, 2, 'hostel-bureau.jpg', 'test 1, test 2, test 5', 'Test 1', 'Villa 2 rooms for two students');

-- --------------------------------------------------------

--
-- Table structure for table `room_13`
--

CREATE TABLE `room_13` (
  `id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `booked_date` date DEFAULT NULL,
  `from` date DEFAULT NULL,
  `to` date DEFAULT NULL,
  `availability` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `room_13`
--

INSERT INTO `room_13` (`id`, `student_id`, `booked_date`, `from`, `to`, `availability`) VALUES
(1, NULL, NULL, NULL, NULL, 0),
(2, NULL, NULL, NULL, NULL, 1),
(3, NULL, NULL, NULL, NULL, 1),
(4, NULL, NULL, NULL, NULL, 1),
(5, NULL, NULL, NULL, NULL, 1),
(6, NULL, NULL, NULL, NULL, 1),
(7, NULL, NULL, NULL, NULL, 1),
(8, NULL, NULL, NULL, NULL, 1),
(9, NULL, NULL, NULL, NULL, 1),
(10, NULL, NULL, NULL, NULL, 1),
(11, NULL, NULL, NULL, NULL, 1),
(12, NULL, NULL, NULL, NULL, 1),
(13, NULL, NULL, NULL, NULL, 1),
(14, NULL, NULL, NULL, NULL, 1),
(15, NULL, NULL, NULL, NULL, 1),
(16, NULL, NULL, NULL, NULL, 1),
(17, NULL, NULL, NULL, NULL, 1),
(18, NULL, NULL, NULL, NULL, 1),
(19, NULL, NULL, NULL, NULL, 1),
(20, NULL, NULL, NULL, NULL, 1),
(21, NULL, NULL, NULL, NULL, 1),
(22, NULL, NULL, NULL, NULL, 1),
(23, NULL, NULL, NULL, NULL, 1),
(24, NULL, NULL, NULL, NULL, 1),
(25, NULL, NULL, NULL, NULL, 1),
(26, NULL, NULL, NULL, NULL, 1),
(27, NULL, NULL, NULL, NULL, 1),
(28, NULL, NULL, NULL, NULL, 1),
(29, NULL, NULL, NULL, NULL, 1),
(30, NULL, NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `room_14`
--

CREATE TABLE `room_14` (
  `id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `booked_date` date DEFAULT NULL,
  `from` date DEFAULT NULL,
  `to` date DEFAULT NULL,
  `availability` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `room_14`
--

INSERT INTO `room_14` (`id`, `student_id`, `booked_date`, `from`, `to`, `availability`) VALUES
(1, NULL, NULL, NULL, NULL, 1),
(2, NULL, NULL, NULL, NULL, 1),
(3, NULL, NULL, NULL, NULL, 1),
(4, NULL, NULL, NULL, NULL, 1),
(5, NULL, NULL, NULL, NULL, 1),
(6, NULL, NULL, NULL, NULL, 1),
(7, NULL, NULL, NULL, NULL, 1),
(8, NULL, NULL, NULL, NULL, 1),
(9, NULL, NULL, NULL, NULL, 1),
(10, NULL, NULL, NULL, NULL, 1),
(11, NULL, NULL, NULL, NULL, 1),
(12, NULL, NULL, NULL, NULL, 1),
(13, NULL, NULL, NULL, NULL, 1),
(14, NULL, NULL, NULL, NULL, 1),
(15, NULL, NULL, NULL, NULL, 1),
(16, NULL, NULL, NULL, NULL, 1),
(17, NULL, NULL, NULL, NULL, 1),
(18, NULL, NULL, NULL, NULL, 1),
(19, NULL, NULL, NULL, NULL, 1),
(20, NULL, NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `room_15`
--

CREATE TABLE `room_15` (
  `id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `booked_date` date DEFAULT NULL,
  `from` date DEFAULT NULL,
  `to` date DEFAULT NULL,
  `availability` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `room_15`
--

INSERT INTO `room_15` (`id`, `student_id`, `booked_date`, `from`, `to`, `availability`) VALUES
(1, NULL, NULL, NULL, NULL, 1),
(2, NULL, NULL, NULL, NULL, 1),
(3, NULL, NULL, NULL, NULL, 1),
(4, NULL, NULL, NULL, NULL, 1),
(5, NULL, NULL, NULL, NULL, 1),
(6, NULL, NULL, NULL, NULL, 1),
(7, NULL, NULL, NULL, NULL, 1),
(8, NULL, NULL, NULL, NULL, 1),
(9, NULL, NULL, NULL, NULL, 1),
(10, NULL, NULL, NULL, NULL, 1),
(11, NULL, NULL, NULL, NULL, 1),
(12, NULL, NULL, NULL, NULL, 1),
(13, NULL, NULL, NULL, NULL, 1),
(14, NULL, NULL, NULL, NULL, 1),
(15, NULL, NULL, NULL, NULL, 1),
(16, NULL, NULL, NULL, NULL, 1),
(17, NULL, NULL, NULL, NULL, 1),
(18, NULL, NULL, NULL, NULL, 1),
(19, NULL, NULL, NULL, NULL, 1),
(20, NULL, NULL, NULL, NULL, 1),
(21, NULL, NULL, NULL, NULL, 1),
(22, NULL, NULL, NULL, NULL, 1),
(23, NULL, NULL, NULL, NULL, 1),
(24, NULL, NULL, NULL, NULL, 1),
(25, NULL, NULL, NULL, NULL, 1),
(26, NULL, NULL, NULL, NULL, 1),
(27, NULL, NULL, NULL, NULL, 1),
(28, NULL, NULL, NULL, NULL, 1),
(29, NULL, NULL, NULL, NULL, 1),
(30, NULL, NULL, NULL, NULL, 1),
(31, NULL, NULL, NULL, NULL, 1),
(32, NULL, NULL, NULL, NULL, 1),
(33, NULL, NULL, NULL, NULL, 1),
(34, NULL, NULL, NULL, NULL, 1),
(35, NULL, NULL, NULL, NULL, 1),
(36, NULL, NULL, NULL, NULL, 1),
(37, NULL, NULL, NULL, NULL, 1),
(38, NULL, NULL, NULL, NULL, 1),
(39, NULL, NULL, NULL, NULL, 1),
(40, NULL, NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `room_facilities`
--

CREATE TABLE `room_facilities` (
  `sr_no` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `facilities_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `room_features`
--

CREATE TABLE `room_features` (
  `sr_no` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `features_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `room_images`
--

CREATE TABLE `room_images` (
  `sr_no` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `image` varchar(150) NOT NULL,
  `thumb` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `sr_no` int(11) NOT NULL,
  `site_title` varchar(50) NOT NULL,
  `site_about` varchar(250) NOT NULL,
  `shutdown` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `sr_no` int(11) NOT NULL,
  `site_title` varchar(50) NOT NULL,
  `site_about` varchar(250) NOT NULL,
  `shutdown` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`sr_no`, `site_title`, `site_about`, `shutdown`) VALUES
(1, 'SEUSL ', 'SEUSL Lorem ipsum dolor sit amet consectetur adipisicing elit. Consequatur nisi voluptatem asperiores cum quibusdam, pariatur perferendis molestiae earum incidunt laborum, distinctio ullam dolores, quisquam explicabo eligendi maiores ratione cupidita', 1);

-- --------------------------------------------------------

--
-- Table structure for table `team_details`
--

CREATE TABLE `team_details` (
  `sr_no` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `picture` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `team_details`
--

INSERT INTO `team_details` (`sr_no`, `name`, `picture`) VALUES
(1, 'Test', 'IMG_11121.png'),
(10, 'new ', '867-8678512_doctor-icon-physician.png'),
(11, 'test', 'gvcc-staff-icon-ezgif.com-webp-to-png-converter.png'),
(12, 'john', 'm1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user_cred`
--

CREATE TABLE `user_cred` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `address` varchar(120) NOT NULL,
  `phonenum` varchar(100) NOT NULL,
  `pincode` int(11) NOT NULL,
  `dob` date NOT NULL,
  `profile` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `is_verified` int(11) NOT NULL DEFAULT 0,
  `token` varchar(200) DEFAULT NULL,
  `t_expire` date DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `datentime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_queries`
--

CREATE TABLE `user_queries` (
  `sr_no` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(150) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `message` varchar(500) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `seen` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_queries`
--

INSERT INTO `user_queries` (`sr_no`, `name`, `email`, `subject`, `message`, `date`, `seen`) VALUES
(20, 'hashi', 'hash@gmail.com', 'sdq', 'vcdf', '2024-10-05', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_cred`
--
ALTER TABLE `admin_cred`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `carousel`
--
ALTER TABLE `carousel`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `contact_details`
--
ALTER TABLE `contact_details`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `facilities`
--
ALTER TABLE `facilities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `features`
--
ALTER TABLE `features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `room_13`
--
ALTER TABLE `room_13`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `room_14`
--
ALTER TABLE `room_14`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `room_15`
--
ALTER TABLE `room_15`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `room_facilities`
--
ALTER TABLE `room_facilities`
  ADD PRIMARY KEY (`sr_no`),
  ADD KEY `facilities id` (`facilities_id`),
  ADD KEY `room id` (`room_id`);

--
-- Indexes for table `room_features`
--
ALTER TABLE `room_features`
  ADD PRIMARY KEY (`sr_no`),
  ADD KEY `features id` (`features_id`),
  ADD KEY `rm id` (`room_id`);

--
-- Indexes for table `room_images`
--
ALTER TABLE `room_images`
  ADD PRIMARY KEY (`sr_no`),
  ADD KEY `room_id` (`room_id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `team_details`
--
ALTER TABLE `team_details`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `user_cred`
--
ALTER TABLE `user_cred`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_queries`
--
ALTER TABLE `user_queries`
  ADD PRIMARY KEY (`sr_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_cred`
--
ALTER TABLE `admin_cred`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `carousel`
--
ALTER TABLE `carousel`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `contact_details`
--
ALTER TABLE `contact_details`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `facilities`
--
ALTER TABLE `facilities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `features`
--
ALTER TABLE `features`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `room_13`
--
ALTER TABLE `room_13`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `room_14`
--
ALTER TABLE `room_14`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `room_15`
--
ALTER TABLE `room_15`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `room_facilities`
--
ALTER TABLE `room_facilities`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `room_features`
--
ALTER TABLE `room_features`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `room_images`
--
ALTER TABLE `room_images`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `team_details`
--
ALTER TABLE `team_details`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `user_cred`
--
ALTER TABLE `user_cred`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_queries`
--
ALTER TABLE `user_queries`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `room_facilities`
--
ALTER TABLE `room_facilities`
  ADD CONSTRAINT `facilities id` FOREIGN KEY (`facilities_id`) REFERENCES `facilities` (`id`) ON UPDATE NO ACTION,
  ADD CONSTRAINT `room id` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`) ON UPDATE NO ACTION;

--
-- Constraints for table `room_features`
--
ALTER TABLE `room_features`
  ADD CONSTRAINT `features id` FOREIGN KEY (`features_id`) REFERENCES `features` (`id`) ON UPDATE NO ACTION,
  ADD CONSTRAINT `rm id` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`) ON UPDATE NO ACTION;

--
-- Constraints for table `room_images`
--
ALTER TABLE `room_images`
  ADD CONSTRAINT `room_images_ibfk_1` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
