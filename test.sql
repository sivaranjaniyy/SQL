select * from students;

select "id","name","age" from students;

select "name" from students order by "name";

select "age" from students order by "age" desc;

select "name","age" from students
where "age">20;

select "name","city" from students 
where "city"='Chidambaran';

select "name" from students
where "name" like 'S%';

select "name" from students
where "name" like '%n';

select "name" from students
where "name" like '%a%';

select avg ("age")from students;

select min ("age"),max("age") from students;

select upper("name") from students;

select "name","joining" from students
where "joining" = '2022-07-03';

select length("name")=7 from students;

select "name","completed" from students
where extract(year,month from "completed")='february 2022';

select "name"||'  : '|| "city" from students ;

select count(*)from students;

select "name","city" from students
where "city"='Chidambaran'or "city"= 'pondicherry';

select distinct("city") from students

 