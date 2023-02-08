echo "Installing AdventureWorks2017 database"
/opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P $SA_PASSWORD -d master -i install.sql
