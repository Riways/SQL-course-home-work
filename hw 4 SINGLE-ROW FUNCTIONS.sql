SELECT
    * FROM employees where length(first_name) > 10;
    
SELECT
    * FROM employees where mod(salary, 1000) = 0;
    
SELECT
        phone_number, SUBSTR(phone_number,0,3) FROM employees where phone_number LIKE '___.___.____';
        
SELECT
    * FROM employees where lower(first_name) like '%m' and length(first_name) > 5;
    
SELECT NEXT_DAY(Sysdate, 5) "NEXT DAY"
     FROM dual;
        
SELECT
    * from employees where months_between( sysdate , hire_date) > 150;
    
SELECT
   replace( phone_number, '.', '-') FROM employees;

SELECT
    upper(first_name)|| '      '|| email || '      '|| job_id FROM        employees ;
    
SELECT
    CONCAT(concat(first_name, ' '), salary) FROM employees;
    
SELECT
    hire_date, ROUND(hire_date, 'mm'), trunc (hire_date, 'yyyy') FROM employees;
    
SELECT
    RPAD(first_name, 10 , '$'), lpad(last_name, 15, '!') FROM employees;
    
SELECT
    first_name, instr(lower(first_name), 'a', instr(lower(first_name), 'a') + 1) " Second 'a' position" FROM employees where first_name like '%a%a%' ;
    
SELECT
    '!!!HELLO!! MY FRIEND!!!!!!' || ' HELLO !! MY FRIEND' FROM dual;
    
SELECT
    salary, salary*3.1415, round(salary*3.1415), salary*3.1415 - mod(salary*3.1415, 1000)  FROM employees;

SELECT
    hire_date, add_months(hire_date, 6), LAST_DAY(hire_date) FROM employees ;