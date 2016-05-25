-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 25, 2016 at 06:46 PM
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
  `Username` varchar(25) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `LogIn` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `administrator`
--

INSERT INTO `administrator` (`Username`, `Password`, `LogIn`) VALUES
('jjapp', 'astig54321', 1);

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
-- Dumping data for table `casts`
--

INSERT INTO `casts` (`MemberID`, `ProdNo`, `Title`, `Date`, `MemberJob`) VALUES
(19, 1, 'Pii', '2016-04-13', 'freee');

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
-- Dumping data for table `member`
--

INSERT INTO `member` (`MemberID`, `FName`, `LName`, `ContactNo`) VALUES
(12, 'Cat', 'Meow', 33333),
(13, 'dahunk', 'shofo', 9999),
(14, 'Gree', 'Eerg', 4321),
(16, 'vdsc', 'ascd', 87645),
(17, 'dddddddz', 'zzzzzzzd', 921355),
(19, 'hhahaha', 'asdada', 7543),
(20, 'zxc', 'cxzv', 6543),
(21, 'qwaerty', 'hgfd', 9876543),
(22, 'a', 'd', 0),
(23, 'joshua', 'Sharp', 123456789),
(24, 'Pak', 'Siw', 123456789);

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
-- Dumping data for table `play`
--

INSERT INTO `play` (`Playwright`, `Title`, `Time`, `Poster`) VALUES
('Papa', 'Pii', '12:02:00.000000', 0x313931313237375f31303230333531343439393238373534365f323935363832353737363639323334363936315f6f2e6a7067);

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
-- Dumping data for table `production`
--

INSERT INTO `production` (`ProdNo`, `Title`, `Date`, `Revenue`) VALUES
(1, 'Pii', '2016-04-13', 555);

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
  `Taken` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `seats`
--

INSERT INTO `seats` (`SeatNo`, `ProdNo`, `Taken`) VALUES
('12', 1, 1),
('123', 1, 1),
('13', 1, 1),
('18', 1, 0);

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

--
-- Dumping data for table `translogs`
--

INSERT INTO `translogs` (`Info`, `Time`) VALUES
('Add on Administrator', '2016-05-13 05:18:46'),
('Insert on Member', '2016-05-13 05:19:19'),
('Insert on Member', '2016-05-13 05:33:11'),
('Insert on Member', '2016-05-13 05:35:05'),
('Add on Production', '2016-05-13 05:51:36'),
('Add on Seats', '2016-05-13 05:52:14'),
('Add on Seats', '2016-05-13 05:52:42'),
('Add on Casts', '2016-05-13 06:25:42'),
('Delete on Users', '2016-05-13 06:28:59'),
('Insert on Users', '2016-05-13 06:30:09'),
('Insert on Users', '2016-05-13 06:30:33'),
('Delete on Users', '2016-05-13 06:39:14'),
('Insert on Users', '2016-05-13 06:39:39'),
('Delete on Users', '2016-05-13 06:43:19'),
('Delete on Casts', '2016-05-13 07:10:10'),
('Delete on Casts', '2016-05-13 07:10:19'),
('Add on Seats', '2016-05-23 00:04:18'),
('Add on Seats', '2016-05-23 00:06:33'),
('Update on Seats', '2016-05-23 00:09:35'),
('Update on Seats', '2016-05-23 00:15:56'),
('Insert on Member', '2016-05-23 01:25:33'),
('Add on Seats', '2016-05-25 21:09:46'),
('Update on Seats', '2016-05-25 21:10:07'),
('Add on Seats', '2016-05-25 21:12:11'),
('Update on Seats', '2016-05-25 21:12:21'),
('Update on Seats', '2016-05-25 21:15:10'),
('Update on Seats', '2016-05-25 21:15:24'),
('Update on Seats', '2016-05-25 21:15:34'),
('Update on Seats', '2016-05-25 21:16:03'),
('Update on Seats', '2016-05-25 21:16:11'),
('Update on Seats', '2016-05-25 21:16:24'),
('Update on Seats', '2016-05-25 21:23:55'),
('Add on Tickets', '2016-05-25 21:23:56'),
('Update on Seats', '2016-05-25 21:24:23'),
('Update on Seats', '2016-05-25 21:25:39'),
('Update on Seats', '2016-05-25 21:26:39'),
('Add on Tickets', '2016-05-25 21:26:40'),
('Insert on Member', '2016-05-25 22:03:43'),
('Insert on Member', '2016-05-25 22:05:21'),
('Insert on Users', '2016-05-25 22:07:15'),
('Add on Sponsorship', '2016-05-25 23:05:52'),
('Update on Sponsorship', '2016-05-25 23:11:21'),
('Delete on Users', '2016-05-25 23:17:50'),
('Add on Sponsorship', '2016-05-25 23:20:48'),
('Delete on Sponsorship', '2016-05-25 23:25:49');

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
-- Dumping data for table `users`
--

INSERT INTO `users` (`UserID`, `Patron`, `Sponsor`, `Fname`, `Lname`, `Contact_No`, `Username`, `Password`, `Log_In`) VALUES
(9, 1, 1, 'Pak', 'Siw', 1234567, 'asda', '947a0b92f8ddb0a01dc96092c6db99c87d006be6', 0);

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
  ADD KEY `ProdNo` (`ProdNo`);

--
-- Indexes for table `sponsorship`
--
ALTER TABLE `sponsorship`
  ADD PRIMARY KEY (`UserID`,`ProdNo`),
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
  MODIFY `MemberID` int(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `production`
--
ALTER TABLE `production`
  MODIFY `ProdNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
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
  ADD CONSTRAINT `seats_ibfk_1` FOREIGN KEY (`ProdNo`) REFERENCES `production` (`ProdNo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sponsorship`
--
ALTER TABLE `sponsorship`
  ADD CONSTRAINT `sponsorship_ibfk_5` FOREIGN KEY (`ProdNo`) REFERENCES `production` (`ProdNo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sponsorship_ibfk_8` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`) ON DELETE CASCADE ON UPDATE CASCADE;

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
