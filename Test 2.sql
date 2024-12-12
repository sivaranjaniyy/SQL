select * from studentss;

select * from courses;

select * from payments;

insert into studentss("id","name","age")
values(101,'John',24);

insert into courses("id","name","fee")
values('201','advanced python',1500);

insert into payments("transaction","student","paid","date")
values('301','101','750','2024-08-10');

delete from studentss
where "id"='101';

delete from courses
where "fee"< 500;

delete from payments
where date <'2024-01-01';

update studentss
set "name"= 'smith'
where "id"='101' ;

update courses
set "fee"=fee*10;

update payments
set "paid"= paid-'100'
where "date"<'2024-07-01';

SELECT AVG("fee")from courses;

select sum("paid")from payments;

select count("age")from studentss
where "age">'22';

select student, course, sum ("paid") from payments
group by "student", "course"
order by "student";

select area,avg("age")from studentss
group by "area";

select student, course, sum ("paid") from payments
group by "student", "course"
order by "student";

select * from studentss
where age > (select avg("age")from studentss)
order by age;

with cte as (
select student,sum("paid") as total_amount from payments
group by "student" order by total_amount) select * from cte where "total_amount" > 7000

select * from studentss
where age > (select avg("age")from studentss)
order by age;

with cte as(
select course,count("student")as students_count from payments
group by course)select * from cte where students_count > 10 ;

select "name" from courses
where "fee">(select avg ("fee") from courses);