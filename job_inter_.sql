create database job;
use job_recommendation_system;
CREATE TABLE job (
    job_id INT PRIMARY KEY,
    company_id INT,
    job_title VARCHAR(150),
    location VARCHAR(100),
    experience_required INT,
    salary_min BIGINT,
    salary_max BIGINT,
    employment_type VARCHAR(50),
    posted_date DATE
);
select * from job;
show tables;
SELECT employment_type FROM job where employment_type is null;
SELECT employment_type, count(*) as cnt FROM job group by employment_type
order by cnt desc limit 1;
update job
set employment_type = 'Full-Time'
where employment_type is null;