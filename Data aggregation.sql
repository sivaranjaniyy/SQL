SELECT AVG("weight") AS avgweight FROM cars

SELECT max("weight")FROM cars

SELECT SUM("weight")from cars

SELECT "car","weight" FROM cars 
WHERE "weight"=(SELECT max("weight")FROM cars)