USE CollegeDB;

-- SQL Constraints: Primary Key, Not Null, Unique, Forign Key and Check Constraint

-- NOT NULL
CREATE TABLE NotnullTable(nnid INT NOT NULL, first_name TEXT, last_name TEXT, age INT);
DESC NotnullTable;

INSERT INTO NotnullTable VALUES(NULL, "Ravi", "Kumar", 25); -- Will Not Execute
INSERT INTO NotnullTable VALUES(1, NULL, "Kumar", 25);      -- Will Execute
INSERT INTO NotnullTable VALUES(1, "Ravi", "Kumar", 25);    -- Duplicate allowed in not null

SELECT * FROM NotnullTable;

-- Unique
CREATE TABLE UniqueTable(unqid INT NOT NULL, first_name TEXT, last_name TEXT, UNIQUE(unqid));
DESC UniqueTable;

INSERT INTO UniqueTable VALUES(1, "name_one", "name_two");
INSERT INTO UniqueTable VALUES(1, "name_three", "name_four"); -- Duplicate Error
INSERT INTO UniqueTable VALUES(2, "name_three", "name_four"); 
INSERT INTO UniqueTable VALUES(3, "name_five", "name_six");

SELECT * FROM UniqueTable;

-- Check
CREATE TABLE CheckTable(chid INT NOT NULL, first_name TEXT, last_name TEXT, age INT, CHECK(age > 20));
DESC CheckTable;

INSERT INTO CheckTable VALUES(1, "Geeta", "Kumari", 15); -- age is not > 20. Error
INSERT INTO CheckTable VALUES(1, "Ravi", "Kumar", 22);   -- age is > 20. Will Run
INSERT INTO CheckTable VALUES(2, "Ram", "Sharma", 39);   -- age is > 20. Will Run
INSERT INTO CheckTable VALUES(3, "Ravi", "Verma", 12);   -- age is not > 20. Error

SELECT * FROM CheckTable;

-- Add Check using Alter
ALTER TABLE CheckTable ADD COLUMN salary INT, ADD CHECK(salary >= 5000);

INSERT INTO CheckTable VALUES(4, "Raj", "Gore", 22, 4999); -- Salary is not >= 5000
INSERT INTO CheckTable VALUES(4, "Raj", "Gore", 22, 5000); -- Will Work

-- Add all the constraints
CREATE TABLE Student(stuid INT NOT NULL, first_name TEXT, last_name TEXT, age INT,
					 CHECK(age < 20), PRIMARY KEY(stuid));
DESC Student;

INSERT INTO Student VALUES(1, "Raj", "Verma", 14); -- Will Work
INSERT INTO Student VALUES(1, "Ravi", "Sharma", 14); -- Duplicate ids. Error
INSERT INTO Student VALUES(2, "Ravi", "Sharma", 14); -- Will Work
INSERT INTO Student VALUES(3, "Geeta", "Kumari", 20); -- Age not < 20. Error
INSERT INTO Student VALUES(3, "Geeta", "Kumari", 19); -- Will Work

SELECT * FROM Student;

-- Adding multiple checks in one
ALTER TABLE Student ADD COLUMN fee INT;
ALTER TABLE Student ADD CONSTRAINT CHECK(fee > 50000 AND age < 20);

INSERT INTO Student VALUES(4, "Ram", "Sharma", 22, 44000); -- will fail because of fee
INSERT INTO Student VALUES(4, "Ram", "Sharma", 19, 55000); -- will fail because of fee
DESC Student;
SELECT * FROM Student;