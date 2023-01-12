--create customer table
CREATE TABLE customer (
    id INT PRIMARY KEY IDENTITY(10000,1),
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    street VARCHAR(255) NOT NULL,
    city VARCHAR(50) NOT NULL,
    zip_code CHAR(5) NOT NULL,
    UNIQUE (email)
);

-- create banking details table
CREATE TABLE banking_details (
    id INT PRIMARY KEY IDENTITY(1,1),
    customer_id INT NOT NULL,
    type VARCHAR(20) NOT NULL CHECK (type IN ('VISA', 'MasterCard', 'Discover', 'American Express')),
    cc_number VARCHAR(20) NOT NULL,
    expiration_date DATE NOT NULL,
    UNIQUE (cc_number),
    FOREIGN KEY (customer_id) REFERENCES customer(id)
);
