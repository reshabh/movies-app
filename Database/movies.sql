-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 25, 2021 at 11:56 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `movies`
--

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `featuredImage` varchar(1000) NOT NULL,
  `length` float NOT NULL,
  `releaseDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`id`, `title`, `description`, `featuredImage`, `length`, `releaseDate`) VALUES
(1, 'Love Aaj Kal 2', 'vgrv', 'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcS1Cka8uaGHrlrVpKym2M1nLi3RWpFN4P0LnwvtSoOMNKb3TMl6', 1.2, '2021-07-16'),
(2, 'War', ';mw;mw', 'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcQsHHM8pzbFQVcRVeys4kD1tnGA_dywwagbY8SJi-_NwZQxf-Rt', 5, '2021-07-23'),
(3, 'Andhadhun', 'Indian Hindi-language black comedy crime thriller film co-written and directed by ', 'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcT-PKn3ieG8r0-z_5YKGpIiWXBbIrRHwxxkzWQwfVumxi7TGNn4', 2.4, '2021-02-09'),
(4, 'Sanju', 'asdjgdsbc dschdsgcjds', 'http://www.movienewsletters.net/photos/259717R1.jpg', 3, '2021-03-19'),
(5, 'Mumbai Saga', 'cgeryvuc ievuhiuefbviasx yugcyudsg', 'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcRQ4OfsW0Vp1TZS_69yzE-tI3M_oQC46kc76PJsT1n8IM8S-jwq', 1.5, '2021-06-08'),
(6, 'Kabir Singh', 'oiji wudfwye pokjpjwv', 'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcSSBjgn6nmJttwcTh0nmdTxJLyomVapLaColnlJZ9dXLjf-Y1tP', 2.3, '2020-08-20'),
(7, 'Kesari', 'dsvdf fpvjdfov osdhv', 'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcT37XVSyUpe0_obnpgCziBefVF8Bd55N2hyaykf9sJCi-kw7kqK', 2.4, '2019-11-29'),
(8, 'Raees', 'fguf rf refhre ', 'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcRuNeY12sYTdIOmWvCvt55rap2rhxueuMtrKNwqpj9JHBB6Rgc_', 2.45, '2021-07-21'),
(9, 'Tiger Zinda Hai', 'wkfweibf ', 'http://www.movienewsletters.net/photos/238411R1.jpg', 2.1, '2021-03-09'),
(10, 'Dangal', 'wkcwncn wechowd c', 'https://m.media-amazon.com/images/M/MV5BMTQ4MzQzMzM2Nl5BMl5BanBnXkFtZTgwMTQ1NzU3MDI@._V1_.jpg', 2.1, '2021-03-09'),
(11, 'Sultan', 'wfcoerh perfjcero', 'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcS1cK4t_uWmqHaRYD9uq69hLEWy7f7NpIfjPlQECdooplpkQcEp', 2.41, '2019-05-23'),
(12, 'Dum Laga Ke Haisha', 'ohcnew ewufh w', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT4whWQym05Mc8Qr4Z6fs9pwwLZxfwqzG9aL8Ot5Bhf-PqR40CE', 1.59, '2018-11-08'),
(13, 'Sairat', 'Two college friends Archi and Parshya, who belong to different castes, fall in love with each other.', 'https://m.media-amazon.com/images/M/MV5BMjBjNWYyY2UtOGNjZC00MTg4LWIwYWItYmZiNDI5MGUwNWRkXkEyXkFqcGdeQXVyNjI1NjA5NjE@._V1_UY1200_CR90,0,630,1200_AL_.jpg', 2.54, '2019-01-24'),
(14, 'Mulshi Pattern', 'Sakharam, a farmer, sells his land due to financial constraints.', 'https://m.media-amazon.com/images/M/MV5BZGQxMWUwNDktYmUwYy00OGFhLTgzOTctY2QxOWVjOTM1NDI0XkEyXkFqcGdeQXVyODE5NzE3OTE@._V1_.jpg', 2.35, '2018-12-12'),
(15, 'Timepass', 'Dagdu, the son of an autorickshaw driver, falls in love with a girl named Prajakta.', 'https://upload.wikimedia.org/wikipedia/en/thumb/9/92/Timepass_%28film%29.jpg/220px-Timepass_%28film%29.jpg', 2.23, '2018-01-11'),
(16, 'Mitwaa', 'Shivam Sarang, a rich hotelier from Goa, does not believe in love or the institution of marriage.', 'https://in.bmscdn.com/iedb/movies/images/extra/vertical_logo/mobile/thumbnail/xxlarge/mitwaa-et00025686-01-04-2021-06-40-51.jpg', 2.1, '2015-10-17'),
(17, 'Natsamrat', 'After retirement, Ganpat Belwalkar, a Shakespearean actor, divides his property amongst his two chil', 'https://m.media-amazon.com/images/M/MV5BYjkzZWIyZTctN2U3Ny00MDZlLTkzZTYtMTI2MWI5YTFiZWZkXkEyXkFqcGdeQXVyNTM2NTg3Nzg@._V1_.jpg', 2.46, '2018-07-21'),
(18, 'Natarang', 'Guna, a poor village labourer, loses his job and faces a financial crunch.', 'https://upload.wikimedia.org/wikipedia/en/thumb/7/75/Natarang_%28film%29.jpg/220px-Natarang_%28film%29.jpg', 2.7, '2016-10-15'),
(19, 'Takatak', 'Two sisters, Kamakshi and Minakshi, live a carefree life.', 'https://m.media-amazon.com/images/M/MV5BYzUzMTU0ZjYtZGM0MC00ODY1LTg2YmEtNDdhNTcxODRmNDg5XkEyXkFqcGdeQXVyMTAwMzMzNzQ3._V1_UY1200_CR95,0,630,1200_AL_.jpg', 2.24, '2017-11-24'),
(20, 'Mumbai-Pune-Mumbai 2', 'Gautam and Gauri, who live in different cities, meet and decide to get married.', 'https://m.media-amazon.com/images/M/MV5BOTAyNDQzYzEtZTdlZC00YzY0LWEzYTktODliYjdjOTQ2YjcwXkEyXkFqcGdeQXVyNjIyMjY4OTU@._V1_.jpg', 2.32, '2015-09-16'),
(21, 'Katyar Kaljat Ghusali', 'Pandit Bhanu is then challenged by Khanasaheb Aftab.', 'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcQlPgqRub6W7kLGRAo4RCvaMQQmSSmByD-qnn58oSKPKtw2Xe1_', 2.42, '2016-11-11'),
(22, 'Bonus', 'Aditya is a young businessman who does not believe in giving bonuses to his employees.', 'https://m.media-amazon.com/images/M/MV5BZWNmNWVkMDItMmRlYS00N2I0LWIzZmEtNDE5ZDcyZWNkZDc3XkEyXkFqcGdeQXVyODE5NzE3OTE@._V1_.jpg', 2.34, '2018-09-20'),
(23, 'Godzilla vs. Kong', 'King Kong is transported out of his containment zone after Godzilla resurfaces and creates mayhem.', 'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcSNPj2bgqy8zGbvRUZPOpXvF58dwGwGk_1-GX1P_m7yHnj-8Ebd', 1.53, '2020-03-13'),
(24, 'Inception', 'Cobb steals information from his targets by entering their dreams.', 'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcRdY_wj6JMbD4UbFuoqbFhWQhD5jXm8gYg0TFjDh1k7ZfpZQYYG', 2.42, '2020-06-03'),
(25, 'The Avengers', 'Nick Fury is compelled to launch the Avengers Initiative when Loki poses a threat to planet Earth.', 'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcTp0qlAoWcOOswIkL_qpjYzJqCCDmWXiBzCXiqbE43Obo8c0Z-s', 2.24, '2019-09-06'),
(26, 'Wonder Woman 1984', 'Wonder Woman finds herself battling two opponents, Maxwell Lord, a shrewd entrepreneur, and Barbara ', 'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcTh6DdPBhzs5OuDYGiYTqRh6YyLWQV8bUOuL7d0TBD8o9zk15fq', 2.31, '2020-10-21'),
(27, 'Joker', 'Forever alone in a crowd, failed comedian Arthur Fleck seeks connection as he walks the streets of G', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJKLiEyyz1Q9RC8EBYl3ijr3nuGeyO2ETmwy6Kdq0AQtD0elWD', 2.2, '2020-12-07'),
(28, 'The Dark Knight', 'After Gordon, Dent and Batman begin an assault on Gotham\'s organised crime.', 'https://contentserver.com.au/assets/598411_p173378_p_v8_au.jpg', 2.32, '2021-01-21'),
(29, 'Jumanji: The Next Level', 'When Spencer goes missing, the gang returns to Jumanji to travel unexplored territories and help the', 'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcSxj0M5vbvyeQ8kxcUoRdHMyIjtsQ410YILzsggthfw7GRryQXP', 2.3, '2020-01-21'),
(30, 'Spider-Man: Into the Spider-Verse\r\n', 'After gaining superpowers from a spider bite, Miles Morales protects the city as Spider-Man.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS15Qk_nERnp1yp0g_eudjbDow_39q_hbBYNqrDLOztG-tO-vGQ', 1.56, '2019-09-18'),
(31, 'Titanic', 'Seventeen-year-old Rose hails from an aristocratic family and is set to be married.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTgfTUS1Gn-kUaDeCslEslawdHX4K6BmkUI-oEhJqNOBn7KMPIDoXmy7Z-csKqN_yiaoto&usqp=CAU', 3.15, '2014-07-02'),
(32, 'Jurassic Park', 'John Hammond, an entrepreneur, opens a wildlife park containing cloned dinosaurs.', 'https://contentserver.com.au/assets/600436_p14812_p_v8_au.jpg', 2.8, '2017-08-12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
