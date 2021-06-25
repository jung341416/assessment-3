-- Seed data goes here
INSERT INTO addresses (line_1, city, state, zipcode) VALUES ('6232 Guiseppe Courts', 'Jamartown', 'Maryland', '49028');
INSERT INTO addresses (line_1, city, state, zipcode) VALUES ('704 Cecil Mountain', 'West Jon', 'South Dakota', '91578');
INSERT INTO addresses (line_1, city, state, zipcode) VALUES ('41613 Huel Ranch', 'Loycefort', 'Florida', '12109');
INSERT INTO addresses (line_1, city, state, zipcode) VALUES ('1397 Braden Shoals', 'New Karine', 'New York', '04413');
INSERT INTO addresses (line_1, city, state, zipcode) VALUES ('1397 Chase Lane', 'Baltimore', 'Maryland', '02343');
INSERT INTO addresses (line_1, city, state, zipcode) VALUES ('342 Cedar St', 'Chicago', 'Illinois', '03913');
INSERT INTO addresses (line_1, city, state, zipcode) VALUES ('1122 Waterloo Rd', 'Los Angeles', 'California', '12913');




--------------------------------------------------------------------------------


INSERT INTO customers (first_name, last_name, email_address, address_id) VALUES ('Tianna', 'Lowe', 'TL@gmail.com',2);
INSERT INTO customers (first_name, last_name, email_address, address_id) VALUES ('Elda', 'Sipes','ES@hotmail.com',1);
INSERT INTO customers (first_name, last_name, email_address, address_id) VALUES ('Jed', 'Kunde', 'JK@gmail.com',1);
INSERT INTO customers (first_name, last_name, email_address, address_id) VALUES ('Leopold', 'Town', 'leo2@gmail.com',3);
INSERT INTO customers (first_name, last_name, email_address, address_id) VALUES ('Andre', 'Rohan', 'andre_ro@gmail.com', 4);
INSERT INTO customers (first_name, last_name, email_address, address_id) VALUES ('BUGS', 'BUNNY', 'BUGG_Bunny@hotmail.com',5);
INSERT INTO customers (first_name, last_name, email_address, address_id) VALUES ('Jung', 'Park', 'JP@gmail.com',7);
--------------------------------------------------------------------------------

INSERT INTO categories (id, name) VALUES (1, 'Kitchen');
INSERT INTO categories (id, name) VALUES (2, 'Electronics');
INSERT INTO categories (id, name) VALUES (3, 'Video Games');
INSERT INTO categories (id, name) VALUES (4, 'Pet Supplies');
INSERT INTO categories (id, name) VALUES (5, 'Books');
--------------------------------------------------------------------------------

INSERT INTO products (name, price, category_id) VALUES ('DIABLO 3', 59.23, 3);
INSERT INTO products (name, price, category_id) VALUES ('STARCRAFT 3', 49.99, 3);
INSERT INTO products (name, price, category_id) VALUES ('WITCHER 3', 29.99, 3);
INSERT INTO products (name, price, category_id) VALUES ('Royal Canine Kibble', 80.15, 4);
INSERT INTO products (name, price, category_id) VALUES ('DOG LOVE TOY', 12.15, 4);
INSERT INTO products (name, price, category_id) VALUES ('NARUTO', 7.99, 5);
INSERT INTO products (name, price, category_id) VALUES ('DRAGONBALL Z', 6.99, 5);
INSERT INTO products (name, price, category_id) VALUES ('EARBUD', 15.99, 2);
INSERT INTO products (name, price, category_id) VALUES ('KEYBOARD', 10.99, 2);
INSERT INTO products (name, price, category_id) VALUES ('AIRFRYER', 99.99, 1);
INSERT INTO products (name, price, category_id) VALUES ('KNIFE', 9.99, 1);

--------------------------------------------------------------------------------

INSERT INTO order_informations (date, address_id, product_id) VALUES ('2020-01-02', 1, 3);
INSERT INTO order_informations (date, address_id, product_id) VALUES ('2019-05-07', 5, 2);
INSERT INTO order_informations (date, address_id, product_id) VALUES ('2020-08-07', 3, 1);
INSERT INTO order_informations (date, address_id, product_id) VALUES ('2007-02-20', 2, 4);
INSERT INTO order_informations (date, address_id, product_id) VALUES ('2020-09-08', 4, 7);
INSERT INTO order_informations (date, address_id, product_id) VALUES ('2021-02-04', 6, 10);
INSERT INTO order_informations (date, address_id, product_id) VALUES ('2020-02-08', 7, 9);
INSERT INTO order_informations (date, address_id, product_id) VALUES ('2020-01-28', 6, 9);
INSERT INTO order_informations (date, address_id, product_id) VALUES ('2002-03-01', 6, 8);
INSERT INTO order_informations (date, address_id, product_id) VALUES ('2016-05-18', 7, 11);