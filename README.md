# SQL_Assignment
**Q1**

1)It was required to find no of males and female in each department so we used group by department and 
  count function to count the number of females and males in each department.
 
2)select Department,count(case when Gender="Male" then 1 end) as Num_of_Male,count(case when Gender="Female" then 1 end) 
as Num_of_Female from employees group by department;

**Q2**

1)It was required to find maximum among the rows so we used case clause to find it.

2)SELECT name, 
CASE
WHEN jan>feb AND jan>march THEN jan 
WHEN feb>march THEN feb 
ELSE march 
END AS "Value", 
CASE
WHEN jan>feb AND jan>march THEN "Jan" 
WHEN feb>march THEN "Feb" 
ELSE "Mar" 
END AS "Month" 
FROM salary_account;

**Q3**

1)It was required to rank the candidates in decreasing scores and group their candidate_id accordingly so we used rank and group_concat function to do so.

2)SELECT DISTINCT marks "Marks", 
RANK() OVER (ORDER BY marks DESC) AS "Rank", 
GROUP_CONCAT(candidate_id) AS "Candidate_ID" 
FROM db_test 
GROUP BY marks 
ORDER BY marks DESC;

**Q4**

1)It was required to get min marks for a particular emailid so we used min aggretage function and groupby metchod to do so by deleting it from the same table.

2)DELETE FROM 
  email_id WHERE 
  NOT candidate_id IN (
    SELECT 
      * 
    FROM 
      ( SELECT 
          MIN(candidate_id) 
        FROM 
          email_id 
        GROUP BY 
          email
      ) AS temp
  );
