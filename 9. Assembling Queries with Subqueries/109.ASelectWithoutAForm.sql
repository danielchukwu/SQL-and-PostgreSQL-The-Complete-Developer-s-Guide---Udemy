-- SQL - {}
-- problem: without using a join or a group by, print the number of orders for each product


--              products                      |             orders
-- id   name     department  price  weight    | id  user_id  product_id  paid
-- 1    shirt    Industrial  876    3         | 1     5          4       true
-- 2    Towels   Outdoors    412    16        | 2     3          2       true
-- 3    Bacon    Grocery     10     6         | 3     4          6       false
-- 4    Ball     Industrial  328    23        | 4     5          3       true
-- 5    Fish     Industrial  796    10        | 5     1          1       false
-- 6    Mouse    Grocery     989    11        |
-- 7    Computer Outdoors    298    2         |



-- solution




SELECT name, (
   SELECT COUNT(*)
   FROM orders AS o
   WHERE o.product_id = p1.id
)
FROM products AS p1