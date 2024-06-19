-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-06-2024 a las 13:04:57
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
-- Base de datos: `ferreteria`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `marca` varchar(255) NOT NULL,
  `codigo` varchar(255) NOT NULL,
  `descripcion` text NOT NULL,
  `stock` int(11) NOT NULL,
  `ventas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `marca`, `codigo`, `descripcion`, `stock`, `ventas`) VALUES
(1, 'Martillo mango de madera', 'Stanley', 'Sty-mar-mad', 'Martillo de madera 30cm 1kg', 200, 2),
(2, 'Alicate', 'Stanley', 'Sty-ali', 'Alicate de 20cm platico azul', 100, 5),
(3, 'Alicate', 'Stanley', 'Sty-ali', 'Alicate de 20cm platico azul', 100, 5),
(4, 'Martillo', 'DeWalt', 'Dew-mart', 'Martillo de 500g con mango antideslizante', 150, 20),
(5, 'Destornillador', 'Bosch', 'Bos-des', 'Destornillador estrella de 15cm', 200, 30),
(6, 'Llave Inglesa', 'Truper', 'Tru-llave', 'Llave inglesa de 25cm', 120, 15),
(7, 'Sierra', 'Makita', 'Mak-sierra', 'Sierra manual de 30cm', 80, 10),
(8, 'Taladro', 'Black & Decker', 'B&D-taladro', 'Taladro eléctrico de 500W', 50, 25),
(9, 'Cinta Métrica', 'Stanley', 'Sty-cinta', 'Cinta métrica de 5 metros', 300, 50),
(10, 'Nivel', 'Bosch', 'Bos-nivel', 'Nivel de burbuja de 40cm', 75, 12),
(11, 'Llave Stilson', 'DeWalt', 'Dew-stilson', 'Llave Stilson de 18 pulgadas', 60, 8),
(12, 'Tijeras para Chapa', 'Truper', 'Tru-tijeras', 'Tijeras para chapa de 10 pulgadas', 90, 5),
(13, 'Broca', 'Bosch', 'Bos-broca', 'Broca para concreto de 10mm', 500, 100),
(14, 'Caja de Herramientas', 'Makita', 'Mak-caja', 'Caja de herramientas de plástico con 20 compartimentos', 40, 7),
(15, 'Pistola de Silicona', 'Stanley', 'Sty-pistola', 'Pistola de silicona caliente', 110, 20),
(16, 'Cutter', 'Truper', 'Tru-cutter', 'Cutter de precisión con 10 hojas de repuesto', 180, 45),
(17, 'Llave Allen', 'Bosch', 'Bos-allen', 'Juego de llaves Allen, 10 piezas', 130, 33);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
