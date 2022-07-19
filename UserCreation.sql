select * from [BIT kursai].sys.server_principals;

CREATE LOGIN useris WITH PASSWORD = '12345'; --// SQL server autentikacijos loginas, SQL Server Login
CREATE LOGIN [domenas\useris] FROM WINDOWS; --// Windows autentikacijos loginas, Windows Login

SELECT * FROM [BIT kursai].sys.database_principals; --
CREATE USER useris FOR LOGIN <some login>; -- sukūrę matysite, jog SID’as sys.server_principals ir sys.database_principals lentelėse sutampa.
CREATE USER useris WITHOUT LOGIN; -- unmapped, only used for impersonation / execute as purposes:
USE [BIT kursai]; CREATE USER useris WITH PASSWORD = '12345'; -- contained, user - vartotoją duomenų bazėje matysime, jo SID’as (security ID) bus kaip ir server principals

EXEC sp_configure 'CONTAINED DATABASE AUTHENTICATION', 1
GO
RECONFIGURE
GO

ALTER DATABASE [BIT kursai] SET CONTAINMENT = PARTIAL

CREATE LOGIN TestUser WITH PASSWORD = '12345'

CREATE USER TestUser FOR LOGIN TestUser

SELECT * FROM sys.server_principals
select * FROM sys.database_principals