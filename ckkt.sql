-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июн 16 2018 г., 09:48
-- Версия сервера: 5.7.20-log
-- Версия PHP: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `ckkt`
--

-- --------------------------------------------------------

--
-- Структура таблицы `articles`
--

CREATE TABLE `articles` (
  `ID` int(11) NOT NULL,
  `article` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `articles`
--

INSERT INTO `articles` (`ID`, `article`) VALUES
(1, '<p>В план входили следующие мероприятия:</p>\r\n		<ol>\r\n			<li>\r\n				<div class = \"row\">\r\n					<div class = \"col-6 mb-3\">\r\n						Олимпиада по информационно-коммуникационным технологиям, в которой участвовали студенты 1-3\r\n						курсов\r\n						отделения автоматизации и компьютерных технологий. Итоги Олимпиады:\r\n						<ul style = \"list-style-type: none\">\r\n							<li><img src = \"../img/medalgold.png\" style = \"width: 16px;\">\r\n								1 место - Фоменко Д. КС-15-1/д\r\n							</li>\r\n							<li><img src = \"../img/medalsilver.png\" style = \"width: 16px;\">\r\n								2 место - Задорожний В. АТП-16-1/д\r\n							</li>\r\n							<li><img src = \"../img/medalbronze.png\" style = \"width: 16px;\">\r\n								3 место - Мигуля К. АТП-16-1/д\r\n							</li>\r\n						</ul>\r\n						<ul style = \"list-style-type: none\">\r\n							<li>Соенко М. КСК-17-1/д</li>\r\n							<li>Прикота В. КСК-17-1/д</li>\r\n							<li>Винцковский А. КС-16-1/д</li>\r\n							<li>Погребной А. КС-16-1/д</li>\r\n							<li>Кулешов И. КС-16-1/д</li>\r\n							<li>Сабуняк Р. КС-15-1/д</li>\r\n						</ul>\r\n						Победителям Олимпиады были вручены дипломы, участникам – сертификаты.\r\n					</div>\r\n					<div class = \"col-6 mb-3\">\r\n						<img src = \"https://lh3.googleusercontent.com/8fPxq7LC-XGJTqDvW-6Ja68FPffM-832Ur6X5m4hAf1e2_2ENxbmMPQVBjyLvuB0bIisTofcnJ5-484lcuuWzeCHh3RHrCxav1L38S_xLIjX_XYSlbjbRDhW8ZCES75ZodsHeIePjCRFulS6jJe_FTZ9Yima-03Hkkm5q0yb19TQJDerwF5JRUG8JonI6HzvD810YTzqo19RZhn780X-0gy5FUBJXFhIsNXIv_OQ_VSycMlWs8fjLtyZh8x9UxOxN92zznAxsocKrSq2ekB9OWWNIWHd3sWpLUPunVY_u7Vxfa4y9Xn67DJ-NNyGRuFzYhBhnlWZa85uT5sC1TrVM037MD_-s0GXo5oO2Ohlkegb7ypS04bnPK_4nZb_gfekLXfkxAWEAh6jmu5HagEI_DSL27OPjDLwCgXxxocHDv-4-SprNIUA4NhSFibSxyV1QpR9P1XpjCF6nyk7yNjJatY8ItGE5-UDa-yLDiUhi98aiR9E4EZu3h2gv5Bv-CBMNCaYqFDyDLbLVWh3y1pIoQZiWKJ1661eFx5WlrSD4P11KFfSaixCHfdOEj0t0mz89Kwug4OhMbv1JpsnpQaJlVIwPYRmJHJRStKwjKg=w1299-h974-no\" alt = \"\">\r\n					</div>\r\n				</div>\r\n			</li>\r\n			<li>\r\n				Среди студентов 1-3 курсов были проведены мероприятия: фотоконкурс «Я и моя специальность», а также\r\n			    конкурс рассказов «Программисты шутят».\r\n			</li>\r\n			<li>\r\n				Преподаватели комиссии провели круглый стол «Обсуждения тезисов, докладов и статей», в котором\r\n			    приняли участие преподаватели комиссий: экономических дисциплин – Шумская Л.А., гуманитарных и\r\n			    социально-экономический дисциплин – Михненко Р.Н., автоматизации – Стикина О.И.\r\n			</li>\r\n			<li>\r\n				Были освещены актуальные вопросы учебной и научно-методической деятельности педагогов в современных\r\n			    условиях, особенности преподавания информационных технологий и сетевых программных средств, и значение\r\n			    инновационных технологий в образовательном процессе в СПО.\r\n			</li>\r\n		</ol>');

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `ID` smallint(5) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`ID`, `name`, `description`, `image`) VALUES
(1, 'Состав цикловой комиссии', '0', 'https://lh3.googleusercontent.com/agZgZaKvJpAY3uIFS4Jr2nYMOrh88pexuv8qOiqDo_u7yLyanCZ8QsCLWFBxIw6u02lnZNnG8WVBwP7JMp42ArKCWCYk011uEKPR2uGt2M0ftSJLBPfZMUhVp4MApsrn6778nocFpQBlzAF7HgwM5LGtlwkJX6qnzStFF1uA3Q-uX8D214gsWYy7U2y7V6Dr3JPXkcrea2wRXrYiq33VXJ8-LOc4fxOA_QYxZ1Kd4PnzTYOCkRXLnPqBnb6YZlpwkr3MQGdomcYZ_5uSenfzLdfe68v2nvdYNFjSLjcOBh5C--OVN0_wCo8yZZeKv3tm19omNIP7uaZoNBgm-rLe6RVbFS4NT1dic4MX2w2DnKss5TRo14CIK3LaZGsVCCvusGn8IMugmBN08ybtYVvK0R1bqGpr0MwwtXCR69MS_pUJXCxVDKBqr_gjsDR8essrnUb-Ad90KfnBI2ncdem8OJdFEg9DyMDC0vFRVhhg1t77HkJa7gzaJZDJcrm-HEmn6rzY_xrW6F4vDo_d2iJZ66rYXjspWLUHUFL9bF6eq1J6yhAKfnR2s8AbEbKv8QC6Yb9sTIHSs7tYkJGdfudMVaCbi5IhwqbyRMuQDs0=w284-h285-no'),
(2, 'Методическая работа', '0', 'https://lh3.googleusercontent.com/fcuhWUmCQIP8_Aaiqj06zrTNdAC07TrCNhry4TtY96e3BsEcn8LINrfcwwZ0TUSnUp7SuMABkeoOhnC-90NRGOE_0866ZYN6o8_sHDRf5TH9RguVnukyl0MDudKr06nH8L54hATv_XeoT442vwFMy4KcWawf-WU-UWUOPXopBw47L4fHQ1NjpKv8uF3GMX0hb7g-xUMSE3IZhQp2SvtXjEFw6CW5Fws9T8m1NcIp5G_w0nSvvgAWOT0tc6PvcqsdygLaZyWEjOGjNJC_4kR70yoApPACujj3Rvl5Ef5Ia5sWLdxthKZiaofbjWMRrTt4kzUVgKDvLHpCT-MkmyupHBXiPN73-6S4H89qKrZ8TdXCgMllM4ro5Ty6RMztlzfYPN7E7tV2Axjz6rB2qp_A2eVrkC9XVYhZS1hoFpCSE3uYojK3c__nOIixbWencYMYKcF_06LZuU9MD4wAkLA6uxXBYXDNRmyflfZJjYwZRI4Oqh2sff3Iv79R9eGAS5LguUDx_VuTjGoaonBg6AK-bNI-3b4YyFMte-GzP1sGHKSClPLIM2sgakeUWbL6B94X-B4cprTLw59ODp6ks1AMnTlhY2SuQjsSdVLd7S8=s285-no'),
(3, 'Воспитательная работа', '0', 'https://lh3.googleusercontent.com/fcuhWUmCQIP8_Aaiqj06zrTNdAC07TrCNhry4TtY96e3BsEcn8LINrfcwwZ0TUSnUp7SuMABkeoOhnC-90NRGOE_0866ZYN6o8_sHDRf5TH9RguVnukyl0MDudKr06nH8L54hATv_XeoT442vwFMy4KcWawf-WU-UWUOPXopBw47L4fHQ1NjpKv8uF3GMX0hb7g-xUMSE3IZhQp2SvtXjEFw6CW5Fws9T8m1NcIp5G_w0nSvvgAWOT0tc6PvcqsdygLaZyWEjOGjNJC_4kR70yoApPACujj3Rvl5Ef5Ia5sWLdxthKZiaofbjWMRrTt4kzUVgKDvLHpCT-MkmyupHBXiPN73-6S4H89qKrZ8TdXCgMllM4ro5Ty6RMztlzfYPN7E7tV2Axjz6rB2qp_A2eVrkC9XVYhZS1hoFpCSE3uYojK3c__nOIixbWencYMYKcF_06LZuU9MD4wAkLA6uxXBYXDNRmyflfZJjYwZRI4Oqh2sff3Iv79R9eGAS5LguUDx_VuTjGoaonBg6AK-bNI-3b4YyFMte-GzP1sGHKSClPLIM2sgakeUWbL6B94X-B4cprTLw59ODp6ks1AMnTlhY2SuQjsSdVLd7S8=s285-no'),
(4, 'Дипломное проектирование', '0', 'https://lh3.googleusercontent.com/_uHoCFJPZ5XBoCSdjaQyMAMUdE5Uu-xd_1_0Anm_OjpbroC-FSUzqmkKSLksw65Fi8eWtaU9WYGogxgELZ68gAQ8W93g66bx8kncK_Lj5SWluUevZVXcylqp2j9qi6M1cwZlCZ8Hjqqmyj6g-h91walXYGl21tG4mcAj0HDWYUyYmx6M4Omt-_3PqPKcRCRfIzGJ4HTS2_XHaMr4xFsW-SnbJrQFcHvsnzlsll87OBp6_fl4uq-os2GNcauZcEKDjsdoeG3FMG9q8coLdwXbTbdxEm_9wsEpf96t3558c3kyMmWg-zA4o2RBiZJjI7vbjG0rGuvGMPl8YazQ0jC5ntgKP_RAej-C3aZwGzGMv9yRpWeiKIUOLJNUbrQh1MEVD-5c6OLil_Ow6CrQvsp6PywfqVBpGX-ltO9b5YHg2Vk0RsbBjP9EWG0q_i6K75BG9F_5NVA3RhpSiAGXLKZCoyJtLrLk3rU52MvMHR7IslttE7fM50CJF1GRfBsCjMRJ3tSa5h3Tc-m9madSvqu0VHRfjiQ3KlhIO8gnn36jhPdZlT0JZb6uHL1-xfzwzL-r34vTEca6v5KKecRKYKiwjap1lg-Cn5TagTc1mdc=s974-no'),
(5, 'Дисциплины', '0', 'https://lh3.googleusercontent.com/CQfqrTWk_e-B3RZPjbOP1yQVZrVfrsL0KZ74VywqIR7ljzzlFag0PRkaG6qBpF7brhPz-zP0vCvh5trS0nO0H8KyqzAQBrU1pzztqdeOmZaAer1VxueBNxjGAjlRKiKBUdc_vczOLRc-o2VfDzh_ymmlh0Kcyvbt8Foi5tJ2SSnsN11ESwGQjoqfqGhgS3mmD0XeWXsQ37fR9zFGHqPw1Lk_7pVWjptQ0l7RRtRoyD9Jy_UgW8FT4jMFi52H02_bOFBipfNBn1bljujpiADyzB-b9FwjM1A2syEWwtkCJbWco-rLDzcXG70AzKZI8dKzOjBJ00sAC-9m6t4APnn1PiEifAmKhYYvnK2JT7gADaE4FD7OAJUvZh4ysWYA3MwjJQ4aDRkIhsK87G42jImP8lT1CnMunzctHO12HXRT0fghCyXsPoSHtkc5yVx27jTmVRVz9nOOCN4M47vt6Je9bviRfVX5VWNeMNXaVICPzi6TlCqxufe-NSdJOne0ZMun0qKdd2uw5lrrGvDhgP4US61NJu73-ydNQf9js7e0MQoJtUv5gG6uaNec-uEKkhta1AYCjTCyRREahpnorqE9zZ8_kOi8Xbb38cKbprg=s974-no'),
(6, 'Специальности', '0', 'https://lh3.googleusercontent.com/CQfqrTWk_e-B3RZPjbOP1yQVZrVfrsL0KZ74VywqIR7ljzzlFag0PRkaG6qBpF7brhPz-zP0vCvh5trS0nO0H8KyqzAQBrU1pzztqdeOmZaAer1VxueBNxjGAjlRKiKBUdc_vczOLRc-o2VfDzh_ymmlh0Kcyvbt8Foi5tJ2SSnsN11ESwGQjoqfqGhgS3mmD0XeWXsQ37fR9zFGHqPw1Lk_7pVWjptQ0l7RRtRoyD9Jy_UgW8FT4jMFi52H02_bOFBipfNBn1bljujpiADyzB-b9FwjM1A2syEWwtkCJbWco-rLDzcXG70AzKZI8dKzOjBJ00sAC-9m6t4APnn1PiEifAmKhYYvnK2JT7gADaE4FD7OAJUvZh4ysWYA3MwjJQ4aDRkIhsK87G42jImP8lT1CnMunzctHO12HXRT0fghCyXsPoSHtkc5yVx27jTmVRVz9nOOCN4M47vt6Je9bviRfVX5VWNeMNXaVICPzi6TlCqxufe-NSdJOne0ZMun0qKdd2uw5lrrGvDhgP4US61NJu73-ydNQf9js7e0MQoJtUv5gG6uaNec-uEKkhta1AYCjTCyRREahpnorqE9zZ8_kOi8Xbb38cKbprg=s974-no'),
(7, 'Методические пособия', '0', 'https://lh3.googleusercontent.com/CQfqrTWk_e-B3RZPjbOP1yQVZrVfrsL0KZ74VywqIR7ljzzlFag0PRkaG6qBpF7brhPz-zP0vCvh5trS0nO0H8KyqzAQBrU1pzztqdeOmZaAer1VxueBNxjGAjlRKiKBUdc_vczOLRc-o2VfDzh_ymmlh0Kcyvbt8Foi5tJ2SSnsN11ESwGQjoqfqGhgS3mmD0XeWXsQ37fR9zFGHqPw1Lk_7pVWjptQ0l7RRtRoyD9Jy_UgW8FT4jMFi52H02_bOFBipfNBn1bljujpiADyzB-b9FwjM1A2syEWwtkCJbWco-rLDzcXG70AzKZI8dKzOjBJ00sAC-9m6t4APnn1PiEifAmKhYYvnK2JT7gADaE4FD7OAJUvZh4ysWYA3MwjJQ4aDRkIhsK87G42jImP8lT1CnMunzctHO12HXRT0fghCyXsPoSHtkc5yVx27jTmVRVz9nOOCN4M47vt6Je9bviRfVX5VWNeMNXaVICPzi6TlCqxufe-NSdJOne0ZMun0qKdd2uw5lrrGvDhgP4US61NJu73-ydNQf9js7e0MQoJtUv5gG6uaNec-uEKkhta1AYCjTCyRREahpnorqE9zZ8_kOi8Xbb38cKbprg=s974-no'),
(8, 'Кружки', '0', 'https://lh3.googleusercontent.com/CQfqrTWk_e-B3RZPjbOP1yQVZrVfrsL0KZ74VywqIR7ljzzlFag0PRkaG6qBpF7brhPz-zP0vCvh5trS0nO0H8KyqzAQBrU1pzztqdeOmZaAer1VxueBNxjGAjlRKiKBUdc_vczOLRc-o2VfDzh_ymmlh0Kcyvbt8Foi5tJ2SSnsN11ESwGQjoqfqGhgS3mmD0XeWXsQ37fR9zFGHqPw1Lk_7pVWjptQ0l7RRtRoyD9Jy_UgW8FT4jMFi52H02_bOFBipfNBn1bljujpiADyzB-b9FwjM1A2syEWwtkCJbWco-rLDzcXG70AzKZI8dKzOjBJ00sAC-9m6t4APnn1PiEifAmKhYYvnK2JT7gADaE4FD7OAJUvZh4ysWYA3MwjJQ4aDRkIhsK87G42jImP8lT1CnMunzctHO12HXRT0fghCyXsPoSHtkc5yVx27jTmVRVz9nOOCN4M47vt6Je9bviRfVX5VWNeMNXaVICPzi6TlCqxufe-NSdJOne0ZMun0qKdd2uw5lrrGvDhgP4US61NJu73-ydNQf9js7e0MQoJtUv5gG6uaNec-uEKkhta1AYCjTCyRREahpnorqE9zZ8_kOi8Xbb38cKbprg=s974-no'),
(9, 'Контакты', '0', 'https://lh3.googleusercontent.com/C2uZu7cK1HedFM5Tyl7fyptwSbDXNSu_KWmqyxihT_S-XVCuem1omn2wltmS8UCDBCz6kYiPZXO4DbFWLgFe7fEmzMXR4Z3vA0R0pYp7DvoiICadiHcXjrnhWzHL_8lUZuktelryV2xYFsEmcKiP8H0NAZZteNgKILd7wv4uaMkQvYR9GBAZHXEBmMRDscfZyV7zyuNqmjCEDJcL_rZKWHKZ97Mc8ASOAczkxTTnBFE9hfMXpG6ILA2lfiAiC_MvsXq4kFS4UEmdP3JHXaFl3AjGD-6ylnhlgWyizGOhHC8GPXTO0zKifFq_paYO3ATaQNB2etZGy-ax_wJQ5tBY4z04Yrz_p9MUVF2rG86OimK83Vx7U5JKe85Lg2M6Y89kaMIeVP3LSFQPWYx_989wRJIbi29YamwjZoqBdHMvzhC8_bTglDVMqTXNoaCYdfYNUsRWY8uDhoQEf1BWquCLH8nwcaMrAwAXy1Tbn9xg8gEV6ObT48eGR9SXHGTIOW5r9a221vbWc7ZBAnzinJxNnBZ1uLIMbEbDswB30yayhe35pKakhUgbiS0v0is80bwSgddqVnwg_oo9y3S8NfQQzI-O4_kuztqU8uEdpCM=s974-no');

