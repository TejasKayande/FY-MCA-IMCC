
Use Company_db;

-- Creating Staff Table
CREATE TABLE staff(
	staffid    int, 
	first_name varchar(10),
    last_name  varchar(10),
    dob        date,
    dept_id    int
);

-- Creating Department Table
CREATE TABLE department(
	dept_id       int,
    dept_name     varchar(10),
    dept_location varchar(15)
);