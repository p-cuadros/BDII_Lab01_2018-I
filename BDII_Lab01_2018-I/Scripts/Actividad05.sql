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

	SELECT UPPER(LEFT(last_name,1))+ (LOWER(SUBSTRING(last_name,1,LEN(last_name)))) AS ALEAS FROM employees where last_name like 'J%' OR last_name LIKE 'M%' OR last_name LIKE 'A%' ORDER BY last_name;
 

	--7
	SELECT last_name, LPAD(salary, 15, '$') SALARY
FROM employees;

	--8





	
    