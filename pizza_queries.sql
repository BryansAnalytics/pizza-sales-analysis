-- Total revenue by pizza size
SELECT PizzaSize, ROUND(SUM(TotalPrice), 2) AS total_revenue
FROM pizza_sales
GROUP BY PizzaSize
ORDER BY total_revenue DESC;

-- Total pizzas sold by category
SELECT PizzaCategory, SUM(quantity) AS total_pizzas_sold
FROM pizza_sales
GROUP BY PizzaCategory
ORDER BY total_pizzas_sold DESC;

-- Total revenue by order
SELECT OrderID, ROUND(SUM(TotalPrice), 2) AS order_total
FROM pizza_sales
GROUP BY OrderID
ORDER BY order_total DESC;

-- Hourly revenue breakdown
SELECT DATE_FORMAT(OrderTime, '%h %p') AS hour_am_pm,
       ROUND(SUM(TotalPrice), 2) AS hourly_revenue
FROM pizza_sales
GROUP BY hour_am_pm
ORDER BY STR_TO_DATE(hour_am_pm, '%h %p');

-- Top 5 pizzas by revenue
SELECT PizzaName, ROUND(SUM(TotalPrice), 2) AS revenue
FROM pizza_sales
GROUP BY PizzaName
ORDER BY revenue DESC
LIMIT 5;

-- Total revenue of all orders
SELECT ROUND(SUM(TotalPrice), 2) AS total_revenue
FROM pizza_sales;

-- Total number of records
SELECT COUNT(*) FROM pizza_sales;
