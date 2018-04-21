
/*RONALD EDUARDO ORDOÑEZ QUILLI*/

/*1.*/

select department_id from departments
minus;

select department_id from employees
where job_id ='ST_CLERK';



/*2.*/
select country_id, country_name from countries
minus


/*3.*/
select distinct job_id, department_id from employees
where (department_id=10) 
union
select distinct job_id, department_id from employees
where (department_id=50)
union
select distinct job_id, department_id from employees
where  (department_id=20);

/*4.*/
select employee_id, job_id from employees
intersect
select distinct employee_id, job_id from job_history;


/*5.*/
select last_name, department_id, null from employees union select null, department_id, department_name from departments;


