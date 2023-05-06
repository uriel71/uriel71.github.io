-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-04-2023 a las 03:41:10
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
-- Base de datos: `spotifii`
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

--
-- Volcado de datos para la tabla `album_canciones`
--

INSERT INTO `album_canciones` (`id`, `album_id`, `cancion_id`) VALUES
(1, 6, 2),
(2, 3, 4),
(3, 4, 1),
(4, 5, 5),
(5, 2, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `playlist_canciones`
--

CREATE TABLE `playlist_canciones` (
  `id` int(11) NOT NULL,
  `playlist_id` int(11) NOT NULL,
  `cancion_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `playlist_canciones`
--

INSERT INTO `playlist_canciones` (`id`, `playlist_id`, `cancion_id`) VALUES
(0, 5, 3),
(0, 1, 1),
(0, 3, 2),
(0, 4, 5),
(0, 2, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `spotifi albumes`
--

CREATE TABLE `spotifi albumes` (
  `id` int(11) NOT NULL,
  `artista_id` int(11) NOT NULL,
  `nombre` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `spotifi albumes`
--

INSERT INTO `spotifi albumes` (`id`, `artista_id`, `nombre`) VALUES
(2, 2, 'Un verano sin ti'),
(3, 4, 'Corridos Tumbados'),
(4, 3, 'Disco en vivo'),
(5, 5, 'Loba'),
(6, 6, 'Doggystyle');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `spotifi artistas`
--

CREATE TABLE `spotifi artistas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `imagen` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `spotifi artistas`
--

INSERT INTO `spotifi artistas` (`id`, `nombre`, `imagen`) VALUES
(2, 'Bad bunny', 'foto.jpg'),
(3, 'Peso Pluma', 'foto.jpg'),
(4, 'Natanael Cano', 'foto.jpg\r\n'),
(5, 'Shakira', 'foto.jpg'),
(6, 'Snoop dog', 'foto.jpg');

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

--
-- Volcado de datos para la tabla `spotifi canciones`
--

INSERT INTO `spotifi canciones` (`id`, `nombre`, `artista_id`, `duracion`, `genero_id`, `fecha`, `disponible`) VALUES
(1, 'PCR', 3, '00:03:00', 2, '2021-10-20', 1),
(2, 'high', 6, '00:04:18', 4, '2019-07-17', 1),
(3, 'Amorfoda', 2, '00:02:17', 1, '2017-08-21', 1),
(4, 'El drip', 4, '00:03:00', 2, '2021-10-20', 1),
(5, 'Bicicleta', 5, '00:02:17', 1, '2019-07-17', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `spotifi favorita`
--

CREATE TABLE `spotifi favorita` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `cancion_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `spotifi favorita`
--

INSERT INTO `spotifi favorita` (`id`, `usuario_id`, `cancion_id`) VALUES
(0, 3, 3),
(0, 4, 5),
(0, 2, 2),
(0, 5, 1),
(0, 1, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `spotifi generos`
--

CREATE TABLE `spotifi generos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `spotifi generos`
--

INSERT INTO `spotifi generos` (`id`, `nombre`) VALUES
(1, 'Bachata'),
(2, 'Corridos'),
(3, 'Rock'),
(4, 'Trap'),
(5, 'Regueton ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `spotifi membresia`
--

CREATE TABLE `spotifi membresia` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `precio` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `spotifi membresia`
--

INSERT INTO `spotifi membresia` (`id`, `nombre`, `precio`) VALUES
(6, 'Familiar', 399),
(7, 'Estudiante', 99),
(8, 'Duo', 139),
(9, 'Solo', 50),
(10, 'Ilimitado', 560);

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

--
-- Volcado de datos para la tabla `spotifi playlist`
--

INSERT INTO `spotifi playlist` (`id`, `nombre`, `imagen`, `usuarios_id`) VALUES
(1, 'Beliconas', 'foto.jpg', 3),
(2, 'Romanticonas', 'foto.jpg', 2),
(3, 'MusicaGym', 'foto.jpg', 4),
(4, 'MusicaPaRelajarse', 'foto.jpg', 1),
(5, 'MusicaSad', 'foto.jpg', 5);

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
-- Volcado de datos para la tabla `spotifi usuarios`
--

INSERT INTO `spotifi usuarios` (`id`, `nombre`, `correo`, `contraseña`, `usuario`, `telefono`, `membresia_id`) VALUES
(1, 'Pepe', 'pepe@gmail.com', 'Pepe123', 'Elpepe', '6672348971', 10),
(2, 'Jose luis', 'jl@gmail.com', 'Joseluis123', 'Jose777', '6676849082', 8),
(3, 'Dandi', 'amolaleona@gmail.com', 'dandi123', 'Dandi54', '6672349124', 7),
(4, 'Cristian', 'cristian@gmail.com', 'cristian123', 'Llanes', '6673899482', 9),
(5, 'Hommey', 'homey@gmail.com', 'hommey123', 'Homi', '6672349124', 6);

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
  ADD KEY `genero_id` (`genero_id`),
  ADD KEY `artista_id` (`artista_id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `spotifi albumes`
--
ALTER TABLE `spotifi albumes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `spotifi artistas`
--
ALTER TABLE `spotifi artistas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `spotifi canciones`
--
ALTER TABLE `spotifi canciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `spotifi generos`
--
ALTER TABLE `spotifi generos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `spotifi membresia`
--
ALTER TABLE `spotifi membresia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `spotifi playlist`
--
ALTER TABLE `spotifi playlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `spotifi usuarios`
--
ALTER TABLE `spotifi usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
  ADD CONSTRAINT `playlist_canciones_ibfk_2` FOREIGN KEY (`cancion_id`) REFERENCES `spotifi canciones` (`id`);

--
-- Filtros para la tabla `spotifi albumes`
--
ALTER TABLE `spotifi albumes`
  ADD CONSTRAINT `spotifi albumes_ibfk_2` FOREIGN KEY (`artista_id`) REFERENCES `spotifi artistas` (`id`);

--
-- Filtros para la tabla `spotifi canciones`
--
ALTER TABLE `spotifi canciones`
  ADD CONSTRAINT `spotifi canciones_ibfk_1` FOREIGN KEY (`artista_id`) REFERENCES `spotifi artistas` (`id`),
  ADD CONSTRAINT `spotifi canciones_ibfk_2` FOREIGN KEY (`genero_id`) REFERENCES `spotifi generos` (`id`);

--
-- Filtros para la tabla `spotifi favorita`
--
ALTER TABLE `spotifi favorita`
  ADD CONSTRAINT `spotifi favorita_ibfk_1` FOREIGN KEY (`cancion_id`) REFERENCES `spotifi canciones` (`id`),
  ADD CONSTRAINT `spotifi favorita_ibfk_2` FOREIGN KEY (`usuario_id`) REFERENCES `spotifi usuarios` (`id`);

--
-- Filtros para la tabla `spotifi playlist`
--
ALTER TABLE `spotifi playlist`
  ADD CONSTRAINT `spotifi playlist_ibfk_2` FOREIGN KEY (`usuarios_id`) REFERENCES `spotifi usuarios` (`id`);

--
-- Filtros para la tabla `spotifi usuarios`
--
ALTER TABLE `spotifi usuarios`
  ADD CONSTRAINT `spotifi usuarios_ibfk_1` FOREIGN KEY (`membresia_id`) REFERENCES `spotifi membresia` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;