CREATE OR REPLACE EDITIONABLE FUNCTION HR.find_user_by_id(p_employee_id IN NUMBER)
    RETURN VARCHAR2
IS
    v_employee_info VARCHAR2(4000);
BEGIN
    SELECT 'First Name: ' || first_name || ', Last Name: ' || last_name ||
           ', Email: ' || email || ', Job ID: ' || job_id
    INTO v_employee_info
    FROM employees
    WHERE employee_id = p_employee_id;

    RETURN v_employee_info;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN 'No employee found with ID ' || p_employee_id;
    WHEN OTHERS THEN
        RETURN 'An error occurred: ' || SQLERRM;
END find_user_by_id;
/
