/*
    Definition:
        The SELECT command in SQL is used to retrieve data from one or more tables. 
        It allows you to specify which columns and rows to retrieve, and you can apply filters, sorting, and aggregation to the results.

    Syntax:
       select column1, column2, ...
         from table_name
         where condition;

    Uses:
        - Select specific columns from a table.
        - Retrieve all columns from a table.
        - Filter the results using conditions.
        - Sort the results.
        - Aggregate data using functions like COUNT, AVG, SUM, etc.
        
*/

-- Example 1: Select Specific Columns
select first_name, last_name            
    from Employees;          

-- Example 2: Select All Columns
select *            
    from Employees;

-- Example 3: Select with a Condition      
select *            
    from Employees            
    where department = 'Sales';

-- Example 4: Select with Sorting     
select *            
    from Employees            
    order by salary desc;

-- Example 5: Select with Aggregation       
select department, avg(salary) as avg_salary            
    from Employees            
    group by department;

-- Example 6: Select with Multiple Conditions
select *            
    from Employees            
    where department = 'Sales' and salary > 50000;
