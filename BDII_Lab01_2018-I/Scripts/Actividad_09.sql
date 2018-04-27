
-----1---------------------------------------------






------2----------------------------------------------
DECLARE @prom DECIMAL(8,2); 
SET @prom = (SELECT AVG(salary) FROM employees);

SELECT emp.employee_id,
       emp.last_name,
	   emp.salary
FROM employees AS emp
WHERE emp.salary>@prom;

------3----------------------------------------

SELECT DISTINCT department_id
			FROM employees
			WHERE last_name LIKE '%u%';

SELECT emp.employee_id,
	   emp.last_name,
	   emp.department_id
	   FROM employees AS emp
	JOIN (SELECT DISTINCT department_id
		  FROM employees
		  WHERE last_name LIKE '%u%') AS depid
	ON emp.department_id=depid.department_id;

------------4-----------------------------


SELECT emp.last_name,
	   emp.department_id,
	   dep.location_id
	   FROM employees as emp
JOIN departments as dep
	ON emp.department_id=dep.department_id
	WHERE dep.location_id=1700;

------5----------------------------------------

DECLARE @locid INT;
SET @locid = 1700;
SELECT emp.last_name,
	   emp.department_id,
	   dep.location_id
	   FROM employees as emp
JOIN departments as dep
	ON emp.department_id=dep.department_id
	WHERE dep.location_id=@locid;

----------6----------------------------------------------
select * from employees where department_id=90;
select * from jobs;
select * from departments where department_name='executive';


SELECT emp.department_id,
       emp.last_name,
	   jobs.job_title
	   FROM employees AS emp
JOIN jobs
ON emp.job_id=jobs.job_id;


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

	
