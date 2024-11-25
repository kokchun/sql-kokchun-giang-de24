
-- id -> food
-- remove googleTopic
-- year column
-- week_id -> week
-- value -> number_of_searches

CREATE TABLE IF NOT EXISTS main.cleaned_food AS (
SELECT
	id AS food,
	SUBSTRING(week_id, 1, 4) AS year,
	-- week_id[:4]
	week_id[6:] AS week,
	value AS number_searches
FROM
	main.food f);
	
DESC;