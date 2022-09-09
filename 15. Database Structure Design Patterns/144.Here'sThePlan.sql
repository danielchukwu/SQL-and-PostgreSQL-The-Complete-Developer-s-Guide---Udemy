--SQL - {}
--Program: using dbdiagram.io/d/ website to create all 3 tables (users, posts, comments) for our instagram database application


-- Table users  |Table posts  |Table comments
-- id           |id           |id
-- updated_at   |updated_at   |updated_at
-- created_at   |created_at   |created_at
-- username     |url          |text
-- email        |user_id      |user_id
--                            |post_id


-- solution


TABLE users {
  id integer [pk, increment]
  username varchar(50)
  email varchar(50)
  
  updated_at timestamp
  created_at timestamp
}

TABLE posts {
  id int [pk, increment]
  url varchar(200)
  user_id int [ref: > users.id]
  
  updated_at timestamp
  created_at timestamp
}

TABLE comments {
  id int [pk, increment]
  text varchar(50)
  user_id int [ref: > users.id]
  post_id int [ref: > posts.id]
  
  updated_at timestamp
  created_at timestamp
}