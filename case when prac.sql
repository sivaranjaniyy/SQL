--case when statement

select "origin",
CASE
    when "origin"='US'then 1
	when "origin"='JAPAN'then 2
	when "origin"='EUROPE'then 3
end as "originMap"
from cars
    
--replace function

select replace("origin",'US','USA')as origin from cars
