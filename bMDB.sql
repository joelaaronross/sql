-- create and select the database
DROP DATABASE IF EXISTS bmdb;
CREATE DATABASE bmdb;
USE bmdb;

-- create Movie table
-- DROP TABLE IF EXISTS Movie;
Create table bmdb.Movie (
ID integer primary key auto_increment,
Title varchar(255) not null unique,
Year integer not null
-- CONSTRAINT utitle unique (Title)
);

-- create Actor table
-- DROP TABLE IF EXISTS Actor;
Create table bmdb.Actor (
ID integer primary key auto_increment,
FirstName varchar(255) not null,
LastName varchar(255) not null,
Gender varchar(1) not null,
BirthDate date not null,
CONSTRAINT fname_lname unique (FirstName, LastName)
);

-- create Credits table
Create table bmdb.Credits (
ID integer primary key auto_increment,
ActorID integer not null,
MovieID integer not null,
CharacterName varchar(255),

Foreign Key (ActorID) references Actor(ID),
Foreign Key (MovieID) references Movie(ID),
CONSTRAINT act_mov unique (ActorID, MovieID)
);

-- Add some movies
 insert into Movie VALUES
 	(1, 'Revenge of the Nerds', 1984),
 	(2, 'Avengers Infinity War', 2018),
    (3, 'Last of the Mohicans', 1992),
    (4, 'Tommy Boy', 1995),
    (5, 'The Illusionist', 2006),
    (6, 'Braveheart', 1995),
    (7, 'Billy Madison', 1995),
    (8, 'Home Alone', 1990),
    (9, 'Die Hard', 1988),
    (10, 'Anchorman', 2004);
    
-- Add some movies
 insert into Actor VALUES
 	(1, 'Robert', 'Downey Jr.', 'M', '1965-4-4'),
 	(2, 'Chris', 'Hemsworth', 'M', '1983-09-11'),
    (3, 'Chris', 'Farley', 'M', '1984-11-22'),
 	(4, 'Robert', 'Carradine', 'M', '1954-3-24'),
    (5, 'Will', 'Ferrel', 'M', '1967-7-16'),
 	(6, 'Anthony', 'Edwards', 'M', '1962-7-19'),
    (7, 'David', 'Spade', 'M', '1964-7-22'),
    (8, 'Madeleine', 'Stowe', 'F', '1958-8-18'),
    (9, 'Daniel', 'Day-Lewis', 'M', '1957-4-29'),
    (10, 'Jessica', 'Biel', 'F', '1982-3-3'),
    (11, 'Edward', 'Norton', 'M', '1969-8-18'),
    (12, 'Mel', 'Gibson', 'M', '1956-1-3'),
    (13, 'Sophie', 'Marceau', 'F', '1966-11-17'),
    (14, 'Adam', 'Sandler', 'M', '1966-9-9'),
    (15, 'Norm', 'MacDonald', 'M', '1959-10-17'),
    (16, 'Macaulay', 'Culkin', 'M', '1980-8-26'),
    (17, 'Daniel', 'Stern', 'M', '1957-8-28'),
    (18, 'Bruce', 'Willis', 'M', '1955-3-19'),
    (19, 'Alan', 'Rickman', 'M', '1946-2-21'),
    (20, 'Christina', 'Applegate', 'F', '1971-11-25');
    
-- Add movie credits for actors
 insert into Credits (ActorID, MovieID, CharacterName) VALUES
 	(1, 2, 'Tony Stark - Iron Man'),
    (2, 2, 'Thor'),
    (3, 4, 'Tommy Boy'),
    (4, 1, 'Lewis'),
    (5, 10, 'Ron Burgundy'),
    (6, 1, 'Gilbert'),
    (7, 4, 'Richard'),
    (8, 3, 'Cora Munroe'),
    (9, 3, 'Nathaniel'),
    (10, 5, 'Sophie'),
    (11, 5, 'Eisenheim'),
    (12, 6, 'William Wallace'),
    (13, 6, 'Princess Isabelle'),
    (14, 7, 'Billy Madison'),
    (15, 7, 'Frank'),
    (16, 8, 'Kevin Mccallister'),
    (17, 8, 'Vern'),
    (18, 9, 'John McClane'),
    (19, 9, 'Hans Gruber'),
    (20, 10, 'Veronica');


-- create a user and grant privileges to that user
CREATE USER bmdb_user@localhost IDENTIFIED BY 'sesame';
GRANT SELECT, INSERT, DELETE, UPDATE ON bmdb.* TO bmdb_user@localhost;