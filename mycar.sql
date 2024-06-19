-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 19, 2024 at 12:24 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
  `price` decimal(10,2) NOT NULL,
  `sxyear` int(11) NOT NULL,
  `sokm` int(11) NOT NULL,
  `hopso` varchar(255) NOT NULL,
  `dongco` varchar(255) NOT NULL,
  `mauxe` varchar(255) NOT NULL,
  `diachi` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `active` char(10) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `image1` varchar(255) DEFAULT NULL,
  `image2` varchar(255) DEFAULT NULL,
  `image3` varchar(255) DEFAULT NULL,
  `image4` varchar(255) DEFAULT NULL,
  `image5` varchar(255) DEFAULT NULL,
  `image6` varchar(255) DEFAULT NULL,
  `image7` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `car`
--

INSERT INTO `car` (`id_car`, `id_user`, `carname`, `automaker`, `price`, `sxyear`, `sokm`, `hopso`, `dongco`, `mauxe`, `diachi`, `description`, `active`, `created_at`, `image1`, `image2`, `image3`, `image4`, `image5`, `image6`, `image7`) VALUES
('2b039992-2dff-11ef-a0ea-b42e997fc79f', '171ea9da-2dfd-11ef-a0ea-b42e997fc79f', 'Toyota Camry', 'Toyota', '99999999.99', 2021, 2147483647, 'Hộp số tự động', 'Động cơ Xăng', 'Xanh', 'Hanoi', 'Hanoi', 'active', '2024-06-19 05:45:43', 'public\\images\\2be6c90e-4263-4420-8ef4-02df2949e386-pexels-photo-691595.webp', 'public\\images\\8ef25d0d-bf1f-4648-b40b-6783ff389eac-pexels-photo-1768826.jpg', 'public\\images\\44869d41-664c-4011-864c-42e94b083280-pexels-photo-1841120.jpg', 'public\\images\\b6b45fa2-c242-4523-9ae5-9d080f4e524c-pexels-photo-2739286.jpg', 'public\\images\\26ac0334-c729-46a4-9124-b9e534e3d964-pexels-photo-2876872.jpg', 'public\\images\\72905d45-586c-464d-95b8-2a4632e6214b-pexels-photo-3221159.webp', 'public\\images\\2f3c8ef3-92b9-4062-9601-5f1f70574701-pexels-photo-3786091.webp'),
('2cd1f7d1-2dff-11ef-a0ea-b42e997fc79f', '171ea9da-2dfd-11ef-a0ea-b42e997fc79f', 'Toyota Camry', 'Toyota', '99999999.99', 2021, 2147483647, 'Hộp số tự động', 'Động cơ Xăng', 'Xanh', 'Hanoi', 'Hanoi', 'active', '2024-06-19 05:45:46', 'public\\images\\b52a7cd8-adef-405f-bb38-0d2c6cad222e-pexels-photo-691595.webp', 'public\\images\\54be9a24-0b55-45b1-af69-7554a5d0a236-pexels-photo-1768826.jpg', 'public\\images\\4b005bf3-a83b-44e9-8886-5b1006d28b5a-pexels-photo-1841120.jpg', 'public\\images\\bd259736-3a0e-4c6d-95c8-f4399ffe0671-pexels-photo-2739286.jpg', 'public\\images\\df8fd082-c9b4-49b8-9660-8843e372ae72-pexels-photo-2876872.jpg', 'public\\images\\0ddb1d1c-76b3-480a-b2ec-9394f3b240d8-pexels-photo-3221159.webp', 'public\\images\\debed6cc-47d0-4610-8b86-0ec444bd8750-pexels-photo-3786091.webp'),
('2ce81041-2dff-11ef-a0ea-b42e997fc79f', '171ea9da-2dfd-11ef-a0ea-b42e997fc79f', 'Toyota Camry', 'Toyota', '99999999.99', 2021, 2147483647, 'Hộp số tự động', 'Động cơ Xăng', 'Xanh', 'TP HCM\n', 'TP HCM', 'null', '2024-06-19 05:45:46', 'public\\images\\44adbfac-e59e-48b5-af06-2b41f883660d-pexels-photo-691595.webp', 'public\\images\\a83b2a1d-6b6c-44c7-8635-6d6a3df3210a-pexels-photo-1768826.jpg', 'public\\images\\26c98afe-043e-4105-bb74-05b39c052fc5-pexels-photo-1841120.jpg', 'public\\images\\77edda5f-c09f-4225-a003-1c9ae8ba9adf-pexels-photo-2739286.jpg', 'public\\images\\7f7d98dc-aead-402b-9374-db2066ee801e-pexels-photo-2876872.jpg', 'public\\images\\6d06fc5a-ffaf-4c72-8b5c-bc89eba18c81-pexels-photo-3221159.webp', 'public\\images\\7836f10c-7a1c-43f6-9ca1-e5baabd34855-pexels-photo-3786091.webp'),
('2cfc01f4-2dff-11ef-a0ea-b42e997fc79f', '171ea9da-2dfd-11ef-a0ea-b42e997fc79f', 'Toyota Camry', 'Toyota', '99999999.99', 2021, 2147483647, 'Hộp số tự động', 'Động cơ Xăng', 'Xanh', 'Dong Nai\n', 'Dong Nai', 'null', '2024-06-19 05:45:46', 'public\\images\\c535cd85-a275-4e55-8ee3-a0d2ff662f64-pexels-photo-691595.webp', 'public\\images\\bd568cd8-7a3b-4b0e-9e07-a56dcd375709-pexels-photo-1768826.jpg', 'public\\images\\ddf25d0a-bb31-4a0b-8aca-863f9a041dee-pexels-photo-1841120.jpg', 'public\\images\\539b1d6b-f867-400b-8795-9a918ad79785-pexels-photo-2739286.jpg', 'public\\images\\52fada80-bf57-4fdc-8052-cc373130db83-pexels-photo-2876872.jpg', 'public\\images\\95a089ca-1d43-429e-ac29-e2bb2bf5379b-pexels-photo-3221159.webp', 'public\\images\\024b2f82-007c-4e30-b607-3c7de17105f5-pexels-photo-3786091.webp'),
('2d12ac7d-2dff-11ef-a0ea-b42e997fc79f', '171ea9da-2dfd-11ef-a0ea-b42e997fc79f', 'Toyota Camry', 'Toyota', '99999999.99', 2021, 2147483647, 'Hộp số tự động', 'Động cơ Xăng', 'Xanh', 'Vung Tau\n', 'Vung Tau', 'null', '2024-06-19 05:45:46', 'public\\images\\80fe8c4e-6821-4213-a518-2e9b6bc8a52a-pexels-photo-691595.webp', 'public\\images\\463df96c-2f47-43ca-9cdc-3d07c5e8508c-pexels-photo-1768826.jpg', 'public\\images\\ffc95ced-0ec0-4ef1-b9ec-dafb73d305a7-pexels-photo-1841120.jpg', 'public\\images\\95b8149f-a24a-45c2-8818-b3451004a87e-pexels-photo-2739286.jpg', 'public\\images\\3e04ac29-50f7-4b0f-8379-f2505beef5ad-pexels-photo-2876872.jpg', 'public\\images\\5f2a63a1-a512-4fcc-843a-8ee68a241991-pexels-photo-3221159.webp', 'public\\images\\e731dc4d-9892-4e64-acc9-530291bd9c7c-pexels-photo-3786091.webp'),
('2d288d34-2dff-11ef-a0ea-b42e997fc79f', '171ea9da-2dfd-11ef-a0ea-b42e997fc79f', 'Toyota Camry', 'Toyota', '99999999.99', 2021, 2147483647, 'Hộp số tự động', 'Động cơ Xăng', 'Xanh', 'Binh THuan\n', 'Binh THuan', 'active', '2024-06-19 05:45:46', 'public\\images\\a99af25e-1eea-427e-9dee-2b706a448f48-pexels-photo-691595.webp', 'public\\images\\df73b98f-4fbc-4174-9fbb-6f83a3a350f1-pexels-photo-1768826.jpg', 'public\\images\\7cd99dfd-75f9-4d51-a432-418b78da3562-pexels-photo-1841120.jpg', 'public\\images\\4b8a6d06-3785-45b8-b0fc-71d4a46c9231-pexels-photo-2739286.jpg', 'public\\images\\1ba1f931-3da5-4adc-ada8-91d27b9c5fbc-pexels-photo-2876872.jpg', 'public\\images\\1e632947-be6c-47d0-8469-c4305a77eb1c-pexels-photo-3221159.webp', 'public\\images\\31d07c74-38b6-4f86-afec-c9a24cf07a82-pexels-photo-3786091.webp'),
('2d3cb0d7-2dff-11ef-a0ea-b42e997fc79f', '171ea9da-2dfd-11ef-a0ea-b42e997fc79f', 'Toyota Camry', 'Toyota', '99999999.99', 2021, 2147483647, 'Hộp số tự động', 'Động cơ Xăng', 'Xanh', 'DAkLAk\n', 'DAkLAk', 'active', '2024-06-19 05:45:47', 'public\\images\\4f92f4be-ed1e-4a95-adb4-baf2a607752b-pexels-photo-691595.webp', 'public\\images\\80eaf505-e62d-4214-a4f3-41fd4fb74ccb-pexels-photo-1768826.jpg', 'public\\images\\87d2a982-3368-4d7d-8ccd-70f484476e3b-pexels-photo-1841120.jpg', 'public\\images\\26d55669-6221-4bb8-887b-6f355329f1ad-pexels-photo-2739286.jpg', 'public\\images\\bb2a146e-9ea1-436e-b7a0-43bf22061c44-pexels-photo-2876872.jpg', 'public\\images\\2dd48954-05ea-41af-8d8f-fba3cf25f2ba-pexels-photo-3221159.webp', 'public\\images\\f62f3f0f-549c-4466-a5f1-6d778c8c4cd3-pexels-photo-3786091.webp'),
('2d4f2679-2dff-11ef-a0ea-b42e997fc79f', '171ea9da-2dfd-11ef-a0ea-b42e997fc79f', 'Toyota Camry', 'Toyota', '99999999.99', 2021, 2147483647, 'Hộp số tự động', 'Động cơ Xăng', 'Xanh', 'Quy NHon', 'Quy NHon', 'active', '2024-06-19 05:45:47', 'public\\images\\97dbc429-575d-4a7e-b567-d60e520b8fb5-pexels-photo-691595.webp', 'public\\images\\0f13162b-921b-4aa3-811c-32c98343988e-pexels-photo-1768826.jpg', 'public\\images\\8c1651d9-5f81-4fb0-8c34-a9078431a904-pexels-photo-1841120.jpg', 'public\\images\\d3861f8a-f623-49cb-9d21-099af894eac1-pexels-photo-2739286.jpg', 'public\\images\\baf37408-28c3-49f7-a9bf-041f62ec1784-pexels-photo-2876872.jpg', 'public\\images\\119c8b87-25d2-491d-95cf-70840c4559a5-pexels-photo-3221159.webp', 'public\\images\\0278ec4e-0806-4bb9-932b-29462dda726d-pexels-photo-3786091.webp'),
('2d633e97-2dff-11ef-a0ea-b42e997fc79f', '171ea9da-2dfd-11ef-a0ea-b42e997fc79f', 'Toyota Camry', 'Toyota', '99999999.99', 2021, 2147483647, 'Hộp số tự động', 'Động cơ Xăng', 'Xanh', 'Nha Trang\n', 'Nha Trang', 'active', '2024-06-19 05:45:47', 'public\\images\\4e60c4e3-ed8e-4c5c-a997-fb81bad96af9-pexels-photo-691595.webp', 'public\\images\\fa86d896-47f0-464c-bd6d-1aba7e51c3d2-pexels-photo-1768826.jpg', 'public\\images\\aa6138dc-dbca-49a7-ad74-22e49097f064-pexels-photo-1841120.jpg', 'public\\images\\72e87342-f74e-4462-95c2-ad7a0babdca0-pexels-photo-2739286.jpg', 'public\\images\\637fec85-4a92-4a61-a1f8-be3ace52f961-pexels-photo-2876872.jpg', 'public\\images\\c438616f-939c-40bd-b363-97f455e8df12-pexels-photo-3221159.webp', 'public\\images\\0dcf90ed-cb9c-412f-98a8-4e9d4bb5b07c-pexels-photo-3786091.webp'),
('2d74f9ad-2dff-11ef-a0ea-b42e997fc79f', '171ea9da-2dfd-11ef-a0ea-b42e997fc79f', 'Toyota Camry', 'Toyota', '99999999.99', 2021, 2147483647, 'Hộp số tự động', 'Động cơ Xăng', 'Xanh', 'Nha Trang\n', 'Hanoi', 'active', '2024-06-19 05:45:47', 'public\\images\\8c650de5-eb1c-4b48-820e-085bdc122369-pexels-photo-691595.webp', 'public\\images\\1e669fec-6770-48cf-a19f-f40334ca6039-pexels-photo-1768826.jpg', 'public\\images\\06f747c1-3469-46ba-87a2-025edeb9e810-pexels-photo-1841120.jpg', 'public\\images\\bbcc34c8-c8b0-4435-a28c-cd09687a674d-pexels-photo-2739286.jpg', 'public\\images\\59813715-7f77-4fe2-89bd-cb340cad5e12-pexels-photo-2876872.jpg', 'public\\images\\dac89a11-56b8-49fd-8676-41db2536e38a-pexels-photo-3221159.webp', 'public\\images\\c55da5ec-7fbd-401c-8ea2-14c94af27f42-pexels-photo-3786091.webp'),
('62dd1526-2dfe-11ef-a0ea-b42e997fc79f', '171ea9da-2dfd-11ef-a0ea-b42e997fc79f', 'Honda City', 'Honda', '99999999.99', 2023, 2222222, 'Hộp số sàn', 'Động cơ Dầu Diesel', 'Đen', 'Bac ninh', 'Bac ninh', 'active', '2024-06-19 05:40:07', 'public\\images\\4b39e6f3-d9bb-48c8-93aa-47fbf87848aa-pexels-photo-691595.webp', 'public\\images\\7b81ac4d-0085-4f23-b75b-81f1b41b67fd-pexels-photo-1768826.jpg', 'public\\images\\f48145d5-ba6e-479d-86e2-674646383e59-pexels-photo-1841120.jpg', 'public\\images\\8cff3475-3966-4ef7-a6f9-925939a5b29d-pexels-photo-2739286.jpg', 'public\\images\\08152351-58a9-46ac-8c30-1e160e139103-pexels-photo-2876872.jpg', 'public\\images\\98096ee8-f309-430a-819d-5cf0d43c50e8-pexels-photo-3221159.webp', 'public\\images\\fad39a39-798f-4f6c-9ed1-f3531b457a49-pexels-photo-3786091.webp');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id_comment` char(36) NOT NULL,
  `id_car` char(36) DEFAULT NULL,
  `id_user` char(36) DEFAULT NULL,
  `noidung` text DEFAULT NULL,
  `like_status` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `images` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id_comment`, `id_car`, `id_user`, `noidung`, `like_status`, `created_at`, `images`) VALUES
