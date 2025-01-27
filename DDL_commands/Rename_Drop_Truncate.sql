/*
    ====================
    SQL Commands: RENAME, DROP, TRUNCATE
    ==================== 

    1. RENAME Command:
    ------------------
    Definition:
    The RENAME command is used to change the name of a database object like a table, column, or database.

    Syntax:
    a) Rename a table:
       RENAME TABLE old_table_name TO new_table_name;

    b) Rename a column (supported in some RDBMS like MySQL):
       ALTER TABLE table_name RENAME COLUMN old_column_name TO new_column_name;

    Uses:
    - To rename database objects for better clarity or to reflect changes in the data structure.

    Example:
*/
-- Rename a table
RENAME TABLE Users TO UserAccounts;

-- Rename a column (alternative using ALTER TABLE)
ALTER TABLE Books RENAME COLUMN genre TO category;



/*
    2. DROP Command:
    ----------------
    Definition:
    The DROP command is used to delete database objects such as a table, database, or index permanently.

    Syntax:
    a) Drop a table:
       DROP TABLE table_name;

    b) Drop a database:
       DROP DATABASE database_name;

    Uses:
    - To delete unnecessary tables, databases permanently.

    Example:
*/
-- Drop a table
DROP TABLE BorrowRequests;

-- Drop a database
DROP DATABASE LibraryDB;


/*
    3. TRUNCATE Command:
    --------------------
    Definition:
    The TRUNCATE command is used to delete all rows from a table quickly without logging each row deletion. 
    Unlike DROP, the table structure and its definition remain intact.

    Syntax:
    TRUNCATE TABLE table_name;

    Uses:
    - To remove all data from a table efficiently without dropping its structure.
    - Useful for resetting a table for fresh data insertion.

    Example:
*/
-- Truncate a table
TRUNCATE TABLE Books;