# Northwind.sql

# 🗃️ Northwind-Inspired SQL Database Design

This project contains a SQL schema based on the Northwind database structure, created and tested using **MySQL** and **Jupyter Notebook**.

---

## 📌 Project Overview

This project demonstrates:

- Designing a relational database schema in SQL
- Creating normalized tables with primary and foreign keys
- Modeling real-world entities such as Employees, Customers, Orders, Products, and Territories
- Visualizing relationships with an **ER Diagram**
- Running queries in **Jupyter Notebook** using `%sql` and `%%sql`

---

## 🧱 Tables Included

- `Employee`
- `Customers`
- `Orders`
- `Order_Details`
- `Products`
- `Shippers`
- `Region`
- `Territories`
- `Customer_Demo`
- `Customer_Demographics`
- `Employee_Territories`

---

## 📊 ER Diagram

![ER Diagram](./ERD.png)

> This diagram visualizes the relationships between the main tables, including one-to-many and many-to-many relationships.

---

## 🧪 Sample Queries

You’ll find a Jupyter Notebook that runs basic queries such as:

```sql
%%sql
SELECT * FROM Employee;

BY :
FATMA BADAWY 
