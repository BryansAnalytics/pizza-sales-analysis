# Pizza-Sales-Analysis
# 🍕 Pizza Sales SQL Analysis

## 📌 Overview
This project analyzes pizza sales using raw transactional data. The goal was to uncover trends in revenue, product performance, and customer ordering habits using SQL.

## 🧰 Tools Used
- **MySQL** via DB Fiddle
- **Excel** (data cleaning – sample file included)
- **Tableau** (dashboard to be added)

## 📂 File Structure
- `pizza_queries.sql` – all SQL queries used in analysis
- `Pizza Sales.csv` – sample dataset
- `/images/` – screenshots of SQL results (to be added)

## 📊 Key Queries & Insights

###
```sql
1. 💰 Revenue by Pizza Size
SELECT PizzaSize, ROUND(SUM(TotalPrice), 2) AS total_revenue
FROM pizza_sales
GROUP BY PizzaSize
ORDER BY total_revenue DESC;

2. 🍕 Pizzas Sold by Category
SELECT PizzaCategory, SUM(quantity) AS total_pizzas_sold
FROM pizza_sales
GROUP BY PizzaCategory
ORDER BY total_pizzas_sold DESC;

3. ⏰ Hourly Revenue Trends
SELECT DATE_FORMAT(OrderTime, '%h %p') AS hour_am_pm,
       ROUND(SUM(TotalPrice), 2) AS hourly_revenue
FROM pizza_sales
GROUP BY hour_am_pm
ORDER BY STR_TO_DATE(hour_am_pm, '%h %p');

4. 🧾 Top 5 Pizzas by Revenue
SELECT PizzaName, ROUND(SUM(TotalPrice), 2) AS revenue
FROM pizza_sales
GROUP BY PizzaName
ORDER BY revenue DESC
LIMIT 5;

5. 📦 Total Revenue from All Orders
SELECT ROUND(SUM(TotalPrice), 2) AS total_revenue
FROM pizza_sales;

6. 🔢 Total Number of Records
SELECT COUNT(*) FROM pizza_sales;
```
## Project Summary

This dashboard analyzes pizza sales to uncover product trends, customer preferences, and operational efficiency.

### Key Insights:
- Total revenue exceeded **$817,000** across **21,000+ orders**.
- Top-selling pizzas were *Classic Deluxe* and *Barbecue Chicken*, mostly in **Large** size.
- Sales peak during **lunch (11 AM–1 PM)** and **dinner (6 PM–8 PM)**.
- Ingredients like **garlic** and **tomato** were most used, useful for supplier planning.

## 📊 Tableau Dashboard
[🔗 View the Dashboard on Tableau Public]
(https://public.tableau.com/app/profile/brayan.altamirano/viz/PizzaSalesDataset_17502051060260/Dashboard2)
(https://public.tableau.com/app/profile/brayan.altamirano/viz/PizzaSalesDataset2/Dashboard3) 

### 📁 Excel Dataset
[Download the Dataset (Excel)](Pizza_Sales.csv) 


