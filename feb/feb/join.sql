 
select * from vendors
select * from productss

--Write SQL query to retrieve the product ID, product name, and vendor name
--from the "Products" table and "Vendors" table, sorted in ascending order by
--product ID? 

select prod_id,prod_name,vend_name from productss
inner join vendors
on productss.vend_id = vendors.vend_id
order by prod_id asc

--Write SQL query to retrieve the product ID, product name, vendor name, and
--vendor country for products sold by vendors in the USA, sorted by product ID?

select prod_id,prod_name,vend_name,vend_country from productss
inner join vendors
on productss.vend_id = vendors.vend_id  
where vend_country='USA'
order by prod_id

--Write SQL query to retrieve the product ID, product name, vendor name, and
--product price from the "Products" table, joined with the "Vendors" table, where
--the product price is less than 5, and the results are sorted by the product ID?
--(Use Natural Join)

select prod_id,prod_name,vend_name,prod_price from productss
inner join vendors
on productss.vend_id=vendors.vend_id
where prod_price < 5
order by prod_id

--Write SQL query to retrieve the product ID, vendor ID, and vendor city for all
--products, sorted by the vendor ID? 

select prod_id,vend_id,vend_city from productss
inner join vendors
on productss.vend_id=vendors.vend_id
order by vend_id

--Write SQL query to retrieve vendor name and calculates the total amount of
--products sold by each vendor as “total_amount”. Sorts the results in ascending
--order based on the total amount?

select vend_name,sum(prod_price) as total_amount from productss
inner join vendors
on productss.vend_id=vendors.vend_id
group by vend_name
order by total_amount asc

--Write SQL query to retrieve vendor name and calculate total amount including
--5% GST for each vendor's products as “total_amount_GST_5”? Can you provide
--the result in ascending order based on the total amount?  

select vend_name,(sum(p.prod_price) + (sum(prod_price)*(0.05))) as total_amount_gst_5 from productss p
inner join vendors v
on p.vend_id=v.vend_id
group by vend_name
order by total_amount_gst_5

--Write SQL query to retrieve the product ID, vendor ID, product name, vendor
--name, and product price from the "Products" table, joined with the "vendors"
--table, where the vendor ID ends with '01' and the product price is greater than 4?


select prod_id,p.vend_id,prod_name,vend_name,prod_price from productss p
inner join vendors v
on p.vend_id=v.vend_id
where p.vend_id like '%01'or prod_price > 4