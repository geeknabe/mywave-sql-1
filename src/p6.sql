-- Problem 6 - Retrieve Employees with High Salary
-- With reference to tables created in Problem 1, write an SQL query to retrieve the names and positions of all employees with a salary greater than $50,000.

-- Bonus: Modify the query to retrieve the names, positions, and salaries of the top three highest-paid employees.

SELECT name, position
FROM employees
WHERE salary > 50000.00

-- Bonus:

SELECT name, position, salary
FROM employees
ORDER BY salary DESC
LIMIT 3