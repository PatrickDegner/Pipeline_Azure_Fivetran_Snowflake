-- delete bob johnson
DELETE FROM banking_details
WHERE customer_id = (SELECT id FROM customer WHERE email = 'bobjohnson@example.com');
