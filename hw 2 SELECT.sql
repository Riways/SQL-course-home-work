--1

select * from regions;

--2

SELECT first_name, department_id, salary from employees; 

--3

SELECT employee_id, email, hire_date - 7  "One_week_before_hiring_date" from employees;

--4

SELECT employee_id|| '(' || job_id || ')' our_emplyees from employees;

--5

SELECT DISTINCT first_name FROM employees;

--6

SELECT job_title, 'min  =' || min_salary|| ', max =' || max_salary  AS info , max_salary max, max_salary*2-2000 new_salary
FROM jobs;

--7

SELECT 'Peter''s dog is very clever'
     FROM dual;

--8

SELECT q'< Peter's dog is very clever >'
     FROM dual;

--9

SELECT 100*365.25*24*60 as minutes_in_year
    FROM dual;



