/*
    Definition:
        Logical operators in SQL allow you to combine or modify conditions in queries. These operators help you to evaluate multiple conditions and return results based on the logical relationships between them.

    Logical Operators:
        - AND: Returns true if all conditions are true.
        - OR: Returns true if at least one condition is true.
        - NOT: Negates the condition (turns true to false, false to true).
        - LIKE: Checks if a column's value matches a pattern.
        - IN: Checks if a value exists within a list of values.
        - BETWEEN: Checks if a value lies within a specified range.
        - IS NULL: Checks if a value is NULL.
        - IS NOT NULL: Checks if a value is NOT NULL.

    Syntax:
        select column_name(s)
        from table_name
        where condition1 [logical_operator] condition2;

    Uses:
        - Combine multiple conditions in WHERE clauses.
        - Perform complex filtering using combinations of logical operators.
        - Handle patterns, ranges, lists, and NULL values in queries.
*/

-- Example 1: AND (All Conditions Must Be True)
select * 
    from Users
    where age > 18 and status = 'active';

-- Example 2: OR (At Least One Condition Must Be True)
select * 
    from Products
    where category = 'Electronics' or category = 'Home Appliances';

-- Example 3: NOT (Negates the Condition)
select * 
    from Orders
    where not status = 'cancelled';

-- Example 4: LIKE (Pattern Matching)
select * 
    from Users
    where email like '%@gmail.com';

-- Example 5: IN (Check if Value Exists in a List)
select * 
    from Products
    where category in ('Electronics', 'Home Appliances', 'Furniture');

-- Example 6: BETWEEN (Range Filtering)
select * 
    from Orders
    where order_date between '2025-01-01' and '2025-01-31';

-- Example 7: IS NULL (Check for NULL Values)
select * 
    from Employees
    where manager_id is null;

-- Example 8: IS NOT NULL (Check for Non-NULL Values)
select * 
    from Employees
    where manager_id is not null;

-- Example 9: Combining AND, OR, and NOT
select * 
    from Users
    where (age > 18 and status = 'active') or (role = 'admin' and not email like '%@yahoo.com');

-- Example 10: Combining AND, LIKE, and IS NOT NULL
select * 
    from Employees
    where department = 'Sales' and email like '%@company.com' and manager_id is not null;

-- Example 11: NOT with IN
select * 
    from Orders
    where customer_id not in (1, 2, 3);

-- Example 12: Using BETWEEN with AND
select * 
    from Products
    where price between 100 and 500 and stock > 10;

-- Example 13: NOT with LIKE
select * 
    from Users
    where email not like '%@yahoo.com';

-- Example 14: Combining IN, NOT, and IS NULL
select * 
    from Products
    where category not in ('Electronics', 'Furniture') and stock is null;
