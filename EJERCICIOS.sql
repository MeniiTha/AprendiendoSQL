--1.
--Continuando con el pedido anterior, el equipo de Recursos Humanos,
--necesita saber cuáles de los empleados que están en estado activo.
--Para esto hay que listar todos los registros y todos los campos la tabla
--DimEmployee donde el campo Status sea igual ‘Current’

SELECT COUNT(*) FROM DimEmployee

SELECT *
FROM DimEmployee
WHERE Status = 'Current'

--2.
--De la misma lista de empleados que solicita el equipo de Recursos
--Humanos, deberán figurar los empleados que tengan menor
--antigüedad, por lo tanto, se solicita como parámetro traer los registros
--la tabla DimEmployee donde el campo EmployeeKey sea mayor a 10

SELECT *
FROM DimEmployee
WHERE EmployeeKey > 10

--3. Continuando con el pedido solicitado por el equipo de Recursos
--Humanos, para poder realizar un subgrupo por edad de empleados en
--estado activo. Para esto listar todos los registros y todos los campos de
--la tabla DimEmployee donde el campo Status sea igual ‘Current’, el
--campo EmployeeKey sea mayor a 10 y que la fecha de nacimiento de
--esos empleados sea entre ‘1987-01-01’ y ‘1990-01-01’

SELECT *
FROM DimEmployee
WHERE Status = 'Current' AND EmployeeKey > 10 AND BirthDate BETWEEN '1987-01-01' AND '1990-01-01'



--1.
--El equipo de Administración y Finanzas necesita realizar un análisis de
--tasa de cambio, para esto es necesario desarrollar una consulta que
--devuelva todos los campos de las tablas DimDate, FactCurrencyRate,
--partiendo de la tabla DimDate utilizando LEFT JOIN, filtrando que el
--campo DateKey de la tabla DimDate sea igual a 20141231. (Fijarse que si
--no existen registros con esas características los campos de la tabla
--FactCurrencyRate van a venir nulos, elegir otra fecha para ver la diferencia).

SELECT * FROM DimDate 
SELECT *FROM FactCurrencyRate

SELECT *
FROM DimDate DD LEFT JOIN FactCurrencyRate FCR ON DD.DateKey = FCR.DateKey
WHERE DD.DateKey = 20141231


SELECT *
FROM DimDate DD LEFT JOIN FactCurrencyRate FCR ON DD.DateKey = FCR.DateKey
WHERE DD.DateKey = 20150101