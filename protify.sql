-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 06, 2020 at 03:21 AM
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `tb_album`
--

INSERT INTO `tb_album` (`AlbumID`, `AlbumName`, `ReleaseDate`, `Note`, `ImageFile`, `TrackFile`) VALUES
(1, 'I(Mini album)', '2015-10-07', NULL, '../html/assets/albumImg/I.jpg', ''),
(2, 'Rain(Single)', '2016-02-03', NULL, '../html/assets/albumImg/Rain.jpg', ''),
(3, 'Don\'t say no', '2017-01-17', NULL, '../html/assets/albumImg/Don\'tSayNo.jpg', ''),
(4, 'Secret', '2016-08-19', NULL, '../html/assets/albumImg/Secret.jpg', ''),
(5, 'test', '2020-06-16', 'tefgdf', 'assets/Img/trackImg/Rain.jpg', 'database/songs/I.mp3'),
(6, 'test', '2020-06-16', 'tefgdf', 'assets/Img/trackImg/Rain.jpg', 'database/songs/I.mp3'),
(7, 'test', '2020-06-16', 'tefgdf', 'assets/Img/trackImg/Rain.jpg', 'database/songs/I.mp3'),
(8, 'test', '2020-06-16', 'tefgdf', 'assets/Img/trackImg/Rain.jpg', 'database/songs/I.mp3'),
(9, 'test', '2020-06-16', 'tefgdf', 'assets/Img/trackImg/Rain.jpg', 'database/songs/I.mp3'),
(10, 'test', '2020-06-16', 'tefgdf', 'assets/Img/trackImg/Rain.jpg', 'database/songs/I.mp3'),
(11, 'test', '2020-06-16', 'tefgdf', 'assets/Img/trackImg/Rain.jpg', 'database/songs/I.mp3'),
(12, 'test', '2020-06-16', 'tefgdf', 'assets/Img/trackImg/Rain.jpg', 'database/songs/I.mp3');

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
(2, 2);

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

--
-- Dumping data for table `tb_album_type`
--

INSERT INTO `tb_album_type` (`AlbumID`, `TypeID`) VALUES
(1, 1),
(2, 1);

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
(1, 'Taeyeon', 'Kim Tae-yeon (born March 9, 1989), known mononymously as Taeyeon, is a South Korean singer.', 'database/images/Artist/Taeyeon.jpg', ''),
(2, 'Seohyun', 'Seo Ju-hyun (born June 28, 1991), known professionally as Seohyun, is a South Korean singer and actress.', 'database/images/Artist/Seohyun.jpg', ''),
(3, 'IU', 'IU', '', ''),
(4, 'Test', 'Test', 'database/images/Artist/Seohyun.jpg', ''),
(5, 'Test', 'Test', 'database/images/Artist/Seohyun.jpg', ''),
(6, 'Test', 'Test', 'database/images/Artist/Seohyun.jpg', ''),
(7, 'Test', 'Test', 'database/images/Artist/Seohyun.jpg', ''),
(8, 'Test', 'Test', 'database/images/Artist/Seohyun.jpg', ''),
(9, 'Test', 'Test', 'database/images/Artist/Seohyun.jpg', ''),
(10, 'Test', 'Test', 'database/images/Artist/Seohyun.jpg', ''),
(11, 'Test', 'Test', 'database/images/Artist/Seohyun.jpg', ''),
(12, 'Test', 'Test', 'database/images/Artist/Seohyun.jpg', ''),
(13, 'Test', 'Test', 'database/images/Artist/Seohyun.jpg', ''),
(14, 'Test', 'Test', 'database/images/Artist/Seohyun.jpg', ''),
(15, 'Test', 'Test', 'database/images/Artist/Seohyun.jpg', ''),
(16, 'Test', 'Test', 'database/images/Artist/Seohyun.jpg', ''),
(17, 'Test', 'Test', 'database/images/Artist/Seohyun.jpg', ''),
(18, 'Test', 'Test', 'database/images/Artist/Seohyun.jpg', ''),
(19, 'Test', 'Test', 'database/images/Artist/Seohyun.jpg', '');

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
(2, 1),
(4, 5),
(4, 8),
(5, 9),
(5, 17),
(6, 6),
(7, 8),
(8, 11),
(9, 18),
(10, 10),
(11, 18),
(12, 16),
(14, 16),
(17, 15),
(17, 16),
(18, 13);

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

