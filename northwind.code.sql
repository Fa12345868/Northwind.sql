USE Northwind;

DROP TABLE IF EXISTS Employee ; 
CREATE TABLE Employee (
    employee_id INT PRIMARY KEY,
    last_name VARCHAR(30),
    first_name VARCHAR(30),
    title VARCHAR(30),
    title_of_courtesy VARCHAR(30),
    birth_date DATETIME,
    hire_date DATETIME,
    address VARCHAR(30),
    city VARCHAR(30),
    region VARCHAR(30),
    postal_code VARCHAR(30),
    country VARCHAR(30),
    home_phone VARCHAR(30),
    extension VARCHAR(30),
    notes MEDIUMTEXT,
    reports_to INT,
    photo_path VARCHAR(30),
    salary FLOAT
);

DROP TABLE IF EXISTS Shippers;
CREATE TABLE Shippers (
    shipper_id INT PRIMARY KEY,
    company_name VARCHAR(30),
    phone VARCHAR(30)
);

SET FOREIGN_KEY_CHECKS = 0;
DROP TABLE IF EXISTS customers;
SET FOREIGN_KEY_CHECKS = 1;
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(30),
    contact_name VARCHAR(30),
    contact_title VARCHAR(30),
    address VARCHAR(30),
    city VARCHAR(30),
    region VARCHAR(30),
    country VARCHAR(30),
    phone VARCHAR(30),
    fax VARCHAR(30)
);

DROP TABLE IF EXISTS Customer_Demo;
CREATE TABLE Customer_Demo (
    customer_id INT,
    customer_type VARCHAR(30),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

DROP TABLE IF EXISTS Products;
CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(30),
    supplier_id INT,
    category_id INT,
    quantity_per_unit VARCHAR(30),
    unit_price DECIMAL(10,2),
    units_in_stock SMALLINT,
    units_on_order SMALLINT,
    reorder_level SMALLINT,
    discontinued BIT
);

DROP TABLE IF EXISTS Region;
CREATE TABLE Region (
    region_id INT PRIMARY KEY,
    region_description VARCHAR(30)
);

DROP TABLE IF EXISTS Customer_Demographics;
CREATE TABLE Customer_Demographics (
    customer_type_id VARCHAR(30) PRIMARY KEY,
    customer_desc MEDIUMTEXT
); 

CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    employee_id INT,
    order_date DATETIME,
    required_date DATETIME,
    shipped_date DATETIME,
    ship_via INT,
    freight DECIMAL(8,2),
    ship_name VARCHAR(30),
    ship_address VARCHAR(30),
    ship_city VARCHAR(30),
    ship_region VARCHAR(30),
    ship_postal_code VARCHAR(30),
    ship_country VARCHAR(30),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (employee_id) REFERENCES Employee(employee_id),
    FOREIGN KEY (ship_via) REFERENCES Shippers(shipper_id)
);

CREATE TABLE Order_Details (
    order_id INT,
    product_id INT,
    unit_price DECIMAL(10,2),
    quantity SMALLINT,
    discount DOUBLE(8,2),
    PRIMARY KEY (order_id, product_id),
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);

CREATE TABLE Territories (
    territory_id INT PRIMARY KEY,
    territory_description VARCHAR(100),
    region_id INT,
    FOREIGN KEY (region_id) REFERENCES Region(region_id)
);

CREATE TABLE Employee_Territories (
    employee_id INT,
    territory_id INT,
    PRIMARY KEY (employee_id, territory_id),
    FOREIGN KEY (employee_id) REFERENCES Employee(employee_id),
    FOREIGN KEY (territory_id) REFERENCES Territories(territory_id)
);