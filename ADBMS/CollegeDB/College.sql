
-- Creating the Database
CREATE DATABASE CollegeDB;
USE CollegeDB;

-- Creating the Employee Table
CREATE TABLE Employee (
	empid INT,
    first_name VARCHAR(20),
    last_name  VARCHAR(20),
    emp_age    INT,
    emp_zone   VARCHAR(20)
);

DESC Employee;

-- Inserting the Data
INSERT INTO Employee(empid, first_name, last_name, emp_age, emp_zone)
VALUES (101, "Ratan", "Kumar", 20, "North"),
       (102, "Amit", "Sharma", 30, "South"),
       (103, "Priya", "Desai", 25, NULL);

SELECT * FROM Employee;

-- Add single records
INSERT INTO Employee VALUES (104, "Rahul", "Varma", NULL, "East");
INSERT INTO Employee VALUES (105, "Sneha", "Kulkarni", NULL, " ");
INSERT INTO Employee VALUES (106, "Devi", NULL, NULL, "South");

SELECT * FROM Employee;

-- Updating Records
UPDATE Employee SET emp_zone = "South" WHERE empid = 103;
UPDATE Employee SET emp_age = 53, emp_zone = "South" WHERE empid = 105;
SELECT * FROM Employee;


-- Delete a record
DELETE FROM Employee WHERE empid = 104;
DELETE FROM Employee WHERE empid = 105;
SELECT * FROM Employee;

-- Truncate 
TRUNCATE TABLE Employee;
SELECT * FROM Employee;
