-- B5: Use PL/SQL functions in a SQL SELECT statement

SET LINESIZE 150
SET PAGESIZE 50

COLUMN employee_name FORMAT A20
COLUMN annual_salary FORMAT 999999999
COLUMN years_service FORMAT 99
COLUMN calculated_tax FORMAT 999999999
COLUMN department FORMAT A25

SELECT
    employee_id,
    employee_name,
    fn_annual_salary(employee_id) AS annual_salary,
    fn_years_of_service(employee_id) AS years_service,
    fn_calculate_tax(monthly_salary) AS calculated_tax,
    fn_dept_name(employee_id) AS department
FROM employees
ORDER BY employee_id;
