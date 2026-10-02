DECLARE
    n NUMBER := 10;
    a NUMBER := 0;
    b NUMBER := 1;
    c NUMBER;
BEGIN
    DBMS_OUTPUT.PUT_LINE('Fibonacci Series:');

    FOR i IN 1..n LOOP
        DBMS_OUTPUT.PUT_LINE(a);

        c := a + b;
        a := b;
        b := c;
    END LOOP;
END;
/
