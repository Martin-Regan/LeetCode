# Write your MySQL query statement below
SELECT 
    mgr.employee_id,
    mgr.name,
    count(emp.reports_to) AS reports_count,
    ROUND(AVG(emp.age), 0) AS average_age
FROM Employees mgr
INNER JOIN Employees emp on emp.reports_to = mgr.employee_id
GROUP BY mgr.employee_id, mgr.name
ORDER BY employee_id