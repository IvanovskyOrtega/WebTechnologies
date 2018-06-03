-- MySQL dump 10.16  Distrib 10.1.31-MariaDB, for Win32 (AMD64)
--
-- Host: localhost    Database: diagnostico
-- ------------------------------------------------------
-- Server version	10.1.31-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Temporary table structure for view `aciertospromsexo`
--

DROP TABLE IF EXISTS `aciertospromsexo`;
/*!50001 DROP VIEW IF EXISTS `aciertospromsexo`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `aciertospromsexo` (
  `Sexo` tinyint NOT NULL,
  `Promedio` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `aciertossexo`
--

DROP TABLE IF EXISTS `aciertossexo`;
/*!50001 DROP VIEW IF EXISTS `aciertossexo`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `aciertossexo` (
  `NoReferencia` tinyint NOT NULL,
  `Sexo` tinyint NOT NULL,
  `Aciertos` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `administrador`
--

DROP TABLE IF EXISTS `administrador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `administrador` (
  `Username` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL,
  PRIMARY KEY (`Username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administrador`
--

LOCK TABLES `administrador` WRITE;
/*!40000 ALTER TABLE `administrador` DISABLE KEYS */;
INSERT INTO `administrador` VALUES ('oscar','potato15');
/*!40000 ALTER TABLE `administrador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alumno`
--

DROP TABLE IF EXISTS `alumno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alumno` (
  `NoReferencia` varchar(10) NOT NULL,
  `Nombre` varchar(40) NOT NULL,
  `Ap1` varchar(30) NOT NULL,
  `Ap2` varchar(30) NOT NULL,
  `Sexo` varchar(9) NOT NULL,
  `CURP` varchar(18) NOT NULL,
  `Foto` varchar(100) NOT NULL,
  `Password` varchar(24) NOT NULL,
  PRIMARY KEY (`NoReferencia`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alumno`
--

LOCK TABLES `alumno` WRITE;
/*!40000 ALTER TABLE `alumno` DISABLE KEYS */;
INSERT INTO `alumno` VALUES ('PE00000001','Juana','Perez','Perez','Femenino','PEPJ12231990','/Another.png','1234'),('PE00000002','Maria','Jimenez','Jimenez','Femenino','JIJM01011991','./2.png','contrasena'),('PE00000003','Fernanda','Romero','Ortega','Femenino','ROOF951220MJCMRR00','./PE00000003.png','contrasena'),('PP00000001','Juan','Perez','Perez','Masculino','PEPJ12231990','./Something.png','uno234'),('PP00000002','Pedro','Jimenez','Jimenez','Masculino','JIJP10111920','./1.png','123cuatro'),('PP00000003','Yeimi Guadalupe','Estrada','Mondrag&oacute;n','Femenino','EAMY970623MMNSNM00','./fotito.jpg','pitahermosa'),('PP00000004','Ramiro','Estrada','Castro','Masculino','JIJP10111920','','contrasena'),('PP24090102','Carlos David','Hernandez','Martinez','Hombre','HEMC950124HMCRRR08','./PP24090102.png','Davestringh');
/*!40000 ALTER TABLE `alumno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `alumnomunicipio`
--

DROP TABLE IF EXISTS `alumnomunicipio`;
/*!50001 DROP VIEW IF EXISTS `alumnomunicipio`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `alumnomunicipio` (
  `Municipio` tinyint NOT NULL,
  `Alumnos` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `alumnosedad`
--

DROP TABLE IF EXISTS `alumnosedad`;
/*!50001 DROP VIEW IF EXISTS `alumnosedad`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `alumnosedad` (
  `Edad` tinyint NOT NULL,
  `Alumnos` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `alumnoshorario`
--

DROP TABLE IF EXISTS `alumnoshorario`;
/*!50001 DROP VIEW IF EXISTS `alumnoshorario`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `alumnoshorario` (
  `Horario` tinyint NOT NULL,
  `Alumnos` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `alumnoslab`
--

DROP TABLE IF EXISTS `alumnoslab`;
/*!50001 DROP VIEW IF EXISTS `alumnoslab`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `alumnoslab` (
  `Laboratorio` tinyint NOT NULL,
  `Alumnos` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `alumnoslab10`
--

DROP TABLE IF EXISTS `alumnoslab10`;
/*!50001 DROP VIEW IF EXISTS `alumnoslab10`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `alumnoslab10` (
  `Laboratorio` tinyint NOT NULL,
  `Alumnos` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `alumnoslab12`
--

DROP TABLE IF EXISTS `alumnoslab12`;
/*!50001 DROP VIEW IF EXISTS `alumnoslab12`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `alumnoslab12` (
  `Laboratorio` tinyint NOT NULL,
  `Alumnos` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `alumnoslab14`
--

DROP TABLE IF EXISTS `alumnoslab14`;
/*!50001 DROP VIEW IF EXISTS `alumnoslab14`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `alumnoslab14` (
  `Laboratorio` tinyint NOT NULL,
  `Alumnos` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `alumnossexo`
--

DROP TABLE IF EXISTS `alumnossexo`;
/*!50001 DROP VIEW IF EXISTS `alumnossexo`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `alumnossexo` (
  `Sexo` tinyint NOT NULL,
  `Alumnos` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `contacto`
--

DROP TABLE IF EXISTS `contacto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacto` (
  `NoReferencia` varchar(10) NOT NULL,
  `Direccion` varchar(60) NOT NULL,
  `Municipio` varchar(60) NOT NULL,
  `Estado` varchar(40) NOT NULL,
  `Cel` varchar(10) NOT NULL,
  `Tel` varchar(10) NOT NULL,
  `Correo` varchar(30) NOT NULL,
  PRIMARY KEY (`NoReferencia`),
  CONSTRAINT `Contacto_ibfk_1` FOREIGN KEY (`NoReferencia`) REFERENCES `alumno` (`NoReferencia`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacto`
--

LOCK TABLES `contacto` WRITE;
/*!40000 ALTER TABLE `contacto` DISABLE KEYS */;
INSERT INTO `contacto` VALUES ('PE00000001','Miguel Hidalgo #1','Zit&aacute;cuaro','Michoac&aacute;n','7150010001','7151101110','a@gmail.com'),('PE00000002','Independencia #20','Tlanepantla de B&aacute;z','Estado de M&eacute;xico','5520020002','5522202220','d@gmail.com'),('PP00000001','Lindavista #127','Gustavo A. Madero','Ciudad de M&eacute;xico','5550010001','5551101110','b@gmail.com'),('PP00000002','Benito Ju&aacute;rez #13','Miguel Hidalgo','Ciudad de M&eacute;xico','5550020002','5552202220','c@gmaill.com'),('PP00000004','Miguel Hidalgo #20, El Moral','Gustavo A. Madero','Ciudad de M&eacute;xico','7151040404','5551113333','potato@gmail.com'),('PP24090102','Av. Colorines Mz. 58 Lt.15','726','15','5519651969','5558555240','davestring@outlook.com');
/*!40000 ALTER TABLE `contacto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `edadaciertos`
--

DROP TABLE IF EXISTS `edadaciertos`;
/*!50001 DROP VIEW IF EXISTS `edadaciertos`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `edadaciertos` (
  `NoReferencia` tinyint NOT NULL,
  `Edad` tinyint NOT NULL,
  `Aciertos` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `escolares`
--

DROP TABLE IF EXISTS `escolares`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `escolares` (
  `NoReferencia` varchar(10) NOT NULL,
  `Escuela` varchar(60) NOT NULL,
  `Promedio` float NOT NULL,
  `Opcion` int(3) NOT NULL DEFAULT '1',
  PRIMARY KEY (`NoReferencia`),
  CONSTRAINT `Escolares_ibfk_1` FOREIGN KEY (`NoReferencia`) REFERENCES `alumno` (`NoReferencia`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `escolares`
--

LOCK TABLES `escolares` WRITE;
/*!40000 ALTER TABLE `escolares` DISABLE KEYS */;
INSERT INTO `escolares` VALUES ('PE00000001','Otras',8.7,1),('PE00000002','Otras',9.2,1),('PP00000001','CECyT 7',9,2),('PP00000002','CECyT 7',7.5,1),('PP00000004','CECyT 1',9.4,1),('PP24090102','CECyT 7',8.84,1);
/*!40000 ALTER TABLE `escolares` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `escuelaaciertos`
--

DROP TABLE IF EXISTS `escuelaaciertos`;
/*!50001 DROP VIEW IF EXISTS `escuelaaciertos`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `escuelaaciertos` (
  `NoReferencia` tinyint NOT NULL,
  `Escuela` tinyint NOT NULL,
  `Aciertos` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `examen`
--

DROP TABLE IF EXISTS `examen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `examen` (
  `NoReferencia` varchar(10) NOT NULL,
  `Horario` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Laboratorio` int(5) NOT NULL,
  `Aciertos` int(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`NoReferencia`),
  CONSTRAINT `Examen_ibfk_1` FOREIGN KEY (`NoReferencia`) REFERENCES `alumno` (`NoReferencia`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `examen`
--

LOCK TABLES `examen` WRITE;
/*!40000 ALTER TABLE `examen` DISABLE KEYS */;
INSERT INTO `examen` VALUES ('PE00000001','2018-06-13 17:00:00',1,25),('PE00000002','2018-06-13 17:00:00',2,12),('PE00000003','2018-06-02 00:28:27',5,26),('PP00000001','2018-06-13 19:00:00',3,15),('PP00000002','2018-06-01 20:08:48',4,10),('PP00000003','2018-06-13 19:00:00',2,23),('PP00000004','2018-06-13 19:00:00',1,20),('PP24090102','2018-06-13 18:00:00',1,0);
/*!40000 ALTER TABLE `examen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nacimiento`
--

DROP TABLE IF EXISTS `nacimiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nacimiento` (
  `NoReferencia` varchar(10) NOT NULL,
  `Fecha` date NOT NULL,
  `Pais` varchar(60) NOT NULL DEFAULT 'M&eacute;xico',
  `Estado` varchar(40) NOT NULL DEFAULT 'Ciudad de M&eacute;xico',
  PRIMARY KEY (`NoReferencia`),
  CONSTRAINT `Nacimiento_ibfk_1` FOREIGN KEY (`NoReferencia`) REFERENCES `alumno` (`NoReferencia`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nacimiento`
--

LOCK TABLES `nacimiento` WRITE;
/*!40000 ALTER TABLE `nacimiento` DISABLE KEYS */;
INSERT INTO `nacimiento` VALUES ('PE00000001','1990-10-10','M&eacute;xico','Michoac&aacute;n'),('PE00000002','1995-12-12','M&eacute;xico','Estado de M&eacute;xico'),('PP00000001','1996-09-20','M&eacute;xico','Ciudad de M&eacute;xico'),('PP00000002','1997-02-14','M&eacute;xico','Ciudad de M&eacute;xico'),('PP00000004','2015-09-16','M&eacute;xico','Ciudad de M&eacute;xico'),('PP24090102','0000-00-00','42','1747');
/*!40000 ALTER TABLE `nacimiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `numaciertos`
--

DROP TABLE IF EXISTS `numaciertos`;
/*!50001 DROP VIEW IF EXISTS `numaciertos`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `numaciertos` (
  `Aciertos` tinyint NOT NULL,
  `Alumnos` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `promescaciertos`
--

DROP TABLE IF EXISTS `promescaciertos`;
/*!50001 DROP VIEW IF EXISTS `promescaciertos`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `promescaciertos` (
  `Escuela` tinyint NOT NULL,
  `Promedio` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v1`
--

DROP TABLE IF EXISTS `v1`;
/*!50001 DROP VIEW IF EXISTS `v1`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `v1` (
  `ref` tinyint NOT NULL,
  `nom` tinyint NOT NULL,
  `ap1` tinyint NOT NULL,
  `ap2` tinyint NOT NULL,
  `esc` tinyint NOT NULL,
  `prom` tinyint NOT NULL,
  `hor` tinyint NOT NULL,
  `lab` tinyint NOT NULL,
  `ac` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `aciertospromsexo`
--

/*!50001 DROP TABLE IF EXISTS `aciertospromsexo`*/;
/*!50001 DROP VIEW IF EXISTS `aciertospromsexo`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `aciertospromsexo` AS select `aciertossexo`.`Sexo` AS `Sexo`,avg(`aciertossexo`.`Aciertos`) AS `Promedio` from `aciertossexo` group by `aciertossexo`.`Sexo` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `aciertossexo`
--

/*!50001 DROP TABLE IF EXISTS `aciertossexo`*/;
/*!50001 DROP VIEW IF EXISTS `aciertossexo`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `aciertossexo` AS select `alumno`.`NoReferencia` AS `NoReferencia`,`alumno`.`Sexo` AS `Sexo`,`examen`.`Aciertos` AS `Aciertos` from (`alumno` join `examen`) where (`alumno`.`NoReferencia` = `examen`.`NoReferencia`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `alumnomunicipio`
--

/*!50001 DROP TABLE IF EXISTS `alumnomunicipio`*/;
/*!50001 DROP VIEW IF EXISTS `alumnomunicipio`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `alumnomunicipio` AS select `contacto`.`Municipio` AS `Municipio`,count(0) AS `Alumnos` from `contacto` group by `contacto`.`Municipio` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `alumnosedad`
--

/*!50001 DROP TABLE IF EXISTS `alumnosedad`*/;
/*!50001 DROP VIEW IF EXISTS `alumnosedad`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `alumnosedad` AS select `edadaciertos`.`Edad` AS `Edad`,count(0) AS `Alumnos` from `edadaciertos` group by `edadaciertos`.`Edad` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `alumnoshorario`
--

/*!50001 DROP TABLE IF EXISTS `alumnoshorario`*/;
/*!50001 DROP VIEW IF EXISTS `alumnoshorario`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `alumnoshorario` AS select `examen`.`Horario` AS `Horario`,count(0) AS `Alumnos` from `examen` group by `examen`.`Horario` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `alumnoslab`
--

/*!50001 DROP TABLE IF EXISTS `alumnoslab`*/;
/*!50001 DROP VIEW IF EXISTS `alumnoslab`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `alumnoslab` AS select `examen`.`Laboratorio` AS `Laboratorio`,count(0) AS `Alumnos` from `examen` group by `examen`.`Laboratorio` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `alumnoslab10`
--

/*!50001 DROP TABLE IF EXISTS `alumnoslab10`*/;
/*!50001 DROP VIEW IF EXISTS `alumnoslab10`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `alumnoslab10` AS select `examen`.`Laboratorio` AS `Laboratorio`,count(0) AS `Alumnos` from `examen` where (`examen`.`Horario` = '2018-06-13 10:00:00') group by `examen`.`Laboratorio` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `alumnoslab12`
--

/*!50001 DROP TABLE IF EXISTS `alumnoslab12`*/;
/*!50001 DROP VIEW IF EXISTS `alumnoslab12`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `alumnoslab12` AS select `examen`.`Laboratorio` AS `Laboratorio`,count(0) AS `Alumnos` from `examen` where (`examen`.`Horario` = '2018-06-13 12:00:00') group by `examen`.`Laboratorio` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `alumnoslab14`
--

/*!50001 DROP TABLE IF EXISTS `alumnoslab14`*/;
/*!50001 DROP VIEW IF EXISTS `alumnoslab14`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `alumnoslab14` AS select `examen`.`Laboratorio` AS `Laboratorio`,count(0) AS `Alumnos` from `examen` where (`examen`.`Horario` = '2018-06-13 14:00:00') group by `examen`.`Laboratorio` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `alumnossexo`
--

/*!50001 DROP TABLE IF EXISTS `alumnossexo`*/;
/*!50001 DROP VIEW IF EXISTS `alumnossexo`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `alumnossexo` AS select `aciertossexo`.`Sexo` AS `Sexo`,count(0) AS `Alumnos` from `aciertossexo` group by `aciertossexo`.`Sexo` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `edadaciertos`
--

/*!50001 DROP TABLE IF EXISTS `edadaciertos`*/;
/*!50001 DROP VIEW IF EXISTS `edadaciertos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `edadaciertos` AS select `nacimiento`.`NoReferencia` AS `NoReferencia`,((year(now()) - year(`nacimiento`.`Fecha`)) - (right(now(),5) < right(`nacimiento`.`Fecha`,5))) AS `Edad`,`examen`.`Aciertos` AS `Aciertos` from (`nacimiento` join `examen`) where (`nacimiento`.`NoReferencia` = `examen`.`NoReferencia`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `escuelaaciertos`
--

/*!50001 DROP TABLE IF EXISTS `escuelaaciertos`*/;
/*!50001 DROP VIEW IF EXISTS `escuelaaciertos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `escuelaaciertos` AS select `escolares`.`NoReferencia` AS `NoReferencia`,`escolares`.`Escuela` AS `Escuela`,`examen`.`Aciertos` AS `Aciertos` from (`examen` join `escolares`) where (`escolares`.`NoReferencia` = `examen`.`NoReferencia`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `numaciertos`
--

/*!50001 DROP TABLE IF EXISTS `numaciertos`*/;
/*!50001 DROP VIEW IF EXISTS `numaciertos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `numaciertos` AS select `examen`.`Aciertos` AS `Aciertos`,count(0) AS `Alumnos` from `examen` group by `examen`.`Aciertos` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `promescaciertos`
--

/*!50001 DROP TABLE IF EXISTS `promescaciertos`*/;
/*!50001 DROP VIEW IF EXISTS `promescaciertos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `promescaciertos` AS select `escuelaaciertos`.`Escuela` AS `Escuela`,avg(`escuelaaciertos`.`Aciertos`) AS `Promedio` from `escuelaaciertos` group by `escuelaaciertos`.`Escuela` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v1`
--

/*!50001 DROP TABLE IF EXISTS `v1`*/;
/*!50001 DROP VIEW IF EXISTS `v1`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Davestring`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v1` AS select `a`.`NoReferencia` AS `ref`,`a`.`Nombre` AS `nom`,`a`.`Ap1` AS `ap1`,`a`.`Ap2` AS `ap2`,`e`.`Escuela` AS `esc`,`e`.`Promedio` AS `prom`,`ex`.`Horario` AS `hor`,`ex`.`Laboratorio` AS `lab`,`ex`.`Aciertos` AS `ac` from ((`alumno` `a` join `escolares` `e`) join `examen` `ex`) where ((`a`.`NoReferencia` = `e`.`NoReferencia`) and (`e`.`NoReferencia` = `ex`.`NoReferencia`) and (`a`.`NoReferencia` = `ex`.`NoReferencia`)) order by 1,2,3 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-06-02 20:29:52
