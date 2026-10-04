-- Meal Prep Mobile App Database
-- Initial Database Schema

-- Customers table
-- Stores customer account and contact information
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL,
    Phone VARCHAR(20)
);

-- MenuItems table
-- Stores meals that can be displayed on the menu
CREATE TABLE MenuItems (
    MenuItemID INT PRIMARY KEY,
    ItemName VARCHAR(100) NOT NULL,
    Description VARCHAR(255),
    Price DECIMAL(6,2) NOT NULL,
    Calories INT,
    Protein INT,
    Carbs INT,
    Fat INT,
    IsAvailable BOOLEAN NOT NULL
);

-- Orders table
-- Stores orders placed by customers
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT NOT NULL,
    OrderDate DATE NOT NULL,
    TotalAmount DECIMAL(8,2) NOT NULL,
    OrderStatus VARCHAR(30) NOT NULL,
    PickupLocation VARCHAR(100),

    FOREIGN KEY (CustomerID)
        REFERENCES Customers(CustomerID)
);

-- OrderItems table
-- Connects individual meals to an order
CREATE TABLE OrderItems (
    OrderItemID INT PRIMARY KEY,
    OrderID INT NOT NULL,
    MenuItemID INT NOT NULL,
    Quantity INT NOT NULL,
    PriceAtPurchase DECIMAL(6,2) NOT NULL,

    FOREIGN KEY (OrderID)
        REFERENCES Orders(OrderID),

    FOREIGN KEY (MenuItemID)
        REFERENCES MenuItems(MenuItemID)
);
