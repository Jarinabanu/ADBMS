DECLARE
    str VARCHAR2(50) := 'MADAM';
    rev VARCHAR2(50) := '';
BEGIN
    FOR i IN REVERSE 1..LENGTH(str) LOOP
        rev := rev || SUBSTR(str, i, 1);
    END LOOP;

    IF str = rev THEN
        DBMS_OUTPUT.PUT_LINE(str || ' is a Palindrome');
    ELSE
        DBMS_OUTPUT.PUT_LINE(str || ' is not a Palindrome');
    END IF;
END;
/
