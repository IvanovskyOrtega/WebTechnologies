-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-05-2018 a las 00:38:59
-- Versión del servidor: 10.1.31-MariaDB
-- Versión de PHP: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `diagnostico`
--

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `aciertospromsexo`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `aciertospromsexo` (
`Sexo` varchar(9)
,`Promedio` decimal(14,4)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `aciertossexo`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `aciertossexo` (
`NoReferencia` varchar(10)
,`Sexo` varchar(9)
,`Aciertos` int(5)
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno`
--

CREATE TABLE `alumno` (
  `NoReferencia` varchar(10) NOT NULL,
  `Nombre` varchar(40) NOT NULL,
  `Ap1` varchar(30) NOT NULL,
  `Ap2` varchar(30) NOT NULL,
  `Sexo` varchar(9) NOT NULL,
  `CURP` varchar(18) NOT NULL,
  `Foto` varchar(100) NOT NULL,
  `password` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `alumno`
--

INSERT INTO `alumno` (`NoReferencia`, `Nombre`, `Ap1`, `Ap2`, `Sexo`, `CURP`, `Foto`, `password`) VALUES
('PE00000001', 'Juana', 'Perez', 'Perez', 'Femenino', 'PEPJ12231990', '/Another.png', NULL),
('PE00000002', 'Maria', 'Jimenez', 'Jimenez', 'Femenino', 'JIJM01011991', './2.png', NULL),
('PP00000001', 'Juan', 'Perez', 'Perez', 'Masculino', 'PEPJ12231990', './Something.png', NULL),
('PP00000002', 'Pedro', 'Jimenez', 'Jimenez', 'Masculino', 'JIJP10111920', './1.png', NULL);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `alumnomunicipio`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `alumnomunicipio` (
`Municipio` varchar(60)
,`Alumnos` bigint(21)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `alumnosedad`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `alumnosedad` (
`Edad` int(6)
,`Alumnos` bigint(21)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `alumnossexo`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `alumnossexo` (
`Sexo` varchar(9)
,`Alumnos` bigint(21)
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacto`
--

CREATE TABLE `contacto` (
  `NoReferencia` varchar(10) NOT NULL,
  `Direccion` varchar(60) NOT NULL,
  `Municipio` varchar(60) NOT NULL,
  `Estado` varchar(40) NOT NULL,
  `Cel` varchar(10) NOT NULL,
  `Tel` varchar(10) NOT NULL,
  `Correo` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `contacto`
--

INSERT INTO `contacto` (`NoReferencia`, `Direccion`, `Municipio`, `Estado`, `Cel`, `Tel`, `Correo`) VALUES
('PE00000001', 'Miguel Hidalgo #1', 'Zitácuaro', 'Michoacán', '7150010001', '7151101110', 'a@gmail.com'),
('PE00000002', 'Independencia #20', 'Tlanepantla de Báz', 'Estado de México', '5520020002', '5522202220', 'd@gmail.com'),
('PP00000001', 'Lindavista #127', 'Gustavo A. Madero', 'Ciudad de México', '5550010001', '5551101110', 'b@gmail.com'),
('PP00000002', 'Benito Juárez #13', 'Miguel Hidalgo', 'Ciudad de México', '5550020002', '5552202220', 'c@gmaill.com');

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `edadaciertos`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `edadaciertos` (
`NoReferencia` varchar(10)
,`Edad` int(6)
,`Aciertos` int(5)
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `escolares`
--

CREATE TABLE `escolares` (
  `NoReferencia` varchar(10) NOT NULL,
  `Escuela` varchar(60) NOT NULL,
  `Promedio` float NOT NULL,
  `Opcion` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `escolares`
--

INSERT INTO `escolares` (`NoReferencia`, `Escuela`, `Promedio`, `Opcion`) VALUES
('PE00000001', 'CBTis-162', 8.7, 1),
('PE00000002', 'CBTis-52', 9.2, 1),
('PP00000001', 'CECyT-7', 9, 2),
('PP00000002', 'CECyT-7', 7.5, 1);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `escuelaaciertos`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `escuelaaciertos` (
`NoReferencia` varchar(10)
,`Escuela` varchar(60)
,`Aciertos` int(5)
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `examen`
--

CREATE TABLE `examen` (
  `NoReferencia` varchar(10) NOT NULL,
  `Horario` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Laboratorio` int(5) NOT NULL,
  `Aciertos` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `examen`
--

INSERT INTO `examen` (`NoReferencia`, `Horario`, `Laboratorio`, `Aciertos`) VALUES
('PE00000001', '2018-05-14 04:01:58', 1, 10),
('PE00000002', '2018-05-14 04:05:13', 2, 15),
('PP00000001', '2018-05-14 04:01:58', 2, 15),
('PP00000002', '2018-05-14 04:30:14', 3, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nacimiento`
--

CREATE TABLE `nacimiento` (
  `NoReferencia` varchar(10) NOT NULL,
  `Fecha` date NOT NULL,
  `Pais` varchar(60) NOT NULL,
  `Estado` varchar(40) NOT NULL,
  `Municipio` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `nacimiento`
--

INSERT INTO `nacimiento` (`NoReferencia`, `Fecha`, `Pais`, `Estado`, `Municipio`) VALUES
('PE00000001', '1990-10-10', 'México', 'Michoacán', 'Zitácuaro'),
('PE00000002', '1995-12-12', 'México', 'Estado de México', 'Tlanepantla de Báz'),
('PP00000001', '1996-09-20', 'México', 'Ciudad de México', 'Miguel Hidalgo'),
('PP00000002', '1997-02-14', 'México', 'Ciudad de México', 'Gustavo A. Madero');

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `numaciertos`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `numaciertos` (
`Aciertos` int(5)
,`Alumnos` bigint(21)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `promescaciertos`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `promescaciertos` (
`Escuela` varchar(60)
,`Promedio` decimal(14,4)
);

-- --------------------------------------------------------

--
-- Estructura para la vista `aciertospromsexo`
--
DROP TABLE IF EXISTS `aciertospromsexo`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `aciertospromsexo`  AS  select `aciertossexo`.`Sexo` AS `Sexo`,avg(`aciertossexo`.`Aciertos`) AS `Promedio` from `aciertossexo` group by `aciertossexo`.`Sexo` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `aciertossexo`
--
DROP TABLE IF EXISTS `aciertossexo`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `aciertossexo`  AS  select `alumno`.`NoReferencia` AS `NoReferencia`,`alumno`.`Sexo` AS `Sexo`,`examen`.`Aciertos` AS `Aciertos` from (`alumno` join `examen`) where (`alumno`.`NoReferencia` = `examen`.`NoReferencia`) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `alumnomunicipio`
--
DROP TABLE IF EXISTS `alumnomunicipio`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `alumnomunicipio`  AS  select `contacto`.`Municipio` AS `Municipio`,count(0) AS `Alumnos` from `contacto` group by `contacto`.`Municipio` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `alumnosedad`
--
DROP TABLE IF EXISTS `alumnosedad`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `alumnosedad`  AS  select `edadaciertos`.`Edad` AS `Edad`,count(0) AS `Alumnos` from `edadaciertos` group by `edadaciertos`.`Edad` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `alumnossexo`
--
DROP TABLE IF EXISTS `alumnossexo`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `alumnossexo`  AS  select `aciertossexo`.`Sexo` AS `Sexo`,count(0) AS `Alumnos` from `aciertossexo` group by `aciertossexo`.`Sexo` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `edadaciertos`
--
DROP TABLE IF EXISTS `edadaciertos`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `edadaciertos`  AS  select `nacimiento`.`NoReferencia` AS `NoReferencia`,((year(now()) - year(`nacimiento`.`Fecha`)) - (right(now(),5) < right(`nacimiento`.`Fecha`,5))) AS `Edad`,`examen`.`Aciertos` AS `Aciertos` from (`nacimiento` join `examen`) where (`nacimiento`.`NoReferencia` = `examen`.`NoReferencia`) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `escuelaaciertos`
--
DROP TABLE IF EXISTS `escuelaaciertos`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `escuelaaciertos`  AS  select `escolares`.`NoReferencia` AS `NoReferencia`,`escolares`.`Escuela` AS `Escuela`,`examen`.`Aciertos` AS `Aciertos` from (`examen` join `escolares`) where (`escolares`.`NoReferencia` = `examen`.`NoReferencia`) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `numaciertos`
--
DROP TABLE IF EXISTS `numaciertos`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `numaciertos`  AS  select `examen`.`Aciertos` AS `Aciertos`,count(0) AS `Alumnos` from `examen` group by `examen`.`Aciertos` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `promescaciertos`
--
DROP TABLE IF EXISTS `promescaciertos`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `promescaciertos`  AS  select `escuelaaciertos`.`Escuela` AS `Escuela`,avg(`escuelaaciertos`.`Aciertos`) AS `Promedio` from `escuelaaciertos` group by `escuelaaciertos`.`Escuela` ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumno`
--
ALTER TABLE `alumno`
  ADD PRIMARY KEY (`NoReferencia`);

--
-- Indices de la tabla `contacto`
--
ALTER TABLE `contacto`
  ADD PRIMARY KEY (`NoReferencia`);

--
-- Indices de la tabla `escolares`
--
ALTER TABLE `escolares`
  ADD PRIMARY KEY (`NoReferencia`);

--
-- Indices de la tabla `examen`
--
ALTER TABLE `examen`
  ADD PRIMARY KEY (`NoReferencia`);

--
-- Indices de la tabla `nacimiento`
--
ALTER TABLE `nacimiento`
  ADD PRIMARY KEY (`NoReferencia`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `contacto`
--
ALTER TABLE `contacto`
  ADD CONSTRAINT `Contacto_ibfk_1` FOREIGN KEY (`NoReferencia`) REFERENCES `alumno` (`NoReferencia`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `escolares`
--
ALTER TABLE `escolares`
  ADD CONSTRAINT `Escolares_ibfk_1` FOREIGN KEY (`NoReferencia`) REFERENCES `alumno` (`NoReferencia`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `examen`
--
ALTER TABLE `examen`
  ADD CONSTRAINT `Examen_ibfk_1` FOREIGN KEY (`NoReferencia`) REFERENCES `alumno` (`NoReferencia`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `nacimiento`
--
ALTER TABLE `nacimiento`
  ADD CONSTRAINT `Nacimiento_ibfk_1` FOREIGN KEY (`NoReferencia`) REFERENCES `alumno` (`NoReferencia`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
