--1

create table friends 
as
(select employee_id id, first_name name, last_name surname
    from employees where commission_pct is not null);
    
--2

ALTER table friends
add(email VARCHAR2(25));

--3

alter table friends
MODIFY(email VARCHAR2(25) DEFAULT 'no email');

--4

insert into friends(id, name, surname)
values(180, 'Petya', 'Shareyko');

--5

alter table friends
rename COLUMN id to friends_id;

--6

drop table friends;

--7

create table friends(
id number,
name VARCHAR2(30),
surname varchar(30),
email varchar(30),
salary number default 1000,
city varchar(30),
birthday date default to_date('01 01 01', 'dd mm yy')) ;

--8

insert into friends
values(1, 'Petr', 'Shar', 'aaa@aaa', 123, 'New York', to_date('02 02 03','dd mm yy'));

--9

insert into friends(id, name, surname, email, city)
values (2, 'Oleg', 'Ivanov', 'bbb@bb', 'Old York');

--10

commit;

--11

alter table friends 
drop COLUMN salary;

--12

alter table friends 
set unused COLUMN email;

--13

alter table friends
set unused column birthday;

--14

alter table friends
drop UNUSED COLUMNS;

--15

alter table friends read ONLY;

--16

delete  from friends where id =1;

--17

truncate table friends;

--18

drop table friends;