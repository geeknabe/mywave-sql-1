-- Problem 8 - Query Performance Optimization
-- Consider the following SQL query:

-- SELECT *
-- FROM employees
-- WHERE department = 'Sales' AND salary > 50000;
-- With reference to the tables created in Problem 1, analyze the query and propose an index or indexes that can significantly improve its performance.

-- Explain your reasoning behind choosing the specific column(s) for the index(es) and how they would enhance the execution of the query. Consider the selectivity of the columns, the order of the conditions, and any other factors that may impact the query performance.

-- Bonus: Discuss any potential trade-offs or drawbacks of implementing the suggested index(es), such as increased storage space or impact on write operations.

If the column department and salary is often queried, the easiest index you could create to improve 
the performance is having an index with both columns in it.

If we are sure that the 'Sales' department are often queried, we could make an index that only has said column
with the value 'Sales'.

The idea here is the minimize the amount of rows the server needs to traverse to improve performance.

