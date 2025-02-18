select * from payments

select * from students

select * from courses

--Subquery

--1. Where statement

-- Get the course name which has maximum fee

select max("Fee") from courses

select "NAME" from courses
where "Fee" = 18000

select "NAME" from courses
where "Fee" = (select max("Fee") from courses)

-- 2. Select Statements

-- Get each course name and their totally collected fee

select sum(paid) from payments
where course = '22C01'

select c."NAME",(
select sum(paid) from payments p
where p.course = c."ID")
from courses c

-- 3. From Statement

select course, sum(paid) from payments
group by course

select c."NAME" , p.total
from courses c, 
(select Course, sum(paid) as total from payments
group by course) p
where c."ID" = p.course