-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 16 Tem 2024, 06:49:40
-- Sunucu sürümü: 10.4.32-MariaDB
-- PHP Sürümü: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `kardes_web`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sliders`
--

CREATE TABLE `sliders` (
  `slider_id` int(10) UNSIGNED NOT NULL,
  `slider_img` varchar(255) NOT NULL,
  `slider_title` varchar(255) DEFAULT NULL,
  `slider_subtitle` varchar(255) DEFAULT NULL,
  `slider_btn` varchar(255) DEFAULT NULL,
  `slider_url` varchar(255) DEFAULT NULL,
  `contact_modal` enum('0','1') DEFAULT '0',
  `date_created` datetime DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `sliders`
--

INSERT INTO `sliders` (`slider_id`, `slider_img`, `slider_title`, `slider_subtitle`, `slider_btn`, `slider_url`, `contact_modal`, `date_created`, `date_updated`) VALUES
(1, 'natural-gas-863229_1280.jpg', 'Zemin Etütleri', 'Güvenli ve Dayanıklı Yapılar İçin', 'Detaylı Bilgi Al', 'http://www.kardessondajcilik.com.tr/', '0', '2024-07-13 12:55:24', NULL),
(2, 'natural-gas-863229_1280.jpg', 'Su Etütleri', 'Temiz ve Güvenli Su Kaynakları', 'Hizmetlerimizi İnceleyin', NULL, '0', '2024-07-13 12:57:10', NULL),
(3, 'natural-gas-863229_1280.jpg', 'Heyelan Etütleri', 'Risk Analizleri ve Önlemler', 'Daha Fazla Bilgi', NULL, '0', '2024-07-13 12:57:10', NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

CREATE TABLE `users` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `user_firstname` varchar(60) NOT NULL,
  `user_lastname` varchar(60) NOT NULL,
  `user_email` varchar(250) NOT NULL,
  `user_password` varchar(60) NOT NULL,
  `user_phone` varchar(20) NOT NULL,
  `user_img` varchar(60) DEFAULT 'user.jpg',
  `last_session` datetime DEFAULT NULL,
  `session_token` varchar(150) DEFAULT NULL,
  `status` enum('0','1') DEFAULT '1',
  `date_created` datetime DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL,
  `date_deleted` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`user_id`, `user_firstname`, `user_lastname`, `user_email`, `user_password`, `user_phone`, `user_img`, `last_session`, `session_token`, `status`, `date_created`, `date_updated`, `date_deleted`) VALUES
(1, 'Fahreddin', 'San', 'admin@admin.com', 'f6a51c155d95861c35febb700cb661b3', '+90 (545) 511 68 03', 'user.jpg', NULL, NULL, '1', '2024-07-14 12:40:20', NULL, NULL);

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`slider_id`),
  ADD KEY `slider_img` (`slider_img`),
  ADD KEY `slider_title` (`slider_title`),
  ADD KEY `slider_subtitle` (`slider_subtitle`),
  ADD KEY `date_created` (`date_created`);

--
-- Tablo için indeksler `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_email` (`user_email`),
  ADD KEY `date_created` (`date_created`),
  ADD KEY `date_deleted` (`date_deleted`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `sliders`
--
ALTER TABLE `sliders`
  MODIFY `slider_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
