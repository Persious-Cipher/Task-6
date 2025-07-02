# 📊 Task 6 - Sales Trend Analysis Using Aggregations

## ✅ Objective
Perform a sales trend analysis to evaluate monthly revenue and order volume using SQL aggregation techniques.

---

## 📁 Dataset
A simulated online sales dataset with the following fields:
- **Order ID**: Unique order identifier
- **Order Date**: Date when the order was placed
- **Amount**: Revenue from that order

---

## 🛠 Tools Used
- **SQL Fiddle** (SQLite engine)
- **SQL**

---

## 🧮 SQL Features Demonstrated

| Requirement                                       | Implemented In |
|--------------------------------------------------|----------------|
| a. Extracting month and year from date           | `strftime('%m', "Order Date")`, `strftime('%Y', ...)` |
| b. Grouping by year and month                    | `GROUP BY year, month` |
| c. Calculating total revenue                     | `SUM("Amount")` |
| d. Counting distinct orders                      | `COUNT(DISTINCT "Order ID")` |
| e. Sorting results chronologically               | `ORDER BY year, month` |
| f. Filtering for specific time periods           | `WHERE strftime('%Y', "Order Date") = '2023'` |

---

🧑‍💻 Submitted By
Pratham Kumar Prasad
