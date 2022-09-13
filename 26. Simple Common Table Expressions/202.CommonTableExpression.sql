-- SQL - {}
-- Exercise: Show the username of users who where tagged in a caption or photo befor january 7th 2010. 
-- Also show the date they were tagged


--    users     |       caption_tags         |        photo_tags
-- id   username   |id   user_id   created_at   |id   user_id   created_at
-- 10   Hallie     |1       1      2014-01-01   |1       5      2013-02-06
-- 11   Eldon      |2       4      2010-01-05   |2       2      2017-03-28
-- 12   Rozella    |3       2      2012-11-04   |3       7      2016-02-09
-- 13   Tad        |4       1      2015-04-07   |4       5      2010-03-06
-- 14   Kim        |5       5      2010-01-01   |5       2      2010-01-03
-- 15   Daniella   |6       4      2019-10-10   |6       1      2010-12-27


-- solution


SELECT username, tags.created_at
FROM users
JOIN (
   SELECT user_id, created_at FROM caption_tags
   UNION ALL
   SELECT user_id, created_at FROM photo_tags
) AS tags ON tags.user_id = users.id
WHERE tags.created_at < '2010-01-07';




-- Exercise2: Improve this using simple common table expression
WITH tags AS (
   SELECT user_id, created_at FROM caption_tags
   UNION ALL
   SELECT user_id, created_at FROM photo_tags
)