--
-- Dumping data for table `tb_artist_type`
--

INSERT INTO `tb_artist_type` (`ArtistID`, `TypeID`) VALUES
(1, 1),
(2, 1);

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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

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
(22, 'album', 1, NULL, 'seohyun', 'seohyun', 'seohyun@gmail.com', 'test', '2020-07-03 16:31:32'),
(23, 'album', 1, NULL, 'admin', 'test', 'test@gmail.com', '3432', '2020-07-03 16:31:51');

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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `tb_playlist`
--

INSERT INTO `tb_playlist` (`PlaylistID`, `UserID`, `PlaylistName`, `CreateDate`, `Note`, `ImageFile`, `TrackFile`) VALUES
(3, 'seohyun', 'Seohyun Playlist', '2020-06-30 17:32:36', NULL, 'images/a0.jpg', NULL),
(4, 'admin', 'Admin Playlist', '2020-06-30 17:32:36', NULL, 'images/a0.jpg', NULL),
(5, 'Test343', 'Test', '2020-06-30 17:32:36', NULL, 'images/a0.jpg', NULL),
(6, 'seohyun', 'Seohyun 2nd Playlist', '2020-07-03 14:16:53', NULL, 'images/a0.jpg', NULL),
(7, 'admin', 'Admin 2nd Playlist', '2020-07-03 14:17:08', NULL, 'images/a0.jpg', NULL),
(9, 'Test1234', '123', '2020-07-06 01:55:21', NULL, 'images/a0.jpg', NULL),
(10, 'TestPlaylist', 'TestPlaylist\'s third playlist', '2020-07-06 02:06:56', NULL, 'images/a0.jpg', NULL),
(11, 'TestPlaylist', '', '2020-07-06 02:06:56', NULL, 'images/a0.jpg', NULL),
(12, 'TestPlaylist', '', '2020-07-06 02:06:56', NULL, 'images/a0.jpg', NULL),
(13, 'Playlist1', 'Playlist1\'s first playlist', '2020-07-06 02:08:02', NULL, 'images/a0.jpg', NULL),
(14, 'Playlist1', 'Playlist1\'s second playlist', '2020-07-06 02:08:02', NULL, 'images/a0.jpg', NULL),
(15, 'Playlist1', 'Playlist1\'s third playlist', '2020-07-06 02:08:02', NULL, 'images/a0.jpg', NULL);

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
(4, 20),
(5, 1),
(5, 4),
(5, 7),
(7, 1),
(7, 2);

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
('admin', 6),
('M01', 1),
('M02', 1);

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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `tb_reply`
--

INSERT INTO `tb_reply` (`ReplyID`, `CmtID`, `UserID`, `Content`, `Datetime`) VALUES
(2, 2, 'seohyun', 'huhu xin cam on nhieu a', '2020-07-01 09:37:18'),
(3, 3, 'seohyun', 'xin cam on cac ban fan yeu dau', '2020-07-01 09:37:37'),
(4, 4, 'Test343', 'huhu xin cam on nhieu a', '2020-07-01 09:38:17'),
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `tb_track`
--

