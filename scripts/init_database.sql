/*
==============================================================================
Create Database and Schemas
==============================================================================
Script Purporse:
  The script checks if database(BaraDataWarehouse) exist. If it exists it drops it and create a new one. 
  It also creates 3 schemas within the database: 'bronze', 'silver','gold'

WARNING: 
  Running the script will drop the entire datawarehouse if it exists.
  Proceed with caution. Ensure you have running backup scripts.

*/
USE master;
GO
--Drop and recreate the 'BaraDataWarehouse' database
IF EXISTS(SELECT 1 FROM sys.databases WHERE name = 'BaraDataWarehouse')
BEGIN
  ALTER DATABASE BaraDataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
  DROP DATABASE BaraDataWarehouse;
End;
GO

--Create the 'BaraDataWarehouse' database
CREATE DATABASE BaraDataWarehouse;
GO
  
USE BaraDataWarehouse;
GO

--Create schemas
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
