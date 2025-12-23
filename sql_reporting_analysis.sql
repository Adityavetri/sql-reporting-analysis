
-- SQL-Based Reporting & Analysis Project
-- This file contains basic reporting queries used for MIS and business analysis

-- 1. View all sales data
SELECT *
FROM sales_data;

-- 2. Total revenue by category
SELECT 
    category,
    SUM(revenue) AS total_revenue
FROM sales_data
GROUP BY category;

-- 3. Total revenue by region
SELECT 
    region,
    SUM(revenue) AS total_revenue
FROM sales_data
GROUP BY region;

-- 4. Monthly revenue trend
SELECT 
    MONTH(order_date) AS month,
    SUM(revenue) AS total_revenue
FROM sales_data
GROUP BY MONTH(order_date)
ORDER BY month;

-- 5. High value transactions (revenue >= 20000)
SELECT *
FROM sales_data
WHERE revenue >= 20000;
