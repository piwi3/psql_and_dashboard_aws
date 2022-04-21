-- This script creates a table based on the regarding northwind.csv file

-- drop table if it already exists
DROP TABLE if exists orders;

-- create new table (columns matching csv file)
CREATE TABLE orders (
  order_id INTEGER PRIMARY KEY,
  customer_id VARCHAR(255),
  employee_id INTEGER,
  order_date DATE,
  required_date DATE,
  shipped_date DATE,
  ship_via INTEGER,
  freight FLOAT,
  ship_name VARCHAR(255),
  ship_address VARCHAR(255),
  ship_city VARCHAR(255),
  ship_region VARCHAR(255),
  ship_postal_code VARCHAR(255),
  ship_country VARCHAR(255)
);

-- copy data from csv into newly created table
\copy orders FROM '/Users/philipwitte/Documents/spiced_projects/fenugreek-student-code/week05/data/northwind/orders.csv' NULL AS 'NULL' DELIMITER ',' CSV HEADER;
