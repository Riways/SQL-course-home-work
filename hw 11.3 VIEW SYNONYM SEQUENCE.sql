--1

create table emp1000 
as
select first_name, last_name, salary, department_id from employees;

--2

create view v1000
as
select first_name, last_name, salary, department_name, city from employees
join departments using (department_id)
join locations using(location_id) ;


--3

alter table emp1000
add(city varchar2(50));

--4

alter view emp_dep COMPILE;

--5

create synonym syn1000 for v1000;

--6

drop view v1000;

--7

drop SYNONYM syn1000;

--8

drop table emp1000;

--9

create sequence seq1000
increment by 4
start with 12
maxvalue 200
cycle;

--10

alter SEQUENCE seq1000
nomaxvalue
nocycle;

--11

insert into employees(employee_id, hire_date, job_id, email, last_name)
values(seq1000.nextval, to_date('02.01.2001', 'dd.mm.yyyy'), 'AD_PRES', 'aa@aa2','Olenin2');

--12

commit;