('0b92ee53-2e09-11ef-a0ea-b42e997fc79f', '2b039992-2dff-11ef-a0ea-b42e997fc79f', 'f26667f8-2df7-11ef-a0ea-b42e997fc79f', 'toi chiu thoi ', 0, '2024-06-19 13:56:25', '[]'),
('94c856bf-2e07-11ef-a0ea-b42e997fc79f', '2b039992-2dff-11ef-a0ea-b42e997fc79f', '171ea9da-2dfd-11ef-a0ea-b42e997fc79f', 'xin chao nhe!', 0, '2024-06-19 13:45:56', '[]'),
('9a1c64c5-2e0c-11ef-a0ea-b42e997fc79f', '2cd1f7d1-2dff-11ef-a0ea-b42e997fc79f', 'f26667f8-2df7-11ef-a0ea-b42e997fc79f', 'xxxxxxxxxxx', 0, '2024-06-19 14:21:53', '[]'),
('c43e8697-2e08-11ef-a0ea-b42e997fc79f', '2b039992-2dff-11ef-a0ea-b42e997fc79f', '171ea9da-2dfd-11ef-a0ea-b42e997fc79f', 'xxxxxxxxxxx', 0, '2024-06-19 13:54:25', '[]'),
('c79f0c3c-2e08-11ef-a0ea-b42e997fc79f', '2b039992-2dff-11ef-a0ea-b42e997fc79f', '171ea9da-2dfd-11ef-a0ea-b42e997fc79f', 'xxx', 0, '2024-06-19 13:54:31', '[{\"filename\":\"c0acd0ce-7598-45c4-950d-a50cad5871b0-pexels-photo-1768826.jpg\",\"path\":\"public\\\\images\\\\imagesComments\\\\c0acd0ce-7598-45c4-950d-a50cad5871b0-pexels-photo-1768826.jpg\"},{\"filename\":\"5f1a03df-40d5-4bfb-b25f-030960876985-pexels-photo-1841120.jpg\",\"path\":\"public\\\\images\\\\imagesComments\\\\5f1a03df-40d5-4bfb-b25f-030960876985-pexels-photo-1841120.jpg\"},{\"filename\":\"238bce15-3243-4b3e-8764-6423a6de5a97-pexels-photo-2739286.jpg\",\"path\":\"public\\\\images\\\\imagesComments\\\\238bce15-3243-4b3e-8764-6423a6de5a97-pexels-photo-2739286.jpg\"},{\"filename\":\"ef753d6d-fd03-46d3-8171-53c4c096c81d-pexels-photo-2876872.jpg\",\"path\":\"public\\\\images\\\\imagesComments\\\\ef753d6d-fd03-46d3-8171-53c4c096c81d-pexels-photo-2876872.jpg\"}]'),
('d6b17cf7-2e08-11ef-a0ea-b42e997fc79f', '2b039992-2dff-11ef-a0ea-b42e997fc79f', '171ea9da-2dfd-11ef-a0ea-b42e997fc79f', 'chiu thoi \r\n', 0, '2024-06-19 13:54:56', '[]'),
('dbae7995-2e0c-11ef-a0ea-b42e997fc79f', '2cd1f7d1-2dff-11ef-a0ea-b42e997fc79f', 'f26667f8-2df7-11ef-a0ea-b42e997fc79f', 'xxxxxxxxxx', 0, '2024-06-19 14:23:43', '[{\"filename\":\"dd49fdb3-1aa0-4d91-a942-e036864e450a-pexels-photo-691595.webp\",\"path\":\"public\\\\images\\\\imagesComments\\\\dd49fdb3-1aa0-4d91-a942-e036864e450a-pexels-photo-691595.webp\"},{\"filename\":\"991f54df-b82e-4ccf-8411-07edb87beb39-pexels-photo-1768826.jpg\",\"path\":\"public\\\\images\\\\imagesComments\\\\991f54df-b82e-4ccf-8411-07edb87beb39-pexels-photo-1768826.jpg\"},{\"filename\":\"9b2e560d-64f7-4f2b-a800-4b6c3e660027-pexels-photo-1841120.jpg\",\"path\":\"public\\\\images\\\\imagesComments\\\\9b2e560d-64f7-4f2b-a800-4b6c3e660027-pexels-photo-1841120.jpg\"},{\"filename\":\"6ea56a69-fb01-4a21-a562-d2f4e321ce99-pexels-photo-2739286.jpg\",\"path\":\"public\\\\images\\\\imagesComments\\\\6ea56a69-fb01-4a21-a562-d2f4e321ce99-pexels-photo-2739286.jpg\"},{\"filename\":\"9b781c6a-4637-478c-a39e-d6560fc7eaa7-pexels-photo-2876872.jpg\",\"path\":\"public\\\\images\\\\imagesComments\\\\9b781c6a-4637-478c-a39e-d6560fc7eaa7-pexels-photo-2876872.jpg\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `replycomment`
--

CREATE TABLE `replycomment` (
  `id_reply` char(36) NOT NULL,
  `id_comment` char(36) DEFAULT NULL,
  `id_user` char(36) DEFAULT NULL,
  `likecomment` int(11) DEFAULT NULL,
  `noidung` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `replycomment`
--

INSERT INTO `replycomment` (`id_reply`, `id_comment`, `id_user`, `likecomment`, `noidung`, `created_at`) VALUES
('cc5d2dd2-2e08-11ef-a0ea-b42e997fc79f', 'c79f0c3c-2e08-11ef-a0ea-b42e997fc79f', '171ea9da-2dfd-11ef-a0ea-b42e997fc79f', 0, 'hiii', '2024-06-19 13:54:39');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id_role` char(36) NOT NULL,
  `role_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `active` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
  ADD PRIMARY KEY (`id_comment`);

--
-- Indexes for table `replycomment`
--
ALTER TABLE `replycomment`
  ADD PRIMARY KEY (`id_reply`),
  ADD KEY `id_comment` (`id_comment`);

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
-- Constraints for table `replycomment`
--
ALTER TABLE `replycomment`
  ADD CONSTRAINT `replycomment_ibfk_1` FOREIGN KEY (`id_comment`) REFERENCES `comment` (`id_comment`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
