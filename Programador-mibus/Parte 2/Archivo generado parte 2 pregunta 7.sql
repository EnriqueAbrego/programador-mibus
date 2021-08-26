-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-08-2021 a las 18:09:43
-- Versión del servidor: 10.4.20-MariaDB
-- Versión de PHP: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `mibus`
--

-- --------------------------------------------------------

--
-- Estructura para la vista `parte27`
--

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `parte27`  AS SELECT sec_to_time(time_to_sec(str_to_date(`parte2`.`FechaTransaccion`,'%m/%d/%Y%H:%i')) - time_to_sec(str_to_date(`parte2`.`FechaTransaccion`,'%m/%d/%Y%H:%i')) MOD (15 * 60)) AS `Intervalos`, sum(`parte2`.`TarifaMonto`) AS `IngresosEntre15Minutis` FROM `parte2` WHERE dayofmonth(str_to_date(`parte2`.`FechaTransaccion`,'%m/%d/%Y%H:%i')) = '26' GROUP BY sec_to_time(time_to_sec(str_to_date(`parte2`.`FechaTransaccion`,'%m/%d/%Y%H:%i')) - time_to_sec(str_to_date(`parte2`.`FechaTransaccion`,'%m/%d/%Y%H:%i')) MOD (15 * 60)) ;

--
-- VIEW `parte27`
-- Datos: Ninguna
--

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
