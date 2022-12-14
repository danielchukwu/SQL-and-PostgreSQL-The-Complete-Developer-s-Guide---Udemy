-- SQL -{}
-- Exercise: Show the most popular users - the users who were tagged the most 


--        users          | caption_tags    | photo_tags
-- id   username         |id   user_id     |id   user_id
-- 1    Hallie           |1       1        |1       5
-- 2    Justin Bieber    |2       4        |2       2
-- 3    Jennifer Lopez   |3       2        |3       7
-- 4    The Rock         |4       1        |4       5
-- 5    Kevin Hart       |5       5        |5       2
-- 6    Snoop Dog        |6       4        |6       1


-- solution


WITH tags AS (
	SELECT user_id FROM caption_tags
	UNION ALL
	SELECT user_id FROM photo_tags
)

SELECT username, COUNT(*) AS most_popular_user
FROM users
JOIN tags ON tags.user_id = users.id
GROUP BY username
ORDER BY most_popular_user DESC
