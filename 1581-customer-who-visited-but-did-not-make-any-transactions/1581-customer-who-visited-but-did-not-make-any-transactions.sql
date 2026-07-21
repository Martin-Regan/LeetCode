# Write your MySQL query statement below
SELECT visits.customer_id
,count(*) AS count_no_trans
FROM Visits
LEFT JOIN transactions ON Visits.visit_id=transactions.visit_id
WHERE transactions.transaction_id IS NULL
group by visits.customer_id
