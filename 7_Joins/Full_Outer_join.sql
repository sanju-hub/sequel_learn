/*
    Definition:
        FULL OUTER JOIN in SQL returns all records when there is a match in either the left or right table.
        It combines the results of both LEFT JOIN and RIGHT JOIN.
        If there is no match, the missing side will have NULL values.

    Syntax:
        SELECT column_names
        FROM table1
        FULL OUTER JOIN table2
        ON table1.common_column = table2.common_column;

    Uses:
        - Retrieve all records from both tables, with matching records from both sides where available.
        - Identify unmatched records in both tables.
        - Useful for merging datasets while retaining all information, even if some data is missing.

    Example Scenarios:
        - Getting all customers and orders, including customers without orders and orders without customers.
        - Listing all employees and departments, even if some employees aren’t assigned or departments are empty.
        - Displaying all students and courses, even if some students aren't enrolled or some courses have no students.
*/

-- Example 1: Customers and Orders (Including Unmatched Records from Both Sides)
SELECT c.customer_id, c.name, o.order_id, o.order_date
FROM Customers c
FULL OUTER JOIN Orders o 
ON c.customer_id = o.customer_id;

-- Example 2: Employees and Departments (Including Employees without Departments and Vice Versa)
SELECT e.employee_id, e.first_name, e.last_name, d.department_name
FROM Employees e
FULL OUTER JOIN Departments d 
ON e.department_id = d.department_id;

-- Example 3: Students and Courses (Including Students Not Enrolled and Courses with No Students)
SELECT s.student_id, s.name, c.course_name
FROM Students s
FULL OUTER JOIN Enrollments e 
ON s.student_id = e.student_id
FULL OUTER JOIN Courses c 
ON e.course_id = c.course_id;
