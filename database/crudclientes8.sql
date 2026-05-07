-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-05-2026 a las 19:32:52
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `crudclientes`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('danielflrz95@hotmail.com|127.0.0.1', 'i:1;', 1768093477),
('danielflrz95@hotmail.com|127.0.0.1:timer', 'i:1768093477;', 1768093477),
('epicgraff.df@gmail.com|127.0.0.1', 'i:3;', 1773357163),
('epicgraff.df@gmail.com|127.0.0.1:timer', 'i:1773357163;', 1773357163);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `cedula` int(100) NOT NULL,
  `celular` varchar(100) NOT NULL,
  `eps` varchar(25) NOT NULL,
  `ocupacion` varchar(100) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `edad` int(10) NOT NULL,
  `rh` varchar(2) NOT NULL,
  `contact_emer` varchar(100) NOT NULL,
  `num_contact_emer` varchar(20) NOT NULL,
  `patologia` varchar(50) NOT NULL,
  `genero` varchar(20) NOT NULL,
  `estatura` varchar(20) NOT NULL,
  `peso` varchar(20) NOT NULL,
  `fecha_ingreso` varchar(255) NOT NULL,
  `C,L,SP,DR` varchar(255) DEFAULT NULL,
  `observaciones` varchar(255) DEFAULT NULL,
  `plan` varchar(50) NOT NULL,
  `clases` int(16) NOT NULL,
  `vigencia_plan` date DEFAULT current_timestamp(),
  `estatus` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `nombre`, `fecha_nacimiento`, `cedula`, `celular`, `eps`, `ocupacion`, `correo`, `edad`, `rh`, `contact_emer`, `num_contact_emer`, `patologia`, `genero`, `estatura`, `peso`, `fecha_ingreso`, `C,L,SP,DR`, `observaciones`, `plan`, `clases`, `vigencia_plan`, `estatus`) VALUES
