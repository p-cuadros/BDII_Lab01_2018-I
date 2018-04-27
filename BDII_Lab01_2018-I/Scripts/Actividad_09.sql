


SELECT  AVG( first_name) , AVG(last_name) ,
AVG( employee_id) as 'in_empleado' ,  AVG(employees.salary	)as 'salario de empleados', SUM(employees.salary	)as 'SUMA salario'
	FROM employees
		
	WHERE salary > AVG 

	 order by [salario de empleados] desc ;
	
