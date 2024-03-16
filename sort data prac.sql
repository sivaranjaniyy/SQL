select * from cars order by "car"

select car from cars order by "cylinders"

select "car","cylinders","weight"
from cars order by 2,3

select "car","cylinders","weight"
from cars
order by "mpg" desc,3 asc
