-- Crear base de datos

CREATE DATABASE db_Filmex;
USE db_Filmex;

-- Crear tablas

CREATE TABLE tbl_customers (
id_customers INT AUTO_INCREMENT PRIMARY KEY,
date_created TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
name VARCHAR(150) NOT NULL,
lastname VARCHAR(150) NOT NULL,
email VARCHAR(80) UNIQUE NULL,
telephone VARCHAR(10) NULL,
id_genders CHAR(1) NOT NULL, -- ES UNA FOREIGN KEY
birthdate DATE NOT NULL,
id_typeCustomers INT NOT NULL, -- ES UNA FOREIGN KEY
FOREIGN KEY (id_genders)
REFERENCES tbl_genders(id_genders),
FOREIGN KEY (id_typeCustomers)
REFERENCES tbl_typeCustomers(id_typeCustomers)
);

CREATE TABLE tbl_typeCustomers (
id_typeCustomers INT PRIMARY KEY,
name_type VARCHAR(20) NOT NULL,
description VARCHAR(60) NOT NULL,
id_promotions INT NULL -- ES UNA FOREIGN KEY
);

CREATE TABLE tbl_genders (
id_genders CHAR(1) PRIMARY KEY,
description VARCHAR(15) NOT NULL
);

CREATE TABLE tbl_tickets (
id_tickets INT AUTO_INCREMENT PRIMARY KEY,
registration_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
serial_number VARCHAR(20) UNIQUE NOT NULL
);

CREATE TABLE tbl_sales (
id_sales INT AUTO_INCREMENT PRIMARY KEY,
registration_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
id_customers INT NOT NULL, -- ES UNA FOREIGN KEY
id_places VARCHAR(5) NOT NULL, -- ES UNA FOREIGN KEY
id_employees INT NOT NULL, -- ES UNA FOREIGN KEY
status VARCHAR(15) NOT NULL,
CONSTRAINT fk_sales_customers
FOREIGN KEY (id_customers)
REFERENCES tbl_customers(id_customers),
CONSTRAINT fk_sales_places
FOREIGN KEY (id_places)
REFERENCES tbl_places(id_places),
CONSTRAINT fk_sales_employees
FOREIGN KEY (id_employees)
REFERENCES tbl_employees(id_employees)
);

CREATE TABLE tbl_detailTickets (
id_detailTickets INT AUTO_INCREMENT PRIMARY KEY,
id_seats INT NOT NULL, -- ES UNA FOREIGN KEY
id_sales INT NOT NULL, -- ES UNA FOREIGN KEY
id_tickets INT NOT NULL, -- ES UNA FOREIGN KEY
id_functions VARCHAR(6) NOT NULL, -- ES UNA FOREIGN KEY
id_prices VARCHAR(4) NOT NULL, -- ES UNA FOREIGN KEY
price_applied DECIMAL(10,2) NOT NULL,
id_promotions INT NULL, -- ES UNA FOREIGN KEY
CONSTRAINT fk_detailsTickets_seats
FOREIGN KEY (id_seats)
REFERENCES tbl_seats(id_seats),
CONSTRAINT fk_detailsTickets_sales
FOREIGN KEY (id_sales)
REFERENCES tbl_sales(id_sales),
CONSTRAINT fk_detailsTickets_tickets
FOREIGN KEY (id_tickets)
REFERENCES tbl_tickets(id_tickets),
CONSTRAINT fk_detailsTickets_functions
FOREIGN KEY (id_functions)
REFERENCES tbl_functions(id_functions),
CONSTRAINT fk_detailsTickets_prices
FOREIGN KEY (id_prices)
REFERENCES tbl_prices(id_prices),
CONSTRAINT fk_detailsTickets_promotions
FOREIGN KEY (id_promotions)
REFERENCES tbl_promotions(id_promotions)
);

CREATE TABLE tbl_payments (
id_payments VARCHAR(10) PRIMARY KEY,
date_payments TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
id_sales INT NOT NULL, -- ES UNA FOREIGN KEY
payment_method VARCHAR(22) NOT NULL,
value DECIMAL(10,2) NOT NULL,
CONSTRAINT fk_payments_sales
FOREIGN KEY (id_sales)
REFERENCES tbl_sales(id_sales)
);

