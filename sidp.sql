-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 09, 2024 at 10:04 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sidp`
--

-- --------------------------------------------------------

--
-- Table structure for table `complaint`
--

CREATE TABLE `complaint` (
  `complaint_id` int(10) NOT NULL,
  `perusahaan` varchar(250) NOT NULL,
  `email` varchar(300) NOT NULL,
  `id_customer` int(10) DEFAULT NULL,
  `complaint` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(10) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `alamat` varchar(50) DEFAULT NULL,
  `no_telp` varchar(15) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `nama`, `alamat`, `no_telp`, `email`) VALUES
(1, 'Anita', 'Jl. ABC No. 13', '081234567890', 'anita@example.com'),
(2, 'Tiara Wulandari', 'Jl. XYZ No. 56', '080987654321', 'tiara@example.com'),
(3, 'Putri Aprilia', 'Jl. DEF No. 79', '089876543210', 'putri@example.com'),
(4, 'Septiani', 'Jl. GHI No. 21', '085678901234', 'septiani@example.com'),
(5, 'Andre Wijaya', 'Jl. JKL No. 40', '082345678901', 'andre@example.com'),
(6, 'Fahri Akmal', 'Jl. MNO No. 19', '088765432109', 'fahri@example.com'),
(7, 'Lastrianti', 'Jl. PQR No. 32', '083456789012', 'lastri@example.com'),
(8, 'Ezra Cakti', 'Jl. STU No. 77', '086789012345', 'ezra@example.com'),
(9, 'Solehudin', 'Jl. VWX No. 15', '084567890123', 'soleh@example.com'),
(10, 'Bambang', 'Jl. YZA No. 10', '087890123456', 'bambang@example.com');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(10) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `NIK` varchar(50) DEFAULT NULL,
  `Role` varchar(50) DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `nama`, `NIK`, `Role`, `user_id`) VALUES
(1, 'Budi Anto', '3326160608070197', 'Manager', 1),
(2, 'Asep Parman', '3326160902090003', 'Sales', 2),
(3, 'Elis Nani', '3326160911060005', 'Admin', 3),
(4, 'Rizal Akbar', '3326160105070023', 'HR', 4),
(5, 'Misel Lia', '3326160105070023', 'Support', 5),
(6, 'Rini Rinjani', '3326160205060014', 'Marketing', 6),
(7, 'Bagas Andar', '3326160302090001', 'Developer', 7),
(8, 'Rudi Agung', '3326160608070048', 'Designer', 8),
(9, 'Yusuf Sofian', '3326160608070060', 'Quality Checker', 9),
(10, 'Azizah Nur', '3326160608070224', 'Analyst', 10);

-- --------------------------------------------------------

--
-- Table structure for table `final_payment`
--

CREATE TABLE `final_payment` (
  `fp_id` int(10) NOT NULL,
  `ro_id` int(10) NOT NULL,
  `pesanan` text DEFAULT NULL,
  `total` float DEFAULT NULL,
  `sign` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `keranjang`
--

CREATE TABLE `keranjang` (
  `cart_id` int(11) NOT NULL,
  `users_id` int(50) NOT NULL,
  `product_id` varchar(50) NOT NULL,
  `nama_product` varchar(250) NOT NULL,
  `harga_pcs` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `keranjang`
--

INSERT INTO `keranjang` (`cart_id`, `users_id`, `product_id`, `nama_product`, `harga_pcs`) VALUES
(35, 1, 'PROD003', 'Penghapus Joyko', 1000);

-- --------------------------------------------------------

--
-- Table structure for table `pesanan`
--

CREATE TABLE `pesanan` (
  `id` int(10) NOT NULL,
  `jumlah` int(10) DEFAULT NULL,
  `harga` float DEFAULT NULL,
  `id_stock` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pesanan`
--

