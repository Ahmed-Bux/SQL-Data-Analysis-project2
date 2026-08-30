# 🛒 Blinkit Grocery Sales Analysis Project | MySQL

## 📌 Project Overview

This project analyzes grocery sales data from Blinkit to uncover customer purchasing behavior, product performance, and outlet performance using SQL.

The objective of this project is to perform end-to-end data analysis by importing raw CSV data, cleaning inconsistencies, calculating KPIs, and generating meaningful business insights for decision making.

---

## 🛠️ Technologies Used

* MySQL
* SQL
* Data Cleaning
* Data Validation
* Data Analysis
* Business Intelligence
* KPI Reporting

---

## 📂 Dataset Information

The dataset contains information related to:

* Item Fat Content
* Item Identifier
* Item Type
* Outlet Establishment Year
* Outlet Identifier
* Outlet Location Type
* Outlet Size
* Outlet Type
* Item Visibility
* Item Weight
* Total Sales
* Customer Rating

---

## 🔄 Data Preparation and Cleaning

The following preprocessing steps were performed:

### Data Import

* Imported CSV data using `LOAD DATA INFILE`.

### Data Cleaning

* Standardized inconsistent values in `Item_Fat_Content`.
* Converted:

  * `LF` → `Low Fat`
  * `Low fat` → `Low Fat`
  * `reg` → `Regular`

### Data Validation

* Verified data types.
* Handled missing values in `Item_Weight`.
* Checked for inconsistencies in categorical fields.

---

## 📊 Key Performance Indicators (KPIs)

The following KPIs were calculated:

* Total Sales
* Average Sales
* Total Orders
* Average Rating

---

## 📈 Business Analysis Performed

### Product Analysis

* Total Sales by Fat Content
* Total Sales by Item Type
* Average Sales by Product Category
* Customer Ratings by Product Type

### Outlet Analysis

* Sales by Outlet Establishment Year
* Sales by Outlet Location Type
* Sales by Outlet Size
* Sales by Outlet Type

### Performance Metrics

* Total Orders by Segment
* Sales Contribution Percentage
* Average Ratings Across Segments

---

## 📋 SQL Concepts Used

This project demonstrates practical usage of:

* Aggregate Functions
* CASE Statements
* GROUP BY
* ORDER BY
* Window Functions
* Data Type Conversion
* CAST Function
* UPDATE Statements

---

## 🎯 Key Insights Generated

* Identified high-performing outlet types.
* Compared sales across outlet locations.
* Analyzed customer preference for low-fat and regular products.
* Evaluated the contribution of each outlet segment to total revenue.
* Measured customer satisfaction using ratings.

---

## 🚀 Project Outcome

The project transforms raw grocery sales data into actionable business insights that can be integrated with:

* Power BI
* Excel Dashboards
* Tableau

The generated insights help businesses understand customer preferences and improve operational decisions.

---

## 👨‍💻 Author

**Ahmed Bux**

### Skills Demonstrated

* SQL
* MySQL
* Excel
* Power BI
* Python
* Pandas
* NumPy
* Matplotlib
* Data Cleaning
* Data Analysis
* Business Intelligence
* Data Visualization

---

## ⭐ If you found this project useful, consider giving it a star on GitHub.
