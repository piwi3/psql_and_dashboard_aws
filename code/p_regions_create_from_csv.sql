-- This script creates a table based on the regarding northwind.csv file

-- drop table if it already exists
DROP TABLE if exists regions;

-- create new table (columns matching csv file)
CREATE TABLE regions (
  region_id	INTEGER primary key,
  region_description VARCHAR(255)
);

-- copy data from csv into newly created table
\copy regions FROM '/Users/philipwitte/Documents/spiced_projects/fenugreek-student-code/week05/data/northwind/regions.csv' DELIMITER ',' CSV HEADER;
