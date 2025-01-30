/*
    Definition:
        The `GROUP BY` clause in SQL is used to arrange identical data into groups. This is commonly used with aggregate functions (`COUNT()`, `SUM()`, `AVG()`, `MIN()`, `MAX()`) to perform operations on each group of data.

    Syntax:
        SELECT column_name(s), aggregate_function(column_name)
        FROM table_name
        WHERE condition
        GROUP BY column_name(s);
        
    Common Uses:
        - Group data based on a specific column.
        - Apply aggregate functions on grouped data.
        - Filter grouped data using `HAVING` clause.
*/

-- Example 1: Simple GROUP BY (Group by a single column)
select department, count(*) as total_employees 
    from Employees 
    group by department;

-- Example 2: GROUP BY with SUM (Sum of values in each group)
select department, sum(salary) as total_salary 
    from Employees 
    group by department;
    -- we can use avg, min, max, sum, count

-- Example 3: GROUP BY with multiple columns (Group by more than one column)
select department, job_title, count(*) as total_employees 
    from Employees 
    group by department, job_title;

-- Example 4: GROUP BY with HAVING clause (Filter groups based on aggregate functions)
select department, avg(salary) as average_salary 
    from Employees 
    group by department 
    having avg(salary) > 50000;

-- Example 5: GROUP BY with ORDER BY (Order groups based on aggregate function)
select department, count(*) as total_employees 
    from Employees 
    group by department 
    order by total_employees desc;

-- Example 6: GROUP BY with DISTINCT (Remove duplicates before grouping)
select distinct department 
    from Employees 
    group by department;

