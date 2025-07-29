CREATE OR REPLACE VIEW vw_active_employees AS
SELECT id, name
FROM employees
WHERE is_active = TRUE;
