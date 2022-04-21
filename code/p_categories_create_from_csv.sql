-- This script creates a table based on the regarding northwind.csv file

-- drop table if it already exists
DROP TABLE if exists categories;

-- create new table (columns matching csv file)
CREATE TABLE categories (
  category_id INTEGER primary key,
  category_name VARCHAR(255),
  description VARCHAR(255),
  picture BYTEA
);

-- copy data from csv into newly created table
\copy categories FROM '/Users/philipwitte/Documents/spiced_projects/fenugreek-student-code/week05/data/northwind/categories.csv' DELIMITER ',' CSV HEADER;
