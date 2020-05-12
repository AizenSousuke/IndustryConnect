-- Select what you want to show in the output
SELECT orders.customerid, customers.customerid, customername, orderid
-- from where
FROM orders
    -- Note: The INNER JOIN keyword selects 
    -- all rows from both tables as long as 
    -- there is a match between the columns. 
    -- If there are records in the "Orders" 
    -- table that do not have matches in 
    -- "Customers", these orders will not be shown!
    inner join customers
    -- Whatever row that satisfies the following equation is shown
    on orders.customerid == customers.customerid


-- To join 3 tables:
SELECT Orders.OrderID, Customers.CustomerName, Shippers.ShipperName
FROM Orders
    INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID
    INNER JOIN Shippers ON Orders.ShipperID = Shippers.ShipperID
