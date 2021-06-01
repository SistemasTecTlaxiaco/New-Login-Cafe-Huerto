-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3307
-- Tiempo de generación: 01-06-2021 a las 01:26:30
-- Versión del servidor: 10.4.18-MariaDB
-- Versión de PHP: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bdcafetienda`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admon`
--

CREATE TABLE `admon` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `correo` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `clave` varchar(200) COLLATE utf8_spanish2_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `baja` tinyint(4) NOT NULL,
  `login_dt` datetime NOT NULL,
  `baja_dt` datetime NOT NULL,
  `modificado_dt` datetime NOT NULL,
  `creado_dt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `admon`
--

INSERT INTO `admon` (`id`, `nombre`, `correo`, `clave`, `status`, `baja`, `login_dt`, `baja_dt`, `modificado_dt`, `creado_dt`) VALUES
(4, 'Edwin Garcia', 'edwin84@gmail.com', 'a0541110e933ff1c6b54c7c073ac624915c7efd3d3bf59fa9634483fe2a6033b3e30b7b69964e6637c1a1442f9840193d723322a87597f779119ff42e49b5af7', 1, 0, '2021-05-25 00:21:18', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2021-05-24 23:33:44'),
(5, 'Alexis Castañeda', 'alexis99@gmail.com', 'db5bbebdc622752f551d45000baddf3319067027b2aea6d5456dcf378827431496f54ac09e1f06315beafb7829feb27c49389015a266182551b95f56f82ace1e', 1, 0, '2021-05-31 16:18:41', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2021-05-31 13:38:20'),
(6, 'taoli garoudy', 'taolig@gmail.com', 'fd3ae4507dcec607eea7f54d7b574e0f59718c73c8ffc462c577a6613c19a1c0db003d0aa1903ba73bb6c62a5b02131e4bfaba4d6d2788d32a5f7f48043b1b8f', 1, 0, '2021-05-31 17:49:12', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2021-05-31 16:19:50');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrito`
--

