/*
    Definition:
        INNER JOIN in SQL is used to retrieve records that have matching values in both tables being joined.
        It only returns rows where there is a match between the specified columns in both tables.

    Syntax:
        SELECT column_names
        FROM table1
        INNER JOIN table2
        ON table1.common_column = table2.common_column;

    Uses:
        - Combine data from multiple tables based on a common column.
        - Retrieve related records across different tables.
        - Improve database normalization by linking related tables.
        - Extract specific data by filtering records with WHERE conditions.

    Example Scenarios:
        - Fetching customer orders along with customer details.
        - Getting employee information along with their department.
        - Displaying products and their corresponding suppliers.
*/

-- Example 1: Joining Customers and Orders
SELECT c.customer_id, c.name, o.order_id, o.order_date
FROM Customers c
INNER JOIN Orders o 
ON c.customer_id = o.customer_id;

-- Example 2: Joining Employees and Departments
SELECT e.employee_id, e.first_name, e.last_name, d.department_name
FROM Employees e
INNER JOIN Departments d 
ON e.department_id = d.department_id;

-- Example 3: Joining Students and Courses
SELECT s.student_id, s.name, c.course_name
FROM Students s
INNER JOIN Enrollments e 
ON s.student_id = e.student_id
INNER JOIN Courses c 
ON e.course_id = c.course_id;

-- Example 4: Joining Products and Suppliers with a Filter
SELECT p.product_name, p.price, s.supplier_name
FROM Products p
INNER JOIN Suppliers s 
ON p.supplier_id = s.supplier_id
WHERE p.price > 50;

-- Example 5: Using INNER JOIN with Aggregate Function
SELECT d.doctor_id, d.first_name, d.last_name, COUNT(a.admission_id) AS total_admissions
FROM Doctors d
INNER JOIN Admissions a 
ON d.doctor_id = a.attending_doctor_id
GROUP BY d.doctor_id, d.first_name, d.last_name;

-- Example 6: Multiple INNER JOINs with Condition
SELECT o.order_id, c.name AS customer_name, p.product_name, (p.price * o.quantity) AS total_cost
FROM Orders o
INNER JOIN Customers c 
ON o.customer_id = c.customer_id
INNER JOIN Products p 
ON o.product_id = p.product_id
WHERE o.order_date >= '2024-01-01';
