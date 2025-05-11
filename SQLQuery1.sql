
-- to create new database
CREATE DATABASE  Bootcamp;

--  to use database
USE Bootcamp;

--create tables in database with its columns
CREATE TABLE airbnb_listings (
    id INT IDENTITY(1,1) PRIMARY KEY,
    city VARCHAR(100),
    country VARCHAR(100),
    number_of_rooms INT,
    year_listed INT
);

-- select and view all columns in this table
select * from airbnb_listings;

-- insert values in this table
INSERT INTO airbnb_listings (city, country, number_of_rooms, year_listed) VALUES
('Karachi', 'Pakistan', 3, 2025),
('Paris', 'France', 5, 2018),
('Tokyo', 'Japan', 2, 2017),
('New York', 'USA', 2, 2022),
('Shanghai', 'China', 4, 2019);

