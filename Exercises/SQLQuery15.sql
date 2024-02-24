CREATE TABLE Users
(
	Id INT PRIMARY KEY IDENTITY(1,1),
	Username CHAR(30) NOT NULL,
	[Password]CHAR(26) NOT NULL,
	ProfilePicture IMAGE,
	LastLoginTime DATETIME2,
	IsDeleted BIT NOT NULL
);
