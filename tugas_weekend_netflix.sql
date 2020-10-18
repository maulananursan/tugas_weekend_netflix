USE tugas_weekend;

CREATE TABLE netflix(
show_id INT PRIMARY KEY,
tipe ENUM("Movie","TV Show"),
title TEXT,
director TEXT,
cast_film TEXT,
country TEXT,
date_added VARCHAR(20),
release_year YEAR(4),
rating VARCHAR(20),
duration VARCHAR(20),
listed_in VARCHAR(100),
description TEXT
);

LOAD DATA INFILE 'D:/Diklat_BKPSDM/Materi_Database/tugas_weekend/netflix_titles.csv'
INTO TABLE netflix
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

SELECT*FROM netflix WHERE duration = "90 min";
SELECT*FROM netflix WHERE country = "Thailand";
SELECT*FROM netflix WHERE release_year > 2015;