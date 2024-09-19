-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-09-2024 a las 00:28:59
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `control_asistencia`
--
 
 --- CREAR LA BASE DE DATOS CON NOMBRE control_asistencia y con cotejamiento utf8mb4_general_ci con phpmyadmin en "Nueva"

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asistencias`
--

CREATE TABLE `asistencias` (
  `id` int(11) NOT NULL,
  `empleado_id` int(11) NOT NULL,
  `hora` time NOT NULL,
  `fecha` date NOT NULL,
  `tipo` varchar(28) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `asistencias`
--

INSERT INTO `asistencias` (`id`, `empleado_id`, `hora`, `fecha`, `tipo`) VALUES
(1, 1, '15:45:34', '2024-09-18', 'ENTRADA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `apellidos` varchar(45) NOT NULL,
  `documento_numero` varchar(45) NOT NULL,
  `telefono` varchar(45) NOT NULL,
  `codigo` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`id`, `nombre`, `apellidos`, `documento_numero`, `telefono`, `codigo`) VALUES
(1, 'Gabriel', 'Saguier', 'sdadasdasda', '', '1334'),
(2, 'Irene', 'Adarmes', '7135809', '0976530853', '3250'),
(3, 'Irene', 'Adarmes', '7135809', '0976530853', '7');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `apellidos` varchar(45) NOT NULL,
  `login` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(100) NOT NULL,
  `imagen` varchar(64) NOT NULL,
  `estado` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `apellidos`, `login`, `email`, `password`, `imagen`, `estado`) VALUES
(1, 'Irene edtiado', 'Adarmes', 'admin', 'sebastiansaldivar092@gmail.com', '03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4', '1726678675.jpg', 1),
(2, 'fff editado', 'asdasd', 'asdasd', 'sdadasd', '03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4', '', 1),
(3, 'gfdfgdg', 'fdgs3', 'asdfasdfa', 'ggggg', '96cae35ce8a9b0244178bf28e4966c2ce1b8385723a96a6b838858cdd6ca0a1e', '', 1),
(4, 'asdasd', 'sdasd', 'adad', 'sdad', '2aeb25716a0a859efb6c2607950ee8293e1c25a57259c46db9b60f30858a21fe', '', 1),
(5, 'asdadgf', 'asdasda', 'dasdasd', 'ggfsdfg', 'd95e0dba36cbe28ea4e97b1f9ac9eab64d588b6812819a370eb9c6e8573d1c79', '', 1),
(6, 'asdAsda', 'gasdfssf', 'fsdfsdfsdf', 'dasdasd', '35aa41d8d64a07fd58cce223b753f01cc5bc90d79c00f23cd1c64c28da9e557c', '', 1),
(7, 'asdasdgg', 'asdasdf', 'fggdfssdfff', 'gfggfgfg', 'af297da50b61aa782ef22263913cb72d1329ae655489c0c7f7668a8c32153b2d', '', 1),
(8, 'gdgdfg', 'hfgdhdfdA2WAS', 'SDASDASDA', 'dfgdfgdg', 'c41d667012c9c8117c04072a2b9667f6f02d48e9ecd2a0d0c746348afd51a396', '', 1),
(9, 'ASDFGGHFGF', 'dfsfsf', 'fsdfdsfsf', 'DASDASD', 'b8b70a2d524f1eee35f72822b24e6e51f911211d402b5dd288e98b144aa9f48a', '', 1),
(10, 'fgdfgjh', 'fghfh', 'fghhfgfh', 'hgfhfgh', '4e8b7d7c05b0f3203bb082be5597cf06876ebaf0d71bdbe434ef9546d75c0c88', '', 1),
(11, 'tjghfjg', 'asdasdas', 'sdfgsdfgs', 'gsdfgd', 'ddb7e94f70a597f5affa4ea059fd052d4c6bb5393eec8f553fa1aa6eaa8990a4', '', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `asistencias`
--
ALTER TABLE `asistencias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_empelado_id` (`empleado_id`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `asistencias`
--
ALTER TABLE `asistencias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `asistencias`
--
ALTER TABLE `asistencias`
  ADD CONSTRAINT `asistencias_ibfk_1` FOREIGN KEY (`empleado_id`) REFERENCES `empleados` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
