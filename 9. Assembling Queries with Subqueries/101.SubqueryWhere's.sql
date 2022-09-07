-- SQL - {}
-- problem: Write a query that prints out the name and price of phones that have
--          a price greater than the Samsung S5620

--                          phones
-- name             manufacturer       Price         units_sold
-- N1289            Nokia              199           1925
-- Iphone 4         Apple              399           9436
-- GalaxyS          Samsung            299           2359
-- S5620            Samsung            250           2385 
-- N8               Nokia              150           7543





-- solution


SELECT name, price
FROM phones
WHERE price > (
   SELECT price FROM phones WHERE name = 'S5620 '
)