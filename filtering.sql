select * from employees;
 
--1.
select salary from employees
order by salary DESC
limit 1 offset 4;

select DISTINCT (manager) from employees

select * from employees
where id = (select manager from employees)

select "first_name" from employees
where "first_name" like 'A%' or "first_name" like 'S%'

select * from employees
order by "id" asc LIMIT 1

select * from employees
order by "id" desc LIMIT 1

select "first_name" from employees
where "first_name" in ('Vinoth','Leo','Manan')

 
 


