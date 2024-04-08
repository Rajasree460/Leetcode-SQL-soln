# Write your MySQL query statement below
SELECT customer_id FROM Customer 
GROUP BY customer_id
HAVING COUNT(DISTINCT product_key) = (SELECT COUNT(product_key) FROM Product)   --COUNT(DISTINCT product_key) ensures that each distinct product key associated with a customer is counted only once, regardless of how many times that product key appears in the customer's records.
