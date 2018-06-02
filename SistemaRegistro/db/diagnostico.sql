-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 02-06-2018 a las 06:50:27
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
-- Estructura de tabla para la tabla `Administrador`
--

CREATE TABLE `Administrador` (
  `Username` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Administrador`
--

INSERT INTO `Administrador` (`Username`, `Password`) VALUES
('oscar', 'potato15');

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
  `Foto` varchar(100) NOT NULL,
  `Password` varchar(24) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Alumno`
--

INSERT INTO `Alumno` (`NoReferencia`, `Nombre`, `Ap1`, `Ap2`, `Sexo`, `CURP`, `Foto`, `Password`) VALUES
('PE00000001', 'Juana', 'Perez', 'Perez', 'Femenino', 'PEPJ12231990', '/Another.png', '1234'),
('PE00000002', 'Maria', 'Jimenez', 'Jimenez', 'Femenino', 'JIJM01011991', './2.png', 'contrasena'),
('PE00000003', 'Fernanda', 'Romero', 'Ortega', 'Femenino', 'ROOF951220MJCMRR00', './PE00000003.png', 'contrasena'),
('PP00000001', 'Juan', 'Perez', 'Perez', 'Masculino', 'PEPJ12231990', './Something.png', 'uno234'),
('PP00000002', 'Pedro', 'Jimenez', 'Jimenez', 'Masculino', 'JIJP10111920', './1.png', '123cuatro'),
('PP00000003', 'Yeimi Guadalupe', 'Estrada', 'Mondrag&oacute;n', 'Femenino', 'EAMY970623MMNSNM00', './fotito.jpg', 'pitahermosa'),
('PP00000004', 'Ramiro', 'Estrada', 'Castro', 'Masculino', 'JIJP10111920', '', 'contrasena');

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
-- Estructura Stand-in para la vista `AlumnosHorario`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `AlumnosHorario` (
`Horario` timestamp
,`Alumnos` bigint(21)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `AlumnosLab`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `AlumnosLab` (
`Laboratorio` int(5)
,`Alumnos` bigint(21)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `AlumnosLab10`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `AlumnosLab10` (
`Laboratorio` int(5)
,`Alumnos` bigint(21)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `AlumnosLab12`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `AlumnosLab12` (
`Laboratorio` int(5)
,`Alumnos` bigint(21)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `AlumnosLab14`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `AlumnosLab14` (
`Laboratorio` int(5)
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
('PE00000001', 'Miguel Hidalgo #1', 'Zit&aacute;cuaro', 'Michoac&aacute;n', '7150010001', '7151101110', 'a@gmail.com'),
('PE00000002', 'Independencia #20', 'Tlanepantla de B&aacute;z', 'Estado de M&eacute;xico', '5520020002', '5522202220', 'd@gmail.com'),
('PP00000001', 'Lindavista #127', 'Gustavo A. Madero', 'Ciudad de M&eacute;xico', '5550010001', '5551101110', 'b@gmail.com'),
('PP00000002', 'Benito Ju&aacute;rez #13', 'Miguel Hidalgo', 'Ciudad de M&eacute;xico', '5550020002', '5552202220', 'c@gmaill.com'),
('PP00000004', 'Miguel Hidalgo #20, El Moral', 'Gustavo A. Madero', 'Ciudad de M&eacute;xico', '7151040404', '5551113333', 'potato@gmail.com');

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
  `Opcion` int(3) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Escolares`
--

INSERT INTO `Escolares` (`NoReferencia`, `Escuela`, `Promedio`, `Opcion`) VALUES
('PE00000001', 'Otras', 8.7, 1),
('PE00000002', 'Otras', 9.2, 1),
('PP00000001', 'CECyT 7', 9, 2),
('PP00000002', 'CECyT 7', 7.5, 1),
('PP00000004', 'CECyT 1', 9.4, 1);

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
  `Aciertos` int(5) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Examen`
--

INSERT INTO `Examen` (`NoReferencia`, `Horario`, `Laboratorio`, `Aciertos`) VALUES
('PE00000001', '2018-06-13 17:00:00', 1, 25),
('PE00000002', '2018-06-13 17:00:00', 2, 12),
('PE00000003', '2018-06-02 00:28:27', 5, 26),
('PP00000001', '2018-06-13 19:00:00', 3, 15),
('PP00000002', '2018-06-01 20:08:48', 4, 10),
('PP00000003', '2018-06-13 19:00:00', 2, 23),
('PP00000004', '2018-06-13 19:00:00', 1, 20);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Nacimiento`
--

CREATE TABLE `Nacimiento` (
  `NoReferencia` varchar(10) NOT NULL,
  `Fecha` date NOT NULL,
  `Pais` varchar(60) NOT NULL DEFAULT 'M&eacute;xico',
  `Estado` varchar(40) NOT NULL DEFAULT 'Ciudad de M&eacute;xico'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Nacimiento`
--

INSERT INTO `Nacimiento` (`NoReferencia`, `Fecha`, `Pais`, `Estado`) VALUES
('PE00000001', '1990-10-10', 'M&eacute;xico', 'Michoac&aacute;n'),
('PE00000002', '1995-12-12', 'M&eacute;xico', 'Estado de M&eacute;xico'),
('PP00000001', '1996-09-20', 'M&eacute;xico', 'Ciudad de M&eacute;xico'),
('PP00000002', '1997-02-14', 'M&eacute;xico', 'Ciudad de M&eacute;xico'),
('PP00000004', '2015-09-16', 'M&eacute;xico', 'Ciudad de M&eacute;xico');

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
-- Estructura para la vista `AlumnosHorario`
--
DROP TABLE IF EXISTS `AlumnosHorario`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `AlumnosHorario`  AS  select `Examen`.`Horario` AS `Horario`,count(0) AS `Alumnos` from `Examen` group by `Examen`.`Horario` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `AlumnosLab`
--
DROP TABLE IF EXISTS `AlumnosLab`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `AlumnosLab`  AS  select `Examen`.`Laboratorio` AS `Laboratorio`,count(0) AS `Alumnos` from `Examen` group by `Examen`.`Laboratorio` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `AlumnosLab10`
--
DROP TABLE IF EXISTS `AlumnosLab10`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `AlumnosLab10`  AS  select `Examen`.`Laboratorio` AS `Laboratorio`,count(0) AS `Alumnos` from `Examen` where (`Examen`.`Horario` = '2018-06-13 10:00:00') group by `Examen`.`Laboratorio` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `AlumnosLab12`
--
DROP TABLE IF EXISTS `AlumnosLab12`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `AlumnosLab12`  AS  select `Examen`.`Laboratorio` AS `Laboratorio`,count(0) AS `Alumnos` from `Examen` where (`Examen`.`Horario` = '2018-06-13 12:00:00') group by `Examen`.`Laboratorio` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `AlumnosLab14`
--
DROP TABLE IF EXISTS `AlumnosLab14`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `AlumnosLab14`  AS  select `Examen`.`Laboratorio` AS `Laboratorio`,count(0) AS `Alumnos` from `Examen` where (`Examen`.`Horario` = '2018-06-13 14:00:00') group by `Examen`.`Laboratorio` ;

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
-- Indices de la tabla `Administrador`
--
ALTER TABLE `Administrador`
  ADD PRIMARY KEY (`Username`);

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
