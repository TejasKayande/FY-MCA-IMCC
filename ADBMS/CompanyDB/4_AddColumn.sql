
USE Company_db;

-- Add a Column to a Table in Company_db

-- We use ADD to add a new colum
ALTER TABLE staff ADD join_year int;
DESC staff;

-- We use MODIFY to change the existing column
ALTER TABLE staff MODIFY join_year year;
DESC staff;