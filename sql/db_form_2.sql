-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-05-2024 a las 03:51:57
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_form`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `candidate`
--

CREATE TABLE `candidate` (
  `id_candidate` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `id_commune` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `candidate`
--

INSERT INTO `candidate` (`id_candidate`, `name`, `id_commune`) VALUES
(1, 'Jose Galdames', 203),
(2, 'Nicolas Castro', 52),
(3, 'Juan Aries', 147),
(4, 'Jose Vergara', 295),
(5, 'Juan Pérez', 67),
(6, 'María González', 88),
(7, 'Pedro Rodríguez', 243),
(8, 'Luisa Fernández', 306),
(9, 'Diego Gómez', 134),
(10, 'Ana Martínez', 91),
(11, 'Roberto Sánchez', 45),
(12, 'Carolina López', 289),
(13, 'Andrés Pérez', 176),
(14, 'Gabriela Rodríguez', 201),
(15, 'Alejandro Soto', 99),
(16, 'Fernanda Rojas', 305),
(17, 'Ricardo Díaz', 12),
(18, 'Camila Morales', 178),
(19, 'Javier Silva', 74),
(20, 'Isabel Gutiérrez', 268),
(21, 'Rodrigo Muñoz', 156),
(22, 'Paulina Herrera', 293),
(23, 'Mauricio Leiva', 84),
(24, 'Carolina Valenzuela', 219),
(25, 'Daniela Martínez', 45),
(26, 'Manuel González', 302),
(27, 'Valentina Sánchez', 13),
(28, 'Sebastián Pérez', 259),
(29, 'Natalia Rodríguez', 199),
(30, 'Felipe Morales', 3),
(31, 'Isabella López', 150),
(32, 'Diego Valenzuela', 120),
(33, 'Constanza Herrera', 281),
(34, 'Gabriel Rojas', 176),
(35, 'Alejandro Soto', 294),
(36, 'Fernanda Rojas', 137),
(37, 'Ricardo Díaz', 211),
(38, 'Camila Morales', 84),
(39, 'Javier Silva', 78),
(40, 'Isabel Gutiérrez', 256),
(41, 'Rodrigo Muñoz', 96),
(42, 'Paulina Herrera', 167),
(43, 'Mauricio Leiva', 288),
(44, 'Carolina Valenzuela', 65),
(45, 'Daniela Martínez', 154),
(46, 'Manuel González', 201),
(47, 'Valentina Sánchez', 77),
(48, 'Sebastián Pérez', 102),
(49, 'Natalia Rodríguez', 234),
(50, 'Felipe Morales', 90),
(51, 'Isabella López', 300),
(52, 'Diego Valenzuela', 166),
(53, 'Constanza Herrera', 203),
(54, 'Gabriel Rojas', 98),
(55, 'Alejandro Soto', 187),
(56, 'Fernanda Rojas', 231),
(57, 'Ricardo Díaz', 120),
(58, 'Camila Morales', 55),
(59, 'Javier Silva', 249),
(60, 'Isabel Gutiérrez', 160),
(61, 'Rodrigo Muñoz', 289),
(62, 'Paulina Herrera', 77),
(63, 'Mauricio Leiva', 193),
(64, 'Carolina Valenzuela', 68),
(65, 'Daniela Martínez', 146),
(66, 'Manuel González', 30),
(67, 'Valentina Sánchez', 92),
(68, 'Sebastián Pérez', 237),
(69, 'Natalia Rodríguez', 166),
(70, 'Felipe Morales', 57),
(71, 'Isabella López', 244),
(72, 'Diego Valenzuela', 17),
(73, 'Constanza Herrera', 273),
(74, 'Gabriel Rojas', 294),
(75, 'Alejandro Soto', 53),
(76, 'Fernanda Rojas', 198),
(77, 'Ricardo Díaz', 150),
(78, 'Camila Morales', 200),
(79, 'Javier Silva', 121),
(80, 'Isabel Gutiérrez', 101),
(81, 'Rodrigo Muñoz', 267),
(82, 'Paulina Herrera', 133),
(83, 'Mauricio Leiva', 220),
(84, 'Carolina Valenzuela', 186),
(85, 'Daniela Martínez', 122),
(86, 'Manuel González', 180),
(87, 'Valentina Sánchez', 301),
(88, 'Sebastián Pérez', 160),
(89, 'Natalia Rodríguez', 128),
(90, 'Felipe Morales', 292),
(91, 'Isabella López', 173),
(92, 'Diego Valenzuela', 241),
(93, 'Constanza Herrera', 139),
(94, 'Gabriel Rojas', 305),
(95, 'Alejandro Soto', 94),
(96, 'Fernanda Rojas', 99),
(97, 'Ricardo Díaz', 214),
(98, 'Camila Morales', 86),
(99, 'Javier Silva', 210),
(100, 'Isabel Gutiérrez', 147),
(101, 'Rodrigo Muñoz', 47),
(102, 'Paulina Herrera', 156),
(103, 'Mauricio Leiva', 225),
(104, 'Carolina Valenzuela', 300),
(105, 'Daniela Martínez', 197),
(106, 'Manuel González', 165),
(107, 'Valentina Sánchez', 203),
(108, 'Sebastián Pérez', 76),
(109, 'Natalia Rodríguez', 135),
(110, 'Felipe Morales', 190),
(111, 'Isabella López', 289),
(112, 'Diego Valenzuela', 22),
(113, 'Constanza Herrera', 284),
(114, 'Gabriel Rojas', 164),
(115, 'Alejandro Soto', 212),
(116, 'Fernanda Rojas', 297),
(117, 'Ricardo Díaz', 145),
(118, 'Camila Morales', 239),
(119, 'Javier Silva', 165),
(120, 'Isabel Gutiérrez', 94),
(121, 'Rodrigo Muñoz', 303),
(122, 'Paulina Herrera', 141),
(123, 'Mauricio Leiva', 268),
(124, 'Carolina Valenzuela', 103),
(125, 'Daniela Martínez', 182),
(126, 'Manuel González', 301),
(127, 'Valentina Sánchez', 176),
(128, 'Sebastián Pérez', 292),
(129, 'Natalia Rodríguez', 47),
(130, 'Felipe Morales', 218),
(131, 'Isabella López', 23),
(132, 'Diego Valenzuela', 99),
(133, 'Constanza Herrera', 216),
(134, 'Gabriel Rojas', 245),
(135, 'Alejandro Soto', 203),
(136, 'Fernanda Rojas', 66),
(137, 'Ricardo Díaz', 219),
(138, 'Camila Morales', 282),
(139, 'Javier Silva', 167),
(140, 'Isabel Gutiérrez', 151),
(141, 'Rodrigo Muñoz', 105),
(142, 'Paulina Herrera', 198),
(143, 'Mauricio Leiva', 184),
(144, 'Carolina Valenzuela', 202),
(145, 'Daniela Martínez', 263),
(146, 'Manuel González', 200),
(147, 'Valentina Sánchez', 73),
(148, 'Sebastián Pérez', 129),
(149, 'Natalia Rodríguez', 168),
(150, 'Felipe Morales', 87),
(151, 'Isabella López', 241),
(152, 'Diego Valenzuela', 134),
(153, 'Constanza Herrera', 281),
(154, 'Gabriel Rojas', 205),
(155, 'Alejandro Soto', 199),
(156, 'Fernanda Rojas', 164),
(157, 'Ricardo Díaz', 56),
(158, 'Camila Morales', 111),
(159, 'Javier Silva', 268),
(160, 'Isabel Gutiérrez', 13),
(161, 'Rodrigo Muñoz', 89),
(162, 'Paulina Herrera', 175),
(163, 'Mauricio Leiva', 270),
(164, 'Carolina Valenzuela', 161),
(165, 'Daniela Martínez', 123),
(166, 'Manuel González', 167),
(167, 'Valentina Sánchez', 178),
(168, 'Sebastián Pérez', 198),
(169, 'Natalia Rodríguez', 92),
(170, 'Felipe Morales', 100),
(171, 'Isabella López', 260),
(172, 'Diego Valenzuela', 199),
(173, 'Constanza Herrera', 56),
(174, 'Gabriel Rojas', 188),
(175, 'Alejandro Soto', 265),
(176, 'Fernanda Rojas', 200),
(177, 'Ricardo Díaz', 91),
(178, 'Camila Morales', 244),
(179, 'Javier Silva', 147),
(180, 'Isabel Gutiérrez', 169),
(181, 'Rodrigo Muñoz', 146),
(182, 'Paulina Herrera', 204),
(183, 'Mauricio Leiva', 287),
(184, 'Carolina Valenzuela', 173),
(185, 'Daniela Martínez', 97),
(186, 'Manuel González', 210),
(187, 'Valentina Sánchez', 49),
(188, 'Sebastián Pérez', 295),
(189, 'Natalia Rodríguez', 276),
(190, 'Felipe Morales', 94),
(191, 'Isabella López', 238),
(192, 'Diego Valenzuela', 154),
(193, 'Constanza Herrera', 152),
(194, 'Gabriel Rojas', 139),
(195, 'Alejandro Soto', 187),
(196, 'Fernanda Rojas', 200),
(197, 'Ricardo Díaz', 87),
(198, 'Camila Morales', 261),
(199, 'Javier Silva', 305),
(200, 'Isabel Gutiérrez', 111),
(201, 'Rodrigo Muñoz', 191),
(202, 'Paulina Herrera', 201),
(203, 'Mauricio Leiva', 134),
(204, 'Carolina Valenzuela', 193),
(205, 'Daniela Martínez', 200),
(206, 'Manuel González', 256),
(207, 'Valentina Sánchez', 88);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `communes`
--

CREATE TABLE `communes` (
  `id_commune` int(11) NOT NULL,
  `name_commune` varchar(100) NOT NULL,
  `id_region` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `communes`
--

INSERT INTO `communes` (`id_commune`, `name_commune`, `id_region`) VALUES
(1, 'Arica', 1),
(2, 'Camarones', 1),
(3, 'Putre', 1),
(4, 'General Lagos', 1),
(5, 'Iquique', 2),
(6, 'Alto Hospicio', 2),
(7, 'Pozo Almonte', 2),
(8, 'Camiña', 2),
(9, 'Colchane', 2),
(10, 'Huara', 2),
(11, 'Pica', 2),
(12, 'Antofagasta', 3),
(13, 'Mejillones', 3),
(14, 'Sierra Gorda', 3),
(15, 'Taltal', 3),
(16, 'Calama', 3),
(17, 'Ollagüe', 3),
(18, 'San Pedro de Atacama', 3),
(19, 'Tocopilla', 3),
(20, 'María Elena', 3),
(21, 'Copiapó', 4),
(22, 'Caldera', 4),
(23, 'Tierra Amarilla', 4),
(24, 'Chañaral', 4),
(25, 'Diego de Almagro', 4),
(26, 'Vallenar', 4),
(27, 'Alto del Carmen', 4),
(28, 'Freirina', 4),
(29, 'Huasco', 4),
(30, 'La Serena', 5),
(31, 'Coquimbo', 5),
(32, 'Andacollo', 5),
(33, 'La Higuera', 5),
(34, 'Paihuano', 5),
(35, 'Vicuña', 5),
(36, 'Illapel', 5),
(37, 'Canela', 5),
(38, 'Los Vilos', 5),
(39, 'Salamanca', 5),
(40, 'Ovalle', 5),
(41, 'Combarbalá', 5),
(42, 'Monte Patria', 5),
(43, 'Punitaqui', 5),
(44, 'Río Hurtado', 5),
(45, 'Valparaíso', 6),
(46, 'Casablanca', 6),
(47, 'Concón', 6),
(48, 'Juan Fernández', 6),
(49, 'Puchuncaví', 6),
(50, 'Quintero', 6),
(51, 'Viña del Mar', 6),
(52, 'Isla de Pascua', 6),
(53, 'Los Andes', 6),
(54, 'Calle Larga', 6),
(55, 'Rinconada', 6),
(56, 'San Esteban', 6),
(57, 'La Ligua', 6),
(58, 'Cabildo', 6),
(59, 'Papudo', 6),
(60, 'Petorca', 6),
(61, 'Zapallar', 6),
(62, 'Quillota', 6),
(63, 'Calera', 6),
(64, 'Hijuelas', 6),
(65, 'La Cruz', 6),
(66, 'Nogales', 6),
(67, 'San Antonio', 6),
(68, 'Algarrobo', 6),
(69, 'Cartagena', 6),
(70, 'El Quisco', 6),
(71, 'El Tabo', 6),
(72, 'Santo Domingo', 6),
(73, 'San Felipe', 6),
(74, 'Catemu', 6),
(75, 'Llaillay', 6),
(76, 'Panquehue', 6),
(77, 'Putaendo', 6),
(78, 'Santa María', 6),
(79, 'Quilpué', 6),
(80, 'Limache', 6),
(81, 'Olmué', 6),
(82, 'Villa Alemana', 6),
(83, 'Santiago', 7),
(84, 'Cerrillos', 7),
(85, 'Cerro Navia', 7),
(86, 'Conchalí', 7),
(87, 'El Bosque', 7),
(88, 'Estación Central', 7),
(89, 'Huechuraba', 7),
(90, 'Independencia', 7),
(91, 'La Cisterna', 7),
(92, 'La Florida', 7),
(93, 'La Granja', 7),
(94, 'La Pintana', 7),
(95, 'La Reina', 7),
(96, 'Las Condes', 7),
(97, 'Lo Barnechea', 7),
(98, 'Lo Espejo', 7),
(99, 'Lo Prado', 7),
(100, 'Macul', 7),
(101, 'Maipú', 7),
(102, 'Ñuñoa', 7),
(103, 'Pedro Aguirre Cerda', 7),
(104, 'Peñalolén', 7),
(105, 'Providencia', 7),
(106, 'Pudahuel', 7),
(107, 'Quilicura', 7),
(108, 'Quinta Normal', 7),
(109, 'Recoleta', 7),
(110, 'Renca', 7),
(111, 'San Joaquín', 7),
(112, 'San Miguel', 7),
(113, 'San Ramón', 7),
(114, 'Vitacura', 7),
(115, 'Puente Alto', 7),
(116, 'Pirque', 7),
(117, 'San José de Maipo', 7),
(118, 'Colina', 7),
(119, 'Lampa', 7),
(120, 'Tiltil', 7),
(121, 'Rancagua', 8),
(122, 'Codegua', 8),
(123, 'Coinco', 8),
(124, 'Coltauco', 8),
(125, 'Doñihue', 8),
(126, 'Graneros', 8),
(127, 'Las Cabras', 8),
(128, 'Machalí', 8),
(129, 'Malloa', 8),
(130, 'Mostazal', 8),
(131, 'Olivar', 8),
(132, 'Peumo', 8),
(133, 'Pichidegua', 8),
(134, 'Quinta de Tilcoco', 8),
(135, 'Rengo', 8),
(136, 'Requínoa', 8),
(137, 'San Vicente', 8),
(138, 'Pichilemu', 8),
(139, 'La Estrella', 8),
(140, 'Litueche', 8),
(141, 'Marchigüe', 8),
(142, 'Navidad', 8),
(143, 'Paredones', 8),
(144, 'Talca', 9),
(145, 'Constitución', 9),
(146, 'Curepto', 9),
(147, 'Empedrado', 9),
(148, 'Maule', 9),
(149, 'Pelarco', 9),
(150, 'Pencahue', 9),
(151, 'Río Claro', 9),
(152, 'San Clemente', 9),
(153, 'San Rafael', 9),
(154, 'Cauquenes', 9),
(155, 'Chanco', 9),
(156, 'Pelluhue', 9),
(157, 'Curicó', 9),
(158, 'Hualañé', 9),
(159, 'Licantén', 9),
(160, 'Molina', 9),
(161, 'Rauco', 9),
(162, 'Romeral', 9),
(163, 'Sagrada Familia', 9),
(164, 'Teno', 9),
(165, 'Vichuquén', 9),
(166, 'Linares', 9),
(167, 'Colbún', 9),
(168, 'Longaví', 9),
(169, 'Parral', 9),
(170, 'Retiro', 9),
(171, 'San Javier', 9),
(172, 'Villa Alegre', 9),
(173, 'Yerbas Buenas', 9),
(174, 'Chillán', 10),
(175, 'Bulnes', 10),
(176, 'Cobquecura', 10),
(177, 'Coelemu', 10),
(178, 'Coihueco', 10),
(179, 'Chillán Viejo', 10),
(180, 'El Carmen', 10),
(181, 'Ninhue', 10),
(182, 'Ñiquén', 10),
(183, 'Pemuco', 10),
(184, 'Pinto', 10),
(185, 'Portezuelo', 10),
(186, 'Quillón', 10),
(187, 'Quirihue', 10),
(188, 'Ránquil', 10),
(189, 'San Carlos', 10),
(190, 'San Fabián', 10),
(191, 'San Ignacio', 10),
(192, 'San Nicolás', 10),
(193, 'Treguaco', 10),
(194, 'Yungay', 10),
(195, 'Concepción', 11),
(196, 'Coronel', 11),
(197, 'Chiguayante', 11),
(198, 'Florida', 11),
(199, 'Hualqui', 11),
(200, 'Lota', 11),
(201, 'Penco', 11),
(202, 'San Pedro de la Paz', 11),
(203, 'Santa Juana', 11),
(204, 'Talcahuano', 11),
(205, 'Tomé', 11),
(206, 'Hualpén', 11),
(207, 'Lebu', 11),
(208, 'Arauco', 11),
(209, 'Cañete', 11),
(210, 'Contulmo', 11),
(211, 'Curanilahue', 11),
(212, 'Los Álamos', 11),
(213, 'Tirúa', 11),
(214, 'Los Ángeles', 11),
(215, 'Antuco', 11),
(216, 'Cabrero', 11),
(217, 'Laja', 11),
(218, 'Mulchén', 11),
(219, 'Nacimiento', 11),
(220, 'Negrete', 11),
(221, 'Quilaco', 11),
(222, 'Quilleco', 11),
(223, 'San Rosendo', 11),
(224, 'Santa Bárbara', 11),
(225, 'Tucapel', 11),
(226, 'Yumbel', 11),
(227, 'Alto Biobío', 11),
(228, 'Temuco', 12),
(229, 'Carahue', 12),
(230, 'Cunco', 12),
(231, 'Curarrehue', 12),
(232, 'Freire', 12),
(233, 'Galvarino', 12),
(234, 'Gorbea', 12),
(235, 'Lautaro', 12),
(236, 'Loncoche', 12),
(237, 'Melipeuco', 12),
(238, 'Nueva Imperial', 12),
(239, 'Padre Las Casas', 12),
(240, 'Perquenco', 12),
(241, 'Pitrufquén', 12),
(242, 'Pucón', 12),
(243, 'Saavedra', 12),
(244, 'Teodoro Schmidt', 12),
(245, 'Toltén', 12),
(246, 'Vilcún', 12),
(247, 'Villarrica', 12),
(248, 'Cholchol', 12),
(249, 'Valdivia', 13),
(250, 'Corral', 13),
(251, 'Lanco', 13),
(252, 'Los Lagos', 13),
(253, 'Máfil', 13),
(254, 'Mariquina', 13),
(255, 'Paillaco', 13),
(256, 'Panguipulli', 13),
(257, 'La Unión', 13),
(258, 'Futrono', 13),
(259, 'Lago Ranco', 13),
(260, 'Río Bueno', 13),
(261, 'Puerto Montt', 14),
(262, 'Calbuco', 14),
(263, 'Cochamó', 14),
(264, 'Fresia', 14),
(265, 'Frutillar', 14),
(266, 'Los Muermos', 14),
(267, 'Llanquihue', 14),
(268, 'Maullín', 14),
(269, 'Puerto Varas', 14),
(270, 'Castro', 14),
(271, 'Ancud', 14),
(272, 'Chonchi', 14),
(273, 'Curaco de Vélez', 14),
(274, 'Dalcahue', 14),
(275, 'Puqueldón', 14),
(276, 'Queilén', 14),
(277, 'Quellón', 14),
(278, 'Quemchi', 14),
(279, 'Quinchao', 14),
(280, 'Osorno', 14),
(281, 'Puerto Octay', 14),
(282, 'Purranque', 14),
(283, 'Puyehue', 14),
(284, 'Río Negro', 14),
(285, 'San Juan de la Costa', 14),
(286, 'San Pablo', 14),
(287, 'Coyhaique', 15),
(288, 'Lago Verde', 15),
(289, 'Aysén', 15),
(290, 'Cisnes', 15),
(291, 'Guaitecas', 15),
(292, 'Cochrane', 15),
(293, 'O\'Higgins', 15),
(294, 'Tortel', 15),
(295, 'Chile Chico', 15),
(296, 'Río Ibáñez', 15),
(297, 'Punta Arenas', 16),
(298, 'Laguna Blanca', 16),
(299, 'Río Verde', 16),
(300, 'San Gregorio', 16),
(301, 'Cabo de Hornos (Ex Navarino)', 16),
(302, 'Antártica', 16),
(303, 'Porvenir', 16),
(304, 'Primavera', 16),
(305, 'Timaukel', 16),
(306, 'Natales', 16),
(307, 'Torres del Paine', 16);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `person`
--

CREATE TABLE `person` (
  `id_person` int(11) NOT NULL,
  `name_lastname` varchar(100) NOT NULL,
  `alias` varchar(100) NOT NULL,
  `rut` varchar(25) NOT NULL,
  `email` varchar(150) NOT NULL,
  `id_commune` int(11) NOT NULL,
  `id_region` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `redes`
--

CREATE TABLE `redes` (
  `id_red` int(11) NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `redes`
--

INSERT INTO `redes` (`id_red`, `name`) VALUES
(1, 'Web'),
(2, 'TV'),
(3, 'Redes Sociales'),
(4, 'Amigo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `regions`
--

CREATE TABLE `regions` (
  `id_region` int(11) NOT NULL,
  `name_region` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `regions`
--

INSERT INTO `regions` (`id_region`, `name_region`) VALUES
(1, 'Arica y Parinacota'),
(2, 'Tarapacá'),
(3, 'Antofagasta'),
(4, 'Atacama'),
(5, 'Coquimbo'),
(6, 'Valparaíso'),
(7, 'Metropolitana de Santiago'),
(8, 'Libertador General Bernardo O Higgins'),
(9, 'Maule'),
(10, 'Ñuble'),
(11, 'Biobío'),
(12, 'La Araucanía'),
(13, 'Los Ríos'),
(14, 'Los Lagos'),
(15, 'Aysén del General Carlos Ibáñez del Campo'),
(16, 'Magallanes y de la Antártica Chilena');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `votes`
--

CREATE TABLE `votes` (
  `id_vote` int(11) NOT NULL,
  `id_candidate` int(11) NOT NULL,
  `id_person` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `votes_red`
--

CREATE TABLE `votes_red` (
  `id_votes_red` int(11) NOT NULL,
  `id_vote` int(11) NOT NULL,
  `id_red` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `candidate`
--
ALTER TABLE `candidate`
  ADD PRIMARY KEY (`id_candidate`),
  ADD KEY `id_commune` (`id_commune`);

--
-- Indices de la tabla `communes`
--
ALTER TABLE `communes`
  ADD PRIMARY KEY (`id_commune`),
  ADD KEY `id_region` (`id_region`);

--
-- Indices de la tabla `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`id_person`),
  ADD KEY `FK_person_commune` (`id_commune`),
  ADD KEY `FK_person_region` (`id_region`);

