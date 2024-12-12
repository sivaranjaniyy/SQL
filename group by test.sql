select * from employee
__1
select sum(salary)as total_salary_expenditure from employee
group by "gender"
 
__2
select department,avg(salary)as avg_salary from employee
group by department
order by avg_salary asc

__3
select department,min(salary)as min_salary from employee
where department is not null
group by department

__4
select avg (salary)as avg_salary,
min (salary)as min_salary
 
__5
select emp_no as total_employees from employee
group by department
order by total_employees desc

__6
select first_name, count(first_name) as duplicate_count
from employee
 
__7
select department, count(*) as total_employees from employee
group by department 
having count(*)>5

__8
select department,avg(salary) as avg_salary from employee
group by department
having avg(salary)<50000 

__9
 
__10
select department,max(salary) as max_salary from employee 
group by department
having max(salary)<60000

__11
select department,
max(salary)as highest_salary
min(salary)as lowest_salary

__12

__13
select department,avg(salary) as avg_salary from employee
group by department
having avg(salary) between 20000 and 50000

__14