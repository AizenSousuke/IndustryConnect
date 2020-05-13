-- Week 2 Exercises

CREATE DATABASE Week2Exercises;

USE Week2Exercises;

CREATE TABLE Customer (
	CustomerId int PRIMARY KEY IDENTITY(1,1),
	CustomerName nvarchar(100),
	City nvarchar(100),
	Country nvarchar(100)
);

ALTER TABLE Customer
ALTER COLUMN CustomerName nvarchar(100)
ALTER TABLE Customer
ALTER COLUMN City nvarchar(100)
ALTER TABLE Customer
ALTER COLUMN Country nvarchar(100)

DROP TABLE Customer;

CREATE TABLE Item (
	ItemId int PRIMARY KEY IDENTITY(1,1),
	ItemName nvarchar(100),
	Price float(6,2)
);

ALTER TABLE Item
ADD ItemName nvarchar(100)
ADD Price decimal(6,2)

DROP TABLE Item;

CREATE TABLE Orders (
	OrderId int PRIMARY KEY IDENTITY(1,1),
	CustomerId int,
	ItemId int,
	Quantity int,
	DateCreated date,
	FOREIGN KEY (CustomerId) REFERENCES Customer(CustomerId),
	FOREIGN KEY (ItemId) REFERENCES Item(ItemId)
);

DROP TABLE Orders;

-- Add data
INSERT INTO dbo.Customer
(
    --CustomerId - column value is auto-generated
    CustomerName,
    City,
    Country
)
VALUES
(
    -- CustomerId - int
    'Antonio Moreno', -- CustomerName - nvarchar
    'Sydney', -- City - nvarchar
    'Australia' -- Country - nvarchar
),
(
    -- CustomerId - int
    'Ryan West', -- CustomerName - nvarchar
    'Auckland', -- City - nvarchar
    'New Zealand' -- Country - nvarchar
),
(
    -- CustomerId - int
    'Thomas Hardy', -- CustomerName - nvarchar
    'Christchurch', -- City - nvarchar
    'New Zealand' -- Country - nvarchar
)

INSERT INTO dbo.Item
(
    --ItemId - column value is auto-generated
    ItemName,
    Price
)
VALUES
(
    -- ItemId - int
    'Coffee', -- ItemName - nvarchar
    6.00 -- Price - float
),
(
    -- ItemId - int
    'Biscuits', -- ItemName - nvarchar
    2.00 -- Price - float
)

INSERT INTO dbo.Orders
(
    --OrderId - column value is auto-generated
    CustomerId,
    ItemId,
    Quantity,
    DateCreated
)
VALUES
(
    -- OrderId - int
    2, -- CustomerId - int
    2, -- ItemId - int
    1, -- Quantity - int
    '2020-05-10' -- DateCreated - date
),
(
    -- OrderId - int
    3, -- CustomerId - int
    1, -- ItemId - int
    3, -- Quantity - int
    '2020-04-23' -- DateCreated - date
)

USE Week2Exercises

-- 1
SELECT CustomerName FROM Customer;

-- 2
SELECT * FROM Customer WHERE CustomerId BETWEEN 2 AND 3

-- 3
SELECT * FROM Customer WHERE City='Sydney' OR City='Auckland'

-- 4
SELECT * FROM Orders WHERE Quantity>2 AND Quantity<5

-- 5
SELECT * FROM Customer ORDER BY City

-- 6 
SELECT * FROM Customer ORDER BY Country, City

-- 7 
SELECT Country FROM Customer

-- 8
SELECT Country, "Count"=Count(Country) FROM Customer
GROUP BY Country

-- 9
SELECT * FROM Customer AS c
INNER JOIN Orders AS o
ON c.CustomerId = o.CustomerId

-- 10
SELECT * FROM Customer AS c
CROSS JOIN Orders AS o

-- 11a
SELECT OrderId, Quantity, DateCreated FROM Orders

-- 11b
SELECT CustomerName FROM Customer

-- 11c
SELECT ItemName, Price FROM Item

-- 12
SELECT CustomerName, Price, Quantity, Total=Price*Quantity
FROM Item AS i
INNER JOIN Orders AS o
ON i.ItemId = o.ItemId
INNER JOIN Customer AS c
ON o.CustomerId = c.CustomerId


SELECT Price, Quantity, Total=Price*Quantity FROM Item AS i
INNER JOIN Orders
ON i.ItemId = Orders.ItemId

---------------

-- Orders can be access as we INNER JOIN Orders
SELECT CustomerName, Orders.OrderId FROM Customer
INNER JOIN Orders
ON Customer.CustomerId = Orders.CustomerId