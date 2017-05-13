-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 13, 2017 at 04:32 AM
-- Server version: 10.1.20-MariaDB
-- PHP Version: 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id1648060_partydb`
--

-- --------------------------------------------------------

--
-- Table structure for table `Budget`
--

CREATE TABLE `Budget` (
  `idBudget` int(11) NOT NULL,
  `groupName` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `foodBill` double DEFAULT NULL,
  `entertainBill` double DEFAULT NULL,
  `totalBill` double DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `final_amount` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Budget_Split`
--

CREATE TABLE `Budget_Split` (
  `idBudget_Split` int(11) NOT NULL,
  `idBudget` int(11) DEFAULT NULL,
  `userName` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `splitAmount` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Create_Group`
--

CREATE TABLE `Create_Group` (
  `idCreate_Group` int(11) NOT NULL,
  `groupName` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_userName` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `eventDate` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `eventTime` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dresscode` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rsvp_date` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Create_Group`
--

INSERT INTO `Create_Group` (`idCreate_Group`, `groupName`, `admin_userName`, `eventDate`, `eventTime`, `dresscode`, `rsvp_date`) VALUES
(16, 'sachi birthday party', 'vinodani', '2017.8.9', '6.00 p.m', 'Cocktail Dresses', '2017.7.1'),
(17, 'dd', 'sasa', '2017.8.9', '6.00 p.m', 'Cocktail Dresses', '2017.7.1'),
(19, 'hksdh', 'sas', '2017.9.9', '6.00 p.m', 'Cocktail Dresses', '2017.7.1'),
(20, 'hghjghj', 'ghgjh', '2017.8.9', '6.00 p.m', 'Cocktail Dresses', '2017.7.1'),
(21, 'p1', 'dhjdg', '2017.8.9', '6.00 p.m', 'Cocktail Dresses', '2017.7.1');

-- --------------------------------------------------------

--
-- Table structure for table `Create_Shared_Folder`
--

CREATE TABLE `Create_Shared_Folder` (
  `idSharedFolder` int(11) NOT NULL,
  `admin_userName` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `groupName` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `albumName` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Entertainment`
--

CREATE TABLE `Entertainment` (
  `idEntertainment` int(11) NOT NULL,
  `groupName` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entertainmentType` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `e_cost` double DEFAULT NULL,
  `partyType` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `FeadBack`
--

CREATE TABLE `FeadBack` (
  `idFeadBack` int(11) NOT NULL,
  `pre_questions` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comments` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Gift_Details`
--

CREATE TABLE `Gift_Details` (
  `idGift_Details` int(11) NOT NULL,
  `idWish_List` int(11) DEFAULT NULL,
  `giftName` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Group_Member_Details`
--

CREATE TABLE `Group_Member_Details` (
  `idSent_Group_Details` int(11) NOT NULL,
  `groupName` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `userName` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Group_Member_Details`
--

INSERT INTO `Group_Member_Details` (`idSent_Group_Details`, `groupName`, `userName`) VALUES
(8, NULL, 'Isuri');

-- --------------------------------------------------------

--
-- Table structure for table `Login`
--

CREATE TABLE `Login` (
  `userName` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `pwd` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Meal`
--

CREATE TABLE `Meal` (
  `idMeal` int(11) NOT NULL,
  `restName` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `offers` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `packages` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `normal` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `m_bill` double DEFAULT NULL,
  `groupName` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `partyType` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Rest_Vote`
--

CREATE TABLE `Rest_Vote` (
  `idRest_Vote` int(11) NOT NULL,
  `area` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rest1` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rest2` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `count1` int(11) DEFAULT NULL,
  `count2` int(11) DEFAULT NULL,
  `selected_resturant_name` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `SearchedRestaurant`
--

CREATE TABLE `SearchedRestaurant` (
  `Rid` int(11) NOT NULL,
  `rName1` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rName2` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Select_Gifts`
--

CREATE TABLE `Select_Gifts` (
  `idSelect_Gifts` int(11) NOT NULL,
  `idGift_Details` int(11) DEFAULT NULL,
  `userName` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `giftName` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `selectedQuantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Sent_AlbumPhotos`
--

CREATE TABLE `Sent_AlbumPhotos` (
  `idSent_AlbumPhotos` int(11) NOT NULL,
  `idSharedFolder` int(11) DEFAULT NULL,
  `photos_URL` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `SignUp`
--

CREATE TABLE `SignUp` (
  `idSignUp` int(11) NOT NULL,
  `userName` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `c_pwd` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateOfBirth` date DEFAULT NULL,
  `city` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Treat_Find_Rest`
--

CREATE TABLE `Treat_Find_Rest` (
  `idFind_Rest` int(11) NOT NULL,
  `area` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location_URL` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `restName` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Treat_Invitation`
--

CREATE TABLE `Treat_Invitation` (
  `id_invitation` int(11) NOT NULL,
  `restName` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `userName` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `eventDate` date DEFAULT NULL,
  `eventTime` datetime DEFAULT NULL,
  `description` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rsvp_date` date DEFAULT NULL,
  `location_URL` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `totalcount` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Treat_Sent_Invitation`
--

CREATE TABLE `Treat_Sent_Invitation` (
  `idSent_Invitation` int(11) NOT NULL,
  `id_invitation` int(11) DEFAULT NULL,
  `userName` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Vote_Invitation`
--

CREATE TABLE `Vote_Invitation` (
  `idVote_Invitation` int(11) NOT NULL,
  `selected_resturant_name` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_userName` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `eventDate` date DEFAULT NULL,
  `eventTime` datetime DEFAULT NULL,
  `rsvp_date` date DEFAULT NULL,
  `final_count` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Vote_Sent_Invitation`
--

CREATE TABLE `Vote_Sent_Invitation` (
  `idVote_Sent_Invitation` int(11) NOT NULL,
  `idVote_Invitation` int(11) DEFAULT NULL,
  `userName` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Wish_List`
--

CREATE TABLE `Wish_List` (
  `idWish_List` int(11) NOT NULL,
  `partyType` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `groupName` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_userName` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Budget`
--
ALTER TABLE `Budget`
  ADD PRIMARY KEY (`idBudget`);

--
-- Indexes for table `Budget_Split`
--
ALTER TABLE `Budget_Split`
  ADD PRIMARY KEY (`idBudget_Split`);

--
-- Indexes for table `Create_Group`
--
ALTER TABLE `Create_Group`
  ADD PRIMARY KEY (`idCreate_Group`);

--
-- Indexes for table `Create_Shared_Folder`
--
ALTER TABLE `Create_Shared_Folder`
  ADD PRIMARY KEY (`idSharedFolder`);

--
-- Indexes for table `Entertainment`
--
ALTER TABLE `Entertainment`
  ADD PRIMARY KEY (`idEntertainment`);

--
-- Indexes for table `FeadBack`
--
ALTER TABLE `FeadBack`
  ADD PRIMARY KEY (`idFeadBack`);

--
-- Indexes for table `Gift_Details`
--
ALTER TABLE `Gift_Details`
  ADD PRIMARY KEY (`idGift_Details`);

--
-- Indexes for table `Group_Member_Details`
--
ALTER TABLE `Group_Member_Details`
  ADD PRIMARY KEY (`idSent_Group_Details`);

--
-- Indexes for table `Login`
--
ALTER TABLE `Login`
  ADD PRIMARY KEY (`userName`);

--
-- Indexes for table `Meal`
--
ALTER TABLE `Meal`
  ADD PRIMARY KEY (`idMeal`);

--
-- Indexes for table `Rest_Vote`
--
ALTER TABLE `Rest_Vote`
  ADD PRIMARY KEY (`idRest_Vote`);

--
-- Indexes for table `SearchedRestaurant`
--
ALTER TABLE `SearchedRestaurant`
  ADD PRIMARY KEY (`Rid`);

--
-- Indexes for table `Select_Gifts`
--
ALTER TABLE `Select_Gifts`
  ADD PRIMARY KEY (`idSelect_Gifts`);

--
-- Indexes for table `Sent_AlbumPhotos`
--
ALTER TABLE `Sent_AlbumPhotos`
  ADD PRIMARY KEY (`idSent_AlbumPhotos`);

--
-- Indexes for table `SignUp`
--
ALTER TABLE `SignUp`
  ADD PRIMARY KEY (`idSignUp`);

--
-- Indexes for table `Treat_Find_Rest`
--
ALTER TABLE `Treat_Find_Rest`
  ADD PRIMARY KEY (`idFind_Rest`);

--
-- Indexes for table `Treat_Invitation`
--
ALTER TABLE `Treat_Invitation`
  ADD PRIMARY KEY (`id_invitation`);

--
-- Indexes for table `Treat_Sent_Invitation`
--
ALTER TABLE `Treat_Sent_Invitation`
  ADD PRIMARY KEY (`idSent_Invitation`);

--
-- Indexes for table `Vote_Invitation`
--
ALTER TABLE `Vote_Invitation`
  ADD PRIMARY KEY (`idVote_Invitation`);

--
-- Indexes for table `Vote_Sent_Invitation`
--
ALTER TABLE `Vote_Sent_Invitation`
  ADD PRIMARY KEY (`idVote_Sent_Invitation`);

--
-- Indexes for table `Wish_List`
--
ALTER TABLE `Wish_List`
  ADD PRIMARY KEY (`idWish_List`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Create_Group`
--
ALTER TABLE `Create_Group`
  MODIFY `idCreate_Group` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `Create_Shared_Folder`
--
ALTER TABLE `Create_Shared_Folder`
  MODIFY `idSharedFolder` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Entertainment`
--
ALTER TABLE `Entertainment`
  MODIFY `idEntertainment` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Group_Member_Details`
--
ALTER TABLE `Group_Member_Details`
  MODIFY `idSent_Group_Details` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `Meal`
--
ALTER TABLE `Meal`
  MODIFY `idMeal` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Rest_Vote`
--
ALTER TABLE `Rest_Vote`
  MODIFY `idRest_Vote` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `SearchedRestaurant`
--
ALTER TABLE `SearchedRestaurant`
  MODIFY `Rid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `SignUp`
--
ALTER TABLE `SignUp`
  MODIFY `idSignUp` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Treat_Find_Rest`
--
ALTER TABLE `Treat_Find_Rest`
  MODIFY `idFind_Rest` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Treat_Invitation`
--
ALTER TABLE `Treat_Invitation`
  MODIFY `id_invitation` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Vote_Invitation`
--
ALTER TABLE `Vote_Invitation`
  MODIFY `idVote_Invitation` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Vote_Sent_Invitation`
--
ALTER TABLE `Vote_Sent_Invitation`
  MODIFY `idVote_Sent_Invitation` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Wish_List`
--
ALTER TABLE `Wish_List`
  MODIFY `idWish_List` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
