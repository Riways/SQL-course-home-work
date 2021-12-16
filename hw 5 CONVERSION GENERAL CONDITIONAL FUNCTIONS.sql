--1 

select * from employees where lower(first_name) like '%b%';

select * from employees where instr(lower(first_name),'b') > 0;

--2

select * from employees where lower(first_name) like '%a%a%';

select * from employees where instr(lower(first_name),'a', 1, 2) > 0;

--3

select substr( department_name, 1, instr(department_name, ' ') -1) 
from departments where instr(department_name ,' ') > 0;

--4

select substr(first_name , 2 , length(first_name) -2 ) from employees;

--5

select * from employees where lower(job_id)  like '%\____%' escape '\'
and lower(job_id) not like  '%\_clerk' escape '\';

select * from employees where (length(job_id) - instr(job_id, ' ')) >5
and instr(job_id, '_CLERK') = 0;

--6

select * from employees where to_char(hire_date, 'dd') = 01;

--7

select * from employees where to_char(hire_date, 'yyyy') = 2008;

--8

select  to_char(sysdate + 1, '"Tomorrow is "Ddspth " day of  "month') 
from dual;


--9

select first_name, to_char(hire_date,'ddth" of "month, "yyyy') from employees;

--10

select * from employees where commission_pct >= 0.2;

--11

select sysdate now,
sysdate + 1/24/60/60 plus_second,
sysdate + 1/24/60 plus_minute,
sysdate + 1/24 plus_hour,
sysdate + 1plus_day,
add_months(sysdate, 1) plus_month,
add_months(sysdate, 12) plus_year
from dual;

--12

select first_name, salary, salary + to_number('$12,345.55', '$99,999.99') new_salary from employees;

--13

SELECT 
 first_name, MONTHS_BETWEEN( to_date(' 18:45:00 сен 18 2009',  ' HH24:MI:SS MON DD YYYY'), hire_date)
 
 
     FROM employees;

--14

SELECT
    first_name, salary, to_char(salary *(1 + commission_pct), '$999,999.00') FROM employees where commission_pct > 0;

--15

SELECT
    first_name, last_name,
    decode(length(first_name),length(last_name), 'Same length', 'Different length')
    FROM employees;

--16

SELECT
    first_name, commission_pct, 
    NVL2(commission_pct, 'Yes', 'No') "Info"
     FROM employees;

--17

SELECT
    first_name, nvl (commission_pct, nvl(manager_id, salary))
    FROM employees;

--18

SELECT
first_name, salary, 
case 
    when salary < 5000 then 'Low level' 
    when 10000>= salary and salary >= 5000 then 'Normal Level'
    when salary>= 10000 then 'Hight level'
    
end "Info"
     FROM employees;

--19

SELECT
country_name, decode(region_id, 1 ,'Europe', 2 , 'America', 3 , 'Asia', 4, ' Africa')
     FROM countries;

--20

SELECT
    country_name, case
    when region_id = 1 then 'Europe'
    when region_id = 2 then 'America'
    when region_id = 3 then 'Asia'
    when region_id = 4 then 'Africa'
    end
    FROM countries;

--21

SELECT
    first_name, salary,
    case
    when  salary < 10000 and commission_pct IS NULL  then 'BAD'
    when salary >= 10000 and salary < 15000 and commission_pct IS not null then 'NORMAL'
    when salary >=15000  then 'GOOD'
    end
    FROM employees;