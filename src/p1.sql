-- Problem 1 - Table Creation (DDL)
-- Write SQL statements to create the following tables. 
-- Subsequent problems that follow will need to use these tables. Provide dummy data insert script for all tables.
-- Bonus: Write additional SQL statements to add constraints such as primary keys and foreign keys, to the created tables.

CREATE TABLE employees {
  id INT(20) NOT NULL,
  name VARCHAR(512) NOT NULL,
  position VARCHAR(512),
  department VARCHAR(512),
  salary DECIMAL(10, 2),
  PRIMARY KEY (id)
}

CREATE TABLE sales {
  order_id INT(20) NOT NULL,
  customer_id INT(20),
  product_id INT(20),
  quantity INT(255),
  sale_date DATE,
  PRIMARY KEY (order_id),
  FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
  FOREIGN KEY (product_id) REFERENCES inventories(product_id)
}

CREATE TABLE customers {
  customer_id INT(20) NOT NULL,
  customer_name VARCHAR(512),
  city VARCHAR(512),
  PRIMARY KEY (customer_id)
}

CREATE TABLE orders {
  order_id INT(20) NOT NULL,
  order_date DATE,
  customer_id INT(20),
  total_amount INT(255),
  PRIMARY KEY (order_id),
  FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
}

CREATE TABLE inventories {
  product_id INT(255) NOT NULL,
  product_name VARCHAR(512),
  quantity INT(255),
  price DECIMAL(10,2),
  PRIMARY KEY (product_id)
}
