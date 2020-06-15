-- --------------------------------------------------------
-- Host:                         127.0.0.3
-- Server version:               10.5.2-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for pbo lemon
CREATE DATABASE IF NOT EXISTS `pbo lemon` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `pbo lemon`;

-- Dumping structure for table pbo lemon.buah
CREATE TABLE IF NOT EXISTS `buah` (
  `Kode Buah` int(11) NOT NULL,
  `Nama Buah` varchar(50) NOT NULL,
  `Harga` bigint(20) NOT NULL DEFAULT 0,
  `Stok` varchar(50) NOT NULL DEFAULT '0',
  `Arrival Date` date NOT NULL,
  `Expired Date` date NOT NULL,
  `Rak` varchar(5) NOT NULL DEFAULT '',
  `Lokasi` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`Kode Buah`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table pbo lemon.buah: ~20 rows (approximately)
/*!40000 ALTER TABLE `buah` DISABLE KEYS */;
INSERT INTO `buah` (`Kode Buah`, `Nama Buah`, `Harga`, `Stok`, `Arrival Date`, `Expired Date`, `Rak`, `Lokasi`) VALUES
	(111, 'Jeruk', 28000, '15 kg', '2020-06-06', '2020-06-15', 'A01', 'Kolom A baris 1'),
	(112, 'Nenas', 35000, '10  kg', '2020-06-06', '2020-06-15', 'A02', 'Kolom A baris 2'),
	(113, 'Semangka tanpa biji', 40000, '6 kg', '2020-06-06', '2020-06-15', 'A03', 'Kolom A baris 3'),
	(114, 'Pisang Kepok', 27000, '15 kg', '2020-06-06', '2020-06-15', 'A04', 'Kolom A baris 4'),
	(115, 'Pisang Raja', 30000, '20 kg', '2020-06-06', '2020-06-15', 'B01', 'Kolom B baris 1'),
	(116, 'Mangga Arumanis', 35000, '8 kg', '2020-06-06', '2020-06-15', 'B02', 'Kolom B baris 2'),
	(117, 'Mangga Alpukat', 34000, '8 kg', '2020-06-06', '2020-06-15', 'B03', 'Kolom B baris 3'),
	(118, 'Mangga Madu', 34000, '8 kg', '2020-06-06', '2020-06-15', 'B04', 'Kolom B baris 4'),
	(119, 'Alpukat Mentega', 30000, '9 kg', '2020-06-06', '2020-06-15', 'C01', 'Kolom C baris 1'),
	(120, 'Alpukat Hass', 35000, '9 kg', '2020-06-06', '2020-06-15', 'C02', 'Kolom C baris 2'),
	(121, 'Sirsak', 40000, '6 kg', '2020-06-06', '2020-06-15', 'C03', 'Kolom C baris 3'),
	(122, 'Strawberry', 35000, '7 kg', '2020-06-06', '2020-06-15', 'C04', 'Kolom C baris 4'),
	(123, 'Salak', 28000, '10 kg', '2020-06-06', '2020-06-15', 'D01', 'Kolom D baris 1'),
	(124, 'Duku', 27000, '10 kg', '2020-06-06', '2020-06-15', 'D02', 'Kolom D baris 2'),
	(125, 'Buah Naga Putih', 40000, '14 kg', '2020-06-06', '2020-06-15', 'D03', 'Kolom D baris 3'),
	(126, 'Buah Naga Merah', 42000, '14 kg', '2020-06-06', '2020-06-15', 'D04', 'Kolom D baris 4'),
	(127, 'Apel Merah', 33000, '15 kg', '2020-06-06', '2020-06-15', 'E01', 'Kolom E baris 1'),
	(128, 'Apel Hijau', 34000, '15 kg', '2020-06-06', '2020-06-15', 'E02', 'Kolom E baris 2'),
	(129, 'Anggur', 40000, '10 kg', '2020-06-06', '2020-06-15', 'E03', 'Kolom E baris 3'),
	(130, 'Buah Pir', 35000, '12 kg', '2020-06-06', '2020-06-15', 'E04', 'Kolom E baris 4'),
	(131, 'Anggur Hijau', 45000, '20 kg', '2020-06-06', '2020-06-15', 'E08', 'Kolom E baris 8'),
	(132, 'Belimbing', 10000, '20 kg', '2020-06-06', '2020-06-12', 'E10', 'Kolom E baris 10');
/*!40000 ALTER TABLE `buah` ENABLE KEYS */;

-- Dumping structure for table pbo lemon.catatankeuangan
CREATE TABLE IF NOT EXISTS `catatankeuangan` (
  `IDCatatan` char(50) NOT NULL,
  `Tanggal` date DEFAULT NULL,
  `Nominal` int(11) DEFAULT NULL,
  `Keadaan` char(50) DEFAULT NULL,
  PRIMARY KEY (`IDCatatan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table pbo lemon.catatankeuangan: ~2 rows (approximately)
/*!40000 ALTER TABLE `catatankeuangan` DISABLE KEYS */;
INSERT INTO `catatankeuangan` (`IDCatatan`, `Tanggal`, `Nominal`, `Keadaan`) VALUES
	('12201', '2019-06-28', 28000000, 'Untung'),
	('12203', '2019-08-28', 43000000, 'Untung'),
	('12302', '2019-07-28', 41000000, 'Untung'),
	('1234', '2019-08-28', 23000000, 'Rugi');
/*!40000 ALTER TABLE `catatankeuangan` ENABLE KEYS */;

-- Dumping structure for table pbo lemon.laporanpemesanan
CREATE TABLE IF NOT EXISTS `laporanpemesanan` (
  `IDLaporan` char(50) NOT NULL,
  `Tanggal` date DEFAULT NULL,
  `Kategori` char(50) DEFAULT NULL,
  `TotalPemesanan` int(11) DEFAULT NULL,
  PRIMARY KEY (`IDLaporan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table pbo lemon.laporanpemesanan: ~3 rows (approximately)
/*!40000 ALTER TABLE `laporanpemesanan` DISABLE KEYS */;
INSERT INTO `laporanpemesanan` (`IDLaporan`, `Tanggal`, `Kategori`, `TotalPemesanan`) VALUES
	('301', '2019-06-14', 'Bulanan', 12000000),
	('302', '2019-07-28', 'Bulanan', 4000000),
	('303', '2019-08-28', 'Bulanan', 5000000),
	('304', '2019-09-28', 'Bulanan', 10000000),
	('305', '2019-10-28', 'Bulanan', 50000000);
/*!40000 ALTER TABLE `laporanpemesanan` ENABLE KEYS */;

-- Dumping structure for table pbo lemon.laporantransaksi
CREATE TABLE IF NOT EXISTS `laporantransaksi` (
  `Kode Laporan` char(50) NOT NULL DEFAULT '',
  `Kategori` char(50) NOT NULL DEFAULT '',
  `Tanggal` date NOT NULL,
  `TotalTransaksi` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`Kode Laporan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table pbo lemon.laporantransaksi: ~3 rows (approximately)
/*!40000 ALTER TABLE `laporantransaksi` DISABLE KEYS */;
INSERT INTO `laporantransaksi` (`Kode Laporan`, `Kategori`, `Tanggal`, `TotalTransaksi`) VALUES
	('201', 'Mingguan', '2019-06-14', 5000000),
	('202', 'Bulanan', '2019-06-28', 40000000),
	('203', 'Bulanan', '2019-07-28', 45000000),
	('204', 'Bulanan', '2019-08-28', 56000000),
	('205', 'Mingguan', '2019-09-28', 4000000);
/*!40000 ALTER TABLE `laporantransaksi` ENABLE KEYS */;

-- Dumping structure for table pbo lemon.pembelian
CREATE TABLE IF NOT EXISTS `pembelian` (
  `ID Pembelian` varchar(50) NOT NULL,
  `Tanggal Pembelian` datetime NOT NULL,
  `Nama Buah` varchar(50) NOT NULL,
  `Jumlah` varchar(50) NOT NULL,
  `Harga` bigint(20) NOT NULL,
  `Total` bigint(20) NOT NULL,
  `Jenis Pembayaran` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID Pembelian`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table pbo lemon.pembelian: ~5 rows (approximately)
/*!40000 ALTER TABLE `pembelian` DISABLE KEYS */;
INSERT INTO `pembelian` (`ID Pembelian`, `Tanggal Pembelian`, `Nama Buah`, `Jumlah`, `Harga`, `Total`, `Jenis Pembayaran`) VALUES
	('P01', '2020-06-12 23:10:54', 'Pisang Raja', '2 kg', 30000, 60000, 'Tunai'),
	('P02', '2020-06-12 23:13:47', 'Buah Naga Putih', '1 kg', 40000, 40000, 'e-money'),
	('P03', '2020-06-12 23:14:36', 'Alpukat Mentega', '3 kg', 30000, 90000, 'e-money'),
	('P04', '2020-06-12 23:15:19', 'Jeruk', '2 kg', 28000, 56000, 'Tunai'),
	('P05', '2020-06-12 23:16:13', 'Buah Pir', '1 kg', 35000, 35000, 'Tunai');
/*!40000 ALTER TABLE `pembelian` ENABLE KEYS */;

-- Dumping structure for table pbo lemon.resi
CREATE TABLE IF NOT EXISTS `resi` (
  `ID Pembelian` varchar(50) NOT NULL,
  `Nama Admin` varchar(50) NOT NULL,
  `Jenis Transaksi` varchar(50) NOT NULL,
  `Nama Buah` varchar(50) NOT NULL,
  `Jumlah` varchar(50) NOT NULL,
  `Harga` bigint(20) NOT NULL DEFAULT 0,
  `Total` bigint(20) NOT NULL,
  `Jumlah yang dibayarkan` bigint(20) NOT NULL DEFAULT 0,
  `Kembalian` bigint(20) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table pbo lemon.resi: ~5 rows (approximately)
/*!40000 ALTER TABLE `resi` DISABLE KEYS */;
INSERT INTO `resi` (`ID Pembelian`, `Nama Admin`, `Jenis Transaksi`, `Nama Buah`, `Jumlah`, `Harga`, `Total`, `Jumlah yang dibayarkan`, `Kembalian`) VALUES
	('P01', 'Andika', 'Tunai', 'Pisang Raja', '2 kg', 30000, 60000, 100000, 40000),
	('P02', 'Andika', 'e-money', 'Buah Naga Putih', '1 kg', 40000, 40000, 40000, 0),
	('P03', 'Indah', 'e-money', 'Alpukat Mentega', '3 kg', 30000, 90000, 90000, 0),
	('P04', 'Indah', 'Tunai', 'Jeruk', '2 kg', 28000, 56000, 60000, 4000),
	('P05', 'Indah', 'Tunai', 'Buah Pir', '1 kg', 35000, 35000, 50000, 15000);
/*!40000 ALTER TABLE `resi` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
