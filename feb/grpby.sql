select * from employee_tbl

--Write an SQL query to fetch the project-wise count of
--employees sorted by employees’s count in descending order.

select projectid, projectname, count(*) from employee_tbl
group by projectid, projectname
order by count(*) desc

--Write an SQL query to fetch duplicate records from EmployeeDetails 
--(without considering the primary key – EmpId).

select * from employeedetails

select empname,department,salary,count(*)as duplicate  from employeedetails
group by empname,department,salary
having count(*) >1
 
--Write a query to find the total sales amount for each product in each region.

select * from salesdata

select productid,regionid,sum(saleamount) as total_sales
from salesdata
group by regionid,productid
order by productid, regionid


--4. Write a query to find students who have scored an ‘A’ in more than three courses.

select * from studentgrades

select studentid,grade from studentgrades
where grade = 'A'
group by studentid,grade
having count(*) >3 

--Write a query to find the most ordered menu item.

select * from foodorders

select menuitemid,sum(quantity) as total  from foodorders
group by menuitemid
order by total desc
limit 1

