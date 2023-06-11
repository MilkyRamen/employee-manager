DROP DATABASE IF EXISTS company_db;

CREATE DATABASE company_db;
USE company_db;

CREATE TABLE departments (
    id INT NOT NULL,
    name VARCHAR(30) NOT NULL
);

CREATE TABLE roles (
    id INT NOT NULL,
    name VARCHAR(30) NOT NULL
);

CREATE TABLE employees (
    id INT NOT NULL,
    name VARCHAR(40) NOT NULL,
    active BOOLEAN NOT NULL
);