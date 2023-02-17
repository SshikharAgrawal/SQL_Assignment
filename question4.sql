CREATE TABLE email_id (
	candidate_id int PRIMARY KEY,
    email VARCHAR(30) NOT NULL
);


INSERT INTO email_id VALUES(45,'abc@gmail.com');
INSERT INTO email_id VALUES(23,'def@yahoo.com');
INSERT INTO email_id VALUES(34,'abc@gmail.com');
INSERT INTO email_id VALUES(21,'bcf@gmail.com');
INSERT INTO email_id VALUES(94,'def@yahoo.com');

DELETE FROM 
  email_id 
WHERE 
  NOT candidate_id IN (
    SELECT 
      * 
    FROM 
      (
        SELECT 
          MIN(candidate_id) 
        FROM 
          email_id 
        GROUP BY 
          email
      ) AS temp
  );

