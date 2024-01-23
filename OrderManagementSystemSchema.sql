USE master;
GO

-- Check if the database exists and drop it if it does
IF EXISTS(SELECT * FROM sys.databases WHERE name = 'OrderManagementSystem')
BEGIN
    DROP DATABASE OrderManagementSystem;
END
GO

-- Create the database
CREATE DATABASE OrderManagementSystem;
GO

USE OrderManagementSystem;
GO

-- Create the Customer table
CREATE TABLE Customer (
    ID INT PRIMARY KEY IDENTITY(1,1),
    Name NVARCHAR(100),
    Email NVARCHAR(100),
    ContactNumber NVARCHAR(20)
);
GO

-- Create the Product table
CREATE TABLE Product (
    ID INT PRIMARY KEY IDENTITY(1,1),
    Name NVARCHAR(100),
    Price DECIMAL(10, 2),
    Category NVARCHAR(100),
    StockQuantity INT
);
GO

-- Create the Order table
CREATE TABLE [Order] (
    ID INT PRIMARY KEY IDENTITY(1,1),
    CustomerID INT,
    ProductID INT,
    Quantity INT,
    OrderDate DATETIME,
    Status NVARCHAR(50), -- Consider changing to INT if using an ENUM for status.
    CONSTRAINT FK_Order_Customer FOREIGN KEY (CustomerID) REFERENCES Customer(ID),
    CONSTRAINT FK_Order_Product FOREIGN KEY (ProductID) REFERENCES Product(ID)
);
GO
