-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-08-2021 a las 22:58:56
-- Versión del servidor: 10.4.19-MariaDB
-- Versión de PHP: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `afiliados`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comites`
--

CREATE TABLE `comites` (
  `id_comite` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `comites`
--

INSERT INTO `comites` (`id_comite`, `nombre`) VALUES
(1, 'Empresarial'),
(2, 'Deportes'),
(3, 'Mujer'),
(4, 'Salud'),
(5, 'Obras');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `miembros`
--

CREATE TABLE `miembros` (
  `id_users` int(11) NOT NULL,
  `primer_nombre` varchar(255) NOT NULL,
  `segundo_nombre` varchar(255) DEFAULT NULL,
  `primer_apellido` varchar(255) NOT NULL,
  `segundo_apellido` varchar(255) DEFAULT NULL,
  `direccion` varchar(255) NOT NULL,
  `telefono` varchar(11) DEFAULT NULL,
  `celular` varchar(11) DEFAULT NULL,
  `observaciones` text DEFAULT NULL,
  `id_comite` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `miembros`
--

INSERT INTO `miembros` (`id_users`, `primer_nombre`, `segundo_nombre`, `primer_apellido`, `segundo_apellido`, `direccion`, `telefono`, `celular`, `observaciones`, `id_comite`) VALUES
(18, 'JHON', 'JAIME', '', 'MORALES', 'CR 43  76   12', '2330553', '', 'CONTINUA ', 1),
(21, 'JOSE', '', 'BERNARDO', 'GOMEZ', 'CLL 76  43a  32', '5731172', '', 'CONTINUA', 1),
(24, 'DORA', 'ELENA', 'RODRIGUEZ', '', 'CL 81  43 37', '5020583', '3043421967', 'CONTINUA', 1),
(36, 'WILMAR', '', 'ARBOLEDA', '', 'CR 42 A  82 79', '2631832', '', 'CONTINUA', 1),
(37, 'ELKIN', '', 'JARAMILLO', '', 'CR 42 A  82 79', '2631832', '', 'CONTINUA', 2),
(41, 'NICOLL', '', 'SANCHEZ', '', 'CR 42 A  77 72', '2331408', '', 'CONTINUA', 3),
(42, 'PAULA', 'ANDREA', 'JIMENEZ', '', 'CR 43  76   06', '', '3225025437', 'CONTINUA', 4),
(74, 'LUZ ', 'MARINA', 'GALLEGO', '', 'CLL 76  41 33', '2638955', '', 'CONTINUA', 3),
(76, 'MARTHA', 'INES', 'ARBELAEZ', '', 'CR 44  74 53', '5814046', '', 'CONTINUA', 3),
(88, 'MARIELA', 'GRACIELA', 'OSPINA', '', 'CR 43  83 62', '5092086', '', 'CONTINUA', 4),
(89, 'BLANCA', 'OLGA', 'OSPINA', '', 'CR 43  83 62', '', '3195850782', 'CONTINUA', 4),
(91, 'FANY', '', 'PALACIO', 'SALAZAR', 'CR 43  77  31', '5863313', '', 'CONTINUA', 1),
(96, 'LUZ', 'ELENA', 'ZAPATA', '', 'CR 43 A  74   18', '2129714', '', 'CONTINUA', 4),
(101, 'GABRIELA', '', 'BEDOYA', '', 'CR 43  82   05', '5044181', '', 'CONTINUA', 4),
(109, 'MARTHA', 'LUCIA', 'CADAVID', '', 'CL 83  42A 39', '885561', '', 'CONTINUA', 4),
(110, 'MARTHA', 'INES', 'POSADA', '', 'CR 42  81 10', '2124932', '', 'CONTINUA', 4),
(111, 'ROSMIRA', '', 'RUIZ', '', 'CLL 81  43 40', '5876483', '', 'CONTINUA', 4),
(113, 'LIBIA', 'AMPARO', 'VELEZ', '', 'CR 43  80   60', '6033047', '', 'CONTINUA', 3),
(114, 'NODIER', '', 'DEL SOCORRO', 'VELEZ', 'CR 43  80   60', '6033047', '', 'CONTINUA', 3),
(115, 'YULIET', '', 'BETANCURT', '', 'CLL 76  41 83', '5712285', '', 'CONTINUA', 4),
(116, 'LUZ', 'ELENA', 'ORTEGA', 'RUIZ', 'CL80  42A 28', '2116925', '', 'CONTINUA', 4),
(117, 'MARIA', 'MAILEN', 'RODRIGUEZ', '', 'CR 43  76   65', '5828347', '', 'CONTINUA', 4),
(120, 'LUZ', 'MARINA', 'RODRIGUEZ', '', 'CLL 81  43 37', '2134490', '', 'CONTINUA', 4),
(121, 'AUGUSTO', '', 'DE JESUS', '', 'CR 43  77   69', '', '3043866040', 'CONTINUA', 5),
(128, 'ALICIA', '', 'SANTA', 'DE GUZMAN', 'CR 43  82   82', '2436411', '', 'CONTINUA', 5),
(130, 'LUIS', 'FELIPE', 'ZAPATA', '', 'CR 43  77   63', '', '3145915971', 'CONTINUA', 5),
(132, 'ALICIA', '', 'DE JESUS', 'GIL', 'CR 43 A  75  25', '2331555', '', 'CONTINUA', 3),
(143, 'JENIFER', '', 'GALLEGO', 'DUQUE', 'CLL 76  41 97', '4944170', '', 'CONTINUA', 2),
(144, 'MARIA', 'MERCEDES', 'LOPEZ', '', 'CLL 76  41 109', '4944170', '', 'CONTINUA', 3),
(150, 'MONICA', 'SIRLEY', 'GARCIA', 'QUIROZ', 'CR 42 A  76 33', '5275809', '', 'CONTINUA', 4),
(163, 'DARIO', 'DE JESUS', 'MASIAS', '', 'CR 41A  82   36', '2122430', '', 'CONTINUA', 2),
(164, 'MARTHA', '', 'BEDOYA', 'TORRES', 'CR 41A  82   36', '2122430', '', 'CONTINUA', 3),
(165, 'JHOANA', '', 'RAMIREZ', 'URIBE', 'CLL 73  41  113', '2119097', '', 'CONTINUA', 3),
(169, 'DEIDER', '', 'RAMIREZ', 'URIBE', 'CLL 73  41   113', '2119097', '', 'CONTINUA', 5),
(170, 'LINA', 'MARCELA', 'ORTIZ', '', 'CL76  41 113', '2119097', '', 'CONTINUA', 5),
(174, 'RUBI', 'GONZALEZ', 'RESTREPO', '', 'CLL 78  14   73', '2634987', '', 'CONTINUA', 3),
(180, 'ZULEMA', 'VARGAS', 'GARCIA', '', 'CR 41A  83   15', '', '3013387453', 'CONTINUA', 3),
(206, 'JAIRO', 'CALDERON', 'BUSTAMANTE', '', 'CR 41A  85  15', '', '3013387453', 'CONTINUA', 1),
(214, 'JAIME', 'ANDRES', 'GUZMAN', '', 'CLL 41A  83 51', '5058295', '', 'CONTINUA', 1),
(215, 'PAULA', 'ANDREA', 'VASQUES', '', 'CR 41A  83   51', '5058295', '', 'CONTINUA', 3),
(216, 'JHON', 'EDISON', 'GUZMAN', '', 'CR 41A  83 37', '', '3186891065', 'CONTINUA', 1),
(494, 'MANUEL', '', 'ARENAS', '', 'CR 42 A  77 56', '', '', 'CONTINUA    ', 1),
(556, 'PIEDAD ', '', 'ALZATE', '', 'CL 76  41A 48', '2336249', '', 'CONTINUA', 3),
(605, 'ADRIANA', '', 'URIBE', '', 'CL 77  41 113', '2119097', '', 'CONTINUA', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `username`, `fullname`, `password`) VALUES
(54, 'qwer', 'felipe', '$2a$10$t45DtbJR4zVQJwg6oKVDkukWD4wcbhEmGGYNNsOaCv6JNZdsMrXFa'),
(62, 'admin', 'walter', '$2a$10$mPOrMr.RXhDm9ptDBu/OyOwwWaXaKDyE4kg3h.nCzxHqQ6Ypw1cDW');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `comites`
--
ALTER TABLE `comites`
  ADD PRIMARY KEY (`id_comite`);

--
-- Indices de la tabla `miembros`
--
ALTER TABLE `miembros`
  ADD PRIMARY KEY (`id_users`),
  ADD KEY `comite_usuarios` (`id_comite`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `comites`
--
ALTER TABLE `comites`
  MODIFY `id_comite` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `miembros`
--
ALTER TABLE `miembros`
  ADD CONSTRAINT `comite_usuarios` FOREIGN KEY (`id_comite`) REFERENCES `comites` (`id_comite`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
