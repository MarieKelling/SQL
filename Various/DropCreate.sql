USE [Movies]
GO

/* Add an 'If Table exists maybe? */ 
ALTER TABLE Movie DROP CONSTRAINT FK_MovieGenre
GO  

DROP TABLE IF EXISTS Genre
GO

CREATE TABLE Genre (
	GenreID int NOT NULL, 
	GenreTitle varchar(10) NOT NULL,
	PRIMARY KEY (GenreID) 
) 
GO

DROP TABLE IF EXISTS Movie
GO

CREATE TABLE Movie (
	MovieID int NOT NULL, 
	Title varchar(50) NOT NULL,
	ReleaseYear int NOT NULL,
	GenreID int NULL, 
	PRIMARY KEY (MovieID),
	CONSTRAINT FK_MovieGenre FOREIGN KEY (GenreID) REFERENCES Genre(GenreID)
) 
GO


ALTER DATABASE dbname SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
GO

DROP DATABASE Movies
GO
