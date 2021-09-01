/* Milena Zlaticanin
   CSCI 466 - 1
   Assignment 6
   Professor Lehuta
   Due: 02/26/21
*/

-- 1) Remove the tables if they exist, it allows the scipt to be run again with no errors
DROP TABLE IF EXISTS Dog, Visit; 

-- 2) Creating a table called Dog with dog id, a breed, a name, and a weight
CREATE TABLE `Dog` (
    `dogid`  INT          PRIMARY KEY AUTO_INCREMENT, -- Automatically assigned the next available value when inserting a new row
    `breed`  VARCHAR(30)  NOT NULL,
    `name`   VARCHAR(30)  NOT NULL,
    `weight` INT          NOT NULL
);

-- 3) Inserting 6 rows into the Dog table with data
INSERT INTO Dog
    (breed, name, weight)
    VALUES('Labrador Retriever', 'Leo', '70'),
          ('Siberian Huskey', 'Bella', '40'),
          ('Chihuahua', 'Devil', '5'),
          ('Great Dane', 'Rocky', '125'),
          ('Pomeranian', 'Daisy', '6'),
          ('Dalmatian', 'Gus', '60');

-- 4) Running the command DESCRIBE Dog;
DESCRIBE Dog;

-- 5) Running the command SELECT * FROM Dog;
SELECT * FROM Dog;

-- 6) Creating a table called Visit with the date and the lenght of the Visit
CREATE TABLE `Visit` (
    `visitid`     INT  PRIMARY KEY AUTO_INCREMENT,
    `dogid`       INT  NOT NULL,
    `visitdate`   DATE NOT NULL,
    `visitlenght` TIME NOT NULL,

    FOREIGN KEY (dogid) REFERENCES Dog(dogid)
);

-- 7) Inserting exactly 9 rows into the Visit table with data
INSERT INTO Visit
    (dogid, visitdate, visitlenght)
    VALUES(1, '2019-08-07', '01:33:00'),
          (2, '2019-11-01', '00:25:00'),
          (6, '2019-12-29', '01:10:00'),
          (3, '2020-02-12', '02:50:00'),
          (3, '2020-05-15', '03:05:00'),
          (2, '2020-07-11', '00:50:00'),
          (5, '2020-11-23', '02:00:00'),
          (4, '2021-01-02', '02:15:00'),
          (1, '2021-02-10', '00:45:00');

-- 8) Running the command DESCRIBE Visit;
DESCRIBE Visit;

-- 9) Running the command SELECT * FROM Visit;
SELECT * FROM Visit;

-- 10) Adding a column for the visit bill to the Visit table
ALTER TABLE Visit ADD visitbill DECIMAL(5,2) NOT NULL;

-- 11) Updating the values for the newly-added attribute in the Visit table
UPDATE Visit
    SET visitbill = '150'
    WHERE visitid = '1';

UPDATE Visit
    SET visitbill = '40.50'
    WHERE visitid = '2';

UPDATE Visit
    SET visitbill = '110.10'
    WHERE visitid = '3';

UPDATE Visit
    SET visitbill = '300'
    WHERE visitid = '4';

UPDATE Visit
    SET visitbill = '600'
    WHERE visitid = '5';

UPDATE Visit
    SET visitbill = '70.99'
    WHERE visitid = '6';

UPDATE Visit
    SET visitbill = '180'
    WHERE visitid = '7';

UPDATE Visit
    SET visitbill = '199.99'
    WHERE visitid = '8';

UPDATE Visit
    SET visitbill = '90'
    WHERE visitid = '9';

-- 12) Running the command SELECT * FROM Visit; again
SELECT * FROM Visit;
