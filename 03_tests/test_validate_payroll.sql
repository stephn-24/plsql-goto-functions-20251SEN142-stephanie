-- Tests for C1 payroll validation function

SELECT fn_validate_payroll(
    101,
    650000,
    50000,
    15000
) AS validation_result
FROM dual;

SELECT fn_validate_payroll(
    101,
    -650000,
    50000,
    15000
) AS validation_result
FROM dual;
