Create database Project;


-- data exploration

-- count of rows
select count(*) from zepto;

-- sample data
select * FROM zepto
LIMIT 10;

-- null values
SELECT * FROM zepto
WHERE name IS NULL
OR
items IS NULL
OR
mrp IS NULL
OR
discountPercent IS NULL
OR
discountedSellingPrice IS NULL
OR
weightInGms IS NULL
OR
availableQuantity IS NULL
OR
outOfStock IS NULL
OR
quantity IS NULL;

-- different product items
SELECT DISTINCT items
FROM zepto
ORDER BY items;

-- products in stock vs out of stock
SELECT outOfStock, COUNT(id)
FROM zepto
GROUP BY outOfStock;

-- product names present multiple times
SELECT name, COUNT(id) AS "Number of Id's"
FROM zepto
GROUP BY name
HAVING count(id) > 1
ORDER BY count(id) DESC;

-- data cleaning

-- products with price = 0
SELECT * FROM zepto
WHERE mrp = 0 OR discountedSellingPrice = 0;

DELETE FROM zepto
WHERE mrp = 0;

-- convert paise to rupees
UPDATE zepto
SET mrp = mrp / 100.0,
discountedSellingPrice = discountedSellingPrice / 100.0;

SELECT mrp, discountedSellingPrice FROM zepto;

-- data analysis

-- Q1. Find the top 10 best-value products based on the discount percentage.
SELECT DISTINCT name, mrp, discountPercent
FROM zepto
ORDER BY discountPercent DESC
LIMIT 10;


-- Q2.Calculate Estimated Revenue for each item
SELECT ITEMS,
SUM(discountedSellingPrice * availableQuantity) AS total_revenue
FROM zepto
GROUP BY items
ORDER BY total_revenue;

-- Q3. Find all products where MRP is greater than ₹500 and discount is less than 10%.
SELECT DISTINCT name, mrp, discountPercent
FROM zepto
WHERE mrp > 500 AND discountPercent < 10
ORDER BY mrp DESC, discountPercent DESC;

-- Q4. Identify the top 5 ITEMS offering the highest average discount percentage.
SELECT items,
ROUND(AVG(discountPercent),2) AS avg_discount
FROM zepto
GROUP BY items
ORDER BY avg_discount DESC
LIMIT 5;

-- Q5. Find the price per gram for products above 100g and sort by best value.
SELECT DISTINCT name, weightInGms, discountedSellingPrice,
ROUND(discountedSellingPrice/weightInGms,2) AS price_per_gram
FROM zepto
WHERE weightInGms >= 100
ORDER BY price_per_gram;

-- Q6.Group the products into weight categories like Low, Medium, Bulk.
SELECT DISTINCT name, weightInGms,
CASE WHEN weightInGms < 1000 THEN 'Low'
	WHEN weightInGms < 5000 THEN 'Medium'
	ELSE 'Bulk'
	END AS weight_category
FROM zepto;

-- Q7.What is the Total Inventory Weight Per item
SELECT items,
SUM(weightInGms * availableQuantity) AS total_weight
FROM zepto
GROUP BY items
ORDER BY total_weight;

-- Q8. What is Average MRP and selling price per item.
SELECT 
     distinct Items,
    AVG(mrp) AS avg_mrp,
    AVG(discountedSellingPrice) AS avg_selling_price
FROM zepto
GROUP BY Items;

-- Q9. What is number of products per item.
SELECT distinct Items, COUNT(*) AS product_count
FROM zepto
GROUP BY Items
ORDER BY product_count DESC;

-- Q10. What is Potential revenue if all available stock is sold.

SELECT 
    Items,
    SUM(availableQuantity * discountedSellingPrice) AS potential_revenue
FROM zepto
GROUP BY Items
ORDER BY potential_revenue DESC;

-- Q11. What is overall potential revenue if all available stock is sold.

SELECT 
    SUM(availableQuantity * discountedSellingPrice) AS total_potential_revenue
FROM zepto;

-- Q12. What are the Best value products (highest discount + available stock)
SELECT 
    name,
    Items,
    discountPercent,
    availableQuantity
FROM zepto
WHERE availableQuantity > 0
ORDER BY discountPercent DESC, availableQuantity DESC;