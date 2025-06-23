-- Sample data for Employee table
INSERT INTO Employee VALUES
(1, 'Smith', 'John', 'Manager', 'Mr.', '1980-01-01', '2005-06-01', '123 Main St', 'New York', 'NY', '10001', 'USA', '555-1234', '101', 'Good manager', NULL, '/photos/smith.jpg', 60000.0),
(2, 'Johnson', 'Emily', 'Sales Rep', 'Ms.', '1985-02-14', '2008-03-21', '456 Park Ave', 'Los Angeles', 'CA', '90001', 'USA', '555-5678', '102', 'Top sales performer', 1, '/photos/johnson.jpg', 48000.0),
(3, 'Williams', 'David', 'Developer', 'Mr.', '1990-03-20', '2012-11-15', '789 Broadway', 'Chicago', 'IL', '60601', 'USA', '555-8765', '103', 'Expert coder', 1, '/photos/williams.jpg', 52000.0),
(4, 'Brown', 'Linda', 'HR', 'Ms.', '1982-04-10', '2010-01-10', '101 Elm St', 'Houston', 'TX', '77001', 'USA', '555-3456', '104', 'Great at recruitment', 1, '/photos/brown.jpg', 45000.0),
(5, 'Jones', 'Michael', 'Accountant', 'Mr.', '1979-05-22', '2007-04-23', '202 Oak St', 'Dallas', 'TX', '75001', 'USA', '555-6543', '105', 'Accurate and fast', 2, '/photos/jones.jpg', 47000.0);

-- Sample data for Shippers table
INSERT INTO Shippers VALUES
(1, 'Speedy Express', '555-0011'),
(2, 'United Package', '555-0022'),
(3, 'Federal Shipping', '555-0033'),
(4, 'Quick Ship', '555-0044'),
(5, 'Blue Dart', '555-0055');

-- Sample data for Customers table
INSERT INTO Customers VALUES
(1, 'Alpha Corp', 'Alice Smith', 'Manager', '1 Main St', 'New York', 'NY', 'USA', '212-555-1111', '212-555-1112'),
(2, 'Beta LLC', 'Bob Johnson', 'Owner', '2 Park Ave', 'Los Angeles', 'CA', 'USA', '213-555-2222', '213-555-2223'),
(3, 'Gamma Inc', 'Carol Lee', 'Director', '3 Elm St', 'Chicago', 'IL', 'USA', '312-555-3333', '312-555-3334'),
(4, 'Delta Co', 'David Kim', 'CEO', '4 Oak St', 'Miami', 'FL', 'USA', '305-555-4444', '305-555-4445'),
(5, 'Epsilon Ltd', 'Eve Davis', 'CFO', '5 Pine St', 'Seattle', 'WA', 'USA', '206-555-5555', '206-555-5556');

-- Sample data for Customer_Demo table
INSERT INTO Customer_Demo VALUES
(1, 'Retail'),
(2, 'Wholesale'),
(3, 'Distributor'),
(4, 'Retail'),
(5, 'Wholesale');

-- Sample data for Products table
INSERT INTO Products VALUES
(1, 'Chai', 1, 1, '10 boxes', 18.00, 39, 0, 10, 0),
(2, 'Chang', 1, 1, '24 bottles', 19.00, 17, 40, 25, 1),
(3, 'Aniseed Syrup', 1, 2, '12 bottles', 10.00, 13, 70, 25, 0),
(4, 'Chef Anton''s Cajun Seasoning', 2, 2, '48 boxes', 22.00, 53, 0, 0, 1),
(5, 'Chef Anton''s Gumbo Mix', 2, 2, '36 boxes', 21.35, 0, 0, 0, 1);

-- Sample data for Region table
INSERT INTO Region VALUES
(1, 'Eastern'),
(2, 'Western'),
(3, 'Northern'),
(4, 'Southern'),
(5, 'Central');

-- Sample data for Customer_Demographics table
INSERT INTO Customer_Demographics VALUES
('A', 'Retail customers'),
('B', 'Wholesalers'),
('C', 'Distributors'),
('D', 'Online customers'),
('E', 'Corporate accounts');

-- Sample data for Orders table
INSERT INTO Orders VALUES
(1, 1, 1, '2024-01-10', '2024-01-15', '2024-01-12', 1, 32.50, 'Alpha Corp', '1 Main St', 'New York', 'NY', '10001', 'USA'),
(2, 2, 2, '2024-01-11', '2024-01-16', '2024-01-13', 2, 45.00, 'Beta LLC', '2 Park Ave', 'Los Angeles', 'CA', '90001', 'USA'),
(3, 3, 3, '2024-02-05', '2024-02-10', '2024-02-07', 3, 21.00, 'Gamma Inc', '3 Elm St', 'Chicago', 'IL', '60601', 'USA'),
(4, 4, 4, '2024-03-12', '2024-03-18', '2024-03-15', 4, 15.75, 'Delta Co', '4 Oak St', 'Miami', 'FL', '33101',
