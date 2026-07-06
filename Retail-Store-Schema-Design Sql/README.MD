# Retail Inventory, Sales & Customer Loyalty Database Architecture

## 📌 Project Overview
- **Objective:** To architect and implement a production-ready relational database schema for a local grocery retail establishment to seamlessly track product logistics, live point-of-sale transactional streams, and dynamic customer loyalty tracking metrics.
- **Organization Type:** Independent Retail Grocery Outlets / Corner Shops / Convenience Stores.
- **Business Value:** Replaces fragmented tracking approaches with an integrated, automated data engine. Front-line cashiers gain reliable transaction processing speeds, while management gains explicit stock visibility tools to eliminate item stockouts on critical grocery staples.

## 📐 Entity Relationship Diagram (ERD) & Relational Mapping
The business domain model is mapped across four foundational relational data entities:
- **`Products`:** Houses primary operational inventory attributes, pricing parameters, and active volume tiers.
- **`Customers`:** Captures individual demographic attributes and profiles for participants actively enrolled in the company rewards program.
- **`Sales` & `Sales_Items`:** Models business transactions via a optimized relational structure. The `Customers` table maintains a **one-to-many** link with the `Sales` header file. To elegantly bridge the complex **many-to-many** association between distinct transactional lines and variable stock lines, a high-performance junction table (`Sales_Items`) was built to break down multi-item checkout bills.

## 🛡️ Database Verification & Maintenance Strategy
- **Data Integrity Enforcement:** Deployed rigid structural safeguards (such as `NOT NULL` rules and strict key definitions) to preserve database cleanliness and prevent structural entry corruption over time.
- **Role-Based Access Control (RBAC):** Established restricted privilege tiers, ensuring store cashiers can only query relevant localized point-of-sale pathways while limiting high-level financial ledgers strictly to administrative management profiles.
- **Disaster Recovery Strategy:** Configured daily automated data backup procedures directed to isolated cloud targets, establishing a reliable recovery point objective (RPO) to insulate store operations against hardware failures or system issues.

## 💻 SQL Script Execution Blueprint
The underlying transactional code for this schema is compiled in the `retail_database_setup.sql` script within this folder, featuring key declarative commands:

1. **Schema Initialization (`CREATE TABLE`):** Establishes primary data containers, data formats, and structural links between tables.
   ```sql
   CREATE TABLE Products (
       ProductID INT PRIMARY KEY, 
       Name VARCHAR(100), 
       Price DECIMAL(10,2), 
       StockQuantity INT
   );
