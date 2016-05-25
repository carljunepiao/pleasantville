-- phpMyAdmin SQL Dump
-- version 4.6.0
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 25, 2016 at 02:19 PM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 7.0.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pleasantville`
--

-- --------------------------------------------------------

--
-- Table structure for table `administrator`
--

CREATE TABLE `administrator` (
  `Fname` varchar(30) NOT NULL,
  `Lname` varchar(30) NOT NULL,
  `Username` varchar(25) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `LogIn` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Triggers `administrator`
--
DELIMITER $$
CREATE TRIGGER `addonAdministrator` AFTER INSERT ON `administrator` FOR EACH ROW INSERT INTO translogs (Info, Time) VALUES ("Add on Administrator", CURRENT_TIMESTAMP)
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `deleteonAdministrator` AFTER DELETE ON `administrator` FOR EACH ROW INSERT INTO translogs (Info, Time) VALUES ("Delete on Casts", CURRENT_TIMESTAMP)
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `updateonAdministrator` AFTER UPDATE ON `administrator` FOR EACH ROW INSERT INTO translogs (Info, Time) VALUES ("Update on Casts", CURRENT_TIMESTAMP)
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `casts`
--

CREATE TABLE `casts` (
  `MemberID` int(20) UNSIGNED NOT NULL,
  `ProdNo` int(11) NOT NULL,
  `Title` varchar(50) NOT NULL,
  `Date` date NOT NULL,
  `MemberJob` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Triggers `casts`
--
DELIMITER $$
CREATE TRIGGER `addonCasts` AFTER INSERT ON `casts` FOR EACH ROW INSERT INTO translogs (Info, Time) VALUES ("Add on Casts", CURRENT_TIMESTAMP)
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `deleteonCasts` AFTER DELETE ON `casts` FOR EACH ROW INSERT INTO translogs (Info, Time) VALUES ("Delete on Casts", CURRENT_TIMESTAMP)
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `updateonCasts` AFTER UPDATE ON `casts` FOR EACH ROW INSERT INTO translogs (Info, Time) VALUES ("Update on Casts", CURRENT_TIMESTAMP)
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `MemberID` int(20) UNSIGNED NOT NULL,
  `FName` varchar(40) NOT NULL,
  `LName` varchar(40) NOT NULL,
  `ContactNo` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Triggers `member`
--
DELIMITER $$
CREATE TRIGGER `addonMember` AFTER INSERT ON `member` FOR EACH ROW INSERT INTO translogs (Info, Time) VALUES ("Insert on Member", CURRENT_TIMESTAMP)
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `deleteonMember` AFTER DELETE ON `member` FOR EACH ROW INSERT INTO translogs (Info, Time) VALUES ("Delete on Member", CURRENT_TIMESTAMP)
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `updateonMember` AFTER UPDATE ON `member` FOR EACH ROW INSERT INTO translogs (Info, Time) VALUES ("Update on Users", CURRENT_TIMESTAMP)
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `play`
--

CREATE TABLE `play` (
  `Playwright` varchar(50) NOT NULL,
  `Title` varchar(50) NOT NULL,
  `Time` time(6) NOT NULL,
  `Poster` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Triggers `play`
--
DELIMITER $$
CREATE TRIGGER `addonPlay` AFTER INSERT ON `play` FOR EACH ROW INSERT INTO translogs (Info, Time) VALUES ("Insert on Play", CURRENT_TIMESTAMP)
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `deleteonPlay` AFTER DELETE ON `play` FOR EACH ROW INSERT INTO translogs (Info, Time) VALUES ("Delete on Play", CURRENT_TIMESTAMP)
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `updateonPlay` AFTER UPDATE ON `play` FOR EACH ROW INSERT INTO translogs (Info, Time) VALUES ("Update on Play", CURRENT_TIMESTAMP)
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `production`
--

CREATE TABLE `production` (
  `ProdNo` int(11) NOT NULL,
  `Title` varchar(50) NOT NULL,
  `Date` date NOT NULL,
  `Revenue` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Triggers `production`
--
DELIMITER $$
CREATE TRIGGER `addonProduction` AFTER INSERT ON `production` FOR EACH ROW INSERT INTO translogs (Info, Time) VALUES ("Add on Production", CURRENT_TIMESTAMP)
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `deleteonProduction` AFTER DELETE ON `production` FOR EACH ROW INSERT INTO translogs (Info, Time) VALUES ("Delete on Production", CURRENT_TIMESTAMP)
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `updateonProduction` AFTER UPDATE ON `production` FOR EACH ROW INSERT INTO translogs (Info, Time) VALUES ("Update on Production", CURRENT_TIMESTAMP)
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `seats`
--

CREATE TABLE `seats` (
  `SeatNo` varchar(10) NOT NULL,
  `ProdNo` int(11) NOT NULL,
  `Title` varchar(50) NOT NULL,
  `Date` date NOT NULL,
  `Taken` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Triggers `seats`
--
DELIMITER $$
CREATE TRIGGER `addonSeats` AFTER INSERT ON `seats` FOR EACH ROW INSERT INTO translogs (Info, Time) VALUES ("Add on Seats", CURRENT_TIMESTAMP)
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `deleteonSeats` AFTER DELETE ON `seats` FOR EACH ROW INSERT INTO translogs (Info, Time) VALUES ("Delete on Casts", CURRENT_TIMESTAMP)
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `updateonSeats` AFTER UPDATE ON `seats` FOR EACH ROW INSERT INTO translogs (Info, Time) VALUES ("Update on Seats", CURRENT_TIMESTAMP)
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `sponsorship`
--

CREATE TABLE `sponsorship` (
  `UserID` int(11) NOT NULL,
  `ProdNo` int(11) NOT NULL,
  `Title` varchar(50) NOT NULL,
  `Date` date NOT NULL,
  `Date_of_Donation` date NOT NULL,
  `Amount_of_Donation` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Triggers `sponsorship`
--
DELIMITER $$
CREATE TRIGGER `addonSponsorship` AFTER INSERT ON `sponsorship` FOR EACH ROW INSERT INTO translogs (Info, Time) VALUES ("Add on Sponsorship", CURRENT_TIMESTAMP)
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `deleteonSponsorship` AFTER DELETE ON `sponsorship` FOR EACH ROW INSERT INTO translogs (Info, Time) VALUES ("Delete on Sponsorship", CURRENT_TIMESTAMP)
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `updateonSponsorship` AFTER UPDATE ON `sponsorship` FOR EACH ROW INSERT INTO translogs (Info, Time) VALUES ("Update on Sponsorship", CURRENT_TIMESTAMP)
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `TicketID` int(20) NOT NULL,
  `UserID` int(11) NOT NULL,
  `SeatNo` varchar(10) NOT NULL,
  `ProdNo` int(11) NOT NULL,
  `Title` varchar(50) NOT NULL,
  `Date` date NOT NULL,
  `Cost` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Triggers `tickets`
--
DELIMITER $$
CREATE TRIGGER `addonTickets` AFTER INSERT ON `tickets` FOR EACH ROW INSERT INTO translogs (Info, Time) VALUES ("Add on Tickets", CURRENT_TIMESTAMP)
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `deleteonTickets` AFTER DELETE ON `tickets` FOR EACH ROW INSERT INTO translogs (Info, Time) VALUES ("Delete on Casts", CURRENT_TIMESTAMP)
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `updateonTickets` AFTER UPDATE ON `tickets` FOR EACH ROW INSERT INTO translogs (Info, Time) VALUES ("Update on Tickets", CURRENT_TIMESTAMP)
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `translogs`
--

CREATE TABLE `translogs` (
  `Info` varchar(100) NOT NULL,
  `Time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `UserID` int(11) NOT NULL,
  `Patron` tinyint(1) NOT NULL,
  `Sponsor` tinyint(1) NOT NULL,
  `Fname` varchar(20) NOT NULL,
  `Lname` varchar(20) NOT NULL,
  `Contact_No` int(15) NOT NULL,
  `Username` varchar(25) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `Log_In` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Triggers `users`
