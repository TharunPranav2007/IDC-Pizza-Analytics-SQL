USE IDC_Pizza;
-- =====================================================
-- PHASE 1: FOUNDATION & INSPECTION
-- =====================================================

-- 2. List all unique pizza categories
SELECT DISTINCT category FROM pizza_types;

-- 3. Display pizza_type_id, name, and ingredients (replace NULL with 'Missing Data')
SELECT pizza_type_id, name, COALESCE(ingredients, 'Missing Data') 
AS ingredients FROM pizza_types LIMIT 5;

-- 4. Check for pizzas missing a price
SELECT * FROM pizzas WHERE price IS NULL;

-- =====================================================
-- PHASE 2: FILTERING & EXPLORATION
-- =====================================================

-- 1. Orders placed on '2015-01-01'
SELECT * FROM orders WHERE date = '2015-01-01';

-- 2. List pizzas with price descending
SELECT * FROM pizzas ORDER BY price DESC;

-- 3. Pizzas sold in sizes 'L' or 'XL'
SELECT * FROM pizzas WHERE size IN ('L', 'XL');

-- 4. Pizzas priced between $15.00 and $17.00
SELECT * FROM pizzas WHERE price BETWEEN 15.00 AND 17.00;

-- 5. Pizzas with 'Chicken' in the name
SELECT * FROM pizza_types WHERE name LIKE '%Chicken%';

-- 6. Orders on '2015-02-15' or placed after 8 PM
SELECT * FROM orders WHERE date = '2015-02-15' OR time > '20:00:00';

-- =====================================================
-- PHASE 3: SALES PERFORMANCE
-- =====================================================

-- 1. Total quantity of pizzas sold
SELECT SUM(quantity) AS total_quantity FROM order_details;

-- 2. Average pizza price
SELECT AVG(price) AS average_price FROM pizzas;

-- 3. Total order value per order
SELECT o.order_id, SUM(od.quantity * p.price) AS total_order_value 
FROM orders o 
JOIN order_details od ON o.order_id = od.order_id 
JOIN pizzas p ON od.pizza_id = p.pizza_id 
GROUP BY o.order_id;

-- 4. Total quantity sold per pizza category
SELECT pt.category, SUM(od.quantity) AS total_quantity 
FROM pizza_types pt 
JOIN pizzas p ON pt.pizza_type_id = p.pizza_type_id 
JOIN order_details od ON p.pizza_id = od.pizza_id 
GROUP BY pt.category;

-- 5. Categories with more than 5,000 pizzas sold
SELECT pt.category, SUM(od.quantity) AS total_quantity 
FROM pizza_types pt 
JOIN pizzas p ON pt.pizza_type_id = p.pizza_type_id 
JOIN order_details od ON p.pizza_id = od.pizza_id 
GROUP BY pt.category 
HAVING SUM(od.quantity) > 5000;

-- 6. Pizzas never ordered
SELECT p.pizza_id 
FROM pizzas p 
LEFT JOIN order_details od ON p.pizza_id = od.pizza_id 
WHERE od.order_details_id IS NULL;

-- 7. Price differences between different sizes of the same pizza
SELECT p1.pizza_type_id, 
       p1.size AS size_1, p1.price AS price_1, 
       p2.size AS size_2, p2.price AS price_2, 
       (p1.price - p2.price) AS price_difference 
FROM pizzas p1 
JOIN pizzas p2 ON p1.pizza_type_id = p2.pizza_type_id 
WHERE p1.pizza_id != p2.pizza_id;