--Write a query to extract the last four characters of  phone numbers.

select * from employees

select phone_number,right(phone_number,4) from employees

--Write a query to join the text '@example.com' with the email column.

select email,concat(email,'@example.com') from employees

--Write a query to update the phone_number column with '999' where the substring '124' found in that column.
 
update employees
set phone_number =999
where phone_number like '%124%'



 

 

 
 
 
 
 
 
 
 
 