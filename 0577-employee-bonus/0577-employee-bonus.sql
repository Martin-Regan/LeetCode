# Write your MySQL query statement below
SELECT employee.name
    ,bonus.bonus
FROM employee
LEFT JOIN Bonus on employee.empid=bonus.empid
WHERE bonus.bonus < 1000 or bonus.bonus is null