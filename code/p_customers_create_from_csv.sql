-- This script creates a table based on the regarding northwind.csv file

-- drop table if it already exists
DROP TABLE if exists customers;

-- create new table (columns matching csv file)
CREATE TABLE customers (
  customer_id VARCHAR(255) primary key,
  company_name VARCHAR(255),
  contact_name VARCHAR(255),
  contact_title VARCHAR(255),
  address VARCHAR(255),
  city VARCHAR(255),
  region VARCHAR(255),
  postal_code VARCHAR(255),
  country VARCHAR(255),
  phone VARCHAR(255),
  fax VARCHAR(255)
);

-- copy data from csv into newly created table
\copy customers FROM '/Users/philipwitte/Documents/spiced_projects/fenugreek-student-code/week05/data/northwind/customers.csv' DELIMITER ',' CSV HEADER;
