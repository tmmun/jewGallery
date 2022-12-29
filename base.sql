-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: sql212.byetcluster.com
-- Время создания: Дек 28 2022 г., 14:01
-- Версия сервера: 10.3.27-MariaDB
-- Версия PHP: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `b32_33243846_tmmun`
--

-- --------------------------------------------------------

--
-- Структура таблицы `base`
--

CREATE TABLE `base` (
  `id` int(100) NOT NULL,
  `urll` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(35) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `base`
--

INSERT INTO `base` (`id`, `urll`, `category`) VALUES
(1, 'https://i.ibb.co/SXNdKqQ/3.jpg', 'chain'),
(2, 'https://i.ibb.co/TRNKQQs/4.jpg', 'chain'),
(3, 'https://i.ibb.co/1QTdRp1/5.jpg', 'chain'),
(4, 'https://i.ibb.co/v3hbGmP/6.jpg', 'chain'),
(5, 'https://i.ibb.co/mS1763g/7.jpg', 'bracelets'),
(6, 'https://i.ibb.co/0rybFKV/8.jpg', 'bracelets'),
(7, 'https://i.ibb.co/chM9Nhn/10.jpg', 'bracelets'),
(8, 'https://i.ibb.co/qNPLFGk/9.jpg', 'bracelets'),
(9, 'https://i.ibb.co/7gXSGBh/11.jpg', 'other'),
(10, 'https://i.ibb.co/dGQ8QLS/12.jpg', 'other'),
(11, 'https://i.ibb.co/Hq6M6SQ/29.jpg', 'set'),
(12, 'https://i.ibb.co/QFQKS9c/30.jpg', 'set'),
(13, 'https://i.ibb.co/BGhgFwv/31.jpg', 'set'),
(14, 'https://i.ibb.co/M96jf0r/32.jpg', 'set'),
(15, 'https://i.ibb.co/kSfFcDH/33.jpg', 'set'),
(16, 'https://i.ibb.co/4TZpkDv/34.jpg', 'set'),
(17, 'https://i.ibb.co/60g6NQx/35.jpg', 'set'),
(18, 'https://i.ibb.co/7Q2JHQ6/36.jpg', 'set'),
(19, 'https://i.ibb.co/N7wFfKz/37.jpg', 'set'),
(20, 'https://i.ibb.co/34CVQx4/38.jpg', 'set'),
(21, 'https://i.ibb.co/xf6sn7w/39.jpg', 'set'),
(22, 'https://i.ibb.co/MMG4bfj/40.jpg', 'set'),
(23, 'https://i.ibb.co/8NgF081/42.jpg', 'set'),
(24, 'https://i.ibb.co/R90DXLp/41.jpg', 'set'),
(25, 'https://i.ibb.co/t3MFKpr/10.jpg', 'set'),
(26, 'https://i.ibb.co/kxFHN7s/9.jpg', 'set'),
(27, 'https://i.ibb.co/ZWZGRpF/11.jpg', 'set'),
(28, 'https://i.ibb.co/Sw1H9p0/12.jpg', 'set'),
(29, 'https://i.ibb.co/xqppwkh/17.jpg', 'set'),
(30, 'https://i.ibb.co/R6Xkfx9/18.jpg', 'set'),
(31, 'https://i.ibb.co/RN9zh50/20.jpg', 'set'),
(32, 'https://i.ibb.co/TPsnpqN/19.jpg', 'set'),
(33, 'https://i.ibb.co/r5ywbRJ/21.jpg', 'set'),
(34, 'https://i.ibb.co/zGpc7Sb/22.jpg', 'set'),
(35, 'https://i.ibb.co/2nhzM1Z/29.jpg', 'set'),
(36, 'https://i.ibb.co/xmRPsxr/30.jpg', 'set'),
(37, 'https://i.ibb.co/s6sxQX2/25.jpg', 'set'),
(38, 'https://i.ibb.co/yPwfRH7/26.jpg', 'set'),
(39, 'https://i.ibb.co/SrZFpwv/61.jpg', 'set'),
(40, 'https://i.ibb.co/sCJRB7D/62.jpg', 'set'),
(41, 'https://i.ibb.co/m6MdTZ1/63.jpg', 'set'),
(42, 'https://i.ibb.co/wgKn8cp/64.jpg', 'set'),
(43, 'https://i.ibb.co/Tv1pN8q/65.jpg', 'set'),
(44, 'https://i.ibb.co/93YFnJk/66.jpg', 'set'),
(45, 'https://i.ibb.co/WBWwW62/24.jpg', 'name'),
(46, 'https://i.ibb.co/rpDv8D6/23.jpg', 'name'),
(47, 'https://i.ibb.co/2sjGdDy/25.jpg', 'name'),
(48, 'https://i.ibb.co/LvJbLFP/26.jpg', 'name'),
(49, 'https://i.ibb.co/DY224DD/28.jpg', 'name'),
(50, 'https://i.ibb.co/rbL3MLG/27.jpg', 'name'),
(51, 'https://i.ibb.co/4Frvm0t/40.jpg', 'other'),
(52, 'https://i.ibb.co/j8rh4hX/39.jpg', 'other'),
(53, 'https://i.ibb.co/t3JrcxG/38.jpg', 'other'),
(54, 'https://i.ibb.co/sQpdYRC/37.jpg', 'other'),
(55, 'https://i.ibb.co/fHqTbVk/49.jpg', 'other'),
(56, 'https://i.ibb.co/dMfDyVc/50.jpg', 'other'),
(57, 'https://i.ibb.co/P4k3ZNC/43.jpg', 'other'),
(58, 'https://i.ibb.co/yh1vRnB/44.jpg', 'other'),
(59, 'https://i.ibb.co/vLgm1Bv/45.jpg', 'other'),
(60, 'https://i.ibb.co/ynf4c8Q/46.jpg', 'other'),
(61, 'https://i.ibb.co/C1bMXFp/47.jpg', 'other'),
(62, 'https://i.ibb.co/bFtRxW0/48.jpg', 'other'),
(63, 'https://i.ibb.co/kxYQLVt/33.jpg', 'set'),
(64, 'https://i.ibb.co/1RdDtch/34.jpg', 'set'),
(65, 'https://i.ibb.co/vVsSjsz/36.jpg', 'other'),
(66, 'https://i.ibb.co/GcDsccX/35.jpg', 'other'),
(67, 'https://i.ibb.co/t8V94y3/1.jpg', 'chain'),
(68, 'https://i.ibb.co/pfBPHrs/2.jpg', 'chain'),
(69, 'https://i.ibb.co/5h05zct/71.jpg', 'other'),
(70, 'https://i.ibb.co/j9NLKCX/72.jpg', 'other'),
(71, 'https://i.ibb.co/6tCMbKL/73.jpg', 'other'),
(72, 'https://i.ibb.co/qNhfdbx/74.jpg', 'other'),
(73, 'https://i.ibb.co/wKq3d1c/77.jpg', 'other'),
(74, 'https://i.ibb.co/Zgsg59P/78.jpg', 'other'),
(75, 'https://i.ibb.co/wRdx5Mq/75.jpg', 'name'),
(76, 'https://i.ibb.co/zXRVjVK/76.jpg', 'name'),
(77, 'https://i.ibb.co/zGyKWTr/81.jpg', 'name'),
(78, 'https://i.ibb.co/3BfH2RT/82.jpg', 'name'),
(79, 'https://i.ibb.co/ch658Qy/79.jpg', 'set'),
(80, 'https://i.ibb.co/xj3Z5PG/80.jpg', 'set'),
(81, 'https://i.ibb.co/rGv4yrm/69.jpg', 'other'),
(82, 'https://i.ibb.co/5GFBz41/70.jpg', 'other'),
(83, 'https://i.ibb.co/Yf8mTcc/84.jpg', 'bracelets'),
(84, 'https://i.ibb.co/MN9YXTy/83.jpg', 'bracelets'),
(85, 'https://i.ibb.co/zSGQ6GV/85.jpg', 'other'),
(86, 'https://i.ibb.co/RbZ2mRY/86.jpg', 'other'),
(87, 'https://i.ibb.co/mztFB9G/87.jpg', 'other'),
(88, 'https://i.ibb.co/ss7QpyJ/88.jpg', 'other'),
(89, 'https://i.ibb.co/zrWc6NR/90.jpg', 'other'),
(90, 'https://i.ibb.co/ZfmLdpH/89.jpg', 'other'),
(91, 'https://i.ibb.co/GtcT74F/99.jpg', 'other'),
(92, 'https://i.ibb.co/GQZd8QL/100.jpg', 'other'),
(93, 'https://i.ibb.co/qRstJhZ/95.jpg', 'other'),
(94, 'https://i.ibb.co/JmyKb7j/96.jpg', 'other'),
(95, 'https://i.ibb.co/JrDCFPY/94.jpg', 'other'),
(96, 'https://i.ibb.co/ZdGW2vP/93.jpg', 'other'),
(97, 'https://i.ibb.co/bFWjXHW/instagram-41.jpg', 'other'),
(98, 'https://i.ibb.co/DQzXQcj/instagram-40.jpg', 'other'),
(99, 'https://i.ibb.co/wyqv0Pc/instagram-37.jpg', 'other'),
(100, 'https://i.ibb.co/PN5qwGF/instagram-36.jpg', 'other'),
(101, 'https://i.ibb.co/tQwX8pJ/108.jpg', 'other'),
(102, 'https://i.ibb.co/pLvTJdw/107.jpg', 'other'),
(103, 'https://i.ibb.co/f4pgsr0/109.jpg', 'bracelets'),
(104, 'https://i.ibb.co/VgvZsy1/110.jpg', 'other'),
(105, 'https://i.ibb.co/n3NhGSk/instagram-34.jpg', 'other'),
(106, 'https://i.ibb.co/wJDrcJT/instagram-35.jpg', 'other'),
(107, 'https://i.ibb.co/f4L3TRJ/instagram-33.jpg', 'other'),
(108, 'https://i.ibb.co/Qps0Y6b/instagram-32.jpg', 'other'),
(109, 'https://i.ibb.co/4Nyzcx7/instagram-11.jpg', 'other'),
(110, 'https://i.ibb.co/zPq0yNP/instagram-10.jpg', 'other'),
(111, 'https://i.ibb.co/jvvwLqq/instagram-28.jpg', 'set'),
(112, 'https://i.ibb.co/2n4jnKr/instagram-29.jpg', 'set'),
(113, 'https://i.ibb.co/ZM3XQF5/instagram-21.jpg', 'other'),
(114, 'https://i.ibb.co/4pf3wsc/instagram-20.jpg', 'other'),
(115, 'https://i.ibb.co/M7SX65k/106.jpg', 'set'),
(116, 'https://i.ibb.co/xq3sd01/105.jpg', 'set'),
(117, 'https://i.ibb.co/pjBJWHT/instagram-22.jpg', 'set'),
(118, 'https://i.ibb.co/KbLJ4rY/instagram-23.jpg', 'set'),
(119, 'https://i.ibb.co/zRR0nZ4/instagram.jpg', 'set'),
(120, 'https://i.ibb.co/ZcmRPHG/instagram-1.jpg', 'set'),
(121, 'https://i.ibb.co/52pkqTK/instagram-5.jpg', 'set'),
(122, 'https://i.ibb.co/zfKP5K8/instagram-4.jpg', 'set'),
(123, 'https://i.ibb.co/FYm77Cv/instagram-19.jpg', 'set'),
(124, 'https://i.ibb.co/nf94nK6/instagram-18.jpg', 'set'),
(125, 'https://i.ibb.co/44TYbwX/instagram-17.jpg', 'set'),
(126, 'https://i.ibb.co/LC66fC8/instagram-16.jpg', 'set'),
(127, 'https://i.ibb.co/bbcqB51/instagram-14.jpg', 'set'),
(128, 'https://i.ibb.co/MCCxgKW/instagram-15.jpg', 'set'),
(129, 'https://i.ibb.co/F8wC8KG/instagram-3.jpg', 'set'),
(130, 'https://i.ibb.co/7px7c8z/instagram-2.jpg', 'set'),
(131, 'https://i.ibb.co/QPDRNs2/instagram-9.jpg', 'set'),
(132, 'https://i.ibb.co/HqfZcYd/instagram-8.jpg', 'set'),
(133, 'https://i.ibb.co/JzGrySc/instagram-13.jpg', 'set'),
(134, 'https://i.ibb.co/kcKymx0/instagram-12.jpg', 'set'),
(135, 'https://i.ibb.co/KqnCkgD/instagram-31.jpg', 'bracelets'),
(136, 'https://i.ibb.co/PFvzFn7/instagram-30.jpg', 'bracelets'),
(137, 'https://i.ibb.co/zxf2Y0R/91.jpg', 'bracelets'),
(138, 'https://i.ibb.co/BtPzNSq/92.jpg', 'bracelets'),
(139, 'https://i.ibb.co/XkTJDJk/98.jpg', 'bracelets'),
(140, 'https://i.ibb.co/BLB2D5X/97.jpg', 'bracelets'),
(141, 'https://i.ibb.co/4tpjH2L/instagram-7.jpg', 'bracelets'),
(142, 'https://i.ibb.co/gWgsfHp/instagram-6.jpg', 'bracelets'),
(143, 'https://i.ibb.co/hRQjG8C/instagram-24.jpg', 'chain'),
(144, 'https://i.ibb.co/bJs2r0f/instagram-25.jpg', 'chain'),
(145, 'https://i.ibb.co/ZWH15zz/instagram-39.jpg', 'name'),
(146, 'https://i.ibb.co/TqmNjC3/instagram-38.jpg', 'name'),
(147, 'https://i.ibb.co/SKyz5qx/101.jpg', 'name'),
(148, 'https://i.ibb.co/xYw1h2W/102.jpg', 'name');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `base`
--
ALTER TABLE `base`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `base`
--
ALTER TABLE `base`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
