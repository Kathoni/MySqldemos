CREATE DATABASE Salesdb;
USE SalesDB;

-- Customers Table
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(50),
    country VARCHAR(50)
);

-- Orders Table
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    amount DECIMAL(10,2),
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

-- Products Table
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    category VARCHAR(50),
    price DECIMAL(10,2)
);

-- Employees Table
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(50),
    salary INT
);

-- Contractors Table
CREATE TABLE contractors (
    contractor_id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(50),
    pay INT
);

-- Insert Customers
INSERT INTO customers VALUES
(1, 'Alice', 'USA'),
(2, 'Bob', 'Canada'),
(3, 'Charlie', 'UK'),
(4, 'Diana', 'USA'),
(5, 'Evan', 'Kenya');

-- Insert Products
INSERT INTO products VALUES
(101, 'Laptop', 'Electronics', 1000.00),
(102, 'Phone', 'Electronics', 600.00),
(103, 'Desk', 'Furniture', 200.00),
(104, 'Chair', 'Furniture', 150.00);

-- Insert Orders
INSERT INTO orders VALUES
(1001, 1, 101, 1000.00, '2026-03-01'),
(1002, 1, 102, 600.00, '2026-03-05'),
(1003, 2, 103, 200.00, '2026-03-02'),
(1004, 3, 104, 150.00, '2026-03-03'),
(1005, 4, 101, 1000.00, '2026-03-04'),
(1006, 5, 104, 150.00, '2026-03-06');

-- Insert Employees
INSERT INTO employees VALUES
(201, 'John', 'Sales', 60000),
(202, 'Jane', 'Marketing', 75000),
(203, 'Mike', 'IT', 90000);

-- Insert Contractors
INSERT INTO contractors VALUES
(301, 'Sarah', 'IT', 50000),
(302, 'Tom', 'Sales', 40000);



