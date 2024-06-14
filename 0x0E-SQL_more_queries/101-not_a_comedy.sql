-- a script that lists all shows without the
-- genre Comedy in the database hbtn_0d_tvshows.
-- The tv_genres table contains only one record where
-- name = Comedy (but the id can be different)
-- Each record should display: tv_shows.title
-- Results must be sorted in ascending order by the show title
-- You can use a maximum of two SELECT statement
-- The database name will be passed as an argument of the mysql command
SELECT DISTINCT t.title
FROM tv_shows AS t
WHERE t.id NOT IN (
    SELECT t.id
    FROM tv_shows AS t
    INNER JOIN tv_show_genres AS s ON t.id = s.show_id
    INNER JOIN tv_genres AS g ON s.genre_id = g.id
    WHERE g.name = "Comedy"
)
ORDER BY t.title;
