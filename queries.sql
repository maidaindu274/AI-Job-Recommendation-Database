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
select candidate_id,  status  from applications where status = "Shortlisted";
select * from candidates;
select * from applications;
select a.candidate_id, c.candidate_name from candidates as c inner join applications as a on 
c.candidate_id = a.candidate_id where a.status = "Shortlisted";
-- 11.Show all selected interview records.
select * from interviews where interview_status = "Selected";
-- 12.List all unique industries available in companies.
select distinct industry from companies;
select * from companies;
select company_name from companies group by company_name;
-- 13.List all unique job locations.
select * from job;
select distinct location from job;
-- 14.List all unique skills required by jobs.
select distinct skill_name from job_skills;
-- 15.List all unique skills possessed by candidates.
select distinct skill_name from candidate_skill;
-- Aggregate Functions (16–25)
-- 16.How many jobs has each company posted?
select company_id,count(job_id) as total_jobs from job group by company_id;

-- 17.How many applications has each candidate submitted?
select candidate_id,count(application_id) as total_applications from applications group by candidate_id;
-- 18.How many candidates applied for each job?
select job_id,count(candidate_id) from applications group by job_id;

-- 19.Find the average salary offered for each company.
select * from job;
select  company_id, avg((salary_min+salary_max)/2)  as avg_sal   from job group by company_id;
-- 20.Find the highest salary offered by each company.
select  company_id, max((salary_min+salary_max)/2) as highest_sal from job group by company_id;
-- 21.Find the lowest salary offered by each company.
select min((salary_min+salary_max)/2) as lowest_sal, company_id from job group by company_id;
-- 22.Find the average salary of all job postings.
select avg((salary_min + salary_max)/2) as avg_sal from job ;
-- 23.Count interviews based on interview status.
select count(*) , interview_status from interviews group by interview_status;
-- 24.Count applications based on application status.
select count(*), status from applications group by status;
-- 25.Find the most common skills among candidates.
select count(*) as total, skill_name from candidate_skill group by skill_name order by total desc limit 5;
-- WHERE / HAVING / GROUP BY (26–35)
-- 26.Find companies having more than 10 job postings.
select company_id, count(job_id) as total_jobs  from job group by company_id having total_jobs>10;
-- 27.Find candidates who have experience greater than 5 years.
select * from candidates;
select * from candidates where experience_years > 5;
-- 28.Find jobs where salary_max is greater than 100000.
select * from job;
select * from job where salary_max > 100000;
-- 29.Find jobs posted after 2024.
select * from job where year(posted_date) > "2024";
-- 30.Find candidates from a specific city.
select  * from candidates where city = "Pune" ;
-- 31.Find average salary of jobs by location.
select * from job;
select avg((salary_min + salary_max)/2), location from job group by location;
-- 32.Show only locations having more than 20 jobs.
select * from job;
select location, count(job_id) as total from job group by location having count(job_id)>20;
-- 33.Find companies whose average rating is greater than 4.
select * from companies;
select avg(rating) as avg_rating, company_id from companies group by company_id having avg(rating)>4;
-- 34.Find skills which appear more than 50 times in job requirements.
select * from job;
select skill_name, count(skill_name) as total  from job_skills group by skill_name having total > 50;

-- 35.Find application statuses having more than 100 records.
select * from applications;
select status, count(application_id) as total_applications from applications group by status having total_applications >100;
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

