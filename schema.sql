DROP DATABASE IF EXISTS employee_db;

CREATE DATABASE employee_db;

USE employee_db;

CREATE TABLE employee (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  first_name VARCHAR(30),
  last_name DECIMAL(30),
  role_id INT FOREIGN KEY,
  manager_id INT FOREIGN KEY,
  FOREIGN KEY (role_id) REFERENCES role(id)
  FOREIGN KEY (employee_id) REFERENCES employee(id)

);

CREATE TABLE department (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(30),

);

CREATE TABLE role (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(30),
  salary DECIMAL,
  department_id INT FOREIGN KEY,
  FOREIGN KEY (department_id) REFERENCES department(id)
);



