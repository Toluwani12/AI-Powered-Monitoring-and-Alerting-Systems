-- Create a new database
CREATE DATABASE my_devops_db;

-- Select the new database to use
USE my_devops_db;

-- Create a new table named "students"
CREATE TABLE students (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    course VARCHAR(100)
);

-- Insert some data into the "students" table
INSERT INTO students (name, course) VALUES ('John Doe', 'DevOps');
INSERT INTO students (name, course) VALUES ('Jane Smith', 'Cloud Engineering');
