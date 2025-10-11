USE User1;

SELECT * FROM Customer ORDER BY price;

SELECT * FROM Customer ORDER BY cust_name;

SELECT * FROM Customer ORDER BY price asc;
SELECT * FROM Customer ORDER BY price desc;

-- Sorting data using order by multiple column
SELECT * FROM Customer ORDER BY cust_name, price;
SELECT * FROM Customer ORDER BY price asc, cust_name desc;
