-- SQL - {}
-- Program: Write a query that shows the names of only the second and third most expensive phones
-- name             manufacturer       Price         units_sold
-- N1289            Nokia              199           1925
-- Iphone 4         Apple              399           9436
-- GalaxyS          Samsung            299           2359
-- S5620            Samsung            250           2385 
-- N8               Nokia              150           7543



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


SELECT name
FROM phones
ORDER BY price DESC
LIMIT 2
OFFSET 1;