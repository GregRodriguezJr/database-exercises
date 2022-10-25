-- Table columns
-- id — auto-incrementing unsigned integer primary key
-- artist — string for storing the recording artist name
-- name — string for storing a record name
-- release_date — integer representing year record was released
-- sales — floating point value for number of records sold (in millions)
-- genre — string for storing the record's genre(s)

USE codeup_test_db;
DROP TABLE IF EXISTS albums;
CREATE TABLE albums (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR(50) NOT NULL,
    name  VARCHAR(50) NOT NULL,
    release_date DATE NOT NULL,
    sales FLOAT NOT NULL,
    genre VARCHAR(50) NOT NULL,
    PRIMARY KEY (id)
);