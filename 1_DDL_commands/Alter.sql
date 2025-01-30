/*
    Definition:
    The ALTER command in SQL is used to modify the structure of an existing database object, such as a table, view, or column. 
    It allows you to add, delete, or modify columns, as well as rename or change constraints.

    Syntax:
    1. To add a column:
       ALTER TABLE table_name ADD column_name datatype;

    2. To delete a column:
       ALTER TABLE table_name DROP COLUMN column_name;

    3. To modify a column:
       ALTER TABLE table_name MODIFY column_name datatype;

    4. To add a constraint:
       ALTER TABLE table_name ADD CONSTRAINT constraint_name constraint_definition;

    5. To drop a constraint:
       ALTER TABLE table_name DROP CONSTRAINT constraint_name;

    Uses:
    - Add new columns to an existing table.
    - Delete unnecessary columns.
    - Modify data types, constraints, or properties of existing columns.
    - Rename columns or tables to maintain clarity.
    - Add or remove constraints like primary keys, foreign keys, or unique keys.
*/

/* Example 1: Adding a Column */
ALTER TABLE Users ADD phone_number VARCHAR(15);

/* Example 2: Deleting a Column */
ALTER TABLE Users DROP COLUMN phone_number;

/* Example 3: Modifying a Column Data Type */
ALTER TABLE Users MODIFY email VARCHAR(150);

/* Example 4: Renaming a Column */
ALTER TABLE Users RENAME COLUMN username TO user_name;

/* Example 5: Adding a Foreign Key Constraint */
ALTER TABLE BorrowRequests 
ADD CONSTRAINT fk_user_id FOREIGN KEY (user_id) REFERENCES Users(user_id);

/* Example 6: Dropping a Foreign Key Constraint */
ALTER TABLE BorrowRequests DROP CONSTRAINT fk_user_id;

