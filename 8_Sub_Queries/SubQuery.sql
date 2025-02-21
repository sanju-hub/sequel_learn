/*
    Definition:
        A subquery (or inner query) is a query nested inside another query.
        It can be used in SELECT, INSERT, UPDATE, or DELETE statements or inside clauses like WHERE, FROM, or HAVING.
        Subqueries help break down complex queries into simpler, manageable parts.

    Types:
        - Single-row subquery: Returns a single value.
        - Multi-row subquery: Returns multiple values.
        - Correlated subquery: Depends on the outer query for its values.
        - Nested subquery: Subquery inside another subquery.

    Syntax:
        SELECT column_names
        FROM table
        WHERE column_name operator (SELECT column_names FROM table WHERE condition);

    Uses:
        - Filter results based on the outcome of another query.
        - Perform calculations or data extraction without JOINs.
        - Replace complex JOINs when only related data is needed.
        - Use with aggregate functions to compare individual rows to overall results.

    Example Scenarios:
        - Fetching customers who placed orders.
        - Getting employees working in specific departments.
        - Finding students enrolled in certain courses.
        - Listing products priced above the average.
        - Identifying doctors with the highest number of admissions.
*/

--Goal: Get customer details for those who have placed at least one order.
SELECT customer_id, name
FROM Customers
WHERE customer_id IN (
    SELECT customer_id
    FROM Orders
);

--Goal: Get employee details for those in the "Sales" department.

SELECT employee_id, first_name, last_name
FROM Employees
WHERE department_id = (
    SELECT department_id
    FROM Departments
    WHERE department_name = 'Sales'
);

--Goal: Display products with prices higher than the average price.

SELECT product_name, price
FROM Products
WHERE price > (
    SELECT AVG(price)
    FROM Products
);

--Goal: List orders where total cost (price × quantity) exceeds 1000.

SELECT order_id, customer_id, product_id, (quantity * price) AS total_cost
FROM Orders
WHERE (quantity * (
    SELECT price
    FROM Products
    WHERE Products.product_id = Orders.product_id
)) > 1000;


--📝 1. Subquery in SELECT Clause

--Goal: Display product names along with their average price in the same row.

SELECT product_name, price, 
       (SELECT AVG(price) FROM Products) AS average_price
FROM Products;

--📝 2. Subquery in FROM Clause

--Goal: Get the average price of products from a derived table.

SELECT category_id, AVG(price) AS avg_price
FROM (
    SELECT category_id, price
    FROM Products
    WHERE price > 50
) AS filtered_products
GROUP BY category_id;


--📝 3. Subquery in WHERE Clause

--Goal: Find customers who placed orders.

SELECT customer_id, name
FROM Customers
WHERE customer_id IN (
    SELECT customer_id
    FROM Orders
);

--📝 4. Subquery in HAVING Clause

--Goal: Get departments with more employees than the company average.

SELECT department_id, COUNT(*) AS employee_count
FROM Employees
GROUP BY department_id
HAVING COUNT(*) > (
    SELECT AVG(emp_count)
    FROM (
        SELECT COUNT(*) AS emp_count
        FROM Employees
        GROUP BY department_id
    ) AS department_counts
);

--📝 5. Subquery in UPDATE Statement

--Goal: Increase product prices by 10% for products priced above the average.

UPDATE Products
SET price = price * 1.10
WHERE price > (
    SELECT AVG(price)
    FROM Products
);


--📝 6. Subquery in DELETE Statement

--Goal: Delete orders placed before the earliest customer's registration date.

DELETE FROM Orders
WHERE order_date < (
    SELECT MIN(registration_date)
    FROM Customers
);


--📝 7. Subquery in INSERT Statement

--Goal: Insert high-value customers into a new table.

INSERT INTO VIP_Customers (customer_id, name)
SELECT customer_id, name
FROM Customers
WHERE customer_id IN (
    SELECT customer_id
    FROM Orders
    GROUP BY customer_id
    HAVING SUM(order_amount) > 5000
);

--📝 8. Correlated Subquery Example

--Goal: List products with the highest price in their category.

SELECT product_name, price, category_id
FROM Products p1
WHERE price = (
    SELECT MAX(price)
    FROM Products p2
    WHERE p2.category_id = p1.category_id
);
