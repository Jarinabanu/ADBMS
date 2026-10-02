SET SERVEROUTPUT ON;

DECLARE
    n NUMBER := 10;
    sum NUMBER := 0;
BEGIN
    FOR i IN 1..n LOOP
        sum := sum + i;
    END LOOP;

    DBMS_OUTPUT.PUT_LINE('Sum of Series = ' || sum);
END;
/
