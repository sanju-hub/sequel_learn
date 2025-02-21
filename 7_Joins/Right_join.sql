/*
    Definition:
        RIGHT JOIN in SQL returns all records from the right table and the matched records from the left table.
        If there is no match, the result is NULL on the side of the left table.

    Syntax:
        SELECT column_names
        FROM table1
        RIGHT JOIN table2
        ON table1.common_column = table2.common_column;

    Uses:
        - Retrieve all records from the right table, even if there's no matching record in the left table.
        - Identify unmatched records in the left table.
        - Useful when the right table contains the primary dataset.

    Example Scenarios:
        - Listing all orders, including those without customer details.
        - Getting all departments with employees, even if some departments have no employees.
        - Displaying all courses with enrolled students, even if some courses have no enrollments.
*/

-- Example 1: Orders with Customers (Including Orders without Customer Info)
SELECT c.customer_id, c.name, o.order_id, o.order_date
FROM Customers c
RIGHT JOIN Orders o 
ON c.customer_id = o.customer_id;

-- Example 2: Employees with Departments (Including Departments with No Employees)
SELECT e.employee_id, e.first_name, e.last_name, d.department_name
FROM Employees e
RIGHT JOIN Departments d 
ON e.department_id = d.department_id;

-- Example 3: Students with Courses (Including Courses with No Students)
SELECT s.student_id, s.name, c.course_name
FROM Students s
RIGHT JOIN Enrollments e 
ON s.student_id = e.student_id
RIGHT JOIN Courses c 
ON e.course_id = c.course_id;
