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