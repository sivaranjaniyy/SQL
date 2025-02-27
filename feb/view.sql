 select * from tb_customer_data
 select * from tb_order_details
 select * from tb_product_info
 
 create view order_summary
 as 
 select o.ord_id,o.date,c.cust_name,p.prod_name,
 (p.price*o.quantity)-(p.price*o.quantity)*(o.disc_percent::float/100)as cost
 from tb_customer_data c
 join tb_order_details o on o.cust_id=c.cust_id
 join tb_product_info p on p.prod_id=o.prod_id
 order by o.ord_id,c.cust_name
 
 select * from order_summary
 
 create role client
 login
 password 'client'
 
 grant select on order_summary to client
 
--how to change table or a column name
 
alter view order_summary rename to customer_order_summary

alter view customer_order_summary rename column ord_id to order_id

drop view customer_order_summary

--changing underlaying table structure does ot automatically change view structure

select * from product_info

create view expensive_product AS
select * from product_info where price >1000

select * from expensive_products

alter table product_info add column prod_config text

insert into product_info values
('p7','test','test',2000,null)

--update views
--ony view created over simple sql queries

--sql quqery should satisfy follwing rules:
-- should contain just one table or view
--should not contain distinct clause,or group by clause
--should not contains window functions and with clause

update expensive_products
set prod_name='Áirpods',brand='Apple'
where prod_id='P7'

 create view order_summary
 as 
 select o.ord_id,o.date,c.cust_name,p.prod_name,
 (p.price*o.quantity)-(p.price*o.quantity)*(o.disc_percent::float/100)as cost
 from tb_customer_data c
 join tb_order_details o on o.cust_id=c.cust_id
 join tb_product_info p on p.prod_id=o.prod_id
 order by o.ord_id,c.cust_name
 
 update order_summary
 set cust_name='Kumar'
 where ord_id= 1









































