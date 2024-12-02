DESC;

-- film: film_id
SELECT * FROM main.film;

DESC TABLE main.film;

SELECT
	COUNT(*) AS number_movies,
	COUNT(DISTINCT title) AS unique_titles
FROM
	main.film;

SELECT DISTINCT rating FROM main.film;



-- film_actor: actor_id and film_id 
SELECT * FROM main.film_actor; 

-- actor: actor_id
SELECT * FROM main.actor;


-- film_category: film_id, category_id
SELECT * FROM main.film_category;

SELECT * FROM main.category;


-- customers 
SELECT * FROM main.customer;

SELECT
	store_id,
	COUNT(*) AS number_customers
FROM
	main.customer c
GROUP BY
	store_id
ORDER BY
	store_id ASC;


SELECT * FROM main.store;

--- more EDAs left for reader




