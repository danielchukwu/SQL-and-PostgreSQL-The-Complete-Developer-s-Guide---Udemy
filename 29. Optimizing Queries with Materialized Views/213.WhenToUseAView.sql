-- SQL - {}
-- Exercise: Create a view that contains top 10 most recent posts and then answer all
--           6 questions below using the created view



-- solution

-- CREATE VIEW recent_posts AS (
-- 	SELECT *
-- 	FROM posts
-- 	ORDER BY created_at DESC
-- 	LIMIT 10
-- )

-- 1. Show the users who created the 10 most recent posts
-- SELECT DISTINCT users.username
-- FROM recent_posts
-- JOIN users ON users.id = recent_posts.user_id

-- 2. show the number of likes for each of the 10 most recent posts recieved
-- SELECT recent_posts.id, COUNT(*)
-- FROM likes
-- JOIN recent_posts ON recent_posts.id = likes.post_id
-- GROUP BY recent_posts.id

-- 3. Show the users who were tagged in the 10 most recent posts
-- SELECT username
-- FROM photo_tags
-- JOIN recent_posts ON recent_posts.id = photo_tags.post_id
-- JOIN users ON users.id = photo_tags.user_id

-- 4. Show the hashtags used by the 10 most recent posts
-- SELECT DISTINCT title
-- FROM hashtags_posts
-- JOIN recent_posts ON recent_posts.id = hashtags_posts.post_id
-- JOIN hashtags ON hashtags_posts.hashtag_id = hashtags.id

-- 5. Show the average number of hashtags used in the 10 most recent posts. INCORRECT SOLUTION
-- SELECT recent_posts.id, COUNT(*)
-- FROM hashtags_posts
-- JOIN recent_posts ON recent_posts.id = hashtags_posts.post_id
-- GROUP BY recent_posts.id

