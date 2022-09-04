-- SQL - {}
-- Program: What will be the result of the below code?

-- SELECT user_id, COUNT(photo_id)
-- FROM posts
-- GROUP BY user_id

-- for the below table posts

-- id     url         user_id   photo_id
-- 1    santina.net     3         null
-- 2    alayna.net      5          7
-- 3    kailyn.name     3         null

-- solution


-- CREATE TABLE posts (
--   id SERIAL PRIMARY KEY,
--   url VARCHAR(50),
--   user_id INTEGER,
--   photo_id INTEGER
-- );

-- INSERT INTO posts (url, user_id)
-- VALUES 
--   ('santina.net', 3),
--   ('alayna.net', 5),
--   ('kailyn.name', 3);


SELECT user_id, COUNT(photo_id)
FROM posts
GROUP BY user_id

-- Result  1

user_id    count
   3         0
   5         1


-- Solution 2: using asterisks to count all records (or should i say rows)

SELECT user_id, COUNT(*)
FROM posts
GROUP BY user_id


-- Result  1

user_id    count
   3         2
   5         1