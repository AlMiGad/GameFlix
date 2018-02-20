-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-02-2018 a las 17:42:14
-- Versión del servidor: 10.1.30-MariaDB
-- Versión de PHP: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `gameflix`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `conexiones`
--

CREATE TABLE `conexiones` (
  `Id` int(11) NOT NULL,
  `Fecha` datetime NOT NULL,
  `IP` varchar(20) NOT NULL,
  `NombreUsuario` varchar(45) DEFAULT NULL,
  `Resultado` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `juegos`
--

CREATE TABLE `juegos` (
  `Id` int(11) NOT NULL,
  `Nombre` varchar(45) NOT NULL,
  `Version` varchar(45) NOT NULL,
  `Year` varchar(4) NOT NULL,
  `Estudio` varchar(45) NOT NULL,
  `Nacionalidad` varchar(45) DEFAULT NULL,
  `EdadMinima` varchar(2) DEFAULT NULL,
  `Descripcion` varchar(450) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `juegos`
--

INSERT INTO `juegos` (`Id`, `Nombre`, `Version`, `Year`, `Estudio`, `Nacionalidad`, `EdadMinima`, `Descripcion`) VALUES
(0, 'FarCry', '2.1', '2018', 'Ubisoft', 'Australia', '18', 'Juego de supervivencia'),
(1, 'FIFA 18', '1.0', '2018', 'EA Sports', 'EE.UU', '7', 'Juego de fútbol'),
(2, 'Call of Duty', '3.0', '2017', 'Activision', 'EE.UU', '12', 'Simulación de guerra'),
(8, 'Overwatch', '1.1', '2017', 'Blizzard', 'Canadá', '12', 'Juego online');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `partida`
--

CREATE TABLE `partida` (
  `Id` int(11) NOT NULL,
  `Fecha` datetime DEFAULT NULL,
  `IdUsuario` int(11) NOT NULL,
  `IdJuego` int(11) NOT NULL,
  `Duracion` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `Id` int(11) NOT NULL,
  `Nombre` varchar(45) NOT NULL,
  `Apellidos` varchar(45) NOT NULL,
  `Correo` varchar(45) NOT NULL,
  `FechaNacimiento` datetime NOT NULL,
  `Pais` varchar(45) NOT NULL,
  `Ciudad` varchar(45) NOT NULL,
  `Perfil` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`Id`, `Nombre`, `Apellidos`, `Correo`, `FechaNacimiento`, `Pais`, `Ciudad`, `Perfil`) VALUES
(1, 'Álvaro', 'Miguel Gadea', 'ejemplo@loquesea.es', '1996-01-01 00:00:00', 'España', 'Madrid', 'Administrador'),
(2, 'Yunai', 'Bajo Gallego', 'yunaibg@hotmail.com', '1996-04-16 00:00:00', 'España', 'Madrid', 'Administrador'),
(3, 'Juan', 'Juanez', 'juan@algo.es', '1998-03-02 00:00:00', 'Francia', 'París', 'Usuario');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `conexiones`
--
ALTER TABLE `conexiones`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `juegos`
--
ALTER TABLE `juegos`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `partida`
--
ALTER TABLE `partida`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `conexiones`
--
ALTER TABLE `conexiones`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `juegos`
--
ALTER TABLE `juegos`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `partida`
--
ALTER TABLE `partida`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
