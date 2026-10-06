-- C1: Payroll Validation Function

CREATE OR REPLACE FUNCTION fn_validate_payroll (
    p_employee_id IN payroll.employee_id%TYPE,
    p_basic_salary IN payroll.basic_salary%TYPE,
    p_allowance IN payroll.allowance%TYPE,
    p_tax IN payroll.tax%TYPE
)
RETURN VARCHAR2
IS
    v_employee_count NUMBER;
BEGIN
    SELECT COUNT(*)
    INTO v_employee_count
    FROM employees
    WHERE employee_id = p_employee_id;

    IF v_employee_count = 0 THEN
        RETURN 'INVALID: Employee does not exist.';

    ELSIF p_basic_salary < 0 THEN
        RETURN 'INVALID: Basic salary cannot be negative.';

    ELSIF p_allowance < 0 THEN
        RETURN 'INVALID: Allowance cannot be negative.';

    ELSIF p_tax < 0 THEN
        RETURN 'INVALID: Tax cannot be negative.';

    ELSE
        RETURN 'VALID: Payroll data is correct.';
    END IF;
END;
/
