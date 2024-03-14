SELECT * FROM CARS

select "cars","cylinders" FROM cars WHERE "cylinders"=6
UNION
select"cars","cylinders"from cars where "Origin" IN('japan','europe')
