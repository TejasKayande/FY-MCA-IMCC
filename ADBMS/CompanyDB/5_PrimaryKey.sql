
USE Company_db;

-- To create primary key in staff and department table

ALTER TABLE staff ADD PRIMARY KEY(staffid);
ALTER TABLE department ADD PRIMARY KEY(dept_id);

DESC staff;
DESC department;