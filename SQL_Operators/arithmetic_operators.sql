/*
    Definition:
        Arithmetic operators in SQL are used to perform mathematical calculations on numerical data. 
        They can be used in SELECT queries, WHERE clauses, and other SQL statements to perform operations such as addition, subtraction, multiplication, division, and modulus.

    Arithmetic Operators:
        - Addition (`+`): Adds two numbers.
        - Subtraction (`-`): Subtracts one number from another.
        - Multiplication (`*`): Multiplies two numbers.
        - Division (`/`): Divides one number by another.
        - Modulus (`%`): Returns the remainder of a division operation.

    Syntax:
        select column_name [operator] value 
        from table_name 
        where condition;

    Uses:
        - Perform basic calculations directly within SQL queries.
        - Adjust column values dynamically in SELECT queries.
        - Use arithmetic operations in combination with WHERE conditions for filtering.
        - Derive new calculated columns in SELECT queries.
*/

-- Example 1: Addition
select price + 10 as increased_price 
    from Products; 

-- Example 2: Subtraction
select price - discount as final_price
    from Products;

-- Example 3: Multiplication
select quantity * price as total_cost 
    from Orders;

-- Example 4: Division
select total_amount / 2 as half_amount 
    from Transactions
    where transaction_id = 5;

-- Example 5: Modulus
select user_id, age % 2 as is_even 
    from Users;

-- Example 6: Combining Arithmetic Operators
select (price * quantity) - discount as net_amount
    from Orders
    where order_id = 10;
