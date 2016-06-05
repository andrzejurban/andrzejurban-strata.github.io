-- --------------------------------------------------------
-- Host:                         swietoroweru.pl
-- Server version:               5.5.43-0+deb7u1 - (Debian)
-- Server OS:                    debian-linux-gnu
-- HeidiSQL version:             7.0.0.4053
-- Date/time:                    2015-06-20 19:23:07
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET FOREIGN_KEY_CHECKS=0 */;

-- Dumping database structure for rejestracja_sr
CREATE DATABASE IF NOT EXISTS `rejestracja_sr` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `rejestracja_sr`;


-- Dumping structure for table rejestracja_sr.dziecko
CREATE TABLE IF NOT EXISTS `dziecko` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uzytkownikId` int(10) NOT NULL,
  `imie` varchar(50) NOT NULL,
  `nazwisko` varchar(50) NOT NULL,
  `data` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK1_uzytkownik_dziecko` (`uzytkownikId`),
  CONSTRAINT `FK1_uzytkownik_dziecko` FOREIGN KEY (`uzytkownikId`) REFERENCES `uzytkownicy` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.


-- Dumping structure for table rejestracja_sr.uzytkownicy
CREATE TABLE IF NOT EXISTS `uzytkownicy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imie` varchar(50) NOT NULL,
  `nazwisko` varchar(50) NOT NULL,
  `miasto` varchar(50) NOT NULL,
  `data` date NOT NULL,
  `email` varchar(256) NOT NULL,
  `hash` varchar(32) NOT NULL,
  `potwierdzony` tinyint(4) NOT NULL DEFAULT '0',
  `rodzina` tinyint(4) NOT NULL DEFAULT '0',
  `niepelnosprawny` tinyint(4) DEFAULT '0',
  `numerRodziny` varchar(10) DEFAULT NULL,
  `daneDzieci` varchar(256) DEFAULT NULL,
  `klub` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- Dumping structure for table rejestracja_sr.uzytkownicy
CREATE TABLE IF NOT EXISTS `ustawienia` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nazwa` varchar(20) DEFAULT NULL,
  `wartosc` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `ustawienia` (`id`, `nazwa`) VALUES (1, 'rejestracja_aktywna');

-- Data exporting was unselected.
/*!40014 SET FOREIGN_KEY_CHECKS=1 */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

