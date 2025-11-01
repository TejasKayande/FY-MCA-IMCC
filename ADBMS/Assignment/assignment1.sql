
# 1. Create a database and two tables in it.
CREATE DATABASE InvestmentDB;
USE InvestmentDB;

CREATE TABLE Emp(
	emp_id      INT, 
    emp_name    VARCHAR(10), 
    emp_address VARCHAR(30), 
    bdate       DATE
);
DESC Emp;

CREATE TABLE Investor(
	inv_name VARCHAR(20),
    inv_no   INT,
    inv_date DATE,
    inv_amt  INT
);
DESC Investor;

# 2. Add a column ‘Salary’ in to an Emp table.
ALTER TABLE Emp ADD emp_salary INT;
DESC Emp;

# 3. Add a column ‘Age’ in to an investor table.
ALTER TABLE Investor ADD inv_age INT;
DESC Investor;

# 4. Change the datatype of inv_no from int to big int in Investor table
ALTER TABLE Investor MODIFY COLUMN inv_no BIGINT;
DESC Investor;

# 5. Change the data type of any one column in an existing table.
ALTER TABLE Emp MODIFY COLUMN emp_name TEXT;
DESC Emp;

# 6. Change the name of column/field Emp_id to E_id.
ALTER TABLE Emp CHANGE emp_id e_id INT;
DESC Emp;

# 7. Drop a column ‘Age’ from an Investor table.
ALTER TABLE Investor DROP COLUMN inv_age;
DESC Investor;

# 8. Create a Primary key constraint between two tables.
ALTER TABLE Emp ADD PRIMARY KEY (e_id);
DESC Emp;
ALTER TABLE Investor ADD PRIMARY KEY (inv_no);
DESC Investor;

# 9. Create a foreign key constraint between two tables.
ALTER TABLE Emp ADD COLUMN inv_no BIGINT;
ALTER TABLE Emp ADD FOREIGN KEY (inv_no) REFERENCES Investor(inv_no);
DESC Emp;

# 10. Drop a foreign key constraint between two tables.
ALTER TABLE Emp DROP FOREIGN KEY emp_ibfk_1;
ALTER TABLE Emp DROP COLUMN inv_no;
DESC Emp;

# 11. Create a Not Null constraint to emp_name and Check constraint to age into an Emp table.
ALTER TABLE Emp MODIFY emp_name TEXT NOT NULL;
DESC Emp;

ALTER TABLE Emp ADD COLUMN emp_age INT;
ALTER TABLE Emp ADD CONSTRAINT CHECK(emp_age > 18);
SHOW CREATE TABLE Emp;

# 12. Create a Unique key constraint between two tables.
ALTER TABLE Emp ADD CONSTRAINT UNIQUE(emp_name);
DESC Emp;

ALTER TABLE Investor ADD CONSTRAINT UNIQUE(inv_name);
DESC Investor;

# 13. Drop a Unique key constraint between two tables.
ALTER TABLE Emp DROP INDEX emp_name;
DESC Emp;

# 14. Rename a table.
RENAME TABLE Emp TO Employee;
DESC Employee;

# 15. Drop anyone a table.
DROP TABLE Employee;
DESC Employee;