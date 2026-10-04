-- Meal Prep Mobile App
-- Example Database Queries

-- Query 1: Show all currently available meals
SELECT *
FROM MenuItems
WHERE IsAvailable = TRUE;


-- Query 2: Show meal names and prices
SELECT ItemName, Price
FROM MenuItems;


-- Query 3: Show all orders for a specific customer
-- Customer 1 is used as the example
SELECT *
FROM Orders
WHERE CustomerID = 1;


-- Query 4: Show orders with customer information
SELECT
    Customers.FirstName,
    Customers.LastName,
    Orders.OrderID,
    Orders.OrderDate,
    Orders.TotalAmount,
    Orders.OrderStatus
FROM Customers
JOIN Orders
    ON Customers.CustomerID = Orders.CustomerID;


-- Query 5: Show the meals contained in a specific order
-- Order 101 is used as the example
SELECT
    MenuItems.ItemName,
    OrderItems.Quantity,
    OrderItems.PriceAtPurchase
FROM OrderItems
JOIN MenuItems
    ON OrderItems.MenuItemID = MenuItems.MenuItemID
WHERE OrderItems.OrderID = 101;
