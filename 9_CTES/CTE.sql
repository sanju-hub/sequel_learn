/*
    Definition:
        A CTE (Common Table Expression) is a temporary result set defined using the WITH clause.
        It simplifies complex queries by breaking them into reusable and readable parts.

    Syntax:
        WITH cte_name AS (
            SELECT column_names
            FROM table_name
            WHERE conditions
        )
        SELECT * FROM cte_name;

    Uses:
        - Improve query readability and maintainability.
        - Perform recursive queries.
        - Reuse query results without creating temporary tables.
        - Chain multiple CTEs for complex queries.
*/

-- 📝 1. Scalar CTE (Returns a single value)
-- Goal: Products above the average price.

WITH avg_price_cte AS (SELECT AVG(price) AS avg_price FROM Products)
SELECT product_name, price
FROM Products, avg_price_cte
WHERE price > avg_price_cte.avg_price;


-- 📝 2. Aggregate CTE (With GROUP BY and aggregation)
--  Goal: Top 3 best-selling products.

WITH sales AS (
    SELECT product_id, SUM(quantity) AS total_sold FROM Orders GROUP BY product_id
)
SELECT p.product_name, s.total_sold
FROM Products p JOIN sales s ON p.product_id = s.product_id
ORDER BY s.total_sold DESC LIMIT 3;


-- 📝 3. CTE with UPDATE (Modify data using CTE)
--  Goal: Increase price for above-average products by 10%.

WITH avg_price_cte AS (SELECT AVG(price) AS avg_price FROM Products)
UPDATE Products
SET price = price * 1.10
WHERE price > (SELECT avg_price FROM avg_price_cte);


-- 📝 4. CTE with DELETE (Delete data using CTE)
--  Goal: Remove old orders.

WITH old_orders AS (SELECT order_id FROM Orders WHERE order_date < '2023-01-01')
DELETE FROM Orders WHERE order_id IN (SELECT order_id FROM old_orders);


-- 📝 5. CTE with INSERT (Insert data using CTE)
-- Goal: Insert high-spenders into VIP table.

WITH high_spenders AS (
    SELECT customer_id FROM Orders GROUP BY customer_id HAVING SUM(order_amount) > 5000
)
INSERT INTO VIP_Customers (customer_id)
SELECT customer_id FROM high_spenders;

