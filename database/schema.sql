-- Schema creation goes here
--pseudo
  --multiple customers can live in one house
  --customer can have many products
  --each product can belong to only one customer
  --product belong to only one category
  --category can have many products
  --order information contain many product and category
DROP TABLE IF EXISTS addresses CASCADE;
DROP TABLE IF EXISTS customers CASCADE;
DROP TABLE IF EXISTS products CASCADE;
DROP TABLE IF EXISTS categories CASCADE;
DROP TABLE IF EXISTS order_informations CASCADE;

CREATE TABLE addresses(
  id        serial PRIMARY KEY,
  line_1    varchar(80) NOT NULL,
  city      varchar(50) NOT NULL,
  state     varchar(20) NOT NULL,
  zipcode   varchar(10) NOT NULL
);

CREATE TABLE customers (
  id  serial PRIMARY KEY,
  first_name varchar(60) NOT NULL,
  last_name varchar(60),
  email_address varchar(100) NOT NULL,
  address_id integer references addresses(id)
);

CREATE TABLE categories (
  id  serial PRIMARY KEY,
  name varchar(255) NOT NULL
);

CREATE TABLE products (
  id  serial PRIMARY KEY,
  name varchar(255) NOT NULL,
  price decimal NOT NULL,
  category_id integer references categories(id)
);

CREATE TABLE order_informations(
  id  serial PRIMARY KEY,
  date date NOT NULL,
  address_id integer references addresses(id),
  product_id integer references products(id)
);
