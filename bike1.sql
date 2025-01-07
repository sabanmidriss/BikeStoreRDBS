

SELECT * FROM public.sales_orders
SELECT * FROM public.sales_orders_items
SELECT * FROM public.sales_customers
SELECT * FROM public.sales_staffs
SELECT * FROM public.sales_stores
SELECT * FROM public.production_stocks
SELECT * FROM public.production_products
SELECT * FROM public.production_brands
SELECT * FROM public.production_categories


--- Get the number of records

select count(*) from sales_orders;



-- Order Analysis 

-- FIND THE STORE WITH THE MOST SALE ITEMS


SELECT ps.store_id,pp.product_name, ps.quantity

from production_stocks ps

INNER JOIN production_products pp

on ps.product_id=pp.product_id

ORDER BY ps.quantity DESC;


--- FIND THE store with the most sold items

select ss.store_name, ss.city,ss.state, ps.product_id, ps.quantity

from sales_stores ss

INNER JOIN production_stocks  ps 

on ss.store_id=ps.store_id

ORDER BY  ps.quantity DESC

LIMIT 5;


--- Find the highest product sold. 

select pp.product_name,ps.quantity, count( pp.brand_id) as bd

from production_products pp

INNER JOIN production_stocks  ps 

on pp.product_id=ps.product_id

GROUP BY pp.product_name,ps.quantity

ORDER BY quantity DESC, bd DESC;


--- Find the expensive items  

select
	pp.product_name,
	pp.category_id, 
	oi.list_price

FROM production_products pp 

JOIN (		
		select 
			DISTINCT product_id,
			list_price
			
		from
			sales_orders_items
	
		WHERE 
			list_price>1500
			
		ORDER BY list_price DESC

) as oi ON pp.product_id = oi.product_id

ORDER BY 
	 oi.list_price DESC 

LIMIT 10;

