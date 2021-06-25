-- Queries go here
  -- 1. Retrieve the first name, last name, and email address of all customers that have a Gmail email address.
  SELECT first_name, last_name, email_address 
    FROM customers
    WHERE email_address ilike '%gmail%';
  -- 2. Retrieve the address of the customers and the order IDs for all orders that were placed in 2020
  SELECT c.first_name, c.last_name ,ad.line_1, ad.city, ad.state, ad.zipcode, oi.date, oi.id
    FROM addresses AS ad
    JOIN order_informations as oi on  ad.id = oi.address_id
    JOIN customers AS c on ad.id = c.address_id;
    WHERE DATE_PART('year', oi.date::date) = '2020';
  -- 3. Retrieve all product details for products that are under the "Kitchen" category
  SELECT * 
    FROM products as p
    JOIN categories as ct on p.category_id = ct.id
    WHERE ct.name ilike 'kitchen';

  -- 4. Retrieve the product names and prices of all products ordered by the customer with first name "Bugs" and last name "Bunny"
  SELECT p.name, p.price, c.first_name, c.last_name
    FROM order_informations AS oi
    join products AS p on p.id = oi.product_id
    join addresses AS ad on ad.id = oi.address_id
    join customers AS c on c.address_id = ad.id
    where (c.first_name ilike 'Bugs') OR (c.last_name ilike 'Bunny');