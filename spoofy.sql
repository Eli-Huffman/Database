DROP DATABASE IF EXISTS Spoofy;

CREATE DATABASE IF NOT EXISTS Spoofy;

USE Spoofy;

CREATE TABLE IF NOT EXISTS Song (
    Title VARCHAR(255) NOT NULL,
    Artist VARCHAR(255) NOT NULL,
    Duration FLOAT NOT NULL,
    Genre VARCHAR(255) NOT NULL,
    Explicit BOOL NULL DEFAULT 0,
    Link VARCHAR(255) NOT NULL,
    PRIMARY KEY (Title)
);

CREATE TABLE IF NOT EXISTS Genre (
    Genre VARCHAR(255) NOT NULL,
    PRIMARY KEY (Genre)
);

CREATE TABLE IF NOT EXISTS Playlist (
    Ranking INT AUTO_INCREMENT NOT NULL,
    Song VARCHAR(255) NOT NULL,
    FOREIGN KEY (Song) REFERENCES Song(Title) ON UPDATE CASCADE ON DELETE CASCADE,
    PRIMARY KEY (Ranking)
);

CREATE TABLE IF NOT EXISTS S_User (
	Email VARCHAR(255) NOT NULL,
    First_Name VARCHAR(255) NOT NULL,
    Last_Name VARCHAR(255) NOT NULL,
    S_Password VARCHAR(255) NOT NULL,
    PRIMARY KEY (First_Name)
);

CREATE TABLE IF NOT EXISTS Artist (
    First_Name VARCHAR(255) NOT NULL,
    Last_Name VARCHAR(255) NOT NULL,
    DOB VARCHAR(255) NOT NULL,
    PRIMARY KEY (First_Name)
);

INSERT INTO Song (Title, Artist, Duration, Genre, Explicit, Link)
VALUES
    ('LonelyNight','Billy','1.57','Rock',0,'link'),
    ('Sunglasses','Corey','5.20','80s',0,'link'),
    ('Tainted','Soft','2.34','Synth',1,'link'),
    ('500','Proclaimers','3.39','Jazz',0,'link'),
    ('Ballroom','Sweet','4.07','Rock',0,'link')
;

INSERT INTO S_User (Email, First_Name, Last_Name, S_Password)
VALUES
    ('OldMan@gmail.com','Harry','Gein','87Rocker'),
	('KnowWhoYouAre@yahoo.com','Martha','Yo','WhiteQueen'),
	('GuessWho@gmail.com','Duggard','Haffield','1234password'),
	('FredSays@yahoo.com','Fred','Loius','ManofMan12'),
	('SeveralHours@gmail.com','Bread','Man','CoolStoryBro'),
	('Developer@gmail.com','Garry','Newman','CheeseParadise17'),
	('Justice4@yahoo.com','Barry','Alan','2Fast2Quick')
;

INSERT INTO Artist (First_Name, Last_Name, DOB)
VALUES
    ('Billy','Man','3/14/1967'),
	('Corey','Chill','1/24/1965'),
	('Soft','Hands','7/04/1975'),
    ('Proclaimers','Walker','11/27/1962'),
	('Sweet','Dreams','6/16/1966')
;