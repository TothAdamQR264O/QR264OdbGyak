-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2020. Nov 30. 14:26
-- Kiszolgáló verziója: 10.1.16-MariaDB
-- PHP verzió: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `muveszetqr264o`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `alkotások`
--

CREATE TABLE `alkotások` (
  `ID` int(11) NOT NULL,
  `cím` char(30) COLLATE utf8_unicode_ci NOT NULL,
  `típus` char(8) COLLATE utf8_unicode_ci NOT NULL,
  `mSzám` int(11) DEFAULT NULL,
  `alkotó` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- A tábla adatainak kiíratása `alkotások`
--

INSERT INTO `alkotások` (`ID`, `cím`, `típus`, `mSzám`, `alkotó`) VALUES
(101, 'Angyali üdvözlet', 'festmény', 20, 1),
(102, 'Ginevra de Benzi', 'festmény', 15, 1),
(103, 'Madonna virággal', 'festmény', 5, 1),
(104, 'Szegfűs Madonna', 'festmény', 2, 1),
(105, 'Háromkirályok imádása', 'festmény', 3, 1),
(106, 'Szent Jeromos', 'festmény', 1, 1),
(107, 'Sziklás Madonna-első', 'festmény', 6, 1),
(108, 'Sziklás Madonna-második', 'festmény', 2, 1),
(109, 'Hölgy hermelinnel', 'festmény', 10, 1),
(110, 'Zenész képmása', 'festmény', 3, 1),
(111, 'Madonna Litta', 'festmény', 0, 1),
(112, 'Az utolsó vacsora', 'festmény', 0, 1),
(113, 'Mona Lisa', 'festmény', 7, 1),
(114, 'Szent Anna harmadmagával', 'festmény', 9, 1),
(201, 'Szent Család a báránnyal', 'festmény', 20, 2),
(202, 'Esterházy Madonna', 'festmény', 15, 2),
(203, 'Ezékiel látomása', 'festmény', 5, 2),
(204, 'Folignoi Madonna', 'festmény', 2, 2),
(205, 'Az athéni iskola', 'egyéb', 0, 2),
(301, 'Dávid-szobor', 'szobor', 5, 3),
(302, 'Mózes', 'szobor', 5, 3),
(303, 'A kentaurok csatája', 'szobor', 0, 3),
(401, 'Márk evangélista', 'szobor', 5, 4),
(402, 'Szent György', 'szobor', 5, 4),
(403, 'Jeremiás', 'szobor', 0, 4),
(501, 'Csillagos éj', 'festmény', 5, 5),
(502, 'Önarckép levágott füllel', 'festmény', 2, 5),
(503, 'Kávézó terasza este', 'festmény', 5, 5),
(601, 'A Rőzsehordó nő', 'festmény', 5, 6),
(602, 'Ásító inas', 'festmény', 2, 6),
(603, 'Feldöntött bogrács', 'festmény', 5, 6),
(701, 'Magányos cédrus', 'festmény', 2, 7),
(702, 'Zarándoklás a cédrusokhoz', 'festmény', 30, 7),
(703, 'Hídon átvonuló társaság', 'festmény', 5, 7),
(704, 'Süvöltőt leterítő karvaly', 'festmény', 15, 7),
(705, 'Szakállas férfi', 'festmény', 6, 7),
(801, 'Guernica', 'festmény', 8, 8),
(802, 'Avignoni kisasszonyok', 'festmény', 5, 8),
(803, 'A síró nő', 'festmény', 30, 8),
(804, 'Az öreg gitáros', 'festmény', 9, 8),
(805, 'Minotauromachy', 'festmény', 8, 8),
(901, 'Az emlékezet állandósága', 'festmény', 50, 9),
(902, 'Az emlékezet állandósága', 'festmény', 5, 9),
(903, 'Elefántok', 'festmény', 30, 9),
(1001, 'Jean Cocteau portréja', 'festmény', 10, 10),
(1002, 'Női fej', 'szobor', 20, 10),
(1003, 'Jeanne Hébuterne', 'festmény', 8, 10);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `dolgozók`
--

CREATE TABLE `dolgozók` (
  `szemSzám` int(11) NOT NULL,
  `név` char(20) COLLATE utf8_unicode_ci NOT NULL,
  `pozíció` char(10) COLLATE utf8_unicode_ci NOT NULL,
  `munkahely` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- A tábla adatainak kiíratása `dolgozók`
--

INSERT INTO `dolgozók` (`szemSzám`, `név`, `pozíció`, `munkahely`) VALUES
(10111, 'Noham Fred', 'igazgató', 1),
(10221, 'Célestin Reynaud', 'vezető', 1),
(10222, 'Sixtine Lucien', 'vezető', 1),
(10231, 'Roland Simon', 'őr', 1),
(10233, 'Ninon Violette', 'őr', 1),
(20111, 'Marjorie Frankie', 'igazgató', 2),
(20220, 'Finley Rolf', 'vezető', 2),
(20320, 'Ethel Janice', 'vezető', 2),
(20430, 'Kimmy Nina', 'őr', 2),
(20530, 'Molly Delmar', 'őr', 2),
(30111, 'Vasily Fyodor', 'igazgató', 3),
(30220, 'Stanislava Prokhor', 'vezető', 3),
(30320, 'Aelita Fyodor', 'vezető', 3),
(30430, 'Artyom Nikita', 'őr', 3),
(30530, 'Alina Taisiya', 'őr', 3),
(40111, 'Durante Mariella', 'igazgató', 4),
(40220, 'Cesarino Catia', 'vezető', 4),
(40320, 'Palmira Giuditta', 'vezető', 4),
(40430, 'Carmina Lino', 'őr', 4),
(40530, 'Giuseppa Fiorino', 'őr', 4),
(50111, 'Albert Léonard', 'igazgató', 5),
(50220, 'Fred Huguette', 'vezető', 5),
(50320, 'Henriette Aurélie', 'vezető', 5),
(50430, 'Judith Alexia', 'őr', 5),
(50530, 'Philippine Clémence', 'őr', 5),
(60111, 'Jeanine Cam', 'igazgató', 6),
(60220, 'Dom Morty', 'vezető', 6),
(60320, 'Maudie Page', 'vezető', 6),
(60430, 'Lorie Rhoda', 'őr', 6),
(60530, 'Alyssa Ruthie', 'őr', 6),
(70111, 'Piotr Wojciech', 'igazgató', 7),
(70220, 'Patrycja Natasza', 'vezető', 7),
(70320, 'Adam Wawrzyniec', 'vezető', 7),
(70430, 'Kazia Lilianna', 'őr', 7),
(70530, 'Edyta Romuald', 'őr', 7),
(80111, 'Fulgenzio Gioele', 'igazgató', 8),
(80220, 'Cesarino Catia', 'vezető', 8),
(80320, 'Ezio Gerarda', 'vezető', 8),
(80430, 'Santina Amore', 'őr', 8),
(80530, 'Berto Daria', 'őr', 8),
(90111, 'Rózsi Lívia', 'igazgató', 9),
(90220, 'Margit Patrik', 'vezető', 9),
(90320, 'Krisztina Mariska', 'vezető', 9),
(90430, 'Ármin Sára', 'őr', 9),
(90530, 'Endre Benedek', 'őr', 9),
(100111, 'Márta Etelka', 'igazgató', 10),
(100220, 'Georgina Jolán', 'vezető', 10),
(100320, 'Alida Irén', 'vezető', 10),
(100430, 'Roland Milán', 'őr', 10),
(100530, 'Alida Benjámin', 'őr', 10);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `gyűjtemény`
--

CREATE TABLE `gyűjtemény` (
  `GyID` int(11) NOT NULL,
  `db` int(11) NOT NULL,
  `gyűjtő` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- A tábla adatainak kiíratása `gyűjtemény`
--

INSERT INTO `gyűjtemény` (`GyID`, `db`, `gyűjtő`) VALUES
(1105, 5, 110194),
(1206, 6, 110218),
(2103, 3, 220172),
(2203, 3, 220285),
(2301, 1, 220356),
(3105, 5, 330155),
(3202, 2, 330219),
(3303, 3, 330373),
(4104, 4, 440166),
(5107, 7, 550112);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `gyűjtő`
--

CREATE TABLE `gyűjtő` (
  `szemSzám` int(11) NOT NULL,
  `név` char(20) COLLATE utf8_unicode_ci NOT NULL,
  `ország` char(15) COLLATE utf8_unicode_ci NOT NULL,
  `város` char(15) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- A tábla adatainak kiíratása `gyűjtő`
--

INSERT INTO `gyűjtő` (`szemSzám`, `név`, `ország`, `város`) VALUES
(110194, 'Hajnal Elemér', 'Magarország', 'Budapest'),
(110218, 'Aurél Zsuzsa', 'Magarország', 'Miskolc'),
(220172, 'Émeline Christel', 'Franciaország', 'Párizs'),
(220285, 'Fulbert Yanick', 'Franciaország', 'Párizs'),
(220356, 'Casimir Toussaint', 'Franciaország', 'Párizst'),
(330155, 'Sybil Easter', 'USK', 'London'),
(330219, 'Kimberly Leanna', 'USK', 'London'),
(330373, 'Marcus Belle', 'USA', 'Washington'),
(440166, 'Lubov Nataliya', 'Oroszország', 'Szentpétervár'),
(550112, 'Sieglinde Pascal', 'Németország', 'Berlin');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `gyűjtőialkotás`
--

CREATE TABLE `gyűjtőialkotás` (
  `Alk` int(11) NOT NULL,
  `eredetiség` char(11) COLLATE utf8_unicode_ci NOT NULL,
  `Gy` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- A tábla adatainak kiíratása `gyűjtőialkotás`
--

INSERT INTO `gyűjtőialkotás` (`Alk`, `eredetiség`, `Gy`) VALUES
(701, 'eredeti', 1105),
(601, 'nem eredeti', 1105),
(705, 'nem eredeti', 1105),
(104, 'nem eredeti', 1105),
(101, 'nem eredeti', 1105),
(703, 'eredeti', 1206),
(603, 'nem eredeti', 1206),
(703, 'nem eredeti', 1206),
(704, 'nem eredeti', 1206),
(802, 'nem eredeti', 1206),
(805, 'nem eredeti', 1206),
(104, 'eredeti', 2103),
(106, 'nem eredeti', 2103),
(111, 'nem eredeti', 2103),
(201, 'nem eredeti', 2203),
(203, 'nem eredeti', 2203),
(204, 'eredeti', 2203),
(301, 'nem eredeti', 2301),
(302, 'nem eredeti', 3105),
(303, 'nem eredeti', 3105),
(401, 'nem eredeti', 3105),
(402, 'nem eredeti', 3105),
(403, 'nem eredeti', 3105),
(501, 'eredeti', 3202),
(502, 'nem eredeti', 3202),
(503, 'nem eredeti', 3303),
(801, 'nem eredeti', 3303),
(802, 'nem eredeti', 3303),
(803, 'eredeti', 4104),
(804, 'nem eredeti', 4104),
(805, 'nem eredeti', 4104),
(901, 'nem eredeti', 4104),
(902, 'nem eredeti', 5107),
(903, 'nem eredeti', 5107),
(1001, 'nem eredeti', 5107),
(1002, 'nem eredeti', 5107),
(1003, 'nem eredeti', 5107),
(503, 'nem eredeti', 5107),
(501, 'eredeti', 5107);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `múzeum`
--

CREATE TABLE `múzeum` (
  `mID` int(11) NOT NULL,
  `név` char(30) COLLATE utf8_unicode_ci NOT NULL,
  `ország` char(15) COLLATE utf8_unicode_ci NOT NULL,
  `város` char(15) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- A tábla adatainak kiíratása `múzeum`
--

INSERT INTO `múzeum` (`mID`, `név`, `ország`, `város`) VALUES
(1, 'Uffizi képtár', 'Olaszország', 'Firenze'),
(2, 'National Gallery of Art', 'USA', 'Washington'),
(3, 'Ermitázs', 'Oroszország', 'Szentpétervár'),
(4, 'Vatikáni Képtár', 'Olaszország', 'Róma'),
(5, 'Louvre', 'Franciaország', 'Párizs'),
(6, 'National Gallery', 'USK', 'London'),
(7, 'Czartoryski Múzeum', 'Lengyelország', 'Krakkó'),
(8, 'Palazzo dell’Ambrosiana', 'Olaszország', 'Milánó'),
(9, 'Szépművészeti Múzeum', 'Magyarország', 'Budapest'),
(10, 'Magyar Nemzeti Galéria', 'Magyarország', 'Budapest');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `művész`
--

CREATE TABLE `művész` (
  `artID` int(11) NOT NULL,
  `név` char(30) COLLATE utf8_unicode_ci NOT NULL,
  `szÉv` int(11) NOT NULL,
  `hÉv` int(11) NOT NULL,
  `alkszám` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- A tábla adatainak kiíratása `művész`
--

INSERT INTO `művész` (`artID`, `név`, `szÉv`, `hÉv`, `alkszám`) VALUES
(1, 'Leonardo da Vinci', 1452, 1519, 17),
(2, 'Raffaello Sanzio', 1483, 1520, 15),
(3, 'Michelangelo Buonarroti', 1475, 1564, 26),
(4, 'Donatello', 1386, 1466, 7),
(5, 'Vincent van Gogh', 1853, 1890, 15),
(6, 'Munkácsy Mihály', 1844, 1900, 21),
(7, 'Csontváry Kosztka Tivadar', 1853, 1919, 9),
(8, 'Pablo Picasso', 1881, 1973, 15),
(9, 'Salvador Dalí', 1904, 1989, 20),
(10, 'Amedeo Modigliani', 1884, 1920, 15);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `tárlat`
--

CREATE TABLE `tárlat` (
  `Alk` int(11) NOT NULL,
  `eredetiség` char(11) COLLATE utf8_unicode_ci NOT NULL,
  `Muz` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- A tábla adatainak kiíratása `tárlat`
--

INSERT INTO `tárlat` (`Alk`, `eredetiség`, `Muz`) VALUES
(101, 'eredeti', 1),
(102, 'nem eredeti', 2),
(103, 'eredeti', 3),
(105, 'nem eredeti', 1),
(107, 'eredeti', 5),
(108, 'nem eredeti', 6),
(109, 'eredeti', 7),
(110, 'nem eredeti', 8),
(113, 'nem eredeti', 5),
(114, 'nem eredeti', 5),
(202, 'nem eredeti', 9),
(602, 'nem eredeti', 10),
(702, 'nem eredeti', 10);

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `alkotások`
--
ALTER TABLE `alkotások`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `alkotó` (`alkotó`);

--
-- A tábla indexei `dolgozók`
--
ALTER TABLE `dolgozók`
  ADD PRIMARY KEY (`szemSzám`),
  ADD KEY `munkahely` (`munkahely`);

--
-- A tábla indexei `gyűjtemény`
--
ALTER TABLE `gyűjtemény`
  ADD PRIMARY KEY (`GyID`),
  ADD KEY `gyűjtő` (`gyűjtő`);

--
-- A tábla indexei `gyűjtő`
--
ALTER TABLE `gyűjtő`
  ADD PRIMARY KEY (`szemSzám`);

--
-- A tábla indexei `gyűjtőialkotás`
--
ALTER TABLE `gyűjtőialkotás`
  ADD KEY `Gy` (`Gy`),
  ADD KEY `Alk` (`Alk`);

--
-- A tábla indexei `múzeum`
--
ALTER TABLE `múzeum`
  ADD PRIMARY KEY (`mID`);

--
-- A tábla indexei `művész`
--
ALTER TABLE `művész`
  ADD PRIMARY KEY (`artID`);

--
-- A tábla indexei `tárlat`
--
ALTER TABLE `tárlat`
  ADD KEY `Muz` (`Muz`),
  ADD KEY `Alk` (`Alk`);

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `alkotások`
--
ALTER TABLE `alkotások`
  ADD CONSTRAINT `alkotások_ibfk_1` FOREIGN KEY (`alkotó`) REFERENCES `művész` (`artID`);

--
-- Megkötések a táblához `dolgozók`
--
ALTER TABLE `dolgozók`
  ADD CONSTRAINT `dolgozók_ibfk_1` FOREIGN KEY (`munkahely`) REFERENCES `múzeum` (`mID`);

--
-- Megkötések a táblához `gyűjtemény`
--
ALTER TABLE `gyűjtemény`
  ADD CONSTRAINT `gyűjtemény_ibfk_1` FOREIGN KEY (`gyűjtő`) REFERENCES `gyűjtő` (`szemSzám`);

--
-- Megkötések a táblához `gyűjtőialkotás`
--
ALTER TABLE `gyűjtőialkotás`
  ADD CONSTRAINT `gyűjtőialkotás_ibfk_1` FOREIGN KEY (`Gy`) REFERENCES `gyűjtemény` (`GyID`),
  ADD CONSTRAINT `gyűjtőialkotás_ibfk_2` FOREIGN KEY (`Alk`) REFERENCES `alkotások` (`ID`);

--
-- Megkötések a táblához `tárlat`
--
ALTER TABLE `tárlat`
  ADD CONSTRAINT `tárlat_ibfk_1` FOREIGN KEY (`Muz`) REFERENCES `múzeum` (`mID`),
  ADD CONSTRAINT `tárlat_ibfk_2` FOREIGN KEY (`Alk`) REFERENCES `alkotások` (`ID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
