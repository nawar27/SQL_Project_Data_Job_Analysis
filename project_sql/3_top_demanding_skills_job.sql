/*
Question: What are the most in-demand skills for data analyst?
- Join job postings to inner join table similar to query 2
- Identify the top 5 in-demand skills for a data analyst
- Focus on all job postings
Why? Retrieves the top 5 skills with the highest demand in the job market,
providing insights into the most valuable skills for tjob seekers
*/

SELECT
    skills,
    count(skills_dim.skill_id) AS demand_count
FROM
    job_postings_fact
INNER JOIN
    skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN
    skills_dim on skills_job_dim.skill_id = skills_dim.skill_id
WHERE
    job_title_short = 'Data Analyst'
GROUP BY skills
ORDER BY
demand_count DESC
LIMIT 5;