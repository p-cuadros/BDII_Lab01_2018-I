SELECT last_name, job_id, salary AS Sal
FROM employees
go

SELECT *
FROM jobs-- job_grades
go

SELECT employee_id, last_name
--sal x 12 ANNUAL SALARY
, salary * 12 "ANNUAL SALARY"
FROM employees
go