INSERT INTO `tb_track` (`TrackID`, `TrackName`, `ReleaseDate`, `Length`, `TypeID`, `Note`, `ImageFile`, `TrackFile`) VALUES
(1, 'I', '2015-10-07', '00:03:26', 1, 'MV realease in 10-7-2015', 'assets/Img/trackImg/Rain.jpg', 'database/songs/I.mp3'),
(2, 'Rain', '2016-02-03', '00:03:42', 3, NULL, 'database/images/Artist/Taeyeon.jpg', 'database/songs/Rain.mp3'),
(3, 'Raining', '2016-02-03', '00:03:42', 2, NULL, 'assets/Img/trackImg/Rain.jpg', 'database/songs/I.mp3'),
(4, 'TrackTest', '2020-06-24', '00:05:00', 3, 'test', 'assets/Img/trackImg/Rain.jpg', 'database/songs/I.mp3'),
(5, 'TrackTest', '2020-06-24', '00:05:00', 3, 'test', 'assets/Img/trackImg/Rain.jpg', 'database/songs/I.mp3'),
(6, 'TrackTest', '2020-06-24', '00:05:00', 3, 'test', 'assets/Img/trackImg/Rain.jpg', 'database/songs/I.mp3'),
(7, 'TrackTest', '2020-06-24', '00:05:00', 3, 'test', 'assets/Img/trackImg/Rain.jpg', 'database/songs/I.mp3'),
(8, 'TrackTest', '2020-06-24', '00:05:00', 3, 'test', 'assets/Img/trackImg/Rain.jpg', 'database/songs/I.mp3'),
(9, 'TrackTest', '2020-06-24', '00:05:00', 3, 'test', 'assets/Img/trackImg/Rain.jpg', 'database/songs/I.mp3'),
(10, 'TrackTest', '2020-06-24', '00:05:00', 3, 'test', 'assets/Img/trackImg/Rain.jpg', 'database/songs/I.mp3'),
(11, 'TrackTest', '2020-06-24', '00:05:00', 3, 'test', 'assets/Img/trackImg/Rain.jpg', 'database/songs/I.mp3'),
(12, 'TrackTest', '2020-06-24', '00:05:00', 3, 'test', 'assets/Img/trackImg/Rain.jpg', 'database/songs/I.mp3'),
(13, 'TrackTest', '2020-06-24', '00:05:00', 3, 'test', 'assets/Img/trackImg/Rain.jpg', 'database/songs/I.mp3'),
(14, 'TrackTest', '2020-06-24', '00:05:00', 3, 'test', 'assets/Img/trackImg/Rain.jpg', 'database/songs/I.mp3'),
(15, 'TEst test', '2020-06-24', '00:05:00', 3, 'test', 'assets/Img/trackImg/Rain.jpg', 'database/songs/I.mp3'),
(16, 'TrackTest', '2020-06-24', '00:05:00', 3, 'test', 'assets/Img/trackImg/Rain.jpg', 'database/songs/I.mp3'),
(17, 'TrackTest', '2020-06-24', '00:05:00', 3, 'test', 'assets/Img/trackImg/Rain.jpg', 'database/songs/I.mp3'),
(18, 'TrackTest', '2020-06-24', '00:05:00', 3, 'test', 'assets/Img/trackImg/Rain.jpg', 'database/songs/I.mp3'),
(19, 'TrackTest', '2020-06-24', '00:05:00', 3, 'test', 'assets/Img/trackImg/Rain.jpg', 'database/songs/I.mp3'),
(20, 'Raining Test', '2016-02-03', '00:03:42', 2, NULL, 'assets/Img/trackImg/Rain.jpg', 'database/songs/I.mp3');

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
('admin', 11, 'like'),
('admin', 20, 'like'),
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
(3, '2020-06-26', 15),
(4, '2020-06-26', 76),
(5, '2020-06-26', 75),
(9, '2020-06-26', 64),
(11, '2020-06-26', 54),
(11, '2020-07-01', 35);

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
  `Locaiton` varchar(100) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL,
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
('$id', '$pass', '$email', 0, NULL, NULL, NULL, 'images/a0.jpg', NULL),
('admin', 'admin', 'admin@gmail.com', 1, NULL, NULL, NULL, 'images/a0.jpg', NULL),
('M01', 'cauvongbaymau', 'bibi@gmail.com', 0, NULL, NULL, NULL, 'images/a0.jpg', NULL),
('M02', 'quangdeptrai', 'quangnguyen@gmail.com', 0, NULL, NULL, NULL, 'images/a0.jpg', NULL),
('Playlist1', 'test', 'test@gmail.com', 0, NULL, NULL, NULL, 'images/a0.jpg', NULL),
('seohyun', 'seohyun', 'seohyun@gmail.com', 1, 'Korea', 'seohyun.com.vn', NULL, 'database/images/Artist/Seohyun.jpg', 'Seohyun xinh nhất quả đất'),
('Test1234', 'test', 'test123', 0, NULL, NULL, NULL, 'images/a0.jpg', NULL),
('Test343', 'test', 'test@gmail.com', 0, NULL, NULL, NULL, 'images/a0.jpg', NULL),
('Testjhgj', 'test', 'test@gmail.com', 0, NULL, NULL, NULL, 'images/a0.jpg', NULL),
('TestPlaylist', 'test', 'test@gmail.com', 0, NULL, NULL, NULL, 'images/a0.jpg', NULL);

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
