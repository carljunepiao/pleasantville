-- phpMyAdmin SQL Dump
-- version 4.6.0
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 12, 2016 at 03:52 PM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 7.0.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pleasantvilledatabase`
--

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
(3, 'Free', 'Dom', 12345678);

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

-- --------------------------------------------------------

--
-- Table structure for table `seats`
--

CREATE TABLE `seats` (
  `SeatNo` varchar(10) NOT NULL,
  `Location` varchar(30) NOT NULL,
  `ProdNo` int(11) NOT NULL,
  `Title` varchar(50) NOT NULL,
  `Date` date NOT NULL,
  `Taken` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `UserID` int(11) NOT NULL,
  `Type` varchar(10) NOT NULL,
  `Fname` varchar(20) NOT NULL,
  `Lname` varchar(20) NOT NULL,
  `Contact_No` int(15) NOT NULL,
  `Username` varchar(25) NOT NULL,
  `Password` varchar(25) NOT NULL,
  `Log_In` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`UserID`, `Type`, `Fname`, `Lname`, `Contact_No`, `Username`, `Password`, `Log_In`) VALUES
(1, 'User', 'Dahunk', 'Majait', 123321, 'free', 'dom', 0),
(2, 'User', 'Dahunkzzz', 'Majaitzzz', 12332112, 'freezz', 'domzz', 0),
(3, 'Users', 'Hard', 'NotOver', 12345, 'Noises', 'AWake', 0),
(4, '', '', '', 0, '', 'dbb86863682eb7ebd9bbb1788', 0),
(5, '', 'Wee', 'Eww', 12345, '', 'dbb86863682eb7ebd9bbb1788', 0),
(6, '', 'Paul', 'SaraÃ±a', 69696969, 'Oten', 'd2b57d69c311b98bf83c5ac11', 0);

--
-- Indexes for dumped tables
--

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
  ADD PRIMARY KEY (`SeatNo`,`Location`,`ProdNo`),
  ADD KEY `SeatNo` (`SeatNo`,`Location`),
  ADD KEY `ProdNo` (`ProdNo`),
  ADD KEY `Title` (`Title`,`Date`);

--
-- Indexes for table `sponsorship`
--
ALTER TABLE `sponsorship`
  ADD PRIMARY KEY (`UserID`,`ProdNo`),
  ADD KEY `UserID` (`UserID`),
  ADD KEY `ProdNo` (`ProdNo`),
  ADD KEY `Title` (`Title`,`Date`);

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
  MODIFY `MemberID` int(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `production`
--
ALTER TABLE `production`
  MODIFY `ProdNo` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
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
  ADD CONSTRAINT `sponsorship_ibfk_5` FOREIGN KEY (`ProdNo`) REFERENCES `production` (`ProdNo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sponsorship_ibfk_7` FOREIGN KEY (`Title`,`Date`) REFERENCES `production` (`Title`, `Date`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sponsorship_ibfk_8` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tickets`
--
ALTER TABLE `tickets`
  ADD CONSTRAINT `tickets_ibfk_2` FOREIGN KEY (`SeatNo`) REFERENCES `seats` (`SeatNo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tickets_ibfk_4` FOREIGN KEY (`ProdNo`) REFERENCES `production` (`ProdNo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tickets_ibfk_6` FOREIGN KEY (`Title`,`Date`) REFERENCES `production` (`Title`, `Date`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tickets_ibfk_7` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
