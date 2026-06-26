use job_recommendation_system;
show tables;
-- select * from jobs;
-- drop table jobs;
-- select * from jobs1;
select * from job;
-- drop table jobs1;
-- select * from candidate_skills;
select * from candidate_skill;
-- drop table candidate_skills;


select * from companies;
select * from candidates;
select * from job;
select * from job_skills;
select * from candidate_skill;
select proficiency from candidate_skill where proficiency is null;
select * from applications;
select * from interviews;
-- Basic SQL Questions (1–15)
-- 1.How many candidates are registered in the system?
select count(*) from candidates;
-- 2.How many companies are available?
select count(company_id) from companies;
select count(company_name) from companies;
-- 3.How many jobs are posted?
select * from job;
select count(*) from job;
-- 4.How many applications have been submitted?
select count(*) from applications;
-- 5.How many interviews have been conducted?
select count(*) from interviews;
-- 6.Show all candidate details.
select * from candidates;
-- 7.Show all job details.
select * from job;
-- 8.Show all company details.
select * from companies;
-- 9.Show all applications with status = 'Applied'.
select * from applications;
select * from applications where status = "Applied";
-- 10.Show all shortlisted applications.
select * from applications where status = "shortlisted";
-- 11.Show all selected interview records.
select * from interviews;
select * from interviews where interview_status = "selected";
-- 12.List all unique skills required by jobs.
select * from job_skills;
select distinct skill_name from job_skills;
-- 13.List all unique skills possessed by candidates.
select distinct skill_name from candidate_skill;
-- 14.Count the total number of job skills.
select count(*)  as total_no from  job_skills;
-- 15.Count the total number of candidate skills.
select count(*) as total_no from candidate_skill;

-- Aggregate Fun ction Questions (16–25)
-- 16.How many jobs has each company posted?
select company_id,count(job_id) as total_job from job group by company_id;
-- 17.How many applications has each candidate submitted?
select * from applications;
select * from candidates;
select candidate_id, count(application_id) total_applicants from applications group by candidate_id;
-- 18.How many candidates applied for each job?
select * from candidates;
select current_role,count(candidate_id) as total from candidates group by current_role;
select * from job;
-- 19.What is the average salary offered by each company?
select * from companies;
select * from job;
select company_id,avg((salary_min + salary_max)/2) as avg_salary from job group by company_id;
-- 20.What is the highest salary offered by each company?
select * from job;
select company_id,max((salary_max + salary_min)/2) as highest_sal from job  group by  company_id order by highest_sal desc;

-- 21.What is the lowest salary offered by each company?
select company_id,min((salary_min + salary_max)/2) as lowest_sal from job group by company_id order by lowest_sal desc;
-- 22.What is the average salary of all job postings?
select  avg((salary_min + salary_max)/2) as avg_sal from job ;
-- 23.How many interviews have been conducted for each interview status?
select * from interviews;
select interview_status,count(interview_id) as total_interview from interviews group by interview_status;
-- 24.How many applications are there for each application status?
select * from applications;
select status, count(application_id) as total_applicants from applications group by status;
-- 25.Which skills are most common among candidates?
select * from candidate_skill;
select count(candidate_id)as total_candidates, skill_name from candidate_skill group by skill_name order by total_candidates;