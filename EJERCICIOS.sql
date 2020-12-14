--1.

SELECT *
FROM DimEmployee
WHERE Status = 'Current'

--2.

SELECT *
FROM DimEmployee
WHERE EmployeeKey > 10

--3.

SELECT *
FROM DimEmployee
WHERE Status = 'Current' AND EmployeeKey > 10 AND BirthDate BETWEEN '1987-01-01' AND '1990-01-01'



--1.

SELECT * FROM DimDate 
SELECT *FROM FactCurrencyRate

SELECT *
FROM DimDate DD LEFT JOIN FactCurrencyRate FCR ON DD.DateKey = FCR.DateKey
WHERE DD.DateKey = 20141231


SELECT *
FROM DimDate DD LEFT JOIN FactCurrencyRate FCR ON DD.DateKey = FCR.DateKey
WHERE DD.DateKey = 20150101