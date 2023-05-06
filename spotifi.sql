-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-04-2023 a las 04:24:02
-- Versión del servidor: 10.4.25-MariaDB
-- Versión de PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `spotif`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `album_canciones`
--

CREATE TABLE `album_canciones` (
  `id` int(11) NOT NULL,
  `album_id` int(11) NOT NULL,
  `cancion_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `playlist_canciones`
--

CREATE TABLE `playlist_canciones` (
  `id` int(11) NOT NULL,
  `playlist_id` int(11) NOT NULL,
  `cancion_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `spotifi albumes`
--

CREATE TABLE `spotifi albumes` (
  `id` int(11) NOT NULL,
  `artista_id` int(11) NOT NULL,
  `nombre` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `spotifi artistas`
--

CREATE TABLE `spotifi artistas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `imagen` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `spotifi canciones`
--

CREATE TABLE `spotifi canciones` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `artista_id` int(11) NOT NULL,
  `duracion` time NOT NULL,
  `genero_id` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `disponible` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `spotifi favorita`
--

CREATE TABLE `spotifi favorita` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `cancion_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `spotifi generos`
--

CREATE TABLE `spotifi generos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `spotifi membresia`
--

CREATE TABLE `spotifi membresia` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `precio` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `spotifi playlist`
--

CREATE TABLE `spotifi playlist` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `imagen` varchar(150) NOT NULL,
  `usuarios_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `spotifi usuarios`
--

CREATE TABLE `spotifi usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `contraseña` varchar(100) NOT NULL,
  `usuario` varchar(30) NOT NULL,
  `telefono` varchar(10) NOT NULL,
  `membresia_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `album_canciones`
--
ALTER TABLE `album_canciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `album_id` (`album_id`),
  ADD KEY `cancion_id` (`cancion_id`);

--
-- Indices de la tabla `playlist_canciones`
--
ALTER TABLE `playlist_canciones`
  ADD KEY `playlist_id` (`playlist_id`),
  ADD KEY `cancion_id` (`cancion_id`);

--
-- Indices de la tabla `spotifi albumes`
--
ALTER TABLE `spotifi albumes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `artista_id` (`artista_id`);

--
-- Indices de la tabla `spotifi artistas`
--
ALTER TABLE `spotifi artistas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `spotifi canciones`
--
ALTER TABLE `spotifi canciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `genero_id` (`genero_id`);

--
-- Indices de la tabla `spotifi favorita`
--
ALTER TABLE `spotifi favorita`
  ADD KEY `cancion_id` (`cancion_id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `spotifi generos`
--
ALTER TABLE `spotifi generos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `spotifi membresia`
--
ALTER TABLE `spotifi membresia`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `spotifi playlist`
--
ALTER TABLE `spotifi playlist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuarios_id` (`usuarios_id`);

--
-- Indices de la tabla `spotifi usuarios`
--
ALTER TABLE `spotifi usuarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `membresia_id` (`membresia_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `album_canciones`
--
ALTER TABLE `album_canciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `spotifi albumes`
--
ALTER TABLE `spotifi albumes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `spotifi artistas`
--
ALTER TABLE `spotifi artistas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `spotifi canciones`
--
ALTER TABLE `spotifi canciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `spotifi generos`
--
ALTER TABLE `spotifi generos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `spotifi membresia`
--
ALTER TABLE `spotifi membresia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `spotifi playlist`
--
ALTER TABLE `spotifi playlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `spotifi usuarios`
--
ALTER TABLE `spotifi usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `album_canciones`
--
ALTER TABLE `album_canciones`
  ADD CONSTRAINT `album_canciones_ibfk_1` FOREIGN KEY (`album_id`) REFERENCES `spotifi albumes` (`id`),
  ADD CONSTRAINT `album_canciones_ibfk_2` FOREIGN KEY (`cancion_id`) REFERENCES `spotifi canciones` (`id`);

--
-- Filtros para la tabla `playlist_canciones`
--
ALTER TABLE `playlist_canciones`
  ADD CONSTRAINT `playlist_canciones_ibfk_1` FOREIGN KEY (`playlist_id`) REFERENCES `spotifi playlist` (`id`),
  ADD CONSTRAINT `playlist_canciones_ibfk_2` FOREIGN KEY (`cancion_id`) REFERENCES `spotifi usuarios` (`id`);

--
-- Filtros para la tabla `spotifi albumes`
--
ALTER TABLE `spotifi albumes`
  ADD CONSTRAINT `spotifi albumes_ibfk_1` FOREIGN KEY (`id`) REFERENCES `album_canciones` (`id`),
  ADD CONSTRAINT `spotifi albumes_ibfk_2` FOREIGN KEY (`artista_id`) REFERENCES `spotifi artistas` (`id`);

--
-- Filtros para la tabla `spotifi artistas`
--
ALTER TABLE `spotifi artistas`
  ADD CONSTRAINT `spotifi artistas_ibfk_1` FOREIGN KEY (`id`) REFERENCES `spotifi canciones` (`id`);

--
-- Filtros para la tabla `spotifi canciones`
--
ALTER TABLE `spotifi canciones`
  ADD CONSTRAINT `spotifi canciones_ibfk_1` FOREIGN KEY (`genero_id`) REFERENCES `spotifi generos` (`id`);

--
-- Filtros para la tabla `spotifi favorita`
--
ALTER TABLE `spotifi favorita`
  ADD CONSTRAINT `spotifi favorita_ibfk_1` FOREIGN KEY (`cancion_id`) REFERENCES `spotifi usuarios` (`id`),
  ADD CONSTRAINT `spotifi favorita_ibfk_2` FOREIGN KEY (`usuario_id`) REFERENCES `spotifi usuarios` (`id`);

--
-- Filtros para la tabla `spotifi membresia`
--
ALTER TABLE `spotifi membresia`
  ADD CONSTRAINT `spotifi membresia_ibfk_1` FOREIGN KEY (`id`) REFERENCES `spotifi usuarios` (`id`);

--
-- Filtros para la tabla `spotifi playlist`
--
ALTER TABLE `spotifi playlist`
  ADD CONSTRAINT `spotifi playlist_ibfk_1` FOREIGN KEY (`id`) REFERENCES `playlist_canciones` (`playlist_id`),
  ADD CONSTRAINT `spotifi playlist_ibfk_2` FOREIGN KEY (`usuarios_id`) REFERENCES `spotifi favorita` (`usuario_id`);

--
-- Filtros para la tabla `spotifi usuarios`
--
ALTER TABLE `spotifi usuarios`
  ADD CONSTRAINT `spotifi usuarios_ibfk_1` FOREIGN KEY (`membresia_id`) REFERENCES `spotifi membresia` (`id`),
  ADD CONSTRAINT `spotifi usuarios_ibfk_2` FOREIGN KEY (`id`) REFERENCES `spotifi favorita` (`usuario_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;