/*01*/
select last_name,salary from employees where salary > 12000;
GO
/*02*/
select last_name,department_id from employees where employee_id > 176;
GO
/*03*/
select last_name,job_id,salary as Sal from employees where salary > 5000 and salary < 12000;
GO
/*04*/
select last_name,job_id,hire_date from employees where last_name = 'Matos' or last_name = 'Taylor' order by hire_date asc;
GO
/*05*/
select last_name,department_id from employees where department_id = 20 or department_id = 50 order by last_name asc;
GO
/*06*/
select last_name 'Empleado',salary 'Salario Mensual' from employees where salary > 5000 and salary < 12000 and (department_id = 20 or department_id = 50);
GO
/*07*/
select last_name,hire_date from employees where hire_date between '19940101' and '19941231';
GO
/*08*/
select last_name,job_id from employees where manager_id is null;
GO
/*09*/
select last_name,salary,commission_pct from employees order by salary desc,commission_pct desc;
GO
/*10*/
declare @salario as decimal(9,2);
set @salario = 12000;
select last_name,salary from employees where salary > @salario;
go
/*11*/
declare @gerente as int;
set @gerente = 103;
select employee_id,last_name,salary,department_id from employees where manager_id = @gerente order by last_name;
set @gerente = 201;
select employee_id,last_name,salary,department_id from employees where manager_id = @gerente order by salary;
set @gerente = 124;
select employee_id,last_name,salary,department_id from employees where manager_id = @gerente order by employee_id;
go
/*12*/
select last_name from employees where SUBSTRING(last_name,3,1) = 'a';
go
/*13*/
select last_name from employees where SUBSTRING(last_name,3,1) = 'a' or SUBSTRING(last_name,3,1) = 'e';
go
/*14*/
select last_name,job_id,salary from employees where (job_id = 'SA_REP' or job_id = 'ST_CLERK') and (salary = 2500 or salary = 3500 or salary = 7000);
go
/*15*/
select last_name 'Empleado',salary 'Salario Mensual',commission_pct from employees where salary > 5000 and salary < 12000 and (department_id = 20 or department_id = 50) and commission_pct = 0.20;
go
