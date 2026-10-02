SET SERVEROUTPUT ON;

DECLARE
    n NUMBER := 153;
    temp NUMBER;
    digit NUMBER;
    sum NUMBER := 0;
BEGIN
    temp := n;

    WHILE temp > 0 LOOP
        digit := MOD(temp, 10);
        sum := sum + POWER(digit, 3);
        temp := TRUNC(temp / 10);
    END LOOP;

    IF sum = n THEN
        DBMS_OUTPUT.PUT_LINE(n || ' is an Armstrong Number');
    ELSE
        DBMS_OUTPUT.PUT_LINE(n || ' is not an Armstrong Number');
    END IF;
END;
/
