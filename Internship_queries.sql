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


