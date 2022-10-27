-- SQL - {}
-- problem: Write a query that prints the name of all phoness that have a price 
--          greater than any phone made by samsung


--                          phones
-- name             manufacturer       Price         units_sold
-- N1289            Nokia              199           1925
-- Iphone 4         Apple              399           9436
-- GalaxyS          Samsung            299           2359
-- S5620            Samsung            250           2385 
-- N8               Nokia              150           7543



-- solution



-- SELECT price
-- FROM phones
-- WHERE manufacturer = 'Samsung';


SELECT name
FROM phones 
WHERE price > ANY (
   SELECT price FROM phones WHERE manufacturer = 'Samsung'
);