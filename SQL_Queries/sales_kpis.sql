-- Total Sales KPI
SELECT ROUND(SUM(unit_price * transaction_qty), 2) AS Total_Sales
FROM coffee_shop_sales;

-- Total Orders KPI
SELECT COUNT(DISTINCT transaction_id) AS Total_Orders
FROM coffee_shop_sales;

-- Average Transaction Value
SELECT ROUND(SUM(unit_price * transaction_qty) / COUNT(DISTINCT transaction_id), 2) AS Avg_Transaction_Value
FROM coffee_shop_sales;
