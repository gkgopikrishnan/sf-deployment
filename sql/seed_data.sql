-- Insert dummy employee data
INSERT INTO employees (id, name, is_active)
VALUES
  (1, 'Alice', TRUE),
  (2, 'Bob', FALSE),
  (3, 'Charlie', TRUE);

-- Insert some pre-existing logs
INSERT INTO employee_activity_log (employee_id, activity_time, description)
VALUES
  (1, CURRENT_TIMESTAMP(), 'Initial login'),
  (3, CURRENT_TIMESTAMP(), 'Initial login');
