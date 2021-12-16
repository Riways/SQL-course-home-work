--1

select department_id, max(salary), min(salary), max(hire_date), min(hire_date), count(*) from employees
group by department_id
order by COUNT(*) desc;

--2

select substr(first_name, 1, 1), count(*) from employees
group by substr(first_name, 1, 1) having COUNT(*) > 1
order by count(*);

--3

select department_id, salary, count(*) from employees
group by department_id, salary having count(*) > 1;

--4

select to_char(hire_date, 'day'), count(*) from employees
group by to_char(hire_date, 'day');

--5

select department_id, count(*), sum(salary) from employees
group by department_id having count(*) >30 and sum(salary) > 300000 ;

--6

SELECT
    region_id FROM countries
    GROUP by region_id having sum(length(country_name)) > 50;
    
--7

select job_id, round(SUM(salary)) from employees
group by job_id ;

--8

select department_id,count(job_id) from employees 
GROUP BY department_id having count(DISTINCT job_id) > 1;

--9

SELECT
     department_id, job_id FROM employees
    group by department_id, job_id having avg(salary) > 10000;
    
--10

SELECT
    manager_id FROM employees
    where commission_pct is null
    GROUP BY manager_id having avg(salary) between 6000 and 9000;
    
--11
s
select  round(max(avg(salary)), -3)
from employees
group by department_id ;