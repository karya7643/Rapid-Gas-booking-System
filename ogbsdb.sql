-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 08, 2023 at 05:05 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ogbsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` varchar(200) DEFAULT NULL,
  `UserName` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Admin', 'admin', 5689784586, 'admin@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2023-06-03 12:05:19');

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking`
--

CREATE TABLE `tblbooking` (
  `ID` int(10) NOT NULL,
  `UserID` int(5) NOT NULL,
  `ConnectionNumber` varchar(200) DEFAULT NULL,
  `BookingNumber` varchar(200) DEFAULT NULL,
  `RefillCylinder` varchar(120) DEFAULT NULL,
  `BookingDate` timestamp NULL DEFAULT current_timestamp(),
  `Remark` varchar(50) DEFAULT NULL,
  `Status` varchar(50) DEFAULT NULL,
  `RefflingCost` int(10) NOT NULL,
  `DeliveryBoy` varchar(200) NOT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblbooking`
--

INSERT INTO `tblbooking` (`ID`, `UserID`, `ConnectionNumber`, `BookingNumber`, `RefillCylinder`, `BookingDate`, `Remark`, `Status`, `RefflingCost`, `DeliveryBoy`, `UpdationDate`) VALUES
(1, 1, '513074293', '492496082', '14.2 Kg', '2023-06-08 01:16:31', 'Cylinder delivered ', 'Delivered', 842, 'Rahul', '2023-06-08 01:31:39'),
(2, 1, '513074293', '826400363', '5 Kg', '2023-06-08 01:33:49', 'delivered', 'Delivered', 420, 'Rahul', '2023-06-08 01:35:56'),
(3, 2, '642813617', '407081117', '14.2 Kg', '2023-06-08 01:43:33', 'Delivered', 'Delivered', 842, 'Rahul', '2023-06-08 01:44:55');

-- --------------------------------------------------------

--
-- Table structure for table `tblconnection`
--

CREATE TABLE `tblconnection` (
  `ID` int(10) NOT NULL,
  `UserID` int(10) DEFAULT NULL,
  `ConnectionNumber` varchar(50) DEFAULT NULL,
  `Name` varchar(200) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Gender` varchar(50) DEFAULT NULL,
  `DOB` varchar(120) DEFAULT NULL,
  `Nationality` varchar(100) DEFAULT NULL,
  `MaritalStatus` varchar(120) DEFAULT NULL,
  `Address` mediumtext DEFAULT NULL,
  `SelectRelated` varchar(100) DEFAULT NULL,
  `FirstName` varchar(100) DEFAULT NULL,
  `LastName` varchar(100) DEFAULT NULL,
  `SORFAddress` mediumtext DEFAULT NULL,
  `Citytownvillage` varchar(200) DEFAULT NULL,
  `ZipCode` int(10) DEFAULT NULL,
  `Documents` varchar(200) DEFAULT NULL,
  `AppliedDate` timestamp NULL DEFAULT current_timestamp(),
  `Remark` varchar(200) DEFAULT NULL,
  `Status` varchar(120) DEFAULT NULL,
  `ConnectionCharge` int(10) NOT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblconnection`
--

INSERT INTO `tblconnection` (`ID`, `UserID`, `ConnectionNumber`, `Name`, `Email`, `MobileNumber`, `Gender`, `DOB`, `Nationality`, `MaritalStatus`, `Address`, `SelectRelated`, `FirstName`, `LastName`, `SORFAddress`, `Citytownvillage`, `ZipCode`, `Documents`, `AppliedDate`, `Remark`, `Status`, `ConnectionCharge`, `UpdationDate`) VALUES
(1, 1, '513074293', 'ashok ji', 'ak30@gmail.com', 9632145620, 'Male', '1998-01-08', 'Indian', 'Married', 'A 12/1 Mayur Vihar New Delhi India', 'Father', 'BK ', 'Singh', 'A 12/1 Mayur Vihar New Delhi India', 'New Delhi', 110096, '2c86e2aa7eb4cb4db70379e28fab9b521686186380.pdf', '2023-06-08 01:06:20', 'The connection is approved. Make your first booking', 'Approved', 1200, '2023-06-08 01:14:51'),
(2, 2, '642813617', 'ganu ji', 'jhnde@gmail.com', 1231231230, 'Male', '1994-06-09', 'India', 'Married', 'B 123 XYZ Road Raj Nagar Ghaziabad', 'Spouse', 'Garima ', 'Singh', 'B 123 XYZ Road Raj Nagar Ghaziabad', 'Ghaziabad', 201017, '2c86e2aa7eb4cb4db70379e28fab9b521686188519.pdf', '2023-06-08 01:41:59', 'Connection approved', 'Approved', 1650, '2023-06-08 01:43:03');

-- --------------------------------------------------------

--
-- Table structure for table `tblhistory`
--

CREATE TABLE `tblhistory` (
  `ID` int(10) NOT NULL,
  `RequestNumber` varchar(50) DEFAULT NULL,
  `Remark` varchar(200) DEFAULT NULL,
  `Status` varchar(200) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblhistory`
--

INSERT INTO `tblhistory` (`ID`, `RequestNumber`, `Remark`, `Status`, `UpdationDate`) VALUES
(1, '513074293', 'The connection is approved. Make your first booking', 'Approved', '2023-06-08 01:14:51'),
(2, '642813617', 'Connection approved', 'Approved', '2023-06-08 01:43:03');

-- --------------------------------------------------------

--
-- Table structure for table `tblstaff`
--

CREATE TABLE `tblstaff` (
  `ID` int(10) NOT NULL,
  `StaffID` varchar(120) DEFAULT NULL,
  `Name` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Address` mediumtext DEFAULT NULL,
  `JoiningDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblstaff`
--

INSERT INTO `tblstaff` (`ID`, `StaffID`, `Name`, `MobileNumber`, `Email`, `Address`, `JoiningDate`) VALUES
(1, '10806121', 'Rahul', 1234567890, 'rahul@gmail.com', 'hn 18 ABC road ashok nagar new delhi', '2023-06-08 01:17:56'),
(2, '1023644', 'Amit Kumar', 4566321002, 'amit232@gmail.com', 'New Delhi India', '2023-06-08 01:46:22');

-- --------------------------------------------------------

--
-- Table structure for table `tbltracking`
--

CREATE TABLE `tbltracking` (
  `ID` int(10) NOT NULL,
  `BookingNumber` varchar(200) DEFAULT NULL,
  `Remark` varchar(120) DEFAULT NULL,
  `Status` varchar(120) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbltracking`
--

INSERT INTO `tbltracking` (`ID`, `BookingNumber`, `Remark`, `Status`, `UpdationDate`) VALUES
(1, '492496082', 'Booking confirmed', 'Confirmed', '2023-06-08 01:26:27'),
(2, '492496082', 'Deliver boy on the way', 'On The Way', '2023-06-08 01:31:01'),
(3, '492496082', 'Cylinder delivered ', 'Delivered', '2023-06-08 01:31:39'),
(4, '826400363', 'Booking confirmed ', 'Confirmed', '2023-06-08 01:35:08'),
(5, '826400363', 'On the way', 'On The Way', '2023-06-08 01:35:30'),
(6, '826400363', 'delivered', 'Delivered', '2023-06-08 01:35:56'),
(7, '407081117', 'Booking confirmed', 'Confirmed', '2023-06-08 01:44:03'),
(8, '407081117', 'Delivery is on the way', 'On The Way', '2023-06-08 01:44:40'),
(9, '407081117', 'Delivered', 'Delivered', '2023-06-08 01:44:55');

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE `tbluser` (
  `ID` int(10) NOT NULL,
  `FullName` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`ID`, `FullName`, `MobileNumber`, `Email`, `Password`, `RegDate`) VALUES
(1, 'Anuj Kumar', 9632145620, 'ak30@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2023-06-08 01:04:17'),
(2, 'John Doe', 1231231230, 'jhnde@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2023-06-08 01:40:22'),
(3, 'Raghav', 6464646465, 'rag@gmail.com', '202cb962ac59075b964b07152d234b70', '2023-06-08 08:12:54');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `BookingNumber` (`BookingNumber`);

--
-- Indexes for table `tblconnection`
--
ALTER TABLE `tblconnection`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ConnectionNumber` (`ConnectionNumber`);

--
-- Indexes for table `tblhistory`
--
ALTER TABLE `tblhistory`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblstaff`
--
ALTER TABLE `tblstaff`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbltracking`
--
ALTER TABLE `tbltracking`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblconnection`
--
ALTER TABLE `tblconnection`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblhistory`
--
ALTER TABLE `tblhistory`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblstaff`
--
ALTER TABLE `tblstaff`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbltracking`
--
ALTER TABLE `tbltracking`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
