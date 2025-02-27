 
select * from products

select * from sales


--syntax

create or replace procedure pr_name(p_name text,p_age numeric)
language plpgsql
as $$
DECLARE
	variable
begin 
	procedure body-logic
end;
$$

/* CREATING THE PROCEDURE*/
Create or replace  procedure buy_product()
language plpgsql
as $$
DECLARE
 	v_product_code TEXT;
	v_price NUMERIC;

begin
	select product_code,price
	into v_product_code,v_price
	from products
	where product_name='i Phone 13 Pro Max';
	
	insert into sales(order_date,product_code,quantity_ordered,sale_price)
	values(current_date,v_product_code,1,(v_price*1));
	
	update products
	set quantity_remaining=(quantity_remaining -1),
	quantity_sold=(quantity_sold +1)
	where product_code=v_product_code;
	
	raise notice 'Product sold!';

end;
$$;

call buy_product()








