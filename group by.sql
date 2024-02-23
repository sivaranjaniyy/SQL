select * from cars

select origin, count(origin)from cars
group by origin

select car,count(car) as total from cars  
group by car having count(car) > 1
order by total desc limit 5

select students.id,name,course from students,course

select course from course