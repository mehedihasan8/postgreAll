-- Active: 1710683129930@@127.0.0.1@5432@ph

 CREATE TABLE students (
    student_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) not NULL,
    last_name VARCHAR(50) NOT NULL,
    age INT,
    grade CHAR(2),
    course VARCHAR(50),
    email VARCHAR(100),
    dob DATE,
    blood_group VARCHAR(5),
    country VARCHAR(50)
 )

-- data read form all rows or columns

 SELECT * FROM students

--spacific data read and ride

SELECT first_name, age, email FROM students


-- amra chaile default colum name ke rename kore dekhte pari...

SELECT email as "Student Email", age as "Student Age" FROM students

-- amra chaile data sort korte pari and ascending or desendinging kore dekhte pari...

SELECT * FROM students ORDER BY age ASC, first_name ASC; 


-- unique kono kico find or qury korte DISTINCT use kora hoy...

SELECT DISTINCT country FROM students 


SELECT DISTINCT course FROM students 


SELECT DISTINCT age FROM students 

-- delet table form database

 DROP TABLE students

--data insert student table 
 INSERT INTO students (first_name, last_name, age, grade, course, email, dob, blood_group, country)
VALUES
    ('John', 'Doe', 20, 'A', 'Math', 'john.doe@example.com', '2004-01-15', 'O+', 'USA'),
    ('Jane', 'Smith', 21, 'B', 'History', 'jane.smith@example.com', '2003-05-20', 'A-', 'Canada'),
    ('Alice', 'Johnson', 19, 'A', 'Physics', 'alice.johnson@example.com', '2002-11-08', 'B+', 'UK'),
    ('Bob', 'Williams', 22, 'C', 'Chemistry', 'bob.williams@example.com', '2001-07-03', 'AB-', 'Australia'),
    ('Charlie', 'Brown', 20, 'B', 'English', NULL, '2004-03-30', 'A+', 'New Zealand'),
    ('Emman', 'Jones', 23, 'B', 'Biology', 'emma.jones@example.com', '2000-09-12', 'A-', 'USA'),
    ('Michael', 'Johnson', 22, 'C', 'Physics', 'michael.johnson@example.com', '2002-04-05', 'O-', 'Canada'),
    ('Olivia', 'Davis', 21, 'A', 'Math', 'olivia.davis@example.com', '2003-12-18', 'B-', 'UK'),
    ('William', 'Taylor', 20, 'B', 'Chemistry', NULL, '2004-08-30', 'A+', 'Australia'),
    ('Sophia', 'Brown', 24, 'A', 'English', 'sophia.brown@example.com', '1999-06-25', 'AB+', 'New Zealand'),
    ('Liam', 'Miller', 19, 'C', 'History', 'liam.miller@example.com', '2002-02-10', 'A-', 'USA'),
    ('Ava', 'Anderson', 22, 'B', 'Biology', 'ava.anderson@example.com', '2000-11-15', 'B+', 'Canada'),
    ('Noah', 'Martinez', 21, 'A', 'Physics', NULL, '2001-04-28', 'O+', 'UK'),
    ('Isabella', 'Clark', 20, 'C', 'Chemistry', 'isabella.clark@example.com', '2003-10-03', 'A-', 'Australia'),
    ('Ethan', 'Garcia', 23, 'B', 'Math', 'ethan.garcia@example.com', '2000-07-22', 'B-', 'New Zealand'),
    ('Sophie', 'Moore', 22, 'A', 'English', 'sophie.moore@example.com', '2002-12-05', 'A+', 'USA'),
    ('Mia', 'Hernandez', 20, 'C', 'History', 'mia.hernandez@example.com', '2004-05-18', 'AB-', 'Canada'),
    ('James', 'Young', 21, 'B', 'Biology', 'james.young@example.com', '2003-02-08', 'O-', 'UK'),
    ('Emma', 'Gonzalez', 24, 'A', 'Physics', NULL, '1999-09-30', 'B+', 'Australia'),
    ('Miam', 'Wright', 19, 'C', 'Math', 'liam.wright@example.com', '2002-06-14', 'A+', 'New Zealand');




-- data filtering

-- Select students from the USA
-- Select students with 'A' grade in Physics
-- Select students with a specific blood group ('A+')
-- Select students from the USA or from Australia
-- Select students from the USA or from Australia and the age is 20
-- Select students with a grade of 'A' or 'B' in Math or Physics:

-- Select students older than 20


SELECT * FROM students


--Select students from the USA
SELECT * FROM students 
   WHERE country = 'UK'

-- Select students with 'A' grade in Physics

SELECT * FROM students 
   WHERE grade = 'A' AND course = 'Physics'

-- Select students with a specific blood group ('A+')

SELECT * FROM students 
   WHERE blood_group = 'A+' 


-- Select students from the USA or from Australia

SELECT * FROM students 
   WHERE country = 'USA' OR country = 'Australia'

-- Select students from the USA or from Australia and the age is 20

SELECT * FROM students 
   WHERE (country = 'USA' OR country = 'Australia') AND age = 20

-- Select students with a grade of 'A' or 'B' in Math or Physics:

SELECT * FROM students
   WHERE (grade = 'A' OR grade = 'B') AND (course = 'Math' OR course = 'Physics')

-- Select students older than 20

SELECT * FROM students
   WHERE age > 21 and course = 'Biology'
