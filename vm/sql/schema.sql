CREATE DATABASE IF NOT EXISTS jam;
USE jam;

DROP TABLE IF EXISTS orders;
CREATE TABLE IF NOT EXISTS orders (
 order_id BIGINT(20) NOT NULL PRIMARY KEY AUTO_INCREMENT,
 customer_id BIGINT(20) NOT NULL,
 created_at TIMESTAMP NOT NULL,
 updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP()

);

DROP TABLE IF EXISTS order_items;
CREATE TABLE IF NOT EXISTS order_items (
 order_id BIGINT(20) NOT NULL,
 product_id BIGINT(20) NOT NULL,
 quantity INT(11) NOT NULL,
 INDEX idx_orders_products (order_id, product_id)
);


DROP TABLE IF EXISTS products;
CREATE TABLE IF NOT EXISTS products (
 product_id BIGINT(20) NOT NULL PRIMARY KEY AUTO_INCREMENT,
 product_name VARCHAR(128) NOT NULL,
 product_desc TEXT NOT NULL,
 product_attributes JSON DEFAULT NULL
);

DROP TABLE IF EXISTS customers;
CREATE TABLE IF NOT EXISTS customers (
 customer_id BIGINT(20) NOT NULL PRIMARY KEY AUTO_INCREMENT,
 first_name VARCHAR(32) NOT NULL,
 last_name VARCHAR(32) NOT NULL,
 email VARCHAR(64) NOT NULL
);