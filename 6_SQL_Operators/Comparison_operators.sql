/*
    Definition:
        Comparison operators in SQL are used to compare two values. They are typically used in WHERE clauses to filter records or in other logical expressions to evaluate conditions.

    Comparison Operators:
        - Equal to (`=`): Checks if two values are equal.
        - Not equal to (`!=` or `<>`): Checks if two values are not equal.
        - Greater than (`>`): Checks if one value is greater than another.
        - Less than (`<`): Checks if one value is less than another.
        - Greater than or equal to (`>=`): Checks if one value is greater than or equal to another.
        - Less than or equal to (`<=`): Checks if one value is less than or equal to another.

    Syntax:
        select column_name(s)
        from table_name
        where column_name [operator] value;

    Uses:
        - Filter rows based on a specific condition.
        - Compare values between columns or constants.
        - Combine with logical operators to evaluate complex conditions.
        - Use in JOINs to specify matching conditions.
*/

-- Example 1: Equal To
select * 
    from Users
    where user_id = 1;

-- Example 2: Not Equal To
select * 
    from Users
    where status != 'inactive';

-- Example 3: Greater Than
select * 
    from Products
    where price > 100;

-- Example 4: Less Than
select * 
    from Products
    where stock < 50;

-- Example 5: Greater Than or Equal To
select * 
    from Orders
    where total_amount >= 500;

-- Example 6: Less Than or Equal To
select * 
    from Orders
    where order_date <= '2025-01-01';

-- Example 7: Combining Comparison Operators
select * 
    from Users
    where age > 18 and age <= 30;

-- Example 8: Using Comparison Operators with Columns
select * 
    from Products
    where price > cost_price;

--note:
-- dont use != in sql, use <> instead, != is not standard sql
