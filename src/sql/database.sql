-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-07-2021 a las 02:54:56
-- Versión del servidor: 10.4.18-MariaDB
-- Versión de PHP: 8.0.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `usuarios`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`) VALUES
(1, 'admin', '$2b$10$tZ4Ra.Z4h.hEJ9perRthBOu.0jswf2jrsroa0YMP8ku2b7LLr/QcW');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `passwordUser` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `ModifiedDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id_user`, `fullname`, `username`, `passwordUser`, `state`, `creationDate`, `ModifiedDate`) VALUES
(1, 'Samuel Andrés Ariza Gómez', 'SAMARGO', '$2a$10$CTD075orZzM50CVsODXQpe/Xyo05vDp6462ig/a1rz.SPDHyqP6Ca', 'No restringido', '2021-07-02 00:43:50', '2021-07-02 00:44:20'),
(2, 'Pepito Perez', 'PepitoGamer', '$2a$10$sN5SYfowA0YgBPpqd06EbO/KMO1mKC/SE7n7dIjvseEwPgNdKHxsS', 'No restringido', '2021-07-02 00:44:49', '2021-07-02 00:44:49'),
(3, 'Alejandro Villamizar Montejo', 'Alejo34_12G', '$2a$10$BbSmpto5xY0bBfftaklxhusxR/YT7JEVGXB3DikB5VX0pqRwMNhQS', 'No restringido', '2021-07-02 00:45:56', '2021-07-02 00:45:56'),
(4, 'Daniela Barthel Polo', 'B_Polo', '$2a$10$dmhVK5.cLmp7p/Po7ifaYejSqBmnlLhdmLmEOrrooSlUe5ZEA6xTq', 'No restringido', '2021-07-02 00:46:21', '2021-07-02 00:46:21'),
(5, 'Pablo Puentes Jimenez', 'Hate_Pablo', '$2a$10$t1Qu9siaTqM8jGTSGAwMeOKoIbzd3BthhzKkzq7nbOylzWWiwrO8G', 'No restringido', '2021-07-02 00:46:47', '2021-07-02 00:46:47'),
(6, 'Paola Andrea Puentes Paez', 'PP_PA', '$2a$10$WNDo/l1XOzyOsxK/yXAmMuEhDnZ4cCG13Wh2FsPybPCShPPj33TgC', 'Restringido', '2021-07-02 00:47:22', '2021-07-02 00:47:22'),
(7, 'Oscar Camacho Amaya', 'OscaR_XYZ', '$2a$10$St9/sAbJ6PdPOim1X3nq6eGmbVbrciOS5arHbM4Up/fQN36uboaOi', 'Restringido', '2021-07-02 00:47:53', '2021-07-02 00:48:00'),
(8, 'Hugo Andrés Camargo Vargas', 'Huguito_10', '$2a$10$t3aboCQn0NUUqA4jCAtC/uOLtoPzzpkwZdtskYOZn3pLjOVy2hP1.', 'Restringido', '2021-07-02 00:48:23', '2021-07-02 00:48:30'),
(9, 'Deny Fino Bustos', 'DenF', '$2a$10$b8fNYxgBTCtwi9035tubBuuF4Oxlrig.6jt5PI/7F..WAj7nPnNyO', 'Restringido', '2021-07-02 00:48:54', '2021-07-02 00:48:59'),
(10, 'Estewil Diaz Beltrán', 'The_Diaz_23', '$2a$10$Hyj76zwvUQjKleTQxMHclO4OuNK5yX6kh/avbdLygF2dhYUBpGPIy', 'Restringido', '2021-07-02 00:49:34', '2021-07-02 00:49:34');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
