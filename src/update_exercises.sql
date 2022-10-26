
USE codeup_test_db;

SELECT 'Query' AS 'Update Exercise';

UPDATE albums SET sales = (sales * 10);
SELECT * FROM albums;

UPDATE albums SET release_date = 1800 WHERE release_date < 1980;
SELECT * FROM albums WHERE release_date < 1980;

UPDATE albums SET artist = 'Peter Jackson' WHERE artist  = 'Michael Jackson';
SELECT * FROM albums as WHERE artist = 'Michael Jackson';

