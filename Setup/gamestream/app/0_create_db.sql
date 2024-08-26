   IF NOT EXISTS(SELECT * FROM sys.databases WHERE name = 'sidearmdb')
   	CREATE DATABASE [sidearmdb]
