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

#Use-Case-10
DROP TABLE employee_payroll;
CREATE TABLE employee_payroll
(
    ID        INT   NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Basic     FLOAT NOT NULL,
    Deduction FLOAT NOT NULL,
    Taxable   FLOAT NOT NULL,
    Incometax FLOAT NOT NULL,
    Net       FLOAT NOT NULL,
    Started   DATE  NOT NULL
);
INSERT INTO employee_payroll (Basic, Deduction, Taxable, Incometax, Net, Started)
VALUES (30000.0, 2000.0, 28000.0, 1000.0, 27000.0, '2021-06-25'),
       (35000.0, 2000.0, 33000.0, 1000.0, 32000.0, '2021-06-30'),
       (40000.0, 2500.0, 37500.0, 1500.0, 36000.0, '2021-07-03'),
       (25000.0, 1500.0, 23500.0, 500.0, 23000.0, '2021-06-01'),
       (38000.0, 2500.0, 34500.0, 1500.0, 34000.0, '2021-07-08'),
       (36000.0, 1500.0, 30000.0, 500.0, 30000.0, '2021-07-07');
SELECT *
FROM employee_payroll;
CREATE TABLE Employee_Details
(
    EmployeeID INT         NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Name       VARCHAR(50) NOT NULL,
    Gender     CHAR        NOT NULL,
    Contact    VARCHAR(10) NOT NULL,
    Address    VARCHAR(50) NOT NULL,
    FOREIGN KEY (EmployeeID) REFERENCES employee_payroll (ID)
);
INSERT INTO Employee_Details (EmployeeID, Name, Gender, Contact, Address)
VALUES (15, 'Paresh', 'M', '8408025874', 'Jalgaon'),
       (16, 'Ganesh', 'M', '8408078965', 'Mumbai'),
       (17, 'Rutuja', 'F', '9521495441', 'Pune'),
       (18, 'Ashwini', 'F', '7894595441', 'Dhule'),
       (19, 'Poonam', 'F', '9638595441', 'Nagpur'),
       (20, 'Rahul', 'M', '8523595441', 'Nashik');

#Use-Case-11
CREATE TABLE employee_department
(
    ID         INT         NOT NULL AUTO_INCREMENT PRIMARY KEY,
    EmployeeId INT         NOT NULL,
    Department VARCHAR(50) NOT NULL,
    FOREIGN KEY (EmployeeId) REFERENCES employee_details (EmployeeID)
);
INSERT INTO employee_department (EmployeeId, Department)
VALUES (15, 'HR'),
       (16, 'IT'),
       (17, 'QA'),
       (18, 'DBA'),
       (19, 'HR'),
       (20, 'RPA');

#Use-Case-12-ER Diagram
