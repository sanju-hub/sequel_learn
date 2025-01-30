/*
    Definition:
        The DELETE command in SQL is used to remove one or more records from a table based on a specified condition. 
        It allows you to delete specific rows from a table without affecting the structure of the table itself.

    Syntax:
       delete from table_name
         where condition;

    Uses:
        - Delete a single row based on a condition.
        - Delete multiple rows based on a condition.
        
*/

-- Example 1: Delete a Single Row
delete from Users            
    where user_id = 1;          

-- Example 2: Delete Multiple Rows      
delete from Users            
    where user_id in (2, 3, 4);

-- Example 3: Delete Based on a Condition
delete from Users            
    where email = 'jan@gmail.com';

-- Example 4: Delete All Rows       
delete from Users;  
