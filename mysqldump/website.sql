-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: mysql
-- Generation Time: Oct 31, 2020 at 04:19 PM
-- Server version: 10.5.4-MariaDB-1:10.5.4+maria~focal
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `website`
--

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

CREATE TABLE `content` (
  `id` int(11) NOT NULL,
  `page_id` int(11) NOT NULL,
  `width` int(11) DEFAULT NULL,
  `content_page_id` int(11) DEFAULT NULL,
  `content_media_id` int(11) DEFAULT NULL,
  `content_collection_id` int(11) DEFAULT NULL,
  `content_text_id` int(11) DEFAULT NULL,
  `content_embed_id` int(11) DEFAULT NULL,
  `contact_form_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `content`
--

INSERT INTO `content` (`id`, `page_id`, `width`, `content_page_id`, `content_media_id`, `content_collection_id`, `content_text_id`, `content_embed_id`, `contact_form_id`) VALUES
(1, 2, 50, 3, NULL, NULL, NULL, NULL, NULL),
(2, 2, 50, 4, NULL, NULL, NULL, NULL, NULL),
(3, 2, 50, 5, NULL, NULL, NULL, NULL, NULL),
(6, 2, 50, 7, NULL, NULL, NULL, NULL, NULL),
(7, 13, 50, NULL, NULL, NULL, NULL, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `embed`
--

CREATE TABLE `embed` (
  `id` int(11) NOT NULL,
  `url` text DEFAULT NULL,
  `embed_url` text DEFAULT NULL,
  `page_id` int(11) DEFAULT NULL,
  `vertical_align` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `embed`
--

INSERT INTO `embed` (`id`, `url`, `embed_url`, `page_id`, `vertical_align`) VALUES
(1, 'https://youtu.be/c0tvO1DZTyo', 'https://www.youtube.com/embed/c0tvO1DZTyo', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` int(11) NOT NULL,
  `hash` varchar(32) NOT NULL,
  `extension` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `hash`, `extension`) VALUES
(1, 'a789e84de5254aa7a57bd85edf154650', 'jpg'),
(2, 'da266757f1284afc8e11561c91642dba', 'jpg');

-- --------------------------------------------------------

--
-- Table structure for table `navigation`
--

CREATE TABLE `navigation` (
  `id` int(11) NOT NULL,
  `hide` tinyint(1) NOT NULL,
  `page_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `navigation`
--

INSERT INTO `navigation` (`id`, `hide`, `page_id`) VALUES
(1, 0, 1),
(2, 0, 3),
(3, 0, 4),
(4, 0, 5),
(5, 0, 7),
(6, 0, 8),
(7, 1, 9),
(8, 0, 10),
(9, 0, 11),
(10, 0, 12);

-- --------------------------------------------------------

--
-- Table structure for table `page`
--

CREATE TABLE `page` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `keywords` text NOT NULL,
  `date` int(11) NOT NULL,
  `cover_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `page`
--

INSERT INTO `page` (`id`, `name`, `title`, `description`, `keywords`, `date`, `cover_id`) VALUES
(1, 'works', 'Works', '', '', 2019, NULL),
(3, 'illustrations', 'Illustrations', '', '', 2019, 1),
(4, 'sculptures', 'Sculptures', '', '', 2019, NULL),
(5, 'installations', 'Installations', '', '', 2019, NULL),
(7, 'paintings', 'paintings', '', '', 2019, NULL),
(8, 'collaborations', 'collaborations', '', '', 2019, NULL),
(9, 'about', 'about', '', '', 2019, NULL),
(10, 'artist', 'artist', '', '', 2019, NULL),
(11, 'cv', 'cv', '', '', 2019, NULL),
(12, 'contact', 'contact', '', '', 2019, NULL),
(13, '28', '#28', '', '', 2019, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `content`
--
ALTER TABLE `content`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `embed`
--
ALTER TABLE `embed`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `navigation`
--
ALTER TABLE `navigation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UI_name` (`name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `content`
--
ALTER TABLE `content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `embed`
--
ALTER TABLE `embed`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `navigation`
--
ALTER TABLE `navigation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `page`
--
ALTER TABLE `page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
