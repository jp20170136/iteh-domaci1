-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 13, 2020 at 01:26 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_domaci`
--

-- --------------------------------------------------------

--
-- Table structure for table `dogadjaj`
--

CREATE TABLE `dogadjaj` (
  `id` int(10) NOT NULL,
  `naziv` varchar(50) NOT NULL,
  `datum` date NOT NULL DEFAULT current_timestamp(),
  `opis` varchar(300) NOT NULL,
  `id_tip` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dogadjaj`
--

INSERT INTO `dogadjaj` (`id`, `naziv`, `datum`, `opis`, `id_tip`) VALUES
(19, 'Punoletstvo Ane Maric', '2020-05-21', 'Proslava se odvija u restoranu \"Ana\" sa pocetkom u 6 casova', 1),
(20, 'Proslava Petra Perica zbog otvaranja advokatske ka', '2020-06-25', 'Proslava se odvija u prostorijama kancelarije, potreban je ketering za 50 ljudi', 5),
(21, 'crkveno vencanje Ane Anic i Marka Markovica', '2020-12-16', 'Vencanje ce se odrzati u Novom Sadu, potrebno naci fotografa', 3),
(22, 'Seminar digital marketing', '2020-10-23', 'Potrebno je naci konferencijsku salu i sponzore', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tip_dogadjaja`
--

CREATE TABLE `tip_dogadjaja` (
  `id_tip` int(10) NOT NULL,
  `tip` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tip_dogadjaja`
--

INSERT INTO `tip_dogadjaja` (`id_tip`, `tip`) VALUES
(1, 'rodjendan'),
(2, 'seminar'),
(3, 'vencanje'),
(4, 'rodjenje'),
(5, 'unapredjenje');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dogadjaj`
--
ALTER TABLE `dogadjaj`
  ADD PRIMARY KEY (`id`),
  ADD KEY `foreign_key` (`id_tip`);

--
-- Indexes for table `tip_dogadjaja`
--
ALTER TABLE `tip_dogadjaja`
  ADD PRIMARY KEY (`id_tip`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dogadjaj`
--
ALTER TABLE `dogadjaj`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tip_dogadjaja`
--
ALTER TABLE `tip_dogadjaja`
  MODIFY `id_tip` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `dogadjaj`
--
ALTER TABLE `dogadjaj`
  ADD CONSTRAINT `foreign_key` FOREIGN KEY (`id_tip`) REFERENCES `tip_dogadjaja` (`id_tip`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
