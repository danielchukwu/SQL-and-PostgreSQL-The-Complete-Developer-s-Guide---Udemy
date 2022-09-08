-- SQL - {}
-- problem: show the name, department, and price of the most expensive product in each department


--              products
-- id   name     department  price  weight
-- 1    shirt    Industrial  876    3
-- 2    Towels   Outdoors    412    16
-- 3    Bacon    Grocery     10     6
-- 4    Ball     Industrial  328    23
-- 5    Fish     Industrial  796    10
-- 6    Mouse    Grocery     989    11
-- 7    Computer Outdoors    298    2




-- solution

SELECT name, department, price
FROM products AS p1
WHERE price = (
   SELECT Max(price)
   FROM products AS p2
   WHERE p1.department = p2.department
);