--1

SELECT
    region_name,
    COUNT(employee_id)
FROM
         regions
    JOIN countries USING ( region_id )
    JOIN locations USING ( country_id )
    JOIN departments USING ( location_id )
    JOIN employees USING ( department_id )
GROUP BY
    region_name;

--2

SELECT
    e.first_name,
    e.last_name,
    d.department_name,
    e.job_id,
    l.street_address,
    c.country_name,
    r.region_name
FROM
         employees e
    JOIN departments d USING ( department_id )
    JOIN locations   l USING ( location_id )
    JOIN countries   c USING ( country_id )
    JOIN regions     r USING ( region_id );
    
--3

SELECT
    m.first_name,
    COUNT(e.first_name)
FROM
         employees e
    JOIN employees m ON ( e.manager_id = m.employee_id )
GROUP BY
    m.first_name
HAVING
    COUNT(e.first_name) > 6;
    
--4

SELECT
    d.department_name,
    COUNT(e.employee_id)
FROM
         departments d
    JOIN employees e USING ( department_id )
GROUP BY
    d.department_name
HAVING
    COUNT(e.employee_id) > 30;

--5

SELECT
    d.department_name,
    COUNT(e.employee_id)
FROM
    departments d
    LEFT OUTER JOIN employees   e USING ( department_id )
GROUP BY
    d.department_name
HAVING
    COUNT(e.employee_id) = 0;
    
--6

SELECT
    e.*
FROM
         employees e
    JOIN employees m ON ( e.manager_id = m.employee_id )
WHERE
        e.hire_date > TO_DATE('2005-01-01', 'YYYY-MM-DD')
    AND m.hire_date < TO_DATE('2005-01-01', 'YYYY-MM-DD');

--7

SELECT
    country_name,
    region_name
FROM
         countries
    NATURAL JOIN regions;

--8

SELECT
    first_name,
    last_name,
    salary,
    j.min_salary
FROM
         employees e
    JOIN jobs j USING ( job_id )
WHERE
    e.salary < j.min_salary + 1000;
    
-- 9

SELECT DISTINCT
    first_name,
    last_name,
    country_name
FROM
    employees   e
    FULL OUTER JOIN departments d USING ( department_id )
    FULL OUTER JOIN locations   l USING ( location_id )
    FULL OUTER JOIN countries   c USING ( country_id );
    
-- 10

select first_name, last_name , country_name
from employees
CROSS join countries;



