-- This script creates a table based on the regarding northwind.csv file

-- drop table if it already exists
DROP TABLE if exists employees;

-- create new table (columns matching csv file)
CREATE TABLE employees (
  employee_id INTEGER PRIMARY KEY,
  last_name VARCHAR(255),
  first_name VARCHAR(255),
  title VARCHAR(255),
  title_of_courtesy VARCHAR(255),
  birth_date DATE,
  hire_date DATE,
  address VARCHAR(255),
  city VARCHAR(255),
  region VARCHAR(255),
  postal_code VARCHAR(255),
  country VARCHAR(255),
  home_phone VARCHAR(255),
  extension VARCHAR(255),
  photo BYTEA,
  notes VARCHAR(255),
  reports_to FLOAT,
  photo_path VARCHAR(255)
);

-- copy data from csv into newly created table
\copy employees FROM '/Users/philipwitte/Documents/spiced_projects/fenugreek-student-code/week05/data/northwind/employees.csv' NULL AS 'NULL' DELIMITER ',' CSV HEADER;
