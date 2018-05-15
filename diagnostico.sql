-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 15-05-2018 a las 23:42:09
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
-- Estructura Stand-in para la vista `AciertosPromSexo`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `AciertosPromSexo` (
`Sexo` varchar(9)
,`Promedio` decimal(14,4)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `AciertosSexo`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `AciertosSexo` (
`NoReferencia` varchar(10)
,`Sexo` varchar(9)
,`Aciertos` int(5)
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Alumno`
--

CREATE TABLE `Alumno` (
  `NoReferencia` varchar(10) NOT NULL,
  `Nombre` varchar(40) NOT NULL,
  `Ap1` varchar(30) NOT NULL,
  `Ap2` varchar(30) NOT NULL,
  `Sexo` varchar(9) NOT NULL,
  `CURP` varchar(18) NOT NULL,
  `Foto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Alumno`
--

INSERT INTO `Alumno` (`NoReferencia`, `Nombre`, `Ap1`, `Ap2`, `Sexo`, `CURP`, `Foto`) VALUES
('PE00000001', 'Juana', 'Perez', 'Perez', 'Femenino', 'PEPJ12231990', '/Another.png'),
('PE00000002', 'Maria', 'Jimenez', 'Jimenez', 'Femenino', 'JIJM01011991', './2.png'),
('PP00000001', 'Juan', 'Perez', 'Perez', 'Masculino', 'PEPJ12231990', './Something.png'),
('PP00000002', 'Pedro', 'Jimenez', 'Jimenez', 'Masculino', 'JIJP10111920', './1.png');

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `AlumnoMunicipio`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `AlumnoMunicipio` (
`Municipio` varchar(60)
,`Alumnos` bigint(21)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `AlumnosEdad`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `AlumnosEdad` (
`Edad` int(6)
,`Alumnos` bigint(21)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `AlumnosSexo`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `AlumnosSexo` (
`Sexo` varchar(9)
,`Alumnos` bigint(21)
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Contacto`
--

CREATE TABLE `Contacto` (
  `NoReferencia` varchar(10) NOT NULL,
  `Direccion` varchar(60) NOT NULL,
  `Municipio` varchar(60) NOT NULL,
  `Estado` varchar(40) NOT NULL,
  `Cel` varchar(10) NOT NULL,
  `Tel` varchar(10) NOT NULL,
  `Correo` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Contacto`
--

INSERT INTO `Contacto` (`NoReferencia`, `Direccion`, `Municipio`, `Estado`, `Cel`, `Tel`, `Correo`) VALUES
('PE00000001', 'Miguel Hidalgo #1', 'Zitácuaro', 'Michoacán', '7150010001', '7151101110', 'a@gmail.com'),
('PE00000002', 'Independencia #20', 'Tlanepantla de Báz', 'Estado de México', '5520020002', '5522202220', 'd@gmail.com'),
('PP00000001', 'Lindavista #127', 'Gustavo A. Madero', 'Ciudad de México', '5550010001', '5551101110', 'b@gmail.com'),
('PP00000002', 'Benito Juárez #13', 'Miguel Hidalgo', 'Ciudad de México', '5550020002', '5552202220', 'c@gmaill.com');

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `EdadAciertos`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `EdadAciertos` (
`NoReferencia` varchar(10)
,`Edad` int(6)
,`Aciertos` int(5)
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Escolares`
--

CREATE TABLE `Escolares` (
  `NoReferencia` varchar(10) NOT NULL,
  `Escuela` varchar(60) NOT NULL,
  `Promedio` float NOT NULL,
  `Opcion` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Escolares`
--

INSERT INTO `Escolares` (`NoReferencia`, `Escuela`, `Promedio`, `Opcion`) VALUES
('PE00000001', 'CBTis-162', 8.7, 1),
('PE00000002', 'CBTis-52', 9.2, 1),
('PP00000001', 'CECyT-7', 9, 2),
('PP00000002', 'CECyT-7', 7.5, 1);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `EscuelaAciertos`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `EscuelaAciertos` (
`NoReferencia` varchar(10)
,`Escuela` varchar(60)
,`Aciertos` int(5)
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Examen`
--

CREATE TABLE `Examen` (
  `NoReferencia` varchar(10) NOT NULL,
  `Horario` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Laboratorio` int(5) NOT NULL,
  `Aciertos` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Examen`
--

INSERT INTO `Examen` (`NoReferencia`, `Horario`, `Laboratorio`, `Aciertos`) VALUES
('PE00000001', '2018-05-14 04:01:58', 1, 10),
('PE00000002', '2018-05-14 04:05:13', 2, 15),
('PP00000001', '2018-05-14 04:01:58', 2, 15),
('PP00000002', '2018-05-14 04:30:14', 3, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Nacimiento`
--

CREATE TABLE `Nacimiento` (
  `NoReferencia` varchar(10) NOT NULL,
  `Fecha` date NOT NULL,
  `Pais` varchar(60) NOT NULL,
  `Estado` varchar(40) NOT NULL,
  `Municipio` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Nacimiento`
--

INSERT INTO `Nacimiento` (`NoReferencia`, `Fecha`, `Pais`, `Estado`, `Municipio`) VALUES
('PE00000001', '1990-10-10', 'México', 'Michoacán', 'Zitácuaro'),
('PE00000002', '1995-12-12', 'México', 'Estado de México', 'Tlanepantla de Báz'),
('PP00000001', '1996-09-20', 'México', 'Ciudad de México', 'Miguel Hidalgo'),
('PP00000002', '1997-02-14', 'México', 'Ciudad de México', 'Gustavo A. Madero');

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `NumAciertos`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `NumAciertos` (
`Aciertos` int(5)
,`Alumnos` bigint(21)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `PromEscAciertos`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `PromEscAciertos` (
`Escuela` varchar(60)
,`Promedio` decimal(14,4)
);

-- --------------------------------------------------------

--
-- Estructura para la vista `AciertosPromSexo`
--
DROP TABLE IF EXISTS `AciertosPromSexo`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `AciertosPromSexo`  AS  select `AciertosSexo`.`Sexo` AS `Sexo`,avg(`AciertosSexo`.`Aciertos`) AS `Promedio` from `AciertosSexo` group by `AciertosSexo`.`Sexo` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `AciertosSexo`
--
DROP TABLE IF EXISTS `AciertosSexo`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `AciertosSexo`  AS  select `Alumno`.`NoReferencia` AS `NoReferencia`,`Alumno`.`Sexo` AS `Sexo`,`Examen`.`Aciertos` AS `Aciertos` from (`Alumno` join `Examen`) where (`Alumno`.`NoReferencia` = `Examen`.`NoReferencia`) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `AlumnoMunicipio`
--
DROP TABLE IF EXISTS `AlumnoMunicipio`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `AlumnoMunicipio`  AS  select `Contacto`.`Municipio` AS `Municipio`,count(0) AS `Alumnos` from `Contacto` group by `Contacto`.`Municipio` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `AlumnosEdad`
--
DROP TABLE IF EXISTS `AlumnosEdad`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `AlumnosEdad`  AS  select `EdadAciertos`.`Edad` AS `Edad`,count(0) AS `Alumnos` from `EdadAciertos` group by `EdadAciertos`.`Edad` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `AlumnosSexo`
--
DROP TABLE IF EXISTS `AlumnosSexo`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `AlumnosSexo`  AS  select `AciertosSexo`.`Sexo` AS `Sexo`,count(0) AS `Alumnos` from `AciertosSexo` group by `AciertosSexo`.`Sexo` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `EdadAciertos`
--
DROP TABLE IF EXISTS `EdadAciertos`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `EdadAciertos`  AS  select `Nacimiento`.`NoReferencia` AS `NoReferencia`,((year(now()) - year(`Nacimiento`.`Fecha`)) - (right(now(),5) < right(`Nacimiento`.`Fecha`,5))) AS `Edad`,`Examen`.`Aciertos` AS `Aciertos` from (`Nacimiento` join `Examen`) where (`Nacimiento`.`NoReferencia` = `Examen`.`NoReferencia`) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `EscuelaAciertos`
--
DROP TABLE IF EXISTS `EscuelaAciertos`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `EscuelaAciertos`  AS  select `Escolares`.`NoReferencia` AS `NoReferencia`,`Escolares`.`Escuela` AS `Escuela`,`Examen`.`Aciertos` AS `Aciertos` from (`Examen` join `Escolares`) where (`Escolares`.`NoReferencia` = `Examen`.`NoReferencia`) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `NumAciertos`
--
DROP TABLE IF EXISTS `NumAciertos`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `NumAciertos`  AS  select `Examen`.`Aciertos` AS `Aciertos`,count(0) AS `Alumnos` from `Examen` group by `Examen`.`Aciertos` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `PromEscAciertos`
--
DROP TABLE IF EXISTS `PromEscAciertos`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `PromEscAciertos`  AS  select `EscuelaAciertos`.`Escuela` AS `Escuela`,avg(`EscuelaAciertos`.`Aciertos`) AS `Promedio` from `EscuelaAciertos` group by `EscuelaAciertos`.`Escuela` ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `Alumno`
--
ALTER TABLE `Alumno`
  ADD PRIMARY KEY (`NoReferencia`);

--
-- Indices de la tabla `Contacto`
--
ALTER TABLE `Contacto`
  ADD PRIMARY KEY (`NoReferencia`);

--
-- Indices de la tabla `Escolares`
--
ALTER TABLE `Escolares`
  ADD PRIMARY KEY (`NoReferencia`);

--
-- Indices de la tabla `Examen`
--
ALTER TABLE `Examen`
  ADD PRIMARY KEY (`NoReferencia`);

--
-- Indices de la tabla `Nacimiento`
--
ALTER TABLE `Nacimiento`
  ADD PRIMARY KEY (`NoReferencia`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `Contacto`
--
ALTER TABLE `Contacto`
  ADD CONSTRAINT `Contacto_ibfk_1` FOREIGN KEY (`NoReferencia`) REFERENCES `Alumno` (`NoReferencia`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `Escolares`
--
ALTER TABLE `Escolares`
  ADD CONSTRAINT `Escolares_ibfk_1` FOREIGN KEY (`NoReferencia`) REFERENCES `Alumno` (`NoReferencia`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `Examen`
--
ALTER TABLE `Examen`
  ADD CONSTRAINT `Examen_ibfk_1` FOREIGN KEY (`NoReferencia`) REFERENCES `Alumno` (`NoReferencia`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `Nacimiento`
--
ALTER TABLE `Nacimiento`
  ADD CONSTRAINT `Nacimiento_ibfk_1` FOREIGN KEY (`NoReferencia`) REFERENCES `Alumno` (`NoReferencia`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
