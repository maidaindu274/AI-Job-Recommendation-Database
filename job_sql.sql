CREATE TABLE job (

    job_id INT PRIMARY KEY,

    company_id INT,

    job_title VARCHAR(150),

    location VARCHAR(100),

    experience_required INT,

    salary_min BIGINT,

    salary_max BIGINT,

    employment_type VARCHAR(50),

    posted_date DATE,

    FOREIGN KEY (company_id)
    REFERENCES companies(company_id)

);
select * from job;