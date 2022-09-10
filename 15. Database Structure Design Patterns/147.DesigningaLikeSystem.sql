-- SQL - {}
-- probems: There are 4 problems for you to solve



-- solutions


-- CREATE TABLE users (
--   id SERIAL PRIMARY KEY,
--   username VARCHAR(50)
-- );

-- CREATE TABLE posts (
--   id SERIAL PRIMARY KEY,
--   url VARCHAR(200)
-- );

-- CREATE TABLE likes (
--   id SERIAL PRIMARY KEY,
--   user_id INTEGER REFERENCES users(id),
--   post_id INTEGER REFERENCES posts(id)
-- );


-- INSERT INTO users (username)
-- VALUES ('Jakob'), ('Tim'), ('luka'), ('sarah'), ('jeffery');

-- INSERT INTO posts (url)
-- VALUES ('img1.jpg'), ('img2.jpg'), ('img3.jpg'), ('img4.jpg'), ('img5.jpg');

-- INSERT INTO likes (user_id, post_id)
-- VALUES (3,5), (1,1), (4,2), (3,3), (3,5);



-- SELECT * FROM users



-- Question 1. Write a query to find the number of likes on posts with id 3
-- SELECT COUNT(*)
-- FROM likes
-- WHERE post_id = 5;

-- Question 2. Write a query to show the username of people who like post with id = 3
-- SELECT username
-- FROM likes AS l1
-- JOIN users ON users.id = l1.user_id
-- WHERE post_id = 3

