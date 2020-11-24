-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2020. Nov 24. 09:24
-- Kiszolgáló verziója: 10.1.16-MariaDB
-- PHP verzió: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `qr264o_1124`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `autó`
--

CREATE TABLE `autó` (
  `Rendszám` char(7) COLLATE utf8_unicode_ci NOT NULL,
  `Típus` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `Szín` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `Kor` int(2) NOT NULL,
  `Ár` int(8) NOT NULL,
  `Tulaj` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- A tábla adatainak kiíratása `autó`
--

INSERT INTO `autó` (`Rendszám`, `Típus`, `Szín`, `Kor`, `Ár`, `Tulaj`) VALUES
('FER-831', 'Opel Corsa', 'Piros', 18, 390, 1001),
('GDF-525', 'Renault Twingo', 'Fekete', 16, 280, NULL),
('HUB-936', 'Suzuki Swift', 'Fekete', 16, 500, NULL),
('IXJ-239', 'Suzuki Swift', 'Zöld', 15, 450, 1005),
('JAH-425', 'Skoda Fabia', 'Piros', 13, 620, 1002),
('JCD-443', 'Opel Astra', 'Fehér', 12, 990, 1007),
('KAP-290', 'BMW 316', 'Fekete', 6, 3250, 1002),
('KFT-204', 'Opel Astra', 'Szürke', 7, 1250, 1006),
('MLM-211', 'Toyota Yaris', 'Fehér', 3, 1850, 1005);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `kategória`
--

CREATE TABLE `kategória` (
  `Knév` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AlsóHP` int(4) DEFAULT NULL,
  `FelsőHP` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- A tábla adatainak kiíratása `kategória`
--

INSERT INTO `kategória` (`Knév`, `AlsóHP`, `FelsőHP`) VALUES
('Selejt', 0, 200),
('Olcsó', 201, 500),
('Átlagos', 501, 1000),
('Drága', 1001, 5000);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `tulajdonos`
--

CREATE TABLE `tulajdonos` (
  `TKód` int(11) NOT NULL,
  `Név` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Város` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- A tábla adatainak kiíratása `tulajdonos`
--

INSERT INTO `tulajdonos` (`TKód`, `Név`, `Város`) VALUES
(1001, 'Kis Janos', 'Miskolc'),
(1002, 'Kis Éva', 'Mályi'),
(1003, 'Retek Ödön', 'Miskolc'),
(1004, 'Virág Zoltán', 'Nyék'),
(1005, 'Nagy Eszter', 'Nyék'),
(1006, 'Kovács Magor', 'Mályi'),
(1007, 'Asztal Antal', 'Miskolc');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `autó`
--
ALTER TABLE `autó`
  ADD PRIMARY KEY (`Rendszám`),
  ADD KEY `TKód` (`Tulaj`);

--
-- A tábla indexei `tulajdonos`
--
ALTER TABLE `tulajdonos`
  ADD PRIMARY KEY (`TKód`);

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `autó`
--
ALTER TABLE `autó`
  ADD CONSTRAINT `autó_ibfk_1` FOREIGN KEY (`Tulaj`) REFERENCES `tulajdonos` (`TKód`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
