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

#Use-Case-4
SELECT *
FROM employee_payroll;

#Use-Case-5
SELECT salary
FROM employee_payroll
WHERE name = 'Paresh';
SELECT name
FROM employee_payroll
WHERE start_date BETWEEN CAST('2021-06-30' AS DATE) AND DATE(NOW());

#Use-Case-6
ALTER TABLE employee_payroll
    ADD gender CHAR(1) NOT NULL;
UPDATE employee_payroll
SET gender='F'
WHERE name = 'Poonam';
UPDATE employee_payroll
SET gender='M'
WHERE name != 'Poonam';
