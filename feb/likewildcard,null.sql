select * from employees

select first_name from employees
where first_name like '%y'

select * from employees
where extract(month from birth_date) = '04'
--OR
SELECT * FROM EMPLOYEES
WHERE TO_CHAR(BIRTH_DATE,'YYY-MM-DD') LIKE '%-04-%'

select emp_no,first_name,department from employees
where department not like '%ing'

select * from employees where last_name like 'w%' and emp_no > 1015

select first_name,last_name from employees where first_name like'J___%'

select * from employees where last_name like '%ill' and salary between 30000 and 50000
   
select emp_no,first_name,last_name from employees where first_name like 'S%' and last_name like '%l%'

--Select all employees whose joining date is either June 2022 or June
--2021 and emp_no is not between 1011 and 1020. 

select * from employees
where (to_char(joining_date,'yyy-mm-dd') like '%2022-06%'  or joining_date::text like '%2021-06%')
and (emp_no not between 1011 and 1022)
 
 
 --NULL
 
--Display all the details of the employees whose emp_no is more than 1020
--and salary is not available.

select * from employees where emp_no >1020 and salary isnull  

select * from employees where last_name isnull
 
select emp_no,first_name,salary,department from employees where department is not null


--Get emp_no, first_name , salary and the annual salary of the employees as
--column name “annual salary”. If salary is not available, then display “NA” 
--in result set. 

select emp_no,first_name, salary, COALESCE((salary*12) :: text, 'NA') as "annual salary" from employees


--Write a query to retrieve those employees who is Female and who doesn’t
--belong to any department

select * FROM EMPLOYEES where gender = 'F' and department is null


















