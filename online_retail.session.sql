-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 13, 2023 at 06:36 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */
;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */
;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */
;
/*!40101 SET NAMES utf8mb4 */
;
--
-- Database: `online_retail_aloy`
--
-- --------------------------------------------------------
--
-- Table structure for table `barang`
--
CREATE TABLE `barang` (
    `kode_barang` char(5) NOT NULL,
    `nama_barang` varchar(50) DEFAULT NULL,
    `stok_barang` int(11) DEFAULT NULL,
    `harga_barang` int(11) DEFAULT NULL
) ENGINE = InnoDB DEFAULT CHARSET = latin1;
--
-- Dumping data for table `barang`
--
INSERT INTO `barang` (
        `kode_barang`,
        `nama_barang`,
        `stok_barang`,
        `harga_barang`
    )
VALUES ('B01', 'Spidol', 20, 10000),
    ('B02', 'Bantal', 10, 15000),
    ('B03', 'Handuk', 25, 45000),
    ('B04', 'Gunting', 15, 8000),
    ('B05', 'Handuk', 25, 55000),
    ('B06', 'Kipas Angin', 25, 5000),
    ('B07', 'Dompet Kulit', 15, 6000),
    ('B08', 'Lampu Bohlam', 30, 25000),
    ('B09', 'Mangkuk', 25, 15000),
    ('B10', 'Tas Sekolah', 30, 5000);
-- --------------------------------------------------------
--
-- Table structure for table `kasir`
--
CREATE TABLE `kasir` (
    `kode_kasir` char(5) NOT NULL,
    `nama_kasir` varchar(50) DEFAULT NULL,
    `jk_kasir` enum('Pria', 'Wanita') DEFAULT NULL,
    `nohp_kasir` char(13) DEFAULT NULL
) ENGINE = InnoDB DEFAULT CHARSET = latin1;
--
-- Dumping data for table `kasir`
--
INSERT INTO `kasir` (
        `kode_kasir`,
        `nama_kasir`,
        `jk_kasir`,
        `nohp_kasir`
    )
VALUES ('K01', 'Aloy', 'Pria', '081366881200'),
    ('K02', 'Bila', 'Wanita', '081365454321'),
    ('K03', 'Cantika', 'Wanita', '081309871243'),
    ('K04', 'Dedy', 'Pria', '081212430987'),
    ('K05', 'Ermin', 'Pria', '081244987655'),
    ('K06', 'Fakhri', 'Pria', '081365454321'),
    ('K07', 'Galuh', 'Pria', '081300771243'),
    ('K08', 'Hendi', 'Pria', '081311092354'),
    ('K09', 'Indah', 'Wanita', '081298126789'),
    ('K10', 'Jesslyn', 'Wanita', '081298546754');
-- --------------------------------------------------------
--
-- Table structure for table `pelanggan`
--
CREATE TABLE `pelanggan` (
    `kode_pelanggan` char(5) NOT NULL,
    `nama_pelanggan` varchar(50) DEFAULT NULL,
    `alamat_pelanggan` varchar(50) DEFAULT NULL,
    `nohp_pelanggan` char(13) DEFAULT NULL
) ENGINE = InnoDB DEFAULT CHARSET = latin1;
--
-- Dumping data for table `pelanggan`
--
INSERT INTO `pelanggan` (
        `kode_pelanggan`,
        `nama_pelanggan`,
        `alamat_pelanggan`,
        `nohp_pelanggan`
    )
VALUES (
        'P01',
        'Aloysius Riandika',
        'Medan',
        '081243560987'
    ),
    ('P02', 'Bima Sakti', 'Medan', '081398761354'),
    (
        'P03',
        'Cindy Kasih',
        'Tanjung Morawa',
        '081209875412'
    ),
    (
        'P04',
        'Dimas Armadan',
        'Perbaungan',
        '081234987654'
    ),
    (
        'P05',
        'Efllyn Rafika',
        'Helvetia',
        '081309871464'
    ),
    ('P06', 'Ferry Syah', 'Tembung', '081309765432'),
    (
        'P07',
        'Gilang Aditya',
        'Sei Rampah',
        '081243567687'
    ),
    ('P08', 'Hartono', 'Amplas', '081223135467'),
    (
        'P09',
        'Indah Permata',
        'Medan Johor',
        '081276875654'
    ),
    (
        'P10',
        'Jihan Amartia',
        'Belawan',
        '081366765432'
    );
-- --------------------------------------------------------
--
-- Table structure for table `transaksi`
--
CREATE TABLE `transaksi` (
    `no_transaksi` char(10) NOT NULL,
    `kode_kasir` char(5) DEFAULT NULL,
    `kode_pelanggan` char(5) DEFAULT NULL,
    `kode_barang` char(5) DEFAULT NULL,
    `tgl_transaksi` date DEFAULT NULL,
    `jumlah_barang` int(11) DEFAULT NULL,
    `total_harga` int(11) DEFAULT NULL
) ENGINE = InnoDB DEFAULT CHARSET = latin1;
--
-- Dumping data for table `transaksi`
--
INSERT INTO `transaksi` (
        `no_transaksi`,
        `kode_kasir`,
        `kode_pelanggan`,
        `kode_barang`,
        `tgl_transaksi`,
        `jumlah_barang`,
        `total_harga`
    )
VALUES (
        'T01',
        'K01',
        'P01',
        'B01',
        '2023-11-01',
        1,
        10000
    ),
    (
        'T02',
        'K02',
        'P02',
        'B02',
        '2023-11-06',
        2,
        30000
    ),
    (
        'T03',
        'K03',
        'P03',
        'B03',
        '2023-11-09',
        3,
        135000
    ),
    (
        'T04',
        'K04',
        'P04',
        'B04',
        '2023-11-15',
        1,
        8000
    ),
    (
        'T05',
        'K05',
        'P05',
        'B03',
        '2023-11-25',
        2,
        50000
    ),
    (
        'T06',
        'K06',
        'P06',
        'B06',
        '2023-11-16',
        3,
        15000
    ),
    (
        'T07',
        'K07',
        'P07',
        'B07',
        '2023-11-11',
        2,
        12000
    ),
    (
        'T08',
        'K08',
        'P08',
        'B08',
        '2023-11-15',
        1,
        25000
    ),
    (
        'T09',
        'K09',
        'P09',
        'B09',
        '2023-11-15',
        5,
        75000
    ),
    (
        'T10',
        'K10',
        'P10',
        'B10',
        '2023-11-13',
        3,
        15000
    ),
    (
        'T11',
        'K10',
        'P01',
        'B01',
        '2023-11-03',
        3,
        30000
    ),
    (
        'T12',
        'K10',
        'P01',
        'B05',
        '2023-11-03',
        2,
        110000
    ),
    (
        'T13',
        'K10',
        'P01',
        'B08',
        '2023-11-03',
        2,
        50000
    );
--
-- Indexes for dumped tables
--
--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
ADD PRIMARY KEY (`kode_barang`);
--
-- Indexes for table `kasir`
--
ALTER TABLE `kasir`
ADD PRIMARY KEY (`kode_kasir`);
--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
ADD PRIMARY KEY (`kode_pelanggan`);
--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
ADD PRIMARY KEY (`no_transaksi`);
COMMIT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */
;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */
;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */
;