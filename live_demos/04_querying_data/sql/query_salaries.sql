SELECT * FROM data_jobs;

-- namespace
SELECT * FROM main.data_jobs;

-- fully qualified name
SELECT * FROM salaries.main.data_jobs;

SELECT * FROM main.data_jobs LIMIT 10;


SELECT
	work_year,
	job_title ,
	salary_in_usd,
	remote_ratio
FROM
	main.data_jobs;

SELECT 
	* EXCLUDE(salary,
	employee_residence,
	work_year)
FROM
	main.data_jobs;