(2, 'adriana milena gutierrez roa', '1979-03-06', 52714644, '3105730457', 'aliansalud', 'aux vuelo', 'adriguti27@hotmail.com', 43, 'o+', 'yuli gitierrz (hermana)', '314 234 8713', 'N/A', 'N/A', '1.69', '57,4', '1/01/2022', 'N/A', 'mamoplastia, rodilla derecha y lumbar', '', 5, '2026-03-14', 1),
(3, 'alba luz garzon benitez', '1979-05-05', 52537053, '3152926628', 'cafam', 'auxiliar contable (sentada)', 'garzonbenitezalbaluz@gmail.com', 43, 'o+', 'esperzanza garzon (hermana)', '314 428 8719', 'N/A', 'Femenino', '1.55', '66,6', '2/09/2022', 'N/A', 'dolor hombro izquierdo, dolor tobillo, dolor lumbar ,mejora resistencia cardio vascular, mejorar la fuerza', '', 2, '2025-09-09', 0),
(4, 'Alejandra BojacÃ¡', '1980-03-07', 52467494, '3156695364', 'Sanitas', 'Empleada', 'N/A', 44, 'O+', 'Pedro BojacÃ¡', '3118305742', 'Diabetes, hipotiroidismo', 'Femenino', '1.65', 'N/A', 'N/A', 'N/A', 'N/A', '', 10, '2025-09-09', 0),
(5, 'alejandra cardozo cifuentes', '1980-11-16', 52410374, '3017411432', 'famisanar', 'abogada (activa)', 'aletechnox@hotmail.com', 41, 'o+', 'hernando cardozo bermudez (papa)', '300 241 8065', 'N/A', 'Femenino', '1.7', '60,45', 'N/A', 'alcohol cada 8 dias', 'dolor de la rodilla por desacondicionamiento', '', 10, '2025-09-09', 1),
(6, 'Alejandra Vargas', '2024-04-27', 1010197735, '3176816561', 'Sura', 'empleada', 'alejandravg0927@gmail.com', 33, 'o+', 'Erika Vargas', '3174385427', 'N/A', 'Femenino', '1.58', 'N/A', '18/12/2024', 'N/A', 'N/A', '', 10, '2025-09-09', 1),
(7, 'alejandro alarcon hamon', '1997-10-02', 1010236147, '3015749962', 'compensar', 'estiduante (derecho)', 'alejandroalarcon1497@gmail.com', 24, 'o-', 'uriel alarcon (papa)', '312 447 1682', 'N/A', 'Masculino', '1.77', '91,45', 'N/A', 'N/A', 'N/A', '', 10, '2025-09-09', 1),
(8, 'alex mejia lis', '1995-07-14', 1105790226, '3134047379', 'sanitas', 'independiente (contador y entrenador de futbol)', 'javalis57@gmail.com', 26, 'o+', 'ines mejia (tia)', '312 548 1171', 'N/A', 'Masculino', '1.74', '70,4', 'N/A', 'N/A', 'N/A', '', 10, '2025-09-09', 1),
(9, 'Alexander Moreno', '2024-04-27', 1010197735, '3176816561', 'Sura', 'empleada', 'alejandravg0927@gmail.com', 33, 'o+', 'Erika Vargas', '3174385427', 'N/A', 'Femenino', '1.58', 'N/A', '18/12/2024', 'N/A', 'N/A', '', 10, '2025-09-09', 1),
(10, 'ana karina valcarcel paredes', '1994-02-17', 1127044192, '3104131518', 'sanitas', 'agente profesional (sentada)', 'valcarcelparedesanakarina@gmail.com', 28, 'o+', 'susana valcarcel (hermana)', '316 818 3322', 'N/A', 'Femenino', '1.55', '57,55', '8/10/2022', 'N/A', 'dolor en la muÃ±eca derecha desacondicianmiento del lumbar', '', 10, '2025-09-09', 1),
(11, 'ana maria erazo parra', '1997-02-14', 1032489284, '3144128000', 'sanitas', 'publicista (sentada)', 'anaerazo.p@gmail.com', 25, 'o+', 'gloria parra (mama)', '315 334 9162', 'N/A', 'Femenino', '1.63', '59,25', '1/08/2022', 'planificacion diu', 'fisura muÃ±eca, esguince tobillo grado 2 (abril 2022)', '', 10, '2025-09-09', 1),
(12, 'andrea benavides mateus', '1979-02-24', 39675560, '3135953968', 'medplus', 'independiente', 'matecaran@yahoo.es', 45, 'o+', 'mateo benavides (hijo)', '305 889 1361', 'hipotiroidismo', 'Femenino', '1.62', '67,8', 'N/A', 'fuma ocasional', 'ligamento de rodilla derecha', '', 10, '2025-09-09', 1),
(13, 'andrea lizeth leguizamo sandino', '1999-10-09', 1023979369, '3002363991', 'sanitas', 'superviosora de telecomunicaciones', 'andreasandino28@gmail.com', 22, 'o+', 'blanca estela sandino(mama)', '321 293 0830', 'N/A', 'Femenino', '1.6', '72,9', 'N/A', 'planificacion yadel', 'no', '', 10, '2025-09-09', 1),
(14, 'andres chacon', '1978-12-06', 80001232, '3022430264', 'sanitas', 'ingeniero de desarrollo', 'andriws78@gmail.com', 42, 'o+', 'N/A', 'N/A', 'N/A', 'Masculino', '1.8', '78,9', 'N/A', 'licor ocasionalmente ', 'esguince hace un mes solo terapia', '', 10, '2025-09-09', 1),
(15, 'andres felipe alarcon romero', '1992-04-17', 1030608821, '3223145625', 'sura', 'psicologo (sentado)', 'andresalarconr00@gmail.com', 30, 'o+', 'rubiela romero (mama)', '321 542 2309', 'N/A', 'Masculino', '1.72', '66,7', '21/11/2022', 'N/A', 'dolor lumbar', '', 10, '2025-09-09', 1),
(16, 'andres felipe garzon acosta', '1997-08-02', 1022428437, '3205926940', 'famisanar', 'empleado (sentado)', 'acostaplus97@gmail.com', 25, 'a+', 'ligia acosta (mama)', '315 611 8085', 'N/A', 'Masculino', '1.83', '69,7', '28/12/2022', 'naproxeno por dolor en la cabeza', 'depresion amorosa', '', 10, '2025-09-09', 1),
(17, 'andres molano mendieta', '1995-12-09', 1032476784, '3508250843', 'compensar', 'ingeniro electrino (sentado)', 'ancmolanome@gmail.com', 26, 'a+', 'blanca mendienta (mama)', '320 411 1785', 'N/A', 'Masculino', '1.74', '73,8', 'N/A', 'Marihuana', 'dolor de la rodilla ,apego emocional', '', 10, '2025-09-09', 1),
(18, 'andres piza', '1998-01-22', 1233493565, '3193355574', 'famisanar', 'asistente recursos humano', 'jesusa.pizar@unilibrebog.edu.co', 24, 'o+', 'nora rodriguez (mama)', '314 386 6668', 'N/A', 'Masculino', '1.72', 'N/A', 'N/A', 'N/A', 'escoliosis leve', '', 10, '2025-09-09', 1),
(19, 'andres ramirez', '1996-09-04', 1023945052, '3005441811', 'famisanar', 'ingeniero mecanico', 'andresramirez434@outlook.com', 25, 'o+', 'francy aldana (mama)', '320 699 7896', 'N/A', 'Masculino', '1.78', '70,75', 'N/A', 'N/A', 'fisura en la rodilla hace 6 aÃ±os-controlar la carga', '', 10, '2025-09-09', 1),
(20, 'andres rojas', '1992-11-12', 1022379481, '3102247288', 'salud total', 'empleado (sentado)ing industrial', 'andresfe92@hotmail.com', 32, 'o+', 'natalia contreras(novia)', '300 495 6990', 'N/A', 'Masculino', '1.78', '72,25', '1/07/2022', 'N/A', 'dolor lumbar ,cirguria maxilofacial', '', 10, '2025-09-09', 1),
(21, 'angela maria graffe leon', '2005-04-03', 1014184868, '3152396581', 'sura', 'estudiante (arquitectura)', 'amgl-03@hotmail.com', 18, 'o+', 'ruben graffe (hermano)', '318 871 6736', 'N/A', 'Femenino', '1.62', '67,95', '7/09/2022', 'licor ocasionalmente ', 'N/A', '', 10, '2025-09-09', 1),
(22, 'angela nicol baron quintero', '2006-05-04', 1050604767, '3232384790', 'sanitas', 'estudiante (colegio)', 'angelanicol.baron@gmail.com', 17, 'o+', 'maria quintero (mama)', '311 502 7438', 'N/A', 'Femenino', '1.6', '49,5', '3/10/2023', 'N/A', 'N/A', '', 10, '2025-09-09', 1),
(23, 'angelica lopez', '1998-09-24', 1233901563, '3124961666', 'sanitas', 'oficial operaciones', 'mangelica419@gmail.com', 24, 'o+', 'yamile moreno (mama)', '320 408 5895', 'N/A', 'Femenino', '1.6', '62,05', 'N/A', 'anticonceptivo (pastillas)', 'dolor espalda baja', '', 10, '2025-09-09', 1),
(24, 'angie carolina zambrano aranguren', '1995-08-15', 1030656559, '3138472717', 'famisanar', 'auxiliar contable', 'caro_08_c@hotmail.com', 27, 'o+', 'maria olga (mama)', '323 229 9276', 'N/A', 'Femenino', '1.59', '52,1', 'N/A', 'N/A', 'N/A', '', 10, '2025-09-09', 1),
(25, 'Angie Obando', '1998-05-25', 1076668814, '3024282549', 'sanitas', 'docente', 'angieobandon25@gmail.com', 0, 'o+', 'Diana Obando', '3024362048', 'N/A', 'Femenino', '1,5', 'N/A', '15/08/2024', 'N/A', 'N/A', '', 10, '2025-09-09', 1),
(26, 'Angie Ortega', '1993-09-24', 1030631802, '3106808253', 'N/A', 'Empleada', 'N/A', 30, 'B+', 'Valentina Ortega', '3228874744', 'N/A', 'Femenino', '1.74', 'N/A', 'N/A', 'N/A', 'N/A', '', 10, '2025-09-09', 1),
(27, 'angie paola londoÃ±o baron', '1997-05-13', 1024580632, '3223878310', 'compensar', 'independiente (sentada)', 'london.paola13@gmail.com', 25, 'a+', 'juan diego mendoza(pareja)', '321 450 7068', 'N/A', 'Femenino', '1.57', '65,6', '2/09/2022', 'planificacion (inyeccion)', 'cirugia (embarazo ectopico),dolor lumbar', '', 10, '2025-09-09', 1),
(28, 'anlly daniela coy paez', '2005-03-28', 1029140504, '3168465166', 'sanitas', 'no aplica', 'anllyvoy2050@gmail.com', 17, 'b+', 'olga paez (mama)', '320 848 5188', 'N/A', 'Femenino', '1.57', '60,1', '13/07/1905', 'planificacion (pastillas)', 'molestias rodilla derecha (controlar cargas)', '', 10, '2025-09-09', 1),
(29, 'antonio de jesus alfonso morales', '1972-12-18', 7333704, '3229026815', 'sanitas', 'ing mecanico', 'antonioalfonso72@hotmail.com', 49, 'a+', 'flor galindo (vecina)', '300 561 3261', 'hipertension (losartan)', 'Masculino', '1.68', '85,75', '1/08/2022', 'losartan 50 ', 'N/A', '', 10, '2025-09-09', 1),
(30, 'anyie johana muÃ±oz buitron', '1994-11-17', 101607099, '3194889221', 'famisanar', 'analista comercio exterior(sentada)', 'johanamb@outlook.es', 21, 'b+', 'jeison tapiero (esposo)', '320 822 1169', 'N/A', 'Femenino', '1.64', '64,8', '29/05/2023', 'pomeroid (cirugia)', 'mano derecha dolor escritura, pomeroid', '', 10, '2025-09-09', 1),
(31, 'astrid obando', '1999-10-07', 1233695782, '3105410115', 'sanitas', 'asistente admin', 'giinethobando.03@gmail.com', 22, 'o+', 'leonel obando (papa)', '314 272 9613', 'N/A', 'Femenino', '1.58', '55', 'N/A', 'N/A', 'HOBBIE:', '', 10, '2025-09-09', 1),
(32, 'Brian Vargas', '0000-00-00', 0, 'N/A', 'N/A', 'N/A', 'N/A', 0, 'N/', 'N/A', 'N/A', 'N/A', 'Masculino', '60.0', 'N/A', 'N/A', 'N/A', 'N/A', '', 10, '2025-09-09', 1),
(33, 'camila alejandra jimenez nuÃ±ez', '2005-10-19', 1028480196, '3212782675', 'famisanar', 'estudiante', 'camilalejandrajimeneznunez47@gmail.com', 17, 'b+', 'luz dary nuÃ±ez (mama)', '320 474 7615', 'N/A', 'Femenino', '1.62', '71,5', '18/08/2022', 'N/A', 'N/A', '', 10, '2025-09-09', 1),
(34, 'Camila Ortiz', '2001-11-09', 1003516027, '3115514259', 'Famisanar', 'Recepcionista', 'N/A', 22, 'O+', 'N/A', 'N/A', 'N/A', 'Femenino', '60.0', 'N/A', 'N/A', 'N/A', 'N/A', '', 10, '2025-09-09', 1),
(35, 'camilo alejandro beltran barrera', '2003-01-30', 1000337856, '3187189046', 'sanitas', 'independiente(de pie)', 'camiloalej199@gmail.com,', 20, 'a+', 'brigit barrea (mama)', '315 777 3050', 'N/A', 'Masculino', '1.72', '91', '13/03/2023', 'marihuana (1 vez a la semana) ', 'fractura de clavucila derecha(5 aÃ±os de edad)', '', 10, '2025-09-09', 1),
(36, 'camilo rodriguez nuÃ±ez', '1995-07-12', 1070923389, '3188442225', 'aliansalud', 'administrador (sentado)', 'kuki299@hotmail.com', 27, 'b+', 'camila ramirez (novia)', '320 204 7241', 'N/A', 'Masculino', '1.82', '93,5', '23/11/2022', 'N/A', 'dolor lumbar', '', 10, '2025-09-09', 1),
(37, 'carlos caicedo', '1999-08-20', 1032506949, '3212265248', 'compensar', 'estudiante (ing sistemas)', 'carloscaicedog2008@hotmail.com', 22, 'a+', 'edgar romero (esposo)', '318 384 9610', 'N/A', 'Masculino', '1.68', '57,75', 'N/A', 'N/A', 'tendinitis muÃ±ecas', '', 10, '2025-09-09', 1),
(38, 'carlos edilso pastrana saldarriago', '1972-02-19', 91438213, '3176412427', 'sanitas', 'ing.produccion', 'karlos.pastrana@gmail.com', 50, 'o+', 'sandra correa (esposa)', '317 381 9352', 'N/A', 'Masculino', '1.72', '73,05', '1/01/2022', 'N/A', 'dolor de codo derecho (bursitis)', '', 10, '2025-09-09', 1),
(39, 'Carmen alvarez', '1982-06-25', 582785734, '3213428335', 'sanidad militar', 'independiente', 'N/A', 42, 'A+', 'maritza alvarez', '3142048691', 'N/A', 'Femenino', '1.56', '57', 'N/A', 'N/A', 'N/A', '', 10, '2025-09-09', 1),
(40, 'carolina salamanca', '0000-00-00', 0, 'N/A', 'N/A', 'N/A', 'N/A', 0, 'N/', 'N/A', 'N/A', 'N/A', 'Masculino', '60.0', 'N/A', 'N/A', 'N/A', 'N/A', '', 10, '2025-09-09', 1),
(41, 'charles guzman', '1982-11-10', 79990815, '3133881507', 'sanitas', 'comerciantes (vidrios)', 'vidriospanamericana@gmail.com', 39, 'ab', 'jenny guzman (hermana)', '311 842 4750', 'N/A', 'Masculino', '1.72', '71,85', '23/07/2022', 'N/A', 'N/A', '', 10, '2025-09-09', 1),
(42, 'Claudia Romero', '0000-00-00', 0, 'N/A', 'N/A', 'N/A', 'N/A', 0, 'N/', 'N/A', 'N/A', 'n/P', 'Femenino', '60.0', 'N/A', 'N/A', 'N/A', 'N/A', '', 10, '2025-09-09', 1),
(43, 'clemente alberto palacios bolaÃ±os', '2000-01-14', 1000723259, '3223549332', 'famisanar', 'estudiante (derecho)', 'clementepalacios1401@gmail.com', 22, 'a+', 'cristina boÃ±alos(mama)', '304 606 3257', 'colesterol alto', 'Masculino', '1.7', '70,75', '10/03/1900', 'N/A', 'N/A', '', 10, '2025-09-09', 1),
(44, 'cristina rozo', '0000-00-00', 0, 'N/A', 'N/A', 'N/A', 'N/A', 0, 'N/', 'N/A', 'N/A', 'N/A', 'Masculino', '60.0', 'N/A', 'N/A', 'N/A', 'N/A', '', 10, '2025-09-09', 1),
(45, 'cristina trujillo', '0000-00-00', 0, 'N/A', 'N/A', 'N/A', 'N/A', 0, 'N/', 'N/A', 'N/A', 'N/A', 'Femenino', '60.0', 'N/A', '2/03/1900', 'N/A', 'N/A', '', 10, '2025-09-09', 1),
(46, 'daiana zarate', '0000-00-00', 0, 'N/A', 'N/A', 'N/A', 'N/A', 0, 'N/', 'N/A', 'N/A', 'N/A', 'Femenino', '60.0', 'N/A', 'N/A', 'N/A', 'N/A', '', 10, '2025-09-09', 1),
(47, 'Daniel Florez', '1995-05-09', 7477503, '3015188198', 'no aplica', 'ing sistema(sentado)', 'danielflrz95@gmail.com', 27, 'o+', 'karla carchi (cuÃ±ada)', '301 759 5957', 'N/A', 'Masculino', '1,6', '71,88', '9/02/2023', 'N/A', 'dolor de rodilla(ambas)', '', 10, '2025-09-09', 1),
(48, 'daniel hurtado', '2005-06-30', 1014738534, '3008422894', 'servisalud', 'estudiante', 'danielhurtado013@gmail.com', 17, 'o+', 'nathalia leon (mama)', '301 355 2164', 'N/A', 'Masculino', '1.83', '100,5', '20/04/2022', 'N/A', 'dolor en el hombro leve', '', 10, '2025-09-09', 1),
(49, 'daniel stivenl murcia bautista', '1994-08-01', 1032465154, '3214301632', 'sanitas', 'arquitecto (sentado)', 'dsmurcia@gmial.com', 28, 'b+', 'andres neme (hermano)', '316 335 9644', 'N/A', 'Masculino', '1.79', '94,8', '3/03/2023', 'licor (ocasionalmente) ,metacarbamol (dolor de hombre)', 'muÃ±eca derecha (escriibir y dinujar),dolor de hombro', '', 10, '2025-09-09', 1),
(50, 'Daniela Arias', '2003-01-28', 1000161424, '3156180657', 'compensar', 'administradora', 'N/A', 21, 'a+', 'Nicol', '3103903557', 'fracura del femur, epilepcia', 'Femenino', '1,57', '65,3', '19/01/2024', 'N/A', 'N/A', '', 10, '2025-09-09', 1),
(51, 'daniela camacho camelo', '1997-03-05', 1031169298, '3103041127', 'famisanar', 'docente (espaÃ±ol)', 'camachocamelodaniela@gmail.com', 25, 'o+', 'lida camelo (mama)', '312 309 4289', 'N/A', 'Femenino', '1.54', '64,5', '5/09/2022', 'licor (ocasionalmente)', 'hernia discal lumbar', '', 10, '2025-09-09', 1),
(52, 'daniela camargo garzon', '1995-09-24', 1010224475, '3124646070', 'nueva eps', 'empleada (marketing)', 'danielacamargo216@gmail.com', 28, 'o+', 'johnatah camargo (hermano)', '313 446 8937', 'N/A', 'Femenino', '1.59', '66,25', '8/11/2023', 'N/A', 'esguince tobillo izquierdo,lumbar dolor por sedentarismo', '', 10, '2025-09-09', 1),
(53, 'daniela del pilar moreno diaz', '1999-09-21', 1010247517, '3226828814', 'servisalud', 'estudiante derecho', 'morenodanieldiaz21@gmail.com', 23, 'o-', 'maria del pilar diaz martinez(mama)', '312 431 2585', 'N/A', 'Femenino', '50,6', 'N/A', '4/11/2022', 'N/A', 'hiperlaxitud', '', 10, '2025-09-09', 1),
(54, 'daniela galviz carrero', '2000-02-08', 1010112444, '3112922720', 'salud total', 'servidora publica (de pir)', 'juseth0208@gmail.com', 24, 'o+', 'tania carrero (mama)', '321 372  4430', 'N/A', 'Femenino', '1.6', 'N/A', '23/11/2022', 'trinobutina (para el colon) y yadel', 'rinoplastia y mamoplastia', '', 10, '2025-09-09', 1),
(55, 'Daniela Valcarcel', '2020-02-04', 1007107869, '3012283340', 'salud total', 'contadora', 'daniela0402p@gmail.com', 24, 'b+', 'Ana (MamÃ¡)', '3158167041', 'n/p', 'Femenino', '1.56', 'N/A', '15/11/2024', 'N/A', 'N/A', '', 10, '2025-09-09', 1),
(56, 'david alejandro sanabria gamboa', '1997-08-23', 1110584360, '3174567686', 'compensar', 'desarollador (sentado)', 'daviidsanabria97@gmail.com', 25, 'o+', 'luisa rivera (amiga)', '311 248 9359', 'N/A', 'Masculino', '1.68', '84,95', '8/10/2022', 'licor (ocasionalmente)', 'desfase articulacion hombro ambos', '', 10, '2025-09-09', 1),
(57, 'david rojas', '1990-08-13', 1032438231, '3168748436', 'compensar', 'empleado (jefe proyectos)', 'david.rojasp90@gmail.com', 32, 'o+', 'maribel perez (mama)', '321 265 5751', 'N/A', 'Masculino', '1.72', '75,45', '1/06/2022', 'fuma (ocasinaolmente) licor (ocasionalmente)', 'bradicardia sinusal', '', 10, '2025-09-09', 1),
(58, 'david stiven romero grajales', '1996-04-24', 1032480924, '3208666211', 'sanitas', 'cientifico de datos (sentado)', 'dromerogr@unal.edu.co', 26, 'o+', 'hector romero (hermano)', '320 281 6078', 'N/A', 'Masculino', '1.72', 'N/A', 'N/A', 'N/A', 'N/A', '', 10, '2025-09-09', 1),
(59, 'dayana sanchez', '1999-05-04', 1026597730, '3102725326', 'salud total', 'agente de biliungue', 'dayanasanchez271@outlook.es', 22, 'o+', 'nancy vaquero (mama)', '312 346 9674', 'N/A', 'Femenino', '1.7', '60,8', 'N/A', 'N/A', 'HOBBIE:', '', 10, '2025-09-09', 1),
(60, 'deyssi vanessa  tapasco rojas', '2001-09-03', 1004737039, '3203164907', 'pendiente', 'empleada (venta de celulares)', 'deyssi', 21, 'b+', 'yazmin rojas (mama)', '311 891 4048', 'N/A', 'Femenino', '1.56', '61,05', '19/01/2022', 'licor (ocasionalmente) , planificacion pila', 'N/A', '', 10, '2025-09-09', 1),
(61, 'diana caballero', '1987-04-26', 1032386647, '3107898786', 'sanidad militar', 'militar (t2) y radiologa', 'dianis87_237@hotmail.com', 34, 'o+', 'gloria sanchez(mama)', '312 583 8456', 'N/A', 'Femenino', '1.59', '60,7', 'N/A', 'N/A', 'molestias articulares-controlar cargas', '', 10, '2025-09-09', 1),
(62, 'diana carolina trivÃ±o rojas', '1992-09-09', 1030614492, '3125679567', 'compensar', 'independiente (contabilidad)', 'carolina.trivino1992@gmail.com', 32, 'o+', 'argenis rojas (mama)', '314 344 4238', 'hipotiroidismo', 'Femenino', '1.55', '70,75', '28/09/2023', 'N/A', 'N/A', '', 10, '2025-09-09', 1),
(63, 'diana castellanos ', '0000-00-00', 0, 'N/A', 'N/A', 'N/A', 'N/A', 0, 'N/', 'N/A', 'N/A', 'N/A', 'Femenino', '1.62', 'N/A', 'N/A', 'N/A', 'N/A', '', 10, '2025-09-09', 1),
(64, 'diana jimenez', '1986-06-27', 53102201, '3104542433', 'ponal', 'ingeniera industrial', 'diana.jimenez2127@gmail.com', 36, 'o+', 'mariana diaz (hija)', '321 244 3484', 'N/A', 'Femenino', '1.62', '56,3', 'N/A', 'N/A', 'cirugia rodilla (liposarcoma) moderara ejercicios de impacto cirugia muÃ±eca derecha', '', 10, '2025-09-09', 1),
(65, 'diana milena rivera sanabria', '1996-10-08', 1030671507, '3023618144', 'sanitas', 'trabajadora (banco)', 'dianamilenarivera96@gmail.com', 25, 'o+', 'cecilia sanabria (mama)', '311 537 2931', 'N/A', 'Femenino', '1.62', '75,45', '5/09/2022', 'licor y cigarrillo', 'dolores rodillas descacondicionamniento', '', 10, '2025-09-09', 1),
(66, 'Diana Obando', '2005-10-11', 1076649428, '3024362048', 'Nueva EPS', 'Estudiante', 'obandocarolina09@gmail.com', 18, 'A+', 'Angie Obando', '3024282549', 'N/A', 'Femenino', '1.61', 'N/A', '15/08/2024', 'N/A', 'N/A', '', 10, '2025-09-09', 1),
(67, 'Diana Valderrama', '1985-08-22', 53124087, '3108532624', 'Compensar', 'Ama de casa', 'dianaval8508@hotmail.com', 38, 'AB', 'David Avila', '3212548003', 'Asma', 'Femenino', '1.67', '56', '2/01/2024', 'N/A', 'N/A', '', 10, '2025-09-09', 1),
(68, 'didier leonardo martinez', '1992-09-01', 1022377657, '3212081581', 'famisanar', 'supervisor inteligencia comercial', 'leonardodm7@gmail.com', 31, 'o+', 'cristian martinez (primo)', '318 447 0742', 'N/A', 'Masculino', '1.7', 'N/A', '18/10/2023', 'N/A', 'N/A', '', 10, '2025-09-09', 1),
(69, 'Diego Velez', '1992-03-22', 1013631126, '3124495276', 'Aliansalud', 'Ingeniero', 'N/A', 32, 'A+', 'Francis Mendoza', '3203213661', 'Cirugia hernia discal', 'Masculino', '1.7', 'N/A', 'N/A', 'N/A', 'N/A', '', 10, '2025-09-09', 1),
(70, 'dignory tovar', '1996-03-28', 1121933089, '3173293708', 'sanitas', 'ing industrial (secretaria de desarrollo)', 'dignorytovar19@gmail.com', 27, 'o+', 'laura belen tovar (hermana)', '311 887 6783', 'N/A', 'Femenino', '1.6', '64,65', '10/05/2022', 'pastillas', 'N/A', '', 10, '2025-09-09', 1),
(71, 'doris cerquera chavarro', '1969-01-24', 26441649, '3142880527', 'compensar', 'pensionada', 'doris2467@hotmail.com', 54, 'a+', 'karen andrade (hija)', '318 463 5499', 'hipotiroidismo', 'Femenino', '1.58', '68,5', 'N/A', 'N/A', 'N/A', '', 10, '2025-09-09', 1),
(72, 'doris lozano', '1963-01-02', 39543429, '3108148295', 'aliansalud', 'pensionada', 'dorislozano0264@gmail.com', 60, 'a+', 'jesus sanchez (esposo)', '313 534 8460', 'N/A', 'Femenino', '1.55', '55,9', 'N/A', 'N/A', 'espalda cotusion columna - hace 15 aÃ±os', '', 10, '2025-09-09', 1),
(73, 'Dulis Escobar', '1949-09-17', 12577337, '3112602388', 'Sanidad Militar', 'N/A', 'N/A', 74, 'O+', 'Gloria Alonso', '3005648366', 'CÃ¡ncer superado, hipertensiÃ³n, tendinitis', 'Masculino', '1.7', 'N/A', 'N/A', 'N/A', 'N/A', '', 10, '2025-09-09', 1),
(74, 'edwin pialejo joven', '1988-01-02', 1083877002, '3208354375', 'N/A', 'independiente (barberia)', 'edwinpialejo2@gmail.com', 34, 'b+', '312 333 6756 amiga', 'alejandra ramirez', 'N/A', 'Masculino', '1.66', '72,05', '21/10/2022', 'licor (cada 8 dias)', 'N/A', '', 10, '2025-09-09', 1),
(75, 'erick leonardo valderrama orduz', '1992-09-27', 1012392567, '3202013965', 'sanitas', 'ingeniero telecomunicacion (sentado)', 'erickvorduz27@gmail.com', 29, 'o+', 'luzma orduz (mama)', '310 285 9056', 'N/A', 'Masculino', '1.75', '63,2', '29/08/2022', 'N/A', 'N/A', '', 10, '2025-09-09', 1),
(76, 'erika andrea moyano chisica', '1995-07-24', 1026291583, '3022787118', 'compensar', 'analista pqrs (sentada)', 'emoyanosm@gmaill.com', 27, 'a+', 'paula moyano (hermana)', '318 831 9579', 'N/A', 'Femenino', '1.6', '61', '29/11/2022', 'fuma cada 2 a 3 dias', 'N/A', '', 10, '2025-09-09', 1),
(77, 'erika jurlley ramos pinzon', '1987-03-03', 1030534840, '3202028290', 'sanitas', 'contadora', 'kikaramosp@hotmail.com', 35, 'a+', 'adiela pinzon (mama)', '311 202 2894', 'N/A', 'Femenino', '1.65', 'N/A', 'N/A', 'N/A', 'N/A', '', 10, '2025-09-09', 1),
(78, 'ernesto celis', '1974-09-04', 91472836, '3227106930', 'compensar', 'ingeniero de sistemas', 'ercema@gmail.com', 47, 'a+', 'nathalia celis (hija)', '316 313 0846', 'N/A', 'Masculino', '1.74', '84', 'N/A', 'N/A', 'HOBBIE:', '', 10, '2025-09-09', 1),
(79, 'esteban rey caro', '2002-03-25', 1000708292, '3197204253', 'sanitas', 'independiente (ropa)', 'estebanrey250302@gmail.com', 20, 'a+', 'henando rey (papa)', '311 811 4895', 'N/A', 'Masculino', '1.86', '81,2', '16/01/2022', 'N/A', 'cirugia , condroplastia rotura de cartilago', '', 10, '2025-09-09', 1),
(80, 'eunice lopez londoÃ±o', '1988-03-26', 1087549859, '3102576831', 'salud total', 'ingeniera industrial (sentada)', 'eulopez088@gmail.com', 34, 'o+', 'mauricio martinez (novio)', '301 504 3843', 'hipoglucemia , planificacion inyeccion', 'Femenino', '1.62', 'N/A', 'N/A', 'N/A', 'cirugia busto', '', 10, '2025-09-09', 1),
(81, 'fanny ayala', '1989-12-09', 1082907473, '3186037306', 'sanitas', 'independiente (spa)', 'fannyayala0912@hotmail.com', 31, 'a+', 'cristian herrera (fanny)', '316 877 8191', 'N/A', 'Femenino', '1.55', '53,6', '22/02/1900', 'planificacion (t)', 'N/A', '', 10, '2025-09-09', 1),
(82, 'Felipe Forero', '2008-02-27', 1019994198, '3118836764', 'sanitas', 'estudiante colegio grado 11', 'felipvites@gmail.com', 16, 'B+', 'Madre', '3185218728', 'N/A', 'Masculino', '1.75', 'N/A', '15/11/2024', 'N/A', 'N/A', '', 10, '2025-09-09', 1),
(83, 'fernando rodriguez', '1992-10-10', 1057591899, '3202886991', 'nueva eps', 'contratista de obra', 'fr69510@gmail.com', 29, 'o+', 'constanza rojas (tia)', '320 892 2525', 'N/A', 'Masculino', '1.75', '65,4', '16/05/2022', 'fuma y toma ocasionalmente', 'N/A', '', 10, '2025-09-09', 1),
(84, 'gabierla pinzon gomez', '2001-02-12', 1000288549, '3209700034', 'compensar', 'dibujante (sentada)', 'gabrielapinzon70@gmail.com', 21, 'o+', 'olga gomez (mama)', '314 2587103', 'N/A', 'Femenino', '1.64', '59,7', '30/12/2022', 'inyeccion (ciclofen)', 'N/A', '', 10, '2025-09-09', 1),
(85, 'gabriela del pilar moreno diaz', '1997-10-01', 1010235897, '3115948333', 'servisalud', 'abogada', 'gabrielamdiaz0@gmail.com', 24, 'o+', 'pilar diaz (mama)', '312 431 2585', 'N/A', 'Femenino', '1.57', '56,45', '1/08/2022', 'N/A', 'N/A', '', 10, '2025-09-09', 1),
(86, 'gina lorena caicedo pizza', '1982-02-22', 52838944, '3005560409', 'sanitas', 'administrativa (coordinar pedidos)', 'lorenpiz@hotmail.com', 40, 'a+', 'lucila pizza (mama)', '315 234 6936', '', 'Femenino', '1.6', '57,95', '22/12/2022', 'atorbastatina ', '', '', 10, '2025-09-09', 1),
(87, 'ginna melissa  bohorquez castillo', '1993-11-15', 1121905363, '3118561333', 'famisanar', 'ingeniera agro industrial (sentada)', 'melissacastillo1@hotmail.es', 28, 'o+', 'gabriela moreno (amiga)', '320 293 2692', 'N/A', 'Femenino', '1.57', '62,35', '10/10/2022', 'N/A', 'dos fisuras rodilla derecha', '', 10, '2025-09-09', 1),
(88, 'gissette geraldin garcia rojas', '1994-09-01', 1022396059, '3105827447', 'sanitas', 'empleadad(analista de informacion)', 'gissettegr@gmail.com', 29, 'o+', 'yeraldin segura(cuÃ±ada)', '312 471 1275', 'N/A', 'Femenino', '1.58', '64', 'N/A', 'N/A', 'apendicitis (2015)', '', 10, '2025-09-09', 1),
(89, 'Gloria Aurora Alonso', '1956-05-31', 41680784, '3005648366', 'Servisalud', 'N/A', 'N/A', 67, 'O+', 'Juan Sebastian Escobar (Hijo)', '3103009620', 'Colesterol Alto, Trigliceridos', 'Femenino', '1.6', 'N/A', 'N/A', 'N/A', 'N/A', '', 10, '2025-09-09', 1),
(90, 'gonzalo pinzon lombana', '1987-04-27', 1069718801, '3213938807', 'compensar', 'contador (sentado)', 'golza.pinzon@gmail.com', 34, 'o+', 'ana maria rey (cuÃ±ada)', '304 390 1810', 'N/A', 'Masculino', '1.69', '75,45', 'N/A', 'N/A', 'mareos en cuanto a ejercicio', '', 10, '2025-09-09', 1),
(91, 'gregory pachon', '1975-08-15', 80490108, '3103461783', 'sanitas', 'estilista', 'gregorypachom2@gmail.com', 48, 'o+', 'carolina arevalo (sobrina)', '311 856 3966', 'N/A', 'Masculino', '1.6', '77,15', 'N/A', 'N/A', 'N/A', '', 10, '2025-09-09', 1),
(92, 'hanna tibana', '0000-00-00', 0, 'N/A', 'N/A', 'N/A', 'N/A', 0, 'N/', 'N/A', 'N/A', 'N/A', 'Masculino', '60.0', 'N/A', 'N/A', 'N/A', 'N/A', '', 10, '2025-09-09', 1),
(93, 'harold david urrego vaca', '1995-03-02', 1030650718, '3045216095', 'compensar', 'analista de pagos (sentado)', 'urrego9503@gmail.com', 28, 'o+', 'aleja guerreo', '322 883 3373', 'hipoglicemia', 'Masculino', '1.7', '88,05', '27/02/2023', 'N/A', 'esguince izquierdo , lumbar', '', 10, '2025-09-09', 1),
(94, 'hector luis beltran bejarano', '1956-09-13', 19413458, '3103048192', 'compensar', 'pensionada(contador)', 'hlbeltran40@gmail.com', 67, 'o+', 'mieyam cortes(esposa)', '316 473 4627', 'N/A', 'Masculino', '1.62', '73,5', '25/01/2023', 'N/A', 'cirugia de piev(cortada),hemorroides y feroplastia ,dolor leve rodilla (izq)', '', 10, '2025-09-09', 1),
(95, 'hhanna sophie villamil parra', '2007-04-27', 1141316779, '3505171970', 'nueva eps', 'estudiante colegio', 'hhannashope@gmail.com', 16, 'o+', 'monica parra (mama)', '301 332 0271', 'N/A', 'Femenino', '1.65', '62', '1/11/2023', 'N/A', 'dedo del pie (izquierdo) dedo engatillado (4 aÃ±os)', '', 10, '2025-09-09', 1),
(96, 'isabella garcia arevalo', '2008-01-11', 102919200, '3144527509', 'sanitas', 'estudiante(bachilerato)', 'isabela080111@gmail.com', 15, 'o+', 'herber garcia (papa)', '311 254 9431', 'N/A', 'Femenino', '60.0', 'N/A', '31/03/2023', 'N/A', 'N/A', '', 10, '2025-09-09', 1),
(97, 'isabella romero avendaÃ±o', '2013-05-29', 1016956076, '3012116974', 'sanitas', 'estudiante', 'isabellaromeroavendano11@gmail.com', 13, 'o+', 'doris avendaÃ±o (mama)', '3142403928', 'no', 'Femenino', '1.64', '68,1', 'N/A', 'N/A', 'N/A', '', 10, '2025-09-09', 1),
(98, 'ivan mauricio turmeque silva', '1979-01-10', 79750039, '3175275142', 'alianzasud y colmedica', 'desempleado antes coordinador de area colpatria', 'morfeo791@hotmail.com', 43, 'o+', 'carolina ordoÃ±ez (esposa)', '316 865 6605', 'N/A', 'Masculino', '1.8', '81,3', '19/08/2022', 'N/A', 'alineacion de rotula (cirugia) ,dolores constantes', '', 10, '2025-09-09', 1),
(99, 'ivon julieth correa moreno', '1998-05-04', 1016002668, '3224047793', 'sanitas', 'empleada (call center)', 'ivoncorreabog@gmail.com', 35, 'o+', 'jair correa (papa)', '310 232 1697', 'N/A', 'Femenino', '1.46', '44,3', '13/10/2023', 'planificacion (inyeccion)', 'dolor de rodilla izquieda (lesion de ligamento cruzado)', '', 10, '2025-09-09', 1),
(100, 'jacky valencia cifuentes', '1984-08-15', 52956110, '3103138631', 'famisanar', 'admin. Empresas (empleada)', 'yacky_val@hotmail.com', 38, 'o+', 'raul valencia (hermano)', '321 303 0370', 'N/A', 'Femenino', '1.7', '63,6', '9/11/2022', 'N/A', 'N/A', '', 10, '2025-09-09', 1),
(101, 'jairo andres celis parra', '1991-12-05', 1022372313, '3023433068', 'famisanar', 'abogado (sentada)', 'N/A', 30, 'o+', 'paola mejia (novia)', '300 478 6523', 'N/A', 'N/A', '1.7', '82,5', '12/09/2022', 'N/A', 'N/A', '', 10, '2025-09-09', 1),
(102, 'jan jaider cely avila', '2002-12-16', 1000161357, '3103262269', 'sanitas', 'estudiante (admin negocio)', 'janjaiderc@gmail.com', 19, 'ab', 'braian cely (hermano)', '311 520 3505', 'N/A', 'Masculino', '1.78', 'N/A', 'N/A', 'N/A', 'N/A', '', 10, '2025-09-09', 1),
(103, 'janeth milena alfonso romero', '1995-07-16', 1030656558, '3138467006', 'famisanar', 'auxiliar contable', 'janeth_0815@hotmail.vÂ¿com', 27, 'o+', 'senaida romero (mama)', '312 384 7434', 'hipotiroidismo', 'Femenino', '1.6', '56,7', 'N/A', 'euteroc 50 ', 'rodilla derecha ,posible escoliosis lumbar o ciatica', '', 10, '2025-09-09', 1),
(104, 'jeikson ferney tapiero amaya', '1992-03-28', 1023915301, '3208221169', 'famisanar', 'analista de comercios estrategicos (sentado)', 'jeixontapiero@gmail.com', 31, 'a+', 'johana muÃ±oz (esposa)', '319 488 9228', 'hipertension,microcarditis ,daÃ±o en los riÃ±ones', 'Masculino', '1.7', 'N/A', '29/05/2023', 'prasocina,carbeidol,nifedipina', 'cirugia (laparoscopia-abcesos del abdomen-fistula estomago izq-revento una arteria del riÃ±on-fistula mano izq)', '', 10, '2025-09-09', 1),
(105, 'jenny soto', '0000-00-00', 0, 'N/A', 'N/A', 'N/A', 'N/A', 0, 'N/', 'N/A', 'N/A', 'N/A', 'Masculino', '1.5', 'N/A', 'N/A', 'N/A', 'N/A', '', 10, '2025-09-09', 1),
(106, 'jessica andrea calderon cano', '1992-08-31', 1012391485, '3505964496', 'sanitas', 'empleada (sentada)', 'jessikalderon1@gmail.com', 31, 'o+', 'sandra rueda(hermana)', '321 370 9950', 'hipotiroidismo subclinico', 'Femenino', '1.65', 'N/A', '9/10/2023', 'N/A', 'N/A', '', 10, '2025-09-09', 1),
(107, 'Jessica Mendoza', '1986-04-04', 1050945411, '3002438509', 'compensar', 'N/A', 'N/A', 37, 'a+', '3017602192', 'Armando pico', 'tendinitis mano derecha, maxiliar', 'Femenino', '1.66', 'N/A', '4/03/2024', 'N/A', 'N/A', '', 10, '2025-09-09', 1),
(108, 'jessica paola pacheco pedraza', '1988-04-13', 1022347968, '3163392030', 'sanitas', 'ing sistema (sentada)', 'jpaolap13@gmail.com', 34, 'ab', 'nubia pedraza(mama)', '315 389 6140', 'N/A', 'Femenino', '1.52', '56,85', '6/03/2023', 'N/A', 'dolor en el cuello zona cervical', '', 10, '2025-09-09', 1),
(109, 'jessica reyes', '0000-00-00', 0, 'N/A', 'N/A', 'N/A', 'N/A', 0, 'N/', 'N/A', 'N/A', 'N/A', 'Femenino', '60.0', 'N/A', 'N/A', 'N/A', 'N/A', '', 10, '2025-09-09', 1),
(110, 'jhon alexander acevedo martinez', '1995-11-20', 1018485056, '3124692660', 'sanitas', 'abogado (sentado)', 'acevedoj054@gmail.com', 27, 'b+', 'lucy amparo martinez (mama)', '311 215 2403', 'N/A', 'Masculino', '1.7', '95,1', '4/04/2023', 'N/A', 'herida de puÃ±al en el pecho 15 aÃ±os, hace 4 aÃ±os 23 posibÃ±e soplo en el corazon', '', 10, '2025-09-09', 1),
(111, 'Jluliana Durmeque', '2010-12-02', 0, '3175227514', 'N/A', 'estudiante', 'N/A', 0, 'b+', 'N/A', 'N/A', 'N/A', 'Masculino', 'N/A', '46,45', '2/12/2024', 'N/A', 'N/A', '', 10, '2025-09-09', 1),
(112, 'johan rangel cespedes', '1988-04-09', 1016008876, '3183628200', 'sura', 'diseÃ±ador grafico(sentado)', 'vallemagenta@gmail.com', 35, 'o+', 'jessica ceron (hermana)', '300 483 4889', 'N/A (remiso cancer testicular)', 'Masculino', '1.74', '96,65', '19/04/2023', 'licor y cigarrillo (ocasionalmente),marihuana ', 'tumor benigni pulgar derecho(no limita)', '', 10, '2025-09-09', 1),
(113, 'johana zambrano', '0000-00-00', 0, 'N/A', 'N/A', 'N/A', 'N/A', 0, 'N/', 'N/A', 'N/A', 'N/A', 'Masculino', '60.0', 'N/A', 'N/A', 'N/A', 'N/A', '', 10, '2025-09-09', 1),
(114, 'Johann Guzman', '1979-06-02', 79899960, '3003163797', 'Compensar', 'N/A', 'johannfritz@gail.com', 44, 'A+', 'Elena Garcia', '3006584284', 'N/A', 'Masculino', '1.7', '73,65', '16/04/2024', 'N/A', 'N/A', '', 10, '2025-09-09', 1),
(115, 'Jonathan Cantor', '1993-07-26', 1014245564, '3173757813', 'Famisanar', 'Asesor de ventas', 'jcantor1515@gmail.com', 0, 'O+', 'Fanny Arana (MamÃ¡)', '3054499549', 'N/A', 'Masculino', '1.81', 'N/A', '2/05/2024', 'N/A', 'N/A', '', 10, '2025-09-09', 1),
(116, 'jorge suarez', '0000-00-00', 0, 'N/A', 'N/A', 'N/A', 'N/A', 0, 'N/', 'N/A', 'N/A', 'N/A', 'Masculino', '1.7', 'N/A', 'N/A', 'N/A', 'N/A', '', 10, '2025-09-09', 1),
(117, 'josting rubiano', '2007-03-28', 1014666450, '3028367543', 'sanitas', 'estudiante', 'jostingfelipe0328@gmail.com', 15, 'o+', 'giovanny rubiano (papa)', '316 236 1324', 'N/A', 'Masculino', '1.68', '46,8', 'N/A', 'N/A', 'N/A', '', 10, '2025-09-09', 1),
(118, 'juan alberto carrillo madero', '1958-03-14', 19345060, '3158779426', 'compensar', 'mecanico dental', 'guachufea@homail.com', 64, 'a+', 'alejandro carrillo (hijo)', '317 780 9777', 'hipertension', 'Masculino', '1.79', '86,65', 'N/A', 'candesartan', 'N/A', '', 10, '2025-09-09', 1),
(119, 'Juan Ardila', '1990-04-30', 1018434567, '3164276914', 'compensar', 'ingeniero', 'juanchog90@gmail.com', 34, 'o+', 'Monica Moreno', '3123488589', 'dolor en el gemelo', 'Masculino', '1.75', 'N/A', '20/11/2024', 'N/A', 'dolor de hombro derecho', '', 10, '2025-09-09', 1),
(120, 'Juan Esteban Troncos', '2009-05-18', 1013126626, '3138287767', 'salud total', 'estudiante', 'troncosojuanesteban75@gmail.com', 14, 'A+', 'Edwin Troncoso', '3118930500', 'N/P', 'Masculino', '1.75', 'N/A', '26/02/2024', 'N/A', 'N/A', '', 10, '2025-09-09', 1),
(121, 'juan fernando pava estrada', '1999-06-29', 1020842563, '3028335211', 'sanitas', 'estudiante (arte dramatico)', 'juanfernandopava@hotmal.com', 23, 'o-', 'juan david pava(hermano)', '313 341 1988', 'indicios de epilepsia', 'Masculino', '1.78', 'N/A', '3/02/2023', 'marihuana,licor cada 8 dias (poco)', 'maxilofacial ,timpano plastia', '', 10, '2025-09-09', 1),
(122, 'Juan Nieto', '2007-12-21', 1013119008, '3175902914', 'sanitas', 'estudiante del grado 11', 'juanfernando.nietoacosta@gmail.com', 16, 'o+', 'madre', '3203046186', 'N/A', 'Masculino', '1.57', 'N/A', '15/11/2024', 'N/A', 'N/A', '', 10, '2025-09-09', 1),
(123, 'Juan Sebastian Torres', '1985-02-17', 80811662, '3163114188', 'sanitas', 'Cantante', 'N/A', 0, 'O+', 'Carlos Alberto BolaÃ±os (Suegro)', '3178580463', 'N/A', 'Masculino', '1.74', 'N/A', '20/06/2024', 'N/A', 'N/A', '', 10, '2025-09-09', 1),
(124, 'Juanita Diaz', '2024-04-27', 1010197735, '3176816561', 'Sura', 'empleada', 'alejandravg0927@gmail.com', 33, 'o+', 'Erika Vargas', '3174385427', 'N/A', 'Femenino', '1.58', 'N/A', '18/12/2024', 'N/A', 'N/A', '', 10, '2025-09-09', 1),
(125, 'julian santiago carrillo barros', '2005-01-08', 1034777908, '3142116047', 'compensar', 'estudiante egresado', 'jcarrillobarros@gmail.com', 17, 'o+', 'juan alberto carrillo', '315 877 9426', 'N/A', 'Masculino', '1.7', '65,8', 'N/A', 'N/A', 'displacia de cadera de nacimiento (no afecta el rendimiento)', '', 10, '2025-09-09', 1),
(126, 'juliana baron ramirez', '2006-11-05', 1028861740, '3222095709', 'salud total', 'estudiante (colegio)', 'julybar01@gmail.com', 16, 'o+', 'monica ramirez(mama)', '314 226 1199', 'N/A', 'Femenino', '1.52', '56,25', '11/02/2023', 'femicol (ovario poliquistico) doxiciclina (ovario poliquistico)', 'N/A', '', 10, '2025-09-09', 1),
(127, 'Juliana Claros', '1997-06-19', 1010234118, '304562800', 'Sanitas', 'Profesional finanzas', 'N/A', 26, 'A+', 'Jeison Hernandez', '3213586174', 'N/A', 'Femenino', '1,7', '62,4', '15/04/2024', 'N/A', 'N/A', '', 10, '2025-09-09', 1),
(128, 'Juliana PinzÃ³n', '1994-01-09', 1026286913, '3226723337', 'capital salud', 'N/A', 'N/A', 30, '0+', 'Adriana Garrido', '3108817647', 'N/P', 'Femenino', '1.52', 'N/A', '6/05/2024', 'N/A', 'N/A', '', 10, '2025-09-09', 1),
(129, 'Julieth Nathalia Santamaria', '1987-03-17', 1018409291, '3192169006', 'compensar', 'empleado', 'N/A', 36, 'a+', '3214813707', 'Brian Vargas', 'asma', 'Femenino', '1.6', 'N/A', '16/01/2024', 'N/A', 'N/A', '', 10, '2025-09-09', 1),
(130, 'julio cesar ortiz chaves', '1996-04-10', 1032480484, '3215072962', 'sanitas', 'cominicador social (sentado)', 'julio.cesar9604@gmail.com', 27, 'a+', 'marcia chaves (mama)', '305 947 6325', 'hipotiroidismo', 'N/A', '1.57', '64', '4/05/2023', 'levotirixina 75mg-omeprazol (gastritis)', 'fractura clavicula izquierda', '', 10, '2025-09-09', 1),
(131, 'jully alejandra guerrero contretas', '1999-05-21', 1233694367, '3228833373', 'famisanar', 'analista de inf(sentada)', 'julieguerrero99@gmail.com', 23, 'o+', 'david urrego (novio)', '304 521 7095', 'N/A', 'Femenino', '1.61', '66,9', '4/04/2023', 'N/A', 'apendice', '', 10, '2025-09-09', 1),
(132, 'karen alvarado', '0000-00-00', 0, 'N/A', 'N/A', 'N/A', 'N/A', 0, 'N/', 'N/A', 'N/A', 'N/A', 'Masculino', '60.0', 'N/A', 'N/A', 'N/A', 'N/A', '', 10, '2025-09-09', 1),
(133, 'karen daniela rodriguez arcila', '1997-05-15', 1026590595, '3208870677', 'compensar', 'analista (sentada)', 'rodriguezarciladaniela@gmail.com', 26, 'o+', 'daniel rodriguez (papa)', '314 414 2968', 'N/A', 'Femenino', '1.6', '64,8', '29/08/2023', 'N/A', 'dolor lumba(caida 2010 ) dolor de rodillas (baloncesto) dolor de muÃ±ecas (baÃ±oncesto) desviacion L5 disco', '', 10, '2025-09-09', 1),
(134, 'karol aguilera', '1986-11-26', 0, 'N/A', 'N/A', 'N/A', 'N/A', 0, 'N/', 'N/A', 'N/A', 'N/A', 'Masculino', '1.57', '58,5', 'N/A', 'N/A', 'N/A', '', 10, '2025-09-09', 1),
(135, 'karol alejandra carraza bustos', '1995-05-18', 1032471883, '3134535052', 'famisanar', 'contratista', 'karol.carranza95@gmail.com', 27, 'o+', 'andres pinto (amigo)', '311 875 4693', 'hipotiroidismo', 'Femenino', '1.72', '73,8', '31/12/2022', 'levotiroxina para la hipo - cobre', 'N/A', '', 10, '2025-09-09', 1),
(136, 'karol andrea garcia linares', '2008-01-11', 1022323585, '3134003358', 'sura-sanitas', 'neuropsicologa', 'karol.garcia24 64gmail.com', 15, 'o+', 'martha linares (mama)', '313 400 3358', 'N/A', 'Femenino', '1.62', 'N/A', 'N/A', 'N/A', 'dolor leve zona lumbar', '', 10, '2025-09-09', 1),
(137, 'karol bibiana sandoval rodriguez', '1993-05-02', 1022383445, '3208433935', 'salud total', 'enfermera (sentada)', 'bibiana930502@hotmail.com', 29, 'b+', 'rocio rodriguez (mama)', '310 688 6016', 'aritmia cardiaca , planificacion (t), implante mon', 'Femenino', '1.55', '56,55', 'N/A', 'licor (ocasionalmente)', 'N/A', '', 10, '2025-09-09', 1),
(138, 'Katerin Gonzalez', '1996-02-24', 1022412996, '3144128952', 'compesar', 'empleada', 'k.gonzalezrodriguez@outlook.com', 28, 'b-', 'Clementina Rodriguez', '3204611547', 'n/p', 'Femenino', '1,62', 'N/A', 'N/A', 'N/A', 'N/A', '', 10, '2025-09-09', 1),
(139, 'katherine cardozo cifuentes', '1989-02-22', 1032426886, '3004936925', 'sura', 'abogada', 'cresiaktcardozo@gmail.com', 33, 'o+', 'hernando cardozo bermudez (papa)', '300 241 8065', 't de cobre', 'Femenino', '1.68', '54,4', 'N/A', 'cigarrillo (exceso) y licor (moderado)', 'cirugia del busto, dolor de rodilla desacondicionamiento', '', 10, '2025-09-09', 1),
(140, 'Katherine Sanchez', '1993-05-15', 1010075312, '3144320012', 'Compensar', 'DiseÃ±adora de modas', 'N/A', 31, 'A+', 'Daniel Lindo', '3244170472', 'N/A', 'Femenino', '1.63', 'N/A', 'N/A', 'N/A', 'N/A', '', 10, '2025-09-09', 1),
(141, 'Katherine Zarate', '0000-00-00', 0, 'N/A', 'N/A', 'N/A', 'N/A', 0, 'N/', 'N/A', 'N/A', 'N/A', 'Masculino', '60.0', 'N/A', 'N/A', 'N/A', 'N/A', '', 10, '2025-09-09', 1),
(142, 'Kimberlyn Carchi', '1994-04-05', 1127629003, '3154582280', 'N/A', 'N/A', 'kimberlyncarchi@gmail.com', 28, 'A+', 'N/A', 'N/A', 'np', 'Femenino', '1.5', 'N/A', 'N/A', 'planificacion , pastillas', 'N/A', '', 10, '2025-09-09', 1),
(143, 'laura andrea celis parra', '2002-06-28', 1001066414, '3213931537', 'famisanar', 'area de empaque (de pie)', 'lauracelis0628@gmail.com', 20, 'a+', 'aida parra (mama)', '321 248 9674', 'N/A', 'Femenino', '1.59', '57,6', '7/09/2022', 'planificacion (pastilla)', 'molestias lumbares (controlar cargas)', '', 10, '2025-09-09', 1),
(144, 'Laura Arrazola', '0000-00-00', 1018484991, '3118985719', 'sanitas', 'N/A', 'N/A', 28, 'N/', 'sonia Hurtado (Mama)', '3138935329', 'mala circulaciÃ³n en las piernas', 'Femenino', '1.58', 'N/A', '18/09/2024', 'N/A', 'N/A', '', 10, '2025-09-09', 1),
(145, 'laura caicedo', '2009-11-15', 1011326106, '3508621400(delamama)', 'compensar', 'estudiante', 'N/A', 12, 'o+', 'sandra guerrero (mama)', '350 862 1400', 'N/A', 'Femenino', '1.6', '57,15', '26/02/1900', 'N/A', 'N/A', '', 10, '2025-09-09', 1),
(146, 'laura milena leon ruiz', '1990-06-28', 1030575366, '3207671874', 'sanitas', 'veterinaria', 'lauramilenalr06@gmail.com', 32, 'o+', 'pilar ruiz (mama)', '314 278 2633', 'arttitis rematoide,pomeroid', 'Femenino', '1.67', '59,2', '1/02/2023', 'prednizonola y metrotexate (artritis)', 'apendice, fisura de clavicula (no molesta) pomeroid, muÃ±ecas hombros rodillas y ciatica (fibromalgia)', '', 10, '2025-09-09', 1),
(147, 'Laura Rivera', '0000-00-00', 0, 'N/A', 'N/A', 'N/A', 'N/A', 0, 'N/', 'N/A', 'N/A', 'N/A', 'Masculino', '60.0', 'N/A', '1/04/2024', 'N/A', 'N/A', '', 10, '2025-09-09', 1),
(148, 'laura tovar alados', '1998-09-08', 1021957148, '3118876783', 'sanitas', 'abogada', 'laurabelentovar@gmail.com', 24, 'a+', 'dignory tovar (hermana)', '317 329 3708', 'N/A', 'Femenino', '1.53', '55,7', '10/05/2023', 'licor ocasionalmente, planificacion pastillas', 'dolor de rodillas', '', 10, '2025-09-09', 1),
(149, 'laura valentina manrrique herrera', '2005-03-30', 1034398248, '3104016717', 'compensar', 'trabaja jardin', 'jardinprotadoresdeluz@hotmail.com', 17, 'a+', 'doris herrera (mama)', '310 857 8629', 'N/A', 'Femenino', '1.69', '61,15', '2/02/2023', 'yadel', 'N/A', '', 10, '2025-09-09', 1),
(150, 'laura vaness escorcia charris', '1992-07-09', 1042443768, '3012987145', 'sanitas', 'contadora (sentada)', 'lauraescorciacharris@gmail.com', 30, 'b+', 'rosa charris (mama)', '301 735 1076', 'asma controlada', 'Femenino', '1.67', 'N/A', 'N/A', 'planificacion(pastillas)', 'N/A', '', 10, '2025-09-09', 1),
(151, 'laura vanessa gonzales rodriguez', '2002-01-29', 1000033523, '3125809024', 'compensar', 'empleada (de pie)', 'lauragonzales2915@gmail.com', 20, 'b+', 'clementina rodirguez (mama)', '320 461 1547', 'N/A', 'Femenino', '1.56', '62,55', '28/12/2022', 'N/A', 'desgarre del aductor', '', 10, '2025-09-09', 1),
(152, 'leidy tatiana villamil melo', '1996-06-11', 1012432770, '3223258571', 'compensar', 'psicologa', 'tativillamil11@hotmail.com', 26, 'o+', 'irma melo (mama)', '320 667 6378', 'N/A', 'Femenino', '1.69', '58,3', '15/05/2022', 'N/A', 'N/A', '', 10, '2025-09-09', 1),
(153, 'lijia acosta leon', '1970-06-14', 51955882, '3156118085', 'famisanar', 'ventas (caminando)', 'lijiaacosta_10@yahoo.es', 52, 'a+', 'pedro grazion (esposo)', '312 536 8274', 'hipertension (no toma medicamentos) hipotiroidismo', 'Femenino', '1.55', '68', '2/06/2023', 'N/A', 'rodilla izquierda (fisura menisco) derecha (microfracturea)-2 cesarias,3 cirugia (extraccion de proyectil)-mamoplastia reduccion extraccion quiste isterectomia 2 terijios', '', 10, '2025-09-09', 1),
(154, 'Lina bolaÃ±os', '1989-05-25', 1030560238, '3187951295', 'Sanitas', 'Cantante', 'N/A', 35, 'B+', 'Carlos Alberto BolaÃ±os (PapÃ¡)', '3178580463', 'N/A', 'Femenino', '1.64', 'N/A', '20/06/2024', 'N/A', 'N/A', '', 10, '2025-09-09', 1),
(155, 'liz patricia acosta leon', '1973-01-17', 52170559, '3216268157', 'SURA', 'EMPLEADA (lider regional)', 'lizacosta_0117@hotmail.com', 50, 'o+', 'mauricio idarraga (esposo)', '316 765 3275', 'N/A', 'Femenino', '1.55', '66,5', '2/06/2023', 'N/A', 'dolor rodilla derecha e izquierda (desacondicionamiento)', '', 10, '2025-09-09', 1),
(156, 'lizeth alejandra ramirez vega', '1996-08-19', 1016088097, '3123336756', 'salud total', 'auxiliar de farmacia (de pie)', 'alejandraramirez899@gmail.com', 26, 'ab', 'adriana vega (mama)', '320 296 8985', 'N/A', 'Femenino', '1.62', '72,3', '18/10/2022', 'licor y cigarrillo ocasionalmente', 'pomeroi (para no quedar embarazada)', '', 10, '2025-09-09', 1),
(157, 'lizeth valentina ortega lima', '2000-07-04', 1010084331, '3228874744', 'famisanar', 'call center (sentada)', 'lizethortega2000@gmail.com', 23, 'b+', 'angie ortega (hermana)', '310 680 8253', 'N/A', 'Femenino', '1.8', '74', '2/08/2023', 'antidepesivos', 'rodilla izquierda golpe de niÃ±a', '', 10, '2025-09-09', 1),
(158, 'Lorena Valderrama', '1994-03-13', 1012408668, '3214601823', 'Sanitas', 'Arquitecta', 'N/A', 30, 'O+', 'Erick Valderrama', '3202013965', 'N/A', 'Femenino', '1.6', 'N/A', 'N/A', 'N/A', 'N/A', '', 10, '2025-09-09', 1),
(159, 'lorena valentina ochoa moreno', '2006-01-31', 0, '3124480348', 'compensar', 'N/A', 'loreochoam@gail.com', 17, 'o*', 'N/A', '3208563479', 'esguince de rodilla, muÃ±ecas abiertas', 'Femenino', '1.74', '66,7', '3/01/2024', 'N/A', 'N/A', '', 10, '2025-09-09', 1),
(160, 'luis alejandro ocampo cruz', '2005-10-17', 1034399176, '3213044535', 'salud total', 'estudiante (ingles)', 'lualejocruz@gmail.com', 17, 'o+', 'patrci cruz (mama)', '314 2932420', 'N/A', 'Masculino', '1.75', '73', '2/03/2023', 'vaper', 'fractura rodilla futboll', '', 10, '2025-09-09', 1),
(161, 'luis forero', '1989-07-03', 1099206588, '3014551994', 'sanitas', 'administrador de empresa', 'luislaf0311@hotmail.com', 32, 'o+', 'victor forero(hermano)', '315 774 4447', 'N/A', 'Masculino', '1.72', '77,6', 'N/A', 'N/A', 'hombro (discolado) leve , trota y le duele la rodilla', '', 10, '2025-09-09', 1),
(162, 'luisa fernanda rivera sanabria', '1995-06-09', 1030654186, '3112489359', 'nueva eps', 'trabajadora social', 'luisafernanadarivera95@gmail.com', 27, 'o+', 'N/A', 'N/A', 'N/A', 'Femenino', '1.62', '80,95', '5/09/2022', 'planificacion (inyeccion)', 'N/A', '', 10, '2025-09-09', 1),
(163, 'luna camila guerreo niÃ±o', '1989-02-02', 1030553159, '3057039822', 'compesar', 'gestora cultural (sentada)', 'satelite10000@htmail.com', 34, 'o+', 'martha niÃ±o(mama)', '312 450 6599', 'N/A', 'Femenino', '1.6', '54,85', '4/09/2023', 'Marihuana', 'fractura incompleta perone izquierda, inflamacion tejidos blandos rodilla derecha (le molesta),migraÃ±a', '', 10, '2025-09-09', 1),
(164, 'luna melgarejo', '2004-04-19', 1025460508, '3202124874', 'famisanar', 'estudiante', 'lunamelgar1904.lm@gmail.com', 20, 'o+', 'andrea caballero', '3213213731', 'N/A', 'Femenino', '1.6', 'N/A', '11/12/2024', 'N/A', 'N/A', '', 10, '2025-09-09', 1),
(165, 'Luz Dary NuÃ±ez', '1981-07-03', 52740776, '3204747615', 'famisanar', 'ministro de culto', 'luznuc@hotmail.com', 43, 'b+', 'roy jimenez', '3123841493', 'dedsgaste en los discos', 'Femenino', '1.62', '63,2', '1/08/2024', 'N/A', 'N/A', '', 10, '2025-09-09', 1),
(166, 'luz marina nunpaque', '1977-09-15', 52356643, '3103534774', 'sanitas', 'comerciante', 'ojitos1129@hotmail.com', 44, 'o+', 'manuel hernandez (papa de las niÃ±as)', '310 698 8422', 'N/A', 'Femenino', '1.55', '75,75', 'N/A', 'licor', 'N/A', '', 10, '2025-09-09', 1),
(167, 'luz marina orduz pulido', '1958-04-24', 41692854, '3102859056', 'servisalud', 'docente (primaria)', 'morenalu24@gmail.com', 64, 'o+', 'leonardo valderrama(hijo)', '320 201 3965', 'mioaloma (cancer en los huesos)', 'Femenino', '1.58', '57,1', '29/08/2022', 'N/A', 'dolor en el talon , caida rodilla', '', 10, '2025-09-09', 1),
(168, 'luz montenegro', '1974-11-30', 52261655, '3165295129', 'famisanar', 'empleada', 'teluchismb@gmail.com', 50, 'A+', 'juan lugo', '3504801299', 'lesion en el L4S1', 'Femenino', '1.56', 'N/A', '12/12/2024', 'N/A', 'N/A', '', 10, '2025-09-09', 1),
(169, 'Maira Martin', '2000-07-20', 1007249327, '3203136076', 'sanitas', 'empleada', 'mairamartin07@gmail', 24, '0+', 'clara sanchez', '3137158863', 'N/A', 'Femenino', '1.64', '71,85', '7/01/2025', 'N/A', 'N/A', '', 10, '2025-09-09', 1),
(170, 'manoella de andreis diaz', '1998-04-24', 1024589637, '3197725634', 'sanitas', 'empleada (ejecutiva comercial)', 'manoella980424@gmail.com', 25, 'a+', 'andrea diaz (mama)', '320 484 4272', 'N/A', 'Femenino', '1.73', '62,85', '15/06/2023', 'plinificacion (inyeccionn mensual)', 'espalda dolor izquierdo, escoliosis dorsolumbar (controlar cargas)', '', 10, '2025-09-09', 1),
(171, 'marcela peÃ±a castillo', '1981-10-10', 52841050, '3156211076', 'sanitas', 'ing topografica (desesmpleada)', 'marcelaingtopoud@yahoo.es', 41, 'o+', 'mariela castillo (mama)', '311 219 1621', 'N/A', 'Femenino', '1.65', '89,55', '10/03/2023', 'N/A', 'miopia', '', 10, '2025-09-09', 1),
(172, 'marcia chaves campos', '1976-03-02', 52229595, '3059476325', 'sanitas', 'independiente', 'mchacam76@gmail.com', 47, 'a+', 'julio ortiz', '321 507 2962', 'N/A', 'Femenino', '1.55', '49,6', '5/04/2023', 'pomeroid', 'amigdelotomia ,pomerid', '', 10, '2025-09-09', 1),
(173, 'maria camila diaz florez', '2000-10-14', 1000514971, '3212564984', 'sanitas', 'estudiante (diseÃ±o interior) y trabaja', 'mcamiladf14@outlook.com', 22, 'o+', 'luis carlos diaz (papa)', '300 655 4311', 'resistencia a la insulina', 'Femenino', '1.5', '65,8', '8/12/2022', 'planificacion T', 'cirugia quiste ovario derecho , dolor de la muÃ±eca.', '', 10, '2025-09-09', 1),
(174, 'maria camila ospino pacheco', '1995-02-25', 1216967560, '3016739341', 'sanitas', 'ing civil (camina)', 'kmiospino@gmail.com', 28, 'o-', 'mariela castilla(mama)', '311 219 1621', 'N/A', 'Femenino', '1.64', '78,05', '10/03/2023', 'medicamento para la migraña', 'lumbar (ciatica)', '', 10, '2025-09-09', 1),
(175, 'maria camila ramirez quiÃ±ones', '1996-04-20', 1073170778, '3202047241', 'medisanitas', 'psicologa (sentada y campo)', 'mramirezq1996@gmail.com', 26, 'o+', 'camilo rodriguez (novio)', '318 844 2225', 'reistencia a la insulina y sindrome neovariopoliqu', 'Femenino', '1.67', '83,05', '23/11/2022', 'N/A', 'rodilla derecha (dolor articular)', '', 10, '2025-09-09', 1),
(176, 'maria fernanda betancourt jimenez', '1997-12-22', 1032495437, '3125936219', 'sanitas', 'imgeniera forestal (caminatas)', 'mafebjimenez@gmail.com', 24, 'b+', 'luz estella jimenez (mama)', '305 752 1824', 'N/A', 'Femenino', '1.58', '58,95', '9/11/2022', 'N/A', 'dolor rodilla derecha (genetica)', '', 10, '2025-09-09', 1);
INSERT INTO `clientes` (`id`, `nombre`, `fecha_nacimiento`, `cedula`, `celular`, `eps`, `ocupacion`, `correo`, `edad`, `rh`, `contact_emer`, `num_contact_emer`, `patologia`, `genero`, `estatura`, `peso`, `fecha_ingreso`, `C,L,SP,DR`, `observaciones`, `plan`, `clases`, `vigencia_plan`, `estatus`) VALUES
(177, 'maria fernanda corrales lozano', '1999-03-26', 1016109307, '3013954375', 'sura', 'tesorera de cda (sentada)', 'fernanda.corrales26@gmail.com', 24, 'o+', 'alexander quintana (esposo)', '313 561 7245', 'N/A', 'Femenino', '1.63', 'N/A', '18/12/2023', 'N/A', 'cesaria (6 aÃ±os) piede entrenar normalmente', '', 10, '2025-09-09', 1),
(178, 'maria ivonne baquero ramirez', '1977-04-02', 52431812, '3183314764', 'sanitas', 'independiente (asesora financiera)', 'ivonnebaquero04@gmail.com', 45, 'a+', 'miguel cardona (hijo)', '315 395 6714', 'N/A', 'Femenino', '1.57', '56,5', 'N/A', 'N/A', 'N/A', '', 10, '2025-09-09', 1),
(179, 'maria olga aranguren vargas', '1969-04-04', 35512658, '3232299276', 'famisanar', 'administradora de bodega de citricos', 'olga2vargas@hotmail.com', 53, 'o+', 'angie zambrano', 'N/A', 'N/A', 'Femenino', '1.57', '58,9', '1/08/2022', 'colageno hidrolizado para artrosis', 'artrosis de cadera', '', 10, '2025-09-09', 1),
(180, 'maria yulieth quintero pulido', '1979-04-25', 40045352, '3115027438', 'sanitas', 'empleada (atencion al cliente)', 'maryuly0807@gmail.com', 43, 'a+', 'edwin baron (esposo)', '311 489 2966', 'hipotiroidismo', 'Femenino', '1.58', '64,1', '5/05/2023', 'levotiroxina', 'N/A', '', 10, '2025-09-09', 1),
(181, 'maritza alvarez', '2004-09-28', 1085899904, '3143921340', 'sanidad militar', 'estudiante', 'N/A', 20, 'A+', 'carmen alvarez', '3213428335', 'luxacion de cadera', 'Femenino', '1.6', '52', 'N/A', 'N/A', 'N/A', '', 10, '2025-09-09', 1),
(182, 'maryuri ospina', '1990-06-18', 1030577463, '3123335443', 'compensar', 'independiente (suplementos)', 'maryi.love77@hotmail.com', 31, 'o+', 'yili ospina (hermana)', '320 241 9221', 'N/A', 'Femenino', '1,7', '64,4', 'N/A', 'N/A', 'N/A', '', 10, '2025-09-09', 1),
(183, 'Michelle Medina', '1997-10-02', 1018497993, '3053167168', 'Sura', 'Coordinadora de procesos', 'medmichelle02@gmail.com', 26, 'A+', 'Sandra Martinez (mamÃ¡)', '3178002022', 'N/A', 'Femenino', '1.59', '54,85', 'N/A', 'N/A', 'N/A', '', 10, '2025-09-09', 1),
(184, 'Michelle Vallejo', '1998-09-30', 1026303191, '3196132858', 'Compensar', 'Empleada', 'N/A', 25, 'o+', 'Angela Martinez', '3112456804', 'N/A', 'Masculino', '1.62', '49,45', 'N/A', 'N/A', 'N/A', '', 10, '2025-09-09', 1),
(185, 'milena galindo rojas', '1993-10-20', 1032460704, '3105520833', 'salud total', 'administradora propiedad horizontal', 'snemarcoa@hotmail.com', 28, 'o+', 'diego martinez (exnovio)', '321 249 3734', 'N/A', 'Femenino', '1.6', '55,15', '24/02/1900', 'N/A', 'N/A', '', 10, '2025-09-09', 1),
(186, 'miryam cortez aragon', '1961-09-05', 51657493, '3164734627', 'compensar', 'pensionada(asesor comercial)', 'milemar13@hotmail.com', 61, 'o+', 'luis beltran (esposo)', '310 304 8192', 'hipertension', 'Femenino', '1.61', '72,25', '25/01/2023', 'losartan', 'hombro derecho poca movilidad ,cirugia varices', '', 10, '2025-09-09', 1),
(187, 'Miryan Cortez', '1961-09-05', 51657493, '3164734627', 'compensar', 'pensionada', 'N/A', 62, 'o+', 'luis', '3103048192', 'hipertension', 'Femenino', '1.54', '72,9', '1/03/2022', 'N/A', 'N/A', '', 10, '2025-09-09', 1),
(188, 'monica marcel ramirez jurado', '1978-06-21', 52521753, '3142261199', 'salud total', 'empleada bancaria (sentada)', 'mojily05@hotmail.com', 44, 'o+', 'javier fernanndo baron jaimes (esposo)', '313 461 8699', 'hipertension , hipertiroidismo , soriasis (placas ', 'Femenino', '1.55', '58,15', '11/02/2023', 'losaratan 50, eutirox 50, inyeccion (estecuneba)', 'cesaria, dolor de rodillas', '', 10, '2025-09-09', 1),
(189, 'Monica Moreno', '1988-08-03', 1012343934, '3123488589', 'sanitas', 'coordinadora de proyectos', 'mmonicajma@gmail.com', 36, 'o+', 'Juan Ardila', '3164276914', 'Dolor de hombro', 'Femenino', '1.56', 'N/A', '20/11/2024', 'N/A', 'dolor de hombro derecho', '', 10, '2025-09-09', 1),
(190, 'nadia figueroa', '1991-07-27', 1032417365, '3103021135', 'sanitas', 'coordiandora de fidelizacion', 'nadiafigueroa2707@hotmail.com', 33, 'a+', 'luz marina perez (mama)', '310 220 1087', 'N/A', 'Femenino', '1.6', '50,95', '4/05/2022', 'N/A', 'N/A , vegetariana', '', 10, '2025-09-09', 1),
(191, 'nancy rocio corredor aldana', '1982-11-23', 52779769, '3144423894', 'sanitas', 'enfermera (de pie)', 'rhhochy@gmail.com', 40, 'O+', 'rigoberto cruz (esposo)', '311 281 3388', 'higado graso', 'Femenino', '1.58', '71,15', '2/05/2022', 'luralutida (insulina)', 'rodillas (inactividad) , cuello c 3 y c7 desviacion', '', 10, '2025-09-09', 1),
(192, 'Natalia Florez', '1982-08-26', 52960234, '3124631024', 'compensar', 'investigadora', 'nflorezt@gmail.com', 42, 'O+', 'Carolina Florez', '3107636906', 'malaalineacion patelofemoral', 'Femenino', '1.54', 'N/A', 'N/A', 'N/A', 'N/A', '', 10, '2025-09-09', 1),
(193, 'Natalia Velez', '1977-10-30', 52489890, '3195943086', 'Sanitas', 'Independiente', 'N/A', 46, 'O+', 'Alexander Velez Uribe (hermano)', '3155045141', 'N/A', 'Masculino', '1.6', '59,8', 'N/A', 'N/A', 'N/A', '', 10, '2025-09-09', 1),
(194, 'nathalia leon', '1982-10-31', 52931569, '3013552164', 'servisalud', 'docente', 'daniel_mi_angel@hotmail.com', 40, 'o+', 'daniel hurtado (hijo)', '300 842 2894', 'hipotiroidismo', 'Femenino', '1.6', '64,35', '2/02/2022', 'planificacion (pastillas),levotiroxina', 'rodilla (dolor), dos cesarias y 10 interveciones quirurgicas', '', 10, '2025-09-09', 1),
(195, 'nathaly contreras', '1991-05-11', 1076655804, '3004956990', 'sura', 'ing.industrial (sentada)', 'nathalygcontreras@hotmail.com', 31, 'o+', 'maribel perez (suegra)', '321 265 5751', 'N/A', 'Femenino', '1.56', '54,5', '23/02/1900', 'sertralina-ansiedad y depresion', 'rodilla izq(ligamentro cruzado 10 aÃ±os atrÃ¡s )(insuficiencia de liquido sinovial)(osteocondritis controlar la fuerza)', '', 10, '2025-09-09', 1),
(196, 'nicolas hernandez', '1998-01-04', 1030683575, '3144675026', 'famisanar', 'aistente de ingenierica civil', 'nicolasha498@hotmail.com', 25, 'a+', 'ricardo hernandez (papa)', '317 515 3175', 'N/A', 'Masculino', '1.8', '79,6', '1/06/2022', 'N/A', 'N/A', '', 10, '2025-09-09', 1),
(197, 'nicolas toro', '2013-04-23', 1031832831, '3124961667(angelicahermana)', 'famisanar', 'estudiante', 'N/A', 0, 'a+', 'angelica lopez', '312 496 1667 (herman', 'N/A', 'Masculino', '1.3', 'N/A', 'N/A', 'N/A', 'N/A', '', 10, '2025-09-09', 1),
(198, 'numar stiven coy paez', '1998-01-08', 1233493703, '3186479489', 'sanitas', 'desarrollador (sentado)', 'numarcoy1998@gmail.com', 24, 'o+', 'olga paez (madre)', '320 848 5188', 'N/A', 'Masculino', '1.73', '64,1', '4/03/1900', 'N/A', 'molestias rodillas (menisco roto en dos)', '', 10, '2025-09-09', 1),
(199, 'Omar Avendaño', '0000-00-00', 0, 'N/A', 'N/A', 'N/A', 'N/A', 0, 'N/', 'N/A', 'N/A', 'N/A', 'Masculino', '60.0', 'N/A', 'N/A', 'N/A', 'N/A', '', 10, '2025-09-09', 1),
(200, 'Omar Castillo', '2024-12-04', 1001183792, '3106567634', 'Sanitas', 'Empleado', 'castillo90216@gmail.com', 23, 'O+', 'Gladys Espitia (MamÃ¡)', '3118734214', 'N/A', 'Masculino', '1.7', '83,55', '23/05/2024', 'N/A', 'N/A', '', 10, '2025-09-09', 1),
(201, 'paola andrea torres castro', '1975-09-11', 52106422, '3138924482', 'colsubsidio', 'ama de casa pensionada', 'paolatorrescf@gmail.com', 47, 'ab', 'hugo reyes (esposo)', '320 837 3858', 'N/A', 'Femenino', '1.64', '74,3', '1/08/2020', 'N/A', 'dolor en articulaciones', '', 10, '2025-09-09', 1),
(202, 'paola cruz', '0000-00-00', 0, 'N/A', 'N/A', 'N/A', 'N/A', 0, 'N/', 'N/A', 'N/A', 'N/A', 'Masculino', '60.0', 'N/A', 'N/A', 'N/A', 'N/A', '', 10, '2025-09-09', 1),
(203, 'paola tatiana cardona jimenez', '1995-04-23', 1010222434, '3219415855', 'sanitas', 'psicologa (sentada)', 'paolatatianacardonajimenez@gmail.com', 27, 'a+', 'sandra jimenez (mama)', '314 326 3804', 'N/A', 'Femenino', '1.55', '48,4', '5/09/2022', 'licor (ocasionalmente) y fuma', 'desplazmiento cubital codo izquierdo', '', 10, '2025-09-09', 1),
(204, 'Patricia Sanchez', '0000-00-00', 0, 'N/A', 'N/A', 'N/A', 'N/A', 0, 'N/', 'N/A', 'N/A', 'N/A', 'Masculino', '60.0', 'N/A', 'N/A', 'N/A', 'N/A', '', 10, '2025-09-09', 1),
(205, 'paula andrea rodriguez abril', '1999-02-08', 1032502647, '3044197530', 'compensar', 'estudiante (pscologia)', 'andrearodab@hotmail.com', 23, 'o+', 'alejandra rodriguez (hermana)', '304 419 7421', 'N/A', 'Femenino', '1.55', '51,5', 'N/A', 'licor (cada 15 dias)', 'N/A', '', 10, '2025-09-09', 1),
(206, 'paula castro', '1999-04-02', 1032503794, '3194808535', 'sura', 'estudiante (idiomas)', 'danielle.castro@outlook.es', 23, 'o+', 'carolina gamboa(mama)', '312 549 9223', 'N/A', 'Femenino', '1.6', '65,3', 'N/A', 'ocasionalmente fuma, ocasionalmente licor', 'N/A', '', 10, '2025-09-09', 1),
(207, 'paula valentina figueredo gonzales', '2004-10-17', 1011200883, '3228958968', 'famisanar', 'estudiante (medicina)', 'valentinafi292@gmail.com', 18, 'b+', 'aide gonzales (mama)', '312 401 3993', 'luxacion de cadera congenita', 'Femenino', '1.58', '51,3', '16/02/2023', 'planificacion (feicitix)', 'N/A', '', 10, '2025-09-09', 1),
(208, 'ricardo hernadez espitia', '1976-12-25', 0, 'N/A', 'N/A', 'N/A', 'N/A', 0, 'N/', 'N/A', 'N/A', 'N/A', 'Masculino', '1.78', 'N/A', 'N/A', 'N/A', 'N/A', '', 10, '2025-09-09', 1),
(209, 'rosa delia acosta leon', '1969-04-27', 51960999, '3118409592', 'famisanar', 'docente', 'rosadeliangy09@yahoo.com', 54, 'o+', 'edgar vivas (esposo)', '310 788 5553', 'diabetes', 'Femenino', '1.5', '55,2', '1/08/2023', 'N/A', 'extraccion de matriz, dolor rodilla derecha', '', 10, '2025-09-09', 1),
(210, 'sammantha estefani esquivel', '2002-01-21', 1001327167, '51-6127107360', 'no aplica', 'estudia (finanzas y tecnologia) y bartender', 'N/A', 21, 'o+', 'diana jimenez', '324 682 5193', 'N/A', 'Femenino', '1.58', '66,15', '24/04/2023', 'marihuana , licor ocasionalmente', 'N/A, dolor lumbar', '', 10, '2025-09-09', 1),
(211, 'sammy ospina alfonso', '2003-04-09', 1000335112, '3022713952', 'compensar', 'auxiliar operativa', 'sammy_ospina@outlook.com', 19, 'a+', 'jean ospina hermano', '301 6993795', 'N/A', 'Femenino', '1.6', '46,9', '16/04/2022', 'N/A', 'N/A', '', 10, '2025-09-09', 1),
(212, 'samuel gomez', '0000-00-00', 0, 'N/A', 'N/A', 'N/A', 'N/A', 0, 'N/', 'N/A', 'N/A', 'N/A', 'Masculino', '60.0', 'N/A', 'N/A', 'N/A', 'N/A', '', 10, '2025-09-09', 1),
(213, 'Sandra CastaÃ±o', '1987-09-05', 101017319, '3144616523', 'Salud Total', 'MÃ©dico', 'spcmdra@gmail.com', 36, 'O+', 'Lucinda Mora (MamÃ¡)', '3214075813', 'N/A', 'Femenino', '1.58', '60,85', '8/05/2024', 'N/A', 'Antecedente cirugÃ­a Bariatrica', '', 10, '2025-09-09', 1),
(214, 'sandra eliana castaÃ±eda lopez', '1974-09-26', 33675896, '3112940762', 'sanitas', 'contadora (sentada)', 'sandraeliana333@hotmail.com', 47, 'o+', 'flor galindo (vecina)', '300 561 3261', 'N/A', 'Femenino', '1.55', '77,05', '17/03/1900', 'N/A', 'N/A', '', 10, '2025-09-09', 1),
(215, 'sandra guerrero muÃ±oz', '1973-01-28', 59824255, '3508621400', 'compensar', 'economista (sentada)', 'sjannethgm@gmail.com', 49, 'o+', 'edgar romero (esposo)', '318 384 9610', 'hipertension, (losartan)', 'Femenino', '1.56', '74,9', 'N/A', 'losartan, formula magistral (quemadores de grasa)', 'esguince rodilla hace 5 aÃ±os', '', 10, '2025-09-09', 1),
(216, 'sara natalia sandoval pardo', '2002-04-05', 1007479111, '3103429723', 'nueva eps', 'estudiante (derecho)', 'sarnsan@hotmail.com', 21, 'a+', 'clemente palacios (novio)', '322 354 9332', 'N/A', 'Femenino', '1.6', '75,2', '6/07/2023', 'licor (ocasionalmente), fuma (ocasionalmente planifica (pastillas)', 'N/A', '', 10, '2025-09-09', 1),
(217, 'sara valeria leon ruiz', '2001-08-22', 1000047552, '3134940970', 'sanitas', 'estudiante (arte dramatica) y trabajo animacion infantil', 'valerialeon040417@gmail.com', 21, 'o+', 'pilar ruiz (mama)', '314 278 2633', 'les', 'Femenino', '1.6', '58,6', '2/02/2023', 'N/A', 'hernia inguinal bilateral y apendice', '', 10, '2025-09-09', 1),
(218, 'sebastian casanova suarez', '1991-11-04', 1014237195, '3173801988', 'sanitas', 'call center (sentada)', 'scazasuarez@gmail.com', 32, 'o+', 'yadira suarez (tia)', '318 577 9293', 'epileptico ultima vez mayo 2023', 'Masculino', '1.76', '73,75', '2/08/2023', 'lacosamida', 'dislocacion de hombros ambos , tobillo esguince (grado 3) , rodillas derecha ligamento cruzado', '', 10, '2025-09-09', 1),
(219, 'sebastian chavarro', '0000-00-00', 0, 'N/A', 'N/A', 'N/A', 'N/A', 0, 'N/', 'N/A', 'N/A', 'N/A', 'Masculino', '60.0', 'N/A', 'N/A', 'N/A', 'N/A', '', 10, '2025-09-09', 1),
(220, 'Sebastian Triana', '2001-04-25', 100604882, '3107252242', 'sanitas', 'dibujante tecnico', 'johantriana525@gmail.com', 23, 'o+', 'caren triana', '3115598490', 'N/A', 'Masculino', '1.7', 'N/A', '4/12/2024', 'N/A', 'N/A', '', 10, '2025-09-09', 1),
(221, 'sergio andres pinto lora', '1988-10-06', 1032422063, '3118754693', 'compensar', 'ing sistema (sentado)', 'sergio.pinto.31@gmail.com', 34, 'a+', 'aleja carranza (novia)', '313 453 5052', 'hipertension', 'Masculino', '1.89', '108', '14/08/2023', 'N/A', 'dolor lumbar', '', 10, '2025-09-09', 1),
(222, 'sergio lopez', '1990-12-04', 1019054697, '3192965069', 'sanitas', 'farmaceutica', 'sdlopezs@unal.edu.co', 31, 'o+', 'sandra rodriguez (esposa)', '310 269 3842', 'N/A', 'Masculino', '1.7', '85,5', 'N/A', 'N/A', 'no esta en ayunas', '', 10, '2025-09-09', 1),
(223, 'shirley catalina briseÃ±o neira', '1979-10-03', 52355204, '3124244965', 'salud total', 'enfermera (de pie)', 'shirleybrine@hotmail.com', 43, 'b+', 'angel carrilo (esposo)', '314 462 9273', 'N/A', 'Femenino', '1.65', '59,6', '21/10/2022', 'N/A', 'mamoplastia', '', 10, '2025-09-09', 1),
(224, 'Sindy Julieth Bernal Valenzuela', '1989-05-19', 1012364267, '3046083423', 'salud total', 'enfermera', 'sindybernal962@gmail.com', 35, 'o+', 'Maria Valenzuela', '3134006367', 'dolor en  manos', 'Femenino', '1,55', 'N/A', '9/01/2024', 'N/A', 'N/A', '', 10, '2025-09-09', 1),
(225, 'sofia palacios', '1998-12-31', 1030693171, '3057639144', 'famisanar', 'ingieniera civil', 'sofiapalacios441@gmail.com', 24, 'a+', 'clemente palacios(hermano)', '322 354 9332', 'N/A', 'Femenino', '1.6', '57,9', 'N/A', 'marihuana, cigarro (planifica jadel)', 'HOBBIE:', '', 10, '2025-09-09', 1),
(226, 'sofia parra', '0000-00-00', 0, 'N/A', 'N/A', 'N/A', 'N/A', 0, 'N/', 'N/A', 'N/A', 'N/A', 'Femenino', '1.63', 'N/A', 'N/A', 'N/A', 'N/A', '', 10, '2025-09-09', 1),
(227, 'sofia rey rodriguez', '1988-09-10', 1069724674, '3204202340', 'compensar', 'recusos humanos (sentada)', 'sofiareyrodriguez@gmail.com', 33, 'o+', 'ana maria rey (hermana)', '304 390 1810', 'asma', 'Femenino', '1.67', '61,55', 'N/A', 'N/A', 'HOBBIE:', '', 10, '2025-09-09', 1),
(228, 'sonia del pilar herreÃ±o paez', '1984-08-08', 53097649, '3143449649', 'sanitas', 'diseÃ±adora', 'soniaherreno@hotmail.com', 38, 'b-', 'angelica herreÃ±o(hermana)', '321 288 0366', 'N/A', 'Femenino', '1.7', '74,65', '3/01/2023', 'N/A', 'esquinge menor tobillo (izquierdo) sin problemas,dolor lumbar (desacondicionamiento)', '', 10, '2025-09-09', 1),
(229, 'Sonia Velez', '1993-11-26', 1013646156, '3052490055', 'Famisanar', 'Indeoendiente', 'N/A', 31, 'A+', 'Francis Mendoza', '3203213661', 'N/A', 'Femenino', '1.58', 'N/A', '26/08/2024', 'N/A', 'N/A', '', 10, '2025-09-09', 1),
(230, 'Stephane Piedrahita', '1995-04-26', 1110558343, '3214880551', 'Nueva EPS', 'Psicologa', 'stefani0426@hotmail.com', 28, 'O+', 'Annie', '3106749048', 'asma', 'Femenino', '1.65', 'N/A', '5/02/2024', 'N/A', 'N/A', '', 10, '2025-09-09', 1),
(231, 'stephany mara paez castillo', '1984-05-13', 55232187, '3245960034', 'sanitas', 'independiente( asesor freelance creditos)', 'sstephanypaez@gmail.com', 39, 'o+', 'maria angela castillo (mama)', '313 504 1809', 'N/A', 'Femenino', '1.65', '61,8', '9/09/2023', 'N/A', 'N/A', '', 10, '2025-09-09', 1),
(232, 'suly johana andrade gomez', '1990-12-24', 1126451950, '3142897805', 'no aplica', 'independiente (comercio ropa)', 'pablitogomez12052000@gmail.com', 32, 'b+', 'jairo gomez (tio)', '321 369 9315', 'trigliceridos', 'Femenino', '1.6', '57,2', '25/01/2023', 'N/A', 'N/A', '', 10, '2025-09-09', 1),
(233, 'susana maria valcarcel paredes', '1992-05-05', 1127044154, '3168183622', 'sanitas', 'contadora (sentada)', 'susavalcarcel31@gmail.com', 30, 'a+', 'karina valcarcel (hermana)', '310 413 1518', 'N/A', 'Femenino', '1.59', 'N/A', '11/10/2022', 'N/A', 'N/A', '', 10, '2025-09-09', 1),
(234, 'valentina duarte', '1997-07-09', 1233489309, '3134381844', 'salud total', 'supervisora de campo acueducto', 'vale.ds@hotmail.com', 24, 'a+', 'nevalai salazar (mama)', '313 274 2514', 'N/A', 'Femenino', '1.6', 'N/A', 'N/A', 'inyeccion (mesigina)', 'equlibrio bajo problemas en el oido con ejercicos de impacto', '', 10, '2025-09-09', 1),
(235, 'valentina hernadez', '2007-01-11', 1146124185, '3025456598', 'sanitas', 'estudiante (bachiller)', 'vh8846800@gmail.com', 17, 'o+', 'luz marina nunpaque (mama)', '310 353 4774', 'N/A', 'Femenino', '1.62', 'N/A', '1/01/2021', 'ecitalopran (depresion y ansiedad) ', 'N/A', '', 10, '2025-09-09', 1),
(236, 'valentina sanchez', '2001-10-21', 1007476289, '3214194482', 'aliansalud', 'estudiante (ad. Empresas)', 'sanchezlozanov@gmail.com', 20, 'o+', 'doris lozano (mama)', '310 814 8295', 'N/A', 'Femenino', '1.55', '54,45', 'N/A', 'planificacion (pastillas)', 'N/A', '', 10, '2025-09-09', 1),
(237, 'venjamin gomez', '1988-05-12', 1013596265, '3152259189', 'sanitas', 'ing mecanico', 'venjamingomzo@gmail.com', 36, 'o+', 'jessika calderon', '3505964496', 'N/A', 'Masculino', '1.77', '71,1', '2/01/2024', 'N/A', 'N/A', '', 10, '2025-09-09', 1),
(238, 'wendy johana otero martinez', '2002-10-20', 1003503222, '3213635438', 'salud total', 'cajera (de pie)', 'wendyotero940@gmail.com', 20, 'o+', 'leidy yuritza barraza ibaÃ±ez (amiga)', '313 359 8942', 'N/A', 'Femenino', '1.55', '50,05', '9/02/2023', 'N/A', 'N/A', '', 10, '2025-09-09', 1),
(239, 'winny tatiana ruiz lopez', '1994-04-30', 1022393527, '3124370949', 'compensar', 'marketing (sentada)', 'winnytruiz@gmail.com', 29, 'o+', 'alvaro ruiz(papa)', '318 887 8763', 'N/A', 'Femenino', '1.6', '64,05', '29/08/2023', 'cigarrillo, marihuana', 'cirugia en el labio ,lesion rodilla izquiera (desgaste articular por baloncesto ) tendinitis (muÃ±ecas)', '', 10, '2025-09-09', 1),
(240, 'yamile moreno celis', '1981-03-10', 52717077, '3204085895', 'colsanitas', 'asesora comercial (sentada)', 'ymoreno07@gmail.com', 42, 'a+', 'angeliza lopez (hija)', '312 496 1666', 'hipotiroidismo', 'Femenino', '1.6', '71,8', '15/10/2022', 'lebotiroxina', 'rodilla por cirugia de vena varice y lipoma', '', 10, '2025-09-09', 1),
(241, 'yesika dayana prieto pinilla', '1999-08-24', 1053350729, '3136386214', 'sanitas', 'contadora (sentada)', 'dayanaprieto301@gmail.com', 23, 'o+', 'andres mayorga (primo)', '311 242 8794', 'N/A', 'Femenino', '1.62', '65,95', '8/02/2023', 'planificacion (yadel)', 'cirugia dedo de la mano (no afecta)', '', 10, '2025-09-09', 1),
(242, 'yili ospina', '1992-06-26', 1136884529, '3202419221', 'sanitas', 'administradora de empresas', 'yiliospina7@gmail.com', 29, 'a+', 'maryuri ospina (hermana)', '312 333 5443', 'N/A', 'Femenino', '1.68', '74,95', 'N/A', 'N/A', 'pie plano,acido urico', '', 10, '2025-09-09', 1),
(257, 'Adrian', '1995-05-09', 1022454503, '3015188198', 'N/A', 'Desarrollador', 'epicgraff.df@gmail.com', 30, 'O+', 'Karla Carchi', '3017595957', 'N/A', 'Femenino', '1,60', '71,88', '2025-09-01', NULL, NULL, 'N/A', 0, '2026-03-15', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `metricsclients`
--

CREATE TABLE `metricsclients` (
  `id` int(255) NOT NULL,
  `fecha_valoracion` date DEFAULT NULL,
  `fecha_sig_valoracion` date DEFAULT NULL,
  `client_id` int(100) NOT NULL,
  `score_corporal` float NOT NULL,
  `peso` float NOT NULL,
  `imc` double NOT NULL,
  `grasa_corporal` double NOT NULL,
  `lvl_agua` double NOT NULL,
  `grasa_visc` double NOT NULL,
  `musculo` double NOT NULL,
  `proteina` double NOT NULL,
  `metabolismo` double NOT NULL,
  `masa_osea` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `metricsclients`
--

INSERT INTO `metricsclients` (`id`, `fecha_valoracion`, `fecha_sig_valoracion`, `client_id`, `score_corporal`, `peso`, `imc`, `grasa_corporal`, `lvl_agua`, `grasa_visc`, `musculo`, `proteina`, `metabolismo`, `masa_osea`) VALUES
(2, NULL, NULL, 2, 66, 68.7, 26.8, 23.3, 52.6, 11, 50, 20.2, 1517, 2.68),
(8, '2025-08-29', '2025-10-29', 2, 73, 67.5, 26.3, 23.4, 52.5, 9, 48.95, 20.2, 1586, 2.62);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pagos`
--

CREATE TABLE `pagos` (
  `id` int(255) NOT NULL,
  `paydate` date NOT NULL,
  `nombre` text NOT NULL,
  `category` text NOT NULL,
  `plan` text NOT NULL,
  `monto` decimal(10,0) NOT NULL,
  `paymethod` text NOT NULL,
  `cliente_id` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pagos`
--

INSERT INTO `pagos` (`id`, `paydate`, `nombre`, `category`, `plan`, `monto`, `paymethod`, `cliente_id`) VALUES
(6, '2025-08-07', 'Proteina Daniel', 'Proteínas', 'N/A', 150000, 'Transferencia', 0),
(7, '2025-08-07', 'Creatina Daniel', 'Proteínas', 'N/A', 150000, 'Nequi', 0),
(8, '2025-09-02', 'Daniel Prueba', 'Proteínas', 'N/A', 2500, 'Efectivo', 0),
(9, '2025-09-09', 'Suscripcion Adriana Garrido', 'Cliente', 'Semi 12', 150000, 'Efectivo', 1),
(10, '2025-10-09', 'Suscripcion Adriana Garrido', 'Cliente', 'Mensual', 300, 'Efectivo', 1),
(11, '2025-10-09', 'Gastos de Servicios', 'Gastos', 'N/A', 100, 'Efectivo', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Test User', 'test@example.com', '2025-02-20 20:03:29', '$2y$12$YVO6Z/4/93gDyItFs6IGpeZoeyD86fM5nZ5hGxPQNt3ZTJTxphnNW', 'NhLeyzfSfJ', '2025-02-20 20:03:29', '2025-02-20 20:03:29'),
(2, 'admin', 'danielflrz95@gmail.com', NULL, '$2y$12$tagnBAK4CAWez2C8WOICR.3tIgWHp/JMdVNQEznMaI4Na9Etoel4.', NULL, '2025-02-20 20:04:58', '2025-02-20 20:04:58'),
(3, 'usuario1', 'epicgraff.df@gmail.com', NULL, '$2y$12$2dYfAAGHSUjZPhDnP1pP8OHOOqGpwx/qdeg4A/1..mtUXoHjUq3VG', NULL, '2025-09-03 20:38:48', '2025-09-03 20:38:48');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indices de la tabla `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indices de la tabla `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `metricsclients`
--
ALTER TABLE `metricsclients`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pagos`
--
ALTER TABLE `pagos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=258;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `metricsclients`
--
ALTER TABLE `metricsclients`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `pagos`
--
ALTER TABLE `pagos`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
