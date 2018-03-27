-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 27, 2018 at 08:58 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 5.6.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `greedcontrol`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` text COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `admin` int(255) NOT NULL DEFAULT '0',
  `mini_num` int(11) NOT NULL,
  `number` int(10) NOT NULL DEFAULT '0',
  `locked` int(11) NOT NULL DEFAULT '0',
  `display` int(11) NOT NULL DEFAULT '0',
  `last_picked` int(11) NOT NULL DEFAULT '0',
  `score` float NOT NULL DEFAULT '0',
  `games_won` int(10) NOT NULL DEFAULT '0',
  `beta` tinyint(1) NOT NULL DEFAULT '0',
  `secret` int(11) NOT NULL DEFAULT '0',
  `super_secret` int(11) NOT NULL DEFAULT '0',
  `fixer` int(11) NOT NULL DEFAULT '0',
  `giveaway` int(11) NOT NULL DEFAULT '0',
  `fox` int(11) NOT NULL DEFAULT '0',
  `donate` int(11) NOT NULL DEFAULT '0',
  `badge` varchar(25) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'default',
  `puzzle` tinyint(1) NOT NULL DEFAULT '0',
  `active` int(255) NOT NULL DEFAULT '0',
  `hash` text COLLATE utf8_unicode_ci NOT NULL,
  `banned` int(255) NOT NULL DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `admin`, `mini_num`, `number`, `locked`, `display`, `last_picked`, `score`, `games_won`, `beta`, `secret`, `super_secret`, `fixer`, `giveaway`, `fox`, `donate`, `badge`, `puzzle`, `active`, `hash`, `banned`, `created_at`) VALUES
(1, 'bot', '', '$2y$10$a2k7k1lecznsCKJXX3hOvesxFNAkMPQIW588f/X5TzoJmLi2SNx1m', 0, -1, 1, 0, 0, 0, 38, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, '', 1, '2017-11-20 01:32:35'),
(2, 'jeopardy367glk', '', '28c8edde3d61a0411511d3b1866f0636', 0, -1, 3, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, '', 0, 1, '', 1, '2017-11-20 01:45:51'),
(5, 'test', 'test@gmail.com', '$2y$10$wwqYghbGoC.hF7lEOf0y3uoly7gy8TZmckpTA5t34WMjtHqJvzLX2', 0, -1, 5, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '', 0, 1, '', 1, '2017-11-20 01:50:53'),
(6, 'test12', 'test@example.com', '12', 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, '', 1, '2017-11-20 21:06:48'),
(10, 'test123', 'f', '$2y$10$v0cnUOuljCYnaz4WFb1ePufBvzrT5tUcGsG1BzNvJL7w0TluNqKuS', 0, -1, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, '', 1, '2017-11-20 21:14:27'),
(11, 't', 't', '$2y$10$MCFsnS.HIdM7VRccj/7xP.MsNM78hCbtwg/fMq2JWBWY9KOWp2q/S', 0, -1, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, '', 1, '2017-11-20 21:16:01'),
(12, 'tmitchell19', 'tmitchell19@sidwell.edu', '$2y$10$zigka/VomzrgD4fXXbj67.JGWy1/t50/6sEzENBSlr93jz5gAMRMG', 0, 42, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 'secret', 1, 1, '', 1, '2017-11-20 22:12:12'),
(13, 'sforrester19', 'sforrester19@sidwell.edu', '$2y$10$1.OnHZxIvWNphOATIAQ6CONb6BPCfKR7RzeHVG3LrtKdZzNjh4ZBG', 0, 42, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 0, 0, 0, 'fixer', 1, 1, '', 1, '2017-11-20 22:12:42'),
(14, 'obass19', 'obass19@sidwell.edu', '$2y$10$A3GoTXwqW0mhX6iqkC/gsOI4N3zUZDytu0gnmkbuz0LnN1dA81YZ6', 2, 17, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 1, 0, 0, 'admin', 1, 1, '', 1, '2017-11-20 22:13:19'),
(15, 'asethiolowin19', 'asethiolowin19@sidwell.edu', '$2y$10$MHx/xs/WuME86c.0uvD5KeVIP8sK3hulmfPaeRmiwh8vyUyA5jgUu', 1, 8, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 0, 0, 0, 'secret', 1, 1, '', 1, '2017-11-20 22:13:50'),
(16, 'dhacker19', 'dhacker19@sidwell.edu', '$2y$10$xTwFjIIVVwc9qNmV3Hc8QuA8Tsm2SmmDK3zB9RCNUyGA6//TBhu52', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 'beta', 1, 1, '', 1, '2017-11-20 22:14:23'),
(17, 'nshapiro19', 'nshapiro19@sidwell.edu', '$2y$10$uCtQp2YRpnV43Xdtf769SOKa4Satq5a9AlxJePle8TGNi8u47Yw6C', 3, 3, 0, 0, 0, 0, 101, 0, 1, 1, 1, 1, 1, 1, 1, 'fox', 1, 1, '', 1, '2017-11-20 22:33:39'),
(18, 'ppareek19', 'ppareek19@sidwell.edu', '$2y$10$EANZ6DgSTx3L128FRWw0LOxYeq879gELQ/k.Bl6/MEcaxlLnmQCqS', 0, 50, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'beta', 1, 1, '', 1, '2017-11-21 03:34:39'),
(19, 'hkay19', 'hkay19@sidwell.edu', '$2y$10$Sk7qj1Ybl.4u/2wsnoESL.SguRhwWul.MBUs27jQ8SAZNO5o0kQOy', 0, 37, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 'secret', 1, 1, '', 1, '2017-11-22 00:41:41'),
(20, 'awang19', 'awang19@sidwell.edu', '$2y$10$oeRhHRu6sfUn.LYvMGt8qOHdRWOP1EtIA9MAvsnJI0G./BIoQ.l2m', 0, 19, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 'winner', 1, 1, '', 1, '2017-11-24 02:51:25'),
(21, 'etarr19', 'etarr19@sidwell.edu', '$2y$10$Wnvd662mLk.hUmNC879Pwuh1W8TGA0U7PqbXpbTEwWG2pxyuJnqlK', 0, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'default', 1, 1, '', 1, '2017-11-28 00:07:31'),
(22, 'pdimeglio19', 'pdimeglio19@sidwell.edu', '$2y$10$SQoQiMNoOLvh.i3vnn8SK.05UvCFqPGiXydc/rpEicrovblnvoPla', 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'default', 1, 1, '', 1, '2017-11-28 00:50:44'),
(23, 'syi19', 'syi19@sidwell.edu', '$2y$10$mH17PJlIbj6qNUHmTI8vWu1Mui25Shz7lfAXefulxgWgjijcx9iwy', 0, 45, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 'giveaway', 1, 1, '', 1, '2017-11-28 00:54:11'),
(24, 'ladler19', 'ladler19@sidwell.edu', '$2y$10$JiRRi.3vGCz5j.Uvj83H/u2Pc3S9XEdREH29PQlcBm5LT1kzYdBvu', 0, 13, 12, 1, 0, 0, 5, 1, 0, 1, 0, 0, 0, 0, 1, 'donate', 1, 1, '', 1, '2017-11-28 00:59:10'),
(25, 'morminoj', 'morminoj@sidwell.edu', '$2y$10$KbEW3zMQerI.OCkkHYAOqeBOsDyFQXNB3WgZ4dX2ax3VpDh5ygPNa', 1, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'default', 0, 1, '', 1, '2017-11-28 01:05:43'),
(26, 'ccheng19', 'ccheng19@sidwell.edu', '$2y$10$NY0mXUm7swwjxRCjUscAEO69YfgqJSQd.Xwk7z1reiRHxDVP9/c3C', 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'default', 1, 1, '', 1, '2017-11-28 16:28:41'),
(27, 'epassmore19', 'epassmore19@sidwell.edu', '$2y$10$j120e9EruDOhgFQ.VAjHVePuFQHIuc9wtkBGfdoIQxff1I4JOJe1O', 0, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'default', 1, 1, '', 1, '2017-11-28 16:35:49'),
(28, 'namin19', 'namin19@sidwell.edu', '$2y$10$Fw.n60UdP/zUscJpHoYfo.RarCZQbM6V9lQMDylFnVL0F3FPgVw92', 0, 51, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'default', 1, 1, '', 1, '2017-11-28 16:42:58'),
(29, 'mjubeir19', 'mjubeir19@sidwell.edu', '$2y$10$GfQF9M3WjJRAW7JHV03Q3eTiZROmuikMQPZtR1WW6/.55i2YpwSVC', 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'default', 1, 1, '', 1, '2017-11-28 22:30:35'),
(30, 'dmaniatis19', 'dmaniatis19@sidwell.edu', '$2y$10$Z2ivreys34TRIj5OJ1WW0ObXRrc16EP09Faa262RRB1yEw.yMY8.i', 0, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'default', 1, 1, '', 1, '2017-12-01 20:01:03'),
(31, 'iressler', 'ianressler821@gmail.com', '$2y$10$yP6BX8vaV.fk01xnxHFIN.aM/HLOUB/rUCIXxHyrL2gWxeR28UeCa', 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'default', 1, 1, '', 1, '2017-12-03 17:52:31'),
(32, 'zdeparle19', 'zdeparle19@sidwell.edu', '$2y$10$4yzUw1rDQBMx4bldVkHKnu/vA3fp28FoJyCi72qfXluiTag.zk6jG', 0, -1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 'secret', 1, 1, '', 1, '2017-12-06 17:03:14'),
(33, 'ssekhon19', 'ssekhon19@sidwell.edu', '$2y$10$GI9IBjr3P2GsloLVsSpfguSBVgUyhXvAOyvA098T8r15lbWXiBdku', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'default', 1, 1, '', 1, '2018-02-28 09:40:06'),
(34, 'test324', 't', '$2y$10$jfzch0X1a7pZNZkXFDHXIes5AtAW1YabdHXIlV/JrM15AB4qS6vw2', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'default', 0, 0, 'd262fd8fddcc44e03e681fcb4cf4b5b4', 1, '2018-03-21 18:09:27'),
(35, 'test32424', 'nshapiro19@sidwell.edu', '$2y$10$eZFK1GZFCNZ01msyHOPj7.MS3TTgmonxUCopIbxyaXLCcx4yODb7a', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'default', 0, 0, 'e5baa6e486f12d4307d7a6c7aba2884a', 1, '2018-03-21 18:15:34'),
(36, 'test17', '9@mailinator.com', '$2y$10$XakXXaRlRSpkKGgF1ccuGuLk/1r1mwshFbJ1Tooa./aYWwhAPfUoi', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'default', 0, 1, 'd8708d5847185bb00fd17f23b644712f', 1, '2018-03-21 18:16:32'),
(37, 'nateen', 'nateen@gmail.com', '$2y$10$GrASHubajK.UhCtrbMplLesO2Iy7Us8Se9RN5p388IZBwOV31kUyi', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'default', 0, 1, 'd8708d5847185bb00fd17f23b644712f', 0, '2018-03-21 23:13:29'),
(38, 'nateen1', 'nateen@gmail.com', '$2y$10$RY6uhLL0aq4aAKUQg6DhWuQJQSbPAN0Vqv//0jTFyiSFX/iJzYlGG', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 'default', 0, 1, '6a40d938396981a1934f4157dd8d3a5e', 1, '2018-03-21 23:16:21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `email` (`email`(100));

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
