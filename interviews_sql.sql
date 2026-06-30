CREATE TABLE interviews (

    interview_id INT PRIMARY KEY,

    application_id INT,

    interview_date DATE,

    interview_status VARCHAR(50),

    feedback_score INT

);
select * from interviews;
