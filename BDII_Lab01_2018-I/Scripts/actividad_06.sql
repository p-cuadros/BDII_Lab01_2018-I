----- SCRIPT DE EJERCICIOS DE LAB_1 ---------------
---------------------------------------------------
--RENZO MORENO--

-- ACTIVIDAD06--

--1
select 'Sueldos Soñados'=(last_name + ' gana ' + Cast(salary as varchar(18)) + ' pero quisiera ' + Cast((salary * 3) as varchar(18))) 
from dbo.employees

--2
select last_name, hire_date as Revision from employees 
where hire_date between '2003-06-17' and '2005-09-21' ;


select last_name, hire_date  from employees 
where  hire_date LIKE ('200%-06-*') ;


--3
select e.last_name, e.hire_date, DateName(WEEKDAY, jh.START_DATE)as 'Dia' 
from dbo.employees as e inner join dbo.job_history as jh on e.employee_id=jh.employee_id

--4
--muestras texto comision, si no tiene monto
select last_name as 'Apellidos', 'Comision'='Sin Comision' from dbo.employees where commission_pct <= 0 
UNION
--muestra comision y el calculo de dicha
select last_name as 'Apellidos', 'Comision'= Cast((salary * commission_pct) as varchar(20)) from dbo.employees where commission_pct > 0



--6
select e.last_name as 'Apellidos', j.job_title, case 
when j.job_id = 'AD_PRES' THEN 'A'
when j.job_id = 'ST_MAN' THEN 'B'
when j.job_id = 'IT_PROG' THEN 'C'
when j.job_id = 'SA_REP' THEN 'D'
when j.job_id = 'ST_CLERK' THEN 'E'
else '0' END as 'Grados' from dbo.employees as e inner join dbo.jobs as j on e.job_id=j.job_id
go