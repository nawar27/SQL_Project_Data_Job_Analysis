WITH company_jobs AS (
    SELECT
        company_id,
        COUNT(*)
    FROM job_postings_fact
    GROUP BY
        company_id)

SELECT * 
FROM
    company_jobs