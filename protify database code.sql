-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 08, 2020 at 06:37 AM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `protify`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_album`
--

DROP TABLE IF EXISTS `tb_album`;
CREATE TABLE IF NOT EXISTS `tb_album` (
  `AlbumID` int(10) NOT NULL AUTO_INCREMENT,
  `AlbumName` varchar(30) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `ReleaseDate` date NOT NULL,
  `Note` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `ImageFile` varchar(100) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `TrackFile` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  PRIMARY KEY (`AlbumID`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `tb_album`
--

INSERT INTO `tb_album` (`AlbumID`, `AlbumName`, `ReleaseDate`, `Note`, `ImageFile`, `TrackFile`) VALUES
(1, 'Voice(Mini album)', '2015-10-07', 'K-pop - 2015', 'database/images/Artist/TaeYeon.jpg', 'database/songs/songsTaeYeon/Voice-TaeYeon-5981212_hq.mp3'),
(2, 'Rain(Single)', '2016-02-03', 'Solo - K-pop - 2016\r\n', 'database/images/Artist/TaeYeon1.jpg', 'database/songs/songsTaeYeon/Rain-TaeYeonSNSD-4327476_hq.mp3'),
(3, 'Don\'t say no', '2017-01-17', '2017 - Solo - K-pop\r\n', 'database/images/Artist/Seohyun1.jpg', 'database/songs/songs Seohyun/DontSayNo-SeoHyunSNSD-4752316.flac'),
(4, 'Secret', '2016-08-19', NULL, 'database/images/Artist/Seohyun2.jpg', 'database/songs/songs Seohyun/Secret-SeoHyunSNSDYuriSNSD-4561888_hq.mp3'),
(5, 'Like A Star', '2016-05-25', NULL, 'database/images/Artist/Taeyeon2.jpg', 'database/songs/songsTaeYeon/LikeAStar-TaeyeonSNSD-TheOne_3swtz.mp3'),
(6, 'Make Me Love You ( Mini Album ', '2016-05-25', NULL, 'database/images/Artist/TaeYeon4.jpg', 'database/songs/songsTaeYeon/MakeMeLoveYou-TaeYeonSNSD-4859902.flac'),
(7, '4F ( Seasons )', '2016-05-25', NULL, 'database/images/Artist/TaeYeon3.jpeg', 'database/songs/songsTaeYeon/FourSeasons-TaeYeonSNSD-5915513_hq.mp3'),
(8, 'Lucky Lucky', '2016-05-25', NULL, 'database/images/Artist/Seohyun3.jpg', 'database/songs/songs Seohyun/Lucky-Tiffany-Jessica-Taeyeon-SeoHyun_322jj.mp3'),
(9, 'Love Love Love', '2016-05-25', NULL, 'database/images/Artist/Seohyun4.jpg', 'database/songs/songs Seohyun/OhMyLove-Tiffany-Jessica-SeoHyun_322jm.mp3'),
(10, 'My Dream', '2016-05-25', NULL, 'database/images/Artist/Seohyun5.jpeg', 'database/songs/songs Seohyun/DreamsComeTrue-Donghae-SeoHyun_3eecc_hq.mp3'),
(11, 'The Memories', '2016-05-25', NULL, 'database/images/Artist/IU1.jpg', 'database/songs/songsIU/MemoriesoftheSea-IU_3dfy2_hq.mp3'),
(12, 'Monday Monday', '2016-05-25', NULL, 'database/images/Artist/IU2.jpg', 'database/songs/songsIU/MondayAfternoon-IU-2754146_hq.mp3'),
(13, 'You And I', '2016-05-25', NULL, 'database/images/Artist/IU3.jpg', 'database/songs/songsIU/YouAndI-IU_3gynj.flac'),
(14, 'New World ( 2015 )', '2016-05-25', NULL, 'database/images/Artist/IU4.jpg', 'database/songs/songsIU/NewWorld-IU-2434846_hq.mp3'),
(15, '10 Minutes ', '2016-05-25', NULL, 'database/images/Artist/Hyori1.jpg', 'database/songs/songHyori/10Minutes-LeeHyori_449m8.flac'),
(16, 'Higherrrrr', '2016-05-25', NULL, 'database/images/Artist/Ailee1.jpg', 'database/songs/songsAilee/Higher-AileeYiruma-2906544_hq.mp3'),
(17, 'Kiss Me Kiss Me', '2016-05-25', NULL, 'database/images/Artist/BoA1.jpg', 'database/songs/songsBoA/KissMyLips-BoA-3902055_hq.mp3'),
(18, 'Drive ( 2014 )', '2016-05-25', NULL, 'database/images/Artist/ChungHa1.jpg', 'database/songs/songsChungHa/Drive-KimChungHa-5525943_hq.mp3'),
(19, 'Make A Wish ( 2011 )', '2016-05-25', NULL, 'database/images/Artist/ChungHa2.jpeg', 'database/songs/songsChungHa/MakeAWish-KimChungHa-5017216_hq.mp3'),
(20, 'Star ( 2010 )', '2016-05-25', NULL, 'database/images/Artist/Heize1.jpg', 'database/songs/songsHeize/Star-Heize.mp3'),
(21, 'Talking', '2016-05-25', NULL, 'database/images/Artist/HyunA1.jpg', 'database/songs/songsHyunA/ATalk-HyunA-3335712_hq.mp3'),
(22, 'I\'m The Best', '2016-05-25', NULL, 'database/images/Artist/HyunA2.jpg', 'database/songs/songsHyunA/BecauseImTheBest-HyunA4MinuteIlHoonBTOB-4084777_hq.mp3'),
(23, 'Saraha ( 4 ONLY )', '2016-05-25', NULL, 'database/images/Artist/ChungHa3.jpg', 'database/songs/songsChungHa/HandsOnMe-KimChungHa-5017213_hq.mp3'),
(24, 'Stranger ( 2016 )', '2016-05-25', NULL, 'database/images/Artist/KrystalJung1.jpg', 'database/songs/songsKrystal/BeautifulStranger-Amberfx-Lunaf_3yya5_hq.mp3'),
(25, 'So Hard', '2016-05-25', NULL, 'database/images/Artist/KrystalJung2.jpg', 'database/songs/songsKrystal/HardButEasy-fLuna-Krystal_42u42_hq.mp3'),
(26, 'Goodbye ( Solo )', '2016-05-25', NULL, 'database/images/Artist/KrystalJung3.jpg', 'database/songs/songsKrystal/GoodbyeSummer-AmberfxLunafxKrystalfxD.O.EXOK-2669906_hq (1).mp3'),
(27, '24 Hours', '2017-08-27', NULL, 'database/images/Artist/Sunmi1.jpeg', 'database/songs/songsSunmi/24-Hours-Sunmi.mp3'),
(28, 'Black ( Hard )', '2014-08-19', NULL, 'database/images/Artist/Sunmi2.jpg', 'database/songs/songsSunmi/Black-Pearl-Sunmi.mp3'),
(29, 'Don\'t Wait', '2017-11-07', NULL, 'database/images/Artist/Suzy1.jpg', 'database/songs/songsSuzy/DontWaitForYourLove-SuzymissAParkWon-4781307_hq.mp3'),
(30, 'Remember Me ', '2018-05-28', NULL, 'database/images/Artist/TiffanyYoung1.jpg', 'database/songs/songsTiffanyYoung/RememberMeFromCoco-TiffanySNSD-5413249.flac'),
(31, 'The Way', '2014-09-18', NULL, 'database/images/Artist/TiffanyYoung2.jpg', 'database/songs/songsTiffanyYoung/TheWay-TiffanySNSD-2949501_hq.mp3'),
(32, 'Cream Cream', '2015-01-22', NULL, 'database/images/Artist/TiffanyYoung3.jpg', 'database/songs/songsTiffanyYoung/IceCream-JessicaSNSD-TiffanySNSD_3we3n_hq.mp3');

-- --------------------------------------------------------

--
-- Table structure for table `tb_album_liked`
--

DROP TABLE IF EXISTS `tb_album_liked`;
CREATE TABLE IF NOT EXISTS `tb_album_liked` (
  `UserID` varchar(30) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `AlbumID` int(10) NOT NULL,
  `Like_Action` varchar(10) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  PRIMARY KEY (`UserID`,`AlbumID`),
  KEY `UserABL` (`UserID`),
  KEY `AlbumABL` (`AlbumID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_album_track`
--

DROP TABLE IF EXISTS `tb_album_track`;
CREATE TABLE IF NOT EXISTS `tb_album_track` (
  `AlbumID` int(10) NOT NULL,
  `TrackID` int(10) NOT NULL,
  PRIMARY KEY (`TrackID`),
  KEY `AlbumABT` (`AlbumID`) USING BTREE,
  KEY `TrackABT` (`TrackID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `tb_album_track`
--

