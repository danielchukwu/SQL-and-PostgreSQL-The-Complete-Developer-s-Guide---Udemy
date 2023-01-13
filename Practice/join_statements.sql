-- -- Create Table For Users, photos and comments
-- CREATE TABLE Users (
-- 	id SERIAL PRIMARY KEY,
--   username VARCHAR (200)
-- );

-- CREATE TABLE Photos (
-- 	id SERIAL PRIMARY KEY,
--   url VARCHAR(200),
--   user_id INTEGER REFERENCES Users(id)
-- );

-- CREATE TABLE Comments (
-- 	id SERIAL PRIMARY KEY,
--   contents VARCHAR(500),
--   user_id INTEGER REFERENCES users(id),
--   photo_id INTEGER REFERENCES Photos(id)
-- );



-- -- Insert Into Tables
-- INSERT INTO users (username)
-- VALUES
-- 	('reyba.marvin'),
--   ('micah.cremin'),
--   ('alfredo66'),
--   ('gerald_mitchel'),
--   ('fredique_donelly');
  
-- INSERT INTO Photos (url, user_id)
-- VALUES
-- 	('http://santina.net', 3),
--   ('http://fuitys.come', 2),
--   ('http://kailym.name', 3),
--   ('http://kailym.name', 1),
--   ('http://sasha.com', 3),
--   ('http://kailym.name', 2),
--   ('http://kailym.name', 4),
--   ('http://kailym.name', 3);
  
-- INSERT INTO Comments (contents, user_id, photo_id)
-- VALUES
-- 	('I love this post', 2, 4),
--   ('Where exactly was this taken bro?', 5, 5),
--   ('I love how you read the word all the time', 3, 3);



-- Tasks
-- 1.
-- Find all the Comments for the photo with id=3, 
-- along with the username of the comment Author
-- SELECT username, url, contents
-- FROM Photos as ph
-- JOIN Users as us ON us.id = ph.user_id
-- JOIN Comments as c ON c.photo_id = ph.id
-- WHERE ph.id = 3;

-- 2. 
-- Find the photo with id=4 and get the number of
-- comments attached to it
-- SELECT *
-- FROM Photos as ph
-- JOIN Comments as c ON c.photo_id = ph.id
-- WHERE ph.id = 4;

-- 3.
-- Find the User with most activity (most comments, + most photos)
SELECT us.username 
FROM users as us
RIGHT JOIN Photos as ph ON ph.user_id = us.id
RIGHT JOIN Comments as c ON c.user_id = us.id;


-- 4. 
-- Calculate the average number of characters per comment

-- 5. 
-- Find the average number of comments per photoALTER


-- 6.
-- Find the photo with the most comments attached to itALTER
