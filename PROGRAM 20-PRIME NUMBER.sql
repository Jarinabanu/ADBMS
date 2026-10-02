SET SERVEROUTPUT ON;

DECLARE
    n NUMBER := 17;
    count_num NUMBER := 0;
BEGIN
    FOR i IN 1..n LOOP
        IF MOD(n, i) = 0 THEN
            count_num := count_num + 1;
        END IF;
    END LOOP;

    IF count_num = 2 THEN
        DBMS_OUTPUT.PUT_LINE(n || ' is a Prime Number');
    ELSE
        DBMS_OUTPUT.PUT_LINE(n || ' is not a Prime Number');
    END IF;
END;
/
