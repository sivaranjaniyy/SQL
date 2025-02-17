 
select * from employees

select * from employees  where joining_date > '2022-3-20'

select emp_no,first_name,last_name,department from employees 
where department = 'Finance'

select emp_no,salary,department from employees 
where salary < '35000'

Select * from employees 
where birth_date >='1998-1-24'

select emp_no,first_name,department from employees
where department != 'IT'

select * from employees
where emp_no <= '1010'

select distinct first_name from employees
where gender = 'M'


select emp_no,first_name,salary +10000 as final_salary from employees
where salary<25000

select emp_no,concat(first_name, ' ', last_name)as full_name from employees
where emp_no >'1015'
