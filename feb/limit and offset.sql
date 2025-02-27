--Limit & OFFSET

--1) Return all rows from the "employee" table, but only show the
 --first 10 rows. 
 select * from employees limit 10
 
--2) Return the next 10 rows from the " employee " table (i.e. rows
--with emp_no 1011-1020)

select * from employees offset 10 limit 10
 
--3) Fetch emp_no, first name ,last name , joining date of 6
 --employees who recently joined the company 
 
select emp_no,first_name,last_name,joining_date from employees 
order by joining_date desc 
limit 6
 
--4) Retrieve all the details of the 2 youngest employees from the
 --“employee” table.
 
 select * from employees
 
select * from employees
order by birth_date desc
limit 2

  --5) Retrieve all the details of the 3 eldest male employees from
 --the “employee” table.
 
 select * from employees
 where gender ='M'
 order by birth_date ASC
 limit 3
 
 
-- 6) Retrieve emp_no, first name and salary of 3 highest paid
--employees from the “employee” table.


select emp_no,first_name,salary from employees
order by salary DESC
limit 3

--7) Retrieve all the details of 3 lowest paid employees who
-- belongs to IT department from the “employee” table. 

select * from employees 
where department='IT'
order by salary asc
limit 3


--8) Retrieve the details of the first three employees in the
--"employee" table whose first name starts with the letter "J",
-- sorted in alphabetical order by their first names

select * from employees
where first_name like 'J%' 
order by first_name asc 
limit 3
 

 
 
 
 
 
 
 