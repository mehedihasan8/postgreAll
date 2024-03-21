-- Active: 1710683129930@@127.0.0.1@5432@company_db
CREATE table departments (
    department_id SERIAL PRIMARY KEY,
    department_name VARCHAR(50) NOT NULL
);

CREATE Table employees (
    employee_id SERIAL PRIMARY KEY,
    employee_name VARCHAR(50) NOT NULL,
    age INT NOT NULL,
    email VARCHAR(100),
    department_id INT NOT NULL REFERENCES departments(department_id),
    salary DECIMAL(10, 2) NOT NULL,
    status VARCHAR(50)
);


INSERT INTO departments (department_name) VALUES 
    ('Engineering'),
    ('Marketing'),
    ('Finance');


INSERT INTO employees (employee_name, age, email, department_id, salary, status) VALUES
    ('Alice', 30, 'alice@example.com', 1, 60000, NULL),
    ('Bob', 35, 'bob@example.net', 2, 65000, NULL),
    ('Charlie', 28, 'charlie@google.com', 1, 55000, NULL),
    ('David', 33, 'david@yahoo.com', 2, 62000, NULL),
    ('Eve', 31, 'eve@example.net', 3, 58000, NULL),
    ('Frank', 29, 'frank@example.com', 1, 59000, NULL),
    ('Grace', 34, 'grace@google.com', 2, 63000, NULL),
    ('Henry', 32, 'henry@yahoo.com', 3, 57000, NULL),
    ('Ivy', 27, 'ivy@gmail.com', 1, 56000, NULL),
    ('Jack', 36, 'jack@example.net', 2, 64000, NULL),
    ('Karen', 29, 'karen@gmail.com', 3, 60000, NULL),
    ('Liam', 33, 'liam@gmail.com', 1, 59000, NULL),
    ('Mia', 31, 'mia@yahoo.com', 2, 62000, NULL),
    ('Nora', 28, 'nora@yahoo.com', 3, 57000, NULL),
    ('Oliver', 35, 'oliver@example.net', 1, 61000, NULL),
    ('Penelope', 30, 'penelope@google.com', 2, 63000, NULL),
    ('Quinn', 32, 'quinn@google.com', 3, 59000, NULL),
    ('Rachel', 27, 'rachel@gmail.com', 1, 55000, NULL),
    ('Sam', 34, 'sam@example.net', 2, 64000, NULL),
    ('Taylor', 31, 'taylor@yahoo.com', 3, 58000, NULL);


-- Query 1:
-- Retrieve all employees with a salary greater than 60000;

SELECT * FROM employees 
    WHERE salary > 60000 ORDER BY salary;


-- Query 2:
-- Retrieve the names of employees using a limit of 2, starting from the 3rd employee.

SELECT employee_name
 FROM employees
  LIMIT 2 
  OFFSET 2;



-- Query 3:
-- Calculate and display the average age of all employees.

SELECT Round(avg(age), 1) as average_age FROM employees;



-- Query 4:
-- Retrieve the names of employees whose email addresses contain 'example.com', 'example.net', or 'google.com'.

SELECT employee_name
 FROM employees 
 WHERE (email LIKE '%example.com' OR email LIKE '%example.net' OR email Like '%google.com')
 ORDER BY email;



-- Query 5:
-- Retrieve the names of all employees who belong to the department titled 'Engineering'.
SELECT employee_name 
 FROM employees as e
 JOIN departments as d ON d.department_id = e.department_id
 WHERE department_name = 'Engineering';


-- Query 6:
-- Update the status of the employee with the highest salary to 'Promoted'

UPDATE employees
set status = 'Promoted'
WHERE employee_id = (
    SELECT employee_id
    FROM employees
    ORDER BY salary DESC
    LIMIT 1
);


-- Query 7:
-- Retrieve the department name and the average salary of employees in each department:

SELECT department_name, avg(salary) FROM employees AS e
JOIN departments AS d ON d.department_id = e.department_id
GROUP BY department_name;

SELECT * FROM employees



## 1. What is PostgreSQL?

PostgreSQL is a powerful, open-source relational database management system known for its reliability and extensibility. It allows users to store and manage data in a structured way, and it supports SQL for querying and manipulation.

## 2. What is the purpose of a database schema in PostgreSQL?

A database schema in PostgreSQL organizes and structures data by defining the layout of tables, their columns, relationships, and constraints. It helps maintain data integrity and provides a logical structure for managing and accessing data.

## 3. Explain the primary key and foreign key concepts.

*Primary key:* A primary key uniquely identifies each record in a table and ensures data integrity by preventing duplicate or null values.

*Foreign key:* A foreign key establishes a relationship between two tables by referencing the primary key of another table. It maintains referential integrity and enforces constraints on the values that can be inserted into the foreign key column.

## 4. What is the difference between the VARCHAR and CHAR data types?

*VARCHAR:* Variable-length character data type that stores strings of varying lengths.

*CHAR:* Fixed-length character data type that stores strings of a specific length. It pads shorter strings with spaces to fill the allocated space.

## 5. Explain the purpose of the WHERE clause in a SELECT statement.

The WHERE clause filters rows returned by a SELECT statement based on specified conditions. It allows you to retrieve only the rows that meet the specified criteria.

## 6. What are the LIMIT and OFFSET clauses used for?

*LIMIT:* Restricts the number of rows returned by a query.

*OFFSET:* Specifies the number of rows to skip before starting to return rows from the result set. Used for pagination.

## 7. How can you perform data modification using UPDATE statements?

UPDATE statements modify existing data in a table by setting new values for one or more columns. You specify the table to update and use a WHERE clause to specify which rows to update.

## 8. What is the significance of the JOIN operation, and how does it work in PostgreSQL?

JOIN combines rows from two or more tables based on related columns. PostgreSQL supports various types of JOINs like INNER JOIN, LEFT JOIN, RIGHT JOIN, and FULL JOIN, allowing you to retrieve data from multiple tables based on specified conditions.

## 9. Explain the GROUP BY clause and its role in aggregation operations.

GROUP BY clause groups rows returned by a query into summary rows based on specified column values. It's used with aggregate functions like COUNT, SUM, AVG to perform calculations on grouped data.

## 10. How can you calculate aggregate functions like COUNT, SUM, and AVG in PostgreSQL?

Aggregate functions like COUNT, SUM, and AVG perform calculations on a set of rows. They're applied to specific columns and often used in conjunction with GROUP BY to summarize data.

## 11. What is the purpose of an index in PostgreSQL, and how does it optimize query performance?

An index in PostgreSQL is a data structure that improves the speed of data retrieval by providing fast access to rows based on column values. It optimizes query performance by reducing the number of rows that need to be scanned.

## 12. Explain the concept of a PostgreSQL view and how it differs from a table.

A PostgreSQL view is a virtual table generated by a SELECT query. Unlike a table, it doesn't store data itself but retrieves it dynamically from underlying tables. Views simplify complex queries and provide a way to present data in a structured format without duplicating it.