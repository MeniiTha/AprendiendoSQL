---------------------------------********************** UNIDAD 2 *******************************-------------------

--1.

SELECT *
FROM DimEmployee
WHERE Status = 'Current'

--2.

SELECT *
FROM DimEmployee
WHERE EmployeeKey > 10

--1.

SELECT *
FROM DimEmployee
WHERE Status = 'Current' AND EmployeeKey > 10 AND BirthDate BETWEEN '1987-01-01' AND '1990-01-01'

--2.

SELECT *
FROM DimEmployee
WHERE FirstName NOT IN ('Alejandro', 'Simon','Fred') AND ParentEmployeeKey = 112




---------------------------------********************** UNIDAD 3 *******************************-------------------

--1.

SELECT * FROM DimDate 
SELECT *FROM FactCurrencyRate

SELECT *
FROM DimDate DD LEFT JOIN FactCurrencyRate FCR ON DD.DateKey = FCR.DateKey
WHERE DD.DateKey = 20141231


SELECT *
FROM DimDate DD LEFT JOIN FactCurrencyRate FCR ON DD.DateKey = FCR.DateKey
WHERE DD.DateKey = 20150101

--2.

SELECT *
FROM DimDate DD RIGHT JOIN FactCurrencyRate FCR ON DD.DateKey = FCR.DateKey

--3.

SELECT *FROM DimProduct
SELECT *FROM DimProductSubcategory

SELECT *
FROM DimProduct DP JOIN DimProductSubcategory DPS ON DP.ProductSubcategoryKey = DPS.ProductSubcategoryKey
WHERE ListPrice IS NOT NULL


SELECT *
FROM DimProduct DP FULL JOIN DimProductSubcategory DPS ON DP.ProductSubcategoryKey = DPS.ProductSubcategoryKey
WHERE ListPrice IS NOT NULL


---------------------------------********************** UNIDAD 4 *******************************-------------------

--1.

CREATE TABLE DimPersona (
	Id int identity(1,1) NOT NULL,
	Nombre varchar(255) NOT NULL,
	Apellido varchar(255) NOT NULL,
	edad int NOT NULL,
	peso decimal(18,2) NULL
);

--2.

-----UNA MANERA DE COPIAR DATOS DE UNA TABLA A OTRA

SELECT * INTO Dim_Account_Bkp1 FROM DimAccount


-----OTRA FORMA

CREATE TABLE Dim_Account_Bkp2(
	[Key][int] not null primary key,
	[AccountKey][int] null,
	[ParentAlternate][int] null,
	[AlternateKey][int] null,
	[Descripcion][nvarchar](50) null,
	[Type][nvarchar](50) null,
	[Operador][nvarchar](50) null,
	[Members][nvarchar](300) null,
	[ValueType][nvarchar](50) null,
	[CustomMember][nvarchar](200) null
);
INSERT INTO Dim_Account_Bkp2
SELECT * FROM DimAccount


------******************* I N S E R T **********************-----------------

--1.

SELECT *FROM DimPersona

INSERT INTO DimPersona VALUES('Mariel', 'Fernandez', 22, NULL)
INSERT INTO DimPersona VALUES('Federico', 'Cardozo', 46, NULL)
INSERT INTO DimPersona VALUES('Nicolás', 'Barua', 37, NULL)
INSERT INTO DimPersona VALUES('Paola', 'Castañares', 18, NULL)
INSERT INTO DimPersona VALUES('Javier', 'Sullca', 40, NULL)


------******************* D E L E T E **********************-----------------

--1.

DELETE FROM Dim_Account_Bkp2

------******************* U P D A T E **********************-----------------

--1.

UPDATE Dim_Account_Bkp1 SET CustomMemberOptions = 'N/A'

--2.

UPDATE Dim_Account_Bkp1 SET CustomMemberOptions = 'Cuenta', CustomMembers = 'Usuario'
WHERE ParentAccountKey = 17


