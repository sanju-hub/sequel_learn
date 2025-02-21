/*
    Definition:
        LEFT JOIN in SQL returns all records from the left table and the matched records from the right table.
        If there is no match, the result is NULL on the side of the right table.

    Syntax:
        SELECT column_names
        FROM table1
        LEFT JOIN table2
        ON table1.common_column = table2.common_column;

    Uses:
        - Retrieve all records from the left table, even if there's no matching record in the right table.
        - Identify unmatched records in the right table.
        - Useful when you want to keep all records from the primary dataset and optionally include related data.

    Example Scenarios:
        - Getting customers with or without orders.
        - Listing employees along with their department, including those not assigned to any department.
        - Displaying all products with supplier details, even if some products don't have suppliers.
*/

-- Example 1: Customers with or without Orders
SELECT c.customer_id, c.name, o.order_id, o.order_date
FROM Customers c
LEFT JOIN Orders o 
ON c.customer_id = o.customer_id;

-- Example 2: Employees with Departments (Including Unassigned Employees)
SELECT e.employee_id, e.first_name, e.last_name, d.department_name
FROM Employees e
LEFT JOIN Departments d 
ON e.department_id = d.department_id;

-- Example 3: Students with Enrolled Courses (Including Students Not Enrolled)
SELECT s.student_id, s.name, c.course_name
FROM Students s
LEFT JOIN Enrollments e 
ON s.student_id = e.student_id
LEFT JOIN Courses c 
ON e.course_id = c.course_id;