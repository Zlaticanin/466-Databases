/* Milena Zlaticanin
   CSCI 466 - 1
   Assignment 5
   Professor Lehuta
   Due: 02/19/21
*/

-- 1) Selecting the BabyName database
USE BabyName;

-- 2) Showing all the tables in the database
SHOW tables;

-- 3) Showing all the columns and their types for each table in the database
DESCRIBE BabyName;

-- 4) Showing all the names from '1999'. Each name is displayed only once
SELECT DISTINCT name
    FROM BabyName
    WHERE year = '1999';

-- 5) Showing all of the years once where 'Milena' appears
SELECT DISTINCT year
    FROM BabyName
    WHERE name = 'Milena';

-- 6) Displaying the most popular male and female names from 1984
SELECT name
FROM BabyName
WHERE count IN
    (SELECT MAX(count)
        FROM BabyName
        WHERE year = '1984' -- taking names only from year '1984'
        AND place = 'US'    -- taking names only from 'US'
        AND gender = 'F')   -- taking female names
UNION                       -- merging
    SELECT name
        FROM BabyName
        WHERE count IN
            (SELECT MAX(count)
                FROM BabyName
                WHERE year = '1984'
                AND place = 'US'
                AND gender = 'M'); -- taking male names

-- 7) Listing how many different names are for each place
SELECT place,              -- 'US'
COUNT(DISTINCT name)       -- counting distinct names from each State
FROM BabyName       
    GROUP BY place;        -- grouping the names by the place

-- 8) Showing all the information available about names similar to 'Milena'
-- The names are sorted in alphabetical order by name, count and then year
SELECT * FROM BabyName
    WHERE name LIKE '%ilena%'  -- searching for the names similar to 'Milena'
    ORDER BY name, count, year; -- sorting the names by name, count and then year

-- 9) Showing how many names there where in the year '1974'
SELECT COUNT(DISTINCT name)     -- selecting names and preventing duplicates using 'DISTINCT'
FROM BabyName
    WHERE year = '1974';

-- 10) Showing how many rows are in the table
SELECT COUNT(*) FROM BabyName;

-- 11) Showing how many names are in the table for each sex from '1962'
SELECT gender,
COUNT(DISTINCT name)
FROM BabyName
    WHERE year = '1962'  -- pulling data only from year '1962'
    GROUP BY gender;     -- grouping the date by gender
