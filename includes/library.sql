-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 21, 2023 at 01:08 PM
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
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `AdminEmail` varchar(120) DEFAULT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `FullName`, `AdminEmail`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'John Doe', 'admin@gmail.com', 'admin', 'f925916e2754e5e03f75dd58a5733251', '2023-05-27');

-- --------------------------------------------------------

--
-- Table structure for table `noticification`
--

CREATE TABLE `noticification` (
  `no` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `authorid` int(11) NOT NULL,
  `categoryid` int(11) NOT NULL,
  `bookimg` varchar(250) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `noticification`
--

INSERT INTO `noticification` (`no`, `name`, `authorid`, `categoryid`, `bookimg`, `date`) VALUES
(62, 'Geronimo stilton : The amazing voyage', 54, 11, '02fbde74406a36ae09d54a8572aa02b0.jpg', '2023-07-21');

-- --------------------------------------------------------

--
-- Table structure for table `tblauthors`
--

CREATE TABLE `tblauthors` (
  `id` int(11) NOT NULL,
  `AuthorName` varchar(159) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblauthors`
--

INSERT INTO `tblauthors` (`id`, `AuthorName`, `creationDate`, `UpdationDate`) VALUES
(16, 'Gabrielle Zevin', '2023-05-26 15:32:09', NULL),
(17, 'J.K. Rowling', '2023-05-26 17:07:53', NULL),
(18, 'Jessa Hastings', '2023-05-26 17:55:51', NULL),
(19, 'Agatha Christie', '2023-05-27 07:01:12', NULL),
(20, 'Rick Riordon', '2023-05-27 07:01:21', NULL),
(22, 'Colleen Hoover', '2023-05-27 07:11:51', NULL),
(23, 'Alex Michaelids', '2023-05-27 07:12:27', NULL),
(25, 'Taylor Jenkins Reid', '2023-05-27 07:14:45', NULL),
(26, 'Courtney Summers', '2023-05-27 07:15:13', NULL),
(27, 'Jennifer Lynn Barnes', '2023-05-27 07:15:55', NULL),
(31, 'Madeline Miller', '2023-05-27 07:17:12', NULL),
(32, 'Marissa Meyer', '2023-05-27 07:17:31', NULL),
(33, 'Jenny Han', '2023-05-27 07:18:02', NULL),
(34, 'Christina Lauren', '2023-05-27 07:18:22', NULL),
(35, 'Sarah J. Maas', '2023-05-27 07:19:02', NULL),
(36, 'John Green', '2023-05-27 07:19:34', NULL),
(37, 'Holly Black', '2023-05-27 07:20:00', NULL),
(38, 'Cassandra Clare', '2023-05-27 07:20:17', NULL),
(39, 'Leigh Bardugo', '2023-05-27 07:20:39', NULL),
(41, 'Frank Herbert', '2023-05-27 07:24:25', NULL),
(44, 'Ernest Cline', '2023-05-27 07:25:14', NULL),
(45, 'Jennette McCurdy', '2023-05-27 07:27:07', NULL),
(47, 'Michelle Obama', '2023-05-27 07:27:57', NULL),
(52, 'Stephen King', '2023-05-27 15:42:18', NULL),
(53, 'Suzanne Collins', '2023-05-27 17:44:14', NULL),
(54, 'Elisabetta Dami', '2023-07-21 08:13:55', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblbooks`
--

CREATE TABLE `tblbooks` (
  `id` int(11) NOT NULL,
  `BookName` varchar(255) DEFAULT NULL,
  `CatId` int(11) DEFAULT NULL,
  `AuthorId` int(11) DEFAULT NULL,
  `ISBNNumber` varchar(25) DEFAULT NULL,
  `BookPrice` decimal(10,2) DEFAULT NULL,
  `bookImage` varchar(250) NOT NULL,
  `isIssued` int(1) DEFAULT 0,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblbooks`
--

INSERT INTO `tblbooks` (`id`, `BookName`, `CatId`, `AuthorId`, `ISBNNumber`, `BookPrice`, `bookImage`, `isIssued`, `RegDate`, `UpdationDate`) VALUES
(28, 'Harry Potter and the Philosopher\'s Stone', 11, 17, '98765001', 299.00, 'bce36b22c3c9c0d744043df2aa557840.jpg', 1, '2023-05-27 06:54:34', '2023-05-27 18:17:00'),
(29, 'Tomorrow, tomorrow and tomorrow', 10, 16, '987660007', 599.00, '770a589c6a072706ea828125545a33f5.jpg', 1, '2023-05-27 07:33:13', '2023-05-27 18:17:45'),
(30, 'Magnolia Parks', 12, 18, '6688772000', 400.00, '1ffd96e86dc5bfad7fca36d5102c8b11.jpg', 0, '2023-05-27 07:34:06', '2023-05-27 18:49:55'),
(31, 'Percy Jackson and the Lightning Thief', 15, 20, '9458310071', 299.00, '9241ffddcba623a63b9bb598a4144e06.jpg', 0, '2023-05-27 07:41:02', '2023-05-27 10:12:36'),
(32, 'A Court of Thorns and Roses', 12, 35, '874100006', 300.00, '6a06ec88a6e9c82885c9e182536d3d3bjpeg', 1, '2023-05-27 07:46:44', '2023-05-27 18:18:59'),
(33, 'Throne of Glass', 11, 35, '987000214', 499.00, 'ad8b4bc51fd8b298b0a848229cf9ab29.jpg', 0, '2023-05-27 07:47:47', '2023-05-27 10:12:36'),
(34, 'Crescent City', 11, 35, '8745012', 499.00, '0108a94647c5f2fb368e7137096bb758.jpg', 0, '2023-05-27 07:49:16', '2023-05-27 10:12:36'),
(35, 'Elsewhere', 12, 16, '987000314', 399.00, 'fbe7fd71224eb79574cdd000b5939374.jpg', 1, '2023-05-27 07:51:12', '2023-05-28 17:07:48'),
(36, 'Love and Other Words', 12, 34, '7809234', 399.00, 'ead0761535795ba120790e66689eb863.jpg', 1, '2023-05-27 07:52:32', '2023-05-27 18:18:46'),
(37, 'Josh and Hazel\'s guide to not dating', 12, 34, '7896300001', 399.00, '77d7e3b26d890387e6ff3983dce8f704.jpg', 0, '2023-05-27 07:53:49', '2023-05-27 10:12:36'),
(38, 'The Unhoneymooners', 12, 34, '9874000315', 300.00, '4acf8ecb5d92d40e338f7ed90ead637b.jpg', 0, '2023-05-27 07:55:01', '2023-05-27 10:12:36'),
(39, 'The Casual Vacancy', 11, 17, '7840001', 399.00, 'b29e98c7f1650e878e16eb20c1bb7eae.jpg', 0, '2023-05-27 08:01:00', '2023-05-27 10:12:36'),
(40, 'And Then There Were None', 19, 19, '78000211', 200.00, '5eda1d6a7956a336919680011c813b2b.jpg', 0, '2023-05-27 08:02:47', '2023-05-27 10:12:36'),
(41, 'Murder on the Orient Express', 19, 19, '125444009', 200.00, '6f50c7a17c25399b05e1aa02ab2ea229.jpg', 0, '2023-05-27 08:04:11', '2023-05-27 10:12:36'),
(42, 'The ABC Murders', 19, 19, '746660011', 300.00, '1ac05bed880f54a8fde4f0e3a58e3a05jpeg', 0, '2023-05-27 08:05:42', '2023-05-27 10:12:36'),
(43, 'The Lost Hero', 11, 20, '63000549', 499.00, '6be99b15448130f6c9f26212d44db7af.jpg', 0, '2023-05-27 08:07:30', '2023-05-28 06:49:23'),
(44, 'The Hidden Oracle', 11, 20, '98700326', 399.00, '4f28d88ced16aab5054a5bb5ebd3ca48.jpg', 0, '2023-05-27 08:09:26', '2023-05-27 10:12:36'),
(45, 'Heart Bones', 12, 22, '987400016', 399.00, '3ef40d586fabdddb520521ee16ac4b44.jpg', 0, '2023-05-27 08:12:21', '2023-05-27 10:12:36'),
(46, 'Reminders of Him', 12, 22, '98033324', 399.00, 'eae7646783cde52e8c09c4068f5c64b9.jpg', 1, '2023-05-27 08:12:52', '2023-05-27 18:15:10'),
(47, 'It Ends With Us', 16, 22, '2210009', 400.00, '71b0500cec1d7accb316018333e3781f.jpg', 1, '2023-05-27 08:13:32', '2023-05-27 18:19:24'),
(48, 'Verity', 19, 22, '12000032', 299.00, '4ffcd012e4a733de348501eb57d119cf.jpg', 1, '2023-05-27 08:14:08', '2023-05-28 05:11:27'),
(49, 'The Silent Patient', 19, 23, '78500031', 299.00, '515bbd40bbffb12f662c1b617cee8903jpeg', 0, '2023-05-27 08:15:29', '2023-05-27 10:12:36'),
(50, 'The Maidens', 19, 23, '750333321', 199.00, '97e0f9313c04cf1ee0723a3cf63e7ccc.jpg', 0, '2023-05-27 08:16:27', '2023-05-27 10:12:36'),
(51, 'The Fury', 19, 23, '20333215', 199.00, 'a72f6913f0482f40f1f8de857fbca715.jpg', 0, '2023-05-27 08:17:27', '2023-05-27 10:12:36'),
(52, 'The Seven Husbans of Evelyn Hugo', 18, 25, '2000314', 399.00, 'f0bcaf2973da0b3a0ce5f59809947451.jpg', 0, '2023-05-27 08:20:18', '2023-05-27 10:12:36'),
(53, 'Daisy Jones and The Six', 18, 25, '100369', 299.00, 'eea44f6af3ebd6844d13a5aae68588b7.jpg', 0, '2023-05-27 08:21:17', '2023-05-27 10:12:36'),
(54, 'Forever, Interrrupted', 12, 25, '1002943', 299.00, 'a8a1a60349d15794b445d58bc8fdadd9.jpg', 0, '2023-05-27 08:21:56', '2023-05-27 10:12:36'),
(55, 'Sadie', 19, 26, '106657', 299.00, 'c2a142cc969c5e6994a338020cc4d400.jpg', 1, '2023-05-27 08:23:19', '2023-05-27 18:20:15'),
(56, 'The Inheritance Games', 19, 27, '1028899', 299.00, '6db6e092f61970c5fae9d82a8ed724bcjpeg', 0, '2023-05-27 08:24:47', '2023-05-27 10:12:36'),
(57, 'Deadly Little Scandals', 19, 27, '203333645', 299.00, '922d60ecadcb91b58e59b6f4331bc9c5jpeg', 0, '2023-05-27 08:26:24', '2023-05-27 10:12:36'),
(58, 'Circe', 18, 31, '1006359', 399.00, '2fc556096de664a0c8721e027d573e6e.jpg', 0, '2023-05-27 08:28:42', '2023-05-27 10:12:36'),
(59, 'Renegades', 15, 32, '139998547', 399.00, '47bdda6b962c9aa11247f54962a052b5.jpg', 0, '2023-05-27 08:33:03', '2023-05-27 10:12:36'),
(60, 'Cinder', 15, 32, '10666987', 299.00, '41b015b8c4e6562c045f4ecf4e0e7896.jpg', 0, '2023-05-27 08:33:44', '2023-05-27 10:12:36'),
(61, 'The Fault in Our Stars', 12, 36, '100036', 299.00, '32016307884553cbf5f0a787ec083387jpeg', 0, '2023-05-27 08:37:40', '2023-05-27 10:12:36'),
(62, 'Turtles All The Way Down', 16, 36, '1033365', 299.00, '894684a9764352f3e20c8ea9af52462c.png', 0, '2023-05-27 08:38:15', '2023-05-27 10:12:36'),
(63, 'The Cruel Prince', 11, 37, '5503365', 299.00, 'fcca47abb3dde655ff8bd884e0a88af5.jpg', 0, '2023-05-27 08:39:42', '2023-05-27 10:12:36'),
(64, 'Book of the Night', 19, 37, '54063255', 399.00, '38ec66cf4c4f870c7e31790047b84339.jpg', 1, '2023-05-27 08:41:23', '2023-05-27 18:23:09'),
(65, 'City of Bones', 11, 38, '56033325', 299.00, '9b10654385739f3918c2091cf24469aejpeg', 1, '2023-05-27 08:43:16', '2023-05-27 18:22:54'),
(66, 'The Bane Chronicles', 11, 38, '603254', 499.00, '437b96cb0374b9cc790823a1de860f75.jpg', 0, '2023-05-27 08:43:58', '2023-05-28 03:34:54'),
(67, 'King of Scars', 11, 39, '8403365', 399.00, '1cec014e00029f00ec6c446cc23969a8.jpg', 1, '2023-05-27 08:45:22', '2023-05-27 18:13:30'),
(68, 'Six of Crows', 11, 39, '8633354', 599.00, '00814428f74ea1c51b10b7d82ed73149.jpg', 1, '2023-05-27 08:45:50', '2023-05-27 18:05:25'),
(69, 'Shadow and Bone', 12, 39, '6033325', 399.00, '69059111027740c7cc1079d2e3c9e0f8.jpg', 0, '2023-05-27 08:46:26', '2023-05-28 19:51:45'),
(70, 'Ready Player One', 15, 44, '960357', 299.00, '0aab2c2bcbfcaed08fbdf24dc2e44748.jpg', 1, '2023-05-27 08:48:21', '2023-05-27 18:14:05'),
(71, 'Dune', 15, 41, '7803336', 200.00, '093c270862296b0a567f71cf24bc1e47.jpg', 1, '2023-05-27 08:48:55', '2023-05-27 18:16:38'),
(72, 'I\'m Glad My Mom Died ', 20, 45, '5036664', 399.00, 'b651217cb51e05014459f53fa41ee708jpeg', 0, '2023-05-27 09:06:42', '2023-05-28 03:36:25'),
(73, 'Becoming', 20, 47, '6247829', 399.00, 'd13d69e7c0d4599c2c2f29cf02ecf30f.jpg', 1, '2023-05-27 09:10:49', '2023-05-27 18:04:45'),
(74, 'The Light We Carry', 20, 47, '6028945', 399.00, '690db8983f822d768364367b072f57c6.jpg', 0, '2023-05-27 09:12:21', '2023-05-27 10:12:36'),
(75, 'It', 19, 52, '78623330', 399.00, '70e704e7943cce53dcd4c3fa9bf50c18.jpg', 1, '2023-05-27 15:44:08', '2023-05-27 18:14:32'),
(77, 'Heartless', 11, 32, '85632571', 399.00, '913ed8a82767df9a1cc0140cb63fbce2.jpg', 0, '2023-05-28 14:44:28', NULL),
(78, 'shadow and bone', 11, 39, '2344567', 200.00, '20fe87ae3d97497f75cdb4429caba219.jpg', 0, '2023-05-28 19:17:22', NULL),
(79, 'Geronimo stilton : The amazing voyage', 11, 54, '12390', 300.00, '02fbde74406a36ae09d54a8572aa02b0.jpg', 0, '2023-07-21 08:16:38', NULL);

--
-- Triggers `tblbooks`
--
DELIMITER $$
CREATE TRIGGER `delold` BEFORE INSERT ON `tblbooks` FOR EACH ROW DELETE FROM `noticification`
WHERE date < DATE_ADD(CURDATE(), INTERVAL -1 DAY)
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `notic` BEFORE INSERT ON `tblbooks` FOR EACH ROW INSERT INTO `noticification` 
(NAME, authorid, categoryid, bookimg)
VALUES(
    NEW.BookName,
    NEW.AuthorID,
    NEW.CatId, NEW.BookImage)
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `noticdel` BEFORE DELETE ON `tblbooks` FOR EACH ROW DELETE FROM `noticification` 
WHERE name = old.BookName
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `id` int(11) NOT NULL,
  `CategoryName` varchar(150) DEFAULT NULL,
  `Status` int(1) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`id`, `CategoryName`, `Status`, `CreationDate`, `UpdationDate`) VALUES
(10, 'Literary fiction', 1, '2023-05-26 15:32:47', '0000-00-00 00:00:00'),
(11, 'Fantasy', 1, '2023-05-26 17:07:40', '0000-00-00 00:00:00'),
(12, 'Romance', 1, '2023-05-27 06:57:25', '0000-00-00 00:00:00'),
(15, 'Sci-Fi', 1, '2023-05-27 06:58:54', '0000-00-00 00:00:00'),
(16, 'General', 1, '2023-05-27 06:59:14', '0000-00-00 00:00:00'),
(18, 'Historical Fiction', 1, '2023-05-27 07:00:24', '2023-05-27 07:28:53'),
(19, 'Thriller', 1, '2023-05-27 07:01:04', '0000-00-00 00:00:00'),
(20, 'Memoir', 1, '2023-05-27 07:26:38', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblissuedbookdetails`
--

CREATE TABLE `tblissuedbookdetails` (
  `id` int(11) NOT NULL,
  `BookId` int(11) NOT NULL,
  `StudentID` varchar(150) DEFAULT NULL,
  `IssuesDate` date DEFAULT current_timestamp(),
  `DueDate` date DEFAULT NULL,
  `ReturnDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `RetrunStatus` int(1) DEFAULT NULL,
  `fine` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblissuedbookdetails`
--

INSERT INTO `tblissuedbookdetails` (`id`, `BookId`, `StudentID`, `IssuesDate`, `DueDate`, `ReturnDate`, `RetrunStatus`, `fine`) VALUES
(16, 69, 'SID013', '2023-05-27', '2023-06-10', '2023-05-28 19:51:45', 1, 4),
(17, 73, 'SID013', '2023-05-27', '2023-06-10', NULL, NULL, NULL),
(18, 68, 'SID013', '2023-05-27', '2023-06-10', NULL, NULL, NULL),
(19, 67, 'SID014', '2023-05-27', '2023-06-10', NULL, NULL, NULL),
(20, 70, 'SID015', '2023-05-17', '2023-05-31', NULL, NULL, NULL),
(21, 75, 'SID016', '2023-05-20', '2023-06-03', NULL, NULL, NULL),
(22, 46, 'SID017', '2023-05-27', '2023-06-10', NULL, NULL, NULL),
(23, 71, 'SID018', '2023-05-23', '2023-06-06', NULL, NULL, NULL),
(24, 28, 'SID018', '2023-05-27', '2023-06-10', NULL, NULL, NULL),
(25, 29, 'SID018', '2023-05-27', '2023-06-10', NULL, NULL, NULL),
(26, 30, 'SID017', '2023-05-10', '2023-05-24', NULL, NULL, NULL),
(27, 36, 'SID017', '2023-05-24', '2023-06-07', NULL, NULL, NULL),
(28, 32, 'SID017', '2023-05-20', '2023-06-03', NULL, NULL, NULL),
(29, 47, 'SID016', '2023-05-27', '2023-06-10', NULL, NULL, NULL),
(30, 43, 'SID015', '2023-04-25', '2023-05-09', '2023-05-28 06:49:23', 1, 34),
(31, 55, 'SID015', '2023-05-27', '2023-06-10', NULL, NULL, NULL),
(33, 65, 'SID009', '2023-05-22', '2023-06-05', NULL, NULL, NULL),
(34, 64, 'SID009', '2023-05-17', '2023-05-31', NULL, NULL, NULL),
(35, 66, 'SID009', '2023-05-22', '2023-06-05', NULL, NULL, NULL),
(36, 72, 'SID015', '2023-05-20', '2023-06-03', '2023-05-28 05:43:58', 1, 0),
(37, 48, 'SID009', '2023-05-12', '2023-05-26', NULL, NULL, NULL),
(39, 35, 'SID009', '2023-05-23', '2023-06-06', '2023-05-28 06:25:40', 1, 0),
(40, 35, 'SID019', '2023-05-28', '2023-06-11', NULL, NULL, NULL);

--
-- Triggers `tblissuedbookdetails`
--
DELIMITER $$
CREATE TRIGGER `due` BEFORE INSERT ON `tblissuedbookdetails` FOR EACH ROW SET NEW.DueDate = DATE_ADD(NEW.IssuesDate, INTERVAL 14 DAY)
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `tblstudents`
--

CREATE TABLE `tblstudents` (
  `id` int(11) NOT NULL,
  `StudentId` varchar(100) DEFAULT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `MobileNumber` char(11) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `Status` int(1) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblstudents`
--

INSERT INTO `tblstudents` (`id`, `StudentId`, `FullName`, `EmailId`, `MobileNumber`, `Password`, `Status`, `RegDate`, `UpdationDate`) VALUES
(8, 'SID009', 'test', 'test@gmail.com', '2359874527', 'f925916e2754e5e03f75dd58a5733251', 1, '2023-05-10 08:35:06', '2023-05-29 04:39:29'),
(12, 'SID013', 'Clary', 'claryfray@gmail.com', '985632542', 'e7d3cbe7d5ba7cc361b7779e01ea222b', 1, '2023-05-27 17:38:18', NULL),
(13, 'SID014', 'Jace', 'jacewhatever@hotmail.com', '26443906', 'b97e44ac43c8ff4f2806c111f0b5b088', 1, '2023-05-27 18:06:30', '2023-05-28 07:55:02'),
(14, 'SID015', 'Sadie ', 'sadieisdead@gmail.com', '9800027345', 'b2812c42620cf096c564118c0afd458f', 1, '2023-05-27 18:08:19', '2023-05-28 17:25:38'),
(15, 'SID016', 'Will Byers', 'willthericebowl@gmail.com', '980536485', '7fdd2fa7e858ae062946bbbc1143567c', 1, '2023-05-27 18:09:32', NULL),
(16, 'SID017', 'Sneeze', 'sneezensimp@gmail.com', '890645274', '3d11033fc6c2665f47f3e0030940ab74', 1, '2023-05-27 18:10:53', NULL),
(17, 'SID018', 'Five', 'fifthisthenewfirst@gmail.com', '678904368', '45d431d3f402ab0a0753a5ee624b9f78', 1, '2023-05-27 18:11:59', NULL),
(18, 'SID019', 'vishal', 'vishalv@gmail.com', '1234567890', '8b64d2451b7a8f3fd17390f88ea35917', 1, '2023-05-28 15:32:16', NULL),
(19, 'SID020', 'KRITHIVARSHA I', 'varshakrithi28@gmail.com', '9025966279', '6fcf5ce596982cf871e669b0897c4358', 1, '2023-07-20 06:19:20', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `noticification`
--
ALTER TABLE `noticification`
  ADD PRIMARY KEY (`no`),
  ADD KEY `fk_authorid` (`authorid`),
  ADD KEY `fk_cateid` (`categoryid`);

--
-- Indexes for table `tblauthors`
--
ALTER TABLE `tblauthors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooks`
--
ALTER TABLE `tblbooks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblissuedbookdetails`
--
ALTER TABLE `tblissuedbookdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblstudents`
--
ALTER TABLE `tblstudents`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `StudentId` (`StudentId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `noticification`
--
ALTER TABLE `noticification`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `tblauthors`
--
ALTER TABLE `tblauthors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `tblbooks`
--
ALTER TABLE `tblbooks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tblissuedbookdetails`
--
ALTER TABLE `tblissuedbookdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `tblstudents`
--
ALTER TABLE `tblstudents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `noticification`
--
ALTER TABLE `noticification`
  ADD CONSTRAINT `fk_authorid` FOREIGN KEY (`authorid`) REFERENCES `tblauthors` (`id`),
  ADD CONSTRAINT `fk_cateid` FOREIGN KEY (`categoryid`) REFERENCES `tblcategory` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
