-- check the data in the database
SELECT T0.*, T1.*
FROM customer T0 
LEFT JOIN banking_details T1 ON T1.customer_id = T0.id
