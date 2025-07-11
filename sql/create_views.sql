CREATE OR REPLACE VIEW active_employees AS
SELECT id, name
FROM employees
WHERE is_active = TRUE;
