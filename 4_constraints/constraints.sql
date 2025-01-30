/*
    Definition:
        SQL constraints are rules applied to the columns of a table to enforce data integrity and ensure the accuracy, consistency, and reliability of the database. Constraints are used to limit the type of data that can be inserted into a table.

    Syntax:
       constraint_name constraint_type (column_name);

    Types of Constraints:
        - NOT NULL: Ensures that a column cannot have a NULL value.
        - UNIQUE: Ensures that all values in a column are unique.
        - PRIMARY KEY: Uniquely identifies each record in a table. It is a combination of NOT NULL and UNIQUE.
        - FOREIGN KEY: Ensures that the value in a column matches a value in another table's column, establishing a relationship.
        - CHECK: Ensures that values in a column meet a specific condition.
        - DEFAULT: Provides a default value for a column when no value is specified.
        
*/

-- Example 1: NOT NULL Constraint
create table Employees (
    employee_id int not null,
    first_name varchar(50) not null,
    last_name varchar(50) not null
);

-- Example 2: UNIQUE Constraint
create table Users (
    user_id int not null,
    email varchar(100) unique
);

-- Example 3: PRIMARY KEY Constraint
create table Students (
    student_id int primary key,
    first_name varchar(50),
    last_name varchar(50)
);

-- Example 4: FOREIGN KEY Constraint
create table Orders (
    order_id int not null,
    customer_id int,
    foreign key (customer_id) references Customers(customer_id)
);

-- Example 5: CHECK Constraint
create table Employees (
    employee_id int primary key,
    salary decimal(10, 2),
    check (salary > 0)
);

-- Example 6: DEFAULT Constraint
create table Products (
    product_id int primary key,
    product_name varchar(100),
    price decimal(10, 2) default 0.0
);
