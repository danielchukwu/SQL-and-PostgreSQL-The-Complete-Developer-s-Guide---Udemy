-- SQL - ()
-- Program: You are designing a database for a book publishing company. The database needs to store a table of authors and books. An author has many books. This means that books should have a foreign key column/property that references another

--        authors                         books
-- id      name                |   id     title                  author_id
-- 1     JK Rowling            |   1      It                         2
-- 2    Stephen King           |   2      Chamber of Secrets         1
-- 3    Agatha Christie        |   3      Cat and the Hat            4
-- 4     Dr Suess              |   4      Affair at Styles           3

-- 1. Implement both tables and insert their individual records
-- 2. Write a query that will join together these two tables. For each book, print the title of the book and the name of the author 


-- 1.
-- create tables
-- CREATE TABLE authors (
--   id SERIAL PRIMARY KEY,
--   name VARCHAR(20)
-- );

-- CREATE TABLE books (
--   id SERIAL PRIMARY KEY,
--   title VARCHAR(50),
--   author_id INTEGER REFERENCES authors(id)
-- );


-- insert data into tables
-- INSERT INTO authors (name)
-- VALUES 
--   ('JK Rowling'), 
--   ('Stephen King'), 
--   ('Agatha Christie'), 
--   ('Dr Suess');

-- INSERT INTO books (title, author_id)
-- VALUES 
--   ('It', 2), 
--   ('Chamber of Secrets', 1), 
--   ('Cat and Hat', 4), 
--   ('Affair at styles', 3);



-- 2. 
-- complete
SELECT title, name FROM books
JOIN authors ON authors.id = books.author_id;