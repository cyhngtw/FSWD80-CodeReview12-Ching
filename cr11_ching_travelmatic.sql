-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 13, 2020 at 02:46 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cr11_ching_travelmatic`
--

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `image` varchar(255) NOT NULL,
  `city` varchar(20) NOT NULL,
  `zip` int(11) NOT NULL,
  `address` varchar(100) NOT NULL,
  `tel` int(10) NOT NULL,
  `web` varchar(255) NOT NULL,
  `style` varchar(50) NOT NULL,
  `locdate` datetime NOT NULL,
  `price` int(11) NOT NULL,
  `lat` varchar(100) NOT NULL,
  `lng` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`id`, `name`, `type`, `image`, `city`, `zip`, `address`, `tel`, `web`, `style`, `locdate`, `price`, `lat`, `lng`) VALUES
(1, 'Le petit jardin', 'restaurant', 'rest1.jpg', 'wien', 1010, 'Friedrich-Schmidt-Platz 1, ', 99998888, 'www.petitjardin.at', 'French', '0000-00-00 00:00:00', 0, '48°12\'39.9\"N ', '16°21\'23.5\"E'),
(2, 'Gelonojad', 'restaurant', 'rest2.jpg', 'wien', 1010, 'stephansplatz 12', 88887777, 'www.stefanplatz.at', 'medidterrean', '0000-00-00 00:00:00', 0, '48°12\'30.3\"N ', '16°22\'17.7\"E'),
(3, 'Scene', 'restaurant', 'rest3.jpg', 'Salzburg', 8020, 'hauptstrasse 8', 7777666, 'www.hauptstrasse.at', 'fusion', '0000-00-00 00:00:00', 0, '47°48\'24.1\"N', '13°03\'06.0\"E'),
(4, 'Hello', 'restaurant', 'rest4.jpg', 'wien', 1060, 'volktheater 8', 66665555, 'www.volktheater.at', 'steakhaus', '0000-00-00 00:00:00', 0, '48°12\'20.4\"N ', '16°21\'25.2\"E'),
(5, 'Belvedere', 'sightseeing', 'sight1.jpg', 'wien', 1030, 'belevedere 1', 55554444, 'www.belevedere.at', '', '0000-00-00 00:00:00', 0, '48°11\'30.5\"N', '16°22\'51.3\"E'),
(6, 'Schoenbrunn', 'sightseeing', 'sight2.jpg', 'wien', 1200, 'schoenbrunn 1', 44443333, 'wwww.schoenbrunn.at', '', '0000-00-00 00:00:00', 0, '48°11\'06.2\"N', '16°18\'12.0\"E'),
(7, 'Salzburg', 'sightseeing', 'sight3.jpg', 'salzburg', 8020, 'haupstrasse 1', 33332222, 'www.salzburg.at', '', '0000-00-00 00:00:00', 0, '47°47\'53.0\"N', '13°02\'48.7\"E'),
(8, 'Linz', 'sightseeing', 'sight4.jpg', 'Linz', 4020, 'rathaus platz 1', 22221111, 'wwww.linz.at', '', '0000-00-00 00:00:00', 0, '', ''),
(9, 'Quartet', 'concert', 'concert1.jpg', 'wien', 1010, 'opering 1', 11110000, 'www.oper.at', 'symphony orchestra', '2019-11-23 14:00:00', 60, '48°12\'11.0\"N', '16°22\'08.4\"E'),
(10, 'Cello solo', 'concert', 'concert2.jpg', 'wien', 1030, 'Lothringerstraße 20', 22223333, 'www.konzerthaus.at', 'cello classical', '2019-12-07 20:00:00', 60, '48°12\'04.0\"N', '16°22\'38.5\"E'),
(11, 'TREVINO, KOZHUKHIN, RETT / LISZT, MAHLER', 'concert', 'concert3.jpg', 'wien', 1030, 'Lothringerstraße 20', 22223333, 'www.konzerthaus.at', 'symphony orchestra', '2020-01-04 20:00:00', 60, '48°12\'04.0\"N', '16°22\'38.5\"E'),
(12, 'Transfigured Night for string orchestra op. 4', 'concert', 'concert4.jpg', 'wien', 1010, 'Musikvereinsplatz 1,', 456123789, 'www.Musikvereins.at', 'piano violin', '0000-00-00 00:00:00', 60, '48°12\'02.4\"N', '16°22\'22.1\"E'),
(14, 'nnnnn', 'restaurant', 'helumtNewton.jpg', 'Turin', 10145, 'Via Zumaglia, 64', 333333333, '', '', '0000-00-00 00:00:00', 0, '', ''),
(15, 'concert', 'restaurant', 'port2qv.jpg', 'Turin', 10145, 'Via Zumaglia, 64', 2147483647, 'www.petitjardin.at', 'asia', '0000-00-00 00:00:00', 123, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userId` int(11) NOT NULL,
  `userName` varchar(30) NOT NULL,
  `userEmail` varchar(60) NOT NULL,
  `userPass` varchar(255) NOT NULL,
  `role` enum('user','admin') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userId`, `userName`, `userEmail`, `userPass`, `role`) VALUES
(3, 'admin', 'admin@admin.com', '96cae35ce8a9b0244178bf28e4966c2ce1b8385723a96a6b838858cdd6ca0a1e', 'admin'),
(4, 'user', 'user@user.com', '96cae35ce8a9b0244178bf28e4966c2ce1b8385723a96a6b838858cdd6ca0a1e', 'user'),
(5, 'yyy', 'y@y.y', '96cae35ce8a9b0244178bf28e4966c2ce1b8385723a96a6b838858cdd6ca0a1e', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userId`),
  ADD UNIQUE KEY `userEmail` (`userEmail`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
