CREATE TABLE Users
(
	Id BIGINT PRIMARY KEY IDENTITY(1,1),
	Username VARCHAR(30) UNIQUE NOT NULL,
	Password VARCHAR(26) NOT NULL,
	ProfilePicture VARBINARY(8000),
	LastLoginTime DATETIME2,
	IsDeleted BIT


)
INSERT INTO Users 
VALUES('Krasi','password123','2023-05-01', 'false')

