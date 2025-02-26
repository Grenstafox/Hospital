-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 26, 2025 at 03:40 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hospitales`
--

-- --------------------------------------------------------

--
-- Table structure for table `doctores`
--

CREATE TABLE `doctores` (
  `IDdoctores` int(20) NOT NULL,
  `Nombres` varchar(30) NOT NULL,
  `Apellido` varchar(30) NOT NULL,
  `Consultorio` varchar(20) NOT NULL,
  `Horario` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `doctores`
--

INSERT INTO `doctores` (`IDdoctores`, `Nombres`, `Apellido`, `Consultorio`, `Horario`) VALUES
(1345672, 'Juan', 'Flores', 'consultorio 3', '11:00 A.M');

-- --------------------------------------------------------

--
-- Table structure for table `especialidades`
--

CREATE TABLE `especialidades` (
  `IDdoctor` int(20) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `especialidad` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `especialidades`
--

INSERT INTO `especialidades` (`IDdoctor`, `nombre`, `especialidad`) VALUES
(1345672, 'Hernesto', 'Alergología');

-- --------------------------------------------------------

--
-- Table structure for table `inventario`
--

CREATE TABLE `inventario` (
  `IDproducto` int(11) NOT NULL,
  `comida` varchar(20) NOT NULL,
  `herramientas` varchar(30) NOT NULL,
  `equipo_medico` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `inventario`
--

INSERT INTO `inventario` (`IDproducto`, `comida`, `herramientas`, `equipo_medico`) VALUES
(1345672, 'Comida altas en prot', 'bisturi', 'ultrasonido de diagnóstico');

-- --------------------------------------------------------

--
-- Table structure for table `pacientes`
--

CREATE TABLE `pacientes` (
  `IDpaciente` int(20) NOT NULL,
  `Nombre` varchar(30) NOT NULL,
  `Cuarto` varchar(20) NOT NULL,
  `Contacto` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `pacientes`
--

INSERT INTO `pacientes` (`IDpaciente`, `Nombre`, `Cuarto`, `Contacto`) VALUES
(1345672, 'Hernesto', 'Cuarto 603', 215171623);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `doctores`
--
ALTER TABLE `doctores`
  ADD PRIMARY KEY (`IDdoctores`),
  ADD KEY `FKNombre` (`Nombres`),
  ADD KEY `FKApellidos` (`Apellido`),
  ADD KEY `FKConsultorio` (`Consultorio`),
  ADD KEY `FKHorario` (`Horario`) USING BTREE;

--
-- Indexes for table `especialidades`
--
ALTER TABLE `especialidades`
  ADD PRIMARY KEY (`IDdoctor`),
  ADD KEY `FKnombre` (`nombre`),
  ADD KEY `FKEspecialidad` (`especialidad`);

--
-- Indexes for table `inventario`
--
ALTER TABLE `inventario`
  ADD PRIMARY KEY (`IDproducto`),
  ADD UNIQUE KEY `FKHErramientas` (`herramientas`),
  ADD KEY `FKComida` (`comida`),
  ADD KEY `FKEquipo_medico` (`equipo_medico`);

--
-- Indexes for table `pacientes`
--
ALTER TABLE `pacientes`
  ADD PRIMARY KEY (`IDpaciente`),
  ADD KEY `FKNombre` (`Nombre`),
  ADD KEY `FKCuarto` (`Cuarto`) USING BTREE;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `especialidades`
--
ALTER TABLE `especialidades`
  ADD CONSTRAINT `especialidades_ibfk_1` FOREIGN KEY (`IDdoctor`) REFERENCES `doctores` (`IDdoctores`);

--
-- Constraints for table `inventario`
--
ALTER TABLE `inventario`
  ADD CONSTRAINT `inventario_ibfk_1` FOREIGN KEY (`IDproducto`) REFERENCES `doctores` (`IDdoctores`);

--
-- Constraints for table `pacientes`
--
ALTER TABLE `pacientes`
  ADD CONSTRAINT `pacientes_ibfk_1` FOREIGN KEY (`IDpaciente`) REFERENCES `inventario` (`IDproducto`),
  ADD CONSTRAINT `pacientes_ibfk_2` FOREIGN KEY (`Nombre`) REFERENCES `especialidades` (`nombre`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
