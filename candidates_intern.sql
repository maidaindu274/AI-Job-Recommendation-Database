use job_recommendation_system;
CREATE TABLE candidates (
    candidate_id INT PRIMARY KEY,
    candidate_name VARCHAR(150),
    age INT,
    gender VARCHAR(200),
    city VARCHAR(100),
    education VARCHAR(100),
    experience_years INT,
    current_role VARCHAR(100),
    expected_salary BIGINT,
    preferred_location VARCHAR(100),
    resume_text TEXT
);
select * from candidates;
select * from candidates where education is null;
select * from candidates where preferred_location is null;
SET SQL_SAFE_UPDATES = 0;

SELECT education, COUNT(*) AS cnt
FROM candidates
GROUP BY education
ORDER BY cnt DESC
LIMIT 1;
SELECT COUNT(*) AS education_nulls
FROM candidates
WHERE education IS NULL;
select * from candidates;
select count(*) as location_nulls
from candidates 
where preferred_location is null;
-- 500 null values out of 10000, which means 5% 
-- Since only 5% of the values were missing in the Education and Preferred Location columns, 
-- mode imputation was used to fill the null values. This helped preserve all records and avoid data loss.
UPDATE candidates
SET education = 'B.Tech'
WHERE education IS NULL;
select education from candidates ;
SELECT preferred_location, COUNT(*) AS cnt
FROM candidates
GROUP BY preferred_location
ORDER BY cnt DESC
LIMIT 1;
UPDATE candidates
SET preferred_location = 'Hyderabad'
WHERE preferred_location IS NULL;
select preferred_location from candidates;
