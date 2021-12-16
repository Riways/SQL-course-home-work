--1

create table test200(
id integer,
name1 varchar2(30),
name2 varchar2(30),
address1 varchar2(30),
address2 varchar2(30));

--2 double ampersand substitution ( запоминает значение bukva2 на время сессии)

insert into test200(&&column_name1, &&column_name2, &&column_name3, &&column_name4)
values  ('&value1', '&value2', '&value3', '&value4' );

--3

SELECT
    * FROM test200
    where name1 = '&&val1' and name2 = '&val1'
    and address1 = '&&val2' and address2 = '&val2';

--4

undefine val1;
undefine val2;
