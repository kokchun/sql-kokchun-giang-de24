-- 10 most searched foods 
SELECT
	food,
	SUM(number_searches) AS total_searches
FROM
	main.cleaned_food
GROUP BY
	food
ORDER BY
	total_searches DESC
LIMIT 10
;


-- total searches by year 
SELECT -- 3
	year,
	SUM(number_searches) AS total_searches
FROM -- 1
	main.cleaned_food
GROUP BY -- 2
	year
ORDER BY -- 4 
	total_searches DESC;



SELECT 
	year,
	SUM(number_searches) AS total_searches
FROM 
	main.cleaned_food
GROUP BY 
	year
HAVING
	total_searches > 300000
ORDER BY 
	total_searches DESC;


SELECT
	year,
	food,
	SUM(number_searches) AS total_searches
FROM
	main.cleaned_food
GROUP BY
	food,
	year
ORDER BY total_searches DESC;  






-- most popular food in summer 



-- most popular food in winter 



