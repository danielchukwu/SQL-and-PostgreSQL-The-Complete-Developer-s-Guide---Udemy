-- SQL - {}
-- program: analyze instagram and step by step build a complete database design for the features you notice



-- solution



-- TABLE users {
--   id integer [pk, increment]
--   username varchar(50)
--   email varchar(50)
  
--   updated_at timestamp
--   created_at timestamp
-- }

-- TABLE posts {
--   id int [pk, increment]
--   url varchar(200)
--   user_id int [ref: > users.id]
--   caption varchar(240)
--   lat REAL
--   lng REAL
  
--   updated_at timestamp
--   created_at timestamp
-- }

-- TABLE comments {
--   id int [pk, increment]
--   text varchar(50)
--   user_id int [ref: > users.id]
--   post_id int [ref: > posts.id]
  
--   updated_at timestamp
--   created_at timestamp
-- }
