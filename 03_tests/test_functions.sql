-- Tests for B1-B4 functions

SET SERVEROUTPUT ON;

SELECT fn_annual_salary(101) AS annual_salary
FROM dual;

SELECT fn_years_of_service(101) AS years_of_service
FROM dual;

SELECT fn_calculate_tax(650000) AS calculated_tax
FROM dual;

SELECT fn_dept_name(101) AS department_name
FROM dual;
