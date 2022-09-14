SQL - {}
Exercise: Write a Recursive CTE query to suggest users at depth 2 for a particular user with id=1

--        users                   followers
-- id   username         |id   leader_id    follower_id
-- 1    Hallie           |1        5             1
-- 2    Justin Bieber    |2        6             5
-- 3    Jennifer Lopez   |3        7             2
-- 4    The Rock         |4        4             1
-- 5    Kevin Hart       |5        2             5
-- 6    Snoop Dog        |6        3             4



solution


WITH RECURSIVE suggestions(leader_id, follower_id, depth) AS (
		SELECT leader_id, follower_id, 1 AS depth
		FROM followers
		WHERE follower_id = 1
	UNION
		SELECT followers.leader_id, followers.follower_id, depth + 1
		FROM followers
		JOIN suggestions ON suggestions.leader_id = followers.id
		WHERE depth < 3
)
SELECT leader_id AS id, username, depth
FROM suggestions
JOIN users ON users.id = suggestions.leader_id
WHERE depth = 3
LIMIT 5;