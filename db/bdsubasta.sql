-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-11-2020 a las 23:34:03
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bdsubasta`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `id_categoria` int(11) NOT NULL,
  `categoria` varchar(30) DEFAULT NULL,
  `descripcion` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id_categoria`, `categoria`, `descripcion`) VALUES
(1, 'carro deportivo', 'lujosos'),
(2, 'camioneta', 'ideal para familias medianas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cesta`
--

CREATE TABLE `cesta` (
  `idcesta` int(11) NOT NULL,
  `subasta_id_subasta` int(11) NOT NULL,
  `comprador_idcomprador` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comprador`
--

CREATE TABLE `comprador` (
  `idcomprador` int(11) NOT NULL,
  `usuario` varchar(30) DEFAULT NULL,
  `clave` varchar(35) DEFAULT NULL,
  `estado` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `comprador`
--

INSERT INTO `comprador` (`idcomprador`, `usuario`, `clave`, `estado`) VALUES
(1, 'ana', 'ana', 'activo'),
(2, 'kenia', 'kenia', 'activo'),
(3, 'luna', 'luna', 'activo'),
(4, 'rosa', 'rosa', 'activo'),
(5, 'zimri', 'zimri', 'activo'),
(6, 'marcelino', 'marcelino', ''),
(7, 'luz', 'luz', 'activo'),
(8, 'yefy', 'yefy', 'activo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_comprador`
--

CREATE TABLE `detalle_comprador` (
  `id_detalle_com` int(11) NOT NULL,
  `nombre` varchar(20) DEFAULT NULL,
  `apellido1` varchar(45) DEFAULT NULL,
  `apellido2` varchar(45) DEFAULT NULL,
  `edad` int(11) DEFAULT NULL,
  `correo` varchar(45) DEFAULT NULL,
  `movil` varchar(45) DEFAULT NULL,
  `tarjeta` varchar(45) DEFAULT NULL,
  `no_tarjeta` varchar(45) DEFAULT NULL,
  `comprador_idcomprador` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_persona`
--

CREATE TABLE `detalle_persona` (
  `id_detalle_persona` int(11) NOT NULL,
  `nombre1` varchar(20) DEFAULT NULL,
  `apellido1` varchar(20) DEFAULT NULL,
  `correo` varchar(40) NOT NULL,
  `DPI` int(20) NOT NULL,
  `telefono` int(11) DEFAULT NULL,
  `movil` int(11) DEFAULT NULL,
  `direccion_actual` varchar(45) DEFAULT NULL,
  `genero` varchar(20) DEFAULT NULL,
  `usuario_idusuario1` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `detalle_persona`
--

INSERT INTO `detalle_persona` (`id_detalle_persona`, `nombre1`, `apellido1`, `correo`, `DPI`, `telefono`, `movil`, `direccion_actual`, `genero`, `usuario_idusuario1`) VALUES
(1, 'rudy', 'ramirez', 'rramirezg1@miumg.edu', 234556678, 988765542, 12341234, 'panajachel, solola ', 'masculino', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oferta`
--

CREATE TABLE `oferta` (
  `id_oferta` int(11) NOT NULL,
  `oferta` int(11) NOT NULL,
  `estado` int(11) DEFAULT NULL,
  `fecha_hora` datetime DEFAULT NULL,
  `subasta_id_subasta` int(11) NOT NULL,
  `comprador_idcomprador` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `oferta`
--

INSERT INTO `oferta` (`id_oferta`, `oferta`, `estado`, `fecha_hora`, `subasta_id_subasta`, `comprador_idcomprador`) VALUES
(1, 200, 1, '2020-11-13 00:12:35', 1, 1),
(2, 101, 0, '2020-11-13 20:57:52', 7, 3),
(3, 2002, 0, '2020-11-13 20:58:40', 5, 3),
(4, 400, 0, '2020-11-13 21:01:40', 3, 3),
(5, 205, 0, '2020-11-13 21:03:32', 1, 3),
(6, 602, 0, '2020-11-13 21:05:09', 6, 3),
(9, 403, 0, '2020-11-13 21:17:42', 4, 1),
(10, 555, 0, '2020-11-13 21:18:24', 3, 1),
(11, 500, 1, '2020-11-13 21:38:27', 2, 1),
(12, 102, 0, '2020-11-13 21:38:46', 7, 1),
(13, 900, 0, '2020-11-13 21:39:25', 1, 1),
(14, 2004, 0, '2020-11-13 21:40:06', 5, 1),
(15, 302, 0, '2020-11-13 23:23:53', 8, 3),
(16, 400, 0, '2020-11-13 23:25:40', 9, 1),
(17, 900, 1, '2020-11-13 00:12:35', 10, 3),
(18, 700, 1, '2020-11-13 00:12:35', 9, 1),
(19, 700, 1, '2020-11-13 00:12:35', 11, 1),
(20, 600, 1, '2020-11-13 00:12:35', 12, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `idproducto` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `descripcion` varchar(200) DEFAULT NULL,
  `imagen` varchar(200) DEFAULT NULL,
  `categoria_id_categoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`idproducto`, `nombre`, `descripcion`, `imagen`, `categoria_id_categoria`) VALUES
(1, 'lambo', 'dlasdkfjlñkasfj', 'prueba.jpg', 1),
(2, 'perta', 'alma libre', 'perta.jpg', 1),
(3, 'camaro amarillo', 'brillante', 'camaru_pin.jpg', 1),
(4, 'camaru platiado', 'elegancia', 'camaru_platiado.jpg', 1),
(5, 'chevrolet', 'familiar', 'chevrolet.jpg', 2),
(6, 'perta', 'lujoso', 'perta.jpg', 1),
(7, 'toyota agricula', 'familiar', 'toyota-agricula.jpg', 2),
(8, 'hilux', 'trabajo', 'Toyota-Hilux.jpg', 2),
(9, 'camaro amarillo', 'akjdf', 'camaru_pin.jpg', 1),
(10, 'araban nin', 'adfkalsdkfj', 'araban nin.jpg', 1),
(11, 'camioneta', 'aklñdfj', 'camioneta.jpg', 2),
(12, 'jeeep', 'adfkjgñ', 'jeep.jpg', 1),
(13, 'nissan', 'jdñkajl', 'nissan.jpg', 2),
(14, 'suv', 'aidfgja', 'suv.jpg', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `idrol` int(11) NOT NULL,
  `categoria` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`idrol`, `categoria`) VALUES
(1, 'admin');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subasta`
--

CREATE TABLE `subasta` (
  `id_subasta` int(11) NOT NULL,
  `min` int(11) DEFAULT NULL,
  `max` int(11) DEFAULT NULL,
  `tiempo_ini` datetime DEFAULT NULL,
  `tiempo_fin` datetime NOT NULL,
  `estado` int(11) NOT NULL,
  `comprador` int(11) NOT NULL,
  `usuario_idusuario` int(11) NOT NULL,
  `producto_idproducto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `subasta`
--

INSERT INTO `subasta` (`id_subasta`, `min`, `max`, `tiempo_ini`, `tiempo_fin`, `estado`, `comprador`, `usuario_idusuario`, `producto_idproducto`) VALUES
(1, 100, 1000, '2020-11-11 20:58:24', '2020-11-14 20:58:24', 1, 1, 28, 1),
(2, 500, 500, '2020-11-13 09:50:21', '2020-11-15 16:52:00', 0, 0, 28, 4),
(3, 400, 4000, '2020-11-13 09:54:36', '2020-11-13 03:00:00', 1, 1, 26, 5),
(4, 400, 40000, '2020-11-13 11:59:03', '2020-11-14 19:01:00', 1, 1, 26, 6),
(5, 2000, 20000, '2020-11-13 12:00:23', '2020-11-14 17:00:00', 1, 1, 26, 7),
(6, 600, 90000, '2020-11-13 12:01:16', '2020-11-17 08:01:00', 1, 3, 26, 8),
(7, 100, 15000, '2020-11-13 20:46:21', '2020-11-16 01:46:00', 1, 1, 26, 9),
(8, 300, 3000, '2020-11-13 23:19:55', '2020-11-15 04:21:00', 1, 3, 26, 10),
(9, 400, 5000, '2020-11-13 23:20:40', '2020-11-14 20:24:00', 1, 1, 26, 11),
(10, 1000, 10000, '2020-11-13 23:21:21', '2020-11-20 20:24:00', 0, 0, 26, 12),
(11, 200, 800, '2020-11-13 23:22:08', '2020-11-16 06:25:00', 0, 0, 26, 13),
(12, 450, 890, '2020-11-13 23:22:57', '2020-11-14 21:27:00', 0, 0, 26, 14);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `idusuario` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `clave` varchar(45) DEFAULT NULL,
  `estado` varchar(45) DEFAULT NULL,
  `rol_idrol` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`idusuario`, `nombre`, `clave`, `estado`, `rol_idrol`) VALUES
(2, 'rudy', '12345', 'activo', 1),
(26, 'luis', 'luis', 'activo', 1),
(28, 'telcomgt', 'telcomgt', 'activo', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_bitacora`
--

CREATE TABLE `usuario_bitacora` (
  `idusuario_bitacora` int(11) NOT NULL,
  `fecha` datetime DEFAULT NULL,
  `tabla_mod` varchar(20) DEFAULT NULL,
  `codigo_mod` varchar(25) DEFAULT NULL,
  `columna_mod` varchar(25) DEFAULT NULL,
  `dato_antiguo` varchar(40) DEFAULT NULL,
  `dato_actual` varchar(40) DEFAULT NULL,
  `usuario_idusuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indices de la tabla `cesta`
--
ALTER TABLE `cesta`
  ADD PRIMARY KEY (`idcesta`),
  ADD KEY `subasta_id_subasta` (`subasta_id_subasta`,`comprador_idcomprador`),
  ADD KEY `comprador_idcomprador` (`comprador_idcomprador`);

--
-- Indices de la tabla `comprador`
--
ALTER TABLE `comprador`
  ADD PRIMARY KEY (`idcomprador`);

--
-- Indices de la tabla `detalle_comprador`
--
ALTER TABLE `detalle_comprador`
  ADD PRIMARY KEY (`id_detalle_com`),
  ADD KEY `comprador_idcomprador` (`comprador_idcomprador`);

--
-- Indices de la tabla `detalle_persona`
--
ALTER TABLE `detalle_persona`
  ADD PRIMARY KEY (`id_detalle_persona`),
  ADD KEY `usuario_idusuario1` (`usuario_idusuario1`);

--
-- Indices de la tabla `oferta`
--
ALTER TABLE `oferta`
  ADD PRIMARY KEY (`id_oferta`),
  ADD KEY `comprador_idcomprador` (`comprador_idcomprador`),
  ADD KEY `subasta_id_subasta` (`subasta_id_subasta`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`idproducto`),
  ADD KEY `categoria_id_categoria` (`categoria_id_categoria`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`idrol`);

--
-- Indices de la tabla `subasta`
--
ALTER TABLE `subasta`
  ADD PRIMARY KEY (`id_subasta`),
  ADD KEY `usuario_idusuario` (`usuario_idusuario`,`producto_idproducto`),
  ADD KEY `producto_idproducto` (`producto_idproducto`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idusuario`),
  ADD KEY `rol_idrol` (`rol_idrol`);

--
-- Indices de la tabla `usuario_bitacora`
--
ALTER TABLE `usuario_bitacora`
  ADD PRIMARY KEY (`idusuario_bitacora`),
  ADD KEY `usuario_idusuario` (`usuario_idusuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `cesta`
--
ALTER TABLE `cesta`
  MODIFY `idcesta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT de la tabla `comprador`
--
ALTER TABLE `comprador`
  MODIFY `idcomprador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `detalle_comprador`
--
ALTER TABLE `detalle_comprador`
  MODIFY `id_detalle_com` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `detalle_persona`
--
ALTER TABLE `detalle_persona`
  MODIFY `id_detalle_persona` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `oferta`
--
ALTER TABLE `oferta`
  MODIFY `id_oferta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `idproducto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
  MODIFY `idrol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `subasta`
--
ALTER TABLE `subasta`
  MODIFY `id_subasta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idusuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de la tabla `usuario_bitacora`
--
ALTER TABLE `usuario_bitacora`
  MODIFY `idusuario_bitacora` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cesta`
--
ALTER TABLE `cesta`
  ADD CONSTRAINT `cesta_ibfk_1` FOREIGN KEY (`comprador_idcomprador`) REFERENCES `comprador` (`idcomprador`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cesta_ibfk_2` FOREIGN KEY (`subasta_id_subasta`) REFERENCES `subasta` (`id_subasta`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `detalle_comprador`
--
ALTER TABLE `detalle_comprador`
  ADD CONSTRAINT `detalle_comprador_ibfk_1` FOREIGN KEY (`comprador_idcomprador`) REFERENCES `comprador` (`idcomprador`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `detalle_persona`
--
ALTER TABLE `detalle_persona`
  ADD CONSTRAINT `detalle_persona_ibfk_1` FOREIGN KEY (`usuario_idusuario1`) REFERENCES `usuario` (`idusuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `oferta`
--
ALTER TABLE `oferta`
  ADD CONSTRAINT `oferta_ibfk_1` FOREIGN KEY (`subasta_id_subasta`) REFERENCES `subasta` (`id_subasta`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `oferta_ibfk_2` FOREIGN KEY (`comprador_idcomprador`) REFERENCES `comprador` (`idcomprador`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`categoria_id_categoria`) REFERENCES `categoria` (`id_categoria`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `subasta`
--
ALTER TABLE `subasta`
  ADD CONSTRAINT `subasta_ibfk_1` FOREIGN KEY (`producto_idproducto`) REFERENCES `producto` (`idproducto`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `subasta_ibfk_2` FOREIGN KEY (`usuario_idusuario`) REFERENCES `usuario` (`idusuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`rol_idrol`) REFERENCES `rol` (`idrol`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `usuario_bitacora`
--
ALTER TABLE `usuario_bitacora`
  ADD CONSTRAINT `usuario_bitacora_ibfk_1` FOREIGN KEY (`usuario_idusuario`) REFERENCES `usuario` (`idusuario`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
