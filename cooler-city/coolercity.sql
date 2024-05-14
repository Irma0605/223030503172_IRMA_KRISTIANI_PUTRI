-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 13 Bulan Mei 2024 pada 07.54
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `coolercity`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Struktur dari tabel `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
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
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` varchar(30) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `telepon` char(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `nama`, `telepon`) VALUES
('P01', 'Sinta', '087744556633'),
('P02', 'Jojo', '082344991010'),
('P03', 'Rangga', '089977345411'),
('P04', 'Dimas', '083344222137'),
('P05', 'Aisyah ', '081234567890'),
('P06', 'Bayu ', '081323456789'),
('P07', 'Citra', '082134567891'),
('P08', 'Dian ', '082223456780'),
('P09', 'Eko ', '082345678901'),
('P10', 'Farah ', '083156789012'),
('P11', 'Gilang', '083267890123'),
('P12', 'Hana ', '083378901234'),
('P13', 'Indra ', '084189012345'),
('P14', 'Julia ', '084290123456'),
('P15', 'Kevin ', '085101234567'),
('P16', 'Laila ', '085212345678'),
('P17', 'Mira ', '085323456789'),
('P18', 'Nadia', '081434567892'),
('P19', 'Oka ', '081545678902'),
('P20', 'Puspa', '081656789013'),
('P21', 'Septian', '081767890124'),
('P22', 'Raisa ', '081878901235'),
('P23', 'Siti ', '081989012346'),
('P24', 'Tegar', '082490123457'),
('P25', 'Umar', '082501234568'),
('P26', 'Vania', '082612345679'),
('P27', 'Wahyu', '082723456790'),
('P28', 'Rudi', '082834567893'),
('P29', 'Yogi', '082945678903'),
('P30', 'Zara', '083456789014'),
('P31', 'cindy', '082345678345');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sepatu`
--

CREATE TABLE `sepatu` (
  `id_sepatu` varchar(30) NOT NULL,
  `merk_sepatu` varchar(30) NOT NULL,
  `jenis_sepatu` varchar(30) NOT NULL,
  `ukuran` int(11) NOT NULL,
  `harga` double NOT NULL,
  `stok` int(11) NOT NULL,
  `gambar` blob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `sepatu`
--

INSERT INTO `sepatu` (`id_sepatu`, `merk_sepatu`, `jenis_sepatu`, `ukuran`, `harga`, `stok`, `gambar`) VALUES
('A01', 'Adidas', 'Sneakers STRIPES', 38, 200000, 5, 0x616469646173312e6a7067),
('A02', 'Adidas', 'Sneakers', 39, 200000, 7, 0x616469646173322e6a7067),
('A03', 'Adidas', 'Sneakers', 39, 200000, 5, 0x616469646173332e6a7067),
('A04', 'Adidas', 'Sneakers', 39, 200000, 5, 0x616469646173342e6a7067),
('A05', 'Adidas', 'Sneakers', 40, 1000000, 5, 0x6164696461732053616d6261204f4720436c6f756420576869746520423735383036202d20313055532e6a706567),
('AS01', 'Asics', 'Sneakers', 39, 550000, 10, 0x28574d4e532920417369637320436f757274204d5a2031323033413132372d3230302055532036c2bd2e6a706567),
('AS02', 'Asics', 'Sneakers', 35, 550000, 5, 0x41736963732047656c2d4b6168616e612038204d61726174686f6e2052756e6e696e672053686f65735f536e65616b6572732031303132413937382d313032202853697a655f2055532037292e6a706567),
('C01', 'Converse', 'Sneakers', 43, 500000, 20, 0x4330312e6a7067),
('C02', 'Converse', 'Sneakers', 43, 500000, 5, 0x4330322e6a7067),
('CS01', 'Compass', 'Sneakers', 41, 50000, 10, 0x436f6d706173732047617a656c6c6520486920426c61636b205768697465202d2033392064692053657061747520436f6d70617373205f20546f6b6f70656469612e6a706567),
('DD01', 'Diadora', 'Sneakers', 44, 750000, 10, 0x446961646f7261204d61676963204261736b6574204c6f772049636f6e61202d204c61676520536e65616b6572732e6a706567),
('DD02', 'Diadora', 'Sneakers', 41, 750000, 10, 0x3230315f31373932333520736e65616b65722e6a706567),
('F01', 'Fila', 'Sneakers', 41, 2400000, 9, 0x54c3aa6e69732046696c6120546572617461636820363030204d617363756c696e6f204272616e636f2e6a706567),
('F02', 'Fila', 'Sneakers', 40, 2400000, 5, 0x46696c612054c3aa6e69732046696c6120466c6f61742048616c6c2046656d696e696e6f2033372e6a706567),
('K01', 'Kodachi', 'Sneakers', 39, 500000, 7, 0x6b6f64616368692e6a7067),
('LG01', 'League', 'Running', 38, 550000, 5, 0x6c65616775652e6a7067),
('NB01', 'New Balance', 'Sneakers', 40, 1200000, 12, 0x4e4230312e706e67),
('NB02', 'New Balance', 'Sneakers', 42, 1200000, 5, 0x4e65772042616c616e636520383237204d61726174686f6e2052756e6e696e672053686f65735f536e65616b657273204d4c3832375844202853697a655f2055532037292e6a706567),
('NK01', 'Nike', 'Sneakers', 39, 1100000, 7, 0x6e696b65322e6a7067),
('NK02', 'Nike', 'Running', 38, 1100000, 5, 0x6e696b65322e6a7067),
('NK03', 'Nike', 'Sneakers', 38, 1100000, 5, 0x6e696b65522e706e67),
('PM01', 'Puma', 'Sneakers', 40, 400000, 10, 0x50554d412e6a706567),
('PM02', 'Puma', 'Sneakers', 42, 400000, 5, 0x50756d61204c696761204c65617468657220536e65616b6572735f53686f6573203336343539372d3031202853697a655f2055532039292e6a706567),
('PR01', 'piero', 'Running', 39, 450000, 10, 0x706965726f2e6a7067),
('RB01', 'Reebok', 'Sneakers', 43, 600000, 8, 0x556e6973657820424220343030302049492053686f657320696e2057686974652e6a706567),
('RB02', 'Reebok', 'Sneakers', 40, 600000, 8, 0x4d656e7320526565626f6b20436c75622043204d696420496920526576656e67652056696e74616765204966373639382047726179205f20426c61636b20557320372d2031302054616b73652e6a706567),
('S01', 'Superga', 'Sneakers', 35, 350000, 8, 0x3237393020506c6174666f726d20536e65616b657273202d2057686974652e6a706567),
('S02', 'Superga', 'Sneakers', 38, 350000, 5, 0x54656e6e69736b696e67616420537570657267612e6a706567),
('SB01', 'Saint Barkley', 'Sneakers', 40, 600000, 8, 0x7361696e745f6261726b6c65792e6a7067),
('UA01', 'Under Armour', 'running', 40, 600000, 4, 0x556e6465722041726d6f75722e6a706567),
('UA02', 'Under Armour', 'Sneakers', 39, 600000, 2, 0x55412e6a706567),
('V01', 'Vans', 'Sneakers', 42, 1000000, 5, 0x56616e73204b6e7520536b6f6f6c20536b6174652053686f65202d20426c61636b205f20547275652057686974652e6a706567),
('V02', 'Vans', 'Sneakers', 40, 1000000, 5, 0x4c6f776c616e6420436f6d667943757368204c6561746865722053686f652e6a706567),
('W01', 'Wakai', 'Slip On', 40, 400000, 2, 0x77616b61692e6a7067);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('C8mkdBoV00TtsflDLHwCUmQHEeb13aHJhLdH2jfs', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiakJyM2lhaHNiRTBhY3BzSGJodW4yUmJrRE8xcHV4S0I5OWpwQ0w1cyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1714882763);

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` varchar(30) NOT NULL,
  `id_pelanggan` varchar(30) NOT NULL,
  `id_sepatu` varchar(30) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `total_harga` double NOT NULL,
  `tanggal_pembelian` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `id_pelanggan`, `id_sepatu`, `jumlah`, `total_harga`, `tanggal_pembelian`) VALUES
