-- Drop if exists for idempotency
DROP PROCEDURE IF EXISTS log_employee_activity();

-- Create a simple stored procedure
CREATE OR REPLACE PROCEDURE log_employee_activity()
RETURNS STRING
LANGUAGE SQL
AS
$$
BEGIN
  INSERT INTO employee_activity_log (employee_id, activity_time, description)
  SELECT id, CURRENT_TIMESTAMP(), 'Checked in'
  FROM employees
  WHERE is_active = TRUE;

  RETURN 'Activity logs inserted successfully.....!';
END;
$$;
