-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 01 Mar 2024 pada 02.13
-- Versi server: 8.1.0
-- Versi PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `izin_db`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `bk`
--

CREATE TABLE `bk` (
  `id` int NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(10) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `bk`
--

INSERT INTO `bk` (`id`, `nama`, `username`, `password`) VALUES
(1, 'Risma indah', 'bkrisma', '123'),
(2, 'Bangun parikesit', 'bkbangun', '123'),
(3, 'Ratna widyaningsih', 'bkratna', '123');

-- --------------------------------------------------------

--
-- Struktur dari tabel `guru`
--

CREATE TABLE `guru` (
  `id` int NOT NULL,
  `nama` varchar(50) NOT NULL,
  `mapel` varchar(50) NOT NULL,
  `nip` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `foto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `guru`
--

INSERT INTO `guru` (`id`, `nama`, `mapel`, `nip`, `username`, `password`, `foto`) VALUES
(1, 'Rumini', 'PJOK', '19741217 201406 2 112', 'ruminipjok', '123', 'rumini.jpg'),
(2, 'Subarna', 'PPKN', '19730511 199903 1 113', 'subarnappkn', '123', 'subarna.jpg'),
(3, 'Muharor', 'PAI', '19930101 202321 1 123', 'muharorpai', '123', 'muharor.jpg'),
(4, 'Ratna Yunitasari', 'SIJA', '19710601 202121 2 113', 'ratnasija', '123', 'ratna.jpg'),
(5, 'Sarino', 'PAI', '19801203 200903 1 113', 'sarinopai', '123', 'sarino.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `izin`
--

CREATE TABLE `izin` (
  `id` int NOT NULL,
  `siswa_id` int NOT NULL,
  `guru_id` int DEFAULT NULL,
  `bk_id` int DEFAULT NULL,
  `alasan` varchar(200) NOT NULL,
  `waktu` varchar(8) NOT NULL,
  `tanggal` datetime NOT NULL,
  `is_approved` int NOT NULL,
  `file` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `izin`
--

INSERT INTO `izin` (`id`, `siswa_id`, `guru_id`, `bk_id`, `alasan`, `waktu`, `tanggal`, `is_approved`, `file`) VALUES
(1, 2, 2, 1, 'Keluar Negeri', '1-14', '2024-02-11 01:31:06', 2, ''),
(2, 2, 1, 2, 'Acara keluarga', '1-14', '2024-02-09 01:31:06', 2, ''),
(3, 2, 1, 1, 'sakit', '5-14', '2024-02-10 01:38:17', 2, '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `setting`
--

CREATE TABLE `setting` (
  `id` int NOT NULL,
  `nama_setting` varchar(20) NOT NULL,
  `value` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `setting`
--

INSERT INTO `setting` (`id`, `nama_setting`, `value`) VALUES
(1, 'pembatasan', '12');

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE `siswa` (
  `id` int NOT NULL,
  `nama` varchar(50) NOT NULL,
  `kelas` varchar(10) NOT NULL,
  `nis` varchar(6) NOT NULL,
  `jurusan` varchar(5) NOT NULL,
  `username` varchar(10) NOT NULL,
  `password` varchar(20) NOT NULL,
  `foto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `siswa`
--

INSERT INTO `siswa` (`id`, `nama`, `kelas`, `nis`, `jurusan`, `username`, `password`, `foto`) VALUES
(1, 'Surya', '10 SIJA B', '123400', 'SIJA', 'surya123', '123', 'surya.jpg'),
(2, 'Andhika', '10 SIJA A', '123100', 'SIJA', 'andhika123', '123', 'andhika.jpg'),
(3, 'Putri', '12 KA A', '123610', 'KA', 'putri123', '123', 'putri.jpg'),
(4, 'Putra', '11 TKR B', '123420', 'TKR', 'putra123', '123', 'putra.jpg'),
(5, 'Yumna', '12 GP B', '123430', 'GP', 'yumna123', '123', 'yumna.jpg'),
(6, 'Salwa', '11 KI B', '123401', 'KI', 'salwa123', '123', 'salwa.jpg'),
(7, 'Aya', '12 TEK A', '123412', 'TEK', 'aya123', '123', 'aya.jpg'),
(8, 'Mizar', '10 TP B', '123432', 'TP', 'mizar123', '123', 'mizar.jpg'),
(9, 'Chesya', '12 DPIB A', '123301', 'DPIB', 'chesya123', '123', 'chesya.jpg'),
(10, 'Tsabit', '12 TKRB B', '123406', 'TKRB', 'tsabit123', '123', 'tsabit.jpg');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `bk`
--
ALTER TABLE `bk`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `izin`
--
ALTER TABLE `izin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `bk`
--
ALTER TABLE `bk`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `guru`
--
ALTER TABLE `guru`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `izin`
--
ALTER TABLE `izin`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
