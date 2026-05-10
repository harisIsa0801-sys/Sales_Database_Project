-- =============================================
-- DATABASE STRUCTURE & DATA
-- =============================================

DROP TABLE IF EXISTS sales_database;

CREATE TABLE `sales_database` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(255) NOT NULL,
  `category` varchar(100) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `stock_quantity` int(11) NOT NULL,
  `sales_quantity` int(11) NOT NULL, 
  `sale_date` date NOT NULL,
  `total_sales` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `sales_database` (`product_name`, `category`, `price`, `stock_quantity`, `sales_quantity`, `sale_date`, `total_sales`) VALUES
('SQL Master E-Book', 'SQL_Education', 25.00, 100, 15, '2026-05-07', 375.00),
('Wireless Mouse', 'Accessories', 45.90, 20, 5, '2026-05-07', 229.50),
('Data Analytics API', 'Software_Service', 100.00, 150, 10, '2026-05-07', 1000.00),
('Phone Fast Charger', 'Accessories', 65.00, 40, 8, '2026-05-07', 520.00),
('Python Language Master', 'Python_Education', 300.00, 30, 12, '2026-05-07', 3600.00);

-- =============================================
-- DATA ANALYSIS QUERIES (DATA ANALYST VIBES)
-- =============================================

-- 1. Total Revenue
SELECT SUM(total_sales) AS total_revenue FROM sales_database;

-- 2. Highest Sales Product
SELECT product_name, total_sales FROM sales_database ORDER BY total_sales DESC LIMIT 1;

-- 3. Low Stock Alert
SELECT product_name, stock_quantity FROM sales_database WHERE stock_quantity < 50;