CREATE TABLE tbl_prices (
id_prices VARCHAR(4) PRIMARY KEY,
description VARCHAR(15) NOT NULL,
price DECIMAL(10,2) NOT NULL
);

CREATE TABLE tbl_promotions (
id_promotions  INT AUTO_INCREMENT PRIMARY KEY,
description VARCHAR(100) NOT NULL,
discount DECIMAL(10,2) NOT NULL,
start_date DATE NOT NULL,
end_date DATE NOT NULL,
state BOOLEAN DEFAULT TRUE
);

CREATE TABLE tbl_functions (
id_functions VARCHAR(6) PRIMARY KEY,
date_functions DATE NOT NULL,
start_time TIME NOT NULL,
id_movies VARCHAR(5) NOT NULL, -- ES UNA FOREIGN KEY
id_rooms INT NOT NULL, -- ES UNA FOREIGN KEY
id_prices VARCHAR(4) NOT NULL, -- ES UNA FOREIGN KEY
id_promotions INT NULL, -- ES UNA FOREIGN KEY
CONSTRAINT fk_functios_movies
FOREIGN KEY (id_movies)
REFERENCES tbl_movies(id_movies),
CONSTRAINT fk_functios_rooms
FOREIGN KEY (id_rooms)
REFERENCES tbl_rooms(id_rooms),
CONSTRAINT fk_functios_prices
FOREIGN KEY (id_prices)
REFERENCES tbl_prices(id_prices),
CONSTRAINT fk_functios_promotions
FOREIGN KEY (id_promotions)
REFERENCES tbl_promotions(id_promotions)
);

CREATE TABLE tbl_rooms (
id_rooms INT AUTO_INCREMENT PRIMARY KEY,
capacity INT NOT NULL,
type_room VARCHAR(20) NOT NULL,
id_places VARCHAR(5) NOT NULL, -- ES UNA FOREIGN KEY
CONSTRAINT fk_places
FOREIGN KEY (id_places)
REFERENCES tbl_places(id_places)
);

CREATE TABLE tbl_seats (
id_seats INT AUTO_INCREMENT PRIMARY KEY,
id_rooms INT NOT NULL, -- ES UNA FOREIGN KEY
seat_number CHAR(4) NOT NULL,
CONSTRAINT fk_seats_rooms
FOREIGN KEY (id_rooms)
REFERENCES tbl_rooms(id_rooms)
);

CREATE TABLE tbl_employees (
id_employees INT AUTO_INCREMENT PRIMARY KEY,
registration_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
name VARCHAR(150) NOT NULL,
last_name VARCHAR(150) NOT NULL,
email VARCHAR(80) UNIQUE NOT NULL,
id_places VARCHAR(5) NOT NULL,-- ES UNA FOREIGN KEY
post VARCHAR(50) NOT NULL,
state BOOLEAN DEFAULT TRUE,
CONSTRAINT fk_employees_places
FOREIGN KEY (id_places)
REFERENCES tbl_places(id_places)
);

CREATE TABLE tbl_places (
id_places VARCHAR(5) PRIMARY KEY,
name_place VARCHAR(50) NOT NULL,
id_cities VARCHAR (6) NOT NULL, -- ES UNA FOREIGN KEY
address VARCHAR(150) NOT NULL,
FOREIGN KEY (id_cities) REFERENCES tbl_cities(id_cities)
);

CREATE TABLE tbl_cities (
id_cities VARCHAR(6) PRIMARY KEY,
name VARCHAR(20) NOT NULL
);

CREATE TABLE tbl_movies (
id_movies VARCHAR(5) PRIMARY KEY,
title VARCHAR(80) NOT NULL,
id_categories INT NOT NULL, -- ES UNA FOREIGN KEY
duration_minutes INT NOT NULL,
premiere_date DATE NOT NULL,
age_classification VARCHAR(3) NOT NULL
);

CREATE TABLE tbl_categories (
id_categories INT AUTO_INCREMENT PRIMARY KEY,
description VARCHAR(40) NOT NULL
);
 
-- Alterar atributos

ALTER TABLE tbl_typeCustomers
ADD CONSTRAINT fk_promotions
FOREIGN KEY (id_promotions)
REFERENCES tbl_promotions(id_promotions);

ALTER TABLE tbl_movies
ADD CONSTRAINT fk_categories
FOREIGN KEY (id_categories)
REFERENCES tbl_categories(id_categories);