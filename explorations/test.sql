desc;

SELECT 
    row_number() OVER () AS job_id, 
    job_title 
FROM 
    data_jobs;
