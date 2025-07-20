/*
===============================================================================
Measures Exploration (Key Metrics)
===============================================================================
Purpose:
    - To calculate aggregated metrics (e.g., totals, averages) for quick insights.
    - To identify overall trends or spot anomalies.

SQL Functions Used:
    - COUNT(), SUM(), AVG()
===============================================================================
*/

-- Find the Total Sales
SELECT SUM(sales_amount) Total_Sales FROM gold.fact_sales
-- Find how many items were sold
SELECT SUM(quantity) total_quantity FROM gold.fact_sales
-- Find the average selling price
SELECT AVG(price) avg_price FROM gold.fact_sales
-- Find the Total number of Orders
SELECT COUNT(order_number) total_orders FROM gold.fact_sales
SELECT COUNT(DISTINCT order_number) total_orders FROM gold.fact_sales
-- Find the total number of products
SELECT COUNT(product_key) total_products FROM gold.dim_products
-- Find the total number of customers
SELECT COUNT(customer_key) total_customers FROM gold.dim_customers
-- Find the total number of customers that have placed an order
SELECT COUNT(DISTINCT customer_key) total_customers FROM gold.fact_sales

-- Generate a report that shows all key metrics of the business
SELECT 'Total Sales' AS measure_name, SUM(sales_amount) AS measure_value FROM gold.fact_sales
UNION ALL
SELECT 'Total Quantity', SUM(quantity) FROM gold.fact_sales
UNION ALL
SELECT 'Average price', AVG(price) FROM gold.fact_sales
UNION ALL
SELECT 'Total No. Orders', COUNT(DISTINCT order_number) FROM gold.fact_sales
UNION ALL
SELECT 'Total No. Products', COUNT(product_key) FROM gold.dim_products
UNION ALL
SELECT 'Total No. Customers', COUNT(customer_key) FROM gold.dim_customers
