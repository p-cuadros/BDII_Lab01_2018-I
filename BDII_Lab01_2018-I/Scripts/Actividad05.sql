	--Condori Tito Hernan
	
	--1
	SELECT CONVERT (date, SYSDATETIME())
    ,CONVERT (date, SYSDATETIMEOFFSET())
    ,CONVERT (date, SYSUTCDATETIME())
    ,CONVERT (date, CURRENT_TIMESTAMP)
    ,CONVERT (date, GETDATE())
    ,CONVERT (date, GETUTCDATE());

	--2

	SELECT employee_id,last_name,salary,salary*0.155 as newsalary FROM employees

	--3
	SELECT employee_id,last_name,salary,salary*0.155 as newsalary,salary-(salary*0.155) as incremento FROM employees

	--4

	SELECT UPPER(LEFT(last_name,1))+ (LOWER(SUBSTRING(last_name,1,LEN(last_name)))) AS ALEAS FROM employees where last_name like 'J%' OR last_name LIKE 'M%' OR last_name LIKE 'A%' ORDER BY last_name asc;
 
 select UPPER(last_name) "Apellido", (LOWER(first_name)) "Longitud" 
from employees 
where last_name like 'A%'
      or last_name like 'J%'
      or last_name like 'M%' order by last_name asc;

	  --5


	--7
  CREATE FUNCTION LPAD
(
    @string VARCHAR(MAX), -- Initial string
    @length INT,          -- Size of final string
    @pad CHAR             -- Pad character
)
RETURNS VARCHAR(MAX)
AS
BEGIN
    RETURN REPLICATE(@pad, @length - LEN(@string)) + @string;
END
GO

SELECT dbo.LPAD(salary, 15, '$') VALUE
FROM employees;

	--8
	--9





	
    