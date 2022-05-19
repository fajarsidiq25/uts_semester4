-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 19 Bulan Mei 2022 pada 06.32
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `admin_page`
--
CREATE DATABASE IF NOT EXISTS `admin_page` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `admin_page`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_admin`
--

CREATE TABLE `tb_admin` (
  `username` int(16) NOT NULL,
  `password` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
--
-- Database: `booking`
--
CREATE DATABASE IF NOT EXISTS `booking` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `booking`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pm_activity`
--

CREATE TABLE `pm_activity` (
  `id` int(11) NOT NULL,
  `lang` int(11) NOT NULL,
  `max_children` int(11) DEFAULT 1,
  `max_adults` int(11) DEFAULT 1,
  `max_people` int(11) DEFAULT NULL,
  `title` varchar(250) DEFAULT NULL,
  `subtitle` varchar(250) DEFAULT NULL,
  `alias` varchar(100) DEFAULT NULL,
  `descr` longtext DEFAULT NULL,
  `duration` float DEFAULT 0,
  `duration_unit` varchar(50) DEFAULT NULL,
  `price` double DEFAULT 0,
  `lat` double DEFAULT NULL,
  `lng` double DEFAULT NULL,
  `home` int(11) DEFAULT 0,
  `checked` int(11) DEFAULT 0,
  `rank` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pm_activity_file`
--

CREATE TABLE `pm_activity_file` (
  `id` int(11) NOT NULL,
  `lang` int(11) NOT NULL,
  `id_item` int(11) NOT NULL,
  `home` int(11) DEFAULT 0,
  `checked` int(11) DEFAULT 1,
  `rank` int(11) DEFAULT 0,
  `file` varchar(250) DEFAULT NULL,
  `label` varchar(250) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pm_activity_session`
--

CREATE TABLE `pm_activity_session` (
  `id` int(11) NOT NULL,
  `id_activity` int(11) NOT NULL,
  `days` varchar(20) DEFAULT NULL,
  `start_date` int(11) DEFAULT NULL,
  `end_date` int(11) DEFAULT NULL,
  `price` double DEFAULT 0,
  `price_child` double DEFAULT 0,
  `discount` double DEFAULT 0,
  `discount_type` varchar(10) DEFAULT NULL,
  `id_tax` int(11) DEFAULT NULL,
  `taxes` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pm_activity_session_hour`
--

CREATE TABLE `pm_activity_session_hour` (
  `id` int(11) NOT NULL,
  `id_activity_session` int(11) NOT NULL,
  `start_h` int(11) DEFAULT NULL,
  `start_m` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pm_article`
--

CREATE TABLE `pm_article` (
  `id` int(11) NOT NULL,
  `lang` int(11) NOT NULL,
  `title` varchar(250) DEFAULT NULL,
  `subtitle` varchar(250) DEFAULT NULL,
  `alias` varchar(100) DEFAULT NULL,
  `text` longtext DEFAULT NULL,
  `url` varchar(250) DEFAULT NULL,
  `tags` varchar(250) DEFAULT NULL,
  `id_page` int(11) DEFAULT NULL,
  `users` text DEFAULT NULL,
  `home` int(11) DEFAULT 0,
  `checked` int(11) DEFAULT 0,
  `rank` int(11) DEFAULT 0,
  `add_date` int(11) DEFAULT NULL,
  `edit_date` int(11) DEFAULT NULL,
  `publish_date` int(11) DEFAULT NULL,
  `unpublish_date` int(11) DEFAULT NULL,
  `comment` int(11) DEFAULT 0,
  `rating` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `pm_article`
--

INSERT INTO `pm_article` (`id`, `lang`, `title`, `subtitle`, `alias`, `text`, `url`, `tags`, `id_page`, `users`, `home`, `checked`, `rank`, `add_date`, `edit_date`, `publish_date`, `unpublish_date`, `comment`, `rating`) VALUES
(1, 1, 'Mon premier article', '', 'mon-premier-article', '', '', '', 5, '1', 1, 1, 1, 1539046500, 1539046500, NULL, NULL, 1, 0),
(1, 2, 'Dive into unknown waters!', '', 'scuba-diving', '<p>Hotelku merupakan hotel bintang lima yang memberikan fasilitas lengkap, pelayanan yang maksimal dan hunian yang akan membuat betah para pelanggan.</p>\r\n\r\n<p>Tempat yang strategis dan masih alami dekat dengan pegunungan dan pemandangan alam yang sempurna, membuat HotelKu semakin beda dengan Hotel lainnya.</p>\r\n', '', '', 5, '1', 1, 1, 1, 1539046500, 1539046500, NULL, NULL, 1, 0),
(1, 3, '', '', '', '', '', '', 5, '1', 1, 1, 1, 1539046500, 1539046500, NULL, NULL, 1, 0),
(4, 1, 'Première gallery', '', 'premiere-gallery', '', '', '', 7, '1', 0, 1, 4, 1539046500, 1539046500, NULL, NULL, 0, 0),
(4, 2, 'First gallery', '', 'first-gallery', '', '', '', 7, '1', 0, 1, 4, 1539046500, 1539046500, NULL, NULL, 0, 0),
(4, 3, 'First gallery', '', 'first-gallery', '', '', '', 7, '1', 0, 1, 4, 1539046500, 1539046500, NULL, NULL, 0, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pm_article_file`
--

CREATE TABLE `pm_article_file` (
  `id` int(11) NOT NULL,
  `lang` int(11) NOT NULL,
  `id_item` int(11) NOT NULL,
  `home` int(11) DEFAULT 0,
  `checked` int(11) DEFAULT 1,
  `rank` int(11) DEFAULT 0,
  `file` varchar(250) DEFAULT NULL,
  `label` varchar(250) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `pm_article_file`
--

INSERT INTO `pm_article_file` (`id`, `lang`, `id_item`, `home`, `checked`, `rank`, `file`, `label`, `type`) VALUES
(4, 1, 4, 0, 1, 4, 'sample4.jpg', '', 'image'),
(4, 2, 4, 0, 1, 4, 'sample4.jpg', '', 'image'),
(4, 3, 4, 0, 1, 4, 'sample4.jpg', '', 'image'),
(5, 1, 1, 0, 1, 5, 'diving.jpg', '', 'image'),
(5, 2, 1, 0, 1, 5, 'diving.jpg', '', 'image'),
(5, 3, 1, 0, 1, 5, 'diving.jpg', '', 'image');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pm_booking`
--

CREATE TABLE `pm_booking` (
  `id` int(11) NOT NULL,
  `add_date` int(11) DEFAULT NULL,
  `edit_date` int(11) DEFAULT NULL,
  `from_date` int(11) DEFAULT NULL,
  `to_date` int(11) DEFAULT NULL,
  `nights` int(11) NOT NULL DEFAULT 1,
  `adults` int(11) DEFAULT 1,
  `children` int(11) DEFAULT 1,
  `tourist_tax` float DEFAULT NULL,
  `discount` float DEFAULT NULL,
  `total` float DEFAULT NULL,
  `down_payment` float DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `company` varchar(50) DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `postcode` varchar(10) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `mobile` varchar(50) DEFAULT NULL,
  `country` varchar(100) NOT NULL,
  `comments` text DEFAULT NULL,
  `status` int(11) DEFAULT 1,
  `trans` varchar(50) DEFAULT NULL,
  `payment_date` int(11) DEFAULT NULL,
  `payment_method` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pm_booking_activity`
--

CREATE TABLE `pm_booking_activity` (
  `id` int(11) NOT NULL,
  `id_booking` int(11) NOT NULL,
  `id_activity` int(11) DEFAULT NULL,
  `title` varchar(250) DEFAULT NULL,
  `children` int(11) DEFAULT 0,
  `adults` int(11) DEFAULT 0,
  `duration` varchar(50) DEFAULT NULL,
  `amount` double DEFAULT 0,
  `date` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pm_booking_room`
--

CREATE TABLE `pm_booking_room` (
  `id` int(11) NOT NULL,
  `id_booking` int(11) NOT NULL,
  `id_room` int(11) DEFAULT NULL,
  `title` varchar(250) DEFAULT NULL,
  `num` varchar(10) DEFAULT NULL,
  `children` int(11) DEFAULT 0,
  `adults` int(11) DEFAULT 0,
  `amount` double DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pm_booking_service`
--

CREATE TABLE `pm_booking_service` (
  `id` int(11) NOT NULL,
  `id_booking` int(11) NOT NULL,
  `id_service` int(11) DEFAULT NULL,
  `title` varchar(250) DEFAULT NULL,
  `qty` int(11) DEFAULT 0,
  `amount` double DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pm_booking_tax`
--

CREATE TABLE `pm_booking_tax` (
  `id` int(11) NOT NULL,
  `id_booking` int(11) NOT NULL,
  `id_tax` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `amount` double DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pm_comment`
--

CREATE TABLE `pm_comment` (
  `id` int(11) NOT NULL,
  `item_type` varchar(30) DEFAULT NULL,
  `id_item` int(11) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `checked` int(11) DEFAULT 0,
  `add_date` int(11) DEFAULT NULL,
  `edit_date` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `msg` longtext DEFAULT NULL,
  `ip` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pm_country`
--

CREATE TABLE `pm_country` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `code` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `pm_country`
--

INSERT INTO `pm_country` (`id`, `name`, `code`) VALUES
(1, 'Afghanistan', 'AF'),
(2, 'Åland', 'AX'),
(3, 'Albania', 'AL'),
(4, 'Algeria', 'DZ'),
(5, 'American Samoa', 'AS'),
(6, 'Andorra', 'AD'),
(7, 'Angola', 'AO'),
(8, 'Anguilla', 'AI'),
(9, 'Antarctica', 'AQ'),
(10, 'Antigua and Barbuda', 'AG'),
(11, 'Argentina', 'AR'),
(12, 'Armenia', 'AM'),
(13, 'Aruba', 'AW'),
(14, 'Australia', 'AU'),
(15, 'Austria', 'AT'),
(16, 'Azerbaijan', 'AZ'),
(17, 'Bahamas', 'BS'),
(18, 'Bahrain', 'BH'),
(19, 'Bangladesh', 'BD'),
(20, 'Barbados', 'BB'),
(21, 'Belarus', 'BY'),
(22, 'Belgium', 'BE'),
(23, 'Belize', 'BZ'),
(24, 'Benin', 'BJ'),
(25, 'Bermuda', 'BM'),
(26, 'Bhutan', 'BT'),
(27, 'Bolivia', 'BO'),
(28, 'Bonaire', 'BQ'),
(29, 'Bosnia and Herzegovina', 'BA'),
(30, 'Botswana', 'BW'),
(31, 'Bouvet Island', 'BV'),
(32, 'Brazil', 'BR'),
(33, 'British Indian Ocean Territory', 'IO'),
(34, 'British Virgin Islands', 'VG'),
(35, 'Brunei', 'BN'),
(36, 'Bulgaria', 'BG'),
(37, 'Burkina Faso', 'BF'),
(38, 'Burundi', 'BI'),
(39, 'Cambodia', 'KH'),
(40, 'Cameroon', 'CM'),
(41, 'Canada', 'CA'),
(42, 'Cape Verde', 'CV'),
(43, 'Cayman Islands', 'KY'),
(44, 'Central African Republic', 'CF'),
(45, 'Chad', 'TD'),
(46, 'Chile', 'CL'),
(47, 'China', 'CN'),
(48, 'Christmas Island', 'CX'),
(49, 'Cocos [Keeling] Islands', 'CC'),
(50, 'Colombia', 'CO'),
(51, 'Comoros', 'KM'),
(52, 'Cook Islands', 'CK'),
(53, 'Costa Rica', 'CR'),
(54, 'Croatia', 'HR'),
(55, 'Cuba', 'CU'),
(56, 'Curacao', 'CW'),
(57, 'Cyprus', 'CY'),
(58, 'Czech Republic', 'CZ'),
(59, 'Democratic Republic of the Congo', 'CD'),
(60, 'Denmark', 'DK'),
(61, 'Djibouti', 'DJ'),
(62, 'Dominica', 'DM'),
(63, 'Dominican Republic', 'DO'),
(64, 'East Timor', 'TL'),
(65, 'Ecuador', 'EC'),
(66, 'Egypt', 'EG'),
(67, 'El Salvador', 'SV'),
(68, 'Equatorial Guinea', 'GQ'),
(69, 'Eritrea', 'ER'),
(70, 'Estonia', 'EE'),
(71, 'Ethiopia', 'ET'),
(72, 'Falkland Islands', 'FK'),
(73, 'Faroe Islands', 'FO'),
(74, 'Fiji', 'FJ'),
(75, 'Finland', 'FI'),
(76, 'France', 'FR'),
(77, 'French Guiana', 'GF'),
(78, 'French Polynesia', 'PF'),
(79, 'French Southern Territories', 'TF'),
(80, 'Gabon', 'GA'),
(81, 'Gambia', 'GM'),
(82, 'Georgia', 'GE'),
(83, 'Germany', 'DE'),
(84, 'Ghana', 'GH'),
(85, 'Gibraltar', 'GI'),
(86, 'Greece', 'GR'),
(87, 'Greenland', 'GL'),
(88, 'Grenada', 'GD'),
(89, 'Guadeloupe', 'GP'),
(90, 'Guam', 'GU'),
(91, 'Guatemala', 'GT'),
(92, 'Guernsey', 'GG'),
(93, 'Guinea', 'GN'),
(94, 'Guinea-Bissau', 'GW'),
(95, 'Guyana', 'GY'),
(96, 'Haiti', 'HT'),
(97, 'Heard Island and McDonald Islands', 'HM'),
(98, 'Honduras', 'HN'),
(99, 'Hong Kong', 'HK'),
(100, 'Hungary', 'HU'),
(101, 'Iceland', 'IS'),
(102, 'India', 'IN'),
(103, 'Indonesia', 'ID'),
(104, 'Iran', 'IR'),
(105, 'Iraq', 'IQ'),
(106, 'Ireland', 'IE'),
(107, 'Isle of Man', 'IM'),
(108, 'Israel', 'IL'),
(109, 'Italy', 'IT'),
(110, 'Ivory Coast', 'CI'),
(111, 'Jamaica', 'JM'),
(112, 'Japan', 'JP'),
(113, 'Jersey', 'JE'),
(114, 'Jordan', 'JO'),
(115, 'Kazakhstan', 'KZ'),
(116, 'Kenya', 'KE'),
(117, 'Kiribati', 'KI'),
(118, 'Kosovo', 'XK'),
(119, 'Kuwait', 'KW'),
(120, 'Kyrgyzstan', 'KG'),
(121, 'Laos', 'LA'),
(122, 'Latvia', 'LV'),
(123, 'Lebanon', 'LB'),
(124, 'Lesotho', 'LS'),
(125, 'Liberia', 'LR'),
(126, 'Libya', 'LY'),
(127, 'Liechtenstein', 'LI'),
(128, 'Lithuania', 'LT'),
(129, 'Luxembourg', 'LU'),
(130, 'Macao', 'MO'),
(131, 'Macedonia', 'MK'),
(132, 'Madagascar', 'MG'),
(133, 'Malawi', 'MW'),
(134, 'Malaysia', 'MY'),
(135, 'Maldives', 'MV'),
(136, 'Mali', 'ML'),
(137, 'Malta', 'MT'),
(138, 'Marshall Islands', 'MH'),
(139, 'Martinique', 'MQ'),
(140, 'Mauritania', 'MR'),
(141, 'Mauritius', 'MU'),
(142, 'Mayotte', 'YT'),
(143, 'Mexico', 'MX'),
(144, 'Micronesia', 'FM'),
(145, 'Moldova', 'MD'),
(146, 'Monaco', 'MC'),
(147, 'Mongolia', 'MN'),
(148, 'Montenegro', 'ME'),
(149, 'Montserrat', 'MS'),
(150, 'Morocco', 'MA'),
(151, 'Mozambique', 'MZ'),
(152, 'Myanmar [Burma]', 'MM'),
(153, 'Namibia', 'NA'),
(154, 'Nauru', 'NR'),
(155, 'Nepal', 'NP'),
(156, 'Netherlands', 'NL'),
(157, 'New Caledonia', 'NC'),
(158, 'New Zealand', 'NZ'),
(159, 'Nicaragua', 'NI'),
(160, 'Niger', 'NE'),
(161, 'Nigeria', 'NG'),
(162, 'Niue', 'NU'),
(163, 'Norfolk Island', 'NF'),
(164, 'North Korea', 'KP'),
(165, 'Northern Mariana Islands', 'MP'),
(166, 'Norway', 'NO'),
(167, 'Oman', 'OM'),
(168, 'Pakistan', 'PK'),
(169, 'Palau', 'PW'),
(170, 'Palestine', 'PS'),
(171, 'Panama', 'PA'),
(172, 'Papua New Guinea', 'PG'),
(173, 'Paraguay', 'PY'),
(174, 'Peru', 'PE'),
(175, 'Philippines', 'PH'),
(176, 'Pitcairn Islands', 'PN'),
(177, 'Poland', 'PL'),
(178, 'Portugal', 'PT'),
(179, 'Puerto Rico', 'PR'),
(180, 'Qatar', 'QA'),
(181, 'Republic of the Congo', 'CG'),
(182, 'Réunion', 'RE'),
(183, 'Romania', 'RO'),
(184, 'Russia', 'RU'),
(185, 'Rwanda', 'RW'),
(186, 'Saint Barthélemy', 'BL'),
(187, 'Saint Helena', 'SH'),
(188, 'Saint Kitts and Nevis', 'KN'),
(189, 'Saint Lucia', 'LC'),
(190, 'Saint Martin', 'MF'),
(191, 'Saint Pierre and Miquelon', 'PM'),
(192, 'Saint Vincent and the Grenadines', 'VC'),
(193, 'Samoa', 'WS'),
(194, 'San Marino', 'SM'),
(195, 'São Tomé and Príncipe', 'ST'),
(196, 'Saudi Arabia', 'SA'),
(197, 'Senegal', 'SN'),
(198, 'Serbia', 'RS'),
(199, 'Seychelles', 'SC'),
(200, 'Sierra Leone', 'SL'),
(201, 'Singapore', 'SG'),
(202, 'Sint Maarten', 'SX'),
(203, 'Slovakia', 'SK'),
(204, 'Slovenia', 'SI'),
(205, 'Solomon Islands', 'SB'),
(206, 'Somalia', 'SO'),
(207, 'South Africa', 'ZA'),
(208, 'South Georgia and the South Sandwich Islands', 'GS'),
(209, 'South Korea', 'KR'),
(210, 'South Sudan', 'SS'),
(211, 'Spain', 'ES'),
(212, 'Sri Lanka', 'LK'),
(213, 'Sudan', 'SD'),
(214, 'Suriname', 'SR'),
(215, 'Svalbard and Jan Mayen', 'SJ'),
(216, 'Swaziland', 'SZ'),
(217, 'Sweden', 'SE'),
(218, 'Switzerland', 'CH'),
(219, 'Syria', 'SY'),
(220, 'Taiwan', 'TW'),
(221, 'Tajikistan', 'TJ'),
(222, 'Tanzania', 'TZ'),
(223, 'Thailand', 'TH'),
(224, 'Togo', 'TG'),
(225, 'Tokelau', 'TK'),
(226, 'Tonga', 'TO'),
(227, 'Trinidad and Tobago', 'TT'),
(228, 'Tunisia', 'TN'),
(229, 'Turkey', 'TR'),
(230, 'Turkmenistan', 'TM'),
(231, 'Turks and Caicos Islands', 'TC'),
(232, 'Tuvalu', 'TV'),
(233, 'U.S. Minor Outlying Islands', 'UM'),
(234, 'U.S. Virgin Islands', 'VI'),
(235, 'Uganda', 'UG'),
(236, 'Ukraine', 'UA'),
(237, 'United Arab Emirates', 'AE'),
(238, 'United Kingdom', 'GB'),
(239, 'United States', 'US'),
(240, 'Uruguay', 'UY'),
(241, 'Uzbekistan', 'UZ'),
(242, 'Vanuatu', 'VU'),
(243, 'Vatican City', 'VA'),
(244, 'Venezuela', 'VE'),
(245, 'Vietnam', 'VN'),
(246, 'Wallis and Futuna', 'WF'),
(247, 'Western Sahara', 'EH'),
(248, 'Yemen', 'YE'),
(249, 'Zambia', 'ZM'),
(250, 'Zimbabwe', 'ZW');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pm_coupon`
--

CREATE TABLE `pm_coupon` (
  `id` int(11) NOT NULL,
  `title` varchar(250) DEFAULT NULL,
  `code` varchar(50) DEFAULT NULL,
  `discount` double DEFAULT 0,
  `discount_type` varchar(10) DEFAULT NULL,
  `rooms` text DEFAULT NULL,
  `checked` int(11) DEFAULT 0,
  `publish_date` int(11) DEFAULT NULL,
  `unpublish_date` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pm_currency`
--

CREATE TABLE `pm_currency` (
  `id` int(11) NOT NULL,
  `code` varchar(5) DEFAULT NULL,
  `sign` varchar(5) DEFAULT NULL,
  `main` int(11) DEFAULT 0,
  `rank` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `pm_currency`
--

INSERT INTO `pm_currency` (`id`, `code`, `sign`, `main`, `rank`) VALUES
(1, 'USD', '$', 1, 1),
(2, 'EUR', '€', 0, 2),
(3, 'GBP', '£', 0, 3),
(4, 'INR', '₹', 0, 4),
(5, 'AUD', 'A$', 0, 5),
(6, 'CAD', 'C$', 0, 6),
(7, 'CNY', '¥', 0, 7),
(8, 'TRY', '₺', 0, 8);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pm_email_content`
--

CREATE TABLE `pm_email_content` (
  `id` int(11) NOT NULL,
  `lang` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `subject` varchar(250) DEFAULT NULL,
  `content` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `pm_email_content`
--

INSERT INTO `pm_email_content` (`id`, `lang`, `name`, `subject`, `content`) VALUES
(1, 1, 'CONTACT', 'Contact', '<b>Nom:</b> {name}\r\n<b>Adresse:</b> {address}\r\n<b>Téléphone:</b> {phone}\r\n<b>E-mail:</b> {email}\r\n<b>Message:</b>\r\n{msg}'),
(1, 2, 'CONTACT', 'Contact', '<b>Name:</b> {name}<br>\r\n<b>Address:</b> {address}<br>\r\n<b>Phone:</b> {phone}<br>\r\n<b>E-mail:</b> {email}<br>\r\n<b>Message:</b><br>\r\n{msg}'),
(1, 3, 'CONTACT', 'Contact', '<b>Name:</b> {name}\r\n<b>Address:</b> {address}\r\n<b>Phone:</b> {phone}\r\n<b>E-mail:</b> {email}\r\n<b>Message:</b>\r\n{msg}'),
(2, 1, 'BOOKING_REQUEST', 'Demande de réservation', '<p><b>Adresse de facturation</b><br />\r\n{firstname} {lastname}<br />\r\n{address}<br />\r\n{postcode} {city}<br />\r\nSociété : {company}<br />\r\nTéléphone : {phone}<br />\r\nMobile : {mobile}<br />\r\nEmail : {email}</p>\r\n\r\n<p><strong>Détails de la réservation</strong><br />\r\nArrivée : <b>{Check_in}</b><br />\r\nDépart : <b>{Check_out}</b><br />\r\n<b>{num_nights}</b> nuit(s)<br />\r\n<b>{num_guests}</b> personne(s) - Adulte(s) : <b>{num_adults}</b> / Enfant(s) : <b>{num_children}</b></p>\r\n\r\n<p><b>Chambres</b></p>\r\n\r\n<p>{rooms}</p>\r\n\r\n<p><b>Services supplémentaires</b></p>\r\n\r\n<p>{extra_services}</p>\r\n\r\n<p><b>Activités</b></p>\r\n\r\n<p>{activities}</p>\r\n\r\n<p><b>Commentaires</b><br />\r\n{comments}</p>\r\n'),
(2, 2, 'BOOKING_REQUEST', 'Booking request', '<p><b>Billing address</b><br />\r\n{firstname} {lastname}<br />\r\n{address}<br />\r\n{postcode} {city}<br />\r\nCompany: {company}<br />\r\nPhone: {phone}<br />\r\nMobile: {mobile}<br />\r\nEmail: {email}</p>\r\n\r\n<p><strong>Booking details</strong><br />\r\nCheck in <b>{Check_in}</b><br />\r\nCheck out <b>{Check_out}</b><br />\r\n<b>{num_nights}</b> nights<br />\r\n<b>{num_guests}</b> persons - Adults: <b>{num_adults}</b> / Children: <b>{num_children}</b></p>\r\n\r\n<p><strong>Rooms</strong></p>\r\n\r\n<p>{rooms}</p>\r\n\r\n<p><b>Extra services</b></p>\r\n\r\n<p>{extra_services}</p>\r\n\r\n<p><b>Activities</b></p>\r\n\r\n<p>{activities}</p>\r\n\r\n<p><b>Comments</b><br />\r\n{comments}</p>\r\n'),
(2, 3, 'BOOKING_REQUEST', 'Booking request', '<p><b>Billing address</b><br />\r\n{firstname} {lastname}<br />\r\n{address}<br />\r\n{postcode} {city}<br />\r\nCompany: {company}<br />\r\nPhone: {phone}<br />\r\nMobile: {mobile}<br />\r\nEmail: {email}</p>\r\n\r\n<p><strong>Booking details</strong><br />\r\nCheck in <b>{Check_in}</b><br />\r\nCheck out <b>{Check_out}</b><br />\r\n<b>{num_nights}</b> nights<br />\r\n<b>{num_guests}</b> persons - Adults: <b>{num_adults}</b> / Children: <b>{num_children}</b></p>\r\n\r\n<p><strong>Rooms</strong></p>\r\n\r\n<p>{rooms}</p>\r\n\r\n<p><b>Extra services</b></p>\r\n\r\n<p>{extra_services}</p>\r\n\r\n<p><b>Activities</b></p>\r\n\r\n<p>{activities}</p>\r\n\r\n<p><b>Comments</b><br />\r\n{comments}</p>\r\n'),
(3, 1, 'BOOKING_CONFIRMATION', 'Confirmation de réservation', '<p><b>Adresse de facturation</b><br />\r\n{firstname} {lastname}<br />\r\n{address}<br />\r\n{postcode} {city}<br />\r\nSociété : {company}<br />\r\nTéléphone : {phone}<br />\r\nMobile : {mobile}<br />\r\nEmail : {email}</p>\r\n\r\n<p><strong>Détails de la réservation</strong><br />\r\nArrivée : <b>{Check_in}</b><br />\r\nDépart : <b>{Check_out}</b><br />\r\n<b>{num_nights}</b> nuit(s)<br />\r\n<b>{num_guests}</b> personne(s) - Adulte(s) : <b>{num_adults}</b> / Enfant(s) : <b>{num_children}</b></p>\r\n\r\n<p><b>Chambres</b></p>\r\n\r\n<p>{rooms}</p>\r\n\r\n<p><b>Services supplémentaires</b></p>\r\n\r\n<p>{extra_services}</p>\r\n\r\n<p><b>Activités</b></p>\r\n\r\n<p>{activities}</p>\r\n\r\n<p>Taxe de séjour : {tourist_tax}<br />\r\nRéduction: {discount}<br />\r\n{taxes}<br />\r\nTotal : <strong>{total} TTC</strong></p>\r\n\r\n<p>Acompte : <strong>{down_payment} TTC</strong></p>\r\n\r\n<p><b>Commentaires</b><br />\r\n{comments}</p>\r\n\r\n<p>{payment_notice}</p>\r\n'),
(3, 2, 'BOOKING_CONFIRMATION', 'Booking confirmation', '<p><b>Billing address</b><br />\r\n{firstname} {lastname}<br />\r\n{address}<br />\r\n{postcode} {city}<br />\r\nCompany: {company}<br />\r\nPhone: {phone}<br />\r\nMobile: {mobile}<br />\r\nEmail: {email}</p>\r\n\r\n<p><strong>Booking details</strong><br />\r\nCheck in <b>{Check_in}</b><br />\r\nCheck out <b>{Check_out}</b><br />\r\n<b>{num_nights}</b> nights<br />\r\n<b>{num_guests}</b> persons - Adults: <b>{num_adults}</b> / Children: <b>{num_children}</b></p>\r\n\r\n<p><strong>Rooms</strong></p>\r\n\r\n<p>{rooms}</p>\r\n\r\n<p><b>Extra services</b></p>\r\n\r\n<p>{extra_services}</p>\r\n\r\n<p><b>Activities</b></p>\r\n\r\n<p>{activities}</p>\r\n\r\n<p>Tourist tax: {tourist_tax}<br />\r\nDiscount: {discount}<br />\r\n{taxes}<br />\r\nTotal: <strong>{total} incl. VAT</strong></p>\r\n\r\n<p>Down payment: <strong>{down_payment} incl. VAT</strong></p>\r\n\r\n<p><b>Comments</b><br />\r\n{comments}</p>\r\n\r\n<p>{payment_notice}</p>\r\n'),
(3, 3, 'BOOKING_CONFIRMATION', 'Booking confirmation', '<p><b>Billing address</b><br />\r\n{firstname} {lastname}<br />\r\n{address}<br />\r\n{postcode} {city}<br />\r\nCompany: {company}<br />\r\nPhone: {phone}<br />\r\nMobile: {mobile}<br />\r\nEmail: {email}</p>\r\n\r\n<p><strong>Booking details</strong><br />\r\nCheck in <b>{Check_in}</b><br />\r\nCheck out <b>{Check_out}</b><br />\r\n<b>{num_nights}</b> nights<br />\r\n<b>{num_guests}</b> persons - Adults: <b>{num_adults}</b> / Children: <b>{num_children}</b></p>\r\n\r\n<p><strong>Rooms</strong></p>\r\n\r\n<p>{rooms}</p>\r\n\r\n<p><b>Extra services</b></p>\r\n\r\n<p>{extra_services}</p>\r\n\r\n<p><b>Activities</b></p>\r\n\r\n<p>{activities}</p>\r\n\r\n<p>Tourist tax: {tourist_tax}<br />\r\nDiscount: {discount}<br />\r\n{taxes}<br />\r\nTotal: <strong>{total} incl. VAT</strong></p>\r\n\r\n<p>Down payment: <strong>{down_payment} incl. VAT</strong></p>\r\n\r\n<p><b>Comments</b><br />\r\n{comments}</p>\r\n\r\n<p>{payment_notice}</p>\r\n');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pm_facility`
--

CREATE TABLE `pm_facility` (
  `id` int(11) NOT NULL,
  `lang` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `rank` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `pm_facility`
--

INSERT INTO `pm_facility` (`id`, `lang`, `name`, `rank`) VALUES
(1, 1, 'Climatisation', 1),
(1, 2, 'Air conditioning', 1),
(2, 1, 'Lit bébé', 2),
(2, 2, 'Baby cot', 2),
(3, 1, 'Balcon', 3),
(3, 2, 'Balcony', 3),
(4, 1, 'Barbecue', 4),
(4, 2, 'Barbecue', 4),
(5, 1, 'Salle de bain', 5),
(5, 2, 'Bathroom', 5),
(6, 1, 'Cafetière', 6),
(6, 2, 'Coffeemaker', 6),
(7, 1, 'Plaque de cuisson', 7),
(7, 2, 'Cooktop', 7),
(8, 1, 'Bureau', 8),
(8, 2, 'Desk', 8),
(9, 1, 'Lave vaisselle', 9),
(9, 2, 'Dishwasher', 9),
(10, 1, 'Ventilateur', 10),
(10, 2, 'Fan', 10),
(11, 1, 'Parking gratuit', 11),
(11, 2, 'Free parking', 11),
(12, 1, 'Réfrigérateur', 12),
(12, 2, 'Fridge', 12),
(13, 1, 'Sèche-cheveux', 13),
(13, 2, 'Hairdryer', 13),
(14, 1, 'Internet', 14),
(14, 2, 'Internet', 14),
(15, 1, 'Fer à repasser', 15),
(15, 2, 'Iron', 15),
(16, 1, 'Micro-ondes', 16),
(16, 2, 'Microwave', 16),
(17, 1, 'Mini-bar', 17),
(17, 2, 'Mini-bar', 17),
(18, 1, 'Non-fumeurs', 18),
(18, 2, 'Non-smoking', 18),
(19, 1, 'Parking payant', 19),
(19, 2, 'Paid parking', 19),
(20, 1, 'Animaux acceptés', 20),
(20, 2, 'Pets allowed', 20),
(21, 1, 'Animaux interdits', 21),
(21, 2, 'Pets not allowed', 21),
(22, 1, 'Radio', 22),
(22, 2, 'Radio', 22),
(23, 1, 'Coffre-fort', 23),
(23, 2, 'Safe', 23),
(24, 1, 'Chaines satellite', 24),
(24, 2, 'Satellite chanels', 24),
(25, 1, 'Salle d\'eau', 25),
(25, 2, 'Shower-room', 25),
(26, 1, 'Coin salon', 26),
(26, 2, 'Small lounge', 26),
(27, 1, 'Telephone', 27),
(27, 2, 'Telephone', 27),
(28, 1, 'Téléviseur', 28),
(28, 2, 'Television', 28),
(29, 1, 'Terrasse', 29),
(29, 2, 'Terrasse', 29),
(30, 1, 'Machine à laver', 30),
(30, 2, 'Washing machine', 30),
(31, 1, 'Accès handicapés', 31),
(31, 2, 'Wheelchair accessible', 31),
(32, 1, 'Wi-Fi', 31),
(32, 2, 'WiFi', 31),
(33, 1, 'Chaine hifi', 32),
(33, 2, 'Hi-fi system', 32),
(34, 1, 'Lecteur DVD', 33),
(34, 2, 'DVD player', 33),
(35, 1, 'Ascenceur', 34),
(35, 2, 'Elevator', 34),
(36, 1, 'Coin salon', 35),
(36, 2, 'Lounge', 35),
(37, 1, 'Restaurant', 36),
(37, 2, 'Restaurant', 36),
(38, 1, 'Service de chambre', 37),
(38, 2, 'Room service', 37),
(39, 1, 'Vestiaire', 38),
(39, 2, 'Cloakroom', 38);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pm_facility_file`
--

CREATE TABLE `pm_facility_file` (
  `id` int(11) NOT NULL,
  `lang` int(11) NOT NULL,
  `id_item` int(11) NOT NULL,
  `home` int(11) DEFAULT 0,
  `checked` int(11) DEFAULT 1,
  `rank` int(11) DEFAULT 0,
  `file` varchar(250) DEFAULT NULL,
  `label` varchar(250) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `pm_facility_file`
--

INSERT INTO `pm_facility_file` (`id`, `lang`, `id_item`, `home`, `checked`, `rank`, `file`, `label`, `type`) VALUES
(1, 2, 31, 0, 1, 1, 'wheelchair.png', '', 'image'),
(2, 2, 20, 0, 1, 2, 'pet-allowed.png', '', 'image'),
(3, 2, 21, 0, 1, 3, 'pet-not-allowed.png', '', 'image'),
(4, 2, 3, 0, 1, 4, 'balcony.png', '', 'image'),
(5, 2, 4, 0, 1, 5, 'barbecue.png', '', 'image'),
(6, 2, 8, 0, 1, 6, 'desk.png', '', 'image'),
(7, 2, 6, 0, 1, 7, 'coffee.png', '', 'image'),
(8, 2, 24, 0, 1, 8, 'satellite.png', '', 'image'),
(9, 2, 1, 0, 1, 9, 'air-conditioning.png', '', 'image'),
(10, 2, 23, 0, 1, 10, 'safe.png', '', 'image'),
(11, 2, 26, 0, 1, 11, 'lounge.png', '', 'image'),
(12, 2, 15, 0, 1, 12, 'iron.png', '', 'image'),
(13, 2, 14, 0, 1, 13, 'adsl.png', '', 'image'),
(14, 2, 9, 0, 1, 14, 'dishwasher.png', '', 'image'),
(15, 2, 2, 0, 1, 15, 'baby-cot.png', '', 'image'),
(16, 2, 30, 0, 1, 16, 'washing-machine.png', '', 'image'),
(17, 2, 16, 0, 1, 17, 'microwaves.png', '', 'image'),
(18, 2, 17, 0, 1, 18, 'mini-bar.png', '', 'image'),
(19, 2, 18, 0, 1, 19, 'non-smoking.png', '', 'image'),
(20, 2, 11, 0, 1, 20, 'free-parking.png', '', 'image'),
(21, 2, 19, 0, 1, 21, 'paid-parking.png', '', 'image'),
(22, 2, 7, 0, 1, 22, 'cooktop.png', '', 'image'),
(23, 2, 22, 0, 1, 23, 'radio.png', '', 'image'),
(24, 2, 12, 0, 1, 24, 'fridge.png', '', 'image'),
(25, 2, 25, 0, 1, 25, 'shower.png', '', 'image'),
(26, 2, 5, 0, 1, 26, 'bath.png', '', 'image'),
(27, 2, 13, 0, 1, 27, 'hairdryer.png', '', 'image'),
(28, 2, 27, 0, 1, 28, 'phone.png', '', 'image'),
(29, 2, 28, 0, 1, 29, 'tv.png', '', 'image'),
(30, 2, 29, 0, 1, 30, 'terrasse.png', '', 'image'),
(31, 2, 10, 0, 1, 31, 'fan.png', '', 'image'),
(32, 2, 32, 0, 1, 32, 'wifi.png', '', 'image'),
(33, 2, 33, 0, 1, 33, 'hifi.png', '', 'image'),
(34, 2, 34, 0, 1, 34, 'dvd.png', '', 'image'),
(35, 2, 33, 0, 1, 33, 'elevator.png', '', 'image'),
(36, 2, 33, 0, 1, 33, 'lounge.png', '', 'image'),
(37, 2, 33, 0, 1, 33, 'restaurant.png', '', 'image'),
(38, 2, 33, 0, 1, 33, 'room-service.png', '', 'image'),
(39, 2, 33, 0, 1, 33, 'cloakroom.png', '', 'image');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pm_lang`
--

CREATE TABLE `pm_lang` (
  `id` int(11) NOT NULL,
  `title` varchar(20) DEFAULT NULL,
  `locale` varchar(20) DEFAULT NULL,
  `main` int(11) DEFAULT 0,
  `checked` int(11) DEFAULT 0,
  `rank` int(11) DEFAULT 0,
  `tag` varchar(20) DEFAULT NULL,
  `rtl` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `pm_lang`
--

INSERT INTO `pm_lang` (`id`, `title`, `locale`, `main`, `checked`, `rank`, `tag`, `rtl`) VALUES
(1, 'Français', 'fr_FR', 0, 1, 2, 'fr', 0),
(2, 'English', 'en_GB', 1, 1, 1, 'en', 0),
(3, 'عربي', 'ar_MA', 0, 1, 3, 'ar', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pm_lang_file`
--

CREATE TABLE `pm_lang_file` (
  `id` int(11) NOT NULL,
  `id_item` int(11) NOT NULL,
  `home` int(11) DEFAULT 0,
  `checked` int(11) DEFAULT 1,
  `rank` int(11) DEFAULT 0,
  `file` varchar(250) DEFAULT NULL,
  `label` varchar(250) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `pm_lang_file`
--

INSERT INTO `pm_lang_file` (`id`, `id_item`, `home`, `checked`, `rank`, `file`, `label`, `type`) VALUES
(1, 1, 0, 1, 2, 'fr.png', '', 'image'),
(2, 2, 0, 1, 1, 'gb.png', '', 'image'),
(3, 3, 0, 1, 3, 'ar.png', '', 'image');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pm_location`
--

CREATE TABLE `pm_location` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `lat` double DEFAULT NULL,
  `lng` double DEFAULT NULL,
  `checked` int(11) DEFAULT 0,
  `pages` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `pm_location`
--

INSERT INTO `pm_location` (`id`, `name`, `address`, `lat`, `lng`, `checked`, `pages`) VALUES
(1, 'Big Ben', 'London SW1A 0AA', 51.500729, -0.124625, 1, '2');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pm_media`
--

CREATE TABLE `pm_media` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pm_media_file`
--

CREATE TABLE `pm_media_file` (
  `id` int(11) NOT NULL,
  `id_item` int(11) NOT NULL,
  `home` int(11) DEFAULT 0,
  `checked` int(11) DEFAULT 1,
  `rank` int(11) DEFAULT 0,
  `file` varchar(250) DEFAULT NULL,
  `label` varchar(250) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pm_menu`
--

CREATE TABLE `pm_menu` (
  `id` int(11) NOT NULL,
  `lang` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `title` varchar(250) DEFAULT NULL,
  `id_parent` int(11) DEFAULT NULL,
  `item_type` varchar(30) DEFAULT NULL,
  `id_item` int(11) DEFAULT NULL,
  `url` text DEFAULT NULL,
  `main` int(11) DEFAULT 1,
  `footer` int(11) DEFAULT 0,
  `checked` int(11) DEFAULT 0,
  `rank` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `pm_menu`
--

INSERT INTO `pm_menu` (`id`, `lang`, `name`, `title`, `id_parent`, `item_type`, `id_item`, `url`, `main`, `footer`, `checked`, `rank`) VALUES
(1, 1, 'Accueil', 'Hotelku Resort, Hotel de luxe', NULL, 'page', 1, NULL, 1, 0, 1, 1),
(1, 2, 'Home', 'Hotelku Resort, Luxury Hotel', NULL, 'page', 1, NULL, 1, 0, 1, 1),
(1, 3, 'ترحيب', 'هو سقطت الساحلية ذات, أن.', NULL, 'page', 1, NULL, 1, 0, 1, 1),
(2, 1, 'Contact', 'Contact', NULL, 'page', 2, NULL, 1, 1, 1, 8),
(2, 2, 'Contact', 'Contact', NULL, 'page', 2, NULL, 1, 1, 1, 8),
(2, 3, 'جهة الاتصال', 'جهة الاتصال', NULL, 'page', 2, NULL, 1, 1, 1, 8),
(3, 1, 'Mentions légales', 'Mentions légales', NULL, 'page', 3, NULL, 0, 1, 1, 9),
(3, 2, 'Legal notices', 'Legal notices', NULL, 'page', 3, NULL, 0, 1, 1, 9),
(3, 3, 'يذكر القانونية', 'يذكر القانونية', NULL, 'page', 3, NULL, 0, 1, 1, 9),
(4, 1, 'Plan du site', 'Plan du site', NULL, 'page', 4, NULL, 0, 1, 1, 10),
(4, 2, 'Sitemap', 'Sitemap', NULL, 'page', 4, NULL, 0, 1, 1, 10),
(4, 3, 'خريطة الموقع', 'خريطة الموقع', NULL, 'page', 4, NULL, 0, 1, 1, 10),
(5, 1, 'Hôtel', 'Hôtel', NULL, 'page', 5, NULL, 1, 0, 1, 2),
(5, 2, 'Hotel', 'Hotel', NULL, 'page', 5, NULL, 1, 0, 1, 2),
(5, 3, 'فندق', 'فندق', NULL, 'page', 5, NULL, 1, 0, 1, 2),
(7, 1, 'Galerie', 'Galerie', NULL, 'page', 7, NULL, 1, 0, 1, 4),
(7, 2, 'Gallery', 'Gallery', NULL, 'page', 7, NULL, 1, 0, 1, 4),
(7, 3, 'معرض الصور', 'معرض الصور', NULL, 'page', 7, NULL, 1, 0, 1, 4),
(9, 1, 'Chambres', 'Chambres', NULL, 'page', 9, NULL, 1, 0, 1, 3),
(9, 2, 'Rooms', 'Rooms', NULL, 'page', 9, NULL, 1, 0, 1, 3),
(9, 3, 'الغرف', 'الغرف', NULL, 'page', 9, NULL, 1, 0, 1, 3),
(10, 1, 'Réserver', 'Réserver', NULL, 'page', 10, NULL, 1, 0, 1, 5),
(10, 2, 'Booking', 'Booking', NULL, 'page', 10, NULL, 1, 0, 1, 5),
(10, 3, 'الحجز', 'الحجز', NULL, 'page', 10, NULL, 1, 0, 1, 5),
(16, 1, 'Activités', 'Activités', NULL, 'page', 16, NULL, 1, 0, 1, 4),
(16, 2, 'Activities', 'Activities', NULL, 'page', 16, NULL, 1, 0, 1, 4),
(16, 3, 'Activities', 'Activities', NULL, 'page', 16, NULL, 1, 0, 1, 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pm_message`
--

CREATE TABLE `pm_message` (
  `id` int(11) NOT NULL,
  `add_date` int(11) DEFAULT NULL,
  `edit_date` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `subject` varchar(250) DEFAULT NULL,
  `msg` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pm_package`
--

CREATE TABLE `pm_package` (
  `id` int(11) NOT NULL,
  `users` text DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `days` text DEFAULT NULL,
  `min_nights` int(11) DEFAULT NULL,
  `max_nights` int(11) DEFAULT NULL,
  `day_start` int(11) DEFAULT NULL,
  `day_end` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `pm_package`
--

INSERT INTO `pm_package` (`id`, `users`, `name`, `days`, `min_nights`, `max_nights`, `day_start`, `day_end`) VALUES
(1, '1', 'Week-end', '5,6,7', 0, 0, NULL, NULL),
(2, '1', 'Night', '1,2,3,4,5,6,7', 0, 0, NULL, NULL),
(3, '1', 'Mid-week', '1,2,3,4,5', 3, 4, NULL, NULL),
(4, '1', '2 nights', '1,2,3,4', 2, 2, NULL, NULL),
(5, '1', 'Week', '1,2,3,4,5,6,7', 7, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pm_page`
--

CREATE TABLE `pm_page` (
  `id` int(11) NOT NULL,
  `lang` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `title` varchar(250) DEFAULT NULL,
  `subtitle` varchar(250) DEFAULT NULL,
  `title_tag` varchar(250) DEFAULT NULL,
  `alias` varchar(100) DEFAULT NULL,
  `descr` longtext DEFAULT NULL,
  `robots` varchar(20) DEFAULT NULL,
  `keywords` varchar(250) DEFAULT NULL,
  `intro` longtext DEFAULT NULL,
  `text` longtext DEFAULT NULL,
  `id_parent` int(11) DEFAULT NULL,
  `page_model` varchar(50) DEFAULT NULL,
  `article_model` varchar(50) DEFAULT NULL,
  `home` int(11) DEFAULT 0,
  `checked` int(11) DEFAULT 0,
  `rank` int(11) DEFAULT 0,
  `add_date` int(11) DEFAULT NULL,
  `edit_date` int(11) DEFAULT NULL,
  `comment` int(11) DEFAULT 0,
  `rating` int(11) DEFAULT 0,
  `system` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `pm_page`
--

INSERT INTO `pm_page` (`id`, `lang`, `name`, `title`, `subtitle`, `title_tag`, `alias`, `descr`, `robots`, `keywords`, `intro`, `text`, `id_parent`, `page_model`, `article_model`, `home`, `checked`, `rank`, `add_date`, `edit_date`, `comment`, `rating`, `system`) VALUES
(1, 1, 'Accueil', 'Lorem ipsum dolor sit amet', 'Consectetur adipiscing elit', 'Accueil', '', '', 'index,follow', '', '', '', NULL, 'home', '', 1, 1, 1, 1539046500, 1539046500, 0, 0, 0),
(1, 2, 'Home', 'HotelKu Resort, Luxury Hotel', '', 'HotelKu Resort, web software to create and manage hotels websites', '', '', 'index,follow', '', '', '<blockquote class=\"text-center\">\r\n<p>A man travels the world over in search of what he needs and returns home to find it.</p>\r\n</blockquote>\r\n\r\n<p class=\"text-muted\" style=\"text-align: center;\">- George A. Moore -</p>\r\n', NULL, 'home', '', 1, 1, 1, 1539046500, 1539046500, 0, 0, 0),
(1, 3, 'ترحيب', 'هو سقطت الساحلية ذات, أن.', 'غير بمعارضة وهولندا، الإقتصادية قد, فقد الفرنسي المعاهدات قد من.', 'ترحيب', '', '', 'index,follow', '', '', '', NULL, 'home', '', 1, 1, 1, 1539046500, 1539046500, 0, 0, 0),
(2, 1, 'Contact', 'Contact', '', 'Contact', 'contact', '', 'index,follow', '', '', '', NULL, 'contact', '', 0, 1, 9, 1539046500, 1539046500, 0, 0, 0),
(2, 2, 'Contact', 'Contact', '', 'Contact', 'contact', '', 'index,follow', '', '', '', NULL, 'contact', '', 0, 1, 9, 1539046500, 1539046500, 0, 0, 0),
(2, 3, 'جهة الاتصال', 'جهة الاتصال', '', 'جهة الاتصال', 'contact', '', 'index,follow', '', '', '', NULL, 'contact', '', 0, 1, 9, 1539046500, 1539046500, 0, 0, 0),
(3, 1, 'Mentions légales', 'Mentions légales', '', 'Mentions légales', 'mentions-legales', '', 'index,follow', '', '', '', NULL, 'page', '', 0, 1, 10, 1539046500, 1539046500, 0, 0, 0),
(3, 2, 'Legal notices', 'Legal notices', '', 'Legal notices', 'legal-notices', '', 'index,follow', '', '', '', NULL, 'page', '', 0, 1, 10, 1539046500, 1539046500, 0, 0, 0),
(3, 3, 'يذكر القانونية', 'يذكر القانونية', '', 'يذكر القانونية', 'legal-notices', '', 'index,follow', '', '', '', NULL, 'page', '', 0, 1, 10, 1539046500, 1539046500, 0, 0, 0),
(4, 1, 'Plan du site', 'Plan du site', '', 'Plan du site', 'plan-site', '', 'index,follow', '', '', '', NULL, 'sitemap', '', 0, 1, 11, 1539046500, 1539046500, 0, 0, 0),
(4, 2, 'Sitemap', 'Sitemap', '', 'Sitemap', 'sitemap', '', 'index,follow', '', '', '', NULL, 'sitemap', '', 0, 1, 11, 1539046500, 1539046500, 0, 0, 0),
(4, 3, 'خريطة الموقع', 'خريطة الموقع', '', 'خريطة الموقع', 'sitemap', '', 'index,follow', '', '', '', NULL, 'sitemap', '', 0, 1, 11, 1539046500, 1539046500, 0, 0, 0),
(5, 1, 'Ma première page', 'Ma première page', '', 'Ma première page', 'my-first-page', '', 'index,follow', '', '', '', NULL, 'page', 'article', 0, 1, 2, 1539046500, 1539046500, 0, 0, 0),
(5, 2, 'Hotel', 'Hotel', '', 'Hotel', 'hotel', '', 'index,follow', '', '', '<p>HotelKu merupakan hotel bintang lima dengan fasilitas lengkap, pelayanan yang maksimal kepada para pelanggan, Tempat yang strategis dikelilingi lautan dan pegunungan yang membuat suasana HotelKu semakin berbeda</p>\r\n', NULL, 'page', 'article', 0, 1, 2, 1539046500, 1539046500, 0, 0, 0),
(5, 3, 'صفحتي الأولى', 'صفحتي الأولى', '', 'صفحتي الأولى', 'my-first-page', '', 'index,follow', '', '', '', NULL, 'page', 'article', 0, 1, 2, 1539046500, 1539046500, 0, 0, 0),
(6, 1, 'Recherche', 'Recherche', '', 'Recherche', 'search', '', 'noindex,nofollow', '', '', '', NULL, 'search', '', 0, 1, 12, 1539046500, 1539046500, 0, 0, 1),
(6, 2, 'Search', 'Search', '', 'Search', 'search', '', 'noindex,nofollow', '', '', '', NULL, 'search', '', 0, 1, 12, 1539046500, 1539046500, 0, 0, 1),
(6, 3, 'بحث', 'بحث', '', 'بحث', 'search', '', 'noindex,nofollow', '', '', '', NULL, 'search', '', 0, 1, 12, 1539046500, 1539046500, 0, 0, 1),
(7, 1, 'Galerie', 'Galerie', '', 'Galerie', 'galerie', '', 'index,follow', '', '', '', NULL, 'page', 'gallery', 0, 1, 4, 1539046500, 1539046500, 0, 0, 0),
(7, 2, 'Gallery', 'Gallery', '', 'Gallery', 'gallery', '', 'index,follow', '', '', '', NULL, 'page', 'gallery', 0, 1, 4, 1539046500, 1539046500, 0, 0, 0),
(7, 3, 'صور معرض', 'صور معرض', '', 'صور معرض', 'gallery', '', 'index,follow', '', '', '', NULL, 'page', 'gallery', 0, 1, 4, 1539046500, 1539046500, 0, 0, 0),
(8, 1, '404', 'Erreur 404 : Page introuvable !', '', '404 Page introuvable', '404', '', 'noindex,nofollow', '', '', '<p>L\'URL demandée n\'a pas été trouvée sur ce serveur.<br />\r\nLa page que vous voulez afficher n\'existe pas, ou est temporairement indisponible.</p>\r\n\r\n<p>Merci d\'essayer les actions suivantes :</p>\r\n\r\n<ul>\r\n	<li>Assurez-vous que l\'URL dans la barre d\'adresse de votre navigateur est correctement orthographiée et formatée.</li>\r\n	<li>Si vous avez atteint cette page en cliquant sur un lien ou si vous pensez que cela concerne une erreur du serveur, contactez l\'administrateur pour l\'alerter.</li>\r\n</ul>\r\n', NULL, '404', '', 0, 1, 13, 1539046500, 1539046500, 0, 0, 1),
(8, 2, '404', '404 Error: Page not found!', '', '404 Not Found', '404', '', 'noindex,nofollow', '', '', '<p>The wanted URL was not found on this server.<br />\r\nThe page you wish to display does not exist, or is temporarily unavailable.</p>\r\n\r\n<p>Thank you for trying the following actions :</p>\r\n\r\n<ul>\r\n	<li>Be sure the URL in the address bar of your browser is correctly spelt and formated.</li>\r\n	<li>If you reached this page by clicking a link or if you think that it is about an error of the server, contact the administrator to alert him.</li>\r\n</ul>\r\n', NULL, '404', '', 0, 1, 13, 1539046500, 1539046500, 0, 0, 1),
(8, 3, '404', '404 Error: Page not found!', '', '404 Not Found', '404', '', 'noindex,nofollow', '', '', '', NULL, '404', '', 0, 1, 13, 1539046500, 1539046500, 0, 0, 1),
(9, 1, 'Chambres', 'Chambres', '', 'Chambres', 'chambres', '', 'index,follow', '', '', '', NULL, 'rooms', 'room', 0, 1, 3, 1539046500, 1539046500, 0, 0, 0),
(9, 2, 'Rooms', 'Rooms', '', 'Rooms', 'rooms', '', 'index,follow', '', '', '', NULL, 'rooms', 'room', 0, 1, 3, 1539046500, 1539046500, 0, 0, 0),
(9, 3, 'الغرف', 'الغرف', '', 'الغرف', 'rooms', '', 'index,follow', '', '', '', NULL, 'rooms', 'room', 0, 1, 3, 1539046500, 1539046500, 0, 0, 0),
(10, 1, 'Réserver', 'Réserver', '', 'Réserver', 'reserver', '', 'noindex,nofollow', '', '', '', NULL, 'booking', '', 0, 1, 5, 1539046500, 1539046500, 0, 0, 1),
(10, 2, 'Booking', 'Booking', '', 'Booking', 'booking', '', 'noindex,nofollow', '', '', '', NULL, 'booking', '', 0, 1, 5, 1539046500, 1539046500, 0, 0, 1),
(10, 3, 'الحجز', 'الحجز', '', 'الحجز', 'booking', '', 'noindex,nofollow', '', '', '', NULL, 'booking', '', 0, 1, 5, 1539046500, 1539046500, 0, 0, 1),
(11, 1, 'Coordonnées', 'Coordonnées', '', 'Coordonnées', 'coordonnees', '', 'noindex,nofollow', '', '', '', 10, 'details', '', 0, 1, 6, 1539046500, 1539046500, 0, 0, 1),
(11, 2, 'Details', 'Booking details', '', 'Booking details', 'booking-details', '', 'noindex,nofollow', '', '', '', 10, 'details', '', 0, 1, 6, 1539046500, 1539046500, 0, 0, 1),
(11, 3, 'تفاصيل الحجز', 'تفاصيل الحجز', '', 'تفاصيل الحجز', 'booking-details', '', 'noindex,nofollow', '', '', '', 10, 'details', '', 0, 1, 6, 1539046500, 1539046500, 0, 0, 1),
(12, 1, 'Paiement', 'Paiement', '', 'Paiement', 'paiement', '', 'noindex,nofollow', '', '', '', 13, 'payment', '', 0, 1, 8, 1539046500, 1539046500, 0, 0, 1),
(12, 2, 'Payment', 'Payment', '', 'Payment', 'payment', '', 'noindex,nofollow', '', '', '', 13, 'payment', '', 0, 1, 8, 1539046500, 1539046500, 0, 0, 1),
(12, 3, 'دفع', 'دفع', '', 'دفع', 'payment', '', 'noindex,nofollow', '', '', '', 13, 'payment', '', 0, 1, 8, 1539046500, 1539046500, 0, 0, 1),
(13, 1, 'Résumé de la réservation', 'Résumé de la réservation', '', 'Résumé de la réservation', 'resume-reservation', '', 'noindex,nofollow', '', '', '', 11, 'summary', '', 0, 1, 7, 1539046500, 1539046500, 0, 0, 1),
(13, 2, 'Summary', 'Booking summary', '', 'Booking summary', 'booking-summary', '', 'noindex,nofollow', '', '', '', 11, 'summary', '', 0, 1, 7, 1539046500, 1539046500, 0, 0, 1),
(13, 3, 'ملخص الحجز', 'ملخص الحجز', '', 'ملخص الحجز', 'booking-summary', '', 'noindex,nofollow', '', '', '', 11, 'summary', '', 0, 1, 7, 1539046500, 1539046500, 0, 0, 1),
(14, 1, 'Espace client', 'Espace client', '', 'Espace client', 'espace-client', '', 'noindex,nofollow', '', '', '', NULL, 'account', '', 0, 1, 14, 1539046500, 1539046500, 0, 0, 1),
(14, 2, 'Account', 'Account', '', 'Account', 'account', '', 'noindex,nofollow', '', '', '', NULL, 'account', '', 0, 1, 14, 1539046500, 1539046500, 0, 0, 1),
(14, 3, 'Account', 'Account', '', 'Account', 'account', '', 'noindex,nofollow', '', '', '', NULL, 'account', '', 0, 1, 14, 1539046500, 1539046500, 0, 0, 1),
(15, 1, 'Activités', 'Activités', '', 'Activités', 'reservation-activitees', '', 'noindex,nofollow', '', '', '', 10, 'booking-activities', '', 0, 1, 7, 1539046500, 1539046500, 0, 0, 1),
(15, 2, 'Activities', 'Activities', '', 'Activities', 'booking-activities', '', 'noindex,nofollow', '', '', '', 10, 'booking-activities', '', 0, 1, 7, 1539046500, 1539046500, 0, 0, 1),
(15, 3, 'Activities', 'Activities', '', 'Activities', 'booking-activities', '', 'noindex,nofollow', '', '', '', 10, 'booking-activities', '', 0, 1, 7, 1539046500, 1539046500, 0, 0, 1),
(16, 1, 'Activités', 'Activités', '', 'Activités', 'activitees', '', 'noindex,follow', '', '', '', NULL, 'activities', 'activity', 0, 1, 4, 1539046500, 1539046500, 0, 0, 1),
(16, 2, 'Activities', 'Activities', '', 'Activities', 'activities', '', 'noindex,follow', '', '', '', NULL, 'activities', 'activity', 0, 1, 4, 1539046500, 1539046500, 0, 0, 1),
(16, 3, 'Activities', 'Activities', '', 'Activities', 'activities', '', 'noindex,follow', '', '', '', NULL, 'activities', 'activity', 0, 1, 4, 1539046500, 1539046500, 0, 0, 1),
(17, 1, 'Blog', 'Blog', '', 'Blog', 'blog', '', 'index,follow', '', '', '', NULL, 'blog', 'article-blog', 0, 1, 12, 1539046500, 1539046500, 0, 0, 0),
(17, 2, 'Blog', 'Blog', '', 'Blog', 'blog', '', 'index,follow', '', '', '', NULL, 'blog', 'article-blog', 0, 1, 12, 1539046500, 1539046500, 0, 0, 0),
(17, 3, 'مدونة', 'مدونة', '', 'مدونة', 'blog', '', 'index,follow', '', '', '', NULL, 'blog', 'article-blog', 0, 1, 12, 1539046500, 1539046500, 0, 0, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pm_page_file`
--

CREATE TABLE `pm_page_file` (
  `id` int(11) NOT NULL,
  `lang` int(11) NOT NULL,
  `id_item` int(11) NOT NULL,
  `home` int(11) DEFAULT 0,
  `checked` int(11) DEFAULT 1,
  `rank` int(11) DEFAULT 0,
  `file` varchar(250) DEFAULT NULL,
  `label` varchar(250) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pm_rate`
--

CREATE TABLE `pm_rate` (
  `id` int(11) NOT NULL,
  `id_room` int(11) NOT NULL,
  `start_date` int(11) DEFAULT NULL,
  `end_date` int(11) DEFAULT NULL,
  `id_package` int(11) DEFAULT NULL,
  `price` double DEFAULT 0,
  `child_price` double DEFAULT 0,
  `discount` double DEFAULT 0,
  `discount_type` varchar(10) DEFAULT NULL,
  `people` int(11) DEFAULT NULL,
  `price_sup` double DEFAULT NULL,
  `fixed_sup` double DEFAULT NULL,
  `id_tax` int(11) DEFAULT NULL,
  `taxes` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pm_room`
--

CREATE TABLE `pm_room` (
  `id` int(11) NOT NULL,
  `lang` int(11) NOT NULL,
  `max_children` int(11) DEFAULT 1,
  `max_adults` int(11) DEFAULT 1,
  `max_people` int(11) DEFAULT NULL,
  `min_people` int(11) DEFAULT NULL,
  `title` varchar(250) DEFAULT NULL,
  `subtitle` varchar(250) DEFAULT NULL,
  `alias` varchar(100) DEFAULT NULL,
  `descr` longtext DEFAULT NULL,
  `facilities` varchar(250) DEFAULT NULL,
  `stock` int(11) NOT NULL DEFAULT 1,
  `price` double NOT NULL DEFAULT 0,
  `home` int(11) DEFAULT 0,
  `checked` int(11) DEFAULT 0,
  `rank` int(11) DEFAULT 0,
  `start_lock` int(11) DEFAULT NULL,
  `end_lock` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `pm_room`
--

INSERT INTO `pm_room` (`id`, `lang`, `max_children`, `max_adults`, `max_people`, `min_people`, `title`, `subtitle`, `alias`, `descr`, `facilities`, `stock`, `price`, `home`, `checked`, `rank`, `start_lock`, `end_lock`) VALUES
(1, 1, 2, 2, 2, 1, 'Chambre Double Deluxe', 'Petit-déjeuner inclus', 'chambre-double-deluxe', '<p>Hotelku memberikan pelayanan terbaik untuk kebutuhan liburan Anda, dengan fasilitas yang lengkap sebagai Hotel Bintang Lima.</p>\r\n\r\n<p>Hotelku selalu memberikan yang terbaik bagi pelanggan.</p>\r\n', '1,5,11,13,17,18,21,23,24,25,27,28,29,32', 4, 145, 1, 1, 1, NULL, NULL),
(1, 2, 2, 2, 2, 1, 'Deluxe Double Bedroom', 'Breakfast included', 'deluxe-double-bedroom', '<p>Hotelku memberikan pelayanan terbaik untuk kebutuhan liburan Anda, dengan fasilitas yang lengkap sebagai Hotel Bintang Lima.</p>\r\n\r\n<p>Hotelku selalu memberikan yang terbaik bagi pelanggan.</p>\r\n', '1,5,11,13,17,18,21,23,24,25,27,28,29,32', 4, 145, 1, 1, 1, NULL, NULL),
(1, 3, 2, 2, 2, 1, 'Deluxe Double Bedroom', 'Breakfast included', 'deluxe-double-bedroom', '<p>Hotelku memberikan pelayanan terbaik untuk kebutuhan liburan Anda, dengan fasilitas yang lengkap sebagai Hotel Bintang Lima.</p>\r\n\r\n<p>Hotelku selalu memberikan yang terbaik bagi pelanggan.</p>\r\n', '1,5,11,13,17,18,21,23,24,25,27,28,29,32', 4, 145, 1, 1, 1, NULL, NULL),
(2, 1, 4, 5, 5, 1, 'Suite Luxueuse', 'Suite avec Piscine & Jacuzzi', 'suite-luxueuse', '<p>Hotelku memberikan pelayanan terbaik untuk kebutuhan liburan Anda, dengan fasilitas yang lengkap sebagai Hotel Bintang Lima.</p>\r\n\r\n<p>Hotelku selalu memberikan yang terbaik bagi pelanggan.</p>\r\n', '1,2,5,39,35,11,13,36,17,18,21,37,38,23,24,25,26,27,28,32', 5, 390, 1, 1, 2, NULL, NULL),
(2, 2, 4, 5, 5, 1, 'Luxury suite', 'Pool & Jacuzzi Suite', 'luxury-suite', '<p>Hotelku memberikan pelayanan terbaik untuk kebutuhan liburan Anda, dengan fasilitas yang lengkap sebagai Hotel Bintang Lima.</p>\r\n\r\n<p>Hotelku selalu memberikan yang terbaik bagi pelanggan.</p>\r\n', '1,2,5,39,35,11,13,36,17,18,21,37,38,23,24,25,26,27,28,32', 5, 390, 1, 1, 2, NULL, NULL),
(2, 3, 4, 5, 5, 1, 'Luxury suite', 'Pool & Jacuzzi Suite', 'luxury-suite', '<p>Hotelku memberikan pelayanan terbaik untuk kebutuhan liburan Anda, dengan fasilitas yang lengkap sebagai Hotel Bintang Lima.</p>\r\n\r\n<p>Hotelku selalu memberikan yang terbaik bagi pelanggan.</p>\r\n', '1,2,5,39,35,11,13,36,17,18,21,37,38,23,24,25,26,27,28,32', 5, 390, 1, 1, 2, NULL, NULL),
(3, 1, 4, 5, 5, 1, 'Suite Royale', 'Suite avec Piscine & Jacuzzi', 'suite-royale', '', '1,2,5,39,35,11,13,36,17,18,21,37,38,23,24,25,27,28,32', 2, 410, 1, 1, 3, NULL, NULL),
(3, 2, 4, 5, 5, 1, 'Royal suite', 'Pool & Jacuzzi Suite', 'royal-suite', '', '1,2,5,39,35,11,13,36,17,18,21,37,38,23,24,25,27,28,32', 2, 410, 1, 1, 3, NULL, NULL),
(3, 3, 4, 5, 5, 1, 'Royal suite', 'Pool & Jacuzzi Suite', 'royal-suite', '', '1,2,5,39,35,11,13,36,17,18,21,37,38,23,24,25,27,28,32', 2, 410, 1, 1, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pm_room_file`
--

CREATE TABLE `pm_room_file` (
  `id` int(11) NOT NULL,
  `lang` int(11) NOT NULL,
  `id_item` int(11) NOT NULL,
  `home` int(11) DEFAULT 0,
  `checked` int(11) DEFAULT 1,
  `rank` int(11) DEFAULT 0,
  `file` varchar(250) DEFAULT NULL,
  `label` varchar(250) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `pm_room_file`
--

INSERT INTO `pm_room_file` (`id`, `lang`, `id_item`, `home`, `checked`, `rank`, `file`, `label`, `type`) VALUES
(1, 1, 1, 0, 1, 1, 'deluxe-double-room.jpg', '', 'image'),
(1, 2, 1, 0, 1, 1, 'deluxe-double-room.jpg', '', 'image'),
(1, 3, 1, 0, 1, 1, 'deluxe-double-room.jpg', '', 'image'),
(2, 1, 2, 0, 1, 2, '6515452555-27726c278e-o.jpg', '', 'image'),
(2, 2, 2, 0, 1, 2, '6515452555-27726c278e-o.jpg', '', 'image'),
(2, 3, 2, 0, 1, 2, '6515452555-27726c278e-o.jpg', '', 'image'),
(3, 1, 3, 0, 1, 3, '6515451125-2fd51bd7c5-o.jpg', '', 'image'),
(3, 2, 3, 0, 1, 3, '6515451125-2fd51bd7c5-o.jpg', '', 'image'),
(3, 3, 3, 0, 1, 3, '6515451125-2fd51bd7c5-o.jpg', '', 'image');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pm_room_lock`
--

CREATE TABLE `pm_room_lock` (
  `id` int(11) NOT NULL,
  `id_room` int(11) DEFAULT NULL,
  `from_date` int(11) DEFAULT NULL,
  `to_date` int(11) DEFAULT NULL,
  `add_date` int(11) DEFAULT NULL,
  `sessid` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pm_service`
--

CREATE TABLE `pm_service` (
  `id` int(11) NOT NULL,
  `lang` int(11) NOT NULL,
  `title` varchar(250) DEFAULT NULL,
  `descr` text DEFAULT NULL,
  `long_descr` text DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `rooms` varchar(250) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `id_tax` int(11) DEFAULT NULL,
  `taxes` text DEFAULT NULL,
  `mandatory` int(11) DEFAULT 0,
  `start_date` int(11) DEFAULT NULL,
  `end_date` int(11) DEFAULT NULL,
  `checked` int(11) DEFAULT 0,
  `rank` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `pm_service`
--

INSERT INTO `pm_service` (`id`, `lang`, `title`, `descr`, `long_descr`, `type`, `rooms`, `price`, `id_tax`, `taxes`, `mandatory`, `start_date`, `end_date`, `checked`, `rank`) VALUES
(1, 1, 'Set de toilette', '1 serviette de toilette, 1 drap de douche, 1 tapis', '', 'qty-night', '4,1,3,2', 7, 1, '', 0, NULL, NULL, 1, 1),
(1, 2, 'Rent of towel (kit)', '1 hand towel, 1 bath towel, 1 bath mat', '', 'qty-night', '4,1,3,2', 7, 1, '', 0, NULL, NULL, 1, 1),
(1, 3, 'Rent of towel (kit)', '1 hand towel, 1 bath towel, 1 bath mat', '', 'qty-night', '4,1,3,2', 7, 1, '', 0, NULL, NULL, 1, 1),
(2, 1, 'Ménage', '', '', 'package', '1,3,2', 50, 1, '', 0, NULL, NULL, 1, 2),
(2, 2, 'Housework', '', '', 'package', '1,3,2', 50, 1, '', 0, NULL, NULL, 1, 2),
(2, 3, 'Housework', '', '', 'package', '1,3,2', 50, 1, '', 0, NULL, NULL, 1, 2),
(3, 1, 'Chauffage', '', '', 'night', '1,3,2', 8, 1, '', 0, NULL, NULL, 1, 3),
(3, 2, 'Heating', '', '', 'night', '1,3,2', 8, 1, '', 0, NULL, NULL, 1, 3),
(3, 3, 'Heating', '', '', 'night', '1,3,2', 8, 1, '', 0, NULL, NULL, 1, 3),
(4, 1, 'Animal domestique', 'Précisez la race ci-dessous', '', 'qty-night', '4,1,3,2', 5, 1, '', 0, NULL, NULL, 1, 4),
(4, 2, 'Pet', 'Specify the breed below', '', 'qty-night', '4,1,3,2', 5, 1, '', 0, NULL, NULL, 1, 4),
(4, 3, 'Pet', 'Specify the breed below', '', 'qty-night', '4,1,3,2', 5, 1, '', 0, NULL, NULL, 1, 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pm_slide`
--

CREATE TABLE `pm_slide` (
  `id` int(11) NOT NULL,
  `lang` int(11) NOT NULL,
  `legend` text DEFAULT NULL,
  `url` varchar(250) DEFAULT NULL,
  `id_page` int(11) DEFAULT NULL,
  `checked` int(11) DEFAULT 0,
  `rank` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `pm_slide`
--

INSERT INTO `pm_slide` (`id`, `lang`, `legend`, `url`, `id_page`, `checked`, `rank`) VALUES
(1, 1, '', '', 1, 1, 1),
(1, 2, '<h1>Book your holydays with HotelKu Resort</h1>\r\n\r\n<h2>Fast, Easy and Powerfull</h2>\r\n', '', 1, 1, 1),
(1, 3, '', '', 1, 1, 1),
(2, 1, '', '', 1, 1, 2),
(2, 2, '<h1>A dream stay at the best price</h1>\r\n\r\n<h2>Best price guarantee</h2>\r\n', '', 1, 1, 2),
(2, 3, '', '', 1, 1, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pm_slide_file`
--

CREATE TABLE `pm_slide_file` (
  `id` int(11) NOT NULL,
  `lang` int(11) NOT NULL,
  `id_item` int(11) NOT NULL,
  `home` int(11) DEFAULT 0,
  `checked` int(11) DEFAULT 1,
  `rank` int(11) DEFAULT 0,
  `file` varchar(250) DEFAULT NULL,
  `label` varchar(250) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `pm_slide_file`
--

INSERT INTO `pm_slide_file` (`id`, `lang`, `id_item`, `home`, `checked`, `rank`, `file`, `label`, `type`) VALUES
(1, 1, 1, 0, 1, 2, 'slide1.jpg', '', 'image'),
(1, 2, 1, 0, 1, 2, 'slide1.jpg', '', 'image'),
(1, 3, 1, 0, 1, 2, 'slide1.jpg', '', 'image'),
(2, 1, 2, 0, 1, 3, 'slide2.jpg', '', 'image'),
(2, 2, 2, 0, 1, 3, 'slide2.jpg', '', 'image'),
(2, 3, 2, 0, 1, 3, 'slide2.jpg', '', 'image');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pm_social`
--

CREATE TABLE `pm_social` (
  `id` int(11) NOT NULL,
  `type` varchar(50) DEFAULT NULL,
  `url` text DEFAULT NULL,
  `checked` int(11) DEFAULT 1,
  `rank` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pm_tag`
--

CREATE TABLE `pm_tag` (
  `id` int(11) NOT NULL,
  `lang` int(11) NOT NULL,
  `value` varchar(250) DEFAULT NULL,
  `pages` varchar(250) DEFAULT NULL,
  `checked` int(11) DEFAULT 0,
  `rank` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pm_tax`
--

CREATE TABLE `pm_tax` (
  `id` int(11) NOT NULL,
  `lang` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `value` double DEFAULT 0,
  `checked` int(11) DEFAULT 0,
  `rank` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `pm_tax`
--

INSERT INTO `pm_tax` (`id`, `lang`, `name`, `value`, `checked`, `rank`) VALUES
(1, 1, 'TVA', 10, 1, 1),
(1, 2, 'VAT', 10, 1, 1),
(1, 3, 'VAT', 10, 1, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pm_text`
--

CREATE TABLE `pm_text` (
  `id` int(11) NOT NULL,
  `lang` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `value` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `pm_text`
--

INSERT INTO `pm_text` (`id`, `lang`, `name`, `value`) VALUES
(1, 1, 'CREATION', 'Création'),
(1, 2, 'CREATION', 'Creation'),
(1, 3, 'CREATION', 'إنشاء'),
(2, 1, 'MESSAGE', 'Message'),
(2, 2, 'MESSAGE', 'Message'),
(2, 3, 'MESSAGE', 'رسالة'),
(3, 1, 'EMAIL', 'E-mail'),
(3, 2, 'EMAIL', 'E-mail'),
(3, 3, 'EMAIL', 'بَرِيدٌ إلِكْترونيّ'),
(4, 1, 'PHONE', 'Tél.'),
(4, 2, 'PHONE', 'Phone'),
(4, 3, 'PHONE', 'رقم هاتف'),
(5, 1, 'FAX', 'Fax'),
(5, 2, 'FAX', 'Fax'),
(5, 3, 'FAX', 'فاكس'),
(6, 1, 'COMPANY', 'Société'),
(6, 2, 'COMPANY', 'Company'),
(6, 3, 'COMPANY', 'مشروع'),
(7, 1, 'COPY_CODE', 'Recopiez le code'),
(7, 2, 'COPY_CODE', 'Copy the code'),
(7, 3, 'COPY_CODE', 'رمز الأمان'),
(8, 1, 'SUBJECT', 'Sujet'),
(8, 2, 'SUBJECT', 'Subject'),
(8, 3, 'SUBJECT', 'موضوع'),
(9, 1, 'REQUIRED_FIELD', 'Champ requis'),
(9, 2, 'REQUIRED_FIELD', 'Required field'),
(9, 3, 'REQUIRED_FIELD', 'الحقل المطلوب'),
(10, 1, 'INVALID_CAPTCHA_CODE', 'Le code de sécurité saisi est incorrect'),
(10, 2, 'INVALID_CAPTCHA_CODE', 'Invalid security code'),
(10, 3, 'INVALID_CAPTCHA_CODE', 'رمز الحماية أدخلته غير صحيح'),
(11, 1, 'INVALID_EMAIL', 'Adresse e-mail invalide'),
(11, 2, 'INVALID_EMAIL', 'Invalid email address'),
(11, 3, 'INVALID_EMAIL', 'بريد إلكتروني خاطئ'),
(12, 1, 'FIRSTNAME', 'Prénom'),
(12, 2, 'FIRSTNAME', 'Firstname'),
(12, 3, 'FIRSTNAME', 'الاسم الأول'),
(13, 1, 'LASTNAME', 'Nom'),
(13, 2, 'LASTNAME', 'Lastname'),
(13, 3, 'LASTNAME', 'اسم العائلة'),
(14, 1, 'ADDRESS', 'Adresse'),
(14, 2, 'ADDRESS', 'Address'),
(14, 3, 'ADDRESS', 'عنوان الشارع'),
(15, 1, 'POSTCODE', 'Code postal'),
(15, 2, 'POSTCODE', 'Post code'),
(15, 3, 'POSTCODE', 'الرمز البريدي'),
(16, 1, 'CITY', 'Ville'),
(16, 2, 'CITY', 'City'),
(16, 3, 'CITY', 'مدينة'),
(17, 1, 'MOBILE', 'Portable'),
(17, 2, 'MOBILE', 'Mobile'),
(17, 3, 'MOBILE', 'هاتف'),
(18, 1, 'ADD', 'Ajouter'),
(18, 2, 'ADD', 'Add'),
(18, 3, 'ADD', 'إضافة على'),
(19, 1, 'EDIT', 'Modifier'),
(19, 2, 'EDIT', 'Edit'),
(19, 3, 'EDIT', 'تغيير'),
(20, 1, 'INVALID_INPUT', 'Saisie invalide'),
(20, 2, 'INVALID_INPUT', 'Invalid input'),
(20, 3, 'INVALID_INPUT', 'إدخال غير صالح'),
(21, 1, 'MAIL_DELIVERY_FAILURE', 'Echec lors de l\'envoi du message.'),
(21, 2, 'MAIL_DELIVERY_FAILURE', 'A failure occurred during the delivery of this message.'),
(21, 3, 'MAIL_DELIVERY_FAILURE', 'حدث فشل أثناء تسليم هذه الرسالة.'),
(22, 1, 'MAIL_DELIVERY_SUCCESS', 'Merci de votre intérêt, votre message a bien été envoyé.\nNous vous contacterons dans les plus brefs délais.'),
(22, 2, 'MAIL_DELIVERY_SUCCESS', 'Thank you for your interest, your message has been sent.\nWe will contact you as soon as possible.'),
(22, 3, 'MAIL_DELIVERY_SUCCESS', 'خزان لاهتمامك ، تم إرسال رسالتك . سوف نتصل بك في أقرب وقت ممكن .'),
(23, 1, 'SEND', 'Envoyer'),
(23, 2, 'SEND', 'Send'),
(23, 3, 'SEND', 'ارسل انت'),
(24, 1, 'FORM_ERRORS', 'Le formulaire comporte des erreurs.'),
(24, 2, 'FORM_ERRORS', 'The following form contains some errors.'),
(24, 3, 'FORM_ERRORS', 'النموذج التالي يحتوي على بعض الأخطاء.'),
(25, 1, 'FROM_DATE', 'Du'),
(25, 2, 'FROM_DATE', 'From'),
(25, 3, 'FROM_DATE', 'من'),
(26, 1, 'TO_DATE', 'au'),
(26, 2, 'TO_DATE', 'till'),
(26, 3, 'TO_DATE', 'حتى'),
(27, 1, 'FROM', 'De'),
(27, 2, 'FROM', 'From'),
(27, 3, 'FROM', 'من'),
(28, 1, 'TO', 'à'),
(28, 2, 'TO', 'to'),
(28, 3, 'TO', 'إلى'),
(29, 1, 'BOOK', 'Réserver'),
(29, 2, 'BOOK', 'Book'),
(29, 3, 'BOOK', 'للحجز'),
(30, 1, 'READMORE', 'Lire la suite'),
(30, 2, 'READMORE', 'Read more'),
(30, 3, 'READMORE', 'اقرأ المزيد'),
(31, 1, 'BACK', 'Retour'),
(31, 2, 'BACK', 'Back'),
(31, 3, 'BACK', 'عودة'),
(32, 1, 'DISCOVER', 'Découvrir'),
(32, 2, 'DISCOVER', 'Discover'),
(32, 3, 'DISCOVER', 'اكتشف'),
(33, 1, 'ALL', 'Tous'),
(33, 2, 'ALL', 'All'),
(33, 3, 'ALL', 'كل'),
(34, 1, 'ALL_RIGHTS_RESERVED', 'Tous droits réservés'),
(34, 2, 'ALL_RIGHTS_RESERVED', 'All rights reserved'),
(34, 3, 'ALL_RIGHTS_RESERVED', 'جميع الحقوق محفوظه'),
(35, 1, 'FORGOTTEN_PASSWORD', 'Mot de passe oublié ?'),
(35, 2, 'FORGOTTEN_PASSWORD', 'Forgotten password?'),
(35, 3, 'FORGOTTEN_PASSWORD', 'هل نسيت كلمة المرور؟'),
(36, 1, 'LOG_IN', 'Connexion'),
(36, 2, 'LOG_IN', 'Log in'),
(36, 3, 'LOG_IN', 'تسجيل الدخول'),
(37, 1, 'SIGN_UP', 'Inscription'),
(37, 2, 'SIGN_UP', 'Sign up'),
(37, 3, 'SIGN_UP', 'تسجيل'),
(38, 1, 'LOG_OUT', 'Déconnexion'),
(38, 2, 'LOG_OUT', 'Log out'),
(38, 3, 'LOG_OUT', 'تسجيل الخروج'),
(39, 1, 'SEARCH', 'Rechercher'),
(39, 2, 'SEARCH', 'Search'),
(39, 3, 'SEARCH', 'ابحث عن'),
(40, 1, 'RESET_PASS_SUCCESS', 'Votre nouveau mot de passe vous a été envoyé sur votre adresse e-mail.'),
(40, 2, 'RESET_PASS_SUCCESS', 'Your new password was sent to you on your e-mail.'),
(40, 3, 'RESET_PASS_SUCCESS', 'تم إرسال كلمة المرور الجديدة إلى عنوان البريد الإلكتروني الخاص بك'),
(41, 1, 'PASS_TOO_SHORT', 'Le mot de passe doit contenir 6 caractères au minimum'),
(41, 2, 'PASS_TOO_SHORT', 'The password must contain 6 characters at least'),
(41, 3, 'PASS_TOO_SHORT', 'يجب أن يحتوي على كلمة المرور ستة أحرف على الأقل'),
(42, 1, 'PASS_DONT_MATCH', 'Les mots de passe doivent correspondre'),
(42, 2, 'PASS_DONT_MATCH', 'The passwords don\'t match'),
(42, 3, 'PASS_DONT_MATCH', 'يجب أن تتطابق كلمات المرور'),
(43, 1, 'ACCOUNT_EXISTS', 'Un compte existe déjà avec cette adresse e-mail'),
(43, 2, 'ACCOUNT_EXISTS', 'An account already exists with this e-mail'),
(43, 3, 'ACCOUNT_EXISTS', 'حساب موجود بالفعل مع هذا عنوان البريد الإلكتروني'),
(44, 1, 'ACCOUNT_CREATED', 'Votre compte a bien été créé. Vous allez recevoir un email de confirmation. Cliquez sur le lien de cet e-mail pour confirmer votre compte avant de continuer.'),
(44, 2, 'ACCOUNT_CREATED', 'Your account has been created. You will receive a confirmation email. Click on the link in this email to confirm your account before continuing.'),
(44, 3, 'ACCOUNT_CREATED', 'Your account has been created. You will receive a confirmation email. Click on the link in this email to confirm your account before continuing.'),
(45, 1, 'INCORRECT_LOGIN', 'Les informations de connexion sont incorrectes.'),
(45, 2, 'INCORRECT_LOGIN', 'Incorrect login information.'),
(45, 3, 'INCORRECT_LOGIN', 'معلومات تسجيل الدخول غير صحيحة.'),
(46, 1, 'I_SIGN_UP', 'Je m\'inscris'),
(46, 2, 'I_SIGN_UP', 'I sign up'),
(46, 3, 'I_SIGN_UP', 'يمكنني الاشتراك'),
(47, 1, 'ALREADY_HAVE_ACCOUNT', 'J\'ai déjà un compte'),
(47, 2, 'ALREADY_HAVE_ACCOUNT', 'I already have an account'),
(47, 3, 'ALREADY_HAVE_ACCOUNT', 'لدي بالفعل حساب'),
(48, 1, 'MY_ACCOUNT', 'Mon compte'),
(48, 2, 'MY_ACCOUNT', 'My account'),
(48, 3, 'MY_ACCOUNT', 'حسابي'),
(49, 1, 'COMMENTS', 'Commentaires'),
(49, 2, 'COMMENTS', 'Comments'),
(49, 3, 'COMMENTS', 'تعليقات'),
(50, 1, 'LET_US_KNOW', 'Faîtes-nous savoir ce que vous pensez'),
(50, 2, 'LET_US_KNOW', 'Let us know what you think'),
(50, 3, 'LET_US_KNOW', 'ماذا عن رايك؟'),
(51, 1, 'COMMENT_SUCCESS', 'Merci de votre intérêt, votre commentaire va être soumis à validation.'),
(51, 2, 'COMMENT_SUCCESS', 'Thank you for your interest, your comment will be checked.'),
(51, 3, 'COMMENT_SUCCESS', 'شكرا ل اهتمامك، و سيتم التحقق من صحة للتعليق.'),
(52, 1, 'NO_SEARCH_RESULT', 'Aucun résultat. Vérifiez l\'orthographe des termes de recherche (> 3 caractères) ou essayez d\'autres mots.'),
(52, 2, 'NO_SEARCH_RESULT', 'No result. Check the spelling terms of search (> 3 characters) or try other words.'),
(52, 3, 'NO_SEARCH_RESULT', 'لا نتيجة. التدقيق الإملائي للكلمات (أكثر من ثلاثة أحرف ) أو محاولة بعبارة أخرى .'),
(53, 1, 'SEARCH_EXCEEDED', 'Nombre de recherches dépassé.'),
(53, 2, 'SEARCH_EXCEEDED', 'Number of researches exceeded.'),
(53, 3, 'SEARCH_EXCEEDED', 'عدد من الأبحاث السابقة .'),
(54, 1, 'SECONDS', 'secondes'),
(54, 2, 'SECONDS', 'seconds'),
(54, 3, 'SECONDS', 'ثواني'),
(55, 1, 'FOR_A_TOTAL_OF', 'sur un total de'),
(55, 2, 'FOR_A_TOTAL_OF', 'for a total of'),
(55, 3, 'FOR_A_TOTAL_OF', 'من الكل'),
(56, 1, 'COMMENT', 'Commentaire'),
(56, 2, 'COMMENT', 'Comment'),
(56, 3, 'COMMENT', 'تعقيب'),
(57, 1, 'VIEW', 'Visionner'),
(57, 2, 'VIEW', 'View'),
(57, 3, 'VIEW', 'ل عرض'),
(58, 1, 'RECENT_ARTICLES', 'Articles récents'),
(58, 2, 'RECENT_ARTICLES', 'Recent articles'),
(58, 3, 'RECENT_ARTICLES', 'المقالات الأخيرة'),
(59, 1, 'RSS_FEED', 'Flux RSS'),
(59, 2, 'RSS_FEED', 'RSS feed'),
(59, 3, 'RSS_FEED', 'تغذية RSS'),
(60, 1, 'COUNTRY', 'Pays'),
(60, 2, 'COUNTRY', 'Country'),
(60, 3, 'COUNTRY', 'Country'),
(61, 1, 'ROOM', 'Chambre'),
(61, 2, 'ROOM', 'Room'),
(61, 3, 'ROOM', 'Room'),
(62, 1, 'INCL_VAT', 'TTC'),
(62, 2, 'INCL_VAT', 'incl. VAT'),
(62, 3, 'INCL_VAT', 'incl. VAT'),
(63, 1, 'NIGHTS', 'nuit(s)'),
(63, 2, 'NIGHTS', 'night(s)'),
(63, 3, 'NIGHTS', 'night(s)'),
(64, 1, 'ADULTS', 'Adultes'),
(64, 2, 'ADULTS', 'Adults'),
(64, 3, 'ADULTS', 'Adults'),
(65, 1, 'CHILDREN', 'Enfants'),
(65, 2, 'CHILDREN', 'Children'),
(65, 3, 'CHILDREN', 'Children'),
(66, 1, 'PERSONS', 'personnes'),
(66, 2, 'PERSONS', 'persons'),
(66, 3, 'PERSONS', 'persons'),
(67, 1, 'CONTACT_DETAILS', 'Coordonnées'),
(67, 2, 'CONTACT_DETAILS', 'Contact details'),
(67, 3, 'CONTACT_DETAILS', 'Contact details'),
(68, 1, 'NO_AVAILABILITY', 'Aucune disponibilité'),
(68, 2, 'NO_AVAILABILITY', 'No availability'),
(68, 3, 'NO_AVAILABILITY', 'No availability'),
(69, 1, 'AVAILABILITIES', 'Disponibilités'),
(69, 2, 'AVAILABILITIES', 'Availabilities'),
(69, 3, 'AVAILABILITIES', 'Availabilities'),
(70, 1, 'CHECK', 'Vérifier'),
(70, 2, 'CHECK', 'Check'),
(70, 3, 'CHECK', 'Check'),
(71, 1, 'BOOKING_DETAILS', 'Détails de la réservation'),
(71, 2, 'BOOKING_DETAILS', 'Booking details'),
(71, 3, 'BOOKING_DETAILS', 'Booking details'),
(72, 1, 'SPECIAL_REQUESTS', 'Demandes spéciales'),
(72, 2, 'SPECIAL_REQUESTS', 'Special requests'),
(72, 3, 'SPECIAL_REQUESTS', 'Special requests'),
(73, 1, 'PREVIOUS_STEP', 'Étape précédente'),
(73, 2, 'PREVIOUS_STEP', 'Previous step'),
(73, 3, 'PREVIOUS_STEP', 'Previous step'),
(74, 1, 'CONFIRM_BOOKING', 'Confirmer la réservation'),
(74, 2, 'CONFIRM_BOOKING', 'Confirm the booking'),
(74, 3, 'CONFIRM_BOOKING', 'Confirm the booking'),
(75, 1, 'ALSO_DISCOVER', 'Découvrez aussi'),
(75, 2, 'ALSO_DISCOVER', 'Also discover'),
(75, 3, 'ALSO_DISCOVER', 'Also discover'),
(76, 1, 'CHECK_PEOPLE', 'Merci de vérifier le nombre de personnes pour l\'hébergement choisi.'),
(76, 2, 'CHECK_PEOPLE', 'Please verify the number of people for the chosen accommodation'),
(76, 3, 'CHECK_PEOPLE', 'Please verify the number of people for the chosen accommodation'),
(77, 1, 'BOOKING', 'Réservation'),
(77, 2, 'BOOKING', 'Booking'),
(77, 3, 'BOOKING', 'Booking'),
(78, 1, 'NIGHT', 'nuit'),
(78, 2, 'NIGHT', 'night'),
(78, 3, 'NIGHT', 'night'),
(79, 1, 'WEEK', 'semaine'),
(79, 2, 'WEEK', 'week'),
(79, 3, 'WEEK', 'week'),
(80, 1, 'EXTRA_SERVICES', 'Services supplémentaires'),
(80, 2, 'EXTRA_SERVICES', 'Extra services'),
(80, 3, 'EXTRA_SERVICES', 'Extra services'),
(81, 1, 'BOOKING_TERMS', ''),
(81, 2, 'BOOKING_TERMS', ''),
(81, 3, 'BOOKING_TERMS', ''),
(82, 1, 'NEXT_STEP', 'Étape suivante'),
(82, 2, 'NEXT_STEP', 'Next step'),
(82, 3, 'NEXT_STEP', 'Next step'),
(83, 1, 'TOURIST_TAX', 'Taxe de séjour'),
(83, 2, 'TOURIST_TAX', 'Tourist tax'),
(83, 3, 'TOURIST_TAX', 'Tourist tax'),
(84, 1, 'CHECK_IN', 'Arrivée'),
(84, 2, 'CHECK_IN', 'Check in'),
(84, 3, 'CHECK_IN', 'Check in'),
(85, 1, 'CHECK_OUT', 'Départ'),
(85, 2, 'CHECK_OUT', 'Check out'),
(85, 3, 'CHECK_OUT', 'Check out'),
(86, 1, 'TOTAL', 'Total'),
(86, 2, 'TOTAL', 'Total'),
(86, 3, 'TOTAL', 'Total'),
(87, 1, 'CAPACITY', 'Capacité'),
(87, 2, 'CAPACITY', 'Capacity'),
(87, 3, 'CAPACITY', 'Capacity'),
(88, 1, 'FACILITIES', 'Équipements'),
(88, 2, 'FACILITIES', 'Facilities'),
(88, 3, 'FACILITIES', 'Facilities'),
(89, 1, 'PRICE', 'Prix'),
(89, 2, 'PRICE', 'Price'),
(89, 3, 'PRICE', 'Price'),
(90, 1, 'MORE_DETAILS', 'Plus d\'infos'),
(90, 2, 'MORE_DETAILS', 'More details'),
(90, 3, 'MORE_DETAILS', 'More details'),
(91, 1, 'FROM_PRICE', 'À partir de'),
(91, 2, 'FROM_PRICE', 'From'),
(91, 3, 'FROM_PRICE', 'From'),
(92, 1, 'AMOUNT', 'Montant'),
(92, 2, 'AMOUNT', 'Amount'),
(92, 3, 'AMOUNT', 'Amount'),
(93, 1, 'PAY', 'Payer'),
(93, 2, 'PAY', 'Check out'),
(93, 3, 'PAY', 'Check out'),
(94, 1, 'PAYMENT_PAYPAL_NOTICE', 'Cliquez sur \"Payer\" ci-dessous, vous allez être redirigé vers le site sécurisé de PayPal'),
(94, 2, 'PAYMENT_PAYPAL_NOTICE', 'Click on \"Check Out\" below, you will be redirected towards the secure site of PayPal'),
(94, 3, 'PAYMENT_PAYPAL_NOTICE', 'Click on \"Check Out\" below, you will be redirected towards the secure site of PayPal'),
(95, 1, 'PAYMENT_CANCEL_NOTICE', 'Le paiement a été annulé.<br>Merci de votre visite et à bientôt.'),
(95, 2, 'PAYMENT_CANCEL_NOTICE', 'The payment has been cancelled.<br>Thank you for your visit and see you soon.'),
(95, 3, 'PAYMENT_CANCEL_NOTICE', 'The payment has been cancelled.<br>Thank you for your visit and see you soon.'),
(96, 1, 'PAYMENT_SUCCESS_NOTICE', 'Le paiement a été réalisé avec succès.<br>Merci de votre visite et à bientôt !'),
(96, 2, 'PAYMENT_SUCCESS_NOTICE', 'Your payment has been successfully processed.<br>Thank you for your visit and see you soon!'),
(96, 3, 'PAYMENT_SUCCESS_NOTICE', 'Your payment has been successfully processed.<br>Thank you for your visit and see you soon!'),
(97, 1, 'BILLING_ADDRESS', 'Adresse de facturation'),
(97, 2, 'BILLING_ADDRESS', 'Billing address'),
(97, 3, 'BILLING_ADDRESS', 'Billing address'),
(98, 1, 'DOWN_PAYMENT', 'Acompte'),
(98, 2, 'DOWN_PAYMENT', 'Down payment'),
(98, 3, 'DOWN_PAYMENT', 'Down payment'),
(99, 1, 'PAYMENT_CHECK_NOTICE', 'Merci d\'envoyer un chèque à \"Panda Resort, Santorini 847 00, Greece\" d\'un montant de {amount}.<br>Votre réservation sera validée à réception du paiement.<br>Merci de votre visite et à bientôt !'),
(99, 2, 'PAYMENT_CHECK_NOTICE', 'Thank you for sending a check of {amount} to \"Panda Resort, Santorini 847 00, Greece\".<br>Your reservation will be confirmed upon receipt of the payment.<br>Thank you for your visit and see you soon!'),
(99, 3, 'PAYMENT_CHECK_NOTICE', 'Thank you for sending a check of {amount} to \"Panda Resort, Santorini 847 00, Greece\".<br>Your reservation will be confirmed upon receipt of the payment.<br>Thank you for your visit and see you soon!'),
(100, 1, 'PAYMENT_ARRIVAL_NOTICE', 'Veuillez régler le solde de votre réservation d\'un montant de {amount} à votre arrivée.<br>Merci de votre visite et à bientôt !'),
(100, 2, 'PAYMENT_ARRIVAL_NOTICE', 'Thank you for paying the balance of {amount} for your booking on your arrival.<br>Thank you for your visit and see you soon!'),
(100, 3, 'PAYMENT_ARRIVAL_NOTICE', 'Thank you for paying the balance of {amount} for your booking on your arrival.<br>Thank you for your visit and see you soon!'),
(101, 1, 'MAX_PEOPLE', 'Pers. max'),
(101, 2, 'MAX_PEOPLE', 'Max people'),
(101, 3, 'MAX_PEOPLE', 'Max people'),
(102, 1, 'VAT_AMOUNT', 'Dont TVA'),
(102, 2, 'VAT_AMOUNT', 'VAT amount'),
(102, 3, 'VAT_AMOUNT', 'VAT amount'),
(103, 1, 'MIN_NIGHTS', 'Nuits min'),
(103, 2, 'MIN_NIGHTS', 'Min nights'),
(103, 3, 'MIN_NIGHTS', 'Min nights'),
(104, 1, 'MIN_PEOPLE', 'Pers. min'),
(104, 2, 'MIN_PEOPLE', 'Min people'),
(104, 3, 'MIN_PEOPLE', 'Min people'),
(105, 1, 'RATINGS', 'Note(s)'),
(105, 2, 'RATINGS', 'Rating(s)'),
(105, 3, 'RATINGS', 'Rating(s)'),
(106, 1, 'MAKE_A_REQUEST', 'Faire une demande'),
(106, 2, 'MAKE_A_REQUEST', 'Make a request'),
(106, 3, 'MAKE_A_REQUEST', 'Make a request'),
(109, 1, 'FULLNAME', 'Nom complet'),
(109, 2, 'FULLNAME', 'Full Name'),
(109, 3, 'FULLNAME', 'Full Name'),
(110, 1, 'PASSWORD', 'Mot de passe'),
(110, 2, 'PASSWORD', 'Password'),
(110, 3, 'PASSWORD', 'Password'),
(111, 1, 'LOG_IN_WITH_FACEBOOK', 'Enregistrez-vous avec Facebook'),
(111, 2, 'LOG_IN_WITH_FACEBOOK', 'Log in with Facebook'),
(111, 3, 'LOG_IN_WITH_FACEBOOK', 'Log in with Facebook'),
(112, 1, 'OR', 'Ou'),
(112, 2, 'OR', 'Or'),
(112, 3, 'OR', 'Or'),
(113, 1, 'NEW_PASSWORD', 'Nouveau mot de passe'),
(113, 2, 'NEW_PASSWORD', 'New password'),
(113, 3, 'NEW_PASSWORD', 'New password'),
(114, 1, 'NEW_PASSWORD_NOTICE', 'Merci d\'entrer l\'adresse e-mail correspondant à votre compte. Un nouveau mot de passe vous sera envoyé par e-mail.'),
(114, 2, 'NEW_PASSWORD_NOTICE', 'Please enter your e-mail address corresponding to your account. A new password will be sent to you by e-mail.'),
(114, 3, 'NEW_PASSWORD_NOTICE', 'Please enter your e-mail address corresponding to your account. A new password will be sent to you by e-mail.'),
(115, 1, 'USERNAME', 'Utilisateur'),
(115, 2, 'USERNAME', 'Username'),
(115, 3, 'USERNAME', 'Username'),
(116, 1, 'PASSWORD_CONFIRM', 'Confirmer mot de passe'),
(116, 2, 'PASSWORD_CONFIRM', 'Confirm password'),
(116, 3, 'PASSWORD_CONFIRM', 'Confirm password'),
(117, 1, 'USERNAME_EXISTS', 'Un compte existe déjà avec ce nom d\'utilisateur'),
(117, 2, 'USERNAME_EXISTS', 'An account already exists with this username'),
(117, 3, 'USERNAME_EXISTS', 'An account already exists with this username'),
(118, 1, 'ACCOUNT_EDIT_SUCCESS', 'Les informations de votre compte ont bien été modifiées.'),
(118, 2, 'ACCOUNT_EDIT_SUCCESS', 'Your account information have been changed.'),
(118, 3, 'ACCOUNT_EDIT_SUCCESS', 'Your account information have been changed.'),
(119, 1, 'ACCOUNT_EDIT_FAILURE', 'Echec de la modification des informations de compte.'),
(119, 2, 'ACCOUNT_EDIT_FAILURE', 'An error occured during the modification of the account information.'),
(119, 3, 'ACCOUNT_EDIT_FAILURE', 'An error occured during the modification of the account information.'),
(120, 1, 'ACCOUNT_CREATE_FAILURE', 'Echec de la création du compte.'),
(120, 2, 'ACCOUNT_CREATE_FAILURE', 'Failed to create account.'),
(120, 3, 'ACCOUNT_CREATE_FAILURE', 'Failed to create account.'),
(121, 1, 'PAYMENT_CHECK', 'Par chèque'),
(121, 2, 'PAYMENT_CHECK', 'By check'),
(121, 3, 'PAYMENT_CHECK', 'By check'),
(122, 1, 'PAYMENT_ARRIVAL', 'A l\'arrivée'),
(122, 2, 'PAYMENT_ARRIVAL', 'On arrival'),
(122, 3, 'PAYMENT_ARRIVAL', 'On arrival'),
(123, 1, 'CHOOSE_PAYMENT', 'Choisissez un moyen de paiement'),
(123, 2, 'CHOOSE_PAYMENT', 'Choose a method of payment'),
(123, 3, 'CHOOSE_PAYMENT', 'Choose a method of payment'),
(124, 1, 'PAYMENT_CREDIT_CARDS', 'Cartes de credit'),
(124, 2, 'PAYMENT_CREDIT_CARDS', 'Credit cards'),
(124, 3, 'PAYMENT_CREDIT_CARDS', 'Credit cards'),
(125, 1, 'MAX_ADULTS', 'Adultes max'),
(125, 2, 'MAX_ADULTS', 'Max adults'),
(125, 3, 'MAX_ADULTS', 'Max adults'),
(126, 1, 'MAX_CHILDREN', 'Enfants max'),
(126, 2, 'MAX_CHILDREN', 'Max children'),
(126, 3, 'MAX_CHILDREN', 'Max children'),
(127, 1, 'PAYMENT_CARDS_NOTICE', 'Cliquez sur \"Payer\" ci-dessous, vous allez être redirigé vers le site sécurisé de 2Checkout.com'),
(127, 2, 'PAYMENT_CARDS_NOTICE', 'Click on \"Check Out\" below, you will be redirected towards the secure site of 2Checkout.com'),
(127, 3, 'PAYMENT_CARDS_NOTICE', 'Click on \"Check Out\" below, you will be redirected towards the secure site of 2Checkout.com'),
(128, 1, 'COOKIES_NOTICE', 'Les cookies nous aident à fournir une meilleure expérience utilisateur. En utilisant notre site, vous acceptez l\'utilisation de cookies.'),
(128, 2, 'COOKIES_NOTICE', 'Cookies help us provide better user experience. By using our website, you agree to the use of cookies.'),
(128, 3, 'COOKIES_NOTICE', 'Cookies help us provide better user experience. By using our website, you agree to the use of cookies.'),
(129, 1, 'DURATION', 'Durée'),
(129, 2, 'DURATION', 'Duration'),
(129, 3, 'DURATION', 'Duration'),
(130, 1, 'PERSON', 'Personne'),
(130, 2, 'PERSON', 'Person'),
(130, 3, 'PERSON', 'Person'),
(131, 1, 'CHOOSE_A_DATE', 'Choisissez une date'),
(131, 2, 'CHOOSE_A_DATE', 'Choose a date'),
(131, 3, 'CHOOSE_A_DATE', 'Choose a date'),
(132, 1, 'TIMESLOT', 'Horaire'),
(132, 2, 'TIMESLOT', 'Time slot'),
(132, 3, 'TIMESLOT', 'Time slot'),
(133, 1, 'ACTIVITIES', 'Activités'),
(133, 2, 'ACTIVITIES', 'Activities'),
(133, 3, 'ACTIVITIES', 'Activities'),
(134, 1, 'DESTINATION', 'Destination'),
(134, 2, 'DESTINATION', 'Destination'),
(134, 3, 'DESTINATION', 'Destination'),
(135, 1, 'NO_HOTEL_FOUND', 'Aucun hotel trouvé'),
(135, 2, 'NO_HOTEL_FOUND', 'No hotel found'),
(135, 3, 'NO_HOTEL_FOUND', 'No hotel found'),
(136, 1, 'FOR', 'pour'),
(136, 2, 'FOR', 'for'),
(136, 3, 'FOR', 'for'),
(137, 1, 'FIND_ACTIVITIES_AND_TOURS', 'Découvrez nos activités et excursions'),
(137, 2, 'FIND_ACTIVITIES_AND_TOURS', 'Find out our activities and tours'),
(137, 3, 'FIND_ACTIVITIES_AND_TOURS', 'Find out our activities and tours'),
(138, 1, 'MINUTES', 'minute(s)'),
(138, 2, 'MINUTES', 'minute(s)'),
(138, 3, 'MINUTES', 'minute(s)'),
(139, 1, 'HOURS', 'heure(s)'),
(139, 2, 'HOURS', 'hour(s)'),
(139, 3, 'HOURS', 'hour(s)'),
(140, 1, 'DAYS', 'jour(s)'),
(140, 2, 'DAYS', 'day(s)'),
(140, 3, 'DAYS', 'day(s)'),
(141, 1, 'WEEKS', 'semaine(s)'),
(141, 2, 'WEEKS', 'week(s)'),
(141, 3, 'WEEKS', 'week(s)'),
(142, 1, 'RESULTS', 'Résultats'),
(142, 2, 'RESULTS', 'Results'),
(142, 3, 'RESULTS', 'Results'),
(143, 1, 'BOOKING_HISTORY', 'Historique des réservations'),
(143, 2, 'BOOKING_HISTORY', 'Booking history'),
(143, 3, 'BOOKING_HISTORY', 'Booking history'),
(144, 1, 'BOOKING_SUMMARY', 'Résumé de la réservation'),
(144, 2, 'BOOKING_SUMMARY', 'Booking summary'),
(144, 3, 'BOOKING_SUMMARY', 'Booking summary'),
(145, 1, 'BOOKING_DATE', 'Date de la réservations'),
(145, 2, 'BOOKING_DATE', 'Booking date'),
(145, 3, 'BOOKING_DATE', 'Booking date'),
(146, 1, 'NO_BOOKING_YET', 'Pas encore de réservation...'),
(146, 2, 'NO_BOOKING_YET', 'No booking yet...'),
(146, 3, 'NO_BOOKING_YET', 'No booking yet...'),
(147, 1, 'PAYMENT', 'Paiement'),
(147, 2, 'PAYMENT', 'Payment'),
(147, 3, 'PAYMENT', 'Payment'),
(148, 1, 'PAYMENT_DATE', 'Date du paiement'),
(148, 2, 'PAYMENT_DATE', 'Payment date'),
(148, 3, 'PAYMENT_DATE', 'Payment date'),
(149, 1, 'PAYMENT_METHOD', 'Méthode de paiement'),
(149, 2, 'PAYMENT_METHOD', 'Payment method'),
(149, 3, 'PAYMENT_METHOD', 'Payment method'),
(150, 1, 'NUM_TRANSACTION', 'N°transaction'),
(150, 2, 'NUM_TRANSACTION', 'Num. transaction'),
(150, 3, 'NUM_TRANSACTION', 'Num. transaction'),
(151, 1, 'STATUS', 'Statut'),
(151, 2, 'STATUS', 'Status'),
(151, 3, 'STATUS', 'Status'),
(152, 1, 'AWAITING', 'En attente'),
(152, 2, 'AWAITING', 'Awaiting'),
(152, 3, 'AWAITING', 'Awaiting'),
(153, 1, 'CANCELLED', 'Annulé'),
(153, 2, 'CANCELLED', 'Cancelled'),
(153, 3, 'CANCELLED', 'Cancelled'),
(154, 1, 'REJECTED_PAYMENT', 'Paiement rejeté'),
(154, 2, 'REJECTED_PAYMENT', 'Rejected payment'),
(154, 3, 'REJECTED_PAYMENT', 'Rejected payment'),
(155, 1, 'PAYED', 'Payé'),
(155, 2, 'PAYED', 'Payed'),
(155, 3, 'PAYED', 'Payed'),
(156, 1, 'INCL_TAX', 'TTC'),
(156, 2, 'INCL_TAX', 'incl. tax'),
(156, 3, 'INCL_TAX', 'incl. tax'),
(157, 1, 'TAGS', 'Tags'),
(157, 2, 'TAGS', 'Tags'),
(157, 3, 'TAGS', 'Tags'),
(158, 1, 'ARCHIVES', 'Archives'),
(158, 2, 'ARCHIVES', 'Archives'),
(158, 3, 'ARCHIVES', 'Archives'),
(162, 1, 'LOAD_MORE', 'Voir plus'),
(162, 2, 'LOAD_MORE', 'Load more'),
(162, 3, 'LOAD_MORE', 'Load more'),
(163, 1, 'DO_YOU_HAVE_A_COUPON', 'Avez-vous un code promo ?'),
(163, 2, 'DO_YOU_HAVE_A_COUPON', 'Do you have a coupon?'),
(163, 3, 'DO_YOU_HAVE_A_COUPON', 'Do you have a coupon?'),
(164, 1, 'DISCOUNT', 'Réduction'),
(164, 2, 'DISCOUNT', 'Discount'),
(164, 3, 'DISCOUNT', 'Discount'),
(165, 1, 'COUPON_CODE_SUCCESS', 'Félicitations ! Le code promo a été ajouté avec succès.'),
(165, 2, 'COUPON_CODE_SUCCESS', 'Congratulations! The coupon code has been successfully added.'),
(165, 3, 'COUPON_CODE_SUCCESS', 'Congratulations! The coupon code has been successfully added.'),
(166, 1, 'ROOMS', 'chambres'),
(166, 2, 'ROOMS', 'rooms'),
(166, 3, 'ROOMS', 'rooms'),
(167, 1, 'ADULT', 'adulte'),
(167, 2, 'ADULT', 'adult'),
(167, 3, 'ADULT', 'adult'),
(168, 1, 'CHILD', 'enfant'),
(168, 2, 'CHILD', 'child'),
(168, 3, 'CHILD', 'child'),
(169, 1, 'ACTIVITY', 'Activité'),
(169, 2, 'ACTIVITY', 'Activity'),
(169, 3, 'ACTIVITY', 'Activity'),
(170, 1, 'DATE', 'Date'),
(170, 2, 'DATE', 'Date'),
(170, 3, 'DATE', 'Date'),
(171, 1, 'QUANTITY', 'Quantité'),
(171, 2, 'QUANTITY', 'Quantity'),
(171, 3, 'QUANTITY', 'Quantity'),
(172, 1, 'SERVICE', 'Service'),
(172, 2, 'SERVICE', 'Service'),
(172, 3, 'SERVICE', 'Service'),
(173, 1, 'BOOKING_NOTICE', '<h2>Réservez sur notre site</h2><p class=\"lead mb0\">Dépêchez-vous ! Sélectionnez vos chambres, complétez votre réservation et profitez de nos packages et offres spéciales ! <br><b>Meilleur prix garanti !</b></p>'),
(173, 2, 'BOOKING_NOTICE', '<h2>Book on our website</h2><p class=\"lead mb0\">Hurry up! Select the your rooms, complete your booking and take advantage of our special offers and packages!<br><b>Best price guarantee!</b></p>'),
(173, 3, 'BOOKING_NOTICE', '<h2>Book on our website</h2><p class=\"lead mb0\">Hurry up! Select the your rooms, complete your booking and take advantage of our special offers and packages!<br><b>Best price guarantee!</b></p>'),
(174, 1, 'CONTINUE_AS_GUEST', 'Continuer sans m\'enregistrer'),
(174, 2, 'CONTINUE_AS_GUEST', 'Continue as guest'),
(174, 3, 'CONTINUE_AS_GUEST', 'Continue as guest'),
(175, 1, 'NUM_ROOMS', 'Nb chambres'),
(175, 2, 'NUM_ROOMS', 'Num rooms'),
(175, 3, 'NUM_ROOMS', 'Num rooms'),
(176, 1, 'PRIVACY_POLICY_AGREEMENT', '<small>J\'accepte que les informations recueillies par ce formulaire soient stockées dans un fichier informatisé afin de traiter ma demande.<br>Conformément au \"Réglement Général sur la Protection des Données\", vous pouvez exercer votre droit d\'accès aux données vous concernant et les faire rectifier via le formulaire de contact.</small>'),
(176, 2, 'PRIVACY_POLICY_AGREEMENT', '<small>I agree that the information collected by this form will be stored in a database in order to process my request.<br>In accordance with the \"General Data Protection Regulation\", you can exercise your right to access to your data and make them rectified via the contact form.</small>'),
(176, 3, 'PRIVACY_POLICY_AGREEMENT', '<small>I agree that the information collected by this form will be stored in a database in order to process my request.<br>In accordance with the \"General Data Protection Regulation\", you can exercise your right to access to your data and make them rectified via the contact form.</small>'),
(177, 1, 'COMPLETE_YOUR_BOOKING', 'Terminez votre réservation !'),
(177, 2, 'COMPLETE_YOUR_BOOKING', 'Complete your booking!'),
(177, 3, 'COMPLETE_YOUR_BOOKING', 'Complete your booking!');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pm_user`
--

CREATE TABLE `pm_user` (
  `id` int(11) NOT NULL,
  `firstname` varchar(100) DEFAULT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `login` varchar(50) DEFAULT NULL,
  `pass` varchar(100) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `add_date` int(11) DEFAULT NULL,
  `edit_date` int(11) DEFAULT NULL,
  `checked` int(11) DEFAULT 0,
  `fb_id` varchar(50) DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `postcode` varchar(10) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `mobile` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `token` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `pm_user`
--

INSERT INTO `pm_user` (`id`, `firstname`, `lastname`, `email`, `login`, `pass`, `type`, `add_date`, `edit_date`, `checked`, `fb_id`, `address`, `postcode`, `city`, `company`, `country`, `mobile`, `phone`, `token`) VALUES
(1, 'Administrator', '', 'najib.azfa@gmail.com', 'admin', '0192023a7bbd73250516f069df18b500', 'administrator', 1539046500, 1539046500, 1, '', '', '', '', '', '', '', '', ''),
(3, 'Tamu', '', 'tamu@gmail.com', 'tamu', '0192023a7bbd73250516f069df18b500', 'editor', 1561599243, 1561627125, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pm_widget`
--

CREATE TABLE `pm_widget` (
  `id` int(11) NOT NULL,
  `lang` int(11) NOT NULL,
  `title` varchar(250) DEFAULT NULL,
  `showtitle` int(11) DEFAULT NULL,
  `pos` varchar(20) DEFAULT NULL,
  `allpages` int(11) DEFAULT NULL,
  `pages` varchar(250) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `class` varchar(200) DEFAULT NULL,
  `checked` int(11) DEFAULT 0,
  `rank` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `pm_widget`
--

INSERT INTO `pm_widget` (`id`, `lang`, `title`, `showtitle`, `pos`, `allpages`, `pages`, `type`, `content`, `class`, `checked`, `rank`) VALUES
(1, 1, 'Qui sommes-nous ?', 1, 'footer_col_1', 1, '', '', '<p>HotelKu merupakan Hotel bintang lima yang memberikan kepuasan kepada para pelanggan dengan hunian atau tempat menginap yang membuat betah, pelayanan maksimal kepada para pelanggan kemudian fasilitas yang lengkap.</p>\r\n', NULL, 1, 1),
(1, 2, 'About us', 1, 'footer_col_1', 1, '', '', '<p>HotelKu merupakan Hotel bintang lima yang memberikan kepuasan kepada para pelanggan dengan hunian atau tempat menginap yang membuat betah dan nyaman, fasilitas yang lengkap dan pelayanan yang maksimal diberikan kepada para pelanggan </p>\r\n', NULL, 1, 1),
(1, 3, 'عنا', 1, 'footer_col_1', 1, '', '', '<p>HotelKu merupakan hotel bintang lima yang memberikan fasilitas lengkap, hunia yang nyaman dan pelayanan yang maksimal kepada para pelanggan.</p>\r\n', NULL, 1, 1),
(3, 1, 'Derniers articles', 1, 'footer_col_2', 1, '', 'latest_articles', '', '', 1, 2),
(3, 2, 'Latest articles', 1, 'footer_col_2', 1, '', 'latest_articles', '', '', 1, 2),
(3, 3, 'المقالات الأخيرة', 1, 'footer_col_2', 1, '', 'latest_articles', '', '', 1, 2),
(4, 1, 'Contactez-nous', 0, 'footer_col_3', 1, '', 'contact_informations', '', '', 1, 3),
(4, 2, 'Contact us', 0, 'footer_col_3', 1, '', 'contact_informations', '', '', 1, 3),
(4, 3, 'اتصل بنا', 0, 'footer_col_3', 1, '', 'contact_informations', '', '', 1, 3),
(5, 1, 'Footer form', 0, 'footer_col_3', 1, '', 'footer_form', '', 'footer-form mt10', 0, 4),
(5, 2, 'Footer form', 0, 'footer_col_3', 1, '', 'footer_form', '', 'footer-form mt10', 0, 4),
(5, 3, 'Footer form', 0, 'footer_col_3', 1, '', 'footer_form', '', 'footer-form mt10', 0, 4),
(6, 1, 'Blog side', 0, 'right', 0, '17', 'blog_side', '', '', 1, 5),
(6, 2, 'Blog side', 0, 'right', 0, '17', 'blog_side', '', '', 1, 5),
(6, 3, 'Blog side', 0, 'right', 0, '17', 'blog_side', '', '', 1, 5);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `pm_activity`
--
ALTER TABLE `pm_activity`
  ADD PRIMARY KEY (`id`,`lang`),
  ADD KEY `activity_lang_fkey` (`lang`);

--
-- Indeks untuk tabel `pm_activity_file`
--
ALTER TABLE `pm_activity_file`
  ADD PRIMARY KEY (`id`,`lang`),
  ADD KEY `activity_file_fkey` (`id_item`,`lang`),
  ADD KEY `activity_file_lang_fkey` (`lang`);

--
-- Indeks untuk tabel `pm_activity_session`
--
ALTER TABLE `pm_activity_session`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activity_session_fkey` (`id_activity`);

--
-- Indeks untuk tabel `pm_activity_session_hour`
--
ALTER TABLE `pm_activity_session_hour`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activity_session_hour_fkey` (`id_activity_session`);

--
-- Indeks untuk tabel `pm_article`
--
ALTER TABLE `pm_article`
  ADD PRIMARY KEY (`id`,`lang`),
  ADD KEY `article_lang_fkey` (`lang`),
  ADD KEY `article_page_fkey` (`id_page`,`lang`);

--
-- Indeks untuk tabel `pm_article_file`
--
ALTER TABLE `pm_article_file`
  ADD PRIMARY KEY (`id`,`lang`),
  ADD KEY `article_file_fkey` (`id_item`,`lang`),
  ADD KEY `article_file_lang_fkey` (`lang`);

--
-- Indeks untuk tabel `pm_booking`
--
ALTER TABLE `pm_booking`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pm_booking_activity`
--
ALTER TABLE `pm_booking_activity`
  ADD PRIMARY KEY (`id`),
  ADD KEY `booking_activity_fkey` (`id_booking`);

--
-- Indeks untuk tabel `pm_booking_room`
--
ALTER TABLE `pm_booking_room`
  ADD PRIMARY KEY (`id`),
  ADD KEY `booking_room_fkey` (`id_booking`);

--
-- Indeks untuk tabel `pm_booking_service`
--
ALTER TABLE `pm_booking_service`
  ADD PRIMARY KEY (`id`),
  ADD KEY `booking_service_fkey` (`id_booking`);

--
-- Indeks untuk tabel `pm_booking_tax`
--
ALTER TABLE `pm_booking_tax`
  ADD PRIMARY KEY (`id`),
  ADD KEY `booking_tax_fkey` (`id_booking`);

--
-- Indeks untuk tabel `pm_comment`
--
ALTER TABLE `pm_comment`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pm_country`
--
ALTER TABLE `pm_country`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pm_coupon`
--
ALTER TABLE `pm_coupon`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pm_currency`
--
ALTER TABLE `pm_currency`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pm_email_content`
--
ALTER TABLE `pm_email_content`
  ADD PRIMARY KEY (`id`,`lang`),
  ADD KEY `email_content_lang_fkey` (`lang`);

--
-- Indeks untuk tabel `pm_facility`
--
ALTER TABLE `pm_facility`
  ADD PRIMARY KEY (`id`,`lang`),
  ADD KEY `facility_lang_fkey` (`lang`);

--
-- Indeks untuk tabel `pm_facility_file`
--
ALTER TABLE `pm_facility_file`
  ADD PRIMARY KEY (`id`,`lang`),
  ADD KEY `facility_file_fkey` (`id_item`,`lang`),
  ADD KEY `facility_file_lang_fkey` (`lang`);

--
-- Indeks untuk tabel `pm_lang`
--
ALTER TABLE `pm_lang`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pm_lang_file`
--
ALTER TABLE `pm_lang_file`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lang_file_fkey` (`id_item`);

--
-- Indeks untuk tabel `pm_location`
--
ALTER TABLE `pm_location`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pm_media`
--
ALTER TABLE `pm_media`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pm_media_file`
--
ALTER TABLE `pm_media_file`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_file_fkey` (`id_item`);

--
-- Indeks untuk tabel `pm_menu`
--
ALTER TABLE `pm_menu`
  ADD PRIMARY KEY (`id`,`lang`),
  ADD KEY `menu_lang_fkey` (`lang`);

--
-- Indeks untuk tabel `pm_message`
--
ALTER TABLE `pm_message`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pm_package`
--
ALTER TABLE `pm_package`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pm_page`
--
ALTER TABLE `pm_page`
  ADD PRIMARY KEY (`id`,`lang`),
  ADD KEY `page_lang_fkey` (`lang`);

--
-- Indeks untuk tabel `pm_page_file`
--
ALTER TABLE `pm_page_file`
  ADD PRIMARY KEY (`id`,`lang`),
  ADD KEY `page_file_fkey` (`id_item`,`lang`),
  ADD KEY `page_file_lang_fkey` (`lang`);

--
-- Indeks untuk tabel `pm_rate`
--
ALTER TABLE `pm_rate`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rate_room_fkey` (`id_room`);

--
-- Indeks untuk tabel `pm_room`
--
ALTER TABLE `pm_room`
  ADD PRIMARY KEY (`id`,`lang`),
  ADD KEY `room_lang_fkey` (`lang`);

--
-- Indeks untuk tabel `pm_room_file`
--
ALTER TABLE `pm_room_file`
  ADD PRIMARY KEY (`id`,`lang`),
  ADD KEY `room_file_fkey` (`id_item`,`lang`),
  ADD KEY `room_file_lang_fkey` (`lang`);

--
-- Indeks untuk tabel `pm_room_lock`
--
ALTER TABLE `pm_room_lock`
  ADD PRIMARY KEY (`id`),
  ADD KEY `room_lock_fkey` (`id_room`);

--
-- Indeks untuk tabel `pm_service`
--
ALTER TABLE `pm_service`
  ADD PRIMARY KEY (`id`,`lang`),
  ADD KEY `service_lang_fkey` (`lang`);

--
-- Indeks untuk tabel `pm_slide`
--
ALTER TABLE `pm_slide`
  ADD PRIMARY KEY (`id`,`lang`),
  ADD KEY `slide_lang_fkey` (`lang`),
  ADD KEY `slide_page_fkey` (`id_page`,`lang`);

--
-- Indeks untuk tabel `pm_slide_file`
--
ALTER TABLE `pm_slide_file`
  ADD PRIMARY KEY (`id`,`lang`),
  ADD KEY `slide_file_fkey` (`id_item`,`lang`),
  ADD KEY `slide_file_lang_fkey` (`lang`);

--
-- Indeks untuk tabel `pm_social`
--
ALTER TABLE `pm_social`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pm_tag`
--
ALTER TABLE `pm_tag`
  ADD PRIMARY KEY (`id`,`lang`),
  ADD KEY `tag_lang_fkey` (`lang`);

--
-- Indeks untuk tabel `pm_tax`
--
ALTER TABLE `pm_tax`
  ADD PRIMARY KEY (`id`,`lang`),
  ADD KEY `tax_lang_fkey` (`lang`);

--
-- Indeks untuk tabel `pm_text`
--
ALTER TABLE `pm_text`
  ADD PRIMARY KEY (`id`,`lang`),
  ADD KEY `text_lang_fkey` (`lang`);

--
-- Indeks untuk tabel `pm_user`
--
ALTER TABLE `pm_user`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pm_widget`
--
ALTER TABLE `pm_widget`
  ADD PRIMARY KEY (`id`,`lang`),
  ADD KEY `widget_lang_fkey` (`lang`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `pm_activity`
--
ALTER TABLE `pm_activity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pm_activity_file`
--
ALTER TABLE `pm_activity_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pm_activity_session`
--
ALTER TABLE `pm_activity_session`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pm_activity_session_hour`
--
ALTER TABLE `pm_activity_session_hour`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pm_article`
--
ALTER TABLE `pm_article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `pm_article_file`
--
ALTER TABLE `pm_article_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `pm_booking`
--
ALTER TABLE `pm_booking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pm_booking_activity`
--
ALTER TABLE `pm_booking_activity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pm_booking_room`
--
ALTER TABLE `pm_booking_room`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pm_booking_service`
--
ALTER TABLE `pm_booking_service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pm_booking_tax`
--
ALTER TABLE `pm_booking_tax`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pm_comment`
--
ALTER TABLE `pm_comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pm_country`
--
ALTER TABLE `pm_country`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;

--
-- AUTO_INCREMENT untuk tabel `pm_coupon`
--
ALTER TABLE `pm_coupon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pm_currency`
--
ALTER TABLE `pm_currency`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `pm_email_content`
--
ALTER TABLE `pm_email_content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `pm_facility`
--
ALTER TABLE `pm_facility`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT untuk tabel `pm_facility_file`
--
ALTER TABLE `pm_facility_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT untuk tabel `pm_lang`
--
ALTER TABLE `pm_lang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `pm_lang_file`
--
ALTER TABLE `pm_lang_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `pm_location`
--
ALTER TABLE `pm_location`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `pm_media`
--
ALTER TABLE `pm_media`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pm_media_file`
--
ALTER TABLE `pm_media_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pm_menu`
--
ALTER TABLE `pm_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `pm_message`
--
ALTER TABLE `pm_message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pm_package`
--
ALTER TABLE `pm_package`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `pm_page`
--
ALTER TABLE `pm_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `pm_page_file`
--
ALTER TABLE `pm_page_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pm_rate`
--
ALTER TABLE `pm_rate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pm_room`
--
ALTER TABLE `pm_room`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `pm_room_file`
--
ALTER TABLE `pm_room_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `pm_room_lock`
--
ALTER TABLE `pm_room_lock`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pm_service`
--
ALTER TABLE `pm_service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `pm_slide`
--
ALTER TABLE `pm_slide`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `pm_slide_file`
--
ALTER TABLE `pm_slide_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `pm_social`
--
ALTER TABLE `pm_social`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pm_tag`
--
ALTER TABLE `pm_tag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pm_tax`
--
ALTER TABLE `pm_tax`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `pm_text`
--
ALTER TABLE `pm_text`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=178;

--
-- AUTO_INCREMENT untuk tabel `pm_user`
--
ALTER TABLE `pm_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `pm_widget`
--
ALTER TABLE `pm_widget`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `pm_activity`
--
ALTER TABLE `pm_activity`
  ADD CONSTRAINT `activity_lang_fkey` FOREIGN KEY (`lang`) REFERENCES `pm_lang` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `pm_activity_file`
--
ALTER TABLE `pm_activity_file`
  ADD CONSTRAINT `activity_file_fkey` FOREIGN KEY (`id_item`,`lang`) REFERENCES `pm_activity` (`id`, `lang`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `activity_file_lang_fkey` FOREIGN KEY (`lang`) REFERENCES `pm_lang` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `pm_activity_session`
--
ALTER TABLE `pm_activity_session`
  ADD CONSTRAINT `activity_session_fkey` FOREIGN KEY (`id_activity`) REFERENCES `pm_activity` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `pm_activity_session_hour`
--
ALTER TABLE `pm_activity_session_hour`
  ADD CONSTRAINT `activity_session_hour_fkey` FOREIGN KEY (`id_activity_session`) REFERENCES `pm_activity_session` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `pm_article`
--
ALTER TABLE `pm_article`
  ADD CONSTRAINT `article_lang_fkey` FOREIGN KEY (`lang`) REFERENCES `pm_lang` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `article_page_fkey` FOREIGN KEY (`id_page`,`lang`) REFERENCES `pm_page` (`id`, `lang`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `pm_article_file`
--
ALTER TABLE `pm_article_file`
  ADD CONSTRAINT `article_file_fkey` FOREIGN KEY (`id_item`,`lang`) REFERENCES `pm_article` (`id`, `lang`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `article_file_lang_fkey` FOREIGN KEY (`lang`) REFERENCES `pm_lang` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `pm_booking_activity`
--
ALTER TABLE `pm_booking_activity`
  ADD CONSTRAINT `booking_activity_fkey` FOREIGN KEY (`id_booking`) REFERENCES `pm_booking` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `pm_booking_room`
--
ALTER TABLE `pm_booking_room`
  ADD CONSTRAINT `booking_room_fkey` FOREIGN KEY (`id_booking`) REFERENCES `pm_booking` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `pm_booking_service`
--
ALTER TABLE `pm_booking_service`
  ADD CONSTRAINT `booking_service_fkey` FOREIGN KEY (`id_booking`) REFERENCES `pm_booking` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `pm_booking_tax`
--
ALTER TABLE `pm_booking_tax`
  ADD CONSTRAINT `booking_tax_fkey` FOREIGN KEY (`id_booking`) REFERENCES `pm_booking` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `pm_email_content`
--
ALTER TABLE `pm_email_content`
  ADD CONSTRAINT `email_content_lang_fkey` FOREIGN KEY (`lang`) REFERENCES `pm_lang` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `pm_facility`
--
ALTER TABLE `pm_facility`
  ADD CONSTRAINT `facility_lang_fkey` FOREIGN KEY (`lang`) REFERENCES `pm_lang` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `pm_facility_file`
--
ALTER TABLE `pm_facility_file`
  ADD CONSTRAINT `facility_file_fkey` FOREIGN KEY (`id_item`,`lang`) REFERENCES `pm_facility` (`id`, `lang`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `facility_file_lang_fkey` FOREIGN KEY (`lang`) REFERENCES `pm_lang` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `pm_lang_file`
--
ALTER TABLE `pm_lang_file`
  ADD CONSTRAINT `lang_file_fkey` FOREIGN KEY (`id_item`) REFERENCES `pm_lang` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `pm_media_file`
--
ALTER TABLE `pm_media_file`
  ADD CONSTRAINT `media_file_fkey` FOREIGN KEY (`id_item`) REFERENCES `pm_media` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `pm_menu`
--
ALTER TABLE `pm_menu`
  ADD CONSTRAINT `menu_lang_fkey` FOREIGN KEY (`lang`) REFERENCES `pm_lang` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `pm_page`
--
ALTER TABLE `pm_page`
  ADD CONSTRAINT `page_lang_fkey` FOREIGN KEY (`lang`) REFERENCES `pm_lang` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `pm_page_file`
--
ALTER TABLE `pm_page_file`
  ADD CONSTRAINT `page_file_fkey` FOREIGN KEY (`id_item`,`lang`) REFERENCES `pm_page` (`id`, `lang`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `page_file_lang_fkey` FOREIGN KEY (`lang`) REFERENCES `pm_lang` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `pm_rate`
--
ALTER TABLE `pm_rate`
  ADD CONSTRAINT `rate_room_fkey` FOREIGN KEY (`id_room`) REFERENCES `pm_room` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `pm_room`
--
ALTER TABLE `pm_room`
  ADD CONSTRAINT `room_lang_fkey` FOREIGN KEY (`lang`) REFERENCES `pm_lang` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `pm_room_file`
--
ALTER TABLE `pm_room_file`
  ADD CONSTRAINT `room_file_fkey` FOREIGN KEY (`id_item`,`lang`) REFERENCES `pm_room` (`id`, `lang`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `room_file_lang_fkey` FOREIGN KEY (`lang`) REFERENCES `pm_lang` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `pm_room_lock`
--
ALTER TABLE `pm_room_lock`
  ADD CONSTRAINT `room_lock_fkey` FOREIGN KEY (`id_room`) REFERENCES `pm_room` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `pm_service`
--
ALTER TABLE `pm_service`
  ADD CONSTRAINT `service_lang_fkey` FOREIGN KEY (`lang`) REFERENCES `pm_lang` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `pm_slide`
--
ALTER TABLE `pm_slide`
  ADD CONSTRAINT `slide_lang_fkey` FOREIGN KEY (`lang`) REFERENCES `pm_lang` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `slide_page_fkey` FOREIGN KEY (`id_page`,`lang`) REFERENCES `pm_page` (`id`, `lang`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `pm_slide_file`
--
ALTER TABLE `pm_slide_file`
  ADD CONSTRAINT `slide_file_fkey` FOREIGN KEY (`id_item`,`lang`) REFERENCES `pm_slide` (`id`, `lang`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `slide_file_lang_fkey` FOREIGN KEY (`lang`) REFERENCES `pm_lang` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `pm_tag`
--
ALTER TABLE `pm_tag`
  ADD CONSTRAINT `tag_lang_fkey` FOREIGN KEY (`lang`) REFERENCES `pm_lang` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `pm_tax`
--
ALTER TABLE `pm_tax`
  ADD CONSTRAINT `tax_lang_fkey` FOREIGN KEY (`lang`) REFERENCES `pm_lang` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `pm_text`
--
ALTER TABLE `pm_text`
  ADD CONSTRAINT `text_lang_fkey` FOREIGN KEY (`lang`) REFERENCES `pm_lang` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `pm_widget`
--
ALTER TABLE `pm_widget`
  ADD CONSTRAINT `widget_lang_fkey` FOREIGN KEY (`lang`) REFERENCES `pm_lang` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
--
-- Database: `ci`
--
CREATE DATABASE IF NOT EXISTS `ci` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `ci`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `mobil`
--

CREATE TABLE `mobil` (
  `kdmobil` char(5) NOT NULL,
  `jenis` char(10) NOT NULL,
  `tahun` char(4) NOT NULL,
  `harga` int(8) NOT NULL,
  `nopol` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mobil`
--

INSERT INTO `mobil` (`kdmobil`, `jenis`, `tahun`, `harga`, `nopol`) VALUES
('AVP01', 'AVP', '2009', 35000000, 'F 1234 KS'),
('SDH01', 'SEDAN', '2011', 30000000, 'F 1234 VB'),
('SDS01', 'SEDAN', '2003', 20000000, 'D 1234 MX');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penyewa`
--

CREATE TABLE `penyewa` (
  `nopen` char(5) NOT NULL,
  `nama` char(20) NOT NULL,
  `telp` char(15) NOT NULL,
  `alamat` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `penyewa`
--

INSERT INTO `penyewa` (`nopen`, `nama`, `telp`, `alamat`) VALUES
('P0001', 'NAHIYAH', '77886293', 'DEPOK'),
('P0002', 'ZAHRAH', '98688181', 'JAKARTA'),
('P0003', 'SAFITRI', '45678888', 'DEPOK');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sewa`
--

CREATE TABLE `sewa` (
  `nokw` char(5) NOT NULL,
  `tglsewa` date NOT NULL,
  `kdmobil` char(5) NOT NULL,
  `nopen` char(5) NOT NULL,
  `lama` int(11) NOT NULL,
  `bayar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `sewa`
--

INSERT INTO `sewa` (`nokw`, `tglsewa`, `kdmobil`, `nopen`, `lama`, `bayar`) VALUES
('KW001', '2010-03-12', 'SDH01', 'P0001', 3, 900000),
('KW002', '2010-03-16', 'AVP01', 'P0001', 2, 800000),
('KW003', '2010-05-03', 'SDS01', 'P0003', 2, 700000);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `mobil`
--
ALTER TABLE `mobil`
  ADD PRIMARY KEY (`kdmobil`);

--
-- Indeks untuk tabel `penyewa`
--
ALTER TABLE `penyewa`
  ADD PRIMARY KEY (`nopen`);

--
-- Indeks untuk tabel `sewa`
--
ALTER TABLE `sewa`
  ADD PRIMARY KEY (`nokw`);
--
-- Database: `dbmahasiswa`
--
CREATE DATABASE IF NOT EXISTS `dbmahasiswa` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `dbmahasiswa`;
--
-- Database: `db_admin`
--
CREATE DATABASE IF NOT EXISTS `db_admin` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_admin`;
--
-- Database: `db_hotel`
--
CREATE DATABASE IF NOT EXISTS `db_hotel` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_hotel`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id` int(11) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(256) NOT NULL,
  `img` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `nama`, `username`, `password`, `img`) VALUES
(1, 'Administrator', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'profile.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_hotel`
--

CREATE TABLE `tbl_hotel` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `deskripsi` varchar(500) NOT NULL,
  `img` varchar(20) NOT NULL,
  `harga` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_hotel`
--

INSERT INTO `tbl_hotel` (`id`, `nama`, `deskripsi`, `img`, `harga`) VALUES
(2, 'Premiere Hotel Tegal', 'Terletak di Tegal, kurang dari 1 km dari Pantai Alam Indah, Premiere Hotel Tegal menyediakan akomodasi dengan restoran, parkir pribadi gratis, bar, dan lounge bersama. Hotel bintang 3 ini memiliki taman serta kamar-kamar ber-AC dengan Wi-Fi gratis dan kamar mandi pribadi.', 'b1.jpg', '100000'),
(3, 'OYO 2436 Hotel Kencana', 'Terletak di Tegal, Jawa Tengah, OYO 2436 Hotel Kencana berjarak 2,2 km dari Pantai Alam Indah. Semua kamar memiliki TV kabel dan kamar mandi pribadi.', 'c1.jpg', '150000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_komentar`
--

CREATE TABLE `tbl_komentar` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `komentar` varchar(500) NOT NULL,
  `tgl` date NOT NULL,
  `id_hotel` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(256) NOT NULL,
  `img` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `nama`, `username`, `password`, `img`) VALUES
(9, 'FajarTzy', 'admin', 'admin', '');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_hotel`
--
ALTER TABLE `tbl_hotel`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_komentar`
--
ALTER TABLE `tbl_komentar`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tbl_hotel`
--
ALTER TABLE `tbl_hotel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `tbl_komentar`
--
ALTER TABLE `tbl_komentar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- Database: `db_umkm`
--
CREATE DATABASE IF NOT EXISTS `db_umkm` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_umkm`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_data`
--

CREATE TABLE `tb_data` (
  `NIK` int(16) NOT NULL,
  `Pemilik` varchar(50) NOT NULL,
  `Bidang_Usaha` varchar(15) NOT NULL,
  `Jumlah_Usaha` varchar(10) NOT NULL,
  `Alamat` varchar(100) NOT NULL,
  `Pendapatan_Perbulan` int(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_data`
--

INSERT INTO `tb_data` (`NIK`, `Pemilik`, `Bidang_Usaha`, `Jumlah_Usaha`, `Alamat`, `Pendapatan_Perbulan`) VALUES
(973625, 'C.Ronaldo', 'Kecantikan', '5', 'JL. Galaxy rt.01/06 Kelurahan arab, Kec.Manchester Timur, Kota Manchester', 12000000),
(2674398, 'Jesno Limit', 'Jasa Kebersihan', '1', 'JL. Galaxy rt.01/06 Kelurahan Kejambon, Kec.Tegal Timur, Kota Tegal', 10000000),
(5262382, 'izul', 'Kuliner', '1', 'jl.nanas', 100000),
(9895227, 'Fajar Sidiq', 'Otomotif', '2', 'JL. Arab rt.01/06 Kelurahan arab, Kec.Paris Timur, Kota Paris', 11000000),
(72873872, 'tia', 'Tour & Travel', '1', 'JL. Poltek rt.01/06 Kelurahan arab, Kec.Madrid Timur, Kota ,Madrid', 15000000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_user`
--

CREATE TABLE `tb_user` (
  `username` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_user`
--

INSERT INTO `tb_user` (`username`, `password`) VALUES
('admin', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_data`
--
ALTER TABLE `tb_data`
  ADD PRIMARY KEY (`NIK`);
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

--
-- Dumping data untuk tabel `pma__export_templates`
--

INSERT INTO `pma__export_templates` (`id`, `username`, `export_type`, `template_name`, `template_data`) VALUES
(1, 'root', 'server', 'uts', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"db_select[]\":[\"admin_page\",\"booking\",\"ci\",\"dbmahasiswa\",\"db_admin\",\"db_hotel\",\"db_umkm\",\"phpmyadmin\",\"sisfohotel\",\"tb_user\",\"test\",\"user\",\"uts\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@SERVER@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Struktur tabel @TABLE@\",\"latex_structure_continued_caption\":\"Struktur tabel @TABLE@ (dilanjutkan)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Isi tabel @TABLE@\",\"latex_data_continued_caption\":\"Isi tabel @TABLE@ (dilanjutkan)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"yaml_structure_or_data\":\"data\",\"\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_drop_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_view_current_user\":null,\"sql_or_replace_view\":null,\"sql_procedure_function\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data untuk tabel `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"uts\",\"table\":\"surat\"},{\"db\":\"admin_page\",\"table\":\"tb_admin\"},{\"db\":\"db_hotel\",\"table\":\"tbl_hotel\"},{\"db\":\"sisfohotel\",\"table\":\"login\"},{\"db\":\"sisfohotel\",\"table\":\"kontak\"},{\"db\":\"sisfohotel\",\"table\":\"tamu\"},{\"db\":\"db_hotel\",\"table\":\"tbl_user\"},{\"db\":\"db_hotel\",\"table\":\"tbl_admin\"},{\"db\":\"db_umkm\",\"table\":\"tb_data\"},{\"db\":\"db_umkm\",\"table\":\"tb_user\"}]');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data untuk tabel `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2022-05-19 04:31:44', '{\"Console\\/Mode\":\"collapse\",\"lang\":\"id\"}');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indeks untuk tabel `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indeks untuk tabel `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indeks untuk tabel `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indeks untuk tabel `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indeks untuk tabel `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indeks untuk tabel `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indeks untuk tabel `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indeks untuk tabel `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indeks untuk tabel `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indeks untuk tabel `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indeks untuk tabel `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indeks untuk tabel `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indeks untuk tabel `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `sisfohotel`
--
CREATE DATABASE IF NOT EXISTS `sisfohotel` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `sisfohotel`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kamar`
--

CREATE TABLE `kamar` (
  `idkamar` varchar(10) NOT NULL,
  `tipe` varchar(50) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `gambar` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kamar`
--

INSERT INTO `kamar` (`idkamar`, `tipe`, `jumlah`, `harga`, `gambar`) VALUES
('001', 'Superior', 7, 410000, 'Standard.jpg'),
('002', 'Deluxe', 45, 450000, 'Superior.jpg'),
('003', 'Junior Suite', 4, 700000, 'Deluxe.jpg'),
('004', 'Executive', 2, 1200000, 'Junior-Suite.jpg'),
('123', 'Superior', 3, 100, '4banner2.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kontak`
--

CREATE TABLE `kontak` (
  `idkontak` int(11) NOT NULL,
  `idtamu` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `pesanuser` text NOT NULL,
  `pesanadmin` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kontak`
--

INSERT INTO `kontak` (`idkontak`, `idtamu`, `username`, `pesanuser`, `pesanadmin`) VALUES
(48, 10, 'ali', 'Halooo....', ''),
(49, 10, 'ali', '', 'Yoooo'),
(50, 11, 'inka', 'Tesssss...', ''),
(51, 16, 'admin', 'mmmk', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `login`
--

CREATE TABLE `login` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `login`
--

INSERT INTO `login` (`username`, `password`) VALUES
('admin', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembayaran`
--

CREATE TABLE `pembayaran` (
  `idpesan` varchar(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `bank` varchar(10) NOT NULL,
  `norek` varchar(15) NOT NULL,
  `namarek` varchar(50) NOT NULL,
  `gambar` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pembayaran`
--

INSERT INTO `pembayaran` (`idpesan`, `nama`, `jumlah`, `bank`, `norek`, `namarek`, `gambar`) VALUES
('37', 'Aljumad', 450000, 'BCA', '1234567890', 'ALJUMAD', '2.jpg'),
('39', 'Inka Ardya Indrawan', 1400000, 'Mandiri', '33344455566666', 'Inka', '5.jpg'),
('40', 'Muh. Fahrizal', 1800000, 'BNI', '677777777777777', 'Fahri', '7.jpg'),
('42', 'Muh. Ade Furkan', 1350000, 'BRI', '493111122233344', 'Furkan', '5.jpg'),
('45', 'fajar', 28700000, 'BNI', '2222-22-222222-', 'fajar', 'itachi.gif'),
('46', 'fajar', 820000, 'BNI', '0000-00-000000-', 'fajar', 'itachi.gif'),
('47', 'fajar', 9000000, 'BNI', '0000-00-000000-', 'fajar', 'itachi.gif'),
('49', 'fajar', 2700000, 'BRI', '0000-00-000000-', 'fajar', '4banner.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pemesanan`
--

CREATE TABLE `pemesanan` (
  `idpesan` int(11) NOT NULL,
  `tglpesan` datetime NOT NULL,
  `batasbayar` datetime NOT NULL,
  `idkamar` varchar(15) NOT NULL,
  `tipe` varchar(20) NOT NULL,
  `harga` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `idtamu` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` varchar(500) NOT NULL,
  `telepon` varchar(15) NOT NULL,
  `tglmasuk` date NOT NULL,
  `tglkeluar` date NOT NULL,
  `lamahari` int(11) NOT NULL DEFAULT 0,
  `totalbayar` int(11) NOT NULL DEFAULT 0,
  `status` varchar(50) NOT NULL DEFAULT 'Pending...'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pemesanan`
--

INSERT INTO `pemesanan` (`idpesan`, `tglpesan`, `batasbayar`, `idkamar`, `tipe`, `harga`, `jumlah`, `idtamu`, `nama`, `alamat`, `telepon`, `tglmasuk`, `tglkeluar`, `lamahari`, `totalbayar`, `status`) VALUES
(36, '2018-05-22 18:26:42', '2018-05-22 23:26:42', '001', 'Superior', 410000, 1, 10, 'Aljumad', 'Jl. qwerty', '081222333444', '2018-05-22', '2018-05-23', 1, 410000, 'Dibatalkan'),
(37, '2018-05-22 18:27:45', '2018-05-23 23:27:45', '002', 'Deluxe', 450000, 1, 10, 'Aljumad', 'Jl. qwerty', '081222333444', '2018-05-22', '2018-05-23', 1, 450000, 'Dibatalkan'),
(38, '2018-05-22 22:03:17', '2018-05-23 03:03:17', '002', 'Deluxe', 450000, 1, 11, 'Inka Ardya Indrawan', 'Jl. abcd', '088111222333', '2018-05-22', '2018-05-23', 1, 450000, 'Dibatalkan'),
(39, '2018-05-22 22:04:53', '2018-05-23 03:04:53', '003', 'Junior Suite', 700000, 1, 11, 'Inka Ardya Indrawan', 'Jl. abcd', '088111222333', '2018-05-23', '2018-05-25', 2, 1400000, 'Dibatalkan'),
(40, '2018-05-22 22:13:51', '2018-05-23 03:13:51', '002', 'Deluxe', 450000, 2, 12, 'Muh. Fahrizal', 'Jl....', '1234567777', '2018-05-22', '2018-05-24', 2, 1800000, 'Dibatalkan'),
(41, '2018-05-22 22:24:20', '2018-05-23 03:24:20', '002', 'Deluxe', 450000, 1, 12, 'Muh. Fahrizal', 'Jl....', '1234567777', '2018-05-21', '2018-05-22', 1, 450000, 'Dibatalkan'),
(42, '2018-05-22 22:29:27', '2018-05-23 03:29:27', '002', 'Deluxe', 450000, 1, 13, 'Muh. Ade Furkan', 'Jlll', '088777888999', '2018-05-22', '2018-05-25', 3, 1350000, 'Berhasil'),
(43, '2018-05-23 10:19:17', '2018-05-23 15:19:17', '002', 'Deluxe', 450000, 2, 12, 'Muh. Fahrizal', 'Jl....', '1234567777', '2018-05-23', '2018-05-25', 2, 1800000, 'Berhasil'),
(44, '2018-07-14 14:19:36', '2018-07-14 19:19:36', '002', 'Deluxe', 450000, 1, 10, 'Aljumad', 'Jl. qwerty', '081222333444', '2018-07-14', '2018-07-16', 2, 900000, 'Berhasil'),
(45, '2022-01-02 01:15:02', '2022-01-02 06:15:02', '001', 'Superior', 410000, 5, 14, 'fajar', 'arab', '0857623456', '2022-01-03', '2022-01-17', 14, 28700000, 'Dibatalkan'),
(46, '2022-01-02 16:01:25', '2022-01-02 21:01:25', '001', 'Superior', 410000, 2, 14, 'fajar', 'arab', '0857623456', '2022-01-03', '2022-01-04', 1, 820000, 'Dibatalkan'),
(47, '2022-01-02 19:35:57', '2022-01-03 00:35:57', '002', 'Deluxe', 450000, 4, 14, 'fajar', 'arab', '0857623456', '2022-01-25', '2022-02-02', 5, 9000000, 'Dibatalkan'),
(48, '2022-01-03 13:36:39', '2022-01-03 18:36:39', '001', 'Superior', 410000, 0, 14, 'fajar', 'arab', '0857623456', '2022-01-07', '2022-01-11', 4, 0, 'Berhasil'),
(49, '2022-01-03 14:45:43', '2022-01-03 19:45:43', '002', 'Deluxe', 450000, 2, 14, 'fajar', 'arab', '0857623456', '2022-01-02', '2022-01-05', 3, 2700000, 'Berhasil');

-- --------------------------------------------------------

--
-- Struktur dari tabel `stokkamar`
--

CREATE TABLE `stokkamar` (
  `idkamar` varchar(20) NOT NULL,
  `tipe` varchar(50) NOT NULL,
  `stok` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `stokkamar`
--

INSERT INTO `stokkamar` (`idkamar`, `tipe`, `stok`) VALUES
('001', 'Superior', 0),
('002', 'Deluxe', 36),
('003', 'Junior Suite', 4),
('004', 'Executive', 2),
('123', 'Superior', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tamu`
--

CREATE TABLE `tamu` (
  `idtamu` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` varchar(150) NOT NULL,
  `telepon` varchar(15) NOT NULL,
  `password` varchar(50) NOT NULL,
  `foto` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tamu`
--

INSERT INTO `tamu` (`idtamu`, `username`, `email`, `nama`, `alamat`, `telepon`, `password`, `foto`) VALUES
(10, 'ali', 'ali@gmail.com', 'Aljumad', 'Jl. qwerty', '081222333444', '202cb962ac59075b964b07152d234b70', 'favicon.png'),
(11, 'inka', 'inka@gmail.com', 'Inka Ardya Indrawan', 'Jl. abcd', '088111222333', '202cb962ac59075b964b07152d234b70', ''),
(12, 'fahri', 'fahri@gmail.com', 'Muh. Fahrizal', 'Jl....', '1234567777', '202cb962ac59075b964b07152d234b70', ''),
(13, 'furkan', 'furkan@gmail.com', 'Muh. Ade Furkan', 'Jlll', '088777888999', '202cb962ac59075b964b07152d234b70', ''),
(14, 'admin', 'fajartuwex@yahoo.com', 'fajar', 'arab', '0857623456', 'a01610228fe998f515a72dd730294d87', 'itachi.gif'),
(15, 'fajarfc27@gmail.com', 'fajarfc27@gmail.com', 'fajar', 'sutaprana', '0857623456', '3fbeeb677ae00d613a7018903eaa093b', ''),
(16, 'admin', 'fajarfc27@gmail.com', 'fajar', 'arab', '0857623456', '21232f297a57a5a743894a0e4a801fc3', '');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `kamar`
--
ALTER TABLE `kamar`
  ADD PRIMARY KEY (`idkamar`);

--
-- Indeks untuk tabel `kontak`
--
ALTER TABLE `kontak`
  ADD PRIMARY KEY (`idkontak`);

--
-- Indeks untuk tabel `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`idpesan`);

--
-- Indeks untuk tabel `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD PRIMARY KEY (`idpesan`);

--
-- Indeks untuk tabel `stokkamar`
--
ALTER TABLE `stokkamar`
  ADD PRIMARY KEY (`idkamar`);

--
-- Indeks untuk tabel `tamu`
--
ALTER TABLE `tamu`
  ADD PRIMARY KEY (`idtamu`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `kontak`
--
ALTER TABLE `kontak`
  MODIFY `idkontak` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT untuk tabel `pemesanan`
--
ALTER TABLE `pemesanan`
  MODIFY `idpesan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT untuk tabel `tamu`
--
ALTER TABLE `tamu`
  MODIFY `idtamu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- Database: `tb_user`
--
CREATE DATABASE IF NOT EXISTS `tb_user` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `tb_user`;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Database: `user`
--
CREATE DATABASE IF NOT EXISTS `user` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `user`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `usia` int(11) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `nama`, `alamat`, `usia`, `email`) VALUES
(1, 'Hakko', 'CIkarang - Bekasi', 27, 'hakko@niqoweb.com'),
(3, 'blues', 'Cikarang - Bekasi', 30, 'blues@niqoweb.com');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Database: `uts`
--
CREATE DATABASE IF NOT EXISTS `uts` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `uts`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `surat`
--

CREATE TABLE `surat` (
  `id` int(11) NOT NULL,
  `nomor` int(11) NOT NULL,
  `tanggal` varchar(20) NOT NULL,
  `judul` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `surat`
--

INSERT INTO `surat` (`id`, `nomor`, `tanggal`, `judul`) VALUES
(1, 1209102910, '01 Januari 2022', 'Separatisme Warga Margasari'),
(2, 2147483647, '29 April 2020', 'ALKSJLSaSHlas');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `surat`
--
ALTER TABLE `surat`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `surat`
--
ALTER TABLE `surat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
