CREATE DATABASE  IF NOT EXISTS `educare2` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `educare2`;
-- MySQL dump 10.13  Distrib 5.6.24, for Win64 (x86_64)
--
-- Host: localhost    Database: educare2
-- ------------------------------------------------------
-- Server version	5.7.8-rc-log

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
-- Base de datos: `educare`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno`
--

CREATE TABLE `alumno` (
  `matricula` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellidop` varchar(100) NOT NULL,
  `apellidom` varchar(100) DEFAULT NULL,
  `fechanac` date NOT NULL,
  `lugnac` varchar(60) NOT NULL,
  `nacionalidad` varchar(20) NOT NULL,
  `direccion` varchar(120) NOT NULL,
  `colonia` varchar(45) NOT NULL,
  `cp` varchar(5) DEFAULT NULL,
  `escprecedencia` varchar(80) NOT NULL,
  `fecingreso` date NOT NULL,
  `tiposangre` varchar(5) NOT NULL,
  `activo` tinyint(4) NOT NULL DEFAULT '1',
  `idgrupo` int(11) DEFAULT NULL,
  `sexo` char(1) NOT NULL,
  `curp` varchar(30) NOT NULL,
  `dir_imagen` varchar(100) DEFAULT NULL,
  `nia` int(11) DEFAULT NULL,
  `alergias` varchar(200) DEFAULT NULL,
  `telcel` varchar(20) DEFAULT NULL,
  `telefono` varchar(20) NOT NULL,
  `email` varchar(45) DEFAULT NULL,
  `rfc` varchar(45) DEFAULT NULL,
  `numext` int(11) NOT NULL,
  `numint` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `alumno`
--

INSERT INTO `alumno` (`matricula`, `nombre`, `apellidop`, `apellidom`, `fechanac`, `lugnac`, `nacionalidad`, `direccion`, `colonia`, `cp`, `escprecedencia`, `fecingreso`, `tiposangre`, `activo`, `idgrupo`, `sexo`, `curp`, `dir_imagen`, `nia`, `alergias`, `telcel`, `telefono`, `email`, `rfc`, `numext`, `numint`) VALUES
(1010101, ' CARLOS FERNANDO', 'CUAMATZI', 'BECERRIL', '2007-03-06', 'PUEBLA', 'MEXICANO', 'CALLE 15 A SUR 11153', 'GALAXIA LA LAGUNA', '', '', '2010-08-23', 'RHO+', 1, 6, 'M', '', '', 0, '', '', '1791534', '', '', 0, ''),
(10050007, ' JESSICA', 'GARCIA', 'CASTILLO', '2001-09-08', 'PUEBLA, PUEBLA.', 'MEXICANA', 'RETORNO EL CARMEN EDIF. 3 - DEPTO. 1', 'SAN JUAN BOSCO', '72480', '', '2005-08-16', '', 1, 16, 'F', 'GACJ010908MPLRSSA4', '', 0, '', '', '2-19-55-52', '', '', 0, ''),
(10050010, ' ERIK', 'GUZMAN', 'FERNANDEZ', '2002-08-27', 'PUEBLA, PUEBLA.', 'MEXICANA', '13 SUR 11103-54, VILLAS SAN FRANCISCO', 'SAN FRANCISCO MAYORAZGO', '72490', '', '2005-08-16', '', 1, 17, 'M', 'GUFE020827HPLZRRA8', '', 0, '', '', '2-19-75-90', '', '', 0, ''),
(10050013, ' SAYURI ELISA', 'MANGUILA', 'ESCAMILLA', '2001-12-08', 'PUEBLA, PUEBLA.', 'MEXICANA', 'BLVD. INDEPENDENCIA E-12116-27, 1RA. SECCION', 'SAN MIGUEL MAYORAZGO', '72480', '', '2005-08-29', '', 1, 16, 'F', 'MAES011208MPLNSYA6', '', 0, '', '', '2-19-11-21', '', '', 0, ''),
(10050018, ' JOSE LUIS', 'PEREZ', 'FERNANDEZ', '2002-07-29', 'PUEBLA, PUEBLA', 'MEXICANA', '137 A PONIENTE 1507 # 4', 'PASEOS DE CASTILLOTLA', '72490', '', '2005-08-16', '', 1, 17, 'M', 'PEEL020729HPLRRSA2', '', 0, '', '', '2-41-35-93', '', '', 0, ''),
(10050019, ' MARIA XIMENA', 'RAMIREZ', 'SORCIA', '2001-09-22', 'PUEBLA, PUEBLA.', 'MEXICANA', 'RET. 20 DE NOVIEMBRE, EDIF. E-4, DEPTO. 2', 'LAS CARMELITAS', '72480', '', '2005-08-16', '', 1, 16, 'F', 'RASX010922MPLMRMAO', '', 0, '', '', '2-28-29-40', '', '', 0, ''),
(10050030, ' BRENDA ITZEL', 'ZAMBRANO', 'MENDOZA', '2002-01-19', 'PUEBLA, PUEBLA.', 'MEXICANA', '9 SUR D 11508-7', 'AGUA SANTA', '72491', '', '2005-08-16', '', 1, 17, 'F', 'ZAMB020119MPLMNRA7', '', 0, '', '', '1-87-22-68', '', '', 0, ''),
(10050033, ' ALEJANDRO', 'BAUTISTA', 'MARTINEZ', '2000-03-06', 'PUEBLA, PUEBLA.', 'MEXICANA', '13 SUR 11717', 'SAN FRANCISCO MAYORAZGO', '72490', '', '2005-08-16', '', 1, 24, 'M', 'BAMA000306HPLTRLA4', '', 0, '', '', '2-19-16-65', '', '', 0, ''),
(10050034, ' NADIA', 'CASTILLO', 'FLORES', '2001-08-14', 'PUEBLA, PUEBLA.', 'MEXICANA', 'PRIV. MIGUEL HIDALGO 3217', 'LA CARMELITA', '72480', '', '2005-08-16', '', 1, 24, 'F', 'CAFNO10814MPLSLDAO', '', 0, '', '', '2-13-24-52', '', '', 0, ''),
(10050040, ' ROSA BENITEZ ARIADNA', 'DE', 'LA', '2001-04-07', 'PUEBLA, PUEBLA.', 'MEXICANA', 'PRIV. 13 A SUR # 11908', 'SAN FRANCISCO MAYORAZGO', '72480', '', '2005-08-16', '', 1, 24, 'F', 'RXBA010407MPLSNRA7', '', 0, '', '', '3-99-08-17', '', '', 0, ''),
(10050043, ' ANDREA DORIA', 'ESPINOZA', 'NAVA', '2001-05-18', 'PUEBLA, PUEBLA.', 'MEXICANA', 'PLAZA DM2, EDIF. D 36, DEPTO. 4', 'AGUA SANTA', '72490', '', '2005-08-16', '', 1, 24, 'F', 'EINA010518MPLSVNA8', '', 0, '', '', '3-99-25-74', '', '', 0, ''),
(10050047, ' JULIAN', 'HERNANDEZ', 'ROSSAINZZ', '2001-06-14', 'PUEBLA, PUEBLA.', 'MEXICANA', '11 SUR 12122- -74, VILLAS PERISUR', 'GUADALUPE HIDALGO', '72490', '', '2005-08-16', '', 1, 24, 'M', 'HERJ010614HPLRSLA5', '', 0, '', '', '2-41-34-47', '', '', 0, ''),
(10050048, ' KENYA XARETH', 'HERNANDEZ', 'SARABIA', '2001-08-07', 'PUEBLA, PUEBLA.', 'MEXICANA', 'RET. TULIPAN 25-A, RESIDENCIAL LAS MERCEDES', 'SAN MIGUEL MAYORAZGO', '72490', '', '2005-08-16', '', 1, 18, 'F', 'HESK010807MPLRRNA3', '', 0, '', '', '4-03-42-13', '', '', 0, ''),
(10050050, ' MARCO ANTONIO', 'JIMENEZ', 'ROJAS', '2000-12-08', 'PUEBLA, PUEBLA.', 'MEXICANA', 'CALLE 9 SUR, E-11503-7', 'AGUA SANTA', '72490', '', '2005-08-16', '', 1, 24, 'M', 'JIRM001208HPLMJRA4', '', 0, '', '', '2-19-48-30', '', '', 0, ''),
(10050052, ' MAURICIO ARIEL', 'MARTINEZ', 'RODRIGUEZ', '2000-09-12', 'PUEBLA, PUEBLA', 'MEXICANA', '17 SUR 11723, FRACC. PASEOS DEL RIO', ' SAN FRANCISCO MAYORAZGO', '72480', '', '2005-08-16', '', 1, 18, 'M', 'MARM000912HPLRDRA9', '', 0, '', '', '2-28-25-59', '', '', 0, ''),
(10050054, ' JAVIER ISAI', 'MORALES', 'LOPEZ', '2005-08-16', 'PUEBLA, PUEBLA.', 'MEXICANA', 'ANDADOR SOLEDAD, EDIF. 9, DEPTO. 5', 'LA CARMELITA', '72490', '', '2005-08-16', '', 1, 24, 'M', 'MOLJ000808HPLRPYA4', '', 0, '', '', '2-28-63-70', '', '', 0, ''),
(10050060, ' EDGAR', 'ORTIZ', 'FERNANDEZ', '2000-10-11', 'PUEBLA, PUEBLA.', 'MEXICANA', 'C. MARGARITAS, EDIF. K INT. 5', 'LA VICTORIA', '72490', '', '2005-08-16', '', 1, 18, 'M', 'OIFE001011HPLRRDA8', '', 0, '', '', '2-41-03-15', '', '', 0, ''),
(10050065, ' JOSE DANIEL', 'ROSALES', 'JIMENEZ', '2001-03-17', 'PUEBLA, PUEBLA.', 'MEXICANA', '113 PTE. 1302-2', 'SAN FRANCISCO MAYORAZGO', '72480', '', '2005-08-16', '', 1, 18, 'M', 'ROJD010317HPLSMNA7', '', 0, '', '', '3-99-11-93', '', '', 0, ''),
(10050067, ' FATIMA', 'SANCHEZ', 'GALVAN', '2001-02-21', 'PUEBLA, PUEBLA.', 'MEXICANA', '9 D SUR, PLAZA BM6, EDIF. B12-3', 'AGUA SANTA', '72490', '', '2005-08-16', '', 1, 18, 'F', 'SAGF010221MPLNLTA0', '', 0, '', '', '1-87-62-20', '', '', 0, ''),
(10050068, ' ISABEL GUADALUPE', 'SANCHEZ', 'JUAREZ', '2001-06-08', 'PUEBLA, PUEBLA.', 'MEXICANA', 'PLAZA AM6, E-A3, DEPTO. 3', 'AGUA SANTA', '72460', '', '2005-08-16', '', 1, 24, 'F', 'SAJI010608MPLNRSA5', '', 0, '', '', '3-95-01-29', '', '', 0, ''),
(10050069, ' ANGEL SEIMON', 'SIERRA', 'MORALES', '2001-04-07', 'PUEBLA, PUEBLA.', 'MEXICANA', 'BLVD. INDEPENDENCIA EDIF. 12102-20', 'SAN MIGUEL MAYORAZGO', '72492', '', '2005-08-16', '', 1, 18, 'M', 'SIMA010407HPLRRNA5', '', 0, '', '', '2-19-12-47', '', '', 0, ''),
(10050073, ' YATZYRI', 'VELEZ', 'HUERTA', '2000-08-24', 'PUEBLA, PUEBLA.', 'MEXICANA', '15 A SUR 10909, FRACC. GALAXIA LA LAGUNA', 'TRES CERRITOS', '72480', '', '2005-08-16', '', 1, 24, 'F', 'VEHY000824MPLLRTA4', '', 0, '', '', '1-79-15-08', '', '', 0, ''),
(10050080, ' RUBEN', 'CORTES', 'LIMA', '1999-09-22', 'TLAXCALA, TLAXCALA', 'MEXICANA', 'BLVD. INDEPENDENCIA 12115-18', 'SAN MIGUEL MAYORAZGO', '72490', '', '2005-08-16', '', 1, 20, 'M', 'COLR990922HTLRMB00', '', 0, '', '', '3-95-21-21', '', '', 0, ''),
(10050081, ' LUIS FERNANDO', 'CUAUTLE', 'VALENCIA', '1999-11-25', 'MEXICO, D. F.', 'MEXICANA', '95 PTE. 2102-2, GEO VILLAS LA VISTA', 'GEO VILLAS LA VISTA', '72460', '', '2005-08-16', '', 1, 19, 'M', 'CUVL991125HDFTLS01', '', 0, '', '', '3-95-66-28', '', '', 0, ''),
(10050082, ' GARCIA JESUS ALBERTO', 'DE', 'ARCOS', '1999-11-12', 'PUEBLA, PUEBLA.', 'MEXICANA', 'MIGUEL HIDALGO 1538', 'TRES  CERRITOS', '72480', '', '2005-08-16', '', 1, 20, 'M', 'AOGJ991112HPLRRSO7', '', 0, '', '', '2-13-21-51', '', '', 0, ''),
(10050089, ' PEDRO ANTONIO', 'HERNANDEZ', 'GONZALEZ', '1999-11-25', 'PUEBLA, PUEBLA.', 'MEXICANA', '15-B SUR, # 11158  GALAXIA LA LAGUNA', 'TRES CERRITOS', '72480', '', '2005-08-16', '', 1, 20, 'M', 'HEGP991125HPLRND04', '', 0, '', '', '1-79-10-06', '', '', 0, ''),
(10050090, ' DANIEL IGNACIO', 'HERNANDEZ', 'MUÑOZ', '2000-03-04', 'PUEBLA, PUEBLA,', 'MEXICANA', '9A. CDA. SANTA ELENA 3-A', 'JARDINES DE SANTA ROSA', '72490', '', '2005-08-16', '', 1, 19, 'M', 'HEMD000304HPLRXNA1', '', 0, '', '', '1-53-45-55', '', '', 0, ''),
(10050096, ' FRIDA', 'MENDEZ', 'ROMERO', '1999-12-01', 'PUEBLA, PUEBLA.', 'MEXICANA', 'BLVD. INDEPENDENCIA 12110-26', 'SAN MIGUEL MAYORAZGO', '72490', '', '2005-08-16', '', 1, 20, 'F', 'MERF991201MPLNMRO6', '', 0, '', '', '2-28-37-17', '', '', 0, ''),
(10050098, '  MARCO PABLO', 'MEZA', 'MARTINEZ', '2000-02-11', 'PUEBLA, PUEBLA.', 'MEXICANA', 'PRIV. 117-B, PTE. 1708, PASEOS DEL RIO', 'SAN FRANCISCO MAYORAZGO', '72480', '', '2005-08-16', '', 1, 20, 'M', 'MEMM000211HPLZRRA3', '', 0, '', '', '3-95-00-50', '', '', 0, ''),
(10050105, ' ALEJANDRO', 'REYES', 'BETANCOURT', '2000-07-19', 'PUEBLA, PUEBLA.', 'MEXICANA', 'CALLE MARGARITAS E-M-D-1', 'LA VICTORIA', '72490', '', '2005-08-16', '', 1, 19, 'M', 'REBA000719HPLYTLA2', '', 0, '', '', '2-41-03-22', '', '', 0, ''),
(10050109, ' SERGIO', 'SANCHEZ', 'SALAZAR', '1999-10-08', 'PUEBLA, PUEBLA.', 'MEXICANA', '3ER. RET. 3 A SUR # 22', 'LOMA BELLA', '72490', '', '2005-08-16', '', 1, 19, 'M', 'SASS991008HPLNLRO5', '', 0, '', '', '2-28-51-53', '', '', 0, ''),
(10050110, ' BRANDON', 'SOLANO', 'RAMOS', '2000-04-22', 'PUEBLA, PUEBLA.', 'MEXICANA', 'CEDRO E-126', 'LA VICTORIA', '72490', '', '2005-08-16', '', 1, 20, 'M', 'SORB000422HPLLMRA7', '', 0, '', '', '2-41-14-31', '', '', 0, ''),
(10050114, ' PAULA MICHELLE', 'MACIAS', 'GARCIA', '2001-10-24', 'PUEBLA, PUEBLA.', 'MEXICANA', 'RETORNO 17 D SUR 11705, E-21, DEPTO. 8', 'PASEOS DEL RIO', '72490', '', '2005-07-24', '', 1, 16, 'F', 'MAGP011024MPLCRLA8', '', 0, '', '', '3-95-08-14', '', '', 0, ''),
(10060001, ' GABRIEL', 'BONIFACIO', 'GARCIA', '2003-02-05', '', 'MEXICANA', '117 PTE. # 1122', 'SAN FRANCISCO MAYORAZGO', '', '', '2006-08-21', '', 1, 15, 'M', '', '', 0, '', '', '2289685', '', '', 0, ''),
(10060002, ' ESMERALDA', 'CALVA', 'PONCE', '2002-09-23', '', '', 'RETORNO ORQUIDEAS NO. 72 C', 'GRANJAS MAYORAZGO', '', '', '2006-08-21', '', 1, 15, 'F', '', '', 0, '', '', '3-991431', '', '', 0, ''),
(10060003, ' ARCOS MARICRUZ', 'CASTILLO', 'DE', '2001-03-03', '', '', 'PRIVADA 5B SUR 13710', 'SAN JUAN BAUTISTA', '', '', '2006-08-21', '', 1, 14, 'F', '', '', 0, '', '', '2221891411', '', '', 0, ''),
(10060009, ' MARIA FERNANDA', 'MACIAS', 'GARCIA', '2002-10-16', '', 'MEXICANA', 'RETORNO 17 B SUR 11705 EDIFICIO 21-8', 'PASEOS DEL RIO', '', '', '2006-08-21', '', 1, 15, 'F', 'MAGF021016MPLCRRA1', '', 0, '', '', '395 08 14', '', '', 0, ''),
(10060011, ' WENDY ADRIANA', 'MASTRANZO', 'MARTINEZ', '2003-09-03', '', 'MEXICANA', '139 PONIENTE NO 1306', 'CASTILLOTLA', '', '', '2000-11-09', '', 1, 15, 'F', '', '', 0, '', '', '241 86 6 0', '', '', 0, ''),
(10060012, ' RAZO ALBERTO', 'MESIAS', 'DEL', '2003-08-24', '', 'MEXICANA', 'PASEO DEL BOSQUE NO. 28', 'VILLAS CASTILLOTLA', '', '', '2006-08-21', '', 1, 14, 'M', 'MERA030824HPLSZLA9', '', 0, '', '', '2223 81 04 25', '', '', 0, ''),
(10060013, ' FERNANDA', 'MORALES', 'RODRIGUEZ', '2003-03-04', '', 'MEXICANA', '9 SUR D 11505 INT. 2', 'AGUA SANTA', '', '', '2006-08-21', '', 1, 14, 'F', 'MORF030304MPLRDRA8', '', 0, '', '', '219 24 11', '', '', 0, ''),
(10060016, ' SAMUEL', 'ORDAZ', 'HUERTA', '2003-04-11', '', 'MEXICANA', 'EDIFICIO 12112 DEPARTAMENTO 18', 'SAN MIGUEL MAYORAZGO', '', '', '2006-08-21', '', 1, 15, 'M', '', '', 0, '', '', '228 35 17', '', '', 0, ''),
(10060018, ' JOSE CARLOS', 'PEREZ', 'VALENCIA', '2003-06-29', '', 'MEXICANA', 'PRIVADA 13 SUR 11704', 'SAN FRANCISCO MAYORAZGO', '', '', '2006-08-21', '', 1, 14, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(10060021, ' TANIA LISSET', 'ROSALES', 'JIMENEZ', '2003-05-02', '', 'MEXICANA', '113 PTE. 1302-2', 'SAN FRANCISCO MAYORAZGO', '', '', '2006-08-21', '', 1, 15, 'M', '', '', 0, '', '', '399 11 93', '', '', 0, ''),
(10060024, ' SALVADOR', 'VILLALOBOS', 'REYES', '2003-01-28', '', 'MEXICANA', 'NUEVO LEON NO. 10334', 'POPULAR', '', '', '2006-08-21', '', 1, 15, 'M', '', '', 0, '', '', '2222 09 08 23', '', '', 0, ''),
(10060025, ' CESAR DAVID', 'ARENAS', 'CASTILLO', '2003-10-05', '', 'MEXICANA', 'PRIVADA 113 PTE. C 1121', 'SAN FRANCISCO MAYORAZGO', '', '', '2006-08-21', '', 1, 14, 'M', '', '', 0, '', '', '213 21 57', '', '', 0, ''),
(10060029, ' JESUS ANGEL', 'GONZALEZ', 'ARELLANO', '2003-10-01', 'PUEBLA', 'MEXICANA', 'BLVD.INDEPENDENCIA 12118 INT.23', '', '', '', '2003-08-29', '', 1, 15, 'F', '', '', 0, '', '', '2 19 61 33', '', '', 0, ''),
(10060033, ' ANDREA', 'MEZA', 'MARTINEZ', '2007-04-16', 'PUEBLA', 'MEXICANA', 'PRIV.117 B PTE.NO 1708', 'PASEOS DEL RIO', '', '', '2007-04-16', '', 1, 14, 'F', '', '', 0, '', '', '3 95 00 50', '', '', 0, ''),
(10060034, ' MARIA DANIELA', 'NAVA', 'LOZANO', '2003-10-05', 'PUEBLA', 'MEXICANA', 'PRIV. MIGUEL HIDALGO 11317', 'SAN FRANCISCO MAYORAZGO', '', '', '2007-04-16', '', 1, 14, 'F', '', '', 0, '', '', '219 56 69', '', '', 0, ''),
(10060038, ' DIANA HILEN', 'ORTIZ', 'FERNANDEZ', '2003-12-31', 'PUEBLA', 'MEXICANA', 'C.MARGARITAS EDIF. K-5', 'LA VICTORIA', '', '', '2006-08-29', '', 1, 14, 'F', '', '', 0, '', '', '241 03 15', '', '', 0, ''),
(10060040, ' VALERIA', 'PERALTA', 'ORTEGA', '2003-02-24', 'PUEBLA', 'MEXICANA', 'RETORNO AZALEA 46 D', 'LAS MERCEDES', '', '', '2006-08-29', '', 1, 14, 'F', 'PEOV030224MPLRRLA8', '', 0, '', '', '3 95 02 80', '', '', 0, ''),
(10060043, ' ADRIAN', 'SANCHEZ', 'VILLEGAS', '2002-12-24', 'PUEBLA', 'MEXICANA', 'ANDADOR DE LA SOLEDAD EDIF.8-3', 'LA CARMELITA', '', '', '2006-08-29', '', 1, 15, 'M', '', '', 0, '', '', '2 19 20 37', '', '', 0, ''),
(10060044, ' VIVIANA GUADALUPE', 'SEGRESTE', 'CERON', '2003-09-26', 'PUEBLA', 'MEXICANA', 'ORQUIDEAS A-5', 'LA VICTORIA', '', '', '2006-08-29', '', 1, 14, 'F', '', '', 0, '', '', '241 66 21', '', '', 0, ''),
(10060046, ' JOSELYNE', 'TORIBIO', 'LOMELI', '2003-01-24', 'PUEBLA', 'MEXICANA', 'RETORNO 17 A SUR 11722', 'PASEOS DEL RIO', '', '', '2006-08-29', '', 1, 15, 'F', '', '', 0, '', '', '3 95 11 31', '', '', 0, ''),
(10060047, ' FERNANDO MANUEL', 'VAZQUEZ', 'CERON', '2003-09-04', 'PUEBLA', 'MEXICANA', '119 PTE. 1146', 'SAN FRANCISCO MAYORAZGO', '', '', '2006-08-29', '', 1, 15, 'M', '', '', 0, '', '', '219 09 91', '', '', 0, ''),
(10060048, ' AREMY ILIANY', 'VELEZ', 'HUERTA', '2002-12-27', 'PUEBLA', 'MEXICANA', '15 SUR 10909', 'GALAXIA LA LAGUNA', '', '', '2007-04-17', '', 1, 15, 'F', '', '', 0, '', '', '1 79 15 08', '', '', 0, ''),
(10060049, ' DAVID DANIEL', 'ARGUELLO', 'HERDEZ', '2002-08-15', '', 'MEXICANA', 'EDIFICIO 12320 DEPARTAMENTO 3', 'SAN MIGUEL MAYORAZGO', '', '', '2006-10-20', '', 1, 17, 'M', '', '', 0, '', '', '3 99 15 24', '', '', 0, ''),
(10060059, ' EMILIANO', 'HUERTA', 'AVENDAÑO', '2002-05-18', '', 'MEXICANA', '5 SUR F - 10116 INTERIOR 1', 'EL FRESNO', '', '', '2006-10-20', '', 1, 17, 'M', '', '', 0, '', '', '3 99 11 92', '', '', 0, ''),
(10060062, ' EDGAR RENE', 'MAGUEYAN', 'HERNANDEZ', '2001-10-14', 'PUEBLA', 'MEXICANA', 'PRIV. 13 SUR 11715', 'SAN FRANCISCO MAYORAZGO', '', '', '2006-08-29', '', 1, 16, 'M', 'MAHE011014HPLGRDA6', '', 0, '', '', '3 99 16 28', '', '', 0, ''),
(10070002, ' PALETA  LUIS ALONSO', 'AGUIRRE', '', '2004-05-23', '', '', '', '', '', '', '2007-08-20', '', 1, 12, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(10070005, ' JOSE MARIA', 'BAEZ', 'CRUZ', '2004-04-02', 'PUEBLA', 'MEXICANA', '', '', '', '', '2007-08-20', '', 1, 12, 'M', 'BACM040402HPLZRRA6', '', 0, '', '', '', '', '', 0, ''),
(10070009, ' GUSTAVO', 'DURAN', 'VARGAS', '2004-09-07', 'PUEBLA', 'MEXICANA', '', '', '', '', '2007-08-20', '', 1, 13, 'M', 'DUVG040907HPLRRSA0', '', 0, '', '', '', '', '', 0, ''),
(10070011, ' JOSHUA DE JESUS', 'ESPINOZA', 'RAMOS', '2004-11-13', 'PUEBLA', 'MEXICANA', '', '', '', '', '2007-08-20', '', 1, 13, 'M', 'EIRJ041113HPLSMSA3', '', 0, '', '', '', '', '', 0, ''),
(10070012, ' MAYRA RAQUEL', 'FERNANDEZ', 'PINEDA', '2004-02-29', 'PUEBLA', 'MEXICANA', '', '', '', '', '2007-08-20', '', 1, 13, 'F', 'FEPM040229MPLRNYA0', '', 0, '', '', '', '', '', 0, ''),
(10070013, ' RICARDO', 'GINES', 'MOCTEZUMA', '2004-09-15', 'PUEBLA', 'MEXICANA', '', '', '', '', '2007-08-20', '', 1, 13, 'M', 'GIMR040915HPLNCCA5', '', 0, '', '', '', '', '', 0, ''),
(10070014, ' KARLA', 'GUZMAN', 'MUÑOZ', '2004-01-28', 'PUEBLA', 'MEXICANA', '', '', '', '', '2007-08-20', '', 1, 12, 'F', 'GUMK040128MPLZXRA4', '', 0, '', '', '', '', '', 0, ''),
(10070016, ' NELLY YARETZI', 'HERNANDEZ', 'SARABIA', '2004-11-12', 'PUEBLA', 'MEXICANA', '', '', '', '', '2007-08-20', '', 1, 13, 'F', 'HESN041112MPLRRLA5', '', 0, '', '', '', '', '', 0, ''),
(10070017, ' BRENDA', 'JIMENEZ', 'ROSAS', '2004-10-15', 'PUEBLA', 'MEXICANA', '', '', '', '', '2007-08-20', '', 1, 13, 'F', 'JIRB041015MPLMSRA6', '', 0, '', '', '', '', '', 0, ''),
(10070018, ' LUISA FERNANDA', 'JUAREZ', 'ISIDRO', '2004-06-21', 'PUEBLA', 'MEXICANA', '', '', '', '', '2007-08-20', '', 1, 12, 'F', 'JUIL040621MPLRSSA4', '', 0, '', '', '', '', '', 0, ''),
(10070020, ' HANNIA JOKEBETH', 'LOPEZ', 'ANAYA', '2004-02-17', 'PUEBLA', 'MEXICANA', '', '', '', '', '2007-08-20', '', 1, 13, 'F', 'LOAH040217MPLPNNA0', '', 0, '', '', '', '', '', 0, ''),
(10070022, ' GIRON YAIME', 'MARQUEZ', 'TELLEZ', '2004-05-21', 'PUEBLA', 'MEXICANA', '', '', '', '', '2007-08-20', '', 1, 12, 'F', 'MATY040521MPLRLMA9', '', 0, '', '', '', '', '', 0, ''),
(10070024, ' FERNANDO', 'MELENDEZ', 'CELIS', '2004-03-04', 'PUEBLA', 'MEXICANA', '', '', '', '', '2007-08-20', '', 1, 12, 'M', 'MECF040304HPLLLRA1', '', 0, '', '', '', '', '', 0, ''),
(10070026, ' GABRIELA', 'MORALES', 'QUIJANO', '2004-11-17', 'PUEBLA', 'MEXICANA', '', '', '', '', '2007-08-20', '', 1, 13, 'F', 'MOQG041117MPLRJBA6', '', 0, '', '', '', '', '', 0, ''),
(10070028, ' ABIGAIL', 'PALACIOS', 'MORALES', '2004-08-22', 'PUEBLA', 'MEXICANA', '', '', '', '', '2007-08-20', '', 1, 13, 'F', 'PAMA040822MPLLRBA8', '', 0, '', '', '', '', '', 0, ''),
(10070029, ' RIO ALAN ALBERTO', 'RAMIREZ', 'DEL', '2004-05-30', 'PUEBLA', 'MEXICANA', '', '', '', '', '2007-08-20', '', 1, 13, 'M', 'RARA040530HPLMXLA8', '', 0, '', '', '', '', '', 0, ''),
(10070030, ' DIANA ALEJANDRA', 'RAMIREZ', 'SORCIA', '2004-03-12', 'PUEBLA', 'MEXICANA', '', '', '', '', '2007-08-20', '', 1, 13, 'F', 'RASD040312MPLMRNA9', '', 0, '', '', '', '', '', 0, ''),
(10070031, ' RONALD', 'REYES', 'BETANCOURT', '2004-10-30', 'PUEBLA', 'MEXICANA', '', '', '', '', '2007-08-20', '', 1, 13, 'M', 'REBR041030HPLYTNA0', '', 0, '', '', '', '', '', 0, ''),
(10090001, ' ANGELO DAMIAN', 'AGUILAR', 'VELAZQUEZ', '2010-10-08', '', '', '', '', '', '', '2010-10-08', '', 1, 12, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(10090005, ' JONATHAN', 'LOPEZ', 'REYES', '2010-10-08', '', '', '', '', '', '', '2010-10-08', '', 1, 12, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(10090009, ' ALBERTO', 'PEREZ', 'PADILLA', '2010-10-08', '', '', '', '', '', '', '2010-10-08', '', 1, 13, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(10090012, ' ALEJANDRO', 'SILVERIO', 'LOPEZ', '2010-10-08', '', '', '', '', '', '', '2010-10-08', '', 1, 12, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(10090015, ' ZOE MAYNETH', 'VALENZO', 'GARCIA', '2010-10-08', '', '', '', '', '', '', '2010-10-08', '', 1, 13, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(10090016, ' EMILIANO', 'AVELAR', 'ALVARADO', '2010-10-12', '', '', '', '', '', '', '2010-10-12', '', 1, 12, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(10090018, ' JUAN MELANIE', 'HERBERT', 'SAN', '2010-10-12', '', '', '', '', '', '', '2010-10-12', '', 1, 13, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(10090020, ' DIANA MANOLI', 'RAMIREZ', 'JUAREZ', '2010-10-12', '', '', '', '', '', '', '2010-10-12', '', 1, 12, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(10090021, ' FEDERICO  JAVIER', 'RAMIREZ', 'AGUILA', '2010-10-12', '', '', '', '', '', '', '2010-10-12', '', 1, 12, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(10090023, ' VALERIA', 'SANCHEZ', 'GARCIA', '2010-10-12', '', '', '', '', '', '', '2010-10-12', '', 1, 12, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(10100001, ' JENIFER YAMILET', 'ANGULO', 'ROSAS', '2007-05-02', 'PUEBLA', 'MEXICANA', 'AV.119 PTE.ED.910-D-6', 'AGUA SANTA', '', '', '2010-08-23', '', 1, 6, 'F', 'AURJ070502MPLNSNA2', '', 0, '', '', '2133205', '', '', 0, ''),
(10100002, ' EMILY ABIGAIL', 'ARENAS', 'CORDERO', '2007-05-23', 'PUEBLA', 'MEXICANA', '117 PTE.1111', 'SAN FRANCISCO MAYORAZGO', '', '', '2010-08-23', 'RHO+', 1, 7, 'F', 'AECE070523MPLRRMA5', '', 0, '', '', '2282631', '', '', 0, ''),
(10100003, ' ALAN', 'DELGADO', 'VELEZ', '2007-02-01', 'PUEBLA', 'MEXICANO', 'PLAZA AM10-7 DEPTO.7', 'AGUA SANTA', '', '', '2010-08-23', 'RHA+', 1, 6, 'M', 'DEVA070201HPLLLLA8', '', 0, '', '', '2223252482', '', '', 0, ''),
(10100004, ' MARISOL', 'DOMINGUEZ', 'GUERRERO', '2007-06-15', 'PUEBLA', 'MEXICANA', 'BOULEVARD INDEPENDENCIA EDIF.12304-16', 'SAN MIGUEL MAYORAZGO', '', '', '2010-08-23', 'RHO+', 1, 3, 'F', 'DOGM070615MPLRRA3', '', 0, '', '', '2284008', '', '', 0, ''),
(10100005, ' AMERIKA ALEXANDRA', 'FLORES', 'CORDERO', '2007-03-05', 'PUEBLA', 'MEXICANA', 'CALLE MIGUEL HIDALGO 1524', 'TRES CERRITOS', '', '', '2010-08-23', 'RHO+', 1, 6, 'F', 'FOCA070305MPLLRMA7', '', 0, '', '', '2281989', '', '', 0, ''),
(10100006, ' YOLANDA', 'HERNANDEZ', 'RUIZ', '2007-03-28', 'PUEBLA', 'MEXICANA', '117 PTE. 1131', 'SAN FRANCISCO MAYORAZGO', '', '', '2010-08-23', 'RHO+', 1, 6, 'F', 'HERY070328MPLRZLA6', '', 0, '', '', '2440367', '', '', 0, ''),
(10100007, ' DARIANA', 'HUESCA', 'SANCHEZ', '2007-02-07', 'PUEBLA', 'MEXICANA', 'MANZANA 54-301', 'FOVISSSTE SAN ROQUE', '', '', '2010-08-23', 'RHO+', 1, 7, 'F', 'HUSD070207MPLSNRA7', '', 0, '', '', '7554862', '', '', 0, ''),
(10100008, ' SAMANTHA ADARELY', 'LEAL', 'AGUILAR', '2007-04-23', 'PUEBLA', 'MEXICANA', 'BOULEVARD INDEPENDENCIA NUM.11111-4', 'SAN MIGUEL MAYORAZGO', '', '', '2010-08-23', '', 1, 3, 'F', 'LEAS070423MPLLGMA8', '', 0, '', '', '8939523', '', '', 0, ''),
(10100009, ' ANGEL EDUARDO', 'LINARES', 'ABASOLO', '2007-08-02', 'PUEBLA', 'MEXICANO', 'CERRADA117 PTE.11705', 'SAN FRANCISCO MAYORAZGO', '', '', '2010-08-23', 'RHO+', 1, 6, 'M', 'LIAA070802HPLNBNA7', '', 0, '', '', '2282682', '', '', 0, ''),
(10100011, ' ISRAEL', 'LOPEZ', 'PEÑUELA', '2007-05-02', 'PUEBLA', 'MEXICANO', 'BOULEVARD INDEPENDENCIA 12122-25', 'SAN MIGUEL MAYORAZGO', '', '', '2010-08-23', 'RHO+', 1, 7, 'M', 'LOPI070502HPLPXSA0', '', 0, '', '', '2191685', '', '', 0, ''),
(10100013, ' MIGUEL', 'LUNA', 'ESPINOSA', '2007-06-25', 'PUEBLA', 'MEXICANO', 'CALLE PROGRESO 1579', 'GRANJAS MAYORAZGO', '', '', '2010-08-23', 'RHO+', 1, 7, 'M', 'LUEM070625HPLNSGA6', '', 0, '', '', '2132207', '', '', 0, ''),
(10100016, ' ALFREDO', 'NIÑO', 'LUNA', '2007-07-09', 'PUEBLA', 'MEXICANO', 'CALLE PROGRESO 1579', 'GRANJAS MAYORAZGO', '', '', '2010-08-23', 'RHO+', 1, 7, 'M', 'NILA070709HPLXNLA6', '', 0, '', '', '2132207', '', '', 0, ''),
(10100017, ' DANIEL', 'OLGUIN', 'RINCON', '2007-07-12', 'PUEBLA', 'MEXICANO', '105B PTE.1503', 'GALAXIA LA LAGUNA', '', '', '2010-08-23', '', 1, 7, 'M', 'OURD070712HPLLNNA4', '', 0, '', '', '4823007', '', '', 0, ''),
(10100019, ' JUAN PABLO', 'REYES', 'ROSAS', '2007-02-02', 'PUEBLA', 'MEXICANO', 'PRIVADA C11 SUR LOTE 21', 'SAN BERNABE TENOMOXTITLA', '', '', '2010-08-23', '', 1, 7, 'M', 'RERJ070202HPLYSNA0', '', 0, '', '', '2221769944', '', '', 0, ''),
(10100020, ' KATE', 'RUIZ', 'MONTIEL', '2007-05-02', 'PUEBLA', 'MEXICANA', 'CAMINO SAN MIGUEL 1549-8', 'GRANJAS MAYORAZGO', '', '', '2010-08-23', '', 1, 6, 'F', 'RUMK070502MPLZNTA7', '', 0, '', '', '8898678', '', '', 0, ''),
(10100021, ' BRYAN', 'TORIBIO', 'LOMELI', '2007-01-26', 'PUEBLA', 'MEXICANO', 'RETORNO17 A SUR 11722A', 'PASEOS DEL RIO', '', '', '2010-08-23', 'RHO+', 1, 7, 'M', 'TOLB070126HPLRMRA2', '', 0, '', '', '3951131', '', '', 0, ''),
(10100023, ' LA CRUZ FERNANDO', 'VAZQUEZ', 'DE', '2007-05-15', 'PUEBLA', 'MEXICANO', 'PLAZA BM2 EDIF.B14-2', 'AGUA SANTA', '', '', '2010-08-23', 'RHO+', 1, 6, 'M', 'VACF070515HPLZRRA6', '', 0, '', '', '4034539', '', '', 0, ''),
(10100025, ' ASHLEY NATASHA', 'ACEVEDO', 'RAMIREZ', '2006-09-16', 'PUEBLA', 'MEXICANA', 'HUNGRIA NUM. 16', 'GEO VILLAS DEL SUR', '', 'ESPIGUITA', '2010-08-23', '', 1, 8, 'F', 'AERA060916MPLCMSA4', '', 0, '', '', '4099446', '', '', 0, ''),
(10100027, ' ANGEL JOSUE', 'ARGUELLO', 'HERDEZ', '2006-05-05', 'PUEBLA', 'MEXICANA', '15 B SUR 10906', 'GALAXIA LA LAAGUNA', '', '', '2010-08-23', '', 1, 8, 'M', 'AUHA060505HPLRRNA8', '', 0, '', '', '3 99 15 24', '', '', 0, ''),
(10100028, ' MARIA JOSE', 'ATLATENCO', 'JUAREZ', '2006-10-29', 'PUEBLA', 'MEXICANA', 'BLVD. INDEP. 12108-28', 'SAN MIGUEL MAYORAZGO', '', '', '2010-08-23', '', 1, 9, 'M', 'AAJJ061029MPLTRSA7', '', 0, '', '', '3 95 00 24', '', '', 0, ''),
(10100029, ' ALBERTO', 'BAEZ', 'CRUZ', '2006-02-02', 'PUEBLA', 'MEXICANA', '18 SUR 11316-47', 'FRACC. LOS HEROES PUEBLA', '', '', '2010-08-23', '', 1, 8, 'M', 'BXCA060202HPLZRLA5', '', 0, '', '', '2221174106', '', '', 0, ''),
(10100030, ' SEBASTIAN', 'BAÑOS', 'BAUTISTA', '2006-01-20', 'PUEBLA', 'MEXICANA', 'HACIENDA SANTA FE CAMINO ESCONDIDO 12 F', 'CASTILLOTLA', '', '', '2010-08-23', '', 1, 9, 'M', 'BABS06120 HPLXTBA5', '', 0, '', '', '4 03 02 54', '', '', 0, ''),
(10100031, ' CYNTIA ITZEL', 'BENITEZ', 'VILLA', '2006-09-27', 'PUEBLA', 'MEXICANA', 'AV. INDEP. 1904-4', 'SAN MIGUEL MAYORAZGO', '', '', '2010-08-23', '', 1, 8, 'F', 'BEVC060927MPLNLYA4', '', 0, '', '', '2283018', '', '', 0, ''),
(10100032, ' CESAR AUGUSTO', 'BRINGAS', 'LECONA', '2006-05-13', 'PUEBLA', 'MEXICANA', 'CALLE SANTA ELENA LOTE 34 M 3', 'SANTA LUCIA', '', '', '2010-08-23', '', 1, 9, 'M', 'BILC06051EHPLRCSA1', '', 0, '', '', '2224751544', '', '', 0, ''),
(10100035, ' JESUS EDUARDO', 'CORTES', 'AMARO', '2006-06-12', 'PUEBLA', 'MEXICANA', '2DA. CERRADA DE STA CECILIA 9_C', 'FRACC. JARDINES DE SANTA ROSA', '', '', '2010-08-23', '', 1, 8, 'M', 'COAJ066102HPLRMSA3', '', 0, '', '', '3957807', '', '', 0, ''),
(10100036, ' FATIMA', 'CUATLE', 'PEREZ', '2006-07-08', 'PUEBLA', 'MEXICANA', 'PLAZA CM-10 EDIF C-18 DEPTO 11', 'AGUA SANTA', '', '', '2010-08-23', '', 1, 9, 'F', 'CUPF060708MPLTRTA3', '', 0, '', '', '8 93 90 28', '', '', 0, ''),
(10100038, ' EMMANUEL', 'ESPINOZA', 'RAMOS', '2006-10-27', 'PUEBLA', 'MEXICANA', 'CALLE VENUSTIANO CARRANZA 564', 'GUADALUPE HIDALGO', '', 'ESPIGUITA', '2010-08-23', '', 1, 9, 'M', 'EIRE061027HPLSMMA8', '', 0, '', '', '1294184', '', '', 0, ''),
(10100039, ' DIEGO GAEL', 'GARCIA', 'PEREZ', '2006-03-14', 'PUEBLA', 'MEXICANA', 'CALLE MARGARITA NUM 34', 'JARDINES DEL SUR', '', 'ESPIGUITA', '2010-08-23', '', 1, 8, 'M', 'GAPD060314HPLRRGA0', '', 0, '', '', '1872595', '', '', 0, ''),
(10100040, ' MICHELLE', 'GOMEZ', 'ANDRADE', '2006-02-13', 'PUEBLA', 'MEXICANA', 'PRIV. 27 A SUR MANZANA 4 LOTE 8', 'VALLE DEL SUR', '', 'ESPIGUITA', '2010-08-23', '', 1, 9, 'F', 'GOAM060213MPLMNCA8', '', 0, '', '', '2 41 63 86', '', '', 0, ''),
(10100041, ' ITZIA SHARET', 'INFANZON', 'TOLEDO', '2006-05-29', 'PUEBLA', 'MEXICANA', 'PRIV. 117 PTE. 1715 A', 'PASEOS DEL RIO', '', 'ESPIGUITA', '2010-08-23', '', 1, 8, 'F', 'IATI060529MPLNLTA9', '', 0, '', '', '8891093', '', '', 0, ''),
(10100042, ' KARIME', 'JARAMILLO', 'MURO', '2006-02-23', 'PUEBLA', 'MEXICANA', 'BLV. IND. EDIF. 12110-23', 'SAN MIGUEL MAYORAZGO', '', '', '2010-08-23', '', 1, 9, 'F', 'JAMK060223MPLRRRA9', '', 0, '', '', '3796724', '', '', 0, ''),
(10100044, ' JHOAN MANUEL', 'MELCHOR', 'GARCIA', '2006-01-12', 'PUEBLA', 'MEXICANA', 'CAMPANAS NUM 1 LETRA E', 'HACIENDA SANTA FE', '', 'ESPIGUITA', '2010-08-23', '', 1, 8, 'M', 'MEGJ060112HOLLRHA6', '', 0, '', '', '2225177852', '', '', 0, ''),
(10100045, ' JULIO IRVING', 'MENDEZ', 'SANCHEZ', '2006-06-10', 'PUEBLA', 'MEXICANA', 'PROLG. CAZUARINAS NUM. 5', 'LA CARMELITA', '', 'ESPIGUITA', '2010-08-23', '', 1, 8, 'M', 'MESJ060610HPLNNLA9', '', 0, '', '', '3415007', '', '', 0, ''),
(10100048, ' EDGAR SANTIAGO', 'PALAFOX', 'REYES', '2006-03-11', 'PUEBLA', 'MEXICANA', 'RETORNO 5 DE FEB EDUF 2 INT. 18', 'LAS CARMELITAS', '', 'ESPIGUITA', '2010-08-23', '', 1, 8, 'M', 'PARE060311HPLLYDA6', '', 0, '', '', '2194584', '', '', 0, ''),
(10100050, ' REGINA SAMANTHA', 'RAMIREZ', 'VEGA', '2006-08-17', 'PUEBLA', 'MEXICANA', 'CALLE IRIS LOTA 15 14912', 'SAN RAMON', '', 'ESPIGUITA', '2010-08-23', '', 1, 8, 'F', 'RAVR060817MPLMGGA9', '', 0, '', '', '2410559', '', '', 0, ''),
(10100051, ' DIANA', 'RIVERA', 'SANCHEZ', '2006-05-24', '`PUEBLA', 'MEXICANA', 'CERRADA DE CEREZOS NUM. 102', 'JARDIN DE SAN JUAN BOSCO', '', '', '2010-08-23', '', 1, 9, 'F', 'RISD060524MPLVNNA7', '', 0, '', '', '3954072', '', '', 0, ''),
(10100054, ' EMMANUEL', 'RUIZ', 'SANCHEZ', '2006-07-14', 'PUEBLA', 'MEXICANO', 'CAZUARINAS MANZANA L LOTE V', 'LA VICTORIA', '', '', '2010-08-23', '', 1, 8, 'M', 'RUSE060714HPLZNMA2', '', 0, '', '', '2414853', '', '', 0, ''),
(10100055, ' FERNANDO', 'SANCHEZ', 'MORANCHEL', '2006-12-20', 'PUEBLA', 'MEXICANA', '13 SUR 1115 CASA 20', 'SAN FRANCISCO MAYORAZGO', '', 'ESPIGUITA', '2010-08-23', '', 1, 8, 'M', 'SAMF061220HPLNRRA4', '', 0, '', '', '8886708', '', '', 0, ''),
(10100056, ' ALEJANDRA', 'SANCHEZ', 'LEON', '2006-03-02', 'PUEBLA', 'MEXICANA', '27 A SUR 13918 LETRA C', 'CASTILLOTLA', '', '', '2010-08-23', '', 1, 8, 'F', 'SALA060302MPLNNLA9', '', 0, '', '', '5028338', '', '', 0, ''),
(10100057, ' JUAN DAVID', 'SANCHEZ', 'RAMIREZ', '2006-09-29', 'PUEBLA', 'MEXICANA', 'LAZARO CRADENAS NUM 1527 - 5', 'TRES CERRITOS', '', '', '2010-08-23', '', 1, 9, 'M', 'SARJ060929HPLNMNA1', '', 0, '', '', '2132200', '', '', 0, ''),
(10100058, ' ARTURO MIGUEL', 'VILLEGAS', 'SANCHEZ', '2006-01-02', 'PUEBLA', 'MEXICANA', '13 SUR 11 103 NUM 35', 'SAN FRANCISCO MAYORAZGO', '', 'ESPIGUITA', '2010-08-23', '', 1, 8, 'M', 'VISA060102HPLLNRA2', '', 0, '', '', '2198015', '', '', 0, ''),
(20060001, ' ALAN', 'ALCAZAR', 'ROQUE', '2006-10-19', '', '', '', '', '', '', '2006-10-19', '', 1, 19, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20060007, ' KAREN', 'GOMEZ', 'ARCHUNDIA', '2006-10-19', '', '', 'PLAZA DM5  EDIF. D29 DPTO. 4', 'AGUA SANTA', '', 'EDUCACION Y DESARROLLO INTEGRALES', '2006-10-19', '', 1, 19, 'F', '', '', 0, '', '', '2289756', '', '', 0, ''),
(20060008, ' LA FUENTE CAROLINA', 'HERNANDEZ', 'DE', '2006-10-19', '', '', '', '', '', '', '2006-10-19', '', 1, 19, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20060009, ' JOSE ALBERTO', 'HUERTA', 'AVENDAÑO', '2006-10-19', '', '', '', '', '', '', '2006-10-19', '', 1, 19, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20060010, ' MONTSERRATH', 'MAGUEYAN', 'HERNANDEZ', '2006-10-19', '', '', '', '', '', '', '2006-10-19', '', 1, 19, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20060013, ' ANDREA ISABEL', 'PAEZ', 'LUIS', '2006-10-19', '', '', '', '', '', '', '2006-10-19', '', 1, 19, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20060019, ' KARINA', 'VILLAFAÑA', 'VELEZ', '2006-10-19', '', '', '', '', '', '', '2006-10-19', '', 1, 19, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20060020, ' DELIA', 'ESPINDOLA', 'ROMERO', '2006-10-19', '', '', '', '', '', '', '2006-10-19', '', 1, 20, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20060021, ' ERICK', 'FLORES', 'VAZQUEZ', '2006-10-19', '', '', '', '', '', '', '2006-10-19', '', 1, 19, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20060023, ' JOSE DAVID', 'MASTRANZO', 'MARTINEZ', '2006-10-19', '', '', '', '', '', '', '2006-10-19', '', 1, 19, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20060024, ' RAZO ABRAHAM', 'MESIAS', 'DEL', '2006-10-19', '', '', '', '', '', '', '2006-10-19', '', 1, 20, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20060030, ' MARIANA', 'VARGAS', 'SANDOVAL', '2006-10-19', '', '', '', '', '', '', '2006-10-19', '', 1, 19, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20060033, ' DAVID', 'OLGUIN', 'RINCON', '2007-03-03', '', '', '', '', '', '', '2007-03-03', '', 1, 20, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20070001, ' VICTORIA MARIA', 'ARENAS', 'ASTORGA', '2000-12-19', 'PUEBLA', 'MEXICANA', 'RETORNO ORQUIDEA 65 C', 'LAS MERCEDES', '72460', 'EL TESORO DEL SABER', '2007-08-20', '', 1, 18, 'F', '', '', 0, '', '', '2 1897347', '', '', 0, ''),
(20070003, '  MENDOZA ROCIO', 'DE', 'BERNARDO', '2007-10-15', '', '', '', '', '', '', '2007-10-15', '', 1, 18, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20070005, ' BRUNO', 'GONZALEZ', 'CRUZ', '2007-10-15', '', '', '', '', '', '', '2007-10-15', '', 1, 18, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20070007, ' ABRIL', 'HERNANDEZ', 'GONZALEZ', '2007-10-15', '', '', '', '', '', '', '2007-10-15', '', 1, 18, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20070011, ' MORALES  RODRIGO', 'MEDRANO', '', '2007-10-15', '', '', '', '', '', '', '2007-10-15', '', 1, 24, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20070013, ' MARTINEZ  ESTER BERENICE', 'RAMIREZ', '', '2007-10-15', '', '', '', '', '', '', '2007-10-15', '', 1, 24, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20070014, ' MARIA JOSE', 'REYERO', 'MEZA', '2007-10-15', '', '', '', '', '', '', '2007-10-15', '', 1, 24, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20070015, ' LOZANO  RICARDO DE JESUS', 'RODRIGUEZ', '', '2007-10-15', '', '', '', '', '', '', '2007-10-15', '', 1, 18, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20070017, ' SANCHEZ  KAROLINA GUADALUPE', 'VILLEGAS', '', '2007-10-15', '', '', '', '', '', '', '2007-10-15', '', 1, 18, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20070018, '  JOSE MANUEL', 'CONTRERAS', 'JULIAN', '2007-10-15', '', '', '', '', '', '', '2007-10-15', '', 1, 24, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20070019, ' YEIMI', 'DURAN', 'VARGAS', '2007-10-15', '', '', '', '', '', '', '2007-10-15', '', 1, 18, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20070022, ' GONZALEZ  MARIA  FERNANDA', 'MENDOZA', '', '2007-10-15', '', '', '', '', '', '', '2007-10-15', '', 1, 24, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20070026, ' MENDOZA  MAURICIO', 'QUINTANA', '', '2007-10-15', '', '', '', '', '', '', '2007-10-15', '', 1, 18, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20070027, ' PEREZ  MARTHA  JOANNA', 'RENDON', '', '2007-10-15', '', '', '', '', '', '', '2007-10-15', '', 1, 18, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20070029, ' FLORES  MARIA MONTSERRAT', 'VALDEZ', '', '2007-10-15', '', '', '', '', '', '', '2007-10-15', '', 1, 18, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20070033, ' ARGUELLO  JUAN CARLOS', 'MEJIA', '', '2007-10-16', '', '', '', '', '', '', '2007-10-16', '', 1, 20, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20070038, ' ROMERO  CAROLINA', 'CARCAMO', '', '2007-10-16', '', '', '', '', '', '', '2007-10-16', '', 1, 20, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20080003, ' PINEDA  DIANA LAURA', 'CUELLAR', '', '2008-10-17', '', '', '', '', '', '', '2008-08-18', '', 1, 17, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20080004, ' BADILLO  HUMBERTO', 'FERNANDEZ', '', '2008-10-17', '', '', '', '', '', '', '2008-08-18', '', 1, 16, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20080005, ' AVENDAÑO  ULISES ISAAC', 'GONZALEZ', '', '2008-10-17', '', '', '', '', '', '', '2008-08-18', '', 1, 17, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20080008, ' ARGUELLO MELINA JAQUELINE', 'MEJIA', '', '2008-10-17', '', '', '', '', '', '', '2008-08-18', '', 1, 17, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20080009, ' MONTERROSAS  KATIA', 'MOTE', '', '2008-10-17', '', '', '', '', '', '', '2008-08-18', '', 1, 17, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20080010, ' ROCHA  HUMBERTO MAXIMILIANO', 'OSORIO', '', '2008-10-17', '', '', '', '', '', '', '2008-08-18', '', 1, 17, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20080011, '  JESUS', 'POSADAS', 'AREVALO', '2008-10-17', '', '', '', '', '', '', '2008-08-18', '', 1, 16, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20080012, ' MENDOZA  AXEL  URIEL', 'QUINTANA', '', '2008-10-17', '', '', '', '', '', '', '2008-08-18', '', 1, 16, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20080019, ' OSVALDO', 'HERNANDEZ', 'MONROY', '2008-10-17', '', '', '', '', '', '', '2008-08-18', '', 1, 16, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20080020, ' ARLETH', 'MONTIEL', 'ANZO', '2008-10-17', '', '', '', '', '', '', '2008-08-18', '', 1, 16, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20080022, ' ALAN MISHEL', 'SAMPAYO', 'RAMIREZ', '2008-10-17', '', '', '', '', '', '', '2008-08-18', '', 1, 16, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20080024, ' JOSE CARLOS', 'SANDOVAL', 'JIMENEZ', '2008-10-17', '', '', '', '', '', '', '2008-08-18', '', 1, 17, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20080026, ' MARIA DANIELA', 'TURRUBIATES', 'FLORES', '2008-10-17', '', '', '', '', '', '', '2008-08-18', '', 1, 17, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20080029, ' JESSICA GALA', 'FLORES', 'RAMOS', '2008-10-17', '', '', '', '', '', '', '2008-08-18', '', 1, 18, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20080030, ' ANGEL JAIR', 'JUAREZ', 'CORDOVA', '2008-10-17', '', '', '', '', '', '', '2008-08-18', '', 1, 18, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20080031, ' LIVAN', 'MARTINEZ', 'HERNANDEZ', '2008-10-17', '', '', '', '', '', '', '2008-08-18', '', 1, 18, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20080034, ' DANIA', 'SALDAÑA', 'NUÑEZ', '2008-10-17', '', '', '', '', '', '', '2008-08-18', '', 1, 24, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20080036, ' ANDREA NAHOMI', 'NAVA', 'MOGOLLAN', '2008-10-17', '', '', '', '', '', '', '2008-08-18', '', 1, 20, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20080040, ' JOSEPH ROGELIO', 'MALDONADO', 'MUÑOZ', '2008-10-17', '', '', '', '', '', '', '2008-08-18', '', 1, 20, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20080059, ' RIVERA  LAURA ISABEL', 'MEDRANO', '', '2008-10-17', '', '', '', '', '', '', '2008-08-18', '', 1, 20, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20090001, ' NADIA YOSELINE', 'ADAN', 'IRENE', '2009-10-10', '', '', '', '', '', '', '2009-08-24', '', 1, 15, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20090003, ' CAMILA ANETTE', 'BENITEZ', 'VILLA', '2009-10-10', '', '', '', '', '', '', '2009-08-24', '', 1, 14, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20090005, ' ADRIAN', 'CRUZ', 'CORTES', '2009-10-10', '', '', '', '', '', '', '2009-08-24', '', 1, 15, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20090006, ' LEONARDO ALEJANDRO', 'GOMEZ', 'SIMON', '2009-10-10', '', '', '', '', '', '', '2009-08-24', '', 1, 15, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20090008, ' FELIX ROGELIO', 'GONZALEZ', 'LOPEZ', '2009-10-10', '', '', '', '', '', '', '2009-08-24', '', 1, 14, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20090009, ' ROMAN CALEB', 'HERNANDEZ', 'GONZALEZ', '2009-10-10', '', '', '', '', '', '', '2009-08-24', '', 1, 14, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20090010, ' VICTOR YAHIR', 'LUNA', 'URIARTE', '2009-10-10', '', '', '', '', '', '', '2009-08-24', '', 1, 15, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20090013, ' NADIA', 'MARTINEZ', 'HERNANDEZ', '2009-10-10', '', '', '', '', '', '', '2009-08-24', '', 1, 14, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20090015, ' ITZEL', 'MAXIMO', 'MELENDEZ', '2009-10-10', '', '', '', '', '', '', '2009-08-24', '', 1, 15, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20090016, ' MARIA DEL ROCIO', 'MINO', 'PEREZ', '2009-10-10', '', '', '', '', '', '', '2009-08-24', '', 1, 14, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20090020, ' ANA KAREN', 'RAMIREZ', 'MARTINEZ', '2009-10-10', '', '', '', '', '', '', '2009-08-24', '', 1, 14, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20090023, ' SARAHI', 'VALLEJO', 'MALLQUI', '2009-10-10', '', '', '', '', '', '', '2009-08-24', '', 1, 14, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20090024, ' LA CRUZ LEONARDO', 'VAZQUEZ', 'DE', '2009-10-10', '', '', '', '', '', '', '2009-08-24', '', 1, 14, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20090025, ' AMERICA LIZETH', 'ALCAZAR', 'ROQUE', '2009-10-10', '', '', '', '', '', '', '2009-08-24', '', 1, 15, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20090029, ' MARIA JESABEL', 'CARRETO', 'TRINIDAD', '2009-10-10', '', '', '', '', '', '', '2009-08-24', '', 1, 14, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20090030, ' ESTEBAN', 'COSIO', 'MOZO', '2009-10-10', '', '', '', '', '', '', '2009-08-24', '', 1, 15, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20090031, ' FRIDA ITALIA', 'COTO', 'ROBLES', '2009-10-10', '', '', '', '', '', '', '2009-08-24', '', 1, 15, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20090033, ' ALAN ZAID', 'FLORES', 'CEREZO', '2009-10-10', '', '', '', '', '', '', '2009-08-24', '', 1, 14, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20090034, ' PAOLA', 'GONZALEZ', 'MONTALVO', '2009-10-10', '', '', '', '', '', '', '2009-08-24', '', 1, 15, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20090036, ' LA FUENTE ANDREA', 'HERNANDEZ', 'DE', '2009-10-10', '', '', '', '', '', '', '2009-08-24', '', 1, 14, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20090037, ' WILLY GABRIEL', 'HERNANDEZ', 'ESTEBES', '2009-10-10', '', '', '', '', '', '', '2009-08-24', '', 1, 15, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20090038, ' EVELYN', 'HUERTA', 'CAMPERANO', '2009-10-10', '', '', '', '', '', '', '2009-08-24', '', 1, 15, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20090040, ' KARINA YOCELIN', 'LOPEZ', 'SANCHEZ', '2009-10-10', '', '', '', '', '', '', '2009-08-24', '', 1, 14, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20090044, ' RICARDO', 'MEJIA', 'ARGUELLO', '2009-10-10', '', '', '', '', '', '', '2009-08-24', '', 1, 14, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20090045, ' DIEGO', 'MORENO', 'SANCHEZ', '2009-10-10', '', '', '', '', '', '', '2009-08-24', '', 1, 14, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20090046, ' YOLANDA WENDOLYN', 'REYES', 'ROSAS', '2009-10-10', '', '', '', '', '', '', '2009-08-24', '', 1, 14, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20090050, ' LA CRUZ ALEJANDRO', 'VAZQUEZ', 'DE', '2009-10-10', '', '', '', '', '', '', '2009-10-10', '', 1, 14, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20090052, ' JOHAN', 'BAÑOS', 'BAUTISTA', '2009-10-10', '', '', '', '', '', '', '2009-08-24', '', 1, 16, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20090055, ' ALEJANDRO', 'LOPEZ', 'DIEZ', '2009-10-10', '', '', '', '', '', '', '2009-08-24', '', 1, 16, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20090056, ' ANDREA', 'RIVERA', 'SANCHEZ', '2009-10-10', '', '', '', '', '', '', '2009-08-24', '', 1, 16, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20090057, ' IZOCOATL DAVID', 'ZEMPOALTECATL', 'HERNANDEZ', '2009-10-10', '', '', '', '', '', '', '2009-08-24', '', 1, 17, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20090062, ' MIRIAM ITZEL', 'GUTIERREZ', 'GOMEZ', '2009-10-10', '', '', '', '', '', '', '2009-08-24', '', 1, 16, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20090064, ' SARAI', 'MENESES', 'VALERA', '2009-10-10', '', '', '', '', '', '', '2009-08-24', '', 1, 16, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20090070, ' GABRIELA TIANESKA', 'LOPEZ', 'MARTINEZ', '2009-10-10', '', '', '', '', '', '', '2009-08-24', '', 1, 24, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20090072, ' FATIMA', 'HERRERA', 'MENDEZ', '2009-10-10', '', '', '', '', '', '', '2009-08-24', '', 1, 24, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20090073, ' JESUS PEDRO ADAN', 'REYES', 'ROSAS', '2009-10-10', '', '', '', '', '', '', '2009-08-24', '', 1, 18, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20090075, ' JUAN EDUARDO', 'LOPEZ', 'DIEZ', '2009-10-10', '', '', '', '', '', '', '2009-08-24', '', 1, 19, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20090080, ' JUAN CARLOS', 'LOPEZ', 'DIEZ', '2009-10-10', '', '', '', '', '', '', '2009-08-24', '', 1, 20, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20090091, ' ALFREDO', 'CANCINO', 'HERNANDEZ', '2010-03-01', '', '', '', '', '', '', '2010-02-15', '', 1, 14, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20090092, ' ANDREA', 'CANCINO', 'HERNANDEZ', '2010-03-01', '', '', '', '', '', '', '2010-02-15', '', 1, 19, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20100002, ' CLARA ITZEL', 'GARCIA', 'CRISANTO', '2010-10-17', '', '', '', '', '', '', '2010-10-17', '', 1, 13, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20100003, ' ELSA NATALIA', 'HERNANDEZ', 'GONZALEZ', '2010-10-17', '', '', '', '', '', '', '2010-10-17', '', 1, 13, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20100007, ' FERNANDO', 'MORALES', 'CILIA', '2010-10-17', '', '', '', '', '', '', '2010-10-17', '', 1, 12, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20100008, ' ERICK DANIEL', 'OSORIO', 'MANZANO', '2010-10-17', '', '', '', '', '', '', '2010-10-17', '', 1, 12, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20100009, ' DIEGO', 'TECPANECATL', 'RAMIREZ', '2010-10-17', '', '', '', '', '', '', '2010-10-17', '', 1, 13, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20100011, ' MIGUEL', 'BARRIENTOS', 'FERNANDEZ', '2010-10-17', '', '', '', '', '', '', '2010-10-17', '', 1, 12, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20100012, ' ANGEL FERNANDO', 'CORTES', 'SALAZAR', '2010-10-17', '', '', '', '', '', '', '2010-10-17', '', 1, 12, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20100013, ' ABRAHAM ISAAC', 'CORTES', 'MACHORRO', '2010-10-17', '', '', '', '', '', '', '2010-10-17', '', 1, 13, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20100014, ' ADRISSA', 'HERNANDEZ', 'GONZALEZ', '2010-10-17', '', '', '', '', '', '', '2010-10-17', '', 1, 12, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20100017, ' CESAR', 'SANCHEZ', 'TOXQUI', '2010-10-17', '', '', '', '', '', '', '2010-10-17', '', 1, 13, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20100022, ' LUCILA JOSELYN', 'VAZQUEZ', 'LUNA', '2010-10-17', '', '', '', '', '', '', '2010-10-17', '', 1, 17, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20100024, ' ARANZA', 'SANCHEZ', 'TOXQUI', '2010-10-17', '', '', '', '', '', '', '2010-10-17', '', 1, 17, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20100025, ' SEBASTIAN PORFIRIO', 'TECPANECATL', 'RAMIREZ', '2010-10-17', '', '', '', '', '', '', '2010-10-17', '', 1, 17, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20100026, ' ALEXIS ULISES', 'VERGARA', 'LOPEZ', '2010-10-17', '', '', '', '', '', '', '2010-10-17', '', 1, 17, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20100031, ' JORGE FRANCISCO', 'HERNANDEZ', 'SILVA', '2010-10-17', '', '', '', '', '', '', '2010-10-17', '', 1, 24, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20100035, ' ISKRA XIADANI', 'NAVA', 'CANO', '2010-10-17', '', '', '', '', '', '', '2010-10-17', '', 1, 20, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20100037, ' FERNANDA YETLANEZI', 'MARTINEZ', 'LOPEZ', '2010-10-17', '', '', '', '', '', '', '2010-10-17', '', 1, 19, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20110001, ' YOLITZIN', 'AGUADO', 'CARMONA', '2011-10-18', '', '', '', '', '', '', '2011-08-20', '', 1, 11, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20110002, ' ANA KAREN', 'AGUILAR', 'VELEZ', '2011-10-18', '', '', '', '', '', '', '2011-08-20', '', 1, 11, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20110003, ' CRISTIAN JESUS', 'ALVAREZ', 'DELGADILLO', '2011-10-18', '', '', '', '', '', '', '2011-08-20', '', 1, 10, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20110005, ' MARIO EMILIO', 'HERNANDEZ', 'MUÑOZ', '2011-10-18', '', '', '', '', '', '', '2011-08-20', '', 1, 10, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20110006, ' SARA', 'HERNANDEZ', 'GONZALEZ', '2011-10-18', '', '', '', '', '', '', '2011-08-20', '', 1, 11, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20110009, ' FERNANDO', 'JIMENEZ', 'ROJAS', '2011-10-18', '', '', '', '', '', '', '2011-08-20', '', 1, 11, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20110010, ' NOAH', 'MARQUEZ', 'VELEZ', '2011-10-18', '', '', '', '', '', '', '2011-08-20', '', 1, 10, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20110013, ' SOFIA', 'PERALTA', 'ORTEGA', '2011-10-18', '', '', '', '', '', '', '2011-08-20', '', 1, 11, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20110014, ' LUIS EDUARDO', 'PEREZ', 'OTAÑEZ', '2011-10-18', '', '', '', '', '', '', '2011-08-20', '', 1, 11, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20110016, ' ARIADNA JOCELYN', 'REYES', 'CORTES', '2011-10-18', '', '', '', '', '', '', '2011-08-20', '', 1, 10, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20110018, ' EMILIANO', 'RUIZ', 'ANZO', '2011-10-18', '', '', '', '', '', '', '2011-08-20', '', 1, 10, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20110019, ' ULISES', 'TELLEZ', 'QUIROZ', '2011-10-18', '', '', '', '', '', '', '2011-08-20', '', 1, 11, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20110020, ' ANETT', 'TOBON', 'VERA', '2011-10-18', '', '', '', '', '', '', '2011-08-20', '', 1, 10, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20110023, ' ELIA XIMENA', 'TORRES', 'HARO', '2011-10-18', '', '', '', '', '', '', '2011-08-20', '', 1, 11, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20110024, ' ALEJANDRO', 'TRINIDAD', 'ROSAS', '2011-10-18', '', '', '', '', '', '', '2011-08-20', '', 1, 10, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20110027, ' PAMELA', 'VERGARA', 'LOPEZ', '2011-10-18', '', '', '', '', '', '', '2011-08-20', '', 1, 10, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20110030, ' MILDRED ITZEL', 'ZAVALA', 'GONZALEZ', '2011-10-18', '', '', '', '', '', '', '2011-08-20', '', 1, 11, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20110031, ' ESTHEFANI', 'ANDRADE', 'VAZQUEZ', '2011-10-18', '', '', '', '', '', '', '2011-08-20', '', 1, 10, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20110032, ' DANIEL', 'ARENAS', 'MARTINEZ', '2011-10-18', '', '', '', '', '', '', '2011-08-20', '', 1, 11, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20110034, ' RICARDO', 'BAUTISTA', 'REYES', '2011-10-18', '', '', '', '', '', '', '2011-08-20', '', 1, 11, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20110035, ' ANDREA', 'BLANCA', 'TECPOYOTL', '2011-10-18', '', '', '', '', '', '', '2011-08-20', '', 1, 11, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20110036, ' FRIDA RUBI', 'CALVA', 'PONCE', '2011-10-18', '', '', '', '', '', '', '2011-08-20', '', 1, 11, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20110037, ' IBI EYEN', 'CHAVEZ', 'OLMEDO', '2011-10-18', '', '', '', '', '', '', '2011-08-20', '', 1, 10, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20110038, ' VICTOR DANIEL', 'CUELLAR', 'PINEDA', '2011-10-18', '', '', '', '', '', '', '2011-08-20', '', 1, 10, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20110039, ' MENDOZA DIEGO', 'DE', 'BERNANRDO', '2011-10-18', '', '', '', '', '', '', '2011-08-20', '', 1, 10, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20110041, ' LA FUENTE ALEJANDRO', 'HERNANDEZ', 'DE', '2011-10-18', '', '', '', '', '', '', '2011-08-20', '', 1, 10, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20110042, ' XIMENA', 'HERRERA', 'MENDEZ', '2011-10-18', '', '', '', '', '', '', '2011-08-20', '', 1, 11, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20110043, ' AXEL HORACIO', 'HUERTA', 'DIAZ', '2011-10-18', '', '', '', '', '', '', '2011-08-20', '', 1, 11, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20110046, ' EMMANUEL', 'LOPEZ', 'PEÑUELA', '2011-10-18', '', '', '', '', '', '', '2011-08-20', '', 1, 11, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20110048, ' GIRON VALERIA', 'MARQUEZ', 'TELLEZ', '2011-10-18', '', '', '', '', '', '', '2011-08-20', '', 1, 11, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20110049, ' SOFIA RENATA', 'MEJIA', 'BALDERAS', '2011-10-18', '', '', '', '', '', '', '2011-08-20', '', 1, 11, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20110051, ' OLIVER', 'MORA', 'SERRANO', '2011-10-18', '', '', '', '', '', '', '2011-08-20', '', 1, 11, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20110052, ' JUAN PABLO', 'ORTIZ', 'GARCIA', '2011-10-18', '', '', '', '', '', '', '2011-08-20', '', 1, 10, 'M', '', '', 0, '', '', '', '', '', 0, '');
INSERT INTO `alumno` (`matricula`, `nombre`, `apellidop`, `apellidom`, `fechanac`, `lugnac`, `nacionalidad`, `direccion`, `colonia`, `cp`, `escprecedencia`, `fecingreso`, `tiposangre`, `activo`, `idgrupo`, `sexo`, `curp`, `dir_imagen`, `nia`, `alergias`, `telcel`, `telefono`, `email`, `rfc`, `numext`, `numint`) VALUES
(20110053, ' DIANA', 'ORTIZ', 'SANCHEZ', '2011-10-18', '', '', '', '', '', '', '2011-08-20', '', 1, 10, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20110055, ' ERICK OSWALDO', 'REYES', 'MEDINA', '2011-10-18', '', '', '', '', '', '', '2011-08-20', '', 1, 11, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20110059, ' ARTURO', 'VARGAS', 'SANDOVAL', '2011-10-18', '', '', '', '', '', '', '2011-08-20', '', 1, 10, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20110060, ' ADRIAN', 'ZAMBRANO', 'MENDOZA', '2011-10-18', '', '', '', '', '', '', '2011-08-20', '', 1, 10, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20110061, ' BRENDA', 'CARDENAS', 'DELGADO', '2011-10-18', '', '', '', '', '', '', '2011-08-20', '', 1, 12, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20110062, ' JABNIA AHINOAM', 'CASTILLO', 'ESTEVEZ', '2011-10-18', '', '', '', '', '', '', '2011-08-20', '', 1, 13, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20110064, ' ZAINE', 'INIESTA', 'CORTES', '2011-10-18', '', '', '', '', '', '', '2011-08-20', '', 1, 12, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20110066, ' RICARDO', 'RAMOS', 'MORALES', '2011-10-18', '', '', '', '', '', '', '2011-08-20', '', 1, 12, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20110069, ' JOSE VICTOR', 'MACIAS', 'IBARRA', '2011-10-18', '', '', '', '', '', '', '2011-08-20', '', 1, 14, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20110070, ' CHRISTIAN', 'PEREZ', 'MACIAS', '2011-10-18', '', '', '', '', '', '', '2011-08-20', '', 1, 15, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20110072, ' ALONDRA', 'SANCHEZ', 'URRUTIA', '2011-10-18', '', '', '', '', '', '', '2011-08-20', '', 1, 15, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20110075, ' JUAN CARLOS', 'RAMIREZ', 'LUCAS', '2011-10-18', '', '', '', '', '', '', '2011-08-20', '', 1, 17, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20110078, ' ANDREA', 'RIVERA', 'MENDEZ', '2011-10-18', '', '', '', '', '', '', '2011-08-20', '', 1, 18, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20110080, ' GILBERTO JAFET', 'TOLEDO', 'SOSA', '2011-10-18', '', '', '', '', '', '', '2011-08-20', '', 1, 24, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20110081, ' RENE', 'VIGNOLA', 'RENDON', '2011-10-18', '', '', '', '', '', '', '2011-08-20', '', 1, 18, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20110083, ' MARIA DEL RAYO', 'RODRIGUEZ', 'RAMIREZ', '2011-10-18', '', '', '', '', '', '', '2011-08-20', '', 1, 24, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20110084, ' ANDREA', 'SANCHEZ', 'URRUTIA', '2011-10-18', '', '', '', '', '', '', '2011-08-20', '', 1, 24, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20110085, ' ANGEL', 'CASTILLO', 'GARCIA', '2011-10-18', '', '', '', '', '', '', '2011-08-20', '', 1, 19, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20110088, ' ERICK', 'RAMIREZ', 'LUCAS', '2011-10-18', '', '', '', '', '', '', '2011-08-20', '', 1, 19, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20110089, ' VALERIA', 'MELLADO', 'RIVERA', '2011-10-18', '', '', '', '', '', '', '2011-08-20', '', 1, 11, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20110090, ' SAUL', 'ROSAS', 'GARCIA', '2011-10-18', '', '', '', '', '', '', '2011-08-20', '', 1, 17, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20110093, ' URIEL DONAJI', 'LOPEZ', 'RAZO', '2001-04-22', '', '', '', '', '', 'INSTITUTO SERRA A.C.', '2012-02-01', '', 1, 18, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20120001, ' DANIEL', 'AGUIRRE', 'JUAREZ', '2012-10-23', '', '', '', '', '', '', '2012-08-20', '', 1, 9, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20120002, ' JUAN PABLO', 'AVILES', 'RODRIGUEZ', '2012-10-23', '', '', '', '', '', '', '2012-08-20', '', 1, 9, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20120003, ' ANDREA', 'CASTAÑEDA', 'CERON', '2012-10-23', '', '', '', '', '', '', '2012-08-20', '', 1, 8, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20120004, ' RICARDO JUNIOR', 'GARCIA', 'FLORES', '2012-10-23', '', '', '', '', '', '', '2012-08-20', '', 1, 9, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20120005, ' JOSE RAUL', 'HERNANDEZ', 'PEREZ', '2012-10-23', '', '', '', '', '', '', '2012-08-20', '', 1, 9, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20120006, ' EMILIANO', 'MARTINEZ', 'CABALLERO', '2012-10-23', '', '', '', '', '', '', '2012-08-20', '', 1, 8, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20120008, ' CECILIA RAQUEL', 'MORALES', 'ESPINOZA', '2012-10-23', '', '', '', '', '', '', '2012-08-20', '', 1, 8, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20120009, ' YULIANNA', 'MUÑOZ', 'SERRANO', '2012-10-23', '', '', '', '', '', '', '2012-08-20', '', 1, 9, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20120012, ' ANA CRISTINA', 'REYES', 'BARTOLO', '2012-10-23', '', '', '', '', '', '', '2012-08-20', '', 1, 8, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20120013, ' LUIS ENRIQUE', 'REYES', 'LOPEZ', '2012-10-23', '', '', '', '', '', '', '2012-08-20', '', 1, 8, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20120016, ' MARIA FERNANDA', 'HERNANDEZ', 'SANCHEZ', '2012-10-23', '', '', '', '', '', '', '2012-08-20', '', 1, 8, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20120020, ' SOFIA', 'MORENO', 'HERNANDEZ', '2012-10-23', '', '', '', '', '', '', '2012-08-20', '', 1, 8, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20120021, ' EMIR DANIEL', 'MUÑOZ', 'ZAGOYA', '2012-10-23', '', '', '', '', '', '', '2012-08-20', '', 1, 9, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20120022, ' ANGELICA', 'PEREZ', 'RAMIREZ', '2012-10-23', '', '', '', '', '', '', '2012-08-20', '', 1, 9, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20120023, ' ERIK DAVID', 'POSADAS', 'AREVALO', '2012-10-23', '', '', '', '', '', '', '2012-08-20', '', 1, 9, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20120024, ' ALEXA VALERIE', 'ROJAS', 'GUARNEROS', '2012-10-23', '', '', '', '', '', '', '2012-08-20', '', 1, 9, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20120025, ' URIEL', 'SANTIAGO', 'GARCIA', '2012-10-23', '', '', '', '', '', '', '2012-08-20', '', 1, 8, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20120027, ' EDUARDO', 'TREJO', 'CRISPIN', '2012-10-23', '', '', '', '', '', '', '2012-08-20', '', 1, 9, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20120028, ' DIANA', 'BONILLA', 'GARCIA', '2012-10-23', '', '', '', '', '', '', '2012-08-20', '', 1, 10, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20120030, ' ANGELINA', 'PEREZ', 'RAMIREZ', '2012-10-23', '', '', '', '', '', '', '2012-08-20', '', 1, 12, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20120031, ' DIEGO BARUCH', 'ESCOBEDO', 'LEZAMA', '2012-10-23', '', '', '', '', '', '', '2012-08-20', '', 1, 14, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20120032, ' SAUL URIEL', 'GIL', 'HERNANDEZ', '2012-10-23', '', '', '', '', '', '', '2012-08-20', '', 1, 14, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20120033, ' DIEGO URIEL', 'LOPEZ', 'FLORES', '2012-10-23', '', '', '', '', '', '', '2012-08-20', '', 1, 15, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20120034, ' LUIS GABRIEL', 'MUNGUIA', 'CARRERA', '2012-10-23', '', '', '', '', '', '', '2012-08-20', '', 1, 14, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20120035, ' SAMANTHA', 'ROJAS', 'BELLO', '2012-10-23', '', '', '', '', '', '', '2012-08-20', '', 1, 14, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20120036, ' MARIA JOSE', 'HERNANDEZ', 'SANCHEZ', '2012-10-23', '', '', '', '', '', '', '2012-08-20', '', 1, 16, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20120037, ' LUIS ALONSO', 'PEREZ', 'AGUIRRE', '2012-10-23', '', '', '', '', '', '', '2012-08-20', '', 1, 17, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20120038, ' MARIBEL', 'SANCHEZ', 'CONTRERAS', '2012-10-23', '', '', '', '', '', '', '2012-08-20', '', 1, 17, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20120039, ' HAZAEL MAXIMILIANO', 'CASTELLANOS', 'SANTANA', '2012-10-23', '', '', '', '', '', '', '2012-08-20', '', 1, 16, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20120040, ' JESUS', 'GONZALEZ', 'MENDOZA', '2012-10-23', '', '', '', '', '', '', '2012-10-23', '', 1, 16, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20120041, ' IVANNA', 'SANCHEZ', 'MARTINEZ', '2012-10-23', '', '', '', '', '', '', '2012-08-20', '', 1, 17, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20120042, ' ALAN FERNANDO', 'ZAMBRANO', 'MONTIEL', '2012-10-23', '', '', '', '', '', '', '2012-08-20', '', 1, 16, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20120047, ' ZYANYA ANELY', 'VILLANUEVA', 'NIETO', '2012-10-23', '', '', '', '', '', '', '2012-08-20', '', 1, 18, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20120049, ' YUMIKO BELEN', 'SORIANO', 'TOQUERO', '2012-10-23', '', '', '', '', '', '', '2011-08-20', '', 1, 8, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20120050, ' MARBELLA ELIZABETH', 'LOPEZ', 'SANCHEZ', '2012-10-23', '', '', '', '', '', '', '2011-08-20', '', 1, 9, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20120051, ' ARIEL ALEJANDRO', 'BARBAN', 'LOPEZ', '2012-10-24', '', '', '', '', '', '', '2012-08-20', '', 1, 9, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20120052, ' DIANA JARETH', 'GONZALEZ', 'CRUZ', '2012-10-30', '', '', '', '', '', '', '2011-08-20', '', 1, 16, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20120054, ' MELISSA MARIANETTE', 'DIAZ', 'GONZALEZ', '2013-03-01', '', '', '', '', '', '', '2013-03-01', '', 1, 18, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20130001, ' YARETZI', 'BRAVO', 'MARTINEZ', '2013-10-10', '', '', '', '', '', '', '2013-08-19', '', 1, 6, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20130002, ' ANDRYK TONANTZI', 'CHACON', 'TENORIO', '2013-10-10', '', '', '', '', '', '', '2013-08-19', '', 1, 6, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20130003, ' RODRIGO', 'ESPINDOLA', 'CORTES', '2013-10-10', '', '', '', '', '', '', '2013-08-19', '', 1, 6, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20130004, ' JOHANA NICOLE', 'FLORES', 'LUNA', '2013-10-10', '', '', '', '', '', '', '2013-08-19', '', 1, 6, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20130007, ' SANTIAGO', 'HERNANDEZ', 'ORTEGA', '2013-10-10', '', '', '', '', '', '', '2013-08-19', '', 1, 6, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20130008, ' MARIA FERNANDA', 'HERNANDEZ', 'PEREZ', '2013-10-10', '', '', '', '', '', '', '2013-08-19', '', 1, 6, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20130009, ' ISSY ABRIL', 'HERNANDEZ', 'VAZQUEZ', '2013-10-10', '', '', '', '', '', '', '2013-08-19', '', 1, 6, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20130010, ' VALERIA', 'JUAREZ', 'CRUZ', '2013-10-10', '', '', '', '', '', '', '2013-08-19', '', 1, 6, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20130011, ' GUADALUPE', 'LARA', 'CANO', '2013-10-10', '', '', '', '', '', '', '2013-08-19', '', 1, 6, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20130012, ' ALDO DANIEL', 'LEON', 'ARELLANO', '2013-10-10', '', '', '', '', '', '', '2013-08-19', '', 1, 6, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20130013, ' HUMBERTO', 'LOPEZ', 'LEZAMA', '2013-10-10', '', '', '', '', '', '', '2013-08-19', '', 1, 6, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20130015, ' BENJAMIN', 'MORALES', 'RIVERA', '2013-10-10', '', '', '', '', '', '', '2013-08-19', '', 1, 6, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20130016, ' LUIS ANGEL', 'ORDAZ', 'HUERTA', '2013-10-10', '', '', '', '', '', '', '2013-08-19', '', 1, 6, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20130017, ' ABDU EVENICER', 'ORDUÑA', 'ALFARO', '2013-10-10', '', '', '', '', '', '', '2013-08-19', '', 1, 6, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20130019, ' JARED', 'RAMIREZ', 'PEREZ', '2013-10-10', '', '', '', '', '', '', '2013-08-19', '', 1, 6, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20130020, ' FRANCISCO', 'VALENZUELA', 'MORA', '2013-10-10', '', '', '', '', '', '', '2013-08-19', '', 1, 6, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20130022, ' ITZAEL HUMBERTO', 'ZEMPOALTECATL', 'HERNANDEZ', '2013-10-10', '', '', '', '', '', '', '2013-08-19', '', 1, 6, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20130023, ' SOFIA', 'AGUILAR', 'RIVERO', '2013-10-10', '', '', '', '', '', '', '2013-08-19', '', 1, 7, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20130024, ' PEDRO DANIEL', 'ANDRADE', 'GONZALEZ', '2013-10-10', '', '', '', '', '', '', '2013-08-19', '', 1, 7, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20130025, ' JOSE ANTONIO', 'BAEZ', 'CALVARIO', '2013-10-10', '', '', '', '', '', '', '2013-08-19', '', 1, 7, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20130026, ' RENATA', 'CABRERA', 'RUIZ', '2013-10-10', '', '', '', '', '', '', '2013-08-19', '', 1, 7, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20130027, ' FATIMA', 'CASTILLO', 'GARCIA', '2013-10-10', '', '', '', '', '', '', '2013-08-19', '', 1, 7, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20130029, ' KILLIAN BARUC', 'HERNANDEZ', 'ALONSO', '2013-10-10', '', '', '', '', '', '', '2013-08-19', '', 1, 7, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20130030, ' RODOLFO', 'HERNANDEZ', 'BARRANCO', '2013-10-10', '', '', '', '', '', '', '2013-08-19', '', 1, 7, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20130031, ' FERNANDA', 'HERNANDEZ', 'GUTIERREZ', '2013-10-10', '', '', '', '', '', '', '2013-08-19', '', 1, 7, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20130032, ' MANUEL ARTURO', 'HERNANDEZ', 'NUÑEZ', '2013-10-10', '', '', '', '', '', '', '2013-08-19', '', 1, 7, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20130033, ' JUAN PABLO', 'LIMON', 'PEREZ', '2013-10-10', '', '', '', '', '', '', '2013-08-19', '', 1, 7, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20130034, ' ISRAEL', 'MENDARTE', 'HERNANDEZ', '2013-10-10', '', '', '', '', '', '', '2013-08-19', '', 1, 7, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20130036, ' CARLOS EDUARDO', 'MORALES', 'CASTAÑEDA', '2013-10-10', '', '', '', '', '', '', '2013-08-19', '', 1, 7, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20130037, ' RICARDO', 'RAMOS', 'OCHOA', '2013-10-10', '', '', '', '', '', '', '2013-08-19', '', 1, 7, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20130038, ' CAMILA ITZEL', 'ROQUE', 'MARTINEZ', '2013-10-10', '', '', '', '', '', '', '2013-08-19', '', 1, 7, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20130039, ' ELIAS', 'SANCHEZ', 'GALVAN', '2013-10-10', '', '', '', '', '', '', '2013-08-19', '', 1, 7, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20130042, ' VANIA BERENICE', 'VAZQUEZ', 'RIVERA', '2013-10-10', '', '', '', '', '', '', '2013-08-19', '', 1, 7, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20130043, ' ANGEL RAUL', 'GARCIA', 'CARREON', '2013-10-10', '', '', '', '', '', '', '2013-08-19', '', 1, 8, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20130045, ' FRANCISCO JAVIER', 'ROJAS', 'MONTES', '2013-10-10', '', '', '', '', '', '', '2013-08-19', '', 1, 8, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20130046, ' ASHNA ELUZAI', 'SALDAÑA', 'ARENAS', '2013-10-10', '', '', '', '', '', '', '2013-08-19', '', 1, 8, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20130047, ' NATALIA', 'CONDADO', 'POLANCO', '2013-10-10', '', '', '', '', '', '', '2013-08-19', '', 1, 8, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20130048, ' XIMENA', 'HERNANDEZ', 'RODRIGUEZ', '2013-10-10', '', '', '', '', '', '', '2013-08-19', '', 1, 9, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20130049, ' ANGEL GABRIEL', 'RODRIGUEZ', 'RUIZ', '2013-10-10', '', '', '', '', '', '', '2013-08-19', '', 1, 8, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20130050, ' DANIELA BEATRIZ', 'SANDOVAL', 'JIMENEZ', '2013-10-10', '', '', '', '', '', '', '2013-08-19', '', 1, 8, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20130051, ' MARIANA', 'BARRIENTOS', 'RAMIREZ', '2013-10-10', '', '', '', '', '', '', '2013-08-19', '', 1, 10, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20130053, ' FERNANDA', 'CASAS', 'HUERTA', '2013-10-10', '', '', '', '', '', '', '2013-08-19', '', 1, 11, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20130055, ' LUIS ENRIQUE', 'ROJAS', 'MONTES', '2013-10-10', '', '', '', '', '', '', '2013-08-19', '', 1, 11, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20130057, ' GAEL', 'ORTIZ', 'MEDINA', '2013-10-10', '', '', '', '', '', '', '2013-08-19', '', 1, 12, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20130058, ' ERANDI', 'RAMOS', 'OCHOA', '2013-10-10', '', '', '', '', '', '', '2013-08-19', '', 1, 13, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20130059, ' CHRISTIAN URIEL', 'RUIZ', 'TECHALOTZI', '2013-10-10', '', '', '', '', '', '', '2013-08-19', '', 1, 13, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20130060, ' JESUS', 'AGUILERA', 'VAZQUEZ', '2013-10-10', '', '', '', '', '', '', '2013-08-19', '', 1, 13, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20130062, ' ANA BELEN', 'CASTELLANOS', 'MONTES', '2013-10-10', '', '', '', '', '', '', '2013-08-19', '', 1, 12, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20130063, ' YAZMIN', 'FLORES', 'MUNGUIA', '2013-10-10', '', '', '', '', '', '', '2013-08-19', '', 1, 14, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20130064, ' RUBEN', 'FLORES', 'MUNGUIA', '2013-10-10', '', '', '', '', '', '', '2013-08-19', '', 1, 15, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20130066, ' CRISTINA', 'GAMBOA', 'PANTOJA', '2013-10-10', '', '', '', '', '', '', '2013-08-19', '', 1, 15, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20130067, ' AITANNA', 'LOPEZ', 'MARIN', '2013-10-10', '', '', '', '', '', '', '2013-08-19', '', 1, 15, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20130068, ' KAREN', 'MONTIEL', 'SALDAÑA', '2013-10-10', '', '', '', '', '', '', '2013-08-19', '', 1, 17, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20130069, ' DAVID ABDALA', 'SANCHEZ', 'BALDERAS', '2013-10-10', '', '', '', '', '', '', '2013-08-19', '', 1, 16, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20130070, ' KATYA DANIELA', 'JUAREZ', 'CRUZ', '2013-10-10', '', '', '', '', '', '', '2013-08-19', '', 1, 16, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20130071, ' RAUL', 'RODRIGUEZ', 'RUIZ', '2013-10-10', '', '', '', '', '', '', '2013-08-19', '', 1, 17, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20130072, ' DAVID JONATHAN', 'RUIZ', 'TECHALOTZI', '2013-10-10', '', '', '', '', '', '', '2013-08-19', '', 1, 16, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20130073, ' GABRIEL', 'PEREZ', 'PADILLA', '2013-10-10', '', '', '', '', '', '', '2013-08-19', '', 1, 6, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20140001, ' LUIS ENRIQUE', 'AMIGON', 'GARCIA', '2014-10-15', '', '', '', '', '', '', '2014-08-18', '', 1, 4, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20140002, ' ANDRE JESUS', 'ARTEAGA', 'MARITANO', '2014-10-15', '', '', '', '', '', '', '2014-08-18', '', 1, 4, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20140003, ' CAMILA ELIZABETH', 'ATONDO', 'ZAMORA', '2014-10-15', '', '', '', '', '', '', '2014-08-18', '', 1, 4, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20140004, ' ANDREA', 'CAHUANTZI', 'HERRERA', '2014-10-15', '', '', '', '', '', '', '2014-08-18', '', 1, 4, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20140005, ' EMILIANO', 'CORDERO', 'TORRES', '2014-10-15', '', '', '', '', '', '', '2014-08-18', '', 1, 4, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20140006, ' DANIEL', 'COYOTL', 'HERNANDEZ', '2014-10-15', '', '', '', '', '', '', '2014-08-18', '', 1, 4, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20140007, ' FATIMA DE LOS ANGELES', 'GALICIA', 'RENDON', '2014-10-15', '', '', '', '', '', '', '2014-08-18', '', 1, 4, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20140008, ' RAUL SANTIAGO', 'GONZALEZ', 'REYES', '2014-10-15', '', '', '', '', '', '', '2014-08-18', '', 1, 4, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20140009, ' SERGIO ANTONIO', 'HERNANDEZ', 'HERNANDEZ', '2014-10-15', '', '', '', '', '', '', '2014-08-18', '', 1, 4, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20140010, ' CASANDRA YARETZI', 'HERNANDEZ', 'MADRIGAL', '2014-10-15', '', '', '', '', '', '', '2014-08-18', '', 1, 4, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20140011, ' ADRIANA SOFIA', 'HERNANDEZ', 'SOSA', '2014-10-15', '', '', '', '', '', '', '2014-08-18', '', 1, 4, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20140012, ' IYANU PAMELA', 'HERRERA', 'ORTEGA', '2014-10-15', '', '', '', '', '', '', '2014-08-18', '', 1, 4, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20140013, ' LA LUZ HILLARY NAHOMI', 'MACIAS', 'DE', '2014-10-15', '', '', '', '', '', '', '2014-08-18', '', 1, 4, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20140014, ' KIARA', 'MARTINEZ', 'SALDAÑA', '2014-10-15', '', '', '', '', '', '', '2014-08-18', '', 1, 4, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20140015, ' ROSA VALENTINA', 'MARTINEZ', 'SIMANCAS', '2014-10-15', '', '', '', '', '', '', '2014-08-18', '', 1, 4, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20140016, ' GAEL', 'MARTINEZ', 'PACHECO', '2014-10-15', '', '', '', '', '', '', '2014-08-18', '', 1, 4, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20140017, ' DIANA', 'MIXCOATL', 'REYES', '2014-10-15', '', '', '', '', '', '', '2014-08-18', '', 1, 4, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20140018, ' MAURICIO', 'MONTIEL', 'ANZO', '2014-10-15', '', '', '', '', '', '', '2014-08-18', '', 1, 4, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20140019, ' MELISSA', 'MUÑOZ', 'RAMOS', '2014-10-15', '', '', '', '', '', '', '2014-08-18', '', 1, 4, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20140020, ' PAULA RENEE', 'NAVA', 'VELAZQUEZ', '2014-10-15', '', '', '', '', '', '', '2014-08-18', '', 1, 4, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20140021, ' NICOLAS SANTIAGO', 'PEREZ', 'LOZANO', '2014-10-15', '', '', '', '', '', '', '2014-08-18', '', 1, 4, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20140022, ' DULCE CAMILA', 'RAMIREZ', 'FERNANDEZ', '2014-10-15', '', '', '', '', '', '', '2014-08-18', '', 1, 4, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20140023, ' MONSERRAT', 'RAMOS', 'OCHOA', '2014-10-15', '', '', '', '', '', '', '2014-08-18', '', 1, 4, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20140024, ' DIEGO NEFTALY', 'RAMOS', 'VAZQUEZ', '2014-10-15', '', '', '', '', '', '', '2014-08-18', '', 1, 4, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20140025, ' LUIS SERGIO DANIEL', 'CUAMATZI', 'BECERRIL', '2014-10-15', '', '', '', '', '', '', '2014-08-18', '', 1, 16, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20140026, ' YAMILET', 'SOTO', 'BARRERA', '2014-10-15', '', '', '', '', '', '', '2014-08-18', '', 1, 16, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20140027, ' LEON', 'GONZALEZ', 'GOMEZ', '2014-10-15', '', '', '', '', '', '', '2014-08-18', '', 1, 17, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20140028, ' JONATHAN KEVIN', 'SAMPAYO', 'LOPEZ', '2014-10-15', '', '', '', '', '', '', '2014-08-18', '', 1, 4, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20140029, ' BRENDA', 'BARRIENTOS', 'RAMIREZ', '2014-10-15', '', '', '', '', '', '', '2014-08-18', '', 1, 24, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20140030, ' ARTURO ISAI', 'VICUÑA', 'JUAREZ', '2014-10-15', '', '', '', '', '', '', '2014-08-18', '', 1, 4, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20140031, ' LEANDRO JAVIER', 'VILLA', 'FLORES', '2014-10-15', '', '', '', '', '', '', '2014-08-18', '', 1, 4, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20140032, ' AXEL RAYMUNDO', 'AGUILAR', 'FERNANDEZ', '2014-10-15', '', '', '', '', '', '', '2014-08-18', '', 1, 5, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20140033, ' EMILIANO', 'ARENAS', 'MARTINEZ', '2014-10-15', '', '', '', '', '', '', '2014-08-18', '', 1, 5, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20140034, ' JOSE DIEGO', 'BRINGAS', 'LECONA', '2014-10-15', '', '', '', '', '', '', '2014-08-18', '', 1, 5, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20140035, ' VALERIA', 'CARCAMO', 'ROMERO', '2014-10-15', '', '', '', '', '', '', '2014-08-18', '', 1, 5, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20140036, ' MARIA FERNANDA', 'CORTES', 'CRUZ', '2014-10-15', '', '', '', '', '', '', '2014-08-18', '', 1, 5, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20140037, ' DANIEL', 'CORTES', 'MARQUEZ', '2014-10-15', '', '', '', '', '', '', '2014-08-18', '', 1, 5, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20140038, ' OLARTE PAMELA', 'DEL', 'POZO', '2014-10-15', '', '', '', '', '', '', '2014-08-18', '', 1, 5, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20140039, ' XIMENA', 'DIAZ', 'AVILA', '2014-10-15', '', '', '', '', '', '', '2014-08-18', '', 1, 5, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20140040, ' ZURIA', 'ESCOBEDO', 'LEZAMA', '2014-10-15', '', '', '', '', '', '', '2014-08-18', '', 1, 5, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20140041, ' BETSIE ESTEFANIA', 'GARCIA', 'MEDEL', '2014-10-15', '', '', '', '', '', '', '2014-08-18', '', 1, 5, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20140042, ' MYRIAM LIZBETH', 'GUZMAN', 'ZELENY', '2014-10-15', '', '', '', '', '', '', '2014-08-18', '', 1, 5, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20140043, ' IRVING YAROSLAV', 'HERNANDEZ', 'VEGA', '2014-10-15', '', '', '', '', '', '', '2014-08-18', '', 1, 5, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20140044, ' DULCE VANESSA', 'HERRERA', 'MORALES', '2014-10-15', '', '', '', '', '', '', '2014-08-18', '', 1, 5, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20140045, ' IAN RICARDO', 'IZITA', 'LUNA', '2014-10-15', '', '', '', '', '', '', '2014-08-18', '', 1, 5, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20140046, ' MILA ASIRIS', 'JUAREZ', 'IZITA', '2014-10-15', '', '', '', '', '', '', '2014-08-18', '', 1, 5, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20140047, ' HAZIEL', 'LOPEZ', 'MARTINEZ', '2014-10-15', '', '', '', '', '', '', '2014-08-18', '', 1, 5, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20140048, ' VALERIA', 'MARTINEZ', 'ARENAS', '2014-10-15', '', '', '', '', '', '', '2014-08-18', '', 1, 5, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20140049, ' XOCHITL VALERIA', 'MARTINEZ', 'CRUZ', '2014-10-15', '', '', '', '', '', '', '2014-08-18', '', 1, 5, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20140050, ' JARED ALEJANDRO', 'MELCHOR', 'VALENCIA', '2014-10-15', '', '', '', '', '', '', '2014-08-18', '', 1, 5, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20140051, ' TABATHA', 'MORALES', 'CARVAJAL', '2014-10-15', '', '', '', '', '', '', '2014-08-18', '', 1, 5, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20140052, ' JORGE SANTIAGO', 'MORALES', 'COYOTZI', '2014-10-15', '', '', '', '', '', '', '2014-08-18', '', 1, 5, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20140053, ' KAROL MARIEL', 'OSORIO', 'MANZANO', '2014-10-15', '', '', '', '', '', '', '2014-08-18', '', 1, 5, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20140054, ' AMIR', 'PEREZ', 'GARCIA', '2014-10-15', '', '', '', '', '', '', '2014-08-18', '', 1, 5, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20140055, ' YASMIN', 'PEREZ', 'SANCHEZ', '2014-10-15', '', '', '', '', '', '', '2014-08-18', '', 1, 5, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20140056, ' ISMAEL', 'QUINTOS', 'FLORES', '2014-10-15', '', '', '', '', '', '', '2014-08-18', '', 1, 5, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20140057, ' EMILY MARIEL', 'REYES', 'CORTES', '2014-10-15', '', '', '', '', '', '', '2014-08-18', '', 1, 5, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20140058, ' TERAI', 'SOLANO', 'VAZQUEZ', '2014-10-15', '', '', '', '', '', '', '2014-08-18', '', 1, 5, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20140059, ' SANTIAGO EMILIANO', 'SORIANO', 'ESPINDOLA', '2014-10-15', '', '', '', '', '', '', '2014-08-18', '', 1, 5, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20140060, ' KAROL MELISSA', 'TRINIDAD', 'ROSAS', '2014-10-15', '', '', '', '', '', '', '2014-08-18', '', 1, 5, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20140061, ' AZUL ZOE', 'VALENZO', 'GARCIA', '2014-10-15', '', '', '', '', '', '', '2014-08-18', '', 1, 5, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20140062, ' EMMANUEL', 'VILLADA', 'LOPEZ', '2014-10-15', '', '', '', '', '', '', '2014-08-18', '', 1, 5, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20140063, ' FATIMA', 'HERNANDEZ', 'RAMIREZ', '2014-12-12', '', '', '', '', '', '', '2014-12-18', '', 1, 4, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20140064, ' RAFAEL MICHEL', 'ANGEL', 'VAZQUEZ', '2014-10-15', '', '', '', '', '', '', '2014-08-18', '', 1, 6, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20140065, ' JOSE MANUEL', 'LOPEZ', 'CONDE', '2014-10-15', '', '', '', '', '', '', '2014-08-18', '', 1, 6, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20140066, ' CRISTIAN', 'SARMIENTO', 'HERNANDEZ', '2014-10-15', '', '', '', '', '', '', '2014-08-18', '', 1, 6, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20140068, ' DANIEL ANDRES', 'ALACANTARA', 'ABURTO', '2014-10-15', '', '', '', '', '', '', '2014-08-18', '', 1, 7, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20140069, ' GABRIELA DALU', 'ALDANA', 'ANGEL', '2014-10-15', '', '', '', '', '', '', '2014-08-18', '', 1, 7, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20140070, ' KELSEY ELIANA', 'GUZMAN', 'ORTIZ', '2014-10-15', '', '', '', '', '', '', '2014-08-18', '', 1, 7, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20140071, ' XIMENA', 'HERNANDEZ', 'GAMEZ', '2014-10-15', '', '', '', '', '', '', '2014-08-18', '', 1, 7, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20140072, ' DANNA', 'MAYAS', 'SALAS', '2014-10-15', '', '', '', '', '', '', '2014-08-18', '', 1, 7, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20140073, ' JOSE RICARDO', 'MELENDEZ', 'VAZQUEZ', '2014-10-15', '', '', '', '', '', '', '2014-08-18', '', 1, 7, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20140074, ' YAZMIN', 'NUÑEZ', 'REYES', '2014-10-15', '', '', '', '', '', '', '2014-08-18', '', 1, 7, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20140075, ' VALERIA', 'ROSALES', 'SOLORIO', '2014-10-15', '', '', '', '', '', '', '2014-08-18', '', 1, 8, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20140076, ' FATIMA', 'GARCIA', 'MELENDEZ', '2014-10-15', '', '', '', '', '', '', '2014-08-18', '', 1, 9, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20140077, ' DAVID ISAI', 'GARCIA', 'VIVAR', '2014-10-15', '', '', '', '', '', '', '2014-08-18', '', 1, 9, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20140078, ' JOSUE ROMAN', 'HERNANDEZ', 'CARRETO', '2014-10-15', '', '', '', '', '', '', '2014-08-18', '', 1, 9, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20140079, ' RICARDO', 'PIÑA', 'GALLEGOS', '2014-10-15', '', '', '', '', '', '', '2014-08-18', '', 1, 9, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20140081, ' OBED', 'ARANA', 'HERNANDEZ', '2014-10-15', '', '', '', '', '', '', '2014-08-18', '', 1, 10, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20140082, ' VALENTINA', 'CAMPOS', 'COLIO', '2014-10-15', '', '', '', '', '', '', '2014-08-18', '', 1, 10, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20140083, ' JUAN JOSE', 'CASTAÑO', 'MARIN', '2014-10-15', '', '', '', '', '', '', '2014-08-18', '', 1, 10, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20140084, ' NATHALIA', 'ESPINOZA', 'TORRES', '2014-10-15', '', '', '', '', '', '', '2014-08-18', '', 1, 10, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20140085, ' FERNANDA', 'FRAGOSO', 'MACHORRO', '2014-10-15', '', '', '', '', '', '', '2014-08-18', '', 1, 10, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20140086, ' PAULINA', 'HERNANDEZ', 'VELAZQUEZ', '2014-10-15', '', '', '', '', '', '', '2014-08-18', '', 1, 10, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20140087, ' LUIS ANGEL', 'LOPEZ', 'TOME', '2014-10-15', '', '', '', '', '', '', '2014-08-18', '', 1, 10, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20140088, ' ALDEBARAN', 'MENDEZ', 'JIMENEZ', '2014-10-15', '', '', '', '', '', '', '2014-08-18', '', 1, 10, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20140089, ' ZOE CAMILA', 'MUÑOZ', 'GONZALEZ', '2014-10-15', '', '', '', '', '', '', '2014-08-18', '', 1, 10, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20140090, ' REGINA', 'ZARATE', 'RAMIREZ', '2014-10-15', '', '', '', '', '', '', '2014-08-18', '', 1, 10, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20140091, ' LEONARDO EMMANUEL', 'CARMONA', 'PULIDO', '2014-10-16', '', '', '', '', '', '', '2014-08-18', '', 1, 11, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20140092, ' ANA CRISTINA', 'REYES', 'ROMERO', '2014-10-16', '', '', '', '', '', '', '2014-08-18', '', 1, 11, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20140093, ' NESTOR DANIEL', 'SARMIENTO', 'HERNANDEZ', '2014-10-16', '', '', '', '', '', '', '2014-08-18', '', 1, 11, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20140094, ' KENNETH', 'ARANA', 'HERNANDEZ', '2014-10-16', '', '', '', '', '', '', '2014-08-18', '', 1, 12, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20140095, ' FUENTE LOPEZ SEBASTIAN', 'DE', 'LA', '2014-10-16', '', '', '', '', '', '', '2014-08-18', '', 1, 12, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20140096, ' DIANA LIA', 'HERNANDEZ', 'VELAZQUEZ', '2014-10-16', '', '', '', '', '', '', '2014-08-18', '', 1, 12, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20140097, ' LIAN', 'HERRERA', 'VARELA', '2014-10-16', '', '', '', '', '', '', '2014-08-18', '', 1, 13, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20140098, ' ANA GABRIELA', 'JUAREZ', 'ROMERO', '2014-10-16', '', '', '', '', '', '', '2014-08-18', '', 1, 13, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20140099, ' NAOMI YERAY', 'LOPEZ', 'CONDE', '2014-10-16', '', '', '', '', '', '', '2014-08-18', '', 1, 13, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20140101, ' SARAH VALERIA', 'PEREZ', 'ALARCON', '2014-10-16', '', '', '', '', '', '', '2014-08-18', '', 1, 13, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20140102, ' ESTEFANY PAOLA', 'CERVANTES', 'ANDRADE', '2014-10-16', '', '', '', '', '', '', '2014-08-18', '', 1, 15, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20140103, ' LUIS ANGEL', 'GONZALEZ', 'ISLAS', '2014-10-16', '', '', '', '', '', '', '2014-08-18', '', 1, 15, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20140104, ' JOSE RODRIGO', 'HERNANDEZ', 'VERA', '2014-10-16', '', '', '', '', '', '', '2014-08-18', '', 1, 15, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20140105, ' PABLO CESAR', 'REYES', 'ROMERO', '2014-10-16', '', '', '', '', '', '', '2014-10-16', '', 1, 15, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20140106, ' BRENDA MICHELLE', 'TRUJILLO', 'CASANOVA', '2014-10-16', '', '', '', '', '', '', '2014-08-18', '', 1, 15, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20140107, ' JOSE MANUEL', 'RIVAS', 'RUGERIO', '2014-10-15', '', '', '', '', '', '', '2014-08-18', '', 1, 4, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20140108, ' SAUL', 'ROJAS', 'BELLO', '2014-10-15', '', '', '', '', '', '', '2014-08-18', '', 1, 4, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20140109, ' DANIELA YAMEL', 'SALDAÑA', 'CONTRERAS', '2014-10-15', '', '', '', '', '', '', '2014-08-18', '', 1, 4, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(20140110, ' CHRISTIAN GABRIEL', 'TORRES', 'GARCIA', '2014-10-15', '', '', '', '', '', '', '2014-08-18', '', 1, 4, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(20140111, ' AMELIE', 'FLORES', 'PLACERES', '2014-12-12', '', '', '', '', '', '', '2014-11-03', '', 1, 6, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(30120001, ' MARIA FERNANDA', 'ARROYAVE', 'JIMENEZ', '2012-10-22', '', '', '', '', '', '', '2012-08-20', '', 1, 20, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(30120002, ' PAOLA', 'CHACON', 'BALTAZAR', '2000-01-26', '', '', '', '', '', '', '2012-08-20', '', 1, 20, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(30120003, ' SCARLETT', 'FLORES', 'MUNGUIA', '2000-07-15', '', '', '', '', '', '', '2012-08-20', '', 1, 20, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(30120004, ' MARIANA', 'GONZALEZ', 'ROJAS', '2000-07-29', '', '', '', '', '', '', '2012-08-20', '', 1, 20, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(30120006, ' ENRIQUE', 'PACHECO', 'ARENAL', '2000-01-10', '', '', '', '', '', '', '2012-08-20', '', 1, 19, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(30120008, ' MIGUEL ANGEL', 'PEREZ', 'TORRES', '2000-04-21', '', '', '', '', '', '', '2012-08-20', '', 1, 19, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(30120011, ' JOSUE', 'FLORES', 'RUIZ', '1999-12-21', '', '', '', '', '', '', '2012-08-20', '', 1, 19, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(30120012, ' LUIS FERNANDO', 'GALINDO', 'ZARATE', '1999-12-08', '', '', '', '', '', '', '2012-08-20', '', 1, 20, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(30120013, ' ELISA', 'GONZALEZ', 'MENDOZA', '2000-05-25', '', '', '', '', '', '', '2012-08-20', '', 1, 20, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(30120014, ' ANA MARIA', 'HERNANDEZ', 'CEREZO', '2000-03-12', '', '', '', '', '', '', '2012-08-20', '', 1, 19, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(30120015, ' CLAUDIA', 'HERNANDEZ', 'PEREZ', '1999-12-15', '', '', '', '', '', '', '2012-08-20', '', 1, 20, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(30120016, ' JORGE ARTURO', 'JIMENEZ', 'CABALLERO', '2000-03-20', '', '', '', '', '', '', '2012-08-20', '', 1, 20, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(30120017, ' DOMINIC', 'MUÑOZ', 'GONZALEZ', '2000-08-20', '', '', '', '', '', '', '2012-08-20', '', 1, 19, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(30120018, ' TANIA GUADALUPE', 'RUIZ', 'TECHALOTZI', '2000-01-06', '', '', '', '', '', '', '2012-08-20', '', 1, 20, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(30120019, ' DANNA YARELI', 'SANCHEZ', 'MARTINEZ', '1999-12-18', '', '', '', '', '', '', '2012-08-20', '', 1, 19, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(30120023, ' JUAN JOSE', 'OSORIO', 'ROCHA', '2000-03-15', '', '', '', '', '', '', '2012-08-20', '', 1, 20, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(30130001, ' MARIA FERNANDA', 'CASTELLANOS', 'MONTES', '2013-10-09', '', '', '', '', '', '', '2013-08-19', '', 1, 18, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(30130003, ' FERNANDA GABRIELA', 'GAMBOA', 'PANTOJA', '2013-10-09', '', '', '', '', '', '', '2013-08-19', '', 1, 24, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(30130010, ' JORGE NAHIM', 'BURGOS', 'HERNANDEZ', '2013-10-09', '', '', '', '', '', '', '2013-08-19', '', 1, 24, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(30130012, ' ABRIL', 'LEON', 'SOLARES', '2013-10-09', '', '', '', '', '', '', '2013-08-19', '', 1, 24, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(30130013, ' ANGEL DE JESUS', 'MEDINA', 'LOPEZ', '2013-10-09', '', '', '', '', '', '', '2013-08-19', '', 1, 24, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(30130014, ' SAMUEL', 'RODRIGUEZ', 'GARCIA', '2013-10-09', '', '', '', '', '', '', '2013-08-19', '', 1, 24, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(30130015, ' ANA IVONNE', 'CRUZ', 'JIMENEZ', '2013-10-09', '', '', '', '', '', '', '2013-08-19', '', 1, 20, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(30130019, ' LUIS DAVID', 'PEREZ', 'TORRES', '2013-10-09', '', '', '', '', '', '', '2013-08-19', '', 1, 24, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(30130020, ' CARLA', 'CABRERA', 'SANCHEZ', '2000-11-25', '', '', '', '', '', '', '2013-11-01', '', 1, 19, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(30140001, ' FRANCISCO JAVIER', 'ALVIZAR', 'VILLEGAS', '2014-10-15', '', '', '', '', '', '', '2014-08-18', '', 1, 16, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(30140002, ' DAFNE MARIANA', 'CORTES', 'AMARO', '2014-10-15', '', '', '', '', '', '', '2014-08-18', '', 1, 16, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(30140003, ' JOSE MANUEL', 'GALVAN', 'PEREZ', '2014-10-15', '', '', '', '', '', '', '2014-08-18', '', 1, 16, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(30140004, ' SERGIO ALEJANDRO', 'HERNANDEZ', 'VERA', '2014-10-15', '', '', '', '', '', '', '2014-08-18', '', 1, 16, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(30140005, ' NANCY', 'MARTINEZ', 'VAZQUEZ', '2014-10-15', '', '', '', '', '', '', '2014-08-18', '', 1, 16, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(30140006, ' DANIELA', 'RAMIREZ', 'LOPEZ', '2014-10-15', '', '', '', '', '', '', '2014-08-18', '', 1, 16, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(30140007, ' ALANIS VANESSA', 'TRUJILLO', 'HERNANDEZ', '2014-10-15', '', '', '', '', '', '', '2014-08-18', '', 1, 16, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(30140009, ' LUCERO GERALDINE', 'CASTILLO', 'GUERRERO', '2014-10-15', '', '', '', '', '', '', '2014-08-18', '', 1, 17, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(30140010, ' ANDREA', 'DOMINGUEZ', 'RODRIGUEZ', '2014-10-15', '', '', '', '', '', '', '2014-08-18', '', 1, 17, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(30140011, ' DANNA MICHELLE', 'HERNANDEZ', 'CABRERA', '2014-10-15', '', '', '', '', '', '', '2014-08-18', '', 1, 17, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(30140012, ' MICHELLE', 'HERRERA', 'VARELA', '2014-10-15', '', '', '', '', '', '', '2014-10-15', '', 1, 17, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(30140013, ' DULCE ALEJANDRA', 'JIMENEZ', 'CABALLERO', '2014-10-15', '', '', '', '', '', '', '2014-08-18', '', 1, 17, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(30140014, ' ITHAN JOSEPH', 'MOTA', 'HERNANDEZ', '2014-10-15', '', '', '', '', '', '', '2014-08-18', '', 1, 17, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(30140015, ' KEREN SARAI', 'PACHECO', 'HIPOLITO', '2014-10-15', '', '', '', '', '', '', '2014-08-18', '', 1, 17, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(30140016, ' ASTRID CAROLINA', 'PIÑA', 'GALLEGOS', '2014-10-15', '', '', '', '', '', '', '2014-08-18', '', 1, 17, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(30140017, ' LESLY', 'RODRIGUEZ', 'MORALES', '2014-10-15', '', '', '', '', '', '', '2014-08-18', '', 1, 17, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(30140018, ' ZEL KAROL', 'VERDIN', 'ANDRADE', '2014-10-15', '', '', '', '', '', '', '2014-08-18', '', 1, 17, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(30140019, ' ALMA FATIMA', 'POZOS', 'MEDEL', '2014-10-15', '', '', '', '', '', '', '2014-08-18', '', 1, 18, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(30140020, ' FUENTE LOPEZ PAULA', 'DE', 'LA', '2014-10-15', '', '', '', '', '', '', '2014-08-18', '', 1, 24, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(30140021, ' MIRNA ARELI', 'GUZMAN', 'ESTRADA', '2014-10-15', '', '', '', '', '', '', '2014-08-18', '', 1, 24, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(30140023, ' OLARTE ANTONIO', 'DEL', 'POZO', '2014-10-15', '', '', '', '', '', '', '2014-08-18', '', 1, 20, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(30140024, ' CAMILA', 'CAMPOS', 'COLIO', '2014-10-15', '', '', '', '', '', '', '2014-08-18', '', 1, 16, 'F', '', '', 0, '', '', '', '', '', 0, ''),
(30140025, ' CARLOS ODVAN', 'SANCHEZ', 'JOFFRE', '2000-01-04', 'PUEBLA', '', '', '', '', '', '2014-12-19', '', 1, 19, 'M', '', '', 0, '', '', '', '', '', 0, ''),
(30140028, ' JOSE MARTIN', 'PACIO', 'ORTIZ', '2014-10-15', '', '', '', '', '', '', '2014-08-18', '', 1, 18, 'M', '', '', 0, '', '', '', '', '', 0, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aviso_comentario`
--

CREATE TABLE `aviso_comentario` (
  `clave` int(11) NOT NULL,
  `matricula` int(11) DEFAULT NULL,
  `idgrupo` int(11) DEFAULT NULL,
  `idgrado` int(11) DEFAULT NULL,
  `idseccion` int(11) DEFAULT NULL,
  `aviso` text NOT NULL,
  `prioridad` tinyint(4) DEFAULT NULL,
  `idempleado` varchar(11) NOT NULL,
  `activo` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `aviso_comentario`
--

INSERT INTO `aviso_comentario` (`clave`, `matricula`, `idgrupo`, `idgrado`, `idseccion`, `aviso`, `prioridad`, `idempleado`, `activo`) VALUES
(1, 0, 0, 0, 38, 'MÑANA NO CLASES', 1, 'SAML', 1),
(2, 0, 0, 48, 0, 'HOLA', 1, 'SAML', 1),
(3, 14365, 0, 0, 0, 'JUANITO SE PORTA MUY MAL', 1, 'SAML', 1),
(4, 0, 0, 46, 0, 'PEPITO ESTA FEO', 2, 'SAML', 2),
(5, 0, 0, 42, 0, 'MARIA FEA', 1, 'SAML', 1),
(6, 0, 9, 0, 0, 'COMPRAR EXAMEN DE $20', 0, 'SAML', 2),
(7, 0, 10, 0, 0, 'MAÑANA SIMULACRO DE INCENDIO', 2, 'SAML', 1),
(8, 0, 0, 42, 0, 'EDUCACION FISICA NO TENDRAN', 1, 'SAML', 2),
(9, 0, 2, 0, 0, 'TIEMPO DE SIESTA', 2, 'SAML', 2),
(10, 0, 0, 0, 37, 'SIMULACRO DE INCENDIO', 2, 'SAML', 2),
(11, 6588, 0, 0, 0, 'ESTAS REPROBADO', 0, 'SAML', 1),
(12, 6499, 0, 0, 0, 'MUY MAL QUE ETE PORTAS JOSESHUY', 2, 'SAML', 0),
(13, 0, 0, 0, 38, 'HELLO ITS ME', 1, 'SAML', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calificacion`
--

CREATE TABLE `calificacion` (
  `folio_reg` int(11) NOT NULL,
  `idmateria` varchar(45) NOT NULL,
  `idgrupo` int(11) NOT NULL,
  `matricula` int(11) DEFAULT NULL,
  `idrangoprogramado` int(11) NOT NULL,
  `idprofesor` varchar(25) NOT NULL,
  `calificacion` float NOT NULL,
  `calificacionchar` varchar(45) DEFAULT '',
  `idcriterio` int(11) NOT NULL,
  `fecha_reg` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `calificacion`
--

INSERT INTO `calificacion` (`folio_reg`, `idmateria`, `idgrupo`, `matricula`, `idrangoprogramado`, `idprofesor`, `calificacion`, `calificacionchar`, `idcriterio`, `fecha_reg`) VALUES
(4750, 'PR01IN', 4, 20140001, 1, '0013P01', 8, '', 3, '2014-10-27 00:00:00'),
(4751, 'PR01IN', 4, 20140001, 1, '0013P01', 5, '', 7, '2014-10-27 00:00:00'),
(4752, 'PR01IN', 4, 20140001, 1, '0013P01', 10, '', 41, '2014-10-27 00:00:00'),
(4753, 'PRI01CON', 4, 20140001, 1, '2099P08', 0, '', 0, '2014-10-30 00:00:00'),
(4754, 'PRI01DES', 4, 20140001, 1, '2099P08', 0, '', 0, '2014-10-30 00:00:00'),
(4755, 'PR01EF', 4, 20140001, 1, '0012E01', 10, '', 1, '2014-11-04 00:00:00'),
(4756, 'PR01EF', 4, 20140001, 1, '0012E01', 10, '', 4, '2014-11-04 00:00:00'),
(4757, 'PR01EF', 4, 20140001, 1, '0012E01', 10, '', 20, '2014-11-04 00:00:00'),
(4758, ' PR01E', 4, 20140001, 1, '2002P05', 10, '', 3, '2014-10-30 00:00:00'),
(4759, ' PR01E', 4, 20140001, 1, '2002P05', 6, '', 7, '2014-10-30 00:00:00'),
(4760, ' PR01E', 4, 20140001, 1, '2002P05', 10, '', 9, '2014-10-30 00:00:00'),
(4761, ' PR01E', 4, 20140001, 1, '2002P05', 9, '', 22, '2014-10-30 00:00:00'),
(4762, ' PR01E', 4, 20140001, 1, '2002P05', 7, '', 23, '2014-10-30 00:00:00'),
(4763, ' PR01E', 4, 20140001, 1, '2002P05', 0, '', 15, '2014-10-30 00:00:00'),
(4764, 'PR01M', 4, 20140001, 1, '2002P05', 10, '', 3, '2014-10-30 00:00:00'),
(4765, 'PR01M', 4, 20140001, 1, '2002P05', 9, '', 7, '2014-10-30 00:00:00'),
(4766, 'PR01M', 4, 20140001, 1, '2002P05', 10, '', 9, '2014-10-30 00:00:00'),
(4767, 'PR01M', 4, 20140001, 1, '2002P05', 9, '', 22, '2014-10-30 00:00:00'),
(4768, 'PR01M', 4, 20140001, 1, '2002P05', 8, '', 23, '2014-10-30 00:00:00'),
(4769, 'PR01CM', 4, 20140001, 1, '2002P05', 10, '', 3, '2014-10-30 00:00:00'),
(4770, 'PR01CM', 4, 20140001, 1, '2002P05', 6, '', 7, '2014-10-30 00:00:00'),
(4771, 'PR01CM', 4, 20140001, 1, '2002P05', 9, '', 9, '2014-10-30 00:00:00'),
(4772, 'PR01CM', 4, 20140001, 1, '2002P05', 9, '', 22, '2014-10-30 00:00:00'),
(4773, 'PR01CM', 4, 20140001, 1, '2002P05', 8, '', 23, '2014-10-30 00:00:00'),
(4774, 'PR01FC', 4, 20140001, 1, '2002P05', 10, '', 3, '2014-10-30 00:00:00'),
(4775, 'PR01FC', 4, 20140001, 1, '2002P05', 8, '', 7, '2014-10-30 00:00:00'),
(4776, 'PR01FC', 4, 20140001, 1, '2002P05', 9, '', 9, '2014-10-30 00:00:00'),
(4777, 'PR01FC', 4, 20140001, 1, '2002P05', 9, '', 22, '2014-10-30 00:00:00'),
(4778, 'PR01FC', 4, 20140001, 1, '2002P05', 8, '', 23, '2014-10-30 00:00:00'),
(4779, 'PR01EA', 4, 20140001, 1, '3012E01', 10, '', 3, '2014-11-03 00:00:00'),
(4780, 'PR01EA', 4, 20140001, 1, '3012E01', 7, '', 7, '2014-11-03 00:00:00'),
(4781, 'PR01EA', 4, 20140001, 1, '3012E01', 10, '', 9, '2014-11-03 00:00:00'),
(4782, 'PR01EA', 4, 20140001, 1, '3012E01', 10, '', 23, '2014-11-03 00:00:00'),
(4783, 'PR01EA', 4, 20140001, 239, '3012E01', 10, '', 3, '2014-12-15 00:00:00'),
(4784, 'PR01EA', 4, 20140001, 239, '3012E01', 10, '', 4, '2014-12-15 00:00:00'),
(4785, 'PR01EA', 4, 20140001, 239, '3012E01', 10, '', 7, '2014-12-15 00:00:00'),
(4786, 'PR01EA', 4, 20140001, 239, '3012E01', 10, '', 9, '2014-12-15 00:00:00'),
(4787, 'PR01IN', 4, 20140001, 239, '0013P01', 10, '', 3, '2014-12-17 00:00:00'),
(4788, 'PR01IN', 4, 20140001, 239, '0013P01', 7, '', 7, '2014-12-17 00:00:00'),
(4789, 'PR01IN', 4, 20140001, 239, '0013P01', 9, '', 41, '2014-12-17 00:00:00'),
(4790, 'PRI01CON', 4, 20140001, 239, '2099P08', 0, '', 0, '2014-12-17 00:00:00'),
(4791, ' PR01E', 4, 20140001, 239, '2002P05', 10, '', 3, '2014-12-17 00:00:00'),
(4792, ' PR01E', 4, 20140001, 239, '2002P05', 5, '', 7, '2014-12-17 00:00:00'),
(4793, ' PR01E', 4, 20140001, 239, '2002P05', 10, '', 9, '2014-12-17 00:00:00'),
(4794, ' PR01E', 4, 20140001, 239, '2002P05', 8, '', 22, '2014-12-17 00:00:00'),
(4795, ' PR01E', 4, 20140001, 239, '2002P05', 0, '', 15, '2014-12-17 00:00:00'),
(4796, 'PR01M', 4, 20140001, 239, '2002P05', 10, '', 3, '2014-12-16 00:00:00'),
(4797, 'PR01M', 4, 20140001, 239, '2002P05', 9, '', 7, '2014-12-16 00:00:00'),
(4798, 'PR01M', 4, 20140001, 239, '2002P05', 10, '', 9, '2014-12-16 00:00:00'),
(4799, 'PR01M', 4, 20140001, 239, '2002P05', 9, '', 22, '2014-12-16 00:00:00'),
(4800, 'PR01CM', 4, 20140001, 239, '2002P05', 10, '', 3, '2015-01-19 00:00:00'),
(4801, 'PR01CM', 4, 20140001, 239, '2002P05', 6, '', 7, '2015-01-19 00:00:00'),
(4802, 'PR01CM', 4, 20140001, 239, '2002P05', 10, '', 9, '2015-01-19 00:00:00'),
(4803, 'PR01CM', 4, 20140001, 239, '2002P05', 9, '', 22, '2015-01-19 00:00:00'),
(4804, 'PR01EF', 4, 20140001, 239, '0012E01', 10, '', 1, '2014-12-16 00:00:00'),
(4805, 'PR01EF', 4, 20140001, 239, '0012E01', 10, '', 4, '2014-12-16 00:00:00'),
(4806, 'PR01EF', 4, 20140001, 239, '0012E01', 10, '', 7, '2014-12-16 00:00:00'),
(4807, 'PRI01DES', 4, 20140001, 239, '2099P08', 0, '', 0, '2014-12-17 00:00:00'),
(4808, 'PR01FC', 4, 20140001, 239, '2002P05', 10, '', 3, '2014-12-17 00:00:00'),
(4809, 'PR01FC', 4, 20140001, 239, '2002P05', 9, '', 7, '2014-12-17 00:00:00'),
(4810, 'PR01FC', 4, 20140001, 239, '2002P05', 10, '', 9, '2014-12-17 00:00:00'),
(4811, 'PR01FC', 4, 20140001, 239, '2002P05', 8, '', 22, '2014-12-17 00:00:00'),
(4812, 'PR01EA', 4, 20140001, 240, '3012E01', 9, '', 3, '2015-03-02 00:00:00'),
(4813, 'PR01EA', 4, 20140001, 240, '3012E01', 9, '', 4, '2015-03-02 00:00:00'),
(4814, 'PR01EA', 4, 20140001, 240, '3012E01', 9, '', 14, '2015-03-02 00:00:00'),
(4815, 'PR01IN', 4, 20140001, 240, '0013P01', 10, '', 7, '2015-03-09 00:00:00'),
(4816, 'PR01IN', 4, 20140001, 240, '0013P01', 10, '', 41, '2015-03-09 00:00:00'),
(4817, 'PR01EF', 4, 20140001, 240, '0012E01', 9, '', 1, '2015-02-26 00:00:00'),
(4818, 'PR01EF', 4, 20140001, 240, '0012E01', 9, '', 13, '2015-02-26 00:00:00'),
(4819, 'PR01EF', 4, 20140001, 240, '0012E01', 9, '', 14, '2015-02-26 00:00:00'),
(4820, ' PR01E', 4, 20140001, 240, '2002P05', 10, '', 3, '2015-02-27 00:00:00'),
(4821, ' PR01E', 4, 20140001, 240, '2002P05', 6, '', 7, '2015-02-27 00:00:00'),
(4822, ' PR01E', 4, 20140001, 240, '2002P05', 10, '', 9, '2015-02-27 00:00:00'),
(4823, ' PR01E', 4, 20140001, 240, '2002P05', 9, '', 22, '2015-02-27 00:00:00'),
(4824, ' PR01E', 4, 20140001, 240, '2002P05', 0, '', 15, '2015-02-27 00:00:00'),
(4825, 'PR01M', 4, 20140001, 240, '2002P05', 10, '', 3, '2015-02-27 00:00:00'),
(4826, 'PR01M', 4, 20140001, 240, '2002P05', 6, '', 7, '2015-02-27 00:00:00'),
(4827, 'PR01M', 4, 20140001, 240, '2002P05', 10, '', 9, '2015-02-27 00:00:00'),
(4828, 'PR01M', 4, 20140001, 240, '2002P05', 8, '', 22, '2015-02-27 00:00:00'),
(4829, 'PR01CM', 4, 20140001, 240, '2002P05', 10, '', 3, '2015-02-27 00:00:00'),
(4830, 'PR01CM', 4, 20140001, 240, '2002P05', 7, '', 7, '2015-02-27 00:00:00'),
(4831, 'PR01CM', 4, 20140001, 240, '2002P05', 10, '', 9, '2015-02-27 00:00:00'),
(4832, 'PR01CM', 4, 20140001, 240, '2002P05', 9, '', 22, '2015-02-27 00:00:00'),
(4833, 'PR01FC', 4, 20140001, 240, '2002P05', 10, '', 3, '2015-02-27 00:00:00'),
(4834, 'PR01FC', 4, 20140001, 240, '2002P05', 4, '', 7, '2015-02-27 00:00:00'),
(4835, 'PR01FC', 4, 20140001, 240, '2002P05', 10, '', 9, '2015-02-27 00:00:00'),
(4836, 'PR01FC', 4, 20140001, 240, '2002P05', 9, '', 22, '2015-02-27 00:00:00'),
(4837, 'PR01EA', 4, 20140001, 241, '3012E01', 10, '', 14, '2015-04-23 00:00:00'),
(4838, 'PR01EF', 4, 20140001, 241, '0012E01', 10, '', 1, '2015-04-23 00:00:00'),
(4839, 'PR01EF', 4, 20140001, 241, '0012E01', 10, '', 4, '2015-04-23 00:00:00'),
(4840, 'PR01EF', 4, 20140001, 241, '0012E01', 10, '', 13, '2015-04-23 00:00:00'),
(4841, 'PR01IN', 4, 20140001, 241, '0013P01', 10, '', 3, '2015-05-26 00:00:00'),
(4842, 'PR01IN', 4, 20140001, 241, '0013P01', 5, '', 7, '2015-05-26 00:00:00'),
(4843, 'PR01IN', 4, 20140001, 241, '0013P01', 10, '', 41, '2015-05-26 00:00:00'),
(4844, ' PR01E', 4, 20140001, 241, '2002P05', 10, '', 3, '2015-04-28 00:00:00'),
(4845, ' PR01E', 4, 20140001, 241, '2002P05', 6, '', 7, '2015-04-28 00:00:00'),
(4846, ' PR01E', 4, 20140001, 241, '2002P05', 10, '', 9, '2015-04-28 00:00:00'),
(4847, ' PR01E', 4, 20140001, 241, '2002P05', 8, '', 22, '2015-04-28 00:00:00'),
(4848, ' PR01E', 4, 20140001, 241, '2002P05', 0, '', 15, '2015-04-28 00:00:00'),
(4849, 'PR01M', 4, 20140001, 241, '2002P05', 10, '', 3, '2015-04-28 00:00:00'),
(4850, 'PR01M', 4, 20140001, 241, '2002P05', 8, '', 7, '2015-04-28 00:00:00'),
(4851, 'PR01M', 4, 20140001, 241, '2002P05', 9, '', 9, '2015-04-28 00:00:00'),
(4852, 'PR01M', 4, 20140001, 241, '2002P05', 8, '', 22, '2015-04-28 00:00:00'),
(4853, 'PR01CM', 4, 20140001, 241, '2002P05', 10, '', 3, '2015-04-28 00:00:00'),
(4854, 'PR01CM', 4, 20140001, 241, '2002P05', 6, '', 7, '2015-04-28 00:00:00'),
(4855, 'PR01CM', 4, 20140001, 241, '2002P05', 10, '', 9, '2015-04-28 00:00:00'),
(4856, 'PR01CM', 4, 20140001, 241, '2002P05', 9, '', 22, '2015-04-28 00:00:00'),
(4857, 'PR01FC', 4, 20140001, 241, '2002P05', 10, '', 3, '2015-04-28 00:00:00'),
(4858, 'PR01FC', 4, 20140001, 241, '2002P05', 6, '', 7, '2015-04-28 00:00:00'),
(4859, 'PR01FC', 4, 20140001, 241, '2002P05', 9, '', 9, '2015-04-28 00:00:00'),
(4860, 'PR01FC', 4, 20140001, 241, '2002P05', 9, '', 22, '2015-04-28 00:00:00'),
(4861, 'PRI01CON', 4, 20140001, 241, '2099P08', 0, '', 0, '2015-05-06 00:00:00'),
(4862, 'PRI01DES', 4, 20140001, 241, '2099P08', 0, '', 0, '2015-05-06 00:00:00'),
(4863, 'PR01EA', 4, 20140001, 242, '3012E01', 10, '', 7, '2015-06-18 00:00:00'),
(4864, 'PR01EA', 4, 20140001, 242, '3012E01', 10, '', 9, '2015-06-18 00:00:00'),
(4865, 'PR01IN', 4, 20140001, 242, '0013P01', 8, '', 3, '2015-06-22 00:00:00'),
(4866, 'PR01IN', 4, 20140001, 242, '0013P01', 5, '', 7, '2015-06-22 00:00:00'),
(4867, 'PR01IN', 4, 20140001, 242, '0013P01', 9, '', 41, '2015-06-22 00:00:00'),
(4868, ' PR01E', 4, 20140001, 242, '2002P05', 10, '', 3, '2015-06-24 00:00:00'),
(4869, ' PR01E', 4, 20140001, 242, '2002P05', 5, '', 7, '2015-06-24 00:00:00'),
(4870, ' PR01E', 4, 20140001, 242, '2002P05', 10, '', 9, '2015-06-24 00:00:00'),
(4871, ' PR01E', 4, 20140001, 242, '2002P05', 8, '', 22, '2015-06-24 00:00:00'),
(4872, 'PRI01CON', 4, 20140001, 242, '2099P08', 0, '', 0, '2015-06-24 00:00:00'),
(4873, 'PRI01DES', 4, 20140001, 242, '2099P08', 0, '', 0, '2015-06-23 00:00:00'),
(4874, ' PR01E', 4, 20140001, 242, '2002P05', 2, '', 15, '2015-06-24 00:00:00'),
(4875, 'PR01M', 4, 20140001, 242, '2002P05', 10, '', 3, '2015-06-24 00:00:00'),
(4876, 'PR01M', 4, 20140001, 242, '2002P05', 6, '', 7, '2015-06-24 00:00:00'),
(4877, 'PR01M', 4, 20140001, 242, '2002P05', 10, '', 9, '2015-06-24 00:00:00'),
(4878, 'PR01M', 4, 20140001, 242, '2002P05', 8, '', 22, '2015-06-24 00:00:00'),
(4879, 'PR01EF', 4, 20140001, 242, '0012E01', 10, '', 0, '2015-06-24 00:00:00'),
(4880, 'PR01CM', 4, 20140001, 242, '2002P05', 10, '', 3, '2015-06-24 00:00:00'),
(4881, 'PR01CM', 4, 20140001, 242, '2002P05', 8, '', 7, '2015-06-24 00:00:00'),
(4882, 'PR01CM', 4, 20140001, 242, '2002P05', 9, '', 9, '2015-06-24 00:00:00'),
(4883, 'PR01CM', 4, 20140001, 242, '2002P05', 7, '', 22, '2015-06-24 00:00:00'),
(4884, 'PR01FC', 4, 20140001, 242, '2002P05', 10, '', 3, '2015-06-24 00:00:00'),
(4885, 'PR01FC', 4, 20140001, 242, '2002P05', 9, '', 7, '2015-06-24 00:00:00'),
(4886, 'PR01FC', 4, 20140001, 242, '2002P05', 8, '', 9, '2015-06-24 00:00:00'),
(4887, 'PR01FC', 4, 20140001, 242, '2002P05', 8, '', 22, '2015-06-24 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calificacion_calculo`
--

CREATE TABLE `calificacion_calculo` (
  `folio_reg` int(11) NOT NULL,
  `idmateria` varchar(45) NOT NULL,
  `idgrupo` int(11) NOT NULL,
  `matricula` int(11) NOT NULL,
  `periodo` int(11) NOT NULL,
  `ciclo` int(11) NOT NULL,
  `nopromedio` int(11) DEFAULT NULL,
  `idprofesor` varchar(25) DEFAULT NULL,
  `calificacion` float NOT NULL,
  `calificacionchar` varchar(45) DEFAULT NULL,
  `fecha_reg` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciclo`
--

CREATE TABLE `ciclo` (
  `idciclo` int(11) NOT NULL,
  `idseccion` int(11) NOT NULL,
  `nombre` varchar(80) NOT NULL,
  `fechaini` date NOT NULL,
  `fechafin` date NOT NULL,
  `actual` tinyint(4) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ciclo`
--

INSERT INTO `ciclo` (`idciclo`, `idseccion`, `nombre`, `fechaini`, `fechafin`, `actual`) VALUES
(1, 36, '2006-2007', '2006-08-21', '2007-07-06', 0),
(2, 37, '2006-2007', '2006-08-21', '2007-07-06', 0),
(3, 38, '2006-2007', '2006-08-21', '2007-07-06', 0),
(4, 36, '2007-2008', '2007-08-20', '2008-07-04', 0),
(5, 37, '2007-2008', '2007-08-20', '2008-07-04', 0),
(6, 38, '2007-2008', '2007-08-20', '2008-07-04', 0),
(7, 36, '2008-2009', '2008-08-18', '2009-07-06', 0),
(8, 37, '2008-2009', '2008-08-18', '2009-07-06', 0),
(9, 38, '2008-2009', '2008-08-18', '2009-07-06', 0),
(10, 36, '2009/2010', '2009-08-24', '2010-07-15', 0),
(11, 37, '2009/2010', '2009-08-24', '2010-07-15', 0),
(12, 38, '2009/2010', '2009-08-24', '2010-07-15', 0),
(13, 36, '2010-2011', '2010-08-23', '2011-07-08', 0),
(14, 37, '2010-2011', '2010-08-23', '2011-07-08', 0),
(15, 38, '2010-2011', '2010-08-23', '2011-07-08', 0),
(16, 36, '2011/2012', '2011-08-21', '2012-07-10', 0),
(17, 37, '2011/2012', '2011-08-20', '2012-07-10', 0),
(18, 38, '2011/2012', '2011-08-20', '2012-07-10', 0),
(22, 36, '2012-2013', '2012-08-20', '2013-07-10', 0),
(23, 37, '2012-2013', '2012-08-20', '2013-07-10', 0),
(24, 38, '2012-2013', '2012-08-20', '2013-07-10', 0),
(25, 36, '2013-2014', '2013-08-19', '2014-07-15', 0),
(26, 37, '2013-2014', '2013-08-19', '2014-07-15', 0),
(27, 38, '2013-2014', '2013-08-19', '2014-07-15', 0),
(28, 36, '2014-2015', '2014-08-18', '2015-07-14', 1),
(29, 37, '2014-2015', '2014-08-15', '2015-07-14', 1),
(30, 38, '2014-2015', '2014-08-18', '2015-07-14', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `configuracion`
--

CREATE TABLE `configuracion` (
  `idconfiguracion` int(11) NOT NULL,
  `titulo` varchar(45) DEFAULT NULL,
  `valor` varchar(45) DEFAULT NULL,
  `comentario` varchar(45) DEFAULT NULL,
  `activo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `criterio`
--

CREATE TABLE `criterio` (
  `idcriterio` int(4) NOT NULL,
  `tipocriterio` int(11) NOT NULL,
  `descripcion` varchar(25) NOT NULL,
  `calculocriterio` tinyint(4) DEFAULT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `criterio`
--

INSERT INTO `criterio` (`idcriterio`, `tipocriterio`, `descripcion`, `calculocriterio`, `status`) VALUES
(0, 17, 'SIN CRITERIO', 0, 0),
(1, 17, 'ASISTENCIA', 0, 0),
(3, 17, 'TAREAS', 0, 0),
(4, 17, 'PARTICIPACION', 0, 0),
(5, 17, 'TRABAJOS EXTRAS', 0, 0),
(7, 17, 'EXAMEN', 0, 0),
(8, 17, 'INVESTIGACION', 0, 0),
(9, 17, 'LIBRETA', 0, 0),
(10, 17, 'REPORTE LECTURA', 0, 0),
(11, 17, 'EXAMEN PARCIAL', 0, 0),
(12, 17, 'PRACTICAS LAB', 0, 0),
(13, 17, 'UNIFORME', 0, 0),
(14, 17, 'PRACTICA', 0, 0),
(15, 18, 'INASISTENCIA', 2, 0),
(17, 17, 'ALBÚM', 0, 0),
(18, 17, 'TRABAJO EN CLASE', 0, 0),
(19, 17, 'EXPOSICION POR EQUIPO', 0, 0),
(20, 17, 'EXAMEN PRACTICO', 0, 0),
(21, 17, 'PATRULLA VIAL', 0, 0),
(22, 17, 'PROYECTO', 0, 0),
(23, 17, 'EXAMEN DIAGNOSTICO', 0, 0),
(24, 17, 'TRABAJO GRUPAL', 0, 0),
(25, 17, 'EXPOSICION INDIVIDUAL', 0, 0),
(26, 16, 'PROYECTOS', 0, 0),
(27, 17, 'ESTUDIO DE CASOS', 0, 0),
(28, 17, 'MAPAS', 0, 0),
(29, 17, 'MAQUETA', 0, 0),
(31, 17, 'RUBRICAS', 0, 0),
(33, 17, 'EXAMEN/ PROYECTO', 0, 0),
(34, 17, 'BITACORA', 0, 0),
(35, 17, 'TAREAS Y PARTICIPACION', 0, 0),
(36, 17, 'CARTELES', 0, 0),
(37, 17, 'CAMPA;A', 0, 0),
(38, 17, 'MUSEO', 0, 0),
(39, 17, 'EXAMEN DE SECTOR', 0, 0),
(40, 17, 'PORTAFOLIO', 0, 0),
(41, 17, 'EXAMEN ORAL', 0, 0),
(42, 17, 'PROCESOS Y PRODUCTOS', 0, 0),
(43, 17, 'DESEMPEÑO ACTITUDINAL', 0, 0),
(44, 17, 'PRACTICAS EN LINEA', 0, 0),
(45, 17, 'EJERCICIOS EN CLASE', 0, 0),
(46, 17, 'PRODUCTO', 0, 0),
(47, 17, 'CONOCIMIENTOS', 0, 0),
(48, 17, 'PROCESOS', 0, 0),
(49, 17, 'EJERCICIOS EN PIZARRON', 0, 0),
(50, 17, 'TAREAS Y PRACTICAS', 0, 0),
(55, 17, 'PRACTICAS INTERACTIVAS', 0, 0),
(56, 17, 'TAREAS DE LIBRO Y LIBRETA', 0, 0),
(57, 18, 'ENSAYO', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

CREATE TABLE `empleado` (
  `idempleado` varchar(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `direccion` varchar(150) NOT NULL,
  `email` varchar(80) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `telcel` varchar(20) DEFAULT NULL,
  `colonia` varchar(40) NOT NULL,
  `cp` varchar(5) NOT NULL,
  `fecingreso` date NOT NULL,
  `fechanacimiento` date NOT NULL,
  `tiposangre` varchar(30) NOT NULL,
  `dir_imagen` varchar(500) DEFAULT NULL,
  `sexo` char(1) NOT NULL,
  `curp` varchar(30) NOT NULL,
  `idpuesto` smallint(6) NOT NULL DEFAULT '1',
  `activo` tinyint(4) NOT NULL DEFAULT '1',
  `apellidop` varchar(100) NOT NULL,
  `apellidom` varchar(100) DEFAULT NULL,
  `rfc` varchar(20) NOT NULL,
  `nombrecontacto` varchar(200) NOT NULL,
  `telcontacto` varchar(45) NOT NULL,
  `numext` int(11) NOT NULL,
  `numint` varchar(10) DEFAULT NULL,
  `status` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `empleado`
--

INSERT INTO `empleado` (`idempleado`, `nombre`, `direccion`, `email`, `telefono`, `telcel`, `colonia`, `cp`, `fecingreso`, `fechanacimiento`, `tiposangre`, `dir_imagen`, `sexo`, `curp`, `idpuesto`, `activo`, `apellidop`, `apellidom`, `rfc`, `nombrecontacto`, `telcontacto`, `numext`, `numint`, `status`) VALUES
('0', 'SIN PROFESOR', 'NA', 'na@na.com', '1234567898', '1324567899', 'NA', '00000', '2016-01-12', '2016-01-06', '31', NULL, 'm', 'NANANANANANANANANA', 0, 1, 'NA', 'NA', 'NANANANANANAN', 'NA', '1234567899', 156, '156', 1),
('0004E04', ' FLORES HERRERA', 'CALLE SONORA NO.10133', '', '2  28-68-14', '', 'POPULAR', '72470', '2004-08-15', '2004-08-15', '', ',', 'F', 'FOHR730807MPLLRG06', 16, 1, 'MARIA', 'REGINA', '', '', '', 0, '', 1),
('0006E01', ' MEZA', '', '', '', '', '', '', '2006-08-21', '2006-08-21', '', ',', 'F', '', 16, 1, 'NADIA', 'RAMIREZ', '', '', '', 0, '', 1),
('0012E01', ' SANCHEZ', '', '', '', '', '', '', '2012-01-03', '2012-01-03', '', ',', 'M', '', 16, 1, 'ENRIQUE', 'ACEVES', '', '', '', 0, '', 1),
('0012E02', ' BRAVO BARAJAS', '', '', '', '', '', '', '2012-08-20', '2012-08-20', '', ',', 'F', '', 16, 1, 'ARLENE', 'BRIDGET', '', '', '', 0, '', 1),
('0012E03', ' LOPEZ', '', '', '', '', '', '', '2012-08-27', '2012-08-27', '', ',', 'F', '', 16, 1, 'SIBONEY', 'BAUTISTA', '', '', '', 0, '', 1),
('0013P01', ' OLIVARES', '', '', '', '', '', '', '2013-08-19', '2013-08-19', '', ',', 'F', '', 16, 1, 'AIDEE', 'BRAVO', '', '', '', 0, '', 1),
('0090E02', ' CRUZ', 'RETORNO GARDENIAS I. E-85-5', '', '01 244 44 55 366', '244 1004004,447 7409', 'ATLIXCO,PUE', '', '1990-09-01', '1990-09-01', '', ',', 'M', 'CUCJ671220HPLRRV09', 16, 1, 'JAVIER', 'CRUZ', '', '', '', 0, '', 1),
('0097E03', ' JIMENEZ', 'VISTA DE LA CASCADA 14 B', '', '1-301858', '', 'FRACC. VISTAS DEL ANGEL', '72810', '1997-09-01', '1997-09-01', '', ',', 'F', 'JIJJ751129MPLMMD05', 16, 1, 'JUDITH', 'JIMENEZ', '', '', '', 0, '', 1),
('1002J01', ' BARRON', '95 PONIENTE #2102  CASA 2', '', '3-956628', '0442221402221', 'GEOVILLAS LA VISTA', '', '2002-08-11', '2002-08-11', '', ',', 'F', 'VABC680329MPLLRR01', 5, 1, 'CAROLINA', 'VALENCIA', '', '', '', 0, '', 1),
('1004J02', ' MUÑOZ', '77 PTE. #1512-C', '', '2-284846', '0442223240159', 'SN. JOSE MAYORAZGO', '72450', '2004-08-19', '2004-08-19', '', ',', 'F', 'RAMZ820220MPLZXL01', 8, 1, 'ZULEYCA', 'RAZO', '', '', '', 0, '', 1),
('1009J01', ' LOURDES PERES JUAREZ', '', '', '', '', '', '', '2009-08-15', '2009-08-15', '', ',', 'F', '', 5, 1, 'MARIA', 'DE', '', '', '', 0, '', 1),
('1009J03', ' JUAREZ', '', '', '', '', '', '', '2009-08-15', '2009-08-15', '', ',', 'F', '', 9, 1, 'LILIA', 'RAMIREZ', '', '', '', 0, '', 1),
('20017P01', 'Antonio', 'Vicente guerrero', 'tonyocampoc@gmail.com', '7773680189', '5540024045', 'Lomas de San Francisco', '62550', '2017-07-06', '2017-07-06', 'O+', NULL, 'M', 'OACC8103289X3Hcml01', 16, 1, 'OCAMPO', 'CASTRO', 'OACC8103289X3', 'HERSON SAMANO', '55123145678', 4, '1', 1),
('2001P09', ' CARMEN AVILA LEON', 'CALLE VIOLETAS EDIF.B-DEPTO. 2', '', '2 41 37 35', '', 'U.H. LA VICTORIA', '72400', '2001-08-15', '2001-08-15', '', ',', 'F', 'AILC740811MPLVNR19', 9, 1, 'MARIA', 'DEL', '', '', '', 0, '', 1),
('2002P05', ' RIVERA', 'EDIF. 12106-1', '', '2 19 39 39', '', 'SAN MIGUEL MAYORAZGO', '72490', '2000-08-21', '2000-08-21', '', ',', 'F', 'LERA740825MPLCVD02', 9, 1, 'AIDE', 'LECONA', '', '', '', 0, '', 1),
('2002P07', ' CORTES', 'ORQUIDEA EDIF. A DEPTO.5', '', '2 41 66 21', '', 'U.H.LA VICTORIA', '72400', '2002-08-15', '2002-08-15', '', ',', 'F', 'CECA650909MVZRRN08', 9, 1, 'ANABEL', 'CERON', '', '', '', 0, '', 1),
('2007P02', ' SANCHEZ  ROSAS', 'MAN 54  EDIF. 54B-301', '', '7 55 48 62', '', 'FOVISSSTE SAN ROQUE', '72470', '2007-08-20', '2007-08-20', '', ',', 'F', 'SARG780310MPLNJL07', 9, 1, 'GUILLERMINA', '', '', '', '', 0, '', 1),
('2008A04', ' CARMEN TABLERO HERNANDEZ', '', '', '', '', '', '', '2008-08-18', '2008-08-18', '', ',', 'F', '', 3, 1, 'MARIA', 'DEL', '', '', '', 0, '', 1),
('2008P03', ' ELIZABETH  MUÑOZ CORTES', '', '', '', '', '', '', '2008-08-18', '2008-08-18', '', ',', 'F', '', 9, 1, 'NOEMI', '', '', '', '', 0, '', 1),
('2010P01', ' RAMIREZ', '', '', '', '', '', '', '2010-08-23', '2010-08-23', '', ',', 'F', '', 9, 1, 'NEIDA', 'MARTINEZ', '', '', '', 0, '', 1),
('2011P01', ' CASTILLA', '', '', '', '', '', '', '2011-08-15', '2011-08-15', '', ',', 'F', '', 9, 1, 'DAYNA', 'ZAMORA', '', '', '', 0, '', 1),
('2012P01', ' GONZALEZ', '', '', '', '', '', '', '2012-08-20', '2012-08-20', '', ',', 'F', '', 9, 1, 'PAOLA', 'SALDAÑA', '', '', '', 0, '', 1),
('2090P04', ' TOXQUI', '11 SUR NO.11505', '', '3 94 02 85', '', 'SAN FRANCISCO MAYORAZGO', '72480', '1990-09-01', '1990-09-01', '', ',', 'F', 'BETJ640401MPLRXQ09', 9, 1, 'JAQUELINA', 'BERNARDINO', '', '', '', 0, '', 1),
('2091P01', ' CHINO HERNANDEZ', 'CIRCUITO MARTE NO.43', '', '2 10 37 08', '', 'MAGISTERIO 2000', '', '1991-08-01', '1991-08-01', '', ',', 'F', 'CIHA630612MVZHRN07', 6, 1, 'MARIA', 'ANTONIA', '', '', '', 0, '', 1),
('2099P06', ' ARIAS', 'JACARANDAS 1161', '', '2 41 33 97', '', 'LOMAS DE CASTILLOTLA', '72490', '1999-09-01', '1999-09-01', '', ',', 'F', 'MUAE761218MPLNRL01', 9, 1, 'ELISA', 'MUNGUIA', '', '', '', 0, '', 1),
('2099P08', ' GIL PEREZ', 'JAZMINEZ EDIF. I-14', '', '2 41 45 95', '', 'U.H.LA VICTORIA', '72400', '1999-09-01', '1999-09-01', '', ',', 'F', 'GIPN620426MPLLRR02', 9, 1, 'NORMA', 'LETICIA', '', '', '', 0, '', 1),
('3000S07', ' VARGAS', 'CERRADA EUSTACIO MOZO EDIF. 17, DEPTO. 205', '', '2-18-08-86', '', 'RIVERA ANAYA', '72309', '2000-08-21', '2000-08-21', '', ',', 'F', 'LEVR700902', 10, 1, 'ROSALBA', 'LEON', '', '', '', 0, '', 1),
('3001S01', ' GARCIA', 'DIAGONAL BENITO JUAREZ #6205', '', '', '', 'GUADALUPE VICTORIA', '72320', '2001-08-20', '2001-08-20', '', ',', 'F', 'GOGU610321', 7, 1, 'VIRGINIA', 'GONZALEZ', '', '', '', 0, '', 1),
('3003S03', ' CRUZ PEREZ', '74 PONIENTE  # 2708', '', '2-206714', '0442221524461', 'LOMAS', '72230', '2003-08-18', '2003-08-18', '', ',', 'F', 'CUPU781116', 10, 1, 'VIOLETA', 'KARINA', '', '', '', 0, '', 1),
('3006S04', ' FLORES', '', '', '', '', '', '', '2006-08-21', '2006-08-21', '', ',', 'F', '', 10, 1, 'ROSALBA', 'PEÑUELA', '', '', '', 0, '', 1),
('3007S01', ' TELLEZ GIRON MENDOZA', 'RETORNO TULIPANES  15B', '', '2 362641', '', 'LAS MERCEDES', '72490', '2007-08-20', '2007-08-20', '', ',', 'F', 'TEMG760920MPLLND05', 10, 1, 'MARIA', 'GUADALUPE', '', '', '', 0, '', 1),
('3010S02', ' HERNANDEZ ORTEGA', '', '', '', '', '', '', '2010-08-23', '2010-08-23', '', ',', 'M', '', 10, 1, 'JOSE', 'ALFONSO', '', '', '', 0, '', 1),
('3011S01', ' TEYUCA', '', '', '', '', '', '', '2011-08-15', '2011-08-15', '', ',', 'F', '', 10, 1, 'ELIZABETH', 'GARCIA', '', '', '', 0, '', 1),
('3011S02', ' SANTIAGO', '', '', '', '', '', '', '2011-08-15', '2011-08-15', '', ',', 'F', '', 10, 1, 'DESSIRE', 'JUAREZ', '', '', '', 0, '', 1),
('3011S03', ' CARRILLO CRUZ', '', '', '', '', '', '', '2011-08-15', '2011-08-15', '', ',', 'M', '', 10, 1, 'VICTOR', 'HUGO', '', '', '', 0, '', 1),
('3011S04', ' FLORES RODRIGUEZ', '', '', '', '', '', '', '2011-08-15', '2011-08-15', '', ',', 'F', '', 10, 1, 'GUADALUPE', 'ROXANA', '', '', '', 0, '', 1),
('3011S05', ' WILSON HERNANDEZ', '', '', '', '', '', '', '2011-10-01', '2011-10-01', '', ',', 'M', '', 18, 1, 'JESUS', 'ARTURO', '', '', '', 0, '', 1),
('3012E01', ' TORRES', '', '', '', '', '', '', '2012-08-20', '2012-08-20', '', ',', 'F', '', 16, 1, 'ERIKA', 'SANCHEZ', '', '', '', 0, '', 1),
('3012S01', ' SEGURA SERES', '', '', '', '', '', '', '2012-08-20', '2012-08-20', '', ',', 'M', '', 7, 1, 'JESUS', 'SALVADOR', '', '', '', 0, '', 1),
('3012S02', ' LIMA', '', '', '', '', '', '', '2012-08-20', '2012-08-20', '', ',', 'F', '', 10, 1, 'CARMINA', 'CHALTEL', '', '', '', 0, '', 1),
('3012S03', ' VARGAS', '', '', '', '', '', '', '2012-08-20', '2012-08-20', '', ',', 'F', '', 10, 1, 'ARACELI', 'CRUZ', '', '', '', 0, '', 1),
('3013S01', ' RAMIREZ', '', '', '', '', '', '', '2004-08-15', '2004-08-15', '', ',', 'F', '', 10, 1, 'GEMA', 'HERNANDEZ', '', '', '', 0, '', 1),
('3097S02', ' ROSAS RAMOS', 'QUETZALCOATL  #65', '', '2-160035', '', 'LOMAS DE SN. MIGUEL', '72573', '1997-08-25', '1997-08-25', '', ',', 'M', 'RORP640630PSO', 10, 1, 'PABLO', 'OTHON', '', '', '', 0, '', 1),
('4006A04', ' MORALES BERMUDEZ', 'TECAMACHALCO  #749-  PRIV. DE LAS CARABELAS #2  FRACC.  VILLAS AMERICA', 'SAMOBE90@YAHOO.COM.MX', '1-873597', '2222597668', 'VICENTE GUERRERO', '72470', '2006-08-21', '2006-08-21', 'O POSITIVO', ',', 'F', '', 2, 1, 'SANDRA', 'CARMINA', '', '', '', 0, '', 1),
('4013A01', ' BARCENAS', '', '', '', '', '', '', '2013-09-01', '2013-09-01', '', ',', 'M', '', 2, 1, 'ADRIANA', 'JOFFRE', '', '', '', 0, '', 1),
('4087DIR', ' LOPEZ', '117 PONIENTE #1315', '', '1301006', '', 'SN. FCO. MAYORAZGO', '72460', '1987-09-01', '1987-09-01', 'O POSITIVO', ',', 'F', '', 1, 1, 'GLORIA', 'JIMENEZ', '', '', '', 0, '', 1),
('4092A01', ' JUAREZ THOME', 'PROLONGACION 11 SUR 11505', '', '2 19 26 55', '', 'SN.FRANCISCO MAYORAZGO', '72480', '1992-08-01', '1992-08-01', '', ',', 'F', 'JUTA650426MPLRHM06', 4, 1, 'MARIA', 'AMALIA', '', '', '', 0, '', 1),
('4097DIR', ' JESUS NAVARRO JIMENEZ', 'RINCON DE LAS JACARANDAS 46', 'RONAVARROJ@HOTMAIL.COM', '21094316', '0442221833771', 'FRACC. ARBOLEDAS', '72460', '1997-09-01', '1997-09-01', 'O+', ',', 'F', 'NAJR730604MCSVMC05', 1, 1, 'ROCIO', 'DE', '', '', '', 0, '', 1),
('4098A02', ' GALLARDO MARTINEZ', 'MAZANA 5 LOTE 17 UNIDAD ELECT.', '', '', '2224257966', 'SUTERM', '72490', '1998-02-02', '1998-02-02', '0 RH POSITIVO', ',', 'F', 'GAME500722MPLLRS07', 17, 1, 'MARIA', 'ESTHER', '', '', '', 0, '', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grado`
--

CREATE TABLE `grado` (
  `idgrado` int(11) NOT NULL,
  `idseccion` int(11) NOT NULL,
  `numgrado` tinyint(4) NOT NULL,
  `ultimogrado` tinyint(4) DEFAULT '0',
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `grado`
--

INSERT INTO `grado` (`idgrado`, `idseccion`, `numgrado`, `ultimogrado`, `status`) VALUES
(1, 36, 1, 0, 1),
(2, 36, 2, 0, 1),
(3, 36, 3, 0, 1),
(4, 37, 1, 0, 1),
(5, 37, 2, 0, 1),
(6, 37, 3, 0, 1),
(7, 37, 4, 0, 1),
(8, 37, 5, 0, 1),
(9, 37, 6, 0, 1),
(10, 38, 1, 0, 1),
(11, 38, 2, 0, 1),
(12, 38, 3, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grupo`
--

CREATE TABLE `grupo` (
  `idgrupo` int(11) NOT NULL,
  `nomgrupo` varchar(30) NOT NULL,
  `descripcion` varchar(80) DEFAULT NULL,
  `capacidad` smallint(6) NOT NULL,
  `idgrado` int(11) DEFAULT NULL,
  `tipogrupo` tinyint(4) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `grupo`
--

INSERT INTO `grupo` (`idgrupo`, `nomgrupo`, `descripcion`, `capacidad`, `idgrado`, `tipogrupo`, `status`) VALUES
(1, '1A', 'PREESCOLAR', 40, 1, 0, 1),
(2, '2A', 'PREESCOLAR', 41, 2, 0, 1),
(3, '3A', 'PREESCOLAR', 40, 3, 0, 1),
(4, '1A', 'PRIMARIA', 39, 4, 0, 1),
(5, '1B', 'PRIMARIA', 39, 4, 0, 1),
(6, '2A', 'PRIMARIA', 39, 5, 0, 1),
(7, '2B', 'PRIMARIA', 39, 5, 0, 1),
(8, '3A', 'PRIMARIA', 39, 6, 0, 1),
(9, '3B', 'PRIMARIA', 39, 6, 0, 1),
(10, '4A', 'PRIMARIA', 39, 7, 0, 1),
(11, '4B', 'PRIMARIA', 39, 7, 0, 1),
(12, '5A', 'PRIMARIA', 39, 8, 0, 1),
(13, '5B', 'PRIMARIA', 39, 8, 0, 1),
(14, '6A', 'PRIMARIA', 39, 9, 0, 1),
(15, '6B', 'PRIMARIA', 39, 9, 0, 1),
(16, '1A', 'SECUNDARIA', 39, 10, 0, 1),
(17, '1B', 'SECUNDARIA', 39, 10, 0, 1),
(18, '2A', 'SECUNDARIA', 39, 11, 0, 1),
(19, '3A', 'SECUNDARIA', 39, 12, 0, 1),
(20, '3B', 'SECUNDARIA', 39, 12, 0, 1),
(21, '1B', 'PREESCOLAR', 30, 1, 0, 1),
(22, '2B', 'PREESCOLAR', 40, 2, 0, 1),
(23, '3B', 'PREESCOLAR', 30, 3, 0, 1),
(24, '2B', 'SECUNDARIA', 35, 11, 0, 1),
(28, '10C', 'Pruebas 2', 99, 11, 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grupo_alumno`
--

CREATE TABLE `grupo_alumno` (
  `idgrupo_materia` int(11) NOT NULL,
  `matricula` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grupo_materia`
--

CREATE TABLE `grupo_materia` (
  `idgrupo_materia` int(11) NOT NULL,
  `idgrupo` int(11) NOT NULL,
  `idmateria` varchar(11) NOT NULL,
  `idprofesor` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horario`
--

CREATE TABLE `horario` (
  `idhorario` int(11) NOT NULL,
  `idsalon` int(11) NOT NULL,
  `idprofesor` varchar(45) NOT NULL,
  `idgrupo` int(11) NOT NULL,
  `idmateria` varchar(45) NOT NULL,
  `orden` tinyint(4) DEFAULT NULL,
  `ordenboletin` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `horario`
--

INSERT INTO `horario` (`idhorario`, `idsalon`, `idprofesor`, `idgrupo`, `idmateria`, `orden`, `ordenboletin`) VALUES
(13, 10, '3003S03', 18, 'SE02E', 1, 1),
(14, 10, '3097S02', 18, 'SE02M', 3, 3),
(15, 10, '3011S03', 18, 'SE02H', 6, 6),
(17, 10, '3013S01', 18, 'SE02C', 7, 7),
(19, 10, '3012S02', 18, 'SE02F', 4, 4),
(20, 10, '0097E03', 18, 'SE02I', 2, 2),
(21, 10, '3012E01', 18, 'SE02EA', 9, 9),
(22, 10, '0090E02', 18, 'SE02EF', 8, 8),
(23, 10, '0004E04', 18, 'SE02ET', 5, 5),
(26, 11, '3003S03', 19, 'SE03E', 1, 1),
(27, 11, '3097S02', 19, 'SE03M', 3, 3),
(28, 11, '3011S03', 19, 'SE03H', 6, 6),
(29, 11, '3013S01', 19, 'SE03C', 7, 7),
(31, 11, '3000S07', 19, 'SE03Q', 4, 4),
(32, 11, '0097E03', 19, 'SE03I', 2, 2),
(34, 11, '3012E01', 19, 'SE03EA', 9, 9),
(35, 11, '0090E02', 19, 'SE03EF', 8, 8),
(36, 11, '0004E04', 19, 'SE03ET', 5, 5),
(56, 9, '3003S03', 16, 'SE01E', 1, 1),
(57, 9, '3011S01', 16, 'SE01M', 3, 3),
(65, 9, '0090E02', 16, 'SE01EF', 9, 9),
(77, 0, '2090P04', 8, 'PR03M', 2, 2),
(78, 0, '2090P04', 8, 'PR03E', 1, 1),
(79, 0, '2090P04', 8, 'PR03CN', 3, 3),
(80, 0, '2090P04', 8, 'PR03H', 4, 4),
(81, 0, '2090P04', 8, 'PR03G', 5, 5),
(82, 0, '2090P04', 8, 'PR03EC', 6, 6),
(83, 0, '3012E01', 8, 'PR03EA', 8, 8),
(84, 0, '0012E01', 8, 'PR03EF', 7, 7),
(85, 0, '0013P01', 8, 'PR03IN', 9, 9),
(86, 6, '3007S01', 10, 'PR04M', 2, 2),
(87, 6, '3007S01', 10, 'PR04E', 1, 1),
(88, 6, '3007S01', 10, 'PR04CN', 3, 3),
(89, 6, '3007S01', 10, 'PR04H', 5, 5),
(90, 6, '3007S01', 10, 'PR04G', 4, 4),
(91, 6, '3007S01', 10, 'PR04EC', 6, 6),
(92, 6, '3012E01', 10, 'PR04EA', 8, 8),
(93, 6, '0090E02', 10, 'PR04EF', 7, 7),
(94, 6, '0012E02', 10, 'PR04IN', 9, 9),
(95, 6, '3011S01', 10, 'PR04ET', 10, 10),
(96, 7, '2099P06', 12, 'PR05M', 2, 2),
(97, 7, '2099P06', 12, 'PR05E', 1, 1),
(98, 7, '2099P06', 12, 'PR05CN', 3, 3),
(99, 7, '2099P06', 12, 'PR05H', 5, 5),
(100, 7, '2099P06', 12, 'PR05G', 4, 4),
(101, 7, '2099P06', 12, 'PR05EC', 6, 6),
(102, 7, '3012E01', 12, 'PR05EA', 8, 8),
(103, 7, '0090E02', 12, 'PR05EF', 7, 7),
(104, 7, '0012E02', 12, 'PR05IN', 9, 9),
(105, 7, '3011S01', 12, 'PR05ET', 10, 10),
(106, 8, '2001P09', 14, 'PR06M', 2, 2),
(107, 8, '2001P09', 14, 'PR06E', 1, 1),
(108, 8, '2001P09', 14, 'PR06CN', 3, 3),
(109, 8, '2001P09', 14, 'PR06H', 5, 5),
(110, 8, '2001P09', 14, 'PR06G', 4, 4),
(111, 8, '2001P09', 14, 'PR06EC', 6, 6),
(112, 8, '3012E01', 14, 'PR06EA', 8, 8),
(113, 8, '0090E02', 14, 'PR06EF', 7, 7),
(114, 8, '0012E02', 14, 'PR06IN', 9, 9),
(115, 8, '3011S01', 14, 'PR06ET', 10, 10),
(116, 13, '2002P05', 4, 'PR01M', 2, 2),
(117, 13, '2002P05', 4, ' PR01E', 1, 1),
(118, 13, '2002P05', 4, 'PR01CM', 3, 3),
(119, 13, '3012E01', 4, 'PR01EA', 6, 6),
(120, 13, '0012E01', 4, 'PR01EF', 5, 5),
(121, 13, '0013P01', 4, 'PR01IN', 7, 7),
(122, 12, '2010P01', 5, 'PR01M', 2, 2),
(123, 12, '2010P01', 5, ' PR01E', 1, 1),
(124, 12, '2010P01', 5, 'PR01CM', 3, 3),
(125, 12, '3012E01', 5, 'PR01EA', 6, 6),
(126, 12, '0012E01', 5, 'PR01EF', 5, 5),
(127, 12, '0013P01', 5, 'PR01IN', 7, 7),
(128, 17, '2007P02', 6, 'PR02M', 2, 2),
(129, 17, '2007P02', 6, 'PR02E', 1, 1),
(130, 17, '2007P02', 6, 'PR02CM', 3, 3),
(131, 17, '3012E01', 6, 'PR02EA', 6, 6),
(132, 17, '0012E01', 6, 'PR02EF', 5, 5),
(133, 17, '0013P01', 6, 'PR02IN', 7, 7),
(134, 0, '1009J03', 7, 'PR02M', 2, 2),
(135, 0, '1009J03', 7, 'PR02E', 1, 1),
(136, 0, '1009J03', 7, 'PR02CM', 3, 3),
(137, 0, '3012E01', 7, 'PR02EA', 6, 6),
(138, 0, '0012E01', 7, 'PR02EF', 5, 5),
(139, 0, '0013P01', 7, 'PR02IN', 7, 7),
(143, 10, '3010S02', 18, 'SE02COA', 11, 11),
(145, 11, '3010S02', 19, 'SE03COA', 11, 11),
(149, 10, '3010S02', 18, 'SE02CON', 12, 12),
(150, 10, '3010S02', 18, 'SE02DES', 13, 13),
(151, 10, '3010S02', 18, 'SE02EXP', 14, 14),
(152, 11, '3010S02', 19, 'SE03CON', 12, 12),
(153, 11, '3010S02', 19, 'SE03DES', 13, 13),
(154, 11, '3010S02', 19, 'SE03EXP', 14, 14),
(157, 10, '3010S02', 18, 'REBIM2', 10, 10),
(158, 11, '3010S02', 19, 'REBIM3', 10, 10),
(159, 0, '2099P08', 4, 'PRI01CON', 8, 8),
(160, 0, '2099P08', 4, 'PRI01DES', 9, 9),
(161, 0, '2099P08', 5, 'PRI01CON', 8, 8),
(162, 0, '2099P08', 5, 'PRI01DES', 9, 9),
(163, 0, '2099P08', 6, 'PRI02CON', 8, 8),
(164, 0, '2099P08', 6, 'PRI02DES', 9, 9),
(165, 0, '2099P08', 7, 'PRI02CON', 8, 8),
(166, 0, '2099P08', 7, 'PRI02DES', 9, 9),
(167, 0, '2099P08', 8, 'PRI03CON', 10, 10),
(168, 0, '2099P08', 8, 'PRI03DES', 11, 11),
(169, 0, '2099P08', 10, 'PRI04CON', 11, 11),
(170, 0, '2099P08', 10, 'PRI04DES', 12, 12),
(171, 0, '2099P08', 12, 'PRI05CON', 11, 11),
(172, 0, '2099P08', 12, 'PRI05DES', 12, 12),
(173, 8, '2099P08', 14, 'PRI06CON', 11, 11),
(174, 8, '2099P08', 14, 'PRI06DES', 12, 12),
(175, 0, '2011P01', 9, 'PR03E', 1, 1),
(176, 0, '2011P01', 9, 'PR03M', 2, 2),
(177, 0, '2011P01', 9, 'PR03CN', 3, 3),
(178, 0, '2011P01', 9, 'PR03H', 4, 4),
(179, 0, '2011P01', 9, 'PR03G', 5, 5),
(180, 0, '2011P01', 9, 'PR03EC', 6, 6),
(181, 0, '3012E01', 9, 'PR03EA', 8, 8),
(182, 0, '0012E01', 9, 'PR03EF', 7, 7),
(183, 0, '0013P01', 9, 'PR03IN', 9, 9),
(184, 0, '2099P08', 9, 'PRI03CON', 10, 10),
(185, 0, '2099P08', 9, 'PRI03DES', 11, 11),
(186, 0, '0', 16, 'Receso', 5, 5),
(187, 9, '3000S07', 16, 'SE01CB', 4, 4),
(189, 9, '0097E03', 16, 'SE01I', 2, 2),
(190, 9, '0004E04', 16, 'SE01T', 6, 6),
(191, 9, '3012E01', 16, 'SE01AV', 10, 10),
(193, 9, '3011S03', 16, 'SE01G', 7, 7),
(194, 9, '3010S02', 16, 'REBIM1°', 11, 11),
(195, 9, '3010S02', 16, 'SE01COA', 12, 12),
(196, 9, '3010S02', 16, 'SE01CON', 13, 13),
(197, 9, '3010S02', 16, 'SE01DES', 14, 14),
(198, 9, '3010S02', 16, 'SE01EXP', 15, 15),
(199, 1, '2002P07', 11, 'PR04E', 1, 1),
(200, 1, '2002P07', 11, 'PR04M', 2, 2),
(201, 1, '2002P07', 11, 'PR04CN', 3, 3),
(202, 1, '2002P07', 11, 'PR04H', 5, 5),
(203, 1, '2002P07', 11, 'PR04G', 4, 4),
(204, 1, '2002P07', 11, 'PR04EC', 6, 6),
(205, 1, '3012E01', 11, 'PR04EA', 8, 8),
(206, 1, '0090E02', 11, 'PR04EF', 7, 7),
(207, 1, '3011S01', 11, 'PR04ET', 9, 9),
(208, 1, '0012E02', 11, 'PR04IN', 10, 10),
(209, 1, '2099P08', 11, 'PRI04CON', 11, 11),
(210, 1, '2099P08', 11, 'PRI04DES', 12, 12),
(211, 9, '3001S01', 16, 'SEC1IP', 8, 8),
(212, 0, '2008P03', 13, 'PR05M', 2, 2),
(213, 0, '2008P03', 13, 'PR05E', 1, 1),
(214, 0, '2008P03', 13, 'PR05CN', 3, 3),
(215, 0, '2008P03', 13, 'PR05H', 5, 5),
(216, 0, '2008P03', 13, 'PR05G', 4, 4),
(217, 0, '2008P03', 13, 'PR05EC', 6, 6),
(218, 0, '3012E01', 13, 'PR05EA', 8, 8),
(219, 0, '0090E02', 13, 'PR05EF', 7, 7),
(220, 0, '3011S01', 13, 'PR05ET', 9, 9),
(221, 0, '0012E02', 13, 'PR05IN', 10, 10),
(222, 0, '2099P08', 13, 'PRI05CON', 11, 11),
(223, 0, '2099P08', 13, 'PRI05DES', 12, 12),
(224, 27, '2091P01', 15, 'PR06E', 1, 1),
(225, 27, '2091P01', 15, 'PR06M', 2, 2),
(226, 27, '2091P01', 15, 'PR06CN', 3, 3),
(227, 27, '2091P01', 15, 'PR06H', 5, 5),
(228, 27, '2091P01', 15, 'PR06G', 4, 4),
(229, 27, '2091P01', 15, 'PR06EC', 6, 6),
(230, 27, '3012E01', 15, 'PR06EA', 8, 8),
(231, 27, '0090E02', 15, 'PR06EF', 7, 7),
(232, 27, '3011S01', 15, 'PR06ET', 9, 9),
(233, 27, '0012E02', 15, 'PR06IN', 10, 10),
(234, 27, '2099P08', 15, 'PRI06CON', 11, 11),
(235, 27, '2099P08', 15, 'PRI06DES', 12, 12),
(236, 0, '2002P05', 4, 'PR01FC', 4, 4),
(237, 0, '2010P01', 5, 'PR01FC', 4, 4),
(238, 0, '2007P02', 6, 'PR02FC', 4, 4),
(239, 0, '1009J03', 7, 'PR02FC', 4, 4),
(240, 0, '3003S03', 17, 'SE01E', 1, 1),
(241, 0, '3011S01', 17, 'SE01M', 3, 3),
(242, 0, '3000S07', 17, 'SE01CB', 4, 4),
(245, 0, '0097E03', 17, 'SE01I', 2, 2),
(246, 0, '0004E04', 17, 'SE01T', 5, 5),
(253, 0, '3010S02', 17, 'SE01DES', 11, 11),
(254, 0, '3010S02', 17, 'SE01EXP', 12, 12),
(258, 0, '3003S03', 24, 'SE02E', 1, 1),
(259, 0, '3097S02', 24, 'SE02M', 3, 3),
(260, 0, '3012S02', 24, 'SE02F', 4, 4),
(261, 0, '3011S03', 24, 'SE02H', 6, 6),
(262, 0, '3013S01', 24, 'SE02C', 7, 7),
(263, 0, '0097E03', 24, 'SE02I', 2, 2),
(264, 0, '3012E01', 24, 'SE02EA', 9, 9),
(265, 0, '0090E02', 24, 'SE02EF', 8, 8),
(266, 0, '0004E04', 24, 'SE02ET', 5, 5),
(267, 0, '3010S02', 24, 'REBIM2', 10, 10),
(268, 0, '3010S02', 24, 'SE02COA', 11, 11),
(269, 0, '3010S02', 24, 'SE02CON', 12, 12),
(270, 0, '3010S02', 24, 'SE02DES', 13, 13),
(271, 0, '3010S02', 24, 'SE02EXP', 14, 14),
(273, 0, '0', 17, 'Receso', 10, 10),
(274, 16, '3003S03', 20, 'SE03E', 1, 1),
(275, 16, '0097E03', 20, 'SE03I', 2, 2),
(276, 16, '3097S02', 20, 'SE03M', 3, 3),
(277, 16, '3000S07', 20, 'SE03Q', 4, 4),
(278, 16, '0004E04', 20, 'SE03ET', 5, 5),
(279, 16, '3011S03', 20, 'SE03H', 6, 6),
(280, 16, '3013S01', 20, 'SE03C', 7, 7),
(281, 16, '0090E02', 20, 'SE03EF', 8, 8),
(282, 16, '3012E01', 20, 'SE03EA', 9, 9),
(283, 16, '3010S02', 20, 'REBIM3', 10, 10),
(284, 16, '3010S02', 20, 'SE03COA', 11, 11),
(285, 16, '3010S02', 20, 'SE03CON', 12, 12),
(286, 16, '3010S02', 20, 'SE03DES', 13, 13),
(287, 16, '3010S02', 20, 'SE03EXP', 14, 14),
(288, 0, '3001S01', 17, 'SEC1IP', 7, 7),
(289, 0, '3011S03', 17, 'SE01G', 6, 6),
(290, 0, '0090E02', 17, 'SE01EF', 8, 8),
(291, 0, '3012E01', 17, 'SE01AV', 9, 9),
(292, 0, '3010S02', 17, 'REBIM1°', 13, 13),
(293, 0, '3010S02', 17, 'SE01COA', 14, 14),
(294, 0, '3010S02', 17, 'SE01CON', 15, 15);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horario_dia`
--

CREATE TABLE `horario_dia` (
  `idhorario` int(11) NOT NULL,
  `dia` varchar(45) NOT NULL,
  `hora` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `horario_dia`
--

INSERT INTO `horario_dia` (`idhorario`, `dia`, `hora`) VALUES
(116, 'Lunes', '1899-12-30 00:00:00'),
(116, 'Martes', '1899-12-30 00:00:00'),
(116, 'Miercoles', '1899-12-30 00:00:00'),
(116, 'Jueves', '1899-12-30 00:00:00'),
(116, 'Viernes', '1899-12-30 00:00:00'),
(117, 'Lunes', '1899-12-30 00:00:00'),
(117, 'Martes', '1899-12-30 00:00:00'),
(117, 'Miercoles', '1899-12-30 00:00:00'),
(117, 'Jueves', '1899-12-30 00:00:00'),
(117, 'Viernes', '1899-12-30 00:00:00'),
(118, 'Lunes', '1899-12-30 00:00:00'),
(118, 'Martes', '1899-12-30 00:00:00'),
(118, 'Miercoles', '1899-12-30 00:00:00'),
(118, 'Jueves', '1899-12-30 00:00:00'),
(118, 'Viernes', '1899-12-30 00:00:00'),
(119, 'Lunes', '1899-12-30 00:00:00'),
(119, 'Martes', '1899-12-30 00:00:00'),
(119, 'Miercoles', '1899-12-30 00:00:00'),
(119, 'Jueves', '1899-12-30 00:00:00'),
(119, 'Viernes', '1899-12-30 00:00:00'),
(120, 'Lunes', '1899-12-30 00:00:00'),
(120, 'Martes', '1899-12-30 00:00:00'),
(120, 'Miercoles', '1899-12-30 00:00:00'),
(120, 'Jueves', '1899-12-30 00:00:00'),
(120, 'Viernes', '1899-12-30 00:00:00'),
(121, 'Lunes', '1899-12-30 00:00:00'),
(121, 'Martes', '1899-12-30 00:00:00'),
(121, 'Miercoles', '1899-12-30 00:00:00'),
(121, 'Jueves', '1899-12-30 00:00:00'),
(121, 'Viernes', '1899-12-30 00:00:00'),
(159, 'Lunes', '1899-12-30 00:00:00'),
(159, 'Martes', '1899-12-30 00:00:00'),
(159, 'Miercoles', '1899-12-30 00:00:00'),
(159, 'Jueves', '1899-12-30 00:00:00'),
(159, 'Viernes', '1899-12-30 00:00:00'),
(160, 'Lunes', '1899-12-30 00:00:00'),
(160, 'Martes', '1899-12-30 00:00:00'),
(160, 'Miercoles', '1899-12-30 00:00:00'),
(160, 'Jueves', '1899-12-30 00:00:00'),
(160, 'Viernes', '1899-12-30 00:00:00'),
(236, 'Lunes', '1899-12-30 00:00:00'),
(236, 'Martes', '1899-12-30 00:00:00'),
(236, 'Miercoles', '1899-12-30 00:00:00'),
(236, 'Jueves', '1899-12-30 00:00:00'),
(236, 'Viernes', '1899-12-30 00:00:00'),
(122, 'Lunes', '1899-12-30 00:00:00'),
(122, 'Martes', '1899-12-30 00:00:00'),
(122, 'Miercoles', '1899-12-30 00:00:00'),
(122, 'Jueves', '1899-12-30 00:00:00'),
(122, 'Viernes', '1899-12-30 00:00:00'),
(123, 'Lunes', '1899-12-30 00:00:00'),
(123, 'Martes', '1899-12-30 00:00:00'),
(123, 'Miercoles', '1899-12-30 00:00:00'),
(123, 'Jueves', '1899-12-30 00:00:00'),
(123, 'Viernes', '1899-12-30 00:00:00'),
(124, 'Lunes', '1899-12-30 00:00:00'),
(124, 'Martes', '1899-12-30 00:00:00'),
(124, 'Miercoles', '1899-12-30 00:00:00'),
(124, 'Jueves', '1899-12-30 00:00:00'),
(124, 'Viernes', '1899-12-30 00:00:00'),
(125, 'Lunes', '1899-12-30 00:00:00'),
(125, 'Martes', '1899-12-30 00:00:00'),
(125, 'Miercoles', '1899-12-30 00:00:00'),
(125, 'Jueves', '1899-12-30 00:00:00'),
(125, 'Viernes', '1899-12-30 00:00:00'),
(126, 'Lunes', '1899-12-30 00:00:00'),
(126, 'Martes', '1899-12-30 00:00:00'),
(126, 'Miercoles', '1899-12-30 00:00:00'),
(126, 'Jueves', '1899-12-30 00:00:00'),
(126, 'Viernes', '1899-12-30 00:00:00'),
(127, 'Lunes', '1899-12-30 00:00:00'),
(127, 'Martes', '1899-12-30 00:00:00'),
(127, 'Miercoles', '1899-12-30 00:00:00'),
(127, 'Jueves', '1899-12-30 00:00:00'),
(127, 'Viernes', '1899-12-30 00:00:00'),
(161, 'Lunes', '1899-12-30 00:00:00'),
(161, 'Martes', '1899-12-30 00:00:00'),
(161, 'Miercoles', '1899-12-30 00:00:00'),
(161, 'Jueves', '1899-12-30 00:00:00'),
(161, 'Viernes', '1899-12-30 00:00:00'),
(162, 'Lunes', '1899-12-30 00:00:00'),
(162, 'Martes', '1899-12-30 00:00:00'),
(162, 'Miercoles', '1899-12-30 00:00:00'),
(162, 'Jueves', '1899-12-30 00:00:00'),
(162, 'Viernes', '1899-12-30 00:00:00'),
(237, 'Lunes', '1899-12-30 00:00:00'),
(237, 'Martes', '1899-12-30 00:00:00'),
(237, 'Miercoles', '1899-12-30 00:00:00'),
(237, 'Jueves', '1899-12-30 00:00:00'),
(237, 'Viernes', '1899-12-30 00:00:00'),
(128, 'Lunes', '1899-12-30 00:00:00'),
(128, 'Martes', '1899-12-30 00:00:00'),
(128, 'Miercoles', '1899-12-30 00:00:00'),
(128, 'Jueves', '1899-12-30 00:00:00'),
(128, 'Viernes', '1899-12-30 00:00:00'),
(129, 'Lunes', '1899-12-30 00:00:00'),
(129, 'Martes', '1899-12-30 00:00:00'),
(129, 'Miercoles', '1899-12-30 00:00:00'),
(129, 'Jueves', '1899-12-30 00:00:00'),
(129, 'Viernes', '1899-12-30 00:00:00'),
(130, 'Lunes', '1899-12-30 00:00:00'),
(130, 'Martes', '1899-12-30 00:00:00'),
(130, 'Miercoles', '1899-12-30 00:00:00'),
(130, 'Jueves', '1899-12-30 00:00:00'),
(130, 'Viernes', '1899-12-30 00:00:00'),
(131, 'Lunes', '1899-12-30 00:00:00'),
(131, 'Martes', '1899-12-30 00:00:00'),
(131, 'Miercoles', '1899-12-30 00:00:00'),
(131, 'Jueves', '1899-12-30 00:00:00'),
(131, 'Viernes', '1899-12-30 00:00:00'),
(132, 'Lunes', '1899-12-30 00:00:00'),
(132, 'Martes', '1899-12-30 00:00:00'),
(132, 'Miercoles', '1899-12-30 00:00:00'),
(132, 'Jueves', '1899-12-30 00:00:00'),
(132, 'Viernes', '1899-12-30 00:00:00'),
(133, 'Lunes', '1899-12-30 00:00:00'),
(133, 'Martes', '1899-12-30 00:00:00'),
(133, 'Miercoles', '1899-12-30 00:00:00'),
(133, 'Jueves', '1899-12-30 00:00:00'),
(133, 'Viernes', '1899-12-30 00:00:00'),
(163, 'Lunes', '1899-12-30 00:00:00'),
(163, 'Martes', '1899-12-30 00:00:00'),
(163, 'Miercoles', '1899-12-30 00:00:00'),
(163, 'Jueves', '1899-12-30 00:00:00'),
(163, 'Viernes', '1899-12-30 00:00:00'),
(164, 'Lunes', '1899-12-30 00:00:00'),
(164, 'Martes', '1899-12-30 00:00:00'),
(164, 'Miercoles', '1899-12-30 00:00:00'),
(164, 'Jueves', '1899-12-30 00:00:00'),
(164, 'Viernes', '1899-12-30 00:00:00'),
(238, 'Lunes', '1899-12-30 00:00:00'),
(238, 'Martes', '1899-12-30 00:00:00'),
(238, 'Miercoles', '1899-12-30 00:00:00'),
(238, 'Jueves', '1899-12-30 00:00:00'),
(238, 'Viernes', '1899-12-30 00:00:00'),
(134, 'Lunes', '1899-12-30 00:00:00'),
(134, 'Martes', '1899-12-30 00:00:00'),
(134, 'Miercoles', '1899-12-30 00:00:00'),
(134, 'Jueves', '1899-12-30 00:00:00'),
(134, 'Viernes', '1899-12-30 00:00:00'),
(135, 'Lunes', '1899-12-30 00:00:00'),
(135, 'Martes', '1899-12-30 00:00:00'),
(135, 'Miercoles', '1899-12-30 00:00:00'),
(135, 'Jueves', '1899-12-30 00:00:00'),
(135, 'Viernes', '1899-12-30 00:00:00'),
(136, 'Lunes', '1899-12-30 00:00:00'),
(136, 'Martes', '1899-12-30 00:00:00'),
(136, 'Miercoles', '1899-12-30 00:00:00'),
(136, 'Jueves', '1899-12-30 00:00:00'),
(136, 'Viernes', '1899-12-30 00:00:00'),
(137, 'Lunes', '1899-12-30 00:00:00'),
(137, 'Martes', '1899-12-30 00:00:00'),
(137, 'Miercoles', '1899-12-30 00:00:00'),
(137, 'Jueves', '1899-12-30 00:00:00'),
(137, 'Viernes', '1899-12-30 00:00:00'),
(138, 'Lunes', '1899-12-30 00:00:00'),
(138, 'Martes', '1899-12-30 00:00:00'),
(138, 'Miercoles', '1899-12-30 00:00:00'),
(138, 'Jueves', '1899-12-30 00:00:00'),
(138, 'Viernes', '1899-12-30 00:00:00'),
(139, 'Lunes', '1899-12-30 00:00:00'),
(139, 'Martes', '1899-12-30 00:00:00'),
(139, 'Miercoles', '1899-12-30 00:00:00'),
(139, 'Jueves', '1899-12-30 00:00:00'),
(139, 'Viernes', '1899-12-30 00:00:00'),
(165, 'Lunes', '1899-12-30 00:00:00'),
(165, 'Martes', '1899-12-30 00:00:00'),
(165, 'Miercoles', '1899-12-30 00:00:00'),
(165, 'Jueves', '1899-12-30 00:00:00'),
(165, 'Viernes', '1899-12-30 00:00:00'),
(166, 'Lunes', '1899-12-30 00:00:00'),
(166, 'Martes', '1899-12-30 00:00:00'),
(166, 'Miercoles', '1899-12-30 00:00:00'),
(166, 'Jueves', '1899-12-30 00:00:00'),
(166, 'Viernes', '1899-12-30 00:00:00'),
(239, 'Lunes', '1899-12-30 00:00:00'),
(239, 'Martes', '1899-12-30 00:00:00'),
(239, 'Miercoles', '1899-12-30 00:00:00'),
(239, 'Jueves', '1899-12-30 00:00:00'),
(239, 'Viernes', '1899-12-30 00:00:00'),
(77, 'Lunes', '1899-12-30 00:00:00'),
(77, 'Martes', '1899-12-30 00:00:00'),
(77, 'Miercoles', '1899-12-30 00:00:00'),
(77, 'Jueves', '1899-12-30 00:00:00'),
(77, 'Viernes', '1899-12-30 00:00:00'),
(78, 'Lunes', '1899-12-30 00:00:00'),
(78, 'Martes', '1899-12-30 00:00:00'),
(78, 'Miercoles', '1899-12-30 00:00:00'),
(78, 'Jueves', '1899-12-30 00:00:00'),
(78, 'Viernes', '1899-12-30 00:00:00'),
(79, 'Lunes', '1899-12-30 00:00:00'),
(79, 'Martes', '1899-12-30 00:00:00'),
(79, 'Miercoles', '1899-12-30 00:00:00'),
(79, 'Jueves', '1899-12-30 00:00:00'),
(79, 'Viernes', '1899-12-30 00:00:00'),
(80, 'Lunes', '1899-12-30 00:00:00'),
(80, 'Martes', '1899-12-30 00:00:00'),
(80, 'Miercoles', '1899-12-30 00:00:00'),
(80, 'Jueves', '1899-12-30 00:00:00'),
(80, 'Viernes', '1899-12-30 00:00:00'),
(81, 'Lunes', '1899-12-30 00:00:00'),
(81, 'Martes', '1899-12-30 00:00:00'),
(81, 'Miercoles', '1899-12-30 00:00:00'),
(81, 'Jueves', '1899-12-30 00:00:00'),
(81, 'Viernes', '1899-12-30 00:00:00'),
(82, 'Lunes', '1899-12-30 00:00:00'),
(82, 'Martes', '1899-12-30 00:00:00'),
(82, 'Miercoles', '1899-12-30 00:00:00'),
(82, 'Jueves', '1899-12-30 00:00:00'),
(82, 'Viernes', '1899-12-30 00:00:00'),
(83, 'Lunes', '1899-12-30 00:00:00'),
(83, 'Martes', '1899-12-30 00:00:00'),
(83, 'Miercoles', '1899-12-30 00:00:00'),
(83, 'Jueves', '1899-12-30 00:00:00'),
(83, 'Viernes', '1899-12-30 00:00:00'),
(84, 'Lunes', '1899-12-30 00:00:00'),
(84, 'Martes', '1899-12-30 00:00:00'),
(84, 'Miercoles', '1899-12-30 00:00:00'),
(84, 'Jueves', '1899-12-30 00:00:00'),
(84, 'Viernes', '1899-12-30 00:00:00'),
(85, 'Lunes', '1899-12-30 00:00:00'),
(85, 'Martes', '1899-12-30 00:00:00'),
(85, 'Miercoles', '1899-12-30 00:00:00'),
(85, 'Jueves', '1899-12-30 00:00:00'),
(85, 'Viernes', '1899-12-30 00:00:00'),
(167, 'Lunes', '1899-12-30 00:00:00'),
(167, 'Martes', '1899-12-30 00:00:00'),
(167, 'Miercoles', '1899-12-30 00:00:00'),
(167, 'Jueves', '1899-12-30 00:00:00'),
(167, 'Viernes', '1899-12-30 00:00:00'),
(168, 'Lunes', '1899-12-30 00:00:00'),
(168, 'Martes', '1899-12-30 00:00:00'),
(168, 'Miercoles', '1899-12-30 00:00:00'),
(168, 'Jueves', '1899-12-30 00:00:00'),
(168, 'Viernes', '1899-12-30 00:00:00'),
(175, 'Lunes', '1899-12-30 00:00:00'),
(175, 'Martes', '1899-12-30 00:00:00'),
(175, 'Miercoles', '1899-12-30 00:00:00'),
(175, 'Jueves', '1899-12-30 00:00:00'),
(175, 'Viernes', '1899-12-30 00:00:00'),
(176, 'Lunes', '1899-12-30 00:00:00'),
(176, 'Martes', '1899-12-30 00:00:00'),
(176, 'Miercoles', '1899-12-30 00:00:00'),
(176, 'Jueves', '1899-12-30 00:00:00'),
(176, 'Viernes', '1899-12-30 00:00:00'),
(177, 'Lunes', '1899-12-30 00:00:00'),
(177, 'Martes', '1899-12-30 00:00:00'),
(177, 'Miercoles', '1899-12-30 00:00:00'),
(177, 'Jueves', '1899-12-30 00:00:00'),
(177, 'Viernes', '1899-12-30 00:00:00'),
(178, 'Lunes', '1899-12-30 00:00:00'),
(178, 'Martes', '1899-12-30 00:00:00'),
(178, 'Miercoles', '1899-12-30 00:00:00'),
(178, 'Jueves', '1899-12-30 00:00:00'),
(178, 'Viernes', '1899-12-30 00:00:00'),
(179, 'Lunes', '1899-12-30 00:00:00'),
(179, 'Martes', '1899-12-30 00:00:00'),
(179, 'Miercoles', '1899-12-30 00:00:00'),
(179, 'Jueves', '1899-12-30 00:00:00'),
(179, 'Viernes', '1899-12-30 00:00:00'),
(180, 'Lunes', '1899-12-30 00:00:00'),
(180, 'Martes', '1899-12-30 00:00:00'),
(180, 'Miercoles', '1899-12-30 00:00:00'),
(180, 'Jueves', '1899-12-30 00:00:00'),
(180, 'Viernes', '1899-12-30 00:00:00'),
(181, 'Lunes', '1899-12-30 00:00:00'),
(181, 'Martes', '1899-12-30 00:00:00'),
(181, 'Miercoles', '1899-12-30 00:00:00'),
(181, 'Jueves', '1899-12-30 00:00:00'),
(181, 'Viernes', '1899-12-30 00:00:00'),
(182, 'Lunes', '1899-12-30 00:00:00'),
(182, 'Martes', '1899-12-30 00:00:00'),
(182, 'Miercoles', '1899-12-30 00:00:00'),
(182, 'Jueves', '1899-12-30 00:00:00'),
(182, 'Viernes', '1899-12-30 00:00:00'),
(183, 'Lunes', '1899-12-30 00:00:00'),
(183, 'Martes', '1899-12-30 00:00:00'),
(183, 'Miercoles', '1899-12-30 00:00:00'),
(183, 'Jueves', '1899-12-30 00:00:00'),
(183, 'Viernes', '1899-12-30 00:00:00'),
(184, 'Lunes', '1899-12-30 00:00:00'),
(184, 'Martes', '1899-12-30 00:00:00'),
(184, 'Miercoles', '1899-12-30 00:00:00'),
(184, 'Jueves', '1899-12-30 00:00:00'),
(184, 'Viernes', '1899-12-30 00:00:00'),
(185, 'Lunes', '1899-12-30 00:00:00'),
(185, 'Martes', '1899-12-30 00:00:00'),
(185, 'Miercoles', '1899-12-30 00:00:00'),
(185, 'Jueves', '1899-12-30 00:00:00'),
(185, 'Viernes', '1899-12-30 00:00:00'),
(86, 'Lunes', '1899-12-30 00:00:00'),
(86, 'Martes', '1899-12-30 00:00:00'),
(86, 'Miercoles', '1899-12-30 00:00:00'),
(86, 'Jueves', '1899-12-30 00:00:00'),
(86, 'Viernes', '1899-12-30 00:00:00'),
(87, 'Lunes', '1899-12-30 00:00:00'),
(87, 'Martes', '1899-12-30 00:00:00'),
(87, 'Miercoles', '1899-12-30 00:00:00'),
(87, 'Jueves', '1899-12-30 00:00:00'),
(87, 'Viernes', '1899-12-30 00:00:00'),
(88, 'Lunes', '1899-12-30 00:00:00'),
(88, 'Martes', '1899-12-30 00:00:00'),
(88, 'Miercoles', '1899-12-30 00:00:00'),
(88, 'Jueves', '1899-12-30 00:00:00'),
(88, 'Viernes', '1899-12-30 00:00:00'),
(89, 'Lunes', '1899-12-30 00:00:00'),
(89, 'Martes', '1899-12-30 00:00:00'),
(89, 'Miercoles', '1899-12-30 00:00:00'),
(89, 'Jueves', '1899-12-30 00:00:00'),
(89, 'Viernes', '1899-12-30 00:00:00'),
(90, 'Lunes', '1899-12-30 00:00:00'),
(90, 'Martes', '1899-12-30 00:00:00'),
(90, 'Miercoles', '1899-12-30 00:00:00'),
(90, 'Jueves', '1899-12-30 00:00:00'),
(90, 'Viernes', '1899-12-30 00:00:00'),
(91, 'Lunes', '1899-12-30 00:00:00'),
(91, 'Martes', '1899-12-30 00:00:00'),
(91, 'Miercoles', '1899-12-30 00:00:00'),
(91, 'Jueves', '1899-12-30 00:00:00'),
(91, 'Viernes', '1899-12-30 00:00:00'),
(92, 'Lunes', '1899-12-30 00:00:00'),
(92, 'Martes', '1899-12-30 00:00:00'),
(92, 'Miercoles', '1899-12-30 00:00:00'),
(92, 'Jueves', '1899-12-30 00:00:00'),
(92, 'Viernes', '1899-12-30 00:00:00'),
(93, 'Lunes', '1899-12-30 00:00:00'),
(93, 'Martes', '1899-12-30 00:00:00'),
(93, 'Miercoles', '1899-12-30 00:00:00'),
(93, 'Jueves', '1899-12-30 00:00:00'),
(93, 'Viernes', '1899-12-30 00:00:00'),
(94, 'Lunes', '1899-12-30 00:00:00'),
(94, 'Martes', '1899-12-30 00:00:00'),
(94, 'Miercoles', '1899-12-30 00:00:00'),
(94, 'Jueves', '1899-12-30 00:00:00'),
(94, 'Viernes', '1899-12-30 00:00:00'),
(95, 'Lunes', '1899-12-30 00:00:00'),
(95, 'Martes', '1899-12-30 00:00:00'),
(95, 'Miercoles', '1899-12-30 00:00:00'),
(95, 'Jueves', '1899-12-30 00:00:00'),
(95, 'Viernes', '1899-12-30 00:00:00'),
(169, 'Lunes', '1899-12-30 00:00:00'),
(169, 'Martes', '1899-12-30 00:00:00'),
(169, 'Miercoles', '1899-12-30 00:00:00'),
(169, 'Jueves', '1899-12-30 00:00:00'),
(169, 'Viernes', '1899-12-30 00:00:00'),
(170, 'Lunes', '1899-12-30 00:00:00'),
(170, 'Martes', '1899-12-30 00:00:00'),
(170, 'Miercoles', '1899-12-30 00:00:00'),
(170, 'Jueves', '1899-12-30 00:00:00'),
(170, 'Viernes', '1899-12-30 00:00:00'),
(199, 'Lunes', '1899-12-30 00:00:00'),
(199, 'Martes', '1899-12-30 00:00:00'),
(199, 'Miercoles', '1899-12-30 00:00:00'),
(199, 'Jueves', '1899-12-30 00:00:00'),
(199, 'Viernes', '1899-12-30 00:00:00'),
(200, 'Lunes', '1899-12-30 00:00:00'),
(200, 'Martes', '1899-12-30 00:00:00'),
(200, 'Miercoles', '1899-12-30 00:00:00'),
(200, 'Jueves', '1899-12-30 00:00:00'),
(200, 'Viernes', '1899-12-30 00:00:00'),
(201, 'Lunes', '1899-12-30 00:00:00'),
(201, 'Martes', '1899-12-30 00:00:00'),
(201, 'Miercoles', '1899-12-30 00:00:00'),
(201, 'Jueves', '1899-12-30 00:00:00'),
(201, 'Viernes', '1899-12-30 00:00:00'),
(202, 'Lunes', '1899-12-30 00:00:00'),
(202, 'Martes', '1899-12-30 00:00:00'),
(202, 'Miercoles', '1899-12-30 00:00:00'),
(202, 'Jueves', '1899-12-30 00:00:00'),
(202, 'Viernes', '1899-12-30 00:00:00'),
(203, 'Lunes', '1899-12-30 00:00:00'),
(203, 'Martes', '1899-12-30 00:00:00'),
(203, 'Miercoles', '1899-12-30 00:00:00'),
(203, 'Jueves', '1899-12-30 00:00:00'),
(203, 'Viernes', '1899-12-30 00:00:00'),
(204, 'Lunes', '1899-12-30 00:00:00'),
(204, 'Martes', '1899-12-30 00:00:00'),
(204, 'Miercoles', '1899-12-30 00:00:00'),
(204, 'Jueves', '1899-12-30 00:00:00'),
(204, 'Viernes', '1899-12-30 00:00:00'),
(205, 'Lunes', '1899-12-30 00:00:00'),
(205, 'Martes', '1899-12-30 00:00:00'),
(205, 'Miercoles', '1899-12-30 00:00:00'),
(205, 'Jueves', '1899-12-30 00:00:00'),
(205, 'Viernes', '1899-12-30 00:00:00'),
(206, 'Lunes', '1899-12-30 00:00:00'),
(206, 'Martes', '1899-12-30 00:00:00'),
(206, 'Miercoles', '1899-12-30 00:00:00'),
(206, 'Jueves', '1899-12-30 00:00:00'),
(206, 'Viernes', '1899-12-30 00:00:00'),
(207, 'Lunes', '1899-12-30 00:00:00'),
(207, 'Martes', '1899-12-30 00:00:00'),
(207, 'Miercoles', '1899-12-30 00:00:00'),
(207, 'Jueves', '1899-12-30 00:00:00'),
(207, 'Viernes', '1899-12-30 00:00:00'),
(208, 'Lunes', '1899-12-30 00:00:00'),
(208, 'Martes', '1899-12-30 00:00:00'),
(208, 'Miercoles', '1899-12-30 00:00:00'),
(208, 'Jueves', '1899-12-30 00:00:00'),
(208, 'Viernes', '1899-12-30 00:00:00'),
(209, 'Lunes', '1899-12-30 00:00:00'),
(209, 'Martes', '1899-12-30 00:00:00'),
(209, 'Miercoles', '1899-12-30 00:00:00'),
(209, 'Jueves', '1899-12-30 00:00:00'),
(209, 'Viernes', '1899-12-30 00:00:00'),
(210, 'Lunes', '1899-12-30 00:00:00'),
(210, 'Martes', '1899-12-30 00:00:00'),
(210, 'Miercoles', '1899-12-30 00:00:00'),
(210, 'Jueves', '1899-12-30 00:00:00'),
(210, 'Viernes', '1899-12-30 00:00:00'),
(96, 'Lunes', '1899-12-30 00:00:00'),
(96, 'Martes', '1899-12-30 00:00:00'),
(96, 'Miercoles', '1899-12-30 00:00:00'),
(96, 'Jueves', '1899-12-30 00:00:00'),
(96, 'Viernes', '1899-12-30 00:00:00'),
(97, 'Lunes', '1899-12-30 00:00:00'),
(97, 'Martes', '1899-12-30 00:00:00'),
(97, 'Miercoles', '1899-12-30 00:00:00'),
(97, 'Jueves', '1899-12-30 00:00:00'),
(97, 'Viernes', '1899-12-30 00:00:00'),
(98, 'Lunes', '1899-12-30 00:00:00'),
(98, 'Martes', '1899-12-30 00:00:00'),
(98, 'Miercoles', '1899-12-30 00:00:00'),
(98, 'Jueves', '1899-12-30 00:00:00'),
(98, 'Viernes', '1899-12-30 00:00:00'),
(99, 'Lunes', '1899-12-30 00:00:00'),
(99, 'Martes', '1899-12-30 00:00:00'),
(99, 'Miercoles', '1899-12-30 00:00:00'),
(99, 'Jueves', '1899-12-30 00:00:00'),
(99, 'Viernes', '1899-12-30 00:00:00'),
(100, 'Lunes', '1899-12-30 00:00:00'),
(100, 'Martes', '1899-12-30 00:00:00'),
(100, 'Miercoles', '1899-12-30 00:00:00'),
(100, 'Jueves', '1899-12-30 00:00:00'),
(100, 'Viernes', '1899-12-30 00:00:00'),
(101, 'Lunes', '1899-12-30 00:00:00'),
(101, 'Martes', '1899-12-30 00:00:00'),
(101, 'Miercoles', '1899-12-30 00:00:00'),
(101, 'Jueves', '1899-12-30 00:00:00'),
(101, 'Viernes', '1899-12-30 00:00:00'),
(102, 'Lunes', '1899-12-30 00:00:00'),
(102, 'Martes', '1899-12-30 00:00:00'),
(102, 'Miercoles', '1899-12-30 00:00:00'),
(102, 'Jueves', '1899-12-30 00:00:00'),
(102, 'Viernes', '1899-12-30 00:00:00'),
(103, 'Lunes', '1899-12-30 00:00:00'),
(103, 'Martes', '1899-12-30 00:00:00'),
(103, 'Miercoles', '1899-12-30 00:00:00'),
(103, 'Jueves', '1899-12-30 00:00:00'),
(103, 'Viernes', '1899-12-30 00:00:00'),
(104, 'Lunes', '1899-12-30 00:00:00'),
(104, 'Martes', '1899-12-30 00:00:00'),
(104, 'Miercoles', '1899-12-30 00:00:00'),
(104, 'Jueves', '1899-12-30 00:00:00'),
(104, 'Viernes', '1899-12-30 00:00:00'),
(105, 'Lunes', '1899-12-30 00:00:00'),
(105, 'Martes', '1899-12-30 00:00:00'),
(105, 'Miercoles', '1899-12-30 00:00:00'),
(105, 'Jueves', '1899-12-30 00:00:00'),
(105, 'Viernes', '1899-12-30 00:00:00'),
(171, 'Lunes', '1899-12-30 00:00:00'),
(171, 'Martes', '1899-12-30 00:00:00'),
(171, 'Miercoles', '1899-12-30 00:00:00'),
(171, 'Jueves', '1899-12-30 00:00:00'),
(171, 'Viernes', '1899-12-30 00:00:00'),
(172, 'Lunes', '1899-12-30 00:00:00'),
(172, 'Martes', '1899-12-30 00:00:00'),
(172, 'Miercoles', '1899-12-30 00:00:00'),
(172, 'Jueves', '1899-12-30 00:00:00'),
(172, 'Viernes', '1899-12-30 00:00:00'),
(212, 'Lunes', '1899-12-30 00:00:00'),
(212, 'Martes', '1899-12-30 00:00:00'),
(212, 'Miercoles', '1899-12-30 00:00:00'),
(212, 'Jueves', '1899-12-30 00:00:00'),
(212, 'Viernes', '1899-12-30 00:00:00'),
(213, 'Lunes', '1899-12-30 00:00:00'),
(213, 'Martes', '1899-12-30 00:00:00'),
(213, 'Miercoles', '1899-12-30 00:00:00'),
(213, 'Jueves', '1899-12-30 00:00:00'),
(213, 'Viernes', '1899-12-30 00:00:00'),
(214, 'Lunes', '1899-12-30 00:00:00'),
(214, 'Martes', '1899-12-30 00:00:00'),
(214, 'Miercoles', '1899-12-30 00:00:00'),
(214, 'Jueves', '1899-12-30 00:00:00'),
(214, 'Viernes', '1899-12-30 00:00:00'),
(215, 'Lunes', '1899-12-30 00:00:00'),
(215, 'Martes', '1899-12-30 00:00:00'),
(215, 'Miercoles', '1899-12-30 00:00:00'),
(215, 'Jueves', '1899-12-30 00:00:00'),
(215, 'Viernes', '1899-12-30 00:00:00'),
(216, 'Lunes', '1899-12-30 00:00:00'),
(216, 'Martes', '1899-12-30 00:00:00'),
(216, 'Miercoles', '1899-12-30 00:00:00'),
(216, 'Jueves', '1899-12-30 00:00:00'),
(216, 'Viernes', '1899-12-30 00:00:00'),
(217, 'Lunes', '1899-12-30 00:00:00'),
(217, 'Martes', '1899-12-30 00:00:00'),
(217, 'Miercoles', '1899-12-30 00:00:00'),
(217, 'Jueves', '1899-12-30 00:00:00'),
(217, 'Viernes', '1899-12-30 00:00:00'),
(218, 'Lunes', '1899-12-30 00:00:00'),
(218, 'Martes', '1899-12-30 00:00:00'),
(218, 'Miercoles', '1899-12-30 00:00:00'),
(218, 'Jueves', '1899-12-30 00:00:00'),
(218, 'Viernes', '1899-12-30 00:00:00'),
(219, 'Lunes', '1899-12-30 00:00:00'),
(219, 'Martes', '1899-12-30 00:00:00'),
(219, 'Miercoles', '1899-12-30 00:00:00'),
(219, 'Jueves', '1899-12-30 00:00:00'),
(219, 'Viernes', '1899-12-30 00:00:00'),
(220, 'Lunes', '1899-12-30 00:00:00'),
(220, 'Martes', '1899-12-30 00:00:00'),
(220, 'Miercoles', '1899-12-30 00:00:00'),
(220, 'Jueves', '1899-12-30 00:00:00'),
(220, 'Viernes', '1899-12-30 00:00:00'),
(221, 'Lunes', '1899-12-30 00:00:00'),
(221, 'Martes', '1899-12-30 00:00:00'),
(221, 'Miercoles', '1899-12-30 00:00:00'),
(221, 'Jueves', '1899-12-30 00:00:00'),
(221, 'Viernes', '1899-12-30 00:00:00'),
(222, 'Lunes', '1899-12-30 00:00:00'),
(222, 'Martes', '1899-12-30 00:00:00'),
(222, 'Miercoles', '1899-12-30 00:00:00'),
(222, 'Jueves', '1899-12-30 00:00:00'),
(222, 'Viernes', '1899-12-30 00:00:00'),
(223, 'Lunes', '1899-12-30 00:00:00'),
(223, 'Martes', '1899-12-30 00:00:00'),
(223, 'Miercoles', '1899-12-30 00:00:00'),
(223, 'Jueves', '1899-12-30 00:00:00'),
(223, 'Viernes', '1899-12-30 00:00:00'),
(106, 'Lunes', '1899-12-30 00:00:00'),
(106, 'Martes', '1899-12-30 00:00:00'),
(106, 'Miercoles', '1899-12-30 00:00:00'),
(106, 'Jueves', '1899-12-30 00:00:00'),
(106, 'Viernes', '1899-12-30 00:00:00'),
(107, 'Lunes', '1899-12-30 00:00:00'),
(107, 'Martes', '1899-12-30 00:00:00'),
(107, 'Miercoles', '1899-12-30 00:00:00'),
(107, 'Jueves', '1899-12-30 00:00:00'),
(107, 'Viernes', '1899-12-30 00:00:00'),
(108, 'Lunes', '1899-12-30 00:00:00'),
(108, 'Martes', '1899-12-30 00:00:00'),
(108, 'Miercoles', '1899-12-30 00:00:00'),
(108, 'Jueves', '1899-12-30 00:00:00'),
(108, 'Viernes', '1899-12-30 00:00:00'),
(109, 'Lunes', '1899-12-30 00:00:00'),
(109, 'Martes', '1899-12-30 00:00:00'),
(109, 'Miercoles', '1899-12-30 00:00:00'),
(109, 'Jueves', '1899-12-30 00:00:00'),
(109, 'Viernes', '1899-12-30 00:00:00'),
(110, 'Lunes', '1899-12-30 00:00:00'),
(110, 'Martes', '1899-12-30 00:00:00'),
(110, 'Miercoles', '1899-12-30 00:00:00'),
(110, 'Jueves', '1899-12-30 00:00:00'),
(110, 'Viernes', '1899-12-30 00:00:00'),
(111, 'Lunes', '1899-12-30 00:00:00'),
(111, 'Martes', '1899-12-30 00:00:00'),
(111, 'Miercoles', '1899-12-30 00:00:00'),
(111, 'Jueves', '1899-12-30 00:00:00'),
(111, 'Viernes', '1899-12-30 00:00:00'),
(112, 'Lunes', '1899-12-30 00:00:00'),
(112, 'Martes', '1899-12-30 00:00:00'),
(112, 'Miercoles', '1899-12-30 00:00:00'),
(112, 'Jueves', '1899-12-30 00:00:00'),
(112, 'Viernes', '1899-12-30 00:00:00'),
(113, 'Lunes', '1899-12-30 00:00:00'),
(113, 'Martes', '1899-12-30 00:00:00'),
(113, 'Miercoles', '1899-12-30 00:00:00'),
(113, 'Jueves', '1899-12-30 00:00:00'),
(113, 'Viernes', '1899-12-30 00:00:00'),
(114, 'Lunes', '1899-12-30 00:00:00'),
(114, 'Martes', '1899-12-30 00:00:00'),
(114, 'Miercoles', '1899-12-30 00:00:00'),
(114, 'Jueves', '1899-12-30 00:00:00'),
(114, 'Viernes', '1899-12-30 00:00:00'),
(115, 'Lunes', '1899-12-30 00:00:00'),
(115, 'Martes', '1899-12-30 00:00:00'),
(115, 'Miercoles', '1899-12-30 00:00:00'),
(115, 'Jueves', '1899-12-30 00:00:00'),
(115, 'Viernes', '1899-12-30 00:00:00'),
(173, 'Lunes', '1899-12-30 00:00:00'),
(173, 'Martes', '1899-12-30 00:00:00'),
(173, 'Miercoles', '1899-12-30 00:00:00'),
(173, 'Jueves', '1899-12-30 00:00:00'),
(173, 'Viernes', '1899-12-30 00:00:00'),
(174, 'Lunes', '1899-12-30 00:00:00'),
(174, 'Martes', '1899-12-30 00:00:00'),
(174, 'Miercoles', '1899-12-30 00:00:00'),
(174, 'Jueves', '1899-12-30 00:00:00'),
(174, 'Viernes', '1899-12-30 00:00:00'),
(224, 'Lunes', '1899-12-30 00:00:00'),
(224, 'Martes', '1899-12-30 00:00:00'),
(224, 'Miercoles', '1899-12-30 00:00:00'),
(224, 'Jueves', '1899-12-30 00:00:00'),
(224, 'Viernes', '1899-12-30 00:00:00'),
(225, 'Lunes', '1899-12-30 00:00:00'),
(225, 'Martes', '1899-12-30 00:00:00'),
(225, 'Miercoles', '1899-12-30 00:00:00'),
(225, 'Jueves', '1899-12-30 00:00:00'),
(225, 'Viernes', '1899-12-30 00:00:00'),
(226, 'Lunes', '1899-12-30 00:00:00'),
(226, 'Martes', '1899-12-30 00:00:00'),
(226, 'Miercoles', '1899-12-30 00:00:00'),
(226, 'Jueves', '1899-12-30 00:00:00'),
(226, 'Viernes', '1899-12-30 00:00:00'),
(227, 'Lunes', '1899-12-30 00:00:00'),
(227, 'Martes', '1899-12-30 00:00:00'),
(227, 'Miercoles', '1899-12-30 00:00:00'),
(227, 'Jueves', '1899-12-30 00:00:00'),
(227, 'Viernes', '1899-12-30 00:00:00'),
(228, 'Lunes', '1899-12-30 00:00:00'),
(228, 'Martes', '1899-12-30 00:00:00'),
(228, 'Miercoles', '1899-12-30 00:00:00'),
(228, 'Jueves', '1899-12-30 00:00:00'),
(228, 'Viernes', '1899-12-30 00:00:00'),
(229, 'Lunes', '1899-12-30 00:00:00'),
(229, 'Martes', '1899-12-30 00:00:00'),
(229, 'Miercoles', '1899-12-30 00:00:00'),
(229, 'Jueves', '1899-12-30 00:00:00'),
(229, 'Viernes', '1899-12-30 00:00:00'),
(230, 'Lunes', '1899-12-30 00:00:00'),
(230, 'Martes', '1899-12-30 00:00:00'),
(230, 'Miercoles', '1899-12-30 00:00:00'),
(230, 'Jueves', '1899-12-30 00:00:00'),
(230, 'Viernes', '1899-12-30 00:00:00'),
(231, 'Lunes', '1899-12-30 00:00:00'),
(231, 'Martes', '1899-12-30 00:00:00'),
(231, 'Miercoles', '1899-12-30 00:00:00'),
(231, 'Jueves', '1899-12-30 00:00:00'),
(231, 'Viernes', '1899-12-30 00:00:00'),
(232, 'Lunes', '1899-12-30 00:00:00'),
(232, 'Martes', '1899-12-30 00:00:00'),
(232, 'Miercoles', '1899-12-30 00:00:00'),
(232, 'Jueves', '1899-12-30 00:00:00'),
(232, 'Viernes', '1899-12-30 00:00:00'),
(233, 'Lunes', '1899-12-30 00:00:00'),
(233, 'Martes', '1899-12-30 00:00:00'),
(233, 'Miercoles', '1899-12-30 00:00:00'),
(233, 'Jueves', '1899-12-30 00:00:00'),
(233, 'Viernes', '1899-12-30 00:00:00'),
(234, 'Lunes', '1899-12-30 00:00:00'),
(234, 'Martes', '1899-12-30 00:00:00'),
(234, 'Miercoles', '1899-12-30 00:00:00'),
(234, 'Jueves', '1899-12-30 00:00:00'),
(234, 'Viernes', '1899-12-30 00:00:00'),
(235, 'Lunes', '1899-12-30 00:00:00'),
(235, 'Martes', '1899-12-30 00:00:00'),
(235, 'Miercoles', '1899-12-30 00:00:00'),
(235, 'Jueves', '1899-12-30 00:00:00'),
(235, 'Viernes', '1899-12-30 00:00:00'),
(56, 'Lunes', '1899-12-30 00:00:00'),
(56, 'Martes', '1899-12-30 00:00:00'),
(56, 'Miercoles', '1899-12-30 00:00:00'),
(56, 'Jueves', '1899-12-30 00:00:00'),
(56, 'Viernes', '1899-12-30 00:00:00'),
(57, 'Lunes', '1899-12-30 00:00:00'),
(57, 'Martes', '1899-12-30 00:00:00'),
(57, 'Miercoles', '1899-12-30 00:00:00'),
(57, 'Jueves', '1899-12-30 00:00:00'),
(57, 'Viernes', '1899-12-30 00:00:00'),
(65, 'Lunes', '1899-12-30 00:00:00'),
(65, 'Martes', '1899-12-30 00:00:00'),
(65, 'Miercoles', '1899-12-30 00:00:00'),
(65, 'Jueves', '1899-12-30 00:00:00'),
(65, 'Viernes', '1899-12-30 00:00:00'),
(186, 'Receso', '1899-12-30 00:00:00'),
(187, 'Lunes', '1899-12-30 00:00:00'),
(187, 'Martes', '1899-12-30 00:00:00'),
(187, 'Miercoles', '1899-12-30 00:00:00'),
(187, 'Jueves', '1899-12-30 00:00:00'),
(187, 'Viernes', '1899-12-30 00:00:00'),
(189, 'Lunes', '1899-12-30 00:00:00'),
(189, 'Martes', '1899-12-30 00:00:00'),
(189, 'Miercoles', '1899-12-30 00:00:00'),
(189, 'Jueves', '1899-12-30 00:00:00'),
(189, 'Viernes', '1899-12-30 00:00:00'),
(190, 'Lunes', '1899-12-30 00:00:00'),
(190, 'Martes', '1899-12-30 00:00:00'),
(190, 'Miercoles', '1899-12-30 00:00:00'),
(190, 'Jueves', '1899-12-30 00:00:00'),
(190, 'Viernes', '1899-12-30 00:00:00'),
(191, 'Lunes', '1899-12-30 00:00:00'),
(191, 'Martes', '1899-12-30 00:00:00'),
(191, 'Miercoles', '1899-12-30 00:00:00'),
(191, 'Jueves', '1899-12-30 00:00:00'),
(191, 'Viernes', '1899-12-30 00:00:00'),
(193, 'Lunes', '1899-12-30 00:00:00'),
(193, 'Martes', '1899-12-30 00:00:00'),
(193, 'Miercoles', '1899-12-30 00:00:00'),
(193, 'Jueves', '1899-12-30 00:00:00'),
(193, 'Viernes', '1899-12-30 00:00:00'),
(194, 'Lunes', '1899-12-30 00:00:00'),
(194, 'Martes', '1899-12-30 00:00:00'),
(194, 'Miercoles', '1899-12-30 00:00:00'),
(194, 'Jueves', '1899-12-30 00:00:00'),
(194, 'Viernes', '1899-12-30 00:00:00'),
(195, 'Lunes', '1899-12-30 00:00:00'),
(195, 'Martes', '1899-12-30 00:00:00'),
(195, 'Miercoles', '1899-12-30 00:00:00'),
(195, 'Jueves', '1899-12-30 00:00:00'),
(195, 'Viernes', '1899-12-30 00:00:00'),
(196, 'Lunes', '1899-12-30 00:00:00'),
(196, 'Martes', '1899-12-30 00:00:00'),
(196, 'Miercoles', '1899-12-30 00:00:00'),
(196, 'Jueves', '1899-12-30 00:00:00'),
(196, 'Viernes', '1899-12-30 00:00:00'),
(197, 'Lunes', '1899-12-30 00:00:00'),
(197, 'Martes', '1899-12-30 00:00:00'),
(197, 'Miercoles', '1899-12-30 00:00:00'),
(197, 'Jueves', '1899-12-30 00:00:00'),
(197, 'Viernes', '1899-12-30 00:00:00'),
(198, 'Lunes', '1899-12-30 00:00:00'),
(198, 'Martes', '1899-12-30 00:00:00'),
(198, 'Miercoles', '1899-12-30 00:00:00'),
(198, 'Jueves', '1899-12-30 00:00:00'),
(198, 'Viernes', '1899-12-30 00:00:00'),
(211, 'Lunes', '1899-12-30 00:00:00'),
(211, 'Martes', '1899-12-30 00:00:00'),
(211, 'Miercoles', '1899-12-30 00:00:00'),
(211, 'Jueves', '1899-12-30 00:00:00'),
(211, 'Viernes', '1899-12-30 00:00:00'),
(240, 'Lunes', '1899-12-30 00:00:00'),
(240, 'Martes', '1899-12-30 00:00:00'),
(240, 'Miercoles', '1899-12-30 00:00:00'),
(240, 'Jueves', '1899-12-30 00:00:00'),
(240, 'Viernes', '1899-12-30 00:00:00'),
(241, 'Lunes', '1899-12-30 00:00:00'),
(241, 'Martes', '1899-12-30 00:00:00'),
(241, 'Miercoles', '1899-12-30 00:00:00'),
(241, 'Jueves', '1899-12-30 00:00:00'),
(241, 'Viernes', '1899-12-30 00:00:00'),
(242, 'Lunes', '1899-12-30 00:00:00'),
(242, 'Martes', '1899-12-30 00:00:00'),
(242, 'Miercoles', '1899-12-30 00:00:00'),
(242, 'Jueves', '1899-12-30 00:00:00'),
(242, 'Viernes', '1899-12-30 00:00:00'),
(245, 'Lunes', '1899-12-30 00:00:00'),
(245, 'Martes', '1899-12-30 00:00:00'),
(245, 'Miercoles', '1899-12-30 00:00:00'),
(245, 'Jueves', '1899-12-30 00:00:00'),
(245, 'Viernes', '1899-12-30 00:00:00'),
(246, 'Lunes', '1899-12-30 00:00:00'),
(246, 'Martes', '1899-12-30 00:00:00'),
(246, 'Miercoles', '1899-12-30 00:00:00'),
(246, 'Jueves', '1899-12-30 00:00:00'),
(246, 'Viernes', '1899-12-30 00:00:00'),
(253, 'Lunes', '1899-12-30 00:00:00'),
(253, 'Martes', '1899-12-30 00:00:00'),
(253, 'Miercoles', '1899-12-30 00:00:00'),
(253, 'Jueves', '1899-12-30 00:00:00'),
(253, 'Viernes', '1899-12-30 00:00:00'),
(254, 'Lunes', '1899-12-30 00:00:00'),
(254, 'Martes', '1899-12-30 00:00:00'),
(254, 'Miercoles', '1899-12-30 00:00:00'),
(254, 'Jueves', '1899-12-30 00:00:00'),
(254, 'Viernes', '1899-12-30 00:00:00'),
(273, 'Receso', '1899-12-30 00:00:00'),
(288, 'Lunes', '1899-12-30 00:00:00'),
(288, 'Martes', '1899-12-30 00:00:00'),
(288, 'Miercoles', '1899-12-30 00:00:00'),
(288, 'Jueves', '1899-12-30 00:00:00'),
(288, 'Viernes', '1899-12-30 00:00:00'),
(289, 'Lunes', '1899-12-30 00:00:00'),
(289, 'Martes', '1899-12-30 00:00:00'),
(289, 'Miercoles', '1899-12-30 00:00:00'),
(289, 'Jueves', '1899-12-30 00:00:00'),
(289, 'Viernes', '1899-12-30 00:00:00'),
(290, 'Lunes', '1899-12-30 00:00:00'),
(290, 'Martes', '1899-12-30 00:00:00'),
(290, 'Miercoles', '1899-12-30 00:00:00'),
(290, 'Jueves', '1899-12-30 00:00:00'),
(290, 'Viernes', '1899-12-30 00:00:00'),
(291, 'Lunes', '1899-12-30 00:00:00'),
(291, 'Martes', '1899-12-30 00:00:00'),
(291, 'Miercoles', '1899-12-30 00:00:00'),
(291, 'Jueves', '1899-12-30 00:00:00'),
(291, 'Viernes', '1899-12-30 00:00:00'),
(292, 'Lunes', '1899-12-30 00:00:00'),
(292, 'Martes', '1899-12-30 00:00:00'),
(292, 'Miercoles', '1899-12-30 00:00:00'),
(292, 'Jueves', '1899-12-30 00:00:00'),
(292, 'Viernes', '1899-12-30 00:00:00'),
(293, 'Lunes', '1899-12-30 00:00:00'),
(293, 'Martes', '1899-12-30 00:00:00'),
(293, 'Miercoles', '1899-12-30 00:00:00'),
(293, 'Jueves', '1899-12-30 00:00:00'),
(293, 'Viernes', '1899-12-30 00:00:00'),
(294, 'Lunes', '1899-12-30 00:00:00'),
(294, 'Martes', '1899-12-30 00:00:00'),
(294, 'Miercoles', '1899-12-30 00:00:00'),
(294, 'Jueves', '1899-12-30 00:00:00'),
(294, 'Viernes', '1899-12-30 00:00:00'),
(13, 'Lunes', '1899-12-30 00:00:00'),
(13, 'Martes', '1899-12-30 00:00:00'),
(13, 'Miercoles', '1899-12-30 00:00:00'),
(13, 'Jueves', '1899-12-30 00:00:00'),
(13, 'Viernes', '1899-12-30 00:00:00'),
(14, 'Lunes', '1899-12-30 00:00:00'),
(14, 'Martes', '1899-12-30 00:00:00'),
(14, 'Miercoles', '1899-12-30 00:00:00'),
(14, 'Jueves', '1899-12-30 00:00:00'),
(14, 'Viernes', '1899-12-30 00:00:00'),
(15, 'Lunes', '1899-12-30 00:00:00'),
(15, 'Martes', '1899-12-30 00:00:00'),
(15, 'Miercoles', '1899-12-30 00:00:00'),
(15, 'Jueves', '1899-12-30 00:00:00'),
(15, 'Viernes', '1899-12-30 00:00:00'),
(17, 'Lunes', '1899-12-30 00:00:00'),
(17, 'Martes', '1899-12-30 00:00:00'),
(17, 'Miercoles', '1899-12-30 00:00:00'),
(17, 'Jueves', '1899-12-30 00:00:00'),
(17, 'Viernes', '1899-12-30 00:00:00'),
(19, 'Lunes', '1899-12-30 00:00:00'),
(19, 'Martes', '1899-12-30 00:00:00'),
(19, 'Miercoles', '1899-12-30 00:00:00'),
(19, 'Jueves', '1899-12-30 00:00:00'),
(19, 'Viernes', '1899-12-30 00:00:00'),
(20, 'Lunes', '1899-12-30 00:00:00'),
(20, 'Martes', '1899-12-30 00:00:00'),
(20, 'Miercoles', '1899-12-30 00:00:00'),
(20, 'Jueves', '1899-12-30 00:00:00'),
(20, 'Viernes', '1899-12-30 00:00:00'),
(21, 'Lunes', '1899-12-30 00:00:00'),
(21, 'Martes', '1899-12-30 00:00:00'),
(21, 'Miercoles', '1899-12-30 00:00:00'),
(21, 'Jueves', '1899-12-30 00:00:00'),
(21, 'Viernes', '1899-12-30 00:00:00'),
(22, 'Lunes', '1899-12-30 00:00:00'),
(22, 'Martes', '1899-12-30 00:00:00'),
(22, 'Miercoles', '1899-12-30 00:00:00'),
(22, 'Jueves', '1899-12-30 00:00:00'),
(22, 'Viernes', '1899-12-30 00:00:00'),
(23, 'Lunes', '1899-12-30 13:20:00'),
(23, 'Martes', '1899-12-30 13:20:00'),
(23, 'Miercoles', '1899-12-30 00:00:00'),
(23, 'Jueves', '1899-12-30 00:00:00'),
(23, 'Viernes', '1899-12-30 12:30:00'),
(143, 'Lunes', '1899-12-30 00:00:00'),
(143, 'Martes', '1899-12-30 00:00:00'),
(143, 'Miercoles', '1899-12-30 00:00:00'),
(143, 'Jueves', '1899-12-30 00:00:00'),
(143, 'Viernes', '1899-12-30 00:00:00'),
(149, 'Lunes', '1899-12-30 00:00:00'),
(149, 'Martes', '1899-12-30 00:00:00'),
(149, 'Miercoles', '1899-12-30 00:00:00'),
(149, 'Jueves', '1899-12-30 00:00:00'),
(149, 'Viernes', '1899-12-30 00:00:00'),
(150, 'Lunes', '1899-12-30 00:00:00'),
(150, 'Martes', '1899-12-30 00:00:00'),
(150, 'Miercoles', '1899-12-30 00:00:00'),
(150, 'Jueves', '1899-12-30 00:00:00'),
(150, 'Viernes', '1899-12-30 00:00:00'),
(151, 'Lunes', '1899-12-30 00:00:00'),
(151, 'Martes', '1899-12-30 00:00:00'),
(151, 'Miercoles', '1899-12-30 00:00:00'),
(151, 'Jueves', '1899-12-30 00:00:00'),
(151, 'Viernes', '1899-12-30 00:00:00'),
(157, 'Lunes', '1899-12-30 00:00:00'),
(157, 'Martes', '1899-12-30 00:00:00'),
(157, 'Miercoles', '1899-12-30 00:00:00'),
(157, 'Jueves', '1899-12-30 00:00:00'),
(157, 'Viernes', '1899-12-30 00:00:00'),
(26, 'Lunes', '1899-12-30 00:00:00'),
(26, 'Martes', '1899-12-30 00:00:00'),
(26, 'Miercoles', '1899-12-30 00:00:00'),
(26, 'Jueves', '1899-12-30 00:00:00'),
(26, 'Viernes', '1899-12-30 00:00:00'),
(27, 'Lunes', '1899-12-30 00:00:00'),
(27, 'Martes', '1899-12-30 00:00:00'),
(27, 'Miercoles', '1899-12-30 00:00:00'),
(27, 'Jueves', '1899-12-30 00:00:00'),
(27, 'Viernes', '1899-12-30 00:00:00'),
(28, 'Lunes', '1899-12-30 00:00:00'),
(28, 'Martes', '1899-12-30 00:00:00'),
(28, 'Miercoles', '1899-12-30 00:00:00'),
(28, 'Jueves', '1899-12-30 00:00:00'),
(28, 'Viernes', '1899-12-30 00:00:00'),
(29, 'Lunes', '1899-12-30 00:00:00'),
(29, 'Martes', '1899-12-30 00:00:00'),
(29, 'Miercoles', '1899-12-30 00:00:00'),
(29, 'Jueves', '1899-12-30 00:00:00'),
(29, 'Viernes', '1899-12-30 00:00:00'),
(31, 'Lunes', '1899-12-30 00:00:00'),
(31, 'Martes', '1899-12-30 00:00:00'),
(31, 'Miercoles', '1899-12-30 00:00:00'),
(31, 'Jueves', '1899-12-30 00:00:00'),
(31, 'Viernes', '1899-12-30 00:00:00'),
(32, 'Lunes', '1899-12-30 00:00:00'),
(32, 'Martes', '1899-12-30 00:00:00'),
(32, 'Miercoles', '1899-12-30 00:00:00'),
(32, 'Jueves', '1899-12-30 00:00:00'),
(32, 'Viernes', '1899-12-30 00:00:00'),
(34, 'Lunes', '1899-12-30 00:00:00'),
(34, 'Martes', '1899-12-30 00:00:00'),
(34, 'Miercoles', '1899-12-30 00:00:00'),
(34, 'Jueves', '1899-12-30 00:00:00'),
(34, 'Viernes', '1899-12-30 00:00:00'),
(35, 'Lunes', '1899-12-30 00:00:00'),
(35, 'Martes', '1899-12-30 00:00:00'),
(35, 'Miercoles', '1899-12-30 00:00:00'),
(35, 'Jueves', '1899-12-30 00:00:00'),
(35, 'Viernes', '1899-12-30 00:00:00'),
(36, 'Lunes', '1899-12-30 11:40:00'),
(36, 'Martes', '1899-12-30 11:40:00'),
(36, 'Miercoles', '1899-12-30 00:00:00'),
(36, 'Jueves', '1899-12-30 00:00:00'),
(36, 'Viernes', '1899-12-30 11:40:00'),
(145, 'Lunes', '1899-12-30 00:00:00'),
(145, 'Martes', '1899-12-30 00:00:00'),
(145, 'Miercoles', '1899-12-30 00:00:00'),
(145, 'Jueves', '1899-12-30 00:00:00'),
(145, 'Viernes', '1899-12-30 00:00:00'),
(152, 'Lunes', '1899-12-30 00:00:00'),
(152, 'Martes', '1899-12-30 00:00:00'),
(152, 'Miercoles', '1899-12-30 00:00:00'),
(152, 'Jueves', '1899-12-30 00:00:00'),
(152, 'Viernes', '1899-12-30 00:00:00'),
(153, 'Lunes', '1899-12-30 00:00:00'),
(153, 'Martes', '1899-12-30 00:00:00'),
(153, 'Miercoles', '1899-12-30 00:00:00'),
(153, 'Jueves', '1899-12-30 00:00:00'),
(153, 'Viernes', '1899-12-30 00:00:00'),
(154, 'Lunes', '1899-12-30 00:00:00'),
(154, 'Martes', '1899-12-30 00:00:00'),
(154, 'Miercoles', '1899-12-30 00:00:00'),
(154, 'Jueves', '1899-12-30 00:00:00'),
(154, 'Viernes', '1899-12-30 00:00:00'),
(158, 'Lunes', '1899-12-30 00:00:00'),
(158, 'Martes', '1899-12-30 00:00:00'),
(158, 'Miercoles', '1899-12-30 00:00:00'),
(158, 'Jueves', '1899-12-30 00:00:00'),
(158, 'Viernes', '1899-12-30 00:00:00'),
(274, 'Lunes', '1899-12-30 00:00:00'),
(274, 'Martes', '1899-12-30 00:00:00'),
(274, 'Miercoles', '1899-12-30 00:00:00'),
(274, 'Jueves', '1899-12-30 00:00:00'),
(274, 'Viernes', '1899-12-30 00:00:00'),
(275, 'Lunes', '1899-12-30 00:00:00'),
(275, 'Martes', '1899-12-30 00:00:00'),
(275, 'Miercoles', '1899-12-30 00:00:00'),
(275, 'Jueves', '1899-12-30 00:00:00'),
(275, 'Viernes', '1899-12-30 00:00:00'),
(276, 'Lunes', '1899-12-30 00:00:00'),
(276, 'Martes', '1899-12-30 00:00:00'),
(276, 'Miercoles', '1899-12-30 00:00:00'),
(276, 'Jueves', '1899-12-30 00:00:00'),
(276, 'Viernes', '1899-12-30 00:00:00'),
(277, 'Lunes', '1899-12-30 00:00:00'),
(277, 'Martes', '1899-12-30 00:00:00'),
(277, 'Miercoles', '1899-12-30 00:00:00'),
(277, 'Jueves', '1899-12-30 00:00:00'),
(277, 'Viernes', '1899-12-30 00:00:00'),
(278, 'Lunes', '1899-12-30 00:00:00'),
(278, 'Martes', '1899-12-30 00:00:00'),
(278, 'Miercoles', '1899-12-30 00:00:00'),
(278, 'Jueves', '1899-12-30 00:00:00'),
(278, 'Viernes', '1899-12-30 00:00:00'),
(279, 'Lunes', '1899-12-30 00:00:00'),
(279, 'Martes', '1899-12-30 00:00:00'),
(279, 'Miercoles', '1899-12-30 00:00:00'),
(279, 'Jueves', '1899-12-30 00:00:00'),
(279, 'Viernes', '1899-12-30 00:00:00'),
(280, 'Lunes', '1899-12-30 00:00:00'),
(280, 'Martes', '1899-12-30 00:00:00'),
(280, 'Miercoles', '1899-12-30 00:00:00'),
(280, 'Jueves', '1899-12-30 00:00:00'),
(280, 'Viernes', '1899-12-30 00:00:00'),
(281, 'Lunes', '1899-12-30 00:00:00'),
(281, 'Martes', '1899-12-30 00:00:00'),
(281, 'Miercoles', '1899-12-30 00:00:00'),
(281, 'Jueves', '1899-12-30 00:00:00'),
(281, 'Viernes', '1899-12-30 00:00:00'),
(282, 'Lunes', '1899-12-30 00:00:00'),
(282, 'Martes', '1899-12-30 00:00:00'),
(282, 'Miercoles', '1899-12-30 00:00:00'),
(282, 'Jueves', '1899-12-30 00:00:00'),
(282, 'Viernes', '1899-12-30 00:00:00'),
(283, 'Lunes', '1899-12-30 00:00:00'),
(283, 'Martes', '1899-12-30 00:00:00'),
(283, 'Miercoles', '1899-12-30 00:00:00'),
(283, 'Jueves', '1899-12-30 00:00:00'),
(283, 'Viernes', '1899-12-30 00:00:00'),
(284, 'Lunes', '1899-12-30 00:00:00'),
(284, 'Martes', '1899-12-30 00:00:00'),
(284, 'Miercoles', '1899-12-30 00:00:00'),
(284, 'Jueves', '1899-12-30 00:00:00'),
(284, 'Viernes', '1899-12-30 00:00:00'),
(285, 'Lunes', '1899-12-30 00:00:00'),
(285, 'Martes', '1899-12-30 00:00:00'),
(285, 'Miercoles', '1899-12-30 00:00:00'),
(285, 'Jueves', '1899-12-30 00:00:00'),
(285, 'Viernes', '1899-12-30 00:00:00'),
(286, 'Lunes', '1899-12-30 00:00:00'),
(286, 'Martes', '1899-12-30 00:00:00'),
(286, 'Miercoles', '1899-12-30 00:00:00'),
(286, 'Jueves', '1899-12-30 00:00:00'),
(286, 'Viernes', '1899-12-30 00:00:00'),
(287, 'Lunes', '1899-12-30 00:00:00'),
(287, 'Martes', '1899-12-30 00:00:00'),
(287, 'Miercoles', '1899-12-30 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `letra_calificacion`
--

CREATE TABLE `letra_calificacion` (
  `idletra_calificacion` int(11) NOT NULL,
  `idopcioncaptura` int(11) DEFAULT NULL,
  `letra` varchar(5) DEFAULT NULL,
  `valor_numerico` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `letra_calificacion`
--

INSERT INTO `letra_calificacion` (`idletra_calificacion`, `idopcioncaptura`, `letra`, `valor_numerico`) VALUES
(1, 33, 'A', 0),
(2, 33, 'B', 0),
(3, 33, 'C', 0),
(4, 33, 'D', 0),
(5, 33, 'A', 0),
(6, 33, 'A', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materia`
--

CREATE TABLE `materia` (
  `idmateria` varchar(10) NOT NULL,
  `nombre` varchar(40) NOT NULL,
  `creditos` tinyint(4) NOT NULL,
  `clavesep` varchar(15) DEFAULT NULL,
  `tipomat` int(11) NOT NULL,
  `idgrado` int(11) DEFAULT NULL,
  `tipogrupo` int(11) NOT NULL,
  `tipocaptura` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `materia`
--

INSERT INTO `materia` (`idmateria`, `nombre`, `creditos`, `clavesep`, `tipomat`, `idgrado`, `tipogrupo`, `tipocaptura`, `status`) VALUES
(' PR01E', 'ESPAÑOL 1', 0, '', 19, 4, 21, 23, 0),
('JN01', 'DESARROLLO PERSONAL Y SOCIAL', 0, '', 19, 1, 21, 23, 0),
('JN02', 'DESARROLLO PERSONAL Y SOCIAL', 0, '', 19, 2, 21, 23, 0),
('JN03', 'DESARROLLO PERSONAL Y SOCIAL', 0, '', 19, 3, 21, 23, 0),
('JN04', 'LENGUAJE Y COMUNICACION', 0, '', 19, 1, 21, 23, 0),
('JN05', 'LENGUAJE Y COMUNICACION', 0, '', 19, 2, 21, 23, 0),
('JN06', 'LENGUAJE Y COMUNICACION', 0, '', 19, 3, 21, 23, 0),
('JN07', 'PENSAMIENTO MATEMATICO', 0, '', 19, 1, 21, 23, 0),
('JN08', 'PENSAMIENTO MATEMATICO', 0, '', 19, 2, 21, 23, 0),
('JN09', 'PENSAMIENTO MATEMATICO', 0, '', 19, 3, 21, 23, 0),
('JN10', 'CONOCIMIENTO DEL MUNDO', 0, '', 19, 1, 21, 23, 0),
('JN11', 'CONOCIMIENTO DEL MUNDO', 0, '', 19, 2, 21, 23, 0),
('JN12', 'CONOCIMIENTO DEL MUNDO', 0, '', 19, 3, 21, 23, 0),
('JN13', 'EXPRESION ARTISTICA', 0, '', 19, 1, 21, 23, 0),
('JN14', 'EXPRESION ARTISTICA', 0, '', 19, 2, 21, 23, 0),
('JN15', 'EXPRESION ARTISTICA', 0, '', 19, 3, 21, 23, 0),
('JN16', 'DESARROLLO FISICO', 0, '', 19, 1, 21, 23, 0),
('JN17', 'DESARROLLO FISICO', 0, '', 19, 2, 21, 23, 0),
('JN18', 'DESARROLLO FISICO', 0, '', 19, 3, 21, 23, 0),
('OE1', 'ORIENTACION Y TUTORIA', 0, '', 20, 10, 21, 24, 0),
('PR01CM', 'EXPLORACION DE LA NAT.Y LA SOC. 1', 0, '', 19, 4, 21, 23, 0),
('PR01EA', 'EDUCACION ARTISTICA', 0, '', 19, 4, 21, 23, 0),
('PR01EF', 'EDUCACION FISICA', 0, '', 19, 4, 21, 23, 0),
('PR01ET', 'COMPUTACION', 0, '', 20, 4, 21, 23, 0),
('PR01FC', 'FORMACION CIVICA Y ETICA 1', 0, '', 19, 4, 21, 23, 0),
('PR01IN', 'INGLES 1', 0, '', 20, 4, 21, 23, 0),
('PR01M', 'MATEMATICAS 1', 0, '', 19, 4, 21, 23, 0),
('PR02CM', 'EXPLORACION DE LA NAT. Y LA SOC.2', 0, '', 19, 5, 21, 23, 0),
('PR02E', 'ESPAÑOL 2', 0, '', 19, 5, 21, 23, 0),
('PR02EA', 'EDUCACION ARTISTICA', 0, '', 19, 5, 21, 23, 0),
('PR02EF', 'EDUCACION FISICA', 0, '', 19, 5, 21, 23, 0),
('PR02ET', 'COMPUTACION', 0, '', 20, 5, 21, 23, 0),
('PR02FC', 'FORMACION CIVICA Y ETICA 2', 0, '', 19, 5, 21, 23, 0),
('PR02IN', 'INGLES 2', 0, '', 20, 5, 21, 23, 0),
('PR02M', 'MATEMATICAS 2', 0, '', 19, 5, 21, 23, 0),
('PR03CN', 'CIENCIAS NATURALES 3', 0, '', 19, 6, 21, 23, 0),
('PR03E', 'ESPAÑOL 3', 0, '', 19, 6, 21, 23, 0),
('PR03EA', 'EDUCACION ARTISTICA', 0, '', 19, 6, 21, 23, 0),
('PR03EC', 'FORMACION CIVICA Y ETICA 3', 0, '', 19, 6, 21, 23, 0),
('PR03EF', 'EDUCACION FISICA', 0, '', 19, 6, 21, 23, 0),
('PR03ET', 'COMPUTACION', 0, '', 20, 6, 21, 23, 0),
('PR03G', 'GEOGRAFIA 3', 0, '', 19, 6, 21, 23, 0),
('PR03H', 'HISTORIA 3', 0, '', 19, 6, 21, 23, 0),
('PR03IN', 'INGLES  3', 0, '', 20, 6, 21, 23, 0),
('PR03M', 'MATEMATICAS 3', 0, '', 19, 6, 21, 23, 0),
('PR04CN', 'CIENCIAS NATURALES 4', 0, '', 19, 7, 21, 23, 0),
('PR04E', 'ESPAÑOL 4', 0, '', 19, 7, 21, 23, 0),
('PR04EA', 'EDUCACION ARTISTICA', 0, '', 19, 7, 21, 23, 0),
('PR04EC', 'FORMACION CIVICA Y ETICA 4', 0, '', 19, 7, 21, 23, 0),
('PR04EF', 'EDUCACION FISICA', 0, '', 19, 7, 21, 23, 0),
('PR04ET', 'COMPUTACION 4', 0, '', 20, 7, 21, 23, 0),
('PR04G', 'GEOGRAFIA4', 0, '', 19, 7, 21, 23, 0),
('PR04H', 'HISTORIA 4', 0, '', 19, 7, 21, 23, 0),
('PR04IN', 'INGLES 4', 0, '', 20, 7, 21, 23, 0),
('PR04M', 'MATEMATICAS 4', 0, '', 19, 7, 21, 23, 0),
('PR05CN', 'CIENCIAS NATURALES 5', 0, '', 19, 8, 21, 23, 0),
('PR05E', 'ESPAÑOL 5', 0, '', 19, 8, 21, 23, 0),
('PR05EA', 'EDUCACION ARTISTICA', 0, '', 19, 8, 21, 23, 0),
('PR05EC', 'FORMACION CIVICA Y ETICA 5', 0, '', 19, 8, 21, 23, 0),
('PR05EF', 'EDUCACION FISICA', 0, '', 19, 8, 21, 23, 0),
('PR05ET', 'COMPUTACION 5', 0, '', 20, 8, 21, 23, 0),
('PR05G', 'GEOGRAFIA 5', 0, '', 19, 8, 21, 23, 0),
('PR05H', 'HISTORIA 5', 0, '', 19, 8, 21, 23, 0),
('PR05IN', 'INGLES 5', 0, '', 20, 8, 21, 23, 0),
('PR05M', 'MATEMATICA 5', 0, '', 19, 8, 21, 23, 0),
('PR06CN', 'CIENCIAS NATURALES 6', 0, '', 19, 9, 21, 23, 0),
('PR06E', 'ESPAÑOL 6', 0, '', 19, 9, 21, 23, 0),
('PR06EA', 'EDUCACION ARTISTICA', 0, '', 19, 9, 21, 23, 0),
('PR06EC', 'FORMACION CIVICA Y ETICA 6', 0, '', 19, 9, 21, 23, 0),
('PR06EF', 'EDUCACION FISICA', 0, '', 19, 9, 21, 23, 0),
('PR06ET', 'COMPUTACION 6', 0, '', 20, 9, 21, 23, 0),
('PR06G', 'GEOGRAFIA 6', 0, '', 19, 9, 21, 23, 0),
('PR06H', 'HISTORIA 6', 0, '', 19, 9, 21, 23, 0),
('PR06IN', 'INGLES 6', 0, '', 20, 9, 21, 23, 0),
('PR06M', 'MATEMATICAS 6', 0, '', 19, 9, 21, 23, 0),
('PRI01CON', 'R. CONDUCTA 1', 0, '', 20, 4, 21, 24, 0),
('PRI01DES', 'R. DESEMPEÑO 1', 0, '', 20, 4, 21, 24, 0),
('PRI02CON', 'R.CONDUCTA 2', 0, '', 20, 5, 21, 24, 0),
('PRI02DES', 'R. DESEMPEÑO 2', 0, '', 20, 5, 21, 24, 0),
('PRI03CON', 'R.CONDUCTA 3', 0, '', 20, 6, 21, 24, 0),
('PRI03DES', 'R. DESEMPEÑO 3', 0, '', 20, 6, 21, 24, 0),
('PRI04CON', 'R. CONDUCTA 4', 0, '', 20, 7, 21, 24, 0),
('PRI04DES', 'R. DESEMPEÑO 4', 0, '', 20, 7, 21, 24, 0),
('PRI05CON', 'R. CONDUCTA  5', 0, '', 20, 8, 21, 24, 0),
('PRI05DES', 'R.DESEMPEÑO  5', 0, '', 20, 8, 21, 24, 0),
('PRI06CON', 'R. CONDUCTA 6', 0, '', 20, 9, 21, 24, 0),
('PRI06DES', 'R. DESEMPEÑO 6', 0, '', 20, 9, 21, 24, 0),
('REBIM1°', 'RETARDOS 1°', 0, '', 20, 10, 21, 24, 0),
('REBIM2', 'RETARDOS 2°', 0, '', 20, 11, 21, 24, 0),
('REBIM3', 'RETARDOS 3°', 0, '', 20, 12, 21, 24, 0),
('Receso', 'SIN MATERIA', 0, NULL, 19, 1, 21, 23, 0),
('SE01AV', 'ARTES - VISUALES', 0, '', 19, 10, 21, 23, 0),
('SE01CB', 'CIENCIAS I- BIOLOGIA', 0, '', 19, 10, 21, 23, 0),
('SE01COA', 'AUSENCIA ESC. 1', 0, '', 20, 10, 21, 24, 0),
('SE01CON', 'R. DE CONDUCTA 1', 0, '', 20, 10, 21, 24, 0),
('SE01DES', 'R. DESEMPEÑO 1', 0, '', 20, 10, 21, 24, 0),
('SE01E', 'ESPAÑOL I', 0, '', 19, 10, 21, 23, 0),
('SE01EF', 'EDUCACION FISICA I', 0, '', 19, 10, 21, 23, 0),
('SE01EXP', 'SUSPENSIONES 1', 0, '', 20, 10, 21, 24, 0),
('SE01G', 'GEOGRAFIA DE MEXICO Y DEL MUNDO', 0, '', 19, 10, 21, 23, 0),
('SE01I', 'INGLES I', 0, '', 19, 10, 21, 23, 0),
('SE01M', 'MATEMATICAS I', 0, '', 19, 10, 21, 23, 0),
('SE01T', 'INFORMATICA  I', 0, '', 19, 10, 21, 23, 0),
('SE02B', 'BIOLOGIA II', 0, '', 19, 11, 21, 23, 0),
('SE02C', 'FORMACION CIVICA  Y ETICA I', 0, '', 19, 11, 21, 23, 0),
('SE02COA', 'AUSENCIA ESC. 2', 0, '', 20, 11, 21, 24, 0),
('SE02CON', 'R. DE CONDUCTA 2', 0, '', 20, 11, 21, 24, 0),
('SE02DES', 'R. DESEMPEÑO 2', 0, '', 20, 11, 21, 24, 0),
('SE02E', 'ESPAÑOL II', 0, '', 19, 11, 21, 23, 0),
('SE02EA', 'ARTES-MUSICA', 0, '', 19, 11, 21, 23, 0),
('SE02EF', 'EDUCACION FISICA II', 0, '', 19, 11, 21, 23, 0),
('SE02ET', 'INFORMATICA II', 0, '', 19, 11, 21, 23, 0),
('SE02EXP', 'SUSPENSIONES 2', 0, '', 20, 11, 21, 24, 0),
('SE02F', 'CIENCIAS-FISICA', 0, '', 19, 11, 21, 23, 0),
('SE02H', 'HISTORIA I', 0, '', 19, 11, 21, 23, 0),
('SE02I', 'INGLES II', 0, '', 19, 11, 21, 23, 0),
('SE02M', 'MATEMATICAS II', 0, '', 19, 11, 21, 23, 0),
('SE03C', 'FORMACION CIVICA II', 0, '', 19, 12, 21, 23, 0),
('SE03COA', 'AUSENCIA ESC. 3', 0, '', 20, 12, 21, 24, 0),
('SE03CON', 'R. DE CONDUCTA 3', 0, '', 20, 12, 21, 24, 0),
('SE03DES', 'R. DESEMPEÑO 3', 0, '', 20, 12, 21, 24, 0),
('SE03E', 'ESPAÑOL  III', 0, '', 19, 12, 21, 23, 0),
('SE03EA', 'ARTES-TEATRO', 0, '', 19, 12, 21, 23, 0),
('SE03EF', 'EDUCACION FISICA III', 0, '', 19, 12, 21, 23, 0),
('SE03ET', 'INFORMATICA III', 0, '', 19, 12, 21, 23, 0),
('SE03EXP', 'SUSPENSIONES 3', 0, '', 20, 12, 21, 24, 0),
('SE03H', 'HISTORIA II', 0, '', 19, 12, 21, 23, 0),
('SE03I', 'INGLES III', 0, '', 19, 12, 21, 23, 0),
('SE03M', 'MATEMATICAS III', 0, '', 19, 12, 21, 23, 0),
('SE03Q', 'CIENCIAS- QUIMICA', 0, '', 19, 12, 21, 23, 0),
('SEC1IP', 'PATRIMONIO CULTURAL Y NATURAL DE PUEBLA', 0, '', 19, 10, 21, 23, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mat_criterio`
--

CREATE TABLE `mat_criterio` (
  `idmateriacriterio` int(11) NOT NULL,
  `orden` tinyint(4) NOT NULL,
  `idmateria` varchar(10) NOT NULL DEFAULT '',
  `idcriterio` int(4) NOT NULL,
  `porcentaje` smallint(6) NOT NULL,
  `periodo` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `mat_criterio`
--

INSERT INTO `mat_criterio` (`idmateriacriterio`, `orden`, `idmateria`, `idcriterio`, `porcentaje`, `periodo`, `status`) VALUES
(364, 1, 'SE01M', 7, 40, 1, 0),
(365, 2, 'SE01I', 3, 15, 1, 0),
(366, 1, 'SE03H', 7, 30, 1, 0),
(367, 1, 'SE01I', 7, 40, 1, 0),
(368, 1, 'SE02H', 7, 30, 1, 0),
(369, 1, 'SE02I', 3, 15, 1, 0),
(370, 2, 'SE02I', 7, 40, 1, 0),
(371, 1, 'SE03I', 3, 15, 1, 0),
(372, 2, 'SE03I', 7, 40, 1, 0),
(373, 1, 'SE01E', 3, 20, 1, 0),
(374, 1, 'SE02E', 3, 20, 1, 0),
(375, 1, 'SE03E', 3, 20, 1, 0),
(376, 2, 'SE03E', 7, 30, 1, 0),
(377, 1, 'SE02M', 7, 25, 1, 0),
(378, 1, 'SE03M', 7, 25, 1, 0),
(379, 1, 'SE01G', 7, 30, 1, 0),
(380, 1, 'SE03C', 7, 20, 1, 0),
(381, 1, 'SE02B', 7, 50, 1, 0),
(382, 2, 'SE02B', 12, 20, 1, 0),
(383, 1, 'SE03Q', 7, 30, 1, 0),
(384, 2, 'SE02EA', 7, 40, 1, 0),
(385, 1, 'SE01EF', 7, 10, 1, 0),
(386, 2, 'SE01EF', 13, 10, 1, 0),
(387, 1, 'SE02EF', 7, 10, 1, 0),
(388, 2, 'SE02EF', 13, 10, 1, 0),
(389, 1, 'SE03EF', 7, 10, 1, 0),
(390, 2, 'SE03EF', 13, 10, 1, 0),
(391, 1, 'PR06EC', 3, 20, 1, 0),
(392, 2, 'PR06EC', 7, 20, 1, 0),
(393, 3, 'PR06EC', 9, 20, 1, 0),
(394, 1, 'SE03E', 15, 0, 0, 0),
(395, 1, 'PR05EC', 3, 20, 1, 0),
(396, 2, 'PR05EC', 7, 20, 1, 0),
(397, 3, 'PR05EC', 9, 20, 1, 0),
(398, 1, 'SE03M', 15, 0, 0, 0),
(399, 1, 'PR04EC', 3, 20, 1, 0),
(400, 2, 'PR04EC', 7, 20, 1, 0),
(401, 3, 'PR04EC', 9, 20, 1, 0),
(402, 1, 'SE03C', 15, 0, 0, 0),
(403, 1, 'PR03EC', 3, 20, 1, 0),
(404, 2, 'PR03EC', 7, 20, 1, 0),
(405, 3, 'PR03EC', 9, 20, 1, 0),
(406, 1, 'PR06G', 3, 20, 1, 0),
(407, 2, 'PR06G', 7, 20, 1, 0),
(408, 3, 'PR06G', 9, 20, 1, 0),
(409, 1, 'SE03Q', 15, 0, 0, 0),
(410, 1, 'PR05G', 3, 20, 1, 0),
(411, 2, 'PR05G', 7, 20, 1, 0),
(412, 3, 'PR05G', 9, 20, 1, 0),
(413, 1, 'SE03EA', 15, 0, 0, 0),
(414, 1, 'PR04G', 3, 20, 1, 0),
(415, 2, 'PR04G', 7, 20, 1, 0),
(416, 3, 'PR04G', 9, 20, 1, 0),
(417, 1, 'SE03EF', 15, 0, 0, 0),
(418, 1, 'PR03G', 3, 20, 1, 0),
(419, 2, 'PR03G', 7, 20, 1, 0),
(420, 3, 'PR03G', 9, 20, 1, 0),
(421, 1, 'SE02B', 15, 0, 0, 0),
(422, 2, 'PR06H', 7, 20, 1, 0),
(423, 1, 'PR06H', 9, 20, 1, 0),
(424, 3, 'PR06H', 3, 20, 1, 0),
(425, 1, 'PR05H', 3, 20, 1, 0),
(426, 2, 'PR05H', 7, 20, 1, 0),
(427, 3, 'PR05H', 9, 20, 1, 0),
(428, 1, 'PR04H', 3, 20, 1, 0),
(429, 2, 'PR04H', 7, 20, 1, 0),
(430, 3, 'PR04H', 9, 20, 1, 0),
(431, 1, 'PR03H', 3, 20, 1, 0),
(432, 2, 'PR03H', 7, 20, 1, 0),
(433, 3, 'PR03H', 9, 20, 1, 0),
(434, 1, 'SE02H', 15, 0, 0, 0),
(435, 1, 'PR06CN', 3, 20, 1, 0),
(436, 2, 'PR06CN', 7, 20, 1, 0),
(437, 3, 'PR06CN', 9, 20, 1, 0),
(438, 1, 'SE03H', 15, 0, 0, 0),
(439, 1, 'PR05CN', 3, 20, 1, 0),
(440, 2, 'PR05CN', 7, 20, 1, 0),
(441, 3, 'PR05CN', 9, 20, 1, 0),
(442, 1, 'PR04CN', 3, 20, 1, 0),
(443, 2, 'PR04CN', 7, 20, 1, 0),
(444, 3, 'PR04CN', 9, 20, 1, 0),
(445, 1, 'PR03CN', 3, 20, 1, 0),
(446, 2, 'PR03CN', 7, 20, 1, 0),
(447, 3, 'PR03CN', 9, 20, 1, 0),
(448, 1, 'SE02ET', 15, 0, 0, 0),
(449, 1, 'PR06M', 3, 20, 1, 0),
(450, 2, 'PR06M', 7, 20, 1, 0),
(451, 3, 'PR06M', 9, 20, 1, 0),
(452, 1, 'SE02I', 15, 0, 0, 0),
(453, 1, 'PR05M', 3, 20, 1, 0),
(454, 2, 'PR05M', 7, 20, 1, 0),
(455, 3, 'PR05M', 9, 20, 1, 0),
(456, 1, 'SE03I', 15, 0, 0, 0),
(457, 1, 'PR04M', 3, 20, 1, 0),
(458, 2, 'PR04M', 7, 20, 1, 0),
(459, 3, 'PR04M', 9, 20, 1, 0),
(460, 1, 'SE02M', 15, 0, 0, 0),
(461, 1, 'PR03M', 3, 20, 1, 0),
(462, 2, 'PR03M', 7, 20, 1, 0),
(463, 3, 'PR03M', 9, 20, 1, 0),
(464, 1, 'SE02F', 15, 0, 0, 0),
(465, 1, 'PR02M', 3, 20, 1, 0),
(466, 2, 'PR02M', 7, 20, 1, 0),
(467, 3, 'PR02M', 9, 20, 1, 0),
(468, 1, 'SE02EA', 15, 0, 0, 0),
(469, 1, 'PR01M', 3, 20, 1, 0),
(470, 2, 'PR01M', 7, 20, 1, 0),
(471, 3, 'PR01M', 9, 20, 1, 0),
(472, 1, 'PR06E', 3, 20, 1, 0),
(473, 2, 'PR06E', 7, 20, 1, 0),
(474, 3, 'PR06E', 9, 20, 1, 0),
(475, 1, 'PR06E', 15, 0, 0, 0),
(476, 1, 'PR05E', 3, 20, 1, 0),
(477, 2, 'PR05E', 7, 20, 1, 0),
(478, 3, 'PR05E', 9, 20, 1, 0),
(479, 1, 'PR05E', 15, 0, 0, 0),
(480, 1, 'PR04E', 3, 20, 1, 0),
(481, 2, 'PR04E', 7, 20, 1, 0),
(482, 3, 'PR04E', 9, 20, 1, 0),
(483, 1, 'PR04E', 15, 0, 0, 0),
(484, 1, 'PR03E', 3, 20, 1, 0),
(485, 2, 'PR03E', 7, 20, 1, 0),
(486, 3, 'PR03E', 9, 20, 1, 0),
(487, 1, 'PR03E', 15, 0, 0, 0),
(488, 1, 'PR02E', 3, 20, 1, 0),
(489, 2, 'PR02E', 7, 20, 1, 0),
(490, 3, 'PR02E', 9, 20, 1, 0),
(491, 1, 'PR02E', 15, 0, 0, 0),
(492, 1, ' PR01E', 3, 20, 1, 0),
(493, 2, ' PR01E', 7, 20, 1, 0),
(494, 3, ' PR01E', 9, 20, 1, 0),
(495, 1, ' PR01E', 15, 0, 0, 0),
(496, 1, 'PR01CM', 3, 20, 1, 0),
(497, 2, 'PR01CM', 7, 20, 1, 0),
(498, 3, 'PR01CM', 9, 20, 1, 0),
(499, 1, 'SE02C', 15, 0, 0, 0),
(500, 1, 'PR02CM', 3, 20, 1, 0),
(501, 2, 'PR02CM', 7, 20, 1, 0),
(502, 3, 'PR02CM', 9, 20, 1, 0),
(503, 1, 'SE03ET', 15, 0, 0, 0),
(504, 1, 'PR01IN', 3, 20, 1, 0),
(505, 2, 'PR01IN', 7, 50, 1, 0),
(506, 1, 'PR02IN', 3, 20, 1, 0),
(507, 2, 'PR02IN', 7, 50, 1, 0),
(508, 1, 'PR03IN', 3, 20, 1, 0),
(509, 2, 'PR03IN', 7, 50, 1, 0),
(510, 1, 'PR04IN', 3, 20, 1, 0),
(511, 2, 'PR04IN', 7, 50, 1, 0),
(512, 1, 'PR05IN', 3, 20, 1, 0),
(513, 2, 'PR05IN', 7, 50, 1, 0),
(514, 1, 'PR06IN', 3, 20, 1, 0),
(515, 2, 'PR06IN', 7, 40, 1, 0),
(516, 1, 'PR01EF', 1, 25, 1, 0),
(517, 2, 'PR01EF', 4, 50, 1, 0),
(518, 1, 'PR02EF', 1, 25, 1, 0),
(519, 2, 'PR02EF', 4, 50, 1, 0),
(520, 1, 'PR03EF', 1, 25, 1, 0),
(521, 2, 'PR03EF', 4, 50, 1, 0),
(522, 1, 'PR04EF', 1, 10, 1, 0),
(523, 2, 'PR04EF', 4, 50, 1, 0),
(524, 3, 'PR04EF', 13, 10, 1, 0),
(525, 1, 'PR05EF', 1, 10, 1, 0),
(526, 2, 'PR05EF', 4, 50, 1, 0),
(527, 3, 'PR05EF', 13, 10, 1, 0),
(528, 1, 'PR06EF', 1, 10, 1, 0),
(529, 2, 'PR06EF', 4, 50, 1, 0),
(530, 3, 'PR06EF', 13, 10, 1, 0),
(531, 1, 'SE01E', 15, 0, 0, 0),
(532, 1, 'SE02E', 15, 0, 0, 0),
(533, 1, 'SE01M', 15, 0, 0, 0),
(534, 1, 'PR01ET', 3, 20, 1, 0),
(535, 2, 'PR01ET', 7, 10, 1, 0),
(536, 3, 'PR01ET', 14, 70, 1, 0),
(537, 1, 'PR02ET', 3, 20, 1, 0),
(538, 2, 'PR02ET', 7, 70, 1, 0),
(539, 3, 'PR02ET', 14, 10, 1, 0),
(540, 1, 'PR03ET', 3, 15, 1, 0),
(541, 1, 'PR06ET', 3, 20, 1, 0),
(542, 1, 'SE01G', 15, 0, 0, 0),
(543, 1, 'SE01I', 15, 0, 0, 0),
(544, 1, 'SE01EF', 15, 0, 0, 0),
(545, 1, 'SE02EF', 15, 0, 0, 0),
(546, 1, 'PR04E', 3, 20, 2, 0),
(547, 2, 'PR04E', 7, 30, 2, 0),
(548, 3, 'PR04E', 9, 20, 2, 0),
(549, 1, ' PR01E', 3, 20, 2, 0),
(550, 2, ' PR01E', 7, 30, 2, 0),
(551, 1, 'PR02E', 3, 20, 2, 0),
(552, 2, 'PR02E', 7, 30, 2, 0),
(553, 3, 'PR02E', 9, 20, 2, 0),
(554, 1, 'PR03E', 3, 20, 2, 0),
(555, 2, 'PR03E', 7, 30, 2, 0),
(556, 3, 'PR03E', 9, 20, 2, 0),
(557, 1, 'PR05E', 3, 20, 2, 0),
(558, 2, 'PR05E', 7, 30, 2, 0),
(559, 3, 'PR05E', 9, 20, 2, 0),
(560, 1, 'PR06E', 3, 20, 2, 0),
(561, 2, 'PR06E', 7, 30, 2, 0),
(562, 3, 'PR06E', 9, 20, 2, 0),
(563, 1, 'PR01M', 3, 20, 2, 0),
(564, 2, 'PR01M', 7, 30, 2, 0),
(565, 3, 'PR01M', 9, 20, 2, 0),
(566, 1, 'PR03M', 3, 20, 2, 0),
(567, 2, 'PR03M', 7, 30, 2, 0),
(568, 3, 'PR03M', 9, 20, 2, 0),
(569, 1, 'PR04M', 3, 20, 2, 0),
(570, 2, 'PR04M', 7, 30, 2, 0),
(571, 3, 'PR04M', 9, 20, 2, 0),
(572, 1, 'PR05M', 3, 20, 2, 0),
(573, 2, 'PR05M', 7, 30, 2, 0),
(574, 3, 'PR05M', 9, 20, 2, 0),
(575, 1, 'PR06M', 3, 20, 2, 0),
(576, 2, 'PR06M', 7, 30, 2, 0),
(577, 3, 'PR06M', 9, 20, 2, 0),
(578, 1, 'PR01CM', 3, 20, 2, 0),
(579, 2, 'PR01CM', 7, 30, 2, 0),
(580, 3, 'PR01CM', 9, 20, 2, 0),
(581, 1, 'PR02CM', 3, 20, 2, 0),
(582, 2, 'PR02CM', 7, 30, 2, 0),
(583, 3, 'PR02CM', 9, 20, 2, 0),
(584, 1, 'PR03CN', 3, 20, 2, 0),
(585, 2, 'PR03CN', 7, 30, 2, 0),
(586, 3, 'PR03CN', 9, 20, 2, 0),
(587, 1, 'PR04CN', 3, 20, 2, 0),
(588, 2, 'PR04CN', 7, 30, 2, 0),
(589, 3, 'PR04CN', 9, 20, 2, 0),
(590, 1, 'PR05CN', 3, 20, 2, 0),
(591, 2, 'PR05CN', 7, 30, 2, 0),
(592, 3, 'PR05CN', 9, 20, 2, 0),
(593, 1, 'PR06CN', 3, 20, 2, 0),
(594, 2, 'PR06CN', 7, 30, 2, 0),
(595, 3, 'PR06CN', 9, 20, 2, 0),
(596, 1, 'PR03H', 3, 20, 2, 0),
(597, 2, 'PR03H', 7, 30, 2, 0),
(598, 3, 'PR03H', 9, 20, 2, 0),
(599, 1, 'PR04H', 3, 20, 2, 0),
(600, 2, 'PR04H', 7, 30, 2, 0),
(601, 3, 'PR04H', 9, 20, 2, 0),
(602, 1, 'PR05H', 3, 20, 2, 0),
(603, 2, 'PR05H', 7, 30, 2, 0),
(604, 3, 'PR05H', 9, 20, 2, 0),
(605, 1, 'PR06H', 3, 20, 2, 0),
(606, 2, 'PR06H', 7, 30, 2, 0),
(607, 3, 'PR06H', 9, 20, 2, 0),
(608, 1, 'PR03G', 3, 20, 2, 0),
(609, 2, 'PR03G', 7, 30, 2, 0),
(610, 3, 'PR03G', 9, 20, 2, 0),
(611, 1, 'PR04G', 3, 20, 2, 0),
(612, 2, 'PR04G', 7, 30, 2, 0),
(613, 3, 'PR04G', 9, 20, 2, 0),
(614, 1, 'PR05G', 3, 20, 2, 0),
(615, 2, 'PR05G', 7, 30, 2, 0),
(616, 3, 'PR05G', 9, 20, 2, 0),
(617, 1, 'PR06G', 3, 20, 2, 0),
(618, 2, 'PR06G', 7, 30, 2, 0),
(619, 3, 'PR06G', 9, 20, 2, 0),
(620, 1, 'PR03EC', 3, 20, 2, 0),
(621, 2, 'PR03EC', 7, 30, 2, 0),
(622, 3, 'PR03EC', 9, 20, 2, 0),
(623, 1, 'PR04EC', 3, 20, 2, 0),
(624, 2, 'PR04EC', 7, 30, 2, 0),
(625, 3, 'PR04EC', 9, 20, 2, 0),
(626, 1, 'PR05EC', 3, 20, 2, 0),
(627, 2, 'PR05EC', 7, 30, 2, 0),
(628, 3, 'PR05EC', 9, 20, 2, 0),
(629, 1, 'PR06EC', 3, 20, 2, 0),
(630, 2, 'PR06EC', 7, 30, 2, 0),
(631, 3, 'PR06EC', 9, 20, 2, 0),
(632, 1, 'PR01EF', 1, 25, 2, 0),
(633, 1, 'PR02EF', 1, 25, 2, 0),
(634, 1, 'PR03EF', 1, 25, 2, 0),
(635, 1, 'PR04EF', 1, 10, 2, 0),
(636, 2, 'PR04EF', 13, 10, 2, 0),
(637, 1, 'PR05EF', 1, 10, 2, 0),
(638, 2, 'PR05EF', 13, 10, 2, 0),
(639, 1, 'PR06EF', 1, 10, 2, 0),
(640, 2, 'PR06EF', 13, 10, 2, 0),
(641, 1, 'PR01IN', 3, 20, 2, 0),
(642, 2, 'PR01IN', 7, 50, 2, 0),
(643, 1, 'PR02IN', 3, 20, 2, 0),
(644, 2, 'PR02IN', 7, 50, 2, 0),
(645, 1, 'PR03IN', 3, 20, 2, 0),
(646, 2, 'PR03IN', 7, 50, 2, 0),
(647, 1, 'PR04IN', 3, 20, 2, 0),
(648, 2, 'PR04IN', 7, 50, 2, 0),
(649, 1, 'PR05IN', 3, 20, 2, 0),
(650, 2, 'PR05IN', 7, 50, 2, 0),
(651, 1, 'PR06IN', 3, 20, 2, 0),
(652, 2, 'PR06IN', 7, 40, 2, 0),
(653, 1, 'PR04ET', 3, 15, 2, 0),
(654, 1, 'PR05ET', 3, 15, 2, 0),
(655, 1, 'PR06ET', 3, 15, 2, 0),
(656, 1, 'PR02M', 3, 20, 2, 0),
(657, 2, 'PR02M', 7, 30, 2, 0),
(658, 3, 'PR02M', 9, 20, 2, 0),
(659, 1, 'SE03I', 7, 30, 2, 0),
(660, 1, 'SE02I', 7, 30, 2, 0),
(661, 1, 'SE01I', 7, 30, 2, 0),
(662, 1, 'SE01EF', 7, 20, 2, 0),
(663, 2, 'SE01EF', 13, 10, 2, 0),
(664, 1, 'SE02EF', 7, 20, 2, 0),
(665, 2, 'SE02EF', 13, 10, 2, 0),
(666, 1, 'SE03EF', 7, 20, 2, 0),
(667, 2, 'SE03EF', 13, 10, 2, 0),
(668, 1, 'SE02H', 7, 30, 2, 0),
(669, 1, 'SE03H', 7, 30, 2, 0),
(670, 1, 'SE03Q', 7, 30, 2, 0),
(671, 1, 'SE02B', 3, 10, 2, 0),
(672, 2, 'SE02B', 7, 70, 2, 0),
(673, 1, 'SE01M', 3, 20, 2, 0),
(674, 2, 'SE01M', 7, 40, 2, 0),
(675, 3, 'SE01M', 18, 30, 2, 0),
(676, 2, 'SE02M', 7, 30, 2, 0),
(677, 3, 'SE02M', 18, 30, 2, 0),
(678, 2, 'SE03M', 7, 30, 2, 0),
(679, 1, 'SE02F', 7, 30, 2, 0),
(680, 1, 'SE01E', 3, 20, 2, 0),
(681, 1, 'SE02E', 3, 20, 2, 0),
(682, 1, 'SE03E', 3, 20, 2, 0),
(683, 2, 'SE03E', 7, 30, 2, 0),
(684, 1, 'SE02ET', 14, 30, 2, 0),
(685, 1, 'SE03ET', 7, 30, 2, 0),
(686, 2, 'SE03ET', 14, 30, 2, 0),
(687, 1, 'SE02E', 3, 20, 3, 0),
(688, 1, ' PR01E', 3, 20, 3, 0),
(689, 2, ' PR01E', 7, 30, 3, 0),
(690, 3, ' PR01E', 9, 20, 3, 0),
(691, 1, 'PR02E', 3, 20, 3, 0),
(692, 2, 'PR02E', 7, 30, 3, 0),
(693, 3, 'PR02E', 9, 20, 3, 0),
(694, 1, 'PR03E', 3, 20, 3, 0),
(695, 2, 'PR03E', 7, 30, 3, 0),
(696, 3, 'PR03E', 9, 20, 3, 0),
(697, 1, 'PR04E', 3, 20, 3, 0),
(698, 2, 'PR04E', 7, 30, 3, 0),
(699, 3, 'PR04E', 9, 20, 3, 0),
(700, 1, 'PR05E', 3, 20, 3, 0),
(701, 2, 'PR05E', 7, 30, 3, 0),
(702, 3, 'PR05E', 9, 20, 3, 0),
(703, 1, 'PR06E', 3, 20, 3, 0),
(704, 2, 'PR06E', 7, 30, 3, 0),
(705, 3, 'PR06E', 9, 20, 3, 0),
(706, 1, 'PR01M', 3, 20, 3, 0),
(707, 2, 'PR01M', 7, 30, 3, 0),
(708, 3, 'PR01M', 9, 20, 3, 0),
(709, 1, 'PR02M', 3, 20, 3, 0),
(710, 2, 'PR02M', 7, 30, 3, 0),
(711, 3, 'PR02M', 9, 20, 3, 0),
(712, 1, 'PR03M', 3, 20, 3, 0),
(713, 2, 'PR03M', 7, 30, 3, 0),
(714, 3, 'PR03M', 9, 20, 3, 0),
(715, 1, 'PR04M', 3, 20, 3, 0),
(716, 2, 'PR04M', 7, 30, 3, 0),
(717, 3, 'PR04M', 9, 20, 3, 0),
(718, 1, 'PR05M', 3, 20, 3, 0),
(719, 2, 'PR05M', 7, 30, 3, 0),
(720, 3, 'PR05M', 9, 20, 3, 0),
(721, 1, 'PR06M', 3, 20, 3, 0),
(722, 2, 'PR06M', 7, 30, 3, 0),
(723, 3, 'PR06M', 9, 20, 3, 0),
(724, 1, 'PR01CM', 3, 20, 3, 0),
(725, 2, 'PR01CM', 7, 30, 3, 0),
(726, 3, 'PR01CM', 9, 20, 3, 0),
(727, 1, 'PR02CM', 3, 20, 3, 0),
(728, 2, 'PR02CM', 7, 30, 3, 0),
(729, 3, 'PR02CM', 9, 20, 3, 0),
(730, 1, 'PR03CN', 3, 20, 3, 0),
(731, 2, 'PR03CN', 7, 30, 3, 0),
(732, 3, 'PR03CN', 9, 20, 3, 0),
(733, 1, 'PR04CN', 3, 20, 3, 0),
(734, 2, 'PR04CN', 7, 30, 3, 0),
(735, 3, 'PR04CN', 9, 20, 3, 0),
(736, 1, 'PR05CN', 3, 20, 3, 0),
(737, 2, 'PR05CN', 7, 30, 3, 0),
(738, 3, 'PR05CN', 9, 20, 3, 0),
(739, 1, 'PR06CN', 3, 20, 3, 0),
(740, 2, 'PR06CN', 7, 30, 3, 0),
(741, 3, 'PR06CN', 9, 20, 3, 0),
(742, 1, 'PR03H', 3, 20, 3, 0),
(743, 2, 'PR03H', 7, 30, 3, 0),
(744, 3, 'PR03H', 9, 20, 3, 0),
(745, 1, 'PR04H', 3, 20, 3, 0),
(746, 2, 'PR04H', 7, 30, 3, 0),
(747, 3, 'PR04H', 9, 20, 3, 0),
(748, 1, 'PR05H', 3, 20, 3, 0),
(749, 2, 'PR05H', 7, 30, 3, 0),
(750, 3, 'PR05H', 9, 20, 3, 0),
(751, 1, 'PR06H', 3, 20, 3, 0),
(752, 2, 'PR06H', 7, 30, 3, 0),
(753, 3, 'PR06H', 9, 20, 3, 0),
(754, 1, 'PR03G', 3, 20, 3, 0),
(755, 2, 'PR03G', 7, 30, 3, 0),
(756, 3, 'PR03G', 9, 20, 3, 0),
(757, 1, 'PR04G', 3, 20, 3, 0),
(758, 2, 'PR04G', 7, 30, 3, 0),
(759, 3, 'PR04G', 9, 20, 3, 0),
(760, 1, 'PR05G', 3, 20, 3, 0),
(761, 2, 'PR05G', 7, 30, 3, 0),
(762, 3, 'PR05G', 9, 20, 3, 0),
(763, 1, 'PR06G', 3, 20, 3, 0),
(764, 2, 'PR06G', 7, 30, 3, 0),
(765, 3, 'PR06G', 9, 20, 3, 0),
(766, 1, 'PR03EC', 3, 20, 3, 0),
(767, 2, 'PR03EC', 7, 30, 3, 0),
(768, 3, 'PR03EC', 9, 20, 3, 0),
(769, 1, 'PR04EC', 3, 20, 3, 0),
(770, 2, 'PR04EC', 7, 30, 3, 0),
(771, 3, 'PR04EC', 9, 20, 3, 0),
(772, 1, 'PR05EC', 3, 20, 3, 0),
(773, 2, 'PR05EC', 7, 30, 3, 0),
(774, 3, 'PR05EC', 9, 20, 3, 0),
(775, 1, 'PR06EC', 3, 20, 3, 0),
(776, 2, 'PR06EC', 7, 30, 3, 0),
(777, 3, 'PR06EC', 9, 20, 3, 0),
(778, 1, 'SE01I', 3, 20, 3, 0),
(779, 2, 'SE01I', 7, 40, 3, 0),
(780, 1, 'SE02I', 3, 20, 3, 0),
(781, 2, 'SE02I', 7, 40, 3, 0),
(782, 1, 'SE03I', 7, 40, 3, 0),
(783, 1, 'SE01M', 3, 30, 3, 0),
(784, 2, 'SE01M', 7, 40, 3, 0),
(785, 3, 'SE01M', 18, 30, 3, 0),
(786, 1, 'SE02M', 7, 40, 3, 0),
(787, 2, 'SE02M', 18, 30, 3, 0),
(788, 1, 'SE03M', 7, 40, 3, 0),
(789, 2, 'SE03M', 18, 30, 3, 0),
(790, 1, 'SE02F', 3, 20, 3, 0),
(791, 2, 'SE02F', 7, 40, 3, 0),
(792, 1, 'SE01G', 7, 40, 3, 0),
(793, 1, 'SE02H', 7, 40, 3, 0),
(794, 1, 'SE03H', 7, 40, 3, 0),
(795, 1, 'SE02B', 7, 65, 3, 0),
(796, 2, 'SE02B', 12, 10, 3, 0),
(797, 1, 'SE03Q', 7, 30, 3, 0),
(798, 1, 'SE01E', 3, 20, 3, 0),
(799, 1, 'SE03E', 3, 20, 3, 0),
(800, 2, 'SE03E', 7, 40, 3, 0),
(801, 1, 'SE02EA', 4, 30, 3, 0),
(802, 1, 'SE03EA', 4, 30, 3, 0),
(803, 1, 'SE01EF', 7, 20, 3, 0),
(804, 2, 'SE01EF', 13, 10, 3, 0),
(805, 3, 'SE01EF', 14, 60, 3, 0),
(806, 1, 'SE02EF', 7, 20, 3, 0),
(807, 2, 'SE02EF', 13, 10, 3, 0),
(808, 3, 'SE02EF', 14, 60, 3, 0),
(809, 1, 'SE03EF', 7, 20, 3, 0),
(810, 2, 'SE03EF', 13, 10, 3, 0),
(811, 3, 'SE03EF', 14, 60, 3, 0),
(812, 1, 'PR04IN', 3, 20, 3, 0),
(813, 2, 'PR04IN', 7, 50, 3, 0),
(814, 1, 'PR06IN', 3, 20, 3, 0),
(815, 2, 'PR06IN', 7, 40, 3, 0),
(816, 1, 'PR05IN', 3, 20, 3, 0),
(817, 2, 'PR05IN', 7, 50, 3, 0),
(818, 1, 'PR03IN', 7, 100, 3, 0),
(819, 1, 'PR02IN', 7, 100, 3, 0),
(820, 1, 'PR01IN', 7, 50, 3, 0),
(821, 1, 'PR04ET', 3, 15, 3, 0),
(822, 1, 'PR05ET', 3, 15, 3, 0),
(823, 1, 'PR06ET', 3, 15, 3, 0),
(824, 1, 'PR01EF', 1, 40, 3, 0),
(825, 2, 'PR01EF', 13, 10, 3, 0),
(826, 3, 'PR01EF', 14, 50, 3, 0),
(827, 1, 'PR02EF', 1, 40, 3, 0),
(828, 2, 'PR02EF', 13, 10, 3, 0),
(829, 3, 'PR02EF', 14, 50, 3, 0),
(830, 1, 'PR03EF', 1, 40, 3, 0),
(831, 2, 'PR03EF', 13, 10, 3, 0),
(832, 3, 'PR03EF', 14, 50, 3, 0),
(833, 1, 'PR04EF', 1, 40, 3, 0),
(834, 2, 'PR04EF', 13, 10, 3, 0),
(835, 3, 'PR04EF', 14, 50, 3, 0),
(836, 1, 'PR05EF', 1, 40, 3, 0),
(837, 2, 'PR05EF', 13, 10, 3, 0),
(838, 3, 'PR05EF', 14, 50, 3, 0),
(839, 1, 'PR06EF', 1, 40, 3, 0),
(840, 2, 'PR06EF', 13, 10, 3, 0),
(841, 3, 'PR06EF', 14, 50, 3, 0),
(842, 1, 'PR01M', 3, 20, 4, 0),
(843, 2, 'PR01M', 7, 30, 4, 0),
(844, 3, 'PR01M', 9, 20, 4, 0),
(845, 1, ' PR01E', 3, 20, 4, 0),
(846, 2, ' PR01E', 7, 30, 4, 0),
(847, 3, ' PR01E', 9, 20, 4, 0),
(848, 1, 'PR01CM', 3, 20, 4, 0),
(849, 2, 'PR01CM', 7, 30, 4, 0),
(850, 3, 'PR01CM', 9, 20, 4, 0),
(851, 1, 'PR02E', 3, 20, 4, 0),
(852, 2, 'PR02E', 7, 30, 4, 0),
(853, 3, 'PR02E', 9, 20, 4, 0),
(854, 1, 'PR02M', 3, 20, 4, 0),
(855, 2, 'PR02M', 7, 30, 4, 0),
(856, 3, 'PR02M', 9, 20, 4, 0),
(857, 1, 'PR02CM', 3, 20, 4, 0),
(858, 2, 'PR02CM', 7, 30, 4, 0),
(859, 3, 'PR02CM', 9, 20, 4, 0),
(860, 1, 'PR04ET', 3, 15, 4, 0),
(861, 1, 'PR05ET', 3, 15, 4, 0),
(862, 1, 'PR06ET', 3, 15, 4, 0),
(863, 1, 'PR01IN', 3, 20, 4, 0),
(864, 2, 'PR01IN', 7, 50, 4, 0),
(865, 1, 'PR02IN', 3, 20, 4, 0),
(866, 2, 'PR02IN', 7, 50, 4, 0),
(867, 1, 'PR03IN', 3, 20, 4, 0),
(868, 2, 'PR03IN', 7, 50, 4, 0),
(869, 1, 'PR04IN', 3, 20, 4, 0),
(870, 2, 'PR04IN', 7, 50, 4, 0),
(871, 1, 'PR05IN', 3, 20, 4, 0),
(872, 2, 'PR05IN', 7, 50, 4, 0),
(873, 1, 'PR06IN', 3, 20, 4, 0),
(874, 2, 'PR06IN', 7, 40, 4, 0),
(875, 1, 'PR01EF', 1, 40, 4, 0),
(876, 2, 'PR01EF', 4, 50, 4, 0),
(877, 3, 'PR01EF', 13, 10, 4, 0),
(878, 1, 'PR02EF', 1, 40, 4, 0),
(879, 2, 'PR02EF', 4, 50, 4, 0),
(880, 3, 'PR02EF', 13, 10, 4, 0),
(881, 1, 'PR03EF', 1, 40, 4, 0),
(882, 2, 'PR03EF', 4, 50, 4, 0),
(883, 3, 'PR03EF', 13, 10, 4, 0),
(884, 1, 'PR04EF', 1, 40, 4, 0),
(885, 2, 'PR04EF', 4, 50, 4, 0),
(886, 3, 'PR04EF', 13, 10, 4, 0),
(887, 1, 'PR05EF', 1, 40, 4, 0),
(888, 2, 'PR05EF', 4, 50, 4, 0),
(889, 3, 'PR05EF', 13, 10, 4, 0),
(890, 1, 'PR06EF', 1, 40, 4, 0),
(891, 2, 'PR06EF', 4, 50, 4, 0),
(892, 3, 'PR06EF', 13, 10, 4, 0),
(893, 1, 'PR03E', 3, 20, 4, 0),
(894, 2, 'PR03E', 7, 30, 4, 0),
(895, 3, 'PR03E', 9, 20, 4, 0),
(896, 1, 'PR04E', 3, 20, 4, 0),
(897, 2, 'PR04E', 7, 30, 4, 0),
(898, 3, 'PR04E', 9, 20, 4, 0),
(899, 1, 'PR05E', 3, 20, 4, 0),
(900, 2, 'PR05E', 7, 30, 4, 0),
(901, 3, 'PR05E', 9, 20, 4, 0),
(902, 1, 'PR06E', 3, 20, 4, 0),
(903, 2, 'PR06E', 7, 30, 4, 0),
(904, 3, 'PR06E', 9, 20, 4, 0),
(905, 1, 'PR03M', 3, 20, 4, 0),
(906, 2, 'PR03M', 7, 30, 4, 0),
(907, 3, 'PR03M', 9, 20, 4, 0),
(908, 1, 'PR04M', 3, 20, 4, 0),
(909, 2, 'PR04M', 7, 30, 4, 0),
(910, 3, 'PR04M', 9, 20, 4, 0),
(911, 1, 'PR05M', 3, 20, 4, 0),
(912, 2, 'PR05M', 7, 30, 4, 0),
(913, 3, 'PR05M', 9, 20, 4, 0),
(914, 1, 'PR06M', 3, 20, 4, 0),
(915, 2, 'PR06M', 7, 30, 4, 0),
(916, 3, 'PR06M', 9, 20, 4, 0),
(917, 1, 'PR03CN', 3, 20, 4, 0),
(918, 2, 'PR03CN', 7, 30, 4, 0),
(919, 3, 'PR03CN', 9, 20, 4, 0),
(920, 1, 'PR04CN', 3, 20, 4, 0),
(921, 2, 'PR04CN', 7, 30, 4, 0),
(922, 3, 'PR04CN', 9, 20, 4, 0),
(923, 1, 'PR05CN', 3, 20, 4, 0),
(924, 4, 'PR05CN', 7, 30, 4, 0),
(925, 2, 'PR05CN', 9, 20, 4, 0),
(926, 1, 'PR06CN', 3, 20, 4, 0),
(927, 2, 'PR06CN', 7, 30, 4, 0),
(928, 3, 'PR06CN', 9, 20, 4, 0),
(929, 1, 'PR03H', 3, 20, 4, 0),
(930, 2, 'PR03H', 7, 30, 4, 0),
(931, 3, 'PR03H', 9, 20, 4, 0),
(932, 1, 'PR04H', 3, 20, 4, 0),
(933, 2, 'PR04H', 7, 30, 4, 0),
(934, 3, 'PR04H', 9, 20, 4, 0),
(935, 1, 'PR05H', 3, 20, 4, 0),
(936, 2, 'PR05H', 7, 30, 4, 0),
(937, 3, 'PR05H', 9, 20, 4, 0),
(938, 1, 'PR06H', 3, 20, 4, 0),
(939, 2, 'PR06H', 7, 30, 4, 0),
(940, 3, 'PR06H', 9, 20, 4, 0),
(941, 1, 'PR03G', 3, 20, 4, 0),
(942, 2, 'PR03G', 7, 30, 4, 0),
(943, 3, 'PR03G', 9, 20, 4, 0),
(944, 1, 'PR04G', 3, 20, 4, 0),
(945, 2, 'PR04G', 7, 30, 4, 0),
(946, 3, 'PR04G', 9, 20, 4, 0),
(947, 1, 'PR05G', 3, 20, 4, 0),
(948, 2, 'PR05G', 7, 30, 4, 0),
(949, 3, 'PR05G', 9, 20, 4, 0),
(950, 1, 'PR06G', 3, 20, 4, 0),
(951, 2, 'PR06G', 7, 30, 4, 0),
(952, 3, 'PR06G', 9, 20, 4, 0),
(953, 1, 'PR03EC', 3, 20, 4, 0),
(954, 2, 'PR03EC', 7, 30, 4, 0),
(955, 3, 'PR03EC', 9, 20, 4, 0),
(956, 1, 'PR04EC', 3, 20, 4, 0),
(957, 2, 'PR04EC', 7, 30, 4, 0),
(958, 3, 'PR04EC', 9, 20, 4, 0),
(959, 1, 'PR05EC', 3, 20, 4, 0),
(960, 2, 'PR05EC', 7, 30, 4, 0),
(961, 3, 'PR05EC', 9, 20, 4, 0),
(962, 1, 'PR06EC', 3, 20, 4, 0),
(963, 2, 'PR06EC', 7, 30, 4, 0),
(964, 3, 'PR06EC', 9, 20, 4, 0),
(965, 1, 'SE02B', 3, 20, 4, 0),
(966, 2, 'SE02B', 7, 50, 4, 0),
(967, 3, 'SE02B', 14, 20, 4, 0),
(968, 1, 'SE03Q', 7, 40, 4, 0),
(969, 1, 'SE01I', 3, 20, 4, 0),
(970, 2, 'SE01I', 7, 40, 4, 0),
(971, 1, 'SE02I', 3, 20, 4, 0),
(972, 2, 'SE02I', 7, 40, 4, 0),
(973, 1, 'SE03I', 3, 20, 4, 0),
(974, 2, 'SE03I', 7, 40, 4, 0),
(975, 1, 'SE02ET', 14, 30, 4, 0),
(976, 3, 'SE03ET', 14, 30, 4, 0),
(977, 1, 'SE01M', 3, 20, 4, 0),
(978, 2, 'SE01M', 7, 40, 4, 0),
(979, 3, 'SE01M', 18, 30, 4, 0),
(980, 1, 'SE02M', 7, 40, 4, 0),
(981, 2, 'SE02M', 18, 25, 4, 0),
(982, 1, 'SE03M', 7, 25, 4, 0),
(983, 2, 'SE03M', 18, 25, 4, 0),
(984, 1, 'SE01E', 3, 20, 4, 0),
(985, 1, 'SE02E', 3, 20, 4, 0),
(986, 1, 'SE03E', 3, 20, 4, 0),
(987, 2, 'SE03E', 7, 30, 4, 0),
(988, 1, 'SE02H', 7, 30, 4, 0),
(989, 1, 'SE03H', 7, 30, 4, 0),
(990, 1, 'SE01G', 7, 30, 4, 0),
(991, 1, 'SE01EF', 7, 20, 4, 0),
(992, 2, 'SE01EF', 13, 10, 4, 0),
(993, 1, 'SE02EF', 7, 20, 4, 0),
(994, 2, 'SE02EF', 13, 10, 4, 0),
(995, 1, 'SE03EF', 7, 20, 4, 0),
(996, 2, 'SE03EF', 13, 10, 4, 0),
(997, 1, 'SE02EA', 4, 35, 4, 0),
(998, 1, 'SE03EA', 4, 35, 4, 0),
(999, 1, 'SE02F', 7, 30, 4, 0),
(1000, 1, 'SE01EF', 7, 20, 5, 0),
(1001, 2, 'SE01EF', 13, 10, 5, 0),
(1002, 1, 'SE02EF', 7, 20, 5, 0),
(1003, 2, 'SE02EF', 13, 10, 5, 0),
(1004, 3, 'SE02EF', 14, 60, 5, 0),
(1005, 1, 'SE03EF', 7, 20, 5, 0),
(1006, 2, 'SE03EF', 13, 10, 5, 0),
(1007, 3, 'SE03EF', 14, 60, 5, 0),
(1008, 1, 'SE01E', 3, 20, 5, 0),
(1009, 1, 'SE02E', 3, 20, 5, 0),
(1010, 1, 'SE03E', 3, 20, 5, 0),
(1011, 2, 'SE03E', 7, 40, 5, 0),
(1012, 3, 'SE01M', 7, 30, 5, 0),
(1013, 1, 'SE01M', 18, 10, 5, 0),
(1014, 1, 'SE02M', 7, 40, 5, 0),
(1015, 2, 'SE02M', 18, 25, 5, 0),
(1016, 1, 'SE03M', 7, 40, 5, 0),
(1017, 2, 'SE03M', 18, 30, 5, 0),
(1018, 1, 'SE01I', 7, 40, 5, 0),
(1019, 1, 'SE02I', 7, 40, 5, 0),
(1020, 1, 'SE03I', 7, 40, 5, 0),
(1021, 1, 'SE03EA', 4, 30, 5, 0),
(1022, 1, 'SE02B', 3, 20, 5, 0),
(1023, 2, 'SE02B', 7, 70, 5, 0),
(1024, 3, 'SE02B', 14, 10, 5, 0),
(1025, 1, 'SE03Q', 7, 25, 5, 0),
(1026, 1, 'SE02F', 3, 20, 5, 0),
(1027, 2, 'SE02F', 7, 40, 5, 0),
(1028, 1, 'PR04ET', 3, 15, 5, 0),
(1029, 1, 'PR05ET', 3, 15, 5, 0),
(1030, 1, 'PR06ET', 3, 15, 5, 0),
(1031, 1, 'PR03M', 3, 20, 5, 0),
(1032, 2, 'PR03M', 7, 30, 5, 0),
(1033, 3, 'PR03M', 9, 20, 5, 0),
(1034, 1, 'PR03E', 3, 20, 5, 0),
(1035, 2, 'PR03E', 7, 30, 5, 0),
(1036, 3, 'PR03E', 9, 20, 5, 0),
(1037, 1, 'PR04E', 3, 20, 5, 0),
(1038, 2, 'PR04E', 7, 30, 5, 0),
(1039, 3, 'PR04E', 9, 20, 5, 0),
(1040, 1, ' PR01E', 3, 20, 5, 0),
(1041, 2, ' PR01E', 7, 30, 5, 0),
(1042, 3, ' PR01E', 9, 20, 5, 0),
(1043, 1, 'PR02E', 3, 20, 5, 0),
(1044, 2, 'PR02E', 7, 30, 5, 0),
(1045, 3, 'PR02E', 9, 20, 5, 0),
(1046, 1, 'PR05E', 3, 20, 5, 0),
(1047, 2, 'PR05E', 7, 30, 5, 0),
(1048, 3, 'PR05E', 9, 20, 5, 0),
(1049, 1, 'PR06E', 3, 20, 5, 0),
(1050, 2, 'PR06E', 7, 30, 5, 0),
(1051, 3, 'PR06E', 9, 20, 5, 0),
(1052, 1, 'PR01M', 3, 20, 5, 0),
(1053, 2, 'PR01M', 7, 30, 5, 0),
(1054, 3, 'PR01M', 9, 20, 5, 0),
(1055, 1, 'PR01CM', 3, 20, 5, 0),
(1056, 2, 'PR01CM', 7, 30, 5, 0),
(1057, 3, 'PR01CM', 9, 20, 5, 0),
(1058, 1, 'PR02M', 3, 20, 5, 0),
(1059, 2, 'PR02M', 7, 30, 5, 0),
(1060, 3, 'PR02M', 9, 20, 5, 0),
(1061, 1, 'PR04M', 3, 20, 5, 0),
(1062, 2, 'PR04M', 7, 30, 5, 0),
(1063, 3, 'PR04M', 9, 20, 5, 0),
(1064, 1, 'PR05M', 3, 20, 5, 0),
(1065, 2, 'PR05M', 7, 30, 5, 0),
(1066, 3, 'PR05M', 9, 20, 5, 0),
(1067, 1, 'PR06M', 3, 20, 5, 0),
(1068, 2, 'PR06M', 7, 30, 5, 0),
(1069, 3, 'PR06M', 9, 20, 5, 0),
(1070, 1, 'PR03CN', 3, 20, 5, 0),
(1071, 2, 'PR03CN', 7, 30, 5, 0),
(1072, 3, 'PR03CN', 9, 20, 5, 0),
(1073, 1, 'PR04CN', 3, 20, 5, 0),
(1074, 2, 'PR04CN', 7, 30, 5, 0),
(1075, 3, 'PR04CN', 9, 20, 5, 0),
(1076, 1, 'PR05CN', 3, 20, 5, 0),
(1077, 2, 'PR05CN', 7, 30, 5, 0),
(1078, 3, 'PR05CN', 9, 20, 5, 0),
(1079, 1, 'PR06CN', 3, 20, 5, 0),
(1080, 2, 'PR06CN', 7, 30, 5, 0),
(1081, 3, 'PR06CN', 9, 20, 5, 0),
(1082, 1, 'PR02CM', 3, 20, 5, 0),
(1083, 2, 'PR02CM', 7, 30, 5, 0),
(1084, 3, 'PR02CM', 9, 20, 5, 0),
(1085, 1, 'PR03H', 3, 20, 5, 0),
(1086, 2, 'PR03H', 7, 30, 5, 0),
(1087, 3, 'PR03H', 9, 20, 5, 0),
(1088, 1, 'PR04H', 3, 20, 5, 0),
(1089, 2, 'PR04H', 7, 30, 5, 0),
(1090, 3, 'PR04H', 9, 20, 5, 0),
(1091, 1, 'PR05H', 3, 20, 5, 0),
(1092, 2, 'PR05H', 7, 30, 5, 0),
(1093, 3, 'PR05H', 9, 20, 5, 0),
(1094, 1, 'PR06H', 3, 20, 5, 0),
(1095, 2, 'PR06H', 7, 30, 5, 0),
(1096, 3, 'PR06H', 9, 20, 5, 0),
(1097, 1, 'PR03G', 3, 20, 5, 0),
(1098, 2, 'PR03G', 7, 30, 5, 0),
(1099, 3, 'PR03G', 9, 20, 5, 0),
(1100, 1, 'PR04G', 3, 20, 5, 0),
(1101, 2, 'PR04G', 7, 30, 5, 0),
(1102, 3, 'PR04G', 9, 20, 5, 0),
(1103, 1, 'PR05G', 3, 20, 5, 0),
(1104, 2, 'PR05G', 7, 30, 5, 0),
(1105, 3, 'PR05G', 9, 20, 5, 0),
(1106, 1, 'PR06G', 3, 20, 5, 0),
(1107, 2, 'PR06G', 7, 30, 5, 0),
(1108, 3, 'PR06G', 9, 20, 5, 0),
(1109, 1, 'PR03EC', 3, 20, 5, 0),
(1110, 2, 'PR03EC', 7, 30, 5, 0),
(1111, 3, 'PR03EC', 9, 20, 5, 0),
(1112, 1, 'PR04EC', 3, 20, 5, 0),
(1113, 2, 'PR04EC', 7, 30, 5, 0),
(1114, 3, 'PR04EC', 9, 20, 5, 0),
(1115, 1, 'PR05EC', 3, 20, 5, 0),
(1116, 2, 'PR05EC', 7, 30, 5, 0),
(1117, 3, 'PR05EC', 9, 20, 5, 0),
(1118, 1, 'PR06EC', 3, 20, 5, 0),
(1119, 2, 'PR06EC', 9, 20, 5, 0),
(1120, 3, 'PR06EC', 7, 30, 5, 0),
(1121, 1, 'PR01IN', 3, 20, 5, 0),
(1122, 2, 'PR01IN', 7, 50, 5, 0),
(1123, 1, 'PR02IN', 3, 20, 5, 0),
(1124, 2, 'PR02IN', 7, 50, 5, 0),
(1125, 1, 'PR03IN', 3, 20, 5, 0),
(1126, 2, 'PR03IN', 7, 50, 5, 0),
(1127, 1, 'PR04IN', 3, 20, 5, 0),
(1128, 2, 'PR04IN', 7, 50, 5, 0),
(1129, 1, 'PR05IN', 3, 20, 5, 0),
(1130, 2, 'PR05IN', 7, 50, 5, 0),
(1131, 1, 'PR06IN', 3, 20, 5, 0),
(1132, 2, 'PR06IN', 7, 40, 5, 0),
(1133, 1, 'PR03EA', 7, 40, 5, 0),
(1134, 2, 'SE02M', 18, 25, 1, 0),
(1135, 3, 'SE03M', 18, 25, 1, 0),
(1136, 1, 'SE01CB', 7, 30, 1, 0),
(1137, 2, 'SE03C', 3, 40, 1, 0),
(1138, 2, 'PR04EA', 7, 20, 1, 0),
(1139, 1, 'PR05EA', 7, 20, 1, 0),
(1140, 2, 'PR06EA', 7, 20, 1, 0),
(1141, 1, 'SE01AV', 7, 40, 1, 0),
(1142, 1, 'SE02ET', 3, 20, 1, 0),
(1143, 1, 'SE03ET', 3, 20, 1, 0),
(1144, 3, 'SE02B', 3, 30, 1, 0),
(1145, 1, 'SE01CB', 15, 0, 0, 0),
(1146, 1, 'SE01AV', 15, 0, 0, 0),
(1147, 1, 'SE01T', 15, 0, 0, 0),
(1148, 3, 'SE02B', 12, 20, 2, 0),
(1149, 1, 'SE01CB', 7, 30, 2, 0),
(1150, 1, 'SE01T', 3, 20, 2, 0),
(1151, 2, 'SE01T', 14, 30, 2, 0),
(1152, 2, 'SE02ET', 3, 20, 2, 0),
(1153, 3, 'SE03ET', 3, 20, 2, 0),
(1154, 3, 'PR03EA', 7, 30, 2, 0),
(1155, 1, 'SE01T', 14, 30, 4, 0),
(1156, 1, 'SE01CB', 7, 25, 3, 0),
(1157, 3, 'SE02B', 3, 25, 3, 0),
(1158, 2, 'SE01AV', 18, 30, 3, 0),
(1159, 1, 'SE01CB', 7, 35, 4, 0),
(1160, 4, 'SE02B', 19, 10, 4, 0),
(1161, 1, 'SE01CB', 7, 15, 5, 0),
(1162, 2, 'SE01E', 22, 40, 1, 0),
(1163, 2, 'SE02E', 22, 40, 1, 0),
(1164, 1, 'SEC1IP', 15, 0, 0, 0),
(1165, 2, 'SE02H', 22, 30, 2, 0),
(1166, 3, 'PR05EA', 7, 30, 2, 0),
(1167, 2, 'SE01E', 22, 40, 2, 0),
(1168, 2, 'SE02E', 22, 40, 2, 0),
(1169, 2, 'SE02E', 22, 40, 3, 0),
(1170, 2, 'SE02E', 22, 40, 4, 0),
(1171, 2, 'SE02E', 22, 40, 5, 0),
(1172, 2, 'SE01E', 22, 40, 3, 0),
(1173, 4, 'SE01E', 22, 40, 4, 0),
(1174, 2, 'SE01E', 22, 40, 5, 0),
(1175, 2, 'SE03I', 20, 20, 3, 0),
(1176, 1, 'SE03C', 22, 60, 5, 0),
(1177, 2, 'SE03H', 22, 30, 1, 0),
(1178, 3, 'SE01E', 7, 30, 1, 0),
(1179, 3, 'SE02E', 7, 30, 1, 0),
(1180, 3, 'SE01E', 7, 30, 2, 0),
(1181, 3, 'SE02E', 7, 30, 2, 0),
(1182, 3, 'SE03E', 22, 40, 2, 0),
(1183, 1, 'SEC1IP', 7, 50, 3, 0),
(1184, 3, 'SE03E', 22, 40, 3, 0),
(1185, 3, 'SE02E', 7, 40, 3, 0),
(1186, 3, 'SE01E', 7, 40, 3, 0),
(1187, 3, 'SE01E', 7, 40, 5, 0),
(1188, 3, 'SE02E', 7, 40, 5, 0),
(1189, 3, 'SE03E', 22, 40, 5, 0),
(1190, 2, 'SE03Q', 22, 25, 5, 0),
(1191, 2, 'SE03EA', 5, 30, 5, 0),
(1192, 1, 'PR01FC', 3, 20, 1, 0),
(1193, 2, 'PR01FC', 7, 20, 1, 0),
(1194, 3, 'PR01FC', 9, 20, 1, 0),
(1195, 1, 'PR02FC', 3, 20, 1, 0),
(1196, 2, 'PR02FC', 7, 20, 1, 0),
(1197, 3, 'PR02FC', 9, 20, 1, 0),
(1198, 1, 'PR01FC', 3, 20, 2, 0),
(1199, 2, 'PR01FC', 7, 30, 2, 0),
(1200, 3, 'PR01FC', 9, 20, 2, 0),
(1201, 1, 'PR02FC', 3, 20, 2, 0),
(1202, 2, 'PR02FC', 7, 30, 2, 0),
(1203, 3, 'PR02FC', 9, 20, 2, 0),
(1204, 1, 'PR01FC', 3, 20, 3, 0),
(1205, 2, 'PR01FC', 7, 30, 3, 0),
(1206, 3, 'PR01FC', 9, 20, 3, 0),
(1207, 2, 'PR01EA', 4, 20, 3, 0),
(1208, 1, 'PR02FC', 3, 20, 3, 0),
(1209, 2, 'PR02FC', 7, 30, 3, 0),
(1210, 3, 'PR02FC', 9, 20, 3, 0),
(1211, 2, 'SE02H', 22, 30, 3, 0),
(1212, 1, 'SE01AV', 5, 30, 3, 0),
(1213, 3, 'SE03I', 3, 20, 3, 0),
(1214, 3, 'PR05EA', 25, 30, 4, 0),
(1215, 1, 'PR01FC', 3, 20, 4, 0),
(1216, 2, 'PR01FC', 7, 30, 4, 0),
(1217, 3, 'PR01FC', 9, 20, 4, 0),
(1218, 1, 'PR02FC', 3, 20, 4, 0),
(1219, 2, 'PR02FC', 7, 30, 4, 0),
(1220, 3, 'PR02FC', 9, 20, 4, 0),
(1221, 1, 'SE01AV', 7, 30, 4, 0),
(1222, 2, 'SE01E', 7, 30, 4, 0),
(1223, 3, 'SE02E', 7, 30, 4, 0),
(1224, 3, 'SE03E', 22, 40, 4, 0),
(1225, 1, 'PR02FC', 3, 20, 5, 0),
(1226, 2, 'PR02FC', 7, 30, 5, 0),
(1227, 3, 'PR02FC', 9, 20, 5, 0),
(1228, 1, 'PR01FC', 3, 20, 5, 0),
(1229, 2, 'PR01FC', 7, 30, 5, 0),
(1230, 3, 'PR01FC', 9, 20, 5, 0),
(1231, 2, 'SE01CB', 12, 40, 5, 0),
(1232, 3, 'SE03Q', 12, 30, 5, 0),
(1233, 4, ' PR01E', 22, 30, 1, 0),
(1234, 4, 'PR01M', 22, 30, 1, 0),
(1235, 4, 'PR01CM', 22, 30, 1, 0),
(1236, 4, 'PR01FC', 22, 30, 1, 0),
(1237, 4, 'PR06E', 22, 30, 1, 0),
(1238, 4, 'PR06M', 22, 30, 1, 0),
(1239, 4, 'PR06CN', 22, 30, 1, 0),
(1240, 4, 'PR06H', 22, 30, 1, 0),
(1241, 4, 'PR06G', 22, 30, 1, 0),
(1242, 3, 'SE01I', 23, 10, 1, 0),
(1243, 3, 'SE02I', 23, 10, 1, 0),
(1244, 3, 'SE03I', 23, 10, 1, 0),
(1245, 4, 'PR06EC', 22, 30, 1, 0),
(1246, 4, 'PR06E', 22, 30, 2, 0),
(1247, 4, 'PR06M', 22, 30, 2, 0),
(1248, 4, 'PR06CN', 22, 30, 2, 0),
(1249, 4, 'PR06H', 22, 30, 2, 0),
(1250, 4, 'PR06G', 22, 30, 2, 0),
(1251, 4, 'PR06EC', 22, 30, 2, 0),
(1252, 4, 'PR01M', 22, 30, 2, 0),
(1253, 4, 'PR01CM', 22, 30, 2, 0),
(1254, 4, 'PR01FC', 22, 30, 2, 0),
(1255, 3, 'SE02H', 3, 30, 2, 0),
(1256, 2, 'SE03H', 22, 30, 2, 0),
(1257, 4, ' PR01E', 22, 30, 3, 0),
(1258, 4, 'PR01M', 22, 30, 3, 0),
(1259, 4, 'PR01CM', 22, 30, 3, 0),
(1260, 4, 'PR06E', 22, 30, 3, 0),
(1261, 4, 'PR06M', 22, 30, 3, 0),
(1262, 4, 'PR06CN', 22, 30, 3, 0),
(1263, 4, 'PR06H', 22, 30, 3, 0),
(1264, 4, 'PR06G', 22, 30, 3, 0),
(1265, 4, 'PR01FC', 22, 30, 3, 0),
(1266, 4, 'PR06EC', 22, 30, 3, 0),
(1267, 4, 'PR06E', 22, 30, 4, 0),
(1268, 4, 'PR06M', 22, 30, 4, 0),
(1269, 4, 'PR06CN', 22, 30, 4, 0),
(1270, 4, 'PR06H', 22, 30, 4, 0),
(1271, 4, 'PR06G', 22, 30, 4, 0),
(1272, 4, 'PR06EC', 22, 30, 4, 0),
(1273, 4, ' PR01E', 22, 30, 4, 0),
(1274, 4, 'PR01M', 22, 30, 4, 0),
(1275, 4, 'PR01CM', 22, 30, 4, 0),
(1276, 4, 'PR01FC', 22, 30, 4, 0),
(1277, 2, 'SE02H', 22, 30, 4, 0),
(1278, 1, 'SE02C', 3, 30, 4, 0),
(1279, 1, 'SE03C', 3, 30, 4, 0),
(1280, 4, 'PR06E', 22, 30, 5, 0),
(1281, 4, 'PR06M', 22, 30, 5, 0),
(1282, 4, 'PR06CN', 22, 30, 5, 0),
(1283, 4, 'PR06H', 22, 30, 5, 0),
(1284, 4, 'PR06G', 22, 30, 5, 0),
(1285, 4, 'PR06EC', 22, 30, 5, 0),
(1286, 4, 'PR01M', 22, 30, 5, 0),
(1287, 4, ' PR01E', 22, 30, 5, 0),
(1288, 4, 'PR01CM', 22, 30, 5, 0),
(1289, 4, 'PR01FC', 22, 30, 5, 0),
(1290, 1, 'SE02C', 22, 60, 5, 0),
(1291, 3, 'SE03E', 22, 40, 1, 0),
(1292, 4, 'PR02E', 22, 30, 1, 0),
(1293, 4, 'PR05E', 22, 30, 1, 0),
(1294, 4, 'PR02M', 22, 30, 1, 0),
(1295, 4, 'PR05M', 22, 30, 1, 0),
(1296, 4, 'PR02CM', 22, 30, 1, 0),
(1297, 4, 'PR05CN', 22, 30, 1, 0),
(1298, 4, 'PR02FC', 22, 30, 1, 0),
(1299, 4, 'PR05EC', 22, 30, 1, 0),
(1300, 4, 'PR05H', 22, 30, 1, 0),
(1301, 4, 'PR05G', 22, 30, 1, 0),
(1302, 1, 'SE01T', 3, 20, 1, 0),
(1303, 2, 'SE02H', 9, 30, 1, 0),
(1304, 4, 'PR05M', 22, 30, 2, 0),
(1305, 4, 'PR05E', 22, 30, 2, 0),
(1306, 4, 'PR05CN', 22, 30, 2, 0),
(1307, 4, 'PR05H', 22, 30, 2, 0),
(1308, 4, 'PR05G', 22, 30, 2, 0),
(1309, 4, 'PR05EC', 22, 30, 2, 0),
(1310, 4, ' PR01E', 22, 30, 2, 0),
(1311, 3, ' PR01E', 9, 20, 2, 0),
(1312, 4, 'PR02E', 22, 30, 2, 0),
(1313, 4, 'PR02M', 22, 30, 2, 0),
(1314, 4, 'PR02CM', 22, 30, 2, 0),
(1315, 4, 'PR02FC', 22, 30, 2, 0),
(1316, 2, 'SE01CB', 12, 35, 2, 0),
(1317, 4, 'PR05E', 22, 30, 3, 0),
(1318, 4, 'PR05M', 22, 30, 3, 0),
(1319, 4, 'PR05CN', 22, 30, 3, 0),
(1320, 4, 'PR05H', 22, 30, 3, 0),
(1321, 4, 'PR05G', 22, 30, 3, 0),
(1322, 4, 'PR05EC', 22, 30, 3, 0),
(1323, 4, 'PR02E', 22, 30, 3, 0),
(1324, 4, 'PR02M', 22, 30, 3, 0),
(1325, 4, 'PR02CM', 22, 30, 3, 0),
(1326, 4, 'PR02FC', 22, 30, 3, 0),
(1327, 3, 'SE01I', 20, 20, 3, 0),
(1328, 3, 'SE02I', 20, 20, 3, 0),
(1329, 1, 'SE02ET', 3, 20, 3, 0),
(1330, 2, 'SE02ET', 22, 30, 3, 0),
(1331, 1, 'SE03ET', 3, 20, 3, 0),
(1332, 2, 'SE03ET', 22, 30, 3, 0),
(1333, 1, 'SE01T', 3, 20, 3, 0),
(1334, 3, 'SE03ET', 40, 10, 3, 0),
(1335, 4, 'PR02M', 22, 30, 4, 0),
(1336, 4, 'PR02E', 22, 30, 4, 0),
(1337, 4, 'PR02FC', 22, 30, 4, 0),
(1338, 4, 'PR02CM', 22, 30, 4, 0),
(1339, 4, 'PR05M', 22, 30, 4, 0),
(1340, 4, 'PR05E', 22, 30, 4, 0),
(1341, 3, 'PR05CN', 22, 30, 4, 0),
(1342, 4, 'PR05H', 22, 30, 4, 0),
(1343, 4, 'PR05G', 22, 30, 4, 0),
(1344, 4, 'PR05EC', 22, 30, 4, 0),
(1345, 2, 'SE01T', 3, 20, 4, 0),
(1346, 2, 'SE02ET', 3, 20, 4, 0),
(1347, 1, 'SE03ET', 3, 20, 4, 0),
(1348, 2, 'SE03ET', 40, 10, 4, 0),
(1349, 1, 'SE01AV', 3, 30, 5, 0),
(1350, 2, 'SE01AV', 22, 50, 5, 0),
(1351, 4, 'PR02E', 22, 30, 5, 0),
(1352, 4, 'PR05E', 22, 30, 5, 0),
(1353, 4, 'PR02M', 22, 30, 5, 0),
(1354, 4, 'PR05M', 22, 30, 5, 0),
(1355, 4, 'PR02CM', 22, 30, 5, 0),
(1356, 4, 'PR05CN', 22, 30, 5, 0),
(1357, 4, 'PR02FC', 22, 30, 5, 0),
(1358, 4, 'PR05EC', 22, 30, 5, 0),
(1359, 4, 'PR05H', 22, 30, 5, 0),
(1360, 4, 'PR05G', 22, 30, 5, 0),
(1361, 1, 'SE01T', 3, 20, 5, 0),
(1362, 1, 'SE02F', 7, 40, 1, 0),
(1363, 1, 'SE03EA', 7, 40, 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu`
--

CREATE TABLE `menu` (
  `id_menu` int(4) NOT NULL,
  `id_padre` int(4) DEFAULT NULL,
  `menu` varchar(50) NOT NULL DEFAULT 'NOT NULL',
  `descripcion` varchar(200) DEFAULT NULL,
  `pagina` varchar(70) DEFAULT NULL,
  `status` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `menu`
--

INSERT INTO `menu` (`id_menu`, `id_padre`, `menu`, `descripcion`, `pagina`, `status`) VALUES
(1, NULL, 'Administracion', 'Administracion', 'servletConsultarCatalagos', 'ACTI');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `opcioncat`
--

CREATE TABLE `opcioncat` (
  `idopcioncat` int(11) NOT NULL,
  `idcatalogo` int(11) NOT NULL,
  `descripcion` varchar(45) NOT NULL,
  `status` varchar(45) NOT NULL,
  `tipocat` varchar(45) NOT NULL,
  `desctipocat` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `opcioncat`
--

INSERT INTO `opcioncat` (`idopcioncat`, `idcatalogo`, `descripcion`, `status`, `tipocat`, `desctipocat`) VALUES
(9, 1, 'Normal', 'A', 'opcion', 'TipoGrupos'),
(10, 2, 'Mixto', 'A', 'opcion', 'TipoGrupos'),
(11, 0, 'Ninguno', 'A', 'opcion', 'CalculoCriterio'),
(12, 1, 'Promedio', 'A', 'opcion', 'CalculoCriterio'),
(13, 2, 'Suma', 'A', 'opcion', 'CalculoCriterio'),
(14, 1, 'Normal', 'A', 'opcion', 'TiposCaptura'),
(15, 2, 'Examen', 'A', 'opcion', 'TiposCaptura'),
(16, 3, 'Grupal', 'A', 'opcion', 'TiposCriterios'),
(17, 1, 'Materia', 'A', 'opcion', 'TiposCriterios'),
(18, 2, 'Materia No Influyente', 'A', 'opcion', 'TiposCriterios'),
(19, 1, 'Sep', 'A', 'opcion', 'TipoMat'),
(20, 2, 'Especiales', 'A', 'opcion', 'TipoMat'),
(21, 1, 'Normal', 'A', 'opcion', 'TipoGrupoMa'),
(22, 2, 'Mixto', 'A', 'opcion', 'TipoGrupoMa'),
(23, 1, 'Promedio', 'A', 'opcion', 'TipoCalifMa'),
(24, 2, 'Suma', 'A', 'opcion', 'TipoCalifMa'),
(25, 1, 'Automatico', 'A', 'opcion', 'TipoFechaCaptura'),
(26, 2, 'Especifico', 'A', 'opcion', 'TipoFechaCaptura'),
(27, 1, 'O+', 'A', 'opcion', 'TipoSangre'),
(30, 2, 'A+', 'A', 'opcion', 'TipoSangre'),
(31, 3, 'B+', 'A', 'opcion', 'TipoSangre'),
(32, 4, 'AB+', 'A', 'opcion', 'TipoSangre'),
(33, 5, 'O-', 'A', 'opcion', 'TipoSangre'),
(34, 6, 'A-', 'A', 'opcion', 'TipoSangre'),
(35, 7, 'B-', 'A', 'opcion', 'TipoSangre'),
(36, 1, 'Preescolar', 'A', 'opcion', 'Seccion'),
(37, 2, 'Primaria', 'A', 'opcion', 'Seccion'),
(38, 3, 'Secundaria', 'A', 'opcion', 'Seccion'),
(39, 1, 'Mensual', 'A', 'opcion', 'TipoPromedio'),
(40, 2, 'Bimestral', 'A', 'opcion', 'TipoPromedio'),
(41, 3, 'Trimestral', 'A', 'opcion', 'TipoPromedio'),
(42, 4, 'Cuatrimestral', 'A', 'opcion', 'TipoPromedio'),
(43, 1, 'Parcial', 'A', 'opcion', 'TipoCaptura'),
(44, 2, 'Examen', 'A', 'opcion', 'TipoCaptura'),
(45, 1, 'Numero', 'A', 'opcion', 'TipoCalificacion'),
(46, 2, 'Letra', 'A', 'opcion', 'TipoCalificacion');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `opcionescaptura`
--

CREATE TABLE `opcionescaptura` (
  `idopcionescaptura` int(11) NOT NULL,
  `idseccion` int(11) NOT NULL,
  `idciclo` int(11) NOT NULL,
  `tipomat` int(11) NOT NULL,
  `periodos` smallint(6) DEFAULT NULL,
  `rangopromedio` int(11) DEFAULT NULL,
  `tipocalificacion` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `opcionescaptura`
--

INSERT INTO `opcionescaptura` (`idopcionescaptura`, `idseccion`, `idciclo`, `tipomat`, `periodos`, `rangopromedio`, `tipocalificacion`) VALUES
(1, 38, 3, 19, 5, 40, 45),
(2, 36, 1, 19, 5, 40, 46),
(3, 37, 2, 19, 5, 40, 45),
(4, 38, 3, 20, 5, 40, 45),
(5, 37, 2, 20, 5, 40, 45),
(6, 37, 5, 19, 5, 39, 45),
(7, 37, 5, 20, 5, 39, 45),
(8, 38, 6, 19, 5, 39, 45),
(9, 38, 6, 20, 5, 40, 45),
(10, 37, 8, 19, 5, 40, 45),
(11, 37, 8, 20, 5, 39, 45),
(12, 38, 9, 19, 5, 40, 45),
(13, 38, 9, 20, 5, 40, 45),
(14, 36, 7, 19, 5, 39, 46),
(15, 36, 10, 19, 5, 39, 46),
(16, 37, 11, 19, 5, 39, 45),
(17, 37, 11, 20, 5, 39, 45),
(18, 38, 12, 19, 5, 39, 45),
(19, 38, 12, 20, 5, 39, 45),
(20, 37, 14, 19, 5, 39, 45),
(21, 37, 14, 20, 5, 39, 45),
(22, 38, 15, 19, 5, 40, 45),
(23, 38, 15, 20, 5, 40, 45),
(24, 36, 13, 19, 5, 40, 46),
(25, 37, 17, 19, 5, 40, 45),
(26, 37, 17, 20, 5, 40, 45),
(27, 38, 18, 19, 5, 40, 45),
(28, 38, 18, 20, 5, 40, 45),
(29, 36, 16, 19, 5, 40, 46),
(30, 36, 16, 20, 5, 40, 46),
(31, 37, 23, 19, 5, 40, 45),
(32, 38, 24, 19, 5, 40, 45),
(33, 38, 24, 20, 5, 40, 45),
(34, 37, 23, 20, 5, 40, 45),
(35, 36, 22, 19, 5, 40, 46),
(36, 37, 26, 19, 5, 40, 45),
(37, 37, 26, 20, 5, 40, 45),
(38, 38, 27, 19, 5, 40, 45),
(39, 38, 27, 20, 5, 40, 45),
(40, 36, 25, 19, 1, 40, 46),
(41, 37, 29, 19, 5, 40, 45),
(42, 37, 29, 20, 5, 40, 45),
(43, 38, 30, 19, 5, 40, 45),
(44, 38, 30, 20, 5, 40, 45),
(45, 36, 28, 19, 5, 40, 46);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfil`
--

CREATE TABLE `perfil` (
  `id_perfil` int(4) NOT NULL,
  `nombre` varchar(50) NOT NULL DEFAULT 'NOT NULL',
  `descripcion` varchar(200) NOT NULL DEFAULT 'NOT NULL',
  `status` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `perfil`
--

INSERT INTO `perfil` (`id_perfil`, `nombre`, `descripcion`, `status`) VALUES
(10, 'PROFESOR', 'PROFESOR', 'ACTI');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfil_menu`
--

CREATE TABLE `perfil_menu` (
  `id_perfil` int(4) NOT NULL,
  `id_menu` int(4) NOT NULL,
  `orden` int(4) NOT NULL,
  `status` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `perfil_menu`
--

INSERT INTO `perfil_menu` (`id_perfil`, `id_menu`, `orden`, `status`) VALUES
(10, 1, 1, 'ACTI');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `puesto`
--

CREATE TABLE `puesto` (
  `idpuesto` smallint(6) NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  `status` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `puesto`
--

INSERT INTO `puesto` (`idpuesto`, `descripcion`, `status`) VALUES
(0, 'SIN PUESTO', 1),
(1, 'DIRECTORA ACADEMICA', 1),
(2, 'ASISTENTE ADMINISTRATIVA', 1),
(3, 'ASISTENTE ACADEMICA', 1),
(4, 'COORDINADORA  ADMINISTRATIVA', 1),
(5, 'COORDINADORA  PREESCOLAR', 1),
(6, 'COORDINADORA  PRIMARIA', 1),
(7, 'COORDINADORA SECUNDARIA', 1),
(8, 'EDUCADORA', 1),
(9, 'DOCENTE PRIMARIA', 1),
(10, 'DOCENTE SECUNDARIA', 1),
(11, 'INTENDENTE', 1),
(12, 'DIRECTOR GENERAL', 1),
(13, 'COORDINADOR TECNOLOGIA', 1),
(14, 'AUX. EDUCADORA', 1),
(16, 'DOCENTE', 1),
(17, 'SECRETARIA', 1),
(18, 'COORDINADOR DE DISCIPLINA', 1),
(19, 'Prueba de Puesto 2 ', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rangoprogramado`
--

CREATE TABLE `rangoprogramado` (
  `idrangoprogramado` int(11) NOT NULL,
  `idopcion` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `tipocaptura` int(11) DEFAULT NULL,
  `porcentaje` tinyint(4) NOT NULL,
  `orden` tinyint(4) NOT NULL,
  `inicia` date NOT NULL,
  `termina` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `rangoprogramado`
--

INSERT INTO `rangoprogramado` (`idrangoprogramado`, `idopcion`, `nombre`, `tipocaptura`, `porcentaje`, `orden`, `inicia`, `termina`) VALUES
(182, 1, 'SEP-OCT', 43, 100, 1, '2006-10-16', '2006-11-11'),
(183, 2, 'Periodo 1', 43, 100, 1, '2006-07-06', '2006-07-06'),
(184, 5, 'SEP-OCT', 43, 100, 1, '2006-10-16', '2006-11-10'),
(185, 3, 'SEP-OCT', 43, 100, 1, '2006-10-19', '2006-11-07'),
(186, 4, 'SEP-OCT', 43, 100, 1, '2006-10-23', '2006-11-11'),
(187, 6, 'SEP-OCT', 43, 100, 1, '2007-10-15', '2007-11-16'),
(188, 7, 'SEP-OCT', 43, 100, 1, '2007-10-15', '2007-11-16'),
(189, 8, 'SEP-OCT', 43, 100, 1, '2007-10-15', '2007-11-23'),
(190, 9, 'SEP-OCT', 43, 100, 1, '2007-10-15', '2007-11-23'),
(191, 10, 'SEPT-OCT.', 43, 100, 1, '2009-07-06', '2008-11-10'),
(192, 11, 'SEPT-OCT', 43, 100, 1, '2008-10-20', '2008-11-10'),
(193, 12, 'SEPT-OCT', 43, 100, 1, '2008-10-20', '2009-11-14'),
(194, 13, 'SEPT-OCT', 43, 100, 1, '2008-10-20', '2009-11-14'),
(195, 14, 'SEPT-OCT', 43, 100, 1, '2009-07-06', '2009-07-06'),
(196, 15, 'SEPT/OCT', 43, 100, 1, '2009-10-19', '2009-11-07'),
(197, 16, 'SEPT/OCT', 43, 100, 1, '2009-10-19', '2009-11-07'),
(198, 17, 'SEPT/OCT', 43, 100, 1, '2009-10-19', '2009-11-07'),
(199, 18, 'SEPT/OCT', 43, 100, 1, '2009-10-19', '2009-11-07'),
(200, 19, 'SEPT/OCT', 43, 100, 1, '2009-10-19', '2009-11-07'),
(201, 20, 'SEP-OCT', 43, 100, 1, '2010-10-17', '2010-11-06'),
(202, 21, 'SEP-OCT', 43, 100, 1, '2010-10-17', '2010-11-06'),
(203, 22, 'SEPT-OCT', 43, 100, 1, '2010-10-18', '2010-11-10'),
(204, 23, 'SEPT-OCT', 43, 100, 1, '2010-10-19', '2010-11-06'),
(205, 24, 'Periodo 1', 43, 100, 1, '2011-07-08', '2011-07-08'),
(206, 25, 'SEPT/OCT', 43, 100, 1, '2011-10-17', '2011-11-02'),
(207, 26, 'SEPT/OCT', 43, 100, 1, '2011-10-17', '2011-11-02'),
(208, 27, 'SEPT/OCT', 43, 100, 1, '2011-10-17', '2011-11-13'),
(209, 28, 'SEPT/OCT', 43, 100, 1, '2011-10-17', '2011-11-13'),
(210, 29, 'Periodo 1', 43, 100, 1, '2012-07-10', '2012-07-10'),
(211, 30, 'Periodo 1', 43, 100, 1, '2012-07-10', '2012-07-10'),
(212, 31, 'SEPT-OCT', 43, 100, 1, '2012-10-22', '2012-11-08'),
(213, 32, 'SEPT-OCT', 43, 100, 1, '2012-10-23', '2012-11-08'),
(214, 33, 'SEPT-OCT', 43, 100, 1, '2012-10-23', '2012-11-08'),
(215, 34, 'SEPT-OCT', 43, 100, 1, '2012-10-22', '2012-11-09'),
(216, 35, 'Periodo 1', 43, 100, 1, '2013-07-10', '2013-07-10'),
(217, 36, 'SEPT-OCT', 43, 100, 1, '2013-10-14', '2013-11-01'),
(218, 37, 'SEPT-OCT', 43, 100, 1, '2013-10-14', '2013-11-01'),
(219, 38, 'SEPT-OCT', 43, 100, 1, '2013-10-14', '2013-10-31'),
(220, 39, 'SEPT-OCT', 43, 100, 1, '2013-10-14', '2013-10-31'),
(221, 40, 'Periodo 1', 43, 100, 1, '2014-07-15', '2014-07-15'),
(222, 38, 'NOV-DIC', 43, 100, 2, '2013-12-02', '2013-12-13'),
(223, 38, 'ENE-FEB', 43, 100, 3, '2014-02-10', '2014-02-28'),
(224, 38, 'MAR-ABRIL', 43, 100, 4, '2014-04-01', '2014-05-05'),
(225, 38, 'MAYO-JUNIO', 43, 100, 5, '2014-06-09', '2014-06-24'),
(226, 39, 'NOV-DIC', 43, 100, 2, '2013-12-02', '2013-02-13'),
(227, 39, 'ENE-FEB', 43, 100, 3, '2014-02-10', '2014-02-28'),
(228, 39, 'MAR-ABRIL', 43, 100, 4, '2014-04-01', '2014-05-05'),
(229, 39, 'MAYO-JUNIO', 43, 100, 5, '2014-06-09', '2014-06-24'),
(230, 36, 'NOV-DIC', 43, 100, 2, '2013-12-02', '2013-12-13'),
(231, 36, 'ENE-FEB', 43, 100, 3, '2014-02-10', '2014-02-28'),
(232, 36, 'MAR-ABRIL', 43, 100, 4, '2014-04-01', '2014-05-05'),
(233, 36, 'MAYO-JUNIO', 43, 100, 5, '2014-06-09', '2014-06-25'),
(234, 37, 'NOV-DIC', 43, 100, 2, '2013-12-02', '2013-12-13'),
(235, 37, 'ENE-FEB', 43, 100, 3, '2014-02-10', '2014-02-28'),
(236, 37, 'MAR-ABRIL', 43, 100, 4, '2014-04-01', '2014-05-05'),
(237, 37, 'MAYO-JUNIO', 43, 100, 5, '2014-06-09', '2014-06-25'),
(238, 41, 'SEPT-OCT', 43, 100, 1, '2014-10-15', '2016-11-03'),
(239, 41, 'NOV-DIC', 43, 100, 2, '2014-11-30', '2014-12-18'),
(240, 41, 'ENE-FEB', 43, 100, 3, '2015-02-15', '2015-02-27'),
(241, 41, 'MAR-ABRIL', 43, 100, 4, '2015-04-19', '2015-05-08'),
(242, 41, 'MAYO-JUN', 43, 100, 5, '2015-06-07', '2015-06-23'),
(243, 42, 'SEP-OCT', 43, 100, 1, '2014-10-16', '2014-10-31'),
(244, 42, 'NOV-DIC', 43, 100, 2, '2014-12-01', '2014-12-19'),
(245, 42, 'ENE-FEB', 43, 100, 3, '2015-02-16', '2015-02-28'),
(246, 42, 'MAR-ABRIL', 43, 100, 4, '2015-04-20', '2015-05-09'),
(247, 42, 'MAYO-JUN', 43, 100, 5, '2015-06-14', '2015-06-24'),
(248, 43, 'SEPT-OCT', 43, 100, 1, '2014-10-16', '2014-11-05'),
(249, 43, 'NOV-DIC', 43, 100, 2, '2014-12-01', '2014-12-20'),
(250, 43, 'ENE-FEB', 43, 100, 3, '2015-02-16', '2015-03-08'),
(251, 43, 'MAR-ABRIL', 43, 100, 4, '2015-04-20', '2015-05-12'),
(252, 43, 'MAYO-JUNIO', 43, 100, 5, '2015-06-08', '2015-06-24'),
(253, 44, 'SEPT-OCT', 43, 100, 1, '2014-10-16', '2014-10-31'),
(254, 44, 'NOV-DIC', 43, 100, 2, '2014-12-01', '2014-12-20'),
(255, 44, 'ENE-FEB', 43, 100, 3, '2015-02-16', '2015-03-08'),
(256, 44, 'MAR-ABRIL', 43, 100, 4, '2015-04-20', '2015-05-09'),
(257, 44, 'MAYO-JUN', 43, 100, 5, '2015-06-14', '2015-06-24'),
(258, 45, 'SEPT-OCT', 43, 100, 1, '2014-10-16', '2014-10-31'),
(259, 45, 'NOV-DIC', 43, 100, 2, '2015-07-14', '2015-07-14'),
(260, 45, 'ENE-FEB', 43, 100, 3, '2015-07-14', '2015-07-14'),
(261, 45, 'MAR-ABRIL', 43, 100, 4, '2015-07-14', '2015-07-14'),
(262, 45, 'MAYO-JUN', 43, 100, 5, '2015-07-14', '2015-07-14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `salon`
--

CREATE TABLE `salon` (
  `idsalon` int(11) NOT NULL,
  `descripcion` varchar(80) NOT NULL,
  `numsalon` varchar(20) NOT NULL,
  `capacidad` smallint(6) NOT NULL,
  `activo` tinyint(4) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `salon`
--

INSERT INTO `salon` (`idsalon`, `descripcion`, `numsalon`, `capacidad`, `activo`) VALUES
(0, 'SIN SALÓN', '0', 0, 1),
(1, 'PLANTA BAJA EDIFICIO A', 'A1', 40, 1),
(2, 'PLANTA BAJA EDIFICIO A', 'A2', 40, 1),
(3, 'PLANTA BAJA EDIFICIO A', 'A3', 40, 1),
(6, 'PLANTA BAJA EDIFICIO B', 'B1', 39, 1),
(7, 'PLANTA BAJA EDIFICIO B', 'B2', 39, 1),
(8, 'PLANTA BAJA EDIFICIO B', 'B3', 39, 1),
(9, 'PLANTA ALTA  EDIFICIO B', 'B4', 45, 1),
(10, 'PLANTA ALTA  EDIFICIO B', 'B5', 39, 1),
(11, 'PLANTA ALTA  EDIFICIO B', 'B6', 39, 1),
(12, 'PLANTA BAJA  EDIFICIO C', 'C1', 30, 1),
(13, 'PLANTA BAJA  EDIFICIO C', 'C2', 30, 1),
(14, 'PLANTA BAJA  EDIFICIO C', 'C3', 15, 1),
(15, 'PLANTA ALTA  EDIFICIO C', 'C4', 40, 1),
(16, 'PLANTA BAJA  EDIFICIO C', 'C5', 20, 1),
(17, 'PLANTA BAJA  EDIFICIO D', 'D1', 30, 1),
(18, 'LABORATORIO  EDIFICIO D', 'D2', 30, 1),
(19, 'AUDIOVISUAL  EDIFICIO D', 'D3', 40, 1),
(20, 'PRUEBA', 'Z1', 40, 1),
(21, 'PLANTA BAJA EDIFICIO A', 'A1', 40, 1),
(22, 'PLANTA BAJA EDIFICIO A', 'A2', 40, 1),
(23, 'PLANTA BAJA EDIFICIO A', 'A3', 40, 1),
(24, 'PLANTA BAJA EDIFICIO A', 'A6', 30, 1),
(25, 'EDIFICIO A PLANTA ALTA', 'A7', 30, 1),
(26, 'EDIFICIO A PLANTA ALTA', 'A8', 30, 1),
(27, 'EDIFICIO A PLANTA ALTA', 'A9', 30, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `traslado_grupo`
--

CREATE TABLE `traslado_grupo` (
  `matricula` int(10) UNSIGNED NOT NULL,
  `grupooriginal` int(11) NOT NULL,
  `gruponuevo` int(11) DEFAULT NULL,
  `nombre` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `usuario` varchar(50) NOT NULL DEFAULT 'NOT NULL',
  `contrasena` varchar(70) DEFAULT 'NOT NULL',
  `id_empleado` varchar(12) NOT NULL DEFAULT 'NOT NULL',
  `fecha_alta` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`usuario`, `contrasena`, `id_empleado`, `fecha_alta`, `status`) VALUES
('caocampo', '5994471abb01112afcc18159f6cc74b4f511b99806da59b3caf5a9c173cacfc5', '12345', '2017-07-04 00:00:00', 'ACTI');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumno`
--
ALTER TABLE `alumno`
  ADD PRIMARY KEY (`matricula`),
  ADD KEY `idgrupo_idx` (`idgrupo`);

--
-- Indices de la tabla `aviso_comentario`
--
ALTER TABLE `aviso_comentario`
  ADD PRIMARY KEY (`clave`);

--
-- Indices de la tabla `calificacion`
--
ALTER TABLE `calificacion`
  ADD PRIMARY KEY (`folio_reg`),
  ADD KEY `fk_calificacion_grupo_idx` (`idgrupo`),
  ADD KEY `fk_calificacion_matricula_idx` (`matricula`),
  ADD KEY `fk_calificacion_profesor_idx` (`idprofesor`),
  ADD KEY `fk_calificacion_materia_idx` (`idmateria`),
  ADD KEY `fk_calificacion_criterio_idx` (`idcriterio`);

--
-- Indices de la tabla `calificacion_calculo`
--
ALTER TABLE `calificacion_calculo`
  ADD PRIMARY KEY (`folio_reg`),
  ADD KEY `fk_calificacion_calculo_idmateria_idx` (`idmateria`),
  ADD KEY `fk_calificacion_calculo_idgrupo_idx` (`idgrupo`),
  ADD KEY `fk_calificacion_calculo_matricula_idx` (`matricula`),
  ADD KEY `fk_calificacion_calculo_periodo_idx` (`periodo`),
  ADD KEY `fk_calificacion_calculo_ciclo_idx` (`ciclo`),
  ADD KEY `fk_calificacion_calculo_profesor_idx` (`idprofesor`);

--
-- Indices de la tabla `ciclo`
--
ALTER TABLE `ciclo`
  ADD PRIMARY KEY (`idciclo`),
  ADD KEY `fk_ciclo_seccion_idx` (`idseccion`);

--
-- Indices de la tabla `configuracion`
--
ALTER TABLE `configuracion`
  ADD PRIMARY KEY (`idconfiguracion`);

--
-- Indices de la tabla `criterio`
--
ALTER TABLE `criterio`
  ADD PRIMARY KEY (`idcriterio`);

--
-- Indices de la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD PRIMARY KEY (`idempleado`),
  ADD KEY `idpuesto_idx` (`idpuesto`);

--
-- Indices de la tabla `grado`
--
ALTER TABLE `grado`
  ADD PRIMARY KEY (`idgrado`);

--
-- Indices de la tabla `grupo`
--
ALTER TABLE `grupo`
  ADD PRIMARY KEY (`idgrupo`),
  ADD KEY `idgrado_idx` (`idgrado`);

--
-- Indices de la tabla `grupo_alumno`
--
ALTER TABLE `grupo_alumno`
  ADD KEY `fk_grupo_alumno_idgrupomat_idx` (`idgrupo_materia`),
  ADD KEY `fk_grupo_alumno_matricula_idx` (`matricula`);

--
-- Indices de la tabla `grupo_materia`
--
ALTER TABLE `grupo_materia`
  ADD PRIMARY KEY (`idgrupo_materia`),
  ADD KEY `fk_grupo_materia_idgrupo_idx` (`idgrupo`),
  ADD KEY `fk_grupo_materia_materia_idx` (`idmateria`),
  ADD KEY `fk_grupo_materia_profesor_idx` (`idprofesor`);

--
-- Indices de la tabla `horario`
--
ALTER TABLE `horario`
  ADD PRIMARY KEY (`idhorario`),
  ADD KEY `fk_horario_salon_idx` (`idsalon`),
  ADD KEY `fk_horario_grupo_idx` (`idgrupo`),
  ADD KEY `fk_horario_materia_idx` (`idmateria`),
  ADD KEY `fk_horario_profesor_idx` (`idprofesor`);

--
-- Indices de la tabla `horario_dia`
--
ALTER TABLE `horario_dia`
  ADD KEY `fk_horario_dia_horario_idx` (`idhorario`);

--
-- Indices de la tabla `letra_calificacion`
--
ALTER TABLE `letra_calificacion`
  ADD PRIMARY KEY (`idletra_calificacion`);

--
-- Indices de la tabla `materia`
--
ALTER TABLE `materia`
  ADD PRIMARY KEY (`idmateria`),
  ADD KEY `fk_grado_idx` (`idgrado`);

--
-- Indices de la tabla `mat_criterio`
--
ALTER TABLE `mat_criterio`
  ADD PRIMARY KEY (`idmateriacriterio`),
  ADD KEY `materia_idx` (`idmateria`),
  ADD KEY `idcriteriofk_idx` (`idcriterio`);

--
-- Indices de la tabla `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indices de la tabla `opcioncat`
--
ALTER TABLE `opcioncat`
  ADD PRIMARY KEY (`idopcioncat`),
  ADD KEY `desctipo` (`desctipocat`);

--
-- Indices de la tabla `opcionescaptura`
--
ALTER TABLE `opcionescaptura`
  ADD PRIMARY KEY (`idopcionescaptura`),
  ADD KEY `fk_idseccion_op_idx` (`idseccion`),
  ADD KEY `fk_idciclo_op_idx` (`idciclo`),
  ADD KEY `fk_idtipomat_op_idx` (`tipomat`),
  ADD KEY `fk_opcionescaptura_1_idx` (`rangopromedio`);

--
-- Indices de la tabla `perfil`
--
ALTER TABLE `perfil`
  ADD PRIMARY KEY (`id_perfil`);

--
-- Indices de la tabla `perfil_menu`
--
ALTER TABLE `perfil_menu`
  ADD PRIMARY KEY (`id_perfil`);

--
-- Indices de la tabla `puesto`
--
ALTER TABLE `puesto`
  ADD PRIMARY KEY (`idpuesto`);

--
-- Indices de la tabla `rangoprogramado`
--
ALTER TABLE `rangoprogramado`
  ADD PRIMARY KEY (`idrangoprogramado`),
  ADD KEY `idocion` (`idopcion`,`orden`),
  ADD KEY `rango_tipocaptura_idx` (`tipocaptura`);

--
-- Indices de la tabla `salon`
--
ALTER TABLE `salon`
  ADD PRIMARY KEY (`idsalon`);

--
-- Indices de la tabla `traslado_grupo`
--
ALTER TABLE `traslado_grupo`
  ADD PRIMARY KEY (`matricula`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `aviso_comentario`
--
ALTER TABLE `aviso_comentario`
  MODIFY `clave` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT de la tabla `calificacion`
--
ALTER TABLE `calificacion`
  MODIFY `folio_reg` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4888;
--
-- AUTO_INCREMENT de la tabla `calificacion_calculo`
--
ALTER TABLE `calificacion_calculo`
  MODIFY `folio_reg` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `ciclo`
--
ALTER TABLE `ciclo`
  MODIFY `idciclo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT de la tabla `criterio`
--
ALTER TABLE `criterio`
  MODIFY `idcriterio` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;
--
-- AUTO_INCREMENT de la tabla `grado`
--
ALTER TABLE `grado`
  MODIFY `idgrado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT de la tabla `grupo`
--
ALTER TABLE `grupo`
  MODIFY `idgrupo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT de la tabla `grupo_materia`
--
ALTER TABLE `grupo_materia`
  MODIFY `idgrupo_materia` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `horario`
--
ALTER TABLE `horario`
  MODIFY `idhorario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=295;
--
-- AUTO_INCREMENT de la tabla `letra_calificacion`
--
ALTER TABLE `letra_calificacion`
  MODIFY `idletra_calificacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `mat_criterio`
--
ALTER TABLE `mat_criterio`
  MODIFY `idmateriacriterio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1364;
--
-- AUTO_INCREMENT de la tabla `opcioncat`
--
ALTER TABLE `opcioncat`
  MODIFY `idopcioncat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT de la tabla `opcionescaptura`
--
ALTER TABLE `opcionescaptura`
  MODIFY `idopcionescaptura` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT de la tabla `puesto`
--
ALTER TABLE `puesto`
  MODIFY `idpuesto` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT de la tabla `rangoprogramado`
--
ALTER TABLE `rangoprogramado`
  MODIFY `idrangoprogramado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=263;
--
-- AUTO_INCREMENT de la tabla `salon`
--
ALTER TABLE `salon`
  MODIFY `idsalon` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `alumno`
--
ALTER TABLE `alumno`
  ADD CONSTRAINT `idgrupo` FOREIGN KEY (`idgrupo`) REFERENCES `grupo` (`idgrupo`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Filtros para la tabla `calificacion`
--
ALTER TABLE `calificacion`
  ADD CONSTRAINT `fk_calificacion_criterio` FOREIGN KEY (`idcriterio`) REFERENCES `criterio` (`idcriterio`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_calificacion_grupo` FOREIGN KEY (`idgrupo`) REFERENCES `grupo` (`idgrupo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_calificacion_materia` FOREIGN KEY (`idmateria`) REFERENCES `materia` (`idmateria`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_calificacion_matricula` FOREIGN KEY (`matricula`) REFERENCES `alumno` (`matricula`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_calificacion_profesor` FOREIGN KEY (`idprofesor`) REFERENCES `empleado` (`idempleado`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `calificacion_calculo`
--
ALTER TABLE `calificacion_calculo`
  ADD CONSTRAINT `fk_calificacion_calculo_ciclo` FOREIGN KEY (`ciclo`) REFERENCES `ciclo` (`idciclo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_calificacion_calculo_idgrupo` FOREIGN KEY (`idgrupo`) REFERENCES `grupo` (`idgrupo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_calificacion_calculo_idmateria` FOREIGN KEY (`idmateria`) REFERENCES `materia` (`idmateria`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_calificacion_calculo_matricula` FOREIGN KEY (`matricula`) REFERENCES `alumno` (`matricula`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_calificacion_calculo_periodo` FOREIGN KEY (`periodo`) REFERENCES `rangoprogramado` (`idrangoprogramado`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_calificacion_calculo_profesor` FOREIGN KEY (`idprofesor`) REFERENCES `empleado` (`idempleado`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `ciclo`
--
ALTER TABLE `ciclo`
  ADD CONSTRAINT `idseccion_ciclo` FOREIGN KEY (`idseccion`) REFERENCES `opcioncat` (`idopcioncat`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Filtros para la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD CONSTRAINT `idpuesto` FOREIGN KEY (`idpuesto`) REFERENCES `puesto` (`idpuesto`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `grupo`
--
ALTER TABLE `grupo`
  ADD CONSTRAINT `idgrado` FOREIGN KEY (`idgrado`) REFERENCES `grado` (`idgrado`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Filtros para la tabla `grupo_alumno`
--
ALTER TABLE `grupo_alumno`
  ADD CONSTRAINT `fk_grupo_alumno_idgrupomat` FOREIGN KEY (`idgrupo_materia`) REFERENCES `grupo_materia` (`idgrupo_materia`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_grupo_alumno_matricula` FOREIGN KEY (`matricula`) REFERENCES `alumno` (`matricula`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `grupo_materia`
--
ALTER TABLE `grupo_materia`
  ADD CONSTRAINT `fk_grupo_materia_idgrupo2` FOREIGN KEY (`idgrupo`) REFERENCES `grupo` (`idgrupo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_grupo_materia_materia2` FOREIGN KEY (`idmateria`) REFERENCES `materia` (`idmateria`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_grupo_materia_profesor2` FOREIGN KEY (`idprofesor`) REFERENCES `empleado` (`idempleado`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Filtros para la tabla `horario`
--
ALTER TABLE `horario`
  ADD CONSTRAINT `fk_horario_grupo` FOREIGN KEY (`idgrupo`) REFERENCES `grupo` (`idgrupo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_horario_materia` FOREIGN KEY (`idmateria`) REFERENCES `materia` (`idmateria`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_horario_profesor` FOREIGN KEY (`idprofesor`) REFERENCES `empleado` (`idempleado`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_horario_salon` FOREIGN KEY (`idsalon`) REFERENCES `salon` (`idsalon`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `horario_dia`
--
ALTER TABLE `horario_dia`
  ADD CONSTRAINT `fk_horario_dia_horario` FOREIGN KEY (`idhorario`) REFERENCES `horario` (`idhorario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `materia`
--
ALTER TABLE `materia`
  ADD CONSTRAINT `fk_grado` FOREIGN KEY (`idgrado`) REFERENCES `grado` (`idgrado`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `mat_criterio`
--
ALTER TABLE `mat_criterio`
  ADD CONSTRAINT `idcriteriofk` FOREIGN KEY (`idcriterio`) REFERENCES `criterio` (`idcriterio`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `materia` FOREIGN KEY (`idmateria`) REFERENCES `materia` (`idmateria`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `opcionescaptura`
--
ALTER TABLE `opcionescaptura`
  ADD CONSTRAINT `fk_idciclo_op` FOREIGN KEY (`idciclo`) REFERENCES `ciclo` (`idciclo`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_idseccion_op` FOREIGN KEY (`idseccion`) REFERENCES `opcioncat` (`idopcioncat`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_idtipomat_op` FOREIGN KEY (`tipomat`) REFERENCES `opcioncat` (`idopcioncat`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_promedio_op` FOREIGN KEY (`rangopromedio`) REFERENCES `opcioncat` (`idopcioncat`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Filtros para la tabla `rangoprogramado`
--
ALTER TABLE `rangoprogramado`
  ADD CONSTRAINT `fk_rangoprogramado_1` FOREIGN KEY (`idopcion`) REFERENCES `opcionescaptura` (`idopcionescaptura`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rango_tipocaptura` FOREIGN KEY (`tipocaptura`) REFERENCES `opcioncat` (`idopcioncat`) ON DELETE NO ACTION ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;


  
--
-- Table structure for table `alumno`
--
DROP TABLE IF EXISTS `alumno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alumno` (
  `matricula` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellidop` varchar(100) NOT NULL,
  `apellidom` varchar(100) DEFAULT NULL,
  `fechanac` date NOT NULL,
  `lugnac` varchar(60) NOT NULL,
  `nacionalidad` varchar(20) NOT NULL,
  `direccion` varchar(120) NOT NULL,
  `colonia` varchar(45) NOT NULL,
  `cp` varchar(5) DEFAULT NULL,
  `escprecedencia` varchar(80) NOT NULL,
  `fecingreso` date NOT NULL,
  `tiposangre` varchar(5) NOT NULL,
  `activo` tinyint(4) NOT NULL DEFAULT '1',
  `idgrupo` int(11) DEFAULT NULL,
  `sexo` char(1) NOT NULL,
  `curp` varchar(30) NOT NULL,
  `dir_imagen` varchar(100) DEFAULT NULL,
  `idciclo` int(11) DEFAULT NULL,
  `nia` int(11) DEFAULT NULL,
  `alergias` varchar(200) DEFAULT NULL,
  `telcel` varchar(20) DEFAULT NULL,
  `telefono` varchar(20) NOT NULL,
  `email` varchar(45) DEFAULT NULL,
  `rfc` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`matricula`),
  KEY `idgrupo_idx` (`idgrupo`),
  CONSTRAINT `idgrupo` FOREIGN KEY (`idgrupo`) REFERENCES `grupo` (`idgrupo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alumno`
--

LOCK TABLES `alumno` WRITE;
/*!40000 ALTER TABLE `alumno` DISABLE KEYS */;
INSERT INTO `alumno` VALUES (0,'PANCHO','PEREZ','GUITIERREZ','2015-10-22','TAMPICO','MEXICANO','BLVD ATLIXO','MANATIALES','32767','PEREZ','2015-10-13','0',1,1,'m','QD23D23',NULL,1,123123,'','9JD9AD','990239','',''),(111,'JUAN','CAMACHO','CERVANTES','2015-11-04','MEXICO','MEXICO','MARIAN','MIGUEL ALEMAN','77894','PEDRO','2015-11-03','27',0,1,'m','9392030932','/home/luis/Documentos/Educare/Foto/Alumno/111.jpg',0,2147483647,'','234234','D324234','',''),(156,'PANCHO','PEREZ','GUITIERREZ','2015-10-22','TAMPICO','MEXICANO','BLVD ATLIXO','MANATIALES','32767','PEREZ','2015-10-13','0',1,2,'m','QD23D23',NULL,1,123123,'','9JD9AD','990239','',''),(3423,'E23','E23','E2E','2015-11-12','23E','2E3','23','E2','21312','23E','2015-11-12','27',0,1,'\0','E23','/home/luis/Documentos/Educare/Foto/Alumno/3423',0,2342342,'','','E32','',''),(4555,'OAJS','IDOSAJD','NODSAN','2015-11-04','DAD','AS','AWD','ASD','12312','DWAD','2015-11-05','27',0,1,'\0','33432','/home/luis/Documentos/Educare/Foto/Alumno/4555.png',0,432242423,'','AWD','ASD','',''),(5555,'234','2','E23E','2015-11-11','QWE','E2','23E','23E23','23443','AWDWA','2015-11-04','30',0,1,'m','234324',NULL,0,23423432,'','EQDW','234','',''),(7156,'PEDRO','PISTOLAS','PANCHO','2015-11-04','ASDD23','D32D','23D','ASDDAS','','AWDAWDSA','2015-11-12','27',1,1,'m','DWADSAD','/home/luis/Documentos/Educare/Foto/Alumno/Luis.jpg',0,2147483647,'','AWDAWD','ADWADWA','',''),(9232,'PEDRO','FERRARI','LAMBO','2015-11-11','DDD','ASD','ASD','ASD','','ASD','2015-11-04','27',0,1,'\0','3232423','/home/luis/Documentos/Educare/Foto/Alumno/9232.png',0,2147483647,'','ASD','ASD','',''),(14365,'JUAN','DE LAS PITALLAS','JONES','1111-11-11','URANO','URANENSE','I','I','00090','N/A','0202-02-02','31',1,6,'m','020202020','/home/luis/Documentos/Educare/Foto/Alumno/14365.png',0,-46,'','TELMEX','SAMSUNG','pa@a.net',''),(101010,'BINARY','NAME','FOR','2015-11-04','ADSD','AAA','DDDD','DDD','33333','QWE','2015-11-05','27',0,1,'m','3423','/home/luis/Documentos/Educare/Foto/Alumno/101010.png',0,423423,'','QWE','ASD','',''),(123456,'PAQUITO','GOMEZ','RAMIREZ','2015-11-04','CD MANTE','MEXICANO','POBLANI','LMAS','77777','ASD3242','2015-11-04','32',0,3,'m','432342342',NULL,0,324235425,'','DASDEWWWEREWWEREWR','2143252','asdsad@fds.co',''),(213123,'12','AEAW','DWAD','2015-11-03','DAW','ASD','ASD','ASD','','ASD','2015-11-11','27',0,1,'m','SAD',NULL,0,5,'','ADS','ASD','',''),(244334,'SDF3','F43','FSDF','2015-10-15','SDFDS','F43F43','F43F','F43','43','F34543','2015-10-14','0',1,1,'m','213123',NULL,1,3223432,'','F34','F34','',''),(324111,'234','234','234','2015-11-04','2342','24','234','234','23434','234','2015-11-04','27',0,1,'m','4444','/home/luis/Documentos/Educare/Foto/Alumno/324111.jpg',0,23333,'','234','234','',''),(999444,'ASD323','DASD','WA','2015-11-04','AWDWA','DA','SDA','DW','34234','DSAD','2015-11-13','27',0,1,'m','32423423','/home/luis/Documentos/Educare/Foto/Alumno/999444.png',0,2342342,'','ADSA','DASD','',''),(1211919,'54DSAD','SADD1','DSAD','2015-10-07','FFDS','ASD','D2D','D32','32','D32DFSDF','2015-10-06','0',1,1,'m','FSDF23F23',NULL,1,3423432,'E32R4R3','D32','D32','sdas@fisdf.com',''),(91992456,'CALEB','MAARES','AVALOS','2011-11-16','TAMPICO','MEXICANO','AVILA','CAMACHO','456','PEDRO','2015-10-14','0',0,2,'m','232RFRF3',NULL,0,2147483647,'','','1D89SAD','',''),(123456789,'JUAN','CAMACHO','CERVANTES','2015-11-04','MEXICO','MEXICO','MARIAN','MIGUEL ALEMAN','77894','PEDRO','2015-11-03','27',0,1,'m','9392030932','/home/luis/Documentos/Educare/Foto/Alumno/123456789.',0,2147483647,'','234234','D324234','',''),(201589456,'LUIS','MARES','SANCHEZ','2015-10-15','MANTE','TAMAULIAPS','MARIANO','AZUELA','314','PEDRO','2015-10-15','2',1,1,'m','D32GG423E23E23',NULL,1,111111111,'','23569','831','',''),(222222222,'JUAN','CAMACHO','CERVANTES','2015-11-04','MEXICO','MEXICO','MARIAN','MIGUEL ALEMAN','77894','PEDRO','2015-11-03','27',0,1,'m','9392030932','/home/luis/Documentos/Educare/Foto/Alumno/222222222.',0,2147483647,'','234234','D324234','','');
/*!40000 ALTER TABLE `alumno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ciclo`
--

DROP TABLE IF EXISTS `ciclo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ciclo` (
  `idciclo` int(11) NOT NULL AUTO_INCREMENT,
  `idseccion` int(11) NOT NULL,
  `nombre` varchar(80) NOT NULL,
  `fechaini` date NOT NULL,
  `fechafin` date NOT NULL,
  `actual` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`idciclo`),
  KEY `fk_ciclo_seccion_idx` (`idseccion`),
  CONSTRAINT `idseccion_ciclo` FOREIGN KEY (`idseccion`) REFERENCES `opcioncat` (`idopcioncat`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ciclo`
--

LOCK TABLES `ciclo` WRITE;
/*!40000 ALTER TABLE `ciclo` DISABLE KEYS */;
INSERT INTO `ciclo` VALUES (18,36,'2015-2016','2015-08-10','2016-07-15',1),(19,37,'PRI 2015-2016','2016-07-15','2016-07-15',1),(20,38,'SECU 2015-2016','2016-06-16','2016-06-16',1),(21,37,'ADSF','2015-11-03','2015-11-03',0),(22,36,'PRE2','2015-10-06','2016-03-18',0);
/*!40000 ALTER TABLE `ciclo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `criterio`
--

DROP TABLE IF EXISTS `criterio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `criterio` (
  `idcriterio` int(4) NOT NULL AUTO_INCREMENT,
  `tipocriterio` int(11) NOT NULL,
  `descripcion` varchar(25) NOT NULL,
  `calculocriterio` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`idcriterio`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `criterio`
--

LOCK TABLES `criterio` WRITE;
/*!40000 ALTER TABLE `criterio` DISABLE KEYS */;
INSERT INTO `criterio` VALUES (1,17,'Tarea',12),(3,17,'Mapas',12),(5,17,'Examen Parcial',0),(6,17,'UNIFORME',12),(7,18,'PINTURA',11),(8,17,'DEPORTES',12),(9,17,'MUSICA',13),(10,17,'LAPIZ',0),(11,17,'PUNTUALIDAD',0),(12,18,'GAT',12),(13,17,'PLUMA',0),(14,17,'FF',0),(15,17,'ZAPATOS',11),(16,17,'BODEGA',0),(17,17,'MANZANA',0),(18,18,'CABELLO',13),(19,17,'DAAA',0),(20,18,'YES',11),(21,16,'LONCHE',11),(22,16,'MOCHILA',11),(23,18,'%',11);
/*!40000 ALTER TABLE `criterio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleado`
--

DROP TABLE IF EXISTS `empleado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `empleado` (
  `idempleado` varchar(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `direccion` varchar(150) NOT NULL,
  `email` varchar(80) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `telcel` varchar(20) DEFAULT NULL,
  `colonia` varchar(40) NOT NULL,
  `cp` varchar(5) NOT NULL,
  `fecingreso` date NOT NULL,
  `fechanacimiento` date NOT NULL,
  `tiposangre` varchar(30) NOT NULL,
  `dir_imagen` varchar(100) DEFAULT NULL,
  `sexo` char(1) NOT NULL,
  `curp` varchar(30) NOT NULL,
  `idpuesto` smallint(6) NOT NULL DEFAULT '1',
  `activo` tinyint(4) NOT NULL DEFAULT '1',
  `apellidop` varchar(100) NOT NULL,
  `apellidom` varchar(100) DEFAULT NULL,
  `rfc` varchar(20) NOT NULL,
  `nombrecontacto` varchar(200) NOT NULL,
  PRIMARY KEY (`idempleado`),
  KEY `idpuesto_idx` (`idpuesto`),
  CONSTRAINT `idpuesto` FOREIGN KEY (`idpuesto`) REFERENCES `puesto` (`idpuesto`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleado`
--

LOCK TABLES `empleado` WRITE;
/*!40000 ALTER TABLE `empleado` DISABLE KEYS */;
INSERT INTO `empleado` VALUES ('XY473b','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY473c','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY473d','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY473e','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY473f','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4740','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4741','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4742','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4743','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4744','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4745','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4746','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4747','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4748','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4749','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY474a','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY474b','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY474c','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY474d','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY474e','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY474f','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4750','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4751','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4752','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4753','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4754','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4755','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4756','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4757','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4758','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4759','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY475a','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY475b','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY475c','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY475d','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY475e','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY475f','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4760','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4761','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4762','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4763','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4764','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4765','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4766','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4767','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4768','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4769','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY476a','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY476b','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY476c','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY476d','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY476e','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY476f','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4770','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4771','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4772','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4773','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4774','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4775','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4776','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4777','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4778','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4779','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY477a','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY477b','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY477c','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY477d','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY477e','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY477f','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4780','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4781','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4782','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4783','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4784','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4785','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4786','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4787','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4788','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4789','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY478a','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY478b','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY478c','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY478d','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY478e','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY478f','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4790','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4791','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4792','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4793','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4794','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4795','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4796','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4797','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4798','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4799','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY479a','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY479b','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY479c','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY479d','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY479e','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY479f','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY47a0','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY47a1','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY47a2','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY47a3','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY47a4','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY47a5','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY47a6','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY47a7','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY47a8','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY47a9','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY47aa','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY47ab','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY47ac','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY47ad','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY47ae','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY47af','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY47b0','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY47b1','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY47b2','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY47b3','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY47b4','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY47b5','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY47b6','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY47b7','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY47b8','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY47b9','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY47ba','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY47bb','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY47bc','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY47bd','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY47be','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY47bf','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY47c0','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY47c1','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY47c2','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY47c3','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY47c4','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY47c5','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY47c6','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY47c7','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY47c8','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY47c9','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY47ca','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY47cb','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY47cc','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY47cd','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY47ce','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY47cf','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY47d0','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY47d1','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY47d2','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY47d3','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY47d4','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY47d5','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY47d6','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY47d7','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY47d8','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY47d9','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY47da','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY47db','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY47dc','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY47dd','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY47de','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY47df','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY47e0','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY47e1','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY47e2','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY47e3','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY47e4','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY47e5','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY47e6','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY47e7','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY47e8','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY47e9','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY47ea','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY47eb','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY47ec','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY47ed','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY47ee','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY47ef','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY47f0','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY47f1','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY47f2','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY47f3','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY47f4','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY47f5','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY47f6','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY47f7','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY47f8','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY47f9','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY47fa','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY47fb','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY47fc','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY47fd','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY47fe','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY47ff','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4800','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4801','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4802','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4803','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4804','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4805','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4806','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4807','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4808','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4809','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY480a','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY480b','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY480c','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY480d','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY480e','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY480f','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4810','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4811','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4812','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4813','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4814','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4815','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4816','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4817','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4818','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4819','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY481a','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY481b','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY481c','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY481d','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY481e','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY481f','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4820','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4821','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4822','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4823','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4824','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4825','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4826','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4827','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4828','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4829','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY482a','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY482b','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY482c','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY482d','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY482e','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY482f','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4830','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4831','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4832','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4833','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4834','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4835','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4836','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4837','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4838','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4839','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY483a','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY483b','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY483c','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY483d','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY483e','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY483f','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4840','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4841','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4842','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4843','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4844','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4845','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4846','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4847','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4848','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4849','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY484a','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY484b','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY484c','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY484d','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY484e','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY484f','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4850','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4851','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4852','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4853','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4854','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4855','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4856','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4857','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4858','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4859','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY485a','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY485b','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY485c','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY485d','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY485e','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY485f','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4860','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4861','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4862','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4863','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4864','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4865','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4866','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4867','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4868','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4869','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY486a','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY486b','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY486c','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY486d','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY486e','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY486f','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4870','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4871','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4872','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4873','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4874','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4875','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4876','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4877','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4878','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4879','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY487a','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY487b','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY487c','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY487d','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY487e','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY487f','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4880','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4881','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4882','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4883','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4884','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4885','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4886','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4887','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4888','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4889','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY488a','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY488b','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY488c','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY488d','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY488e','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY488f','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4890','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4891','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4892','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4893','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4894','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4895','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4896','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4897','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4898','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4899','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY489a','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY489b','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY489c','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY489d','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY489e','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY489f','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY48a0','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY48a1','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY48a2','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY48a3','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY48a4','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY48a5','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY48a6','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY48a7','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY48a8','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY48a9','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY48aa','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY48ab','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY48ac','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY48ad','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY48ae','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY48af','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY48b0','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY48b1','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY48b2','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY48b3','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY48b4','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY48b5','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY48b6','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY48b7','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY48b8','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY48b9','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY48ba','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY48bb','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY48bc','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY48bd','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY48be','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY48bf','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY48c0','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY48c1','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY48c2','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY48c3','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY48c4','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY48c5','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY48c6','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY48c7','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY48c8','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY48c9','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY48ca','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY48cb','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY48cc','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY48cd','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY48ce','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY48cf','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY48d0','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY48d1','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY48d2','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY48d3','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY48d4','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY48d5','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY48d6','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY48d7','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY48d8','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY48d9','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY48da','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY48db','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY48dc','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY48dd','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY48de','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY48df','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY48e0','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY48e1','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY48e2','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY48e3','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY48e4','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY48e5','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY48e6','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY48e7','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY48e8','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY48e9','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY48ea','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY48eb','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY48ec','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY48ed','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY48ee','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY48ef','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY48f0','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY48f1','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY48f2','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY48f3','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY48f4','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY48f5','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY48f6','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY48f7','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY48f8','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY48f9','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY48fa','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY48fb','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY48fc','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY48fd','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY48fe','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY48ff','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4900','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4901','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4902','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4903','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4904','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4905','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4906','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4907','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4908','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4909','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY490a','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY490b','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY490c','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY490d','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY490e','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY490f','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4910','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4911','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4912','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4913','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4914','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4915','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4916','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4917','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4918','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4919','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY491a','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY491b','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY491c','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY491d','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY491e','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY491f','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4920','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4921','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4922','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4923','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4924','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4925','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4926','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4927','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4928','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4929','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY492a','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY492b','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY492c','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY492d','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY492e','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY492f','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4930','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4931','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4932','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4933','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4934','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4935','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4936','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4937','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4938','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4939','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY493a','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY493b','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY493c','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY493d','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY493e','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY493f','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4940','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4941','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4942','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4943','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4944','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4945','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4946','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4947','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4948','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4949','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY494a','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY494b','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY494c','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY494d','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY494e','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY494f','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4950','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4951','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4952','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4953','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4954','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4955','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4956','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4957','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4958','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4959','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY495a','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY495b','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY495c','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY495d','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY495e','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY495f','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4960','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4961','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4962','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4963','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4964','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4965','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4966','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4967','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4968','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4969','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY496a','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY496b','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY496c','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY496d','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY496e','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY496f','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4970','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4971','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4972','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4973','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4974','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4975','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4976','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4977','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4978','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY4979','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY497a','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY497b','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY497c','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('XY497d','Luis','Fco. I Madero','luis@gmail.com','123-4596',NULL,'Miguel Aleman','81645','2015-05-12','1980-01-01','+A',NULL,'m','SAML48912348',1,0,'Sanchez',NULL,'',''),('ZZAA63','LSU','DSAD','asdas@gas.cl','DWQADW','BBU','DSAD','21312','2015-11-03','2015-11-12','27','/home/luis/Documentos/Educare/Foto/Empleado/ZZAA63.jpg','m','S21R43F34FSD',6,1,'DDS','DSAD','FESFES','SFGGS');
/*!40000 ALTER TABLE `empleado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grado`
--

DROP TABLE IF EXISTS `grado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grado` (
  `idgrado` int(11) NOT NULL AUTO_INCREMENT,
  `idseccion` int(11) NOT NULL,
  `numgrado` tinyint(4) NOT NULL,
  `ultimogrado` tinyint(4) DEFAULT '0',
  `status` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`idgrado`),
  KEY `idseccion_idx` (`idseccion`),
  CONSTRAINT `idseccion_grado` FOREIGN KEY (`idseccion`) REFERENCES `opcioncat` (`idopcioncat`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grado`
--

LOCK TABLES `grado` WRITE;
/*!40000 ALTER TABLE `grado` DISABLE KEYS */;
INSERT INTO `grado` VALUES (1,36,1,0),(2,36,2,0),(17,36,3,1),(18,37,1,0),(19,37,3,0),(20,38,1,0),(21,37,4,0),(22,37,2,0),(23,37,5,0),(24,37,1,0),(25,37,6,1),(30,38,2,0),(32,38,3,1);
/*!40000 ALTER TABLE `grado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grupo`
--

DROP TABLE IF EXISTS `grupo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grupo` (
  `idgrupo` int(11) NOT NULL AUTO_INCREMENT,
  `nomgrupo` varchar(30) NOT NULL,
  `descripcion` varchar(80) DEFAULT NULL,
  `capacidad` smallint(6) NOT NULL,
  `idgrado` int(11) NOT NULL,
  `tipogrupo` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`idgrupo`),
  KEY `idgrado_idx` (`idgrado`),
  CONSTRAINT `idgrado` FOREIGN KEY (`idgrado`) REFERENCES `grado` (`idgrado`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grupo`
--

LOCK TABLES `grupo` WRITE;
/*!40000 ALTER TABLE `grupo` DISABLE KEYS */;
INSERT INTO `grupo` VALUES (1,'A','APLICAODS',25,18,0),(2,'A','',20,19,0),(3,'b','COL',15,19,0),(4,'A','',30,1,0),(5,'A','',25,2,0),(6,'N','',1,30,0);
/*!40000 ALTER TABLE `grupo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mat_criterio`
--

DROP TABLE IF EXISTS `mat_criterio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mat_criterio` (
  `idmateriacriterio` int(11) NOT NULL AUTO_INCREMENT,
  `orden` tinyint(4) NOT NULL,
  `idmateria` varchar(10) NOT NULL DEFAULT '',
  `idcriterio` int(4) NOT NULL,
  `porcentaje` smallint(6) NOT NULL,
  `periodo` int(11) NOT NULL,
  PRIMARY KEY (`idmateriacriterio`),
  KEY `materia_idx` (`idmateria`),
  KEY `idcriteriofk_idx` (`idcriterio`),
  KEY `fk_mat_criterio_periodo_idx` (`periodo`),
  CONSTRAINT `idcriteriofk` FOREIGN KEY (`idcriterio`) REFERENCES `criterio` (`idcriterio`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `mat_criterio_periodo` FOREIGN KEY (`periodo`) REFERENCES `rangoprogramado` (`idrangoprogramado`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `materia` FOREIGN KEY (`idmateria`) REFERENCES `materia` (`idmateria`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mat_criterio`
--

LOCK TABLES `mat_criterio` WRITE;
/*!40000 ALTER TABLE `mat_criterio` DISABLE KEYS */;
INSERT INTO `mat_criterio` VALUES (1,0,'EP100',1,20,27),(2,0,'EP100',6,80,27),(3,0,'EP100',7,0,27),(4,0,'TEC123',1,50,14),(5,0,'TEC123',6,50,14),(6,0,'TEC123',7,0,14),(7,0,'TEC123',21,0,14),(8,0,'TEC123',1,25,15),(9,0,'TEC123',3,75,15),(10,0,'TEC123',9,80,16),(11,0,'TEC123',15,20,16),(12,0,'TEC123',1,20,27),(13,0,'TEC123',6,80,27),(14,0,'TEC123',7,0,27),(15,0,'00',1,85,27),(16,0,'00',7,0,27),(17,0,'00',8,15,27),(18,0,'00',1,65,28),(19,0,'00',15,35,28),(20,0,'00',18,0,28),(21,0,'00',1,10,29),(22,0,'00',3,15,29),(23,0,'00',6,20,29),(24,0,'00',8,50,29),(25,0,'00',9,5,29),(26,0,'00',12,0,29);
/*!40000 ALTER TABLE `mat_criterio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `materia`
--

DROP TABLE IF EXISTS `materia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `materia` (
  `idmateria` varchar(10) NOT NULL,
  `nombre` varchar(40) NOT NULL,
  `creditos` tinyint(4) NOT NULL,
  `clavesep` varchar(15) DEFAULT NULL,
  `tipomat` int(11) NOT NULL,
  `idgrado` int(11) DEFAULT NULL,
  `tipogrupo` int(11) NOT NULL,
  `tipocaptura` int(11) NOT NULL,
  PRIMARY KEY (`idmateria`),
  KEY `fk_grado_idx` (`idgrado`),
  KEY `fk_tipomate_idx` (`tipomat`),
  KEY `fk_tipogrupo_idx` (`tipogrupo`),
  KEY `fk_tipocapt_idx` (`tipocaptura`),
  CONSTRAINT `fk_grado` FOREIGN KEY (`idgrado`) REFERENCES `grado` (`idgrado`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_tipocapt_materia` FOREIGN KEY (`tipocaptura`) REFERENCES `opcioncat` (`idopcioncat`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `fk_tipogrupo_materia` FOREIGN KEY (`tipogrupo`) REFERENCES `opcioncat` (`idopcioncat`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `tipomat_opt` FOREIGN KEY (`tipomat`) REFERENCES `opcioncat` (`idopcioncat`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materia`
--

LOCK TABLES `materia` WRITE;
/*!40000 ALTER TABLE `materia` DISABLE KEYS */;
INSERT INTO `materia` VALUES ('00','OOO',7,'009',19,1,9,23),('COM90995','INTRODUCCION',10,'',20,1,10,24),('EP100','ESPAÑOL 1',0,'ESPX100',19,2,9,23),('MAT1','MATEMÁTICAS 1',0,'MAT100',19,18,21,14),('PKU','GUN SHOOT',0,'',20,1,10,23),('TEC123','TECNOLOGIA',0,'TEC987',19,32,9,23),('XYZ','CIENCIAS',0,'C4',19,18,21,14);
/*!40000 ALTER TABLE `materia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opcioncat`
--

DROP TABLE IF EXISTS `opcioncat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opcioncat` (
  `idopcioncat` int(11) NOT NULL AUTO_INCREMENT,
  `idcatalogo` int(11) NOT NULL,
  `descripcion` varchar(45) NOT NULL,
  `status` varchar(45) NOT NULL,
  `tipocat` varchar(45) NOT NULL,
  `desctipocat` varchar(45) NOT NULL,
  PRIMARY KEY (`idopcioncat`),
  KEY `desctipo` (`desctipocat`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opcioncat`
--

LOCK TABLES `opcioncat` WRITE;
/*!40000 ALTER TABLE `opcioncat` DISABLE KEYS */;
INSERT INTO `opcioncat` VALUES (9,1,'Normal','A','opcion','TipoGrupos'),(10,2,'Mixto','A','opcion','TipoGrupos'),(11,0,'Ninguno','A','opcion','CalculoCriterio'),(12,1,'Promedio','A','opcion','CalculoCriterio'),(13,2,'Suma','A','opcion','CalculoCriterio'),(14,1,'Normal','A','opcion','TiposCaptura'),(15,2,'Examen','A','opcion','TiposCaptura'),(16,3,'Grupal','A','opcion','TiposCriterios'),(17,1,'Materia','A','opcion','TiposCriterios'),(18,2,'Materia No Influyente','A','opcion','TiposCriterios'),(19,1,'Sep','A','opcion','TipoMat'),(20,2,'Especiales','A','opcion','TipoMat'),(21,1,'Normal','A','opcion','TipoGrupoMa'),(22,2,'Mixto','A','opcion','TipoGrupoMa'),(23,1,'Promedio','A','opcion','TipoCalifMa'),(24,2,'Suma','A','opcion','TipoCalifMa'),(25,1,'Automatico','A','opcion','TipoFechaCaptura'),(26,2,'Especifico','A','opcion','TipoFechaCaptura'),(27,1,'O+','A','opcion','TipoSangre'),(30,2,'A+','A','opcion','TipoSangre'),(31,3,'B+','A','opcion','TipoSangre'),(32,4,'AB+','A','opcion','TipoSangre'),(33,5,'O-','A','opcion','TipoSangre'),(34,6,'A-','A','opcion','TipoSangre'),(35,7,'B-','A','opcion','TipoSangre'),(36,1,'Preescolar','A','opcion','Seccion'),(37,2,'Primaria','A','opcion','Seccion'),(38,3,'Secundaria','A','opcion','Seccion'),(39,1,'Mensual','A','opcion','TipoPromedio'),(40,2,'Bimestral','A','opcion','TipoPromedio'),(41,3,'Trimestral','A','opcion','TipoPromedio'),(42,4,'Cuatrimestral','A','opcion','TipoPromedio'),(43,1,'Parcial','A','opcion','TipoCaptura'),(44,2,'Examen','A','opcion','TipoCaptura');
/*!40000 ALTER TABLE `opcioncat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opcionescaptura`
--

DROP TABLE IF EXISTS `opcionescaptura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opcionescaptura` (
  `idopcionescaptura` int(11) NOT NULL AUTO_INCREMENT,
  `idseccion` int(11) NOT NULL,
  `idciclo` int(11) NOT NULL,
  `tipomat` int(11) NOT NULL,
  `periodos` smallint(6) DEFAULT NULL,
  `rangopromedio` int(11) DEFAULT NULL,
  PRIMARY KEY (`idopcionescaptura`),
  KEY `fk_idseccion_op_idx` (`idseccion`),
  KEY `fk_idciclo_op_idx` (`idciclo`),
  KEY `fk_idtipomat_op_idx` (`tipomat`),
  KEY `fk_opcionescaptura_1_idx` (`rangopromedio`),
  CONSTRAINT `fk_idciclo_op` FOREIGN KEY (`idciclo`) REFERENCES `ciclo` (`idciclo`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `fk_idseccion_op` FOREIGN KEY (`idseccion`) REFERENCES `opcioncat` (`idopcioncat`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `fk_idtipomat_op` FOREIGN KEY (`tipomat`) REFERENCES `opcioncat` (`idopcioncat`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `fk_promedio_op` FOREIGN KEY (`rangopromedio`) REFERENCES `opcioncat` (`idopcioncat`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opcionescaptura`
--

LOCK TABLES `opcionescaptura` WRITE;
/*!40000 ALTER TABLE `opcionescaptura` DISABLE KEYS */;
INSERT INTO `opcionescaptura` VALUES (32,38,20,19,3,42),(33,36,18,19,3,39);
/*!40000 ALTER TABLE `opcionescaptura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `puesto`
--

DROP TABLE IF EXISTS `puesto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `puesto` (
  `idpuesto` smallint(6) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(50) NOT NULL,
  PRIMARY KEY (`idpuesto`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `puesto`
--

LOCK TABLES `puesto` WRITE;
/*!40000 ALTER TABLE `puesto` DISABLE KEYS */;
INSERT INTO `puesto` VALUES (1,'Admin'),(2,'DOCENTE SECUNDARIA'),(3,'Docente primaria'),(4,'INTENDENTE'),(5,'SECRETARIA'),(6,'DIRECTOR GENERAL'),(7,'BIBLIOTECARIA'),(8,'ASISTENTE PREESCOLAR'),(9,'ADMIN SISTEMAS'),(10,'intendente primaria'),(11,'MECANICO'),(12,'Técnico en higiene');
/*!40000 ALTER TABLE `puesto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rangoprogramado`
--

DROP TABLE IF EXISTS `rangoprogramado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rangoprogramado` (
  `idopcion` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `tipocaptura` int(11) DEFAULT NULL,
  `porcentaje` tinyint(4) NOT NULL,
  `orden` tinyint(4) NOT NULL,
  `inicia` date NOT NULL,
  `termina` date NOT NULL,
  `idrangoprogramado` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`idrangoprogramado`),
  KEY `idocion` (`idopcion`,`orden`),
  KEY `rango_tipocaptura_idx` (`tipocaptura`),
  CONSTRAINT `fk_rangoprogramado_1` FOREIGN KEY (`idopcion`) REFERENCES `opcionescaptura` (`idopcionescaptura`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `rango_tipocaptura` FOREIGN KEY (`tipocaptura`) REFERENCES `opcioncat` (`idopcioncat`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rangoprogramado`
--

LOCK TABLES `rangoprogramado` WRITE;
/*!40000 ALTER TABLE `rangoprogramado` DISABLE KEYS */;
INSERT INTO `rangoprogramado` VALUES (32,'Periodo 1',43,100,1,'2015-11-14','2015-11-14',14),(32,'Periodo 2',43,100,2,'2015-11-14','2015-11-14',15),(32,'Periodo 3',43,100,3,'2015-11-14','2015-11-14',16),(32,'Examen',44,100,4,'2015-11-19','2015-11-19',17),(32,'ExamenFinal',44,100,5,'2015-11-24','2015-11-24',18),(33,'Periodo 1',43,100,0,'2015-11-07','2015-11-07',27),(33,'Periodo 2',43,100,1,'2015-11-18','2015-11-18',28),(33,'Periodo 3',43,100,2,'2015-11-19','2015-11-19',29),(33,'Examen',44,100,3,'2015-11-19','2015-11-19',30);
/*!40000 ALTER TABLE `rangoprogramado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salon`
--

DROP TABLE IF EXISTS `salon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `salon` (
  `idsalon` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(80) NOT NULL,
  `numsalon` varchar(20) NOT NULL,
  `capacidad` smallint(6) NOT NULL,
  `activo` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`idsalon`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salon`
--

LOCK TABLES `salon` WRITE;
/*!40000 ALTER TABLE `salon` DISABLE KEYS */;
INSERT INTO `salon` VALUES (1,'SALOON GHOST','1023',20,1),(2,'HELLO','1106',20,1),(3,'AULA 2','1105',20,1),(4,'Aula','2105',40,1),(5,'LABORATORIO 2','2016',45,1),(6,'Salón de clases','2017',30,1),(7,'Saloon','2065',27,0),(8,'Saloon','2065',27,0),(9,'Laboratorio 1','2016',45,2),(10,'Salón de clases','2017',33,1),(11,'Salón de clases','2017',33,1),(12,'No lo sepo','A4',5,1),(13,'222','asd',1,1),(14,'Orientacion','1123',5,1),(15,'Laboratorio Ciencias','L91',25,0),(16,'INSTRUEMENTOS','MUSICA',10,0),(17,'AULA GENERAL','B2',30,1),(18,'LAB','101',75,1),(19,'YA TU SABE','102',6,1),(20,'PAVOS','103',20,1),(21,'AULA MAGNA','4502',10000,1),(22,'ARQUITECTURA DE COMPUTADORAS','SIS2026',0,1),(23,'SISTEMAS','SIS2026',5,1);
/*!40000 ALTER TABLE `salon` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-11-25 17:01:12