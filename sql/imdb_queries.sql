-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 10, 2021 at 11:38 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `imdb_queries`
--

-- --------------------------------------------------------

--
-- Table structure for table `queries`
--

CREATE TABLE `queries` (
  `id` int(11) NOT NULL,
  `query` varchar(555) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `queries`
--

INSERT INTO `queries` (`id`, `query`) VALUES
(1, 'SELECT name FROM movies \r\nWHERE year = 1995'),
(2, 'SELECT COUNT(role) FROM roles where movie_id = 19487'),
(3, 'SELECT DISTINCT first_name, last_name FROM actors a\r\nJOIN roles r ON r.actor_id = a.id\r\nWHERE r.movie_id = 194874'),
(4, 'SELECT first_name, last_name from directors d\r\nJOIN movies_directors m ON d.id = m.director_id\r\nWHERE m.movie_id = 112290'),
(5, 'SELECT COUNT(md.movie_id) FROM movies_directors md\r\nJOIN directors d ON md.director_id = d.id\r\nWHERE d.id = 22104'),
(6, 'SELECT movies.name FROM movies\r\nJOIN movies_directors md ON md.movie_id = movies.id\r\nWHERE md.director_id = 22104'),
(7, 'SELECT d.first_name, d.last_name FROM directors d\r\nJOIN movies_directors md ON md.director_id = d.id\r\nJOIN movies_genres mg ON mg.movie_id = md.movie_id\r\nWHERE mg.genre = \'Horror\''),
(8, 'SELECT a.first_name, a.last_name FROM actors a \r\nJOIN roles r ON R.actor_id = a.id\r\nJOIN movies_directors md ON md.movie_id = r.movie_id\r\nWHERE md.director_id = 58201');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `queries`
--
ALTER TABLE `queries`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `queries`
--
ALTER TABLE `queries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
