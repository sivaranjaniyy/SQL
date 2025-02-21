--Set operations

 select * from product_jan
 
 select * from product_feb

select prod_name,quantity from product_jan
where quantity > 5 
union 
select prod_name,quantity from product_feb
where quantity > 5



select prod_name from product_jan
intersect
select prod_name from product_feb



select prod_name,price,quantity* price as total_sales from product_jan
intersect
select prod_name,price,quantity*price as total_sales from product_feb
order by total_sales



select prod_name,price from product_jan
where price < 30
except
select prod_name,price from product_feb
 


select * from product_jan
where price between 10 and 50
union
select * from product_feb
where price between 10 and 50



select 'january'as month ,sum(price*quantity) as total_sales from product_jan
union
select 'february' as month,sum(price*quantity) as total_sales from product_feb

order by total_sales
										   












