-- Create this table first
CREATE TABLE Orders (
	OrderId int PRIMARY KEY IDENTITY(1,1),
	TotalCost decimal(6,2)
);

DROP TABLE dbo.Orders;

-- Create this table next
CREATE TABLE Customer (
	CustomerId int PRIMARY KEY IDENTITY(1,1),
	CustomerName nvarchar(50),
	Address nvarchar(100) NULL,
	Orders int NULL,
    -- Uses the above as the foreign key
	FOREIGN KEY (Orders) REFERENCES Orders(OrderId)
);

DROP TABLE dbo.Customer;