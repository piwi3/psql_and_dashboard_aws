-- This script creates a table based on the regarding northwind.csv file

-- drop table if it already exists
DROP TABLE if exists shippers;

-- create new table (columns matching csv file)
CREATE TABLE shippers (
  shipper_id INTEGER PRIMARY KEY,
  company_name VARCHAR(255),
  phone VARCHAR(255)
);

-- copy data from csv into newly created table
\copy shippers FROM '/Users/philipwitte/Documents/spiced_projects/fenugreek-student-code/week05/data/northwind/shippers.csv' DELIMITER ',' CSV HEADER;
