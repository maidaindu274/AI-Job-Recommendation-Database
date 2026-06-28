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