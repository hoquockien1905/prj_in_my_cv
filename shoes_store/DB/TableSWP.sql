CREATE DATABASE SWP391;
USE SWP391;
drop database swp391;

CREATE TABLE accounts (
    account_id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    username VARCHAR(100) NOT NULL,
    password VARCHAR(100) NOT NULL,
    is_admin INT NULL
    
);

CREATE TABLE employees (
    employee_id INT AUTO_INCREMENT PRIMARY KEY,
    last_name VARCHAR(50) NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL,
	account_id INT NOT NULl,
    FOREIGN KEY (account_id) 
		REFERENCES accounts (account_id)
        ON UPDATE CASCADE ON DELETE CASCADE
);
-- Khi click vào biểu tượng giỏ hàng


-- CREATE TABLE Orders (
--     orderNumber INT NOT NULL AUTO_INCREMENT PRIMARY KEY, -- Mã BUIl
--     orderDate DATE NOT NULL,
--     requiredDate DATETIME NOT NULL, -- YêU CẦU ngày giao
--     shippedDate DATETIME NOT nuLL, -- NgÀY gIAO Thật
--     orderStatus VARCHAR(30) NOT NULL,
--     quantityOrdered INT NOT NULL, -- sỐ LưỢNG
--     priceEach DOUBLE NOT NULL
-- );
-- -- KHI THAnH ToÁN ThÌ sẽ ra screen của payment
-- CREATE TABLE Payments (
--     paymentNumber INT NOT NULL AUTO_INCREMENT PRIMARY KEY, -- MÃ THANH TOÁn
--     paymentDate DATETIME NOT NULL,
--     amount DOUBLE NOT NULL,
--     customerNumber INT NOT NUll,
--     FOREIGN KEY (customerNumber) REFERENCES Customer(customerNumber)
-- );

CREATE TABLE category (
    category_id int AUTO_INCREMENT PRIMARY KEY,
    category_name varchar(100)
);

CREATE TABLE products (
    product_id int AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(70) NOT NULL,
    image TEXT NULL,
	old_price DOUBLE NOT NULL, -- giá  
    current_price DOUBLE NOT NULL,
    title varchar(250) null,
    descriptions TEXT null,
    category_id int NOT NULL, 
    FOREIGN KEY (category_id)
    REFERENCES category (category_id)
    ON UPDATE CASCADE ON DELETE CASCADE
);

