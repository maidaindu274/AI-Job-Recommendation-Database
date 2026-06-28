CREATE TABLE applications (

    application_id INT PRIMARY KEY,

    candidate_id INT,

    job_id INT,

    application_date DATE,

    status VARCHAR(50)

);
select * from applications;