select * from employees


--Write a query to get all the details of the employees whose emp_no is an even number the employee table. 

 select * from employees where emp_no %2 = 0
  
  
--Get all details of the employees whose emp_no is a perfect square from the employee table. 

select * from employees where sqrt(emp_no)=floor(sqrt(emp_no))

--Write an SQL query to find the average salary (rounded up to the nearest integer) for each department as
--“avg_salary” and display the department name along with the average salary.

select department,ceiling (avg(salary)) from employees 
group by department

--Write a SQL query to find new salary of the employee, calculated by subtracting 50,000 from their current salary
--as “new_salary” and return only positive values. Also fetch first name of the employee.

select first_name,salary-5000 as new_salary from employees
where salary-5000 >0
order by salary asc













