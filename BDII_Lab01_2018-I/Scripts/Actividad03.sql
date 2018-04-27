-- DESARROLLO DE ACTIVIDAD 4.3

-- //////////////////////////////////////////////////////////////////////////////////
-- 1
SELECT emp.employee_id AS 'Emp N°',
	   emp.last_name AS Empleado,
	   emp.job_id AS Puesto,
	   emp.hire_date AS 'Fecha de contratación'
FROM employees AS emp;

-- //////////////////////////////////////////////////////////////////////////////////
-- 2
SELECT CONCAT(emp.last_name,',',emp.job_id) AS 'Empleado y Puesto'
FROM employees AS emp;

-- //////////////////////////////////////////////////////////////////////////////////
-- 3
SELECT CONCAT(emp.employee_id,',',
			  emp.first_name,',',
			  emp.last_name,',',
			  emp.email,',',
			  emp.phone_number,',',
			  emp.hire_date,',',
			  emp.job_id,',',
			  emp.salary,',',
			  emp.commission_pct,',',
			  emp.manager_id,',',
			  emp.department_id) AS 'Los empleados'
FROM employees AS emp;