CREATE TABLE IF NOT EXISTS movies ( movieId int, title String, genres String)
COMMENT 'Movies details'
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '\054'
LINES TERMINATED BY '\n'
STORED AS TEXTFILE;

CREATE TABLE IF NOT EXISTS tags ( userId int, movieId int, tag String, timestamp timestamp)
COMMENT "Movie Tags"
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '\054'
LINES TERMINATED BY '\n'
STORED AS TEXTFILE;

CREATE TABLE IF NOT EXISTS ratings ( userId int, movieId int, rating double, timestamp timestamp)
COMMENT "Movie Ratings"
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '\054'
LINES TERMINATED BY '\n'
STORED AS TEXTFILE;

CREATE TABLE IF NOT EXISTS genome-scores ( movieId int, tagId int, relevance double)
COMMENT "Movie Genome Scores"
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '\054'
LINES TERMINATED BY '\n'
STORED AS TEXTFILE;

CREATE TABLE IF NOT EXISTS genome_tags ( tagId int, tags String)
COMMENT 'genome_tags details'
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '\054'
LINES TERMINATED BY '\n'
STORED AS TEXTFILE;