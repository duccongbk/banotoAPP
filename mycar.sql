-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 24, 2024 at 04:54 AM
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
  `price` decimal(20,2) NOT NULL,
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
('1ab01b57-2ed6-11ef-bfe8-b42e997fc79f', '171ea9da-2dfd-11ef-a0ea-b42e997fc79f', 'Ford Explorer', 'Ford', '33333333.00', 2024, 200000, 'Hộp số sàn', 'Động cơ Dầu Diesel', 'Đỏ', 'Quận 1--Thành phố Hồ Chí Minh', '33', 'active', '2024-06-20 07:24:17', 'public\\images\\7b20bf7f-7632-412d-8542-f3cf4118d929-pexels-photo-691595.webp', 'public\\images\\1d0cbd81-27ff-459d-9344-f3b4b0069ce3-pexels-photo-1768826.jpg', 'public\\images\\cb065055-b71a-4621-bd4f-cf8840ee6922-pexels-photo-1841120.jpg', 'public\\images\\e8e44902-e96b-46ed-a5bd-87df1ef3fb4b-pexels-photo-2739286.jpg', 'public\\images\\266a1595-741c-4632-85ac-fcc5e0b4b6f4-pexels-photo-2876872.jpg', 'public\\images\\ba7972cf-7d53-4668-87cb-46e28f73aba3-pexels-photo-3221159.webp', 'public\\images\\1e193005-3ab6-442f-962a-f5c1fb4354da-pexels-photo-3786091.webp'),
('1ca4cbfd-2ed6-11ef-bfe8-b42e997fc79f', '171ea9da-2dfd-11ef-a0ea-b42e997fc79f', 'Ford Explorer', 'Ford', '33333333.00', 2024, 200000, 'Hộp số sàn', 'Động cơ Dầu Diesel', 'Đỏ', 'Quận 12--Thành phố Hồ Chí Minh', '33', 'active', '2024-06-20 07:24:21', 'public\\images\\ecc75bdd-4bc9-452e-a308-00364da11c43-pexels-photo-691595.webp', 'public\\images\\7f36f306-e0f1-4d36-97a6-003e53e50cf9-pexels-photo-1768826.jpg', 'public\\images\\43423da3-c8ed-46b0-9348-371436418be8-pexels-photo-1841120.jpg', 'public\\images\\005a2e7f-e8da-41c3-b410-a737bae98f76-pexels-photo-2739286.jpg', 'public\\images\\5dca8a0d-22c2-4eb5-8315-0259adfaa65c-pexels-photo-2876872.jpg', 'public\\images\\f8d3ef45-9246-45d8-bf0d-409c23fac1d2-pexels-photo-3221159.webp', 'public\\images\\9a1e22a4-29a0-4897-8799-9b9a6ba30222-pexels-photo-3786091.webp'),
('1dbfcd55-2ed6-11ef-bfe8-b42e997fc79f', '171ea9da-2dfd-11ef-a0ea-b42e997fc79f', 'Ford Explorer', 'Ford', '33333333.00', 2024, 200000, 'Hộp số sàn', 'Động cơ Dầu Diesel', 'Đỏ', 'Quận Tân Bình--Thành phố Hồ Chí Minh', '33', 'active', '2024-06-20 07:24:22', 'public\\images\\a5202627-ce2e-4468-a1c6-ad5d64a56096-pexels-photo-691595.webp', 'public\\images\\f450c40e-81a2-4718-a2d5-224b7adfd451-pexels-photo-1768826.jpg', 'public\\images\\264e0c2e-2d50-41a9-9d49-ec42106a6b8b-pexels-photo-1841120.jpg', 'public\\images\\602505ab-0d8a-477c-bf28-8a71e2f82f91-pexels-photo-2739286.jpg', 'public\\images\\7a25fb33-7fda-41b2-a065-112122f3291d-pexels-photo-2876872.jpg', 'public\\images\\88098247-77cd-4b4e-9240-fed532395cbf-pexels-photo-3221159.webp', 'public\\images\\3ad2bb7a-d47d-42af-88a5-35643c15c332-pexels-photo-3786091.webp'),
('1e475612-2ed6-11ef-bfe8-b42e997fc79f', '171ea9da-2dfd-11ef-a0ea-b42e997fc79f', 'Ford Explorer', 'Ford', '33333333.00', 2024, 200000, 'Hộp số sàn', 'Động cơ Dầu Diesel', 'Đỏ', 'Quận Tân Bình--Thành phố Hồ Chí Minh', '33', 'active', '2024-06-20 07:24:23', 'public\\images\\f2580ffc-e4ae-495d-b221-98484e4ad841-pexels-photo-691595.webp', 'public\\images\\d44702d5-5032-403d-b7d5-3189116755bb-pexels-photo-1768826.jpg', 'public\\images\\0f7023c8-993f-4452-ba45-45cd1affb6ca-pexels-photo-1841120.jpg', 'public\\images\\f087cafd-6d4d-4cdc-966a-0e3e3e468317-pexels-photo-2739286.jpg', 'public\\images\\aa76b3dd-5079-4f63-8b5e-6bb61b154b39-pexels-photo-2876872.jpg', 'public\\images\\6a67bf14-57ec-4a40-a7e7-2a0c21395f73-pexels-photo-3221159.webp', 'public\\images\\d6d2586e-4eca-488f-9459-7a7201f58977-pexels-photo-3786091.webp'),
('2013892e-2ed6-11ef-bfe8-b42e997fc79f', '171ea9da-2dfd-11ef-a0ea-b42e997fc79f', 'Ford Explorer', 'Ford', '33333333.00', 2024, 200000, 'Hộp số sàn', 'Động cơ Dầu Diesel', 'Đỏ', 'Quận 4--Thành phố Hồ Chí Minh', '33', 'active', '2024-06-20 07:24:26', 'public\\images\\b562ad9d-955b-4e06-a2f1-a031144ca7da-pexels-photo-691595.webp', 'public\\images\\0e042b07-fce0-4057-ba51-6057b21e91b1-pexels-photo-1768826.jpg', 'public\\images\\d9a96dc9-7145-4b77-bd9f-0d862fde4da5-pexels-photo-1841120.jpg', 'public\\images\\7550a51f-2279-428e-a16d-c919123dbe45-pexels-photo-2739286.jpg', 'public\\images\\7b6b71af-5ff0-477d-87cb-dba3edcc05ba-pexels-photo-2876872.jpg', 'public\\images\\f35400da-57b0-4254-a3ad-613e665d0533-pexels-photo-3221159.webp', 'public\\images\\d488eb6d-61fa-45d1-9113-a8c085b40653-pexels-photo-3786091.webp'),
('214d4b1b-2ed6-11ef-bfe8-b42e997fc79f', '171ea9da-2dfd-11ef-a0ea-b42e997fc79f', 'Ford Explorer', 'Ford', '33333333.00', 2024, 200000, 'Hộp số sàn', 'Động cơ Dầu Diesel', 'Đỏ', 'Quận 5--Thành phố Hồ Chí Minh', '33', 'active', '2024-06-20 07:24:28', 'public\\images\\b263c6b2-c46e-43f9-8c23-6938f914335f-pexels-photo-691595.webp', 'public\\images\\36c8f508-7b9c-4254-8409-70d494fbf8fb-pexels-photo-1768826.jpg', 'public\\images\\65e3bb1e-8487-4e34-ae18-39eadff376b0-pexels-photo-1841120.jpg', 'public\\images\\9ad0182b-0fc2-411e-a6b6-dcdc18bc9f06-pexels-photo-2739286.jpg', 'public\\images\\35572c6d-672e-49f9-b996-28034ed79303-pexels-photo-2876872.jpg', 'public\\images\\2be31af9-6ce5-4a6f-be30-254cb3d6354e-pexels-photo-3221159.webp', 'public\\images\\771bdd6d-0304-4b14-98eb-8b82000e2050-pexels-photo-3786091.webp'),
('225c311b-2ed6-11ef-bfe8-b42e997fc79f', '171ea9da-2dfd-11ef-a0ea-b42e997fc79f', 'Ford Explorer', 'Ford', '33333333.00', 2024, 200000, 'Hộp số sàn', 'Động cơ Dầu Diesel', 'Đỏ', 'Quận 6--Thành phố Hồ Chí Minh', '33', 'active', '2024-06-20 07:24:30', 'public\\images\\9e3e0118-5f6a-4789-89db-124e9395827f-pexels-photo-691595.webp', 'public\\images\\babdc640-00ca-472e-879a-756236d129b1-pexels-photo-1768826.jpg', 'public\\images\\66db833c-8cb2-4ac6-9768-c9e7a16a1c97-pexels-photo-1841120.jpg', 'public\\images\\7f319492-aa83-4bd7-9390-691b653a4498-pexels-photo-2739286.jpg', 'public\\images\\4c6f0c1a-5a48-49c2-89a8-f52f4ec4a251-pexels-photo-2876872.jpg', 'public\\images\\c48d9eb1-b298-4431-95c5-60f1c82c1f07-pexels-photo-3221159.webp', 'public\\images\\d3abba37-9283-44cb-94df-9f5a468e4dd3-pexels-photo-3786091.webp'),
('236a0503-2ed6-11ef-bfe8-b42e997fc79f', '171ea9da-2dfd-11ef-a0ea-b42e997fc79f', 'Ford Explorer', 'Ford', '33333333.00', 2024, 200000, 'Hộp số sàn', 'Động cơ Dầu Diesel', 'Đỏ', 'Quận 7--Thành phố Hồ Chí Minh', '33', 'active', '2024-06-20 07:24:32', 'public\\images\\eff3f4b9-fd9c-483f-9735-0db7e4675ecd-pexels-photo-691595.webp', 'public\\images\\5ab494a3-6950-4893-9ada-515e04d997f1-pexels-photo-1768826.jpg', 'public\\images\\e40e32a0-a249-47c0-a29b-4e6b56a5d22e-pexels-photo-1841120.jpg', 'public\\images\\42ab4729-c205-445a-ac1f-f7ecd0e89273-pexels-photo-2739286.jpg', 'public\\images\\71576fa3-3386-444e-994f-b17829170f71-pexels-photo-2876872.jpg', 'public\\images\\5b06f763-c450-491a-8339-b9d54fabea16-pexels-photo-3221159.webp', 'public\\images\\7b6755e5-a504-4d99-bb20-955818eff645-pexels-photo-3786091.webp'),
('255e5db8-2ed6-11ef-bfe8-b42e997fc79f', '171ea9da-2dfd-11ef-a0ea-b42e997fc79f', 'Ford Explorer', 'Ford', '33333333.00', 2024, 200000, 'Hộp số sàn', 'Động cơ Dầu Diesel', 'Đỏ', 'Huyện Củ Chi--Thành phố Hồ Chí Minh', '33', 'active', '2024-06-20 07:24:35', 'public\\images\\25029794-7e10-49a0-b24e-de5234ad79f9-pexels-photo-691595.webp', 'public\\images\\a395e745-ef28-4540-9a3a-a416be3ad577-pexels-photo-1768826.jpg', 'public\\images\\3e6dd5b1-685a-45b0-ae92-858ee53805e5-pexels-photo-1841120.jpg', 'public\\images\\86c6f0f7-ed9e-4db4-8af3-193cbb23fa98-pexels-photo-2739286.jpg', 'public\\images\\fa078635-3f44-4edf-97ac-d8e240a0d0b8-pexels-photo-2876872.jpg', 'public\\images\\e47db5c5-1f16-4959-b0b2-6f84dba9ca94-pexels-photo-3221159.webp', 'public\\images\\4c70380c-ccbb-4026-95fa-c0eef8f1d34e-pexels-photo-3786091.webp'),
('26997e6f-2ed6-11ef-bfe8-b42e997fc79f', '171ea9da-2dfd-11ef-a0ea-b42e997fc79f', 'Ford Explorer', 'Ford', '33333333.00', 2024, 200000, 'Hộp số sàn', 'Động cơ Dầu Diesel', 'Đỏ', 'Huyện Hóc Môn--Thành phố Hồ Chí Minh', '33', 'active', '2024-06-20 07:24:37', 'public\\images\\7f03721f-e0fe-4a09-bf47-710a5b9cacb4-pexels-photo-691595.webp', 'public\\images\\d9fa130a-59c3-4ad7-a834-3d6c1c35b4e0-pexels-photo-1768826.jpg', 'public\\images\\1ed716f9-3f78-4017-9686-73c6a1eca8fb-pexels-photo-1841120.jpg', 'public\\images\\5c6d9583-9674-48a7-99ca-7e21b5c6be66-pexels-photo-2739286.jpg', 'public\\images\\f7aba47e-21e9-40b1-9c7b-a56a75dcc87b-pexels-photo-2876872.jpg', 'public\\images\\950da284-1cf2-4d01-b1e0-3344e9bb0898-pexels-photo-3221159.webp', 'public\\images\\a07b3b96-6409-42f8-94e9-cb8f8299fe18-pexels-photo-3786091.webp'),
('27d69a50-2ed6-11ef-bfe8-b42e997fc79f', '171ea9da-2dfd-11ef-a0ea-b42e997fc79f', 'Ford Explorer', 'Ford', '33333333.00', 2024, 200000, 'Hộp số sàn', 'Động cơ Dầu Diesel', 'Đỏ', 'Huyện Cần Giờ--Thành phố Hồ Chí Minh', '33', 'active', '2024-06-20 07:24:39', 'public\\images\\fec28d57-f1c6-4421-9cbb-5684cf37fa91-pexels-photo-691595.webp', 'public\\images\\14fae69a-29ac-42de-88d8-09a246307d78-pexels-photo-1768826.jpg', 'public\\images\\552d51f5-2be0-4502-8d3e-646058a56948-pexels-photo-1841120.jpg', 'public\\images\\cde63e34-eb4c-4a05-b513-9f58ba2e01c1-pexels-photo-2739286.jpg', 'public\\images\\55f54e7a-ff31-408d-b5d9-026040dabaa1-pexels-photo-2876872.jpg', 'public\\images\\269786a7-a1d2-4d65-81a2-5feba9b57146-pexels-photo-3221159.webp', 'public\\images\\712c1fff-1394-48a9-b8c3-428a73041665-pexels-photo-3786091.webp'),
('2ce81041-2dff-11ef-a0ea-b42e997fc79f', '171ea9da-2dfd-11ef-a0ea-b42e997fc79f', 'Toyota Camry', 'Toyota', '99999999.99', 2021, 2147483647, 'Hộp số tự động', 'Động cơ Xăng', 'Xanh', 'TP HCM\n', 'TP HCM', 'active', '2024-06-19 05:45:46', 'public\\images\\44adbfac-e59e-48b5-af06-2b41f883660d-pexels-photo-691595.webp', 'public\\images\\a83b2a1d-6b6c-44c7-8635-6d6a3df3210a-pexels-photo-1768826.jpg', 'public\\images\\26c98afe-043e-4105-bb74-05b39c052fc5-pexels-photo-1841120.jpg', 'public\\images\\77edda5f-c09f-4225-a003-1c9ae8ba9adf-pexels-photo-2739286.jpg', 'public\\images\\7f7d98dc-aead-402b-9374-db2066ee801e-pexels-photo-2876872.jpg', 'public\\images\\6d06fc5a-ffaf-4c72-8b5c-bc89eba18c81-pexels-photo-3221159.webp', 'public\\images\\7836f10c-7a1c-43f6-9ca1-e5baabd34855-pexels-photo-3786091.webp'),
('2cfc01f4-2dff-11ef-a0ea-b42e997fc79f', '171ea9da-2dfd-11ef-a0ea-b42e997fc79f', 'Toyota Camry', 'Toyota', '99999999.99', 2021, 2147483647, 'Hộp số tự động', 'Động cơ Xăng', 'Xanh', 'Dong Nai\n', 'Dong Nai', 'active', '2024-06-19 05:45:46', 'public\\images\\c535cd85-a275-4e55-8ee3-a0d2ff662f64-pexels-photo-691595.webp', 'public\\images\\bd568cd8-7a3b-4b0e-9e07-a56dcd375709-pexels-photo-1768826.jpg', 'public\\images\\ddf25d0a-bb31-4a0b-8aca-863f9a041dee-pexels-photo-1841120.jpg', 'public\\images\\539b1d6b-f867-400b-8795-9a918ad79785-pexels-photo-2739286.jpg', 'public\\images\\52fada80-bf57-4fdc-8052-cc373130db83-pexels-photo-2876872.jpg', 'public\\images\\95a089ca-1d43-429e-ac29-e2bb2bf5379b-pexels-photo-3221159.webp', 'public\\images\\024b2f82-007c-4e30-b607-3c7de17105f5-pexels-photo-3786091.webp'),
('2d12ac7d-2dff-11ef-a0ea-b42e997fc79f', '171ea9da-2dfd-11ef-a0ea-b42e997fc79f', 'Toyota Camry', 'Toyota', '99999999.99', 2021, 2147483647, 'Hộp số tự động', 'Động cơ Xăng', 'Xanh', 'Vung Tau\n', 'Vung Tau', 'active', '2024-06-19 05:45:46', 'public\\images\\80fe8c4e-6821-4213-a518-2e9b6bc8a52a-pexels-photo-691595.webp', 'public\\images\\463df96c-2f47-43ca-9cdc-3d07c5e8508c-pexels-photo-1768826.jpg', 'public\\images\\ffc95ced-0ec0-4ef1-b9ec-dafb73d305a7-pexels-photo-1841120.jpg', 'public\\images\\95b8149f-a24a-45c2-8818-b3451004a87e-pexels-photo-2739286.jpg', 'public\\images\\3e04ac29-50f7-4b0f-8379-f2505beef5ad-pexels-photo-2876872.jpg', 'public\\images\\5f2a63a1-a512-4fcc-843a-8ee68a241991-pexels-photo-3221159.webp', 'public\\images\\e731dc4d-9892-4e64-acc9-530291bd9c7c-pexels-photo-3786091.webp'),
('2d288d34-2dff-11ef-a0ea-b42e997fc79f', '171ea9da-2dfd-11ef-a0ea-b42e997fc79f', 'Toyota Camry', 'Toyota', '99999999.99', 2021, 2147483647, 'Hộp số tự động', 'Động cơ Xăng', 'Xanh', 'Binh THuan\n', 'Binh THuan', 'active', '2024-06-19 05:45:46', 'public\\images\\a99af25e-1eea-427e-9dee-2b706a448f48-pexels-photo-691595.webp', 'public\\images\\df73b98f-4fbc-4174-9fbb-6f83a3a350f1-pexels-photo-1768826.jpg', 'public\\images\\7cd99dfd-75f9-4d51-a432-418b78da3562-pexels-photo-1841120.jpg', 'public\\images\\4b8a6d06-3785-45b8-b0fc-71d4a46c9231-pexels-photo-2739286.jpg', 'public\\images\\1ba1f931-3da5-4adc-ada8-91d27b9c5fbc-pexels-photo-2876872.jpg', 'public\\images\\1e632947-be6c-47d0-8469-c4305a77eb1c-pexels-photo-3221159.webp', 'public\\images\\31d07c74-38b6-4f86-afec-c9a24cf07a82-pexels-photo-3786091.webp'),
('2d3cb0d7-2dff-11ef-a0ea-b42e997fc79f', '171ea9da-2dfd-11ef-a0ea-b42e997fc79f', 'Toyota Camry', 'Toyota', '99999999.99', 2021, 2147483647, 'Hộp số tự động', 'Động cơ Xăng', 'Xanh', 'DAkLAk\n', 'DAkLAk', 'active', '2024-06-19 05:45:47', 'public\\images\\4f92f4be-ed1e-4a95-adb4-baf2a607752b-pexels-photo-691595.webp', 'public\\images\\80eaf505-e62d-4214-a4f3-41fd4fb74ccb-pexels-photo-1768826.jpg', 'public\\images\\87d2a982-3368-4d7d-8ccd-70f484476e3b-pexels-photo-1841120.jpg', 'public\\images\\26d55669-6221-4bb8-887b-6f355329f1ad-pexels-photo-2739286.jpg', 'public\\images\\bb2a146e-9ea1-436e-b7a0-43bf22061c44-pexels-photo-2876872.jpg', 'public\\images\\2dd48954-05ea-41af-8d8f-fba3cf25f2ba-pexels-photo-3221159.webp', 'public\\images\\f62f3f0f-549c-4466-a5f1-6d778c8c4cd3-pexels-photo-3786091.webp'),
('2d4f2679-2dff-11ef-a0ea-b42e997fc79f', '171ea9da-2dfd-11ef-a0ea-b42e997fc79f', 'Toyota Camry', 'Toyota', '99999999.99', 2021, 2147483647, 'Hộp số tự động', 'Động cơ Xăng', 'Xanh', 'Quy NHon', 'Quy NHon', 'active', '2024-06-19 05:45:47', 'public\\images\\97dbc429-575d-4a7e-b567-d60e520b8fb5-pexels-photo-691595.webp', 'public\\images\\0f13162b-921b-4aa3-811c-32c98343988e-pexels-photo-1768826.jpg', 'public\\images\\8c1651d9-5f81-4fb0-8c34-a9078431a904-pexels-photo-1841120.jpg', 'public\\images\\d3861f8a-f623-49cb-9d21-099af894eac1-pexels-photo-2739286.jpg', 'public\\images\\baf37408-28c3-49f7-a9bf-041f62ec1784-pexels-photo-2876872.jpg', 'public\\images\\119c8b87-25d2-491d-95cf-70840c4559a5-pexels-photo-3221159.webp', 'public\\images\\0278ec4e-0806-4bb9-932b-29462dda726d-pexels-photo-3786091.webp'),
('2d633e97-2dff-11ef-a0ea-b42e997fc79f', '171ea9da-2dfd-11ef-a0ea-b42e997fc79f', 'Toyota Camry', 'Toyota', '99999999.99', 2021, 2147483647, 'Hộp số tự động', 'Động cơ Xăng', 'Xanh', 'Nha Trang\n', 'Nha Trang', 'active', '2024-06-19 05:45:47', 'public\\images\\4e60c4e3-ed8e-4c5c-a997-fb81bad96af9-pexels-photo-691595.webp', 'public\\images\\fa86d896-47f0-464c-bd6d-1aba7e51c3d2-pexels-photo-1768826.jpg', 'public\\images\\aa6138dc-dbca-49a7-ad74-22e49097f064-pexels-photo-1841120.jpg', 'public\\images\\72e87342-f74e-4462-95c2-ad7a0babdca0-pexels-photo-2739286.jpg', 'public\\images\\637fec85-4a92-4a61-a1f8-be3ace52f961-pexels-photo-2876872.jpg', 'public\\images\\c438616f-939c-40bd-b363-97f455e8df12-pexels-photo-3221159.webp', 'public\\images\\0dcf90ed-cb9c-412f-98a8-4e9d4bb5b07c-pexels-photo-3786091.webp'),
('2d74f9ad-2dff-11ef-a0ea-b42e997fc79f', '171ea9da-2dfd-11ef-a0ea-b42e997fc79f', 'Toyota Camry', 'Toyota', '99999999.99', 2021, 2147483647, 'Hộp số tự động', 'Động cơ Xăng', 'Xanh', 'Nha Trang\n', 'Hanoi', 'active', '2024-06-19 05:45:47', 'public\\images\\8c650de5-eb1c-4b48-820e-085bdc122369-pexels-photo-691595.webp', 'public\\images\\1e669fec-6770-48cf-a19f-f40334ca6039-pexels-photo-1768826.jpg', 'public\\images\\06f747c1-3469-46ba-87a2-025edeb9e810-pexels-photo-1841120.jpg', 'public\\images\\bbcc34c8-c8b0-4435-a28c-cd09687a674d-pexels-photo-2739286.jpg', 'public\\images\\59813715-7f77-4fe2-89bd-cb340cad5e12-pexels-photo-2876872.jpg', 'public\\images\\dac89a11-56b8-49fd-8676-41db2536e38a-pexels-photo-3221159.webp', 'public\\images\\c55da5ec-7fbd-401c-8ea2-14c94af27f42-pexels-photo-3786091.webp'),
('62dd1526-2dfe-11ef-a0ea-b42e997fc79f', '171ea9da-2dfd-11ef-a0ea-b42e997fc79f', 'Honda City', 'Honda', '99999999.99', 2023, 2222222, 'Hộp số sàn', 'Động cơ Dầu Diesel', 'Đen', 'Bac ninh', 'Bac ninh', 'null', '2024-06-19 05:40:07', 'public\\images\\4b39e6f3-d9bb-48c8-93aa-47fbf87848aa-pexels-photo-691595.webp', 'public\\images\\7b81ac4d-0085-4f23-b75b-81f1b41b67fd-pexels-photo-1768826.jpg', 'public\\images\\f48145d5-ba6e-479d-86e2-674646383e59-pexels-photo-1841120.jpg', 'public\\images\\8cff3475-3966-4ef7-a6f9-925939a5b29d-pexels-photo-2739286.jpg', 'public\\images\\08152351-58a9-46ac-8c30-1e160e139103-pexels-photo-2876872.jpg', 'public\\images\\98096ee8-f309-430a-819d-5cf0d43c50e8-pexels-photo-3221159.webp', 'public\\images\\fad39a39-798f-4f6c-9ed1-f3531b457a49-pexels-photo-3786091.webp'),
('639195b0-2ec2-11ef-bfe8-b42e997fc79f', '171ea9da-2dfd-11ef-a0ea-b42e997fc79f', 'Honda CR-V', 'Honda', '22222222.00', 2022, 2222, 'Hộp số sàn', 'Động cơ Dầu Diesel', 'Trắng', 'Quận Hoàn Kiếm--Thành phố Hà Nội', 'zxzzzz', 'null', '2024-06-20 05:03:10', 'public\\images\\666bfa31-ffec-424b-9893-f6b34158798c-pexels-photo-691595.webp', 'public\\images\\8d7d0f22-9034-4c45-a395-6a02fd77d228-pexels-photo-1768826.jpg', 'public\\images\\9792eb79-1b02-4721-b74f-6f089ea2ba5b-pexels-photo-1841120.jpg', 'public\\images\\1ac5bbd8-cb2f-4635-8160-7a07de6a2a16-pexels-photo-2739286.jpg', 'public\\images\\d9aacaf8-c784-45d1-876f-0b7e502dbdec-pexels-photo-2876872.jpg', 'public\\images\\e4362b72-7cac-4794-8c41-b52d4dded51e-pexels-photo-3221159.webp', 'public\\images\\b0b7fae5-2e83-4750-81c9-b20d2e7a32d0-pexels-photo-3786091.webp'),
('6cde9e18-2ec2-11ef-bfe8-b42e997fc79f', '171ea9da-2dfd-11ef-a0ea-b42e997fc79f', 'Honda CR-V', 'Honda', '22222222.00', 2022, 2222, 'Hộp số sàn', 'Động cơ Dầu Diesel', 'Trắng', 'Thành phố Cao Bằng--Tỉnh Cao Bằng', 'zxzzzz', 'active', '2024-06-20 05:03:25', 'public\\images\\70871d1c-4fc1-4370-bc95-f18ce4372860-pexels-photo-691595.webp', 'public\\images\\94a8a48e-0169-47bb-93e1-475bd9c3500b-pexels-photo-1768826.jpg', 'public\\images\\39d4cd46-0e77-4804-aeb8-983c25d4e0f5-pexels-photo-1841120.jpg', 'public\\images\\66fa1685-bd7a-4f06-ae9e-3edb6a5d1f0f-pexels-photo-2739286.jpg', 'public\\images\\e9a5906e-3379-475f-868d-68a131f3d6d1-pexels-photo-2876872.jpg', 'public\\images\\cf768e20-aacd-4dda-ad50-df32229de249-pexels-photo-3221159.webp', 'public\\images\\33973b2c-464e-423f-97cd-0e7f7d3d8bc8-pexels-photo-3786091.webp'),
('6fd08fad-2ebc-11ef-bfe8-b42e997fc79f', '171ea9da-2dfd-11ef-a0ea-b42e997fc79f', 'Toyota Corolla', 'Toyota', '2222222222222.00', 2020, 2222222, 'Hộp số sàn', 'Động cơ Dầu Diesel', 'Trắng', 'undefined--01', 'xxxxxxxx', 'active', '2024-06-20 04:20:33', 'public\\images\\1c9e2b53-b652-4294-a09c-145bd2a5f138-pexels-photo-691595.webp', 'public\\images\\80b7394c-084b-4847-a597-553f9d9cce62-pexels-photo-1768826.jpg', 'public\\images\\1c0524a4-d21c-4483-bb22-865d3b80db90-pexels-photo-1841120.jpg', 'public\\images\\5fe0351a-f51c-4483-9fe4-8368b233c7da-pexels-photo-2739286.jpg', 'public\\images\\b06747c0-9e23-4924-afd0-7a079a0d704e-pexels-photo-2876872.jpg', 'public\\images\\5d6eb454-9286-46e9-9a04-f882a2583381-pexels-photo-3221159.webp', 'public\\images\\68fadb79-0511-40d5-be64-aabd981a9ab3-pexels-photo-3786091.webp'),
('707c6aed-2ebc-11ef-bfe8-b42e997fc79f', '171ea9da-2dfd-11ef-a0ea-b42e997fc79f', 'Toyota Corolla', 'Toyota', '2222222222222.00', 2020, 2222222, 'Hộp số sàn', 'Động cơ Dầu Diesel', 'Trắng', 'undefined--01', 'xxxxxxxx', 'active', '2024-06-20 04:20:34', 'public\\images\\b9c025e2-1802-4b88-8213-3b809e68a355-pexels-photo-691595.webp', 'public\\images\\d0898322-8133-4371-827c-d5556fb2a66e-pexels-photo-1768826.jpg', 'public\\images\\9b0ad39b-0de6-43ba-acc8-bf5433d54de4-pexels-photo-1841120.jpg', 'public\\images\\c60b4ed0-806b-40bc-ab48-9715d2e6d816-pexels-photo-2739286.jpg', 'public\\images\\76975b2c-7234-41b0-83e0-2c2aec21ad6d-pexels-photo-2876872.jpg', 'public\\images\\25837548-b822-4458-aa93-4310ae86ae9a-pexels-photo-3221159.webp', 'public\\images\\a50e0fcf-04d9-4b6f-bb97-ed11b0cf0b6c-pexels-photo-3786091.webp'),
('7096a9d2-2ebc-11ef-bfe8-b42e997fc79f', '171ea9da-2dfd-11ef-a0ea-b42e997fc79f', 'Toyota Corolla', 'Toyota', '2222222222222.00', 2020, 2222222, 'Hộp số sàn', 'Động cơ Dầu Diesel', 'Trắng', 'undefined--01', 'xxxxxxxx', 'active', '2024-06-20 04:20:34', 'public\\images\\7909ba53-b591-4cba-b58a-94b51cb35915-pexels-photo-691595.webp', 'public\\images\\2a09997b-e8a7-462b-b700-f26ea62a3afd-pexels-photo-1768826.jpg', 'public\\images\\7cae30e7-bfbf-4292-be49-9c5fb8a39f0b-pexels-photo-1841120.jpg', 'public\\images\\8c763755-a3a7-4419-8df2-7a655d844004-pexels-photo-2739286.jpg', 'public\\images\\95eb2b36-bc6d-404a-9c6d-7e56f9627f33-pexels-photo-2876872.jpg', 'public\\images\\734dee22-4360-465d-aebb-71eb7e4cd536-pexels-photo-3221159.webp', 'public\\images\\7bf26948-adb3-4962-b4ab-acc0f236fa60-pexels-photo-3786091.webp'),
('70ae0ad8-2ebc-11ef-bfe8-b42e997fc79f', '171ea9da-2dfd-11ef-a0ea-b42e997fc79f', 'Toyota Corolla', 'Toyota', '2222222222222.00', 2020, 2222222, 'Hộp số sàn', 'Động cơ Dầu Diesel', 'Trắng', 'undefined--01', 'xxxxxxxx', 'active', '2024-06-20 04:20:35', 'public\\images\\c07ba3a9-bd5f-4b2d-83ea-99d7bac0ffde-pexels-photo-691595.webp', 'public\\images\\8f88ee1a-5b22-4625-ae59-a364190c2cd5-pexels-photo-1768826.jpg', 'public\\images\\526bc697-9d7d-4f90-959e-107b3e18e4c5-pexels-photo-1841120.jpg', 'public\\images\\01fc2099-51a5-484e-aa24-9d8b3e8935ca-pexels-photo-2739286.jpg', 'public\\images\\30dbcadc-4d61-4cf2-bc7c-608505357edf-pexels-photo-2876872.jpg', 'public\\images\\ec5b6a73-adbc-41d8-a155-9a2a296fe7d5-pexels-photo-3221159.webp', 'public\\images\\f61f00eb-241d-4b5b-8308-d53ea1c85fd2-pexels-photo-3786091.webp'),
('70c1bce7-2ebc-11ef-bfe8-b42e997fc79f', '171ea9da-2dfd-11ef-a0ea-b42e997fc79f', 'Toyota Corolla', 'Toyota', '2222222222222.00', 2020, 2222222, 'Hộp số sàn', 'Động cơ Dầu Diesel', 'Trắng', 'undefined--01', 'xxxxxxxx', 'active', '2024-06-20 04:20:35', 'public\\images\\e7c50ec2-cc6d-41b3-a975-6f20c3262623-pexels-photo-691595.webp', 'public\\images\\17da59e4-762b-4351-9614-e8e8c6671f0f-pexels-photo-1768826.jpg', 'public\\images\\65b2822a-d793-48bf-91a7-422aaea3316c-pexels-photo-1841120.jpg', 'public\\images\\bd3b6b70-7792-4718-af0b-3664d4975c99-pexels-photo-2739286.jpg', 'public\\images\\9d992db5-2ce8-498a-b9cc-3528422a4043-pexels-photo-2876872.jpg', 'public\\images\\44499761-fe0a-4858-85a3-43f1991f3fc0-pexels-photo-3221159.webp', 'public\\images\\49f2fe6c-54f3-4d2b-b834-942cd0bdf041-pexels-photo-3786091.webp'),
('80ab783c-2ec2-11ef-bfe8-b42e997fc79f', '171ea9da-2dfd-11ef-a0ea-b42e997fc79f', 'Toyota Corolla', 'Toyota', '22222222.00', 2022, 2222, 'Hộp số sàn', 'Động cơ Dầu Diesel', 'Trắng', 'Huyện Gia Bình--Tỉnh Bắc Ninh', 'zxzzzz', 'active', '2024-06-20 05:03:58', 'public\\images\\f2826b64-0bf7-4227-a7ad-5fcd510d2fca-pexels-photo-691595.webp', 'public\\images\\8ef662c2-e1d6-412a-97ee-028a7c8ef930-pexels-photo-1768826.jpg', 'public\\images\\e0887f8e-9b10-4f0b-8bf8-71f4ddf02247-pexels-photo-1841120.jpg', 'public\\images\\23a5d61f-62e0-436f-ab17-b5373487586d-pexels-photo-2739286.jpg', 'public\\images\\f7f0e6f1-cb32-40aa-b611-823a60a84ab4-pexels-photo-2876872.jpg', 'public\\images\\3fb69e0c-d123-4ae4-8d2f-f956c09f0f92-pexels-photo-3221159.webp', 'public\\images\\e6e623c7-4cb3-44b9-bee1-4fddfc1e1f26-pexels-photo-3786091.webp'),
('95190da5-2ed5-11ef-bfe8-b42e997fc79f', '171ea9da-2dfd-11ef-a0ea-b42e997fc79f', 'Toyota Camry', 'Toyota', '222222222.00', 2023, 2222222, 'Hộp số sàn', 'Động cơ Xăng', 'Trắng', 'Quận Tây Hồ--Thành phố Hà Nội', 'xxxxxxxx', 'null', '2024-06-20 07:20:33', 'public\\images\\b2d4e2e4-a6d0-4248-a5bb-0d123041519e-pexels-photo-691595.webp', 'public\\images\\382a3887-5a5f-46a4-a7c6-328dd79a08c7-pexels-photo-1768826.jpg', 'public\\images\\d2826eef-5983-4e31-aa8b-709c1f891755-pexels-photo-1841120.jpg', 'public\\images\\47f5d5b1-d73e-462c-99bd-835eb02b18f5-pexels-photo-2739286.jpg', 'public\\images\\18908d8e-f07f-49c9-bf73-59afdf5fac46-pexels-photo-1841120.jpg', 'public\\images\\a79dc89e-7117-455e-9365-2c1e5f79741d-pexels-photo-2739286.jpg', 'public\\images\\ab5cbfad-c7cb-40fd-8943-f9a225f70913-pexels-photo-2876872.jpg'),
('95c151b4-2ed5-11ef-bfe8-b42e997fc79f', '171ea9da-2dfd-11ef-a0ea-b42e997fc79f', 'Toyota Camry', 'Toyota', '222222222.00', 2023, 2222222, 'Hộp số sàn', 'Động cơ Xăng', 'Trắng', 'Quận Tây Hồ--Thành phố Hà Nội', 'xxxxxxxx', 'null', '2024-06-20 07:20:34', 'public\\images\\77bc3454-d727-4065-947e-e5b81dd748a0-pexels-photo-691595.webp', 'public\\images\\d25e1fdd-449d-4392-a405-f243b2d3bfeb-pexels-photo-1768826.jpg', 'public\\images\\d1e8b4cb-506f-4b34-a107-f270fd468e28-pexels-photo-1841120.jpg', 'public\\images\\dc751b52-190a-4058-b511-209d5dae76e2-pexels-photo-2739286.jpg', 'public\\images\\7f292d4a-efcc-449f-a5f0-6bb948e64712-pexels-photo-1841120.jpg', 'public\\images\\49de88ec-b82a-4d01-9cfb-3efd70dd3922-pexels-photo-2739286.jpg', 'public\\images\\6b64c0d7-8c6c-47d6-9ae3-c04746729d70-pexels-photo-2876872.jpg'),
('9702a5c4-2ed5-11ef-bfe8-b42e997fc79f', '171ea9da-2dfd-11ef-a0ea-b42e997fc79f', 'Toyota Camry', 'Toyota', '222222222.00', 2023, 2222222, 'Hộp số sàn', 'Động cơ Xăng', 'Trắng', 'Quận Ba Đình--Thành phố Hà Nội', 'xxxxxxxx', 'active', '2024-06-20 07:20:36', 'public\\images\\5d4c8852-d643-42cc-9428-f9f59b48bd35-pexels-photo-691595.webp', 'public\\images\\bad7e22e-ad61-40ed-bc61-bdbf3ee6eaff-pexels-photo-1768826.jpg', 'public\\images\\b911fb94-3407-4c8c-9413-ff389d085df8-pexels-photo-1841120.jpg', 'public\\images\\c3cbbc00-f4e0-48e8-9aa5-bcb7a9085d9f-pexels-photo-2739286.jpg', 'public\\images\\db7fbb47-2e20-427f-b0f3-2120ffce72db-pexels-photo-1841120.jpg', 'public\\images\\7e2606e2-9d50-4133-8ecc-b39453f8335c-pexels-photo-2739286.jpg', 'public\\images\\337284b9-e4eb-4f30-8025-96c17c4bab54-pexels-photo-2876872.jpg'),
('98697529-2ed5-11ef-bfe8-b42e997fc79f', '171ea9da-2dfd-11ef-a0ea-b42e997fc79f', 'Toyota Camry', 'Toyota', '222222222.00', 2023, 2222222, 'Hộp số sàn', 'Động cơ Xăng', 'Trắng', 'Quận Thanh Xuân--Thành phố Hà Nội', 'xxxxxxxx', 'active', '2024-06-20 07:20:39', 'public\\images\\a14f1aa0-7975-4da6-97d1-ec9de89fc07b-pexels-photo-691595.webp', 'public\\images\\3e00f57c-776f-4046-9017-cc65f8f41e36-pexels-photo-1768826.jpg', 'public\\images\\bfa295ac-9c3f-414b-a58e-f3619d90469d-pexels-photo-1841120.jpg', 'public\\images\\fbe0b94b-9db4-4838-bedc-a54959cfc61f-pexels-photo-2739286.jpg', 'public\\images\\371d3ce0-ef62-425b-8c3b-3c53534de9f1-pexels-photo-1841120.jpg', 'public\\images\\0f978e57-09f8-484d-8448-11da18b4fa13-pexels-photo-2739286.jpg', 'public\\images\\7f911985-8dc9-42ac-b25c-1a5f9c4ea334-pexels-photo-2876872.jpg'),
('9989a27c-2ed5-11ef-bfe8-b42e997fc79f', '171ea9da-2dfd-11ef-a0ea-b42e997fc79f', 'Toyota Camry', 'Toyota', '222222222.00', 2023, 2222222, 'Hộp số sàn', 'Động cơ Xăng', 'Trắng', 'Huyện Sóc Sơn--Thành phố Hà Nội', 'xxxxxxxx', 'active', '2024-06-20 07:20:41', 'public\\images\\0da8348b-3b08-4c27-a7c1-928f8ca8cc7c-pexels-photo-691595.webp', 'public\\images\\ca312d8f-c9ae-42a8-8e9d-a0c7a8eab2bc-pexels-photo-1768826.jpg', 'public\\images\\fef55450-513f-4fd9-922c-8cc452d70bd0-pexels-photo-1841120.jpg', 'public\\images\\cc4d3985-4a4a-44fa-93b7-f3c3e8397615-pexels-photo-2739286.jpg', 'public\\images\\ccebac4b-18a2-4acf-9f1b-ac38f7cb6732-pexels-photo-1841120.jpg', 'public\\images\\e5390329-45a3-46f1-bb73-cce955c6e5e6-pexels-photo-2739286.jpg', 'public\\images\\c4af0bcd-63de-45e9-8bb4-427aa652cc27-pexels-photo-2876872.jpg'),
('9a79fc61-2ed5-11ef-bfe8-b42e997fc79f', '171ea9da-2dfd-11ef-a0ea-b42e997fc79f', 'Toyota Camry', 'Toyota', '222222222.00', 2023, 2222222, 'Hộp số sàn', 'Động cơ Xăng', 'Trắng', 'Huyện Thanh Trì--Thành phố Hà Nội', 'xxxxxxxx', 'active', '2024-06-20 07:20:42', 'public\\images\\1bf18340-9df8-4b5b-ae30-dcd811d05fc4-pexels-photo-691595.webp', 'public\\images\\4d04b635-0b3a-479b-baba-1f05fa000bd3-pexels-photo-1768826.jpg', 'public\\images\\4afed5c6-def0-44ca-8650-71085bc71c34-pexels-photo-1841120.jpg', 'public\\images\\5e1cca9a-4d40-4470-929c-a8819e6d9262-pexels-photo-2739286.jpg', 'public\\images\\d3b767bf-4cd4-4666-a844-11fb3406ef17-pexels-photo-1841120.jpg', 'public\\images\\fce2d501-12b5-483f-a5b4-c81b07697f3d-pexels-photo-2739286.jpg', 'public\\images\\8427e613-b6a0-4f9c-8b3f-850fc990cb2d-pexels-photo-2876872.jpg'),
('9b91c1a1-2ed5-11ef-bfe8-b42e997fc79f', '171ea9da-2dfd-11ef-a0ea-b42e997fc79f', 'Toyota Camry', 'Toyota', '222222222.00', 2023, 2222222, 'Hộp số sàn', 'Động cơ Xăng', 'Trắng', 'Quận Bắc Từ Liêm--Thành phố Hà Nội', 'xxxxxxxx', 'active', '2024-06-20 07:20:44', 'public\\images\\781507f6-5750-453c-b556-eee9e656dde1-pexels-photo-691595.webp', 'public\\images\\c623fcc2-a7ce-45c4-a00c-94a263fb3735-pexels-photo-1768826.jpg', 'public\\images\\38757771-2e61-4326-8c70-9816b2ac9b12-pexels-photo-1841120.jpg', 'public\\images\\8ffdabeb-bec1-46ad-83aa-4005cff37fcd-pexels-photo-2739286.jpg', 'public\\images\\c54cf3f7-75b6-4b89-89a7-4bea8cc09657-pexels-photo-1841120.jpg', 'public\\images\\0e61fe9e-902a-4ac2-bd94-7a2b3749e2dc-pexels-photo-2739286.jpg', 'public\\images\\86ab09ef-e172-4ca1-952b-8d88b3bb31f9-pexels-photo-2876872.jpg'),
('9c9a4a31-2ed5-11ef-bfe8-b42e997fc79f', '171ea9da-2dfd-11ef-a0ea-b42e997fc79f', 'Toyota Camry', 'Toyota', '222222222.00', 2023, 2222222, 'Hộp số sàn', 'Động cơ Xăng', 'Trắng', 'Quận Hà Đông--Thành phố Hà Nội', 'xxxxxxxx', 'active', '2024-06-20 07:20:46', 'public\\images\\233532c1-1158-479d-a778-9a226cc0385a-pexels-photo-691595.webp', 'public\\images\\c6d74d82-df1c-4266-bd09-987ac3432b97-pexels-photo-1768826.jpg', 'public\\images\\dfd0eb41-de52-47fe-a6dd-7583558398fb-pexels-photo-1841120.jpg', 'public\\images\\130eb52e-a039-4483-810e-901ae9eed24f-pexels-photo-2739286.jpg', 'public\\images\\b2a17156-5fe7-4673-bef3-17dfd77d3c7e-pexels-photo-1841120.jpg', 'public\\images\\f7ac46ce-72a5-4954-8884-c56fa780f988-pexels-photo-2739286.jpg', 'public\\images\\f9a838f4-3528-4c8c-a707-c2222e3e5d95-pexels-photo-2876872.jpg'),
('9db47344-2ed5-11ef-bfe8-b42e997fc79f', '171ea9da-2dfd-11ef-a0ea-b42e997fc79f', 'Toyota Camry', 'Toyota', '222222222.00', 2023, 2222222, 'Hộp số sàn', 'Động cơ Xăng', 'Trắng', 'Huyện Ba Vì--Thành phố Hà Nội', 'xxxxxxxx', 'active', '2024-06-20 07:20:48', 'public\\images\\0497e393-cde7-47dc-8af5-24b69c77fd8f-pexels-photo-691595.webp', 'public\\images\\c93b33a5-539a-47bd-a61e-831e4f473a85-pexels-photo-1768826.jpg', 'public\\images\\5b772826-e5a9-4766-904b-bcb13acff92a-pexels-photo-1841120.jpg', 'public\\images\\d92d7210-98b8-4afb-bf69-4f12e5b8a46c-pexels-photo-2739286.jpg', 'public\\images\\67f971d4-ea48-4814-8c3a-7bcda8e61abd-pexels-photo-1841120.jpg', 'public\\images\\3c43ef08-b02c-4ede-9bfc-a38d7fc375db-pexels-photo-2739286.jpg', 'public\\images\\d633ecdc-f07f-46e4-9d5f-e619f9d1f355-pexels-photo-2876872.jpg'),
('a027ed9c-2ed5-11ef-bfe8-b42e997fc79f', '171ea9da-2dfd-11ef-a0ea-b42e997fc79f', 'Toyota Camry', 'Toyota', '222222222.00', 2023, 2222222, 'Hộp số sàn', 'Động cơ Xăng', 'Trắng', 'Huyện Thường Tín--Thành phố Hà Nội', 'xxxxxxxx', 'active', '2024-06-20 07:20:52', 'public\\images\\9e88314f-c91a-4761-a72d-602be02c1cb1-pexels-photo-691595.webp', 'public\\images\\61b8737b-f703-4c5c-b972-73e7ceedc22d-pexels-photo-1768826.jpg', 'public\\images\\addff01a-836b-47ec-9dfc-111df1860b61-pexels-photo-1841120.jpg', 'public\\images\\1cdb207c-85f0-4ed2-b231-4fe639a6455f-pexels-photo-2739286.jpg', 'public\\images\\64c573f0-a4a8-42e3-bb8e-066f1103621d-pexels-photo-1841120.jpg', 'public\\images\\495671c1-45ee-4964-8839-98c084a3ee61-pexels-photo-2739286.jpg', 'public\\images\\a41ee8d9-2171-47fc-8dd1-b82ba82c4cec-pexels-photo-2876872.jpg'),
('a0e89245-2ed5-11ef-bfe8-b42e997fc79f', '171ea9da-2dfd-11ef-a0ea-b42e997fc79f', 'Toyota Camry', 'Toyota', '222222222.00', 2023, 2222222, 'Hộp số sàn', 'Động cơ Xăng', 'Trắng', 'Huyện Thường Tín--Thành phố Hà Nội', 'xxxxxxxx', 'active', '2024-06-20 07:20:53', 'public\\images\\62c76762-0b8e-4e1f-bd98-2096c074ff1c-pexels-photo-691595.webp', 'public\\images\\ad871de3-cb3c-44ec-9d7b-c8bcbe556b1f-pexels-photo-1768826.jpg', 'public\\images\\1728aba8-9359-4567-b18e-7316ec705406-pexels-photo-1841120.jpg', 'public\\images\\4e324336-a005-4dc9-8b6c-e7afbbdf2b77-pexels-photo-2739286.jpg', 'public\\images\\0896fe62-8ace-4a45-8ed9-03179d8c6a4d-pexels-photo-1841120.jpg', 'public\\images\\731e2aad-4c83-42a4-bbbc-76fc9f182b97-pexels-photo-2739286.jpg', 'public\\images\\6b04e35c-18b3-40cb-a5d7-821d26107b30-pexels-photo-2876872.jpg'),
('a1430f45-2ed5-11ef-bfe8-b42e997fc79f', '171ea9da-2dfd-11ef-a0ea-b42e997fc79f', 'Toyota Camry', 'Toyota', '222222222.00', 2023, 2222222, 'Hộp số sàn', 'Động cơ Xăng', 'Trắng', 'Huyện Thường Tín--Thành phố Hà Nội', 'xxxxxxxx', 'active', '2024-06-20 07:20:54', 'public\\images\\2a8751f3-ead6-416c-9203-7ce2fb496e17-pexels-photo-691595.webp', 'public\\images\\43d5c1a9-08b1-4635-8341-69bddcd26b7b-pexels-photo-1768826.jpg', 'public\\images\\a1d62a26-f839-4595-9799-507b3a2e5ff6-pexels-photo-1841120.jpg', 'public\\images\\1ccb05c1-3ce0-448b-abbc-9a30aa0c8c3b-pexels-photo-2739286.jpg', 'public\\images\\0aeec258-19b7-4549-8851-75acebb5f155-pexels-photo-1841120.jpg', 'public\\images\\e8b68e4d-49af-4b86-a4be-55fa76d8da13-pexels-photo-2739286.jpg', 'public\\images\\302cd873-d558-4e28-aede-d69f1dcacc6b-pexels-photo-2876872.jpg'),
('a17feadd-2ed5-11ef-bfe8-b42e997fc79f', '171ea9da-2dfd-11ef-a0ea-b42e997fc79f', 'Toyota Camry', 'Toyota', '222222222.00', 2023, 2222222, 'Hộp số sàn', 'Động cơ Xăng', 'Trắng', 'Huyện Thường Tín--Thành phố Hà Nội', 'xxxxxxxx', 'active', '2024-06-20 07:20:54', 'public\\images\\b023a322-eabf-49fd-abdf-7a0b8d5aedf1-pexels-photo-691595.webp', 'public\\images\\90a16345-f4d8-4a2a-8579-f46b4aece2a1-pexels-photo-1768826.jpg', 'public\\images\\92230fa7-4af1-412a-bbe5-2301c60d5fed-pexels-photo-1841120.jpg', 'public\\images\\a880fde8-61f1-4354-a824-5a6650d8244c-pexels-photo-2739286.jpg', 'public\\images\\64f3f3c5-be3c-44bc-b04b-5303f975b6dc-pexels-photo-1841120.jpg', 'public\\images\\9f8cb541-7354-468f-b090-40813f5c2233-pexels-photo-2739286.jpg', 'public\\images\\c4c27acf-4eae-4df2-a9f9-e82bccbbc7f9-pexels-photo-2876872.jpg'),
('a199adc3-2ed5-11ef-bfe8-b42e997fc79f', '171ea9da-2dfd-11ef-a0ea-b42e997fc79f', 'Toyota Camry', 'Toyota', '222222222.00', 2023, 2222222, 'Hộp số sàn', 'Động cơ Xăng', 'Trắng', 'Huyện Thường Tín--Thành phố Hà Nội', 'xxxxxxxx', 'active', '2024-06-20 07:20:54', 'public\\images\\cf8e04a6-98b6-4f0c-b0e9-b11d663140a1-pexels-photo-691595.webp', 'public\\images\\96f51410-f9ee-4969-8b32-c58e6cc4acd7-pexels-photo-1768826.jpg', 'public\\images\\2b586641-4d1d-44c7-b214-2dc1dabfa6f9-pexels-photo-1841120.jpg', 'public\\images\\d4174ea1-59a2-4178-84dd-0430a5a8a429-pexels-photo-2739286.jpg', 'public\\images\\c4e9559b-bd04-4f48-bbdc-8647c301df51-pexels-photo-1841120.jpg', 'public\\images\\8c16ac30-dccf-4a07-861a-78e0348965b3-pexels-photo-2739286.jpg', 'public\\images\\f70b0a24-9bf8-4837-a5c7-a9816a57e52b-pexels-photo-2876872.jpg'),
('a2d97bb5-2ed5-11ef-bfe8-b42e997fc79f', '171ea9da-2dfd-11ef-a0ea-b42e997fc79f', 'Toyota Camry', 'Toyota', '222222222.00', 2023, 2222222, 'Hộp số sàn', 'Động cơ Xăng', 'Trắng', 'Huyện Gia Lâm--Thành phố Hà Nội', 'xxxxxxxx', 'active', '2024-06-20 07:20:56', 'public\\images\\af5e35c9-963b-4459-bbc4-c06d9be0ac69-pexels-photo-691595.webp', 'public\\images\\ad2c6f27-268a-40a2-b840-117c8ca3264a-pexels-photo-1768826.jpg', 'public\\images\\dc9c33bc-53d2-468a-848d-ba2f6b6c04f0-pexels-photo-1841120.jpg', 'public\\images\\ce2b819a-04e8-48fc-ba8e-881eff73876b-pexels-photo-2739286.jpg', 'public\\images\\c0a36aa5-c647-4714-ad68-55f37ca10c8b-pexels-photo-1841120.jpg', 'public\\images\\8ea80a93-e77d-425f-a8f1-db7137d887b3-pexels-photo-2739286.jpg', 'public\\images\\fad7f7e2-f408-4f0c-a5e7-bc5343a482b4-pexels-photo-2876872.jpg'),
('a2f32995-2ed5-11ef-bfe8-b42e997fc79f', '171ea9da-2dfd-11ef-a0ea-b42e997fc79f', 'Toyota Camry', 'Toyota', '222222222.00', 2023, 2222222, 'Hộp số sàn', 'Động cơ Xăng', 'Trắng', 'Huyện Gia Lâm--Thành phố Hà Nội', 'xxxxxxxx', 'active', '2024-06-20 07:20:56', 'public\\images\\ba3da098-49f3-4c57-9a49-7bc3fe63a979-pexels-photo-691595.webp', 'public\\images\\e0a23f30-7dee-48e4-bd20-ab9622ff9de4-pexels-photo-1768826.jpg', 'public\\images\\46cced37-ad64-448f-8c4f-fedbb660b656-pexels-photo-1841120.jpg', 'public\\images\\b7feb066-9496-4823-b030-d054acee103c-pexels-photo-2739286.jpg', 'public\\images\\27ed46a1-20c8-4a36-a1c4-6193f6c71921-pexels-photo-1841120.jpg', 'public\\images\\87995c09-2de1-4561-a94a-8e26f16084b2-pexels-photo-2739286.jpg', 'public\\images\\cbbb650e-d406-48fc-b5b5-5bc2ea725561-pexels-photo-2876872.jpg'),
('a30a477e-2ed5-11ef-bfe8-b42e997fc79f', '171ea9da-2dfd-11ef-a0ea-b42e997fc79f', 'Toyota Camry', 'Toyota', '222222222.00', 2023, 2222222, 'Hộp số sàn', 'Động cơ Xăng', 'Trắng', 'Huyện Gia Lâm--Thành phố Hà Nội', 'xxxxxxxx', 'active', '2024-06-20 07:20:57', 'public\\images\\3a4238fc-d207-4d3a-abf3-0d4bd096f4c7-pexels-photo-691595.webp', 'public\\images\\31b0bd2c-d624-45d6-a519-0a542a33a6be-pexels-photo-1768826.jpg', 'public\\images\\e2b05ee5-d858-41d3-ae0c-7e5af9813201-pexels-photo-1841120.jpg', 'public\\images\\df18752f-05cc-4946-b613-649cf45b60b4-pexels-photo-2739286.jpg', 'public\\images\\7e44b4b8-c50e-45fa-8653-2bd75d0b52dd-pexels-photo-1841120.jpg', 'public\\images\\acf926b1-81a9-47c4-947f-07f1a80e3cd0-pexels-photo-2739286.jpg', 'public\\images\\8593e639-8abc-4dd8-8c3b-218b8bd7301c-pexels-photo-2876872.jpg'),
('abfff8e9-2ec1-11ef-bfe8-b42e997fc79f', '171ea9da-2dfd-11ef-a0ea-b42e997fc79f', 'Honda CR-V', 'Honda', '2222222222.00', 2022, 2147483647, 'Hộp số sàn', 'Động cơ Xăng', 'Trắng', 'Huyện Mỹ Đức--Thành phố Hà Nội', 'sssssssss', 'active', '2024-06-20 04:58:02', 'public\\images\\7ac1b041-b3b6-486f-9966-6190186dc8b6-pexels-photo-691595.webp', 'public\\images\\bbf06f18-3acc-4dc0-a264-fe1d7fc54f18-pexels-photo-1768826.jpg', 'public\\images\\78bfd010-c14e-4cb7-b8c4-2f13c63410f2-pexels-photo-1841120.jpg', 'public\\images\\2ba3e896-3195-4c06-a2d1-96ebdb0ee937-pexels-photo-2739286.jpg', 'public\\images\\b899cf48-6232-4076-966d-1aa1a5ce0250-pexels-photo-2876872.jpg', 'public\\images\\f1e40a5e-7390-44d5-9e98-61a6f1d175be-pexels-photo-3221159.webp', 'public\\images\\8818ebe0-0d83-45be-817c-90fb1d2dea8e-pexels-photo-3786091.webp'),
('c17aca83-2eb9-11ef-bfe8-b42e997fc79f', '171ea9da-2dfd-11ef-a0ea-b42e997fc79f', 'Ford Mustang', 'Ford', '2000000.00', 2022, 80000, 'Hộp số tự động', 'Động cơ Xăng', 'Đỏ', 'undefined--79', 'xxxxxxxxxxx', 'active', '2024-06-20 04:01:22', 'public\\images\\04bb071f-15c1-4606-a1e4-7bba02e4b1c2-pexels-photo-691595.webp', 'public\\images\\106c9fe7-aec9-420f-9ae6-0ab8a52ad200-pexels-photo-1768826.jpg', 'public\\images\\adb78979-d443-4856-b2a9-a72c1583505c-pexels-photo-1841120.jpg', 'public\\images\\8189858a-b86d-46f5-bc92-2d2bd2cf6b1f-pexels-photo-2739286.jpg', 'public\\images\\f9833036-0f55-4070-9bc3-aae211eef65a-pexels-photo-2876872.jpg', 'public\\images\\7098cdcf-4c8b-477a-8d35-36373a1394f1-pexels-photo-3221159.webp', 'public\\images\\80eea416-db84-4108-a1a5-056f6adb5db2-pexels-photo-3786091.webp'),
('c1932919-2eb9-11ef-bfe8-b42e997fc79f', '171ea9da-2dfd-11ef-a0ea-b42e997fc79f', 'Ford Mustang', 'Ford', '2000000.00', 2022, 80000, 'Hộp số tự động', 'Động cơ Xăng', 'Đỏ', 'undefined--79', 'xxxxxxxxxxx', 'active', '2024-06-20 04:01:22', 'public\\images\\a3b9990b-6387-4392-ad64-17585ca0b64c-pexels-photo-691595.webp', 'public\\images\\b19bce74-a5dd-417c-91a7-9be24c8606b2-pexels-photo-1768826.jpg', 'public\\images\\dba0209c-3541-4b23-975b-e9ecc289ff61-pexels-photo-1841120.jpg', 'public\\images\\786b3ccb-a22e-492b-9608-c4c9dc78c513-pexels-photo-2739286.jpg', 'public\\images\\b2628294-a5de-4d70-8fe7-6cbd3c70db8d-pexels-photo-2876872.jpg', 'public\\images\\8455bb68-3382-4153-a828-b9bd8480116f-pexels-photo-3221159.webp', 'public\\images\\17ee0c72-17d4-47af-a02f-c80a1cda0f87-pexels-photo-3786091.webp');

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
('0fe8dd92-2eb8-11ef-bfe8-b42e997fc79f', '2d288d34-2dff-11ef-a0ea-b42e997fc79f', '171ea9da-2dfd-11ef-a0ea-b42e997fc79f', 'XXXXXXXX', 0, '2024-06-20 10:49:14', '[{\"filename\":\"edb8d8a9-5612-4921-bb97-a464d41a2dc6-pexels-photo-691595.webp\",\"path\":\"public\\\\images\\\\imagesComments\\\\edb8d8a9-5612-4921-bb97-a464d41a2dc6-pexels-photo-691595.webp\"},{\"filename\":\"e44cdfb9-3f92-4dc0-b09a-9ff9b906cd2c-pexels-photo-1768826.jpg\",\"path\":\"public\\\\images\\\\imagesComments\\\\e44cdfb9-3f92-4dc0-b09a-9ff9b906cd2c-pexels-photo-1768826.jpg\"},{\"filename\":\"ef01897f-a48e-4386-91d5-ae37c56e344e-pexels-photo-1841120.jpg\",\"path\":\"public\\\\images\\\\imagesComments\\\\ef01897f-a48e-4386-91d5-ae37c56e344e-pexels-photo-1841120.jpg\"},{\"filename\":\"cdaecbb3-5b42-43ac-890a-93503e482c4e-pexels-photo-2739286.jpg\",\"path\":\"public\\\\images\\\\imagesComments\\\\cdaecbb3-5b42-43ac-890a-93503e482c4e-pexels-photo-2739286.jpg\"}]'),
('6b59e284-2eb8-11ef-bfe8-b42e997fc79f', '2d288d34-2dff-11ef-a0ea-b42e997fc79f', '171ea9da-2dfd-11ef-a0ea-b42e997fc79f', 'http://localhost:3000/public/images/imagesComments/e44cdfb9-3f92-4dc0-b09a-9ff9b906cd2c-pexels-photo-1768826.jpg', 0, '2024-06-20 10:51:48', '[]');

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
('1e2668cf-2eb8-11ef-bfe8-b42e997fc79f', '0fe8dd92-2eb8-11ef-bfe8-b42e997fc79f', '171ea9da-2dfd-11ef-a0ea-b42e997fc79f', 0, 'TOI CHIU THOI', '2024-06-20 10:49:38');

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
