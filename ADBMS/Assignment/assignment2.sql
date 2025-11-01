CREATE DATABASE Company;
USE Company;

-- Create a table EMPLOYEE with following schema:
-- (Emp_no, E_name, E_address, E_ph_no, Dept_no, Dept_name,Job_id , Salary)
CREATE TABLE Employee(
	Emp_no    INT,
    E_name    TEXT,
    E_address TEXT,
    E_ph_no   TEXT,
    Dept_no   TEXT,
    Dept_name TEXT,
    Job_id    INT,
    Salary    INT
	);
DESC Employee;

-- Insert at least 5 rows in the table
INSERT INTO Employee VALUES
(001, "Raj"   , "Pune"          , "9999999999", "D10", "Tech-Support", 11, 20000),
(002, "Karan" , "Mumbai"        , "8787878787", "D12", "Accounts"    , 12, 53000),
(003, "Aryan" , "Sambhaji Nagar", "1233211233", "D10", "Tech-Support", 13, 23000),
(004, "Ritesh", "Nashik"        , "8766766666", "D13", "HR"          , 14, 75000),
(005, "Kunal" , "Pune"          , "9899980000", "D14", "Sales"       , 15, 40000);
SELECT * FROM Employee;

-- Display all the information of EMP table
SELECT * FROM Employee;

-- Display the record of each employee who works in department D10.
SELECT * FROM Employee WHERE Dept_no="D10";

-- Update the city of Emp_no-10 with current city as Nagpur.
UPDATE Employee SET e_address="Nagpur" WHERE Emp_no=10;
SELECT * FROM Employee WHERE Emp_no=10;

-- Display the details of Employees who works in department MECH.
SELECT * FROM Employee WHERE Dept_name="MECH";

-- Delete the email_id of employee Raj
UPDATE Employee SET email_id=NULL WHERE e_name="Raj";
SELECT * FROM Employee WHERE e_name="Raj";

-- Display the complete record of employees working in SALES Department
SELECT * FROM Employee WHERE Dept_name="Sales";

-- Delete one record from the table
DELETE FROM Employee WHERE Emp_no=10;
SELECT * FROM Employee WHERE Emp_no=10;

-- Create an index on E_name
CREATE INDEX idx_emp_name ON Employee (E_name);

-- Apply transaction control statement using Commit, Rollback & Savepoint
START TRANSACTION;
UPDATE Employee SET Salary=30000 WHERE E_name="Raj";
SAVEPOINT A;
DELETE FROM Employee WHERE E_name="Kunal";
SELECT * FROM Employee;
ROLLBACK TO A;
SELECT * FROM Employee;
COMMIT;
SELECT * FROM Employee;

--  Sort the employee by Salary.
SELECT * FROM Employee ORDER BY Salary;

--  Sort the employee by Salary from highest to lowest
SELECT * FROM Employee ORDER BY Salary DESC;

--  Sort the employee by Salary from lowest to highest
SELECT * FROM Employee ORDER BY Salary ASC;

-- Sort the employee name in Ascending and Salary in Descending order.
SELECT * FROM Employee ORDER BY E_name ASC, Salary DESC;

-- Delete all the records using the Truncate command. 
TRUNCATE TABLE Employee;
SELECT * FROM Employee;
