--1

create table address(
id number constraint ad_id_un unique,
country VARCHAR2(30),
city VARCHAR2(30));

--2

create table friends(
id number,
name varchar2(30),
email varchar2(30),
address_id number  REFERENCES address(id) on delete set null,
birthday date,
 check(length(name) > 3));
 
 --3
 
 create UNIQUE INDEX friends_id_index 
 ON friends (id);
 
 --4
 
 alter table friends 
 add constraint   fr_id_pk primary key(id);
 
 --5
 
 create index fr_email_in
 on friends(email);
 
 --6
 
 alter table friends
 modify(email not null);
 
 --7
 
 drop table friends;
 
 --8
 
 drop table address;