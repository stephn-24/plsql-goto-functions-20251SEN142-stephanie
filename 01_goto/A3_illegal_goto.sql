-- A3: Illegal GOTO and corrected version
-- Part 1 intentionally causes a compilation error.

SET SERVEROUTPUT ON;

-- ILLEGAL VERSION:
-- The GOTO attempts to branch into an IF statement.

BEGIN
    GOTO inside_if;

    IF 1 = 1 THEN
        <<inside_if>>
        DBMS_OUTPUT.PUT_LINE('This is inside the IF block.');
    END IF;
END;
/

-- FIXED VERSION:
-- The labels are placed outside the restricted IF structure.

DECLARE
    v_number NUMBER := 10;
BEGIN
    IF v_number > 0 THEN
        GOTO positive_number;
    ELSE
        GOTO non_positive_number;
    END IF;

    <<positive_number>>
    DBMS_OUTPUT.PUT_LINE('The number is POSITIVE.');
    GOTO finish;

    <<non_positive_number>>
    DBMS_OUTPUT.PUT_LINE('The number is ZERO or NEGATIVE.');

    <<finish>>
    NULL;
END;
/
