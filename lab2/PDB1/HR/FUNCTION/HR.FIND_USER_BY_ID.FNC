CREATE OR REPLACE EDITIONABLE FUNCTION HR.find_user_by_id(p_employee_id IN NUMBER)
    RETURN VARCHAR2
IS
    v_employee_info VARCHAR2(4000);
BEGIN
-- <Toad_145528847_1> *** DO NOT REMOVE THE AUTO DEBUGGER START/END TAGS
DBMS_OUTPUT.PUT_LINE('{Toad_145528847_1}');
DBMS_OUTPUT.PUT_LINE('{Toad_145528847_1}[--- 1 ---]');
DBMS_OUTPUT.PUT_LINE('{Toad_145528847_1}');
DBMS_OUTPUT.PUT_LINE('{Toad_145528847_1}[1] p_employee_id = ' || p_employee_id);
DBMS_OUTPUT.PUT_LINE('{Toad_145528847_1}[1] v_employee_info = ' || v_employee_info);
-- </Toad_145528847_1>
    DBMS_LOCK.SLEEP(10);
    SELECT 'First Name: ' || first_name || ', Last Name: ' || last_name ||
           ', Email: ' || email || ', Job ID: ' || job_id
    INTO v_employee_info
    FROM employees
    WHERE employee_id = p_employee_id;
-- <Toad_145528847_2> *** DO NOT REMOVE THE AUTO DEBUGGER START/END TAGS
DBMS_OUTPUT.PUT_LINE('{Toad_145528847_2}');
DBMS_OUTPUT.PUT_LINE('{Toad_145528847_2}[--- 2 ---]');
DBMS_OUTPUT.PUT_LINE('{Toad_145528847_2}');
DBMS_OUTPUT.PUT_LINE('{Toad_145528847_2}[2] p_employee_id = ' || p_employee_id);
DBMS_OUTPUT.PUT_LINE('{Toad_145528847_2}[2] v_employee_info = ' || v_employee_info);
-- </Toad_145528847_2>

    RETURN v_employee_info;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
-- <Toad_145528847_3> *** DO NOT REMOVE THE AUTO DEBUGGER START/END TAGS
DBMS_OUTPUT.PUT_LINE('{Toad_145528847_3}');
DBMS_OUTPUT.PUT_LINE('{Toad_145528847_3}[--- 3 ---]');
DBMS_OUTPUT.PUT_LINE('{Toad_145528847_3}');
DBMS_OUTPUT.PUT_LINE('{Toad_145528847_3}[3] p_employee_id = ' || p_employee_id);
DBMS_OUTPUT.PUT_LINE('{Toad_145528847_3}[3] v_employee_info = ' || v_employee_info);
-- </Toad_145528847_3>
        RETURN 'No employee found with ID ' || p_employee_id;
    WHEN OTHERS THEN
-- <Toad_145528847_4> *** DO NOT REMOVE THE AUTO DEBUGGER START/END TAGS
DBMS_OUTPUT.PUT_LINE('{Toad_145528847_4}');
DBMS_OUTPUT.PUT_LINE('{Toad_145528847_4}[--- 4 ---]');
DBMS_OUTPUT.PUT_LINE('{Toad_145528847_4}');
DBMS_OUTPUT.PUT_LINE('{Toad_145528847_4}[4] p_employee_id = ' || p_employee_id);
DBMS_OUTPUT.PUT_LINE('{Toad_145528847_4}[4] v_employee_info = ' || v_employee_info);
-- </Toad_145528847_4>
        RETURN 'An error occurred: ' || SQLERRM;
-- <Toad_145528847_5> *** DO NOT REMOVE THE AUTO DEBUGGER START/END TAGS
DBMS_OUTPUT.PUT_LINE('{Toad_145528847_5}');
DBMS_OUTPUT.PUT_LINE('{Toad_145528847_5}[--- 5 ---]');
DBMS_OUTPUT.PUT_LINE('{Toad_145528847_5}');
DBMS_OUTPUT.PUT_LINE('{Toad_145528847_5}[5] p_employee_id = ' || p_employee_id);
DBMS_OUTPUT.PUT_LINE('{Toad_145528847_5}[5] v_employee_info = ' || v_employee_info);
-- </Toad_145528847_5>
END find_user_by_id;
/
