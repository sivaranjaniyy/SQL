 --Find the candidates best suited for an open Data Science job.
 --Find candidates who are proficient in Python, SQL, and Power BI.
 
 

 
 --Write a query to list the candidates who possess all of the required skills for the job. 
--Sort the output by candidate ID.
select * from applications

select candidate_id from applications
where skills in ('Python','SQL','Power BI')
group by candidate_id
having count(skills)=3
order by candidate_id

--Show the employee with the highest salary for each project.

select * from employees_tbl
select * from employeedetaill

with cte as(
select empname,salary,project,rank() over(partition by project order by salary desc) as rankk from employees_tbl
join employeedetaill
on employees_tbl.empid = employeedetaill.empid) select empname,salary,project from cte where rankk =1 

 




 
 
 
 




