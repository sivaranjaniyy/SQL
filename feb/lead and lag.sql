--Lead and Lag Function

select * from employee

select department,sum(salary) from employee group by department

select *,sum(salary) over(partition by department) from employee

select *,
lead(salary) over(partition by department order by joining_date) as next_value,
lag(salary)over(partition by department order by joining_date) as previous_value
from employee

select *,
lead(salary,2,0)over win as next_value,
lag(salary,2,0) over win as previous_value
from employee
window win as (partition by department order by joining_date)

--NTile

--categorize the employee into 3 groups

select *, ntile(3) over(partition by department order by salary desc)
from employee

--Rank Function

--Row number
select *, row_number() over( partition by department order by salary desc) from employee

with cte as(
	select *, row_number() over( partition by department order by salary desc) as rn from employee
) select * from cte 
where rn = 1

--Rank

select *, rank() over(order by paid desc)
from payments

--Dense Rank

select *, dense_rank() over(partition by course order by paid desc) as rn from payments