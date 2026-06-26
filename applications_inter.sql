use job_recommendation_system;
CREATE TABLE applications (
    application_id INT PRIMARY KEY,
    candidate_id INT NOT NULL,
    job_id INT NOT NULL,
    application_date DATE,
    status VARCHAR(50)
);
select * from applications;