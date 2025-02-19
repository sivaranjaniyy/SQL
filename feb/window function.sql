--window function

--over() window function

select * from payments

--Add total paid column 

select *,sum(paid) over() from payments

--partition by
--add the total payment column categorized by course

select *,sum(paid) over(partition by course) from payments

select *,sum(paid) over (partition by student) from payments

select *,sum(paid) over(partition by date) from payments

--order by

--get the running payments

select *,sum(paid)over(order by date) from payments

select *, avg(paid) over(order by date) from payments

--Rows frame

--Running payment by rows

select *,sum(paid) over(rows between unbounded preceding and current row) from payments

select *, sum(paid) over (rows between 2 preceding and current row) from payments

--Logical Running total

 select *, sum(paid) over(order by date) from payments

select *,sum(paid) over(rows between unbounded preceding and current row) from payments

select *, sum(paid) over (rows between interval '2 days' PRECEDING and current row) from payments

--First value

select * from employee
 
--get the highest salaried person on each department

select *, first_value(salary) over(partition by department order by salary desc) from employee

select *, first_value(salary) over(partition by department order by salary desc)
from (SELECT * FROM EMPLOYEE where salary is not null)

with first_salary as(
	select *, first_value(salary) over(partition by department order by salary desc)
	from (SELECT * FROM EMPLOYEE where salary is not null)
   ) select concat(first_name,' ', last_name) as emp_name,salary,department from first_salary
   where salary=first_value
   
 --Get the lowest salaried person on each department
 
 select *, last_value(salary) over(partition by department order by salary desc rows between unbounded 
preceding and unbounded following) from employee
 
 with last_salary as(
 	select *, last_value(salary) over(partition by department order by salary desc rows between unbounded 
	preceding and unbounded following) from employee
 )select concat(first_name,' ',last_name),salary,department from last_salary
 where salary=last_value
 
 
--Get the nth highest salaried person on each department
select *,nth_value (salary,3) over(partition by department order by salary desc) from employee

with nth_salary as(
    select *,nth_value (salary,3) over(partition by department order by salary desc) as nthvalue
	from employee
) select concat(first_name,' ',last_name) ,salary,department from nth_salary
where salary=nthvalue


   


























 



