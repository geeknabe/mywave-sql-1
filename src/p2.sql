-- Problem 2 - Retrieve Orders from 'New York'
-- With reference to tables created in Problem 1, write an SQL query to retrieve the customer names, 
-- order dates, and total amounts for all orders placed by customers from the city 'New York'.
-- Bonus: Modify the query to include the average total amount per customer for orders placed in the city 'New York'.

SELECT orders.order_date, orders.total_amount
FROM orders
INNER JOIN customers ON orders.customer_id=customers.customer_id
WHERE customers.city == "New York";

-- Bonus:
SELECT AVG(orders.total_amount) as average_total_amount
FROM orders
INNER JOIN customers ON orders.customer_id=customers.customer_id
WHERE customers.city == "New York";