-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-11-2019 a las 08:03:32
-- Versión del servidor: 10.4.8-MariaDB
-- Versión de PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tronquitos_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno`
--

CREATE TABLE `alumno` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellidos` varchar(50) NOT NULL,
  `genero` char(1) NOT NULL,
  `edad` int(11) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `usuario` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `alumno`
--

INSERT INTO `alumno` (`id`, `nombre`, `apellidos`, `genero`, `edad`, `fecha_nacimiento`, `usuario`) VALUES
(1, 'Juansito', 'Diaz Duarte', 'M', 3, '2019-11-16', 1),
(2, 'Cristian', 'Baldomero', 'F', 6, '2019-11-16', 2),
(3, 'Cristian', 'Baldomero', 'F', 6, '2019-11-16', 2),
(4, 'Leidy', 'Bermudez', 'F', 3, '2019-11-16', 2),
(5, 'Daniel', 'Gomez', 'M', 3, '2019-11-16', 2),
(6, 'Wilmer', 'Roldan', 'M', 4, '2019-11-16', 1),
(7, 'John', 'Baldomero', 'M', 6, '2019-11-16', 5),
(8, 'Ramiro', 'Ramirez', 'M', 7, '2019-11-16', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `matricula`
--

CREATE TABLE `matricula` (
  `id` int(11) NOT NULL,
  `nivel` int(10) UNSIGNED NOT NULL,
  `alumno` int(10) UNSIGNED NOT NULL,
  `anio` int(11) NOT NULL,
  `valor` float NOT NULL,
  `fecha_matricula` date NOT NULL,
  `usuario` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `matricula`
--

INSERT INTO `matricula` (`id`, `nivel`, `alumno`, `anio`, `valor`, `fecha_matricula`, `usuario`) VALUES
(1, 1, 2, 201902, 200000, '2019-11-16', 1),
(2, 1, 6, 201902, 190000, '2019-11-16', 1),
(3, 1, 2, 201902, 200000, '2019-11-16', 1),
(4, 1, 7, 201902, 200000, '2019-11-16', 1),
(5, 4, 1, 201902, 200000, '2019-11-16', 1),
(6, 3, 8, 201902, 200000, '2019-11-16', 7),
(7, 3, 1, 201902, 200000, '2019-11-16', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nivel`
--

CREATE TABLE `nivel` (
  `id` int(10) UNSIGNED NOT NULL,
  `codigo` varchar(10) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `fecha_creacion` date NOT NULL,
  `usuario` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `nivel`
--

INSERT INTO `nivel` (`id`, `codigo`, `nombre`, `fecha_creacion`, `usuario`) VALUES
(1, 'CRS001', 'Parvulos', '2019-11-16', 1),
(2, 'CRS002', 'Prekinder', '2019-11-16', 1),
(3, 'CRS003', 'Kinder', '2019-11-16', 1),
(4, 'CRS004', 'Transicion', '2019-11-16', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int(10) UNSIGNED NOT NULL,
  `usuario` varchar(20) NOT NULL,
  `clave` varchar(60) DEFAULT NULL,
  `nombre_usuario` varchar(50) DEFAULT NULL,
  `fecha_creacion` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `usuario`, `clave`, `nombre_usuario`, `fecha_creacion`) VALUES
(1, 'camilo.rivera', 'camilo.rivera', 'Camilo Rivera', '2019-11-16'),
(2, 'adrid', 'adrid', 'Adrid Sin Apellido', '2019-11-16'),
(3, 'jose.roa', 'jose.roa', 'Jose Roa', '2019-11-16'),
(4, 'david.ochoa', 'david.ochoa', 'David Ochoa', '2019-11-16'),
(5, 'secreteria.general', 'secreteria.general', 'Marina Urbino', '2019-11-16'),
(6, 'soporte.tecnico', 'soporte.tecnico', 'Soporte tecnico', '2019-11-16'),
(7, 'direccion.profesores', 'direccion.profesores', 'Juan Roman', '2019-11-16'),
(8, 'comite.academico', 'comite.academico', 'Comite Academico', '2019-11-16'),
(9, 'comite.disciplinario', 'comite.disciplinario', 'Comite disciplinario', '2019-11-16'),
(10, 'junta.profesores', 'junta.profesores', 'Junta de profesores', '2019-11-16');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumno`
--
ALTER TABLE `alumno`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx-usuario` (`usuario`);

--
-- Indices de la tabla `matricula`
--
ALTER TABLE `matricula`
  ADD PRIMARY KEY (`id`),
  ADD KEY `curso` (`nivel`),
  ADD KEY `alumno` (`alumno`),
  ADD KEY `usuario` (`usuario`);

--
-- Indices de la tabla `nivel`
--
ALTER TABLE `nivel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `frg_key_usuario_curso` (`usuario`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumno`
--
ALTER TABLE `alumno`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `matricula`
--
ALTER TABLE `matricula`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `nivel`
--
ALTER TABLE `nivel`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `alumno`
--
ALTER TABLE `alumno`
  ADD CONSTRAINT `frg_key_usuario_alumno` FOREIGN KEY (`usuario`) REFERENCES `usuario` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `matricula`
--
ALTER TABLE `matricula`
  ADD CONSTRAINT `frg_key_alumno_matricula` FOREIGN KEY (`alumno`) REFERENCES `alumno` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `frg_key_curso_matricula` FOREIGN KEY (`nivel`) REFERENCES `nivel` (`id`),
  ADD CONSTRAINT `frg_key_usuario_matricula` FOREIGN KEY (`usuario`) REFERENCES `usuario` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `nivel`
--
ALTER TABLE `nivel`
  ADD CONSTRAINT `frg_key_usuario_curso` FOREIGN KEY (`usuario`) REFERENCES `usuario` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
