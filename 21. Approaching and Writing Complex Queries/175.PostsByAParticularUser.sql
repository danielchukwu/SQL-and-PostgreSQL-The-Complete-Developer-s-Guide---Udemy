-- SQL - {}
-- problem: show each username and the number of 'likes' that they have CREATED


--             users                   |         likes
-- id   username   password   status   |id   caption    user_id
-- 1    gai81      LKJ223j5ij online   |1    #ominis    203
-- 2    eise20     null       offline  |2    quas cosq  200
-- 3    james80    null       offline  |3    #mary      201
-- 4    jon37      ikp5153    online   |4    officis    202
-- 5    neva36     aijg9225   online   |5    #generate  200
-- 6    Ramona92   null       online   |6    #content   199



-- solution


SELECT username, caption
FROM users
JOIN posts ON posts.user_id = users.id
WHERE users.id = 200;