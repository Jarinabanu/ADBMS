SET SERVEROUTPUT ON;

DECLARE
    n NUMBER := 5;
    fact NUMBER := 1;
BEGIN
    FOR i IN 1..n LOOP
        fact := fact * i;
    END LOOP;

    DBMS_OUTPUT.PUT_LINE('Factorial of ' || n || ' = ' || fact);
END;
/
