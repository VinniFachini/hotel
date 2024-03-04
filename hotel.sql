-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 03, 2024 at 03:48 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotel`
--

-- --------------------------------------------------------

--
-- Table structure for table `academia`
--

CREATE TABLE `academia` (
  `id` int(11) NOT NULL,
  `servico` varchar(100) DEFAULT NULL,
  `preco` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_nopad_ci;

--
-- Dumping data for table `academia`
--

INSERT INTO `academia` (`id`, `servico`, `preco`) VALUES
(1, 'Treinamento personalizado', 120.00),
(2, 'Aula de spinning', 80.00),
(3, 'Aula de yoga', 75.00),
(4, 'Aula de zumba', 70.00),
(5, 'Aula de natação', 90.00),
(6, 'Treinamento de força', 100.00),
(7, 'Treinamento de resistência', 95.00),
(8, 'Treinamento de cardio', 85.00),
(9, 'Acompanhamento de progresso e metas', 110.00),
(10, 'Aconselhamento dietético', 130.00),
(11, 'Aula de dança', 70.00),
(12, 'Treinamento funcional', 110.00);

-- --------------------------------------------------------

--
-- Table structure for table `bar`
--

CREATE TABLE `bar` (
  `id` int(11) NOT NULL,
  `bebida` varchar(100) DEFAULT NULL,
  `preco` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_nopad_ci;

--
-- Dumping data for table `bar`
--

INSERT INTO `bar` (`id`, `bebida`, `preco`) VALUES
(1, 'Caipirinha', 20.00),
(2, 'Mojito', 22.00),
(3, 'Margarita', 21.00),
(4, 'Martini', 18.00),
(5, 'Daiquiri', 22.00),
(6, 'Piña Colada', 21.50),
(7, 'Negroni', 24.00),
(8, 'Mimosa', 18.50),
(9, 'Cosmopolitan', 20.00),
(10, 'Whisky Sour', 21.00),
(11, 'Sangria', 18.00),
(12, 'Tequila Sunrise', 20.50),
(13, 'Old Fashioned', 23.00),
(14, 'Moscow Mule', 22.00),
(15, 'Mai Tai', 24.00),
(16, 'Manhattan', 23.00),
(17, 'Bloody Mary', 19.00),
(18, 'Gin Tonic', 20.00),
(19, 'Irish Coffee', 22.50),
(20, 'Blue Lagoon', 23.00),
(21, 'Sex on the Beach', 21.50),
(22, 'Long Island Iced Tea', 25.00),
(23, 'White Russian', 22.50),
(24, 'Mint Julep', 23.00),
(25, 'Mai Tai', 24.00),
(26, 'Caipiroska', 22.00),
(27, 'Bellini', 20.00),
(28, 'Cuba Libre', 19.50),
(29, 'Tom Collins', 22.00),
(30, 'Sidecar', 23.00),
(31, 'French 75', 24.00),
(32, 'Whiskey Smash', 22.50),
(33, 'Gin Fizz', 21.50),
(34, 'Singapore Sling', 24.50),
(35, 'Black Russian', 20.50),
(36, 'Dark \'n\' Stormy', 22.00),
(37, 'Aperol Spritz', 20.00),
(38, 'Paloma', 19.00),
(39, 'Pisco Sour', 23.00),
(40, 'Pink Gin', 22.50),
(41, 'Irish Cream Coffee', 25.00),
(42, 'White Lady', 21.50),
(43, 'Zombie', 23.00),
(44, 'Espresso Martini', 22.00),
(45, 'Bramble', 20.50),
(46, 'Corpse Reviver', 23.50),
(47, 'French Martini', 21.00),
(48, 'Godfather', 22.50),
(49, 'Black Pearl Martini', 28.00),
(50, 'Diamond Fizz', 26.00),
(51, 'Gold Rush', 30.00),
(52, 'Platinum Margarita', 32.00),
(53, 'Silver Bellini', 27.00),
(54, 'Ruby Sling', 29.00),
(55, 'Emerald Martini', 31.00),
(56, 'Sapphire Smash', 28.50),
(57, 'Amethyst Martini', 29.50),
(58, 'Topaz Tonic', 27.50),
(59, 'Opal Negroni', 30.50),
(60, 'Turquoise Tequila', 33.00),
(61, 'Garnet Gimlet', 26.50),
(62, 'Peridot Punch', 31.50),
(63, 'Citrine Collins', 29.50),
(64, 'Aquamarine Aviation', 32.50),
(65, 'Quartz Quencher', 34.00),
(66, 'Obsidian Old Fashioned', 35.00),
(67, 'Moonstone Mule', 31.00),
(68, 'Pearl Pisco', 33.50),
(69, 'Sunstone Sour', 32.00),
(70, 'Jade Julep', 30.00),
(71, 'Tiger Eye Tonic', 29.00),
(72, 'Onyx Martini', 36.00),
(73, 'Agate Amaretto', 34.50),
(74, 'Garnet Gimlet', 28.00),
(75, 'Peridot Punch', 32.50),
(76, 'Citrine Collins', 30.00),
(77, 'Aquamarine Aviation', 33.50),
(78, 'Quartz Quencher', 35.00),
(79, 'Obsidian Old Fashioned', 37.00),
(80, 'Moonstone Mule', 32.50),
(81, 'Pearl Pisco', 34.50),
(82, 'Sunstone Sour', 33.00),
(83, 'Jade Julep', 31.00),
(84, 'Tiger Eye Tonic', 30.00),
(85, 'Onyx Martini', 38.00),
(86, 'Agate Amaretto', 36.50),
(87, 'Rose Quartz Rum', 35.00),
(88, 'Sapphire Screwdriver', 31.50),
(89, 'Emerald Eggnog', 34.00),
(90, 'Ruby Rum Punch', 32.00),
(91, 'Amethyst Ale', 33.50),
(92, 'Topaz Toddy', 36.00),
(93, 'Opal Ouzo', 30.50),
(94, 'Turquoise Tequila Sunrise', 37.50),
(95, 'Diamond Daiquiri', 35.00),
(96, 'Black Pearl Bourbon', 39.00),
(97, 'Gold Garnet Gin', 34.50),
(98, 'Platinum Plum Vodka', 36.50),
(99, 'Silver Sapphire Sazerac', 33.00),
(100, 'Coca-Cola', 5.00),
(101, 'Pepsi', 5.00),
(102, 'Sprite', 5.00),
(103, 'Fanta Laranja', 5.00),
(104, 'Guaraná Antarctica', 5.00),
(105, 'Schweppes Citrus', 5.00),
(106, 'Água Tônica Schweppes', 5.00),
(107, 'Schweppes Citrus Zero', 5.00),
(108, 'Fanta Uva', 5.00),
(109, 'Kuat', 5.00);

-- --------------------------------------------------------

--
-- Table structure for table `fatura`
--

CREATE TABLE `fatura` (
  `id` int(11) NOT NULL,
  `data` date DEFAULT NULL,
  `valor_total` decimal(10,2) DEFAULT NULL,
  `estado` enum('Em Aberto','Pago','Pendente') DEFAULT NULL,
  `reserva_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_nopad_ci;

--
-- Dumping data for table `fatura`
--

INSERT INTO `fatura` (`id`, `data`, `valor_total`, `estado`, `reserva_id`) VALUES
(1, '2024-03-02', 490.00, 'Em Aberto', 1);

-- --------------------------------------------------------

--
-- Table structure for table `folga`
--

