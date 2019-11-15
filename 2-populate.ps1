# Example of connecting to SQL Server via Cloud SQL Proxy, with SQL Server authentication.
# Uses the sqlserver PowerShell module.

$ServerInstance = "127.0.0.1"
$creds = Get-Credential -Message "Enter SQL Server username/password"

$SQLQuery = "USE demo;INSERT INTO company (name, city, state) VALUES ('Google', 'Mountain View', 'California');INSERT INTO company (name, city, state) VALUES ('Apple', 'Cupertino', 'California');INSERT INTO company (name, city, state) VALUES ('Microsoft', 'Redmond', 'Washington');INSERT INTO company (name, city, state) VALUES ('Amazon', 'Seattle', 'Washington')"
$QueryOutput = Invoke-SqlCmd -Query $SQLQuery -ServerInstance $ServerInstance -Credential $creds
$QueryOutput
