
CREATE DATABASE Test2;
USE Test2;

CREATE TABLE Employee(
	Emp_no    INT,
    E_name    TEXT,
    E_address TEXT,
    E_ph_no   TEXT,
    Dept_no   INT,
    Dept_name TEXT,
	Job_id    INT,
    Designation TEXT,
    Salary    INT
);

INSERT INTO Employee VALUES
(1, "Raj", "Pune", "909099090090", 10, "Accounts", 101, "Clerk", 9000),
(2, "Rushi", "Mumbai", "909232050090", 20, "HR", 201, "Manager", 50000),
(3, "Sneha", "Nagpur", "45923205340", 10, "Accounts", 102, "Analyst", 9000),
(4, "Rohan", "Mumbai", "509234050090", 30, "HR", 301, "President", 150000),
(5, "Hrushikesh", "Noida", "2392432050090", 40, "Sales", 401, "---", 25000),
(6, "Rahul", "Nashik", "139344250090", 50, "IT", 501, "Jr Developer", 30000),
(7, "Palak", "Pune", "539643450090", 50, "IT", 502, "Sr Developer", 60000),
(8, "Ram", "Nashik", "909232050090", 20, "HR", 202, "Manager", 53000);
SELECT * FROM Employee;

-- Question 1
SELECT Emp_no, E_name, Salary FROM Employee WHERE Designation="Manager";

-- Question 2
SELECT * FROM Employee WHERE Salary > 10000; 

-- Question 3
ALTER TABLE Employee ADD COLUMN join_date DATE;
UPDATE Employee SET join_date="1980-01-19" WHERE Emp_no=2;
SELECT * FROM Employee;

SELECT * FROM Employee WHERE YEAR(join_date) > "1981" ORDER BY Designation;

-- Question 4
SELECT Emp_no, E_name, YEAR(CURDATE()) - YEAR(join_date) AS Experience, Salary FROM Employee;

-- Question 5
SELECT * FROM Employee WHERE Designation="Clerk" or Designation="Analyst";

-- Question 6
SELECT * FROM Employee WHERE join_date="1981-05-01" or join_date="1981-12-03" or join_date="1981-12-17" or join_date="1980-01-19";

-- Question 7
SELECT * FROM Employee WHERE Dept_no=10 or Dept_no=20;

-- Question 8
SELECT * FROM Employee WHERE E_name LIKE "S%";

-- Question 9
SELECT * FROM Employee ORDER BY Salary DESC LIMIT 1;

-- Question 10
SELECT SUBSTRING(E_name, 1, 5) FROM Employee WHERE E_name LIKE "H%";

-- Question 11
SELECT Emp_no, E_name, YEAR(CURDATE()) - YEAR(join_date) AS Experience WHERE MIN(Salary) or MAX(Salary);