--
DELIMITER $$
CREATE TRIGGER `addonUsers` AFTER INSERT ON `users` FOR EACH ROW INSERT INTO translogs (Info,Time) VALUES ("Insert on Users", CURRENT_TIMESTAMP)
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `deleteonUsers` AFTER DELETE ON `users` FOR EACH ROW INSERT INTO translogs (Info, Time) VALUES ("Delete on Users", CURRENT_TIMESTAMP)
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `updateonUsers` AFTER UPDATE ON `users` FOR EACH ROW INSERT INTO translogs (Info, Time) VALUES ("Update on Users", CURRENT_TIMESTAMP)
$$
DELIMITER ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `administrator`
--
ALTER TABLE `administrator`
  ADD PRIMARY KEY (`Username`,`Password`);

--
-- Indexes for table `casts`
--
ALTER TABLE `casts`
  ADD PRIMARY KEY (`MemberID`,`ProdNo`),
  ADD UNIQUE KEY `MemberID` (`MemberID`),
  ADD KEY `MemberID_2` (`MemberID`),
  ADD KEY `ProdNo` (`ProdNo`),
  ADD KEY `Title` (`Title`,`Date`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`MemberID`),
  ADD UNIQUE KEY `MemberID` (`MemberID`);

--
-- Indexes for table `play`
--
ALTER TABLE `play`
  ADD PRIMARY KEY (`Playwright`,`Title`),
  ADD KEY `Playwright` (`Playwright`),
  ADD KEY `Playwright_2` (`Playwright`),
  ADD KEY `Title` (`Title`);

