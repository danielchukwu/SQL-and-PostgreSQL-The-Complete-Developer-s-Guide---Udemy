-- SQL - ()
-- Program: Get all the photos in our database with the user that uploaded the photo

--         users                          photos
-- id      username            |   id     url                     author_id
-- 1     Reyna.Marvin          |   1      http://santina.net         2
-- 2     Micah.Cremin          |   2      http://alayna.net          3
-- 3     Alfredo66             |   3      http://kaliyn.name         1
-- 4     Gerald_Mitchell42     |   4      http://banner.jpg         null
-- 5     Frederique_Donnelly   |



-- solution


-- CREATE TABLE users (
--   id SERIAL PRIMARY KEY,
--   username VARCHAR(50)
-- );

-- INSERT INTO users (username)
-- VALUES 
--   ('Reyna.Marvin'),
--   ('Micah.Cremin'),
--   ('Alfredo66'),
--   ('Gerald_Mitchell42'),
--   ('Frederique_Donnelly');

-- CREATE TABLE photos (
--   id SERIAL PRIMARY KEY,
--   url VARCHAR(200),
--   user_id INTEGER REFERENCES users(id)
-- );

-- INSERT INTO photos (url, user_id)
-- VALUES 
--   ('https://santina.net', 2),
--   ('https://alayna.net', 3),
--   ('https://kaliyn.name', 1),
--   ('https://banner.jpg', NULL);

SELECT * FROM photos
JOIN users ON users.id = photos.user_id