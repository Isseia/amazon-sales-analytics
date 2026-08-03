# amazon-sales-analytics
An end-to-end Business Intelligence project analyzing Amazon e-commerce sales using PostgreSQL and Power BI. Features SQL data cleaning, interactive dashboards, KPI tracking, sales forecasting, and actionable business insights.

# 🛒 Amazon E-Commerce Sales Dashboard

## 📌 Project Overview

This project presents an end-to-end Business Intelligence solution for analyzing Amazon e-commerce sales data using **PostgreSQL** and **Microsoft Power BI**. The objective is to transform raw transactional data into actionable business insights that support strategic decision-making in sales, operations, inventory, and demand forecasting.

The workflow includes data cleaning, SQL-based exploratory analysis, data modeling, DAX calculations, interactive dashboard development, and business insight generation.

---

# 🎯 Business Objectives

This dashboard answers key business questions such as:

* How much revenue was generated?
* Which products contribute the most sales?
* Which states generate the highest revenue?
* What are the cancellation and return trends?
* Which fulfillment methods perform better?
* How do monthly sales change over time?
* What are the expected future sales based on historical trends?

---

# 🛠️ Tools & Technologies

| Tool               | Purpose                            |
| ------------------ | ---------------------------------- |
| PostgreSQL         | Data storage and SQL analysis      |
| SQL                | Data cleaning and business queries |
| Microsoft Power BI | Dashboard development              |
| Power Query        | Data transformation                |
| DAX                | Calculated measures and KPIs       |
| GitHub             | Version control and portfolio      |

---

# 📂 Dataset

The dataset contains Amazon e-commerce order transactions including:

* Order ID
* Order Date
* Product Category
* Product Style
* Product SKU
* ASIN
* Size
* Quantity
* Sales Amount
* Fulfillment Method
* Order Status
* Shipping State
* Shipping City
* Shipping Postal Code
* Shipping Country
* Courier Status
* Promotion Used
* Business-to-Business (B2B) Indicator

---

# 🗄️ Data Preparation

Before creating the dashboard, the dataset was cleaned and transformed using SQL.

The preparation included:

* Removing duplicate records
* Handling missing values
* Standardizing data types
* Cleaning text fields
* Check for negative quantities
* Creating calculated columns
* Formatting dates
* Preparing tables for Power BI

---

# 📊 Dashboard Pages

## 1. Executive Overview

Provides a high-level summary of business performance through key performance indicators.

### KPIs

* Total Revenue
* Total Orders
* Total Units Sold
* Cancellation Rate
* Average Order Value

Visualizations include:

* Monthly Revenue Trend
* Revenue by Category
* Geographic Sales Distribution
* Top Performing Products
* Executive Insights

---

## 2. Product Analysis

Focuses on product performance.

Includes:

* Revenue by Category
* Top Selling SKUs
* Product Size Distribution
* Category Comparison
* Revenue Contribution by Product

---

## 3. Operations Dashboard

Analyzes operational efficiency.

Includes:

* Fulfillment Performance
* Cancellation Analysis
* Order Status Distribution
* Courier Performance
* Regional Operations

---

## 4. Sales Forecast

Provides predictive analysis using historical sales.

Includes:

* Historical Revenue Trend
* Forecasted Sales
* Confidence Interval
* Seasonal Trend Analysis

---

# 📈 Key Performance Indicators

The dashboard tracks several important business metrics:

* Total Revenue
* Total Orders
* Total Quantity Sold
* Average Order Value
* Cancellation Rate
* Revenue Lost
* Top Selling Category
* Top Selling SKU
* Monthly Growth
* State-wise Revenue

---

# 🔍 Business Insights

## Revenue Performance

Revenue shows clear monthly trends, indicating periods of increased customer demand. These trends can support marketing campaign planning and inventory allocation.

## Product Performance

A relatively small group of products contributes the majority of total revenue, demonstrating the Pareto Principle (80/20 Rule). Focusing inventory management on these products can improve profitability.

## Fulfillment Analysis

Merchant Fulfilled orders exhibit a higher cancellation rate than Amazon Fulfilled orders, suggesting opportunities to improve inventory management and shipping efficiency.

## Geographic Analysis

Sales are concentrated in several high-performing states, highlighting opportunities for targeted marketing and regional inventory optimization.

## Forecasting

Sales forecasting indicates continued demand growth based on historical trends, allowing proactive inventory planning and resource allocation.

---

# 💡 Business Recommendations

Based on the analysis:

* Increase inventory levels for high-performing products.
* Reduce cancellations through improved fulfillment processes.
* Focus marketing campaigns on high-revenue regions.
* Expand promotions during peak sales periods.
* Monitor underperforming categories for pricing or product optimization.
* Use demand forecasting to improve inventory planning.

---

# 📷 Dashboard Preview

> Replace the placeholders below with screenshots from your Power BI report.

```
images/
│── overview.png
│── products.png
│── operations.png
│── forecast.png
```

---

# 📁 Repository Structure

```
Amazon-Ecommerce-Dashboard/
│
├── E-Commerce.pbix
├── Amazon Sales Report.csv
├── SQL
│   ├── 01_create_table.sql
│   ├── 02_import_data.sql
│   ├── 03_data_cleaning.sql
│   ├── 04_data_validation.sql
│   ├── 05_analysis_queries.sql
│   ├── 06_views.sql 
│   ├── 07_forecast_queries.sql 
├── Images
│   ├── overview.png
│   ├── products.png
│   ├── operations.png
│   └── forecast.png
│
├── README.md
└── LICENSE
```

---

# 🚀 Skills Demonstrated

* SQL Data Cleaning
* SQL Aggregation
* SQL Joins
* Common Table Expressions (CTEs)
* Window Functions
* Data Modeling
* Power Query
* DAX Measures
* KPI Development
* Interactive Dashboard Design
* Forecasting
* Business Intelligence
* Data Storytelling
* Data Visualization

---

# 📚 Future Improvements

Potential enhancements include:

* Customer segmentation using RFM analysis.
* Profitability analysis by product category.
* Customer retention and repeat purchase metrics.
* Inventory turnover analysis.
* Shipping performance by courier.
* Interactive drill-through pages.
* Automated dashboard refresh using Power BI Service.

---

# 👤 Author

**Jhonas Mariano**

Aspiring Data Analyst with experience in SQL, PostgreSQL, Python, Power BI, and data visualization. Passionate about transforming raw data into actionable business insights through interactive dashboards and analytical reporting.

---

## ⭐ If you found this project useful, consider giving the repository a star!