('TR01', 'P01', 'A01', 2, 2000000, '2024-05-12'),
('TR02', 'P02', 'NK01', 3, 3300000, '2024-05-12'),
('TR03', 'P03', 'NB01', 1, 1200000, '2024-05-12'),
('TR04', 'P04', 'F01', 2, 4800000, '2024-05-12'),
('TR05', 'P05', 'A01', 1, 1000000, '2024-05-12'),
('TR06', 'P06', 'NK01', 1, 1100000, '2024-05-12'),
('TR07', 'P07', 'NB01', 2, 2400000, '2024-05-12'),
('TR08', 'P08', 'F01', 2, 4800000, '2024-05-12'),
('TR09', 'P09', 'C01', 1, 500000, '2024-05-12'),
('TR10', 'P10', 'V01', 2, 2000000, '2024-05-12'),
('TR11', 'P11', 'PM01', 1, 400000, '2024-05-12'),
('TR12', 'P12', 'RB01', 2, 1200000, '2024-05-12'),
('TR13', 'P13', 'AS01', 1, 550000, '2024-05-12'),
('TR14', 'P14', 'DD01', 1, 750000, '2024-05-12'),
('TR15', 'P15', 'UA01', 1, 600000, '2024-05-12'),
('TR16', 'P16', 'S01', 1, 350000, '2024-05-12'),
('TR17', 'P17', 'CS01', 1, 500000, '2024-05-12'),
('TR18', 'P18', 'PM01', 2, 900000, '2024-05-12'),
('TR19', 'P19', 'LG01', 2, 1100000, '2024-05-12'),
('TR20', 'P20', 'SB01', 2, 1200000, '2024-05-12'),
('TR21', 'P21', 'K01', 2, 1000000, '2024-05-12'),
('TR22', 'P22', 'W01', 3, 1200000, '2024-05-12'),
('TR23', 'P23', 'A01', 1, 1000000, '2024-05-12'),
('TR24', 'P24', 'NK01', 1, 1100000, '2024-05-12'),
('TR25', 'P25', 'NB01', 1, 1200000, '2024-05-12'),
('TR26', 'P26', 'F01', 1, 2400000, '2024-05-12'),
('TR27', 'P27', 'C01', 1, 500000, '2024-05-12'),
('TR28', 'P28', 'V01', 2, 2000000, '2024-05-12'),
('TR29', 'P29', 'PM01', 2, 800000, '2024-05-12'),
('TR30', 'P30', 'RB01', 2, 1200000, '2024-05-12'),
('TR31', 'P31', 'PM01', 1, 1000000, '2024-05-13');

