-- This script creates a table based on the regarding northwind.csv file

-- drop table if it already exists
DROP TABLE if exists products;

-- create new table (columns matching csv file)
CREATE TABLE products (
  product_id INTEGER PRIMARY KEY,
  product_name VARCHAR(255),
  supplier_id INTEGER,
  category_id INTEGER,
  quantity_per_unit VARCHAR(255),
  unit_price FLOAT,
  units_in_stock INTEGER,
  units_on_order INTEGER,
  reorder_level INTEGER,
  discontinued INTEGER
);

-- copy data from csv into newly created table
\copy products FROM '/Users/philipwitte/Documents/spiced_projects/fenugreek-student-code/week05/data/northwind/products.csv' DELIMITER ',' CSV HEADER;
