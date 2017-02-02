-- SQL Assignment
-- Check out [W3Schools' SQL Reference](http://www.w3schools.com/sql/sql_syntax.asp) as a reference.

-- Provide one or more SQL queries that retrieve the requested data
-- below each of the following questions:

-- 1) Find the albums recorded by the artist Queen.

SELECT Title FROM Albums WHERE artist_id= 51;



-- 2) [Count](http://www.w3schools.com/sql/sql_func_count.asp) how many tracks belong to the media type "Protected MPEG-4 video file".
SELECT id FROM media_types WHERE name= 'Protected MPEG-4 video file';
SELECT COUNT(id) AS name FROM media_types WHERE id= 3;


-- 3) Find the least expensive track that has the genre "Electronica/Dance".
SELECT id FROM genres WHERE name = 'Electronica/Dance';
SELECT Name, unit_price FROM Tracks WHERE genre_id= 15 ORDER BY unit_price ASC LIMIT 1;

-- 4) Find the all the artists whose names start with A.
SELECT Name FROM Artists WHERE name LIKE 'A%';


-- 5) Find all the tracks that belong to playlist 1.
SELECT tracks.name FROM tracks INNER JOIN playlists_tracks ON playlists_tracks.track_id=tracks.id WHERE playlists_tracks.playlist_id=1;
