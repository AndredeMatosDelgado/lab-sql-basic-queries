-- 1.
USE sakila;
SHOW TABLES

-- 2.
SELECT *
FROM actor;

SELECT *
FROM film;

SELECT *
FROM customer;

-- 3.

-- 3.1
SELECT title
FROM film;

-- 3.2
SELECT DISTINCT `name` AS language
FROM `language`;

-- 3.3
SELECT first_name
FROM staff;

-- 4.
SELECT DISTINCT release_year
FROM film;

-- 5.
-- 5.1
SELECT DISTINCT(COUNT(store_id))
FROM store;

-- 5.2
SELECT DISTINCT(COUNT(staff_id))
FROM staff;

-- 5.3
SELECT COUNT(rental_id)
FROM rental
WHERE return_date IS NULL;

SELECT COUNT(return_date)
FROM rental;

-- 5.4
SELECT DISTINCT(COUNT(first_name))
FROM actor;

-- 6.
SELECT title, length
FROM film
ORDER BY length desc
LIMIT 10;

-- 7.
SELECT actor_id, first_name, last_name
FROM actor
WHERE first_name LIKE 'SCARLETT';