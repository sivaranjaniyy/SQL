--Contraints


create table employee(
id numeric primary key,
name text not null,
age numeric check(age > 18),
city text default'Cuddalore'
	)
	
insert into employee VALUES 
(1,'kumar',20,'cuddalore')

select * from employee

insert into employee VALUES
(2,'abi',17,'Paris')
	
create table users(
id numeric primary key,
email text unique)