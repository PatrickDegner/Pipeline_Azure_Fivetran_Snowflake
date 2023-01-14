CREATE TABLE CUSTOMER (
    id INT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(255) NOT NULL,
    street VARCHAR(255) NOT NULL,
    city VARCHAR(50) NOT NULL,
    zip_code CHAR(5) NOT NULL
);

CREATE TABLE BANKING_DETAILS (
    id INT,
    customer_id INT NOT NULL,
    type VARCHAR(20) NOT NULL,
    cc_number VARCHAR(20) NOT NULL,
    expiration_date DATE NOT NULL
);
