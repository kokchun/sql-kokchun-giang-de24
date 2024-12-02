-- EDA - exploratory data analysis 
DESC;

DESC TABLE data_jobs;

SELECT * FROM data_jobs;

SELECT job_title FROM main.data_jobs;


-- DISTINCT:
-- NLP, NLP. NLP, AI, AI, data  -> NLP, AI, data

SELECT DISTINCT job_title FROM main.data_jobs;


-- total jobs
SELECT COUNT(*) FROM main.data_jobs;

-- alias - give a name to the columns
SELECT COUNT(*) AS total_jobs FROM main.data_jobs;


-- total number of unique jobs
SELECT
	COUNT(DISTINCT job_title) AS unique_job_titles
FROM
	main.data_jobs; 


-- find out how many data engineers there are in this table
-- step 1 
SELECT job_title FROM main.data_jobs;

-- step 2 
SELECT job_title FROM main.data_jobs WHERE job_title = 'Data Engineer';

-- step 3
SELECT
	COUNT(job_title) AS data_engineer_jobs
FROM
	main.data_jobs
WHERE
	job_title = 'Data Engineer';


-- data engineers that earn more than 200k USD per year?
SELECT
	job_title,
	experience_level,
	company_size,
	company_location, 
	salary_in_usd,
FROM
	main.data_jobs
WHERE
	job_title = 'Data Engineer'
	AND experience_level = 'EN'
	AND salary_in_usd >= 200000
ORDER BY
	salary_in_usd DESC;


-- unique company sizes 
SELECT DISTINCT company_size FROM main.data_jobs;


-- group by





