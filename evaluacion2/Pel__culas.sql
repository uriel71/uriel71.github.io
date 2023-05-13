-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-05-2023 a las 03:48:36
-- Versión del servidor: 10.1.39-MariaDB
-- Versión de PHP: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cines`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Películas`
--

CREATE TABLE `películas` (
  `id` int(11) NOT NULL,
  `Nombre` varchar(40) NOT NULL,
  `Artista_id` varchar(50) NOT NULL,
  `Genero-id` varchar(30) NOT NULL,
  `Director-id` varchar(40) NOT NULL,
  `Fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `Películas`
--

INSERT INTO `Películas` (`id`, `Nombre`, `Artista_id`, `Genero-id`, `Director-id`, `Fecha`) VALUES
(1, 'Titanic', 'Leonardo di caprio', 'Suspense', 'di caprio', '2003-06-20'),
(2, 'Rapidos y furiosos', 'Vin diesel', 'Accion', 'Vin diesel', '2007-03-30');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `Películas`
--
ALTER TABLE `Películas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `Películas`
--
ALTER TABLE `Películas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
