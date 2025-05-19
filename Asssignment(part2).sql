
--to use database
USE student;

--to show columns of table
SELECT * FROM SQL;


--Find Unique Customers
SELECT COUNT(DISTINCT CustomerID) AS unique_customers
FROM SQL;

--(This counts how many distinct customers made purchases.)


-- How Many Mobiles Were Sold
SELECT SUM(quantity) AS total_mobiles_sold
FROM SQL
WHERE LOWER(product) = 'MOBILE';

--(This filters only sales where the product is mobile and sums the quantity.)

--Top 2 Best-Selling Products
SELECT TOP 2 product, SUM(quantity) AS total_sold
FROM SQL
GROUP BY product
ORDER BY total_sold DESC;


-- Sales by Location
SELECT Country, SUM(quantity) AS total_items_sold
FROM SQL
GROUP BY Country
ORDER BY total_items_sold DESC;

--Customer with Highest Purchase Volume
SELECT TOP 1 CustomerID,CustomerName, SUM(quantity) AS total_purchased
FROM SQL
GROUP BY CustomerID,CustomerName
ORDER BY total_purchased DESC;
