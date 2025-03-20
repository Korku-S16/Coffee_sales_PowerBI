-- Convert transaction_date to DATE format
UPDATE coffee_shop_sales
SET transaction_date = STR_TO_DATE(transaction_date, '%d-%m-%Y');

-- Modify the column data type to DATE
ALTER TABLE coffee_shop_sales
MODIFY COLUMN transaction_date DATE;

-- Convert transaction_time to TIME format
UPDATE coffee_shop_sales
SET transaction_time = STR_TO_DATE(transaction_time, '%H:%i:%s');

-- Modify the column data type to TIME
ALTER TABLE coffee_shop_sales
MODIFY COLUMN transaction_time TIME;

-- Describe data types of all columns
DESCRIBE coffee_shop_sales;

-- Change column name for better readability
ALTER TABLE coffee_shop_sales
CHANGE COLUMN `ï»¿transaction_id` transaction_id INT;

