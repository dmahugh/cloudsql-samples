# Example of connecting to SQL Server via Cloud SQL Proxy, with SQL Server authentication.
# Uses the sqlserver PowerShell module.

$ServerInstance = "127.0.0.1"
$creds = Get-Credential -Message "Enter SQL Server username/password"

$SQLQuery = "USE demo;CREATE TABLE company (name VARCHAR(80), city VARCHAR(80), state VARCHAR(80))"
$QueryOutput = Invoke-SqlCmd -Query $SQLQuery -ServerInstance $ServerInstance -Credential $creds
$QueryOutput
