-- SQL - {}
-- Exercise: Create a view named tag by combining photo_tags and caption_tags

--  caption_tags    | photo_tags
-- id   user_id     |id   user_id
-- 1       1        |1       5
-- 2       4        |2       2
-- 3       2        |3       7
-- 4       1        |4       5
-- 5       5        |5       2
-- 6       4        |6       1

-- solution


-- CREATE VIEW tags AS (
-- 	SELECT id, user_id, post_id, created_at, 'caption_tag' AS type FROM caption_tags
-- 	UNION ALL
-- 	SELECT id, user_id, post_id, created_at, 'photo_tag' AS type FROM photo_tags
-- )

SELECT * FROM tags WHERE type = 'photo_tag'
