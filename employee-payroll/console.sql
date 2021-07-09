#Welcome to the Employee_Payroll DBMS

#Use-Case-1
CREATE DATABASE payroll_service;
USE payroll_service;

#Use-Case-2
CREATE TABLE employee_payroll
(
    id         INT PRIMARY KEY AUTO_INCREMENT,
    name       VARCHAR(50),
    salary     INT,
    start_date DATE
);

#Use-Case-3
INSERT INTO employee_payroll(name, salary, start_date)
VALUES ('Paresh', 80000, '2021-06-25'),
       ('Atharva', 87000, '2021-06-28'),
       ('Rahul', 89900, '2021-06-30'),
       ('Poonam', 99000, '2021-07-05'),
       ('Pratham', 70000, '2021-07-01'),
       ('Rutuja', 65000, '2021-07-06');