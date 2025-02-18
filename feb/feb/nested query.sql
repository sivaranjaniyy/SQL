 
select * from employee

--nested queries

--Layoff list

--Top 3 salaries employee from the department has max salary

select department,max(salary) as salary from employee 
group by department 
order by salary DESC
limit 1

select concat(first_name,' ',last_name) as name,salary from employee
where salary is not null and department =(
	select department from (
	select department,max(salary) as salary from employee 
	group by department 
	order by salary DESC
	limit 1 ) 
)
order by salary desc
limit 3



