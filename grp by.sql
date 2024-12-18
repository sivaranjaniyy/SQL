select * from employee
 
__1
select gender,sum(salary)as total_salary_expenditure from employee
group by gender

__2
select department,avg(salary)from employee
group by department
order by avg(salary)asc

__3
select department,min(salary)as min_salary from employee
where department is not NULL
group by department

__4
select department,avg(salary)as avg_salary, max(salary) as max_salary from employee
group by department

__5
select department,count(emp_no)as total_employees from employee
group by department
order by total_employees desc

__6
select first_name,count(first_name)as duplicate_count
from employee
group by first_name

__7
select department,count(*)as total_employees from employee
group by department
having count(*) >5

__8
select department,avg(salary)as avg_salary from employee
group by department
having avg(salary)>50000

__9
select department,count(*)as total_employees from employee
where salary >= 30000
group by department
having count(*)>3

__10
select department,max(salary)as max_salary from employee
group by department
having max(salary) > 60000

__11
select department,max(salary)as highest_salary,min(salary)as lowest_salary
from employee
group by department
having max(salary)>=2* min(salary)

__12
select department,count(*)as total_employees,sum(salary)as total_salary_expense
from employee
group by department
having count(*)>= 5 and sum(salary)>100000

__13
select department,avg(salary)as avg_salary from employee
group by department
having avg(salary) between 20000 and 50000

__14
select department,count(*)as total_employees,max(salary)-min(salary)as salary_difference
from employee
group by department
having count(*)>4 and max(salary)-min(salary)<25000  