CREATE TABLE `carrito` (
  `id` int(11) NOT NULL,
  `estado` tinyint(4) NOT NULL,
  `idUsuario` int(11) NOT NULL,
  `idProducto` int(11) NOT NULL,
  `cantidad` decimal(10,2) NOT NULL,
  `descuento` decimal(10,2) NOT NULL,
  `envio` decimal(10,2) NOT NULL,
  `fecha` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `carrito`
--

INSERT INTO `carrito` (`id`, `estado`, `idUsuario`, `idProducto`, `cantidad`, `descuento`, `envio`, `fecha`) VALUES
(1, 1, 1, 2, '2.00', '0.00', '0.00', '2021-05-24 23:52:27'),
(2, 1, 1, 4, '1.00', '0.00', '0.00', '2021-05-24 23:52:27'),
(3, 1, 2, 3, '1.00', '0.00', '0.00', '2021-05-31 16:30:29'),
(4, 1, 2, 1, '1.00', '0.00', '0.00', '2021-05-31 18:20:18');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `llaves`
--

CREATE TABLE `llaves` (
  `id` int(11) NOT NULL,
  `tipo` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `indice` int(11) NOT NULL,
  `cadena` varchar(100) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `llaves`
--

INSERT INTO `llaves` (`id`, `tipo`, `indice`, `cadena`) VALUES
(1, 'statusProducto', 0, 'Inactivo'),
(2, 'statusProducto', 1, 'Activo'),
(3, 'tipoProducto', 1, 'cafeCurso'),
(4, 'tipoProducto', 2, 'cafeLibro');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `tipo` char(1) COLLATE latin1_spanish_ci NOT NULL,
  `nombre` varchar(200) COLLATE latin1_spanish_ci NOT NULL,
  `descripcion` text COLLATE latin1_spanish_ci NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `descuento` decimal(10,2) NOT NULL,
  `envio` decimal(10,2) NOT NULL,
  `imagen` varchar(100) COLLATE latin1_spanish_ci NOT NULL,
  `fecha` date NOT NULL,
  `relacion1` int(11) NOT NULL,
  `relacion2` int(11) NOT NULL,
  `relacion3` int(11) NOT NULL,
  `masvendido` char(1) COLLATE latin1_spanish_ci NOT NULL,
  `nuevos` char(1) COLLATE latin1_spanish_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `baja` tinyint(4) NOT NULL,
  `creado_dt` datetime NOT NULL,
  `modificado_dt` datetime NOT NULL,
  `baja_dt` datetime NOT NULL,
  `prov` varchar(200) COLLATE latin1_spanish_ci NOT NULL,
  `direccion` varchar(200) COLLATE latin1_spanish_ci NOT NULL,
  `tam` int(11) NOT NULL,
  `obj` text COLLATE latin1_spanish_ci NOT NULL,
  `beneficios` text COLLATE latin1_spanish_ci NOT NULL,
  `necesario` text COLLATE latin1_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `tipo`, `nombre`, `descripcion`, `precio`, `descuento`, `envio`, `imagen`, `fecha`, `relacion1`, `relacion2`, `relacion3`, `masvendido`, `nuevos`, `status`, `baja`, `creado_dt`, `modificado_dt`, `baja_dt`, `prov`, `direccion`, `tam`, `obj`, `beneficios`, `necesario`) VALUES
(1, '1', 'cafe expresso', '&lt;p&gt;nasnfpsncl sd sckl lkndsl calskdn&lt;/p&gt;', '300.00', '0.00', '0.00', 'cafe-expresso.jpg', '2021-05-31', 0, 0, 0, '1', '1', 1, 0, '2021-05-31 18:15:07', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', 0, 'cka alsd cls clk', 'kasnfkal claskd calsc pdsk clsad cpanle klfn', 'c lkadnclwkeanpc asdck pda cpaw&eacute;f acpdmsa pamcppkafprn ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) COLLATE latin1_spanish_ci NOT NULL,
  `apellidoPaterno` varchar(100) COLLATE latin1_spanish_ci NOT NULL,
  `apellidoMaterno` varchar(100) COLLATE latin1_spanish_ci NOT NULL,
  `email` varchar(200) COLLATE latin1_spanish_ci NOT NULL,
  `direccion` varchar(150) COLLATE latin1_spanish_ci NOT NULL,
  `ciudad` varchar(100) COLLATE latin1_spanish_ci NOT NULL,
  `colonia` varchar(100) COLLATE latin1_spanish_ci NOT NULL,
  `estado` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `codpos` varchar(10) COLLATE latin1_spanish_ci NOT NULL,
  `pais` varchar(100) COLLATE latin1_spanish_ci NOT NULL,
  `clave` varchar(200) COLLATE latin1_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `apellidoPaterno`, `apellidoMaterno`, `email`, `direccion`, `ciudad`, `colonia`, `estado`, `codpos`, `pais`, `clave`) VALUES
(1, 'Carlos', 'murieta', 'diaz', 'carlos@outlook.com', 'hasam', 'oaxaca de juarez', 'reforma', 'oaxaca', '95621', 'México', '2f3d1ce72b162cbd96b66302e7043d60e60357525b160dc906c499ce3a69c82444a4e6e3c5a52f3f0df7db8b065290338796fe3f7c5100303917f68245f7e594'),
(2, 'Maria', 'Juarez', 'Sarmiento', 'mariadb@gmail.com', 'Calle leon', 'Tlaxiaco', 'reforma', 'Oaxaca', '95621', 'México', 'c299ba138b1c3e857a48a262f7d7b984c2b012c2b864d37560ae87702dd0703533d9484c400fd2b783db9b795d82b2eba04b71f6f967dd1f5d905bb2ee9dd004');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `admon`
--
ALTER TABLE `admon`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `carrito`
--
ALTER TABLE `carrito`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `llaves`
--
ALTER TABLE `llaves`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
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
-- AUTO_INCREMENT de la tabla `admon`
--
ALTER TABLE `admon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `carrito`
--
ALTER TABLE `carrito`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `llaves`
--
ALTER TABLE `llaves`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
