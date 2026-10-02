CREATE TABLE EMPLOYEE (
    EMP_ID NUMBER,
    EMP_NAME VARCHAR2(50),
    SALARY NUMBER
);

INSERT INTO EMPLOYEE VALUES (101, 'Ravi', 20000);
INSERT INTO EMPLOYEE VALUES (102, 'Anu', 25000);
INSERT INTO EMPLOYEE VALUES (103, 'Priya', 30000);

COMMIT;

-- implicit

BEGIN
    UPDATE EMPLOYEE
    SET SALARY = SALARY + 2000
    WHERE EMP_ID = 101;

    DBMS_OUTPUT.PUT_LINE(SQL%ROWCOUNT || ' row updated');
END;
/

  -- emplicit

DECLARE
    CURSOR emp_cursor IS
        SELECT EMP_ID, EMP_NAME, SALARY
        FROM EMPLOYEE;

    v_id EMPLOYEE.EMP_ID%TYPE;
    v_name EMPLOYEE.EMP_NAME%TYPE;
    v_salary EMPLOYEE.SALARY%TYPE;

BEGIN
    OPEN emp_cursor;

    LOOP
        FETCH emp_cursor INTO v_id, v_name, v_salary;

        EXIT WHEN emp_cursor%NOTFOUND;

        DBMS_OUTPUT.PUT_LINE(
            'ID: ' || v_id ||
            ' Name: ' || v_name ||
            ' Salary: ' || v_salary
        );
    END LOOP;

    CLOSE emp_cursor;
END;
/