--
-- Indexes for table `production`
--
ALTER TABLE `production`
  ADD PRIMARY KEY (`ProdNo`),
  ADD KEY `Title` (`Title`,`Date`);

--
-- Indexes for table `seats`
--
ALTER TABLE `seats`
  ADD PRIMARY KEY (`SeatNo`,`ProdNo`),
  ADD KEY `SeatNo` (`SeatNo`),
  ADD KEY `ProdNo` (`ProdNo`),
  ADD KEY `Title` (`Title`,`Date`);

--
-- Indexes for table `sponsorship`
--
ALTER TABLE `sponsorship`
  ADD KEY `Title` (`Title`,`Date`),
  ADD KEY `UserID` (`UserID`),
  ADD KEY `ProdNo` (`ProdNo`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`TicketID`,`UserID`,`SeatNo`,`ProdNo`),
  ADD KEY `TicketID` (`TicketID`,`SeatNo`),
  ADD KEY `SeatNo` (`SeatNo`),
  ADD KEY `UserID` (`UserID`),
  ADD KEY `ProdNo` (`ProdNo`),
  ADD KEY `Title` (`Title`,`Date`);

--
-- Indexes for table `translogs`
--
ALTER TABLE `translogs`
  ADD PRIMARY KEY (`Time`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UserID`),
  ADD KEY `UserID` (`UserID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `MemberID` int(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `production`
--
ALTER TABLE `production`
  MODIFY `ProdNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1000;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `casts`
--
ALTER TABLE `casts`
  ADD CONSTRAINT `casts_ibfk_4` FOREIGN KEY (`ProdNo`) REFERENCES `production` (`ProdNo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `casts_ibfk_5` FOREIGN KEY (`Title`,`Date`) REFERENCES `production` (`Title`, `Date`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `casts_ibfk_6` FOREIGN KEY (`MemberID`) REFERENCES `member` (`MemberID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `production`
--
ALTER TABLE `production`
  ADD CONSTRAINT `production_ibfk_1` FOREIGN KEY (`Title`) REFERENCES `play` (`Title`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `seats`
--
ALTER TABLE `seats`
  ADD CONSTRAINT `seats_ibfk_1` FOREIGN KEY (`ProdNo`) REFERENCES `production` (`ProdNo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `seats_ibfk_2` FOREIGN KEY (`Title`,`Date`) REFERENCES `production` (`Title`, `Date`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sponsorship`
--
ALTER TABLE `sponsorship`
  ADD CONSTRAINT `sponsorship_ibfk_7` FOREIGN KEY (`Title`,`Date`) REFERENCES `production` (`Title`, `Date`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sponsorship_ibfk_8` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sponsorship_ibfk_9` FOREIGN KEY (`ProdNo`) REFERENCES `production` (`ProdNo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tickets`
--
ALTER TABLE `tickets`
  ADD CONSTRAINT `tickets_ibfk_2` FOREIGN KEY (`SeatNo`) REFERENCES `seats` (`SeatNo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tickets_ibfk_6` FOREIGN KEY (`Title`,`Date`) REFERENCES `production` (`Title`, `Date`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tickets_ibfk_7` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tickets_ibfk_8` FOREIGN KEY (`ProdNo`) REFERENCES `seats` (`ProdNo`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
