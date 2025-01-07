
CREATE TABLE sales_stores (

	store_id INT PRIMARY KEY,
	store_name	VARCHAR(255) NOT NULL ,
	phone	VARCHAR( 255),
	email 	VARCHAR(255),
	street	VARCHAR(255),
	city	VARCHAR (255),
	state	VARCHAR(25),
	zip_code VARCHAR(10)

);
	



CREATE TABLE sales_staffs ( 
	
	staff_id INT,
	first_name VARCHAR (100),
	last_name  VARCHAR (100),
	email	VARCHAR (255),
	phone	VARCHAR (255),
	active	BOOLEAN,
	store_id	INT,
	manager_id INT
);



CREATE TABLE sales_customers ( 

	customer_id INT,
	first_name VARCHAR(100),
	last_name  VARCHAR(100),
	phone	VARCHAR (255),
	email   VARCHAR (255),
	street 	VARCHAR(255),
	city	VARCHAR	(255),
	state 	VARCHAR (25),
	zip_code VARCHAR (10)

)
;


CREATE TABLE sales_orders ( 
	order_id      INT,
	customer_id	  INT, 
	order_status  INT,
	order_date 	  DATE, 
	required_date DATE, 	
	shipped_date  DATE,
	store_id  	  INT,
	staff_id 	  INT
)
;


CREATE TABLE sales_orders_items (

	order_id 	INT,	
	item_id		INT,	
	product_id	INT,
	quantity	INT,
	list_price	DECIMAL(10,2),
	discount 	DECIMAL(5,2)
);




CREATE TABLE production_stocks (

	store_id INT,
	product_id INT,
	quantity INT

);


CREATE TABLE production_products (

	product_id	INT,
	product_name VARCHAR(255),
	brand_id	INT,
	category_id INT,
	model_year	INT,
	list_price DECIMAL(10,2)

);


CREATE TABLE  production_categories (

	category_id INT,
	category_name VARCHAR (255)


);




CREATE TABLE production_brands (

	brand_id INT,
	brand_name VARCHAR(255)
	
)






