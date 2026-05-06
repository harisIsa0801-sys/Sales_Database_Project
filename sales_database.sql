-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 06, 2026 at 08:18 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sql_data_analysis_project.sql`
--

-- --------------------------------------------------------

--
-- Table structure for table `sales_database`
--

CREATE TABLE `sales_database` (
  `id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `category` varchar(100) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `stock_quantity` int(11) NOT NULL,
  `sale_date` date NOT NULL,
  `total_sales` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sales_database`
--

INSERT INTO `sales_database` (`id`, `product_name`, `category`, `price`, `stock_quantity`, `sale_date`, `total_sales`) VALUES
(1, 'SQL Master E-Book', 'SQL_Education', 25.00, 100, '2026-05-07', 250.00),
(2, 'Wireless Mouse', 'Accessories', 45.90, 20, '2026-05-07', 459.00),
(3, 'Data Analytics API', 'Software_Service', 100.00, 100, '2026-05-07', 1000.00),
(4, 'Phone Fast Charger', 'Accessories', 65.00, 40, '2026-05-07', 650.00),
(5, 'Python Language Master', 'Python_Education', 300.00, 30, '2026-05-07', 3000.00);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
