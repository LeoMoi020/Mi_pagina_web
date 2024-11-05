-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-11-2024 a las 16:33:31
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
-- Base de datos: `tienda_hardware`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `descripcion` text DEFAULT NULL,
  `precio` decimal(10,2) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `descripcion`, `precio`, `stock`) VALUES
(1, 'Monitor LG 4k', 'Monitor Gamer LG 4k 165Hz de 27\' panel IPS', 300.00, 10),
(2, 'Monitor Samsung 22\'', 'Monitor gamer LG 4k 165Hz de 27\' panel IPS', 150.00, 10),
(3, 'HyperX Cloud II', 'Headset HyperX Cloud II 7.1', 60.00, 10),
(4, 'Logitech G733', 'Headset Logitech G733 Wireless RGB lila', 70.00, 10),
(5, 'Logitech G203', 'Mouse Logitech G203 blue', 30.00, 10),
(6, 'Redragon Storm Elite', 'Mouse Redragon Storm Elite White m988 RGB', 35.00, 10),
(7, 'Corsair K55', 'Teclado Mecánico Corsair K55 RGB', 50.00, 10),
(8, 'Redragon Draconic', 'Teclado Mecánico Redragon Draconic K530 RGB', 65.00, 10),
(9, 'X2 Memoria RAM 8gb Corsair', 'X2 Memoria RAM DDR4 Vengance 8gb Corsair RGB 3600MHz', 60.00, 10),
(10, 'Memoria RAM 8gb Fury Beast', 'Memoria RAM DDR4 8gb Fury Beast RGB 3200MHz', 30.00, 10),
(11, 'Gabinete Thermaltake S200', 'Gabinete Thermaltake S200 Tg ARGB Vidrio coolerX3 Blanco', 130.00, 10),
(12, 'Gabinete Gamer KJ Z399', 'Gabinete Gamer KJ Z399 4 Coolers RGB', 80.00, 10),
(13, 'Set 3x Coolers 120mm', 'Set 3x Coolers Pwm 120mm ARGB Blancos', 70.00, 10),
(14, 'Intel Core i5 10400', 'Procesador Intel Core i5 10400 4.3 Ghz Comet Lake 1200', 170.00, 10),
(15, 'Ryzen 7 5700g', 'Procesador Amd Ryzen 7 5700g Am4', 260.00, 10),
(16, 'Ssd 500gb Kingston', 'Disco Ssd 500gb Kingston Nv2 M2 Gen4', 80.00, 10),
(17, 'HDD Seagate 2TB', 'Disco Rígido HDD Seagate BarraCuda 2TB', 90.00, 10),
(18, 'Fuente Corsair 650w 80 Plus', 'Fuente Corsair 650w Cv650 Negro 80 Plus Bronze', 90.00, 10),
(19, 'Asus ROG 1200W 80 plus Platinum', 'Fuente Asus ROG Thor 1200W 80 plus Platinum', 500.00, 10),
(20, 'RTX 2060 Super Ventus', 'Placa de video MSI RTX 2060 Super Ventus', 320.00, 10),
(21, 'RTX 4060 Ti 16GB', 'Gigabyte GeForce RTX 4060 Ti GAMING OC 16GB GDDR6 PCIe 4.0', 560.00, 10),
(22, 'MOTHERBOARD GIGABYTE H510M', 'MOTHERBOARD GIGABYTE H510M S2H V2 1200 DDR4', 90.00, 10),
(23, 'MOTHERBOARD GIGABYTE B550', 'MOTHERBOARD GIGABYTE AM4 B550 AORUS PRO', 150.00, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telefono` varchar(10) NOT NULL,
  `contraseña` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

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
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
