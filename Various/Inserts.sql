USE [Movies]
GO

INSERT INTO Genre(GenreID, GenreTitle) VALUES(1, 'Comedy');
INSERT INTO Genre(GenreID, GenreTitle) VALUES(2, 'Action');
INSERT INTO Genre(GenreID, GenreTitle) VALUES(3, 'Romantic');
INSERT INTO Genre(GenreID, GenreTitle) VALUES(4, 'Horror');
INSERT INTO Genre(GenreID, GenreTitle) VALUES(5, 'Doc.');
INSERT INTO Genre(GenreID, GenreTitle) VALUES(6, 'TVShow'); 

INSERT INTO Movie(MovieID, Title, ReleaseYear, GenreID) VALUES(1, 'White Chicks', 2003, 1);

select * from Genre; 
select * from Movie;  