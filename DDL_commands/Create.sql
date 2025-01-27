/*
    Definition:
    The CREATE command in SQL is used to create a new database, table, index, or other database objects. 
    It defines the structure of the database or objects within it.

    Syntax:
    1. CREATE DATABASE database_name;
    2. CREATE TABLE table_name (
         column1 datatype constraints,
         column2 datatype constraints,
         ...
       );

    Uses:
    - To create a database where all the data will be stored.
    - To define the schema for tables where data will be stored.
    - To create indexes for faster query performance.
    - To create views for simplifying complex queries.
*/

/* Example 1: Creating a Database */
CREATE DATABASE LibraryDB;

/* Example 2: Using the Database */
USE LibraryDB;

/* Example 3: Creating a Table */
CREATE TABLE Users (
    user_id INT AUTO_INCREMENT PRIMARY KEY, -- Primary key
    username VARCHAR(50) NOT NULL UNIQUE,  -- Unique username
    email VARCHAR(100) NOT NULL UNIQUE,    -- Unique email
    password_hash VARCHAR(255) NOT NULL,   -- Password storage
    role ENUM('admin', 'user') DEFAULT 'user', -- Role with default value
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, -- Creation time
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP -- Auto-update timestamp
);



/* Example 4: Creating a Table with Foreign Key */
CREATE TABLE BorrowRequests (
    request_id INT AUTO_INCREMENT PRIMARY KEY, -- Primary key
    user_id INT NOT NULL,                      -- Foreign key to Users
    book_id INT NOT NULL,                      -- Foreign key to Books
    status ENUM('pending', 'approved', 'denied') DEFAULT 'pending',
    request_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES Users(user_id),
    FOREIGN KEY (book_id) REFERENCES Books(book_id)
);

/* Example 5: Creating a Table for Books */
CREATE TABLE Books (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    author VARCHAR(100) NOT NULL,
    isbn VARCHAR(20) UNIQUE,
    published_year YEAR,
    genre VARCHAR(50),
    available_copies INT DEFAULT 1,
    total_copies INT DEFAULT 1,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

