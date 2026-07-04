USE ai_job_market;
-- SELECT * FROM ai_jobs;

-- Query 1- Total Number of Jobs
-- SELECT COUNT(*) AS Total_Jobs
-- FROM ai_jobs;

-- Query 2- Average Annual Salary
-- SELECT ROUND(AVG(annual_salary_usd),2) AS Average_Salary
-- FROM ai_jobs;

-- Query 3- Top 10 Highest Paying Job Titles
-- SELECT job_title,
-- ROUND(AVG(annual_salary_usd),2) AS Avg_Salary
-- FROM ai_jobs
-- GROUP BY job_title
-- ORDER BY Avg_Salary DESC
-- LIMIT 10;

-- Query 4- Jobs by Country
-- SELECT country,
-- COUNT(*) AS Total_Jobs
-- FROM ai_jobs
-- GROUP BY country
-- ORDER BY Total_Jobs DESC;

-- Query 5- Average Salary by Experience Level
-- SELECT experience_level,
-- ROUND(AVG(annual_salary_usd),2) AS Average_Salary
-- FROM ai_jobs
-- GROUP BY experience_level
-- ORDER BY Average_Salary DESC;

-- Query 6- Jobs by Industry
-- SELECT industry,
-- COUNT(*) AS Total_Jobs
-- FROM ai_jobs
-- GROUP BY industry
-- ORDER BY Total_Jobs DESC;

-- Query 7- Average Salary by Company Size
-- SELECT company_size,
-- ROUND(AVG(annual_salary_usd),2) AS Average_Salary
-- FROM ai_jobs
-- GROUP BY company_size
-- ORDER BY Average_Salary DESC;

-- Query 8- Remote Work Distribution
-- SELECT remote_work,
-- COUNT(*) AS Total_Jobs
-- FROM ai_jobs
-- GROUP BY remote_work;

-- Query 9- LLM vs Non-LLM Jobs
-- SELECT is_llm_role,
-- COUNT(*) AS Total_Jobs
-- FROM ai_jobs
-- GROUP BY is_llm_role;

-- Query 10- Average AI Salary Premium
-- SELECT ROUND(AVG(ai_salary_premium_pct),2) AS Average_AI_Premium
-- FROM ai_jobs;

-- Query 11- Top 10 Countries by Average Salary
-- SELECT country,
-- ROUND(AVG(annual_salary_usd),2) AS Average_Salary
-- FROM ai_jobs
-- GROUP BY country
-- ORDER BY Average_Salary DESC
-- LIMIT 10;

-- Query 12- Salary Category (CASE WHEN)
-- SELECT
-- CASE
-- WHEN annual_salary_usd < 80000 THEN 'Low'
-- WHEN annual_salary_usd BETWEEN 80000 AND 150000 THEN 'Medium'
-- ELSE 'High'
-- END AS Salary_Category,
-- COUNT(*) AS Total_Jobs
-- FROM ai_jobs
-- GROUP BY Salary_Category;

-- Query 13- Average Salary by Education
-- SELECT education_required,
-- ROUND(AVG(annual_salary_usd),2) AS Average_Salary
-- FROM ai_jobs
-- GROUP BY education_required
-- ORDER BY Average_Salary DESC;

-- Query 14- Monthly Job Postings
-- SELECT posting_month,
-- COUNT(*) AS Jobs_Posted
-- FROM ai_jobs
-- GROUP BY posting_month
-- ORDER BY posting_month;

-- Query 15- Top 5 Highest Paying Industries (RANK)
-- SELECT industry,
-- ROUND(AVG(annual_salary_usd),2) AS Avg_Salary,
-- RANK() OVER(ORDER BY AVG(annual_salary_usd) DESC) AS Salary_Rank
-- FROM ai_jobs
-- GROUP BY industry;

-- Query 16- Demand Score by Industry
-- SELECT industry,
-- ROUND(AVG(demand_score),2) AS Average_Demand
-- FROM ai_jobs
-- GROUP BY industry
-- ORDER BY Average_Demand DESC;

-- Query 17- Benefits Score by Company Size
-- SELECT company_size,
-- ROUND(AVG(benefits_score_10),2) AS Average_Benefits
-- FROM ai_jobs
-- GROUP BY company_size
-- ORDER BY Average_Benefits DESC;

-- Query 18- Top 10 Highest Paying Jobs (Window Function)
-- SELECT job_title,
-- country,
-- annual_salary_usd,
-- DENSE_RANK() OVER(ORDER BY annual_salary_usd DESC) AS Salary_Rank
-- FROM ai_jobs
-- LIMIT 10;

-- Query 19- Companies with Salary Above Overall Average (Subquery)
-- SELECT job_title,
-- company_size,
-- annual_salary_usd
-- FROM ai_jobs
-- WHERE annual_salary_usd >
-- (
-- SELECT AVG(annual_salary_usd)
-- FROM ai_jobs
-- );

-- Query 20- Experience-wise Salary Analysis (CTE)
-- WITH SalaryCTE AS
-- (
-- SELECT experience_level,
-- AVG(annual_salary_usd) AS Avg_Salary
-- FROM ai_jobs
-- GROUP BY experience_level
-- )

-- SELECT *
-- FROM SalaryCTE
-- ORDER BY Avg_Salary DESC;
 