DESC;

-- wildcard selection/ select star/ select all 
-- returns a result set of all columns and their respective rows
-- from the table/view: main.payment
-- when using main.payment we mean schema.table_name/schema.view_name -> namespacing
SELECT * FROM main.payment; 

-- without specifying the schema, duckdb will look at main schema by default 
SELECT * FROM payment;

-- fully qualified name
SELECT * FROM sakila.main.payment; 

-- limits the number of returned rows
SELECT
	*
FROM
	main.payment
LIMIT 10; 

-- chooses which columns to return
SELECT
	customer_id,
	amount
FROM
	main.payment;

SELECT
	* EXCLUDE(customer_id, amount)
FROM
	main.payment;


-- aggregation function -> many-to-one mapping  
SELECT 
	COUNT(*) AS number_payments,
	MIN(amount) AS min_amount,
	ROUND(AVG(amount), 2) AS mean_amount,
	MEDIAN(amount) AS median_amount,
	MAX(amount) AS max_amount,
FROM main.payment;


-- filter data
-- where filters the rows with a condition
-- if the condition is fulfilled - the row will be in the result set
SELECT
	*
FROM
	main.payment
WHERE
	amount > 4.2
ORDER BY amount;


-- create a new column with amount classifications
SELECT
	amount,
	CASE 
		WHEN amount < 3.5 THEN 'low cost'
		WHEN amount < 7.5 THEN 'medium cost'
		ELSE 'high cost'
	END AS cost_level
FROM 
main.payment;


SELECT
	*,
	CASE 
		WHEN amount < 3.5 THEN 'low cost'
		WHEN amount < 7.5 THEN 'medium cost'
		ELSE 'high cost'
	END AS cost_level
FROM 
main.payment;



CREATE VIEW IF NOT EXISTS main.payment_level AS (
	SELECT
		*,
		CASE 
			WHEN amount < 3.5 THEN 'low cost'
			WHEN amount < 7.5 THEN 'medium cost'
			ELSE 'high cost'
		END AS cost_level
	FROM 
	main.payment
);


SELECT
	cost_level,
	COUNT(amount) AS number_per_level, 
	ROUND(AVG(amount),2) AS mean_amount 
FROM
	main.payment_level
GROUP BY
	cost_level;












