-- phpMyAdmin SQL Dump
-- version 4.4.12
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-04-2020 a las 23:34:05
-- Versión del servidor: 5.6.25
-- Versión de PHP: 5.6.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `store`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrador`
--

CREATE TABLE IF NOT EXISTS `administrador` (
  `Nombre` varchar(30) NOT NULL,
  `Clave` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `administrador`
--

INSERT INTO `administrador` (`Nombre`, `Clave`) VALUES
('admin', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE IF NOT EXISTS `categoria` (
  `CodigoCat` varchar(30) NOT NULL,
  `Nombre` varchar(30) NOT NULL,
  `Descripcion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`CodigoCat`, `Nombre`, `Descripcion`) VALUES
('C1', 'Electrodomésticos', 'Electrodomésticos'),
('C2', 'Multimedia', 'Articulos de entretenimiento y diversión'),
('C3', 'Móbiles', 'Teléfonos celulares smartphones');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE IF NOT EXISTS `cliente` (
  `NIT` varchar(30) NOT NULL,
  `Nombre` varchar(30) NOT NULL,
  `NombreCompleto` varchar(70) NOT NULL,
  `Apellido` varchar(70) NOT NULL,
  `Clave` text NOT NULL,
  `Direccion` varchar(200) NOT NULL,
  `Telefono` int(20) NOT NULL,
  `Email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle`
--

CREATE TABLE IF NOT EXISTS `detalle` (
  `NumPedido` int(20) NOT NULL,
  `CodigoProd` varchar(30) NOT NULL,
  `CantidadProductos` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horario`
--

CREATE TABLE IF NOT EXISTS `horario` (
  `id` int(11) NOT NULL,
  `hora` text NOT NULL,
  `id_ruta` int(11) NOT NULL,
  `cooperativa` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `horario`
--

INSERT INTO `horario` (`id`, `hora`, `id_ruta`, `cooperativa`) VALUES
(1, '01H00 / 02H00 / 03H00 / 05H30 / 09H30 / 11H45 / 12H25', 1, 'Amazonas'),
(2, '08H30 / 09H30', 2, 'Amazonas'),
(4, '04H30 / 12H00', 3, 'Amazonas'),
(5, '01H30 / 04H30 / 06H30 / 07H30 / 15H15 / 17H00', 4, 'Jumandy'),
(6, '04H30 / 08H00 / 11H00 / 12H15 / 14H30 / 16H45 / 18H00', 5, 'Jumandy');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lugar`
--

CREATE TABLE IF NOT EXISTS `lugar` (
  `id` int(11) NOT NULL,
  `Comunidad` text NOT NULL,
  `Estado` text NOT NULL,
  `Pais` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `lugar`
--

INSERT INTO `lugar` (`id`, `Comunidad`, `Estado`, `Pais`) VALUES
(1, 'Tena', '', 'Ecuador'),
(2, 'Quito', '', 'Ecuador'),
(3, 'Misahualli', '', 'Ecuador'),
(4, 'Baeza', '', 'Ecuador'),
(5, 'Loreto', '', 'Ecuador'),
(6, 'Coca', '', 'Ecuador'),
(7, 'Guayaquil', '', 'Ecuador'),
(8, 'Ambato', '', 'Ecuador'),
(9, 'Puyo', '', 'Ecuador'),
(10, 'Riobamba', '', 'Ecuador'),
(11, 'Sacha', '', 'Ecuador'),
(12, 'Limoncocha', '', 'Ecuador'),
(13, 'Ponpeya', '', 'Ecuador'),
(14, 'Chaco', '', 'Ecuador'),
(15, 'Puerto Murialdo', '', 'Ecuador'),
(16, 'San Luis', '', 'Ecuador');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE IF NOT EXISTS `persona` (
  `id` int(11) NOT NULL COMMENT 'Llave Primaria',
  `nombre_cooperativa` text NOT NULL COMMENT 'Nombre de Personal',
  `origen_persona` text NOT NULL COMMENT 'Salario personal',
  `ruta_persona` text NOT NULL COMMENT 'Edad Empleado',
  `destino_persona` text NOT NULL,
  `ruta_hora` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='Tabla Personal';

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`id`, `nombre_cooperativa`, `origen_persona`, `ruta_persona`, `destino_persona`, `ruta_hora`) VALUES
(1, 'Amazonas', 'MISAHUALLI-TENA', 'MISAHUALLI-TENA-QUITO', 'QUITO', '01H00/-2H00'),
(2, 'Luis Castro', '12000', '43', '', ''),
(3, 'Marcos Cuneo', '6000', '35', '', ''),
(4, 'Kelly Valdivia', '5600', '22', '', ''),
(5, 'Mario Bonneti', '7500', '33', '', ''),
(6, 'William Soto', '3500', '25', '', ''),
(7, 'Hector Carrillo', '6300', '28', '', ''),
(8, 'Luisa Collasos', '4500', '31', '', ''),
(9, 'Michael Yuri', '9200', '39', '', ''),
(10, 'Sofia Frisa', '3800', '26', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE IF NOT EXISTS `producto` (
  `CodigoProd` varchar(30) NOT NULL,
  `NombreProd` varchar(30) NOT NULL,
  `CodigoCat` varchar(30) NOT NULL,
  `Precio` decimal(30,2) NOT NULL,
  `Modelo` varchar(30) NOT NULL,
  `Marca` varchar(30) NOT NULL,
  `Stock` int(20) NOT NULL,
  `NITProveedor` varchar(30) NOT NULL,
  `Imagen` varchar(150) NOT NULL,
  `Nombre` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`CodigoProd`, `NombreProd`, `CodigoCat`, `Precio`, `Modelo`, `Marca`, `Stock`, `NITProveedor`, `Imagen`, `Nombre`) VALUES
('10101010', 'joasude', 'C2', '10.00', '2018', 'hik', 10, '0001783', 'telefonia_ip.jpg', 'admin');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE IF NOT EXISTS `proveedor` (
  `NITProveedor` varchar(30) NOT NULL,
  `NombreProveedor` varchar(30) NOT NULL,
  `Direccion` varchar(200) NOT NULL,
  `Telefono` int(20) NOT NULL,
  `PaginaWeb` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`NITProveedor`, `NombreProveedor`, `Direccion`, `Telefono`, `PaginaWeb`) VALUES
('0001781', 'Sony', 'Minato, Tokio, Japón', 22596485, 'www.sony.com'),
('0001782', 'HTC', 'Taoyuan, Taiwán, (República de China)', 25987456, 'www.htc.com'),
('0001783', 'TCL', 'Huizhou, Guangdong, China', 25698745, 'tcl.com.ar'),
('0001785', 'Samsung', 'Samsung Town, Seúl, Corea del Sur', 22504787, 'www.samsung.com'),
('0001787', 'LG', 'Seúl,Corea del Sur', 26589874, 'www.lg.com'),
('0001788', 'Compaq', 'Houston, Texas, EE.UU', 24569875, 'www.compaq.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ruta`
--

CREATE TABLE IF NOT EXISTS `ruta` (
  `id` int(11) NOT NULL,
  `id_lugar` int(11) NOT NULL,
  `posicion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ruta`
--

INSERT INTO `ruta` (`id`, `id_lugar`, `posicion`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 1),
(4, 1, 1),
(5, 1, 1),
(6, 1, 1),
(7, 1, 1),
(8, 1, 1),
(11, 1, 1),
(1, 2, 2),
(2, 2, 3),
(4, 2, 3),
(2, 3, 1),
(4, 4, 2),
(11, 4, 2),
(5, 5, 2),
(5, 6, 3),
(7, 6, 2),
(11, 6, 3),
(6, 7, 2),
(3, 8, 2),
(9, 8, 1),
(8, 9, 2),
(9, 10, 2),
(10, 11, 2),
(10, 15, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta`
--

CREATE TABLE IF NOT EXISTS `venta` (
  `NumPedido` int(20) NOT NULL,
  `Fecha` varchar(150) NOT NULL,
  `NIT` varchar(30) NOT NULL,
  `Descuento` int(20) NOT NULL,
  `TotalPagar` decimal(30,2) NOT NULL,
  `Estado` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administrador`
--
ALTER TABLE `administrador`
  ADD PRIMARY KEY (`Nombre`);

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`CodigoCat`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`NIT`);

--
-- Indices de la tabla `detalle`
--
ALTER TABLE `detalle`
  ADD KEY `NumPedido` (`NumPedido`),
  ADD KEY `CodigoProd` (`CodigoProd`);

--
-- Indices de la tabla `horario`
--
ALTER TABLE `horario`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_ruta` (`id_ruta`);

--
-- Indices de la tabla `lugar`
--
ALTER TABLE `lugar`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`CodigoProd`),
  ADD KEY `CodigoCat` (`CodigoCat`),
  ADD KEY `NITProveedor` (`NITProveedor`),
  ADD KEY `Agregado` (`Nombre`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`NITProveedor`);

--
-- Indices de la tabla `ruta`
--
ALTER TABLE `ruta`
  ADD PRIMARY KEY (`id`,`id_lugar`,`posicion`),
  ADD KEY `id_lugar` (`id_lugar`);

--
-- Indices de la tabla `venta`
--
ALTER TABLE `venta`
  ADD PRIMARY KEY (`NumPedido`),
  ADD KEY `NIT` (`NIT`),
  ADD KEY `NIT_2` (`NIT`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `horario`
--
ALTER TABLE `horario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `lugar`
--
ALTER TABLE `lugar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT de la tabla `persona`
--
ALTER TABLE `persona`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Llave Primaria',AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de la tabla `venta`
--
ALTER TABLE `venta`
  MODIFY `NumPedido` int(20) NOT NULL AUTO_INCREMENT;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalle`
--
ALTER TABLE `detalle`
  ADD CONSTRAINT `detalle_ibfk_8` FOREIGN KEY (`CodigoProd`) REFERENCES `producto` (`CodigoProd`) ON UPDATE CASCADE,
  ADD CONSTRAINT `detalle_ibfk_9` FOREIGN KEY (`NumPedido`) REFERENCES `venta` (`NumPedido`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `horario`
--
ALTER TABLE `horario`
  ADD CONSTRAINT `horario_ibfk_1` FOREIGN KEY (`id_ruta`) REFERENCES `ruta` (`id`);

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `producto_ibfk_7` FOREIGN KEY (`CodigoCat`) REFERENCES `categoria` (`CodigoCat`) ON UPDATE CASCADE,
  ADD CONSTRAINT `producto_ibfk_8` FOREIGN KEY (`NITProveedor`) REFERENCES `proveedor` (`NITProveedor`) ON UPDATE CASCADE,
  ADD CONSTRAINT `producto_ibfk_9` FOREIGN KEY (`Nombre`) REFERENCES `administrador` (`Nombre`);

--
-- Filtros para la tabla `ruta`
--
ALTER TABLE `ruta`
  ADD CONSTRAINT `ruta_ibfk_1` FOREIGN KEY (`id_lugar`) REFERENCES `lugar` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `venta`
--
ALTER TABLE `venta`
  ADD CONSTRAINT `venta_ibfk_1` FOREIGN KEY (`NIT`) REFERENCES `cliente` (`NIT`) ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
