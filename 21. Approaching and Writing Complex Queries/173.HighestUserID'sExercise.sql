-- SQL - {}
-- problem: select the 3 users with the highest ID's from the users table


--             users
-- id   username   password   status
-- 1    gai81      LKJ223j5ij online
-- 2    eise20     null       offline
-- 3    james80    null       offline
-- 4    jon37      ikp5153    online
-- 5    neva36     aijg9225   online
-- 6    Ramona92   null       online



-- solution



SELECT *
FROM users
ORDER BY id DESC
LIMIT 3;