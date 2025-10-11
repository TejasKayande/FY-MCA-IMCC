CREATE DATABASE User1;

USE User1;

CREATE TABLE Customer(custid INT, cust_name VARCHAR(15), city VARCHAR(15), product VARCHAR(15), price INT);
DESC Customer;

ALTER TABLE Customer ADD PRIMARY KEY(custid);
INSERT INTO Customer(custid, cust_name, city, product, price)
VALUES (1, "Aryan", "Akola", "Mobile", 1000),
	   (2, "Ritesh", "Lonar", "Laptop", 50000),
	   (3, "Kunal", "Lonar", "Laptop", 50000);
       
SELECT * FROM Customer;

SELECT cust_name, product FROM Customer;

SELECT * FROM Customer WHERE custid=2;

SELECT cust_name, product, price FROM Customer WHERE price>15000;
SELECT cust_name, product, price FROM Customer WHERE price<10000;

SELECT * FROM Customer WHERE city="Lonar";

SELECT city FROM Customer;