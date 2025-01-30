/*
    Definition:
        The UPDATE command in SQL is used to modify the existing records in a table. 
        It allows you to change the values of one or more columns in a single row or multiple rows based on a specified condition.

    Syntax:
       update table_name
         set column1 = value1, column2 = value2, ...
         where condition;

    Uses:
        - Modify the values of one or more columns in a single row.
        - Update the values of one or more columns in multiple rows.
        - Change the values of a column based on a specified condition.
        - Update the values of a column in one table based on the values of another table.
        
*/

-- Example 1: Update a Single Row
update Users            
    set email = 'han@gmail.com'        
    where user_id = 1;          

-- Example 2: Update Multiple Rows      
update Users            
    set email = 'jan@gmail.com'        
    where user_id in (2, 3, 4);

-- Example 3: Update a Column Based on a Condition
update Users            
    set phone_number = '123-456-7890'        
    where user_id = 1;
