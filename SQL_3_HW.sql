USE seminar_1;

CREATE TABLE salespeople
(
	id INT PRIMARY KEY AUTO_INCREMENT,
	snum INT NOT NULL,
	sname VARCHAR(20) NOT NULL,
	city VARCHAR(20) NOT NULL,
	comm FLOAT NOT NULL
);

INSERT INTO salespeople(snum, sname, city, comm)
VALUES
	(1001, 'Peel', 'London', .12),
	(1002, 'Serres', 'San Jose ', .13),
	(1004, 'Motika', 'London', .11),
	(1007, 'Rifkin', 'Barselona', .15),
	(1003, 'Axelrod', 'New York', .10);
	
CREATE TABLE customers
(
	id INT PRIMARY KEY AUTO_INCREMENT,
	cnum INT NOT NULL,
	cname VARCHAR(20) NOT NULL,
	city VARCHAR(20) NOT NULL,
	rating INT NOT NULL,
	snum INT NOT NULL
);

INSERT INTO customers(cnum, cname, city, rating, snum)
VALUES
	(2001, 'Boofman', 'London', 100, 1001),
	(2002, 'Giovanni', 'Rome', 200, 1003),
	(2003, 'Lui', 'San Jose', 200, 1003),
	(2004, 'Grass', 'Berlin', 300, 1002),
	(2006, 'category', 'London', 100, 1001),
	(2008, 'Cisneros', 'San Jose', 300, 1007),
	(2007, 'Pereira', 'Rome', 100, 1004);
	
CREATE TABLE orders
(
	id INT PRIMARY KEY AUTO_INCREMENT,
	onum INT NOT NULL,
	amt FLOAT NOT NULL,
	odate DATE,
	cnum INT NOT NULL,
	snum INT NOT NULL
);

INSERT INTO orders(onum, amt, odate, cnum, snum)
VALUES
	(3001, 18.69, "2016-01-01", 2008, 1007),
	(3003, 767.19, "2016-01-01", 2001, 1001),
	(3002, 1900.10, "2016-01-01", 2007, 1004),
	(3005, 5160.45, "2016-01-01", 2003, 1002),
	(3006, 1098.16, "2016-01-01", 2008, 1007),
	(3009, 1713.23, "2016-02-01", 2002, 1003),
	(3007, 75.75, "2016-02-01", 2004, 1002),
	(3008, 4723.00, "2016-03-01", 2006, 1001),
	(3010, 1309.95, "2016-04-01", 2004, 1002),
	(3011, 9891.88, "2016-04-01", 2006, 1001);

-- 1 --

SELECT SUM(amt) s_a
FROM orders
WHERE odate = "2016-01-01";

SELECT COUNT(city) cc
FROM customers
WHERE city IS NOT NULL;

SELECT MIN(amt) min_a, cnum
FROM orders
GROUP BY cnum;

SELECT cname
FROM customers c 
WHERE cname LIKE 'G%';

SELECT MAX(rating) max_r, city
FROM customers
GROUP BY city;

-- 2 --

SELECT salary
FROM users u 
ORDER BY salary;

SELECT salary
FROM users u 
ORDER BY salary DESC;

SELECT Salary, Name
FROM users u 
ORDER BY Salary DESC
LIMIT 5;

SELECT SUM(Salary) Ss, Specialty
FROM users 
GROUP BY Specialty
HAVING Ss > 100000;