-- Sales by Product Category
SELECT 
    product_category,
    ROUND(SUM(unit_price * transaction_qty), 1) AS Total_Sales
FROM coffee_shop_sales
WHERE MONTH(transaction_date) = 5
GROUP BY product_category
ORDER BY Total_Sales DESC;

-- Top 10 Best-Selling Products
SELECT 
    product_type,
    ROUND(SUM(unit_price * transaction_qty), 1) AS Total_Sales
FROM coffee_shop_sales
WHERE MONTH(transaction_date) = 5
GROUP BY product_type
ORDER BY Total_Sales DESC
LIMIT 10;
