--Implement the relational model using SQL.
CREATE TABLE wine(
NumW INT PRIMARY KEY,
Category VARCHAR (50),
year VARCHAR (50),
degree VARCHAR(50)
);

CREATE TABLE producer(
NumP INT PRIMARY KEY, 
FirstName VARCHAR (50),
LastName VARCHAR (50),
Region VARCHAR(50) 
);

--Insert data into the database tables.
INSERT INTO wine(NumW, Category, year, degree)
VALUES
	(1, 'Red', 2019, 13.5),
	(2, 'White', 2020, 12.0),
	(3, 'Rose', 2018, 11.5),
	(4, 'Red', 2021, 14.0),
	(5, 'Sparkling', 2017, 10.5),
	(6, 'White', 2019, 12.5),
	(7, 'Red', 2022, 13.0),
	(8, 'Rose', 2020, 11.0),
	(9, 'Red', 2018, 12.0),
	(10, 'Sparkling', 2019, 10.0),
	(11, 'White', 2021, 11.5),
	(12, 'Red', 2022, 15.0);

INSERT INTO producer(NumP, FirstName, LastName, Region)
VALUES
	(1, 'John', 'Smith', 'Sousse'),
	(2, 'Emma', 'Johnson', 'Tunis'),
	(3, 'Michael', 'Williams', 'Sfax'),
	(4, 'Emily', 'Brown', 'Sousse'),
	(5, 'James', 'Jones', 'Sousse'),
	(6, 'Sarah', 'Davis', 'Tunis'),
	(7, 'David', 'Miller', 'Sfax'),
	(8, 'Olivia', 'Wilson', 'Monastir'),
	(9, 'Daniel', 'Moore', 'Sousse'),
	(10, 'Sophia', 'Taylor', 'Tunis'),
	(11, 'Matthew', 'Anderson', 'Sfax'),
	(12, 'Amelia', 'Thomas', 'Sousse');

--Retrieve a list of all producers.
SELECT * FROM producer

--Retrieve a sorted list of producers by name.
SELECT FirstName, LastName FROM producer ORDER BY FirstName ASC 

--Retrieve a list of producers from Sousse.

SELECT * FROM producer 
WHERE region = 'Sousse'

--Calculate the total quantity of wine produced with the wine number 12.
SELECT * FROM wine 

--List the wine numbers with a degree greater than 12, produced by producer number 24.
SELECT numw
FROM wine
WHERE degree > '12'



SELECT AVG(CAST(degree AS float)) AS avg_degree
FROM wine;

SELECT * FROM wine
ORDER BY year ASC
LIMIT 1;

ALTER TABLE wine ADD NumP INT;


SELECT w.NumW, w.Category, w.year, w.degree,  p.FirstName, p.LastName, p.Region
FROM wine w
JOIN producer p ON w.NumP = p

   