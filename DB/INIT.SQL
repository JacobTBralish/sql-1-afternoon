--------------------------------------------------------------------------------------------- Problem 1 ----------------------------------------------------------------------------------------------

CREATE TABLE Persons (
	id INTEGER PRIMARY KEY AUTOINCREMENT
	,Name TEXT
	,Age SMALLINT
  	,Height SMALLINT
  	,City NVARCHAR(40)
  	,Favorite_Color NVARCHAR
);

INSERT INTO Persons
	(Name, Age, Height, City, Favorite_Color)
    VALUES
	('Michael', 33, 187, 'Honolulu', 'Green'),
	('Michael', 54, 182, 'San Diego', 'Red'),
	('Jacob', 23, 170, 'Denver', 'Green'),
	('Theresa', 52, 165, 'San Diego', 'Blue'),
	('Alex', 26, 155, 'Denver', 'Blue');
    
SELECT * FROM Persons
ORDER BY Height DESC; 
     
SELECT * FROM Persons
ORDER BY Height ASC; 

SELECT * FROM Persons
ORDER BY AGE DESC;

SELECT * FROM Persons
ORDER BY AGE > 20;


SELECT * FROM Persons
ORDER BY Age = 18; */

SELECT * FROM Persons
WHERE Age < 20 & Age > 30;

SELECT * FROM Persons
WHERE Age != 27;

SELECT * FROM Persons
WHERE Favorite_Color <> 'Red';

SELECT * FROM Persons
WHERE Favorite_Color <> 'Red' AND Favorite_Color <> 'Blue';

SELECT * FROM Persons
WHERE Favorite_Color = 'Orange' OR Favorite_Color = 'Green';

SELECT * FROM Persons
WHERE Favorite_Color IN('Orange','Green','Blue');

SELECT * FROM Persons
WHERE Favorite_Color IN('Purple','Yellow'); 
    

--------------------------------------------------------------------------------------------- Problem 2 ----------------------------------------------------------------------------------------------

CREATE TABLE Orders (
  Person_Id INTEGER PRIMARY KEY AUTOINCREMENT
  ,Product_Name TEXT
  ,Product_Price NUMBERIC(10,2)
  ,Quantity TEXT); */
  
INSERT INTO Orders (Person_Id ,Product_Name, Product_Price, Quantity) VALUES
  (1,'Note8', 599.99, 2),
  (2,'IPhone', 599.99, 1),
  (3,'Pixel', 549.98, 4),
  (4,'GalaxyS9', 499.99, 2);
  
SELECT * FROM Orders;

SELECT sum(Quantity) FROM Orders;

SELECT sum(Product_Price) FROM Orders;

SELECT sum(Product_Price * Quantity) FROM Orders
WHERE Person_Id = 1;

--------------------------------------------------------------------------------------------- Problem 3 ----------------------------------------------------------------------------------------------

INSERT INTO Artist (name)
VALUES ('Travis_Scott');
 
INSERT INTO Artist (name)
VALUES ('Quavo');

 
SELECT * FROM Artist
ORDER BY name
DESC limit 10;
 
SELECT * FROM Artist
ORDER BY name
ASC limit 5;

SELECT * FROM Artist
WHERE name 
LIKE 'Black%';
 
SELECT * FROM Artist
WHERE name 
LIKE '%Black%';


--------------------------------------------------------------------------------------------- Problem 4 ----------------------------------------------------------------------------------------------

SELECT FirstName , LastName FROM Employee
WHERE city = 'Calgary';

SELECT FirstName, LastName, Max(BirthDate) FROM Employee;

SELECT FirstName, LastName, Min(BirthDate) FROM Employee;

SELECT * FROM Employee WHERE ReportsTo = 2;

SELECT Count(EmployeeId) FROM Employee
WHERE City = 'Lethbridge';

--------------------------------------------------------------------------------------------- Problem 5 ----------------------------------------------------------------------------------------------

SELECT count(Total)FROM Invoice
WHERE BillingCountry = 'USA';

SELECT max(Total) FROM Invoice;

SELECT min(Total) FROM Invoice;

SELECT * FROM Invoice
WHERE Total > 5;

SELECT count(*) FROM Invoice
WHERE Total < 5;

SELECT count(Total)FROM Invoice
WHERE BillingState IN('CA','TX','AZ');

SELECT avg(Total) FROM Invoice;

SELECT sum(Total) FROM Invoice;