--
-- Trigger `transaksi`
--
DELIMITER $$
CREATE TRIGGER `delete_transaksi_to_pelanggan` AFTER DELETE ON `transaksi` FOR EACH ROW BEGIN
    DECLARE id_pelanggannya VARCHAR(30);
    -- Mengisi nilai id_pelanggannya dari data yang dihapus
    SET id_pelanggannya = OLD.id_pelanggan;
    -- Menghapus baris pelanggan yang memiliki id_pelanggannya
    DELETE FROM pelanggan WHERE id_pelanggan = id_pelanggannya;

    END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `username_` char(15) NOT NULL,
  `pass` char(10) NOT NULL,
  `nama` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`username_`, `pass`, `nama`) VALUES
('cindy', 'cindy123', 'cindy'),
('irma', 'irma123', 'Irma'),
('putri', 'putri123', 'Putri Pradiastiwi'),
('putrippp', '123', 'putri');

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
-- Indeks untuk tabel `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indeks untuk tabel `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indeks untuk tabel `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indeks untuk tabel `sepatu`
--
ALTER TABLE `sepatu`
  ADD PRIMARY KEY (`id_sepatu`);

--
-- Indeks untuk tabel `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `id_pelanggan` (`id_pelanggan`),
  ADD KEY `id_sepatu` (`id_sepatu`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username_`);

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
-- AUTO_INCREMENT untuk tabel `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `Transaksi-Pelanggan` FOREIGN KEY (`id_pelanggan`) REFERENCES `pelanggan` (`id_pelanggan`),
  ADD CONSTRAINT `Trnasaksi-Sepatu` FOREIGN KEY (`id_sepatu`) REFERENCES `sepatu` (`id_sepatu`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
