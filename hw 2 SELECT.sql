select * from regions;


SELECT first_name, department_id, salary from employees; 

SELECT employee_id, email, hire_date - 7  "One_week_before_hiring_date" from employees;

SELECT employee_id|| '(' || job_id || ')' our_emplyees from employees;

SELECT DISTINCT first_name FROM employees;

SELECT job_title, 'min  =' || min_salary|| ', max =' || max_salary  AS info , max_salary max, max_salary*2-2000 new_salary
FROM jobs;

SELECT 'Peter''s dog is very clever'
     FROM dual;

SELECT q'< Peter's dog is very clever >'
     FROM dual;

SELECT 100*365.25*24*60 as minutes_in_year
    FROM dual;



