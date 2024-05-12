/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

CREATE TABLE `candidate` (
  `id_candidate` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `commune` varchar(100) DEFAULT NULL,
  `region` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_candidate`)
) ENGINE=InnoDB AUTO_INCREMENT=138 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `redes` (
  `id_red` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_red`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `votes` (
  `id_vote` int NOT NULL AUTO_INCREMENT,
  `name_lastname` varchar(30) NOT NULL,
  `alias` varchar(20) NOT NULL,
  `rut` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `email` varchar(30) NOT NULL,
  `region` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `commune` varchar(20) NOT NULL,
  `id_candidate` int DEFAULT NULL,
  `id_red` int DEFAULT NULL,
  PRIMARY KEY (`id_vote`),
  KEY `id_candidate` (`id_candidate`),
  KEY `id_red` (`id_red`),
  CONSTRAINT `votes_ibfk_1` FOREIGN KEY (`id_candidate`) REFERENCES `candidate` (`id_candidate`),
  CONSTRAINT `votes_ibfk_2` FOREIGN KEY (`id_red`) REFERENCES `redes` (`id_red`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `candidate` (`id_candidate`, `name`, `commune`, `region`) VALUES
(1, 'JOSE PEREIRA', 'Valparaíso', 'Valparaíso');
INSERT INTO `candidate` (`id_candidate`, `name`, `commune`, `region`) VALUES
(2, 'Maria Gallardo', 'Cerrillos', 'Región Metropolitana de Santiago');
INSERT INTO `candidate` (`id_candidate`, `name`, `commune`, `region`) VALUES
(3, 'Maria Gallardo', 'Arica', 'Arica y Parinacota');
INSERT INTO `candidate` (`id_candidate`, `name`, `commune`, `region`) VALUES
(4, 'Jose Galdames', 'Camarones', 'Arica y Parinacota'),
(5, 'Nicolas Castro', 'Putre', 'Arica y Parinacota'),
(6, 'Juan Aries', 'General Lagos', 'Arica y Parinacota'),
(7, 'Jose Vergara', 'Arica', 'Arica y Parinacota'),
(8, 'Juan Pérez', 'Valdivia', 'Región de Los Ríos'),
(9, 'María González', 'Talca', 'Región del Maule'),
(10, 'Pedro Rodríguez', 'Concepción', 'Región del Biobío'),
(11, 'Luisa Fernández', 'Punta Arenas', 'Región de Magallanes y de la Antártica Chilena'),
(12, 'Diego Gómez', 'Santiago', 'Región Metropolitana de Santiago'),
(13, 'Ana Martínez', 'Arica', 'Arica y Parinacota'),
(14, 'Roberto Sánchez', 'Rancagua', 'Región del Libertador Gral. Bernardo O’Higgins'),
(15, 'Carolina López', 'Viña del Mar', 'Región de Valparaíso'),
(16, 'Andrés Pérez', 'Puerto Montt', 'Región de Los Lagos'),
(17, 'Gabriela Rodríguez', 'Curicó', 'Región del Maule'),
(18, 'Alejandro Soto', 'Los Ángeles', 'Región del Biobío'),
(19, 'Fernanda Rojas', 'La Serena', 'Región de Coquimbo'),
(20, 'Ricardo Díaz', 'La Unión', 'Región de Los Ríos'),
(21, 'Camila Morales', 'Vallenar', 'Región de Atacama'),
(22, 'Javier Silva', 'San Fernando', 'Región del Libertador Gral. Bernardo O’Higgins'),
(23, 'Isabel Gutiérrez', 'Castro', 'Región de Los Lagos'),
(24, 'Rodrigo Muñoz', 'Coyhaique', 'Región de Aysén del Gral. Carlos Ibáñez del Campo'),
(25, 'Paulina Herrera', 'Iquique', 'Región de Tarapacá'),
(26, 'Mauricio Leiva', 'Curicó', 'Región del Maule'),
(27, 'Carolina Valenzuela', 'Calama', 'Región de Antofagasta'),
(28, 'Daniela Martínez', 'Viña del Mar', 'Región de Valparaíso'),
(29, 'Manuel González', 'Talca', 'Región del Maule'),
(30, 'Valentina Sánchez', 'Valdivia', 'Región de Los Ríos'),
(31, 'Sebastián Pérez', 'Antofagasta', 'Región de Antofagasta'),
(32, 'Natalia Rodríguez', 'Puerto Montt', 'Región de Los Lagos'),
(33, 'Felipe Morales', 'Concepción', 'Región del Biobío'),
(34, 'Isabella López', 'Iquique', 'Región de Tarapacá'),
(35, 'Diego Valenzuela', 'Santiago', 'Región Metropolitana de Santiago'),
(36, 'Constanza Herrera', 'La Serena', 'Región de Coquimbo'),
(37, 'Gabriel Rojas', 'Rancagua', 'Región del Libertador Gral. Bernardo O’Higgins'),
(38, 'Alejandro Soto', 'Los Ángeles', 'Región del Biobío'),
(39, 'Fernanda Rojas', 'La Serena', 'Región de Coquimbo'),
(40, 'Ricardo Díaz', 'La Unión', 'Región de Los Ríos'),
(41, 'Camila Morales', 'Vallenar', 'Región de Atacama'),
(42, 'Javier Silva', 'San Fernando', 'Región del Libertador Gral. Bernardo O’Higgins'),
(43, 'Isabel Gutiérrez', 'Castro', 'Región de Los Lagos'),
(44, 'Rodrigo Muñoz', 'Coyhaique', 'Región de Aysén del Gral. Carlos Ibáñez del Campo'),
(45, 'Paulina Herrera', 'Iquique', 'Región de Tarapacá'),
(46, 'Mauricio Leiva', 'Curicó', 'Región del Maule'),
(47, 'Carolina Valenzuela', 'Calama', 'Región de Antofagasta'),
(48, 'Daniela Martínez', 'Viña del Mar', 'Región de Valparaíso'),
(49, 'Manuel González', 'Talca', 'Región del Maule'),
(50, 'Valentina Sánchez', 'Valdivia', 'Región de Los Ríos'),
(51, 'Sebastián Pérez', 'Antofagasta', 'Región de Antofagasta'),
(52, 'Natalia Rodríguez', 'Puerto Montt', 'Región de Los Lagos'),
(53, 'Felipe Morales', 'Concepción', 'Región del Biobío'),
(54, 'Isabella López', 'Iquique', 'Región de Tarapacá'),
(55, 'Diego Valenzuela', 'Santiago', 'Región Metropolitana de Santiago'),
(56, 'Constanza Herrera', 'La Serena', 'Región de Coquimbo'),
(57, 'Gabriel Rojas', 'Rancagua', 'Región del Libertador Gral. Bernardo O’Higgins'),
(58, 'Marcela Muñoz', 'Curicó', 'Región del Maule'),
(59, 'Pedro Fernández', 'Viña del Mar', 'Región de Valparaíso'),
(60, 'Valeria Rojas', 'Puerto Montt', 'Región de Los Lagos'),
(61, 'Cristian Gutiérrez', 'Calama', 'Región de Antofagasta'),
(62, 'Fernanda Soto', 'La Serena', 'Región de Coquimbo'),
(63, 'Jorge Pérez', 'Santiago', 'Región Metropolitana de Santiago'),
(64, 'Catalina Silva', 'Iquique', 'Región de Tarapacá'),
(65, 'Luis González', 'Valdivia', 'Región de Los Ríos'),
(66, 'Carolina Reyes', 'Punta Arenas', 'Región de Magallanes y de la Antártica Chilena'),
(67, 'Andrea Martínez', 'Coyhaique', 'Región de Aysén del Gral. Carlos Ibáñez del Campo'),
(68, 'Pablo Torres', 'Concepción', 'Región del Biobío'),
(69, 'Valentina Herrera', 'La Serena', 'Región de Coquimbo'),
(70, 'Diego Sánchez', 'Viña del Mar', 'Región de Valparaíso'),
(71, 'Camila Rojas', 'Santiago', 'Región Metropolitana de Santiago'),
(72, 'Gabriel Muñoz', 'Puerto Montt', 'Región de Los Lagos'),
(73, 'Constanza Pérez', 'Antofagasta', 'Región de Antofagasta'),
(74, 'Javiera Gutiérrez', 'Valdivia', 'Región de Los Ríos'),
(75, 'Sebastián Silva', 'Iquique', 'Región de Tarapacá'),
(76, 'Antonia Martínez', 'Talca', 'Región del Maule'),
(77, 'Matías Rojas', 'Punta Arenas', 'Región de Magallanes y de la Antártica Chilena'),
(78, 'Isidora López', 'Viña del Mar', 'Región de Valparaíso'),
(79, 'Matías González', 'La Serena', 'Región de Coquimbo'),
(80, 'Francisca Soto', 'Iquique', 'Región de Tarapacá'),
(81, 'Ignacio Rojas', 'Valdivia', 'Región de Los Ríos'),
(82, 'Catalina Pérez', 'Antofagasta', 'Región de Antofagasta'),
(83, 'Juan Martínez', 'Concepción', 'Región del Biobío'),
(84, 'María Torres', 'Santiago', 'Región Metropolitana de Santiago'),
(85, 'Sebastián Sánchez', 'Puerto Montt', 'Región de Los Lagos'),
(86, 'Valentina Silva', 'Talca', 'Región del Maule'),
(87, 'Diego Gutiérrez', 'Punta Arenas', 'Región de Magallanes y de la Antártica Chilena'),
(88, 'Fernanda Martínez', 'Viña del Mar', 'Región de Valparaíso'),
(89, 'Pedro Rojas', 'La Serena', 'Región de Coquimbo'),
(90, 'Valentina González', 'Iquique', 'Región de Tarapacá'),
(91, 'Juan Soto', 'Valdivia', 'Región de Los Ríos'),
(92, 'Camila Pérez', 'Antofagasta', 'Región de Antofagasta'),
(93, 'Diego Martínez', 'Concepción', 'Región del Biobío'),
(94, 'Javiera Torres', 'Santiago', 'Región Metropolitana de Santiago'),
(95, 'Sebastián Rojas', 'Puerto Montt', 'Región de Los Lagos'),
(96, 'María Silva', 'Talca', 'Región del Maule'),
(97, 'Ignacio Gutiérrez', 'Punta Arenas', 'Región de Magallanes y de la Antártica Chilena'),
(98, 'Gabriela González', 'Viña del Mar', 'Región de Valparaíso'),
(99, 'Andrés Rojas', 'La Serena', 'Región de Coquimbo'),
(100, 'Constanza Soto', 'Iquique', 'Región de Tarapacá'),
(101, 'Miguel Pérez', 'Valdivia', 'Región de Los Ríos'),
(102, 'Natalia Martínez', 'Antofagasta', 'Región de Antofagasta'),
(103, 'Felipe Torres', 'Concepción', 'Región del Biobío'),
(104, 'Marcela Rojas', 'Santiago', 'Región Metropolitana de Santiago'),
(105, 'Catalina Sánchez', 'Puerto Montt', 'Región de Los Lagos'),
(106, 'Matías Silva', 'Talca', 'Región del Maule'),
(107, 'Valeria Gutiérrez', 'Punta Arenas', 'Región de Magallanes y de la Antártica Chilena'),
(108, 'Laura Pérez', 'Viña del Mar', 'Región de Valparaíso'),
(109, 'Juan Rojas', 'La Serena', 'Región de Coquimbo'),
(110, 'Gabriel Soto', 'Iquique', 'Región de Tarapacá'),
(111, 'Valentina Martínez', 'Valdivia', 'Región de Los Ríos'),
(112, 'Diego González', 'Antofagasta', 'Región de Antofagasta'),
(113, 'María Torres', 'Concepción', 'Región del Biobío'),
(114, 'Javiera Rojas', 'Santiago', 'Región Metropolitana de Santiago'),
(115, 'Andrés Sánchez', 'Puerto Montt', 'Región de Los Lagos'),
(116, 'Francisca Silva', 'Talca', 'Región del Maule'),
(117, 'Matías Gutiérrez', 'Punta Arenas', 'Región de Magallanes y de la Antártica Chilena'),
(118, 'Rodrigo Pérez', 'Viña del Mar', 'Región de Valparaíso'),
(119, 'Carolina Rojas', 'La Serena', 'Región de Coquimbo'),
(120, 'Pablo Soto', 'Iquique', 'Región de Tarapacá'),
(121, 'Javiera Martínez', 'Valdivia', 'Región de Los Ríos'),
(122, 'Fernando González', 'Antofagasta', 'Región de Antofagasta'),
(123, 'Marcela Torres', 'Concepción', 'Región del Biobío'),
(124, 'Camilo Rojas', 'Santiago', 'Región Metropolitana de Santiago'),
(125, 'Alejandra Sánchez', 'Puerto Montt', 'Región de Los Lagos'),
(126, 'Gonzalo Silva', 'Talca', 'Región del Maule'),
(127, 'Carla Gutiérrez', 'Punta Arenas', 'Región de Magallanes y de la Antártica Chilena'),
(128, 'Gabriela González', 'Viña del Mar', 'Región de Valparaíso'),
(129, 'Sebastián Rojas', 'La Serena', 'Región de Coquimbo'),
(130, 'Constanza Soto', 'Iquique', 'Región de Tarapacá'),
(131, 'Diego Martínez', 'Valdivia', 'Región de Los Ríos'),
(132, 'Natalia González', 'Antofagasta', 'Región de Antofagasta'),
(133, 'Juan Torres', 'Concepción', 'Región del Biobío'),
(134, 'María Rojas', 'Santiago', 'Región Metropolitana de Santiago'),
(135, 'Andrés Soto', 'Puerto Montt', 'Región de Los Lagos'),
(136, 'Carolina Silva', 'Talca', 'Región del Maule'),
(137, 'Pedro Gutiérrez', 'Punta Arenas', 'Región de Magallanes y de la Antártica Chilena');

INSERT INTO `redes` (`id_red`, `name`) VALUES
(1, 'Amigo');
INSERT INTO `redes` (`id_red`, `name`) VALUES
(2, 'TV');
INSERT INTO `redes` (`id_red`, `name`) VALUES
(3, 'Web');
INSERT INTO `redes` (`id_red`, `name`) VALUES
(4, 'Redes Sociales');

INSERT INTO `votes` (`id_vote`, `name_lastname`, `alias`, `rut`, `email`, `region`, `commune`, `id_candidate`, `id_red`) VALUES
(1, 'Ailin Porra', 'ailin', '9782263-8', 'ailindanae@gmail.com', 'Valparaíso', 'Valparaíso', 1, 3);
INSERT INTO `votes` (`id_vote`, `name_lastname`, `alias`, `rut`, `email`, `region`, `commune`, `id_candidate`, `id_red`) VALUES
(2, 'Ailin Porra', 'ailin', '9782263-8', 'ailindanae@gmail.com', 'Valparaíso', 'Valparaíso', 1, 3);
INSERT INTO `votes` (`id_vote`, `name_lastname`, `alias`, `rut`, `email`, `region`, `commune`, `id_candidate`, `id_red`) VALUES
(3, 'Ailin Porra', 'ailin', '9782263-8', 'ailindanae@gmail.com', 'Valparaíso', 'Valparaíso', 1, 3);
INSERT INTO `votes` (`id_vote`, `name_lastname`, `alias`, `rut`, `email`, `region`, `commune`, `id_candidate`, `id_red`) VALUES
(4, 'h', 'ailin', '9782263-8', 'ailindanae@gmail.com', 'Valparaíso', 'Valparaíso', 1, 3),
(5, 'h', 'ailin', '9782263-8', 'ailindanae@gmail.com', 'Región Metropolitana de Santiago', 'Cerrillos', 2, 3),
(6, 'h', 'ailin', '9782263-8', 'ailindanae@gmail.com', 'Región Metropolitana de Santiago', 'Cerrillos', 2, 3),
(7, 'h', 'ailin', '9782263-8', 'ailindanae@gmail.com', 'Región Metropolitana de Santiago', 'Cerrillos', 2, 3),
(8, 'Ailin Porra', 'ss', '9782263-8', 'ailindanae@gmail.com', 'Valparaíso', 'Viña del Mar', 98, 3);


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;