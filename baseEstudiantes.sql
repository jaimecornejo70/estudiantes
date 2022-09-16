-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-03-2022 a las 16:24:10
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `estudiantes`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `academic_history`
--

CREATE TABLE `academic_history` (
  `id` int(30) NOT NULL,
  `student_id` int(30) NOT NULL,
  `course_id` int(30) NOT NULL,
  `semester` varchar(200) NOT NULL,
  `year` varchar(200) NOT NULL,
  `school_year` text NOT NULL,
  `status` int(10) NOT NULL DEFAULT 1 COMMENT '1= New,\r\n2= Regular,\r\n3= Returnee,\r\n4= Transferee',
  `end_status` tinyint(3) NOT NULL DEFAULT 0 COMMENT '0=pending,\r\n1=Completed,\r\n2=Dropout,\r\n3=failed,\r\n4=Transferred-out,\r\n5=Graduated',
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `academic_history`
--

INSERT INTO `academic_history` (`id`, `student_id`, `course_id`, `semester`, `year`, `school_year`, `status`, `end_status`, `date_created`, `date_updated`) VALUES
(1, 1, 11, 'First Semester', '1st Year', '2018-2019', 1, 1, '2022-01-27 13:02:36', '2022-01-27 13:22:31'),
(2, 1, 11, 'Second Semester', '1st Year', '2018-2019', 2, 1, '2022-01-27 13:22:24', '2022-01-27 13:22:44'),
(3, 1, 11, 'Third Semester', '1st Year', '2018-2019', 2, 1, '2022-01-27 13:23:32', NULL),
(5, 1, 11, 'First Semester', '2nd Year', '2019-2020', 2, 1, '2022-01-27 13:28:01', NULL),
(6, 1, 11, 'Second Semester', '2nd Year', '2019-2020', 2, 1, '2022-01-27 13:28:26', NULL),
(7, 1, 11, 'Third Semester', '2nd Year', '2019-2020', 2, 2, '2022-01-27 13:28:52', NULL),
(8, 3, 1, 'First Semester', '1', '1999', 1, 0, '2022-03-18 21:39:05', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `course_list`
--

CREATE TABLE `course_list` (
  `id` int(30) NOT NULL,
  `department_id` int(30) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `course_list`
--

INSERT INTO `course_list` (`id`, `department_id`, `name`, `description`, `status`, `delete_flag`, `date_created`, `date_updated`) VALUES
(1, 2, 'Teatro', 'El teatro (del griego “lugar para contemplar”) es la rama del arte escénico relacionada con la actuación, que representa historias frente a una audiencia usando una combinación de discurso, gestos, escenografía, música, sonido y espectáculo', 1, 0, '2022-01-27 10:03:25', '2022-03-18 21:52:08'),
(2, 4, 'Administración Empresas', 'La administración de empresas es un método y práctica organizacional basado en la gestión de sociedades mercantiles con el objetivo de llevarlas a su mayor optimización posible.', 1, 0, '2022-01-27 10:06:43', '2022-03-18 21:47:26'),
(3, 4, 'Gestión Negocios', 'Gestión de Negocios', 1, 0, '2022-01-27 10:07:21', '2022-03-18 21:51:32'),
(4, 4, 'Danza', '“La danza es un movimiento puesto en forma rítmica y espacial, una sucesión de movimientos que comienza, se desarrolla y finaliza”. (Murray, 1974). “Cualquier forma de movimiento que no tenga otra intención para alén de la expresión de sentimientos, de sensaciones o pensamientos, puede ser considerada como danza”.', 1, 0, '2022-01-27 10:07:52', '2022-03-18 21:57:45'),
(5, 4, 'Administración Hotelera', 'La Administración Hotelera y Gastronómica es una profesión que permite desarrollar múltiples competencias de gestión y dirección estratégica de empresas hoteleras y otras asociadas con el turismo.', 1, 0, '2022-01-27 10:08:21', '2022-03-18 22:01:08'),
(6, 1, 'Enfermería', 'La enfermería abarca abarca los cuidados autónomos y en colaboración que se prestan a las personas de todas las edades, familias, grupos y comunidades, enfermas o sanas, en todos los contextos, e incluye la promoción de la salud, la prevención de la enfermedad y los cuidados de los enfermos, discapacitados y personas moribundas. Funciones esenciales de la enfermería son la defensa, el fomento de un entorno seguro, la investigación, la participación en las políticas de salud y en la gestión de los pacientes y los sistemas de salud, y la formación. (CIE, 2002)', 1, 0, '2022-01-27 10:08:48', '2022-03-18 21:49:27'),
(7, 3, 'Física', 'El autor se centra en la apariencia externa del personaje, es decir, describe las características físicas de una persona. Este tipo de descripción también se denomina prosopografía.', 1, 0, '2022-01-27 10:09:00', '2022-03-18 21:59:39'),
(8, 1, 'Medicina', 'Bachelor of Science in Chemical Engineering', 1, 0, '2022-01-27 10:09:35', '2022-03-18 21:47:59'),
(9, 1, 'Quimico', 'La química es el estudio científico de la materia.  Cómo se hicieron o estudiar la composición de una viga de acero para determinar su resistencia.', 1, 0, '2022-01-27 10:10:16', '2022-03-18 21:58:58'),
(10, 1, 'Veterinaria', 'La función principal del/la médico/a veterinario/a es la de diagnosticar, pronosticar, tratar y prevenir las enfermedades que afectan a los animales domésticos, de experimentación, exóticos, salvajes y ganaderos.', 1, 0, '2022-01-27 10:10:39', '2022-03-18 21:52:46'),
(11, 1, 'Psicología', 'La psicología es la ciencia que estudia los procesos mentales. La palabra proviene del griego: psico- (alma o actividad mental) y -logía (estudio). Esta disciplina analiza las tres dimensiones de los mencionados procesos: cognitiva, afectiva y conductual.', 1, 0, '2022-01-27 10:12:23', '2022-03-18 21:50:44'),
(12, 1, 'Bio Fisica', 'La biofísica estudia la vida en todos sus niveles, desde los átomos y moleculas hasta las células, organismoa y ambiente. A medida que progresa la física y la biología, los biofísicos encuentran nuevas áreas para explorar y aplicar su experiencia, crear nuevas herramientas y sobre todo aprender.', 1, 0, '2022-01-27 10:12:35', '2022-03-18 22:00:21');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `department_list`
--

CREATE TABLE `department_list` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `department_list`
--

INSERT INTO `department_list` (`id`, `name`, `description`, `status`, `delete_flag`, `date_created`, `date_updated`) VALUES
(1, 'Salud', 'Salud', 1, 0, '2022-01-27 09:22:31', '2022-03-18 21:42:51'),
(2, 'Artes', 'Artes Integradas', 1, 0, '2022-01-27 09:22:54', '2022-03-18 21:41:25'),
(3, 'Ciencias E', 'Ciencias Naturales y Exactas', 1, 0, '2022-01-27 09:23:20', '2022-03-18 21:41:52'),
(4, 'Ciencias A', 'Ciencias de la Administración', 1, 0, '2022-01-27 09:25:42', '2022-03-18 21:42:17'),
(5, 'Ciencias S', 'Ciencias Sociales y Económicas', 1, 0, '2022-01-27 09:26:35', '2022-03-18 21:43:24'),
(6, 'Sample101', 'Deleted Department', 1, 1, '2022-01-27 09:27:17', '2022-01-27 09:27:28');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `student_list`
--

CREATE TABLE `student_list` (
  `id` int(30) NOT NULL,
  `roll` varchar(100) NOT NULL,
  `firstname` text NOT NULL,
  `middlename` text DEFAULT NULL,
  `lastname` text NOT NULL,
  `gender` varchar(100) NOT NULL,
  `contact` text NOT NULL,
  `present_address` text NOT NULL,
  `permanent_address` text NOT NULL,
  `dob` date NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `student_list`
--

INSERT INTO `student_list` (`id`, `roll`, `firstname`, `middlename`, `lastname`, `gender`, `contact`, `present_address`, `permanent_address`, `dob`, `status`, `delete_flag`, `date_created`, `date_updated`) VALUES
(1, '231415061007', 'Pedro', '', 'Estudiante', 'Male', '09123456789', 'Calle 45 34 2', 'Carrera 32 3 24', '2007-06-23', 1, 0, '2022-01-27 11:14:07', '2022-03-18 22:19:05'),
(3, '121212121', 'Juan', '', 'Estudiante', 'Male', '3022587436', 'Calle 59 59 59', 'Calle 98 98 98', '2013-06-18', 1, 0, '2022-03-18 21:36:00', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `system_info`
--

CREATE TABLE `system_info` (
  `id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `system_info`
--

INSERT INTO `system_info` (`id`, `meta_field`, `meta_value`) VALUES
(1, 'name', 'Sistema de Información de Estudiantes en PHP y MySQL'),
(6, 'short_name', 'SIE'),
(11, 'logo', 'uploads/logo-1647660173.png'),
(13, 'user_avatar', 'uploads/user_avatar.jpg'),
(14, 'cover', 'uploads/cover-1647660173.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `middlename` text DEFAULT NULL,
  `lastname` varchar(250) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `status` int(1) NOT NULL DEFAULT 1 COMMENT '0=not verified, 1 = verified',
  `date_added` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `firstname`, `middlename`, `lastname`, `username`, `password`, `avatar`, `last_login`, `type`, `status`, `date_added`, `date_updated`) VALUES
(1, 'Mauricio', NULL, 'Sevilla', 'configuroweb', '4b67deeb9aba04a5b54632ad19934f26', 'uploads/avatar-1.png?v=1647664149', NULL, 1, 1, '2021-01-20 14:02:37', '2022-03-18 23:29:09'),
(9, 'Juan', NULL, 'Usuario', 'jusuario', '4b67deeb9aba04a5b54632ad19934f26', 'uploads/avatar-9.png?v=1647657184', NULL, 1, 1, '2022-03-18 21:33:04', '2022-03-18 21:33:04');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `academic_history`
--
ALTER TABLE `academic_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `course_id` (`course_id`);

--
-- Indices de la tabla `course_list`
--
ALTER TABLE `course_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `department_id` (`department_id`);

--
-- Indices de la tabla `department_list`
--
ALTER TABLE `department_list`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `student_list`
--
ALTER TABLE `student_list`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `system_info`
--
ALTER TABLE `system_info`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `academic_history`
--
ALTER TABLE `academic_history`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `course_list`
--
ALTER TABLE `course_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `department_list`
--
ALTER TABLE `department_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `student_list`
--
ALTER TABLE `student_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `system_info`
--
ALTER TABLE `system_info`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `academic_history`
--
ALTER TABLE `academic_history`
  ADD CONSTRAINT `academic_history_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student_list` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `academic_history_ibfk_2` FOREIGN KEY (`course_id`) REFERENCES `course_list` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `course_list`
--
ALTER TABLE `course_list`
  ADD CONSTRAINT `course_list_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `department_list` (`id`) ON DELETE CASCADE;
COMMIT;

