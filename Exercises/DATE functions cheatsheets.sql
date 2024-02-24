--syntax
DATEDIFF(year//month/week/day/hour,StartDate,EndDate)
--example
SELECT DATEDIFF(year,'2000-03-03','2012-03-03')

--syntax
DATEPART(year//month/week/day/hour,date)
--example
SELECT DATEPART(MONTH,GETDATE())
SELECT DATENAME(MONTH,GETDATE())
--syntax
DATEADD(year//month/week/day/hour,quantity,date)
--example
SELECT DATEADD(HOUR,547,GETDATE())