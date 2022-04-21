-- This script creates a table based on the regarding northwind.csv file

-- drop table if it already exists
DROP TABLE if exists territories;

-- create new table (columns matching csv file)
CREATE TABLE territories (
  territory_id INTEGER PRIMARY KEY,
  territory_description VARCHAR(255),
  region_id VARCHAR(255)
);

-- copy data from csv into newly created table
\copy territories FROM '/Users/philipwitte/Documents/spiced_projects/fenugreek-student-code/week05/data/northwind/territories.csv' DELIMITER ',' CSV HEADER;
