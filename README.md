## Metabase dashboard based on a PostgreSQL DB using AWS (RDS/EC2)

- Fort this project, I utilized the __Northwind Database__, a sample database shipped along with Microsoft Access (data is about 'Northwind Traders', a fictional company and its regarding sales transactions) 
- Loaded the data into a __PostgreSQL DB__ using __AWS RDS__ and installed Metabase using __AWS EC2__; connected both to enable __data pipeline__
- __Querried the PostgreSQL__ DB to implement several __charts/dashboars visualizing the sales data__ (e.g. for orders, customers, including geo maps using fortium and geopy)

_Note:_
- _Since AWS is a paid service, I deleted the RDS instance; hence, the dashboard is offline. I am thinking to bring it back online using docker and the (still active) EC2 instance_
- _To run the code, a credentials.py file with personal AWS authentiffication keys needs to be added in the 'code'-folder_
