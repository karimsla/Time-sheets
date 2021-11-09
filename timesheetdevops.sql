-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 09, 2021 at 04:45 PM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `timesheetdevops`
--

-- --------------------------------------------------------

--
-- Table structure for table `contrat`
--

DROP TABLE IF EXISTS `contrat`;
CREATE TABLE IF NOT EXISTS `contrat` (
  `reference` int(11) NOT NULL AUTO_INCREMENT,
  `date_debut` date DEFAULT NULL,
  `salaire` float NOT NULL,
  `type_contrat` varchar(255) DEFAULT NULL,
  `employe_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`reference`),
  KEY `FKidi9k1fvw6mma24yqoe2kmtju` (`employe_id`)
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contrat`
--

INSERT INTO `contrat` (`reference`, `date_debut`, `salaire`, `type_contrat`, `employe_id`) VALUES
(1, '2021-10-26', 2000, 'CDI', 3),
(2, '2021-10-26', 2000, 'CDI', 6),
(3, '2021-10-26', 2000, 'CDI', 9),
(4, '2021-10-27', 2000, 'CDI', 15),
(5, '2021-10-27', 2000, 'CDI', 18),
(6, '2021-10-27', 2000, 'CDI', 21),
(7, '2021-10-27', 2000, 'CDI', 24),
(8, '2021-10-27', 2000, 'CDI', 27),
(9, '2021-10-27', 2000, 'CDI', 30),
(10, '2021-10-27', 2000, 'CDI', 33),
(11, '2021-10-27', 2000, 'CDI', 36),
(12, '2021-10-27', 2000, 'CDI', 39),
(13, '2021-10-27', 2000, 'CDI', 42),
(14, '2021-10-27', 2000, 'CDI', 45),
(15, '2021-10-27', 2000, 'CDI', 48),
(16, '2021-10-27', 2000, 'CDI', 51),
(17, '2021-10-27', 2000, 'CDI', 54),
(18, '2021-10-27', 2000, 'CDI', 57),
(19, '2021-10-27', 2000, 'CDI', 60),
(20, '2021-10-27', 2000, 'CDI', 63),
(21, '2021-10-27', 2000, 'CDI', 66),
(22, '2021-10-27', 2000, 'CDI', 69),
(23, '2021-10-27', 2000, 'CDI', 72),
(24, '2021-10-27', 2000, 'CDI', 75),
(25, '2021-10-27', 2000, 'CDI', 78),
(26, '2021-10-27', 2000, 'CDI', 81),
(27, '2021-10-27', 2000, 'CDI', 84),
(28, '2021-10-27', 2000, 'CDI', 87),
(29, '2021-11-07', 2000, 'CDI', 90),
(30, '2021-11-07', 2000, 'CDI', 93),
(31, '2021-11-09', 2000, 'CDI', 96),
(32, '2021-11-09', 2000, 'CDI', 99),
(33, '2021-11-09', 2000, 'CDI', 102),
(34, '2021-11-09', 2000, 'CDI', 105),
(35, '2021-11-09', 2000, 'CDI', 108),
(36, '2021-11-09', 2000, 'CDI', 111),
(37, '2021-11-09', 2000, 'CDI', 114);

-- --------------------------------------------------------

--
-- Table structure for table `departement`
--

DROP TABLE IF EXISTS `departement`;
CREATE TABLE IF NOT EXISTS `departement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `entreprise_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKkg0jmw8ih55tnlfet3ucbkfsy` (`entreprise_id`)
) ENGINE=MyISAM AUTO_INCREMENT=86 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `departement`
--

INSERT INTO `departement` (`id`, `name`, `entreprise_id`) VALUES
(1, 'IT Departement', NULL),
(2, 'IT Departement', NULL),
(3, 'IT Departement', NULL),
(4, 'IT Departement', NULL),
(5, 'IT Departement', NULL),
(6, 'IT Departement', NULL),
(7, 'IT Departement', NULL),
(8, 'IT Departement', NULL),
(9, 'IT Departement', NULL),
(10, 'D1', NULL),
(11, 'IT Departement', NULL),
(12, 'D1', NULL),
(13, 'D1', NULL),
(14, 'D1', NULL),
(15, 'D1', NULL),
(16, 'D1', NULL),
(17, 'D1', NULL),
(18, 'D1', NULL),
(19, 'D1', NULL),
(20, 'D1', NULL),
(21, 'D1', NULL),
(22, 'D1', NULL),
(23, 'D1', NULL),
(24, 'D1', NULL),
(25, 'IT Departement', NULL),
(26, 'D1', NULL),
(27, 'IT Departement', NULL),
(28, 'D1', NULL),
(29, 'IT Departement', NULL),
(30, 'D1', NULL),
(31, 'IT Departement', NULL),
(32, 'D1', NULL),
(33, 'IT Departement', NULL),
(34, 'D1', NULL),
(35, 'IT Departement', NULL),
(36, 'D1', NULL),
(37, 'IT Departement', NULL),
(38, 'D1', NULL),
(39, 'IT Departement', NULL),
(40, 'D1', NULL),
(41, 'IT Departement', NULL),
(42, 'D1', NULL),
(43, 'IT Departement', NULL),
(44, 'D1', NULL),
(45, 'IT Departement', NULL),
(46, 'D1', NULL),
(47, 'IT Departement', NULL),
(48, 'D1', NULL),
(49, 'IT Departement', NULL),
(50, 'D1', NULL),
(51, 'IT Departement', NULL),
(52, 'D1', NULL),
(53, 'IT Departement', NULL),
(54, 'D1', NULL),
(55, 'IT Departement', NULL),
(56, 'D1', NULL),
(57, 'IT Departement', NULL),
(58, 'D1', NULL),
(59, 'IT Departement', NULL),
(60, 'D1', NULL),
(61, 'IT Departement', NULL),
(62, 'D1', NULL),
(63, 'IT Departement', NULL),
(64, 'D1', NULL),
(65, 'IT Departement', NULL),
(66, 'D1', NULL),
(67, 'IT Departement', NULL),
(68, 'D1', NULL),
(69, 'IT Departement', NULL),
(70, 'D1', NULL),
(71, 'IT Departement', NULL),
(72, 'D1', NULL),
(73, 'D1', NULL),
(74, 'IT Departement', NULL),
(75, 'D1', NULL),
(76, 'IT Departement', NULL),
(77, 'D1', NULL),
(78, 'IT Departement', NULL),
(79, 'D1', NULL),
(80, 'IT Departement', NULL),
(81, 'D1', NULL),
(82, 'IT Departement', NULL),
(83, 'D1', NULL),
(84, 'IT Departement', NULL),
(85, 'D1', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `departement_employes`
--

DROP TABLE IF EXISTS `departement_employes`;
CREATE TABLE IF NOT EXISTS `departement_employes` (
  `departements_id` int(11) NOT NULL,
  `employes_id` int(11) NOT NULL,
  KEY `FKp688tcln21xhsg34l5ltk164s` (`employes_id`),
  KEY `FK1lnr2unyxtqxd0olwlepjt0gp` (`departements_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `departement_employes`
--

INSERT INTO `departement_employes` (`departements_id`, `employes_id`) VALUES
(1, 1),
(2, 4),
(3, 7),
(4, 10),
(5, 11),
(6, 12),
(7, 13),
(8, 16),
(9, 19),
(11, 22),
(25, 25),
(27, 28),
(29, 31),
(31, 34),
(33, 37),
(35, 40),
(37, 43),
(39, 46),
(41, 49),
(43, 52),
(45, 55),
(47, 58),
(49, 61),
(51, 64),
(53, 67),
(55, 70),
(57, 73),
(59, 76),
(61, 79),
(63, 82),
(65, 85),
(67, 88),
(69, 91),
(71, 94),
(74, 97),
(76, 100),
(78, 103),
(80, 106),
(82, 109),
(84, 112);

-- --------------------------------------------------------

--
-- Table structure for table `employe`
--

DROP TABLE IF EXISTS `employe`;
CREATE TABLE IF NOT EXISTS `employe` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `is_actif` bit(1) NOT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `prenom` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=115 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employe`
--

INSERT INTO `employe` (`id`, `email`, `is_actif`, `nom`, `prenom`, `role`) VALUES
(1, 'k.sleimi@gmail.com', b'1', 'karim', 'slaimi', 'TECHNICIEN'),
(2, 'k.sleimi@gmail.com', b'1', 'karim', 'slaimi', 'TECHNICIEN'),
(3, 'k.sleimi@gmail.com', b'1', 'karim', 'slaimi', 'TECHNICIEN'),
(4, 'k.sleimi@gmail.com', b'1', 'karim', 'slaimi', 'TECHNICIEN'),
(5, 'k.sleimi@gmail.com', b'1', 'karim', 'slaimi', 'TECHNICIEN'),
(6, 'k.sleimi@gmail.com', b'1', 'karim', 'slaimi', 'TECHNICIEN'),
(7, 'k.sleimi@gmail.com', b'1', 'karim', 'slaimi', 'TECHNICIEN'),
(8, 'k.sleimi@gmail.com', b'1', 'karim', 'slaimi', 'TECHNICIEN'),
(9, 'k.sleimi@gmail.com', b'1', 'karim', 'slaimi', 'TECHNICIEN'),
(10, 'k.sleimi@gmail.com', b'1', 'karim', 'slaimi', 'TECHNICIEN'),
(11, 'k.sleimi@gmail.com', b'1', 'karim', 'slaimi', 'TECHNICIEN'),
(12, 'k.sleimi@gmail.com', b'1', 'karim', 'slaimi', 'TECHNICIEN'),
(13, 'k.sleimi@gmail.com', b'1', 'karim', 'slaimi', 'TECHNICIEN'),
(14, 'k.sleimi@gmail.com', b'1', 'karim', 'slaimi', 'TECHNICIEN'),
(15, 'k.sleimi@gmail.com', b'1', 'karim', 'slaimi', 'TECHNICIEN'),
(16, 'k.sleimi@gmail.com', b'1', 'karim', 'slaimi', 'TECHNICIEN'),
(17, 'k.sleimi@gmail.com', b'1', 'karim', 'slaimi', 'TECHNICIEN'),
(18, 'k.sleimi@gmail.com', b'1', 'karim', 'slaimi', 'TECHNICIEN'),
(19, 'k.sleimi@gmail.com', b'1', 'karim', 'slaimi', 'TECHNICIEN'),
(20, 'k.sleimi@gmail.com', b'1', 'karim', 'slaimi', 'TECHNICIEN'),
(21, 'k.sleimi@gmail.com', b'1', 'karim', 'slaimi', 'TECHNICIEN'),
(22, 'k.sleimi@gmail.com', b'1', 'karim', 'slaimi', 'TECHNICIEN'),
(23, 'k.sleimi@gmail.com', b'1', 'karim', 'slaimi', 'TECHNICIEN'),
(24, 'k.sleimi@gmail.com', b'1', 'karim', 'slaimi', 'TECHNICIEN'),
(25, 'k.sleimi@gmail.com', b'1', 'karim', 'slaimi', 'TECHNICIEN'),
(26, 'k.sleimi@gmail.com', b'1', 'karim', 'slaimi', 'TECHNICIEN'),
(27, 'k.sleimi@gmail.com', b'1', 'karim', 'slaimi', 'TECHNICIEN'),
(28, 'k.sleimi@gmail.com', b'1', 'karim', 'slaimi', 'TECHNICIEN'),
(29, 'k.sleimi@gmail.com', b'1', 'karim', 'slaimi', 'TECHNICIEN'),
(30, 'k.sleimi@gmail.com', b'1', 'karim', 'slaimi', 'TECHNICIEN'),
(31, 'k.sleimi@gmail.com', b'1', 'karim', 'slaimi', 'TECHNICIEN'),
(32, 'k.sleimi@gmail.com', b'1', 'karim', 'slaimi', 'TECHNICIEN'),
(33, 'k.sleimi@gmail.com', b'1', 'karim', 'slaimi', 'TECHNICIEN'),
(34, 'k.sleimi@gmail.com', b'1', 'karim', 'slaimi', 'TECHNICIEN'),
(35, 'k.sleimi@gmail.com', b'1', 'karim', 'slaimi', 'TECHNICIEN'),
(36, 'k.sleimi@gmail.com', b'1', 'karim', 'slaimi', 'TECHNICIEN'),
(37, 'k.sleimi@gmail.com', b'1', 'karim', 'slaimi', 'TECHNICIEN'),
(38, 'k.sleimi@gmail.com', b'1', 'karim', 'slaimi', 'TECHNICIEN'),
(39, 'k.sleimi@gmail.com', b'1', 'karim', 'slaimi', 'TECHNICIEN'),
(40, 'k.sleimi@gmail.com', b'1', 'karim', 'slaimi', 'TECHNICIEN'),
(41, 'k.sleimi@gmail.com', b'1', 'karim', 'slaimi', 'TECHNICIEN'),
(42, 'k.sleimi@gmail.com', b'1', 'karim', 'slaimi', 'TECHNICIEN'),
(43, 'k.sleimi@gmail.com', b'1', 'karim', 'slaimi', 'TECHNICIEN'),
(44, 'k.sleimi@gmail.com', b'1', 'karim', 'slaimi', 'TECHNICIEN'),
(45, 'k.sleimi@gmail.com', b'1', 'karim', 'slaimi', 'TECHNICIEN'),
(46, 'k.sleimi@gmail.com', b'1', 'karim', 'slaimi', 'TECHNICIEN'),
(47, 'k.sleimi@gmail.com', b'1', 'karim', 'slaimi', 'TECHNICIEN'),
(48, 'k.sleimi@gmail.com', b'1', 'karim', 'slaimi', 'TECHNICIEN'),
(49, 'k.sleimi@gmail.com', b'1', 'karim', 'slaimi', 'TECHNICIEN'),
(50, 'k.sleimi@gmail.com', b'1', 'karim', 'slaimi', 'TECHNICIEN'),
(51, 'k.sleimi@gmail.com', b'1', 'karim', 'slaimi', 'TECHNICIEN'),
(52, 'k.sleimi@gmail.com', b'1', 'karim', 'slaimi', 'TECHNICIEN'),
(53, 'k.sleimi@gmail.com', b'1', 'karim', 'slaimi', 'TECHNICIEN'),
(54, 'k.sleimi@gmail.com', b'1', 'karim', 'slaimi', 'TECHNICIEN'),
(55, 'k.sleimi@gmail.com', b'1', 'karim', 'slaimi', 'TECHNICIEN'),
(56, 'k.sleimi@gmail.com', b'1', 'karim', 'slaimi', 'TECHNICIEN'),
(57, 'k.sleimi@gmail.com', b'1', 'karim', 'slaimi', 'TECHNICIEN'),
(58, 'k.sleimi@gmail.com', b'1', 'karim', 'slaimi', 'TECHNICIEN'),
(59, 'k.sleimi@gmail.com', b'1', 'karim', 'slaimi', 'TECHNICIEN'),
(60, 'k.sleimi@gmail.com', b'1', 'karim', 'slaimi', 'TECHNICIEN'),
(61, 'k.sleimi@gmail.com', b'1', 'karim', 'slaimi', 'TECHNICIEN'),
(62, 'k.sleimi@gmail.com', b'1', 'karim', 'slaimi', 'TECHNICIEN'),
(63, 'k.sleimi@gmail.com', b'1', 'karim', 'slaimi', 'TECHNICIEN'),
(64, 'k.sleimi@gmail.com', b'1', 'karim', 'slaimi', 'TECHNICIEN'),
(65, 'k.sleimi@gmail.com', b'1', 'karim', 'slaimi', 'TECHNICIEN'),
(66, 'k.sleimi@gmail.com', b'1', 'karim', 'slaimi', 'TECHNICIEN'),
(67, 'k.sleimi@gmail.com', b'1', 'karim', 'slaimi', 'TECHNICIEN'),
(68, 'k.sleimi@gmail.com', b'1', 'karim', 'slaimi', 'TECHNICIEN'),
(69, 'k.sleimi@gmail.com', b'1', 'karim', 'slaimi', 'TECHNICIEN'),
(70, 'k.sleimi@gmail.com', b'1', 'karim', 'slaimi', 'TECHNICIEN'),
(71, 'k.sleimi@gmail.com', b'1', 'karim', 'slaimi', 'TECHNICIEN'),
(72, 'k.sleimi@gmail.com', b'1', 'karim', 'slaimi', 'TECHNICIEN'),
(73, 'k.sleimi@gmail.com', b'1', 'karim', 'slaimi', 'TECHNICIEN'),
(74, 'k.sleimi@gmail.com', b'1', 'karim', 'slaimi', 'TECHNICIEN'),
(75, 'k.sleimi@gmail.com', b'1', 'karim', 'slaimi', 'TECHNICIEN'),
(76, 'k.sleimi@gmail.com', b'1', 'karim', 'slaimi', 'TECHNICIEN'),
(77, 'k.sleimi@gmail.com', b'1', 'karim', 'slaimi', 'TECHNICIEN'),
(78, 'k.sleimi@gmail.com', b'1', 'karim', 'slaimi', 'TECHNICIEN'),
(79, 'k.sleimi@gmail.com', b'1', 'karim', 'slaimi', 'TECHNICIEN'),
(80, 'k.sleimi@gmail.com', b'1', 'karim', 'slaimi', 'TECHNICIEN'),
(81, 'k.sleimi@gmail.com', b'1', 'karim', 'slaimi', 'TECHNICIEN'),
(82, 'k.sleimi@gmail.com', b'1', 'karim', 'slaimi', 'TECHNICIEN'),
(83, 'k.sleimi@gmail.com', b'1', 'karim', 'slaimi', 'TECHNICIEN'),
(84, 'k.sleimi@gmail.com', b'1', 'karim', 'slaimi', 'TECHNICIEN'),
(85, 'k.sleimi@gmail.com', b'1', 'karim', 'slaimi', 'TECHNICIEN'),
(86, 'k.sleimi@gmail.com', b'1', 'karim', 'slaimi', 'TECHNICIEN'),
(87, 'k.sleimi@gmail.com', b'1', 'karim', 'slaimi', 'TECHNICIEN'),
(88, 'k.sleimi@gmail.com', b'1', 'karim', 'slaimi', 'TECHNICIEN'),
(89, 'k.sleimi@gmail.com', b'1', 'karim', 'slaimi', 'TECHNICIEN'),
(90, 'k.sleimi@gmail.com', b'1', 'karim', 'slaimi', 'TECHNICIEN'),
(91, 'k.sleimi@gmail.com', b'1', 'karim', 'slaimi', 'TECHNICIEN'),
(92, 'k.sleimi@gmail.com', b'1', 'karim', 'slaimi', 'TECHNICIEN'),
(93, 'k.sleimi@gmail.com', b'1', 'karim', 'slaimi', 'TECHNICIEN'),
(94, 'k.sleimi@gmail.com', b'1', 'karim', 'slaimi', 'TECHNICIEN'),
(95, 'k.sleimi@gmail.com', b'1', 'karim', 'slaimi', 'TECHNICIEN'),
(96, 'k.sleimi@gmail.com', b'1', 'karim', 'slaimi', 'TECHNICIEN'),
(97, 'k.sleimi@gmail.com', b'1', 'karim', 'slaimi', 'TECHNICIEN'),
(98, 'k.sleimi@gmail.com', b'1', 'karim', 'slaimi', 'TECHNICIEN'),
(99, 'k.sleimi@gmail.com', b'1', 'karim', 'slaimi', 'TECHNICIEN'),
(100, 'k.sleimi@gmail.com', b'1', 'karim', 'slaimi', 'TECHNICIEN'),
(101, 'k.sleimi@gmail.com', b'1', 'karim', 'slaimi', 'TECHNICIEN'),
(102, 'k.sleimi@gmail.com', b'1', 'karim', 'slaimi', 'TECHNICIEN'),
(103, 'k.sleimi@gmail.com', b'1', 'karim', 'slaimi', 'TECHNICIEN'),
(104, 'k.sleimi@gmail.com', b'1', 'karim', 'slaimi', 'TECHNICIEN'),
(105, 'k.sleimi@gmail.com', b'1', 'karim', 'slaimi', 'TECHNICIEN'),
(106, 'k.sleimi@gmail.com', b'1', 'karim', 'slaimi', 'TECHNICIEN'),
(107, 'k.sleimi@gmail.com', b'1', 'karim', 'slaimi', 'TECHNICIEN'),
(108, 'k.sleimi@gmail.com', b'1', 'karim', 'slaimi', 'TECHNICIEN'),
(109, 'k.sleimi@gmail.com', b'1', 'karim', 'slaimi', 'TECHNICIEN'),
(110, 'k.sleimi@gmail.com', b'1', 'karim', 'slaimi', 'TECHNICIEN'),
(111, 'k.sleimi@gmail.com', b'1', 'karim', 'slaimi', 'TECHNICIEN'),
(112, 'k.sleimi@gmail.com', b'1', 'karim', 'slaimi', 'TECHNICIEN'),
(113, 'k.sleimi@gmail.com', b'1', 'karim', 'slaimi', 'TECHNICIEN'),
(114, 'k.sleimi@gmail.com', b'1', 'karim', 'slaimi', 'TECHNICIEN');

-- --------------------------------------------------------

--
-- Table structure for table `entreprise`
--

DROP TABLE IF EXISTS `entreprise`;
CREATE TABLE IF NOT EXISTS `entreprise` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `raison_social` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mission`
--

DROP TABLE IF EXISTS `mission`;
CREATE TABLE IF NOT EXISTS `mission` (
  `dtype` varchar(31) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email_facturation` varchar(255) DEFAULT NULL,
  `taux_journalier_moyen` float DEFAULT NULL,
  `departement_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKso6moxdlog3powkcqulmtfg1s` (`departement_id`)
) ENGINE=MyISAM AUTO_INCREMENT=126 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mission`
--

INSERT INTO `mission` (`dtype`, `id`, `description`, `name`, `email_facturation`, `taux_journalier_moyen`, `departement_id`) VALUES
('Mission', 1, 'D1', 'M1', NULL, NULL, NULL),
('Mission', 2, 'D1', 'M1', NULL, NULL, NULL),
('Mission', 3, NULL, 'M1', NULL, NULL, 10),
('Mission', 4, 'D1', 'M1', NULL, NULL, NULL),
('Mission', 5, 'D1', 'M1', NULL, NULL, NULL),
('Mission', 6, NULL, 'M1', NULL, NULL, 12),
('Mission', 7, 'D1', 'M1', NULL, NULL, NULL),
('Mission', 8, 'D1', 'M1', NULL, NULL, NULL),
('Mission', 9, NULL, 'M1', NULL, NULL, 13),
('Mission', 10, 'D1', 'M1', NULL, NULL, NULL),
('Mission', 11, 'D1', 'M1', NULL, NULL, NULL),
('Mission', 12, NULL, 'M1', NULL, NULL, 14),
('Mission', 13, 'D1', 'M1', NULL, NULL, NULL),
('Mission', 14, 'D1', 'M1', NULL, NULL, NULL),
('Mission', 15, NULL, 'M1', NULL, NULL, 15),
('Mission', 16, 'D1', 'M1', NULL, NULL, NULL),
('Mission', 17, 'D1', 'M1', NULL, NULL, NULL),
('Mission', 18, NULL, 'M1', NULL, NULL, 16),
('Mission', 19, 'D1', 'M1', NULL, NULL, NULL),
('Mission', 20, 'D1', 'M1', NULL, NULL, NULL),
('Mission', 21, NULL, 'M1', NULL, NULL, 17),
('Mission', 22, 'D1', 'M1', NULL, NULL, NULL),
('Mission', 23, 'D1', 'M1', NULL, NULL, NULL),
('Mission', 24, NULL, 'M1', NULL, NULL, 18),
('Mission', 25, NULL, 'M1', NULL, NULL, 19),
('Mission', 26, NULL, 'M1', NULL, NULL, 20),
('Mission', 27, NULL, 'M1', NULL, NULL, 21),
('Mission', 28, NULL, 'M1', NULL, NULL, 22),
('Mission', 29, NULL, 'M1', NULL, NULL, 23),
('Mission', 30, NULL, 'M1', NULL, NULL, 24),
('Mission', 31, 'D1', 'M1', NULL, NULL, NULL),
('Mission', 32, 'D1', 'M1', NULL, NULL, NULL),
('Mission', 33, NULL, 'M1', NULL, NULL, 26),
('Mission', 34, 'D1', 'M1', NULL, NULL, NULL),
('Mission', 35, 'D1', 'M1', NULL, NULL, NULL),
('Mission', 36, NULL, 'M1', NULL, NULL, 28),
('Mission', 37, 'D1', 'M1', NULL, NULL, NULL),
('Mission', 38, 'D1', 'M1', NULL, NULL, NULL),
('Mission', 39, NULL, 'M1', NULL, NULL, 30),
('Mission', 40, 'D1', 'M1', NULL, NULL, NULL),
('Mission', 41, 'D1', 'M1', NULL, NULL, NULL),
('Mission', 42, NULL, 'M1', NULL, NULL, 32),
('Mission', 43, 'D1', 'M1', NULL, NULL, NULL),
('Mission', 44, 'D1', 'M1', NULL, NULL, NULL),
('Mission', 45, NULL, 'M1', NULL, NULL, 34),
('Mission', 46, 'D1', 'M1', NULL, NULL, NULL),
('Mission', 47, 'D1', 'M1', NULL, NULL, NULL),
('Mission', 48, NULL, 'M1', NULL, NULL, 36),
('Mission', 49, 'D1', 'M1', NULL, NULL, NULL),
('Mission', 50, 'D1', 'M1', NULL, NULL, NULL),
('Mission', 51, NULL, 'M1', NULL, NULL, 38),
('Mission', 52, 'D1', 'M1', NULL, NULL, NULL),
('Mission', 53, 'D1', 'M1', NULL, NULL, NULL),
('Mission', 54, NULL, 'M1', NULL, NULL, 40),
('Mission', 55, 'D1', 'M1', NULL, NULL, NULL),
('Mission', 56, 'D1', 'M1', NULL, NULL, NULL),
('Mission', 57, NULL, 'M1', NULL, NULL, 42),
('Mission', 58, 'D1', 'M1', NULL, NULL, NULL),
('Mission', 59, 'D1', 'M1', NULL, NULL, NULL),
('Mission', 60, NULL, 'M1', NULL, NULL, 44),
('Mission', 61, 'D1', 'M1', NULL, NULL, NULL),
('Mission', 62, 'D1', 'M1', NULL, NULL, NULL),
('Mission', 63, NULL, 'M1', NULL, NULL, 46),
('Mission', 64, 'D1', 'M1', NULL, NULL, NULL),
('Mission', 65, 'D1', 'M1', NULL, NULL, NULL),
('Mission', 66, NULL, 'M1', NULL, NULL, 48),
('Mission', 67, 'D1', 'M1', NULL, NULL, NULL),
('Mission', 68, 'D1', 'M1', NULL, NULL, NULL),
('Mission', 69, NULL, 'M1', NULL, NULL, 50),
('Mission', 70, 'D1', 'M1', NULL, NULL, NULL),
('Mission', 71, 'D1', 'M1', NULL, NULL, NULL),
('Mission', 72, NULL, 'M1', NULL, NULL, 52),
('Mission', 73, 'D1', 'M1', NULL, NULL, NULL),
('Mission', 74, 'D1', 'M1', NULL, NULL, NULL),
('Mission', 75, NULL, 'M1', NULL, NULL, 54),
('Mission', 76, 'D1', 'M1', NULL, NULL, NULL),
('Mission', 77, 'D1', 'M1', NULL, NULL, NULL),
('Mission', 78, NULL, 'M1', NULL, NULL, 56),
('Mission', 79, 'D1', 'M1', NULL, NULL, NULL),
('Mission', 80, 'D1', 'M1', NULL, NULL, NULL),
('Mission', 81, NULL, 'M1', NULL, NULL, 58),
('Mission', 82, 'D1', 'M1', NULL, NULL, NULL),
('Mission', 83, 'D1', 'M1', NULL, NULL, NULL),
('Mission', 84, NULL, 'M1', NULL, NULL, 60),
('Mission', 85, 'D1', 'M1', NULL, NULL, NULL),
('Mission', 86, 'D1', 'M1', NULL, NULL, NULL),
('Mission', 87, NULL, 'M1', NULL, NULL, 62),
('Mission', 88, 'D1', 'M1', NULL, NULL, NULL),
('Mission', 89, 'D1', 'M1', NULL, NULL, NULL),
('Mission', 90, NULL, 'M1', NULL, NULL, 64),
('Mission', 91, 'D1', 'M1', NULL, NULL, NULL),
('Mission', 92, 'D1', 'M1', NULL, NULL, NULL),
('Mission', 93, NULL, 'M1', NULL, NULL, 66),
('Mission', 94, 'D1', 'M1', NULL, NULL, NULL),
('Mission', 95, 'D1', 'M1', NULL, NULL, NULL),
('Mission', 96, NULL, 'M1', NULL, NULL, 68),
('Mission', 97, 'D1', 'M1', NULL, NULL, NULL),
('Mission', 98, 'D1', 'M1', NULL, NULL, NULL),
('Mission', 99, NULL, 'M1', NULL, NULL, 70),
('Mission', 100, 'D1', 'M1', NULL, NULL, NULL),
('Mission', 101, 'D1', 'M1', NULL, NULL, NULL),
('Mission', 102, NULL, 'M1', NULL, NULL, 72),
('Mission', 103, 'D1', 'M1', NULL, NULL, NULL),
('Mission', 104, 'D1', 'M1', NULL, NULL, NULL),
('Mission', 105, NULL, 'M1', NULL, NULL, 73),
('Mission', 106, 'D1', 'M1', NULL, NULL, NULL),
('Mission', 107, 'D1', 'M1', NULL, NULL, NULL),
('Mission', 108, 'D1', 'M1', NULL, NULL, NULL),
('Mission', 109, 'D1', 'M1', NULL, NULL, NULL),
('Mission', 110, NULL, 'M1', NULL, NULL, 75),
('Mission', 111, 'D1', 'M1', NULL, NULL, NULL),
('Mission', 112, 'D1', 'M1', NULL, NULL, NULL),
('Mission', 113, NULL, 'M1', NULL, NULL, 77),
('Mission', 114, 'D1', 'M1', NULL, NULL, NULL),
('Mission', 115, 'D1', 'M1', NULL, NULL, NULL),
('Mission', 116, NULL, 'M1', NULL, NULL, 79),
('Mission', 117, 'D1', 'M1', NULL, NULL, NULL),
('Mission', 118, 'D1', 'M1', NULL, NULL, NULL),
('Mission', 119, NULL, 'M1', NULL, NULL, 81),
('Mission', 120, 'D1', 'M1', NULL, NULL, NULL),
('Mission', 121, 'D1', 'M1', NULL, NULL, NULL),
('Mission', 122, NULL, 'M1', NULL, NULL, 83),
('Mission', 123, 'D1', 'M1', NULL, NULL, NULL),
('Mission', 124, 'D1', 'M1', NULL, NULL, NULL),
('Mission', 125, NULL, 'M1', NULL, NULL, 85);

-- --------------------------------------------------------

--
-- Table structure for table `timesheet`
--

DROP TABLE IF EXISTS `timesheet`;
CREATE TABLE IF NOT EXISTS `timesheet` (
  `date_debut` date NOT NULL,
  `date_fin` date NOT NULL,
  `id_employe` int(11) NOT NULL,
  `id_mission` int(11) NOT NULL,
  `is_valide` bit(1) NOT NULL,
  PRIMARY KEY (`date_debut`,`date_fin`,`id_employe`,`id_mission`),
  KEY `FK2skc3sqdd7v35jgqrdfimuqxr` (`id_employe`),
  KEY `FKbauiu1nsna8neie2d892t99vq` (`id_mission`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `timesheet`
--

INSERT INTO `timesheet` (`date_debut`, `date_fin`, `id_employe`, `id_mission`, `is_valide`) VALUES
('2015-03-23', '2015-03-23', 0, 2, b'0'),
('2015-03-23', '2015-03-23', 0, 5, b'0'),
('2015-03-23', '2015-03-23', 0, 8, b'0'),
('2015-03-23', '2015-03-23', 1, 11, b'0'),
('2015-03-23', '2015-03-23', 1, 14, b'0'),
('2015-03-23', '2015-03-23', 1, 17, b'0'),
('2015-03-23', '2015-03-23', 1, 20, b'0'),
('2015-03-23', '2015-03-23', 1, 23, b'0'),
('2015-03-23', '2015-03-23', 1, 32, b'0'),
('2015-03-23', '2015-03-23', 1, 35, b'0'),
('2015-03-23', '2015-03-23', 1, 38, b'0'),
('2015-03-23', '2015-03-23', 1, 41, b'0'),
('2015-03-23', '2015-03-23', 1, 44, b'0'),
('2015-03-23', '2015-03-23', 1, 47, b'0'),
('2015-03-23', '2015-03-23', 1, 50, b'0'),
('2015-03-23', '2015-03-23', 1, 53, b'0'),
('2015-03-23', '2015-03-23', 1, 56, b'0'),
('2015-03-23', '2015-03-23', 1, 59, b'0'),
('2015-03-23', '2015-03-23', 1, 62, b'0'),
('2015-03-23', '2015-03-23', 1, 65, b'0'),
('2015-03-23', '2015-03-23', 1, 68, b'0'),
('2015-03-23', '2015-03-23', 1, 71, b'0'),
('2015-03-23', '2015-03-23', 1, 74, b'0'),
('2015-03-23', '2015-03-23', 1, 77, b'0'),
('2015-03-23', '2015-03-23', 1, 80, b'0'),
('2015-03-23', '2015-03-23', 1, 83, b'0'),
('2015-03-23', '2015-03-23', 1, 86, b'0'),
('2015-03-23', '2015-03-23', 1, 89, b'0'),
('2015-03-23', '2015-03-23', 1, 92, b'0'),
('2015-03-23', '2015-03-23', 1, 95, b'0'),
('2015-03-23', '2015-03-23', 1, 98, b'0'),
('2015-03-23', '2015-03-23', 1, 101, b'0'),
('2015-03-23', '2015-03-23', 1, 104, b'0'),
('2015-03-23', '2015-03-23', 1, 106, b'0'),
('2015-03-23', '2015-03-23', 1, 107, b'0'),
('2015-03-23', '2015-03-23', 1, 109, b'0'),
('2015-03-23', '2015-03-23', 1, 112, b'0'),
('2015-03-23', '2015-03-23', 1, 115, b'0'),
('2015-03-23', '2015-03-23', 1, 118, b'0'),
('2015-03-23', '2015-03-23', 1, 121, b'0'),
('2015-03-23', '2015-03-23', 1, 124, b'0');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
