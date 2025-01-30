/*
    Definition:
        The `ORDER BY` clause in SQL is used to sort the result set of a query by one or more columns. It can sort the data in ascending or descending order.
    Syntax:
        SELECT column_name(s)
        FROM table_name
        ORDER BY column_name(s) [ASC|DESC];
*/

-- Example 1: Basic ORDER BY (Ascending)
select name, salary 
    from Employees 
    order by salary; -- Default is ASC

-- Example 2: ORDER BY with DESC (Descending)
select name, salary 
    from Employees 
    order by salary desc; -- Sorts in descending order

-- Example 3: ORDER BY with Multiple Columns (Sort by more than one column)
select name, department, salary 
    from Employees 
    order by department, salary desc; -- First by department (ASC), then by salary (DESC)

-- Example 4: ORDER BY with Expressions (Sort based on computed values)
select name, salary, salary * 12 as annual_salary
    from Employees
    order by annual_salary desc; -- Sort by calculated annual salary
