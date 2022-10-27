-- SQL - ()
-- Program: Using the below table called phones. Insert the table into our database
-- name             manufacturer       Price         units_sold
-- N1289            Nokia              199           1925
-- Iphone 4         Apple              399           9436
-- GalaxyS          Samsung            299           2359
-- S5620            Samsung            250           2385 
-- N8               Nokia              150           7543

-- > write a query that will select the name of each phone and calculate the total revenue for each phone (price * units_sold)
-- > Rename this calculated column to revenue


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

-- step 3. DONE
SELECT name, price * units_sold AS revenue FROM phones