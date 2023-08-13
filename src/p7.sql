-- Problem 7 - Delete Customer
-- With reference to the tables created in Problem 1, write an SQL statement to delete a specific customer. You can specify the customer to delete by their customer_id.

-- Bonus: Modify the query to delete any related records associated with the customer being deleted to maintain data integrity.

DELETE FROM customers
WHERE customer_id = 1

--Bonus

DELETE customers, orders, sales
FROM customers
INNER JOIN orders ON orders.customer_id = customers.customer_id
INNER JOIN sales ON sales.customer_id = customers.customer_id
WHERE customer_id = 1