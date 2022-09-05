-- SQL - {}
-- Program: This is the same exercise as the last one, but this time we want to print out some information from both tables!
-- Write a query that will print an author's name and the number of books they have authored


--      authors                    books
-- id   name               \  id   title                 author_id
-- 1    Jk Rowling         \  1    Chamber of Secrets    1
-- 2    Stephen King       \  2    Prisoner of Azkaban   1
-- 3    Agatha Christie    \  3    The Dark Tower        2
-- 4    Dr Seus            \  4    Murder At the Links   3
--                         \  5    Affair at Styles      3
--                         \  6    Cat in the Hat        4

-- 1  chamber
--    prisoner
-- 2  The dark
-- 3  Murder at
--    Affair at
-- 4  Cat in the 

-- Solution


-- CREATE TABLE authors (
--   id SERIAL PRIMARY KEY,
--   name VARCHAR(50)
-- );

-- CREATE TABLE books (
--   id SERIAL PRIMARY KEY,
--   name VARCHAR(50),
--   author_id INTEGER REFERENCES authors(id)
-- );

-- INSERT INTO authors (name)
-- VALUES ('JK Rowling'), ('Stephen King'), ('Agatha Christie'), ('Dr Seus');

-- INSERT INTO books (name, author_id)
-- VALUES ('Chamber of Secrets', 1), ('Prisoner of Azkaban', 1), ('The Dark Tower', 2), ('Murder At the Links', 3), ('Affair at Styles', 3), ('Cat in the Hat', 4);


SELECT authors.name, COUNT(*)
FROM books
JOIN authors ON authors.id = books.author_id
GROUP BY authors.name

-- SELECT * FROM books JOIN authors ON authors.id = books.author_id