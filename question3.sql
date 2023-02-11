CREATE TABLE db_test (
candidate_id INT,
marks INT,
PRIMARY KEY(candidate_id)
);

INSERT INTO db_test VALUES
(1,98),
(2,78),
(3,87),
(4,98),
(5,78);

SELECT * FROM db_test;

SELECT DISTINCT marks "Marks", 
RANK() OVER (ORDER BY marks DESC) AS "Rank", 
GROUP_CONCAT(candidate_id) AS "Candidate_ID" 
FROM db_test 
GROUP BY marks 
ORDER BY marks DESC;
