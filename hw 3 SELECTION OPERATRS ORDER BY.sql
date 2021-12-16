--1 

select * from employees 
where lower(first_name) = 'david';

--2

select * from employees 
where job_id = 'FI_ACCOUNT';

--3

select first_name, last_name, salary, department_id
from employees
where department_id = 50 and salary > 4000;

--4

select * from employees
where department_id in(20,30);

--5

select * from employees
where first_name like '_a%a';

--6

select * from employees 
where department_id in(50,80)
and commission_pct is not null
order by 4;

--7

select * from employees
where lower(first_name) like '%n%n%';

--8

SELECT * FROM employees
where length(first_name) > 4
order by department_id nulls last ;

--9

SELECT * FROM  employees
where (salary between 3000 and 7000)
and commission_pct is null 
and job_id in ( 'PU_CLERK', 
'ST_MAN', 'ST_CLERK');

--10

select * from employees
where first_name like '%/%%' escape '/';

--11

select job_id ,  first_name, salary from employees
where employee_id >=120 
and job_id != 'IT_PROG'
order by job_id desc, first_name;
