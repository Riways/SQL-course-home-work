--1

select manager_id, to_char(null) job_id, to_number(null)department_id, sum(salary) from employees
group by manager_id
union 
select to_number(null)manager_id, job_id, to_number(null)department_id, sum(salary)  from employees
group by job_id
union 
select to_number(null)manager_id, to_char(null)job_id, department_id, sum(salary)  from employees
group by department_id;

--2

select department_id from employees
where manager_id = 100

minus

select department_id from employees
where manager_id in (145, 201);

--3

select first_name , last_name , salary from employees
where first_name like '_a%'

intersect

select first_name,  last_name , salary from employees
where lower(last_name) like '%s%'

order by salary desc;

--4

SELECT
    location_id, postal_code, city FROM locations
    join countries using(country_id)
    where country_name = 'Italy'
    
    union
    
    SELECT
    location_id, postal_code, city FROM locations
    join countries using(country_id)
    where country_name = 'Germany'
    
    union
    
    SELECT
    location_id, postal_code, city FROM locations
    where postal_code  like '%9%';
    
--5

SELECT
    country_id ID, country_name COUNTRY, region_id REGION FROM countries 
    where length(country_name) > 8
    union
    select * from countries
    where region_id not in (2,3,4)
    
    order by COUNTRY desc;