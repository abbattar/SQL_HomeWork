USE my_firstdb;
CREATE TABLE Products
(
	Id INT AUTO_INCREMENT PRIMARY KEY,
    ProductName VARCHAR(20) NOT NULL,
    Manufactorer VARCHAR(20) NOT NULL,
    ProductCount INT DEFAULT 0,
    Price DECIMAL
);

INSERT INTO Products (ProductName, Manufactorer, ProductCount, Price)
VALUES
('IPhone x', 'Apple', 3, 76000),
('IPhone 8', 'Apple', 2, 51000),
('Galaxy S9', 'Samsung', 2, 56000),
('Galaxy S8', 'Samsung', 1, 41000),
('P20 Pro', 'Huawei', 5, 36000);

SELECT * FROM Products;

SELECT * FROM Products
WHERE NOT Manufactorer IN ("Apple", "Samsung");

-- Домашнее задание --
# 2 #
SELECT * FROM Products
WHERE ProductCount < 2;

# 3 #
SELECT  * FROM Products
WHERE Manufactorer = "Samsung";
