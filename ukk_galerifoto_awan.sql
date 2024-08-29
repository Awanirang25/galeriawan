-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 27 Agu 2024 pada 05.52
-- Versi server: 10.4.18-MariaDB
-- Versi PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ukk_galerifoto_awan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `album`
--

CREATE TABLE `album` (
  `albumid` int(11) NOT NULL,
  `namaalbum` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `tanggaldibuat` date NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `album`
--

INSERT INTO `album` (`albumid`, `namaalbum`, `deskripsi`, `tanggaldibuat`, `userid`) VALUES
(13, 'Alat Sekolah', '                                Peralatan Sekolah                              ', '2024-08-05', 2),
(14, 'Kendaraan', '                                Jenis-jenis Kendaraan Masa Kini                              ', '2024-08-05', 4),
(15, 'Pemandangan', '                                Kumpulan Pemandangan Yang Indah                              ', '2024-08-05', 3),
(16, 'Awan ', '                                                                                                Awan Yang Indah                                                                                          ', '2024-08-07', 3),
(17, 'Langit', '                                Langit-langit yang indah                              ', '2024-08-07', 3),
(18, 'Rumah', '                                Rumah-rumah Modern                              ', '2024-08-13', 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `foto`
--

CREATE TABLE `foto` (
  `fotoid` int(11) NOT NULL,
  `judulfoto` varchar(255) NOT NULL,
  `deskripsifoto` text NOT NULL,
  `tanggalunggah` date NOT NULL,
  `lokasifile` varchar(225) NOT NULL,
  `albumid` int(11) NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `foto`
--

INSERT INTO `foto` (`fotoid`, `judulfoto`, `deskripsifoto`, `tanggalunggah`, `lokasifile`, `albumid`, `userid`) VALUES
(4, 'Pemandangan Gunung', 'Gunung-gunung Bagus', '2024-08-06', '415941494-GUNUNG1s.jpeg', 15, 3),
(5, 'Gunung Sulawesi', 'Gunung yang Indah ', '2024-08-06', '1454574005-GUNUNG.jpg', 15, 3),
(6, 'Gunung Krakatau', 'Indahnya Gunung Di Pagi Hari', '2024-08-06', '2016331682-gambare.jpg', 15, 3),
(7, 'Langit Kalimantan', 'Langit indah dari kalimantan utara', '2024-08-07', '1462162784-pantai.jpg', 17, 3),
(8, 'Motor', 'Motor ', '2024-08-12', '1288362552-MOTOR.jpg', 14, 4),
(9, 'Mobil', 'Mobil', '2024-08-12', '1596005768-mobil.jpeg', 14, 4),
(10, 'Pesawat', 'Pesawat', '2024-08-12', '1870290496-pesawat.jpg', 14, 4),
(11, 'Rumah', 'Rumah model pertama', '2024-08-13', '485117921-rumah.jpg', 18, 4),
(12, 'Rumah', 'Rumah model kedua', '2024-08-13', '1937594630-rumah2.jpeg', 18, 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `komentarfoto`
--

CREATE TABLE `komentarfoto` (
  `komentarid` int(11) NOT NULL,
  `fotoid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `isikomentar` text NOT NULL,
  `tanggalkomentar` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `komentarfoto`
--

INSERT INTO `komentarfoto` (`komentarid`, `fotoid`, `userid`, `isikomentar`, `tanggalkomentar`) VALUES
(1, 4, 5, 'keren', '2024-08-19'),
(2, 4, 5, 'mantap', '2024-08-19'),
(3, 4, 3, 'MANTAP BANG', '2024-08-19'),
(4, 8, 3, 'GG', '2024-08-19'),
(5, 8, 4, 'BISA LAH', '2024-08-19'),
(6, 7, 6, 'YOK gass', '2024-08-26'),
(7, 10, 3, 'pesan 1', '2024-08-26'),
(8, 10, 4, 'GASS MIN BELI 1', '2024-08-26'),
(9, 12, 4, 'BELI 1 OKE', '2024-08-26');

-- --------------------------------------------------------

--
-- Struktur dari tabel `likefoto`
--

CREATE TABLE `likefoto` (
  `likeid` int(11) NOT NULL,
  `fotoid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `tanggallike` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `likefoto`
--

INSERT INTO `likefoto` (`likeid`, `fotoid`, `userid`, `tanggallike`) VALUES
(18, 5, 5, '2024-08-19'),
(19, 4, 5, '2024-08-19'),
(23, 9, 4, '2024-08-19'),
(25, 5, 4, '2024-08-19'),
(26, 8, 4, '2024-08-19'),
(27, 6, 4, '2024-08-19'),
(28, 10, 4, '2024-08-19'),
(29, 7, 4, '2024-08-19'),
(30, 11, 4, '2024-08-19'),
(31, 12, 4, '2024-08-19'),
(33, 4, 6, '2024-08-26'),
(36, 7, 6, '2024-08-26'),
(38, 6, 6, '2024-08-26'),
(59, 10, 3, '2024-08-26'),
(60, 4, 4, '2024-08-26');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user1`
--

CREATE TABLE `user1` (
  `userid` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL,
  `namalengkap` varchar(225) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user1`
--

INSERT INTO `user1` (`userid`, `username`, `password`, `email`, `namalengkap`, `alamat`) VALUES
(2, 'awan', 'e19cb7c038c2159012047e8b276bb6a2', 'awan@gmail.co', 'awan', 'india'),
(3, 'ADMIN', '73acd9a5972130b75066c82595a1fae3', 'ADMIN@gmail.com', 'ADMIN', 'cina'),
(4, 'AWAN', '844260b70836bd5bf0122938869960a2', 'AWAN@gmail.com', 'Awan irang', 'india'),
(5, 'admin2', 'c84258e9c39059a89ab77d846ddab909', 'admin2@gmail.com', 'Admin2', 'India'),
(6, 'AWAN1', '71809cb654839711e25397cd2c235a47', 'AWAN1@gmail.com', 'Awan irang', 'cina'),
(7, 'aa', '4124bc0a9335c27f086f24ba207a4912', 'aa@gmail.com', 'aa', 'aa');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`albumid`),
  ADD KEY `userid` (`userid`);

--
-- Indeks untuk tabel `foto`
--
ALTER TABLE `foto`
  ADD PRIMARY KEY (`fotoid`),
  ADD KEY `albumid` (`albumid`),
  ADD KEY `userid` (`userid`);

--
-- Indeks untuk tabel `komentarfoto`
--
ALTER TABLE `komentarfoto`
  ADD PRIMARY KEY (`komentarid`),
  ADD KEY `fotoid` (`fotoid`),
  ADD KEY `userid` (`userid`);

--
-- Indeks untuk tabel `likefoto`
--
ALTER TABLE `likefoto`
  ADD PRIMARY KEY (`likeid`),
  ADD KEY `fotoid` (`fotoid`),
  ADD KEY `userid` (`userid`);

--
-- Indeks untuk tabel `user1`
--
ALTER TABLE `user1`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `album`
--
ALTER TABLE `album`
  MODIFY `albumid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `foto`
--
ALTER TABLE `foto`
  MODIFY `fotoid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `komentarfoto`
--
ALTER TABLE `komentarfoto`
  MODIFY `komentarid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `likefoto`
--
ALTER TABLE `likefoto`
  MODIFY `likeid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT untuk tabel `user1`
--
ALTER TABLE `user1`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `album`
--
ALTER TABLE `album`
  ADD CONSTRAINT `album_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `user1` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `foto`
--
ALTER TABLE `foto`
  ADD CONSTRAINT `foto_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `user1` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `foto_ibfk_2` FOREIGN KEY (`albumid`) REFERENCES `album` (`albumid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `komentarfoto`
--
ALTER TABLE `komentarfoto`
  ADD CONSTRAINT `komentarfoto_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `user1` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `komentarfoto_ibfk_2` FOREIGN KEY (`fotoid`) REFERENCES `foto` (`fotoid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `likefoto`
--
ALTER TABLE `likefoto`
  ADD CONSTRAINT `likefoto_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `user1` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `likefoto_ibfk_2` FOREIGN KEY (`fotoid`) REFERENCES `foto` (`fotoid`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
