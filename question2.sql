CREATE TABLE salary_account (
name VARCHAR(20),
jan INT,
feb INT,
march INT
);

INSERT INTO salary_account VALUES 
("X",5200,9093,3832), 
("Y",9023,8942,4000), 
("Z", 9834,8197,9903), 
("W", 3244,4321,0293);

SELECT * FROM salary_account;

SELECT name, 
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