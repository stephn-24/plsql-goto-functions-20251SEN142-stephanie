-- B3: Tax Calculator Function
-- Tax rules used in this assignment:
-- Salary <= 500,000: 0%
-- 500,000 < Salary <= 1,000,000: 10% on amount above 500,000
-- Salary > 1,000,000: 10% on first 500,000 above the threshold
-- plus 20% on amount above 1,000,000

CREATE OR REPLACE FUNCTION fn_calculate_tax (
    p_salary IN NUMBER
)
RETURN NUMBER
IS
    v_tax NUMBER;
BEGIN
    IF p_salary <= 500000 THEN
        v_tax := 0;

    ELSIF p_salary <= 1000000 THEN
        v_tax := (p_salary - 500000) * 0.10;

    ELSE
        v_tax := (500000 * 0.10)
                 + ((p_salary - 1000000) * 0.20);
    END IF;

    RETURN v_tax;
END;
/
