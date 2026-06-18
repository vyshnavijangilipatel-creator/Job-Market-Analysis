use job_market_analytics


   --1.what are the top 10 highest-paying data jobs?
   select top 10 job_title,avg(salary_in_usd) as salary
   from ds_salaries
   group by job_title
   order by salary desc

   --2.which experience level earns the highest?
   select experience_level,avg(salary_in_usd)as avg_salary
   from ds_salaries
   group by experience_level
   order by avg_salary desc

   --3.which countries pay the highest salaries?
   select company_location,avg(salary) as salary
   from ds_salaries
   group by company_location
   order by salary desc

  --4.which company sizes offer the best salaries?
  select company_size,avg(salary_in_usd) as salary
  from ds_salaries
  group by company_size
  order by salary desc

  --5.Do remote jobs pay more than on-site jobs?
  select remote_ratio,avg(salary) as salary
  from ds_salaries
  group by remote_ratio
  order by salary desc


  --6.What are the most in_demand job roles?
  select job_title,count(*) as totaljobs
  from ds_salaries
  group by job_title
  order by totaljobs desc


  --7.how has salary changed by work year?
  select work_year,avg(salary_in_usd) as salary
  from ds_salaries
  group by work_year
  order by salary desc


 --8.which roles are growing the fastest?
  select job_title,count(*) job_roles
  from ds_salaries
  group by job_title
  order by job_roles desc