--For the first three queries

INSERT INTO products (name, price, can_be_returned) VALUES
--1--
('chair', 44.00, 'f'),
--2--
('stool', 25.99, 't'),
--3--
('table', 124.00, 'f');

--Question 4--
SELECT * FROM products;

--Question 5 --
SELECT name FROM products;

--Question 6 --
SELECT name, price FROM products;

--Question 7 --
INSERT INTO products (name, price, can_be_returned) VALUES
('dresser', 50.00, 'f');

--Question 8 --
SELECT name FROM products WHERE can_be_returned = 'true';

--Question 9 --
SELECT name FROM products WHERE price < 44.00;

--Question 10 --
SELECT name FROM products WHERE price BETWEEN 22.50 AND 99.00;

--Question 11 --
UPDATE products SET price = price - 20;

--Questin 12 --
DELETE FROM products WHERE price < 25;

--Questin 13 --
UPDATE products SET price = price + 20;

--Question 14 --
UPDATE products SET can_be_returned = 't';