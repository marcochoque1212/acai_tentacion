-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-10-2022 a las 17:43:14
-- Versión del servidor: 10.4.20-MariaDB
-- Versión de PHP: 7.4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ventasnet`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nombre` varchar(12) COLLATE utf8_spanish2_ci NOT NULL,
  `apellidop` varchar(12) COLLATE utf8_spanish2_ci NOT NULL,
  `apellidom` varchar(12) COLLATE utf8_spanish2_ci NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `nombre`, `apellidop`, `apellidom`, `fecha`) VALUES
(1, 'heriberto', 'torrez', 'cahmbi', '2022-09-28');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personas`
--

CREATE TABLE `personas` (
  `idusuario` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `correo` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `usuario` varchar(15) COLLATE utf8_spanish2_ci NOT NULL,
  `clave` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `rol` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `personas`
--

INSERT INTO `personas` (`idusuario`, `nombre`, `correo`, `usuario`, `clave`, `rol`) VALUES
(1, 'herib', 'torrezherib@gmail.com', 'admin', '1234', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `producto` varchar(10) COLLATE utf8_spanish2_ci NOT NULL,
  `precio` int(10) NOT NULL,
  `cantidad` int(10) NOT NULL,
  `detalle` varchar(400) COLLATE utf8_spanish2_ci NOT NULL,
  `fecha` date NOT NULL,
  `bl` int(2) NOT NULL DEFAULT 1,
  `imagen` varchar(70) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `producto`, `precio`, `cantidad`, `detalle`, `fecha`, `bl`, `imagen`) VALUES
(1, 'polera', 50, 120, 'polera de algodon para correr aligera su peso y da poderes especiales a los que lo usan', '2022-09-28', 1, 'imagen/276146013_111313764888517_8134846530261149373_n.jpg'),
(2, 'pantalon', 120, 230, 'pantalon de nueva generacion de contextura suelta y a la ves tallada a cada silueta, resistente a climas cruceños cambiantes.', '2022-09-28', 1, 'imagen/276146013_111313764888517_8134846530261149373_n.jpg'),
(3, 'zapato', 90, 120, 'zapatos de cuero de vaca ultra ligero y comodo, ', '2022-09-28', 1, 'imagen/276146013_111313764888517_8134846530261149373_n.jpg'),
(4, 'barbijo', 2, 100, 'barbijo con sensor de moiviento de labios', '2022-09-28', 1, 'imagen/276146013_111313764888517_8134846530261149373_n.jpg'),
(5, 'solera', 50, 124, 'si haces deporte esta es tu mejor opcion ', '2022-09-28', 1, 'imagen/276146013_111313764888517_8134846530261149373_n.jpg'),
(6, 'arroz', 50, 120, 'una fabrica mas sana y de mayor experiencia ', '2022-10-10', 1, 'imagen/276146013_111313764888517_8134846530261149373_n.jpg'),
(7, 'chinelas', 20, 55, 'las mejores gomas que pueda haber salido de la amazonia', '2022-10-10', 1, 'imagen/276146013_111313764888517_8134846530261149373_n.jpg'),
(8, 'gorra', 120, 5, 'las gorras de la marca tornito tienen un bordado especial y a la ves protege del rayos ultravioleta y son facheros', '2022-10-10', 1, 'imagen/276146013_111313764888517_8134846530261149373_n.jpg'),
(9, 'boxer', 20, 12, 'son comodos y ligeros flexible a toda circuntancias con diseño animalistico segun cada gusto', '2022-10-19', 1, 'imagen/276146013_111313764888517_8134846530261149373_n.jpg'),
(18, 'pato', 45, 3, 'plums', '2022-10-21', 0, 'imagen/1 (22).png'),
(19, 'pato', 45, 454, 'fer', '2022-10-14', 0, 'imagen/276146013_111313764888517_8134846530261149373_n.jpg'),
(20, 'pato', 45, 454, 'fer', '2022-10-14', 0, 'imagen/276146013_111313764888517_8134846530261149373_n.jpg'),
(21, 'pato', 45, 454, 'fer', '2022-10-14', 1, 'imagen/276146013_111313764888517_8134846530261149373_n.jpg'),
(22, 'pato', 45, 454, 'fer', '2022-10-14', 1, 'imagen/276146013_111313764888517_8134846530261149373_n.jpg'),
(23, 'pato', 45, 454, 'fer', '2022-10-14', 1, 'imagen/276146013_111313764888517_8134846530261149373_n.jpg'),
(25, 'celualar', 20, 0, 'mejor forma de comuncarte', '2022-10-22', 1, 'imagen/69258021-conjunto-de-escudos-antiguos-con-diferentes-emblemas-e'),
(26, 'moto', 50, 0, 'paar vivir solo', '2022-10-22', 1, 'imagen/1 (22).png'),
(27, 'moto', 50, 0, 'paar vivir solo', '2022-10-22', 1, 'imagen/1 (22).png'),
(28, 'motosierra', 50, 56, 'paar vivir solo en campo', '2022-10-22', 1, 'imagen/EscudoNET fondo verde.png'),
(29, 'motosierra', 50, 56, 'paar vivir solo en campo', '2022-10-22', 1, 'imagen/EscudoNET fondo verde.png'),
(30, 'motosierra', 200, 80, 'paar vivir solo en campo', '2022-10-22', 1, 'imagen/ere.webp'),
(31, 'batido', 20, 200, 'nutricion', '2022-10-23', 1, 'imagen/zapatilla.jpg'),
(32, 'pollo', 45, 33, 'es pollo rico', '2022-10-25', 0, 'imagen/producto.jpg'),
(33, 'gel', 502, 8, 'jhjgj', '2022-10-25', 0, 'imagen/ere.webp'),
(34, 'vijuteria', 10, 2, 'las meores joyas de samta cruz', '2022-10-26', 0, 'imagen/icono-de-escudo0.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `idusuario` int(11) NOT NULL,
  `nombre` varchar(25) COLLATE utf8_spanish2_ci NOT NULL,
  `appater` varchar(25) COLLATE utf8_spanish2_ci NOT NULL,
  `apmater` varchar(25) COLLATE utf8_spanish2_ci NOT NULL,
  `correo` varchar(30) COLLATE utf8_spanish2_ci NOT NULL,
  `usuario` varchar(15) COLLATE utf8_spanish2_ci NOT NULL,
  `clave` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `celular` int(15) NOT NULL,
  `rol` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`idusuario`, `nombre`, `appater`, `apmater`, `correo`, `usuario`, `clave`, `celular`, `rol`) VALUES
(1, 'herib', 'torrez', 'chambi', 'torrezherib@gmail.com', 'admin', '81dc9bdb52d04dc20036dbd8313ed055', 73796790, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `personas`
--
ALTER TABLE `personas`
  ADD PRIMARY KEY (`idusuario`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idusuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `personas`
--
ALTER TABLE `personas`
  MODIFY `idusuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idusuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
