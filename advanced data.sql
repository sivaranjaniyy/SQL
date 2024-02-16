select *from cars;

select car from cars where cylinders=8 and mpg=17 

select car from cars where cylinders=8 and mpg=17 or mpg=15

select car from cars where mpg in(15,16,17)

select car from cars where not mpg=17

select car from cars where car like 'ford%'