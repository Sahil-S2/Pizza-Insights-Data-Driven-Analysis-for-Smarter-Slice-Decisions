CREATE DATABASE PIZZA_HUT;

USE PIZZA_HUT;

CREATE TABLE pizza_types (
    pizza_type_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255),
    category VARCHAR(255),
    ingredients TEXT
);

CREATE TABLE pizzas (
    pizza_id INT AUTO_INCREMENT PRIMARY KEY,
    pizza_type_id INT,
    size VARCHAR(50),
    price DECIMAL(10, 2),
    FOREIGN KEY (pizza_type_id) REFERENCES pizza_types(pizza_type_id)
);

CREATE TABLE orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    date DATE,
    time TIME
);

CREATE TABLE order_details (
    order_details_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT,
    pizza_id INT,
    quantity INT,
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (pizza_id) REFERENCES pizzas(pizza_id)
);
