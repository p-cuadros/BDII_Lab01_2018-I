----------- SOLUCION 4.9
-- 1
-- la sentencia "deberá mostrar los Apellidos y Fecha de Contratación de todos los empleados del mismo departamento" es ambiguo
-- suponiendo que existan 2 empleados con el mismo apellido pero de diferente departamento ¿que departamento prevalece?
-- para el desarrollo se cambio apellido por id del empleado

DECLARE @depid INT;
DECLARE @empid INT;

-- leyendo id de empleado
SET @empid = 110
-- obteniendo id de departamento de empleado
SET @depid = (SELECT emp.department_id
			  FROM employees as emp
			  WHERE emp.employee_id=@empid);
-- todos los empleados del mismo departamento excluyendo al empleado ingresado anteriormente
SELECT emp.employee_id,
	   emp.last_name,
	   emp.hire_date,
	   emp.department_id
FROM employees AS emp
WHERE emp.department_id=@depid
AND emp.employee_id!=@empid;

--/////////////////////////////////////////////////////////////////////////////////////////////
-- 2
-- Se considera "N° de empleado" como "id de empleado"
-- Obteniendo promedio de salario
DECLARE @prom DECIMAL(8,2); --Variable promedio
SET @prom = (SELECT AVG(salary) FROM employees);

-- Todos los empleados con sueldo superior al promedio
SELECT emp.employee_id,
       emp.last_name,
	   emp.salary
FROM employees AS emp
WHERE emp.salary>@prom;

--/////////////////////////////////////////////////////////////////////////////////////////////
-- 3
-- Se considera "N° de empleado" como "id de empleado"
-- Obtener los id de departamentos de los empleados que contengan "u" en su apellido
SELECT DISTINCT department_id
			FROM employees
			WHERE last_name LIKE '%u%';
-- Obtener todos los empleados que laboren en alguno de los departamentos hallados anteriormente
SELECT emp.employee_id,
	   emp.last_name,
	   emp.department_id
	   FROM employees AS emp
	JOIN (SELECT DISTINCT department_id
		  FROM employees
		  WHERE last_name LIKE '%u%') AS depid
	ON emp.department_id=depid.department_id;

--/////////////////////////////////////////////////////////////////////////////////////////////
-- 4
SELECT emp.last_name,
	   emp.department_id,
	   dep.location_id
	   FROM employees as emp
JOIN departments as dep
	ON emp.department_id=dep.department_id
	WHERE dep.location_id=1700;

--/////////////////////////////////////////////////////////////////////////////////////////////
-- 5
DECLARE @locid INT;
SET @locid = 1700;
SELECT emp.last_name,
	   emp.department_id,
	   dep.location_id
	   FROM employees as emp
JOIN departments as dep
	ON emp.department_id=dep.department_id
	WHERE dep.location_id=@locid;

--/////////////////////////////////////////////////////////////////////////////////////////////
-- 6
-- conseguir id de empleado que lleven como apellido KING
SELECT employee_id,
	   last_name
	   FROM employees
	   WHERE last_name='KING';
-- conseguir id de departamentos que coincidan en manager_id con employee_id
SELECT dep.department_id
		FROM departments AS dep
JOIN (SELECT employee_id,
			last_name
			FROM employees
			WHERE last_name='KING') AS manking
ON dep.manager_id=manking.employee_id

-- FINALMENTE, apellidos y salarios de empleados que tengan como id de departamento el/los id de departamentos hallados anteriormente
SELECT emp.last_name,
	   emp.salary
	   FROM employees AS emp
JOIN (SELECT dep.department_id
			 FROM departments AS dep
	  JOIN (SELECT employee_id,
			       last_name
				   FROM employees
				   WHERE last_name='KING') AS manking
	  ON dep.manager_id=manking.employee_id) AS depking
ON emp.department_id=depking.department_id;

--/////////////////////////////////////////////////////////////////////////////////////////////
-- 7
select * from employees where department_id=90;
select * from jobs;
select * from departments where department_name='executive';

-- consiguiendo empleados con nombre de puesto
SELECT emp.department_id,
       emp.last_name,
	   jobs.job_title
	   FROM employees AS emp
JOIN jobs
ON emp.job_id=jobs.job_id;

-- FINALMENTE, empleados con departamento Executive
SELECT empnomjob.department_id,
	   empnomjob.last_name,
	   empnomjob.job_title
	   FROM departments
JOIN (SELECT emp.department_id,
			 emp.last_name,
			 jobs.job_title
			 FROM employees AS emp
	  JOIN jobs
	  ON emp.job_id=jobs.job_id) AS empnomjob
ON empnomjob.department_id=departments.department_id
WHERE department_name='executive'
