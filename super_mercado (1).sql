-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-07-2024 a las 02:48:01
-- Versión del servidor: 10.1.37-MariaDB
-- Versión de PHP: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `super_mercado`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id_clientes` int(10) NOT NULL,
  `cedula` varchar(10) CHARACTER SET utf8mb4 NOT NULL,
  `nombres` varchar(30) CHARACTER SET utf8mb4 NOT NULL,
  `apellidos` varchar(30) CHARACTER SET utf8mb4 NOT NULL,
  `direccion` int(100) NOT NULL,
  `sexo` varchar(10) CHARACTER SET utf8mb4 NOT NULL,
  `correo` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `telefono` varchar(10) CHARACTER SET utf8 NOT NULL,
  `f_nacimiento` varchar(10) CHARACTER SET utf8mb4 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(10) NOT NULL,
  `cedula` varchar(10) CHARACTER SET utf8mb4 NOT NULL,
  `nombres` varchar(30) CHARACTER SET utf8mb4 NOT NULL,
  `apellidos` varchar(30) CHARACTER SET utf8mb4 NOT NULL,
  `sexo` varchar(10) CHARACTER SET utf8mb4 NOT NULL,
  `direccion` varchar(200) CHARACTER SET utf8mb4 NOT NULL,
  `correo` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
  `usuario` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `contraseña` varchar(50) CHARACTER SET utf8mb4 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id_clientes`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`),
  ADD UNIQUE KEY `cedula` (`cedula`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
