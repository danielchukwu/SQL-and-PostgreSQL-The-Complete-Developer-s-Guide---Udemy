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

-- // next day

-- TABLE likes {
--   id int [pk, increment]
--   user_id int [ref: > users.id]
--   post_id int [ref: > posts.id]
--   comment_id int [ref: > comments.id]
  
--   created_at timestamp
-- }

-- TABLE photo_tags {
--   id int [pk, increment]
--   user_id int [ref: > users.id]
--   post_id int [ref: > posts.id]
--   x int
--   y int
  
--   created_at timestamp
--   updated_at timestamp
-- }

-- TABLE caption_tags {
--   id int [pk, increment]
--   user_id int [ref: > users.id]
--   post_id int [ref: > posts.id]
  
--   created_at timestamp
-- }

-- TABLE hashtags {
--   id int [pk, increment]
--   title varchar(20)
  
--   created_at timestamp
-- }
