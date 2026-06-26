use job_recommendation_system;
CREATE TABLE interviews (
    interview_id INT PRIMARY KEY,
    application_id INT NOT NULL,
    interview_date DATE,
    interview_status VARCHAR(50),
    feedback_score INT
);
select * from interviews;
show tables;
select * from applications;
select * from candidate_skill;
select * from candidates;
select * from companies;
select * from interviews;
select * from job;
select * from job_skills;