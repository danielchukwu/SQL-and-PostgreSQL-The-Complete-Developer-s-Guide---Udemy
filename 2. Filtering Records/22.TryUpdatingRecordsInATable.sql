-- SQL - ()
-- Program: Using the below table called phones. Insert the table into our database
-- name             manufacturer       Price         units_sold
-- N1289            Nokia              199           1925
-- Iphone 4         Apple              399           9436
-- GalaxyS          Samsung            299           2359
-- S5620            Samsung            250           2385 
-- N8               Nokia              150           7543

-- > Write 2 seperate queries
-- > The first query should update the units_sold of the phone with name N8 to 8543
-- > The second query should select all rows and columns of phones table


-- Solution


-- SELECT * FROM phones

UPDATE phones
SET units_sold = 8543
WHERE name = 'N8'