INSERT INTO `pesanan` (`id`, `jumlah`, `harga`, `id_stock`) VALUES
(1, 40, 3500, 1),
(2, 10, 3000, 2),
(3, 8, 1000, 3),
(4, 12, 4000, 4),
(5, 6, 1500, 5),
(6, 15, 2500, 6),
(7, 7, 9000, 7),
(8, 9, 15000, 8),
(9, 11, 7000, 9),
(10, 4, 18500, 10);

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(10) NOT NULL,
  `kode_product` varchar(50) DEFAULT NULL,
  `nama_product` varchar(50) DEFAULT NULL,
  `harga_pcs` float NOT NULL,
  `supplier` char(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id_produk`, `kode_product`, `nama_product`, `harga_pcs`, `supplier`) VALUES
(1, 'PROD001', 'Buku Tulis Sidu', 3500, 'Supplier X'),
(2, 'PROD002', 'Pensil Faber Castell', 3000, 'Supplier Y'),
(3, 'PROD003', 'Penghapus Joyko', 1000, 'Supplier Z'),
(4, 'PROD004', 'Pena Gel Sidu', 4000, 'Supplier X'),
(5, 'PROD005', 'Penghapus Faber Castell', 1500, 'Supplier Y'),
(6, 'PROD006', 'Pensil Joyko', 2500, 'Supplier Z'),
(7, 'PROD007', 'Isi Binder Sidu', 9000, 'Supplier X'),
(8, 'PROD008', 'Correction Tape Faber Castell', 15000, 'Supplier Y'),
(9, 'PROD009', 'Spidol Joyko', 7000, 'Supplier Z'),
(10, 'PROD010', 'Buku Portfolio Sidu', 18500, 'Supplier X');

-- --------------------------------------------------------

--
-- Table structure for table `quality_control`
--

CREATE TABLE `quality_control` (
  `qc_id` int(10) NOT NULL,
  `so_id` int(10) NOT NULL,
  `produk` text NOT NULL,
  `catatan_qc` text NOT NULL,
  `sign` text NOT NULL,
  `valid` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `request_order`
--

CREATE TABLE `request_order` (
  `ro_id` int(10) NOT NULL,
  `so_id` int(10) NOT NULL,
  `spesifikasi` text NOT NULL,
  `sign` text NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sales_order`
--

CREATE TABLE `sales_order` (
  `so_id` int(10) NOT NULL,
  `amount` float NOT NULL,
  `id_customer` int(10) NOT NULL,
  `valid` tinyint(1) NOT NULL,
  `customer_name` varchar(250) NOT NULL,
  `pesanan` varchar(300) NOT NULL,
  `jumlah` int(255) NOT NULL,
  `harga_pcs` float(100,1) NOT NULL,
  `signatureData` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sales_order`
--

INSERT INTO `sales_order` (`so_id`, `amount`, `id_customer`, `valid`, `customer_name`, `pesanan`, `jumlah`, `harga_pcs`, `signatureData`) VALUES
(58, 35000, 1, 1, 'Nani', 'Buku Tulis Sidu', 10, 3500.0, '');

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
  `id` int(10) NOT NULL,
  `item` varchar(50) DEFAULT NULL,
  `jumlah` int(10) DEFAULT NULL,
  `id_produk` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`id`, `item`, `jumlah`, `id_produk`) VALUES
(1, 'Item A', 100, 1),
(2, 'Item B', 150, 2),
(3, 'Item C', 200, 3),
(4, 'Item D', 120, 4),
(5, 'Item E', 180, 5),
(6, 'Item F', 90, 6),
(7, 'Item G', 210, 7),
(8, 'Item H', 130, 8),
(9, 'Item I', 240, 9),
(10, 'Item J', 170, 10);

-- --------------------------------------------------------

--
-- Table structure for table `surat_jalan`
--

CREATE TABLE `surat_jalan` (
  `sj_id` int(10) NOT NULL,
  `so_id` int(10) NOT NULL,
  `pesanan` text NOT NULL,
  `sign` text NOT NULL,
  `date` date NOT NULL,
  `valid` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `users_id` int(10) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`users_id`, `username`, `password`) VALUES
(1, 'budi_anto', 'password121'),
(2, 'asep_parman', 'password122'),
(3, 'elis_nani', 'password123'),
(4, 'rizal_akbar', 'password124'),
(5, 'misel_lia', 'password125'),
(6, 'rini_rinjani', 'password126'),
(7, 'bagas_andar', 'password127'),
(8, 'rudi_agung', 'password128'),
(9, 'yusuf_sofian', 'password129'),
(10, 'azizah_nur', 'password130');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `complaint`
--
ALTER TABLE `complaint`
  ADD PRIMARY KEY (`complaint_id`),
  ADD KEY `id_customer` (`id_customer`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `final_payment`
--
ALTER TABLE `final_payment`
  ADD PRIMARY KEY (`fp_id`);

--
-- Indexes for table `keranjang`
--
ALTER TABLE `keranjang`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `pesanan`
--
ALTER TABLE `pesanan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_stock` (`id_stock`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indexes for table `quality_control`
--
ALTER TABLE `quality_control`
  ADD PRIMARY KEY (`qc_id`);

--
-- Indexes for table `request_order`
--
ALTER TABLE `request_order`
  ADD PRIMARY KEY (`ro_id`);

--
-- Indexes for table `sales_order`
--
ALTER TABLE `sales_order`
  ADD PRIMARY KEY (`so_id`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_produk` (`id_produk`);

--
-- Indexes for table `surat_jalan`
--
ALTER TABLE `surat_jalan`
  ADD PRIMARY KEY (`sj_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`users_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `complaint`
--
ALTER TABLE `complaint`
  MODIFY `complaint_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `final_payment`
--
ALTER TABLE `final_payment`
  MODIFY `fp_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `keranjang`
--
ALTER TABLE `keranjang`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `pesanan`
--
ALTER TABLE `pesanan`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `quality_control`
--
ALTER TABLE `quality_control`
  MODIFY `qc_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `request_order`
--
ALTER TABLE `request_order`
  MODIFY `ro_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `sales_order`
--
ALTER TABLE `sales_order`
  MODIFY `so_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `stock`
--
ALTER TABLE `stock`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `surat_jalan`
--
ALTER TABLE `surat_jalan`
  MODIFY `sj_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `users_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `complaint`
--
ALTER TABLE `complaint`
  ADD CONSTRAINT `complaint_ibfk_1` FOREIGN KEY (`id_customer`) REFERENCES `customer` (`id`);

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`users_id`);

--
-- Constraints for table `pesanan`
--
ALTER TABLE `pesanan`
  ADD CONSTRAINT `pesanan_ibfk_1` FOREIGN KEY (`id_stock`) REFERENCES `stock` (`id`);

--
-- Constraints for table `stock`
--
ALTER TABLE `stock`
  ADD CONSTRAINT `stock_ibfk_1` FOREIGN KEY (`id_produk`) REFERENCES `produk` (`id_produk`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
