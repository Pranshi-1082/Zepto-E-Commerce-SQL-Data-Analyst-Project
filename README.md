# 🛒 Zepto E-commerce SQL Data Analyst Portfolio Project

This is a **complete, real-world Data Analyst portfolio project** based on an e-commerce inventory dataset scraped from **Zepto** — one of India’s fastest-growing quick-commerce startups.

The project simulates real analyst workflows, from raw data exploration to business-focused SQL analysis.

---

## 📌 Project Overview

The goal of this project is to replicate how data analysts in **e-commerce and retail companies** use SQL to support data-driven decision-making.

In this project, SQL is used to:

- ✅ Set up a **messy, real-world e-commerce inventory database**
- ✅ Perform **Exploratory Data Analysis (EDA)** to analyze:
  - Product categories
  - Stock availability
  - Pricing inconsistencies
- ✅ Apply **Data Cleaning techniques**:
  - Handle NULL values
  - Remove invalid entries
  - Convert pricing from **paise to rupees (₹)**
- ✅ Write **business-driven SQL queries** to derive insights related to:
  - Pricing strategies
  - Inventory health
  - Stock availability
  - Revenue contribution

---

## 📁 Dataset Overview

The dataset was sourced from **Kaggle** and originally scraped from Zepto’s official product listings.  
It closely resembles a **real-world e-commerce inventory system**, including inconsistencies and duplicate product names.

Each row represents a unique **ID**.  
Duplicate product names exist because the same product may appear multiple times with different:
- Package sizes
- Weights
- Discounts
- Items 

This mirrors how real e-commerce catalogs are structured.

---

## 🧾 Dataset Columns

| Column Name | Description |
|------------|-------------|
| **id** | Unique identifier for each product entry (Synthetic Primary Key) |
| **name** | Product name as listed on the app |
| **Items** | Product category (Fruits, Snacks, Beverages, etc.) |
| **mrp** | Maximum Retail Price (converted from paise to ₹) |
| **discountPercent** | Discount applied on MRP |
| **discountedSellingPrice** | Final selling price after discount (₹) |
| **availableQuantity** | Units available in inventory |
| **weightInGms** | Product weight in grams |
| **outOfStock** | Boolean flag indicating stock availability |
| **quantity** | Units per package (mixed with grams for loose produce) |

---

## 🛠 Tools & Technologies

- SQL
- Relational Database
- Git & GitHub

---## 🔧 Project Workflow

Here’s a step-by-step breakdown of what was done in this project:

---

### 1. Database & Table Creation
- Created a dedicated database for the Zepto inventory analysis.
- Designed tables aligned with the dataset structure.
- Assigned appropriate data types for pricing, quantity, and categorical fields.

---

### 2. Data Import
- Imported the CSV dataset using **pgAdmin’s import feature**.
- Verified successful data load by checking row counts and sample records.

---

### 3. 🔍 Data Exploration
- Counted the total number of records in the dataset.
- Viewed a sample of rows to understand data structure and attributes.
- Checked for **NULL values** across all columns.
- Identified **distinct product categories** available in the dataset.
- Compared **in-stock vs out-of-stock** product counts.
- Detected products appearing multiple times, representing different SKUs.

---

### 4. 🧹 Data Cleaning
- Identified and removed rows where **MRP or discounted selling price was zero**.
- Converted **`mrp`** and **`discountedSellingPrice`** from **paise to rupees (₹)** for consistency and business readability.
- Ensured pricing and quantity columns contained valid values.

---

### 5. 📊 Business Insights
- Identified **top 10 best-value products** based on discount percentage.
- Found **high-MRP products currently out of stock**, highlighting lost revenue opportunities.
- Estimated **potential revenue** for each product category.
- Filtered **expensive products (MRP > ₹500)** with minimal discounts.
- Ranked **top 5 categories** offering the highest average discounts.
- Calculated **price per gram** to identify value-for-money products.
- Grouped products into **Low, Medium, and Bulk** categories based on weight.
- Measured **total inventory weight** for each product category.

---


## 📊 Key Business Analysis Areas

- Pricing and discount analysis
- Inventory availability and out-of-stock patterns
- Category-level performance
- Revenue-driving products
- Data quality issues in real-world catalog data

---

## 🚀 Why This Project Matters

This project demonstrates:
- Strong **SQL fundamentals**
- Ability to work with **messy, real-world data**
- Business-oriented analytical thinking
- Practical experience relevant to **Data Analyst roles**

- 
- 

---

## 📎 Author

**Pranshi**  
Aspiring Data Analyst | SQL | E-commerce Analytics

