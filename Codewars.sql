--5 KYU Calculating Running Total
SELECT DATE(created_at) AS date, 
       COUNT(*) as count, 
       CAST(SUM(COUNT(*)) OVER (ORDER BY DATE(created_at)) AS int) AS total
FROM posts
GROUP BY DATE(created_at)

--5 KYU Simple Hierarchical structure
WITH RECURSIVE employee_levels (n) AS (
    SELECT 1, id, first_name, last_name, manager_id
    FROM employees
    WHERE manager_id IS NULL
    UNION ALL
    SELECT n + 1, e.id, e.first_name, e.last_name, e.manager_id
    FROM employees e JOIN employee_levels m ON e.manager_id = m.id     
)

SELECT n AS level, id, first_name, last_name, manager_id FROM employee_levels

