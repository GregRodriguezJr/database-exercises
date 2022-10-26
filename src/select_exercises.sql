
-- In select_exercises.sql write queries to find the following information. Before each item, output a caption explaining the results:
-- The name of all albums by Pink Floyd.
-- The year Sgt. Pepper's Lonely Hearts Club Band was released
-- The genre for Nevermind
-- Which albums were released in the 1990s
-- Which albums had less than 20 million certified sales
-- All the albums with a genre of "Rock". Why do these query results not include albums with a genre of "Hard rock" or "Progressive rock"?

USE codeup_test_db;

SELECT name AS 'All albums by Pink Floyd' FROM albums WHERE artist = 'Pink Floyd';

SELECT release_date AS 'Release Date of Sgt. Peppers Lonely Hearts' FROM albums WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band';

SELECT name AS 'Albums released in the 90s' FROM albums WHERE release_date BETWEEN 1990 AND 1999;

SELECT name AS 'Album sales below 20 million' FROM albums WHERE sales < 20.0;

SELECT * FROM albums WHERE genre = 'Rock';