--1

CREATE TABLE locations2 
AS (SELECT * FROM locations WHERE 1=2)

--2

insert into locations2 
(location_id, street_address, city, country_id)
( select location_id, street_address, city, country_id from locations
where country_id = 'IT');

--//

delete from locations2 where location_id in(1100, 1000);

--3

commit;

--4

insert into locations2
(location_id, street_address, postal_code, city,  country_id)
values(3300, 'GrandPlace', 62000, 'Arras', 'FR');

insert into locations2
values(3400, 'Al du Zoo', 80000, 'Amiens', null, 'FR');

--5

commit;

--6
insert into locations2
(select * from locations where length(state_province) > 9);

--7

commit;

--8

CREATE TABLE locations4europe AS (SELECT * FROM locations WHERE 1=2);

--9

insert into locations2
select * from locations;

insert into locations4europe(location_id, street_address,city,country_id)
select location_id, street_address,city,country_id from locations
join countries using (country_id)
join regions using(region_id)
where lower(region_name) = 'europe';

--10

commit;

--11

update locations2
set postal_code = 1234 where postal_code is null;

--12

rollback;

--13

update locations2
set postal_code = (select postal_code from locations where location_id = 2600)
where postal_code is null;

--14

commit;

--15

delete from locations2 where country_id = 'IT';

--16

savepoint s1;

--17

UPDATE locations2 
set street_address = 'Sezam st. 18'
where location_id > 2500;

--18

SAVEPOINT s2;

--19

delete from locations2 
where street_address = 'Sezam st. 18';

--20

rollback to s1;

--21 

commit;

