-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2020. Okt 19. 13:27
-- Kiszolgáló verziója: 10.1.16-MariaDB
-- PHP verzió: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `qr264o_6_3`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `befizetes`
--

CREATE TABLE `befizetes` (
  `tkod` int(11) DEFAULT NULL,
  `tajszam` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `resztvevo`
--

CREATE TABLE `resztvevo` (
  `tajszam` int(11) NOT NULL,
  `nev` char(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lakcim` char(20) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `tanfolyam`
--

CREATE TABLE `tanfolyam` (
  `tkod` int(11) NOT NULL,
  `ar` int(11) DEFAULT NULL,
  `tipus` char(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `megnevezes` char(30) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `resztvevo`
--
ALTER TABLE `resztvevo`
  ADD PRIMARY KEY (`tajszam`);

--
-- A tábla indexei `tanfolyam`
--
ALTER TABLE `tanfolyam`
  ADD PRIMARY KEY (`tkod`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
