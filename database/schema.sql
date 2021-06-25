-- Schema creation goes here
--pseudo
  --customer can have many products
  --each product can belong to only one customer
  --product belong to only one category
  --category can have many products
  --order information contain many product and category
DROP TABLE customers IF EXISTS CASCADE;
DROP TABLE products IF EXISTS CASCADE;
DROP TABLE categories IF EXISTS CASCADE;
DROP TABLE order_informations IF EXISTS CASCADE;

CREATE TABLE customers (
  id
);
customers
id
first_name
last_name
email_address

products
id
name
price
customer_id fk customers(id)

categories
id
name
product_id fk products(id)



order_informations
id
order_date
categories_id
product_id