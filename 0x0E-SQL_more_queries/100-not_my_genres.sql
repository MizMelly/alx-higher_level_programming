-- a script that uses the hbtn_0d_tvshows database
-- to list all genres not linked to the show Dexter
-- The tv_shows table contains only one record where title = Dexter (but the id can be different)
-- Each record should display: tv_genres.name
-- Results must be sorted in ascending order by the genre name
-- You can use a maximum of two SELECT statement
-- The database name will be passed as an argument of the mysql command
SELECT DIATINCT `name`
FROM `tv_genres` AS g
ON g.`id` = s.`genre_id`
INNER JOIN `tv_shows` AS t
ON s.`show_id` = t.`id`
WHERE g.`name` NOT IN
(SELECT `name` 
	FROM `tv_genres` AS g
	INNER JION `tv_show_genres` AS

	ON g.`id` = s.`genre_id`

	INNER JOIN `tv_shows` AS t 
	ON s.`show_id` = t.`id`
	WHERE t.`title` = "Dexter")
ORDER BY g.`name`;
