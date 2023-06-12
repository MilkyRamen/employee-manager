DROP DATABASE IF EXISTS company_db;

CREATE DATABASE company_db;
USE company_db;

CREATE TABLE department (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

CREATE TABLE roles (
    id INT NOT NULL,
    name VARCHAR(30) NOT NULL
);

CREATE TABLE employees (
    id INT NOT NULL,
    name VARCHAR(40) NOT NULL,
    department INT,
    role VARCHAR(30) NOT NULL,
    salary INT NOT NULL,
    active BOOLEAN NOT NULL,
    FOREIGN KEY (department)
    REFERENCES department(id)
);