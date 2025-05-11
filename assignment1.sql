-- Create new database
CREATE DATABASE IF NOT EXISTS Bootcamp;

-- to use the created database
USE Bootcamp;

-- select and view all columns from the table
SELECT * FROM airbnb_listings;

-- Create the new table with its column name
CREATE TABLE IF NOT EXISTS airbnb_listings (
    id INT AUTO_INCREMENT PRIMARY KEY,
    city VARCHAR(100) ,
    country VARCHAR(100),
    number_of_rooms INT ,
    year_listed YEAR
);

-- Insert values into the table
INSERT INTO airbnb_listings (city, country, number_of_rooms, year_listed) VALUES
('Karachi', 'Pakistan', 3, 2025),
('Paris', 'France', 5, 2018),
('Tokyo', 'Japan', 2, 2017),
('New York', 'USA', 2, 2022),
('Shanghai', 'China', 4, 2019);
