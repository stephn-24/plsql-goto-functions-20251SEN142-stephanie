-- A2: Salary Review using GOTO

SET SERVEROUTPUT ON;

DECLARE
    v_employee_id employees.employee_id%TYPE := 101;
    v_salary employees.monthly_salary%TYPE;
BEGIN
    SELECT monthly_salary
    INTO v_salary
    FROM employees
    WHERE employee_id = v_employee_id;

    IF v_salary >= 1000000 THEN
        GOTO high_salary;
    ELSIF v_salary >= 500000 THEN
        GOTO medium_salary;
    ELSE
        GOTO low_salary;
    END IF;

    <<high_salary>>
    DBMS_OUTPUT.PUT_LINE(
        'Employee ' || v_employee_id ||
        ' has a HIGH salary of ' || v_salary || '.'
    );
    GOTO finish;

    <<medium_salary>>
    DBMS_OUTPUT.PUT_LINE(
        'Employee ' || v_employee_id ||
        ' has a MEDIUM salary of ' || v_salary || '.'
    );
    GOTO finish;

    <<low_salary>>
    DBMS_OUTPUT.PUT_LINE(
        'Employee ' || v_employee_id ||
        ' has a LOW salary of ' || v_salary || '.'
    );

    <<finish>>
    NULL;
END;
/
