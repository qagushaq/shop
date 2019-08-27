-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Мар 28 2019 г., 16:11
-- Версия сервера: 5.6.38
-- Версия PHP: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `phpshop`
--

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `category`
--

INSERT INTO `category` (`id`, `name`, `sort_order`, `status`) VALUES
(13, 'Аккаунты dota 2', 1, 1),
(14, 'Буст рейтинга', 2, 1),
(15, 'Калибровка dota 2', 3, 1),
(16, 'Обучение от бустеров', 4, 1),
(17, 'Отмыв лп', 5, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `code` int(11) NOT NULL,
  `price` float NOT NULL,
  `availability` int(11) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `is_new` int(11) NOT NULL DEFAULT '0',
  `is_recommended` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `product`
--

INSERT INTO `product` (`id`, `name`, `category_id`, `code`, `price`, `availability`, `brand`, `description`, `is_new`, `is_recommended`, `status`) VALUES
(46, 'SOLO MMR: 5890  PARTY MMR: TBD ', 13, 1, 455, 1, 'GetDota.ru', 'https://www.dotabuff.com/players/138104076\r\nПервая почта + письмо + виртуальный номер +хорошая порядочность', 1, 1, 1),
(47, 'SOLO MMR: 5820  PARTY MMR: TBD', 13, 2, 450, 1, 'GetDota.ru', 'https://www.dotabuff.com/players/845264740\r\nПервая почта + письмо + виртуальный номер +хорошая порядочность', 0, 1, 1),
(48, 'SOLO MMR: 5803  PARTY MMR: TBD ', 13, 3, 440, 1, 'funpay.com', 'https://www.dotabuff.com/players/910225484 \r\nПервая почта + письмо + виртуальный номер +хорошая порядочность', 1, 1, 1),
(49, 'SOLO MMR: 5623  PARTY MMR: TBD ', 13, 4, 413, 1, 'GetDota.ru', 'https://www.dotabuff.com/players/909918749 \r\nПервая почта + письмо + виртуальный номер +хорошая порядочность', 1, 1, 1),
(50, 'SOLO MMR: 5608  PARTY MMR: TBD', 13, 5, 356, 1, 'funpay.com', 'https://www.dotabuff.com/players/910028605\r\nПервая почта + письмо + виртуальный номер +хорошая порядочность', 1, 1, 1),
(51, 'SOLO MMR: 5600  PARTY MMR: TBD ', 13, 6, 700, 1, 'funpay.com', 'https://www.dotabuff.com/players/917587680 \r\nПервая почта + письмо + виртуальный номер +хорошая порядочность', 1, 1, 1),
(55, 'Low Priority Wins', 17, 8, 15, 1, 'altayboost.com', '1 игра - 7 Br\r\n2 игры - 10 BR\r\n3 игры - 15 Br\r\n4 игры - 18 Br\r\n5 игр   - 22 Br', 1, 1, 1),
(56, 'Solo rating boost', 14, 9, 20, 1, 'gwinshop.fp', '7000-7500 100ммр - 236 Br\r\n6500-7000 100ммр - 170 Br\r\n6000-6500 100ммр - 70 Br\r\n5700-6000 100ммр - 52 Br\r\n5500-5700 100ммр - 35 Br\r\n5300-5500 100ммр - 30 Br\r\n5000-5300 100ммр - 25 Br\r\n4500-5000 100ммр - 20 Br\r\n4000-4500 100ммр - 15 Br\r\n3000-4000 100ммр - 13 Br\r\n2000-3000 100ммр - 11 Br', 0, 1, 1),
(58, 'Calibration Dota 2', 15, 15, 35, 1, 'easyboost.com', 'ПОЛУЧИ МАКСИМАЛЬНЫЙ РАНК В НОВОМ СЕЗОНЕ ДОВЕРИВШИСЬ ПРОФЕССИОНАЛАМ! Срок выполнения 12-24ч 8/10 среднее число побед,+350mmr', 0, 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `product_order`
--

CREATE TABLE `product_order` (
  `id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_phone` varchar(255) NOT NULL,
  `user_comment` text NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `products` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `product_order`
--

INSERT INTO `product_order` (`id`, `user_name`, `user_phone`, `user_comment`, `user_id`, `date`, `products`, `status`) VALUES
(48, 'Алексей Лукашевич', '375447360426', 'Хочу купить аккаунт', 4, '2019-03-04 11:00:20', '{\"49\":1}', 2),
(49, 'Egor', '+37529375042645', '', 6, '2019-03-04 21:43:44', '{\"47\":1,\"48\":1}', 1),
(50, 'Алексей Лукашевич', '+123456789', '21вфвф', 4, '2019-03-26 07:24:47', '{\"46\":1}', 1),
(51, 'Алексей Лукашевич', '+375443750426', 'Хочу купить аккаунты', 4, '2019-03-28 11:35:29', '{\"51\":1,\"46\":1,\"47\":1,\"48\":1}', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`, `role`) VALUES
(3, 'Александр', 'alex@mail.com', '111111', ''),
(4, 'Алексей Лукашевич', '123@gmail.com', '2416', 'admin'),
(5, 'Сергей', 'serg@mail.com', '111111', ''),
(6, 'Egor', '123456@mail.ru', '123456', ''),
(7, 'Алексей', '12345@gmail.com', '123456', '');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `product_order`
--
ALTER TABLE `product_order`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT для таблицы `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT для таблицы `product_order`
--
ALTER TABLE `product_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