INSERT INTO `tb_album_track` (`AlbumID`, `TrackID`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(2, 6),
(2, 7),
(2, 8),
(2, 9),
(3, 21),
(3, 22),
(3, 23),
(3, 24),
(3, 25),
(4, 26),
(4, 27),
(4, 28),
(4, 29),
(5, 10),
(5, 15),
(5, 16),
(5, 17),
(5, 19),
(6, 13),
(6, 18),
(7, 11),
(7, 12),
(7, 14),
(8, 30),
(8, 31),
(8, 32),
(8, 43),
(8, 44),
(8, 45),
(9, 33),
(9, 34),
(9, 35),
(9, 36),
(9, 37),
(10, 38),
(10, 39),
(10, 40),
(10, 41),
(10, 42),
(11, 68),
(11, 69),
(11, 70),
(11, 71),
(11, 72),
(11, 73),
(12, 74),
(12, 75),
(12, 76),
(12, 77),
(13, 78),
(13, 79),
(13, 80),
(13, 81),
(13, 82),
(13, 83),
(14, 84),
(14, 85),
(14, 86),
(14, 87),
(14, 88),
(15, 144),
(15, 145),
(15, 146),
(15, 147),
(16, 155),
(16, 156),
(17, 151),
(17, 152),
(17, 153),
(17, 154),
(18, 89),
(18, 90),
(18, 91),
(18, 92),
(18, 93),
(18, 94),
(19, 95),
(19, 96),
(19, 97),
(19, 98),
(19, 99),
(19, 100),
(20, 148),
(20, 149),
(20, 150),
(21, 134),
(21, 135),
(21, 136),
(21, 138),
(21, 139),
(22, 140),
(22, 141),
(22, 142),
(22, 143),
(23, 101),
(23, 102),
(23, 103),
(23, 104),
(24, 122),
(24, 123),
(24, 124),
(24, 125),
(24, 126),
(25, 127),
(25, 128),
(25, 129),
(25, 130),
(26, 131),
(26, 132),
(26, 133),
(27, 112),
(27, 113),
(27, 114),
(27, 115),
(27, 116),
(28, 117),
(28, 118),
(28, 119),
(28, 120),
(28, 121),
(29, 105),
(29, 106),
(29, 107),
(29, 108),
(29, 109),
(30, 46),
(30, 47),
(30, 48),
(30, 49),
(30, 50),
(30, 51),
(30, 52),
(30, 53),
(31, 54),
(31, 55),
(31, 56),
(31, 57),
(31, 58),
(31, 59),
(31, 60),
(32, 61),
(32, 62),
(32, 63),
(32, 64),
(32, 65),
(32, 66),
(32, 67);

-- --------------------------------------------------------

--
-- Table structure for table `tb_album_type`
--

DROP TABLE IF EXISTS `tb_album_type`;
CREATE TABLE IF NOT EXISTS `tb_album_type` (
  `AlbumID` int(10) NOT NULL,
  `TypeID` int(10) NOT NULL,
  PRIMARY KEY (`AlbumID`,`TypeID`),
  KEY `TypeID` (`TypeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_artist`
--

DROP TABLE IF EXISTS `tb_artist`;
CREATE TABLE IF NOT EXISTS `tb_artist` (
  `ArtistID` int(10) NOT NULL AUTO_INCREMENT,
  `ArtistName` varchar(30) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `Note` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `ImageFile` varchar(100) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `TrackFile` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  PRIMARY KEY (`ArtistID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `tb_artist`
--

INSERT INTO `tb_artist` (`ArtistID`, `ArtistName`, `Note`, `ImageFile`, `TrackFile`) VALUES
(1, 'Taeyeon', 'Kim Tae-yeon (born March 9, 1989), known mononymously as Taeyeon, is a South Korean singer.', 'database/images/Artist/Taeyeon.jpg', 'K-pop/Pop/R&B'),
(2, 'Seohyun', 'Seo Ju-hyun (born June 28, 1991), known professionally as Seohyun, is a South Korean singer and actress.', 'database/images/Artist/Seohyun.jpg', 'Pop/Rap'),
(3, 'Tiffany Young', 'Stephanie Hwang (Korean name: Hwang Mi-young, born August 1, 1989), commonly known by her stage name Tiffany or Tiffany Young, is a Korean American singer-actress.', 'database/images/Artist/TiffanyYoung.jpg', 'K-pop/US&UK'),
(4, 'IU', 'Lee Ji-eun (Hangul: 이지은, Hanja: 李 知恩, Sino-Vietnamese: Lý Trí Ân) (born May 16, 1993), commonly known by her stage name IU, is a singer, songwriter and actress. Korean members.', 'database/images/Artist/IU.jpg', 'K-Pop/R&B/Soul'),
(5, 'Chung Ha', 'Kim Chungha (Korean: 김 청하, born February 9, 1996), also known mononymously as Chungha (stylized as CHUNG HA), is a Korean singer, dancer, musician, and choreographer', 'database/images/Artist/ChungHa.png', 'Pop/Solo'),
(6, 'Sunmi', 'Lee Sun-mi, also known as Lee Seon Mi [1] (Hangul: 이선미, Hanja: 李善 美, Sino-Vietnamese: Lý Tuyên Mỹ, born May 2, 1992) is a female singer and songwriter who Korea', 'database/images/Artist/Sunmi.jpg', 'Pop'),
(7, 'Heize', 'Heize rapper was born on August 9, 1991, Heize is a famous singer, rapper and songwriter in Korea\r\n', 'database/images/Artist/Heize.png', 'R&B/HipHop/Soul'),
(8, 'HyunA', 'Kim Hyun-ah, (Hangul: 김현아; Hanja: 金 泫 雅, Sino-Vietnamese: Kim Huyen Nha, born June 6, 1992), commonly known by her stage name HyunA, is a female singer, dancer, and music. Korean models and models', 'database/images/Artist/HyunA.jpg', 'K-Pop'),
(9, 'Ailee', 'Amy Lee (Korean name: Lee Ye-jin, Hangul, born May 30, 1989), known by her stage name Ailee (에일 리), is a singer.', 'database/images/Artist/Ailee.jpg', 'K-pop/J-Pop/Dance/R&B/Electropop/Ballad'),
(10, 'Hyori', '\r\nLee Hyori, nicknamed Hyori, born May 10, 1979, is a Korean female singer, actress, model, music producer and MC', 'database/images/Artist/Hyori.jpg', 'K-Pop/R&B'),
(11, 'BoA', '\r\nKwon Bo Ah (born November 5, 1986 [1]), known by her stage name BoA, stands for the phrase Beat of Angel, [2] is a Korean female singer, dancer and musician.', 'database/images/Artist/BoA.jpg', 'Pop/Dance-pop/Electropop/R&B'),
(12, 'Krystal', '\r\nChrystal Soo Jung (born October 24, 1994), known by her stage name Krystal Jung, is a Korean-American female singer.', 'database/images/Artist/KrystalJung.jpg', 'K-pop/J-pop/Dance-pop/Electronic'),
(13, 'Suzy', 'Bae Suzy was born on October 10, 1994, 24 years old. As a singer, actress of Korea', 'database/images/Artist/Suzy.jpg', 'Dance-pop/K-pop/R&B');

-- --------------------------------------------------------

--
-- Table structure for table `tb_artist_album`
--

DROP TABLE IF EXISTS `tb_artist_album`;
CREATE TABLE IF NOT EXISTS `tb_artist_album` (
  `ArtistID` int(10) NOT NULL,
  `AlbumID` int(10) NOT NULL,
  PRIMARY KEY (`AlbumID`),
  KEY `tb_artist_album_ibfk_2` (`ArtistID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `tb_artist_album`
--

INSERT INTO `tb_artist_album` (`ArtistID`, `AlbumID`) VALUES
(1, 1),
(1, 2),
(1, 5),
(1, 6),
(1, 7),
(2, 3),
(2, 4),
(2, 8),
(2, 9),
(2, 10),
(4, 11),
(4, 12),
(4, 13),
(4, 14),
(5, 18),
(5, 19),
(7, 20),
(8, 21),
(8, 22),
(9, 16),
(10, 15),
(11, 17);

-- --------------------------------------------------------

--
-- Table structure for table `tb_artist_track`
--

DROP TABLE IF EXISTS `tb_artist_track`;
CREATE TABLE IF NOT EXISTS `tb_artist_track` (
  `ArtistID` int(10) NOT NULL,
  `TrackID` int(10) NOT NULL,
  PRIMARY KEY (`ArtistID`,`TrackID`),
  KEY `ArtistATT` (`ArtistID`) USING BTREE,
  KEY `TrackATT` (`TrackID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `tb_artist_track`
--

INSERT INTO `tb_artist_track` (`ArtistID`, `TrackID`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(1, 11),
(1, 12),
(1, 13),
(1, 14),
(1, 15),
(1, 16),
(1, 17),
(1, 18),
(1, 19),
(1, 20),
(2, 21),
(2, 22),
(2, 23),
(2, 24),
(2, 25),
(2, 26),
(2, 27),
(2, 28),
(2, 29),
(2, 30),
(2, 31),
(2, 32),
(2, 33),
(2, 34),
(2, 35),
(2, 36),
(2, 37),
(2, 38),
(2, 39),
(2, 40),
(2, 41),
(2, 42),
(2, 43),
(2, 44),
(2, 45),
(3, 46),
(3, 47),
(3, 48),
(3, 49),
(3, 50),
(3, 51),
(3, 52),
(3, 53),
(3, 54),
(3, 55),
(3, 56),
(3, 57),
(3, 58),
(3, 59),
(3, 60),
(3, 61),
(3, 62),
(3, 63),
(3, 64),
(3, 65),
(3, 66),
(3, 67),
(4, 68),
(4, 69),
(4, 70),
(4, 71),
(4, 72),
(4, 73),
(4, 74),
(4, 75),
(4, 76),
(4, 77),
(4, 78),
(4, 79),
(4, 80),
(4, 81),
(4, 82),
(4, 83),
(4, 84),
(4, 85),
(4, 86),
(4, 87),
(4, 88),
(5, 89),
(5, 90),
(5, 91),
(5, 92),
(5, 93),
(5, 94),
(5, 95),
(5, 96),
(5, 97),
(5, 98),
(5, 99),
(5, 100),
(5, 101),
(5, 102),
(5, 103),
(5, 104),
(6, 112),
(6, 113),
(6, 114),
(6, 115),
(6, 116),
(6, 117),
(6, 118),
(6, 119),
(6, 121),
(7, 148),
(7, 149),
(7, 150),
(8, 134),
(8, 135),
(8, 136),
(8, 138),
(8, 139),
(8, 140),
(8, 141),
(8, 142),
(8, 143),
(9, 155),
(9, 156),
(10, 144),
(10, 145),
(10, 146),
(10, 147),
(11, 151),
(11, 152),
(11, 153),
(11, 154),
(12, 122),
(12, 123),
(12, 124),
(12, 125),
(12, 126),
(12, 127),
(12, 128),
(12, 129),
(12, 130),
(12, 131),
(12, 132),
(12, 133),
(13, 105),
(13, 106),
(13, 107),
(13, 108),
(13, 109),
(13, 110),
(13, 111);

-- --------------------------------------------------------

--
-- Table structure for table `tb_artist_type`
--

DROP TABLE IF EXISTS `tb_artist_type`;
CREATE TABLE IF NOT EXISTS `tb_artist_type` (
  `ArtistID` int(10) NOT NULL,
  `TypeID` int(10) NOT NULL,
  PRIMARY KEY (`ArtistID`,`TypeID`),
  KEY `TypeID` (`TypeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_comment`
--

DROP TABLE IF EXISTS `tb_comment`;
CREATE TABLE IF NOT EXISTS `tb_comment` (
  `CmtID` int(10) NOT NULL AUTO_INCREMENT,
  `CmtType` varchar(10) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `AlbumID` int(10) DEFAULT NULL,
  `PlaylistID` int(10) DEFAULT NULL,
  `UserID` varchar(30) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `Name` varchar(50) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `Email` varchar(50) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `Content` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `DateTime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`CmtID`),
  KEY `tb_comment_ibfk_2` (`UserID`),
  KEY `tb_comment_ibfk_3` (`AlbumID`),
  KEY `tb_comment_ibfk_4` (`PlaylistID`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `tb_comment`
--

INSERT INTO `tb_comment` (`CmtID`, `CmtType`, `AlbumID`, `PlaylistID`, `UserID`, `Name`, `Email`, `Content`, `DateTime`) VALUES
(6, 'playlist', NULL, 3, 'admin', 'admin', 'seohyun@gmail.com', '1231245324532', '2020-07-03 16:02:15'),
(7, 'playlist', NULL, 3, 'admin', 'admin', 'seohyun@gmail.com', '1231245324532', '2020-07-03 16:02:15'),
(8, 'playlist', NULL, 3, 'admin', 'admin', 'seohyun@gmail.com', '1231245324532', '2020-07-03 16:02:15'),
(9, 'playlist', NULL, 3, 'admin', 'seohyun', 'seohyun@gmail.com', '1231245324532543534', '2020-07-03 16:02:15'),
(10, 'playlist', NULL, 3, 'admin', 'admin', 'seohyun@gmail.com', '1231245324532', '2020-07-03 16:02:15'),
(11, 'playlist', NULL, 3, 'admin', 'admin', 'seohyun@gmail.com', '1231245324532', '2020-07-03 16:02:15'),
(12, 'playlist', NULL, 3, 'admin', 'admin', 'seohyun@gmail.com', '1231245324532', '2020-07-03 16:02:15'),
(13, 'playlist', NULL, 3, 'admin', 'seohyun', 'seohyun@gmail.com', '1231245324532543534', '2020-07-03 16:02:15'),
(14, 'playlist', NULL, 3, 'admin', 'admin', 'seohyun@gmail.com', '1231245324532', '2020-07-03 16:02:15'),
(15, 'playlist', NULL, 3, 'admin', 'admin', 'seohyun@gmail.com', '1231245324532', '2020-07-03 16:02:15'),
(16, 'playlist', NULL, 3, 'admin', 'admin', 'seohyun@gmail.com', '1231245324532', '2020-07-03 16:02:15'),
(17, 'playlist', NULL, 3, 'admin', 'seohyun', 'seohyun@gmail.com', '1231245324532543534', '2020-07-03 16:02:15'),
(18, 'playlist', NULL, 3, 'admin', 'admin', 'seohyun@gmail.com', '1231245324532', '2020-07-03 16:02:15'),
(19, 'playlist', NULL, 3, 'admin', 'admin', 'seohyun@gmail.com', '1231245324532', '2020-07-03 16:02:15'),
(20, 'playlist', NULL, 3, 'admin', 'admin', 'seohyun@gmail.com', '1231245324532', '2020-07-03 16:02:15'),
(21, 'playlist', NULL, 3, 'admin', 'seohyun', 'seohyun@gmail.com', '1231245324532543534', '2020-07-03 16:02:15'),
(25, 'album', 1, NULL, 'admin', '123', '123@gmail.com', '123', '2020-07-07 22:34:36');

-- --------------------------------------------------------

--
-- Table structure for table `tb_playlist`
--

DROP TABLE IF EXISTS `tb_playlist`;
CREATE TABLE IF NOT EXISTS `tb_playlist` (
  `PlaylistID` int(10) NOT NULL AUTO_INCREMENT,
  `UserID` varchar(30) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `PlaylistName` varchar(30) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `CreateDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `Note` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `ImageFile` varchar(100) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL DEFAULT 'images/a0.jpg',
  `TrackFile` varchar(100) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  PRIMARY KEY (`PlaylistID`),
  KEY `UserPL` (`UserID`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `tb_playlist`
--

INSERT INTO `tb_playlist` (`PlaylistID`, `UserID`, `PlaylistName`, `CreateDate`, `Note`, `ImageFile`, `TrackFile`) VALUES
(3, 'seohyun', 'Seohyun Playlist', '2020-06-30 17:32:36', NULL, 'database/images/Playlist/default.jpg', NULL),
(4, 'admin', 'Admin Playlist', '2020-06-30 17:32:36', NULL, 'database/images/Playlist/default.jpg', NULL),
(6, 'seohyun', 'Seohyun 2nd Playlist', '2020-07-03 14:16:53', NULL, 'database/images/Playlist/default.jpg', NULL),
(7, 'admin', 'Admin 2nd Playlist', '2020-07-03 14:17:08', NULL, 'database/images/Playlist/default.jpg', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tb_playlist_liked`
--

DROP TABLE IF EXISTS `tb_playlist_liked`;
CREATE TABLE IF NOT EXISTS `tb_playlist_liked` (
  `UserID` varchar(30) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `PlaylistID` int(10) NOT NULL,
  `Like_Action` varchar(10) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  PRIMARY KEY (`UserID`,`PlaylistID`),
  KEY `UserPLL` (`UserID`),
  KEY `AlbumPLL` (`PlaylistID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_playlist_track`
--

DROP TABLE IF EXISTS `tb_playlist_track`;
CREATE TABLE IF NOT EXISTS `tb_playlist_track` (
  `PlaylistID` int(10) NOT NULL,
  `TrackID` int(10) NOT NULL,
  PRIMARY KEY (`PlaylistID`,`TrackID`),
  KEY `TrackID` (`TrackID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `tb_playlist_track`
--

INSERT INTO `tb_playlist_track` (`PlaylistID`, `TrackID`) VALUES
(1, 1),
(1, 2),
(1, 15),
(3, 1),
(3, 2),
(3, 3),
(3, 4),
(3, 6),
(3, 8),
(4, 1),
(4, 2),
(4, 3),
(4, 5),
(4, 15),
(5, 1),
(5, 4),
(5, 7),
(7, 1),
(7, 2),
(7, 4),
(49, 1),
(50, 9),
(50, 11);

-- --------------------------------------------------------

--
-- Table structure for table `tb_queue_track`
--

DROP TABLE IF EXISTS `tb_queue_track`;
CREATE TABLE IF NOT EXISTS `tb_queue_track` (
  `UserID` varchar(30) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `TrackID` int(10) NOT NULL,
  PRIMARY KEY (`UserID`,`TrackID`),
  KEY `SongID` (`TrackID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `tb_queue_track`
--

INSERT INTO `tb_queue_track` (`UserID`, `TrackID`) VALUES
('admin', 1),
('admin', 2),
('admin', 4),
('admin', 6),
('admin', 9),
('admin', 55),
('cothuy', 123),
('cothuy123', 1),
('M01', 1),
('M02', 1),
('tam123', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_reply`
--

DROP TABLE IF EXISTS `tb_reply`;
CREATE TABLE IF NOT EXISTS `tb_reply` (
  `ReplyID` int(10) NOT NULL AUTO_INCREMENT,
  `CmtID` int(10) NOT NULL,
  `UserID` varchar(30) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `Content` varchar(30) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `Datetime` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`ReplyID`),
  KEY `CmtRP` (`CmtID`),
  KEY `tb_reply_ibfk_1` (`UserID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `tb_reply`
--

INSERT INTO `tb_reply` (`ReplyID`, `CmtID`, `UserID`, `Content`, `Datetime`) VALUES
(2, 2, 'seohyun', 'huhu xin cam on nhieu a', '2020-07-01 09:37:18'),
(3, 3, 'seohyun', 'xin cam on cac ban fan yeu dau', '2020-07-01 09:37:37'),
(5, 6, 'admin', '21312312', '2020-07-04 04:22:17'),
(6, 7, 'admin', '23123', '2020-07-04 04:22:56'),
(7, 9, 'admin', '443', '2020-07-04 04:24:51'),
(8, 9, 'admin', '44343', '2020-07-04 04:25:18'),
(9, 8, 'admin', '434', '2020-07-04 04:25:25'),
(10, 6, 'admin', '4343', '2020-07-04 04:25:30'),
(11, 6, 'admin', '434343', '2020-07-04 04:25:47'),
(12, 7, 'admin', '543534', '2020-07-05 07:32:24'),
(13, 22, 'admin', '42342', '2020-07-05 07:33:28');

-- --------------------------------------------------------

--
-- Table structure for table `tb_track`
--

DROP TABLE IF EXISTS `tb_track`;
CREATE TABLE IF NOT EXISTS `tb_track` (
  `TrackID` int(10) NOT NULL AUTO_INCREMENT,
  `TrackName` varchar(30) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `ReleaseDate` date NOT NULL,
  `Length` time NOT NULL,
  `TypeID` int(10) NOT NULL,
  `Note` varchar(100) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `ImageFile` varchar(100) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `TrackFile` varchar(100) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  PRIMARY KEY (`TrackID`),
  KEY `TypeID` (`TypeID`)
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `tb_track`
--

INSERT INTO `tb_track` (`TrackID`, `TrackName`, `ReleaseDate`, `Length`, `TypeID`, `Note`, `ImageFile`, `TrackFile`) VALUES
(1, 'I', '2015-10-07', '00:03:26', 1, 'MV realease in 10-7-2015', 'database/images/Artist/Taeyeon2.jpg', 'database/songs/songsTaeYeon/I-TaeYeonSNSDVerbalJint-4137808.flac'),
(2, 'Rain', '2016-02-03', '00:03:42', 1, '\"Rain\" is a song by South Korean singer Kim Tae-yeon, a member of the South Korean girl group Girls\'', 'database/images/Artist/Taeyeon2.jpg', 'database/songs/songsTaeYeon/Rain-TaeYeonSNSD-4327476_hq.mp3'),
(3, '1111', '2020-06-08', '00:03:43', 1, 'When there’s not much time left to the day\r\nWhen we used to make wishes and laugh\r\nEverything remind', 'database/images/Artist/Taeyeon6.jpg', 'database/songs/songsTaeYeon/1111-TaeYeonSNSD-4655211.flac'),
(4, 'All With You', '2018-07-17', '00:03:53', 1, 'I am happy that I’m by your side\r\nI dream because I am by your side', 'database/images/Artist/Taeyeon6.jpg', 'database/songs/songsTaeYeon/AllWithYou.flac'),
(5, 'AndOne', '2018-01-10', '00:04:15', 1, 'Taeyeon was trained by her former vocal instructor, known professionally as The One, for three years', 'database/images/Artist/Taeyeon3.jpg', 'database/songs/songsTaeYeon/AndOne-TaeYeonSNSD-2509580_hq.mp3'),
(6, 'Angel', '2018-09-12', '00:04:24', 1, 'You’re my angel sometimes, something special today, let me fall asleep. Don’t run away tonight', 'database/images/Artist/Taeyeon3.jpg', 'database/songs/songsTaeYeon/Angel-ChancellorTaeYeonSNSD-5950316.flac'),
(7, 'Blue', '2017-08-23', '00:03:32', 1, 'Taeyeon was trained by her former vocal instructor, known professionally as The One, for three years', 'database/images/Artist/Taeyeon3.jpg', 'database/songs/songsTaeYeon/Blue-TaeYeonSNSD-5916635_hq.mp3'),
(8, 'Fine', '2020-04-26', '00:03:29', 1, '\"Fine\" is a song recorded by South Korean singer Taeyeon for her first studio album My Voice (2017).', 'database/images/Artist/Taeyeon2.jpg', 'database/songs/songsTaeYeon/Fine-TaeYeonSNSD-4781295.flac'),
(9, 'Four Seasons', '2020-02-16', '00:03:08', 1, 'Girls\' Generation\'s Horror Movie Factory (Hangul: 소녀시대의 공포영화 제작소), commonly abbreviated to \"H.M.F\", ', 'database/images/Artist/Taeyeon2.jpg', 'database/songs/songsTaeYeon/FourSeasons-TaeYeonSNSD-5915513_hq.mp3'),
(10, 'If', '2011-01-11', '00:04:25', 1, 'I is the debut extended play by South Korean singer Taeyeon, released on October 7, 2015, by SM Ente', 'database/images/Artist/Taeyeon2.jpg', 'database/songs/songsTaeYeon/If-TaeYeon_36u6n.mp3'),
(11, 'I Got Love', '2017-05-29', '00:03:10', 1, '\"I Got Love\" is a single recorded by South Korean singer Taeyeon for her first studio album My Voice', 'database/images/Artist/Taeyeon2.jpg', 'database/songs/songsTaeYeon/IGotLove-TaeYeonSNSD-4774230.flac'),
(12, 'I Love You', '2010-04-17', '00:03:22', 1, '\"I Love You\" (Korean: 사랑해요) is a ballad song performed by South Korean idol singer Kim Taeyeon, lead', 'database/images/Artist/Taeyeon1.jpg', 'database/songs/songsTaeYeon/ILoveYouAthenaOst-TaeYeonSNSD_vdk7.mp3'),
(13, 'Like A Star', '2012-02-12', '00:03:57', 1, '\"Like a Star\" is a song by English singer-songwriter Corinne Bailey Rae, released as the lead single', 'database/images/Artist/Taeyeon1.jpg', 'database/songs/songsTaeYeon/LikeAStar-TaeyeonSNSD-TheOne_3swtz.mp3'),
(14, 'Make Me Love You', '2016-05-25', '00:03:32', 1, '\"Make Me Love You\" is a song recorded by South Korean singer Kim Tae-yeon. It was released as a digi', 'database/images/Artist/Taeyeon1.jpg', 'database/songs/songsTaeYeon/MakeMeLoveYou-TaeYeonSNSD-4859902.flac'),
(15, 'Something New', '2018-09-18', '00:03:20', 1, '\"Something New\" is a song recorded by South Korean singer Taeyeon. It was released on June 18, 2018 ', 'database/images/Artist/Taeyeon1.jpg', 'database/songs/songsTaeYeon/SomethingNew-TaeYeonSNSD-5509308_hq.mp3'),
(16, 'Stay', '2018-05-25', '00:03:23', 1, 'Titles on Wikipedia are case sensitive except for the first character; please check alternative capi', 'database/images/Artist/Taeyeon3.jpeg', 'database/songs/songsTaeYeon/Stay-TaeYeonSNSD-5520466_hq.mp3'),
(17, 'UR', '2019-06-22', '00:04:34', 1, ' At the height of its popularity, the game acquired spiritual significance, and events in the game w', 'database/images/Artist/Taeyeon7.jpg', 'database/songs/songsTaeYeon/UR-TaeYeonSNSD-4137810.flac'),
(18, 'Voice', '2018-06-28', '00:03:13', 1, 'Voice (Taeyeon EP) From Wikipedia, the free encyclopedia Voice (stylized in all caps) is the debut J', 'database/images/Artist/Taeyeon7.jpg', 'database/songs/songsTaeYeon/Voice-TaeYeon-5981212_hq.mp3'),
(19, 'Why', '2018-01-21', '00:03:27', 1, '\"Why\" is a song recorded by South Korean singer Taeyeon for her second extended play of the same nam', 'database/images/Artist/Taeyeon7.jpg', 'database/songs/songsTaeYeon/Why-TaeYeonSNSD-4494289.flac'),
(20, 'Can You Hear Me', '2011-01-24', '00:04:00', 1, 'Can You Hear Me? (EP), a 2013 extended play by South Korean singer IU', 'database/images/Artist/Taeyeon7.jpg', 'database/songs/songsTaeYeon/CanYouHearMe-TaeYeon_36s8b.mp3'),
(21, 'Bad Oppa', '2017-04-12', '00:03:45', 2, 'Seo Joo-hyun (Hangul: 서주현 , Hanja: 徐朱玄, Hán-Việt: Từ Châu Huyền) sinh ngày 28 tháng 6 năm 1991), thư', 'database/images/Artist/Seohyun2.jpg', 'database/songs/songs Seohyun/BadOppa-TiffanyftJessicaftSeoHyu_62wh.mp3'),
(22, 'Because You Love Me', '2012-01-28', '00:04:34', 2, '\"Because You Love Me\" is a song written by Kostas and John Scott Sherrill, and recorded by American ', 'database/images/Artist/Seohyun2.jpg', 'database/songs/songs Seohyun/BecauseYouLoveMe-TeaYeonSNSD-Seo_42679.mp3'),
(23, 'Don\'t Say No', '2012-05-17', '00:03:13', 2, 'Don\'t Say Nois the debut extended playby South Korean singer Seohyun. It was released by SM Entertai', 'database/images/Artist/Seohyun2.jpg', 'database/songs/songs Seohyun/DontSayNo-SeoHyunSNSD-4752316.flac'),
(24, 'Dreams Come True', '2011-04-12', '00:34:24', 2, 'Dreams Come True (ドリームズ・カム・トゥルー, Dorīmuzu Kamu Turū) are a Japanese pop band formed in 1988, compris', 'database/images/Artist/Seohyun2.jpg', 'database/songs/songs Seohyun/DreamsComeTrue-Donghae-SeoHyun_3eecc_hq.mp3'),
(25, 'Flying Duck', '2012-04-23', '00:02:34', 2, 'The flying steamer duck (Tachyeres patachonicus), also known as the flying steamer-duck or flying st', 'database/images/Artist/Seohyun2.jpg', 'database/songs/songs Seohyun/FlyingDuck-SeohuynSNSD_42wbm.mp3'),
(26, 'Gee (Acoustic Rock)', '2011-03-12', '00:04:06', 2, 'This is default Note! We will update this line later. THe update will be released soon .', 'database/images/Artist/Seohyun2.jpg', 'database/songs/songs Seohyun/GeeAcousticRock-Sunny-Tiffany-Jess_3abcd_hq.mp3'),
(27, 'I\'m Your Girl', '2007-12-05', '00:03:26', 2, 'This is default Note! We will update this line later. THe update will be released soon .', 'database/images/Artist/Seohyun2.jpg', 'database/songs/songs Seohyun/ImYourGirl-GG-JessicaftSeoHyun_7bzy.mp3'),
(28, 'It\'s Okay Even If It Hurts', '2012-05-19', '00:04:37', 2, 'This is default Note! We will update this line later. THe update will be released soon .', 'database/images/Artist/Seohyun2.jpg', 'database/songs/songs Seohyun/ItsOkayEvenIfItHurts-SeoHyunSNS_426dz.mp3'),
(29, 'I Will Wait For You', '2012-04-11', '00:04:47', 2, 'This is default Note! We will update this line later. THe update will be released soon .', 'database/images/Artist/Seohyun2.jpg', 'database/songs/songs Seohyun/Jack120602Sketchbook-SeoHyunSNSD_427nq_hq.mp3'),
(30, 'Jack (120602 Sketchbook)', '2012-05-18', '00:02:03', 2, 'This is default Note! We will update this line later. THe update will be released soon .', 'database/images/Artist/Seohyun2.jpg', 'database/songs/songs Seohyun/JjarajajjaJuHyunMi-SeoHyun_45cv7.mp3'),
(31, 'Jjarajajja ', '2012-06-27', '00:02:57', 3, 'This is default Note! We will update this line later. THe update will be released soon .', 'database/images/Artist/Seohyun2.jpg', 'database/songs/songs Seohyun/JjarajajjaJuHyunMi-SeoHyun_45cv7.mp3'),
(32, 'Journey', '2011-07-29', '00:04:24', 3, 'This is default Note! We will update this line later. THe update will be released soon .', 'database/images/Artist/Seohyun2.jpg', 'database/songs/songs Seohyun/JourneyParadiseRanchOST-DBSK-TVX_w9h9.mp3'),
(33, 'Lucky', '2011-07-18', '00:03:21', 3, 'This is default Note! We will update this line later. THe update will be released soon .', 'database/images/Artist/Seohyun2.jpg', 'database/songs/songs Seohyun/Lucky-Tiffany-Jessica-Taeyeon-SeoHyun_322jj.mp3'),
(34, 'Motion', '2015-08-18', '00:04:04', 3, 'This is default Note! We will update this line later. THe update will be released soon .', 'database/images/Artist/Seohyun2.jpg', 'database/songs/songs Seohyun/MotionOstHeadingToTheGround-TaeY_45jh7_hq.mp3'),
(35, 'Oh My Love', '2011-07-21', '00:01:50', 3, 'This is default Note! We will update this line later. THe update will be released soon .', 'database/images/Artist/Seohyun2.jpg', 'database/songs/songs Seohyun/OhMyLove-Tiffany-Jessica-SeoHyun_322jm.mp3'),
(36, 'Secret', '2016-01-20', '00:03:48', 3, 'This is default Note! We will update this line later. THe update will be released soon .', 'database/images/Artist/Seohyun4.jpg', 'database/songs/songs Seohyun/Secret-SeoHyunSNSDYuriSNSD-4561888_hq.mp3'),
(37, 'Sometimes', '2012-07-11', '00:04:07', 3, 'This is default Note! We will update this line later. THe update will be released soon .', 'database/images/Artist/Seohyun4.jpg', 'database/songs/songs Seohyun/Sometimes-SeoHyunSNSD-TiffanySNSD_426k2.mp3'),
(38, 'Speak Now', '2011-05-29', '00:03:58', 3, 'This is default Note! We will update this line later. THe update will be released soon .', 'database/images/Artist/Seohyun4.jpg', 'database/songs/songs Seohyun/SpeakNow-SeoHyunSNSD-2580485_hq.mp3'),
(39, 'Star Star Star', '2012-05-13', '00:04:30', 3, 'This is default Note! We will update this line later. THe update will be released soon .', 'database/images/Artist/Seohyun4.jpg', 'database/songs/songs Seohyun/StarStarStar-SeoHyunSNSD-Tiffany_426kd.mp3'),
(40, 'The Magic Of The Yellow Ribbon', '2011-07-11', '00:02:43', 3, 'This is default Note! We will update this line later. THe update will be released soon .', 'database/images/Artist/Seohyun4.jpg', 'database/songs/songs Seohyun/TheMagicOfTheYellowRibbon-SeoHyunSNSDKimHyungJoong-2576128_hq.mp3'),
(41, 'Timing', '2012-01-11', '00:02:00', 3, 'This is default Note! We will update this line later. THe update will be released soon .', 'database/images/Artist/Seohyun5.jpeg', 'database/songs/songs Seohyun/Timing-Andy-SeoHyun_44a5z_hq.mp3'),
(42, 'T’PLE COUPLE Want It!', '2013-07-18', '00:02:40', 3, 'This is default Note! We will update this line later. THe update will be released soon .', 'database/images/Artist/Seohyun5.jpeg', 'database/songs/songs Seohyun/TPLECOUPLEWantIt-KyuHyunSuperJuniorSeoHyunSNSD-2646557_hq.mp3'),
(43, 'Twinkle (Taetiseo)', '2012-02-29', '00:03:26', 3, 'This is default Note! We will update this line later. THe update will be released soon .', 'database/images/Artist/Seohyun5.jpeg', 'database/songs/songs Seohyun/TwinkleTaetiseo-TiffanySNSD-Taeye_3whz3_hq.mp3'),
(44, 'Waves Fine (Kim Soo Ro OST)', '2011-08-27', '00:04:35', 3, 'This is default Note! We will update this line later. THe update will be released soon .', 'database/images/Artist/Seohyun3.png', 'database/songs/songs Seohyun/WavesFineKimSooRoOST-SeoHyunSN_3bkrk_hq.mp3'),
(45, 'Winter Wonderland', '2012-06-18', '00:02:16', 3, 'This is default Note! We will update this line later. THe update will be released soon .', 'database/images/Artist/Seohyun3.png', 'database/songs/songs Seohyun/WinterWonderland-YuriSNSD-SeoHyun_427kn_hq.mp3'),
(46, 'Beautiful Love', '2012-06-23', '00:04:11', 3, 'This is default Note! We will update this line later. THe update will be released soon .', 'database/images/Artist/TiffanyYoung.jpg', 'database/songs/songsTiffanyYoung/BeautifulLove-Tiffany_nh43.mp3'),
(47, 'Because It\'s You', '2012-07-28', '00:03:23', 3, 'This is default Note! We will update this line later. THe update will be released soon .', 'database/images/Artist/TiffanyYoung.jpg', 'database/songs/songsTiffanyYoung/BecauseItsYouLoveRainOST-Tiffany_3yxbb_hq.mp3'),
(48, 'Born Again', '2015-09-29', '00:03:13', 3, 'This is default Note! We will update this line later. THe update will be released soon .', 'database/images/Artist/TiffanyYoung.jpg', 'database/songs/songsTiffanyYoung/BornAgain-TiffanyYoung-5898749_hq.mp3'),
(49, 'By Myself', '2007-09-25', '00:04:16', 3, 'This is default Note! We will update this line later. THe update will be released soon .', 'database/images/Artist/TiffanyYoung.jpg', 'database/songs/songsTiffanyYoung/ByMyself-TiffanySNSD_9km8.mp3'),
(50, 'Heartbreak Hotel', '2014-07-11', '00:04:24', 3, 'This is default Note! We will update this line later. THe update will be released soon .', 'database/images/Artist/TiffanyYoung.jpg', 'database/songs/songsTiffanyYoung/HeartbreakHotel-TiffanySNSD-4479304_hq.mp3'),
(51, 'Ice Cream', '2012-04-12', '00:03:41', 4, 'This is default Note! We will update this line later. THe update will be released soon .', 'database/images/Artist/TiffanyYoung.jpg', 'database/songs/songsTiffanyYoung/IceCream-JessicaSNSD-TiffanySNSD_3we3n_hq.mp3'),
(52, 'Lady Marmalade', '2011-06-12', '00:04:24', 4, 'This is default Note! We will update this line later. THe update will be released soon .', 'database/images/Artist/TiffanyYoung.jpg', 'database/songs/songsTiffanyYoung/LadyMarmalade-TaeYeon-Tiffany_398td.mp3'),
(53, 'Lips On Lips', '2014-01-11', '00:03:44', 4, 'This is default Note! We will update this line later. THe update will be released soon .', 'database/images/Artist/TiffanyYoung.jpg', 'database/songs/songsTiffanyYoung/LipsOnLips-TiffanyYoung-5898750_hq.mp3'),
(54, 'Magnetic Moon', '2016-09-12', '00:03:14', 4, 'This is default Note! We will update this line later. THe update will be released soon .', 'database/images/Artist/TiffanyYoung.jpg', 'database/songs/songsTiffanyYoung/MagneticMoon-TiffanyYoung-6049609_hq.mp3'),
(55, 'Over My Skin', '2014-05-27', '00:02:56', 4, 'This is default Note! We will update this line later. THe update will be released soon .', 'database/images/Artist/TiffanyYoung.jpg', 'database/songs/songsTiffanyYoung/OverMySkin-TiffanyYoung-5533098_hq.mp3'),
(56, 'Peppermint', '2016-09-23', '00:03:25', 4, 'This is default Note! We will update this line later. THe update will be released soon .', 'database/images/Artist/TiffanyYoung.jpg', 'database/songs/songsTiffanyYoung/Peppermint-TiffanyYoung-5787966_hq.mp3'),
(57, 'Picnic Song 2', '2010-04-16', '00:01:42', 4, 'This is default Note! We will update this line later. THe update will be released soon .', 'database/images/Artist/TiffanyYoung.jpg', 'database/songs/songsTiffanyYoung/PicnicSong2-TiffanySNSD_maha.mp3'),
(58, 'Remember Me', '2012-05-17', '00:02:21', 4, 'This is default Note! We will update this line later. THe update will be released soon .', 'database/images/Artist/TiffanyYoung.jpg', 'database/songs/songsTiffanyYoung/RememberMeFromCoco-TiffanySNSD-5413249.flac'),
(59, 'Rolling In The Deep', '2012-08-13', '00:02:21', 4, 'This is default Note! We will update this line later. THe update will be released soon .', 'database/images/Artist/TiffanyYoung.jpg', 'database/songs/songsTiffanyYoung/RollingInTheDeep-TiffanySNSD_427rq_hq.mp3'),
(60, 'Runaway (Remix)', '2015-06-17', '00:03:47', 4, 'This is default Note! We will update this line later. THe update will be released soon .', 'database/images/Artist/TiffanyYoung.jpg', 'database/songs/songsTiffanyYoung/RunawayRemix-TiffanyYoungBabyfaceChloeFlower-6000401_hq.mp3'),
(61, 'Run For Your Life', '2015-06-08', '00:02:44', 4, 'This is default Note! We will update this line later. THe update will be released soon .', 'database/images/Artist/TiffanyYoung.jpg', 'database/songs/songsTiffanyYoung/RunForYourLife-TiffanyYoung-6123699_hq.mp3'),
(62, 'Teach You', '2016-07-01', '00:03:07', 4, 'This is default Note! We will update this line later. THe update will be released soon .', 'database/images/Artist/TiffanyYoung.jpg', 'database/songs/songsTiffanyYoung/TeachYou-TiffanyYoung-5686789_hq.mp3'),
(63, 'The Way', '2016-05-19', '00:01:25', 4, 'This is default Note! We will update this line later. THe update will be released soon .', 'database/images/Artist/TiffanyYoung.jpg', 'database/songs/songsTiffanyYoung/TheWay-TiffanySNSD-2949501_hq.mp3'),
(64, 'To the Beautiful You ', '2015-07-10', '00:04:01', 4, 'This is default Note! We will update this line later. THe update will be released soon .', 'database/images/Artist/TiffanyYoung.jpg', 'database/songs/songsTiffanyYoung/ToBeautifulYouToTheBeautifulYouO_472x9_hq.mp3'),
(65, 'Umbrella', '2011-06-12', '00:03:22', 4, 'This is default Note! We will update this line later. THe update will be released soon .', 'database/images/Artist/TiffanyYoung.jpg', 'database/songs/songsTiffanyYoung/Umbrella-TiffanySNSD_vrpc.mp3'),
(66, 'Wannabe', '2016-04-19', '00:02:45', 5, 'This is default Note! We will update this line later. THe update will be released soon .', 'database/images/Artist/TiffanyYoung.jpg', 'database/songs/songsTiffanyYoung/Wannabe-Jessica-Tiffany-Sunny-SooYou_3xvs6_hq.mp3'),
(67, 'We Belong Together', '2011-09-19', '00:03:13', 5, 'This is default Note! We will update this line later. THe update will be released soon .', 'database/images/Artist/TiffanyYoung.jpg', 'database/songs/songsTiffanyYoung/WeBelongTogether-TiffanySNSD_32997.mp3'),
(68, 'A Dreamer', '2007-09-14', '00:04:15', 5, 'This is default Note! We will update this line later. THe update will be released soon .', 'database/images/Artist/IU.jpg', 'database/songs/songsIU/ADreamer-IU_dkuk.mp3'),
(69, 'Beautiful Dancer', '2013-06-04', '00:04:29', 5, 'This is default Note! We will update this line later. THe update will be released soon .', 'database/images/Artist/IU.jpg', 'database/songs/songsIU/BeautifulDancer-IU-2438148_hq.mp3'),
(70, 'Can\'t Love You Anymore ', '2015-06-09', '00:03:15', 5, 'This is default Note! We will update this line later. THe update will be released soon .', 'database/images/Artist/IU.jpg', 'database/songs/songsIU/CantLoveYouAnymore-IUOhHyuk-4861700.flac'),
(71, 'Follow The Moon', '2015-06-12', '00:03:38', 5, 'This is default Note! We will update this line later. THe update will be released soon .', 'database/images/Artist/IU.jpg', 'database/songs/songsIU/FollowTheMoon-IU-2754148_hq.mp3'),
(72, 'Leon', '2015-06-18', '00:03:21', 5, 'This is default Note! We will update this line later. THe update will be released soon .', 'database/images/Artist/IU.jpg', 'database/songs/songsIU/Leon-IUParkMyungSoo-4088532_hq.mp3'),
(73, 'Love Is Hooroorok', '2012-06-18', '00:01:55', 5, 'This is default Note! We will update this line later. THe update will be released soon .', 'database/images/Artist/IU.jpg', 'database/songs/songsIU/LoveIsHooroorok-IU_3tgte_hq.mp3'),
(74, 'Loving You', '2011-05-18', '00:02:19', 5, 'This is default Note! We will update this line later. THe update will be released soon .', 'database/images/Artist/IU.jpg', 'database/songs/songsIU/LovingYou-IU_36t2d.mp3'),
(75, 'Memories of the Sea', '2011-05-21', '00:03:33', 5, 'This is default Note! We will update this line later. THe update will be released soon .', 'database/images/Artist/IU.jpg', 'database/songs/songsIU/MemoriesoftheSea-IU_3dfy2_hq.mp3'),
(76, 'Monday Afternoon', '2016-07-01', '00:04:13', 5, 'This is default Note! We will update this line later. THe update will be released soon .', 'database/images/Artist/IU.jpg', 'database/songs/songsIU/MondayAfternoon-IU-2754146_hq.mp3'),
(77, 'My Dear Friend', '2015-06-11', '00:03:40', 5, 'This is default Note! We will update this line later. THe update will be released soon .', 'database/images/Artist/IU.jpg', 'database/songs/songsIU/MyDearFriendThankYouForBeingYou-IU-4591671.flac'),
(78, 'New World', '2013-06-17', '00:03:44', 5, 'This is default Note! We will update this line later. THe update will be released soon .', 'database/images/Artist/IU2.jpg', 'database/songs/songsIU/NewWorld-IU-2434846_hq.mp3'),
(79, 'Rain Drop', '2011-06-02', '00:03:50', 6, 'This is default Note! We will update this line later. THe update will be released soon .', 'database/images/Artist/IU2.jpg', 'database/songs/songsIU/RainDrop-IU_3jvw3_hq.mp3'),
(80, 'Sogyeokdong', '2015-04-16', '00:03:52', 6, 'This is default Note! We will update this line later. THe update will be released soon .', 'database/images/Artist/Seohyun2.jpg', 'database/songs/songsIU/Sogyeokdong-IU-3541182_hq.mp3'),
(81, 'Someday', '2012-05-14', '00:03:37', 6, 'This is default Note! We will update this line later. THe update will be released soon .', 'database/images/Artist/Seohyun2.jpg', 'database/songs/songsIU/Someday-IU_ycc7.mp3'),
(82, 'SoulMate', '2011-06-30', '00:03:39', 6, 'This is default Note! We will update this line later. THe update will be released soon .', 'database/images/Artist/Seohyun2.jpg', 'database/songs/songsIU/SoulMate-ZICOIU-5775348.flac'),
(83, 'The Age Of The Cathedrals', '2013-05-28', '00:03:37', 6, 'This is default Note! We will update this line later. THe update will be released soon .', 'database/images/Artist/Seohyun2.jpg', 'database/songs/songsIU/TheAgeOfTheCathedrals-IU-2426376_hq.mp3'),
(84, 'Twenty Three', '2017-10-06', '00:03:14', 6, 'This is default Note! We will update this line later. THe update will be released soon .', 'database/images/Artist/Seohyun2.jpg', 'database/songs/songsIU/TwentyThree-IU-4155748_hq.mp3'),
(85, 'Voice Mail', '2013-10-05', '00:04:06', 6, 'This is default Note! We will update this line later. THe update will be released soon .', 'database/images/Artist/Seohyun2.jpg', 'database/songs/songsIU/VoiceMail-IU-2438262_hq.mp3'),
(86, 'Waiting', '2011-04-10', '00:01:59', 6, 'This is default Note! We will update this line later. THe update will be released soon .', 'database/images/Artist/Seohyun2.jpg', 'database/songs/songsIU/Waiting-IU_y6zb.mp3'),
(87, 'Womanizer', '2010-10-27', '00:03:20', 6, 'This is default Note! We will update this line later. THe update will be released soon .', 'database/images/Artist/Seohyun2.jpg', 'database/songs/songsIU/Womanizer-IU_j73g.mp3'),
(88, 'You And I', '2017-04-18', '00:04:01', 6, 'This is default Note! We will update this line later. THe update will be released soon .', 'database/images/Artist/Seohyun2.jpg', 'database/songs/songsIU/YouAndI-IU_3gynj.flac'),
(89, 'Bad Boy', '2015-04-02', '00:03:07', 6, 'This is default Note! We will update this line later. THe update will be released soon .', 'database/images/Artist/ChungHa.png', 'database/songs/songsChungHa/BadBoy-KimChungHa-5354191.flac'),
(90, 'Bb', '2015-04-29', '00:01:17', 6, 'This is default Note! We will update this line later. THe update will be released soon .', 'database/images/Artist/ChungHa.png', 'database/songs/songsChungHa/Bb-KimChungHa-5525941_hq.mp3'),
(91, 'Call It Love', '2015-07-21', '00:04:01', 7, 'This is default Note! We will update this line later. THe update will be released soon .', 'database/images/Artist/ChungHa.png', 'database/songs/songsChungHa/CallItLove-KimChungHa-6008994_hq.mp3'),
(92, 'Cherry Kisses', '2013-04-12', '00:03:14', 7, 'This is default Note! We will update this line later. THe update will be released soon .', 'database/images/Artist/ChungHa.png', 'database/songs/songsChungHa/CherryKisses-KimChungHa-5525944_hq.mp3'),
(93, 'Chica', '2012-03-28', '00:03:12', 7, 'This is default Note! We will update this line later. THe update will be released soon .', 'database/images/Artist/ChungHa.png', 'database/songs/songsChungHa/Chica-KimChungHa-6008992_hq.mp3'),
(94, 'Cosmic Dust ', '2013-07-12', '00:03:44', 7, 'This is default Note! We will update this line later. THe update will be released soon .', 'database/images/Artist/ChungHa.png', 'database/songs/songsChungHa/CosmicDust-KimChungHa-5017217_hq.mp3'),
(95, 'Do It', '2015-06-18', '00:03:33', 7, 'This is default Note! We will update this line later. THe update will be released soon .', 'database/images/Artist/ChungHa.png', 'database/songs/songsChungHa/DoIt-KimChungHa-5354192.flac'),
(96, 'Drive', '2014-05-12', '00:03:16', 7, 'This is default Note! We will update this line later. THe update will be released soon .', 'database/images/Artist/ChungHa1.jpg', 'database/songs/songsChungHa/Drive-KimChungHa-5525943_hq.mp3'),
(97, 'From Now On', '2014-04-25', '00:03:29', 7, 'This is default Note! We will update this line later. THe update will be released soon .', 'database/images/Artist/ChungHa1.jpg', 'database/songs/songsChungHa/FromNowOn-KimChungHa-5525942_hq.mp3'),
(98, 'Gotta Go', '2016-08-19', '00:03:41', 7, 'This is default Note! We will update this line later. THe update will be released soon .', 'database/images/Artist/ChungHa1.jpg', 'database/songs/songsChungHa/GottaGo-KimChungHa-5837454.mp3'),
(99, 'Hands On Me ', '2016-07-12', '00:01:08', 7, 'This is default Note! We will update this line later. THe update will be released soon .', 'database/images/Artist/ChungHa1.jpg', 'database/songs/songsChungHa/HandsOnMe-KimChungHa-5017213_hq.mp3'),
(100, 'Love U', '2015-10-04', '00:03:10', 7, 'This is default Note! We will update this line later. THe update will be released soon .', 'database/images/Artist/ChungHa1.jpg', 'database/songs/songsChungHa/LoveU-KimChungHa-5525945.mp3'),
(101, 'Make A Wish ', '2017-07-13', '00:03:05', 7, 'This is default Note! We will update this line later. THe update will be released soon .', 'database/images/Artist/ChungHa1.jpg', 'database/songs/songsChungHa/MakeAWish-KimChungHa-5017216_hq.mp3'),
(102, 'Offset', '2018-05-14', '00:01:09', 7, 'This is default Note! We will update this line later. THe update will be released soon .', 'database/images/Artist/ChungHa2.jpg', 'database/songs/songsChungHa/Offset-KimChungHa-5354193.flac'),
(103, 'Remind Of You', '2017-08-17', '00:04:03', 7, 'This is default Note! We will update this line later. THe update will be released soon .', 'database/images/Artist/ChungHa2.jpg', 'database/songs/songsChungHa/RemindOfYou-KimChungHa-5354190.flac'),
(104, 'Roller Coaster', '2012-05-09', '00:03:32', 8, 'This is default Note! We will update this line later. THe update will be released soon .', 'database/images/Artist/ChungHa2.jpg', 'database/songs/songsChungHa/RollerCoaster-KimChungHa-5354194.flac'),
(105, 'Because Even Though', '2014-05-11', '00:05:06', 8, 'This is default Note! We will update this line later. THe update will be released soon .', 'database/images/Artist/Suzy.jpg', 'database/songs/songsSuzy/BecauseEvenThoughIHateYouILoveYou-SuzymissA-2958423.mp3'),
(106, 'Classic', '2012-10-28', '00:03:51', 8, 'This is default Note! We will update this line later. THe update will be released soon .', 'database/images/Artist/Suzy.jpg', 'database/songs/songsSuzy/Classic-JYP-Taecyeon2PM-WooYoung_49sqy_hq.mp3'),
(107, 'Come Out If You Love Me', '2012-05-17', '00:03:27', 8, 'This is default Note! We will update this line later. THe update will be released soon .', 'database/images/Artist/Suzy.jpg', 'database/songs/songsSuzy/ComeOutIfYouLoveMe2012BeanPole_474y7_hq.mp3'),
(108, 'Don’t Wait For Your Love ', '2018-09-14', '00:04:13', 8, 'This is default Note! We will update this line later. THe update will be released soon .', 'database/images/Artist/Suzy.jpg', 'database/songs/songsSuzy/DontWaitForYourLove-SuzymissAParkWon-4781307_hq.mp3'),
(109, 'Dream', '2013-06-13', '00:03:42', 8, 'This is default Note! We will update this line later. THe update will be released soon .', 'database/images/Artist/Suzy.jpg', 'database/songs/songsSuzy/Dream-BaekHyunEXOKSuzymissA-4294861_hq.mp3'),
(110, 'Even Though I Love You', '2012-12-14', '00:04:43', 8, 'This is default Note! We will update this line later. THe update will be released soon .', 'database/images/Artist/Suzy.jpg', 'database/songs/songsSuzy/EvenThoughILoveYouBigOstPart6-_4383w_hq.mp3'),
(111, 'Good Night', '2015-09-17', '00:04:37', 8, 'This is default Note! We will update this line later. THe update will be released soon .', 'database/images/Artist/Suzy.jpg', 'database/songs/songsSuzy/GoodNight-SuzymissAYiruma-5411287_hq.mp3'),
(112, '24 Hours', '2014-04-12', '00:03:21', 8, 'This is default Note! We will update this line later. THe update will be released soon .', 'database/images/Artist/Sunmi.jpg', 'database/songs/songsSunmi/24-Hours-Sunmi.mp3'),
(113, 'Addict', '2018-04-17', '00:01:52', 8, 'This is default Note! We will update this line later. THe update will be released soon .', 'database/images/Artist/Sunmi.jpg', 'database/songs/songsSunmi/Addict-Sunmi.mp3'),
(114, 'Black Pearl', '2018-06-11', '00:03:19', 8, 'This is default Note! We will update this line later. THe update will be released soon .', 'database/images/Artist/Sunmi.jpg', 'database/songs/songsSunmi/Black-Pearl-Sunmi.mp3'),
(115, 'Burn (Blind)', '2015-03-18', '00:03:30', 8, 'This is default Note! We will update this line later. THe update will be released soon .', 'database/images/Artist/Sunmi.jpg', 'database/songs/songsSunmi/Burn-Blind-Sunmi.mp3'),
(116, 'Curve', '2018-05-14', '00:03:37', 8, 'This is default Note! We will update this line later. THe update will be released soon .', 'database/images/Artist/Sunmi.jpg', 'database/songs/songsSunmi/Curve-Sunmi.mp3'),
(117, 'Frozen In Time', '2013-07-15', '00:04:40', 8, 'This is default Note! We will update this line later. THe update will be released soon .', 'database/images/Artist/Sunmi.jpg', 'database/songs/songsSunmi/Frozen-In-Time-Sunmi.mp3'),
(118, 'Full Moon', '2016-01-28', '00:03:22', 8, 'This is default Note! We will update this line later. THe update will be released soon .', 'database/images/Artist/Sunmi.jpg', 'database/songs/songsSunmi/Full-Moon-Sunmi.mp3'),
(119, 'Gotta Go', '2020-03-18', '00:02:59', 8, 'This is default Note! We will update this line later. THe update will be released soon .', 'database/images/Artist/Sunmi.jpg', 'database/songs/songsSunmi/Gotta-Go-Sunmi.mp3'),
(120, 'If That Was You', '2016-04-21', '00:03:48', 8, 'This is default Note! We will update this line later. THe update will be released soon .', 'database/images/Artist/Sunmi.jpg', 'database/songs/songsSunmi/If-That-Was-You-Sunmi.mp3'),
(121, 'Lalalay', '2013-09-25', '00:02:54', 9, 'This is default Note! We will update this line later. THe update will be released soon .', 'database/images/Artist/KrystalJung.jpg', 'database/songs/songsSunmi/Lalalay-Sunmi.mp3'),
(122, 'Beautiful Stranger', '2012-09-26', '00:04:06', 9, 'This is default Note! We will update this line later. THe update will be released soon .', 'database/images/Artist/KrystalJung.jpg', 'database/songs/songsKrystal/BeautifulStranger-Amberfx-Lunaf_3yya5_hq.mp3'),
(123, 'Butterfly ', '2012-07-19', '00:03:02', 9, 'This is default Note! We will update this line later. THe update will be released soon .', 'database/images/Artist/KrystalJung.jpg', 'database/songs/songsKrystal/ButterflyToTheBeautifulYouOst-Jes_45ej8_hq.mp3'),
(124, 'Calling Out', '2010-07-16', '00:04:21', 9, 'This is default Note! We will update this line later. THe update will be released soon .', 'database/images/Artist/KrystalJung.jpg', 'database/songs/songsKrystal/CallingOut-LunaKrystalFx_ker2.mp3'),
(125, 'Don\'t Speak', '2010-04-17', '00:04:20', 9, 'This is default Note! We will update this line later. THe update will be released soon .', 'database/images/Artist/KrystalJung.jpg', 'database/songs/songsKrystal/DontSpeak-fx-Krystal-Luna_nmyu.mp3'),
(126, 'Goodbye Summer', '2017-03-21', '00:03:10', 9, 'This is default Note! We will update this line later. THe update will be released soon .', 'database/images/Artist/KrystalJung.jpg', 'database/songs/songsKrystal/GoodbyeSummer-AmberfxLunafxKrystalfxD.O.EXOK-2669906_hq (1).mp3'),
(127, 'Grumbling', '2011-11-07', '00:04:24', 9, 'This is default Note! We will update this line later. THe update will be released soon .', 'database/images/Artist/KrystalJung.jpg', 'database/songs/songsKrystal/Grumbling-LeeteukSuperJunior-Krysta_wtsy.mp3'),
(128, 'Hard But Easy', '2012-06-19', '00:03:47', 9, 'This is default Note! We will update this line later. THe update will be released soon .', 'database/images/Artist/KrystalJung.jpg', 'database/songs/songsKrystal/HardButEasy-fLuna-Krystal_42u42_hq.mp3'),
(129, 'Melody', '2010-11-06', '00:04:22', 9, 'This is default Note! We will update this line later. THe update will be released soon .', 'database/images/Artist/KrystalJung.jpg', 'database/songs/songsKrystal/Melody-Krystalfx_mfw2.mp3'),
(130, 'My First Kiss', '2017-08-17', '00:03:56', 9, 'This is default Note! We will update this line later. THe update will be released soon .', 'database/images/Artist/KrystalJung.jpg', 'database/songs/songsKrystal/MyFirstKiss-KrystalfxKeySHINee-3150340.mp3'),
(131, 'Say Yes ', '2016-09-12', '00:03:58', 9, 'This is default Note! We will update this line later. THe update will be released soon .', 'database/images/Artist/KrystalJung.jpg', 'database/songs/songsKrystal/SayYesMakeYourMoveOst-JessicaSNSDKrisEXOM-3069347_hq.mp3'),
(132, 'Someday', '2013-07-22', '00:03:35', 9, 'This is default Note! We will update this line later. THe update will be released soon .', 'database/images/Artist/KrystalJung.jpg', 'database/songs/songsKrystal/Someday-JessicaSNSD-Krystalfx_4gr2z_hq.mp3'),
(133, 'Spread It\'s Wings', '2010-12-04', '00:03:56', 9, 'This is default Note! We will update this line later. THe update will be released soon .', 'database/images/Artist/KrystalJung.jpg', 'database/songs/songsKrystal/SpreadItsWingsGodofstudyOst-Fx_j4fa.mp3'),
(134, 'A Bitter Day', '2014-06-19', '00:03:47', 9, 'This is default Note! We will update this line later. THe update will be released soon .', 'database/images/Artist/HyunA.jpg', 'database/songs/songsHyunA/ABitterDay-HyunaKim-JunHyungYong-_3pyyw_hq.mp3'),
(135, 'A Talk', '2012-07-18', '00:01:19', 9, 'This is default Note! We will update this line later. THe update will be released soon .', 'database/images/Artist/HyunA.jpg', 'database/songs/songsHyunA/ATalk-HyunA-3335712_hq.mp3'),
(136, 'Because I\'m The Best', '2016-02-25', '00:03:22', 9, 'This is default Note! We will update this line later. THe update will be released soon .', 'database/images/Artist/HyunA.jpg', 'database/songs/songsHyunA/BecauseImTheBest-HyunA4MinuteIlHoonBTOB-4084777_hq.mp3'),
(138, 'Blacklist', '2014-03-12', '00:03:29', 9, 'This is default Note! We will update this line later. THe update will be released soon .', 'database/images/Artist/HyunA1.jpg', 'database/songs/songsHyunA/Blacklist-HyunALE-3335715_hq.mp3'),
(139, 'Bubble Pop', '2013-09-12', '00:03:32', 9, 'This is default Note! We will update this line later. THe update will be released soon .', 'database/images/Artist/HyunA1.jpg', 'database/songs/songsHyunA/BubblePop-HyunaKim_3pyyu_hq.mp3'),
(140, 'Change', '2016-06-27', '00:03:31', 9, 'This is default Note! We will update this line later. THe update will be released soon .', 'database/images/Artist/HyunA1.jpg', 'database/songs/songsHyunA/Change-HyunaKim-JoonHyungYong_3r9tg_hq.mp3'),
(141, 'Downtown', '2017-08-19', '00:03:23', 10, 'This is default Note! We will update this line later. THe update will be released soon .', 'database/images/Artist/HyunA2.jpg', 'database/songs/songsHyunA/Downtown-HyunaKim_3pyyv_hq.mp3'),
(142, 'French Kiss', '2013-05-12', '00:03:11', 10, 'This is default Note! We will update this line later. THe update will be released soon .', 'database/images/Artist/HyunA2.jpg', 'database/songs/songsHyunA/FrenchKiss-HyunA-3335713_hq.mp3'),
(143, 'Gangnam Style (Hyuna Version)', '2012-06-18', '00:03:39', 10, 'This is default Note! We will update this line later. THe update will be released soon .', 'database/images/Artist/HyunA2.jpg', 'database/songs/songsHyunA/GangnamStyleHyunaVersion-PSY_4dq25_hq.mp3'),
(144, '10 Minutes', '2015-09-17', '00:03:54', 10, 'This is default Note! We will update this line later. THe update will be released soon .', 'database/images/Artist/HyunA2.jpg', 'database/songs/songHyori/10Minutes-LeeHyori_449m8.flac'),
(145, 'A Cat On The Roof', '2011-01-28', '00:04:40', 10, 'This is default Note! We will update this line later. THe update will be released soon .', 'database/images/Artist/Hyori.jpg', 'database/songs/songHyori/ACatOnTheRoof-LeeHyori_3bqcs.mp3'),
(146, 'Anymotion', '2011-06-13', '00:03:30', 10, 'This is default Note! We will update this line later. THe update will be released soon .', 'database/images/Artist/Hyori.jpg', 'database/songs/songHyori/Anymotion-LeeHyori_3hjdy_hq.mp3'),
(147, 'Anystar', '2007-05-28', '00:03:46', 10, 'This is default Note! We will update this line later. THe update will be released soon .', 'database/images/Artist/Hyori.jpg', 'database/songs/songHyori/Anystar-LeeHyori_wgt.mp3'),
(148, 'Star', '2014-07-29', '00:03:38', 10, 'This is default Note! We will update this line later. THe update will be released soon .', 'database/images/Artist/Heize.jpg', 'database/songs/songsHeize/Star-Heize.mp3'),
(149, 'That\'s All', '2020-04-18', '00:03:39', 10, 'This is default Note! We will update this line later. THe update will be released soon .', 'database/images/Artist/Heize.png', 'database/songs/songsHeize/That-s-All-Heize.mp3'),
(150, 'Would Be Better', '2016-09-18', '00:03:42', 10, 'This is default Note! We will update this line later. THe update will be released soon .', 'database/images/Artist/Heize.png', 'database/songs/songsHeize/Would-Be-Better-Heize.mp3'),
(151, 'Hey Boy , Hey Girl', '2007-05-27', '00:03:49', 10, 'This is default Note! We will update this line later. THe update will be released soon .', 'database/images/Artist/BoA.jpg', 'database/songs/songsBoA/HeyBoyHeyGirl-BoA_3jy8.mp3'),
(152, 'Hurricane Venus', '2011-12-07', '00:03:10', 10, 'This is default Note! We will update this line later. THe update will be released soon .', 'database/images/Artist/BoA.jpg', 'database/songs/songsBoA/HurricaneVenus-BoA_q58d.mp3'),
(153, 'Imlode', '2010-05-18', '00:06:30', 10, 'This is default Note! We will update this line later. THe update will be released soon .', 'database/images/Artist/BoA.jpg', 'database/songs/songsBoA/Implode-BoA_q58p.mp3'),
(154, 'Kiss My Lips', '2014-06-28', '00:03:46', 10, 'This is default Note! We will update this line later. THe update will be released soon .', 'database/images/Artist/BoA.jpg', 'database/songs/songsBoA/KissMyLips-BoA-3902055_hq.mp3'),
(155, 'Higher', '2013-06-24', '00:03:40', 10, 'This is default Note! We will update this line later. THe update will be released soon .', 'database/images/Artist/Ailee.jpg', 'database/songs/songsAilee/Higher-AileeYiruma-2906544_hq.mp3'),
(156, 'How Can Be This', '2015-09-28', '00:03:42', 10, 'This is default Note! We will update this line later. THe update will be released soon .', 'database/images/Artist/Ailee.jpg', 'database/songs/songsAilee/HowCanBeThis-Ailee-2648857_hq.mp3');

-- --------------------------------------------------------

--
-- Table structure for table `tb_track_liked`
--

DROP TABLE IF EXISTS `tb_track_liked`;
CREATE TABLE IF NOT EXISTS `tb_track_liked` (
  `UserID` varchar(30) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `TrackID` int(10) NOT NULL,
  `Like_Action` varchar(10) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  PRIMARY KEY (`UserID`,`TrackID`),
  KEY `UserTL` (`UserID`),
  KEY `TrackL` (`TrackID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `tb_track_liked`
--

INSERT INTO `tb_track_liked` (`UserID`, `TrackID`, `Like_Action`) VALUES
('admin', 1, 'like'),
('admin', 2, 'like'),
('admin', 3, 'like'),
('admin', 4, 'like'),
('admin', 5, 'like'),
('admin', 6, 'like'),
('admin', 7, 'like'),
('admin', 10, 'like'),
('admin', 12, 'like'),
('admin', 14, 'like'),
('admin', 17, 'like'),
('admin', 19, 'like'),
('admin', 20, 'like'),
('admin', 23, 'like'),
('admin', 27, 'like'),
('admin', 34, 'like'),
('admin', 61, 'like'),
('admin', 67, 'like'),
('admin', 92, 'like'),
('admin', 93, 'like'),
('admin', 94, 'like'),
('admin', 100, 'like'),
('admin', 124, 'like'),
('admin', 130, 'like'),
('admin', 139, 'like'),
('admin', 144, 'like'),
('admin', 146, 'like'),
('cothuy', 4, 'like'),
('cothuy', 9, 'like'),
('seohyun', 2, 'like');

-- --------------------------------------------------------

--
-- Table structure for table `tb_track_listen`
--

DROP TABLE IF EXISTS `tb_track_listen`;
CREATE TABLE IF NOT EXISTS `tb_track_listen` (
  `TrackID` int(10) NOT NULL,
  `Date` date NOT NULL,
  `ListenTimes` int(10) DEFAULT 0,
  PRIMARY KEY (`TrackID`,`Date`),
  KEY `TrackLT` (`TrackID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `tb_track_listen`
--

INSERT INTO `tb_track_listen` (`TrackID`, `Date`, `ListenTimes`) VALUES
(1, '2020-06-06', 1),
(1, '2020-06-26', 5),
(2, '2020-06-26', 7),
(2, '2020-07-01', 23),
(2, '2020-07-08', 3),
(3, '2020-06-26', 15),
(4, '2020-06-26', 76),
(4, '2020-07-01', 45),
(4, '2020-07-08', 3),
(5, '2020-06-26', 75),
(7, '2020-07-08', 2),
(8, '2020-07-08', 1),
(9, '2020-06-26', 64),
(10, '2020-07-08', 1),
(11, '2020-06-26', 54),
(11, '2020-07-01', 35),
(11, '2020-07-08', 6),
(12, '2019-05-15', 7778),
(15, '2020-07-08', 2),
(16, '2019-11-20', 25555),
(16, '2020-07-01', 90),
(20, '2019-04-10', 5000),
(20, '2020-07-03', 80),
(24, '2019-06-04', 93333),
(24, '2020-07-08', 4),
(90, '2020-07-02', 55),
(1445, '2019-01-10', 8888);

-- --------------------------------------------------------

--
-- Table structure for table `tb_type`
--

DROP TABLE IF EXISTS `tb_type`;
CREATE TABLE IF NOT EXISTS `tb_type` (
  `TypeID` int(10) NOT NULL AUTO_INCREMENT,
  `TypeName` varchar(30) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  PRIMARY KEY (`TypeID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `tb_type`
--

INSERT INTO `tb_type` (`TypeID`, `TypeName`) VALUES
(1, 'Pop'),
(2, 'Rock'),
(3, 'Jazz'),
(4, 'Blues'),
(5, 'R&B/Soul'),
(6, 'Hip hop'),
(7, ' Country'),
(8, 'Pop'),
(9, 'Dance'),
(10, 'Opera');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE IF NOT EXISTS `tb_user` (
  `UserID` varchar(30) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `Password` varchar(30) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `Email` varchar(40) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `Role` tinyint(1) NOT NULL,
  `Locaiton` varchar(100) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT 'Unknown',
  `Website` varchar(100) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `MusicType` varchar(30) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `ImageFile` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'images/a0.jpg',
  `Note` varchar(100) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL,
  PRIMARY KEY (`UserID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`UserID`, `Password`, `Email`, `Role`, `Locaiton`, `Website`, `MusicType`, `ImageFile`, `Note`) VALUES
('admin', 'admin', 'admin@gmail.com', 0, 'HCMC', '123', '', 'images/a0.jpg', 'Coffee Shop'),
('Fpt1907', 'Fpt1907', 'Fpt1907@gmail.com', 1, 'Unknown', 'Fpt1907@gmail.com', NULL, 'images/a0.jpg', 'Cac thay co cho nhom em nhieu diem nhe'),
('seohyun', 'seohyun', 'seohyun@gmail.com', 0, 'Korea', 'seohyun.com.vn', NULL, 'database/images/Artist/Seohyun.jpg', 'Seohyun xinh nhất quả đất');

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_album_info`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `vw_album_info`;
CREATE TABLE IF NOT EXISTS `vw_album_info` (
`AlbumID` int(10)
,`albumname` varchar(30)
,`ArtistID` int(10)
,`ArtistName` varchar(30)
,`ReleaseDate` date
,`Note` varchar(255)
,`ImageFile` varchar(100)
,`TrackFile` varchar(100)
,`TotalListen` decimal(54,0)
,`TotalLiked` decimal(42,0)
,`TotalTrack` bigint(21)
,`TotalLength` time
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_album_listen_like`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `vw_album_listen_like`;
CREATE TABLE IF NOT EXISTS `vw_album_listen_like` (
`AlbumID` int(10)
,`TotalListen` decimal(54,0)
,`TotalLiked` decimal(42,0)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_album_total`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `vw_album_total`;
CREATE TABLE IF NOT EXISTS `vw_album_total` (
`AlbumID` int(10)
,`TotalTrack` bigint(21)
,`TotalLength` time
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_album_type`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `vw_album_type`;
CREATE TABLE IF NOT EXISTS `vw_album_type` (
`AlbumID` int(10)
,`TypeID` int(10)
,`TypeName` varchar(30)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_artist_info`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `vw_artist_info`;
CREATE TABLE IF NOT EXISTS `vw_artist_info` (
`ArtistID` int(10)
,`ArtistName` varchar(30)
,`Note` varchar(255)
,`ImageFile` varchar(100)
,`TrackFile` varchar(100)
,`TotalTrack` bigint(21)
,`TotalAlbum` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_artist_total`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `vw_artist_total`;
CREATE TABLE IF NOT EXISTS `vw_artist_total` (
`ArtistID` int(10)
,`TotalTrack` bigint(21)
,`TotalAlbum` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_cmt_info`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `vw_cmt_info`;
CREATE TABLE IF NOT EXISTS `vw_cmt_info` (
`CmtID` int(10)
,`UserID` varchar(30)
,`CmtType` varchar(10)
,`AlbumID` int(10)
,`PlaylistID` int(10)
,`Name` varchar(50)
,`CmtEmail` varchar(50)
,`RealEmail` varchar(40)
,`Content` varchar(255)
,`DateTime` timestamp
,`ImageFile` varchar(50)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_playlist_info`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `vw_playlist_info`;
CREATE TABLE IF NOT EXISTS `vw_playlist_info` (
`PlaylistID` int(10)
,`UserID` varchar(30)
,`PlaylistName` varchar(30)
,`CreateDate` timestamp
,`Note` varchar(255)
,`ImageFile` varchar(100)
,`TrackFile` varchar(100)
,`TotalListen` decimal(54,0)
,`TotalLiked` decimal(42,0)
,`TotalTrack` bigint(21)
,`TotalLength` time
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_playlist_listen_like`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `vw_playlist_listen_like`;
CREATE TABLE IF NOT EXISTS `vw_playlist_listen_like` (
`PlaylistID` int(10)
,`TotalListen` decimal(54,0)
,`TotalLiked` decimal(42,0)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_playlist_total`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `vw_playlist_total`;
CREATE TABLE IF NOT EXISTS `vw_playlist_total` (
`playlistid` int(10)
,`TotalTrack` bigint(21)
,`TotalLength` time
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_reply_info`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `vw_reply_info`;
CREATE TABLE IF NOT EXISTS `vw_reply_info` (
`ReplyID` int(10)
,`CmtID` int(10)
,`UserID` varchar(30)
,`Content` varchar(30)
,`Datetime` timestamp
,`ImageFile` varchar(50)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_track_info`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `vw_track_info`;
CREATE TABLE IF NOT EXISTS `vw_track_info` (
`TrackID` int(10)
,`TrackName` varchar(30)
,`ArtistID` int(10)
,`ArtistName` varchar(30)
,`AlbumID` int(10)
,`AlbumName` varchar(30)
,`TypeID` int(10)
,`TypeName` varchar(30)
,`ReleaseDate` date
,`Length` time
,`note` varchar(100)
,`ImageFile` varchar(100)
,`TrackFile` varchar(100)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_track_liked_user`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `vw_track_liked_user`;
CREATE TABLE IF NOT EXISTS `vw_track_liked_user` (
`UserID` varchar(30)
,`TrackID` int(10)
,`TrackName` varchar(30)
,`ArtistID` int(10)
,`ArtistName` varchar(30)
,`AlbumID` int(10)
,`AlbumName` varchar(30)
,`TypeID` int(10)
,`TypeName` varchar(30)
,`ReleaseDate` date
,`Length` time
,`note` varchar(100)
,`ImageFile` varchar(100)
,`TrackFile` varchar(100)
,`TotalListen` decimal(32,0)
,`TotalLiked` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_track_listen_date_info`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `vw_track_listen_date_info`;
CREATE TABLE IF NOT EXISTS `vw_track_listen_date_info` (
`TrackID` int(10)
,`TrackName` varchar(30)
,`AlbumID` int(10)
,`ArtistID` int(10)
,`ArtistName` varchar(30)
,`ImageFile` varchar(100)
,`TrackFile` varchar(100)
,`TotalListen` decimal(32,0)
,`TotalLiked` bigint(21)
,`Date` date
,`DateListen` int(10)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_track_listen_like`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `vw_track_listen_like`;
CREATE TABLE IF NOT EXISTS `vw_track_listen_like` (
`TrackID` int(10)
,`TotalListen` decimal(32,0)
,`TotalLiked` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_track_listen_like_info`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `vw_track_listen_like_info`;
CREATE TABLE IF NOT EXISTS `vw_track_listen_like_info` (
`TrackID` int(10)
,`TrackName` varchar(30)
,`ArtistID` int(10)
,`ArtistName` varchar(30)
,`AlbumID` int(10)
,`AlbumName` varchar(30)
,`TypeID` int(10)
,`TypeName` varchar(30)
,`ReleaseDate` date
,`Length` time
,`note` varchar(100)
,`ImageFile` varchar(100)
,`TrackFile` varchar(100)
,`TotalListen` decimal(32,0)
,`TotalLiked` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_track_playlist_info`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `vw_track_playlist_info`;
CREATE TABLE IF NOT EXISTS `vw_track_playlist_info` (
`TrackID` int(10)
,`TrackName` varchar(30)
,`ArtistID` int(10)
,`ArtistName` varchar(30)
,`AlbumID` int(10)
,`AlbumName` varchar(30)
,`PlaylistID` int(10)
,`CreatedUser` varchar(30)
,`PlaylistName` varchar(30)
,`TypeID` int(10)
,`TypeName` varchar(30)
,`ReleaseDate` date
,`Length` time
,`note` varchar(100)
,`ImageFile` varchar(100)
,`TrackFile` varchar(100)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_track_queue`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `vw_track_queue`;
CREATE TABLE IF NOT EXISTS `vw_track_queue` (
`UserID` varchar(30)
,`TrackID` int(10)
,`TrackName` varchar(30)
,`ArtistID` int(10)
,`ArtistName` varchar(30)
,`AlbumID` int(10)
,`AlbumName` varchar(30)
,`TypeID` int(10)
,`TypeName` varchar(30)
,`ReleaseDate` date
,`Length` time
,`note` varchar(100)
,`ImageFile` varchar(100)
,`TrackFile` varchar(100)
);

-- --------------------------------------------------------

--
-- Structure for view `vw_album_info`
--
DROP TABLE IF EXISTS `vw_album_info`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_album_info`  AS  select `tb_album`.`AlbumID` AS `AlbumID`,`tb_album`.`AlbumName` AS `albumname`,`tb_artist`.`ArtistID` AS `ArtistID`,`tb_artist`.`ArtistName` AS `ArtistName`,`tb_album`.`ReleaseDate` AS `ReleaseDate`,`tb_album`.`Note` AS `Note`,`tb_album`.`ImageFile` AS `ImageFile`,`tb_album`.`TrackFile` AS `TrackFile`,`vw_album_listen_like`.`TotalListen` AS `TotalListen`,`vw_album_listen_like`.`TotalLiked` AS `TotalLiked`,`vw_album_total`.`TotalTrack` AS `TotalTrack`,`vw_album_total`.`TotalLength` AS `TotalLength` from (((`tb_album` left join (`tb_artist_album` left join `tb_artist` on(`tb_artist_album`.`ArtistID` = `tb_artist`.`ArtistID`)) on(`tb_album`.`AlbumID` = `tb_artist_album`.`AlbumID`)) left join `vw_album_listen_like` on(`tb_album`.`AlbumID` = `vw_album_listen_like`.`AlbumID`)) left join `vw_album_total` on(`tb_album`.`AlbumID` = `vw_album_total`.`AlbumID`)) ;

-- --------------------------------------------------------

--
-- Structure for view `vw_album_listen_like`
--
DROP TABLE IF EXISTS `vw_album_listen_like`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_album_listen_like`  AS  select `tb_album`.`AlbumID` AS `AlbumID`,sum(`vw_track_listen_like`.`TotalListen`) AS `TotalListen`,sum(`vw_track_listen_like`.`TotalLiked`) AS `TotalLiked` from ((`tb_album` left join (`tb_album_track` left join `tb_track` on(`tb_album_track`.`TrackID` = `tb_track`.`TrackID`)) on(`tb_album`.`AlbumID` = `tb_album_track`.`AlbumID`)) left join `vw_track_listen_like` on(`tb_track`.`TrackID` = `vw_track_listen_like`.`TrackID`)) group by `tb_album`.`AlbumID` ;

-- --------------------------------------------------------

--
-- Structure for view `vw_album_total`
--
DROP TABLE IF EXISTS `vw_album_total`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_album_total`  AS  select `tb_album`.`AlbumID` AS `AlbumID`,count(`tb_album_track`.`TrackID`) AS `TotalTrack`,sec_to_time(sum(`tb_track`.`Length`)) AS `TotalLength` from (`tb_album` left join (`tb_album_track` left join `tb_track` on(`tb_album_track`.`TrackID` = `tb_track`.`TrackID`)) on(`tb_album`.`AlbumID` = `tb_album_track`.`AlbumID`)) group by `tb_album`.`AlbumID` ;

-- --------------------------------------------------------

--
-- Structure for view `vw_album_type`
--
DROP TABLE IF EXISTS `vw_album_type`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_album_type`  AS  select `tb_album`.`AlbumID` AS `AlbumID`,`tb_type`.`TypeID` AS `TypeID`,`tb_type`.`TypeName` AS `TypeName` from (`tb_album` left join (`tb_album_type` left join `tb_type` on(`tb_album_type`.`TypeID` = `tb_type`.`TypeID`)) on(`tb_album`.`AlbumID` = `tb_album_type`.`AlbumID`)) ;

-- --------------------------------------------------------

--
-- Structure for view `vw_artist_info`
--
DROP TABLE IF EXISTS `vw_artist_info`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_artist_info`  AS  select `tb_artist`.`ArtistID` AS `ArtistID`,`tb_artist`.`ArtistName` AS `ArtistName`,`tb_artist`.`Note` AS `Note`,`tb_artist`.`ImageFile` AS `ImageFile`,`tb_artist`.`TrackFile` AS `TrackFile`,`vw_artist_total`.`TotalTrack` AS `TotalTrack`,`vw_artist_total`.`TotalAlbum` AS `TotalAlbum` from (`tb_artist` left join `vw_artist_total` on(`tb_artist`.`ArtistID` = `vw_artist_total`.`ArtistID`)) ;

-- --------------------------------------------------------

--
-- Structure for view `vw_artist_total`
--
DROP TABLE IF EXISTS `vw_artist_total`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_artist_total`  AS  select `tb_artist`.`ArtistID` AS `ArtistID`,count(`tb_artist_track`.`TrackID`) AS `TotalTrack`,count(`tb_artist_album`.`AlbumID`) AS `TotalAlbum` from ((`tb_artist` left join `tb_artist_album` on(`tb_artist`.`ArtistID` = `tb_artist_album`.`ArtistID`)) left join `tb_artist_track` on(`tb_artist`.`ArtistID` = `tb_artist_track`.`ArtistID`)) group by `tb_artist`.`ArtistID` ;

-- --------------------------------------------------------

--
-- Structure for view `vw_cmt_info`
--
DROP TABLE IF EXISTS `vw_cmt_info`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_cmt_info`  AS  select `tb_comment`.`CmtID` AS `CmtID`,`tb_user`.`UserID` AS `UserID`,`tb_comment`.`CmtType` AS `CmtType`,`tb_comment`.`AlbumID` AS `AlbumID`,`tb_comment`.`PlaylistID` AS `PlaylistID`,`tb_comment`.`Name` AS `Name`,`tb_comment`.`Email` AS `CmtEmail`,`tb_user`.`Email` AS `RealEmail`,`tb_comment`.`Content` AS `Content`,`tb_comment`.`DateTime` AS `DateTime`,`tb_user`.`ImageFile` AS `ImageFile` from (`tb_comment` left join `tb_user` on(`tb_user`.`UserID` = `tb_comment`.`UserID`)) ;

-- --------------------------------------------------------

--
-- Structure for view `vw_playlist_info`
--
DROP TABLE IF EXISTS `vw_playlist_info`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_playlist_info`  AS  select `tb_playlist`.`PlaylistID` AS `PlaylistID`,`tb_playlist`.`UserID` AS `UserID`,`tb_playlist`.`PlaylistName` AS `PlaylistName`,`tb_playlist`.`CreateDate` AS `CreateDate`,`tb_playlist`.`Note` AS `Note`,`tb_playlist`.`ImageFile` AS `ImageFile`,`tb_playlist`.`TrackFile` AS `TrackFile`,`vw_playlist_listen_like`.`TotalListen` AS `TotalListen`,`vw_playlist_listen_like`.`TotalLiked` AS `TotalLiked`,`vw_playlist_total`.`TotalTrack` AS `TotalTrack`,`vw_playlist_total`.`TotalLength` AS `TotalLength` from ((`tb_playlist` left join `vw_playlist_listen_like` on(`tb_playlist`.`PlaylistID` = `vw_playlist_listen_like`.`PlaylistID`)) left join `vw_playlist_total` on(`tb_playlist`.`PlaylistID` = `vw_playlist_total`.`playlistid`)) ;

-- --------------------------------------------------------

--
-- Structure for view `vw_playlist_listen_like`
--
DROP TABLE IF EXISTS `vw_playlist_listen_like`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_playlist_listen_like`  AS  select `tb_playlist`.`PlaylistID` AS `PlaylistID`,sum(`vw_track_listen_like`.`TotalListen`) AS `TotalListen`,sum(`vw_track_listen_like`.`TotalLiked`) AS `TotalLiked` from (`tb_playlist` left join (`tb_playlist_track` left join `vw_track_listen_like` on(`tb_playlist_track`.`TrackID` = `vw_track_listen_like`.`TrackID`)) on(`tb_playlist`.`PlaylistID` = `tb_playlist_track`.`PlaylistID`)) group by `tb_playlist`.`PlaylistID` ;

-- --------------------------------------------------------

--
-- Structure for view `vw_playlist_total`
--
DROP TABLE IF EXISTS `vw_playlist_total`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_playlist_total`  AS  select `tb_playlist`.`PlaylistID` AS `playlistid`,count(`tb_playlist_track`.`TrackID`) AS `TotalTrack`,sec_to_time(sum(`tb_track`.`Length`)) AS `TotalLength` from (`tb_playlist` left join (`tb_playlist_track` left join `tb_track` on(`tb_playlist_track`.`TrackID` = `tb_track`.`TrackID`)) on(`tb_playlist`.`PlaylistID` = `tb_playlist_track`.`PlaylistID`)) group by `tb_playlist`.`PlaylistID` ;

-- --------------------------------------------------------

--
-- Structure for view `vw_reply_info`
--
DROP TABLE IF EXISTS `vw_reply_info`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_reply_info`  AS  select `tb_reply`.`ReplyID` AS `ReplyID`,`tb_reply`.`CmtID` AS `CmtID`,`tb_user`.`UserID` AS `UserID`,`tb_reply`.`Content` AS `Content`,`tb_reply`.`Datetime` AS `Datetime`,`tb_user`.`ImageFile` AS `ImageFile` from (`tb_reply` left join `tb_user` on(`tb_reply`.`UserID` = `tb_user`.`UserID`)) ;

-- --------------------------------------------------------

--
-- Structure for view `vw_track_info`
--
DROP TABLE IF EXISTS `vw_track_info`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_track_info`  AS  select `tb_track`.`TrackID` AS `TrackID`,`tb_track`.`TrackName` AS `TrackName`,`tb_artist`.`ArtistID` AS `ArtistID`,`tb_artist`.`ArtistName` AS `ArtistName`,`tb_album_track`.`AlbumID` AS `AlbumID`,`tb_album`.`AlbumName` AS `AlbumName`,`tb_track`.`TypeID` AS `TypeID`,`tb_type`.`TypeName` AS `TypeName`,`tb_track`.`ReleaseDate` AS `ReleaseDate`,`tb_track`.`Length` AS `Length`,`tb_track`.`Note` AS `note`,`tb_track`.`ImageFile` AS `ImageFile`,`tb_track`.`TrackFile` AS `TrackFile` from (((`tb_track` left join `tb_type` on(`tb_track`.`TypeID` = `tb_type`.`TypeID`)) left join (`tb_artist_track` left join `tb_artist` on(`tb_artist_track`.`ArtistID` = `tb_artist`.`ArtistID`)) on(`tb_track`.`TrackID` = `tb_artist_track`.`TrackID`)) left join (`tb_album_track` left join `tb_album` on(`tb_album_track`.`AlbumID` = `tb_album`.`AlbumID`)) on(`tb_track`.`TrackID` = `tb_album_track`.`TrackID`)) ;

-- --------------------------------------------------------

--
-- Structure for view `vw_track_liked_user`
--
DROP TABLE IF EXISTS `vw_track_liked_user`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_track_liked_user`  AS  select `tb_user`.`UserID` AS `UserID`,`vw_track_info`.`TrackID` AS `TrackID`,`vw_track_info`.`TrackName` AS `TrackName`,`vw_track_info`.`ArtistID` AS `ArtistID`,`vw_track_info`.`ArtistName` AS `ArtistName`,`vw_track_info`.`AlbumID` AS `AlbumID`,`vw_track_info`.`AlbumName` AS `AlbumName`,`vw_track_info`.`TypeID` AS `TypeID`,`vw_track_info`.`TypeName` AS `TypeName`,`vw_track_info`.`ReleaseDate` AS `ReleaseDate`,`vw_track_info`.`Length` AS `Length`,`vw_track_info`.`note` AS `note`,`vw_track_info`.`ImageFile` AS `ImageFile`,`vw_track_info`.`TrackFile` AS `TrackFile`,`vw_track_listen_like`.`TotalListen` AS `TotalListen`,`vw_track_listen_like`.`TotalLiked` AS `TotalLiked` from ((`tb_track_liked` left join `tb_user` on(`tb_user`.`UserID` = `tb_track_liked`.`UserID`)) left join (`vw_track_info` left join `vw_track_listen_like` on(`vw_track_info`.`TrackID` = `vw_track_listen_like`.`TrackID`)) on(`tb_track_liked`.`TrackID` = `vw_track_info`.`TrackID`)) ;

-- --------------------------------------------------------

--
-- Structure for view `vw_track_listen_date_info`
--
DROP TABLE IF EXISTS `vw_track_listen_date_info`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_track_listen_date_info`  AS  select `vw_track_listen_like_info`.`TrackID` AS `TrackID`,`vw_track_listen_like_info`.`TrackName` AS `TrackName`,`vw_track_listen_like_info`.`AlbumID` AS `AlbumID`,`vw_track_listen_like_info`.`ArtistID` AS `ArtistID`,`vw_track_listen_like_info`.`ArtistName` AS `ArtistName`,`vw_track_listen_like_info`.`ImageFile` AS `ImageFile`,`vw_track_listen_like_info`.`TrackFile` AS `TrackFile`,`vw_track_listen_like_info`.`TotalListen` AS `TotalListen`,`vw_track_listen_like_info`.`TotalLiked` AS `TotalLiked`,`tb_track_listen`.`Date` AS `Date`,`tb_track_listen`.`ListenTimes` AS `DateListen` from (`vw_track_listen_like_info` left join `tb_track_listen` on(`vw_track_listen_like_info`.`TrackID` = `tb_track_listen`.`TrackID`)) order by `vw_track_listen_like_info`.`TrackID`,`tb_track_listen`.`Date` ;

-- --------------------------------------------------------

--
-- Structure for view `vw_track_listen_like`
--
DROP TABLE IF EXISTS `vw_track_listen_like`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_track_listen_like`  AS  select `tb_track`.`TrackID` AS `TrackID`,sum(`tb_track_listen`.`ListenTimes`) AS `TotalListen`,count(`tb_track_liked`.`UserID`) AS `TotalLiked` from ((`tb_track` left join `tb_track_listen` on(`tb_track`.`TrackID` = `tb_track_listen`.`TrackID`)) left join `tb_track_liked` on(`tb_track`.`TrackID` = `tb_track_liked`.`TrackID`)) group by `tb_track`.`TrackID` ;

-- --------------------------------------------------------

--
-- Structure for view `vw_track_listen_like_info`
--
DROP TABLE IF EXISTS `vw_track_listen_like_info`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_track_listen_like_info`  AS  select `vw_track_info`.`TrackID` AS `TrackID`,`vw_track_info`.`TrackName` AS `TrackName`,`vw_track_info`.`ArtistID` AS `ArtistID`,`vw_track_info`.`ArtistName` AS `ArtistName`,`vw_track_info`.`AlbumID` AS `AlbumID`,`vw_track_info`.`AlbumName` AS `AlbumName`,`vw_track_info`.`TypeID` AS `TypeID`,`vw_track_info`.`TypeName` AS `TypeName`,`vw_track_info`.`ReleaseDate` AS `ReleaseDate`,`vw_track_info`.`Length` AS `Length`,`vw_track_info`.`note` AS `note`,`vw_track_info`.`ImageFile` AS `ImageFile`,`vw_track_info`.`TrackFile` AS `TrackFile`,`vw_track_listen_like`.`TotalListen` AS `TotalListen`,`vw_track_listen_like`.`TotalLiked` AS `TotalLiked` from (`vw_track_info` left join `vw_track_listen_like` on(`vw_track_info`.`TrackID` = `vw_track_listen_like`.`TrackID`)) ;

-- --------------------------------------------------------

--
-- Structure for view `vw_track_playlist_info`
--
DROP TABLE IF EXISTS `vw_track_playlist_info`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_track_playlist_info`  AS  select `vw_track_info`.`TrackID` AS `TrackID`,`vw_track_info`.`TrackName` AS `TrackName`,`vw_track_info`.`ArtistID` AS `ArtistID`,`vw_track_info`.`ArtistName` AS `ArtistName`,`vw_track_info`.`AlbumID` AS `AlbumID`,`vw_track_info`.`AlbumName` AS `AlbumName`,`vw_playlist_info`.`PlaylistID` AS `PlaylistID`,`vw_playlist_info`.`UserID` AS `CreatedUser`,`vw_playlist_info`.`PlaylistName` AS `PlaylistName`,`vw_track_info`.`TypeID` AS `TypeID`,`vw_track_info`.`TypeName` AS `TypeName`,`vw_track_info`.`ReleaseDate` AS `ReleaseDate`,`vw_track_info`.`Length` AS `Length`,`vw_track_info`.`note` AS `note`,`vw_track_info`.`ImageFile` AS `ImageFile`,`vw_track_info`.`TrackFile` AS `TrackFile` from (`vw_playlist_info` left join (`tb_playlist_track` left join `vw_track_info` on(`tb_playlist_track`.`TrackID` = `vw_track_info`.`TrackID`)) on(`vw_playlist_info`.`PlaylistID` = `tb_playlist_track`.`PlaylistID`)) ;

-- --------------------------------------------------------

--
-- Structure for view `vw_track_queue`
--
DROP TABLE IF EXISTS `vw_track_queue`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_track_queue`  AS  select `tb_queue_track`.`UserID` AS `UserID`,`vw_track_info`.`TrackID` AS `TrackID`,`vw_track_info`.`TrackName` AS `TrackName`,`vw_track_info`.`ArtistID` AS `ArtistID`,`vw_track_info`.`ArtistName` AS `ArtistName`,`vw_track_info`.`AlbumID` AS `AlbumID`,`vw_track_info`.`AlbumName` AS `AlbumName`,`vw_track_info`.`TypeID` AS `TypeID`,`vw_track_info`.`TypeName` AS `TypeName`,`vw_track_info`.`ReleaseDate` AS `ReleaseDate`,`vw_track_info`.`Length` AS `Length`,`vw_track_info`.`note` AS `note`,`vw_track_info`.`ImageFile` AS `ImageFile`,`vw_track_info`.`TrackFile` AS `TrackFile` from (`tb_queue_track` left join `vw_track_info` on(`tb_queue_track`.`TrackID` = `vw_track_info`.`TrackID`)) ;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_album_liked`
--
ALTER TABLE `tb_album_liked`
  ADD CONSTRAINT `AlbumL` FOREIGN KEY (`AlbumID`) REFERENCES `tb_album` (`AlbumID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `UserABL` FOREIGN KEY (`UserID`) REFERENCES `tb_user` (`UserID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_album_track`
--
ALTER TABLE `tb_album_track`
  ADD CONSTRAINT `tb_album_track_ibfk_1` FOREIGN KEY (`AlbumID`) REFERENCES `tb_album` (`AlbumID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_album_track_ibfk_2` FOREIGN KEY (`TrackID`) REFERENCES `tb_track` (`TrackID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_album_type`
--
ALTER TABLE `tb_album_type`
  ADD CONSTRAINT `tb_album_type_ibfk_1` FOREIGN KEY (`AlbumID`) REFERENCES `tb_album` (`AlbumID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_album_type_ibfk_2` FOREIGN KEY (`TypeID`) REFERENCES `tb_type` (`TypeID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_artist_album`
--
ALTER TABLE `tb_artist_album`
  ADD CONSTRAINT `tb_artist_album_ibfk_1` FOREIGN KEY (`AlbumID`) REFERENCES `tb_album` (`AlbumID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_artist_album_ibfk_2` FOREIGN KEY (`ArtistID`) REFERENCES `tb_artist` (`ArtistID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_artist_track`
--
ALTER TABLE `tb_artist_track`
  ADD CONSTRAINT `ArtistT` FOREIGN KEY (`ArtistID`) REFERENCES `tb_artist` (`ArtistID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `TrackT` FOREIGN KEY (`TrackID`) REFERENCES `tb_track` (`TrackID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_artist_type`
--
ALTER TABLE `tb_artist_type`
  ADD CONSTRAINT `tb_artist_type_ibfk_1` FOREIGN KEY (`ArtistID`) REFERENCES `tb_artist` (`ArtistID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_artist_type_ibfk_2` FOREIGN KEY (`TypeID`) REFERENCES `tb_type` (`TypeID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_comment`
--
ALTER TABLE `tb_comment`
  ADD CONSTRAINT `tb_comment_ibfk_2` FOREIGN KEY (`UserID`) REFERENCES `tb_user` (`UserID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_comment_ibfk_3` FOREIGN KEY (`AlbumID`) REFERENCES `tb_album` (`AlbumID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_comment_ibfk_4` FOREIGN KEY (`PlaylistID`) REFERENCES `tb_playlist` (`PlaylistID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_playlist`
--
ALTER TABLE `tb_playlist`
  ADD CONSTRAINT `UserPL` FOREIGN KEY (`UserID`) REFERENCES `tb_user` (`UserID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_reply`
--
ALTER TABLE `tb_reply`
  ADD CONSTRAINT `tb_reply_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `tb_user` (`UserID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_track`
--
ALTER TABLE `tb_track`
  ADD CONSTRAINT `tb_track_ibfk_1` FOREIGN KEY (`TypeID`) REFERENCES `tb_type` (`TypeID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
