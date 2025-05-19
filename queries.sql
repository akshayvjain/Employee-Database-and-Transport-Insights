-- 1. Show all employees
SELECT * FROM employees;

-- 2. Show only employee names and their teams
SELECT name, team FROM employees;

-- 3. Find employees from 'Engineering' team
SELECT * FROM employees WHERE team = 'Engineering';

-- 4. Find employees who use 'Metro' as their mode of transport
SELECT * FROM employees WHERE transport_mode = 'Metro';

-- 5. Count how many employees are in each team
SELECT team, COUNT(*) AS total_employees FROM employees GROUP BY team;

-- 6. Count how many employees use each mode of transport
SELECT transport_mode, COUNT(*) AS total_users FROM employees GROUP BY transport_mode;

-- 7. List all distinct teams
-- DISTINCT is used to return only unique (non-duplicate) values from a column.
SELECT DISTINCT team FROM employees;

-- 8. List employees sorted by name (A-Z)
SELECT * FROM employees ORDER BY name ASC;

-- 9. List employees sorted by team, then by name
SELECT * FROM employees ORDER BY team ASC, name ASC;

-- 10. Count total number of employees
SELECT COUNT(*) AS total_employees FROM employees;

-- 11. Get employees whose name starts with 'R'
SELECT * FROM employees WHERE name LIKE 'R%';

-- 12. Get employees whose transport is either 'Bus' or 'Auto-rickshaw'
SELECT * FROM employees WHERE transport_mode IN ('Bus', 'Auto-rickshaw');

-- 13. List employees who are NOT in the 'HR' team
SELECT * FROM employees WHERE team != 'HR';

-- 14. List teams having more than 3 employees
SELECT team, COUNT(*) AS team_count
FROM employees
GROUP BY team
HAVING COUNT(*) > 3;

-- 15. Find transport modes used by more than 2 employees
SELECT transport_mode, COUNT(*) AS user_count
FROM employees
GROUP BY transport_mode
HAVING COUNT(*) > 2;

--16 Count how many employees use each mode of transport
SELECT transport_mode, COUNT(*) AS total_users
FROM employees
GROUP BY transport_mode
ORDER BY total_users DESC;

-- 17 Calculate percentage of employees using Local Train
SELECT 
  ROUND((COUNT(*) * 100.0) / (SELECT COUNT(*) FROM employees), 2) AS local_train_percentage
FROM employees
WHERE transport_mode = 'Local Train';

-- 18 Count how many employees are in each team
SELECT team, COUNT(*) AS team_size
FROM employees
GROUP BY team
ORDER BY team_size DESC;
