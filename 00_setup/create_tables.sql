-- Employee Payroll Management System
-- Database Development with PL/SQL
-- Student ID: 20251SEN142

-- Run this script as PAYROLL_APP.
-- Existing tables are dropped so the setup can be rerun.

BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE payroll CASCADE CONSTRAINTS';
EXCEPTION
    WHEN OTHERS THEN
        IF SQLCODE != -942 THEN RAISE; END IF;
END;
/

BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE employees CASCADE CONSTRAINTS';
EXCEPTION
    WHEN OTHERS THEN
        IF SQLCODE != -942 THEN RAISE; END IF;
END;
/

BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE departments CASCADE CONSTRAINTS';
EXCEPTION
    WHEN OTHERS THEN
        IF SQLCODE != -942 THEN RAISE; END IF;
END;
/

CREATE TABLE departments (
    department_id NUMBER PRIMARY KEY,
    department_name VARCHAR2(100) NOT NULL
);

CREATE TABLE employees (
    employee_id NUMBER PRIMARY KEY,
    employee_name VARCHAR2(100) NOT NULL,
    department_id NUMBER NOT NULL,
    monthly_salary NUMBER(10,2) NOT NULL CHECK (monthly_salary > 0),
    hire_date DATE NOT NULL,
    CONSTRAINT fk_employee_department
        FOREIGN KEY (department_id)
        REFERENCES departments(department_id)
);

CREATE TABLE payroll (
    payroll_id NUMBER PRIMARY KEY,
    employee_id NUMBER NOT NULL,
    payroll_month DATE NOT NULL,
    basic_salary NUMBER(10,2) NOT NULL CHECK (basic_salary >= 0),
    allowance NUMBER(10,2) DEFAULT 0 NOT NULL CHECK (allowance >= 0),
    tax NUMBER(10,2) DEFAULT 0 NOT NULL CHECK (tax >= 0),
    CONSTRAINT fk_payroll_employee
        FOREIGN KEY (employee_id)
        REFERENCES employees(employee_id)
);

INSERT INTO departments VALUES (10, 'Information Technology');
INSERT INTO departments VALUES (20, 'Finance');
INSERT INTO departments VALUES (30, 'Human Resources');
INSERT INTO departments VALUES (40, 'Marketing');

INSERT INTO employees VALUES
(101, 'Alice Mukamana', 10, 650000, DATE '2022-03-15');

INSERT INTO employees VALUES
(102, 'Brian Niyonzima', 20, 850000, DATE '2020-07-10');

INSERT INTO employees VALUES
(103, 'Claudine Uwase', 30, 550000, DATE '2024-01-20');

INSERT INTO employees VALUES
(104, 'David Habimana', 10, 1200000, DATE '2019-05-01');

INSERT INTO employees VALUES
(105, 'Esther Ingabire', 40, 400000, DATE '2025-02-10');

INSERT INTO payroll VALUES
(1, 101, DATE '2026-10-01', 650000, 50000, 15000);

INSERT INTO payroll VALUES
(2, 102, DATE '2026-10-01', 850000, 100000, 35000);

INSERT INTO payroll VALUES
(3, 103, DATE '2026-10-01', 550000, 30000, 5000);

INSERT INTO payroll VALUES
(4, 104, DATE '2026-10-01', 1200000, 150000, 90000);

INSERT INTO payroll VALUES
(5, 105, DATE '2026-10-01', 400000, 20000, 0);

COMMIT;

SELECT * FROM departments ORDER BY department_id;
SELECT * FROM employees ORDER BY employee_id;
SELECT * FROM payroll ORDER BY payroll_id;
