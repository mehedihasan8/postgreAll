-- Active: 1710683129930@@127.0.0.1@5432@ph

SELECT * from person2

-- add columns 

ALTER TABLE person2 
    ADD COLUMN email VARCHAR(25) DEFAULT 'default@gmail.com' NOT NULL

--delete COLUMNS

ALTER TABLE person2
    DROP COLUMN email

--column rename 

ALTER TABLE person2
    RENAME COLUMN age to user_age;

--change column type 

ALTER TABLE person2 
    Alter COLUMN user_name type VARCHAR(50);

--change existiong const 

ALTER TABLE person2 
    Alter COLUMN user_age set NOT null;

--remove existiong const 

ALTER TABLE person2 
    Alter COLUMN user_age DROP NOT null;

--add constraint with existiong columans unique

ALTER TABLE person2 
   ADD constraint unique_person2_user_age UNIQUE(user_age);

--add constraint with existiong columans primary key

ALTER TABLE person2 
   ADD constraint pk_person2_user_age PRIMARY KEY(user_age);

--remove && delet constraint with existiong columans

ALTER TABLE person2 
   DROP constraint unique_person2_user_age;


-- when we want delet all rows or record then we well try TRUNCATE METHOD

TRUNCATE TABLE person3


-- when we want delet tabel then we well try drop METHOD

DROP TABLE person3


--insert data in tabel 
-- INSERT into person2 VALUES(7, 'alamgir', 58)

INSERT into person2 VALUES(8, 'alamgirr', 58, 'alamgir@gmail.com')