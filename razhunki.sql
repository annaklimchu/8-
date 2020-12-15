-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Час створення: Гру 15 2020 р., 21:14
-- Версія сервера: 10.4.14-MariaDB
-- Версія PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База даних: `razhunki`
--

-- --------------------------------------------------------

--
-- Структура таблиці `invoice`
--

CREATE TABLE `invoice` (
  `invid` int(10) NOT NULL,
  `iduser` int(10) DEFAULT NULL,
  `idp` int(10) DEFAULT NULL,
  `stoimost` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп даних таблиці `invoice`
--

INSERT INTO `invoice` (`invid`, `iduser`, `idp`, `stoimost`) VALUES
(2000, 5, 1001, '25.00'),
(2001, 1, 1002, '25.00'),
(2002, 3, 1004, '20.00');

-- --------------------------------------------------------

--
-- Структура таблиці `product`
--

CREATE TABLE `product` (
  `idp` int(11) NOT NULL,
  `Name` varchar(45) DEFAULT NULL,
  `desor` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп даних таблиці `product`
--

INSERT INTO `product` (`idp`, `Name`, `desor`) VALUES
(1001, 'Ковбаса', 'ТМ Забіяка'),
(1002, 'Молоко Простоквасино', 'Данон'),
(1003, 'Білоруські сосиски', 'Забіяка'),
(1004, 'Йогурт Ростішка', 'Данон');

-- --------------------------------------------------------

--
-- Структура таблиці `user`
--

CREATE TABLE `user` (
  `idusr` int(10) NOT NULL,
  `Name` varchar(45) DEFAULT NULL,
  `Sumname` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп даних таблиці `user`
--

INSERT INTO `user` (`idusr`, `Name`, `Sumname`) VALUES
(1, 'Денис', 'Марченко'),
(2, 'Ооександр', 'Мартинюк'),
(3, 'Аня', ' Климчук'),
(4, 'Люда', 'Скучинська'),
(5, 'Серій', 'Войтович');

--
-- Індекси збережених таблиць
--

--
-- Індекси таблиці `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`invid`),
  ADD KEY `iduser` (`iduser`),
  ADD KEY `idp` (`idp`);

--
-- Індекси таблиці `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`idp`);

--
-- Індекси таблиці `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`idusr`);

--
-- AUTO_INCREMENT для збережених таблиць
--

--
-- AUTO_INCREMENT для таблиці `user`
--
ALTER TABLE `user`
  MODIFY `idusr` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Обмеження зовнішнього ключа збережених таблиць
--

--
-- Обмеження зовнішнього ключа таблиці `invoice`
--
ALTER TABLE `invoice`
  ADD CONSTRAINT `invoice_ibfk_1` FOREIGN KEY (`iduser`) REFERENCES `user` (`idusr`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `invoice_ibfk_2` FOREIGN KEY (`idp`) REFERENCES `product` (`idp`) ON DELETE SET NULL ON UPDATE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
