-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 01, 2023 at 09:24 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lifetech`
--

-- --------------------------------------------------------

--
-- Table structure for table `sequelizemeta`
--

CREATE TABLE `sequelizemeta` (
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sequelizemeta`
--

INSERT INTO `sequelizemeta` (`name`) VALUES
('20230830135906-create-user.js');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `gender`, `createdAt`, `updatedAt`) VALUES
(1, 'Jasmine Dixon', 'Jasmine_Dixon8875@fuliss.net', 'Male', '2022-06-10 11:48:44', '2023-08-31 20:37:56'),
(2, 'Alexia Utterson', 'Alexia_Utterson7910@yahoo.com', 'Female', '2022-06-11 06:25:55', '2022-06-10 13:01:30'),
(3, 'Sage Cameron', 'Sage_Cameron2786@supunk.biz', 'Female', '2022-06-10 10:35:41', '2022-06-11 22:31:14'),
(4, 'Elisabeth Stewart', 'Elisabeth_Stewart9802@joiniaa.com', 'Female', '2022-06-10 17:15:19', '2022-06-11 07:38:50'),
(5, 'Thea Connor', 'Thea_Connor4097@deons.tech', 'Female', '2022-06-10 15:12:25', '2022-06-11 17:57:20'),
(6, 'Daron Thomson', 'Daron_Thomson798@liret.org', 'Male', '2022-06-11 04:10:11', '2022-06-10 19:03:20'),
(7, 'Peyton Morley', 'Peyton_Morley492@naiker.biz', 'Female', '2022-06-11 14:00:31', '2022-06-11 00:51:42'),
(8, 'Bryon Jennson', 'Bryon_Jennson6519@liret.org', 'Male', '2022-06-10 22:28:50', '2022-06-10 04:58:45'),
(9, 'Erica Mullins', 'Erica_Mullins2513@kideod.biz', 'Female', '2022-06-11 22:05:42', '2022-06-11 12:48:57'),
(10, 'Mark Bennett', 'Mark_Bennett2205@gompie.com', 'Male', '2022-06-10 19:58:31', '2022-06-11 22:10:52'),
(11, 'Peter Dobson', 'Peter_Dobson5857@elnee.tech', 'Male', '2022-06-11 11:19:36', '2022-06-11 19:52:03'),
(12, 'Shannon Bayliss', 'Shannon_Bayliss6804@twipet.com', 'Female', '2022-06-11 04:38:52', '2022-06-11 19:36:57'),
(13, 'Ron Snell', 'Ron_Snell4951@qater.org', 'Male', '2022-06-10 14:45:21', '2022-06-10 01:10:47'),
(14, 'Ruth Lewin', 'Ruth_Lewin7024@eirey.tech', 'Female', '2022-06-11 11:49:54', '2022-06-11 22:14:33'),
(15, 'Alison Strong', 'Alison_Strong5744@sveldo.biz', 'Female', '2022-06-11 14:57:04', '2022-06-10 21:49:36'),
(16, 'Aisha Fox', 'Aisha_Fox1990@yahoo.com', 'Female', '2022-06-10 01:13:55', '2022-06-11 12:21:01'),
(17, 'Julian Mitchell', 'Julian_Mitchell8709@nimogy.biz', 'Male', '2022-06-11 16:25:31', '2022-06-11 08:49:19'),
(18, 'Maribel Cork', 'Maribel_Cork3064@eirey.tech', 'Female', '2022-06-11 11:20:28', '2022-06-11 09:21:43'),
(19, 'Kieth Horton', 'Kieth_Horton5726@kideod.biz', 'Male', '2022-06-11 05:14:08', '2022-06-10 04:48:58'),
(20, 'Zoe Farrant', 'Zoe_Farrant6685@extex.org', 'Female', '2022-06-10 14:15:17', '2022-06-10 09:15:18'),
(21, 'Callie Santos', 'Callie_Santos2950@bretoux.com', 'Female', '2022-06-11 10:33:23', '2022-06-11 20:29:20'),
(22, 'Luna Wren', 'Luna_Wren680@atink.com', 'Female', '2022-06-11 07:14:16', '2022-06-10 10:14:10'),
(23, 'Marla Hale', 'Marla_Hale560@nickia.com', 'Female', '2022-06-11 20:13:56', '2022-06-11 17:05:26'),
(24, 'Felicity Moran', 'Felicity_Moran897@supunk.biz', 'Female', '2022-06-10 16:14:13', '2022-06-10 11:40:02'),
(25, 'Owen Underhill', 'Owen_Underhill8264@typill.biz', 'Male', '2022-06-11 20:07:50', '2022-06-10 22:27:25'),
(26, 'Aeris Larsen', 'Aeris_Larsen3878@nickia.com', 'Female', '2022-06-11 09:30:18', '2022-06-10 02:51:00'),
(27, 'William Samuel', 'William_Samuel1886@hourpy.biz', 'Male', '2022-06-11 13:03:02', '2022-06-11 08:43:32'),
(28, 'Bethany Cavanagh', 'Bethany_Cavanagh4058@nickia.com', 'Female', '2022-06-10 03:02:50', '2022-06-11 11:10:41'),
(29, 'Ryan Selby', 'Ryan_Selby6964@hourpy.biz', 'Male', '2022-06-10 01:02:02', '2022-06-10 14:36:43'),
(30, 'Marvin Kaur', 'Marvin_Kaur2984@elnee.tech', 'Male', '2022-06-11 13:27:40', '2022-06-10 00:36:16'),
(31, 'Cassandra Richards', 'Cassandra_Richards3209@nickia.com', 'Female', '2022-06-10 11:18:15', '2022-06-11 01:03:37'),
(32, 'Sienna Page ', 'Sienna_Page 430@eirey.tech', 'Female', '2022-06-10 20:24:29', '2022-06-10 19:00:30'),
(33, 'Alison Torres', 'Alison_Torres8290@dionrab.com', 'Female', '2022-06-10 01:39:48', '2022-06-11 11:16:33'),
(34, 'Doris Stone', 'Doris_Stone3769@jiman.org', 'Female', '2022-06-11 14:25:23', '2022-06-11 21:11:06'),
(35, 'Liam Graves', 'Liam_Graves8085@deons.tech', 'Male', '2022-06-10 05:00:42', '2022-06-11 19:32:47'),
(36, 'Jack Nicolas', 'Jack_Nicolas7238@supunk.biz', 'Male', '2022-06-10 05:44:41', '2022-06-11 22:46:27'),
(37, 'Jane Milner', 'Jane_Milner1235@fuliss.net', 'Female', '2022-06-11 18:34:09', '2022-06-10 07:11:34'),
(38, 'Bart York', 'Bart_York4147@cispeto.com', 'Male', '2022-06-11 22:19:02', '2022-06-11 15:03:17'),
(39, 'Caleb Everett', 'Caleb_Everett1233@atink.com', 'Male', '2022-06-11 03:38:50', '2022-06-11 12:16:21'),
(40, 'Bethany Smith', 'Bethany_Smith575@ubusive.com', 'Female', '2022-06-10 16:17:10', '2022-06-10 20:56:37'),
(41, 'Agnes Radley', 'Agnes_Radley3572@bungar.biz', 'Female', '2022-06-11 01:55:17', '2022-06-10 06:56:01'),
(42, 'Diane Bailey', 'Diane_Bailey9435@iatim.tech', 'Female', '2022-06-10 09:44:29', '2022-06-10 13:12:24'),
(43, 'Tyler Atkinson', 'Tyler_Atkinson2792@bungar.biz', 'Male', '2022-06-11 14:17:28', '2022-06-11 00:40:45'),
(44, 'Wendy Lane', 'Wendy_Lane328@cispeto.com', 'Female', '2022-06-10 17:34:30', '2022-06-10 18:28:07'),
(45, 'Regina London', 'Regina_London3486@yahoo.com', 'Female', '2022-06-11 20:38:53', '2022-06-10 22:24:45'),
(46, 'David Hope', 'David_Hope5971@kideod.biz', 'Male', '2022-06-10 17:37:17', '2022-06-10 03:05:28'),
(47, 'Elena Watson', 'Elena_Watson1097@cispeto.com', 'Female', '2022-06-10 05:26:16', '2022-06-10 10:55:05'),
(48, 'Ramon Adler', 'Ramon_Adler5292@iatim.tech', 'Male', '2022-06-10 11:12:37', '2022-06-10 02:40:30'),
(49, 'Matthew Hale', 'Matthew_Hale8600@atink.com', 'Male', '2022-06-10 11:50:15', '2022-06-10 21:24:01'),
(50, 'Andie Saunders', 'Andie_Saunders211@kideod.biz', 'Female', '2022-06-10 14:37:32', '2022-06-11 12:58:57'),
(51, 'Phoebe Davies', 'Phoebe_Davies4004@naiker.biz', 'Female', '2022-06-11 16:00:09', '2022-06-10 13:38:49'),
(52, 'Domenic Lindsay', 'Domenic_Lindsay6935@atink.com', 'Male', '2022-06-11 03:03:20', '2022-06-11 07:06:45'),
(53, 'Julian Turner', 'Julian_Turner6185@gmail.com', 'Male', '2022-06-11 10:30:04', '2022-06-10 13:11:56'),
(54, 'Luke Dixon', 'Luke_Dixon8700@nimogy.biz', 'Male', '2022-06-11 05:29:49', '2022-06-10 12:08:45'),
(55, 'Lucas Kennedy', 'Lucas_Kennedy4611@brety.org', 'Male', '2022-06-11 06:48:38', '2022-06-10 04:15:40'),
(56, 'Ramon Pearce', 'Ramon_Pearce5663@jiman.org', 'Male', '2022-06-10 14:35:46', '2022-06-11 12:14:51'),
(57, 'Aiden Boden', 'Aiden_Boden8522@bretoux.com', 'Male', '2022-06-10 02:19:40', '2022-06-11 03:21:43'),
(58, 'Roger Burnley', 'Roger_Burnley4916@bretoux.com', 'Male', '2022-06-10 11:16:49', '2022-06-10 06:36:41'),
(59, 'Tom Locke', 'Tom_Locke1851@typill.biz', 'Male', '2022-06-10 07:25:20', '2022-06-11 10:34:45'),
(60, 'Candace Vernon', 'Candace_Vernon1196@womeona.net', 'Female', '2022-06-10 11:06:08', '2022-06-10 09:30:42'),
(61, 'Domenic Higgs', 'Domenic_Higgs543@nanoff.biz', 'Male', '2022-06-10 08:50:39', '2022-06-10 14:40:14'),
(62, 'Dalia Baker', 'Dalia_Baker8401@eirey.tech', 'Female', '2022-06-11 09:06:08', '2022-06-11 05:38:17'),
(63, 'Ron Jarrett', 'Ron_Jarrett3915@gembat.biz', 'Male', '2022-06-10 01:44:49', '2022-06-10 04:27:15'),
(64, 'Bart Larkin', 'Bart_Larkin8849@brety.org', 'Male', '2022-06-11 18:32:23', '2022-06-10 21:51:46'),
(65, 'Julianna Richardson', 'Julianna_Richardson9563@bauros.biz', 'Female', '2022-06-11 04:42:56', '2022-06-10 07:07:35'),
(66, 'Enoch Garner', 'Enoch_Garner563@sveldo.biz', 'Male', '2022-06-10 01:21:50', '2022-06-11 19:25:02'),
(67, 'George Willson', 'George_Willson2682@irrepsy.com', 'Male', '2022-06-11 06:30:19', '2022-06-10 10:41:48'),
(68, 'Harvey Hopkinson', 'Harvey_Hopkinson3789@nimogy.biz', 'Male', '2022-06-10 17:49:05', '2022-06-11 06:22:11'),
(69, 'Alice Dillon', 'Alice_Dillon8996@gompie.com', 'Female', '2022-06-10 03:42:09', '2022-06-11 18:49:17'),
(70, 'Peyton Varley', 'Peyton_Varley6489@zorer.org', 'Female', '2022-06-11 12:23:07', '2022-06-10 04:49:21'),
(71, 'Rachael Brown', 'Rachael_Brown1826@ovock.tech', 'Female', '2022-06-10 01:51:32', '2022-06-11 04:44:09'),
(72, 'Adela Young', 'Adela_Young8886@elnee.tech', 'Female', '2022-06-11 14:29:10', '2022-06-10 18:26:32'),
(73, 'Noemi Selby', 'Noemi_Selby3790@nickia.com', 'Female', '2022-06-10 13:42:41', '2022-06-11 05:05:11'),
(74, 'Regina Davies', 'Regina_Davies6793@hourpy.biz', 'Female', '2022-06-10 02:36:16', '2022-06-11 21:50:06'),
(75, 'Katelyn Stone', 'Katelyn_Stone1651@twace.org', 'Female', '2022-06-10 12:48:30', '2022-06-11 01:42:30'),
(76, 'Harriet Hamilton', 'Harriet_Hamilton1635@typill.biz', 'Female', '2022-06-10 10:25:42', '2022-06-11 19:06:55'),
(77, 'Rosalyn Uttridge', 'Rosalyn_Uttridge7453@qater.org', 'Female', '2022-06-11 10:54:39', '2022-06-10 10:10:48'),
(78, 'Analise Truscott', 'Analise_Truscott7770@zorer.org', 'Female', '2022-06-11 18:13:35', '2022-06-10 12:50:10'),
(79, 'Robyn Jennson', 'Robyn_Jennson2584@womeona.net', 'Female', '2022-06-11 08:53:45', '2022-06-10 08:32:07'),
(80, 'Jacob Upton', 'Jacob_Upton3544@twace.org', 'Male', '2022-06-10 04:33:10', '2022-06-11 04:23:53'),
(81, 'Matt Welsch', 'Matt_Welsch3215@corti.com', 'Male', '2022-06-11 20:27:51', '2022-06-11 02:00:51'),
(82, 'Eryn Andrews', 'Eryn_Andrews4930@gmail.com', 'Female', '2022-06-11 19:33:45', '2022-06-10 09:56:38'),
(83, 'Andie Dunbar', 'Andie_Dunbar3608@nickia.com', 'Female', '2022-06-10 20:08:52', '2022-06-11 18:32:00'),
(84, 'Kenzie Poole', 'Kenzie_Poole330@elnee.tech', 'Female', '2022-06-11 04:35:29', '2022-06-11 22:57:23'),
(85, 'Hayden Morris', 'Hayden_Morris535@typill.biz', 'Male', '2022-06-10 09:36:33', '2022-06-10 01:45:25'),
(86, 'Cynthia Evans', 'Cynthia_Evans5851@qater.org', 'Female', '2022-06-11 09:19:21', '2022-06-10 14:45:16'),
(87, 'Lily Pearson', 'Lily_Pearson6861@ovock.tech', 'Female', '2022-06-10 06:56:49', '2022-06-11 14:36:29'),
(88, 'Maria Hancock', 'Maria_Hancock3467@mafthy.com', 'Female', '2022-06-11 21:53:12', '2022-06-10 01:27:01'),
(89, 'Ruth Richardson', 'Ruth_Richardson1946@nanoff.biz', 'Female', '2022-06-11 19:00:43', '2022-06-10 01:58:55'),
(90, 'Joseph Neal', 'Joseph_Neal2421@twipet.com', 'Male', '2022-06-11 10:44:38', '2022-06-10 07:19:29'),
(91, 'Penny Cameron', 'Penny_Cameron8894@eirey.tech', 'Female', '2022-06-11 08:46:46', '2022-06-10 11:29:40'),
(92, 'Jane Jennson', 'Jane_Jennson5349@irrepsy.com', 'Female', '2022-06-10 03:35:52', '2022-06-11 00:08:04'),
(93, 'Domenic Redwood', 'Domenic_Redwood8570@naiker.biz', 'Male', '2022-06-11 15:11:14', '2022-06-11 13:11:20'),
(94, 'Rocco Wise', 'Rocco_Wise7940@bungar.biz', 'Male', '2022-06-11 20:26:29', '2022-06-11 07:18:41'),
(95, 'Evelynn Lyon', 'Evelynn_Lyon2206@jiman.org', 'Female', '2022-06-11 08:36:34', '2022-06-11 00:40:12'),
(96, 'Doug Wallace', 'Doug_Wallace9049@hourpy.biz', 'Male', '2022-06-10 18:05:56', '2022-06-10 21:29:55'),
(97, 'Evelynn Taylor', 'Evelynn_Taylor4751@nanoff.biz', 'Female', '2022-06-11 12:06:33', '2022-06-10 11:46:33');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `sequelizemeta`
--
ALTER TABLE `sequelizemeta`
  ADD PRIMARY KEY (`name`),
  ADD UNIQUE KEY `name` (`name`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
