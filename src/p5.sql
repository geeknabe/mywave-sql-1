-- Problem 5 - Department Statistics
-- With reference to tables created in Problem 1, write an SQL query to calculate the average salary for each department.

-- Bonus: Modify the query to calculate the highest salary for each department and retrieve the department name, highest salary, and the employee(s) with that salary.

SELECT AVG(salary)
FROM employees
GROUP BY department

-- Bonus:

SELECT department, salary, name
FROM employees
WHERE salary = MAX(salary)
GROUP BY department