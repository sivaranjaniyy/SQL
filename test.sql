select * from cars
group by car having count(car) > 1
order by total desc limit 5
