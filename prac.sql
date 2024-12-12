select car from cars;

select "car"||' :  ' || "weight"
as"car  :  weight" from cars;

--case when statement

select car "origin",
CASE
    when "origin"='US' then 1
	when"origin"='Japan'then 2
	when"origin"='Europe'then 3
end as "originmap"
from cars;