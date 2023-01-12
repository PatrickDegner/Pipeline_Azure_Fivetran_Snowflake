-- add a new customer and banking details
INSERT INTO customer (first_name, last_name, email, street, city, zip_code)
VALUES 
('Patrick', 'IsHere', 'patrick@ishere.too', 'No Street 1', 'Hamburg', '55555');

INSERT INTO banking_details (customer_id, type, cc_number, expiration_date)
VALUES 
(10006, 'VISA', '666555444333222111', '2026-05-30');
