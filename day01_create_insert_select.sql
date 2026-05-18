-- Day 01: Basic SQL Practice
-- Topic: CREATE DATABASE, CREATE TABLE, INSERT, SELECT

-- Create a new database named practice_db only if it does not already exist
CREATE DATABASE IF NOT EXISTS practice_db;

-- Select the practice_db database to work inside it
USE practice_db;

-- Delete the students table if it already exists
-- This helps us run the same code again without table already exists error
DROP TABLE IF EXISTS students;

-- Create a new table named students
CREATE TABLE students (

    -- id column stores student ID numbers
    -- INT means integer number
    -- PRIMARY KEY means each id must be unique and not empty
    id INT PRIMARY KEY,

    -- name column stores student names
    -- VARCHAR(50) means text up to 50 characters
    name VARCHAR(50),

    -- city column stores student city names
    -- VARCHAR(50) means text up to 50 characters
    city VARCHAR(50)
);

-- Insert student records into the students table
-- Values order must match table columns: id, name, city
INSERT INTO students VALUES

-- First student record: id = 1, name = Sharath, city = Hyderabad
(1, 'Sharath', 'Hyderabad'),

-- Second student record: id = 2, name = Ravi, city = Warangal
(2, 'Ravi', 'Warangal'),

-- Third student record: id = 3, name = Rahul, city = Chennai
(3, 'Rahul', 'Chennai');

-- Display all columns and all rows from the students table
-- * means all columns
SELECT * FROM students;