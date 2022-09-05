-- SQL - {}
-- Program: You are trying to find the phone manufacturers with the greatest revenue from selliing phones.

-- name             manufacturer       Price         units_sold
-- N1289            Nokia              199           1925
-- Iphone 4         Apple              399           9436
-- GalaxyS          Samsung            299           2359
-- S5620            Samsung            250           2385 
-- N8               Nokia              150           7543

-- Given a table of phones, print the names of manufacturers and total revenue (price * units_sold) for all phones.
-- Only print the manufacturers who have reveue greater than 2,000,000




-- solution




-- step 1
-- CREATE TABLE phones(
--   name VARCHAR(50),
--   manufacturer VARCHAR(50),
--   price INTEGER,
--   units_sold INTEGER
-- );

-- step 2
-- INSERT INTO phones (name, manufacturer, price, units_sold)
-- VALUES
--   ('N1280', 'Nokia', 199, 1925),
--   ('Iphone 4', 'Apple', 399, 9436),
--   ('GalaxyS', 'Samsung', 299, 2359),
--   ('S5620', 'Samsung', 250, 2385),
--   ('N8', 'Nokia', 150, 7543);



SELECT manufacturer, SUM(price) * SUM(units_sold) AS total_revenue
FROM phones
GROUP BY manufacturer
HAVING SUM(price) * SUM(units_sold) > 2000000