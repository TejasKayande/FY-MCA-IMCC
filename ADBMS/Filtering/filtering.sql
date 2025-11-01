
CREATE DATABASE Orgn;
USE Orgn;

CREATE TABLE Employee(
	emp_id INT NOT NULL PRIMARY KEY, 
	first_name VARCHAR(15), 
    last_name  VARCHAR(15),
    gender     CHAR,
    position   VARCHAR(15),
    dept       VARCHAR(15),
    manager_id VARCHAR(10)
);
    
DESC Employee;

INSERT INTO Employee (emp_id, first_name, last_name, gender, position, dept, manager_id)
VALUES
	(1, 'Jhon' , 'Allen', 'M', 'Team Leader', 'Retail' , 'M11'),
	(2, 'Kim'  , 'Hen'  , 'F', 'Team Leader', 'Finance', 'M12'),
	(3, 'Ravi' , 'Kumar', 'M', 'Manager'    , 'Retail' , 'M13'),
	(4, 'Aruna', 'Patel', 'F', 'Manager'    , 'Finance', 'M14'),
	(5, 'Kirti', 'Rai'  , 'F', 'President'  , 'HR'     , 'M15'),
	(6, 'Vikas', 'Joshi', 'M', 'President'  , 'HR'     , 'M16');
    
SELECT * FROM Employee;

-- DISTINCT Keyword
SELECT DISTINCT position FROM Employee ORDER BY position;
SELECT DISTINCT dept     FROM Employee ORDER BY dept;
	
    
-- AND operator
SELECT * FROM Employee WHERE position='President' AND dept='HR';
SELECT * FROM Employee WHERE position='President' AND dept='Finance';

-- OR operator
SELECT * FROM Employee WHERE position='Manager' OR position='President';
SELECT * FROM Employee WHERE position='Manager' OR dept='HR';

-- IN operator
SELECT * FROM Employee WHERE position IN('President', 'Manager');

-- NOT IN operator
SELECT * FROM Employee WHERE position NOT IN('President', 'Manager');

-- Add a new Column for employee expr
ALTER TABLE Employee ADD COLUMN expr INT;
DESC Employee;

UPDATE Employee SET expr=30 WHERE position='President';
UPDATE Employee SET expr=25 WHERE position='Manager';
UPDATE Employee SET expr=20 WHERE position='Team Leader';

SELECT * FROM Employee;

-- BETWEEN operator
SELECT * FROM Employee WHERE expr BETWEEN 20 and 25;

-- LIKE operator
SELECT * FROM Employee WHERE last_name LIKE 'P%';

-- LIMIT operator
SELECT * FROM Employee ORDER BY expr LIMIT 3;

-- Inserting data with null value
INSERT INTO Employee VALUES
	(7, "Asha" , "Joshi"   , "F", 'President', 'HR'         , null     , null),
	(8, "Ram"  , "Sharma"  , "M", 'President', null         , 'Finance', null),
	(9, "Karan", "Tripathi", "M", 'President', 'Team Leader', 'Retail' , null);

-- IS NULL operator
SELECT * FROM Employee WHERE expr IS NULL;

-- IS NOT NULL operator
SELECT * FROM Employee WHERE expr IS NOT NULL;

-- AGGREGATE Functions
-- COUNT, SUM, AVG, MIN, MAX
SELECT COUNT(*) FROM Employee;
SELECT COUNT(emp_id) FROM Employee WHERE dept="Finance";
SELECT MIN(expr) FROM Employee;
SELECT MAX(expr) FROM Employee;
SELECT SUM(expr) FROM Employee;
SELECT AVG(expr) FROM Employee;

-- GROUPY BY Clause divides a set of rows into subgroup depending on column or expression values.
SELECT dept, COUNT(*) AS employee_count
FROM Employee GROUP BY dept;