/*
===============================================================================
Date Range Exploration
===============================================================================
Purpose:
    - To determine the temporal boundaries of key data points.
    - To understand the range of historical data.

SQL Functions Used:
    - MIN(), MAX(), DATEDIFF()
===============================================================================
*/

-- Find the date of the first and last order
-- How many months of sales are available
SELECT
MIN(order_date) first_order_date,
MAX(order_date) last_order_date,
DATEDIFF(MONTH, MIN(order_date), MAX(order_date)) order_range_months
FROM gold.fact_sales

-- Find the youngest and the oldest customer
SELECT
MIN(birthdate) oldest_birthdate,
DATEDIFF(year, MIN(birthdate), GETDATE()) oldest_age,
MAX(birthdate) youngest_birthdate,
DATEDIFF(year, MAX(birthdate), GETDATE()) youngest_age
FROM gold.dim_customers
