
USE Company_db;

-- Create a foreign key constrain between staff and department table
ALTER TABLE staff ADD FOREIGN KEY(dept_id) REFERENCES department(dept_id);
DESC staff;

-- To Drop a forign key between two tables