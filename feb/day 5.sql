select * from employee_s
 
 
--Write a query to display the first name and salary for all employees. 
--Format the salary to be 10 characters long by adding $ symbols at the beginning.
--Label the column as SALARY.
select first_name,salary,  LPAD(salary ::"text",10,'$') as sal from employee_s 
 


--Write a query to display the first name, last name for the employees, 
--which contain a letter 'C' to their last name at 3rd or greater position.

select first_name,last_name from employee_s

select first_name,last_name from employee_s where POSITION ('c' in last_name) >=3
  