-- SQL - {}
-- Program: calculate the average price of phones for each manufacturer. Then print the highest average price


-- name             manufacturer       Price         units_sold
-- N1289            Nokia              199           1925
-- Iphone 4         Apple              399           9436
-- GalaxyS          Samsung            299           2359
-- S5620            Samsung            250           2385 
-- N8               Nokia              150           7543



-- solution


SELECT MAX(avg)
FROM (
    SELECT manufacturer, AVG(price)
    FROM phones
    GROUP BY manufacturer
) AS avgerage_sales