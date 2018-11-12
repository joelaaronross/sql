-- create and select the database
DROP DATABASE IF EXISTS tv_shows;
CREATE DATABASE tv_shows;
USE tv_shows;
-- create TvShow table

CREATE TABLE TvShow(
  ID                     INTEGER             PRIMARY KEY  AUTO_INCREMENT,
  Name               	 VARCHAR(100) 	not null,   
  Rating                 VARCHAR(5)		not null,   
  Length				 INTEGER     	not null,  
  Genre				 	 VARCHAR(25)	not null, 
  Network			 	 VARCHAR(25)	not null,
  CONSTRAINT name_network unique (Name, Network)
);

 
-- add data to TvShow
INSERT INTO TvShow VALUES
(1,'Seinfeld','TV-14',30,'Comedy','NBC'),
(2,'Star Trek','TV-14',60,'Sci-Fi','CBS'),
(3,'The Middle','TV-14',30,'Comedy','ABC'),
(4,'Curb Your Enthusiasm','TV-MA',30,'Comedy','HBO'),
(5,'Arrested Development','TV-14',30,'Comedy','Netflix'),
(6,'Archer','TV-MA',30,'Comedy','FX'),
(7,'Three''s Company','TV-14',30,'Comedy','TV Land'),
(8,'Buffy The Vampire Slayer','TV-14',60,'Action','FX'),
(9,'Game of Thrones','TV-MA',60,'Drama','HBO'),
(10,'Walking Dead','TV-MA',60,'Action','AMC');

-- insert vendors
-- make user.Email unique
CREATE USER tv_shows_user@localhost IDENTIFIED BY 'sesame';
GRANT SELECT, INSERT, DELETE, UPDATE ON tv_shows.* TO tv_shows_user@localhost;

