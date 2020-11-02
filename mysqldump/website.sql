-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: mysql
-- Generation Time: Nov 02, 2020 at 03:20 PM
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
(7, 13, 100, NULL, NULL, NULL, NULL, 1, NULL),
(9, 13, 100, NULL, NULL, NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `embed`
--

CREATE TABLE `embed` (
  `id` int(11) NOT NULL,
  `height` int(11) NOT NULL,
  `url` text DEFAULT NULL,
  `embed_url` text DEFAULT NULL,
  `page_id` int(11) DEFAULT NULL,
  `vertical_align` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `embed`
--

INSERT INTO `embed` (`id`, `height`, `url`, `embed_url`, `page_id`, `vertical_align`) VALUES
(1, 788, 'https://youtu.be/c0tvO1DZTyo', 'https://www.youtube.com/embed/c0tvO1DZTyo', NULL, 0);

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

-- --------------------------------------------------------

--
-- Table structure for table `text`
--

CREATE TABLE `text` (
  `id` int(11) NOT NULL,
  `html` text NOT NULL,
  `width` int(11) NOT NULL,
  `max_width` int(11) NOT NULL,
  `align` int(11) NOT NULL,
  `padding_top` int(11) NOT NULL,
  `padding_bottom` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `text`
--

INSERT INTO `text` (`id`, `html`, `width`, `max_width`, `align`, `padding_top`, `padding_bottom`) VALUES
(1, '<div>2019</div>\r\n<div>4k (3840 x 2160 pixels)</div>\r\n<div>Up to 10 minutes long</div>\r\n<div>&nbsp;</div>\r\n<div>The work is based on synthetic colour which could be met in the urban environment on daily basis and uses video as medium. The main idea of the work is expect to create new artificial impressions based on the colour perception and make the situations in which the surrounding colours insensibly change around the observer. By projecting colours it is supposed to achieve an effect of the environment with dynamically changing colours in which the origin of the video source is not clear, but the movement of colours make sense that the viewer already saw it somewhere in the city. By using colours from the urban illuminations it is adhered to the concept of the city life where the viewer often meet artificial colours the purpose of which is to attract attention of the citizens.</div>\r\n<div>The work was created by recording everything bright and colourful on the camera during dark part of the day, everything that is shining in darkness, when the night is veiling natural and at the same time reveals artificial and disclose the dynamics of the city as it is. During filming there was used blurring effect the purpose of which is to drag accent from street details to the colour. Subsequently, using the technology of video editing the dynamics of the change was highlighted as well as the act of different colours of illumination could be clearly traced. In this case, the blurring makes the colours more noticeable and changes attention from the essence of the event to a sense of colour dynamics and how colours change over time. The grid on the video is used to accentuate on mechanical and artificial look of the colour and also highlights the pulse and the rhythm of the city.</div>', 100, 800, 3, 40, 40);

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
-- Indexes for table `text`
--
ALTER TABLE `text`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `content`
--
ALTER TABLE `content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

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

--
-- AUTO_INCREMENT for table `text`
--
ALTER TABLE `text`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
