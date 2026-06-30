use job_recommendations;
show tables;
select * from companies;
select * from candidates;
select * from candidate_skill;
select * from job;
select * from job_skills;
select * from applications;
select * from interviews;
-- Basic SQL Queries (1–15)
-- 1.How many candidates are registered in the system?
select count(candidate_id) as total_candidates from candidates;
-- 2.How many companies are available in the database?
select count(company_id) as total_companies from companies;
-- 3.How many jobs are posted in total?
select count(job_id) as total_job from job;
-- 4.How many applications have been submitted?
select count(application_id) as total_applications from applications;
-- 5.How many interviews have been conducted?
select count(interview_id) as total_interviews from interviews;
-- 6.Show all candidate details.
select * from candidates;
-- 7.Show all company details.
select * from companies;
-- 8.Show all job details.
select * from job;
-- 9.Show all applications where status is 'Applied'.
select * from applications where status = "Applied";
-- 10.Show all shortlisted candidates.
select candidate_id, status  from applications where status = "Shortlisted";
-- 11.Show all selected interview records.
select * from interviews where interview_status = "Selected";
-- 12.List all unique industries available in companies.
select distinct company_name from companies;
select company_name from companies group by company_name;
-- 13.List all unique job locations.
select * from job;
select distinct location from job;
-- 14.List all unique skills required by jobs.
-- 15.List all unique skills possessed by candidates.
-- Aggregate Functions (16–25)
-- 16.How many jobs has each company posted?

-- 17.How many applications has each candidate submitted?
-- 18.How many candidates applied for each job?
-- 19.Find the average salary offered for each company.
-- 20.Find the highest salary offered by each company.
-- 21.Find the lowest salary offered by each company.
-- 22.Find the average salary of all job postings.
-- 23.Count interviews based on interview status.
-- 24.Count applications based on application status.
-- 25.Find the most common skills among candidates.
-- WHERE / HAVING / GROUP BY (26–35)
-- 26.Find companies having more than 10 job postings.
-- 27.Find candidates who have experience greater than 5 years.
-- 28.Find jobs where salary_max is greater than 100000.
-- 29.Find jobs posted after 2025.
-- 30.Find candidates from a specific city.
-- 31.Find average salary of jobs by location.
-- 32.Show only locations having more than 20 jobs.
-- 33.Find companies whose average rating is greater than 4.
-- 34.Find skills which appear more than 50 times in job requirements.
-- 35.Find application statuses having more than 100 records.
-- JOIN Questions (36–45)
-- 36.Display company name with their job titles.
-- 37.Display candidate names with their applied job titles.
-- 38.Show all jobs with company names.
-- 39.Show candidate name, skill name, and proficiency.
-- 40.Show job title with required skills.
-- 41.Find candidates who applied for jobs in their preferred location.
-- 42.Show company name, job title, and salary range.
-- 43.Display interview details with candidate names.
-- 44.Display selected candidates with company names.
-- 45.Find candidates who applied for more than one job.
-- Advanced SQL Questions (46–50)
-- 46.Find the top 5 companies with the highest number of job postings.
-- 47.Find the top 5 highest paying jobs.
-- 48.Find the most demanded skills according to job requirements.
-- 49.Find candidates who have skills matching job required skills.
-- 50.Create a report showing:
-- Candidate Name
-- Applied Job
-- Company Name
-- Application Status
-- Interview Status
-- Feedback Score

