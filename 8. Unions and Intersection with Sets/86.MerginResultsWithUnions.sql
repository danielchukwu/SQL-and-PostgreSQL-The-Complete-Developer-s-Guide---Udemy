-- SQL - {}
-- program: Write a query that will print the manufacturers of phones where the phone's price is less than 170. 
--          Also print all manufacturer that have created more than two phones


-- name             manufacturer       Price         units_sold
-- N1289            Nokia              199           1925
-- Iphone 4         Apple              399           9436
-- GalaxyS          Samsung            299           2359
-- S5620            Samsung            250           2385 
-- N8               Nokia              150           7543



-- solution


(
SELECT *
FROM products
ORDER BY price DESC
LIMIT 4
)
UNION
(
SELECT *
FROM products
ORDER BY price/weight DESC
LIMIT 4
);
