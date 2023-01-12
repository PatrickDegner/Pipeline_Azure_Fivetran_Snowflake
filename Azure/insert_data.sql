-- insert data into customer table
INSERT INTO customer (first_name, last_name, email, street, city, zip_code)
VALUES 
('John', 'Doe', 'johndoe@example.com', '123 Main St', 'Bielefeld', '12345'),
('Jane', 'Smith', 'janesmith@example.com', '456 Elm St', 'Munich', '67890'),
('Bob', 'Johnson', 'bobjohnson@example.com', '789 Oak St', 'Berlin', '09876'),
('Amy', 'Williams', 'amywilliams@example.com', '321 Pine St', 'Stuttgart', '54321'),
('Michael', 'Brown', 'michaelbrown@example.com', '654 Cedar St', 'Leipzig', '67890'),
('Jessica', 'Jones', 'jessicajones@example.com', '987 Birch St', 'Frankfurt', '24680');

-- insert data into banking_details table
INSERT INTO banking_details (customer_id, type, cc_number, expiration_date)
VALUES 
(10000, 'VISA', '1234567890123456', '2025-12-31'),
(10001, 'MasterCard', '2223334445556667', '2022-12-31'),
(10002, 'Discover', '1112223334445556', '2022-12-31'),
(10003, 'American Express', '9876543210123456', '2022-12-31'),
(10004, 'VISA', '12345678901234576', '2022-12-31'),
(10005, 'MasterCard', '22233344454556667', '2022-12-31');
