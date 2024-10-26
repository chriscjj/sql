CREATE DATABASE Sales;
CREATE TABLE Orders (
Order_Id INT PRIMARY KEY,
Customer_Name varchar(50) NOT NULL,
Product_Category VARCHAR(50),
Ordered_item VARCHAR(50) UNIQUE,
Contact_No VARCHAR(15) NOT NULL
);

ALTER TABLE Orders
ADD Order_quantity INT;

ALTER TABLE Orders
RENAME TO sales_orders;

INSERT INTO sales_orders (Order_Id, Customer_name, Product_Category, Ordered_item, Contact_No, order_quantity)
VALUES 
(1, 'Alice', 'Electronics', 'Laptop', '1234567890', 1),
(2, 'Bob', 'Clothing', 'Jacket', '2345678901', 2),
(3, 'Charlie', 'Electronics', 'Smartphone', '3456789012', 1),
(4, 'David', 'Grocery', 'Apple', '4567890123', 5),
(5, 'Eva', 'Books', 'Novel', '5678901234', 1),
(6, 'Frank', 'Electronics', 'Tablet', '6789012345', 1),
(7, 'Grace', 'Clothing', 'T-shirt', '7890123456', 3),
(8, 'Helen', 'Furniture', 'Chair', '8901234567', 2),
(9, 'Ivan', 'Grocery', 'Banana', '9012345678', 10),
(10, 'Julia', 'Books', 'Magazine', '0123456789', 4);

SELECT Customer_Name,Ordered_item from sales_orders;

UPDATE sales_orders
SET Ordered_item = 'Gaming Laptop'
WHERE Order_id = 1;

SELECT Customer_Name,Ordered_item from sales_orders;

DROP TABLE sales_orders;
