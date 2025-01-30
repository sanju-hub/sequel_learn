/*
    Definition:
        The `HAVING` clause in SQL filters records that are grouped by the `GROUP BY` clause, often used with aggregate functions.
    Syntax:
        SELECT column_name(s), aggregate_function(column_name)
        FROM table_name
        WHERE condition
        GROUP BY column_name(s)
        HAVING aggregate_condition;
*/

-- Example 1: Basic HAVING with Aggregate Functions
select department, count(*) as total_employees
    from Employees 
    group by department 
    having count(*) > 5;

-- Example 2: HAVING with Multiple Aggregate Functions
select department, sum(salary) as total_salary, avg(salary) as average_salary
    from Employees 
    group by department
    having sum(salary) > 100000 and avg(salary) > 50000;

-- Example 3: HAVING with Specific Conditions (Using `IN`, `LIKE`, `BETWEEN`)
select department, avg(salary) as average_salary
    from Employees 
    group by department
    having avg(salary) in (40000, 50000) and department like 'A%';


-- Example 4: HAVING with Date Functions and NULL Checks
select year(joining_date) as joining_year, count(*) as total_employees
    from Employees 
    group by year(joining_date) 
    having year(joining_date) > 2020 and avg(salary) is not null;