CREATE TABLE `folga` (
  `id` int(11) NOT NULL,
  `data` date DEFAULT NULL,
  `motivo` varchar(255) DEFAULT NULL,
  `funcionario_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_nopad_ci;

-- --------------------------------------------------------

--
-- Table structure for table `folha_pagamento`
--

CREATE TABLE `folha_pagamento` (
  `id` int(11) NOT NULL,
  `mes_ano` varchar(10) DEFAULT NULL,
  `valor_total` decimal(10,2) DEFAULT NULL,
  `funcionario_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_nopad_ci;

--
-- Dumping data for table `folha_pagamento`
--

INSERT INTO `folha_pagamento` (`id`, `mes_ano`, `valor_total`, `funcionario_id`) VALUES
(1, '2024-02', 6317.54, 1),
(2, '2024-02', 6272.04, 2),
(3, '2024-02', 6283.48, 3),
(4, '2024-02', 4903.17, 4),
(5, '2024-02', 4939.57, 5),
(6, '2024-02', 4907.28, 6),
(7, '2024-02', 3002.40, 7),
(8, '2024-02', 3035.73, 8),
(9, '2024-02', 3033.20, 9),
(10, '2024-02', 2901.34, 10),
(11, '2024-02', 2920.59, 11),
(12, '2024-02', 2929.63, 12),
(13, '2024-02', 3996.83, 13),
(14, '2024-02', 3954.83, 14),
(15, '2024-02', 3961.65, 15),
(16, '2024-02', 2631.65, 16),
(17, '2024-02', 2628.73, 17),
(18, '2024-02', 2624.53, 18),
(19, '2024-02', 2270.40, 19),
(20, '2024-02', 2255.50, 20),
(21, '2024-02', 2264.90, 21),
(22, '2024-02', 1308.53, 22),
(23, '2024-02', 1328.37, 23),
(24, '2024-02', 1319.50, 24),
(25, '2024-02', 2844.13, 25),
(26, '2024-02', 2856.88, 26),
(27, '2024-02', 2849.25, 27),
(28, '2024-02', 2266.30, 28),
(29, '2024-02', 2275.50, 29),
(30, '2024-02', 2248.10, 30),
(31, '2024-02', 3415.35, 31),
(32, '2024-02', 3381.60, 32),
(33, '2024-02', 3418.35, 33);

-- --------------------------------------------------------

--
-- Table structure for table `frigobar`
--

CREATE TABLE `frigobar` (
  `id` int(11) NOT NULL,
  `quarto_id` int(11) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `quantidade` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `frigobar`
--

INSERT INTO `frigobar` (`id`, `quarto_id`, `item_id`, `quantidade`) VALUES
(1, 1, 1, 5),
(2, 1, 2, 3),
(3, 1, 3, 2),
(4, 1, 4, 4),
(5, 1, 5, 2),
(6, 1, 6, 1),
(7, 1, 7, 3),
(8, 1, 8, 2),
(9, 1, 9, 1),
(10, 1, 10, 4),
(11, 2, 1, 4),
(12, 2, 2, 2),
(13, 2, 3, 3),
(14, 2, 4, 3),
(15, 2, 5, 1),
(16, 2, 6, 2),
(17, 2, 7, 4),
(18, 2, 8, 3),
(19, 2, 9, 2),
(20, 2, 10, 1),
(21, 3, 1, 3),
(22, 3, 2, 4),
(23, 3, 3, 1),
(24, 3, 4, 2),
(25, 3, 5, 3),
(26, 3, 6, 1),
(27, 3, 7, 2),
(28, 3, 8, 4),
(29, 3, 9, 3),
(30, 3, 10, 2),
(31, 4, 1, 2),
(32, 4, 2, 3),
(33, 4, 3, 4),
(34, 4, 4, 1),
(35, 4, 5, 2),
(36, 4, 6, 3),
(37, 4, 7, 1),
(38, 4, 8, 4),
(39, 4, 9, 3),
(40, 4, 10, 2),
(41, 5, 1, 5),
(42, 5, 2, 4),
(43, 5, 3, 3),
(44, 5, 4, 2),
(45, 5, 5, 1),
(46, 5, 6, 2),
(47, 5, 7, 3),
(48, 5, 8, 4),
(49, 5, 9, 1),
(50, 5, 10, 2),
(51, 6, 1, 3),
(52, 6, 2, 2),
(53, 6, 3, 1),
(54, 6, 4, 4),
(55, 6, 5, 3),
(56, 6, 6, 2),
(57, 6, 7, 1),
(58, 6, 8, 4),
(59, 6, 9, 3),
(60, 6, 10, 2),
(61, 7, 1, 4),
(62, 7, 2, 3),
(63, 7, 3, 2),
(64, 7, 4, 1),
(65, 7, 5, 4),
(66, 7, 6, 3),
(67, 7, 7, 2),
(68, 7, 8, 1),
(69, 7, 9, 4),
(70, 7, 10, 3),
(71, 8, 1, 3),
(72, 8, 2, 4),
(73, 8, 3, 3),
(74, 8, 4, 2),
(75, 8, 5, 1),
(76, 8, 6, 4),
(77, 8, 7, 3),
(78, 8, 8, 2),
(79, 8, 9, 1),
(80, 8, 10, 4),
(81, 9, 1, 2),
(82, 9, 2, 3),
(83, 9, 3, 4),
(84, 9, 4, 1),
(85, 9, 5, 2),
(86, 9, 6, 3),
(87, 9, 7, 4),
(88, 9, 8, 1),
(89, 9, 9, 2),
(90, 9, 10, 3),
(91, 10, 1, 5),
(92, 10, 2, 4),
(93, 10, 3, 3),
(94, 10, 4, 2),
(95, 10, 5, 1),
(96, 10, 6, 2),
(97, 10, 7, 3),
(98, 10, 8, 4),
(99, 10, 9, 1),
(100, 10, 10, 2),
(101, 11, 1, 5),
(102, 11, 2, 3),
(103, 11, 3, 2),
(104, 11, 4, 4),
(105, 11, 5, 2),
(106, 11, 6, 1),
(107, 11, 7, 3),
(108, 11, 8, 2),
(109, 11, 9, 1),
(110, 11, 10, 4),
(111, 12, 1, 4),
(112, 12, 2, 2),
(113, 12, 3, 3),
(114, 12, 4, 3),
(115, 12, 5, 1),
(116, 12, 6, 2),
(117, 12, 7, 4),
(118, 12, 8, 3),
(119, 12, 9, 2),
(120, 12, 10, 1),
(121, 13, 1, 3),
(122, 13, 2, 4),
(123, 13, 3, 1),
(124, 13, 4, 2),
(125, 13, 5, 3),
(126, 13, 6, 1),
(127, 13, 7, 2),
(128, 13, 8, 4),
(129, 13, 9, 3),
(130, 13, 10, 2),
(131, 14, 1, 2),
(132, 14, 2, 3),
(133, 14, 3, 4),
(134, 14, 4, 1),
(135, 14, 5, 2),
(136, 14, 6, 3),
(137, 14, 7, 1),
(138, 14, 8, 4),
(139, 14, 9, 3),
(140, 14, 10, 2),
(141, 15, 1, 5),
(142, 15, 2, 4),
(143, 15, 3, 3),
(144, 15, 4, 2),
(145, 15, 5, 1),
(146, 15, 6, 2),
(147, 15, 7, 3),
(148, 15, 8, 4),
(149, 15, 9, 1),
(150, 15, 10, 2),
(151, 16, 1, 3),
(152, 16, 2, 2),
(153, 16, 3, 1),
(154, 16, 4, 4),
(155, 16, 5, 3),
(156, 16, 6, 2),
(157, 16, 7, 1),
(158, 16, 8, 4),
(159, 16, 9, 3),
(160, 16, 10, 2),
(161, 17, 1, 4),
(162, 17, 2, 3),
(163, 17, 3, 2),
(164, 17, 4, 1),
(165, 17, 5, 4),
(166, 17, 6, 3),
(167, 17, 7, 2),
(168, 17, 8, 1),
(169, 17, 9, 4),
(170, 17, 10, 3),
(171, 18, 1, 3),
(172, 18, 2, 4),
(173, 18, 3, 3),
(174, 18, 4, 2),
(175, 18, 5, 1),
(176, 18, 6, 4),
(177, 18, 7, 3),
(178, 18, 8, 2),
(179, 18, 9, 1),
(180, 18, 10, 4),
(181, 19, 1, 2),
(182, 19, 2, 3),
(183, 19, 3, 4),
(184, 19, 4, 1),
(185, 19, 5, 2),
(186, 19, 6, 3),
(187, 19, 7, 4),
(188, 19, 8, 1),
(189, 19, 9, 2),
(190, 19, 10, 3),
(191, 20, 1, 5),
(192, 20, 2, 4),
(193, 20, 3, 3),
(194, 20, 4, 2),
(195, 20, 5, 1),
(196, 20, 6, 2),
(197, 20, 7, 3),
(198, 20, 8, 4),
(199, 20, 9, 1),
(200, 20, 10, 2),
(201, 21, 1, 5),
(202, 21, 2, 3),
(203, 21, 3, 2),
(204, 21, 4, 4),
(205, 21, 5, 2),
(206, 21, 6, 1),
(207, 21, 7, 3),
(208, 21, 8, 2),
(209, 21, 9, 1),
(210, 21, 10, 4),
(211, 22, 1, 4),
(212, 22, 2, 2),
(213, 22, 3, 3),
(214, 22, 4, 3),
(215, 22, 5, 1),
(216, 22, 6, 2),
(217, 22, 7, 4),
(218, 22, 8, 3),
(219, 22, 9, 2),
(220, 22, 10, 1),
(221, 23, 1, 3),
(222, 23, 2, 4),
(223, 23, 3, 1),
(224, 23, 4, 2),
(225, 23, 5, 3),
(226, 23, 6, 1),
(227, 23, 7, 2),
(228, 23, 8, 4),
(229, 23, 9, 3),
(230, 23, 10, 2),
(231, 24, 1, 2),
(232, 24, 2, 3),
(233, 24, 3, 4),
(234, 24, 4, 1),
(235, 24, 5, 2),
(236, 24, 6, 3),
(237, 24, 7, 1),
(238, 24, 8, 4),
(239, 24, 9, 3),
(240, 24, 10, 2),
(241, 25, 1, 5),
(242, 25, 2, 4),
(243, 25, 3, 3),
(244, 25, 4, 2),
(245, 25, 5, 1),
(246, 25, 6, 2),
(247, 25, 7, 3),
(248, 25, 8, 4),
(249, 25, 9, 1),
(250, 25, 10, 2),
(251, 26, 1, 3),
(252, 26, 2, 2),
(253, 26, 3, 1),
(254, 26, 4, 4),
(255, 26, 5, 3),
(256, 26, 6, 2),
(257, 26, 7, 1),
(258, 26, 8, 4),
(259, 26, 9, 3),
(260, 26, 10, 2),
(261, 27, 1, 4),
(262, 27, 2, 3),
(263, 27, 3, 2),
(264, 27, 4, 1),
(265, 27, 5, 4),
(266, 27, 6, 3),
(267, 27, 7, 2),
(268, 27, 8, 1),
(269, 27, 9, 4),
(270, 27, 10, 3),
(271, 28, 1, 3),
(272, 28, 2, 4),
(273, 28, 3, 3),
(274, 28, 4, 2),
(275, 28, 5, 1),
(276, 28, 6, 4),
(277, 28, 7, 3),
(278, 28, 8, 2),
(279, 28, 9, 1),
(280, 28, 10, 4),
(281, 29, 1, 2),
(282, 29, 2, 3),
(283, 29, 3, 4),
(284, 29, 4, 1),
(285, 29, 5, 2),
(286, 29, 6, 3),
(287, 29, 7, 4),
(288, 29, 8, 1),
(289, 29, 9, 2),
(290, 29, 10, 3),
(291, 30, 1, 5),
(292, 30, 2, 4),
(293, 30, 3, 3),
(294, 30, 4, 2),
(295, 30, 5, 1),
(296, 30, 6, 2),
(297, 30, 7, 3),
(298, 30, 8, 4),
(299, 30, 9, 1),
(300, 30, 10, 2),
(301, 31, 1, 5),
(302, 31, 2, 3),
(303, 31, 3, 2),
(304, 31, 4, 4),
(305, 31, 5, 2),
(306, 31, 6, 1),
(307, 31, 7, 3),
(308, 31, 8, 2),
(309, 31, 9, 1),
(310, 31, 10, 4),
(311, 32, 1, 4),
(312, 32, 2, 2),
(313, 32, 3, 3),
(314, 32, 4, 3),
(315, 32, 5, 1),
(316, 32, 6, 2),
(317, 32, 7, 4),
(318, 32, 8, 3),
(319, 32, 9, 2),
(320, 32, 10, 1),
(321, 33, 1, 3),
(322, 33, 2, 4),
(323, 33, 3, 1),
(324, 33, 4, 2),
(325, 33, 5, 3),
(326, 33, 6, 1),
(327, 33, 7, 2),
(328, 33, 8, 4),
(329, 33, 9, 3),
(330, 33, 10, 2),
(331, 34, 1, 2),
(332, 34, 2, 3),
(333, 34, 3, 4),
(334, 34, 4, 1),
(335, 34, 5, 2),
(336, 34, 6, 3),
(337, 34, 7, 1),
(338, 34, 8, 4),
(339, 34, 9, 3),
(340, 34, 10, 2),
(341, 35, 1, 5),
(342, 35, 2, 4),
(343, 35, 3, 3),
(344, 35, 4, 2),
(345, 35, 5, 1),
(346, 35, 6, 2),
(347, 35, 7, 3),
(348, 35, 8, 4),
(349, 35, 9, 1),
(350, 35, 10, 2),
(351, 36, 1, 3),
(352, 36, 2, 2),
(353, 36, 3, 1),
(354, 36, 4, 4),
(355, 36, 5, 3),
(356, 36, 6, 2),
(357, 36, 7, 1),
(358, 36, 8, 4),
(359, 36, 9, 3),
(360, 36, 10, 2),
(361, 37, 1, 4),
(362, 37, 2, 3),
(363, 37, 3, 2),
(364, 37, 4, 1),
(365, 37, 5, 4),
(366, 37, 6, 3),
(367, 37, 7, 2),
(368, 37, 8, 1),
(369, 37, 9, 4),
(370, 37, 10, 3),
(371, 38, 1, 3),
(372, 38, 2, 4),
(373, 38, 3, 3),
(374, 38, 4, 2),
(375, 38, 5, 1),
(376, 38, 6, 4),
(377, 38, 7, 3),
(378, 38, 8, 2),
(379, 38, 9, 1),
(380, 38, 10, 4),
(381, 39, 1, 2),
(382, 39, 2, 3),
(383, 39, 3, 4),
(384, 39, 4, 1),
(385, 39, 5, 2),
(386, 39, 6, 3),
(387, 39, 7, 4),
(388, 39, 8, 1),
(389, 39, 9, 2),
(390, 39, 10, 3),
(391, 40, 1, 5),
(392, 40, 2, 4),
(393, 40, 3, 3),
(394, 40, 4, 2),
(395, 40, 5, 1),
(396, 40, 6, 2),
(397, 40, 7, 3),
(398, 40, 8, 4),
(399, 40, 9, 1),
(400, 40, 10, 2);

-- --------------------------------------------------------

--
-- Table structure for table `frigobar_items`
--

CREATE TABLE `frigobar_items` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `tipo` enum('Bebida','Bebida Alcoólica','Doce','Petisco','Queijo','Pão','Aperitivo') NOT NULL,
  `preco` decimal(10,2) NOT NULL,
  `estoque` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `frigobar_items`
--

INSERT INTO `frigobar_items` (`id`, `nome`, `tipo`, `preco`, `estoque`) VALUES
(1, 'Água Mineral', 'Bebida', 2.50, 36),
(2, 'Refrigerante', 'Bebida', 3.00, 34),
(3, 'Suco Natural', 'Bebida', 4.00, 35),
(4, 'Chocolate', 'Doce', 2.50, 34),
(5, 'Snacks', 'Petisco', 3.50, 33),
(6, 'Cerveja Artesanal', 'Bebida', 6.00, 36),
(7, 'Vinho Tinto', 'Bebida Alcoólica', 25.00, 39),
(8, 'Champagne', 'Bebida Alcoólica', 50.00, 36),
(9, 'Whisky Escocês', 'Bebida Alcoólica', 40.00, 32),
(10, 'Caviar', 'Aperitivo', 100.00, 35),
(11, 'Salmão Defumado', 'Aperitivo', 35.00, 37),
(12, 'Prosecco', 'Bebida Alcoólica', 20.00, 40),
(13, 'Castanha de Caju', 'Petisco', 8.00, 38),
(14, 'Queijo Brie', 'Queijo', 15.00, 40),
(15, 'Pães Artesanais', 'Pão', 5.00, 33),
(16, 'Trufas de Chocolate', 'Doce', 30.00, 30),
(17, 'Licor de Café', 'Bebida Alcoólica', 12.00, 30),
(18, 'Cognac', 'Bebida Alcoólica', 45.00, 30),
(19, 'Macarons', 'Doce', 8.00, 33),
(20, 'Azeitonas Recheadas', 'Petisco', 6.00, 34),
(21, 'Vodka Premium', 'Bebida Alcoólica', 35.00, 40),
(22, 'Espumante Brut', 'Bebida Alcoólica', 18.00, 37),
(23, 'Salame Italiano', 'Petisco', 12.00, 34),
(24, 'Sorvete Gourmet', 'Doce', 10.00, 40),
(25, 'Perrier', 'Bebida', 3.50, 37),
(26, 'Café Premium', 'Bebida', 5.00, 34),
(27, 'Rum', 'Bebida Alcoólica', 30.00, 31),
(28, 'Gin Premium', 'Bebida Alcoólica', 25.00, 35),
(29, 'Xarope de Maple', 'Doce', 8.00, 30);

-- --------------------------------------------------------

--
-- Table structure for table `funcionario`
--

CREATE TABLE `funcionario` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `cargo` varchar(50) DEFAULT NULL,
  `numero_identificacao` varchar(20) DEFAULT NULL,
  `informacoes_contato` varchar(255) DEFAULT NULL,
  `salario` decimal(10,2) DEFAULT NULL,
  `turno_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_nopad_ci;

--
-- Dumping data for table `funcionario`
--

INSERT INTO `funcionario` (`id`, `nome`, `cargo`, `numero_identificacao`, `informacoes_contato`, `salario`, `turno_id`) VALUES
(1, 'João Silva', 'Gerente Geral', 'GG001', 'joao.silva@example.com', 6700.00, 1),
(2, 'Maria Santos', 'Gerente Geral', 'GG002', 'maria.santos@example.com', 6700.00, 2),
(3, 'José Oliveira', 'Gerente Geral', 'GG003', 'jose.oliveira@example.com', 6700.00, 3),
(4, 'Ana Costa', 'Gerente de Operações', 'GO001', 'ana.costa@example.com', 5200.00, 1),
(5, 'Pedro Almeida', 'Gerente de Operações', 'GO002', 'pedro.almeida@example.com', 5200.00, 2),
(6, 'Mariana Pereira', 'Gerente de Operações', 'GO003', 'mariana.pereira@example.com', 5200.00, 3),
(7, 'Carlos Fonseca', 'Gerente de Receção', 'GR001', 'carlos.fonseca@example.com', 3200.00, 1),
(8, 'Sandra Machado', 'Gerente de Receção', 'GR002', 'sandra.machado@example.com', 3200.00, 2),
(9, 'Fernando Carvalho', 'Gerente de Receção', 'GR003', 'fernando.carvalho@example.com', 3200.00, 3),
(10, 'Luisa Ribeiro', 'Gerente de Alimentos e Bebidas', 'GAB001', 'luisa.ribeiro@example.com', 3100.00, 1),
(11, 'Ricardo Sousa', 'Gerente de Alimentos e Bebidas', 'GAB002', 'ricardo.sousa@example.com', 3100.00, 2),
(12, 'Carla Ferreira', 'Gerente de Alimentos e Bebidas', 'GAB003', 'carla.ferreira@example.com', 3100.00, 3),
(13, 'Eduardo Castro', 'Chefe de Cozinha', 'CC001', 'eduardo.castro@example.com', 4200.00, 1),
(14, 'Aline Marques', 'Chefe de Cozinha', 'CC002', 'aline.marques@example.com', 4200.00, 2),
(15, 'Roberto Santos', 'Chefe de Cozinha', 'CC003', 'roberto.santos@example.com', 4200.00, 3),
(16, 'Patricia Lima', 'Concierge', 'C001', 'patricia.lima@example.com', 2800.00, 1),
(17, 'Fernanda Silva', 'Concierge', 'C002', 'fernanda.silva@example.com', 2800.00, 2),
(18, 'Bruno Oliveira', 'Concierge', 'C003', 'bruno.oliveira@example.com', 2800.00, 3),
(19, 'Luciana Pereira', 'Camareira', 'C001', 'luciana.pereira@example.com', 2400.00, 1),
(20, 'André Costa', 'Camareira', 'C002', 'andre.costa@example.com', 2400.00, 2),
(21, 'Amanda Santos', 'Camareira', 'C003', 'amanda.santos@example.com', 2400.00, 3),
(22, 'Gustavo Oliveira', 'Técnico de Manutenção', 'TM001', 'gustavo.oliveira@example.com', 1400.00, 1),
(23, 'Juliana Almeida', 'Técnico de Manutenção', 'TM002', 'juliana.almeida@example.com', 1400.00, 2),
(24, 'Marcos Silva', 'Técnico de Manutenção', 'TM003', 'marcos.silva@example.com', 1400.00, 3),
(25, 'Camila Santos', 'Gerente de Vendas e Marketing', 'GV001', 'camila.santos@example.com', 3000.00, 1),
(26, 'Rafael Oliveira', 'Gerente de Vendas e Marketing', 'GV002', 'rafael.oliveira@example.com', 3000.00, 2),
(27, 'Fernanda Almeida', 'Gerente de Vendas e Marketing', 'GV003', 'fernanda.almeida@example.com', 3000.00, 3),
(28, 'Diego Costa', 'Gerente de Recursos Humanos', 'GRH001', 'diego.costa@example.com', 2400.00, 1),
(29, 'Cristina Fernandes', 'Gerente de Recursos Humanos', 'GRH002', 'cristina.fernandes@example.com', 2400.00, 2),
(30, 'Marcelo Ribeiro', 'Gerente de Recursos Humanos', 'GRH003', 'marcelo.ribeiro@example.com', 2400.00, 3),
(31, 'Carolina Lima', 'Coordenador de Eventos', 'CE001', 'carolina.lima@example.com', 3600.00, 1),
(32, 'Thiago Pereira', 'Coordenador de Eventos', 'CE002', 'thiago.pereira@example.com', 3600.00, 2),
(33, 'Lucas Oliveira', 'Coordenador de Eventos', 'CE003', 'lucas.oliveira@example.com', 3600.00, 3);

-- --------------------------------------------------------

--
-- Table structure for table `hospede`
--

CREATE TABLE `hospede` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `endereco` varchar(255) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_nopad_ci;

--
-- Dumping data for table `hospede`
--

INSERT INTO `hospede` (`id`, `nome`, `endereco`, `email`, `telefone`) VALUES
(1, 'João Silva', 'Rua das Flores, 123', 'joao.silva@example.com', '(11) 98765-4321');

-- --------------------------------------------------------

--
-- Table structure for table `ingredientes`
--

CREATE TABLE `ingredientes` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `quantidade` decimal(10,2) NOT NULL,
  `medida` enum('grama','kg','litro','garrafa','pote') NOT NULL,
  `preco` decimal(10,2) NOT NULL,
  `valor_total_estoque` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `ingredientes`
--

INSERT INTO `ingredientes` (`id`, `nome`, `quantidade`, `medida`, `preco`, `valor_total_estoque`) VALUES
(1, 'Arroz', 100.00, 'kg', 2.50, 250.00),
(2, 'Feijão', 80.00, 'kg', 3.00, 240.00),
(3, 'Carne de frango', 70.00, 'kg', 5.50, 385.00),
(4, 'Carne de boi', 60.00, 'kg', 7.00, 420.00),
(5, 'Tomate', 120.00, 'kg', 1.20, 144.00),
(6, 'Cebola', 110.00, 'kg', 1.00, 110.00),
(7, 'Alho', 90.00, 'grama', 1.50, 135.00),
(8, 'Óleo de soja', 150.00, 'litro', 2.00, 300.00),
(9, 'Azeite de oliva', 100.00, 'litro', 4.50, 450.00),
(10, 'Sal', 200.00, 'grama', 0.80, 160.00),
(11, 'Pimenta do reino', 180.00, 'grama', 2.20, 396.00),
(12, 'Molho de tomate', 100.00, 'litro', 3.50, 350.00),
(13, 'Molho shoyu', 120.00, 'litro', 4.00, 480.00),
(14, 'Macarrão', 80.00, 'kg', 2.50, 200.00),
(15, 'Queijo parmesão', 70.00, 'kg', 6.00, 420.00),
(16, 'Presunto', 60.00, 'kg', 8.00, 480.00),
(17, 'Manteiga', 100.00, 'pote', 3.20, 320.00),
(18, 'Ovos', 150.00, 'grama', 0.50, 75.00),
(19, 'Farinha de trigo', 200.00, 'kg', 2.00, 400.00),
(20, 'Leite', 180.00, 'litro', 2.50, 450.00),
(21, 'Creme de leite', 150.00, 'grama', 2.80, 420.00),
(22, 'Chocolate em pó', 120.00, 'grama', 3.50, 420.00),
(23, 'Leite condensado', 100.00, 'grama', 4.00, 400.00),
(24, 'Café', 90.00, 'grama', 5.00, 450.00),
(25, 'Chá', 80.00, 'grama', 3.00, 240.00),
(26, 'Açúcar', 200.00, 'grama', 1.20, 240.00),
(27, 'Canela', 150.00, 'grama', 2.00, 300.00),
(29, 'Manteiga de amendoim', 100.00, 'grama', 5.00, 500.00),
(30, 'Geleia', 120.00, 'grama', 4.50, 540.00),
(31, 'Mel', 90.00, 'grama', 7.00, 630.00),
(32, 'Iogurte', 80.00, 'litro', 3.50, 280.00),
(33, 'Frutas variadas', 150.00, 'kg', 8.00, 1200.00),
(34, 'Vegetais variados', 200.00, 'kg', 5.00, 1000.00),
(35, 'Frutos do mar', 100.00, 'kg', 12.00, 1200.00),
(36, 'Camarão', 120.00, 'kg', 15.00, 1800.00),
(37, 'Lagosta', 90.00, 'kg', 25.00, 2250.00),
(38, 'Ostras', 80.00, 'kg', 20.00, 1600.00),
(39, 'Caviar', 60.00, 'grama', 50.00, 3000.00),
(40, 'Trufas', 40.00, 'grama', 100.00, 4000.00),
(41, 'Foie gras', 30.00, 'grama', 80.00, 2400.00),
(42, 'Wagyu', 50.00, 'kg', 200.00, 10000.00),
(43, 'Salmão selvagem', 70.00, 'kg', 18.00, 1260.00),
(44, 'Vinho tinto', 150.00, 'garrafa', 30.00, 4500.00),
(45, 'Champagne', 100.00, 'garrafa', 50.00, 5000.00),
(46, 'Conhaque', 120.00, 'garrafa', 40.00, 4800.00),
(47, 'Cognac', 90.00, 'garrafa', 60.00, 5400.00),
(48, 'Whisky', 80.00, 'garrafa', 70.00, 5600.00),
(49, 'Rum', 100.00, 'garrafa', 25.00, 2500.00),
(50, 'Vodka', 120.00, 'garrafa', 20.00, 2400.00),
(51, 'Tequila', 90.00, 'garrafa', 35.00, 3150.00),
(52, 'Licor', 80.00, 'garrafa', 45.00, 3600.00),
(53, 'Absinto', 60.00, 'garrafa', 55.00, 3300.00),
(54, 'Cerveja artesanal', 100.00, 'garrafa', 15.00, 1500.00),
(55, 'Gim', 120.00, 'garrafa', 25.00, 3000.00),
(56, 'Saquê', 90.00, 'garrafa', 30.00, 2700.00),
(57, 'Prosecco', 80.00, 'garrafa', 40.00, 3200.00),
(58, 'Vermute', 100.00, 'garrafa', 20.00, 2000.00),
(59, 'Tônica', 120.00, 'garrafa', 10.00, 1200.00),
(60, 'Xarope de bordo', 90.00, 'litro', 7.00, 630.00),
(61, 'Caviar de trufa negra', 80.00, 'grama', 300.00, 24000.00),
(62, 'Fígado de pato', 70.00, 'kg', 150.00, 10500.00),
(63, 'Vieiras', 60.00, 'kg', 80.00, 4800.00),
(64, 'Lombo de atum', 50.00, 'kg', 90.00, 4500.00),
(65, 'Fugu', 40.00, 'kg', 200.00, 8000.00),
(66, 'Ouro comestível', 30.00, 'grama', 500.00, 15000.00),
(67, 'Diamantes comestíveis', 20.00, 'grama', 1000.00, 20000.00),
(68, 'Ouro negro', 10.00, 'grama', 2000.00, 20000.00),
(69, 'Amendoim', 150.00, 'grama', 3.50, 525.00),
(70, 'Azeitona', 200.00, 'grama', 2.00, 400.00),
(71, 'Abacate', 90.00, 'kg', 2.50, 225.00),
(72, 'Bacon', 80.00, 'grama', 6.00, 480.00),
(73, 'Banana', 100.00, 'kg', 1.20, 120.00),
(74, 'Batata', 180.00, 'kg', 1.50, 270.00),
(75, 'Batata doce', 150.00, 'kg', 2.00, 300.00),
(76, 'Berinjela', 120.00, 'kg', 2.20, 264.00),
(77, 'Brócolis', 130.00, 'kg', 3.00, 390.00),
(78, 'Cenoura', 160.00, 'kg', 1.80, 288.00),
(79, 'Couve-flor', 110.00, 'kg', 2.50, 275.00),
(80, 'Espinafre', 140.00, 'kg', 3.20, 448.00),
(81, 'Abóbora', 170.00, 'kg', 1.50, 255.00),
(82, 'Cogumelo', 190.00, 'kg', 5.00, 950.00),
(83, 'Pepino', 150.00, 'kg', 1.80, 270.00),
(84, 'Pimentão', 120.00, 'kg', 2.20, 264.00),
(85, 'Rabanete', 140.00, 'kg', 2.00, 280.00),
(86, 'Repolho', 160.00, 'kg', 1.50, 240.00),
(87, 'Aipo', 120.00, 'grama', 1.80, 216.00),
(88, 'Alcachofra', 130.00, 'grama', 3.50, 455.00),
(89, 'Aspargo', 110.00, 'grama', 4.50, 495.00),
(90, 'Chicória', 150.00, 'grama', 2.00, 300.00),
(91, 'Ervilha', 200.00, 'grama', 2.50, 500.00),
(92, 'Quiabo', 180.00, 'grama', 1.50, 270.00),
(93, 'Rúcula', 140.00, 'grama', 3.20, 448.00),
(94, 'Champignon', 190.00, 'kg', 5.00, 950.00),
(95, 'Couve', 120.00, 'grama', 2.00, 240.00),
(96, 'Endívia', 130.00, 'grama', 2.50, 325.00),
(97, 'Fava', 150.00, 'kg', 3.00, 450.00),
(98, 'Gengibre', 100.00, 'grama', 3.00, 300.00),
(99, 'Inhame', 140.00, 'kg', 2.20, 308.00),
(100, 'Jiló', 120.00, 'grama', 2.80, 336.00),
(101, 'Maxixe', 110.00, 'kg', 3.20, 352.00),
(102, 'Nabo', 130.00, 'kg', 2.00, 260.00),
(103, 'Palmito', 170.00, 'grama', 2.50, 425.00),
(104, 'Pimenta malagueta', 180.00, 'grama', 4.00, 720.00),
(105, 'Salsa', 120.00, 'grama', 2.50, 300.00),
(106, 'Taioba', 160.00, 'grama', 3.00, 480.00),
(107, 'Taro', 150.00, 'kg', 3.50, 525.00),
(108, 'Tomate seco', 120.00, 'kg', 8.00, 960.00),
(109, 'Vagem', 190.00, 'kg', 3.20, 608.00),
(110, 'Mamão', 160.00, 'kg', 2.50, 400.00),
(111, 'Kiwi', 110.00, 'kg', 1.80, 198.00),
(112, 'Morango', 180.00, 'grama', 3.20, 576.00),
(113, 'Manga', 130.00, 'kg', 2.00, 260.00),
(114, 'Laranja', 140.00, 'kg', 1.50, 210.00),
(115, 'Limão', 120.00, 'kg', 2.00, 240.00),
(116, 'Melão', 150.00, 'kg', 3.50, 525.00),
(117, 'Maracujá', 100.00, 'kg', 4.00, 400.00),
(118, 'Maçã', 160.00, 'kg', 3.00, 480.00),
(119, 'Pêssego', 170.00, 'kg', 2.20, 374.00),
(120, 'Pera', 120.00, 'kg', 1.80, 216.00),
(121, 'Uva', 130.00, 'kg', 5.00, 650.00),
(122, 'Caju', 100.00, 'kg', 6.00, 600.00),
(123, 'Acerola', 120.00, 'kg', 7.00, 840.00),
(124, 'Abacaxi', 130.00, 'kg', 4.00, 520.00),
(125, 'Melancia', 140.00, 'kg', 1.50, 210.00),
(126, 'Graviola', 150.00, 'kg', 8.00, 1200.00),
(127, 'Carambola', 160.00, 'kg', 3.20, 512.00),
(128, 'Guaraná', 170.00, 'litro', 2.50, 425.00),
(129, 'Mate', 180.00, 'litro', 2.00, 360.00),
(130, 'Água de coco', 190.00, 'litro', 3.50, 665.00),
(131, 'Suco de laranja', 200.00, 'litro', 1.20, 240.00),
(132, 'Suco de uva', 110.00, 'litro', 2.00, 220.00),
(133, 'Suco de maçã', 120.00, 'litro', 2.20, 264.00),
(134, 'Suco de maracujá', 130.00, 'litro', 3.00, 390.00),
(135, 'Suco de limão', 140.00, 'litro', 3.20, 448.00),
(136, 'Suco de abacaxi', 150.00, 'litro', 1.80, 270.00),
(137, 'Suco de acerola', 160.00, 'litro', 2.50, 400.00),
(138, 'Suco de melancia', 170.00, 'litro', 2.20, 374.00),
(139, 'Suco de goiaba', 180.00, 'litro', 3.00, 540.00),
(140, 'Suco de manga', 190.00, 'litro', 4.50, 855.00),
(141, 'Suco de caju', 200.00, 'litro', 3.20, 640.00),
(142, 'Cerveja', 100.00, 'garrafa', 3.00, 300.00),
(143, 'Vinho', 110.00, 'garrafa', 20.00, 2200.00),
(144, 'Champagne', 120.00, 'garrafa', 30.00, 3600.00),
(145, 'Vodka', 130.00, 'garrafa', 25.00, 3250.00),
(146, 'Whisky', 140.00, 'garrafa', 40.00, 5600.00),
(147, 'Tequila', 150.00, 'garrafa', 35.00, 5250.00),
(148, 'Rum', 160.00, 'garrafa', 20.00, 3200.00),
(149, 'Gim', 170.00, 'garrafa', 30.00, 5100.00),
(150, 'Conhaque', 180.00, 'garrafa', 50.00, 9000.00),
(151, 'Licor', 190.00, 'garrafa', 40.00, 7600.00),
(152, 'Saquê', 200.00, 'garrafa', 15.00, 3000.00),
(153, 'Vermute seco', 100.00, 'garrafa', 15.00, 1500.00),
(154, 'Cointreau', 80.00, 'garrafa', 25.00, 2000.00),
(155, 'Campari', 90.00, 'garrafa', 20.00, 1800.00),
(156, 'Grand Marnier', 110.00, 'garrafa', 30.00, 3300.00),
(157, 'Triple sec', 120.00, 'garrafa', 20.00, 2400.00),
(158, 'Maraschino', 130.00, 'garrafa', 18.00, 2340.00),
(159, 'Aperol', 140.00, 'garrafa', 25.00, 3500.00),
(160, 'Chartreuse', 150.00, 'garrafa', 40.00, 6000.00),
(161, 'Vermute doce', 160.00, 'garrafa', 18.00, 2880.00),
(162, 'Amaretto', 170.00, 'garrafa', 25.00, 4250.00),
(163, 'Peach Schnapps', 180.00, 'garrafa', 20.00, 3600.00),
(164, 'Blue Curaçao', 190.00, 'garrafa', 15.00, 2850.00),
(165, 'Grenadine', 200.00, 'garrafa', 10.00, 2000.00),
(166, 'Orgeat', 110.00, 'garrafa', 18.00, 1980.00),
(167, 'Simple syrup', 120.00, 'litro', 5.00, 600.00),
(168, 'Soda', 130.00, 'garrafa', 5.00, 650.00),
(169, 'Tônica', 140.00, 'garrafa', 7.00, 980.00),
(170, 'Água com gás', 150.00, 'garrafa', 4.00, 600.00),
(171, 'Suco de limão siciliano', 160.00, 'litro', 8.00, 1280.00),
(172, 'Suco de cranberry', 170.00, 'litro', 10.00, 1700.00),
(173, 'Suco de abacaxi', 180.00, 'litro', 6.00, 1080.00),
(174, 'Suco de laranja', 190.00, 'litro', 5.00, 950.00),
(175, 'Suco de maçã', 200.00, 'litro', 7.00, 1400.00),
(176, 'Suco de morango', 210.00, 'litro', 12.00, 2520.00),
(177, 'Xarope de mel', 220.00, 'litro', 10.00, 2200.00),
(178, 'Xarope de gengibre', 230.00, 'litro', 15.00, 3450.00),
(179, 'Xarope de hibisco', 240.00, 'litro', 20.00, 4800.00),
(180, 'Xarope de baunilha', 250.00, 'litro', 25.00, 6250.00),
(181, 'Xarope de romã', 260.00, 'litro', 18.00, 4680.00);

-- --------------------------------------------------------

--
-- Table structure for table `lavanderia`
--

CREATE TABLE `lavanderia` (
  `id` int(11) NOT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `preco` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_nopad_ci;

--
-- Dumping data for table `lavanderia`
--

INSERT INTO `lavanderia` (`id`, `descricao`, `preco`) VALUES
(1, 'Lavagem a seco', 15),
(2, 'Lavagem tradicional', 10),
(3, 'Passar roupa', 5),
(4, 'Engomar', 8);

-- --------------------------------------------------------

--
-- Table structure for table `quarto`
--

CREATE TABLE `quarto` (
  `id` int(11) NOT NULL,
  `tipo` varchar(50) DEFAULT NULL,
  `capacidade_maxima` int(11) DEFAULT NULL,
  `disponibilidade` tinyint(1) DEFAULT NULL,
  `diaria` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_nopad_ci;

--
-- Dumping data for table `quarto`
--

INSERT INTO `quarto` (`id`, `tipo`, `capacidade_maxima`, `disponibilidade`, `diaria`) VALUES
(1, 'Standard', 2, 1, 150.00),
(2, 'Standard', 2, 1, 150.00),
(3, 'Standard', 2, 1, 150.00),
(4, 'Standard', 2, 1, 150.00),
(5, 'Standard', 2, 1, 150.00),
(6, 'Standard', 2, 1, 150.00),
(7, 'Standard', 2, 1, 150.00),
(8, 'Standard', 2, 1, 150.00),
(9, 'Standard', 2, 1, 150.00),
(10, 'Standard', 2, 1, 150.00),
(11, 'Standard', 2, 1, 150.00),
(12, 'Standard', 2, 1, 150.00),
(13, 'Standard', 2, 1, 150.00),
(14, 'Standard', 2, 1, 150.00),
(15, 'Standard', 2, 1, 150.00),
(16, 'Familiar', 4, 1, 250.00),
(17, 'Familiar', 4, 1, 250.00),
(18, 'Familiar', 4, 1, 250.00),
(19, 'Familiar', 4, 1, 250.00),
(20, 'Familiar', 4, 1, 250.00),
(21, 'Familiar', 4, 1, 250.00),
(22, 'Familiar', 4, 1, 250.00),
(23, 'Familiar', 4, 1, 250.00),
(24, 'Familiar', 4, 1, 250.00),
(25, 'Familiar', 4, 1, 250.00),
(26, 'Familiar', 4, 1, 250.00),
(27, 'Familiar', 4, 1, 250.00),
(28, 'Familiar', 4, 1, 250.00),
(29, 'Familiar', 4, 1, 250.00),
(30, 'Familiar', 4, 1, 250.00),
(31, 'Suíte de Luxo', 2, 1, 400.00),
(32, 'Suíte de Luxo', 2, 1, 400.00),
(33, 'Suíte de Luxo', 2, 1, 400.00),
(34, 'Suíte de Luxo', 2, 1, 400.00),
(35, 'Suíte de Luxo', 2, 1, 400.00),
(36, 'Suíte de Luxo', 2, 1, 400.00),
(37, 'Suíte de Luxo', 2, 1, 400.00),
(38, 'Suíte de Luxo', 2, 1, 400.00),
(39, 'Suíte de Luxo', 2, 1, 400.00),
(40, 'Suíte de Luxo', 2, 1, 400.00);

-- --------------------------------------------------------

--
-- Table structure for table `registro_horas_trabalhadas`
--

CREATE TABLE `registro_horas_trabalhadas` (
  `id` int(11) NOT NULL,
  `data` date DEFAULT NULL,
  `horas_trabalhadas` decimal(5,2) DEFAULT NULL,
  `funcionario_id` int(11) DEFAULT NULL,
  `turno_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_nopad_ci;

--
-- Dumping data for table `registro_horas_trabalhadas`
--

INSERT INTO `registro_horas_trabalhadas` (`id`, `data`, `horas_trabalhadas`, `funcionario_id`, `turno_id`) VALUES
(1, '2024-02-01', 7.47, 1, 3),
(2, '2024-02-01', 7.95, 2, 3),
(3, '2024-02-01', 7.52, 3, 1),
(4, '2024-02-01', 7.94, 4, 2),
(5, '2024-02-01', 8.13, 5, 1),
(6, '2024-02-01', 7.86, 6, 3),
(7, '2024-02-01', 7.51, 7, 1),
(8, '2024-02-01', 8.17, 8, 1),
(9, '2024-02-01', 7.72, 9, 3),
(10, '2024-02-01', 7.48, 10, 1),
(11, '2024-02-01', 7.65, 11, 3),
(12, '2024-02-01', 7.62, 12, 3),
(13, '2024-02-01', 7.75, 13, 1),
(14, '2024-02-01', 7.66, 14, 1),
(15, '2024-02-01', 7.69, 15, 2),
(16, '2024-02-01', 8.04, 16, 1),
(17, '2024-02-01', 8.12, 17, 2),
(18, '2024-02-01', 7.51, 18, 2),
(19, '2024-02-01', 8.16, 19, 1),
(20, '2024-02-01', 7.68, 20, 2),
(21, '2024-02-01', 8.13, 21, 1),
(22, '2024-02-01', 7.78, 22, 2),
(23, '2024-02-01', 7.94, 23, 1),
(24, '2024-02-01', 8.16, 24, 3),
(25, '2024-02-01', 7.96, 25, 3),
(26, '2024-02-01', 7.95, 26, 3),
(27, '2024-02-01', 7.65, 27, 3),
(28, '2024-02-01', 7.82, 28, 1),
(29, '2024-02-01', 7.93, 29, 3),
(30, '2024-02-01', 7.99, 30, 2),
(31, '2024-02-01', 7.98, 31, 2),
(32, '2024-02-01', 7.70, 32, 2),
(33, '2024-02-01', 7.99, 33, 1),
(34, '2024-02-02', 7.84, 1, 2),
(35, '2024-02-02', 7.83, 2, 2),
(36, '2024-02-02', 7.44, 3, 1),
(37, '2024-02-02', 7.88, 4, 2),
(38, '2024-02-02', 8.10, 5, 2),
(39, '2024-02-02', 7.87, 6, 2),
(40, '2024-02-02', 7.62, 7, 1),
(41, '2024-02-02', 7.90, 8, 3),
(42, '2024-02-02', 7.66, 9, 2),
(43, '2024-02-02', 7.97, 10, 2),
(44, '2024-02-02', 7.90, 11, 3),
(45, '2024-02-02', 8.19, 12, 1),
(46, '2024-02-02', 7.43, 13, 1),
(47, '2024-02-02', 7.59, 14, 2),
(48, '2024-02-02', 7.47, 15, 2),
(49, '2024-02-02', 7.96, 16, 3),
(50, '2024-02-02', 7.61, 17, 1),
(51, '2024-02-02', 7.57, 18, 3),
(52, '2024-02-02', 7.62, 19, 1),
(53, '2024-02-02', 7.97, 20, 2),
(54, '2024-02-02', 8.01, 21, 1),
(55, '2024-02-02', 7.92, 22, 3),
(56, '2024-02-02', 8.19, 23, 2),
(57, '2024-02-02', 8.19, 24, 2),
(58, '2024-02-02', 8.17, 25, 1),
(59, '2024-02-02', 8.09, 26, 1),
(60, '2024-02-02', 7.73, 27, 2),
(61, '2024-02-02', 7.78, 28, 1),
(62, '2024-02-02', 7.53, 29, 2),
(63, '2024-02-02', 7.71, 30, 2),
(64, '2024-02-02', 7.76, 31, 2),
(65, '2024-02-02', 7.46, 32, 3),
(66, '2024-02-02', 7.41, 33, 2),
(67, '2024-02-03', 8.07, 1, 2),
(68, '2024-02-03', 7.52, 2, 2),
(69, '2024-02-03', 7.59, 3, 2),
(70, '2024-02-03', 7.99, 4, 3),
(71, '2024-02-03', 8.16, 5, 1),
(72, '2024-02-03', 7.86, 6, 1),
(73, '2024-02-03', 7.42, 7, 2),
(74, '2024-02-03', 7.71, 8, 1),
(75, '2024-02-03', 8.07, 9, 3),
(76, '2024-02-03', 7.44, 10, 3),
(77, '2024-02-03', 8.01, 11, 3),
(78, '2024-02-03', 7.90, 12, 3),
(79, '2024-02-03', 8.09, 13, 3),
(80, '2024-02-03', 7.74, 14, 3),
(81, '2024-02-03', 7.82, 15, 1),
(82, '2024-02-03', 7.67, 16, 2),
(83, '2024-02-03', 7.52, 17, 3),
(84, '2024-02-03', 7.96, 18, 1),
(85, '2024-02-03', 7.46, 19, 3),
(86, '2024-02-03', 7.61, 20, 2),
(87, '2024-02-03', 7.47, 21, 2),
(88, '2024-02-03', 7.90, 22, 3),
(89, '2024-02-03', 8.12, 23, 3),
(90, '2024-02-03', 7.89, 24, 2),
(91, '2024-02-03', 7.69, 25, 3),
(92, '2024-02-03', 8.19, 26, 2),
(93, '2024-02-03', 8.07, 27, 1),
(94, '2024-02-03', 7.59, 28, 2),
(95, '2024-02-03', 7.93, 29, 2),
(96, '2024-02-03', 7.88, 30, 2),
(97, '2024-02-03', 8.19, 31, 3),
(98, '2024-02-03', 7.53, 32, 2),
(99, '2024-02-03', 8.09, 33, 3),
(100, '2024-02-04', 8.07, 1, 1),
(101, '2024-02-04', 7.87, 2, 2),
(102, '2024-02-04', 7.76, 3, 1),
(103, '2024-02-04', 7.76, 4, 2),
(104, '2024-02-04', 8.12, 5, 2),
(105, '2024-02-04', 7.52, 6, 3),
(106, '2024-02-04', 7.44, 7, 3),
(107, '2024-02-04', 8.03, 8, 1),
(108, '2024-02-04', 8.06, 9, 2),
(109, '2024-02-04', 7.99, 10, 1),
(110, '2024-02-04', 7.58, 11, 1),
(111, '2024-02-04', 8.12, 12, 3),
(112, '2024-02-04', 8.05, 13, 2),
(113, '2024-02-04', 7.70, 14, 2),
(114, '2024-02-04', 7.75, 15, 3),
(115, '2024-02-04', 7.44, 16, 1),
(116, '2024-02-04', 8.14, 17, 2),
(117, '2024-02-04', 7.80, 18, 2),
(118, '2024-02-04', 7.98, 19, 3),
(119, '2024-02-04', 7.49, 20, 3),
(120, '2024-02-04', 7.73, 21, 2),
(121, '2024-02-04', 7.99, 22, 3),
(122, '2024-02-04', 7.72, 23, 2),
(123, '2024-02-04', 8.07, 24, 2),
(124, '2024-02-04', 8.16, 25, 3),
(125, '2024-02-04', 7.58, 26, 3),
(126, '2024-02-04', 7.64, 27, 3),
(127, '2024-02-04', 8.05, 28, 3),
(128, '2024-02-04', 7.55, 29, 2),
(129, '2024-02-04', 7.80, 30, 2),
(130, '2024-02-04', 8.14, 31, 1),
(131, '2024-02-04', 7.52, 32, 3),
(132, '2024-02-04', 8.15, 33, 2),
(133, '2024-02-05', 7.59, 1, 2),
(134, '2024-02-05', 7.71, 2, 2),
(135, '2024-02-05', 7.60, 3, 3),
(136, '2024-02-05', 7.45, 4, 2),
(137, '2024-02-05', 7.87, 5, 1),
(138, '2024-02-05', 7.98, 6, 1),
(139, '2024-02-05', 8.11, 7, 1),
(140, '2024-02-05', 7.61, 8, 2),
(141, '2024-02-05', 7.90, 9, 2),
(142, '2024-02-05', 7.69, 10, 2),
(143, '2024-02-05', 8.14, 11, 2),
(144, '2024-02-05', 7.83, 12, 2),
(145, '2024-02-05', 8.14, 13, 1),
(146, '2024-02-05', 7.40, 14, 2),
(147, '2024-02-05', 7.60, 15, 3),
(148, '2024-02-05', 7.57, 16, 2),
(149, '2024-02-05', 7.65, 17, 2),
(150, '2024-02-05', 8.16, 18, 2),
(151, '2024-02-05', 8.06, 19, 2),
(152, '2024-02-05', 7.59, 20, 1),
(153, '2024-02-05', 7.99, 21, 2),
(154, '2024-02-05', 8.17, 22, 2),
(155, '2024-02-05', 7.90, 23, 2),
(156, '2024-02-05', 7.57, 24, 3),
(157, '2024-02-05', 7.55, 25, 3),
(158, '2024-02-05', 7.63, 26, 1),
(159, '2024-02-05', 8.10, 27, 3),
(160, '2024-02-05', 7.81, 28, 2),
(161, '2024-02-05', 8.14, 29, 1),
(162, '2024-02-05', 7.49, 30, 2),
(163, '2024-02-05', 8.02, 31, 1),
(164, '2024-02-05', 7.84, 32, 2),
(165, '2024-02-05', 7.73, 33, 2),
(166, '2024-02-06', 7.71, 1, 3),
(167, '2024-02-06', 7.99, 2, 1),
(168, '2024-02-06', 7.83, 3, 2),
(169, '2024-02-06', 7.75, 4, 3),
(170, '2024-02-06', 7.88, 5, 3),
(171, '2024-02-06', 7.93, 6, 2),
(172, '2024-02-06', 7.84, 7, 1),
(173, '2024-02-06', 8.00, 8, 1),
(174, '2024-02-06', 7.47, 9, 1),
(175, '2024-02-06', 7.57, 10, 1),
(176, '2024-02-06', 8.01, 11, 1),
(177, '2024-02-06', 7.55, 12, 2),
(178, '2024-02-06', 7.92, 13, 1),
(179, '2024-02-06', 7.94, 14, 2),
(180, '2024-02-06', 7.77, 15, 3),
(181, '2024-02-06', 7.60, 16, 3),
(182, '2024-02-06', 8.10, 17, 3),
(183, '2024-02-06', 7.88, 18, 2),
(184, '2024-02-06', 7.71, 19, 3),
(185, '2024-02-06', 7.51, 20, 3),
(186, '2024-02-06', 7.83, 21, 3),
(187, '2024-02-06', 7.63, 22, 3),
(188, '2024-02-06', 8.06, 23, 2),
(189, '2024-02-06', 7.59, 24, 1),
(190, '2024-02-06', 7.98, 25, 2),
(191, '2024-02-06', 8.13, 26, 3),
(192, '2024-02-06', 7.69, 27, 3),
(193, '2024-02-06', 7.49, 28, 1),
(194, '2024-02-06', 7.78, 29, 3),
(195, '2024-02-06', 7.44, 30, 1),
(196, '2024-02-06', 8.03, 31, 2),
(197, '2024-02-06', 8.05, 32, 2),
(198, '2024-02-06', 7.93, 33, 3),
(199, '2024-02-07', 8.13, 1, 3),
(200, '2024-02-07', 7.85, 2, 3),
(201, '2024-02-07', 7.47, 3, 1),
(202, '2024-02-07', 8.00, 4, 3),
(203, '2024-02-07', 7.78, 5, 3),
(204, '2024-02-07', 7.50, 6, 3),
(205, '2024-02-07', 7.58, 7, 3),
(206, '2024-02-07', 7.98, 8, 3),
(207, '2024-02-07', 8.15, 9, 3),
(208, '2024-02-07', 7.80, 10, 2),
(209, '2024-02-07', 7.96, 11, 1),
(210, '2024-02-07', 7.41, 12, 3),
(211, '2024-02-07', 8.18, 13, 2),
(212, '2024-02-07', 8.04, 14, 2),
(213, '2024-02-07', 7.47, 15, 3),
(214, '2024-02-07', 7.43, 16, 1),
(215, '2024-02-07', 8.16, 17, 3),
(216, '2024-02-07', 7.88, 18, 1),
(217, '2024-02-07', 7.55, 19, 2),
(218, '2024-02-07', 7.51, 20, 1),
(219, '2024-02-07', 7.50, 21, 2),
(220, '2024-02-07', 7.58, 22, 3),
(221, '2024-02-07', 7.98, 23, 3),
(222, '2024-02-07', 8.16, 24, 2),
(223, '2024-02-07', 7.85, 25, 2),
(224, '2024-02-07', 8.20, 26, 3),
(225, '2024-02-07', 7.63, 27, 1),
(226, '2024-02-07', 7.76, 28, 3),
(227, '2024-02-07', 7.70, 29, 3),
(228, '2024-02-07', 7.82, 30, 2),
(229, '2024-02-07', 7.82, 31, 2),
(230, '2024-02-07', 7.45, 32, 3),
(231, '2024-02-07', 7.96, 33, 2),
(232, '2024-02-08', 7.65, 1, 1),
(233, '2024-02-08', 7.76, 2, 1),
(234, '2024-02-08', 7.66, 3, 1),
(235, '2024-02-08', 7.64, 4, 3),
(236, '2024-02-08', 7.79, 5, 2),
(237, '2024-02-08', 7.83, 6, 1),
(238, '2024-02-08', 7.60, 7, 2),
(239, '2024-02-08', 7.88, 8, 1),
(240, '2024-02-08', 7.62, 9, 1),
(241, '2024-02-08', 7.86, 10, 1),
(242, '2024-02-08', 7.46, 11, 1),
(243, '2024-02-08', 7.89, 12, 1),
(244, '2024-02-08', 8.10, 13, 1),
(245, '2024-02-08', 7.81, 14, 1),
(246, '2024-02-08', 8.16, 15, 2),
(247, '2024-02-08', 7.58, 16, 1),
(248, '2024-02-08', 7.62, 17, 1),
(249, '2024-02-08', 7.97, 18, 1),
(250, '2024-02-08', 7.96, 19, 3),
(251, '2024-02-08', 7.72, 20, 3),
(252, '2024-02-08', 8.09, 21, 2),
(253, '2024-02-08', 7.49, 22, 2),
(254, '2024-02-08', 8.19, 23, 3),
(255, '2024-02-08', 7.90, 24, 3),
(256, '2024-02-08', 7.50, 25, 2),
(257, '2024-02-08', 8.02, 26, 2),
(258, '2024-02-08', 7.80, 27, 3),
(259, '2024-02-08', 7.54, 28, 2),
(260, '2024-02-08', 7.69, 29, 1),
(261, '2024-02-08', 7.61, 30, 1),
(262, '2024-02-08', 7.61, 31, 1),
(263, '2024-02-08', 7.82, 32, 1),
(264, '2024-02-08', 8.06, 33, 1),
(265, '2024-02-09', 7.85, 1, 2),
(266, '2024-02-09', 7.66, 2, 1),
(267, '2024-02-09', 8.15, 3, 2),
(268, '2024-02-09', 7.97, 4, 2),
(269, '2024-02-09', 8.02, 5, 1),
(270, '2024-02-09', 7.96, 6, 3),
(271, '2024-02-09', 7.54, 7, 2),
(272, '2024-02-09', 8.05, 8, 3),
(273, '2024-02-09', 7.81, 9, 2),
(274, '2024-02-09', 7.52, 10, 2),
(275, '2024-02-09', 7.54, 11, 2),
(276, '2024-02-09', 7.75, 12, 1),
(277, '2024-02-09', 7.92, 13, 2),
(278, '2024-02-09', 8.15, 14, 3),
(279, '2024-02-09', 8.01, 15, 2),
(280, '2024-02-09', 8.20, 16, 3),
(281, '2024-02-09', 7.96, 17, 2),
(282, '2024-02-09', 7.80, 18, 3),
(283, '2024-02-09', 7.73, 19, 1),
(284, '2024-02-09', 7.85, 20, 2),
(285, '2024-02-09', 7.84, 21, 1),
(286, '2024-02-09', 7.48, 22, 1),
(287, '2024-02-09', 8.05, 23, 1),
(288, '2024-02-09', 8.03, 24, 2),
(289, '2024-02-09', 7.80, 25, 2),
(290, '2024-02-09', 7.52, 26, 1),
(291, '2024-02-09', 7.61, 27, 1),
(292, '2024-02-09', 8.07, 28, 2),
(293, '2024-02-09', 7.74, 29, 2),
(294, '2024-02-09', 7.86, 30, 2),
(295, '2024-02-09', 7.89, 31, 3),
(296, '2024-02-09', 7.68, 32, 1),
(297, '2024-02-09', 8.11, 33, 1),
(298, '2024-02-10', 7.70, 1, 1),
(299, '2024-02-10', 7.58, 2, 3),
(300, '2024-02-10', 7.41, 3, 1),
(301, '2024-02-10', 7.70, 4, 3),
(302, '2024-02-10', 8.07, 5, 1),
(303, '2024-02-10', 7.45, 6, 2),
(304, '2024-02-10', 8.02, 7, 2),
(305, '2024-02-10', 7.98, 8, 1),
(306, '2024-02-10', 7.62, 9, 2),
(307, '2024-02-10', 7.58, 10, 2),
(308, '2024-02-10', 7.63, 11, 1),
(309, '2024-02-10', 8.01, 12, 2),
(310, '2024-02-10', 8.17, 13, 2),
(311, '2024-02-10', 7.80, 14, 1),
(312, '2024-02-10', 7.91, 15, 3),
(313, '2024-02-10', 7.94, 16, 1),
(314, '2024-02-10', 7.77, 17, 3),
(315, '2024-02-10', 7.65, 18, 2),
(316, '2024-02-10', 7.54, 19, 3),
(317, '2024-02-10', 8.13, 20, 1),
(318, '2024-02-10', 7.43, 21, 3),
(319, '2024-02-10', 7.75, 22, 3),
(320, '2024-02-10', 7.49, 23, 3),
(321, '2024-02-10', 7.57, 24, 2),
(322, '2024-02-10', 7.98, 25, 1),
(323, '2024-02-10', 8.19, 26, 1),
(324, '2024-02-10', 8.00, 27, 1),
(325, '2024-02-10', 8.03, 28, 1),
(326, '2024-02-10', 7.97, 29, 3),
(327, '2024-02-10', 7.54, 30, 2),
(328, '2024-02-10', 8.01, 31, 3),
(329, '2024-02-10', 7.64, 32, 2),
(330, '2024-02-10', 7.57, 33, 3),
(331, '2024-02-11', 7.50, 1, 3),
(332, '2024-02-11', 7.40, 2, 2),
(333, '2024-02-11', 7.92, 3, 1),
(334, '2024-02-11', 7.59, 4, 1),
(335, '2024-02-11', 7.60, 5, 1),
(336, '2024-02-11', 7.81, 6, 1),
(337, '2024-02-11', 8.08, 7, 1),
(338, '2024-02-11', 7.95, 8, 3),
(339, '2024-02-11', 8.10, 9, 1),
(340, '2024-02-11', 7.65, 10, 2),
(341, '2024-02-11', 8.17, 11, 3),
(342, '2024-02-11', 8.11, 12, 1),
(343, '2024-02-11', 7.83, 13, 1),
(344, '2024-02-11', 8.20, 14, 2),
(345, '2024-02-11', 7.71, 15, 3),
(346, '2024-02-11', 8.16, 16, 1),
(347, '2024-02-11', 7.86, 17, 2),
(348, '2024-02-11', 7.42, 18, 2),
(349, '2024-02-11', 7.73, 19, 1),
(350, '2024-02-11', 8.18, 20, 3),
(351, '2024-02-11', 7.92, 21, 3),
(352, '2024-02-11', 7.65, 22, 1),
(353, '2024-02-11', 7.91, 23, 1),
(354, '2024-02-11', 7.58, 24, 1),
(355, '2024-02-11', 7.57, 25, 1),
(356, '2024-02-11', 7.73, 26, 1),
(357, '2024-02-11', 7.74, 27, 2),
(358, '2024-02-11', 8.09, 28, 1),
(359, '2024-02-11', 7.46, 29, 1),
(360, '2024-02-11', 7.99, 30, 3),
(361, '2024-02-11', 7.80, 31, 1),
(362, '2024-02-11', 7.64, 32, 1),
(363, '2024-02-11', 8.18, 33, 1),
(364, '2024-02-12', 8.20, 1, 1),
(365, '2024-02-12', 7.45, 2, 1),
(366, '2024-02-12', 7.64, 3, 2),
(367, '2024-02-12', 7.68, 4, 3),
(368, '2024-02-12', 8.05, 5, 2),
(369, '2024-02-12', 7.41, 6, 2),
(370, '2024-02-12', 7.93, 7, 3),
(371, '2024-02-12', 7.58, 8, 1),
(372, '2024-02-12', 7.54, 9, 3),
(373, '2024-02-12', 7.57, 10, 3),
(374, '2024-02-12', 7.81, 11, 2),
(375, '2024-02-12', 8.13, 12, 2),
(376, '2024-02-12', 7.43, 13, 1),
(377, '2024-02-12', 7.75, 14, 3),
(378, '2024-02-12', 7.48, 15, 1),
(379, '2024-02-12', 7.53, 16, 3),
(380, '2024-02-12', 7.81, 17, 1),
(381, '2024-02-12', 7.47, 18, 1),
(382, '2024-02-12', 8.13, 19, 2),
(383, '2024-02-12', 7.64, 20, 1),
(384, '2024-02-12', 8.01, 21, 2),
(385, '2024-02-12', 8.12, 22, 2),
(386, '2024-02-12', 7.59, 23, 3),
(387, '2024-02-12', 7.76, 24, 2),
(388, '2024-02-12', 7.85, 25, 1),
(389, '2024-02-12', 7.78, 26, 2),
(390, '2024-02-12', 7.94, 27, 1),
(391, '2024-02-12', 8.18, 28, 3),
(392, '2024-02-12', 8.05, 29, 1),
(393, '2024-02-12', 7.51, 30, 1),
(394, '2024-02-12', 7.60, 31, 2),
(395, '2024-02-12', 8.07, 32, 1),
(396, '2024-02-12', 7.74, 33, 3),
(397, '2024-02-13', 7.91, 1, 2),
(398, '2024-02-13', 8.13, 2, 3),
(399, '2024-02-13', 7.89, 3, 1),
(400, '2024-02-13', 7.70, 4, 2),
(401, '2024-02-13', 7.41, 5, 1),
(402, '2024-02-13', 8.14, 6, 1),
(403, '2024-02-13', 7.90, 7, 1),
(404, '2024-02-13', 7.65, 8, 2),
(405, '2024-02-13', 7.96, 9, 2),
(406, '2024-02-13', 7.85, 10, 3),
(407, '2024-02-13', 7.97, 11, 1),
(408, '2024-02-13', 8.08, 12, 2),
(409, '2024-02-13', 7.50, 13, 2),
(410, '2024-02-13', 7.47, 14, 1),
(411, '2024-02-13', 7.45, 15, 3),
(412, '2024-02-13', 7.44, 16, 3),
(413, '2024-02-13', 7.45, 17, 3),
(414, '2024-02-13', 7.51, 18, 2),
(415, '2024-02-13', 7.81, 19, 3),
(416, '2024-02-13', 7.50, 20, 2),
(417, '2024-02-13', 7.50, 21, 2),
(418, '2024-02-13', 7.59, 22, 2),
(419, '2024-02-13', 8.06, 23, 3),
(420, '2024-02-13', 7.73, 24, 2),
(421, '2024-02-13', 7.87, 25, 1),
(422, '2024-02-13', 7.94, 26, 3),
(423, '2024-02-13', 7.90, 27, 3),
(424, '2024-02-13', 7.48, 28, 3),
(425, '2024-02-13', 7.90, 29, 3),
(426, '2024-02-13', 8.08, 30, 3),
(427, '2024-02-13', 7.68, 31, 3),
(428, '2024-02-13', 7.56, 32, 1),
(429, '2024-02-13', 8.18, 33, 2),
(430, '2024-02-14', 7.61, 1, 1),
(431, '2024-02-14', 7.69, 2, 1),
(432, '2024-02-14', 7.45, 3, 1),
(433, '2024-02-14', 7.58, 4, 1),
(434, '2024-02-14', 8.14, 5, 1),
(435, '2024-02-14', 8.17, 6, 2),
(436, '2024-02-14', 7.42, 7, 2),
(437, '2024-02-14', 7.60, 8, 1),
(438, '2024-02-14', 7.55, 9, 3),
(439, '2024-02-14', 7.52, 10, 2),
(440, '2024-02-14', 7.58, 11, 2),
(441, '2024-02-14', 7.93, 12, 3),
(442, '2024-02-14', 7.92, 13, 1),
(443, '2024-02-14', 7.61, 14, 1),
(444, '2024-02-14', 7.67, 15, 1),
(445, '2024-02-14', 8.12, 16, 2),
(446, '2024-02-14', 7.79, 17, 1),
(447, '2024-02-14', 8.02, 18, 2),
(448, '2024-02-14', 7.70, 19, 2),
(449, '2024-02-14', 7.84, 20, 2),
(450, '2024-02-14', 7.89, 21, 3),
(451, '2024-02-14', 7.72, 22, 3),
(452, '2024-02-14', 7.55, 23, 3),
(453, '2024-02-14', 7.99, 24, 2),
(454, '2024-02-14', 7.50, 25, 3),
(455, '2024-02-14', 7.73, 26, 1),
(456, '2024-02-14', 7.96, 27, 1),
(457, '2024-02-14', 7.59, 28, 2),
(458, '2024-02-14', 7.47, 29, 2),
(459, '2024-02-14', 8.00, 30, 1),
(460, '2024-02-14', 7.79, 31, 2),
(461, '2024-02-14', 7.54, 32, 2),
(462, '2024-02-14', 7.75, 33, 1),
(463, '2024-02-15', 7.92, 1, 1),
(464, '2024-02-15', 8.15, 2, 3),
(465, '2024-02-15', 8.00, 3, 1),
(466, '2024-02-15', 8.13, 4, 2),
(467, '2024-02-15', 7.65, 5, 3),
(468, '2024-02-15', 8.09, 6, 2),
(469, '2024-02-15', 7.67, 7, 2),
(470, '2024-02-15', 7.49, 8, 3),
(471, '2024-02-15', 7.82, 9, 1),
(472, '2024-02-15', 7.64, 10, 2),
(473, '2024-02-15', 8.16, 11, 3),
(474, '2024-02-15', 8.05, 12, 3),
(475, '2024-02-15', 7.57, 13, 3),
(476, '2024-02-15', 7.92, 14, 1),
(477, '2024-02-15', 7.87, 15, 1),
(478, '2024-02-15', 8.19, 16, 3),
(479, '2024-02-15', 7.53, 17, 2),
(480, '2024-02-15', 8.08, 18, 1),
(481, '2024-02-15', 8.03, 19, 2),
(482, '2024-02-15', 7.68, 20, 1),
(483, '2024-02-15', 7.73, 21, 2),
(484, '2024-02-15', 7.40, 22, 2),
(485, '2024-02-15', 8.03, 23, 1),
(486, '2024-02-15', 8.12, 24, 2),
(487, '2024-02-15', 7.52, 25, 3),
(488, '2024-02-15', 7.46, 26, 2),
(489, '2024-02-15', 8.13, 27, 2),
(490, '2024-02-15', 7.66, 28, 2),
(491, '2024-02-15', 8.10, 29, 1),
(492, '2024-02-15', 7.72, 30, 2),
(493, '2024-02-15', 7.70, 31, 2),
(494, '2024-02-15', 7.93, 32, 1),
(495, '2024-02-15', 7.56, 33, 1),
(496, '2024-02-16', 8.19, 1, 2),
(497, '2024-02-16', 7.70, 2, 1),
(498, '2024-02-16', 8.10, 3, 3),
(499, '2024-02-16', 7.62, 4, 2),
(500, '2024-02-16', 7.98, 5, 1),
(501, '2024-02-16', 8.06, 6, 3),
(502, '2024-02-16', 8.16, 7, 1),
(503, '2024-02-16', 7.61, 8, 1),
(504, '2024-02-16', 7.77, 9, 2),
(505, '2024-02-16', 7.82, 10, 1),
(506, '2024-02-16', 7.60, 11, 1),
(507, '2024-02-16', 7.95, 12, 2),
(508, '2024-02-16', 7.93, 13, 2),
(509, '2024-02-16', 7.62, 14, 1),
(510, '2024-02-16', 7.70, 15, 2),
(511, '2024-02-16', 7.43, 16, 3),
(512, '2024-02-16', 7.45, 17, 2),
(513, '2024-02-16', 7.55, 18, 2),
(514, '2024-02-16', 8.00, 19, 2),
(515, '2024-02-16', 7.54, 20, 2),
(516, '2024-02-16', 7.90, 21, 2),
(517, '2024-02-16', 7.89, 22, 3),
(518, '2024-02-16', 7.55, 23, 3),
(519, '2024-02-16', 7.48, 24, 3),
(520, '2024-02-16', 8.15, 25, 3),
(521, '2024-02-16', 7.70, 26, 2),
(522, '2024-02-16', 7.45, 27, 1),
(523, '2024-02-16', 7.56, 28, 3),
(524, '2024-02-16', 8.03, 29, 2),
(525, '2024-02-16', 7.70, 30, 3),
(526, '2024-02-16', 7.80, 31, 1),
(527, '2024-02-16', 7.70, 32, 2),
(528, '2024-02-16', 7.72, 33, 2),
(529, '2024-02-17', 8.07, 1, 2),
(530, '2024-02-17', 7.41, 2, 2),
(531, '2024-02-17', 7.85, 3, 1),
(532, '2024-02-17', 8.01, 4, 1),
(533, '2024-02-17', 7.50, 5, 1),
(534, '2024-02-17', 7.67, 6, 2),
(535, '2024-02-17', 7.64, 7, 3),
(536, '2024-02-17', 7.80, 8, 2),
(537, '2024-02-17', 7.89, 9, 1),
(538, '2024-02-17', 7.85, 10, 2),
(539, '2024-02-17', 8.15, 11, 2),
(540, '2024-02-17', 7.44, 12, 3),
(541, '2024-02-17', 7.71, 13, 1),
(542, '2024-02-17', 8.06, 14, 3),
(543, '2024-02-17', 8.15, 15, 2),
(544, '2024-02-17', 7.59, 16, 1),
(545, '2024-02-17', 7.71, 17, 1),
(546, '2024-02-17', 7.58, 18, 1),
(547, '2024-02-17', 8.15, 19, 2),
(548, '2024-02-17', 7.42, 20, 2),
(549, '2024-02-17', 7.66, 21, 1),
(550, '2024-02-17', 7.82, 22, 3),
(551, '2024-02-17', 7.92, 23, 2),
(552, '2024-02-17', 7.95, 24, 3),
(553, '2024-02-17', 7.78, 25, 1),
(554, '2024-02-17', 7.67, 26, 2),
(555, '2024-02-17', 7.60, 27, 1),
(556, '2024-02-17', 7.61, 28, 1),
(557, '2024-02-17', 7.83, 29, 2),
(558, '2024-02-17', 8.13, 30, 2),
(559, '2024-02-17', 8.15, 31, 2),
(560, '2024-02-17', 8.15, 32, 1),
(561, '2024-02-17', 8.12, 33, 3),
(562, '2024-02-18', 7.95, 1, 2),
(563, '2024-02-18', 7.99, 2, 1),
(564, '2024-02-18', 7.90, 3, 3),
(565, '2024-02-18', 8.14, 4, 3),
(566, '2024-02-18', 7.97, 5, 3),
(567, '2024-02-18', 8.06, 6, 3),
(568, '2024-02-18', 8.20, 7, 3),
(569, '2024-02-18', 7.79, 8, 2),
(570, '2024-02-18', 7.78, 9, 1),
(571, '2024-02-18', 8.12, 10, 2),
(572, '2024-02-18', 7.44, 11, 2),
(573, '2024-02-18', 7.84, 12, 2),
(574, '2024-02-18', 7.91, 13, 3),
(575, '2024-02-18', 7.79, 14, 1),
(576, '2024-02-18', 7.86, 15, 2),
(577, '2024-02-18', 7.70, 16, 3),
(578, '2024-02-18', 7.52, 17, 3),
(579, '2024-02-18', 7.89, 18, 3),
(580, '2024-02-18', 7.91, 19, 1),
(581, '2024-02-18', 7.66, 20, 3),
(582, '2024-02-18', 7.97, 21, 2),
(583, '2024-02-18', 7.86, 22, 3),
(584, '2024-02-18', 8.02, 23, 1),
(585, '2024-02-18', 7.50, 24, 1),
(586, '2024-02-18', 7.65, 25, 3),
(587, '2024-02-18', 7.55, 26, 3),
(588, '2024-02-18', 8.20, 27, 3),
(589, '2024-02-18', 7.74, 28, 1),
(590, '2024-02-18', 7.52, 29, 3),
(591, '2024-02-18', 7.78, 30, 3),
(592, '2024-02-18', 8.13, 31, 3),
(593, '2024-02-18', 7.51, 32, 3),
(594, '2024-02-18', 8.14, 33, 1),
(595, '2024-02-19', 7.59, 1, 1),
(596, '2024-02-19', 7.73, 2, 1),
(597, '2024-02-19', 7.66, 3, 2),
(598, '2024-02-19', 7.73, 4, 3),
(599, '2024-02-19', 7.45, 5, 3),
(600, '2024-02-19', 7.46, 6, 3),
(601, '2024-02-19', 7.58, 7, 2),
(602, '2024-02-19', 8.10, 8, 1),
(603, '2024-02-19', 7.95, 9, 3),
(604, '2024-02-19', 8.07, 10, 1),
(605, '2024-02-19', 7.48, 11, 1),
(606, '2024-02-19', 7.41, 12, 3),
(607, '2024-02-19', 8.01, 13, 2),
(608, '2024-02-19', 8.02, 14, 3),
(609, '2024-02-19', 7.88, 15, 1),
(610, '2024-02-19', 7.92, 16, 1),
(611, '2024-02-19', 7.75, 17, 3),
(612, '2024-02-19', 7.62, 18, 1),
(613, '2024-02-19', 7.42, 19, 3),
(614, '2024-02-19', 7.65, 20, 2),
(615, '2024-02-19', 7.77, 21, 3),
(616, '2024-02-19', 7.73, 22, 3),
(617, '2024-02-19', 7.95, 23, 2),
(618, '2024-02-19', 7.55, 24, 2),
(619, '2024-02-19', 8.09, 25, 3),
(620, '2024-02-19', 8.00, 26, 1),
(621, '2024-02-19', 7.51, 27, 1),
(622, '2024-02-19', 7.78, 28, 3),
(623, '2024-02-19', 8.16, 29, 3),
(624, '2024-02-19', 7.65, 30, 3),
(625, '2024-02-19', 7.97, 31, 2),
(626, '2024-02-19', 7.92, 32, 1),
(627, '2024-02-19', 7.47, 33, 2),
(628, '2024-02-20', 7.79, 1, 3),
(629, '2024-02-20', 7.53, 2, 1),
(630, '2024-02-20', 7.69, 3, 1),
(631, '2024-02-20', 7.67, 4, 2),
(632, '2024-02-20', 7.88, 5, 3),
(633, '2024-02-20', 8.18, 6, 3),
(634, '2024-02-20', 7.46, 7, 2),
(635, '2024-02-20', 7.77, 8, 2),
(636, '2024-02-20', 7.46, 9, 2),
(637, '2024-02-20', 8.19, 10, 1),
(638, '2024-02-20', 7.96, 11, 3),
(639, '2024-02-20', 7.82, 12, 3),
(640, '2024-02-20', 7.83, 13, 1),
(641, '2024-02-20', 7.49, 14, 2),
(642, '2024-02-20', 8.15, 15, 1),
(643, '2024-02-20', 7.68, 16, 2),
(644, '2024-02-20', 8.16, 17, 3),
(645, '2024-02-20', 7.95, 18, 1),
(646, '2024-02-20', 7.87, 19, 2),
(647, '2024-02-20', 8.09, 20, 2),
(648, '2024-02-20', 7.87, 21, 3),
(649, '2024-02-20', 7.66, 22, 3),
(650, '2024-02-20', 8.11, 23, 2),
(651, '2024-02-20', 7.76, 24, 2),
(652, '2024-02-20', 7.86, 25, 2),
(653, '2024-02-20', 7.81, 26, 2),
(654, '2024-02-20', 8.10, 27, 2),
(655, '2024-02-20', 8.06, 28, 3),
(656, '2024-02-20', 7.82, 29, 1),
(657, '2024-02-20', 7.49, 30, 2),
(658, '2024-02-20', 7.40, 31, 3),
(659, '2024-02-20', 7.93, 32, 3),
(660, '2024-02-20', 7.66, 33, 2),
(661, '2024-02-21', 7.92, 1, 3),
(662, '2024-02-21', 7.63, 2, 3),
(663, '2024-02-21', 7.77, 3, 1),
(664, '2024-02-21', 7.74, 4, 3),
(665, '2024-02-21', 8.02, 5, 2),
(666, '2024-02-21', 7.85, 6, 3),
(667, '2024-02-21', 7.82, 7, 3),
(668, '2024-02-21', 8.12, 8, 2),
(669, '2024-02-21', 8.15, 9, 1),
(670, '2024-02-21', 8.17, 10, 2),
(671, '2024-02-21', 7.43, 11, 1),
(672, '2024-02-21', 7.65, 12, 1),
(673, '2024-02-21', 7.73, 13, 3),
(674, '2024-02-21', 7.52, 14, 3),
(675, '2024-02-21', 7.79, 15, 2),
(676, '2024-02-21', 8.20, 16, 2),
(677, '2024-02-21', 7.83, 17, 3),
(678, '2024-02-21', 7.94, 18, 2),
(679, '2024-02-21', 8.02, 19, 2),
(680, '2024-02-21', 8.07, 20, 3),
(681, '2024-02-21', 8.07, 21, 2),
(682, '2024-02-21', 7.98, 22, 3),
(683, '2024-02-21', 7.46, 23, 1),
(684, '2024-02-21', 7.58, 24, 1),
(685, '2024-02-21', 8.13, 25, 2),
(686, '2024-02-21', 8.11, 26, 3),
(687, '2024-02-21', 7.96, 27, 2),
(688, '2024-02-21', 8.05, 28, 1),
(689, '2024-02-21', 8.16, 29, 3),
(690, '2024-02-21', 7.66, 30, 1),
(691, '2024-02-21', 8.02, 31, 2),
(692, '2024-02-21', 8.11, 32, 3),
(693, '2024-02-21', 7.51, 33, 2),
(694, '2024-02-22', 7.43, 1, 1),
(695, '2024-02-22', 8.02, 2, 2),
(696, '2024-02-22', 8.00, 3, 3),
(697, '2024-02-22', 7.73, 4, 1),
(698, '2024-02-22', 8.04, 5, 2),
(699, '2024-02-22', 8.04, 6, 3),
(700, '2024-02-22', 7.87, 7, 2),
(701, '2024-02-22', 7.83, 8, 1),
(702, '2024-02-22', 8.14, 9, 1),
(703, '2024-02-22', 7.41, 10, 2),
(704, '2024-02-22', 7.63, 11, 3),
(705, '2024-02-22', 7.72, 12, 1),
(706, '2024-02-22', 7.50, 13, 1),
(707, '2024-02-22', 7.74, 14, 3),
(708, '2024-02-22', 8.01, 15, 3),
(709, '2024-02-22', 7.85, 16, 3),
(710, '2024-02-22', 7.78, 17, 2),
(711, '2024-02-22', 7.99, 18, 3),
(712, '2024-02-22', 7.58, 19, 1),
(713, '2024-02-22', 8.15, 20, 3),
(714, '2024-02-22', 8.20, 21, 1),
(715, '2024-02-22', 7.54, 22, 2),
(716, '2024-02-22', 8.09, 23, 3),
(717, '2024-02-22', 8.04, 24, 2),
(718, '2024-02-22', 7.71, 25, 2),
(719, '2024-02-22', 7.86, 26, 1),
(720, '2024-02-22', 7.98, 27, 1),
(721, '2024-02-22', 8.10, 28, 2),
(722, '2024-02-22', 7.58, 29, 2),
(723, '2024-02-22', 7.80, 30, 2),
(724, '2024-02-22', 8.06, 31, 3),
(725, '2024-02-22', 7.88, 32, 2),
(726, '2024-02-22', 7.84, 33, 3),
(727, '2024-02-23', 8.15, 1, 1),
(728, '2024-02-23', 7.44, 2, 1),
(729, '2024-02-23', 7.75, 3, 1),
(730, '2024-02-23', 7.42, 4, 3),
(731, '2024-02-23', 8.06, 5, 1),
(732, '2024-02-23', 7.43, 6, 3),
(733, '2024-02-23', 7.96, 7, 1),
(734, '2024-02-23', 7.72, 8, 1),
(735, '2024-02-23', 8.11, 9, 3),
(736, '2024-02-23', 7.59, 10, 3),
(737, '2024-02-23', 7.84, 11, 2),
(738, '2024-02-23', 7.43, 12, 2),
(739, '2024-02-23', 7.83, 13, 2),
(740, '2024-02-23', 7.85, 14, 3),
(741, '2024-02-23', 7.57, 15, 2),
(742, '2024-02-23', 7.70, 16, 3),
(743, '2024-02-23', 7.59, 17, 3),
(744, '2024-02-23', 7.46, 18, 2),
(745, '2024-02-23', 7.93, 19, 1),
(746, '2024-02-23', 7.48, 20, 3),
(747, '2024-02-23', 7.80, 21, 2),
(748, '2024-02-23', 7.58, 22, 2),
(749, '2024-02-23', 7.87, 23, 2),
(750, '2024-02-23', 7.64, 24, 3),
(751, '2024-02-23', 7.96, 25, 3),
(752, '2024-02-23', 7.89, 26, 3),
(753, '2024-02-23', 8.16, 27, 3),
(754, '2024-02-23', 8.13, 28, 2),
(755, '2024-02-23', 7.98, 29, 1),
(756, '2024-02-23', 8.09, 30, 1),
(757, '2024-02-23', 7.54, 31, 3),
(758, '2024-02-23', 7.62, 32, 2),
(759, '2024-02-23', 8.09, 33, 2),
(760, '2024-02-24', 7.78, 1, 3),
(761, '2024-02-24', 8.04, 2, 2),
(762, '2024-02-24', 7.85, 3, 2),
(763, '2024-02-24', 7.74, 4, 1),
(764, '2024-02-24', 7.75, 5, 3),
(765, '2024-02-24', 8.14, 6, 2),
(766, '2024-02-24', 7.63, 7, 1),
(767, '2024-02-24', 7.94, 8, 1),
(768, '2024-02-24', 7.80, 9, 3),
(769, '2024-02-24', 7.78, 10, 3),
(770, '2024-02-24', 8.09, 11, 1),
(771, '2024-02-24', 8.13, 12, 1),
(772, '2024-02-24', 8.19, 13, 3),
(773, '2024-02-24', 7.54, 14, 2),
(774, '2024-02-24', 8.14, 15, 3),
(775, '2024-02-24', 7.49, 16, 3),
(776, '2024-02-24', 8.04, 17, 2),
(777, '2024-02-24', 7.91, 18, 2),
(778, '2024-02-24', 8.06, 19, 1),
(779, '2024-02-24', 7.53, 20, 3),
(780, '2024-02-24', 7.70, 21, 2),
(781, '2024-02-24', 7.70, 22, 3),
(782, '2024-02-24', 7.99, 23, 3),
(783, '2024-02-24', 7.86, 24, 1),
(784, '2024-02-24', 7.93, 25, 3),
(785, '2024-02-24', 7.86, 26, 2),
(786, '2024-02-24', 8.10, 27, 1),
(787, '2024-02-24', 7.93, 28, 1),
(788, '2024-02-24', 7.96, 29, 2),
(789, '2024-02-24', 7.81, 30, 1),
(790, '2024-02-24', 7.78, 31, 2),
(791, '2024-02-24', 8.06, 32, 2),
(792, '2024-02-24', 7.97, 33, 3),
(793, '2024-02-25', 7.48, 1, 2),
(794, '2024-02-25', 7.67, 2, 1),
(795, '2024-02-25', 7.70, 3, 3),
(796, '2024-02-25', 8.10, 4, 1),
(797, '2024-02-25', 7.60, 5, 2),
(798, '2024-02-25', 7.90, 6, 1),
(799, '2024-02-25', 7.69, 7, 2),
(800, '2024-02-25', 8.15, 8, 1),
(801, '2024-02-25', 7.88, 9, 1),
(802, '2024-02-25', 7.57, 10, 1),
(803, '2024-02-25', 7.62, 11, 1),
(804, '2024-02-25', 7.97, 12, 2),
(805, '2024-02-25', 8.01, 13, 1),
(806, '2024-02-25', 7.91, 14, 3),
(807, '2024-02-25', 8.14, 15, 1),
(808, '2024-02-25', 7.98, 16, 1),
(809, '2024-02-25', 8.07, 17, 3),
(810, '2024-02-25', 7.41, 18, 1),
(811, '2024-02-25', 7.85, 19, 1),
(812, '2024-02-25', 8.01, 20, 1),
(813, '2024-02-25', 7.49, 21, 2),
(814, '2024-02-25', 7.63, 22, 3),
(815, '2024-02-25', 7.46, 23, 2),
(816, '2024-02-25', 7.84, 24, 1),
(817, '2024-02-25', 7.81, 25, 1),
(818, '2024-02-25', 8.12, 26, 2),
(819, '2024-02-25', 8.17, 27, 1),
(820, '2024-02-25', 7.51, 28, 2),
(821, '2024-02-25', 8.03, 29, 1),
(822, '2024-02-25', 7.82, 30, 3),
(823, '2024-02-25', 7.62, 31, 2),
(824, '2024-02-25', 8.05, 32, 1),
(825, '2024-02-25', 7.57, 33, 3),
(826, '2024-02-26', 7.91, 1, 3),
(827, '2024-02-26', 7.85, 2, 2),
(828, '2024-02-26', 8.10, 3, 2),
(829, '2024-02-26', 7.94, 4, 2),
(830, '2024-02-26', 8.00, 5, 2),
(831, '2024-02-26', 8.01, 6, 1),
(832, '2024-02-26', 7.83, 7, 3),
(833, '2024-02-26', 7.71, 8, 2),
(834, '2024-02-26', 7.67, 9, 1),
(835, '2024-02-26', 7.82, 10, 1),
(836, '2024-02-26', 7.88, 11, 3),
(837, '2024-02-26', 7.73, 12, 3),
(838, '2024-02-26', 7.64, 13, 3),
(839, '2024-02-26', 7.59, 14, 2),
(840, '2024-02-26', 7.64, 15, 1),
(841, '2024-02-26', 8.03, 16, 3),
(842, '2024-02-26', 7.44, 17, 1),
(843, '2024-02-26', 8.10, 18, 1),
(844, '2024-02-26', 7.57, 19, 1),
(845, '2024-02-26', 7.74, 20, 1),
(846, '2024-02-26', 7.79, 21, 1),
(847, '2024-02-26', 7.52, 22, 3),
(848, '2024-02-26', 7.66, 23, 1),
(849, '2024-02-26', 7.54, 24, 3),
(850, '2024-02-26', 8.11, 25, 1),
(851, '2024-02-26', 8.12, 26, 2),
(852, '2024-02-26', 8.09, 27, 3),
(853, '2024-02-26', 7.87, 28, 1),
(854, '2024-02-26', 7.68, 29, 2),
(855, '2024-02-26', 7.40, 30, 3),
(856, '2024-02-26', 8.16, 31, 3),
(857, '2024-02-26', 8.01, 32, 3),
(858, '2024-02-26', 8.15, 33, 2),
(859, '2024-02-27', 7.75, 1, 3),
(860, '2024-02-27', 7.68, 2, 2),
(861, '2024-02-27', 7.76, 3, 3),
(862, '2024-02-27', 7.54, 4, 2),
(863, '2024-02-27', 7.82, 5, 3),
(864, '2024-02-27', 7.48, 6, 2),
(865, '2024-02-27', 8.14, 7, 3),
(866, '2024-02-27', 7.65, 8, 1),
(867, '2024-02-27', 8.03, 9, 2),
(868, '2024-02-27', 8.20, 10, 3),
(869, '2024-02-27', 7.91, 11, 2),
(870, '2024-02-27', 7.54, 12, 1),
(871, '2024-02-27', 8.20, 13, 2),
(872, '2024-02-27', 7.76, 14, 2),
(873, '2024-02-27', 7.62, 15, 3),
(874, '2024-02-27', 7.41, 16, 3),
(875, '2024-02-27', 7.59, 17, 1),
(876, '2024-02-27', 7.52, 18, 1),
(877, '2024-02-27', 7.45, 19, 2),
(878, '2024-02-27', 8.08, 20, 3),
(879, '2024-02-27', 7.44, 21, 1),
(880, '2024-02-27', 7.95, 22, 3),
(881, '2024-02-27', 7.63, 23, 2),
(882, '2024-02-27', 7.72, 24, 3),
(883, '2024-02-27', 7.50, 25, 1),
(884, '2024-02-27', 7.74, 26, 1),
(885, '2024-02-27', 7.99, 27, 1),
(886, '2024-02-27', 7.72, 28, 3),
(887, '2024-02-27', 8.03, 29, 2),
(888, '2024-02-27', 7.98, 30, 2),
(889, '2024-02-27', 7.64, 31, 3),
(890, '2024-02-27', 7.64, 32, 2),
(891, '2024-02-27', 7.87, 33, 2),
(892, '2024-02-28', 7.45, 1, 2),
(893, '2024-02-28', 7.83, 2, 1),
(894, '2024-02-28', 7.81, 3, 3),
(895, '2024-02-28', 8.15, 4, 1),
(896, '2024-02-28', 7.53, 5, 1),
(897, '2024-02-28', 7.41, 6, 3),
(898, '2024-02-28', 7.86, 7, 1),
(899, '2024-02-28', 8.08, 8, 2),
(900, '2024-02-28', 7.82, 9, 3),
(901, '2024-02-28', 7.46, 10, 1),
(902, '2024-02-28', 8.05, 11, 2),
(903, '2024-02-28', 8.06, 12, 3),
(904, '2024-02-28', 7.94, 13, 3),
(905, '2024-02-28', 8.14, 14, 1),
(906, '2024-02-28', 7.89, 15, 2),
(907, '2024-02-28', 7.60, 16, 3),
(908, '2024-02-28', 7.74, 17, 1),
(909, '2024-02-28', 7.70, 18, 1),
(910, '2024-02-28', 7.87, 19, 2),
(911, '2024-02-28', 8.06, 20, 3),
(912, '2024-02-28', 7.67, 21, 3),
(913, '2024-02-28', 7.57, 22, 3),
(914, '2024-02-28', 7.47, 23, 2),
(915, '2024-02-28', 8.01, 24, 1),
(916, '2024-02-28', 7.86, 25, 3),
(917, '2024-02-28', 7.86, 26, 2),
(918, '2024-02-28', 7.53, 27, 3),
(919, '2024-02-28', 7.46, 28, 2),
(920, '2024-02-28', 8.12, 29, 3),
(921, '2024-02-28', 7.60, 30, 3),
(922, '2024-02-28', 7.85, 31, 2),
(923, '2024-02-28', 7.46, 32, 1),
(924, '2024-02-28', 7.96, 33, 3),
(925, '2024-02-29', 7.62, 1, 2),
(926, '2024-02-29', 7.61, 2, 3),
(927, '2024-02-29', 7.81, 3, 3),
(928, '2024-02-29', 8.01, 4, 3),
(929, '2024-02-29', 7.61, 5, 1),
(930, '2024-02-29', 7.42, 6, 3),
(931, '2024-02-29', 7.66, 7, 2),
(932, '2024-02-29', 7.83, 8, 2),
(933, '2024-02-29', 7.99, 9, 2),
(934, '2024-02-29', 7.44, 10, 2),
(935, '2024-02-29', 7.46, 11, 2),
(936, '2024-02-29', 7.55, 12, 2),
(937, '2024-02-29', 7.96, 13, 3),
(938, '2024-02-29', 8.18, 14, 2),
(939, '2024-02-29', 8.01, 15, 2),
(940, '2024-02-29', 8.12, 16, 3),
(941, '2024-02-29', 7.56, 17, 3),
(942, '2024-02-29', 7.66, 18, 3),
(943, '2024-02-29', 8.19, 19, 3),
(944, '2024-02-29', 8.17, 20, 3),
(945, '2024-02-29', 8.09, 21, 1),
(946, '2024-02-29', 7.72, 22, 3),
(947, '2024-02-29', 7.76, 23, 2),
(948, '2024-02-29', 7.42, 24, 2),
(949, '2024-02-29', 8.04, 25, 3),
(950, '2024-02-29', 8.12, 26, 3),
(951, '2024-02-29', 7.51, 27, 3),
(952, '2024-02-29', 8.17, 28, 3),
(953, '2024-02-29', 7.71, 29, 1),
(954, '2024-02-29', 7.46, 30, 2),
(955, '2024-02-29', 7.55, 31, 2),
(956, '2024-02-29', 7.97, 32, 1),
(957, '2024-02-29', 7.41, 33, 1),
(958, '2024-03-01', 8.13, 1, 3),
(959, '2024-03-01', 7.84, 2, 3),
(960, '2024-03-01', 7.41, 3, 1),
(961, '2024-03-01', 7.73, 4, 3),
(962, '2024-03-01', 7.43, 5, 3),
(963, '2024-03-01', 8.16, 6, 3),
(964, '2024-03-01', 7.88, 7, 3),
(965, '2024-03-01', 7.54, 8, 3),
(966, '2024-03-01', 7.47, 9, 2),
(967, '2024-03-01', 8.14, 10, 2),
(968, '2024-03-01', 7.67, 11, 1),
(969, '2024-03-01', 8.15, 12, 1),
(970, '2024-03-01', 7.93, 13, 1),
(971, '2024-03-01', 7.79, 14, 3),
(972, '2024-03-01', 7.76, 15, 3),
(973, '2024-03-01', 8.05, 16, 1),
(974, '2024-03-01', 7.97, 17, 3),
(975, '2024-03-01', 7.51, 18, 1),
(976, '2024-03-01', 7.84, 19, 3),
(977, '2024-03-01', 7.67, 20, 1),
(978, '2024-03-01', 7.43, 21, 3),
(979, '2024-03-01', 7.56, 22, 2),
(980, '2024-03-01', 8.08, 23, 2),
(981, '2024-03-01', 7.93, 24, 2),
(982, '2024-03-01', 8.02, 25, 1),
(983, '2024-03-01', 8.12, 26, 3),
(984, '2024-03-01', 7.54, 27, 1),
(985, '2024-03-01', 7.51, 28, 2),
(986, '2024-03-01', 7.55, 29, 2),
(987, '2024-03-01', 7.80, 30, 3),
(988, '2024-03-01', 8.16, 31, 1),
(989, '2024-03-01', 7.60, 32, 2),
(990, '2024-03-01', 7.71, 33, 3),
(991, '2024-03-02', 7.57, 1, 3),
(992, '2024-03-02', 8.12, 2, 2),
(993, '2024-03-02', 8.08, 3, 3),
(994, '2024-03-02', 7.83, 4, 2),
(995, '2024-03-02', 7.52, 5, 2),
(996, '2024-03-02', 7.49, 6, 3),
(997, '2024-03-02', 7.50, 7, 1),
(998, '2024-03-02', 7.62, 8, 2),
(999, '2024-03-02', 7.41, 9, 3),
(1000, '2024-03-02', 7.58, 10, 1),
(1001, '2024-03-02', 7.47, 11, 2),
(1002, '2024-03-02', 8.00, 12, 2),
(1003, '2024-03-02', 7.80, 13, 1),
(1004, '2024-03-02', 7.61, 14, 3),
(1005, '2024-03-02', 8.04, 15, 3),
(1006, '2024-03-02', 7.55, 16, 2),
(1007, '2024-03-02', 7.86, 17, 1),
(1008, '2024-03-02', 7.64, 18, 3),
(1009, '2024-03-02', 8.00, 19, 3),
(1010, '2024-03-02', 8.09, 20, 1),
(1011, '2024-03-02', 7.47, 21, 3),
(1012, '2024-03-02', 8.07, 22, 3),
(1013, '2024-03-02', 8.16, 23, 2),
(1014, '2024-03-02', 7.57, 24, 2),
(1015, '2024-03-02', 7.59, 25, 1),
(1016, '2024-03-02', 7.84, 26, 2),
(1017, '2024-03-02', 7.42, 27, 1),
(1018, '2024-03-02', 7.77, 28, 3),
(1019, '2024-03-02', 7.61, 29, 1),
(1020, '2024-03-02', 8.13, 30, 1),
(1021, '2024-03-02', 8.04, 31, 3),
(1022, '2024-03-02', 7.59, 32, 3),
(1023, '2024-03-02', 8.04, 33, 1);

-- --------------------------------------------------------

--
-- Table structure for table `reserva`
--

CREATE TABLE `reserva` (
  `id` int(11) NOT NULL,
  `data_checkin` date DEFAULT NULL,
  `data_checkout` date DEFAULT NULL,
  `numero_de_pessoas` int(11) DEFAULT NULL,
  `estado` enum('Confirmada','Pendente','Cancelada') DEFAULT NULL,
  `funcionario_id` int(11) DEFAULT NULL,
  `quarto_id` int(11) DEFAULT NULL,
  `hospede_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_nopad_ci;

--
-- Dumping data for table `reserva`
--

INSERT INTO `reserva` (`id`, `data_checkin`, `data_checkout`, `numero_de_pessoas`, `estado`, `funcionario_id`, `quarto_id`, `hospede_id`) VALUES
(1, '2024-03-02', '2024-03-05', 2, 'Confirmada', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `restaurante`
--

CREATE TABLE `restaurante` (
  `id` int(11) NOT NULL,
  `refeicao` varchar(100) DEFAULT NULL,
  `preco` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_nopad_ci;

--
-- Dumping data for table `restaurante`
--

INSERT INTO `restaurante` (`id`, `refeicao`, `preco`) VALUES
(1, 'Macarrão com Queijo', 15.00),
(2, 'Nuggets de Frango', 12.00),
(3, 'Pizza Margherita', 18.00),
(4, 'Hambúrguer Clássico', 20.00),
(5, 'Frango Grelhado com Legumes', 22.00),
(6, 'Espaguete à Bolonhesa', 25.00),
(7, 'Peixe Grelhado com Arroz', 28.00),
(8, 'Sanduíche de Queijo Quente', 14.00),
(9, 'Frango à Parmegiana', 30.00),
(10, 'Salada Caesar', 16.00),
(11, 'Tiras de Carne com Batatas Fritas', 32.00),
(12, 'Talharim com Molho Alfredo', 26.00),
(13, 'Sopa de Legumes', 12.00),
(14, 'Risoto de Cogumelos', 24.00),
(15, 'Peito de Frango à Milanesa', 28.00),
(16, 'Salada de Frutas', 10.00),
(17, 'Espetinho de Carne', 22.00),
(18, 'Lasanha de Vegetais', 20.00),
(19, 'Tacos de Frango', 18.00),
(20, 'Creme de Milho', 14.00),
(21, 'Risoto de Camarão', 35.00),
(22, 'Bife à Milanesa', 30.00),
(23, 'Salada Caprese', 18.00),
(24, 'Salmão Grelhado', 32.00),
(25, 'Filé Mignon ao Molho de Vinho', 40.00),
(26, 'Massa ao Pesto', 25.00),
(27, 'Wrap de Frango', 22.00),
(28, 'Quiche de Espinafre', 20.00),
(29, 'Sanduíche de Peito de Peru', 16.00),
(30, 'Coxinhas de Frango', 14.00),
(31, 'Ravioli de Queijo com Molho de Tomate', 28.00),
(32, 'Salada Grega', 18.00),
(33, 'Peixe Assado com Vegetais', 30.00),
(34, 'Cuscuz Marroquino', 22.00),
(35, 'Sopa de Tomate', 12.00),
(36, 'Torta de Legumes', 20.00),
(37, 'Frango Assado com Batatas', 26.00),
(38, 'Bife de Atum Grelhado', 35.00),
(39, 'Espetinho de Legumes', 16.00),
(40, 'Penne à Puttanesca', 24.00);

-- --------------------------------------------------------

--
-- Table structure for table `spa`
--

CREATE TABLE `spa` (
  `id` int(11) NOT NULL,
  `servico` varchar(100) DEFAULT NULL,
  `preco` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_nopad_ci;

--
-- Dumping data for table `spa`
--

INSERT INTO `spa` (`id`, `servico`, `preco`) VALUES
(1, 'Massagem relaxante', 100.00),
(2, 'Tratamento facial', 120.00),
(3, 'Tratamento de corpo inteiro', 150.00),
(4, 'Esfoliação corporal', 80.00),
(5, 'Banho de hidromassagem', 90.00),
(6, 'Sauna', 60.00),
(7, 'Yoga', 80.00),
(8, 'Pilates', 85.00),
(9, 'Aromaterapia', 70.00),
(10, 'Reflexologia', 75.00),
(11, 'Manicure', 40.00),
(12, 'Pedicure', 45.00);

-- --------------------------------------------------------

--
-- Table structure for table `transacao`
--

CREATE TABLE `transacao` (
  `id` int(11) NOT NULL,
  `reserva_id` int(11) DEFAULT NULL,
  `bar_id` int(11) DEFAULT NULL,
  `restaurante_id` int(11) DEFAULT NULL,
  `lavanderia_id` int(11) DEFAULT NULL,
  `spa_id` int(11) DEFAULT NULL,
  `academia_id` int(11) DEFAULT NULL,
  `tipo_servico` enum('bar','restaurante','lavanderia','spa','academia') NOT NULL,
  `valor` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `transacao`
--

INSERT INTO `transacao` (`id`, `reserva_id`, `bar_id`, `restaurante_id`, `lavanderia_id`, `spa_id`, `academia_id`, `tipo_servico`, `valor`) VALUES
(2, 1, 6, NULL, NULL, NULL, NULL, 'bar', 21.50),
(3, 1, 8, NULL, NULL, NULL, NULL, 'bar', 18.50);

-- --------------------------------------------------------

--
-- Table structure for table `turno`
--

CREATE TABLE `turno` (
  `id` int(11) NOT NULL,
  `tipo` varchar(20) DEFAULT NULL,
  `horario_inicio` time DEFAULT NULL,
  `horario_termino` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_nopad_ci;

--
-- Dumping data for table `turno`
--

INSERT INTO `turno` (`id`, `tipo`, `horario_inicio`, `horario_termino`) VALUES
(1, 'Manhã', '08:00:00', '12:00:00'),
(2, 'Tarde', '13:00:00', '17:00:00'),
(3, 'Noite', '18:00:00', '22:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `academia`
--
ALTER TABLE `academia`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bar`
--
ALTER TABLE `bar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fatura`
--
ALTER TABLE `fatura`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reserva_id` (`reserva_id`);

--
-- Indexes for table `folga`
--
ALTER TABLE `folga`
  ADD PRIMARY KEY (`id`),
  ADD KEY `funcionario_id` (`funcionario_id`);

--
-- Indexes for table `folha_pagamento`
--
ALTER TABLE `folha_pagamento`
  ADD PRIMARY KEY (`id`),
  ADD KEY `funcionario_id` (`funcionario_id`);

--
-- Indexes for table `frigobar`
--
ALTER TABLE `frigobar`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quarto_id` (`quarto_id`),
  ADD KEY `item_id` (`item_id`);

--
-- Indexes for table `frigobar_items`
--
ALTER TABLE `frigobar_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `funcionario`
--
ALTER TABLE `funcionario`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_turno_id` (`turno_id`);

--
-- Indexes for table `hospede`
--
ALTER TABLE `hospede`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ingredientes`
--
ALTER TABLE `ingredientes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lavanderia`
--
ALTER TABLE `lavanderia`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quarto`
--
ALTER TABLE `quarto`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registro_horas_trabalhadas`
--
ALTER TABLE `registro_horas_trabalhadas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `funcionario_id` (`funcionario_id`),
  ADD KEY `turno_id` (`turno_id`);

--
-- Indexes for table `reserva`
--
ALTER TABLE `reserva`
  ADD PRIMARY KEY (`id`),
  ADD KEY `funcionario_id` (`funcionario_id`),
  ADD KEY `quarto_id` (`quarto_id`),
  ADD KEY `hospede_id` (`hospede_id`);

--
-- Indexes for table `restaurante`
--
ALTER TABLE `restaurante`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `spa`
--
ALTER TABLE `spa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transacao`
--
ALTER TABLE `transacao`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_reserva_id` (`reserva_id`),
  ADD KEY `fk_bar_id` (`bar_id`),
  ADD KEY `fk_restaurante_id` (`restaurante_id`),
  ADD KEY `fk_lavanderia_id` (`lavanderia_id`),
  ADD KEY `fk_spa_id` (`spa_id`),
  ADD KEY `fk_academia_id` (`academia_id`);

--
-- Indexes for table `turno`
--
ALTER TABLE `turno`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `academia`
--
ALTER TABLE `academia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `bar`
--
ALTER TABLE `bar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT for table `fatura`
--
ALTER TABLE `fatura`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `folga`
--
ALTER TABLE `folga`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `folha_pagamento`
--
ALTER TABLE `folha_pagamento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `frigobar`
--
ALTER TABLE `frigobar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=401;

--
-- AUTO_INCREMENT for table `frigobar_items`
--
ALTER TABLE `frigobar_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `funcionario`
--
ALTER TABLE `funcionario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `hospede`
--
ALTER TABLE `hospede`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ingredientes`
--
ALTER TABLE `ingredientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=182;

--
-- AUTO_INCREMENT for table `lavanderia`
--
ALTER TABLE `lavanderia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `quarto`
--
ALTER TABLE `quarto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `registro_horas_trabalhadas`
--
ALTER TABLE `registro_horas_trabalhadas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1024;

--
-- AUTO_INCREMENT for table `reserva`
--
ALTER TABLE `reserva`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `restaurante`
--
ALTER TABLE `restaurante`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `spa`
--
ALTER TABLE `spa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `transacao`
--
ALTER TABLE `transacao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `turno`
--
ALTER TABLE `turno`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `fatura`
--
ALTER TABLE `fatura`
  ADD CONSTRAINT `fatura_ibfk_1` FOREIGN KEY (`reserva_id`) REFERENCES `reserva` (`id`);

--
-- Constraints for table `folga`
--
ALTER TABLE `folga`
  ADD CONSTRAINT `folga_ibfk_1` FOREIGN KEY (`funcionario_id`) REFERENCES `funcionario` (`id`);

--
-- Constraints for table `folha_pagamento`
--
ALTER TABLE `folha_pagamento`
  ADD CONSTRAINT `folha_pagamento_ibfk_1` FOREIGN KEY (`funcionario_id`) REFERENCES `funcionario` (`id`);

--
-- Constraints for table `frigobar`
--
ALTER TABLE `frigobar`
  ADD CONSTRAINT `frigobar_ibfk_1` FOREIGN KEY (`quarto_id`) REFERENCES `quarto` (`id`),
  ADD CONSTRAINT `frigobar_ibfk_2` FOREIGN KEY (`item_id`) REFERENCES `frigobar_items` (`id`);

--
-- Constraints for table `funcionario`
--
ALTER TABLE `funcionario`
  ADD CONSTRAINT `fk_turno_id` FOREIGN KEY (`turno_id`) REFERENCES `turno` (`id`);

--
-- Constraints for table `registro_horas_trabalhadas`
--
ALTER TABLE `registro_horas_trabalhadas`
  ADD CONSTRAINT `registro_horas_trabalhadas_ibfk_1` FOREIGN KEY (`funcionario_id`) REFERENCES `funcionario` (`id`),
  ADD CONSTRAINT `registro_horas_trabalhadas_ibfk_2` FOREIGN KEY (`turno_id`) REFERENCES `turno` (`id`);

--
-- Constraints for table `reserva`
--
ALTER TABLE `reserva`
  ADD CONSTRAINT `reserva_ibfk_1` FOREIGN KEY (`funcionario_id`) REFERENCES `funcionario` (`id`),
  ADD CONSTRAINT `reserva_ibfk_2` FOREIGN KEY (`quarto_id`) REFERENCES `quarto` (`id`),
  ADD CONSTRAINT `reserva_ibfk_3` FOREIGN KEY (`hospede_id`) REFERENCES `hospede` (`id`);

--
-- Constraints for table `transacao`
--
ALTER TABLE `transacao`
  ADD CONSTRAINT `fk_academia_id` FOREIGN KEY (`academia_id`) REFERENCES `academia` (`id`),
  ADD CONSTRAINT `fk_bar_id` FOREIGN KEY (`bar_id`) REFERENCES `bar` (`id`),
  ADD CONSTRAINT `fk_lavanderia_id` FOREIGN KEY (`lavanderia_id`) REFERENCES `lavanderia` (`id`),
  ADD CONSTRAINT `fk_reserva_id` FOREIGN KEY (`reserva_id`) REFERENCES `reserva` (`id`),
  ADD CONSTRAINT `fk_restaurante_id` FOREIGN KEY (`restaurante_id`) REFERENCES `restaurante` (`id`),
  ADD CONSTRAINT `fk_spa_id` FOREIGN KEY (`spa_id`) REFERENCES `spa` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
