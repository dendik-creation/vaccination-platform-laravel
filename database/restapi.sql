-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 17 Agu 2023 pada 16.41
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `restapi`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `consultations`
--

CREATE TABLE `consultations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `society_id` bigint(20) UNSIGNED NOT NULL,
  `doctor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status` enum('accepted','declined','pending') NOT NULL DEFAULT 'pending',
  `disease_history` text DEFAULT NULL,
  `current_symptoms` text DEFAULT NULL,
  `doctor_notes` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `consultations`
--

INSERT INTO `consultations` (`id`, `society_id`, `doctor_id`, `status`, `disease_history`, `current_symptoms`, `doctor_notes`) VALUES
(1, 1, 2, 'pending', 'High Sports Activity', 'Flu, Cough', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `medicals`
--

CREATE TABLE `medicals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `spot_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role` enum('officer','doctor') NOT NULL DEFAULT 'officer',
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `medicals`
--

INSERT INTO `medicals` (`id`, `spot_id`, `user_id`, `role`, `name`) VALUES
(1, 1, 1, 'doctor', 'Dr. Kamila Wibisono'),
(2, 1, 2, 'doctor', 'Dr. Maya Kusmawati'),
(3, 1, 3, 'doctor', 'Dr. Gaduh Prasetyo'),
(4, 1, 4, 'officer', 'Indra Usamah'),
(5, 1, 5, 'officer', 'Kalim Yulianti'),
(6, 2, 6, 'doctor', 'Dr. Eva Mandasari'),
(7, 2, 7, 'doctor', 'Dr. Jatmiko Handayani'),
(8, 2, 8, 'doctor', 'Dr. Ratna Riyanti'),
(9, 2, 9, 'officer', 'Ayu Iswahyudi'),
(10, 2, 10, 'officer', 'Azalea Mulyani'),
(11, 3, 11, 'doctor', 'Dr. Hesti Andriani'),
(12, 3, 12, 'doctor', 'Dr. Kusuma Nasyidah'),
(13, 3, 13, 'doctor', 'Dr. Gaman Sihotang'),
(14, 3, 14, 'officer', 'Bella Habibi'),
(15, 3, 15, 'officer', 'Titin Agustina'),
(16, 4, 16, 'doctor', 'Dr. Ami Kurniawan'),
(17, 4, 17, 'doctor', 'Dr. Hasta Riyanti'),
(18, 4, 18, 'doctor', 'Dr. Laila Hassanah'),
(19, 4, 19, 'officer', 'Martana Hakim'),
(20, 4, 20, 'officer', 'Aurora Siregar'),
(21, 5, 21, 'doctor', 'Dr. Tina Prastuti'),
(22, 5, 22, 'doctor', 'Dr. Farhunnisa Widiastuti'),
(23, 5, 23, 'doctor', 'Dr. Olga Hartati'),
(24, 5, 24, 'officer', 'Tira Purwanti'),
(25, 5, 25, 'officer', 'Darmanto Nuraini'),
(26, 6, 26, 'doctor', 'Dr. Okto Pradana'),
(27, 6, 27, 'doctor', 'Dr. Dian Hariyah'),
(28, 6, 28, 'doctor', 'Dr. Ganda Gunawan'),
(29, 6, 29, 'officer', 'Najam Rajata'),
(30, 6, 30, 'officer', 'Hani Maulana'),
(31, 7, 31, 'doctor', 'Dr. Galak Uyainah'),
(32, 7, 32, 'doctor', 'Dr. Eka Suartini'),
(33, 7, 33, 'doctor', 'Dr. Asmianto Kusumo'),
(34, 7, 34, 'officer', 'Prayitna Yuniar'),
(35, 7, 35, 'officer', 'Banawi Prastuti'),
(36, 8, 36, 'doctor', 'Dr. Kania Maulana'),
(37, 8, 37, 'doctor', 'Dr. Salwa Mansur'),
(38, 8, 38, 'doctor', 'Dr. Dagel Puspita'),
(39, 8, 39, 'officer', 'Jamal Rahimah'),
(40, 8, 40, 'officer', 'Ami Prastuti'),
(41, 9, 41, 'doctor', 'Dr. Puput Suryatmi'),
(42, 9, 42, 'doctor', 'Dr. Hani Uyainah'),
(43, 9, 43, 'doctor', 'Dr. Aditya Kusmawati'),
(44, 9, 44, 'officer', 'Agnes Permadi'),
(45, 9, 45, 'officer', 'Edison Susanti'),
(46, 10, 46, 'doctor', 'Dr. Winda Pertiwi'),
(47, 10, 47, 'doctor', 'Dr. Emil Nuraini'),
(48, 10, 48, 'doctor', 'Dr. Raden Sinaga'),
(49, 10, 49, 'officer', 'Sadina Nurdiyanti'),
(50, 10, 50, 'officer', 'Jessica Habibi'),
(51, 11, 51, 'doctor', 'Dr. Maya Napitupulu'),
(52, 11, 52, 'doctor', 'Dr. Nurul Utama'),
(53, 11, 53, 'doctor', 'Dr. Asmianto Ardianto'),
(54, 11, 54, 'officer', 'Cawisono Wulandari'),
(55, 11, 55, 'officer', 'Candrakanta Palastri'),
(56, 12, 56, 'doctor', 'Dr. Uda Sitorus'),
(57, 12, 57, 'doctor', 'Dr. Paiman Zulaika'),
(58, 12, 58, 'doctor', 'Dr. Eko Putra'),
(59, 12, 59, 'officer', 'Mariadi Samosir'),
(60, 12, 60, 'officer', 'Chandra Januar'),
(61, 13, 61, 'doctor', 'Dr. Padma Hariyah'),
(62, 13, 62, 'doctor', 'Dr. Taufik Uyainah'),
(63, 13, 63, 'doctor', 'Dr. Maria Laksmiwati'),
(64, 13, 64, 'officer', 'Harjo Tamba'),
(65, 13, 65, 'officer', 'Vanesa Palastri'),
(66, 14, 66, 'doctor', 'Dr. Diah Mulyani'),
(67, 14, 67, 'doctor', 'Dr. Syahrini Farida'),
(68, 14, 68, 'doctor', 'Dr. Fitria Winarsih'),
(69, 14, 69, 'officer', 'Clara Pratiwi'),
(70, 14, 70, 'officer', 'Dian Habibi'),
(71, 15, 71, 'doctor', 'Dr. Aurora Wulandari'),
(72, 15, 72, 'doctor', 'Dr. Safina Hassanah'),
(73, 15, 73, 'doctor', 'Dr. Cinthia Adriansyah'),
(74, 15, 74, 'officer', 'Wadi Prakasa'),
(75, 15, 75, 'officer', 'Parman Namaga');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(3, '2021_10_21_133122_create_regionals_table', 1),
(4, '2021_10_21_133148_create_spots_table', 1),
(5, '2021_10_21_133201_create_societies_table', 1),
(6, '2021_10_21_133223_create_vaccines_table', 1),
(7, '2021_10_21_133229_create_spot_vaccines_table', 1),
(8, '2021_10_21_133242_create_medicals_table', 1),
(9, '2021_10_21_133254_create_vaccinations_table', 1),
(10, '2021_10_21_144953_create_consultations_table', 1),
(11, '2014_10_12_100000_create_password_resets_table', 2),
(12, '2019_08_19_000000_create_failed_jobs_table', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(80, 'App\\Models\\Society', 1, '20210001', 'ca7a1d991765bb8189a8b3e516d692800f7e3e77fff594a712fc254b48e27723', '[\"*\"]', '2023-08-17 07:41:15', '2023-08-17 07:40:33', '2023-08-17 07:41:15');

-- --------------------------------------------------------

--
-- Struktur dari tabel `regionals`
--

CREATE TABLE `regionals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `province` varchar(255) NOT NULL,
  `district` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `regionals`
--

INSERT INTO `regionals` (`id`, `province`, `district`) VALUES
(1, 'DKI Jakarta', 'Central Jakarta'),
(2, 'DKI Jakarta', 'South Jakarta'),
(3, 'West Java', 'Bandung');

-- --------------------------------------------------------

--
-- Struktur dari tabel `societies`
--

CREATE TABLE `societies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_card_number` char(8) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `born_date` date NOT NULL,
  `gender` enum('male','female') NOT NULL,
  `address` text NOT NULL,
  `regional_id` bigint(20) UNSIGNED NOT NULL,
  `login_tokens` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `societies`
--

INSERT INTO `societies` (`id`, `id_card_number`, `password`, `name`, `born_date`, `gender`, `address`, `regional_id`, `login_tokens`) VALUES
(1, '20210001', '121212', 'Omar Gunawan', '1990-04-18', 'male', 'Jln. Baranang Siang No. 479, DKI Jakarta', 1, NULL),
(2, '20210002', '121212', 'Nilam Sinaga', '1998-09-11', 'female', 'Gg. Sukajadi No. 26, DKI Jakarta', 1, NULL),
(3, '20210003', '121212', 'Rosman Lailasari', '1983-02-12', 'male', 'Jln. Moch. Ramdan No. 242, DKI Jakarta', 1, NULL),
(4, '20210004', '121212', 'Ifa Adriansyah', '1993-05-17', 'female', 'Gg. Setia Budi No. 215, DKI Jakarta', 1, NULL),
(5, '20210005', '121212', 'Sakura Susanti', '1973-11-05', 'male', 'Kpg. B.Agam 1 No. 729, DKI Jakarta', 1, NULL),
(6, '20210006', '121212', 'Jail Utama', '2001-12-28', 'male', 'Kpg. Cikutra Timur No. 57, DKI Jakarta', 1, NULL),
(7, '20210007', '121212', 'Gawati Wibowo', '1971-08-23', 'male', 'Kpg. Bara No. 346, DKI Jakarta', 1, NULL),
(8, '20210008', '121212', 'Pia Rajata', '1976-08-04', 'male', 'Kpg. Yohanes No. 445, DKI Jakarta', 1, NULL),
(9, '20210009', '121212', 'Darmaji Suartini', '1999-10-05', 'male', 'Gg. Kusmanto No. 622, DKI Jakarta', 1, NULL),
(10, '20210010', '121212', 'Kiandra Tamba', '1988-05-31', 'male', 'Ki. Sutarto No. 66, DKI Jakarta', 1, NULL),
(11, '20210011', '121212', 'Manah Thamrin', '1989-06-20', 'female', 'Jln. Baung No. 871, DKI Jakarta', 1, NULL),
(12, '20210012', '121212', 'Banara Ardianto', '1978-10-27', 'male', 'Ki. Yos Sudarso No. 411, DKI Jakarta', 1, NULL),
(13, '20210013', '121212', 'Anggabaya Mustofa', '1979-05-11', 'female', 'Psr. Pacuan Kuda No. 351, DKI Jakarta', 1, NULL),
(14, '20210014', '121212', 'Emong Purnawati', '1979-07-15', 'male', 'Jln. Jayawijaya No. 141, DKI Jakarta', 1, NULL),
(15, '20210015', '121212', 'Nardi Pertiwi', '1981-05-14', 'male', 'Psr. Barasak No. 554, DKI Jakarta', 1, NULL),
(16, '20210016', '121212', 'Ina Nasyiah', '1971-05-21', 'female', 'Ds. Suryo No. 100, DKI Jakarta', 2, NULL),
(17, '20210017', '121212', 'Jinawi Wastuti', '1994-06-18', 'male', 'Ki. Sugiono No. 918, DKI Jakarta', 2, NULL),
(18, '20210018', '121212', 'Marsudi Utama', '1979-06-04', 'female', 'Kpg. Cikapayang No. 229, DKI Jakarta', 2, NULL),
(19, '20210019', '121212', 'Ilsa Gunarto', '1992-06-11', 'female', 'Gg. Baing No. 871, DKI Jakarta', 2, NULL),
(20, '20210020', '121212', 'Hani Pratiwi', '1990-07-10', 'male', 'Dk. Yap Tjwan Bing No. 528, DKI Jakarta', 2, NULL),
(21, '20210021', '121212', 'Najwa Pratiwi', '1996-11-05', 'male', 'Kpg. Raden No. 688, DKI Jakarta', 2, NULL),
(22, '20210022', '121212', 'Samiah Haryanto', '1985-10-26', 'male', 'Gg. Juanda No. 863, DKI Jakarta', 2, NULL),
(23, '20210023', '121212', 'Olga Safitri', '1971-03-04', 'male', 'Psr. Ir. H. Juanda No. 728, DKI Jakarta', 2, NULL),
(24, '20210024', '121212', 'Halim Winarsih', '1974-11-16', 'male', 'Dk. Nakula No. 730, DKI Jakarta', 2, NULL),
(25, '20210025', '121212', 'Vivi Widodo', '1988-09-19', 'male', 'Kpg. Astana Anyar No. 983, DKI Jakarta', 2, NULL),
(26, '20210026', '121212', 'Dian Firmansyah', '1985-04-01', 'male', 'Kpg. Baha No. 855, DKI Jakarta', 2, NULL),
(27, '20210027', '121212', 'Patricia Usada', '1986-08-28', 'male', 'Psr. Ters. Jakarta No. 993, DKI Jakarta', 2, NULL),
(28, '20210028', '121212', 'Soleh Mandasari', '1988-09-28', 'female', 'Ki. Flores No. 869, DKI Jakarta', 2, NULL),
(29, '20210029', '121212', 'Kamal Pranowo', '1976-08-10', 'male', 'Jln. Baung No. 80, DKI Jakarta', 2, NULL),
(30, '20210030', '121212', 'Ade Kusmawati', '1996-08-29', 'male', 'Jln. Kiaracondong No. 398, DKI Jakarta', 2, NULL),
(31, '20210031', '121212', 'Irwan Sinaga', '1976-10-06', 'female', 'Dk. Basmol Raya No. 714, West Java', 3, NULL),
(32, '20210032', '121212', 'Lulut Lestari', '1981-03-31', 'male', 'Ds. Cihampelas No. 933, West Java', 3, NULL),
(33, '20210033', '121212', 'Balijan Rahimah', '1972-04-25', 'female', 'Ki. Ciwastra No. 539, West Java', 3, NULL),
(34, '20210034', '121212', 'Kasiyah Sitompul', '1975-01-14', 'male', 'Dk. Sutarto No. 434, West Java', 3, NULL),
(35, '20210035', '121212', 'Wulan Nasyidah', '1974-11-04', 'male', 'Dk. Mahakam No. 367, West Java', 3, NULL),
(36, '20210036', '121212', 'Damar Palastri', '1981-03-24', 'female', 'Jr. Teuku Umar No. 547, West Java', 3, NULL),
(37, '20210037', '121212', 'Gamanto Simanjuntak', '1972-01-13', 'female', 'Jln. Salam No. 421, West Java', 3, NULL),
(38, '20210038', '121212', 'Lukita Gunarto', '1998-11-27', 'female', 'Jr. HOS. Cjokroaminoto (Pasirkaliki) No. 9, West Java', 3, NULL),
(39, '20210039', '121212', 'Malika Nashiruddin', '1989-07-05', 'male', 'Psr. Kartini No. 960, West Java', 3, NULL),
(40, '20210040', '121212', 'Siska Hutapea', '1972-03-30', 'female', 'Ki. Wora Wari No. 501, West Java', 3, NULL),
(41, '20210041', '121212', 'Laras Sirait', '1971-01-13', 'male', 'Psr. Basmol Raya No. 859, West Java', 3, NULL),
(42, '20210042', '121212', 'Embuh Mulyani', '1996-08-05', 'male', 'Kpg. Wahidin No. 512, West Java', 3, NULL),
(43, '20210043', '121212', 'Mutia Nashiruddin', '1985-05-08', 'female', 'Ds. Hang No. 765, West Java', 3, NULL),
(44, '20210044', '121212', 'Pangestu Lazuardi', '2001-08-02', 'male', 'Dk. Bass No. 886, West Java', 3, NULL),
(45, '20210045', '121212', 'Gaduh Suwarno', '1971-07-27', 'female', 'Psr. Basuki No. 591, West Java', 3, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `spots`
--

CREATE TABLE `spots` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `regional_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` text DEFAULT NULL,
  `serve` tinyint(4) NOT NULL DEFAULT 1,
  `capacity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `spots`
--

INSERT INTO `spots` (`id`, `regional_id`, `name`, `address`, `serve`, `capacity`) VALUES
(1, 1, 'Pranowo Hospital', 'Ds. Hasanuddin No. 676, DKI Jakarta', 1, 15),
(2, 1, 'Halimah Hospital', 'Kpg. Yoga No. 60, DKI Jakarta', 2, 15),
(3, 1, 'Wulandari Hospital', 'Jr. Adisucipto No. 210, DKI Jakarta', 1, 15),
(4, 1, 'Maulana Hospital', 'Psr. Suprapto No. 991, DKI Jakarta', 3, 15),
(5, 1, 'Hartati Hospital', 'Dk. Bagonwoto  No. 389, DKI Jakarta', 2, 15),
(6, 2, 'Aryani Hospital', 'Jr. Juanda No. 16, DKI Jakarta', 3, 15),
(7, 2, 'Dabukke Hospital', 'Jln. Ciwastra No. 12, DKI Jakarta', 3, 15),
(8, 2, 'Hutasoit Hospital', 'Kpg. Jaksa No. 737, DKI Jakarta', 3, 15),
(9, 2, 'Saefullah Hospital', 'Kpg. Bayan No. 527, DKI Jakarta', 2, 15),
(10, 2, 'Suryatmi Hospital', 'Jln. Raya Ujungberung No. 103, DKI Jakarta', 1, 15),
(11, 3, 'Mangunsong Hospital', 'Psr. Kiaracondong No. 711, West Java', 2, 15),
(12, 3, 'Simbolon Hospital', 'Gg. Bakhita No. 398, West Java', 3, 15),
(13, 3, 'Wijaya Hospital', 'Jln. Cemara No. 234, West Java', 1, 15),
(14, 3, 'Budiman Hospital', 'Jln. Thamrin No. 547, West Java', 1, 15),
(15, 3, 'Wasita Hospital', 'Dk. Bank Dagang Negara No. 373, West Java', 1, 15);

-- --------------------------------------------------------

--
-- Struktur dari tabel `spot_vaccines`
--

CREATE TABLE `spot_vaccines` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `spot_id` bigint(20) UNSIGNED NOT NULL,
  `vaccine_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `spot_vaccines`
--

INSERT INTO `spot_vaccines` (`id`, `spot_id`, `vaccine_id`) VALUES
(1, 1, 2),
(2, 1, 4),
(3, 1, 5),
(4, 2, 2),
(5, 2, 4),
(6, 2, 5),
(7, 3, 1),
(8, 3, 3),
(9, 3, 5),
(10, 4, 2),
(11, 4, 4),
(12, 4, 5),
(13, 5, 1),
(14, 5, 2),
(15, 5, 5),
(16, 6, 1),
(17, 6, 2),
(18, 6, 5),
(19, 7, 2),
(20, 7, 4),
(21, 7, 5),
(22, 8, 1),
(23, 8, 2),
(24, 8, 5),
(25, 9, 1),
(26, 9, 3),
(27, 9, 4),
(28, 10, 2),
(29, 10, 4),
(30, 10, 5),
(31, 11, 1),
(32, 11, 3),
(33, 11, 4),
(34, 12, 1),
(35, 12, 3),
(36, 12, 4),
(37, 13, 1),
(38, 13, 2),
(39, 13, 3),
(40, 13, 4),
(41, 14, 1),
(42, 14, 3),
(43, 14, 5),
(44, 15, 1),
(45, 15, 3),
(46, 15, 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'doctor2', '$2y$10$V7z9OQH9hZM8ye75Q/4rmepz0pi6fOBgAnDOpgDXKQ3TlHQ3Tu9uS'),
(2, 'doctor3', '$2y$10$rOrHOux.okJgDMsIsfo3NuWkvH2cRrOJwZdJTSF27YoSOVrUmEnD.'),
(3, 'doctor4', '$2y$10$GWv/sRUK3.eFzxitt9wFFO.ota5iuLsu5kigK06jUdHTkbGbQqW.a'),
(4, 'officer2', '$2y$10$mgTW6Wkgs/KsyCyadyko1eK9EGGJkqa9.wUvQ8xM1CgqZi83T8T5e'),
(5, 'officer3', '$2y$10$kOn1NIOzTMatKONRfD15Fu7/bydNQYeUkeFmBVibpaoPod4Irwile'),
(6, 'doctor5', '$2y$10$mdahUg9DO/xQj8Kuv92vgeQy0Jh2g8BePVhFzllVTryLlOJItpOEW'),
(7, 'doctor6', '$2y$10$3bqtfrOff5ap7Vf7tJ6sEedA9/BWjkc0hIlEtlQklKidCKxxLrGEa'),
(8, 'doctor7', '$2y$10$LvkcQMls02ndhFlmRYj80ORbEvAsQISQ0jup4o9OmJatla5BJx7n2'),
(9, 'officer5', '$2y$10$lE5Ro1yB8eMqPmvGr5TZo.H3PvakN0JJ4bQ3gcyZpeIerfSYMuwgy'),
(10, 'officer6', '$2y$10$G49YMKMsayKNntpVmjgieu45JaDr1EY1amj37i94Vnw6jmJ5v.xuy'),
(11, 'doctor8', '$2y$10$6AOsg8r8I9JxGYzESet1Re6fguHiWYh6.xK4/CiWwbVJrwszsVEPO'),
(12, 'doctor9', '$2y$10$vEpJNZVYVmxmGa6yLcmlse5hBzyS4AmIsCfU5Ium7h4P1BGxyxkva'),
(13, 'doctor10', '$2y$10$FHuPvu2KdeJKiaXDAnJn3edcjogY8vggHT1tyFLdcj44VDx3AaNWe'),
(14, 'officer8', '$2y$10$6bbYntlsOWxN1149KRQoLuPxpqj7Fwom9QSxcQ/MJ.TJ/50DOcRWG'),
(15, 'officer9', '$2y$10$7dtqW7kllABipA8bHaZG4.I0GQpgznnnkMV1KCV5r37lwLC5PReDC'),
(16, 'doctor11', '$2y$10$1sSY.iVLjdZ.nN6C1diGQuQe5A/ku9H5dGv5mpEwmOigx7Ku6SXT.'),
(17, 'doctor12', '$2y$10$Et2lcahneYVmvqSMB0H3E.6jGrBURmKm4LZHbhvYQufsEsRr8MeMC'),
(18, 'doctor13', '$2y$10$zMs5XMdw9UnVffXyM6ydlOXwfKY5/v6FyP8.eMnEqHxWl7OpeUjNO'),
(19, 'officer11', '$2y$10$4P7xMiRGstOOGMzdzmKt7O5uTh9pXh8WmSIg3TaXidpQpFPU9mwZS'),
(20, 'officer12', '$2y$10$vE8NMh6rmM0xencAduABTe8J7DmYMqP8wsYxNHdy1qU0bgehX1zEm'),
(21, 'doctor14', '$2y$10$7fLg.UbvPNSXb8UvE2vkHeF.sV4Q82c.uvaBriJAsXKxj0FzFpHg6'),
(22, 'doctor15', '$2y$10$pQ/1tvf6XF9S/swwk4Y7jOTuJm1/K4vDvlOmsuLI1lMtYyFukFBAW'),
(23, 'doctor16', '$2y$10$CHCyk8QBkCR5qJTqG6f7re3ccR.VMbRrcHsbZYfh1EAhVl1ufheyi'),
(24, 'officer14', '$2y$10$rM/lVVEj2S2GmosC.2Lyu.Y3.yMnsUmzxViYGs66t.UZj5Pe/QGsu'),
(25, 'officer15', '$2y$10$NcAshNWgVKbdYQTZBNTXvOBqFHP6O2AwJUbvAm4Gja8HM7G1KyVSW'),
(26, 'doctor17', '$2y$10$MN7EUEP7WEpx9CGYRy2tNOvpBwZYwCqj2tNpiKo4QIVaPC7ARcAH2'),
(27, 'doctor18', '$2y$10$S4Z5eVPCEItajH7bUUMqZe.ncK7Xyq7ULPhaB1Af8EOk.iyi.pIa2'),
(28, 'doctor19', '$2y$10$641mZPy3lze56Yd62Vdk8u5jLYt9iJhnXkwo//guI.R5c78dq.LuG'),
(29, 'officer17', '$2y$10$EvRoWw8ZJs9EnVxhKlQPO.O.KxsFxyby7iI6duleda6i.zPNGsxRu'),
(30, 'officer18', '$2y$10$U60MhOJNq2vHgOPRjUCB4.s3WsbeUFb6.kSy7N1db8rI3XFpZK5Yu'),
(31, 'doctor20', '$2y$10$M9Zgl0c2ngaTR9HkB154fekeqGCarTNgdGnQa1LbBj256oJL6Nn/e'),
(32, 'doctor21', '$2y$10$lBJLht2hCzdYGydSVwv.eOuhc.begKuWVqDqL7R1RgjejXr3yKwWS'),
(33, 'doctor22', '$2y$10$Y/mZoTyQHJK3aNcR57KdUuoahcMvUfDiFmHSp/LzyybhDx8bmkQdS'),
(34, 'officer20', '$2y$10$sP/ikW5Qan9UrDgLkv3nEOIsV61RfnDvpOoXg3aK9hsQTdC1amWeC'),
(35, 'officer21', '$2y$10$//J0Hb5rFpW7MuyUYu6Rfu8mP0D6vZUjnquZSJsOL8TvKBuJkz8fe'),
(36, 'doctor23', '$2y$10$GRmdMl81XBWBFMHppIIPd.ggbUtwX7ppYWIi/Wp1SFoDJSNBvrLii'),
(37, 'doctor24', '$2y$10$AG/vUaRyzGNxUac3l3EOg.HjSwxGoKB4HbN7SQor0oPD3T9aENGRa'),
(38, 'doctor25', '$2y$10$BGW0QtLlVVL6pwEMxo29X.UwW.oK9BGFEFVRU4j2Gr9.upAaCv1vq'),
(39, 'officer23', '$2y$10$lR.qikgtYjE3gJEATbkwNeRZzU5p232G/Ma0b.Ujl/FhLBjWDdRSG'),
(40, 'officer24', '$2y$10$qbzIQvYNKcqXpADHMj4KUugsV18e2GHqAWfrTND0fpfcdRSddPXWK'),
(41, 'doctor26', '$2y$10$t3YFb0GECtPVmfFPVmSyk.8j1T78h3./OEv7qEmbASHM0wextK2v6'),
(42, 'doctor27', '$2y$10$mZjsimCruvmGeMFP5n0AEOyPNHkqaWHzKTSq.P6.v77FiMmpn/p4.'),
(43, 'doctor28', '$2y$10$iMXNS39pX7aHQhK3dernaO182ID6JEtHqGQ3J8YlMPBO5KxtvCJka'),
(44, 'officer26', '$2y$10$h9ELcDTKj7RDmTJc8EPRjuapfpQBl1JxIB0mPNdEHKXCFQyBi2Ki2'),
(45, 'officer27', '$2y$10$hdZvbbf2IJCXzRRcdagABujMEE5Yn0957lrsOKXCJUOUgAl42xbnW'),
(46, 'doctor29', '$2y$10$jRj2r8rz1R/9VhltykU3mOXS8kE/QoV/g5w8L21n8mE9aRQBqF0Za'),
(47, 'doctor30', '$2y$10$3U3cboyx2sWV9q8q6pE5peOk8z0JGXXeuq.Ec1/i.ubmgMdPU1OAq'),
(48, 'doctor31', '$2y$10$.8YtovrrXJY0peoOZQd9meqfufh5I3ufChiTyDdT5cB.r1QqmTLj2'),
(49, 'officer29', '$2y$10$CylKSQ9n9ch4Eve.Nghq7Obeq.mcz7iVYlqk8MZQdW1X60nB8YlI6'),
(50, 'officer30', '$2y$10$f8v.1AnOVhaGQQJLpwPeZ.Uuj/lJc1EW9fSEADbRs3l0LgBIyMsnm'),
(51, 'doctor32', '$2y$10$pqMPqIKLFHbba/JZmcSrF.Zbs3tqwwv1yPeq5LDpDZkS6XZ0lQosK'),
(52, 'doctor33', '$2y$10$w6gb2/wthVt.D851iWVMV.eeTg2cUuJaKUl3Zre.7d16M9RVzsk/S'),
(53, 'doctor34', '$2y$10$DT31BLPJXocCysZATI2wc.zUcLphroJ9JnT5vJukC3LEmyI8nlgyO'),
(54, 'officer32', '$2y$10$Bz4QX7lfmZ6XzIL8d54hQelHJ/W3oIeHjs2gpqtdUF0ilpocc0i12'),
(55, 'officer33', '$2y$10$jIIiDhxn25u5w5CyjRK0muk8a95wIDyqdZqWb4064WRtcqNOFD4qi'),
(56, 'doctor35', '$2y$10$5iiqslrC1UjpIr5mUr4eFeUKg06JDVwY.ABsLNH/mrs2NZn5P9w5W'),
(57, 'doctor36', '$2y$10$2yp2Sa8MM/gwkaz/fb.VceEvw6YQ9zqH2TcGEgQnwpoAkfP03Bnr2'),
(58, 'doctor37', '$2y$10$yB9QkeTaabcNqMNOu0kUUOZ1jtgF06qi61mtnX9pFO6UkQWj4iBvu'),
(59, 'officer35', '$2y$10$UOX.akGzKvL1gLrWRioGBu3vonMt0KKVuLAA2cOVLPuRFmYPCkoEu'),
(60, 'officer36', '$2y$10$kJ.EC6WMaAerfVwIUhvLm.lMysMp2OrQsFxMkHibwakNdUXVo2dwi'),
(61, 'doctor38', '$2y$10$PeJ6hc7F/yqAVn6BMFkmoOqots5nfVlg.vkit.MsxXIOLzgKQmzNS'),
(62, 'doctor39', '$2y$10$Y/z3/H7dxCODjSktd8o7RO4GjTBu0GgYtjXzUuy6gBVQRK6q7YP2e'),
(63, 'doctor40', '$2y$10$kF0b0mJPVKvlT.WhQm52ReNwAgYzfLnh.l//tdQ9v8FWGrHrjrfqK'),
(64, 'officer38', '$2y$10$c/HPFLBj8Ms6ACTKwUsBPuMODyopjA5u5/.trDxacDncdqqjUDMee'),
(65, 'officer39', '$2y$10$QdedI8c2E5nMta1.6NyXY.28g3malBKilhHbWWZfZpek4x9Uoe3fS'),
(66, 'doctor41', '$2y$10$SZruoxjIMWWTIfrYlaYq9eRI.eozOrkuGb8LtAyXIZtS14cU7wKHS'),
(67, 'doctor42', '$2y$10$Fv.HBZ28qG5FeskggImjMekFOGkwAnpbtsia.qkUgoYxQpyXBH.tG'),
(68, 'doctor43', '$2y$10$HEYvBl7rkq1Znmb6uGnZEe6.5JzTOdp9A3bu71oaIEZj8OqJgW7EO'),
(69, 'officer41', '$2y$10$3c.aTUHy5f/zIikynhA7vOqNEqes1OBqzEzS1.1Dgr3jj/Ps.sy5K'),
(70, 'officer42', '$2y$10$4OUqJgVuwK1Lfbqhbt4Iv./IGZTxTY84zLKT3WkETVJG8pryDfQUe'),
(71, 'doctor44', '$2y$10$hxqc5IlwAKIhA9RkEA8iOeCbXXUgtr5sgkQUCtOVIfRn.H1wmLdUq'),
(72, 'doctor45', '$2y$10$cNptHZZ8ZrOusJs49mQ8zuT2VUgRh5WOFVDHEboCP5RdbrPM02PTW'),
(73, 'doctor46', '$2y$10$CZKA4E3DUr0N6UOx8tkwueL438dNQRSpToqqs8VaT/a06X7ksVmyC'),
(74, 'officer44', '$2y$10$./todE9ybLYEE4qwMU/WUO9CIbU1IgJ4rE7ZaDn10Xx67Tow2u7iG'),
(75, 'officer45', '$2y$10$T8bOs2y82y8EaPV3XUi0heGLWCukmQOfzItOE9W0c.OJ66UJewXye');

-- --------------------------------------------------------

--
-- Struktur dari tabel `vaccinations`
--

CREATE TABLE `vaccinations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `dose` tinyint(4) NOT NULL DEFAULT 1,
  `date` date NOT NULL,
  `society_id` bigint(20) UNSIGNED NOT NULL,
  `spot_id` bigint(20) UNSIGNED DEFAULT NULL,
  `vaccine_id` bigint(20) UNSIGNED DEFAULT NULL,
  `doctor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `officer_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `vaccines`
--

CREATE TABLE `vaccines` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `vaccines`
--

INSERT INTO `vaccines` (`id`, `name`) VALUES
(1, 'Sinovac'),
(2, 'AstraZeneca'),
(3, 'Moderna'),
(4, 'Pfizer'),
(5, 'Sinnopharm');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `consultations`
--
ALTER TABLE `consultations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `consultations_society_id_foreign` (`society_id`),
  ADD KEY `consultations_doctor_id_foreign` (`doctor_id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `medicals`
--
ALTER TABLE `medicals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `medicals_spot_id_foreign` (`spot_id`),
  ADD KEY `medicals_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `regionals`
--
ALTER TABLE `regionals`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `societies`
--
ALTER TABLE `societies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `societies_id_card_number_unique` (`id_card_number`),
  ADD KEY `societies_regional_id_foreign` (`regional_id`);

--
-- Indeks untuk tabel `spots`
--
ALTER TABLE `spots`
  ADD PRIMARY KEY (`id`),
  ADD KEY `spots_regional_id_foreign` (`regional_id`);

--
-- Indeks untuk tabel `spot_vaccines`
--
ALTER TABLE `spot_vaccines`
  ADD PRIMARY KEY (`id`),
  ADD KEY `spot_vaccines_spot_id_foreign` (`spot_id`),
  ADD KEY `spot_vaccines_vaccine_id_foreign` (`vaccine_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- Indeks untuk tabel `vaccinations`
--
ALTER TABLE `vaccinations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vaccinations_society_id_foreign` (`society_id`),
  ADD KEY `vaccinations_spot_id_foreign` (`spot_id`),
  ADD KEY `vaccinations_vaccine_id_foreign` (`vaccine_id`),
  ADD KEY `vaccinations_doctor_id_foreign` (`doctor_id`),
  ADD KEY `vaccinations_officer_id_foreign` (`officer_id`);

--
-- Indeks untuk tabel `vaccines`
--
ALTER TABLE `vaccines`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `consultations`
--
ALTER TABLE `consultations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `medicals`
--
ALTER TABLE `medicals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT untuk tabel `regionals`
--
ALTER TABLE `regionals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `societies`
--
ALTER TABLE `societies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT untuk tabel `spots`
--
ALTER TABLE `spots`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `spot_vaccines`
--
ALTER TABLE `spot_vaccines`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT untuk tabel `vaccinations`
--
ALTER TABLE `vaccinations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `vaccines`
--
ALTER TABLE `vaccines`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `consultations`
--
ALTER TABLE `consultations`
  ADD CONSTRAINT `consultations_doctor_id_foreign` FOREIGN KEY (`doctor_id`) REFERENCES `medicals` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `consultations_society_id_foreign` FOREIGN KEY (`society_id`) REFERENCES `societies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `medicals`
--
ALTER TABLE `medicals`
  ADD CONSTRAINT `medicals_spot_id_foreign` FOREIGN KEY (`spot_id`) REFERENCES `spots` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `medicals_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `societies`
--
ALTER TABLE `societies`
  ADD CONSTRAINT `societies_regional_id_foreign` FOREIGN KEY (`regional_id`) REFERENCES `regionals` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `spots`
--
ALTER TABLE `spots`
  ADD CONSTRAINT `spots_regional_id_foreign` FOREIGN KEY (`regional_id`) REFERENCES `regionals` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `spot_vaccines`
--
ALTER TABLE `spot_vaccines`
  ADD CONSTRAINT `spot_vaccines_spot_id_foreign` FOREIGN KEY (`spot_id`) REFERENCES `spots` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `spot_vaccines_vaccine_id_foreign` FOREIGN KEY (`vaccine_id`) REFERENCES `vaccines` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `vaccinations`
--
ALTER TABLE `vaccinations`
  ADD CONSTRAINT `vaccinations_doctor_id_foreign` FOREIGN KEY (`doctor_id`) REFERENCES `medicals` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `vaccinations_officer_id_foreign` FOREIGN KEY (`officer_id`) REFERENCES `medicals` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `vaccinations_society_id_foreign` FOREIGN KEY (`society_id`) REFERENCES `societies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `vaccinations_spot_id_foreign` FOREIGN KEY (`spot_id`) REFERENCES `spots` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `vaccinations_vaccine_id_foreign` FOREIGN KEY (`vaccine_id`) REFERENCES `vaccines` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
