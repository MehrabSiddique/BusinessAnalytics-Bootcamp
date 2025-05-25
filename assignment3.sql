USE Bootcamp;

SELECT * FROM airbnb_listings;

--2.	Get the city column from the table
SELECT city FROM airbnb_listings;

--3.	Get the city and year_listed columns from the table.
SELECT city, year_listed FROM airbnb_listings;

--4. Get the listing id, city, ordered by the number_of_rooms in ascending order

SELECT id, city FROM airbnb_listings
ORDER BY number_of_rooms ASC;

--5. Get the listing id, city, number of rooms, ordered by the number_of_rooms in descending order

SELECT id, city, number_of_rooms FROM airbnb_listings
ORDER BY number_of_rooms DESC;

--6. Get the first 5 rows from the airbnb_listings table

SELECT TOP 5 * FROM airbnb_listings;

--7. Get a unique list of cities where there are listings

SELECT DISTINCT city FROM airbnb_listings;

-------------Filtering on Numeric Columns
--1. Get all the listings where number_of_rooms is more or equal to 3.

SELECT * FROM airbnb_listings
WHERE number_of_rooms >= 3;

--Get all the listings where number_of_rooms is more than 3.

SELECT * FROM airbnb_listings
WHERE number_of_rooms > 3;

--3. Get all the listings where number_of_rooms is exactly equal to 3.

SELECT * FROM airbnb_listings
WHERE number_of_rooms = 3;

--4. Get all the listings where number_of_rooms is lower or equal to 3.

SELECT * FROM airbnb_listings
WHERE number_of_rooms <= 3;

--5. Get all the listings where number_of_rooms is lower than 3.

SELECT * FROM airbnb_listings
WHERE number_of_rooms < 3;

--6. Get all the listings with 3 to 6 rooms

SELECT * FROM airbnb_listings
WHERE number_of_rooms BETWEEN 3 AND 6;

--7. Get all the listings that are based in 'Paris'.

SELECT * FROM airbnb_listings
WHERE city = 'Paris';

--8. Get the listings based in the 'USA' and in ‘France’.

SELECT * FROM airbnb_listings
WHERE country IN ('USA', 'France');

--9. Get all the listings where the city starts with 'j' and where the city does not end in ‘t’.

SELECT * FROM airbnb_listings
WHERE city LIKE 'j%' AND city NOT LIKE '%t';

--10. Get all the listings in 'Paris' where number_of_rooms is bigger than 3

SELECT * FROM airbnb_listings
WHERE city = 'Paris' AND number_of_rooms > 3;

--11. Get all the listings in 'Paris' OR the ones that were listed after 2012.

SELECT * FROM airbnb_listings
WHERE city = 'Paris' OR year_listed > 2012;

--12. Return the listings where number_of_rooms is missing.

SELECT * FROM airbnb_listings
WHERE number_of_rooms IS NULL;

--13. Return the listings where number_of_rooms is not missing.

SELECT * FROM airbnb_listings
WHERE number_of_rooms IS NOT NULL;

---------Aggregating Data - Simple Aggregations
--1. Get the total number of rooms available across all listings.

SELECT SUM(number_of_rooms) AS total_rooms FROM airbnb_listings;

--2. Get the average number of rooms per listing across all listings.

SELECT AVG(number_of_rooms) AS avg_rooms FROM airbnb_listings;

--3. Get the listing with the highest number of rooms across all listings.

SELECT TOP 1 * FROM airbnb_listings
ORDER BY number_of_rooms DESC;

--4. Get the listing with the lowest number of rooms across all listings.

SELECT TOP 1 * FROM airbnb_listings
ORDER BY number_of_rooms ASC;

--5. Get the total number of rooms for each country.

SELECT country, SUM(number_of_rooms) AS total_rooms
FROM airbnb_listings
GROUP BY country;

--6. Get the average number of rooms for each country.

SELECT country, AVG(number_of_rooms) AS avg_rooms
FROM airbnb_listings
GROUP BY country;

--7. Get the listing with the maximum number of rooms per country.

SELECT * FROM airbnb_listings a
WHERE number_of_rooms = (
  SELECT MAX(number_of_rooms)
  FROM airbnb_listings b
  WHERE a.country = b.country
);

--8. Get the listing with the lowest amount of rooms per country.

SELECT * FROM airbnb_listings a
WHERE number_of_rooms = (
  SELECT MIN(number_of_rooms)
  FROM airbnb_listings b
  WHERE a.country = b.country
);

--9. For each country, get the average number of rooms per listing, sorted by ascending order.

SELECT country, AVG(number_of_rooms) AS avg_rooms
FROM airbnb_listings
GROUP BY country
ORDER BY avg_rooms ASC;

--10. For Japan and the USA, get the average number of rooms per listing in each country.

SELECT country, AVG(number_of_rooms) AS avg_rooms
FROM airbnb_listings
WHERE country IN ('Japan', 'USA')
GROUP BY country;

--11. Get the number of cities per country, where there are listings.

SELECT country, COUNT(DISTINCT city) AS number_of_cities
FROM airbnb_listings
GROUP BY country;

--12. Get all the years where there were more than 100 ids per year.

SELECT year_listed, COUNT(id) AS total_listings
FROM airbnb_listings
GROUP BY year_listed
HAVING COUNT(id) > 100;






































































