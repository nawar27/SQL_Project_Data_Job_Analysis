SELECT
    quarter1_job_postings.job_title_short,
    quarter1_job_postings.job_location,
    quarter1_job_postings.job_via,
    quarter1_job_postings.salary_year_avg,
    quarter1_job_postings.job_posted_date::DATE
FROM (
    SELECT *
    FROM
        january_job
    UNION ALL

    SELECT *
    FROM
        february_job
    UNION ALL

    SELECT *
    FROM
        march_job
    ) AS quarter1_job_postings
WHERE
    quarter1_job_postings.salary_year_avg > 70000 AND
    quarter1_job_postings.job_title_short = 'Data Analyst'
ORDER BY
    quarter1_job_postings.salary_year_avg DESC