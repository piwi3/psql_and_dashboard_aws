-- This script creates a table based on the regarding northwind.csv file

-- drop table if it already exists
DROP TABLE if exists orders_have_details;

-- create new table (columns matching csv file)
CREATE TABLE orders_have_details (
  order_id INTEGER,
  product_id INTEGER,
  unit_price FLOAT,
  quantity INTEGER,
  discount FLOAT
);

-- copy data from csv into newly created table
\copy orders_have_details FROM '/Users/philipwitte/Documents/spiced_projects/fenugreek-student-code/week05/data/northwind/order_details.csv' DELIMITER ',' CSV HEADER;
