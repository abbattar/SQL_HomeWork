USE seminar_1;    
SELECT
	total_marks,
	grade,
	CASE
		WHEN total_marks >= 440 THEN 'First Class D'
		WHEN total_marks < 440 AND total_marks >= 400 THEN 'First Class'
		WHEN total_marks < 400 AND total_marks >= 350 THEN 'Second Class'
		WHEN total_marks < 350 AND total_marks >= 200 THEN 'Third Class'
		ELSE 'Fail'
	END class
FROM students;

-- Домашнее задание --
	-- 1 --
CREATE TABLE sales
(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	order_date DATE,
    count INT
);

INSERT INTO sales(order_date, count) 
VALUES
	('2021-02-01', 230),    
    ('2021-02-02', 110),
    ('2021-02-03', 15),
    ('2021-02-04', 190),
    ('2021-02-05', 425);

-- Задание 3 --

CREATE TABLE orders
(
	orderid INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	employerId VARCHAR(4),
    amount FLOAT,
	orderStatus VARCHAR(10)
);

INSERT INTO orders(employerId, amount, orderStatus)
VALUES
	('e03', 15.00, 'OPEN'),
    ('e01', 25.50, 'OPEN'),
    ('e05', 100.70, 'CLOSED'),
    ('e02', 22.18, 'OPEN'),
    ('e04', 9.50, 'CANCELED'),
    ('e04', 99.99, 'OPEN');
    
-- Задание 2 --
    
SELECT
	order_date,
    count,
	CASE
		WHEN count < 100 THEN 'Маленький заказ'
		WHEN count >= 101 AND count <= 300 THEN 'Средний заказ'
        ELSE 'Большой заказ'
	END bucket
FROM sales;

-- Задание 3 (продолжение) --

SELECT
	orderStatus,
	CASE
		WHEN orderId = 1 THEN 'Заказ всё ещё открыт'
		WHEN orderId = 2 THEN 'Заказ всё ещё открыт'
        WHEN orderId = 3 THEN 'Заказ закрыт'
        WHEN orderId = 4 THEN 'Заказ всё ещё открыт'
        WHEN orderId = 5 THEN 'Заказ отменён'
        WHEN orderId = 6 THEN 'Заказ всё ещё открыт'
	END order_summary
FROM sales;
