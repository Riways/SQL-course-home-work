--1

SELECT
    *
FROM
    employees
WHERE
    length(first_name) = (
        SELECT
            MAX(length(first_name))
        FROM
            employees
    );

-- 2

SELECT
    *
FROM
    employees
WHERE
    salary > (
        SELECT
            AVG(salary)
        FROM
            employees
    );

--3

SELECT
    city
FROM
         employees
    JOIN departments USING ( department_id )
    JOIN locations USING ( location_id )
GROUP BY
    city
HAVING
    SUM(salary) = (
        SELECT
            MIN(SUM(salary))
        FROM
                 employees
            JOIN departments USING ( department_id )
            JOIN locations USING ( location_id )
        GROUP BY
            city
    );

--4

SELECT
    emps.first_name,
    emps.manager_id,
    managers.employee_id,
    managers.salary
FROM
         employees emps
    JOIN employees managers ON ( emps.manager_id = managers.employee_id )
WHERE
    managers.salary > 15000;

--5

SELECT
    *
FROM
    departments
WHERE
    department_id NOT IN (
        SELECT
            department_id
        FROM
            employees
        WHERE
            department_id IS NOT NULL
    );

--6

SELECT
    *
FROM
    employees
WHERE
    employee_id NOT IN (
        SELECT DISTINCT
            manager_id
        FROM
            employees
        WHERE
            manager_id IS NOT NULL
    );
    
--7

SELECT
    *
FROM
    employees
WHERE
    employee_id IN (
        SELECT
            manager_id
        FROM
            employees
        GROUP BY
            manager_id
        HAVING
            COUNT(*) >= 6
    );

--8

SELECT
    *
FROM
         employees
    JOIN departments USING ( department_id )
WHERE
    department_name = 'IT';
    
--9

SELECT
    *
FROM
    employees
WHERE
    employee_id IN (
        SELECT
            employee_id
        FROM
            employees
        WHERE
            hire_date < TO_DATE('2005-01-01', 'YYYY-MM-DD')
    )
    AND manager_id IN (
        SELECT
            employee_id
        FROM
            employees
        WHERE
            employee_id IN (
                SELECT
                    manager_id
                FROM
                    employees
            )
            AND hire_date BETWEEN TO_DATE('2005-01-01', 'YYYY-MM-DD') AND TO_DATE('2006-01-01', 'YYYY-MM-DD')
    );

--10

select * from employees
join jobs using(job_id)
where to_char(hire_date, 'mm') = 01 and length(job_title) > 15;