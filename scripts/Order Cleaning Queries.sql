USE footweardata;
SHOW TABLES;

SELECT * 
FROM orders_footwear_linked_completev3;

RENAME TABLE orders_footwear_linked_completev3 TO orders;

SELECT * FROM orders;

ALTER TABLE orders
DROP COLUMN `Ship Mode`;

SELECT * FROM orders;

ALTER TABLE orders
DROP COLUMN `Discount`;

UPDATE orders
SET `Discount %` = CASE
    WHEN `Discount Type` = 'Full Price' THEN 0
    WHEN `Discount Type` = 'Promo' THEN ELT(FLOOR(1 + RAND() * 3), 5, 10, 15)
    WHEN `Discount Type` = 'Clearance' THEN ELT(FLOOR(1 + RAND() * 2), 15, 20)
    ELSE 0
END;

SET SQL_SAFE_UPDATES = 0;

UPDATE orders
SET `Discount %` = CASE
    WHEN `Discount Type` = 'Full Price' THEN 0
    WHEN `Discount Type` = 'Promo'      THEN ELT(FLOOR(1 + RAND() * 3), 5, 10, 15)
    WHEN `Discount Type` = 'Clearance'  THEN ELT(FLOOR(1 + RAND() * 2), 15, 20)
    ELSE 0
END;

UPDATE orders
SET `Sales` = ROUND(`Unit Price` * `Quantity` * (1 - (`Discount %`/100)), 2);

SHOW COLUMNS FROM orders;

SELECT `Discount Type`, `Discount %`, COUNT(*) AS cnt
FROM orders
GROUP BY `Discount Type`, `Discount %`
ORDER BY 1,2;

select *
from orders;

DESCRIBE orders;

USE footweardata;

ALTER TABLE orders
MODIFY COLUMN `Row ID` INT UNSIGNED,
MODIFY COLUMN `Order ID` VARCHAR(20),
MODIFY COLUMN `Customer ID` VARCHAR(20),
MODIFY COLUMN `Order Date` DATE,
MODIFY COLUMN `Ship Date` DATE,
MODIFY COLUMN `Segment` VARCHAR(50),
MODIFY COLUMN `Country` VARCHAR(50),
MODIFY COLUMN `City` VARCHAR(50),
MODIFY COLUMN `Postal Code` VARCHAR(20),
MODIFY COLUMN `Order Channel` VARCHAR(50),
MODIFY COLUMN `Product ID` VARCHAR(50),
MODIFY COLUMN `SKU` VARCHAR(50),
MODIFY COLUMN `Product Name` VARCHAR(150),
MODIFY COLUMN `Brand` VARCHAR(50),
MODIFY COLUMN `Quantity` INT,
MODIFY COLUMN `Unit Price` DECIMAL(10,2),
MODIFY COLUMN `Discount Type` VARCHAR(30),
MODIFY COLUMN `Discount %` DECIMAL(5,2),
MODIFY COLUMN `Sales` DECIMAL(12,2),
MODIFY COLUMN `Profit` DECIMAL(12,2);

select *
from orders;

UPDATE orders
SET `Order Date` = STR_TO_DATE(`Order Date`, '%Y-%m-%d'),
    `Ship Date` = STR_TO_DATE(`Ship Date`, '%Y-%m-%d');
    
DESCRIBE orders;

