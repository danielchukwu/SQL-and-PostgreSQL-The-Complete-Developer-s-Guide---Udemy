-- SQL - {}
-- Program: Find the average number of orders for all users in the below orders table

-- id  user_id   product_id   paid
-- 1      5          4        true
-- 2      3          2        true
-- 3      4          6        false
-- 4      5          3        true
-- 5      1          1        false
-- 6      5          3        true
-- 7      1          1        false



-- solution


SELECT AVG(orders_count)
FROM (
  SELECT user_id, COUNT(*) As orders_count
  FROM orders
  GROUP BY user_id
) AS p