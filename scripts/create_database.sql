USE master

GO

-- Verifica se existe o banco de dados, para excluí-lo e criar um novo
IF EXISTS (SELECT name FROM sys.databases WHERE name = 'ComercialDB')
BEGIN
    ALTER DATABASE ComercialDB SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE ComercialDB;
END;
GO

-- Criação do banco de dados
CREATE DATABASE ComercialDB;
GO

USE ComercialDB;
GO

-- Criação dos schemas
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO
