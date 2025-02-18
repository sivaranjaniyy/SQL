select * from employee

select * from employees


--CTE
--How many employees are earning a salary higher than
--the company's average salary,categorized by gender?

with filtered as
	(with avg_salary as (
	select avg(salary) as average from employee )
	select e.* from employee e ,avg_salary a
	where e.salary > a.average)
select gender,count(gender) from filtered
group by gender




