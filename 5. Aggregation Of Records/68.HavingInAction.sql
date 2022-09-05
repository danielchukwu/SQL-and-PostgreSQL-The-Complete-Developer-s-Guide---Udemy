-- SQL - {}
-- Program: Find the number of comments for each photo where the photo_id is less than 3
--          and the photo has more than 2 comments


-- solution

SELECT photo_id, COUNT(*)
FROM comments
WHERE comments.photo_id < 3
GROUP BY photo_id
HAVING COUNT(*) > 2;