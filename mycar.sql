-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Generation Time: Jul 01, 2024 at 07:51 AM
-- Server version: 5.7.44
-- PHP Version: 8.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mycar`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id_admin` char(36) NOT NULL,
  `id_role` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_roles`
--

INSERT INTO `admin_roles` (`id_admin`, `id_role`) VALUES
('5d2e904e-2dfd-11ef-a0ea-b42e997fc79f', '3626d9db-2dfd-11ef-a0ea-b42e997fc79f'),
('f26667f8-2df7-11ef-a0ea-b42e997fc79f', 'a8d5117a-2dfc-11ef-a0ea-b42e997fc79f');

-- --------------------------------------------------------

--
-- Table structure for table `car`
--

CREATE TABLE `car` (
  `id_car` char(36) NOT NULL,
  `id_user` char(36) NOT NULL,
  `carname` varchar(255) NOT NULL,
  `automaker` varchar(255) NOT NULL,
  `price` decimal(20,2) NOT NULL,
  `sxyear` int(11) NOT NULL,
  `sokm` int(11) NOT NULL,
  `hopso` varchar(255) NOT NULL,
  `dongco` varchar(255) NOT NULL,
  `mauxe` varchar(255) NOT NULL,
  `diachi` varchar(255) NOT NULL,
  `description` text,
  `active` char(10) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `image1` varchar(255) DEFAULT NULL,
  `image2` varchar(255) DEFAULT NULL,
  `image3` varchar(255) DEFAULT NULL,
  `image4` varchar(255) DEFAULT NULL,
  `image5` varchar(255) DEFAULT NULL,
  `image6` varchar(255) DEFAULT NULL,
  `image7` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `car`
--

INSERT INTO `car` (`id_car`, `id_user`, `carname`, `automaker`, `price`, `sxyear`, `sokm`, `hopso`, `dongco`, `mauxe`, `diachi`, `description`, `active`, `created_at`, `image1`, `image2`, `image3`, `image4`, `image5`, `image6`, `image7`) VALUES
('1c733fa8-377c-11ef-81d4-0242c0a81002', '171ea9da-2dfd-11ef-a0ea-b42e997fc79f', 'Toyota Corolla', 'Toyota', 2222222222.00, 2022, 33333333, 'Hộp số tự động', 'Động cơ Xăng', 'Trắng', 'Huyện Đồng Văn--Tỉnh Hà Giang', '2222222', 'active', '2024-07-01 14:32:46', 'public/images/a1679f28-23d7-4f76-8286-13bff467141b-pexels-photo-691595.webp', 'public/images/18910ea3-da9b-488f-8152-032dedef25d1-pexels-photo-1768826.jpg', 'public/images/130d6c42-e097-4b23-9e41-293164c8ed7b-pexels-photo-1841120.jpg', 'public/images/6d1a5a64-07ac-4cc0-85c7-835c69df48e4-pexels-photo-2739286.jpg', 'public/images/4a4efea4-1930-41b7-a6f0-91613ef18311-pexels-photo-2876872.jpg', 'public/images/7e11e74a-912b-46d1-b4f3-f852bfc096a1-pexels-photo-3221159.webp', 'public/images/5bb5cebc-325a-4c67-90be-1b1afab5567c-pexels-photo-3786091.webp'),
('1ccb42bc-377c-11ef-81d4-0242c0a81002', '171ea9da-2dfd-11ef-a0ea-b42e997fc79f', 'Toyota Corolla', 'Toyota', 2222222222.00, 2022, 33333333, 'Hộp số tự động', 'Động cơ Xăng', 'Trắng', 'Huyện Đồng Văn--Tỉnh Hà Giang', '2222222', 'active', '2024-07-01 14:32:47', 'public/images/ceb67e76-4177-45a7-acd7-2c6539596094-pexels-photo-691595.webp', 'public/images/01d56528-4928-4d8a-9804-051530c6b7a3-pexels-photo-1768826.jpg', 'public/images/cd2b0265-7b67-4d63-b93f-211a872e44f0-pexels-photo-1841120.jpg', 'public/images/4beffd5d-f8d1-4ebf-bc5f-f4460cb74861-pexels-photo-2739286.jpg', 'public/images/cd41792b-69d2-4356-a19e-9e26b5a191df-pexels-photo-2876872.jpg', 'public/images/f84337fe-4f05-4912-934e-564c55565920-pexels-photo-3221159.webp', 'public/images/86d5bcbd-4e8e-40d2-9667-514dc56c01b8-pexels-photo-3786091.webp'),
('1ceb3c22-377c-11ef-81d4-0242c0a81002', '171ea9da-2dfd-11ef-a0ea-b42e997fc79f', 'Toyota Corolla', 'Toyota', 2222222222.00, 2022, 33333333, 'Hộp số tự động', 'Động cơ Xăng', 'Trắng', 'Huyện Đồng Văn--Tỉnh Hà Giang', '2222222', 'active', '2024-07-01 14:32:47', 'public/images/b4c4d258-b131-40ae-a0d6-1f44574b113e-pexels-photo-691595.webp', 'public/images/e2bb9b53-74d7-4a3b-90a1-3a7e788a0058-pexels-photo-1768826.jpg', 'public/images/a6ad505d-b0e9-435f-adb0-99f84704128a-pexels-photo-1841120.jpg', 'public/images/8ecc7657-afb3-4076-9480-0f10fe5db0ba-pexels-photo-2739286.jpg', 'public/images/eff85758-9cf3-4638-9d4f-8a8ce518dcbc-pexels-photo-2876872.jpg', 'public/images/e38b8079-4319-4fba-be55-322cb9f8dce8-pexels-photo-3221159.webp', 'public/images/60faa476-23b5-442f-b1ed-d7579de0eb36-pexels-photo-3786091.webp'),
('1d16cdc9-377c-11ef-81d4-0242c0a81002', '171ea9da-2dfd-11ef-a0ea-b42e997fc79f', 'Toyota Corolla', 'Toyota', 2222222222.00, 2022, 33333333, 'Hộp số tự động', 'Động cơ Xăng', 'Trắng', 'Huyện Đồng Văn--Tỉnh Hà Giang', '2222222', 'active', '2024-07-01 14:32:47', 'public/images/326d6d47-2503-41cd-a31b-fbdf8ff04216-pexels-photo-691595.webp', 'public/images/1c170fbb-1700-4de9-9f73-02b704be54e5-pexels-photo-1768826.jpg', 'public/images/25bd6688-0416-44e4-b29d-243efc1ebdf4-pexels-photo-1841120.jpg', 'public/images/f694827e-15ff-4a74-a12f-d393e8741e03-pexels-photo-2739286.jpg', 'public/images/fba7ccf1-3803-48e5-a483-ef0cf17180d2-pexels-photo-2876872.jpg', 'public/images/ba5c0030-9010-453c-863c-ef3aba10e72d-pexels-photo-3221159.webp', 'public/images/ab8da720-4849-4b22-9fa4-5d658e16ce94-pexels-photo-3786091.webp'),
('1d39e63f-377c-11ef-81d4-0242c0a81002', '171ea9da-2dfd-11ef-a0ea-b42e997fc79f', 'Toyota Corolla', 'Toyota', 2222222222.00, 2022, 33333333, 'Hộp số tự động', 'Động cơ Xăng', 'Trắng', 'Huyện Đồng Văn--Tỉnh Hà Giang', '2222222', 'active', '2024-07-01 14:32:47', 'public/images/21236ebc-f0fb-4dc9-8470-c3ff70c2c3ec-pexels-photo-691595.webp', 'public/images/a9a9c50c-c241-42f0-8897-89beaa53c411-pexels-photo-1768826.jpg', 'public/images/43001306-37ec-499a-9b03-564906aa7d8f-pexels-photo-1841120.jpg', 'public/images/a6b99d0e-98b7-4cb6-b0e4-8fad0f3c9ccb-pexels-photo-2739286.jpg', 'public/images/9d6923fc-e132-40ad-bc50-67aa7ab7381f-pexels-photo-2876872.jpg', 'public/images/576cf02d-ce48-4e2c-8cd4-b3a0f21571b6-pexels-photo-3221159.webp', 'public/images/bc8a7bcd-359a-4af7-8c82-78d3b75eaa90-pexels-photo-3786091.webp'),
('1d542689-377c-11ef-81d4-0242c0a81002', '171ea9da-2dfd-11ef-a0ea-b42e997fc79f', 'Toyota Corolla', 'Toyota', 2222222222.00, 2022, 33333333, 'Hộp số tự động', 'Động cơ Xăng', 'Trắng', 'Huyện Đồng Văn--Tỉnh Hà Giang', '2222222', 'active', '2024-07-01 14:32:47', 'public/images/43349138-cc6c-419c-a3f5-5297246b9211-pexels-photo-691595.webp', 'public/images/3e338192-cdbd-4523-addf-879ab555dbd5-pexels-photo-1768826.jpg', 'public/images/3b87502a-b00d-48d5-b7e4-96b94307c1ca-pexels-photo-1841120.jpg', 'public/images/5cf64e18-0934-4d34-922e-0a459acbbbcd-pexels-photo-2739286.jpg', 'public/images/aeca2235-eab4-49c5-b3b6-ec4f422931c2-pexels-photo-2876872.jpg', 'public/images/5892445a-a043-44f7-9b65-6f5351313f77-pexels-photo-3221159.webp', 'public/images/af1edd35-a671-4712-b38b-0795f8c815db-pexels-photo-3786091.webp'),
('1d644880-377c-11ef-81d4-0242c0a81002', '171ea9da-2dfd-11ef-a0ea-b42e997fc79f', 'Toyota Corolla', 'Toyota', 2222222222.00, 2022, 33333333, 'Hộp số tự động', 'Động cơ Xăng', 'Trắng', 'Huyện Đồng Văn--Tỉnh Hà Giang', '2222222', 'active', '2024-07-01 14:32:48', 'public/images/e21fbab8-2800-4223-8f44-c95d222dd222-pexels-photo-691595.webp', 'public/images/bd2c3d28-f07a-45ab-a6c9-97d477a76af4-pexels-photo-1768826.jpg', 'public/images/7828303c-653f-48a8-844a-d0710302fb4b-pexels-photo-1841120.jpg', 'public/images/ec614065-7208-42a7-a82a-86185a0ad85d-pexels-photo-2739286.jpg', 'public/images/368c0358-0572-4979-872d-5597363202de-pexels-photo-2876872.jpg', 'public/images/a328663e-6298-4847-b111-06ba65426d32-pexels-photo-3221159.webp', 'public/images/5b793c3d-b1a8-452f-a9e5-7392753183f5-pexels-photo-3786091.webp');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id_comment` char(36) NOT NULL,
  `id_car` char(36) DEFAULT NULL,
  `id_user` char(36) DEFAULT NULL,
  `noidung` text,
  `like_status` varchar(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `images` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `replycomment`
--

CREATE TABLE `replycomment` (
  `id_reply` char(36) NOT NULL,
  `id_comment` char(36) DEFAULT NULL,
  `id_user` char(36) DEFAULT NULL,
  `likecomment` varchar(11) DEFAULT NULL,
  `noidung` text,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id_role` char(36) NOT NULL,
  `role_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id_role`, `role_name`) VALUES
('3626d9db-2dfd-11ef-a0ea-b42e997fc79f', 'member'),
('a8d5117a-2dfc-11ef-a0ea-b42e997fc79f', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_user` char(36) NOT NULL,
  `ten` varchar(255) NOT NULL,
  `sdt` varchar(15) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `diachi` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `active` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `ten`, `sdt`, `pass`, `diachi`, `created_at`, `active`) VALUES
('171ea9da-2dfd-11ef-a0ea-b42e997fc79f', 'nguyen thi thuy trang', '03474251688', '123', '50 phan van khoe phuong 2 quan 6', '2024-06-19 05:30:50', NULL),
('f26667f8-2df7-11ef-a0ea-b42e997fc79f', 'Duc Cong Nguyen', '0347425168', '123', '50 phan van khoe phuong 2 quan 6', '2024-06-19 04:54:01', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id_admin`,`id_role`),
  ADD KEY `id_role` (`id_role`);

--
-- Indexes for table `car`
--
ALTER TABLE `car`
  ADD PRIMARY KEY (`id_car`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id_comment`),
  ADD KEY `fk_comment_car` (`id_car`);

--
-- Indexes for table `replycomment`
--
ALTER TABLE `replycomment`
  ADD PRIMARY KEY (`id_reply`),
  ADD KEY `fk_replycomment_comment` (`id_comment`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id_role`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD CONSTRAINT `admin_roles_ibfk_1` FOREIGN KEY (`id_role`) REFERENCES `roles` (`id_role`);

--
-- Constraints for table `car`
--
ALTER TABLE `car`
  ADD CONSTRAINT `car_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`);

--
-- Constraints for table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `fk_comment_car` FOREIGN KEY (`id_car`) REFERENCES `car` (`id_car`) ON DELETE CASCADE;

--
-- Constraints for table `replycomment`
--
ALTER TABLE `replycomment`
  ADD CONSTRAINT `fk_replycomment_comment` FOREIGN KEY (`id_comment`) REFERENCES `comment` (`id_comment`) ON DELETE CASCADE,
  ADD CONSTRAINT `replycomment_ibfk_1` FOREIGN KEY (`id_comment`) REFERENCES `comment` (`id_comment`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
