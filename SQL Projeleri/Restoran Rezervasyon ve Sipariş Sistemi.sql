CREATE TABLE Customers(
	CustomerID INT PRIMARY KEY IDENTITY(1,1),
	Name NVARCHAR(100) NOT NULL,
	phone NVARCHAR(20),
	Email NVARCHAR(100)
);

CREATE TABLE Tabless(
	TableID INT PRIMARY KEY IDENTITY(1,1),
	TableNumber INT NOT NULL,
	Capacity INT NOT NULL
);

CREATE TABLE Reservations(
	ReservationID INT PRIMARY KEY IDENTITY(1,1),
	CustomerID INT NOT NULL,
	TableID INT NOT NULL,
	ReservationDate DATE NOT NULL,
	ReservationTime TIME NOT NULL,
	NumberOfGuest INT NOT NULL,
	FOREIGN KEY(CustomerID) REFERENCES Customers(CustomerID),
	FOREIGN KEY(TableID) REFERENCES Tabless(TableID)
);

CREATE TABLE MenuItems(
	MenuItemID INT PRIMARY KEY IDENTITY(1,1),
	Namee NVARCHAR(100) NOT NULL,
	Descriptionn NVARCHAR(255),
	Price DECIMAL(10,2) NOT NULL,
	Category NVARCHAR(50)
);

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY IDENTITY(1,1),
    ReservationID INT NOT NULL,
    OrderDateTime DATETIME NOT NULL DEFAULT GETDATE(),
    TotalAmount DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (ReservationID) REFERENCES Reservations(ReservationID)
);

CREATE TABLE OrderDetails (
    OrderDetailID INT PRIMARY KEY IDENTITY(1,1),
    OrderID INT NOT NULL,
    MenuItemID INT NOT NULL,
    Quantity INT NOT NULL,
    Price DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (MenuItemID) REFERENCES MenuItems(MenuItemID)
);

INSERT INTO Customers (Name, Phone, Email) VALUES
('Ali Boran Kýzgýr', '05551234567', 'boran4562@gmail.com'),
('Atýf Sekmen', '05559876543', 'atýf545@gmail.com');

INSERT INTO Tabless (TableNumber, Capacity) VALUES
(1, 4),
(2, 2),
(3, 6);

INSERT INTO MenuItems (Namee, Descriptionn, Price, Category) VALUES
('iþkembe', 'mercimek çorbasý', 20.00, 'Çorba'),
('iskender', ' kuru fasulye', 35.00, 'Ana Yemek'),
('Baklava', 'soðuk baklava', 25.00, 'Tatlý');

INSERT INTO Reservations (CustomerID, TableID, ReservationDate, ReservationTime, NumberOfGuest) VALUES
(1, 1, '2025-02-11', '19:00', 4),
(2, 2, '2025-06-15', '20:00', 2);

INSERT INTO Orders (ReservationID, OrderDateTime, TotalAmount) VALUES
(1, '2025-02-11 19:24', 145.00),
(2, '2025-06-15 20:58', 100.00);

INSERT INTO OrderDetails (OrderID, MenuItemID, Quantity, Price) VALUES
(1, 1, 2, 20.00),
(1, 2, 2, 35.00),
(2, 3, 1, 25.00),
(2, 1, 1, 20.00);

-- Belirli bir tarih için rezervasyonlar ve müþteri bilgileri
SELECT r.ReservationID, c.Name, t.TableID, r.ReservationDate, r.ReservationTime, r.NumberOfGuest
FROM Reservations r
JOIN Customers c ON r.CustomerID = c.CustomerID
JOIN Tabless t ON r.TableID = t.TableID
WHERE r.ReservationDate = '2025-02-11';

-- Günlük satýþ raporu
SELECT CAST(o.OrderDateTime AS DATE) AS SaleDate, SUM(o.TotalAmount) AS TotalSales
FROM Orders o
GROUP BY CAST(o.OrderDateTime AS DATE)
ORDER BY SaleDate;
