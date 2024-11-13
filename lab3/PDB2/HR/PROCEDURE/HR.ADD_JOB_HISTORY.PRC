CREATE OR REPLACE EDITIONABLE PROCEDURE HR.add_job_history
  (  p_emp_id          job_history.employee_id%type
   , p_start_date      job_history.start_date%type
   , p_end_date        job_history.end_date%type
   , p_job_id          job_history.job_id%type
   , p_department_id   job_history.department_id%type
   )
IS
BEGIN
-- <Toad_78388271_1> *** DO NOT REMOVE THE AUTO DEBUGGER START/END TAGS
DBMS_OUTPUT.PUT_LINE('{Toad_78388271_1}');
DBMS_OUTPUT.PUT_LINE('{Toad_78388271_1}[--- 1 ---]');
DBMS_OUTPUT.PUT_LINE('{Toad_78388271_1}');
-- </Toad_78388271_1>
  INSERT INTO job_history (employee_id, start_date, end_date,
                           job_id, department_id)
    VALUES(p_emp_id, p_start_date, p_end_date, p_job_id, p_department_id);
-- <Toad_78388271_2> *** DO NOT REMOVE THE AUTO DEBUGGER START/END TAGS
DBMS_OUTPUT.PUT_LINE('{Toad_78388271_2}');
DBMS_OUTPUT.PUT_LINE('{Toad_78388271_2}[--- 2 ---]');
DBMS_OUTPUT.PUT_LINE('{Toad_78388271_2}');
-- </Toad_78388271_2>
END add_job_history;
/
