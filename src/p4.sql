-- Problem 4 - Update Product Price
-- With reference to tables created in Problem 1, write an SQL query to update the price of a specific product by specifying the product_id.

-- Bonus: Modify the query to update the price of all products by increasing it by 10%.

UPDATE inventories
SET price = 1.00
WHERE product_id = 1

-- Bonus:

UPDATE inventories
SET price = price + (price * 10.0 / 100.0)
WHERE product_id = 1