--
-- Indices de la tabla `redes`
--
ALTER TABLE `redes`
  ADD PRIMARY KEY (`id_red`);

--
-- Indices de la tabla `regions`
--
ALTER TABLE `regions`
  ADD PRIMARY KEY (`id_region`);

--
-- Indices de la tabla `votes`
--
ALTER TABLE `votes`
  ADD PRIMARY KEY (`id_vote`),
  ADD KEY `id_candidate` (`id_candidate`),
  ADD KEY `id_person` (`id_person`);

--
-- Indices de la tabla `votes_red`
--
ALTER TABLE `votes_red`
  ADD PRIMARY KEY (`id_votes_red`),
  ADD KEY `id_vote` (`id_vote`),
  ADD KEY `id_red` (`id_red`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `candidate`
--
ALTER TABLE `candidate`
  MODIFY `id_candidate` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=208;

--
-- AUTO_INCREMENT de la tabla `communes`
--
ALTER TABLE `communes`
  MODIFY `id_commune` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=308;

--
-- AUTO_INCREMENT de la tabla `person`
--
ALTER TABLE `person`
  MODIFY `id_person` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `redes`
--
ALTER TABLE `redes`
  MODIFY `id_red` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `votes`
--
ALTER TABLE `votes`
  MODIFY `id_vote` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `votes_red`
--
ALTER TABLE `votes_red`
  MODIFY `id_votes_red` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `candidate`
--
ALTER TABLE `candidate`
  ADD CONSTRAINT `candidate_ibfk_1` FOREIGN KEY (`id_commune`) REFERENCES `communes` (`id_commune`);

--
-- Filtros para la tabla `communes`
--
ALTER TABLE `communes`
  ADD CONSTRAINT `communes_ibfk_1` FOREIGN KEY (`id_region`) REFERENCES `regions` (`id_region`);

--
-- Filtros para la tabla `person`
--
ALTER TABLE `person`
  ADD CONSTRAINT `FK_person_commune` FOREIGN KEY (`id_commune`) REFERENCES `communes` (`id_commune`),
  ADD CONSTRAINT `FK_person_region` FOREIGN KEY (`id_region`) REFERENCES `regions` (`id_region`);

--
-- Filtros para la tabla `votes`
--
ALTER TABLE `votes`
  ADD CONSTRAINT `votes_ibfk_1` FOREIGN KEY (`id_candidate`) REFERENCES `candidate` (`id_candidate`),
  ADD CONSTRAINT `votes_ibfk_2` FOREIGN KEY (`id_person`) REFERENCES `person` (`id_person`);

--
-- Filtros para la tabla `votes_red`
--
ALTER TABLE `votes_red`
  ADD CONSTRAINT `votes_red_ibfk_1` FOREIGN KEY (`id_vote`) REFERENCES `votes` (`id_vote`),
  ADD CONSTRAINT `votes_red_ibfk_2` FOREIGN KEY (`id_red`) REFERENCES `redes` (`id_red`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
