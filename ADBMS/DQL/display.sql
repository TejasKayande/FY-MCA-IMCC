USE User1;
DESC Customer;

SELECT CONCAT(cust_name, ' ', price) FROM Customer;
SELECT CONCAT(cust_name, ' ', price) AS concat_name FROM Customer;

SELECT SUBSTR(cust_name, 2) FROM Customer;
SELECT SUBSTR(cust_name, 2, 2) FROM Customer;

SELECT INSTR(cust_name, 'a') AS position FROM Customer;

SELECT SUBSTR(cust_name, 1, 3), INSTR(cust_name, 'a') FROM Customer;
SELECT SUBSTR(cust_name, 1, 3), INSTR(cust_name, 'a') FROM Customer WHERE custid < 3;

SELECT NOW();

ALTER TABLE Customer ADD COLUMN cust_date DATE;
UPDATE Customer SET cust_date='1948-10-21' WHERE custid=1;
UPDATE Customer SET cust_date='2025-10-22' WHERE custid=2;
UPDATE Customer SET cust_date='2025-10-23' WHERE custid=3;
SELECT * FROM Customer;