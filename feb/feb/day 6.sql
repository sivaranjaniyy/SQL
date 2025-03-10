 
--Write down the query to fetch EmployeeName & Project who has assign more than one project.


select * from employeedetail
select * from projectDetail

select employeedetailid from projectDetail 
group by employeedetailid
having count(*) > 1

select firstname, projectname from employeedetail
join projectdetail
on employeedetail.employeeid = projectDetail.employeedetailid
where employeeid in (select employeedetailid from projectDetail 
group by employeedetailid
having count(*) > 1)

--Write a query to find out the employeename who has not assigned any project, 
--and display "-No Project Assigned".

 
select firstname,COALESCE(projectname,'No project Assigned') as Project from employeedetail
left join projectdetail
on employeedetail.employeeid=projectdetail.employeedetailid
where projectname is null
group by firstname,projectname
 

