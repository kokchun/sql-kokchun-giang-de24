-- EDA - Exploratory data analysis
SELECT * FROM main.food;

-- 201 food categories
SELECT DISTINCT id AS food FROM main.food;

-- 135025 rows total
SELECT COUNT(*) FROM main.food;

-- cols: id, googleTopic, week_id, value 
DESC main.food;


-- testing filtering weeks 
SELECT
	*
FROM
	main.food
WHERE
	week_id BETWEEN '2004-04' AND '2004-10';