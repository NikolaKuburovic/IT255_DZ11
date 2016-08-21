-- phpMyAdmin SQL Dump
-- version 3.4.10.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 21, 2016 at 01:38 PM
-- Server version: 5.5.50
-- PHP Version: 5.3.10-1ubuntu3.24

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `met_hotels`
--

-- --------------------------------------------------------

--
-- Table structure for table `hotel`
--

CREATE TABLE IF NOT EXISTS `hotel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `naziv` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `brojSoba` int(11) NOT NULL,
  `kategorija` int(11) NOT NULL,
  `adresa` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `lokacija` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `hotel`
--

INSERT INTO `hotel` (`id`, `naziv`, `brojSoba`, `kategorija`, `adresa`, `lokacija`) VALUES
(1, 'MetMount', 70, 3, 'Crni Vrh', 'Crni Vrh'),
(2, 'MetPark', 30, 4, 'Nova ulica 4', 'Vrnjacka Banja'),
(3, 'MetNature', 40, 5, 'Bulevar 70', 'Novi Sad');

-- --------------------------------------------------------

--
-- Table structure for table `korisnik`
--

CREATE TABLE IF NOT EXISTS `korisnik` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ime` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `prezime` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=11 ;

--
-- Dumping data for table `korisnik`
--

INSERT INTO `korisnik` (`id`, `ime`, `prezime`, `username`, `password`) VALUES
(1, 'Jovan', 'Jovanovic', 'jojov', 'e10adc3949ba59abbe56e057f20f883e'),
(2, 'Milan', 'Milanovic', 'mill', 'e10adc3949ba59abbe56e057f20f883e'),
(3, 'Jovana', 'Jovanovic', 'jovajo', 'e10adc3949ba59abbe56e057f20f883e'),
(4, 'Petar', 'Petrovic', 'petrov', 'e10adc3949ba59abbe56e057f20f883e'),
(5, 'Dusko', 'Duskovic', 'dusk', 'e10adc3949ba59abbe56e057f20f883e'),
(6, 'Vesna', 'Vesnic', 'vesve', 'e10adc3949ba59abbe56e057f20f883e'),
(7, 'Janko', 'Jankovic', 'janko', 'e10adc3949ba59abbe56e057f20f883e'),
(8, 'Milos', 'Milosevic', 'milosm', 'e10adc3949ba59abbe56e057f20f883e'),
(9, 'Stojan', 'Stojanovic', 'stojann', 'e10adc3949ba59abbe56e057f20f883e'),
(10, 'Stanko', 'Stankovic', 'stan', 'e10adc3949ba59abbe56e057f20f883e');

-- --------------------------------------------------------

--
-- Table structure for table `soba`
--

CREATE TABLE IF NOT EXISTS `soba` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ime` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `sprat` int(11) NOT NULL,
  `kreveti` int(11) NOT NULL,
  `m2` int(11) NOT NULL,
  `tv` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `internet` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `djakuzi` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `rezervacija` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ime_sobe` (`ime`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=334 ;

--
-- Dumping data for table `soba`
--

INSERT INTO `soba` (`id`, `ime`, `sprat`, `kreveti`, `m2`, `tv`, `internet`, `djakuzi`, `rezervacija`) VALUES
(102, 'Ubedljivo Najbolji Apartman', 5, 3, 20, 'Da', 'Da', 'Ne', 'REZERVISANA'),
(202, 'Novi Apartman', 2, 2, 22, 'Da', 'Da', 'Da', 'REZERVISANA'),
(239, 'Huge Apartman', 5, 3, 25, 'Da', 'Da', 'Da', 'REZERVISANA'),
(301, 'Gornji Apartman', 3, 4, 32, 'Da', 'Da', 'Da', 'SLOBODNA'),
(303, 'Najbolji Apartman', 3, 3, 25, 'Da', 'Da', 'Da', 'SLOBODNA'),
(304, 'Najtrazeniji apartman', 4, 2, 20, 'Da', 'Da', 'Da', 'SLOBODNA'),
(305, 'Najlepsi Apartman', 5, 2, 30, 'Da', 'Da', 'Da', 'SLOBODNA'),
(306, 'Extra Apartman', 5, 4, 22, 'Da', 'Da', 'Da', 'REZERVISANA'),
(307, 'Veliki Apartman', 4, 4, 30, 'Da', 'Da', 'Da', 'REZERVISANA'),
(308, 'Top Apartman', 5, 2, 25, 'Da', 'Da', 'Da', 'SLOBODNA'),
(314, 'Deluxe Apartman', 6, 2, 30, 'Da', 'Da', 'Ne', 'SLOBODNA'),
(315, 'Super Apartman', 5, 4, 35, 'Da', 'Da', 'Da', 'SLOBODNA'),
(319, 'Best Apartman', 3, 3, 20, 'Da', 'Ne', 'Ne', 'SLOBODNA'),
(320, 'Exclusive Apartman', 5, 1, 30, 'Da', 'Ne', 'Ne', 'SLOBODNA'),
(321, 'Fine Apartman', 5, 1, 20, 'Da', 'Ne', 'Ne', 'SLOBODNA'),
(322, 'Beautiful Apartman', 4, 2, 25, 'Da', 'Da', 'Da', 'SLOBODNA'),
(323, 'Etno Apartman', 5, 3, 30, 'Da', 'Ne', 'Ne', 'SLOBODNA'),
(325, 'The Best Apartman', 5, 2, 28, 'Da', 'Da', 'Ne', 'REZERVISANA'),
(327, 'Najnoviji Apartman', 5, 2, 20, 'Da', 'Da', 'Ne', 'REZERVISANA'),
(328, 'Prvi Apartman', 6, 4, 30, 'Da', 'Da', 'Ne', 'SLOBODNA'),
(330, 'Wide Apartman', 4, 4, 35, 'Da', 'Da', 'Ne', 'REZERVISANA'),
(331, 'Bold Apartman', 3, 4, 32, 'Ne', 'Ne', 'Ne', 'SLOBODNA'),
(332, 'Greatest Apartman', 3, 2, 20, 'Da', 'Da', 'Da', 'SLOBODNA'),
(333, 'Nature Apartman', 4, 3, 27, 'Da', 'Da', 'Ne', 'REZERVISANA');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
