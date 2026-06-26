create database job_recommendation_system;
use job_recommendation_system;
CREATE TABLE companies (
    company_id INT PRIMARY KEY,
    company_name VARCHAR(150),
    industry VARCHAR(100),
    headquarters VARCHAR(100),
    company_size VARCHAR(50),
    founded_year INT,
    rating DECIMAL(3,1)
);
select * from companies;
select count(company_name) from companies  where company_name is null;

UPDATE companies
SET company_name = 'Unknown'
WHERE company_name IS NULL;
SET SQL_SAFE_UPDATES = 0;
select * from companies;