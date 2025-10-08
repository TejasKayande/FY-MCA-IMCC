USE CollegeDB;
SHOW TABLES;
DESC student;
SELECT * FROM student;

-- TCL Commands (For COMMIT, ROLLBACK and SAVEPOINT)
START TRANSACTION;

-- following queries are stored in temp until commited!
DELETE FROM student WHERE stuid=1;
SELECT * FROM student;

-- ROLLBACK the deleted entry
ROLLBACK;
SELECT * FROM student;

COMMIT;

UPDATE student SET first_name='HC' WHERE first_name='Raj';
SELECT * FROM student;

COMMIT;
ROLLBACK; -- ROLLBACK will not change anything because already commited!
SELECT * FROM student;

-- SAVE POINTS
START TRANSACTION;

UPDATE student SET fee=51000 WHERE stuid=1;
UPDATE student SET fee=53000 WHERE stuid=2;
UPDATE student SET fee=59000 WHERE stuid=3;
SELECT * FROM student;

SAVEPOINT fee_save; -- saving the state

UPDATE student SET first_name='RD' WHERE stuid=2;
SELECT * FROM student WHERE stuid=2;

ROLLBACK TO fee_save; -- ROLLBACK to a specific point set using SAVEPOINT
SELECT * FROM student WHERE stuid=2;

-- Creating multiple savepoints
INSERT INTO student VALUES(5, 'Raju', 'Shreevastav', 16, 57000);
SELECT * FROM student;
SAVEPOINT A;

INSERT INTO student VALUES(6, 'Tejas', 'Kayande', 19, 54000);
SELECT * FROM student;
SAVEPOINT B;

ROLLBACK TO A;
SELECT * FROM student;

ROLLBACK TO B; -- cant because we've already rolled back to A
SELECT * FROM student;

SAVEPOINT C;

DELETE FROM student WHERE stuid=1;

SELECT * FROM student;
ROLLBACK TO C;
SELECT * FROM student;