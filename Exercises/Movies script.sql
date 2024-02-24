CREATE TABLE Directors
(
	Id INT PRIMARY KEY IDENTITY NOT NULL,
	DirectorName VARCHAR(255),
	Notes VARCHAR(MAX),
)
CREATE TABLE Genres
(
	Id INT PRIMARY KEY IDENTITY NOT NULL,
	GenreName VARCHAR(255),
	Notes VARCHAR(MAX),
)
CREATE TABLE Categories
(
	Id INT PRIMARY KEY IDENTITY NOT NULL,
	CategoryName VARCHAR(255),
	Notes VARCHAR(MAX),
)
CREATE TABLE Movies
(
	Id INT IDENTITY NOT NULL,
	Title VARCHAR(50),
	DirectorId INT FOREIGN KEY REFERENCES Directors(Id),
	CopyrightYear SMALLINT,
	Length FLOAT,
	GenreId INT FOREIGN KEY REFERENCES Genres(Id),
	CategoryId INT FOREIGN KEY REFERENCES Categories(Id),
	Rating DECIMAL(3,1),
	Notes  VARCHAR(MAX)


)

INSERT INTO Directors (DirectorName,Notes)
VALUES  ('Guy Richie','Makes good movies')
	    ,('Woodey Alan','Makes bad movies')
	    ,('Pesho',NULL)
		,('Gosho',NULL)
		,('Ivana','Makes good movies')
INSERT INTO Genres(GenreName,Notes)
VALUES  ('Horro','Really scary')
	    ,('Comedy','Funny')
	    ,('Action',NULL)
		,('Drama',NULL)
		,('Documentury','not bad')
INSERT INTO Categories(CategoryName,Notes)
VALUES  ('Cat 1','Really scary')
	    ,('Cat 2','Funny')
	    ,('Cat 3',NULL)
		,('Cat 4',NULL)
		,('Cat 5','not bad')
INSERT INTO Movies(Title,DirectorId,CopyrightYear,Length,GenreId,CategoryId,Rating,Notes)
VALUES 
(  'asd',2,NULL,1.87,1,1,5.4,'gaaaa')
,(  'asdaa',2,1987,1.87,1,1,5.4,'gaaaa')
,(  'asdbb',1,1906,1.87,1,1,5.4,'gaaaa')
,(  'asddad',4,2000,1.87,1,1,5.4,'gaaaa')
,(  'asdagfh',3,NULL,1.87,1,1,5.4,'gaaaa')

