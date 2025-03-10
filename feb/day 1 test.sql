--1) Write SQL query to retrieve vendor name and calculates the total amount
--of products sold by each vendor as “total_amount”. 
--Sorts the results in ascending order based on the total amount?

select vend_name,sum(prod_price) as total_amount from productss
inner join vendors
on productss.vend_id=vendors.vend_id
group by vend_name
order by total_amount

select vend_name,sum(prod_price) as total_amount from productss
inner join vendors
on productss.vend_id=vendors.vend_id
group by vend_name

--2) Find vendors who supply more than one product.
SELECT v.vend_name, COUNT(p.prod_id) AS product_count
FROM vendors v
JOIN productss p ON v.vend_id = p.vend_id
GROUP BY v.vend_name
HAVING COUNT(p.prod_id) > 1;

select vend_id,count(DISTINCT prod_id) as total_product from productss
group by vend_id
having count(vend_id) >1

--3) Retrieve vendors and products but exclude vendors from France.
SELECT v.vend_name, p.prod_name
FROM vendors v
LEFT JOIN productss p ON v.vend_id = p.vend_id
WHERE v.vend_country != 'France';

select *from productss 
 inner join vendors
 on vendors.vend_id = productss.vend_id
 where vend_country != 'France'