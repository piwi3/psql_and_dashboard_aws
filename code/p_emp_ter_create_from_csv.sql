-- This script creates a table based on the regarding northwind.csv file

-- drop table if it already exists
DROP TABLE if exists employees_have_territories;

-- create new table (columns matching csv file)
CREATE TABLE employees_have_territories (
  employee_id INTEGER,
  territory_id INTEGER
);

-- copy data from csv into newly created table
\copy employees_have_territories FROM '/Users/philipwitte/Documents/spiced_projects/fenugreek-student-code/week05/data/northwind/employee_territories.csv' DELIMITER ',' CSV HEADER;
