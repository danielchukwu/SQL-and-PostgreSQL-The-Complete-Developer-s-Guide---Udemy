-- SQL - {}
-- problem: show the name of all products that are more expensive than atleast
--          one product in the 'Industrial' department


--              products
-- id   name     name        price  weight
-- 1    shirt    Toys        876    3
-- 2    Towels   Outdoors    412    16
-- 3    Bacon    Movies      10     6
-- 4    Ball     Industrial  328    23
-- 5    Fish     Tools       796    10
-- 6    Mouse    Grocery     989    11
-- 7    Computer Home        298    2


-- solution


SELECT name, price
FROM products
WHERE price > SOME (
  SELECT price
  FROM products
  WHERE department = 'Industrial'
);