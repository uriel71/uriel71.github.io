-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-02-2023 a las 02:43:50
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
-- Base de datos: `tienda_online`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `precio` double NOT NULL,
  `descripcion` varchar(300) NOT NULL,
  `color` varchar(50) NOT NULL,
  `existencia` int(11) NOT NULL,
  `marca` varchar(30) NOT NULL,
  `medida` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `precio`, `descripcion`, `color`, `existencia`, `marca`, `medida`) VALUES
(1, 'XTREME LIFE Silla Gamer', 1890, 'Reclinable Ergonomica Ajustable Funciona Perfectamente para Pasar Muchas Horas Sentado Jugando o Frente de la Computadora Diseño Ergonomico Practico (Negro)', '', 0, '', ''),
(2, 'Audi RS e-tron GT', 0, 'Energía pura, tecnología innovadora y alto desempeño 100% eléctrico.', '', 0, '', ''),
(3, 'A1 Sportback', 0, 'Épico, emocional y dinámico\r\nLa segunda generación de nuestro exitoso modelo compacto Audi A1 Sportback, presenta un atractivo diseño interior futurista y deportivo, así como diversas opciones de personalización.', '', 0, '', ''),
(4, 'RS 3 Sedán', 1, 'Rendimiento encarnado en un Sedán\r\nCon un motor de cinco cilindros de altas prestaciones, el Audi RS 3 Sedán es único en su clase, su motor TFSI ha ganado nueve veces consecutivas el premio “Motor Internacional del Año”', '', 0, '', ''),
(5, 'RS Q8', 0, 'Performance is an attitude\r\n\r\nEquipado con un motor V8 Mild Hybrid de 4.0 litros biturbo con 600 Hp y 800 Nm de torque, alcanza los 100 km/h desde cero en 3.8 segundos y una velocidad máxima de 250 km/h.\r\nInformación de vehículo nuevo\r\n\r\n \r\n \r\n ', '', 0, '', ''),
(6, 'Audi RS 7 Sportback', 0, 'Performance is an attitude\r\nExperimenta la fascinación del gran turismo deportivo. Con el nuevo Audi RS 7 Sportback obtendrás una experiencia sorprendente para cinco pasajeros. Performance is an attitude.', '', 0, '', ''),
(7, 'Audi Q2', 0, 'Diseño dinámico, diversión excepcional\r\n\r\nEl SUV urbano presenta un diseño impresionante y poderoso, así como una amplia gama de opciones de información, entretenimiento y tecnología.', '', 0, '', ''),
(8, 'SQ5 Sportback', 0, 'Deportivo. Poderoso. Dinámico\r\nEl Audi SQ5 Sportback es un SUV deportivo con una silueta coupé, cuenta con amplio espacio interior y alta versatilidad.', '', 0, '', ''),
(9, 'R8 Coupé V10', 0, 'De las pistas a la producción de serie\r\nEl nuevo Audi R8 Coupé V10 performance quattro lleva la deportividad en sus genes.', '', 0, '', ''),
(10, 'TT RS Coupé', 0, 'Performance is an attitude\r\n\r\nExperimenta una increíble potencia, diseño cautivador, alta estabilidad y dinámica de conducción, con el súper deportivo: Audi TT RS Coupé.', '', 0, '', '');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
