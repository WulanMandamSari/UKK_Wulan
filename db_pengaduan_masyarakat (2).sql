-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 03 Mar 2023 pada 08.40
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_pengaduan_masyarakat`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(2, '2019_08_19_000000_create_failed_jobs_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengaduan_image`
--

CREATE TABLE `pengaduan_image` (
  `id` int(11) NOT NULL,
  `pengaduan_unique_id` varchar(250) NOT NULL,
  `image` varchar(250) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `update_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `pengaduan_image`
--

INSERT INTO `pengaduan_image` (`id`, `pengaduan_unique_id`, `image`, `created_at`, `update_at`) VALUES
(1, '167768096663ff61461b9f2', '16776809660.jpg', '2023-03-01 14:29:26', '2023-03-01 14:29:26'),
(2, '167768096663ff61461b9f2', '16776809661.jpg', '2023-03-01 14:29:26', '2023-03-01 14:29:26'),
(3, '167768096663ff61461b9f2', '16776809662.jpg', '2023-03-01 14:29:26', '2023-03-01 14:29:26'),
(4, '167768104563ff619546650', '16776810450.jpg', '2023-03-01 14:30:45', '2023-03-01 14:30:45'),
(5, '167768104563ff619546650', '16776810451.jpg', '2023-03-01 14:30:45', '2023-03-01 14:30:45'),
(6, '167768104563ff619546650', '16776810452.jpg', '2023-03-01 14:30:45', '2023-03-01 14:30:45'),
(7, '167768407163ff6d67385b3', '16776840710.jpg', '2023-03-01 15:21:11', '2023-03-01 15:21:11'),
(8, '167768407163ff6d67385b3', '16776840711.jpg', '2023-03-01 15:21:11', '2023-03-01 15:21:11'),
(9, '167768407163ff6d67385b3', '16776840712.jpg', '2023-03-01 15:21:11', '2023-03-01 15:21:11'),
(10, '16777315866400270270831', '16777315860.jpg', '2023-03-02 04:33:06', '2023-03-02 04:33:06'),
(11, '16777315866400270270831', '16777315861.jpg', '2023-03-02 04:33:06', '2023-03-02 04:33:06'),
(12, '16777315866400270270831', '16777315862.jpg', '2023-03-02 04:33:06', '2023-03-02 04:33:06');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pengaduan`
--

CREATE TABLE `tb_pengaduan` (
  `id_pengaduan` int(11) NOT NULL,
  `unique_id` varchar(250) NOT NULL,
  `tgl_pengaduan` date NOT NULL,
  `nik` char(18) DEFAULT NULL,
  `isi_laporan` text DEFAULT NULL,
  `status` varchar(20) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tb_pengaduan`
--

INSERT INTO `tb_pengaduan` (`id_pengaduan`, `unique_id`, `tgl_pengaduan`, `nik`, `isi_laporan`, `status`) VALUES
(26, '167768407163ff6d67385b3', '2023-03-16', '34567865456789712', 'yyyy', '1'),
(27, '16777315866400270270831', '2023-03-02', '34567234567865345', 'Jalanan Bolong', '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_tanggapan`
--

CREATE TABLE `tb_tanggapan` (
  `id_tanggapan` int(11) NOT NULL,
  `id_pengaduan` int(11) NOT NULL,
  `tgl_tanggapan` date NOT NULL,
  `tanggapan` text NOT NULL,
  `nik` char(17) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tb_tanggapan`
--

INSERT INTO `tb_tanggapan` (`id_tanggapan`, `id_pengaduan`, `tgl_tanggapan`, `tanggapan`, `nik`) VALUES
(3, 27, '2023-02-28', 'Okeeee', '34545678976576788'),
(5, 26, '2023-03-03', 'Oke terima kasih ya', '34567234567865345');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pengaduan_image`
--
ALTER TABLE `pengaduan_image`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_pengaduan`
--
ALTER TABLE `tb_pengaduan`
  ADD PRIMARY KEY (`id_pengaduan`),
  ADD KEY `unique_id` (`unique_id`);

--
-- Indeks untuk tabel `tb_tanggapan`
--
ALTER TABLE `tb_tanggapan`
  ADD PRIMARY KEY (`id_tanggapan`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `pengaduan_image`
--
ALTER TABLE `pengaduan_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `tb_pengaduan`
--
ALTER TABLE `tb_pengaduan`
  MODIFY `id_pengaduan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT untuk tabel `tb_tanggapan`
--
ALTER TABLE `tb_tanggapan`
  MODIFY `id_tanggapan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
