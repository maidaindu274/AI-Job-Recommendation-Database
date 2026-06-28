create database job_recommendation;
use job_recommendation;
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