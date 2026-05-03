# 🧪 Database Testing Workspace

## 📌 Overview
This folder contains the SQL workspace used for database testing of the OpenCart system.

The goal of this workspace is to validate:
- Data integrity
- Order processing correctness
- Product and category relationships
- Customer module behavior
- System and security validations
- Negative test cases

---

## 📂 Files Description

### 📄 queries.sql
This file contains all SQL queries used during database testing.

The queries are organized into the following modules:

- 🟢 Order & Cart Module
- 🔵 Product & Category Module
- 🔴 Negative & Edge Cases
- 🟣 System & Configuration Module
- 🟢 Data Integrity Checks
- 🟡 Customer Module

Each query was executed in phpMyAdmin (MySQL via XAMPP) to validate system behavior.

---

## 🧪 Testing Approach
- Manual SQL execution via phpMyAdmin
- Validation of expected result
- Referential integrity checks
- Boundary & negative testing
- Security-related checks (SQL injection simulation)

---

## ⚙️ Environment
- XAMPP Server
- phpMyAdmin Interface
- OpenCart Local Installation
