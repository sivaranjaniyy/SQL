 
select * from employee

select distinct salary from employee

select name,dob from employee

select id,name,(salary)*12 as annual_salary from employee
 

select salary,department from employee
group by salary,department

select id,name ||"name"("salary")||from employee as emp_detail

select id,concat(name,'(',salary,')' )as emp_detail from employee 

 


