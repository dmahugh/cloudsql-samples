# cloudsql-samples

This repo contains samples used for booth demos on a Windows laptop at the Google Cloud Platform booth during
PASS Summit 2019. (The final in-person PASS Summit, as it turned out.)

These samples assume that you have the Cloud SQL Proxy running locally and listening on ```127.0.0.1```.
For information about how to set that up, see the blog post [Managing SQL Server instances in Cloud SQL](https://medium.com/google-cloud/managing-sql-server-instances-in-cloud-sql-ecee1e48aa4e).

The PowerShell scripts are simple examples of how to use the ```sqlserver``` PowerShell module:
[create.ps1](https://github.com/dmahugh/cloudsql-samples/blob/master/1-create.ps1) creates a ```company``` table,
[populate.ps1](https://github.com/dmahugh/cloudsql-samples/blob/master/2-populate.ps1) inserts a row in the table, and
[query.ps1](https://github.com/dmahugh/cloudsql-samples/blob/master/3-query.ps1) does a ```SELECT``` query on the table.

[faker_sample.py](https://github.com/dmahugh/cloudsql-samples/blob/master/faker_sample.py) is Python script to create a database with an ```employee``` and ```location``` table
and populate them with some random data. **NOTE: the tables are dropped and re-created each time you
run the script.** For MySQL or PostgreSQL versions of faker_sample.py, check out Gabe Weiss's sql_data_randomizer repo
at [https://github.com/GabeWeiss/sql_data_randomizer](https://github.com/GabeWeiss/sql_data_randomizer).
