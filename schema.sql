DROP DATABASE IF EXISTS employees;

CREATE DATABASE employees;

USE employees;

CREATE TABLE department (
  id INT AUTO_INCREMENT NOT NULL,
  name VARCHAR(30) NOT NULL,
  PRIMARY KEY(id)
);

INSERT INTO department (name)
VALUES ("Sales");

INSERT INTO department (name)
VALUES ("Engineering");

INSERT INTO department (name)
VALUES ("Finance");

INSERT INTO department (name)
VALUES ("Legal");

CREATE TABLE role (
  id INT AUTO_INCREMENT NOT NULL,
  title VARCHAR(30) NOT NULL,
  salary DECIMAL(10,2) NOT NULL,
  department_id INT NOT NULL,
  PRIMARY KEY(id)
);

INSERT INTO role (title, salary, department_id)
VALUES ("Sales Lead", 120000, 1);

INSERT INTO role (title, salary, department_id)
VALUES ("Salesperson", 90000, 1);

INSERT INTO role (title, salary, department_id)
VALUES ("Lead Engineer", 170000, 2);

INSERT INTO role (title, salary, department_id)
VALUES ("Software Engineer", 140000, 2);

INSERT INTO role (title, salary, department_id)
VALUES ("Account Manager", 180000, 3);

INSERT INTO role (title, salary, department_id)
VALUES ("Accountant", 130000, 3);

INSERT INTO role (title, salary, department_id)
VALUES ("Legal Team Lead", 300000, 4);

INSERT INTO role (title, salary, department_id)
VALUES ("Lawyer", 200000, 4);

CREATE TABLE employee (
  id INT AUTO_INCREMENT NOT NULL,
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(30) NOT NULL,
  role_id iNT NOT NULL,
  manager_id VARCHAR(30),
  PRIMARY KEY(id)
);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("John", "Doe", 1, null);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Dave", "Chen", 2, "John Doe");

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Lucy", "Mendez", 3, null);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Thomas", "Turner", 4, "Lucy Mendez");

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Kervin", "Quartz", 5, null);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Kala", "Adams", 6, "Kervin Quartz");

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Farah", "Edwards", 7, null);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Devin", "Kent", 8, "Farah Edwards");

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Telma", "Blanc", 3, "Farah Edwards");