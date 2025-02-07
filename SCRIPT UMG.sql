-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-02-2025 a las 19:05:53
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
-- Base de datos: `umg`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `Carnet_alumno` varchar(15) NOT NULL,
  `Nombre_alumno` varchar(45) DEFAULT NULL,
  `Direccion_alumno` varchar(45) DEFAULT NULL,
  `Telefono_alumno` varchar(45) DEFAULT NULL,
  `Email_alumno` varchar(20) DEFAULT NULL,
  `Estatus_alumno` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`Carnet_alumno`, `Nombre_alumno`, `Direccion_alumno`, `Telefono_alumno`, `Email_alumno`, `Estatus_alumno`) VALUES
('9959-20-8898', 'Patroclo', 'zona 14', '785568', 'Patro@gmail.com', '1'),
('9959-23-10649', 'Manolo', 'zona 16', '55555', 'Cmanolito2@gmail.com', '1'),
('9959-23-757', 'Pablo', 'zona 15', '6467891', 'Pablito@gmail.com', '1'),
('9959-23-798', 'David', 'zona 17', '2467858', 'Carlitos2@gmail.com', '1'),
('9959-23-848', 'Carlos', 'zona 18', '41638168', 'Ccalderonr2@gmail.co', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignacioncursosalumnos`
--

CREATE TABLE `asignacioncursosalumnos` (
  `Codigo_carrera` varchar(5) NOT NULL,
  `Codigo_sede` varchar(5) NOT NULL,
  `Codigo_jornada` varchar(5) NOT NULL,
  `Codigo_seccion` varchar(5) NOT NULL,
  `Codigo_aula` varchar(5) NOT NULL,
  `Codigo_curso` varchar(5) NOT NULL,
  `Carnet_alumno` varchar(15) NOT NULL,
  `nota_asignacioncursoalumnos` float(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `asignacioncursosalumnos`
--

INSERT INTO `asignacioncursosalumnos` (`Codigo_carrera`, `Codigo_sede`, `Codigo_jornada`, `Codigo_seccion`, `Codigo_aula`, `Codigo_curso`, `Carnet_alumno`, `nota_asignacioncursoalumnos`) VALUES
('2469', '9090', '1010', '112', '05', '021', '9959-23-848', 10.00),
('2559', '100', '3030', '114', '07', '023', '9959-23-757', 8.00),
('9020', '8080', '2020', '113', '06', '022', '9959-20-8898', 5.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignacioncursosmaestros`
--

CREATE TABLE `asignacioncursosmaestros` (
  `Codigo_carrera` varchar(5) NOT NULL,
  `Codigo_sede` varchar(5) NOT NULL,
  `Codigo_jornada` varchar(5) NOT NULL,
  `Codigo_seccion` varchar(5) NOT NULL,
  `Codigo_aula` varchar(5) NOT NULL,
  `Codigo_curso` varchar(5) NOT NULL,
  `Codigo_maestro` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aulas`
--

CREATE TABLE `aulas` (
  `Codigo_aula` varchar(5) NOT NULL,
  `Nombre_aula` varchar(45) DEFAULT NULL,
  `Estatus_aula` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `aulas`
--

INSERT INTO `aulas` (`Codigo_aula`, `Nombre_aula`, `Estatus_aula`) VALUES
('05', 'C05', '1'),
('06', 'C06', '1'),
('07', 'C07', '1'),
('08', 'C08', '1'),
('09', 'C09', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carreras`
--

CREATE TABLE `carreras` (
  `Codigo_carrera` varchar(5) NOT NULL,
  `Nombre_carrera` varchar(45) DEFAULT NULL,
  `Codigo_facultad` varchar(5) DEFAULT NULL,
  `Estatus_carrera` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `carreras`
--

INSERT INTO `carreras` (`Codigo_carrera`, `Nombre_carrera`, `Codigo_facultad`, `Estatus_carrera`) VALUES
('2469', 'Ing software', '9959', '1'),
('2559', 'Ing sistemas', '9959', '1'),
('3015', 'Ing Informatica', '9959', '1'),
('6080', 'Ing Digital', '9959', '1'),
('9020', 'Ing Hardware', '9959', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cursos`
--

CREATE TABLE `cursos` (
  `Codigo_curso` varchar(5) NOT NULL,
  `Nombre_curso` varchar(45) DEFAULT NULL,
  `Estatus_curso` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `cursos`
--

INSERT INTO `cursos` (`Codigo_curso`, `Nombre_curso`, `Estatus_curso`) VALUES
('021', 'Metodos Numericos', '1'),
('022', 'Electronica', '1'),
('023', 'Progra 3', '1'),
('024', 'Estadistica 2', '1'),
('025', 'Emprendedores', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facultad`
--

CREATE TABLE `facultad` (
  `Codigo_facultad` varchar(5) NOT NULL,
  `Nombre_facultad` varchar(45) DEFAULT NULL,
  `Estatus_facultad` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `facultad`
--

INSERT INTO `facultad` (`Codigo_facultad`, `Nombre_facultad`, `Estatus_facultad`) VALUES
('9959', 'Ingenieria Sis', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jornadas`
--

CREATE TABLE `jornadas` (
  `Codigo_jornada` varchar(5) NOT NULL,
  `Nombre_jornada` varchar(45) DEFAULT NULL,
  `Estatus_jornada` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `jornadas`
--

INSERT INTO `jornadas` (`Codigo_jornada`, `Nombre_jornada`, `Estatus_jornada`) VALUES
('1010', 'Matutina', '1'),
('2020', 'Diurna', '1'),
('3030', 'Vespertina', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `maestros`
--

CREATE TABLE `maestros` (
  `Codigo_maestro` varchar(5) NOT NULL,
  `Nombre_maestro` varchar(45) DEFAULT NULL,
  `Direccion_maestro` varchar(45) DEFAULT NULL,
  `Telefono_maestro` varchar(45) DEFAULT NULL,
  `Email_maestro` varchar(20) DEFAULT NULL,
  `Estatus_maestro` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `maestros`
--

INSERT INTO `maestros` (`Codigo_maestro`, `Nombre_maestro`, `Direccion_maestro`, `Telefono_maestro`, `Email_maestro`, `Estatus_maestro`) VALUES
('010', 'Donal Poz', 'zona 17', '65232487', 'poz@gmai.com', '1'),
('011', 'Tatiana', 'zona 16', '8774526', 'Tatiana@gmai.com', '1'),
('012', 'Esduardo', 'zona 15', '5546642', 'DelAguila@gmai.com', '1'),
('013', 'Francisco', 'zona 12', '672152', 'Fracisco@gmai.com', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `secciones`
--

CREATE TABLE `secciones` (
  `Codigo_seccion` varchar(5) NOT NULL,
  `Nombre_seccion` varchar(45) DEFAULT NULL,
  `Estatus_seccion` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `secciones`
--

INSERT INTO `secciones` (`Codigo_seccion`, `Nombre_seccion`, `Estatus_seccion`) VALUES
('112', 'A', '1'),
('113', 'B', '1'),
('114', 'C', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sedes`
--

CREATE TABLE `sedes` (
  `Codigo_sede` varchar(5) NOT NULL,
  `Nombre_sede` varchar(45) DEFAULT NULL,
  `Estatus_sede` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `sedes`
--

INSERT INTO `sedes` (`Codigo_sede`, `Nombre_sede`, `Estatus_sede`) VALUES
('100', 'Antigua', '1'),
('8080', 'Naranjo', '1'),
('9090', 'Portales', '1');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`Carnet_alumno`);

--
-- Indices de la tabla `asignacioncursosalumnos`
--
ALTER TABLE `asignacioncursosalumnos`
  ADD PRIMARY KEY (`Codigo_carrera`,`Codigo_sede`,`Codigo_jornada`,`Codigo_seccion`,`Codigo_aula`,`Codigo_curso`,`Carnet_alumno`),
  ADD KEY `Codigo_sede` (`Codigo_sede`),
  ADD KEY `Codigo_jornada` (`Codigo_jornada`),
  ADD KEY `Codigo_seccion` (`Codigo_seccion`),
  ADD KEY `Codigo_aula` (`Codigo_aula`),
  ADD KEY `Codigo_curso` (`Codigo_curso`),
  ADD KEY `Carnet_alumno` (`Carnet_alumno`);

--
-- Indices de la tabla `asignacioncursosmaestros`
--
ALTER TABLE `asignacioncursosmaestros`
  ADD PRIMARY KEY (`Codigo_carrera`,`Codigo_sede`,`Codigo_jornada`,`Codigo_seccion`,`Codigo_aula`,`Codigo_curso`,`Codigo_maestro`),
  ADD KEY `Codigo_sede` (`Codigo_sede`),
  ADD KEY `Codigo_jornada` (`Codigo_jornada`),
  ADD KEY `Codigo_seccion` (`Codigo_seccion`),
  ADD KEY `Codigo_aula` (`Codigo_aula`),
  ADD KEY `Codigo_curso` (`Codigo_curso`),
  ADD KEY `Codigo_maestro` (`Codigo_maestro`);

--
-- Indices de la tabla `aulas`
--
ALTER TABLE `aulas`
  ADD PRIMARY KEY (`Codigo_aula`);

--
-- Indices de la tabla `carreras`
--
ALTER TABLE `carreras`
  ADD PRIMARY KEY (`Codigo_carrera`),
  ADD KEY `Codigo_facultad` (`Codigo_facultad`);

--
-- Indices de la tabla `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`Codigo_curso`);

--
-- Indices de la tabla `facultad`
--
ALTER TABLE `facultad`
  ADD PRIMARY KEY (`Codigo_facultad`);

--
-- Indices de la tabla `jornadas`
--
ALTER TABLE `jornadas`
  ADD PRIMARY KEY (`Codigo_jornada`);

--
-- Indices de la tabla `maestros`
--
ALTER TABLE `maestros`
  ADD PRIMARY KEY (`Codigo_maestro`);

--
-- Indices de la tabla `secciones`
--
ALTER TABLE `secciones`
  ADD PRIMARY KEY (`Codigo_seccion`);

--
-- Indices de la tabla `sedes`
--
ALTER TABLE `sedes`
  ADD PRIMARY KEY (`Codigo_sede`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `asignacioncursosalumnos`
--
ALTER TABLE `asignacioncursosalumnos`
  ADD CONSTRAINT `asignacioncursosalumnos_ibfk_1` FOREIGN KEY (`Codigo_carrera`) REFERENCES `carreras` (`Codigo_carrera`),
  ADD CONSTRAINT `asignacioncursosalumnos_ibfk_2` FOREIGN KEY (`Codigo_sede`) REFERENCES `sedes` (`Codigo_sede`),
  ADD CONSTRAINT `asignacioncursosalumnos_ibfk_3` FOREIGN KEY (`Codigo_jornada`) REFERENCES `jornadas` (`Codigo_jornada`),
  ADD CONSTRAINT `asignacioncursosalumnos_ibfk_4` FOREIGN KEY (`Codigo_seccion`) REFERENCES `secciones` (`Codigo_seccion`),
  ADD CONSTRAINT `asignacioncursosalumnos_ibfk_5` FOREIGN KEY (`Codigo_aula`) REFERENCES `aulas` (`Codigo_aula`),
  ADD CONSTRAINT `asignacioncursosalumnos_ibfk_6` FOREIGN KEY (`Codigo_curso`) REFERENCES `cursos` (`Codigo_curso`),
  ADD CONSTRAINT `asignacioncursosalumnos_ibfk_7` FOREIGN KEY (`Carnet_alumno`) REFERENCES `alumnos` (`Carnet_alumno`);

--
-- Filtros para la tabla `asignacioncursosmaestros`
--
ALTER TABLE `asignacioncursosmaestros`
  ADD CONSTRAINT `asignacioncursosmaestros_ibfk_1` FOREIGN KEY (`Codigo_carrera`) REFERENCES `carreras` (`Codigo_carrera`),
  ADD CONSTRAINT `asignacioncursosmaestros_ibfk_2` FOREIGN KEY (`Codigo_sede`) REFERENCES `sedes` (`Codigo_sede`),
  ADD CONSTRAINT `asignacioncursosmaestros_ibfk_3` FOREIGN KEY (`Codigo_jornada`) REFERENCES `jornadas` (`Codigo_jornada`),
  ADD CONSTRAINT `asignacioncursosmaestros_ibfk_4` FOREIGN KEY (`Codigo_seccion`) REFERENCES `secciones` (`Codigo_seccion`),
  ADD CONSTRAINT `asignacioncursosmaestros_ibfk_5` FOREIGN KEY (`Codigo_aula`) REFERENCES `aulas` (`Codigo_aula`),
  ADD CONSTRAINT `asignacioncursosmaestros_ibfk_6` FOREIGN KEY (`Codigo_curso`) REFERENCES `cursos` (`Codigo_curso`),
  ADD CONSTRAINT `asignacioncursosmaestros_ibfk_7` FOREIGN KEY (`Codigo_maestro`) REFERENCES `maestros` (`Codigo_maestro`);

--
-- Filtros para la tabla `carreras`
--
ALTER TABLE `carreras`
  ADD CONSTRAINT `carreras_ibfk_1` FOREIGN KEY (`Codigo_facultad`) REFERENCES `facultad` (`Codigo_facultad`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