-- --------------------------------------------------------

--
-- Структура таблицы `content`
--

CREATE TABLE `content` (
  `ID` int(11) NOT NULL,
  `publicationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `categoryID` text NOT NULL,
  `title` text NOT NULL,
  `summary` text NOT NULL,
  `photo` text NOT NULL,
  `articleID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `content`
--

INSERT INTO `content` (`ID`, `publicationDate`, `categoryID`, `title`, `summary`, `photo`, `articleID`) VALUES
(1, '2018-06-11 11:38:48', '1', 'Захлебина Людмила Евгеньевна', 'Председатель Цикловой комиссии. Преподаватель дисциплин профессионально учебного цикла, специалист высшей квалификационной категории.', 'https://lh3.googleusercontent.com/MJLr-rRR14pKVxVjQbOy78SKCVoyqfTN7PU0qqsdXZ_b0fLWLNUYdhYXXO6yDAued-0rExTOWcNNU2feG4kGOnphQ_Srf9XFIVSbn7Zn-qGO53mY7PSlrzgxRM9z4sen5bfBhpjlUKpVFE2DZKx051XTukSsrzEzgGJRbJFrIDH-ki3tJYQe-KjRskrAwkGc8sML8XUnnAmT-bdWHAY-kB_iVicUZxC6LbSS1nOz7l70aJMhv7NkNa6kEFAsRLuB_zDvJwDzfNAjrv4NguH9WiwYqrmd3lPEVTpy-WfXckMQ0xgX9zaCDF9N3AFDjuKbp-H1oMdjBLzFKErsm73OBSx2TYTNAv7-Az-bszlj__9azWmuS-3lXFCa0RPCMH6CMYyxQMxnct1ouZmaVylt_GX-mnZK06_uerhEK2HNLAUwLeo74xvaMkV3CWSngFcN8LGgFDnlUnwSelAGZsrIxH5BEdACgEry5o43LTc1z0FrIJRP8RYK55g_9A9BZtr-kqbyoF-7E0nsSbR5pmNdh8hjqNse-yuCXoY9oyzBrxev97TbArLzPn9c-EN-btIjDdqvAIc256eu8i1-pWHLrqscdmq3qYQjFbqBENs=w989-h868-no', 0),
(2, '2018-06-11 11:41:20', '1', 'Стельмашова Татьяна Викторовна  \r\n', 'Преподаватель дисциплин профессионально учебного цикла, специалист высшей квалификационной категории.\r\n', 'https://lh3.googleusercontent.com/8uPagnsfD5sj7PbwEYv1xyNvLnQJD5jcV9Zb-cdvxCuq-U5SzuKRSfVuvxwu9H55RYT-M19lGcKqcE997cpNNtmp2DL3gt9xqTzstT5SydcPUtrkebpJh62IRhYzK8xne4WXNXSm8IGNif65RCWCGKZR1GhpwCiPmARmo_bvk5pxc3bqBoa_1U9Q2IV3dwkdUWSlrn2mykarb98Q0yYiXlrf7nNEs6p67J3l_dN5YZ72nnNCPSrg5IaAcmPuon_Hh2eULt1rQdRTDvXMEmm4aHCgD76QXlpT2eCrB9CkadmYO3RCqLcBFMUSesP7LcpOXN1vXTY451fzFAj23fqihUwDS7qFDxn2RuHHB39oyfoyaKIVQVHrafFaGocgYDSH7WJ9Ye89Q9B6pMDTeuO98l6RbtiOhtZnB0KWBqFSrca7rU0ECW0ODgxQcoxGIPxbNVu7Hl1Vjr-J6aAxQWKnaMsgpoigPtIVXi9SuBc0ArUj9onGD0MTJ1EM5jL5d3L-qYcKO0T5mOoi9SqAnLrVihEfY_Py0R2rPTehE9-Cuw__jpmBMVtLvIh_617nSC9WBQf4UIaM6Sb9zyeIo-7M8FzvInAX2PF55fRw9dg=w748-h808-no', 0),
(3, '2018-06-11 11:42:12', '1', 'Опелендер Ирина Дмитриевна \r\n', 'Преподаватель дисциплин профессионально учебного цикла. Квалификационная категория - специалист.\r\n', 'https://lh3.googleusercontent.com/uc8PEFZEFs7qXfYCkBQmh9MRzDPPeXRJtsY8d9Tf-S_fvytwOkSuS_R_Xc7x6ElgEmo865yNqsr3ruztrIwxGRh92szNb0aTnFZ9fRSdBLzvkrqwIwHY1VCYLsp_jkY0iz_tdSJVSkZyendzlPosuCq6Pa9Tzy_uaFb5DGlGy9V9jgAUhsHcuLGPurOmOArbGIYdm9fBHi8rbyudi3luTXBxdtdjps8qhhbFoR5CplOIMOGEzzW-pk5FVD0bnqUNPH8TgPchEewCR75UwKPjy5J5UiYqf3TgxYaPMKB-G2C51RLGc-SyccWZAyUT6ZE8n31labGdPd5C_p8dzCM3gjqVAB9Tu33qORqZopMrX7mbDFZ_jL3itBDSKrjxGTnSa2bM7ldXMkTThPGRvCD4kNavawZgsZjiBNSg0aqKlkW_T0krutkcPx5c4pIIIC4Iph1WoB5lUH4NMsCzBdmadyg_cm53tUWM3AKfVuK4o-aRbb7hc77EVFmbUaC502y_ZQIavWboKkMneA0c-SFJ7jRkN1hCQSN6n4TPyIEISbKkEKVR94jh4aMRTAZ8XfAqTlSqLu4A-bR56lLZhuVHyd-u-PjnmMcUH_PPDt8=w731-h974-no', 0),
(4, '2018-06-11 11:42:46', '1', 'Покинтелица Ирина Александровна', 'Преподаватель дисциплин профессионально учебного цикла, специалист II квалификационной категории.', 'https://lh3.googleusercontent.com/7OwP63awfHQjpWO2lvnXNDK2StLpU32vOewgKoMOQkU0zjOPBkIcQilx-lK2pulAFuioc4dfni0LziyU6am5Fg5xuG3_rqO2ZveVAvDIXqgO8Kq6wdyyifczUTWHzMhCt7moloIjQhRreOaXbAhQrnkT9xBttHR4G5oTAFKMs9fIyVOdaAn41cXyI_izPmk-8H6Vwc7QQtO1GUPhjTJKCIcQXXtwK2SgtTxHiq-02i-lpLYGn9S3TwmMDHr4PMI6fe-AhiCnKtybxXaEci1Qc7ueV1lrfnwhgd2ndTakBvVAtsg3vdXMHHZRTEsCMyGUbfrG9cQp8DqGfx-mzazzqN0Vj5r_GKPA4V9hCF17OegqOVsYpoYa8Nd_hHOHVgmGV-r3TU1n1Apv08cTpzlkjnU92aW25EKOjMXf0beiNlvsv4CnIWvQhqsTe_-mWrqb_Z90XKs96AxaeMhCucUbOV3rG8bfXdHxR5qrlS4Mu3P5ZHkRvZ-cZck7fLYZzS685AbKUJsAUvJgclp67J09_GCB9BoXfX2yrWP25V7_Q34FAfy6yr6qtIgEw3BBkcEN3yagGRl5rL2qKP4ZEObzkkJBpB1wDgDJVoPShtI=w937-h974-no', 0),
(5, '2018-06-11 11:43:32', '1', 'Серебренников Сергей Александрович', 'Преподаватель дисциплин профессионально учебного цикла, специалист II квалификационной категории.', '0', 0),
(6, '2018-06-11 18:14:48', '2', 'План работы Цикловой комиссии «Компьютерных технологий» на 2017 - 2018 учебный год', '<iframe src = \"https://drive.google.com/file/d/1NllalUxllxszd7cT5y3SqZ94p0ntbqVT/preview\" style = \"height: 46rem; width: 100%;\"></iframe>', '0', 0),
(7, '2018-06-11 18:18:37', '3', 'Прошла неделя Цикловой комиссии', '<p> С 16 по 23 апреля 2018 года согласно плану работы состоялась неделя Цикловой комиссии компьютерных технологий. </p>', 'https://lh3.googleusercontent.com/P9XpGggpm8a81vbRzU2nwTEc2WrAkYqj6HTxj8nw6BpLuZQ-kX1UOfoYIh4OOVZrYJ4sT_D2SLU-PV60nPnD92iQ14Kr0sy_x2loxQ9_Frrl94TTXXbVFuUSDKXf4sZ-JCJzkg9RVnaHNpV9eBc-9mknnILx1pyfjI0rRI6hHXRQ9Idvui3GACTJks9pswVddSlj3e49XqERdJaEyjlE2EqfeJnaSKRPQPCwHPNKI3Y_SrJeGibZGGpgMSjWRlE_FAI-1gl5md2pPV5QLIGforELODcxz6CWSfiGQMwnzys1Wy9j9HTC4yHh93_PPgJgHcFaB527T7WpOPazxEi5qB3e0zD83N2a0Rw6wtmaXV9HUHGVKlp98kB_QIP7Z0hF8agJFjyxNTbtd3wiyfSuvIgpIfqxjltkjWhmbLVpU7TSv17m6dV23VNXrZ-Xc86MC0t1PReDAYYL_iyxrBTkaRO6Hr81ATt4oCkDE8tykZYEu8QI8lL-jdX5A8-8VmkLfGVFPBo2KQwJyq6l540FboD4vQfKx3h3xo_OyPEWuFs6oJtM-wRHf6HaAxvO5kl18l4xohv8NDueQY2z8e0oB8VBMeV3w4iqKux_xaQ=w1299-h975-no', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `messages`
--

CREATE TABLE `messages` (
  `ID` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `themes` varchar(255) NOT NULL,
  `email` varchar(50) NOT NULL,
  `message` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `messages`
--

INSERT INTO `messages` (`ID`, `name`, `themes`, `email`, `message`, `date`) VALUES
(4, 'name', 'themes', 'emailmail.ru', 'message', '2018-05-05 16:21:36'),
(5, 'ckkt', 'фыв', 'speces007757@gmail.com', 'asdawdasd', '2018-05-05 16:21:36'),
(6, 'ckkt', 'Инсталляция, настройка и сопровождение Web-сервера Linux', 'speces007757@gmail.com', 'Тест', '2018-05-05 16:21:36'),
(7, 'ckkt', 'Инсталляция, настройка и сопровождение Web-сервера Linux', 'speces007757@gmail.com', 'Тест', '2018-05-05 16:21:36'),
(8, 'ckkt', 'Инсталляция, настройка и сопровождение Web-сервера Linux', 'speces007757@gmail.com', 'Тест', '2018-05-05 16:21:36'),
(9, 'Interviews', 'фыв', 'nickitenkoegor@ya.ru', 'dawfsdgr', '2018-05-05 16:21:36'),
(10, 'Егор', 'Тест', 'test@mail.ru', 'test date', '2018-05-05 16:23:47'),
(11, 'Егор', 'Тест', 'test@mail.ru', 'Тест redirect', '2018-05-05 16:29:04'),
(12, 'Егор', 'Тест', 'test@mail.ru', 'Тест redirect', '2018-05-05 16:30:13'),
(13, 'Егор', 'Тест', 'test@mail.ru', 'asdf', '2018-05-05 16:30:57'),
(14, 'Егор', 'Тест', 'test@mail.ru', 'adwqfavgasdfawredasf', '2018-05-05 17:58:24'),
(15, 'Егор', 'Тест', 'mail@mail.ru', 'asdafawfasdaw', '2018-05-05 17:59:30'),
(16, 'Егор', 'Тест', 'mail@mail.ru', 'asdawfdadaw', '2018-05-05 18:00:37'),
(17, 'Егор', 'Тест', 'mail@mail.ru', 'фывфцвфцвы', '2018-05-05 18:01:25'),
(18, 'Имя', 'Тема', 'test@mail.ru', 'фвфцвфы', '2018-05-05 18:01:46'),
(19, 'фовафзшщоазфоы', 'фывфщвафршап', 'mail@mail.ru', 'фафаывпыпфуафыв', '2018-05-06 09:50:31');

-- --------------------------------------------------------

--
-- Структура таблицы `messagesArchive`
--

CREATE TABLE `messagesArchive` (
  `ID` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `themes` varchar(255) NOT NULL,
  `email` varchar(50) NOT NULL,
  `message` text NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `content`
--
ALTER TABLE `content`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `messagesArchive`
--
ALTER TABLE `messagesArchive`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `articles`
--
ALTER TABLE `articles`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `ID` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `content`
--
ALTER TABLE `content`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `messages`
--
ALTER TABLE `messages`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT для таблицы `messagesArchive`
--
ALTER TABLE `messagesArchive`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
