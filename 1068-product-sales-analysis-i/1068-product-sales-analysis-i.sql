# Write your MySQL query statement below
SELECT product.product_name
,sales.year
,sales.price
FROM Sales
JOIN Product ON Sales.Product_id=Product.Product_id