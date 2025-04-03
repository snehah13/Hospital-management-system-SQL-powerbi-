# Hospital-management-system-SQL-powerbi

# Hospital Management System Database

## 📌 Overview
This project contains a **Hospital Management System** database that helps in managing doctors, patients, appointments, and prescriptions efficiently. The database is designed using **MySQL** and includes tables, relationships, and queries to perform key operations.

## 📂 Project Structure
```
/hospital-management-system
│── db_dump/
│   ├── patients.csv
│   ├── doctors.csv
│── scripts/
│   ├── data_import.sh
│── hospital_management_system.sql
│── hospital_mNgement_system.sql
│── queries.sql
│── schemadiagram.png
│── README.md
│── LICENSE
```

## 🛠️ Setup Instructions
### 1️⃣ Prerequisites
- Install **MySQL Server** (Version 8.0+ recommended)
- Install a MySQL client (e.g., MySQL Workbench, phpMyAdmin, or command-line tools)

### 2️⃣ Import the Database
To set up the database, follow these steps:

#### Using MySQL Command Line:
```sql
CREATE DATABASE hospital_management;
USE hospital_management;
SOURCE hospital_management_system.sql;
```

#### Using MySQL Workbench/ MySQL Server:
1. Open MySQL Workbench.
2. Create a new schema named **hospital_management**.
3. Go to **File > Open SQL Script**, select `hospital_management_system.sql`.
4. Run the script.

## 📊 Database Schema
![schemadiagram](https://github.com/user-attachments/assets/c11c3225-d07a-4e88-a802-9800b2c115a1)


## 🔍 SQL Queries
The `queries.sql` file contains useful SQL queries, including:
- Retrieving doctors without appointments
- Finding the most common disease
- Getting the latest prescriptions
- Using subqueries & window functions for analytics

## 💡 Features
- **Doctors & Patients Management**
- **Appointments & Scheduling**
- **Medical Prescriptions**
- **Comprehensive SQL Queries**

## 📜 License
This project is licensed under the **MIT License**. Feel free to modify and use it!
---
## Author
snehah13


