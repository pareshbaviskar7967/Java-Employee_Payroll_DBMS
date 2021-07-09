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

#Use-Case-7
SELECT SUM(salary)
FROM employee_payroll
WHERE gender = 'M'
GROUP BY gender;
SELECT AVG(salary)
FROM employee_payroll
WHERE gender = 'F'
GROUP BY gender;
SELECT COUNT(name)
FROM employee_payroll
WHERE gender = 'M'
GROUP BY gender;
SELECT MIN(salary)
FROM employee_payroll;
SELECT MAX(salary)
FROM employee_payroll;

#Use-Case-8
ALTER TABLE employee_payroll
    ADD phone_no INT NOT NULL;
UPDATE employee_payroll
SET phone_no = '1234567899'
WHERE name = 'Paresh';
UPDATE employee_payroll
SET phone_no = '1234567874'
WHERE name = 'Atharva';
UPDATE employee_payroll
SET phone_no = '1234567878'
WHERE name = 'Rahul';
UPDATE employee_payroll
SET phone_no = '1234567855'
WHERE name = 'Poonam';
UPDATE employee_payroll
SET phone_no = '1234567869'
WHERE name = 'Pratham';
UPDATE employee_payroll
SET phone_no = '1234567555'
WHERE name = 'Rutuja';
SELECT *
FROM employee_payroll;
ALTER TABLE employee_payroll
    ADD address VARCHAR(100) NOT NULL DEFAULT 'Jalgaon, Maharashtra';
ALTER TABLE employee_payroll
    ADD department VARCHAR(10) NOT NULL;
UPDATE employee_payroll
SET department = 'IT'
WHERE name = 'Paresh';
UPDATE employee_payroll
SET department = 'Finance'
WHERE name = 'Atharva';
UPDATE employee_payroll
SET department = 'HR'
WHERE name = 'Rahul';
UPDATE employee_payroll
SET department = 'Prodcution'
WHERE name = 'Poonam';
UPDATE employee_payroll
SET department = 'IT'
WHERE name = 'Pratham';
UPDATE employee_payroll
SET department = 'HR'
WHERE name = 'Rutuja';

#Use-Case-9
ALTER TABLE employee_payroll
    ADD basic_pay FLOAT NOT NULL;
ALTER TABLE employee_payroll
    ADD deduction FLOAT NOT NULL;
ALTER TABLE employee_payroll
    ADD taxable FLOAT NOT NULL;
ALTER TABLE employee_payroll
    ADD incometax FLOAT NOT NULL;
ALTER TABLE employee_payroll
    ADD net_pay FLOAT NOT NULL;
DESC employee_payroll;
