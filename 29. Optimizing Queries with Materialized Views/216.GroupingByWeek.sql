-- SQL - {}
-- Exercise: For each week, show the number of likes that posts and comments recieved. 
--           Use the post and comment created_at date, not when the like was recieved

--      posts                 likes                comments
-- created_at   id   |post_id   comment_id   |id   created_at
-- 2010-01-01   1    |  2         null       |1    2010-01-03
-- 2010-01-04   2    | null        3         |2    2010-01-09
-- 2010-01-06   3    | null        2         |3    2010-01-010
--                   |  2         null       |
--                   |  2         null       |
--                   | null        1         |


-- solution

-- SELECT 
--    date_trunc('week', COALESCE(posts.created_at, comments.created_at)) AS week,
--    COUNT(posts.id),
--    COUNT(comments.id)
-- FROM likes
-- LEFT JOIN posts ON posts.id = likes.post_id
-- LEFT JOIN comments ON comments.id = likes.comment_id
-- GROUP BY week
-- ORDER BY week
