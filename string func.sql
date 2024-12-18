__1
select first_name from employee where length(first_name)>=8

__2
select * from employee where emp_no <= 1010

__3
select emp_no, upper(first_name)as first_name, upper (last_name)as last_name from employee

__4
select emp_no,extract (month from birth_date) as birth_month from employee
select emp_no,SUBSTRING(birth_date::text,6,2) from employee

__5
select emp_no,first_name,replace(birth_date::text,'2020','2023') from employee

__6
select first_name,last_name from employee 
where substring(last_name, length(last_name )-2,  3) = 'son'

select substring(last_name, length(last_name )-2,  3) from employee



select first_name,last_name from employee where last_name like '%son'

__7
select emp_no,Reverse (department) as reversed_deparment from employee

__8
select * from employee where length(first_name)>length(last_name)

__9
select emp_no,substring(salary::text,1,4) from employee

select last_name from employee
group by last_name
having count(*)>1



 
