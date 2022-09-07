-- SQL - {}
-- problem: show the name of all products that are not in the same department
--          as products with a price less than 100


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


SELECT name
FROM products
WHERE department NOT IN (
  SELECT department FROM products WHERE price < 100
);

-- SELECT department FROM products WHERE price < 100
