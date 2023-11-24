CREATE DATABASE lab_mysql;

USE lab_mysql;

DROP TABLE customers;
CREATE TABLE customers(
	id INT NOT NULL PRIMARY KEY,
	customer_id INT,
    customer_name VARCHAR(50) NOT NULL,
    phone_number VARCHAR(20) NOT NULL,
    email VARCHAR(20) DEFAULT 'john_doe@gmail.com',
    address VARCHAR(50),
    city VARCHAR(50),
    state_province VARCHAR(50),
    country VARCHAR(50),
    postal_code VARCHAR(20) NOT NULL
);
DROP TABLE customers;

CREATE TABLE cars(
	car_id INT PRIMARY KEY,
    VIN VARCHAR(50) NOT NULL,
    manufacturer VARCHAR(50) NOT NULL,
    model VARCHAR(50) NOT NULL,
    car_year INT NOT NULL,
    color VARCHAR(20)
);

DROP TABLE sales_persons;
CREATE TABLE sales_persons(
	id INT NOT NULL PRIMARY KEY,
	staff_id INT,
    staff_name VARCHAR(50) NOT NULL,
    store VARCHAR(50) NOT NULL
);

DROP TABLE invoices;
CREATE TABLE invoices(
	id INT NOT NULL PRIMARY KEY,
	invoice_number INT NOT NULL,
    invoice_date DATE NOT NULL,
    car INT NOT NULL,
    customer INT NOT NULL,
    sales_person INT NOT NULL,
    FOREIGN KEY (car) REFERENCES cars(car_id),
    FOREIGN KEY (customer) REFERENCES customers(id),
    FOREIGN KEY (sales_person) REFERENCES sales_persons(id)
);

