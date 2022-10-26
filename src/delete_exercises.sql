
USE codeup_test_db;

SELECT 'All albums after 1991' AS 'Desc.';
SELECT * FROM albums WHERE release_date > 1991;
DELETE FROM albums WHERE release_date > 1991;

SELECT 'All albums genre of Disco' AS 'Desc.';
SELECT * FROM albums WHERE genre = 'disco';
DELETE FROM albums WHERE genre = 'disco';

SELECT 'All albums by Eagles' AS 'Desc.';
SELECT * FROM albums WHERE artist = 'Eagles';
DELETE FROM albums WHERE artist = 'Eagles';