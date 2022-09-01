-- SQL - ()
-- Program: Hmmm... i wonder if any authors are writing their own reviews for books!. You are working with a database books, authors, and reviews

--        authors                         books                                           reviews   
-- id      name            |   id     title                author_id    |   id   rating   reviewers_id    book_id
-- 1    Stephen King       |   1      The Dark Tower           1        |   1      3           1             2
-- 2    Agatha Christie    |   2      Affair at Styles         3        |   2      4           2             1
-- 3     JK Rowling        |   3      Murder At the Links      2        |   3      5           3             3

-- Write a query that will return the title of each book, along with the name of the author, and the rating of a review. Only show rows where the author of the book is also the author of the review




-- solution



-- CREATE TABLE authors (
--   id SERIAL PRIMARY KEY,
--   name VARCHAR(50)
-- );
-- INSERT INTO authors (name)
-- VALUES ('Stephen King'),('Agatha Christie'),('JK Rowling');

-- CREATE TABLE books (
--   id SERIAL PRIMARY KEY,
--   title VARCHAR(50),
--   author_id INTEGER REFERENCES authors(id)
-- );
-- INSERT INTO books (title, author_id)
-- VALUES 
--   ('The Dark Tower', 1), 
--   ('Affair At Styles', 2),
--   ('Chamber of Secrets', 3);

-- CREATE TABLE reviews (
--   id SERIAL PRIMARY KEY,
--   rating INTEGER,
--   reviewer_id INTEGER REFERENCES authors(id),
--   book_id INTEGER REFERENCES books(id)
-- );

INSERT INTO reviews (rating, reviewer_id, book_id)
VALUES 
  (3, 1, 2),
  (4, 2, 1),
  (5, 3, 3);