# 🍕 The Great Pizza Analytics Challenge

![MySQL](https://img.shields.io/badge/mysql-4479A1.svg?style=for-the-badge&logo=mysql&logoColor=white)
![SQL](https://img.shields.io/badge/SQL-Database-blue?style=for-the-badge)
![Data Analysis](https://img.shields.io/badge/Data%20Analysis-Insights-green?style=for-the-badge)
![Status](https://img.shields.io/badge/Status-Completed-brightgreen?style=for-the-badge)

> **Transforming raw pizza sales data into actionable business insights using advanced SQL techniques.**

---

## 📖 Table of Contents
- [About the Project](#-about-the-project)
- [Repository Structure](#-repository-structure)
- [Database Schema](#-database-schema)
- [Problem Statement](#-problem-statement)
- [SQL Skills Demonstrated](#-sql-skills-demonstrated)
- [Key Insights](#-key-insights)
- [How to Run](#-how-to-run)
- [Acknowledgements](#-acknowledgements)

---

## 🍕 About the Project

Welcome to the **IDC Pizza Analytics** project! This repository contains the solution for the **"Great Pizza Analytics Challenge"** organized by the **Indian Data Club (IDC)** and **DPDzero**.

As the lead Data Analyst for *IDC Pizza*, the goal was to analyze transactional data to improve decision-making.  
The project involves:

- Setting up a relational database  
- Cleaning and validating raw data  
- Executing complex SQL queries  
- Answering real business questions related to sales, customer behavior, and product performance  

---

## 📂 Repository Structure

```IDC-Pizza-Analytics-SQL/
│
├── data/                      # Raw CSV dataset
│   ├── orders.csv
│   ├── order_details.csv
│   ├── pizzas.csv
│   └── pizza_types.csv
│
├── sql_scripts/               # SQL source code for analysis
│   ├── 1_database_setup.sql   # Schema creation & table definitions
│   └── 2_analysis_queries.sql # Solutions to Phase 1, 2, and 3
│
├── submission/                # Final Submission CSV file
│   └── Firstname_Lastname_IDC_Pizza_Submission.csv
│
└── README.md                  # Project documentation
```

---

## 🗄️Database Schema

The project is built using a relational schema with **four interconnected tables**:

| Table Name       | Description |
|------------------|-------------|
| **orders**        | Contains timestamps (date, time) for each order |
| **order_details** | Links each order with specific pizzas & quantities |
| **pizzas**        | Holds price, size, and pizza variant information |
| **pizza_types**   | Catalog of pizza names, categories, and ingredients |

---

## ❓ Problem Statement

The challenge required solving **14 business questions** split into three analytical phases:

### **Phase 1: Foundation & Inspection**
- Understand the structure of each table  
- Identify missing values using `COALESCE()`  
- Perform data audits  

### **Phase 2: Filtering & Exploration**
- Find insights based on:
  - Date range filtering  
  - Price range filtering  
  - Category-based extraction  
  - Pattern matching using `LIKE`  

### **Phase 3: Sales Performance & Analytics**
- Calculate revenue  
- Identify best-selling products  
- Determine peak sales periods  
- Compare sizes & categories  
- Find inventory or pricing gaps  

---

## 🧠 SQL Skills Demonstrated

This project utilizes multiple SQL concepts:

- **DDL Operations**
  - Creating schemas, tables, constraints (PK, FK)

- **Data Cleaning**
  - Handling NULLs using `COALESCE()`
  - Removing duplicates using `DISTINCT`

- **Complex Joins**
  - `INNER JOIN`, `LEFT JOIN`, multi-table joins (up to 3 tables)

- **Aggregations**
  - `SUM()`, `AVG()`, `COUNT()`
  - Grouped insights using `GROUP BY` and `HAVING`

- **Advanced Filtering**
  - Pattern searches using `LIKE`
  - Date and time functions
  - Logical operators for multi-condition queries

---

## 📊 Key Insights

The analysis produced several actionable insights:

- **Sales Trends:**  
  Identified peak order times and the most profitable days.

- **Product Performance:**  
  Determined best-selling pizza categories and sizes.

- **Pricing Strategy:**  
  Compared price differences across sizes of the same pizza type to evaluate margin opportunities.

> For full SQL code, check:  
> `sql_scripts/2_analysis_queries.sql`

---

## 🚀 How to Run

### **1. Clone the Repository**

`git clone https://github.com/YOUR_USERNAME/IDC-Pizza-Analytics-SQL.git`

### **2. Set Up the Database**
 Open MySQL Workbench

 Run `sql_scripts/1_database_setup.sql`
 
 Import all CSV files from the data folder using the Table Import Wizard

### **3. Execute Analysis**
 Open `sql_scripts/2_analysis_queries.sql`

 Run each query to generate insights


## 🤝 Acknowledgements
Special thanks to the organizers:
- **Indian Data Club (IDC)**
- **DPDzero**

<div align="center">

### **Created by Tharun Pranav T**

<a href="https://www.linkedin.com/in/tharunpranavt">
  <img src="https://img.shields.io/badge/LinkedIn-Connect-blue?style=for-the-badge&logo=linkedin" alt="LinkedIn Badge"/>
</a>

</div>
