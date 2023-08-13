-- Problem 3 - Sales Analysis
-- With reference to tables created in Problem 1, write an SQL query to calculate the total quantity sold and the average quantity sold per order.

-- Bonus: Modify the query to include the total sales amount and average sales amount per order.

SELECT SUM(quantity), AVG(quantity)
FROM sales 
GROUP BY product_id
