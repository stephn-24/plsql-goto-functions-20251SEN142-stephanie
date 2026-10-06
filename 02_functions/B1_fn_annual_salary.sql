-- B1: Annual Salary Function

CREATE OR REPLACE FUNCTION fn_annual_salary (
    p_employee_id IN employees.employee_id%TYPE
)
RETURN NUMBER
IS
    v_annual_salary NUMBER;
BEGIN
    SELECT monthly_salary * 12
    INTO v_annual_salary
    FROM employees
    WHERE employee_id = p_employee_id;

    RETURN v_annual_salary;
END;
/
