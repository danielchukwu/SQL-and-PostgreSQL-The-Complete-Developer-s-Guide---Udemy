-- SQL - ()
-- Program: Using the below table called phones. Insert the table into our database
-- name             manufacturer       Price         units_sold
-- N1289            Nokia              199           1925
-- Iphone 4         Apple              399           9436
-- GalaxyS          Samsung            299           2359
-- S5620            Samsung            250           2385 
-- N8               Nokia              150           7543

-- > write a query that will select the name and manufacturer for all phones created by Apple or Samsung

-- Solution

SELECT name, manufacturer  FROM phones
WHERE manufacturer IN ('Apple', 'Samsung');