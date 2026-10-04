-- Meal Prep Mobile App
-- Sample Database Data

-- Sample Customers
INSERT INTO Customers
    (CustomerID, FirstName, LastName, Email, Phone)
VALUES
    (1, 'Emma', 'Johnson', 'emma@example.com', '316-555-0101'),
    (2, 'Olivia', 'Smith', 'olivia@example.com', '316-555-0102'),
    (3, 'Noah', 'Williams', 'noah@example.com', '316-555-0103');

-- Sample Menu Items
INSERT INTO MenuItems
    (MenuItemID, ItemName, Description, Price,
     Calories, Protein, Carbs, Fat, IsAvailable)
VALUES
    (1, 'Grilled Chicken Bowl',
     'Grilled chicken with rice and vegetables',
     12.00, 520, 42, 48, 14, TRUE),

    (2, 'Taco Bowl',
     'Seasoned beef with rice, beans, and vegetables',
     11.00, 580, 35, 55, 18, TRUE),

    (3, 'Protein Pasta',
     'High-protein pasta with chicken and tomato sauce',
     13.00, 610, 45, 62, 16, TRUE),

    (4, 'Turkey Meatballs',
     'Turkey meatballs with vegetables and rice',
     12.50, 490, 40, 44, 15, FALSE);

-- Sample Orders
INSERT INTO Orders
    (OrderID, CustomerID, OrderDate,
     TotalAmount, OrderStatus, PickupLocation)
VALUES
    (101, 1, '2026-10-04', 37.00, 'Preparing', 'Main Pickup Location'),

    (102, 2, '2026-10-04', 24.00, 'Ready', 'Main Pickup Location'),

    (103, 1, '2026-10-05', 26.00, 'Received', 'Main Pickup Location');

-- Sample Order Items
INSERT INTO OrderItems
    (OrderItemID, OrderID, MenuItemID,
     Quantity, PriceAtPurchase)
VALUES
    (1, 101, 1, 2, 12.00),
    (2, 101, 3, 1, 13.00),

    (3, 102, 1, 2, 12.00),

    (4, 103, 3, 2, 13.00);
