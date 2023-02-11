
create table temp(Candidate_Id int,Email varchar(100));
insert into temp values(45,"abc@gmail.com");
insert into temp values(23,"def@gmail.com");
insert into temp values(34,"abc@gmail.com");
insert into temp values(21,"bcf@gmail.com");
insert into temp values(94,"def@gmail.com");

select min(Candidate_Id),Email from temp group by Email;
