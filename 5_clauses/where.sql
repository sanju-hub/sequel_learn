/*
    Definition:
        The `WHERE` clause in SQL is used to filter records based on a specific condition. It restricts the rows returned by the `SELECT`, `UPDATE`, `DELETE`, and other queries by specifying a condition that must be true for the row to be included in the result set.

    Syntax:
        SELECT column_name(s)
        FROM table_name
        WHERE condition;

    Common Uses:
        - Filter rows based on exact match conditions.
        - Filter rows based on pattern matching.
        - Filter rows based on range or multiple conditions.
        - Combine multiple conditions using logical operators (`AND`, `OR`, `NOT`).
        - Check for `NULL` values.
*/

-- Example 1: WHERE with a simple condition (Exact Match)
select * 
    from Employees 
    where department = 'Sales';

-- Example 3: WHERE with BETWEEN clause (Range condition)
select * 
    from Employees 
    where salary between 40000 and 60000;

-- Example 4: WHERE with IN clause (Multiple values)
select * 
    from Employees 
    where department in ('Sales', 'Marketing', 'HR');

-- Example 5: WHERE with LIKE clause (Pattern matching)
select * 
    from Employees 
    where first_name like 'J%';  -- Starts with 'J'

-- Example 7: WHERE with IS NULL (Check for NULL values)
select * 
    from Employees 
    where manager_id is null;

-- Example 8: WHERE with IS NOT NULL (Check for non-NULL values)
select * 
    from Employees 
    where manager_id is not null;

-- Example 9: WHERE with AND operator (Multiple conditions)
select * 
    from Employees 
    where department = 'Sales' and salary > 50000;

-- Example 10: WHERE with OR operator (Alternative conditions)
select * 
    from Employees 
    where department = 'Sales' or department = 'Marketing';

-- Example 11: WHERE with NOT operator (Negation of condition)
select * 
    from Employees 
    where not department = 'Sales';

-- Example 12: WHERE with Complex Condition (Multiple AND and OR)
select * 
    from Employees 
    where (department = 'Sales' or department = 'Marketing') and salary > 50000;

-- Example 13: WHERE with String Comparison (Exact Match)
select * 
    from Employees 
    where last_name = 'Smith';

-- Example 14: WHERE with Date Comparison (Date values)
select * 
    from Employees 
    where joining_date > '2022-01-01';

-- Example 15: WHERE with Date Functions (Using NOW() to get current date)
select * 
    from Employees 
    where joining_date < NOW();  -- Before current date

-- Example 16: WHERE with Complex Logic (Combination of AND, OR, and NOT)
select * 
    from Employees 
    where (salary > 60000 or department = 'Marketing') and not department = 'HR';

-- Example 17: WHERE with OR and LIKE (Multiple possible patterns)
select * 
    from Employees 
    where first_name like 'J%' or last_name like 'D%';

-- Example 22: WHERE with NOT IN (Check if value is not in the list)
select * 
    from Employees 
    where department not in ('Sales', 'HR');
