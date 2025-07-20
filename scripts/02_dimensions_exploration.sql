/*
===============================================================================
Dimension Exploration
===============================================================================
Purpose:
    - To explore the structure of dimension tables

SQL Functions Used:
    - DISTINCT
    - ORDER BY
===============================================================================
*/

-- Explore All Unique Countries our customers come from
SELECT DISTINCT country FROM gold.dim_customers

-- Explore All Unique Categories, Subcategories and Products
SELECT DISTINCT category, subcategory, product_name FROM gold.dim_products
ORDER BY 1,2,3
