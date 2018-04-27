----ZAVALA VENEGAS LUIS ANGEL


---EJERCICIO 1
select l.location_id , l.street_address , l.city , l.state_province , c.country_name 
from locations as l 
join countries as c
on l.country_id = c.country_id


---EJERCICIO 2
select e.last_name , d.department_id , d.department_name from employees as e 
left join departments as d 
on e.department_id = d.department_id order by d.department_name;

----EJERCICIO 3
select e.last_name , e.department_id, j.job_title, d.department_name , l.city 
from employees as e 
left join jobs as j 
on e.job_id = j.job_id
join departments as d
on e.department_id=d.department_id
join locations as l 
on d.location_id = l.location_id
where l.city='Toronto';

----EJERCICIO 4
SELECT e.employee_id 'ID_Empleado', e.last_name 'Empleado', 
m.employee_id 'ID_Manager', m.last_name 'Manager' 
FROM employees e 
join employees m 
ON (e.manager_id = m.employee_id)

----EJERCICIO 5
SELECT e.employee_id 'ID_Empleado', e.last_name 'Empleado', 
m.employee_id 'ID_Manager', m.last_name 'Manager' 
FROM employees e 
left outer join employees m
ON (e.manager_id = m.employee_id)


----EJERCICIO 6
select e.department_id 'DEPARTMENTO', e.last_name 'EMPLEADO', 
d.last_name 'COLEGA' 
from employees e 
join employees d 
on (e.department_id=d.department_id) and e.last_name!=d.last_name;




----Ejercicio 7
SELECT e.first_name, e.last_name, e.hire_date 
FROM employees e 
JOIN employees davies 
ON (davies.last_name = 'Davies') 
WHERE davies.hire_date < e.hire_date;


----Ejercicio 8
select e.last_name 'EMPLEADO', e.hire_date 'FECHA_CONTRATACION' , j.last_name 'ADMINISTRADOR', 
j.hire_date 'FECHA_CONTRATACION_ADMINISTRADOR'
from employees e 
join employees j 
on e.manager_id=j.employee_id 
and e.hire_date < j.hire_date 
order by e.hire_date;
